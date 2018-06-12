using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsingWebControls
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            Page.Validate();

            if (Page.IsValid) {
                var fname = FirstNameTextBox.Text;
                var lname = LastNameTextBox.Text;
                var city = CityDropDown.SelectedValue;
                var birthday = BirthdayTextBox.Text;
                var email = EmailAddressBox.Text;

                OutputLabel.Text = "Firstname: " + fname + " <br>Lastname: " + lname + " <br>Birthday: " + birthday + " <br>City: " + city + "<br>Email: " + email;

            }


        }

    }
}