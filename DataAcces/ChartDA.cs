using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using Common;
using System.Windows.Forms;

namespace DataAcces
{
    public class ChartDA
    {
        private Csql conexion = new Csql();
        SqlDataReader read;
        DataTable table = new DataTable();
        SqlCommand comando = new SqlCommand();



        public DataTable LoadClicks(string user, string n)
        {
            comando.Connection = conexion.opencon();
            comando.CommandText = "Showclicks";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@user", user);
            comando.Parameters.AddWithValue("@n", n);
            read = comando.ExecuteReader();

            table.Load(read);
            comando.Parameters.Clear();
            conexion.closecon();
            return (table);

        }

   
       public void Show(Comparar obj ,string user, string n) {

            try { 
            comando.Connection = conexion.opencon();
            comando.CommandText = "Showclicks";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@user", user);
            comando.Parameters.AddWithValue("@n", n);
            read = comando.ExecuteReader();
            while (read.Read())
            {


                obj.Titulo1.Add(read.GetString(0));
                obj.Clicks1.Add(read.GetInt32(1));

            }
            comando.Parameters.Clear();
            read.Close();
            conexion.closecon();
            } catch (Exception ex) {

                MessageBox.Show("selecciona correctamente el campo del nombre");
                if (read.Read()) {

                    read.Close();
                }
                comando.Parameters.Clear();
              
                conexion.closecon();


            }

            }
        public void Show2(Comparar obj2, string user, string n)
        {
            try
            {
                comando.Connection = conexion.opencon();
                comando.CommandText = "Showclicks";
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.AddWithValue("@user", user);
                comando.Parameters.AddWithValue("@n", n);
                read = comando.ExecuteReader();
                while (read.Read())
                {


                    obj2.Titulo21.Add(read.GetString(0));
                    obj2.Clicks21.Add(read.GetInt32(1));

                }
                comando.Parameters.Clear();
                read.Close();
                conexion.closecon();
            }
            catch (Exception ex){
                MessageBox.Show("selecciona correctamente el campo del nombre");
                comando.Parameters.Clear();
                if (read.Read())
                {

                    read.Close();
                }
                conexion.closecon();
            }

        }
    }

}
