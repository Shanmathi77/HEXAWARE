using CarConnect_casestudy.Service;

namespace CarConnect_casestudy.Main
{
    internal class MainMod
    {
        private object vehicleService;

        public void run()
        {
            int choice = 0;

            do
            {
                IVehicleService vehicleService = new VehicleService();
                Console.WriteLine("----------------carconnect  platform--------------------");
                
                Console.Write("\n 1. Get vehicle by id:\n");
                Console.Write("\n 2.Get available vehicle:\n");
                Console.Write("\n 3.Add vehicle:\n");
                Console.Write("\n 4.Update vehicle:\n");
                Console.Write("\n 5.Remove vehicle:\n");

                //console.writeline("4. exit");
                Console.Write("choose an option: ");

                choice = int.Parse(Console.ReadLine());
                switch (choice)
                {
                    
                    case 1:
                        vehicleService.GetVehicleById();
                        break;

                    case 2:
                        vehicleService.GetAvailableVehicles();
                        break;


                    //case "3":
                    //    addvehicle();
                    //    break;

                    //case "4":
                    //    continuerunning = false;
                    //    console.writeline("exiting the system.");
                    //    break;

                    default:
                        Console.WriteLine("invalid choice. please try again.");
                        break;
                }
            }

            while (choice >0);
            }
            }
    }

                 
                

                //private static void GetAllVehicles()
                //{
                //    string connectionString = DBConnUtil.GetConnectionString();
                //    using (SqlConnection connection = new SqlConnection(connectionString))
                //    {
                //        try
                //        {
                //            connection.Open();
                //            string query = "SELECT * FROM Vehicles";
                //            using (SqlCommand command = new SqlCommand(query, connection))
                //            {
                //                using (SqlDataReader reader = command.ExecuteReader())
                //                {
                //                    Console.WriteLine("Vehicles:");
                //                    while (reader.Read())
                //                    {
                //                        Console.WriteLine($"ID: {reader["VehicleID"]}, Model: {reader["Model"]}, Make: {reader["Make"]}, Year: {reader["Year"]}");
                //                    }
                //                }
                //            }
                //        }
                //        catch (Exception ex)
                //        {
                //            Console.WriteLine($"Error: {ex.Message}");
                //        }
                //    }
                //}


                //private static void AddVehicle()
                //{
                //    Console.WriteLine("Enter Vehicle Details:");
                //    Console.Write("Model: ");
                //    string model = Console.ReadLine();

                //    Console.Write("Make: ");
                //    string make = Console.ReadLine();

                //    Console.Write("Year: ");
                //    int year = int.Parse(Console.ReadLine());

                //    Console.Write("Color: ");
                //    string color = Console.ReadLine();

                //    Console.Write("Registration Number: ");
                //    string registrationNumber = Console.ReadLine();

                //    Console.Write("Availability (true/false): ");
                //    bool availability = bool.Parse(Console.ReadLine());

                //    Console.Write("Daily Rate: ");
                //    decimal dailyRate = decimal.Parse(Console.ReadLine());

                //    string connectionString = DBConnUtil.GetConnectionString();
                //    using (SqlConnection connection = new SqlConnection(connectionString))
                //    {
                //        try
                //        {
                //            connection.Open();
                //            string query = @"INSERT INTO Vehicles (Model, Make, Year, Color, RegistrationNumber, Availability, DailyRate) 
                //                             VALUES (@Model, @Make, @Year, @Color, @RegistrationNumber, @Availability, @DailyRate)";
                //            using (SqlCommand command = new SqlCommand(query, connection))
                //            {
                //                command.Parameters.AddWithValue("@Model", model);
                //                command.Parameters.AddWithValue("@Make", make);
                //                command.Parameters.AddWithValue("@Year", year);
                //                command.Parameters.AddWithValue("@Color", color);
                //                command.Parameters.AddWithValue("@RegistrationNumber", registrationNumber);
                //                command.Parameters.AddWithValue("@Availability", availability);
                //                command.Parameters.AddWithValue("@DailyRate", dailyRate);

                //                int rowsAffected = command.ExecuteNonQuery();
                //                if (rowsAffected > 0)
                //                {
                //                    Console.WriteLine("Vehicle added successfully.");
                //                }
                //                else
                //                {
                //                    Console.WriteLine("Failed to add the vehicle.");
                //                }
                //            }
                //        }
                //        catch (Exception ex)
                //        {
                //            Console.WriteLine($"Error: {ex.Message}");
                //        }
                //    }
            
    
