<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="VS_Ch6.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>Bears Mascot</h3>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <img src="Images/mascot.jpg" alt="Bears Mascot">
                <br />
                <a href="https://en.wikipedia.org/wiki/Chicago_Bears" title="Go To Bears Wikipedia Page" target="_blank">Go To Bears Wikipedia Page</a>
            </div>
            <div class="col-md-6">
                <p>
                    The Chicago Bears are a professional American football team based in Chicago. The Bears compete in the National Football League (NFL) as a member
                    club of the league's National Football Conference (NFC) North division. The Bears have won nine NFL Championships, including one Super Bowl, and
                    hold the NFL record for the most enshrinees in the Pro Football Hall of Fame and the most retired jersey numbers. The Bears have also recorded more
                    victories than any other NFL franchise.
                </p>
                <p>
                    The franchise was founded in Decatur, Illinois, on September 17, 1920, and moved to Chicago in 1921. It is one of only two remaining franchises 
                    from the NFL's founding in 1920, along with the Arizona Cardinals, which was originally also in Chicago. The team played home games at Wrigley Field on 
                    Chicago's North Side through the 1970 season; they now play at Soldier Field on the Near South Side, adjacent to Lake Michigan. The Bears have a long-standing 
                    rivalry with the Green Bay Packers.
                </p>
                <p>
                    The team headquarters, Halas Hall, is in the Chicago suburb of Lake Forest, Illinois. The Bears practice at adjoining facilities there during the season, and
                    began hosting Training Camp at Halas Hall in 2020 after major renovations.
                </p>
            </div>
        </div>
    </div>
</asp:Content>
