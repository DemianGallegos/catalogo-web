<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="catalogo_web.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function limpiarFiltros() {
            document.querySelectorAll("input[type=radio]").forEach(r => r.checked = false);
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- AGREGAR UN BOTÓN PARA BUSCAR EN FILTRO RÁPIDO Y UNO DE CLEAR O BORRAR !!!!!!!!!!!!!!!!!-->

    <!--  VA LA DESCRIPCIÓN EN LAS TARJETAS O NO ?-->


    <div class="bg-body-tertiary">
        <div class="row pt-2 pb-2">
            <div class="col-3"></div>
            <div class="col-6">
                <h4 class="mb-4 mt-2">Explorá nuestro catálogo de artículos</h4>
                <div class="row">
                    <div class="col-md-10 mb-2">
                        <div class="input-group">
                            <div class="input-group">

                                <asp:TextBox ID="txtFiltro" CssClass="form-control" AutoPostBack="true" OnTextChanged="txtFiltro_TextChanged" placeholder="Buscar..." runat="server"></asp:TextBox>
                                <span class="input-group-text">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0" />
                                    </svg>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-3"></div>
        </div>

        <div class="row pb-3">
            <div class="col-3 "></div>
            <div class="col-6">
            </div>
        </div>
    </div>


    <div class="row pt-2 bg-body-secondary">
        <div class="col-3">
            <div class="row">
                <div class="col-1"></div>
                <div class="col-11">
                    <div class="card">
                        <div class="card-header">
                            Categoría
                        </div>
                        <div class="card-body">
                            <div class="form-check">
                                <input class="form-check-input" runat="server" type="radio" name="Grupo1"
                                    id="rdbCelulares">
                                <label class="form-check-label" for="rdbCelulares">Celulares</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" runat="server" type="radio" name="Grupo1"
                                    id="rdbTelevisores">
                                <label class="form-check-label" for="rdbTelevisores">Televisores</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" runat="server" type="radio" name="Grupo1"
                                    id="rdbMedia">
                                <label class="form-check-label" for="rdbMedia">Media</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" runat="server" type="radio" name="Grupo1"
                                    id="rdbAudio">
                                <label class="form-check-label" for="rdbAudio">Audio</label>
                            </div>
                        </div>
                        <div class="card-header">
                            Marca
                        </div>
                        <div class="card-body">
                            <div class="form-check">
                                <input class="form-check-input" runat="server" type="radio" name="Grupo2"
                                    id="rdbSamsung">
                                <label class="form-check-label" for="rdbSamsung">Samsung</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" runat="server" type="radio" name="Grupo2"
                                    id="rdbApple">
                                <label class="form-check-label" for="rdbApple">Apple</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" runat="server" type="radio" name="Grupo2"
                                    id="rdbSony">
                                <label class="form-check-label" for="rdbSony">Sony</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" runat="server" type="radio" name="Grupo2"
                                    id="rdbHuawei">
                                <label class="form-check-label" for="rdbHuawei">Huawei</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" runat="server" type="radio" name="Grupo2"
                                    id="rdbMotorola">
                                <label class="form-check-label" for="rdbMotorola">Motorola</label>
                            </div>
                        </div>
                        <div class="card-footer ">
                            <div class="row mt-3 mb-2">
                                <div class="col-9">
                                    <asp:Button ID="btnAplicar" runat="server" CssClass="btn btn-outline-primary" Text="Aplicar"
                                        OnClick="btnAplicar_Click" />
                                </div>
                                <div class="col-3 align-self-md-center">
                                    <asp:Button ID="btnDelFiltro" CssClass="btn-close" runat="server"
                                        aria-label="Close" OnClick="btnDelFiltro_Click" OnClientClick="limpiarFiltros()" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col">
            </div>
        </div>
        <div class="col-8">
            <div class="row row-cols-1 row-cols-md-3 g-2">
                <!-- Aca empieza el Foeach -->


                <%
                    foreach (dominio.Articulo articulo in ArticulosLista)
                    {
                %>
                <div class="col">
                    <div class="card h-100 w-100">
                        <div style="height: 175px; overflow: hidden;">
                            <img src="<%:articulo.ImagenUrl%>" class="card-img-top h-100 w-100" style="object-fit: contain;" alt="">
                        </div>

                        <div class="card-body">
                            <h5 class="card-title"><%:articulo.Nombre %></h5>
                            <!--<p class="card-text"><%:articulo.Descripcion %></p>-->
                            <a href ="DetalleArticulo.aspx?id=<%:articulo.Id %>">Ver detalle</a>
                        </div>
                    </div>
                </div>


                <%
                    }
                %>
            </div>
        </div>
        <div class="col-1">
        </div>
    </div>

</asp:Content>
