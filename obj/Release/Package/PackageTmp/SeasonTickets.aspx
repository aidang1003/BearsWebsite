<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SeasonTickets.aspx.cs" Inherits="VS_Ch6.SeasonTickets" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2> Ticket Purchasing Form</h2>
    <h3>Your Information</h3>
    <div>
        <table>
            <tr>
                <th class="tableInformation">Date: </th>
                <th>
                    <asp:TextBox ID="txtDate" runat="server" Type="date" Width="250px"></asp:TextBox>
                </th>
                <th>
                    <asp:RequiredFieldValidator ID="DateValidator" runat="server" ControlToValidate="txtDate" Display="dynamic" ErrorMessage="No date entered" CssClass="error-label" ></asp:RequiredFieldValidator>
                </th>
            </tr>
            <tr>
                <th class="tableInformation">First Name: </th>
                <th>
                    <asp:TextBox ID="txtFirstName" runat="server" Width="250px"></asp:TextBox>
                </th>
                <th>
                    <asp:RegularExpressionValidator ID="FirstNameValidator" runat="server" ControlToValidate="txtFirstName" Display="dynamic" ErrorMessage="Only letters can be entered" CssClass="error-label" ValidationExpression="^[a-zA-Z0-9]+$"></asp:RegularExpressionValidator>
                </th>
            </tr>
             <tr>
                <th class="tableInformation">Last Name: </th>
                <th>
                    <asp:TextBox ID="txtLastName" runat="server" Width="250px"></asp:TextBox>
                 </th>
                 <th>
                    <asp:RegularExpressionValidator ID="LastNameValidator" runat="server" ControlToValidate="txtLastName" Display="dynamic" ErrorMessage="Only letters can be entered" CssClass="error-label" ValidationExpression="^[a-zA-Z0-9]+$"></asp:RegularExpressionValidator>
                </th>
            </tr>
             <tr>
                <th class="tableInformation">Email: </th>
                <th>
                    <asp:TextBox ID="txtEmail" runat="server" Width="250px"></asp:TextBox>
                </th>
                 <th>
                    <asp:RegularExpressionValidator ID="EmailValidator" runat="server" ControlToValidate="txtEmail" Display="dynamic" ErrorMessage="Only a valid email can be entered" CssClass="error-label" ValidationExpression="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"></asp:RegularExpressionValidator>
                </th>
            </tr>
            <tr>
                <th class="tableInformation">Confirm Email: </th>
                <th>
                    <asp:TextBox ID="txtEmailConfirm" runat="server" Width="250px"></asp:TextBox>
                </th>
                <th>
                    <asp:CompareValidator ID="CompareEmailValidator" runat="server" CssClass="error-label" ErrorMessage="Emails do not match" Display="Dynamic" Type="String" ControlToValidate="txtEmailConfirm" ControlToCompare="txtEmail"></asp:CompareValidator>
                </th>
            </tr>
             <tr>
                <th class="tableInformation">Phone Number:</th>
                <th>
                    <asp:TextBox ID="txtPhoneNumber" runat="server" Width="250px"></asp:TextBox>
                </th>
                 <th>
                    <asp:RegularExpressionValidator ID="PhoneNumberValidator" runat="server" ControlToValidate="txtPhoneNumber" Display="dynamic" ErrorMessage="Phone number must be in form ###-###-####" CssClass="error-label" ValidationExpression="^(\(?\s*\d{3}\s*[\)\-\.]?\s*)?[2-9]\d{2}\s*[\-\.]\s*\d{4}$"></asp:RegularExpressionValidator>
                     <asp:RequiredFieldValidator ID="PhoneNumberRequiredValidator" runat="server" ErrorMessage="No phone number inputted" ControlToValidate="txtPhoneNumber" Display="dynamic" CssClass="error-label"></asp:RequiredFieldValidator>
                </th>
            </tr>
             <tr>
                <th class="tableInformation">Game:</th>
                <th>
                    <asp:DropDownList ID="txtGameBox" runat="server" Width="250px" Height="30px">
                        <asp:ListItem Selected="True" Value="None">Select Game</asp:ListItem>
                      <asp:ListItem Value="2021-2022 Season"> 2021-2022 Season </asp:ListItem>
                      <asp:ListItem Value="Detroit Lions (9/12)"> Detroit Lions (9/12)</asp:ListItem>
                      <asp:ListItem Value="Green Bay Packers (9/19)"> Green Bay Packers (9/19) </asp:ListItem>
                      <asp:ListItem Value="Minnesota Vikings (9/26)"> Minnesota Vikings (9/26) </asp:ListItem>
                      <asp:ListItem Value="Arizona Cardinals (10/1)"> Arizona Cardinals (10/1) </asp:ListItem>
                      <asp:ListItem Value="Baltimore Ravens (10/8)"> Baltimore Ravens (10/8) </asp:ListItem>
                      <asp:ListItem Value="Cincinnati Bengals (10/15)"> Cincinnati Bengals (10/15) </asp:ListItem>
                    </asp:DropDownList>     
                 </th>
                 <th><asp:RequiredFieldValidator ID="GameValidator" runat="server" ErrorMessage="Must Select a game" CssClass="error-label" Display="Dynamic" ControlToValidate="txtGameBox" InitialValue="None"></asp:RequiredFieldValidator></th>
            </tr>
             <tr>
                <th class="tableInformation">Ticket Bid:</th>
                <th>
                    <asp:TextBox ID="txtBid" runat="server" Width="250px"></asp:TextBox>
                </th>
                 <th>
                    <asp:RegularExpressionValidator ID="BidValidator" runat="server" ControlToValidate="txtBid" Display="dynamic" ErrorMessage="Bid amount must only include numbers" CssClass="error-label" ValidationExpression="^\d+[\.,]?\d*$"></asp:RegularExpressionValidator>
                </th>
            </tr>
        </table>
    </div>
    <h3>Shipping Address</h3>
    <div>
        <table>
            <tr>
                <th>Same address?</th>
                <th>
                    <asp:CheckBox ID="ShippingButton" text=" " runat="server" CssClass="radio-button" AutoPostBack="true" OnCheckedChanged="ShippingButton_CheckedChanged"/>
                </th>
            </tr>
            <tr>
                <th class="shipping">Address: </th>
                <th>
                    <asp:TextBox ID="txtAddress" runat="server" Width="250px"></asp:TextBox>
                </th>
                <th>
                   <asp:RegularExpressionValidator ID="AddressValidator" runat="server" ControlToValidate="txtAddress" Display="dynamic" ErrorMessage="Can only use alpha-numeric digits" CssClass="error-label" ValidationExpression="^[a-zA-Z0-9 ]+$"></asp:RegularExpressionValidator>
                </th>
            </tr>
             <tr>
                <th class="shipping">City: </th>
                 <th>
                    <asp:TextBox ID="txtCity" runat="server" Width="250px"></asp:TextBox>
                </th>
                 <th>
                    <asp:RegularExpressionValidator ID="CityValidator" runat="server" ControlToValidate="txtCity" Display="dynamic" ErrorMessage="Can only use alpha-numeric digits" CssClass="error-label" ValidationExpression="^[a-zA-Z0-9 ]+$"></asp:RegularExpressionValidator>
                </th>
            </tr>
             <tr>
                <th class="shipping">State: </th>
                 <th>
                    <asp:TextBox ID="txtState" runat="server" Width="250px"></asp:TextBox>
                </th>
                 <th>
                    <asp:RegularExpressionValidator ID="StateValidator" runat="server" ControlToValidate="txtState" Display="dynamic" ErrorMessage="Can only use alpha-numeric digits" CssClass="error-label" ValidationExpression="^[a-zA-Z0-9]+$"></asp:RegularExpressionValidator>
                </th>
            </tr>
             <tr>
                <th class="shipping">Zip Code:</th>
                <th>
                    <asp:TextBox ID="txtZipCode" runat="server" Width="250px"></asp:TextBox>
                </th>
                 <th>
                    <asp:RegularExpressionValidator ID="ZipCodeValidator" runat="server" ControlToValidate="txtZipCode" Display="dynamic" ErrorMessage="Can only use 5 alpha-numeric digits" CssClass="error-label" ValidationExpression="[a-zA-Z0-9_]{5}"></asp:RegularExpressionValidator>
                </th>
            </tr>
             <tr>
                <th class="shipping">Country:</th>
                 <th>
                    <asp:TextBox ID="txtCountry" runat="server" Width="250px"></asp:TextBox>
                </th>
                 <th>
                    <asp:RegularExpressionValidator ID="CountryValidator" runat="server" ControlToValidate="txtCountry" Display="dynamic" ErrorMessage="Can only use alpha-numeric digits" CssClass="error-label" ValidationExpression="^[a-zA-Z0-9 ]+$"></asp:RegularExpressionValidator>
                </th>
            </tr>
            <tr>
                <th style="height: 60px;"></th>
                <th style="height: 60px;">
                    <asp:Button CssClass="submitButton2" ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click"/>
                    <asp:Button CssClass="submitButton2" ID="ClearButton" runat="server" Text="Clear" OnClick="ClearButton_Click"/>
                </th>
            </tr>
            <tr>
                <th>&nbsp</th>
                <th>
                    <asp:Label ID="feedbackLabel" runat="server" Text="Submit a ticket entry" />
                </th>
            </tr>
           
        </table>


    </div>
</asp:Content>