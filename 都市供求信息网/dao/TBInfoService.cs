using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using 都市供求信息网.model;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using 都市供求信息网.model;

namespace 都市供求信息网.dao
{
    /// <summary>
    /// 用来操作tb_info表
    /// </summary>
    public class TBInfoService
    {
        /// <summary>
        /// 插入数据
        /// </summary>
        /// <param name="info">插入的数据</param>
        /// <returns>是否成功</returns>
        public int AddTbInfo(TbInfo info)
        {
            string sql = "insert into tb_info(info_type, info_title, info_content," +
                " info_linkman, info_phone, info_email, info_date, info_state, info_payfor)" +
                "values (@info_type, @info_title, @info_content, @info_linkman, @info_phone,"+
                " @info_email, @info_date, @info_state, @info_payfor)";
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@info_type", info.InfoType),
                new SqlParameter("@info_title", info.InfoTitle),
                new SqlParameter("@info_content", info.InfoContent),
                new SqlParameter("@info_linkman", info.InfoContact),
                new SqlParameter("@info_phone", info.InfoPhone),
                new SqlParameter("@info_email", info.InfoEmail),
                new SqlParameter("@info_date", info.InfoDate),
                new SqlParameter("@info_state", info.InfoState),
                new SqlParameter("@info_payfor", info.InfoPayFor)
            };

            return DBHelper.ExecuteCommand(sql, param);
        }

