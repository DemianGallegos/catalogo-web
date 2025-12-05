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
                <asp:Label ID="lblNombre" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="lblCodigo" runat="server" Text="Label"></asp:Label>
            </div>
            <div class="h5">
                <asp:Label ID="lblCategoria" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="lblMarca" runat="server" Text="Label"></asp:Label>
            </div>
            <div class="h5 mb-3">
                <asp:Label ID="lblDescripcion" runat="server" Text="Label"></asp:Label>
            </div>

            <div class="h4 mb-3">
                <span>$ </span>
                <asp:Label ID="lblPrecio" runat="server" Text="Label"></asp:Label>
            </div>

            <div class="form-check">
                <asp:CheckBox ID="chkFavorito" OnCheckedChanged="chkFavorito_CheckedChanged" AutoPostBack="true" runat="server" />
                <label class="form-check-label" for="chkFavorito">
                    Favorito
                </label>
            </div>
            
        </div>
        <div class="col-1">
        </div>
    </div>
    <div class="row bg-light"></div>
</asp:Content>
