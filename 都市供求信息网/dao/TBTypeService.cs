using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using 都市供求信息网.model;
using System.Collections;
using System.Data;

namespace 都市供求信息网.dao
{
    public class TBTypeService
    {
        public ArrayList GetTbTypeList()
        {
            ArrayList list = new ArrayList();
            string sql = "select * from tb_type";
            DataTable dt = DBHelper.GetDataTable(sql);
            foreach (DataRow dr in dt.Rows)
            {
                TBType type = new TBType();
                type.Id = Convert.ToInt32(dr["id"]);
                type.TypeIntro = dr["type_intro"].ToString();
                list.Add(type);
            }
            return list;
        }
    }
}