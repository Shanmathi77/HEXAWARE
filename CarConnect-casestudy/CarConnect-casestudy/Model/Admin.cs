namespace CarConnect_casestudy.Model
{
    public class Admin
    {
        private int adminID;
        private string firstName;
        private string lastName;
        private string email;
        private string phoneNumber;
        private string username;
        private string password;
        private string role;
        private DateTime joinDate;

        public int AdminID
        {
            get { return adminID; }
            set { adminID = value; }
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

        public string Role
        {
            get { return role; }
            set { role = value; }
        }

        public DateTime JoinDate
        {
            get { return joinDate; }
            set { joinDate = value; }
        }

        public Admin() { }

        public Admin(int adminID, string firstName, string lastName, string email, string phoneNumber,
                     string username, string password, string role, DateTime joinDate)
        {
            AdminID = adminID;
            FirstName = firstName;
            LastName = lastName;
            Email = email;
            PhoneNumber = phoneNumber;
            Username = username;
            Password = password;
            Role = role;
            JoinDate = joinDate;
        }

        public bool Authenticate(string passwordInput)
        {
            return passwordInput == Password;
        }
    }
}
