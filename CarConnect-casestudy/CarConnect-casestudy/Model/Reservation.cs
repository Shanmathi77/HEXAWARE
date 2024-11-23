

namespace CarConnect_casestudy.Model
{
    
        public class Reservation
        {
            public int ReservationID { get; set; }
            public int CustomerID { get; set; }
            public int VehicleID { get; set; }
            public DateTime StartDate { get; set; }
            public DateTime EndDate { get; set; }
            public decimal TotalCost { get; set; }
            public string Status { get; set; }

            public Reservation() { }

            public Reservation(int reservationId, int customerId, int vehicleId, DateTime startDate, DateTime endDate, decimal totalCost, string status)
            {
                ReservationID = reservationId;
                CustomerID = customerId;
                VehicleID = vehicleId;
                StartDate = startDate;
                EndDate = endDate;
                TotalCost = totalCost;
                Status = status;
            }

            public void CalculateTotalCost(decimal dailyRate)
            {
                TotalCost = dailyRate * (EndDate - StartDate).Days;
            }
        }
    }


