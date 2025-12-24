<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="MiPerfil.aspx.cs" Inherits="catalogo_web.MiPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function validar() {
            
            const txtNombre = document.getElementById("txtNombre");
            const txtApellido = document.getElementById("txtApellido");

            // Limpiar
            txtNombre.classList.remove("is-invalid");
            txtApellido.classList.remove("is-invalid");

            var valido = true;

            if (txtNombre.value == "") {
                txtNombre.classList.add("is-invalid");
                valido = false;
            }

            if (txtApellido.value == "") {
                txtApellido.classList.add("is-invalid");
                valido = false;
            }

            return valido;
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-3">
        <div class="col-3"></div>
        <div class="col-6">
            <h4>Mi Perfil</h4>
            <hr class="mt-2 mb-3" />
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
                <asp:TextBox ID="txtNombre" CssClass="form-control" ClientIDMode="Static" MaxLength="50" runat="server"></asp:TextBox>
            </div>
            <div class="mb-4">
                <label for="exampleFormControlInput1" class="form-label">Apellido</label>
                <asp:TextBox ID="txtApellido" CssClass="form-control" ClientIDMode="Static" MaxLength="50" runat="server"></asp:TextBox>
            </div>
            <asp:Button ID="btnGuardar" CssClass="btn btn-primary" OnClientClick="return validar()" OnClick="btnGuardar_Click" runat="server" Text="Guardar" />  
        </div>

        <div class="col-3">
            <div class="mb-3">
                <label class="form-label">Imagen Perfil</label>
                <asp:TextBox ID="txtUrlImagen" CssClass="form-control" OnTextChanged="txtUrlImagen_TextChanged" AutoPostBack="true" runat="server"></asp:TextBox>
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
