using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace CarConnect_casestudy.Model
{

    public class Vehicle
    {

        int _vehicleId, _manu_Year;
        string _model, _make, _color_Vehi, _registrationNumber, _availability, _dailyRate;

        public Vehicle()
        {

        }

        public Vehicle(int vehicleId, int manu_Year, string model, string make, string color_Vehi, string registrationNumber, string availability, string dailyRate)
        {
            VehicleID = vehicleId;
            Manu_Year = manu_Year;
            Model = model;
            Make = make;
            Color_Vehi = color_Vehi;
            RegistrationNumber=registrationNumber;
            Availability = availability;
            DailyRate = dailyRate;

            
        }

        public int VehicleID
        {
            get { return _vehicleId; }
            set { _vehicleId = value; }
        }

        public string Model
        {
            get { return _model; }
            set { _model = value; }
        }

        public string Make
        {
            get { return _make; }
            set { _make = value; }
        }

        public int Manu_Year
        {
            get { return _manu_Year; }
            set { _manu_Year = value; }
        }

        public string Color_Vehi
        {
            get { return _color_Vehi; }
            set { _color_Vehi = value; }
        }

        public string RegistrationNumber
        {
            get { return _registrationNumber; }
            set { _registrationNumber = value; }
        }

        public string Availability
        {
            get { return _availability; }
            set { _availability = value; }
        }

        public string DailyRate
        {
            get { return _dailyRate; }
            set { _dailyRate = value; }
        }

        public override string ToString()
        {
            return $" VehicleID: {VehicleID}\n" +
                $"Manu_Year: {Manu_Year}\n" +
                $"Model: {Model}\n" +
                $"Make : {Make}\n" +
                $"Loan Color_Vehi: {Color_Vehi}\n" +
                $"Loan RegistrationNumber: {RegistrationNumber}\n" +
                $"Availability: {Availability}\n"+
            $"DailyRate: {DailyRate}\n";
        }
    }
}





