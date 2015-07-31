using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace 都市供求信息网.model
{
    public class TBType
    {
        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        private int typeSign;

        public int TypeSign
        {
            get { return typeSign; }
            set { typeSign = value; }
        }
        private string typeName;

        public string TypeName
        {
            get { return typeName; }
            set { typeName = value; }
        }
        private string typeIntro;

        public string TypeIntro
        {
            get { return typeIntro; }
            set { typeIntro = value; }
        }
    }
}