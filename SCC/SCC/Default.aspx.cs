using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SCC
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            mostrarLista();
        }


        public void mostrarLista()
        {
            //pnlCampoCadastro.Visible = false;
            //pnlResultado.Visible = true;
            //gridResultado.DataSource = Carro.Lista;
            //gridResultado.DataBind();
        }

        public void mostrarCadastro()
        {
            pnlCampoCadastro.Visible = true;
            pnlResultado.Visible = false;
        }

        protected void btnIrCadastro_Click(object sender, EventArgs e)
        {
            mostrarCadastro();
        }

        protected void btnCadastro_Click(object sender, EventArgs e)
        {
            //var carro = new Carro();
            //carro.Modelo = txtModelo.Text;
            //carro.Ano = txtAno.Text;
            //carro.Cor = txtCor.Text;
            //carro.Salvar();

            //txtModelo.Text = "";
            //txtAno.Text = "";
            //txtCor.Text = "";

            mostrarLista();
        }
    }
}