<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="DetalleArticulo.aspx.cs" Inherits="catalogo_web.DetalleArticulo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row pt-4">
        <div class="col-1"></div>
        <div class="col-1">

            <div class="mb-2">
                <asp:ImageButton ID="imgBtn1" runat="server" OnClick="imgBtn1_Click" CssClass="img-fluid rounded border focus-ring"></asp:ImageButton>
            </div>
            <div class="mb-2">
                <asp:ImageButton ID="imgBtn2" runat="server" OnClick="imgBtn2_Click" CssClass="img-fluid rounded border focus-ring"></asp:ImageButton>
            </div>
            <div class="mb-2">
                <asp:ImageButton ID="imgBtn3" runat="server" OnClick="imgBtn3_Click" CssClass="img-fluid rounded border focus-ring"></asp:ImageButton>
            </div>
            <div class="mb-2">
                <asp:ImageButton ID="imgBtn4" runat="server" OnClick="imgBtn4_Click" CssClass="img-fluid rounded border focus-ring"></asp:ImageButton>
            </div>
            <div class="mb-2">
                <asp:ImageButton ID="imgBtn5" runat="server" OnClick="imgBtn5_Click" CssClass="img-fluid rounded border focus-ring"></asp:ImageButton>
            </div>
        </div>
        <div class="col-5">
            <asp:Image ID="imgPrincipal" CssClass="img-fluid" runat="server" />
        </div>
        <div class="col-4">
            <div class="h4">
                <asp:Label Id="lblNombre" runat="server" Text="Label"></asp:Label>
                <asp:Label Id="lblCodigo" runat="server" Text="Label"></asp:Label>
            </div>
            <div class="h5">
                <asp:Label Id="lblCategoria" runat="server" Text="Label"></asp:Label>
                <asp:Label Id="lblMarca" runat="server" Text="Label"></asp:Label>
            </div>
            <div class="h5 mb-3">
                <asp:Label Id="lblDescripcion" runat="server" Text="Label"></asp:Label>
            </div>
            
            <div class="h4 mb-3">
                <span>$ </span>
                <asp:Label Id="lblPrecio" runat="server" Text="Label"></asp:Label>
            </div>
            
            <asp:LinkButton Id="btnFavorito" runat="server" CssClass=" mb-2">
                <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
                    <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143q.09.083.176.171a3 3 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15" />
                </svg>
            </asp:LinkButton>
            <div>
                <small class="text-muted">Haz clic para agregar a favoritos</small>
            </div>
        </div>
        <div class="col-1">
        </div>
    </div>
    <div class="row bg-light"></div>
</asp:Content>