        /// <summary>
        /// 得到最新的一条消息
        /// </summary>
        /// <param name="payfor">付费状态</param>
        /// <param name="typeId">信息种类</param>
        /// <returns>查询得到的信息</returns>
        public TbInfo getLatestInfo(int payfor, int typeId)
        {
            string sql = "select top 1 tb_info.*, type_intro from tb_info inner join tb_type"+
                " on tb_info.info_type = tb_type.id where info_payfor = " + payfor;
            if (typeId > 0)
                sql += "and info_type = " + typeId;
            sql += "order by id desc";

            DataTable dt = DBHelper.GetDataTable(sql);
            
            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];
                TbInfo info = new TbInfo();
                info.Id = Convert.ToInt32(dr["id"]);
                info.InfoType = Convert.ToInt32(dr["info_type"]);
                info.InfoTitle = dr["info_title"].ToString();
                info.InfoContent = dr["info_content"].ToString();
                info.InfoContact = dr["info_linkman"].ToString();
                info.InfoPhone = dr["info_phone"].ToString();
                info.InfoEmail = dr["info_email"].ToString();
                info.InfoDate = dr["info_date"].ToString();
                info.InfoState = Convert.ToInt32(dr["info_state"]);
                info.InfoPayFor = Convert.ToInt32(dr["info_payfor"]);
                info.Tbtype.TypeIntro = dr["type_intro"].ToString();
                return info;
            }
            return null;
        }


        /// <summary>
        /// 按照信息类型和关键字搜索信息
        /// </summary>
        /// <param name="typeId">信息类别</param>
        /// <param name="key">关键字</param>
        /// <returns>查询得到的信息</returns>
        public ArrayList getSearchInfo(int typeId, string key)
        {
            ArrayList list = new ArrayList();
            string sql = "select tb_info.*, type_intro from tb_info inner join tb_type" +
                " on tb_info.info_type = tb_type.id where 1 = 1";
            if (typeId > 0)
                sql += "and info_type = " + typeId;
            if (key != "")
                sql += "and info_title like '%" + key + "%'";

            DataTable dt = DBHelper.GetDataTable(sql);
            foreach (DataRow dr in dt.Rows)
            {
                TbInfo tb = new TbInfo();
                tb.Id = Convert.ToInt32(dr["id"]);
                tb.InfoTitle = dr["info_title"].ToString();
                tb.Tbtype.TypeIntro = dr["type_intro"].ToString();
                tb.InfoDate = dr["info_date"].ToString();
                tb.InfoContact = dr["info_linkman"].ToString();
                list.Add(tb);
            }

            return list;
        }

        /// <summary>
        /// 首页付费信息查询
        /// </summary>
        /// <returns>查询得到的信息</returns>
        public ArrayList getPayforInfo()
        {
            ArrayList list = new ArrayList();
            string sql = "select top 8 tb_info.*, type_intro from tb_info inner join tb_type "+
                "on tb_info.info_type = tb_type.id where info_payfor = 1 order by id desc";
            DataTable dt = DBHelper.GetDataTable(sql);
            foreach (DataRow dr in dt.Rows)
            {
                TbInfo tb = new TbInfo();
                tb.Id = Convert.ToInt32(dr["id"]);
                tb.InfoTitle = dr["info_title"].ToString();
                tb.Tbtype.TypeIntro = dr["type_intro"].ToString();
                tb.InfoDate = dr["info_date"].ToString();
                tb.InfoContact = dr["info_linkman"].ToString();
                list.Add(tb);
            }
            return list;
        }

        /// <summary>
        /// 获取最新的五条免费信息，根据信息类别选择
        /// </summary>
        /// <param name="typeId">信息类别</param>
        /// <returns></returns>
        public ArrayList getFreeInfo(int typeId)
        {
            ArrayList list = new ArrayList();
            string sql = "select top 5 * from tb_info " +
                "where info_payfor = 0 and info_type = " + typeId + "order by id desc";
            DataTable dt = DBHelper.GetDataTable(sql);
            foreach (DataRow dr in dt.Rows)
            {
                TbInfo tb = new TbInfo();
                tb.Id = Convert.ToInt32(dr["id"]);
                tb.InfoTitle = dr["info_title"].ToString();
                //tb.Tbtype.TypeIntro = dr["type_intro"].ToString();
                tb.InfoDate = dr["info_date"].ToString();
                tb.InfoContact = dr["info_linkman"].ToString();
                list.Add(tb);
            }

            return list;
        }

        /// <summary>
        /// 根据id查询数据
        /// </summary>
        /// <param name="id">指定的id</param>
        /// <returns>查询到的数据</returns>
        public TbInfo getInfoById(int id)
        {
            TbInfo tb = new TbInfo();
            string sql = "select tb_info.*, type_intro from tb_info inner join tb_type" +
                " on tb_info.info_type = tb_type.id where tb_info.id =" + id;
            DataTable dt = DBHelper.GetDataTable(sql);
            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0]; 
                tb.Id = Convert.ToInt32(dr["id"]);
                tb.Tbtype.TypeIntro = dr["type_intro"].ToString();
                tb.InfoTitle = dr["info_title"].ToString();
                tb.InfoDate = dr["info_date"].ToString();
                tb.InfoContact = dr["info_linkman"].ToString();
                tb.InfoContent = dr["info_content"].ToString();
                tb.InfoPhone = dr["info_phone"].ToString();
                tb.InfoEmail = dr["info_email"].ToString();
            }

            return tb;
        }


        /// <summary>
        /// 修改信息
        /// </summary>
        /// <param name="info">要修改的信息</param>
        /// <returns></returns>
        public int updateInfo(TbInfo info)
        {
            string sql = "update tb_info set info_type = @info_type, info_title = @info_title," +
                "info_content = @info_content, info_linkman = @info_linkman, info_phone = @info_phone," +
                " info_email = @info_email where id = @id";
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@info_type", info.InfoType),
                new SqlParameter("@info_title", info.InfoTitle),
                new SqlParameter("@info_content", info.InfoContent),
                new SqlParameter("@info_linkman", info.InfoContact),
                new SqlParameter("@info_phone", info.InfoPhone),
                new SqlParameter("@info_email", info.InfoEmail),
                new SqlParameter("@id", info.Id)
            };
            return DBHelper.ExecuteCommand(sql, param);
        }

        /// <summary>
        /// 删除信息
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public int deleteInfo(int id)
        {
            string sql = "delete from tb_info where id = "+id;
            return DBHelper.ExecuteCommand(sql);
        }


        /// <summary>
        /// 信息快速搜索
        /// </summary>
        /// <param name="key">关键字</param>
        /// <param name="condition">查询条件（电话，标题……）</param>
        /// <param name="searchType">全字匹配还是模糊搜索</param>
        /// <returns></returns>
        public ArrayList SearchInfo(string key, string condition, int searchType)
        {
            string sql = string.Empty;
            ArrayList list = new ArrayList();
            if (searchType == 0)
                sql = "select tb_info.*, type_intro from tb_info inner join tb_type" +
                " on tb_info.info_type = tb_type.id where " + condition + " = '"+ key + "'";
                
            else
                sql = "select tb_info.*, type_intro from tb_info inner join tb_type" +
                " on tb_info.info_type = tb_type.id where " + condition +" like '%" + key + "%'";



            DataTable dt = DBHelper.GetDataTable(sql);
            foreach (DataRow dr in dt.Rows)
            {
                TbInfo tb = new TbInfo();
                tb.Id = Convert.ToInt32(dr["id"]);
                tb.InfoTitle = dr["info_title"].ToString();
                tb.Tbtype.TypeIntro = dr["type_intro"].ToString();
                tb.InfoDate = dr["info_date"].ToString();
                tb.InfoContact = dr["info_linkman"].ToString();
                list.Add(tb);
            }
            return list;
        }

    }
}