using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace searchmovie.DAL
{
    public class myDAL
    {
        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString;

        public void getid(ref int id,string Name)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("getid", con); //name of your SQL procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@name", SqlDbType.VarChar, 40); //input of SQL stored procedure
                cmd.Parameters.Add("@id", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters["@name"].Value = Name;

                cmd.ExecuteNonQuery(); //executre the cmd query

                id = Convert.ToInt32(cmd.Parameters["@id"].Value);
            }
            catch
            {

            }
            finally
            {
                con.Close();
            }
        }

        public int SearchMovieByName_DAL(string Name, ref DataTable result,ref string moviename)
        {
            int found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("SearchMovieByName ", con); //name of your SQL procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@name", SqlDbType.VarChar, 40); //input of SQL stored procedure
                cmd.Parameters.Add("@flag", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@moviename", SqlDbType.VarChar, 40).Direction = ParameterDirection.Output;

                // set SQL procedure parameter values
                cmd.Parameters["@name"].Value = Name;


                cmd.ExecuteNonQuery(); //executre the cmd query

                found = Convert.ToInt32(cmd.Parameters["@flag"].Value);
                moviename = Convert.ToString(cmd.Parameters["@moviename"].Value);

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    da.Fill(ds); //get results
                if (found != 0)
                {
                    result = ds.Tables[0]; //fill the results in ref input table 
                }
                con.Close(); //close SQL connection
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                found= -1; //if any erron return -1
            }
            finally
            {
                con.Close();
            }
            return found;
        }

        public int getfavmovie(ref string m)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("getfavmovie", con); //name of your SQL procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@movie", SqlDbType.VarChar, 30).Direction = ParameterDirection.Output;

                cmd.ExecuteNonQuery(); //execute the cmd query

                m = Convert.ToString(cmd.Parameters["@movie"].Value);
                
            }
            catch // (SqlException ex)
            {
                //Console.WriteLine("SQL Error" + ex.Message.ToString());
                return 0; 
            }
            finally
            {
                con.Close();
            }
            return 1;
        }
        public int getfavactor(ref string m)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("getfavactor", con); //name of your SQL procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@actor", SqlDbType.VarChar, 30).Direction = ParameterDirection.Output;

                cmd.ExecuteNonQuery(); //execute the cmd query

                m = Convert.ToString(cmd.Parameters["@actor"].Value);
            }
            catch
            {
                return 0;
            }
            finally
            {
                con.Close();
            }
            return 1;
        }
    }
}

namespace signup.DAL
{
    public class myDAL
    {
        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString;


        public int signup_dal(string Name, string Email, string Bdate, string Password)

        {
            int Flag = 0;

            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("signup", con); //name of your SQL procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@Name", SqlDbType.VarChar, 30); //input of SQL stored procedure
                cmd.Parameters.Add("@Email", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@Password", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@Bdate", SqlDbType.VarChar, 10);
                cmd.Parameters.Add("@flag", SqlDbType.Int).Direction = ParameterDirection.Output;


                // set SQL procedure parameter values
                cmd.Parameters["@Name"].Value = Name;
                cmd.Parameters["@Email"].Value = Email;
                cmd.Parameters["@Password"].Value = Password;
                cmd.Parameters["@Bdate"].Value = Bdate;

               cmd.ExecuteNonQuery(); //executre the cmd query

                Flag = Convert.ToInt32(cmd.Parameters["@flag"].Value);

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    da.Fill(ds); //get results

               // result = ds.Tables[0]; //fill the results in ref input table 

                con.Close(); //close SQL connection


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                Flag =-1;

            }
            finally
            {
                con.Close();
            }

            return Flag;

        }
    }
}

namespace signin.DAL
{
    public class myDAL
    {
        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString;

        public int signin_dal(string Email, string Password)

        {
            int Flag = 0;

            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("signin", con); //name of your SQL procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@Email", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@Password", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@flag", SqlDbType.Int).Direction = ParameterDirection.Output;


                // set SQL procedure parameter values
                cmd.Parameters["@Email"].Value = Email;
                cmd.Parameters["@Password"].Value = Password;

                cmd.ExecuteNonQuery(); //executre the cmd query

                Flag = Convert.ToInt32(cmd.Parameters["@flag"].Value);

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    da.Fill(ds); //get results

                //result = ds.Tables[0]; //fill the results in ref input table 

                con.Close(); //close SQL connection


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                Flag = -1;

            }
            finally
            {
                con.Close();
            }

            return Flag;

        }
    }
}

namespace Delaccount.DAL
{
    public class myDAL
    {
        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString;

        public int Delaccount_dal(string Email, string Password)

        {
            int Flag = 0;

            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("DeleteAccount", con); //name of your SQL procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@Email", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@Password", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@flag", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set SQL procedure parameter values
                cmd.Parameters["@Email"].Value = Email;
                cmd.Parameters["@Password"].Value = Password;

                cmd.ExecuteNonQuery(); //executre the cmd query

                Flag = Convert.ToInt32(cmd.Parameters["@flag"].Value);



                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    da.Fill(ds); //get results

                con.Close(); //close SQL connection


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                Flag = -1;

            }
            finally
            {
                con.Close();
            }

