using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using DataAccess;
using System.Data.Entity;

namespace BreakAwayConsole
{
    class BreakAwayConsole
    {
        static void Main(string[] args)
        {
            InsertDestination();
        }
        public static void InsertDestination()
        {
            Destination destination = new Destination()
            {
                Name = "Bali",
                Description = "EcoTourism at its Best in equisite Bali",
                Country = "Indonesia"
            };
            using (var context = new BreakAwayContext())
            {
                context.Destinations.Add(destination);
                context.SaveChanges();
            }
        }
    }
}
