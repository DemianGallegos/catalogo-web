<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="ArticulosLista.aspx.cs" Inherits="catalogo_web.ArticulosLista" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <!-- Falta paginado en la GridView!!!!!!!!!!!!!!!!!!!!!!-->
    
    
    <div class="row">
        <div class="col-1"></div>
        <div class="col-10">
            <div class="h3 pt-2">Lista de artículos</div>
            <asp:GridView ID="dgvArticulos" runat="server" DataKeyNames="Id"
                AutoGenerateColumns="false" OnSelectedIndexChanged="dgvArticulos_SelectedIndexChanged" CssClass="table table-light table-bordered">
                <Columns>
                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                    <asp:BoundField HeaderText="Marca" DataField="Marca" />
                    <asp:BoundField HeaderText="Categoria" DataField="Categoria" />
                    <asp:BoundField HeaderText="Precio" DataFormatString="{0:N2}" DataField="Precio" />
                    <asp:CommandField HeaderText="Acción" ShowSelectButton="true" SelectText="Editar" />
                </Columns>
            </asp:GridView>
            <a href="FormularioArticulo.aspx" class="btn-primary">Agregar</a>
        </div>
    </div>



</asp:Content>