            return Flag;

        }
    }
}

namespace fetching.DAL
{
    public class myDAL
    {
        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString;

        public int getreview(string Name, ref DataTable r)
        {
            int found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("getreview ", con); //name of your SQL procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@name", SqlDbType.VarChar, 40); //input of SQL stored procedure
                cmd.Parameters.Add("@flag", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set SQL procedure parameter values
                cmd.Parameters["@name"].Value = Name;

                cmd.ExecuteNonQuery(); //execute the cmd query

                found = Convert.ToInt32(cmd.Parameters["@flag"].Value);

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    da.Fill(ds); //get results
                if (found != 0)
                {
                    r = ds.Tables[0]; //fill the results in ref input table
                } 
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                found = -1; //if any erron return -1
            }
            finally
            {
                con.Close();
            }
            return found;
        }

        public int setrate(int x,string movie,string email)
        {
            int found = 1;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Stars", con); //name of your SQL procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@val", SqlDbType.Int); //input of SQL stored procedure
                cmd.Parameters.Add("@movie", SqlDbType.VarChar,30); //input of SQL stored procedure
                cmd.Parameters.Add("@email", SqlDbType.VarChar, 30); //input of SQL stored procedure

                // set SQL procedure parameter values
                cmd.Parameters["@val"].Value = x;
                cmd.Parameters["@movie"].Value = movie;
                cmd.Parameters["@email"].Value = email;

                cmd.ExecuteNonQuery(); //execute the cmd query

            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                found = -1; //if any erron return -1
            }
            finally
            {
                con.Close();
            }
            return found;
        }

        public int writereview(string r,string email,string movie)
        {
            int found = 1;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("writereview ", con); //name of your SQL procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@uid", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@moviename", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@comment", SqlDbType.VarChar, 100);

                cmd.Parameters["@uid"].Value = email;
                cmd.Parameters["@comment"].Value = r;
                cmd.Parameters["@moviename"].Value = movie;

                cmd.ExecuteNonQuery(); //execute the cmd query
            }

            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                found = -1; //if any erron return -1
            }
            finally
            {
                con.Close();
            }
            return found;
        }

        public void getwatchlist(string email,ref DataTable r)
        {
            
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                DataSet ds = new DataSet();
                cmd = new SqlCommand("getwatchlist", con); //name of your SQL procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@email", SqlDbType.VarChar, 30);

                cmd.Parameters["@email"].Value = email;

                cmd.ExecuteNonQuery(); //execute the cmd query

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    da.Fill(ds); //get results

                r = ds.Tables[0]; //fill the results in ref input table 
            }
            catch
            {

            }
            finally
            {
                con.Close();
            }
        }

        public int addtowatchlist(string movie,string email)
        {
            int found=1;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("addtowatchlist", con); //name of your SQL procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@moviename", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@uid", SqlDbType.VarChar, 30);

                cmd.Parameters["@moviename"].Value = movie;
                cmd.Parameters["@uid"].Value = email;

                cmd.ExecuteNonQuery(); //execute the cmd query
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                found = -1; //if any erron return -1
            }
            finally
            {
                con.Close();
            }
            return found;
         }

        public int addfav(string movie)
        {
            int found = 1;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("favmovie ", con); //name of your SQL procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@moviename", SqlDbType.VarChar, 30);
                
                cmd.Parameters["@moviename"].Value = movie;

                cmd.ExecuteNonQuery(); //execute the cmd query
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                found = -1; //if any erron return -1
            }
            finally
            {
                con.Close();
            }
            return found;
        }

        public int fetch_DAL(string Name,ref string g, ref int y, ref string a, ref int f, ref int r, ref string a2, ref string d)
        {
            int found=1;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("getinfo ", con); //name of your SQL procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@name", SqlDbType.VarChar, 40); //input of SQL stored procedure
                cmd.Parameters.Add("@year", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@genre", SqlDbType.VarChar,10).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@rate", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@fav", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@actor", SqlDbType.VarChar, 30).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@actor2", SqlDbType.VarChar, 30).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@director", SqlDbType.VarChar, 30).Direction = ParameterDirection.Output;

                // set SQL procedure parameter values
                cmd.Parameters["@name"].Value = Name;

                cmd.ExecuteNonQuery(); //execute the cmd query

                y = Convert.ToInt32(cmd.Parameters["@year"].Value);
                r = Convert.ToInt32(cmd.Parameters["@rate"].Value);
                g = Convert.ToString(cmd.Parameters["@genre"].Value);
                d = Convert.ToString(cmd.Parameters["@director"].Value);
                a = Convert.ToString(cmd.Parameters["@actor"].Value);
                a2 = Convert.ToString(cmd.Parameters["@actor2"].Value);
                f = Convert.ToInt32(cmd.Parameters["@fav"].Value);

            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                found = -1; //if any erron return -1
            }
            finally
            {
                con.Close();
            }
            return found;
        }
    }
}