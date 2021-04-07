<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="VS_Ch6._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-image: url(Images/bears2.jpg)">
        <br /><br /><br />
        <h1 style="color:#C83803">Chicago Bears</h1>
        <p><a href="About" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Bears Website</h2>
            <p>
                The Bears website has official information on the Chicago Bears and licensed materials.
            </p>
            <p>
                <a class="btn btn-default" href="https://www.chicagobears.com/" target="_blank">Official Site &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Bears Twitter</h2>
            <p>
                The Twitter account keeps fans up to date on Bears news.
            </p>
            <p>
                <a class="btn btn-default" href="https://twitter.com/ChicagoBears?" target="_blank">Bears Twitter &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Site Construction</h2>
            <p>
                This dynamic website is made with ASP.NET.
            </p>
            <p>
                <a class="btn btn-default" href="http://www.asp.net" target="_blank">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>