<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SCC._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Sistema de Cadastro de Carros</h1>
        <p class="lead">Projeto Sistema de Cadastro de Carros desenvolvido em ASP.NET Web Forms C# com SQL Server.</p>
        <asp:LinkButton ID="btnIrCadastro" CssClass="btn btn-primary btn-lg" href="/CarroInfo" Text="Iniciar um novo Cadastro &raquo;" runat="server"></asp:LinkButton>
    </div>
</asp:Content>
