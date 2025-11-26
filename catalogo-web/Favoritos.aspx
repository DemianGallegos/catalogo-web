<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Favoritos.aspx.cs" Inherits="catalogo_web.Favoritos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg-body-tertiary">
        <div class="row min-vh-100">
            <div class="col-3"></div>
            <div class="col-6">
                <div class="h5 pt-4">Favoritos</div>
                <hr class="mt-1 mb-3">
                <div class="row  min-vh-100 bg-white">
                    <div class="py-3">
                        <asp:Repeater ID="repRepetidor" runat="server">
                            <ItemTemplate>
                                <div class="card mb-1" style="max-width: auto;">
                                    <div class="row g-0">
                                        <div class="col-md-4">
                                            <img src="<%#Eval("ImagenUrl")%>" class="img-fluid rounded-start" alt="...">
                                        </div>
                                        <div class="col-md-8">
                                            <div class="card-body">
                                                <h5 class="card-title"><%#Eval("Nombre")%> <%#Eval("Codigo")%></h5>
                                                <p class="card-text"><%#Eval("Precio")%></p>
                                                <asp:Button ID="btnEliminar" runat="server"
                                                    Onclick="btnEliminar_Click" CssClass="btn text-primary ps-0" Text="Eliminar"
                                                    CommandArgument='<%#Eval("Id")%>' CommandName="ArticuloId" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
