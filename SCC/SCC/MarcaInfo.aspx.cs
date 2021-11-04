using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SCC
{
    public partial class MarcaInfo : System.Web.UI.Page
    {
        string mainconnect = ConfigurationManager.ConnectionStrings["db_scc"].ConnectionString;
        SqlConnection sqlconnect;
        SqlCommand sqlcommand;
        SqlDataAdapter sda;
        DataTable dt;

        public void DataLoad()
        {
            if (Page.IsPostBack)
            {
                dgViewMarcas.DataBind();
            }
        }

        public void ClearAllData()
        {
            txtMarca.Text = "";
            lblMessage.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dgViewCarros_SelectedIndexChanged(object sender, EventArgs e)
        {
            lbIdmarca.Text = dgViewMarcas.SelectedRow.Cells[1].Text;
            txtMarca.Text = dgViewMarcas.SelectedRow.Cells[2].Text;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (txtMarca.Text != "")
            {
                using (sqlconnect = new SqlConnection(mainconnect))
                {
                    sqlconnect.Open();
                    sqlcommand = new SqlCommand("INSERT INTO marca (nome) VALUES (@marca)", sqlconnect);
                    sqlcommand.Parameters.AddWithValue("@marca", txtMarca.Text);
                    
                    sqlcommand.ExecuteNonQuery();
                    sqlconnect.Close();
                    DataLoad();
                    ClearAllData();
                }
            }
            else
            {
                lblMessage.Text = "Por favor, preencha todos os campos!";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (txtMarca.Text != "")
            {
                using (sqlconnect = new SqlConnection(mainconnect))
                {
                    sqlconnect.Open();
                    sqlcommand = new SqlCommand("UPDATE marca SET nome=@marca WHERE id=@idmarca", sqlconnect);
                    sqlcommand.Parameters.AddWithValue("@marca", txtMarca.Text);
                    sqlcommand.Parameters.AddWithValue("@idmarca", lbIdmarca.Text);
                    
                    sqlcommand.ExecuteNonQuery();
                    sqlconnect.Close();
                    DataLoad();
                    ClearAllData();
                }
            }
            else
            {
                lblMessage.Text = "Preencha todos os campos";
            }
        }

        protected void btnDel_Click(object sender, EventArgs e)
        {
            using (sqlconnect = new SqlConnection(mainconnect))
            {
                sqlconnect.Open();
                sqlcommand = new SqlCommand("DELETE FROM marca WHERE id=@idmarca", sqlconnect);
                sqlcommand.Parameters.AddWithValue("@idmarca", lbIdmarca.Text);
                sqlcommand.ExecuteNonQuery();
                sqlconnect.Close();
                DataLoad();
                ClearAllData();
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ClearAllData();
        }

    }
}