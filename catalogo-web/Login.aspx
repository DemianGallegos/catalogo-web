<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="catalogo_web.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-4"></div>
        <div class="col-3">
            <div class="mt-5 px-3 pt-4 pb-5 bg-body-tertiary">
                <div>
                    <h1 class="h3 mb-3 fw-normal">Login</h1>
                    <div class="form-floating mb-2">
                        <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email" runat="server"></asp:TextBox>
                        <label for="floatingInput">Email</label>
                    </div>
                    <div class="form-floating mb-4">
                        <asp:TextBox ID="txtPassword" CssClass="form-control" placeholder="Password" runat="server"></asp:TextBox>
                        <label for="floatingPassword">Password</label>
                    </div>
                    <asp:Button ID="btnIngresar" runat="server" OnClick="btnIngresar_Click" CssClass="btn btn-primary w-100 py-2" Text="Ingresar" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
