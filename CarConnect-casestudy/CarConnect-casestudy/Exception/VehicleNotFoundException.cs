using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarConnect_casestudy.Exception
{
    internal class VehicleNotFoundException : ApplicationException
    {
        public VehicleNotFoundException()
        {
        }
        public VehicleNotFoundException(string message) : base(message)
        {
        }
        
    }
}
