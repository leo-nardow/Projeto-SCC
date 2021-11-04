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
    public partial class CarroInfo : System.Web.UI.Page
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
                dgViewCarros.DataBind();
            }
        }

        public void ClearAllData()
        {
            txtModelo.Text = "";
            txtAno.Text = "";
            txtCor.Text = "";
            ddlMarca.SelectedValue = "1";
            lblMessage.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void dgViewCarros_SelectedIndexChanged(object sender, EventArgs e)
        {
            lbIdcarro.Text = dgViewCarros.SelectedRow.Cells[1].Text;
            txtModelo.Text = dgViewCarros.SelectedRow.Cells[2].Text;
            txtAno.Text = dgViewCarros.SelectedRow.Cells[4].Text;
            txtCor.Text = dgViewCarros.SelectedRow.Cells[5].Text;
            ddlMarca.Text = dgViewCarros.SelectedRow.Cells[6].Text;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if(txtModelo.Text!="" && txtAno.Text != "" && ddlMarca.SelectedValue != "1")
            {
                using(sqlconnect = new SqlConnection(mainconnect))
                {
                    sqlconnect.Open();
                    sqlcommand = new SqlCommand("INSERT INTO carro (idmarca,modelo,ano,cor) VALUES (@idmarca,@modelo,@ano,@cor)", sqlconnect);
                    sqlcommand.Parameters.AddWithValue("@idmarca", ddlMarca.Text);
                    sqlcommand.Parameters.AddWithValue("@modelo", txtModelo.Text);
                    sqlcommand.Parameters.AddWithValue("@ano", txtAno.Text);
                    if (txtCor.Text != "")
                    {
                        sqlcommand.Parameters.AddWithValue("@cor", txtCor.Text);
                    } else
                    {
                        sqlcommand.Parameters.AddWithValue("@cor", "");
                    }
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
            if (txtModelo.Text != "" && txtAno.Text != "" && ddlMarca.SelectedValue != "1")
            {
                using (sqlconnect = new SqlConnection(mainconnect))
                {
                    sqlconnect.Open();
                    sqlcommand = new SqlCommand("UPDATE carro SET idmarca=@idmarca, modelo=@modelo, ano=@ano, cor=@cor WHERE id=@idcarro", sqlconnect);
                    sqlcommand.Parameters.AddWithValue("@idmarca", ddlMarca.Text);
                    sqlcommand.Parameters.AddWithValue("@modelo", txtModelo.Text);
                    sqlcommand.Parameters.AddWithValue("@ano", txtAno.Text);
                    sqlcommand.Parameters.AddWithValue("@idcarro", lbIdcarro.Text);
                    if (txtCor.Text != "")
                    {
                        sqlcommand.Parameters.AddWithValue("@cor", txtCor.Text);
                    }
                    else
                    {
                        sqlcommand.Parameters.AddWithValue("@cor", "");
                    }
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
            using(sqlconnect = new SqlConnection(mainconnect))
            {
                sqlconnect.Open();
                sqlcommand = new SqlCommand("DELETE FROM carro WHERE id=@idcarro", sqlconnect);
                sqlcommand.Parameters.AddWithValue("@idcarro", lbIdcarro.Text);
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