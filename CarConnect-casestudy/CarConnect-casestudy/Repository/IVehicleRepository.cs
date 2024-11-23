using CarConnect_casestudy.Model;

namespace CarConnect_casestudy.Repository
{
    internal interface IVehicleRepository
    {
        //bool AddVehicle(Vehicle newVehicle);
        List<Vehicle> GetAvailableVehicles(string? VehicleName);
        Vehicle GetVehicleById(int vehicleID);


        //List<Vehicle> GetAll();
        //List<Vehicle> Getall();
    }
}


