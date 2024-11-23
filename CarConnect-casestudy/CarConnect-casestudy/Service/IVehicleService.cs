using CarConnect_casestudy.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarConnect_casestudy.Service
{
    internal interface IVehicleService
    {
        void GetVehicleById();
        void GetAvailableVehicles();

        //void AddVehicle(Vehicle vehicle);
        List<Vehicle> GetAvailableVehicles(string vehicleName = "");
        //bool UpdateVehicle(Vehicle vehicle);
        //bool RemoveVehicle(int vehicleId);
        //void AddVehicle();


        //void UpdateVehicle();
        //void RemoveVehicle();

    }
}
