using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarConnect_casestudy.Exception
{
    internal class InvalidInputException : ApplicationException
    {
        public InvalidInputException() { }
        public InvalidInputException(string message) : base(message)
        {
        }
    }
}