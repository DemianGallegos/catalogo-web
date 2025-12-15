<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="catalogo_web.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row justify-content-center">
        <div class="col-12 col-md-3">

            <div class="mt-5 p-4 bg-body-tertiary rounded">

                <h1 class="h3 mb-3 fw-normal">Login</h1>

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

                <asp:Button ID="btnIngresar" runat="server" CssClass="btn btn-primary w-100 py-2" Text="Ingresar" OnClick="btnIngresar_Click" />

            </div>

        </div>
    </div>
</asp:Content>
