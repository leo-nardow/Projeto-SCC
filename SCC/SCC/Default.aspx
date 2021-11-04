<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SCC._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Sistema de Cadastro de Carros</h1>
        <p class="lead">Projeto Sistema de Cadastro de Carros desenvolvido em ASP.NET Web Forms C# com SQL Server.</p>

        <asp:Button ID="btnIrCadastro" CssClass="btn btn-primary btn-lg" runat="server" Text="Iniciar um novo Cadastro &raquo;" OnClick="btnIrCadastro_Click" />
    </div>

    <div class="panel panel-default">
        <div class="panel-body">
            <asp:Panel ID="pnlCampoCadastro" runat="server">
                
            </asp:Panel>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-body">
            <asp:Panel ID="pnlResultado" runat="server">
                
                
            </asp:Panel>


            <%--<asp:Panel ID="Panel1" runat="server">
                <asp:Label ID="Label1" runat="server" Text="Modelo"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Ano"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Cor"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Cadastrar" OnClick="btnCadastro_Click" />
            </asp:Panel>--%>
        </div>
    </div>

    <%--<div class="row">
		<div class="col-md-4">
			<h2>Getting started</h2>
			<p>
				ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
			A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
			</p>
			<p>
				<a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
			</p>
		</div>
		<div class="col-md-4">
			<h2>Get more libraries</h2>
			<p>
				NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
			</p>
			<p>
				<a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
			</p>
		</div>
		<div class="col-md-4">
			<h2>Web Hosting</h2>
			<p>
				You can easily find a web hosting company that offers the right mix of features and price for your applications.
			</p>
			<p>
				<a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
			</p>
		</div>
	</div>--%>
</asp:Content>
