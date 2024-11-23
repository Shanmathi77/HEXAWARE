namespace CarConnect_casestudy.Model
{
    public class Customer
    {

        private int customerID;
        private string firstName;
        private string lastName;
        private string email;
        private string phoneNumber;
        private string address;
        private string username;
        private string password;
        private DateTime registrationDate;

        public int CustomerID
        {
            get { return customerID; }
            set { customerID = value; }
        }

        public string FirstName
        {
            get { return firstName; }
            set { firstName = value; }
        }

        public string LastName
        {
            get { return lastName; }
            set { lastName = value; }
        }

        public string Email
        {
            get { return email; }
            set { email = value; }
        }

        public string PhoneNumber
        {
            get { return phoneNumber; }
            set { phoneNumber = value; }
        }

        public string Address
        {
            get { return address; }
            set { address = value; }
        }

        public string Username
        {
            get { return username; }
            set { username = value; }
        }

        public string Password
        {
            get { return password; }
            set { password = value; }
        }

        public DateTime RegistrationDate
        {
            get { return registrationDate; }
            set { registrationDate = value; }
        }


        public Customer() { }


        public Customer(int customerID, string firstName, string lastName, string email,
                        string phoneNumber, string address, string username, string password, DateTime registrationDate)
        {
            CustomerID = customerID;
            FirstName = firstName;
            LastName = lastName;
            Email = email;
            PhoneNumber = phoneNumber;
            Address = address;
            Username = username;
            Password = password;
            RegistrationDate = registrationDate;
        }


        public bool Authenticate(string passwordInput)
        {
            return passwordInput == Password;
        }
    }
}

