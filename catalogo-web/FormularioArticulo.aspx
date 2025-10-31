<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="FormularioArticulo.aspx.cs" Inherits="catalogo_web.FormularioArticulo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!--  OCULTAR EL iD QUE TRAE EN HTTP, PAR CUMPLIR CON REQ DE SEGURIDAD-->
    <!--  DropDownList de Marca y Categoria; precargas                    -->



    <!-- EL PROBLEMA DEL SOLAPAMIENTIO DE BOTÓN ELIMINAR LO RESOLVÍ EN EL ARCHIVO Borrador1 -->
    <!-- UTLIZAR LOS ContenTemplate PARA LA CARGA DE IMAGEN                                 --> 


    <div class="row pt-4 bg-body-tertiary">
        <div class="col"></div>
        <div class="col-8">
            <div class="row">
                <!-- Izquierda: campos + botones -->
                <div class="col-6">

                    <div class="mb-3 row">
                        <label class="col-sm-3 col-form-label text-sm-end">Id</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="txtId" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label class="col-sm-3 col-form-label text-sm-end">Código</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="txtCodigo" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label class="col-sm-3 col-form-label text-sm-end">Nombre</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label class="col-sm-3 col-form-label text-sm-end">Descripción</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="txtDescripcion" CssClass="form-control" TextMode="MultiLine" Rows="3" runat="server"></asp:TextBox>
                        </div>
                    </div>
                      <div class="mb-3 row">
                        <label class="col-sm-3 col-form-label text-sm-end">Categoría</label>
                        <div class="col-sm-9">
                            <asp:DropDownList ID="ddlCategoria" CssClass="form-select" runat="server"></asp:DropDownList>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <label class="col-sm-3 col-form-label text-sm-end">Marca</label>
                        <div class="col-sm-9">
                            <asp:DropDownList ID="ddlMarca" CssClass="form-select" runat="server"></asp:DropDownList>
                        </div>
                    </div>

                </div>

                <div class="col-6">
                    <div class="mb-3 row">
                        <label class="col-sm-3 col-form-label text-sm-end">Precio</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="txtPrecio" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label class="col-sm-3 col-form-label text-sm-end">ImagenUrl</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="txtImagenUrl" CssClass="form-control" runat="server" OnTextChanged="txtImagenUrl_TextChanged"></asp:TextBox>
                            <asp:Image
                                ID="ImgArticulo"
                                runat="server" CssClass="mt-3"
                                ImageUrl="https://grupoact.com.ar/wp-content/uploads/2020/04/placeholder.png"
                                Width="100%" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col"></div>
        </div>
        <div class="row pt-4 bg-body-tertiary">
            <div class="col"></div>
            <div class="col-8">
                <div class="row">
                    <div class="col-6">
                        <div class="row mb-3">
                            <div class="col-sm-9 offset-sm-3">
                                <div class="d-flex gap-2">
                                    <asp:Button ID="btnAgregar" runat="server" CssClass="btn btn-primary"
                                        OnClick="btnAgregar_Click" Text="Agregar" />
                                    <asp:Button ID="btnModificar" runat="server" CssClass="btn btn-warning"
                                        OnClick="btnModificar_Click" Text="Modificar" />
                                    <asp:Button ID="btnEliminar" runat="server" CssClass="btn btn-danger" 
                                        OnClick="btnEliminar_Click" Text="Eliminar" />
                                    <a href="ArticulosLista.aspx" Class="btn btn-secondary">Cancelar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col"></div>

        </div>
    




</asp:Content>
