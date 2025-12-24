<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="FormularioArticulo.aspx.cs" Inherits="catalogo_web.FormularioArticulo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function validar() {
            
            const txtCodigo = document.getElementById("txtCodigo");
            const txtNombre = document.getElementById("txtNombre");
            const txtDescripcion = document.getElementById("txtDescripcion");
            const ddlCategoria = document.getElementById("ddlCategoria");
            const ddlMarca = document.getElementById("ddlMarca");
            const txtPrecio = document.getElementById("txtPrecio");
            
            // Limpiar
            txtCodigo.classList.remove("is-invalid");
            txtNombre.classList.remove("is-invalid");
            txtDescripcion.classList.remove("is-invalid");
            ddlCategoria.classList.remove("is-invalid");
            ddlMarca.classList.remove("is-invalid");
            txtPrecio.classList.remove("is-invalid");

            var valido = true;
            
            if (txtCodigo.value == "") {
                txtCodigo.classList.add("is-invalid");
                valido = false;
            }

            if (txtNombre.value == "") {
                txtNombre.classList.add("is-invalid");
                valido = false;
            }

            if (txtDescripcion.value == "") {
                txtDescripcion.classList.add("is-invalid");
                valido = false;
            }

            if (ddlCategoria.value == "") {
                ddlCategoria.classList.add("is-invalid");
                valido = false;
            }
            if (ddlMarca.value == "") {
                ddlMarca.classList.add("is-invalid");
                valido = false;
            }
            if (txtPrecio.value == "") {
                txtPrecio.classList.add("is-invalid");
                valido = false;
            }                        
            
            return valido;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Confirma Eliminar</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p>Estás seguro de Eliminar este item?</p>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="btnEliminar" runat="server" CssClass="btn btn-danger"
                        OnClick="btnEliminar_Click" Text="Eliminar" />
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                </div>
            </div>
        </div>
    </div>

    <div class="row pt-4 bg-body-tertiary">
        <div class="col-md-6 mx-auto">
            <div class="alert alert-danger alert-dismissible fade show" role="alert" runat="server" id="divAlert" visible="false">
                Entrada inválida. Verificá los datos ingresados.
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        </div>
    </div>

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
                            <asp:TextBox ID="txtCodigo" CssClass="form-control" ClientIDMode="Static" MaxLength="50" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label class="col-sm-3 col-form-label text-sm-end">Nombre</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="txtNombre" CssClass="form-control" ClientIDMode="Static" MaxLength="50" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label class="col-sm-3 col-form-label text-sm-end">Descripción</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="txtDescripcion" CssClass="form-control" ClientIDMode="Static" MaxLength="150" TextMode="MultiLine" Rows="3" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label class="col-sm-3 col-form-label text-sm-end">Categoría</label>
                        <div class="col-sm-9">
                            <asp:DropDownList ID="ddlCategoria" CssClass="form-select" ClientIDMode="Static" runat="server" AppendDataBoundItems="true">
                                <asp:ListItem Text="Seleccione" Value="" Selected="True"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label class="col-sm-3 col-form-label text-sm-end">Marca</label>
                        <div class="col-sm-9">
                            <asp:DropDownList ID="ddlMarca" CssClass="form-select" ClientIDMode="Static" runat="server" AppendDataBoundItems="true">
                                <asp:ListItem Text="Seleccione" Value="" Selected="True"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>

                <div class="col-6">
                    <div class="mb-3 row">
                        <label class="col-sm-3 col-form-label text-sm-end">Precio</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="txtPrecio" TextMode="Number" CssClass="form-control" ClientIDMode="Static"
                                runat="server"></asp:TextBox>

                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label class="col-sm-3 col-form-label text-sm-end">ImagenUrl</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="txtImagenUrl" CssClass="form-control" runat="server" OnTextChanged="txtImagenUrl_TextChanged" AutoPostBack="true"></asp:TextBox>
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
                                    OnClientClick="return validar()" OnClick="btnAgregar_Click" Text="Agregar" />
                                <asp:Button ID="btnModificar" runat="server" CssClass="btn btn-primary"
                                    OnClientClick="return validar()" OnClick="btnModificar_Click" Text="Modificar" />
                                <button type="button" id="btnModal" runat="server" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                    Eliminar 
                                </button>
                                <a href="ArticulosLista.aspx" class="btn btn-secondary">Cancelar</a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col"></div>

    </div>
</asp:Content>
