<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="catalogo_web.Error" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row justify-content-center">
        <div class="col-10">

            <h2 class="mt-5">Error</h2>
            <div class="mb-5">
                <asp:Label ID="lblError" runat="server" Text="text"></asp:Label>
            </div>
            <div class="mb-3">
                <a href="Default.aspx" class="btn btn-outline-secondary">Volver al inicio</a>
            </div>
            <div class="mb-2">
                <asp:HyperLink ID="lnkLoguin" runat="server" NavigateUrl="Login.aspx" CssClass="btn btn-primary"
                    Visible="false">Reintenta loguearte</asp:HyperLink>
            </div>
        </div>

    </div>


</asp:Content>
