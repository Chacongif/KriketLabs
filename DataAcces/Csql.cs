using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace DataAcces
{
    public class Csql
    {
        private readonly string ca;
        public Csql() {
            ca = "server= (local); Database= kklab; Integrated security= true;User ID=user;Password=4812";

        }
        protected SqlConnection GetConnection()
        {
            return new SqlConnection(ca);
        }


        private SqlConnection Conexion = new SqlConnection("server= (local); Database= kklab; Integrated security= true;User ID=user;Password=4812");
        public SqlConnection opencon() {

            if (Conexion.State == ConnectionState.Closed) {
                Conexion.Open();
            }
            return Conexion;
        }

        public SqlConnection closecon() {

            if (Conexion.State == ConnectionState.Open) {

                Conexion.Close();
            }
            return Conexion;
        }
    }
}
