using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
//using System.Threading.Tasks;

namespace 都市供求信息网.model
{
    public class Users
    {
        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        private string loginName;

        public string LoginName
        {
            get { return loginName; }
            set { loginName = value; }
        }

        private string password;

        public string Password
        {
            get { return password; }
            set { password = value; }
        }
    }
}
