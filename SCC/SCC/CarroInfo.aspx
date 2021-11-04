<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CarroInfo.aspx.cs" Inherits="SCC.CarroInfo" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class="container">
        <div class="row">

            <table class="nav-justified">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblTitle" runat="server" Text="Cadastro do Carro" CssClass="txt-title"></asp:Label>
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td>
                        <p class="lead">
                            Não achou a marca que queria?
                        </p>
                        <asp:LinkButton ID="btnIrCadastro" runat="server" CssClass="btn btn-primary btn-lg" href="MarcaInfo" Text="Cadastre uma nova marca aqui! »"></asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 133px; height: 93px;">
                        <asp:Label ID="lblModelo" runat="server" Text="Modelo" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="modal-sm" style="width: 596px; height: 93px;">
                        <asp:TextBox ID="txtModelo" runat="server" Width="180px"></asp:TextBox>
                    </td>

                    <td rowspan="7">

                        <asp:GridView ID="dgViewCarros" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="700px" OnSelectedIndexChanged="dgViewCarros_SelectedIndexChanged" Style="margin-right: 0px" DataKeyNames="id" Height="400px">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" ItemStyle-CssClass="txt-select" ItemStyle-Width="100px" HeaderStyle-BackColor="#D3E5FA" ItemStyle-BackColor="#D3E5FA">
                                    <HeaderStyle BackColor="#D3E5FA"></HeaderStyle>

                                    <ItemStyle BackColor="#D3E5FA" CssClass="txt-select" Width="100px"></ItemStyle>
                                </asp:CommandField>
                                <asp:BoundField DataField="id" HeaderText="" ItemStyle-Width="15px" InsertVisible="False" ReadOnly="True" SortExpression="id" ItemStyle-ForeColor="#B0D0F6" HeaderStyle-BackColor="#B0D0F6" ItemStyle-BackColor="#B0D0F6">
                                    <HeaderStyle BackColor="#B0D0F6"></HeaderStyle>

                                    <ItemStyle BackColor="#B0D0F6" ForeColor="#B0D0F6" Width="15px"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="modelo" HeaderText="Modelo" ItemStyle-CssClass="txt-items" SortExpression="modelo" HeaderStyle-CssClass="txt-center" HeaderStyle-BackColor="#D3E5FA">
                                    <HeaderStyle BackColor="#D3E5FA" CssClass="txt-center"></HeaderStyle>

                                    <ItemStyle CssClass="txt-items"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="nome" HeaderText="Marca" ItemStyle-CssClass="txt-items" SortExpression="nome" HeaderStyle-CssClass="txt-center" HeaderStyle-BackColor="#D3E5FA">
                                    <HeaderStyle BackColor="#D3E5FA" CssClass="txt-center"></HeaderStyle>

                                    <ItemStyle CssClass="txt-items"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="ano" HeaderText="Ano" ItemStyle-CssClass="txt-items" SortExpression="ano" HeaderStyle-CssClass="txt-center" HeaderStyle-BackColor="#D3E5FA">
                                    <HeaderStyle BackColor="#D3E5FA" CssClass="txt-center"></HeaderStyle>

                                    <ItemStyle CssClass="txt-items"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="cor" HeaderText="Cor" ItemStyle-CssClass="txt-items" SortExpression="cor" HeaderStyle-CssClass="txt-center" HeaderStyle-BackColor="#D3E5FA">
                                    <HeaderStyle BackColor="#D3E5FA" CssClass="txt-center"></HeaderStyle>

                                    <ItemStyle CssClass="txt-items"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="idmarca" HeaderText="" SortExpression="idmarca" ItemStyle-Width="15px" ItemStyle-ForeColor="#B0D0F6" HeaderStyle-BackColor="#B0D0F6" ItemStyle-BackColor="#B0D0F6">
                                    <HeaderStyle BackColor="#B0D0F6"></HeaderStyle>

                                    <ItemStyle BackColor="#B0D0F6" ForeColor="#B0D0F6" Width="15px"></ItemStyle>
                                </asp:BoundField>
                            </Columns>
                            <PagerStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_scc %>" SelectCommand="SELECT carro.modelo, marca.nome, carro.ano, carro.cor, carro.idmarca, carro.id FROM marca INNER JOIN carro ON marca.id = carro.idmarca"></asp:SqlDataSource>
                    </td>
                    <td style="height: 93px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 133px">
                        <asp:Label ID="lbMarca" runat="server" Text="Marca" Font-Size="Large"></asp:Label>

                    </td>
                    <td class="modal-sm" style="width: 596px">
                        <asp:DropDownList ID="ddlMarca" runat="server" DataSourceID="SqlDataSource2" DataTextField="nome" DataValueField="id" Width="180px" Height="26px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_scc %>" SelectCommand="SELECT [id], [nome] FROM [marca]"></asp:SqlDataSource>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 133px">
                        <asp:Label ID="lblAno" runat="server" Text="Ano" Font-Size="Large"></asp:Label>

                    </td>
                    <td class="modal-sm" style="width: 596px">
                        <asp:TextBox ID="txtAno" runat="server" Width="180px"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 133px">
                        <asp:Label ID="lbCor" runat="server" Text="Cor" Font-Size="Large"></asp:Label>

                    </td>
                    <td class="modal-sm" style="width: 596px">
                        <asp:TextBox ID="txtCor" runat="server" Width="180px"></asp:TextBox>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 133px">
                        <asp:Label ID="lbIdcarro" runat="server" Visible="False"></asp:Label>
                        <br />
                        <br />
                    </td>
                    <td class="modal-sm" style="width: 596px">
                        <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
                        <br />
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 133px">&nbsp;</td>
                    <td class="modal-sm" style="width: 596px">
                        <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-success btn2" Text="Adicionar" OnClick="btnAdd_Click" />
                        <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-primary btn2" Text="Atualizar" OnClick="btnUpdate_Click" />
                        <asp:Button ID="btnDel" runat="server" CssClass="btn btn-danger btn2" Text="Apagar" OnClick="btnDel_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 133px">&nbsp;</td>
                    <td class="modal-sm" style="width: 596px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 133px">&nbsp;</td>
                    <td class="modal-sm" style="width: 596px">
                        <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-danger btn2" Text="Cancelar" Width="183px" OnClick="btnCancel_Click" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 133px">&nbsp;</td>
                    <td class="modal-sm" style="width: 596px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 133px">&nbsp;</td>
                    <td class="modal-sm" style="width: 596px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 133px">&nbsp;</td>
                    <td class="modal-sm" style="width: 596px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </div>
    <br />
    <br />

</asp:Content>
