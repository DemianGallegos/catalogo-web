<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="catalogo_web.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-4"></div>
        <div class="col-3">
            <div class="mt-5 px-3 pt-4 pb-5 bg-body-tertiary">
                <div>
                    <h1 class="h3 fw-normal mb-1">Registrate</h1>
                    <div class="mb-3">
                        <!--<small class="text-muted">Luego creá tu perfil de usuario</small>-->
                    </div>
                    <div class="form-floating mb-2">
                        <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email" runat="server"></asp:TextBox>
                        <label for="floatingInput">Email</label>
                    </div>
                    <div class="form-floating mb-4">
                        <asp:TextBox ID="txtPassword" CssClass="form-control" placeholder="Password" runat="server"></asp:TextBox>
                        <label for="floatingPassword">Password</label>
                    </div>

                    <div class="d-grid gap-2 d-md-block">
                        <asp:Button ID="btnRegistrarse" runat="server" OnClick="btnRegistrarse_Click"
                            CssClass="btn btn-primary" Text="Registrarme" />
                        <!-- El cancelar va a ser un <a  -->
                        <a class="btn btn-outline-secondary" href="Default.aspx">Cancelar</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
