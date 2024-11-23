using CarConnect_casestudy.Exception;
using CarConnect_casestudy.Model;
using CarConnect_casestudy.Repository;
using System;

namespace CarConnect_casestudy.Service
{
    internal class VehicleService : IVehicleService
    {
        readonly IVehicleRepository _vehicleRepository;

        public VehicleService(IVehicleRepository vehicleRepository)
        {
            _vehicleRepository = new VehicleRepository();
        }

        public VehicleService()
        {
        }

        public void GetVehicleById()
        {
            try
            {
                Console.Write("\nEnter Vehicle ID:");
                int VehicleID = int.Parse(Console.ReadLine());
                Vehicle vehi = _vehicleRepository.GetVehicleById(VehicleID);
                if (vehi == null)
                {
                    throw new VehicleNotFoundException("Vehicle not found.");
                }
                else
                {
                    Console.WriteLine("Vehicle Details:");
                    Console.WriteLine(vehi);
                }
            }
            catch (VehicleNotFoundException ive)
            {
                Console.WriteLine(ive.Message);
            }

        }

        public void GetAvailableVehicles()
        {
            try
            {
                Console.Write("\nEnter Vehicle Name (leave blank to list all available vehicles): ");
                string vehicleName = Console.ReadLine();

                List<Vehicle> vehicles = _vehicleRepository.GetAvailableVehicles(vehicleName);

                if (vehicles == null || vehicles.Count == 0)
                {
                    throw new VehicleNotFoundException("No available vehicles found matching the given name.");
                }

                Console.WriteLine("\nAvailable Vehicles:");
                foreach (var vehicle in vehicles)
                {
                    Console.WriteLine(vehicle);
                }
            }
            catch (VehicleNotFoundException ive)
            {
                Console.WriteLine(ive.Message);
            }
            //catch (Exception ex)
            //{
            //    Console.WriteLine("An error occurred: " + ex.Message);
            //}
        }

        //public void AddVehicle(int registrationNumber, string dailyRate)
        //{
        //    try
        //    {
        //        Console.Write("\nEnter Model: ");
        //        string model = Console.ReadLine();

        //        Console.Write("Enter Make: ");
        //        string make = Console.ReadLine();

        //        Console.Write("Enter Manufacturing Year: ");
        //        int manuYear = int.Parse(Console.ReadLine());

        //        Console.Write("Enter Color: ");
        //        string color = Console.ReadLine();

        //        Console.Write("Enter Registration Number: ");

        //        Console.Write("Enter Availability (Available/Not Available): ");
        //        string availability = Console.ReadLine();

        //        Console.Write("Enter Daily Rate: ");

        //        Vehicle newVehicle = new Vehicle
        //        {
        //            Model = model,
        //            Make = make,
        //            Manu_Year = manuYear,
        //            Color_Vehi = color,
        //            RegistrationNumber = int.Parse(Console.ReadLine()),
        //            Availability = availability,
        //            DailyRate = Console.ReadLine()
        //        };

        //        bool isAdded = _vehicleRepository.AddVehicle(newVehicle);

        //        if (!isAdded)
        //        {
        //            Console.WriteLine("Failed to add vehicle.");
        //        }

        //        else
        //        {
        //            Console.WriteLine("failed to update vehicle.");
        //        }
        //    }
        //    catch (InvalidInputException ex)
        //    {
        //        Console.WriteLine($"Invalid input: {ex.Message}");
        //    }
        //    catch (ApplicationException ex)
        //    {
        //        Console.WriteLine($"An error occurred: {ex.Message}");
        //    }
        //}



        //public bool AddVehicle(Vehicle newVehicle)
        //{
        //    throw new NotImplementedException();
        //}

        public List<Vehicle> GetAvailableVehicles(string vehicleName = "")
        {
            throw new NotImplementedException();
        }

        //void IVehicleService.AddVehicle(Vehicle vehicle)
        //{
        //    throw new NotImplementedException();
        //}

        //public List<Vehicle> GetAvailableVehicles(string vehicleName = "")
        //{
        //    throw new NotImplementedException();
        //}

        //public bool UpdateVehicle(Vehicle vehicle)
        //{
        //    throw new NotImplementedException();
        //}

        //public bool RemoveVehicle(int vehicleId)
        //{
        //    throw new NotImplementedException();
        //}

        //public void AddVehicle()
        //{
        //    throw new NotImplementedException();
        //}
    }
}



    //public void addvehicle(string vehicledata)
    //{
    //    try
    //    {
    //        vehicle vehicle = new vehicle();

    //        console.write("enter vehicle model: ");
    //        vehicle.model = console.readline();

    //        console.write("enter vehicle make: ");
    //        vehicle.make = console.readline();

    //        console.write("enter vehicle year: ");
    //        vehicle.year = int.parse(console.readline());

    //        console.write("enter vehicle price: ");
    //        vehicle.price = decimal.parse(console.readline());

    //        console.write("is vehicle available (true/false): ");
    //        vehicle.isavailable = bool.parse(console.readline());

    //        int result = _vehiclerepository.addvehicle(vehicle);
    //        if (result > 0)
    //        {
    //            console.writeline("vehicle added successfully.");
    //        }
    //        else
    //        {
    //            console.writeline("failed to add vehicle.");
    //        }
    //    }
    //    catch (exception ex)
    //    {
    //        console.writeline("an error occurred: " + ex.message);
    //    }
    //}


 
