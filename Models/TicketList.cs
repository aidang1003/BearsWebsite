using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VS_Ch6.Models
{
    public class TicketList
    {
        public List<Ticket> tList { get; set; }

        public TicketList() { tList = new List<Ticket>(); }

        public int Count { get { return tList.Count; } }

        public Ticket this[int index] { get { return tList[index]; } }

        public Ticket this[string lastname] //have this method use a different data field that is completely unique to users
        {
            get
            {
                foreach (Ticket d in tList)
                    if (d.Lname == lastname) return d;
                return null;
            }
        }

        public static TicketList GetTickets()
        {
            TicketList tList = (TicketList)HttpContext.Current.Session["tList"];
            if (tList == null)
                HttpContext.Current.Session["tList"] = new TicketList();
            return (TicketList)HttpContext.Current.Session["tList"];
        }

        public void AddTicket(string date, string firstName, string lastName, string email, string phoneNumber, string game, double bidAmount, string address, string city, string state, string zipCode, string country)
        {
            Ticket d = new Ticket(date, firstName, lastName, email, phoneNumber, game, bidAmount, address, city, state, zipCode, country);
            tList.Add(d);
        }

        public Ticket GetAddress(string email)
        {
            foreach (Ticket t in tList)
                if (t.Email == email) return t;
            return null;
        }
    }
}