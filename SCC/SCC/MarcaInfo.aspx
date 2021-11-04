<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MarcaInfo.aspx.cs" Inherits="SCC.MarcaInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class="container">
        <div class="row">

            <table class="nav-justified">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblTitle" runat="server" Text="Cadastro do Marca" CssClass="txt-title"></asp:Label>
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td>
                        <p class="lead">
                            Deseja cadastrar um carro?
                        </p>
                        <asp:LinkButton ID="btnIrCadastro" runat="server" CssClass="btn btn-primary btn-lg" href="CarroInfo" Text="Cadastrar Carro »"></asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 133px; height: 93px;">
                        <asp:Label ID="lblMarca" runat="server" Text="Marca" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="modal-sm" style="width: 596px; height: 93px;">
                        <asp:TextBox ID="txtMarca" runat="server" Width="180px"></asp:TextBox>
                    </td>

                    <td rowspan="7">

                        <asp:GridView ID="dgViewMarcas" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Width="700px" OnSelectedIndexChanged="dgViewCarros_SelectedIndexChanged" Style="margin-right: 0px" DataKeyNames="id" Height="400px">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" ItemStyle-CssClass="txt-select" ItemStyle-Width="100px" HeaderStyle-BackColor="#D3E5FA" ItemStyle-BackColor="#D3E5FA">
                                    <HeaderStyle BackColor="#D3E5FA"></HeaderStyle>

                                    <ItemStyle BackColor="#D3E5FA" CssClass="txt-select" Width="100px"></ItemStyle>
                                </asp:CommandField>
                                <asp:BoundField DataField="id" HeaderText="" ItemStyle-Width="15px" InsertVisible="False" ReadOnly="True" SortExpression="id" ItemStyle-ForeColor="#B0D0F6" HeaderStyle-BackColor="#B0D0F6" ItemStyle-BackColor="#B0D0F6">
                                    <HeaderStyle BackColor="#B0D0F6"></HeaderStyle>

                                    <ItemStyle BackColor="#B0D0F6" ForeColor="#B0D0F6" Width="15px"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="nome" HeaderText="Marca" ItemStyle-CssClass="txt-items" SortExpression="nome" HeaderStyle-CssClass="txt-center" HeaderStyle-BackColor="#D3E5FA">
                                    <HeaderStyle BackColor="#D3E5FA" CssClass="txt-center"></HeaderStyle>

                                    <ItemStyle CssClass="txt-items"></ItemStyle>
                                </asp:BoundField>
                            </Columns>
                            <PagerStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:db_scc %>" SelectCommand="SELECT * FROM marca
EXCEPT SELECT TOP 1 * FROM marca"></asp:SqlDataSource>
                    </td>
                    <td style="height: 93px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 133px">
                        <asp:Label ID="lbIdmarca" runat="server" Visible="False"></asp:Label>

                    </td>
                    <td class="modal-sm" style="width: 596px">
                        <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>

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
                    <td class="modal-sm" style="width: 596px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 133px">
                        <br />
                        <br />
                    </td>
                    <td class="modal-sm" style="width: 596px">
                        <br />
                        <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-success btn2" Text="Adicionar" OnClick="btnAdd_Click" />
                        <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-primary btn2" Text="Atualizar" OnClick="btnUpdate_Click" />
                        <asp:Button ID="btnDel" runat="server" CssClass="btn btn-danger btn2" Text="Apagar" OnClick="btnDel_Click" />
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 133px">&nbsp;</td>
                    <td class="modal-sm" style="width: 596px">
                        <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-danger btn2" Text="Cancelar" Width="183px" OnClick="btnCancel_Click" />
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
