<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="MiPerfil.aspx.cs" Inherits="catalogo_web.MiPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-3">
        <div class="col-3"></div>
        <div class="col-6">
            <h3>Mi Perfil</h3>
            <hr />
        </div>
        <div class="col-3"></div>
    </div>
    <div class="row">
        <div class="col-3"></div>
        <div class="col-3">
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Email</label>
                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Nombre</label>
                <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mb-4">
                <label for="exampleFormControlInput1" class="form-label">Apellido</label>
                <asp:TextBox ID="txtApellido" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <asp:Button ID="btnGuardar" CssClass="btn btn-primary" OnClick="btnGuardar_Click" runat="server" Text="Guardar" />  
        </div>

        <div class="col-3">
            <div class="mb-3">
                <label class="form-label">Imagen Perfil</label>
                <asp:TextBox ID="txtUrlImagen" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="row">
                <div class="col-md-7">
                    <asp:Image ID="imgNuevoPerfil" ImageUrl="https://www.palomacornejo.com/wp-content/uploads/2021/08/no-image.jpg"
                        runat="server" CssClass="img-fluid mb-3" />
                </div>
            </div>




         
        </div>
        <div class="col-3"></div>
    </div>



</asp:Content>
