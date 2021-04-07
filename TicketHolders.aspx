<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TicketHolders.aspx.cs" Inherits="VS_Ch6.TicketHolders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Ticket Summary</h2>
    <table class="table ">
        <caption>Ticket Holders</caption>
        <thead class="thead-dark">
        <tr>
          <th>Game</th>
          <th>Bid Amount</th>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Email</th>
          <th>Phone Number</th>
          <th>Address</th>
          <th>City</th>
          <th>Zip Code</th>
          
        </tr>
        <% foreach (var ticket in VS_Ch6.Models.TicketList.GetTickets().tList)
            { %>
        <tr>
          <td><%: ticket.Game %></td>
          <td><%: "$" + Math.Round(ticket.BAmount, 2) %></td>
          <td><%: ticket.Fname %></td>
          <td><%: ticket.Lname %></td>
          <td><%: ticket.Email %></td>
          <td><%: ticket.PNumber %></td>
          <td><%: ticket.Address %></td>
          <td><%: ticket.City %></td>
          <td><%: ticket.ZCode %></td>
        </tr>
        <% } %>
    </table>
</asp:Content>
