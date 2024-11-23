using CarConnect_casestudy.Utility;
using CarConnect_casestudy.Model;
using System.Data.SqlClient;

namespace CarConnect_casestudy.Repository
{
    internal class VehicleRepository : IVehicleRepository
    {
        SqlCommand _cmd = null;
        string connectionString;

        public VehicleRepository()
        {
            connectionString = DBConnUtil.GetConnectionString();
            _cmd = new SqlCommand();
        }

        public List<Vehicle> GetAvailableVehicles(string? VehicleName)
        {
            throw new NotImplementedException();
        }

        public Vehicle GetVehicleById(int vehicleID)
        {
            Vehicle vehicle = new Vehicle();
            using (SqlConnection sqlConnection = new SqlConnection(connectionString))
            {
                _cmd.CommandText = $"select * from Vehicle where VehicleID = {vehicleID}";
                _cmd.Connection = sqlConnection;
                sqlConnection.Open();
                SqlDataReader reader = _cmd.ExecuteReader();
                if (reader.Read())
                {
                    vehicle.VehicleID = (int)reader["VehicleID"];
                    vehicle.Model= (string)reader["Model"];
                    vehicle.Make = (string)reader["Make"];
                    vehicle.Manu_Year= (int)reader["Manu_Year"];
                    vehicle.Color_Vehi = (string)reader["Color_Vehi"];
                    vehicle.RegistrationNumber = (string)reader["RegistrationNumber"];
                    vehicle.Availability = (string)reader["Availability"];
                    vehicle.DailyRate=(string)reader["Availability"];
                }
            }
            return vehicle;
        }




    }
}
