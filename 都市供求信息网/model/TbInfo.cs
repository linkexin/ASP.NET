using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace 都市供求信息网.model
{
    public class TbInfo
    {
        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        private int infoType;

        public int InfoType
        {
            get { return infoType; }
            set { infoType = value; }
        }
        private string infoTitle;

        public string InfoTitle
        {
            get { return infoTitle; }
            set { infoTitle = value; }
        }
        private string infoContent;

        public string InfoContent
        {
            get { return infoContent; }
            set { infoContent = value; }
        }
        private string infoContact;

        public string InfoContact
        {
            get { return infoContact; }
            set { infoContact = value; }
        }
        private string infoPhone;

        public string InfoPhone
        {
            get { return infoPhone; }
            set { infoPhone = value; }
        }
        private string infoEmail;

        public string InfoEmail
        {
            get { return infoEmail; }
            set { infoEmail = value; }
        }
        private string infoDate;

        public string InfoDate
        {
            get { return infoDate; }
            set { infoDate = value; }
        }
        private int infoState;

        public int InfoState
        {
            get { return infoState; }
            set { infoState = value; }
        }
        private int infoPayFor;

        public int InfoPayFor
        {
            get { return infoPayFor; }
            set { infoPayFor = value; }
        }
        private TBType tbtype = new TBType();

        public TBType Tbtype
        {
            get { return tbtype; }
            set { tbtype = value; }
        }


    }
}