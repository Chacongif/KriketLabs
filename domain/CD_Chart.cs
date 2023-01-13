using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAcces;
using System.Data;
using System.Data.SqlClient;
using Common;

namespace Domain
{
    public class CD_Chart
    {
        private ChartDA ObjetoCD = new ChartDA();
        public DataTable showclicks(string user, string n) {

            DataTable tabla = new DataTable();
            tabla = new DataTable();
            tabla = ObjetoCD.LoadClicks(user, n);
            return tabla;


        }
        public void Dash(Comparar obj,string user, string n) {
            ChartDA acces = new ChartDA();
            acces.Show(obj,user,n);


        }

        public void Dash2(Comparar obj2, string user, string n)
        {
            ChartDA acces2 = new ChartDA();
            acces2.Show2(obj2, user, n);


        }

    }
}
