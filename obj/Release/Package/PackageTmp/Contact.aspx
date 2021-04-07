<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="VS_Ch6.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <div class="row">
        <div class="col-md-6">
            <h3>Developer Information</h3>
            <address>
                <strong>Developer:</strong>   <p>Aidan Gorny</p><br />
                <strong>Developer email:</strong>   <p>aidan-gorny@uiowa.edu</p><br />
            </address>
        </div>
    
        <div class="col-md-6">
            <h3>Join the mailing list</h3>
            <p>
                Follow the link to the Bears official site to sign up to recieve emails.
            </p>
            <p>
                <a class="btn btn-default" href="http://contact.bears.nfl.net/signUp" target="_blank">Receive emails &raquo;</a>
            </p>
        </div>
    </div>
    
</asp:Content>
