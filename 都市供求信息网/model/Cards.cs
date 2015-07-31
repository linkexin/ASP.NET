using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
//using System.Threading.Tasks;

namespace 都市供求信息网.model
{
    public class Cards
    {
        private string cardNum = string.Empty;

        public string CardNum
        {
            get { return cardNum; }
            set { cardNum = value; }
        }

        private double balance = 0.0;

        public double Balance
        {
            get { return balance; }
            set { balance = value; }
        }

        private string bankName = string.Empty;

        public string BankName
        {
            get { return bankName; }
            set { bankName = value; }
        }

        private string pswd = string.Empty;

        public string Pswd
        {
            get { return pswd; }
            set { pswd = value; }
        }
    }
}
