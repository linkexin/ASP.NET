using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
//using System.Threading.Tasks;
using System.Data.SqlClient;
using 都市供求信息网.model;

namespace 都市供求信息网.dao
{
    public class Concatenate
    {
        /// <summary>
        /// 添加银行卡
        /// </summary>
        /// <param name="msg"></param>
        /// <returns></returns>
        public static int addCard(string[] msg)
        {
            string sql = "insert into tb_card (idNum, userId, bankName, balance, createDate, password)" +
                "values(@idNum, @userId, @bankName, @balance, convert(varchar(100), getdate(), 20), @password)";
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@idNum", msg[0]),
                new SqlParameter("@password", msg[1]),
                //new SqlParameter("@userId", ThirdData.user.Id),
                new SqlParameter("@bankName", msg[2]),
                new SqlParameter("@balance", msg[3]),
            };
            int ok = DBHelper.ExecuteCommand(sql, param);
            /*
            if (ok != 0)
            {
                //操作记录
                sql = "insert into tb_trade (cardId, tradeTime, tradeType, number)" +
                    "values(@idNum, convert(varchar(100), getdate(), 20), @tradeType, @number)";
                param = new SqlParameter[]
                {
                    new SqlParameter("@idNum", msg[0]),
                    new SqlParameter("@tradeType", "添加银行卡"),
                    new SqlParameter("@number", "0.0"),
                };
                DBHelper.ExecuteCommand(sql, param);
            }*/
            return ok;
        }

        
        /// <summary>
        /// 存款
        /// </summary>
        /// <param name="m"></param>
        /// <returns></returns>
        public static int deposit(double m)
        {
            string sql = string.Format("update tb_card set balance = balance + @ba where idNum = @idNum");
            SqlParameter[] param = new SqlParameter[]
            {
                //new SqlParameter("@idNum", ThirdData.card.CardNum),
                new SqlParameter("@ba", m)
            };
            int ok = DBHelper.ExecuteCommand(sql, param);
            if (ok != 0)
            {
                //操作记录
                sql = "insert into tb_trade (cardId, tradeTime, tradeType, number)" +
                    "values(@idNum, getdate(), @tradeType, @number)";
                param = new SqlParameter[]
                {
                    //new SqlParameter("@idNum", ThirdData.card.CardNum),
                    new SqlParameter("@tradeType", "存款"),
                    new SqlParameter("@number", m.ToString())
                };
                DBHelper.ExecuteCommand(sql, param);
            }
            return ok;
        }



        /// <summary>
        /// 取款
        /// </summary>
        /// <param name="m"></param>
        /// <returns></returns>
        public static int draw(double m)
        {
            string sql = string.Format("update tb_card set balance = balance - @ba where idNum = @idNum");
            SqlParameter[] param = new SqlParameter[]
            {
                //new SqlParameter("@idNum", ThirdData.card.CardNum),
                new SqlParameter("@ba", m)
            };
            int ok = DBHelper.ExecuteCommand(sql, param);
            if (ok != 0)
            {
                //操作记录
                sql = "insert into tb_trade (cardId, tradeTime, tradeType, number)" +
                    "values(@idNum, getdate(), @tradeType, @number)";
                param = new SqlParameter[]
                {
                    //new SqlParameter("@idNum", ThirdData.card.CardNum),
                    new SqlParameter("@tradeType", "取款"),
                    new SqlParameter("@number", m.ToString())
                };
                DBHelper.ExecuteCommand(sql, param);
            }
            return ok;
        }


        /// <summary>
        /// 修改卡
        /// </summary>
        /// <param name="pswd"></param>
        /// <param name="bankCard"></param>
        /// <returns></returns>
        public static int modifyCard(string pswd, string bankCard)
        {
            string sql = "update tb_card set password = @psw where idNum = @idNum";
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@psw", pswd),
                //new SqlParameter("@idNum", ThirdData.card.CardNum)
            };
            if (DBHelper.ExecuteCommand(sql, param) == 0)
                return 0;
            else
            {
                sql = "update tb_card set bankName = @bank where idNum = @idNum";
                param = new SqlParameter[]
                {
                    new SqlParameter("@bank", bankCard),
                    //new SqlParameter("@idNum", ThirdData.card.CardNum)
                };
                if (DBHelper.ExecuteCommand(sql, param) == 0)
                    return 0;
                else
                {
                    sql = "insert into tb_trade (cardId, tradeTime, tradeType, number)" +
                    "values(@idNum, getdate(), @tradeType, @number)";
                    param = new SqlParameter[]
                    {
                        //new SqlParameter("@idNum", ThirdData.card.CardNum),
                        new SqlParameter("@tradeType", "更改密码和银行"),
                        new SqlParameter("@number", "0.0")
                    };
                    DBHelper.ExecuteCommand(sql, param);
                    return 1;
                }
            }
        }
    }
}
