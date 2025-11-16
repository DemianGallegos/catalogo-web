<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="LoginIngreso.aspx.cs" Inherits="catalogo_web.LoginIngreso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="refresh" content="3; url=Default.aspx" />
    <!-- Redirige en 3 segundos -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Esto debería estar centrado en el medio de la pantalla, buscar en bootstrap la forma de-->

    <div class="spinner-border text-primary mt-2 mb-2" style="width: 2rem; height: 2rem;" role="status">
        <span class="visually-hidden">Loading...</span>
    </div>
    <h4>Hola. Te logueaste correctamente.</h4>
    <p>Serás redirigido automáticamente a Home.aspx...</p>
    
    

</asp:Content>
