using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VS_Ch6.Models
{
    public class Ticket
    {
        public Ticket(string date, string firstName, string lastName, string email, string phoneNumber, string game, double bidamount, string address, string city, string state, string zipCode, string country)
        {
            // data related to users
            Date = date;
            Fname = firstName;
            Lname = lastName;
            Email = email;
            PNumber = phoneNumber;
            Game = game;
            BAmount = bidamount;

            // data related to address
            Address = address;
            City = city;
            State = state;
            ZCode = zipCode;
            Country = country;

        }

        public string Date { get; set; }
        public string Fname { get; set; }
        public string Lname { get; set; }
        public string Email { get; set; }
        public string PNumber { get; set; }
        public string Game { get; set; }
        public double BAmount { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string ZCode { get; set; }
        public string Country { get; set; }
    }
}