using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace GettingStarted
{
    public class GeoHelper
    {
        private SqlConnection dbConnection;

        public GeoHelper()
        {
            dbConnection = new SqlConnection("Data Source=LAPTOP-1K1L63DR;Initial Catalog=Dustbin-Locator;Integrated Security=SSPI");
        }
        public List<string> GetSpatialData()
        {
            List<string> spatialDataList = new List<string>();
            dbConnection.Open();
            var command = new SqlCommand("select [GEOMETRY].STAsText() from Location where GEOMETRY IS NOT NULL", dbConnection);
            var rdr = command.ExecuteReader();            
            while (rdr.Read())
            {
                spatialDataList.Add(Convert.ToString(rdr[0]));
            }
            dbConnection.Close();

            return spatialDataList;
        }
    }
}