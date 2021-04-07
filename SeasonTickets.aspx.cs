using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VS_Ch6.Models;
using System.Text.RegularExpressions;

namespace VS_Ch6
{
    public partial class SeasonTickets : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            TicketList tList = TicketList.GetTickets();

            double bidAmount = Convert.ToDouble(txtBid.Text);

            tList.AddTicket(txtDate.Text, txtFirstName.Text, txtLastName.Text, txtEmail.Text, txtPhoneNumber.Text, txtGameBox.Text, bidAmount, txtAddress.Text, txtCity.Text, txtState.Text, txtZipCode.Text, txtCountry.Text);

            txtDate.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtPhoneNumber.Text = "";
            txtEmail.Text = "";
            txtEmailConfirm.Text = "";
            txtGameBox.SelectedValue = "None";
            txtBid.Text = "";
            txtAddress.Text = "";
            txtCity.Text = "";
            txtState.Text = "";
            txtZipCode.Text = "";
            txtCountry.Text = "";

            ShippingButton.Text = "";

            feedbackLabel.Text = "Your information has been submitted";
            // feedbackLabel.ForeColor = "green";

        }

        protected void ClearButton_Click(object sender, EventArgs e)
        {
            txtDate.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtPhoneNumber.Text = "";
            txtEmail.Text = "";
            txtEmailConfirm.Text = "";
            txtGameBox.SelectedValue = "None";
            txtBid.Text = "";
            txtAddress.Text = "";
            txtCity.Text = "";
            txtState.Text = "";
            txtZipCode.Text = "";
            txtCountry.Text = "";

            ShippingButton.Text = "";

            feedbackLabel.Text = "Your information has been cleared";
        }

        protected void ShippingButton_CheckedChanged(object sender, EventArgs e)
        {
            // if (Page.IsValid)
            if (true)
            {
                TicketList tList = TicketList.GetTickets();

                Ticket t = tList.GetAddress(txtEmail.Text);

                if (t != null)
                {
                    txtFirstName.Text = t.Fname;
                    txtLastName.Text = t.Lname;
                    txtPhoneNumber.Text = t.PNumber;
                    txtAddress.Text = t.Address;
                    txtCity.Text = t.City;
                    txtState.Text = t.State;
                    txtZipCode.Text = t.ZCode;
                    txtCountry.Text = t.Country;
                }
                else
                {
                    ShippingButton.Text = "Prior user information unavailable";
                }
                ShippingButton.Checked = false;
            }
        
        }
    }
}