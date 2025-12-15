<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="catalogo_web.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row justify-content-center">
        <div class="col-12 col-md-3">

            <div class="mt-5 p-4 bg-body-tertiary rounded">

                <h1 class="h3 mb-3 fw-normal">Registrate</h1>

                <div class="mb-0">
                    <label class="form-label small mb-1">Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"
                        placeholder="Email" TextMode="Email" MaxLength="60"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtEmail"
                        CssClass="text-danger small d-block mt-0" ErrorMessage="El email es obligatorio"></asp:RequiredFieldValidator>
                </div>

                <div class="mb-3">
                    <label class="form-label small mb-1">Password</label>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"
                        placeholder="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqPass" runat="server" ControlToValidate="txtPassword"
                        CssClass="text-danger small d-block mt-0" ErrorMessage="El password es obligatorio"></asp:RequiredFieldValidator>
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
</asp:Content>
