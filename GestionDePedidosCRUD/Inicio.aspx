<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="GestionDePedidosCRUD.Inicio" %>

<!DOCTYPE html>

<style>
    * {
        font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif
    }
    .main {
        min-height: 100vh;
    }
    .auto-style1 {
        width: 32px;
    }
    .auto-style2 {
        width: 93px;
    }
    .auto-style3 {
        width: 5px;
    }
    .auto-style4 {
        width: 67px;
    }
    </style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gestion de Pedidos - COVID19</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-kQtW33rZJAHjgefvhyyzcGF3C5TFyBQBA13V1RKPf4uH+bwyzQxZ6CmMZHmNBEfJ" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <ul class="nav nav-tabs nav-fill">
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="Inicio.aspx">Gestion de Pedidos - COVID19</a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" href="#">David Peña Avila</a>
            </li>
        </ul>

        <!-- Inicio OffCanvas Cliente -->
        <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="offcanvasExampleLabel">Registro de Clientes</h5>
                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <div class="row">
                    <div class="col-12 col-lg-12 mb-3">
                        <asp:TextBox ID="txtCedula" runat="server" placeholder="Cedula" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-12 col-lg-6 mb-3">
                        <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-12 col-lg-6 mb-3">
                        <asp:TextBox ID="txtApellido" runat="server" placeholder="Apellido" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-12 col-lg-12 mb-3">
                        <asp:TextBox ID="txtDireccion" runat="server" placeholder="Direccion" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-12 col-lg-6 mb-3">
                        <asp:TextBox ID="txtTelefono" runat="server" placeholder="Telefono" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-12 col-lg-6 mb-3">
                        <asp:TextBox ID="txtCelular" runat="server" placeholder="Celular" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-12 col-lg-12 mb-3">
                        <asp:TextBox ID="txtCorreo" runat="server" placeholder="Correo" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-12 col-lg-6 mb-3">
                        <asp:TextBox ID="txtEdad" runat="server" placeholder="Edad" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-12 col-lg-6 mb-3">
                        <asp:TextBox ID="txtFecha" runat="server" placeholder="Fecha" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-12 col-lg-12 mb-3">
                        <asp:Label ID="lblSexo" runat="server" Text="Escoja su sexo:"></asp:Label>
                        <asp:DropDownList ID="ddlSexo" runat="server" CssClass="form-control">
                            <asp:ListItem Value="">No seleccionado</asp:ListItem>
                            <asp:ListItem Value="M">Masculino</asp:ListItem>
                            <asp:ListItem Value="F">Femenino</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    
                    <div class="col-12 col-lg-12 mb-3">
                        <asp:Label ID="lblMetodoPago" runat="server" Text="Escoga su metodo de pago:"></asp:Label>
                        <asp:DropDownList ID="ddlMetodoPago" runat="server" CssClass="form-control">
                            <asp:ListItem Value="">No seleccionado</asp:ListItem>
                            <asp:ListItem Value="Efectivo">Efectivo</asp:ListItem>
                            <asp:ListItem Value="Tarjeta">Tarjeta debito / Credito</asp:ListItem>
                            <asp:ListItem Value="Paypal">Web / Paypal</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-12 col-lg-12">
                        <asp:Button ID="btnGuardarCliente" runat="server" Text="Guardar Cliente" CssClass="btn btn-primary w-100" OnClick="GuardarCliente"/>
                    </div>
                </div>
            </div>
        </div>

        <!-- Inicio OffCanvas Vendedor -->
        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasExample2" aria-labelledby="offcanvasExampleLabel2">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="offcanvasExampleLabel2">Registro de Vendedores</h5>
                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <div class="row">
                    <div class="col-12 col-lg-12 mb-3">
                        <asp:TextBox ID="txtCedulaVendedor" runat="server" placeholder="Cedula" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-12 col-lg-6 mb-3">
                        <asp:TextBox ID="txtNombreVendedor" runat="server" placeholder="Nombre" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-12 col-lg-6 mb-3">
                        <asp:TextBox ID="txtApellidoVendedor" runat="server" placeholder="Apellido" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-12 col-lg-12 mb-3">
                        <asp:TextBox ID="txtDireccionVendedor" runat="server" placeholder="Direccion" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-12 col-lg-6 mb-3">
                        <asp:TextBox ID="txtTelefonoVendedor" runat="server" placeholder="Telefono" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-12 col-lg-6 mb-3">
                        <asp:TextBox ID="txtCelularVendedor" runat="server" placeholder="Celular" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-12 col-lg-12 mb-3">
                        <asp:TextBox ID="txtCorreoVendedor" runat="server" placeholder="Correo" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-12 col-lg-6 mb-3">
                        <asp:TextBox ID="txtEdadVendedor" runat="server" placeholder="Edad" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-12 col-lg-6 mb-3">
                        <asp:TextBox ID="txtFechaVendedor" runat="server" placeholder="Fecha" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-12 col-lg-12 mb-3">
                        <asp:Label ID="lblSexoVendedor" runat="server" Text="Escoja su sexo:"></asp:Label>
                        <asp:DropDownList ID="ddlSexoVendedor" runat="server" CssClass="form-control">
                            <asp:ListItem Value="">No seleccionado</asp:ListItem>
                            <asp:ListItem Value="M">Masculino</asp:ListItem>
                            <asp:ListItem Value="F">Femenino</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-12 col-lg-12">
                        <asp:Button ID="btnGuardarVendedor" runat="server" Text="Guardar Vendedor" CssClass="btn btn-primary w-100" OnClick="GuardarVendedor" />
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row align-items-center">
                <div class="col-12 col-lg-12 mb-5 text-center mt-5">
                    <asp:Label ID="lblTitle" runat="server" Font-Size="Larger" Text="Gestion de Pedidos" CssClass="text-primary"></asp:Label>
                </div>
                <div class="col-12 col-lg-2">
                    <asp:Label ID="lblSeleccionar" runat="server" Text="Seleccionar vista"></asp:Label>
                </div>
                <div class="col-12 col-lg-4">
                    <asp:DropDownList ID="ddlVista" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlVista_SelectedIndexChanged" CssClass="form-control">
                        <asp:ListItem>Ninguno</asp:ListItem>
                        <asp:ListItem>Registrar Clientes y Vendedores</asp:ListItem>
                        <asp:ListItem Value="Registrar Pedido">Registrar Pedido</asp:ListItem>
                        <asp:ListItem>Consultar</asp:ListItem>
                        <asp:ListItem Value="Facturar">Facturar</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>

        <div class="container shadow-sm mt-5">
            <div class="row align-items-center">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="VistaAgregarClientesVendedores" runat="server">
                        <div class="row mt-5">
                            <div class="col-12 col-lg-6">
                                <button class="btn btn-primary w-100" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">
                                    Registrar cliente
                                </button>
                            </div>
                            <div class="col-12 col-lg-6">
                                <button class="btn btn-primary w-100" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample2" aria-controls="offcanvasExample2">
                                    Registrar vendedor
                                </button>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="VistaRegistrar" runat="server">
                        <div class="row mt-5">
                            <div class="col-12 col-lg-4">
                                <asp:Label ID="lblEscogerCliente" runat="server" Text="Escoger cliente"></asp:Label>
                            </div>
                            <div class="col-12 col-lg-4">
                                <asp:Label ID="lblEscogerVendedor" runat="server" Text="Escoger vendedor"></asp:Label>
                            </div>
                            <div class="col-12 col-lg-4">
                                <asp:Label ID="lblEscogerProducto" runat="server" Text="Escoger Producto"></asp:Label>
                            </div>
                            <div class="col-12 col-lg-4">
                                <asp:DropDownList ID="ddlCliente" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="Nombre" DataValueField="Nombre" CssClass="form-control"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Nombre] FROM [Cliente]"></asp:SqlDataSource>
                            </div>
                            <div class="col-12 col-lg-4">
                                <asp:DropDownList ID="ddlVendedor" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="Nombre" DataValueField="Nombre" CssClass="form-control"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Nombre] FROM [Vendedor]"></asp:SqlDataSource>
                            </div>
                            <div class="col-12 col-lg-4">
                                <asp:DropDownList ID="ddlProducto" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource7" DataTextField="Nombre" DataValueField="Nombre" CssClass="form-control"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Nombre] FROM [Producto]"></asp:SqlDataSource>
                            </div>
                        </div>
                        <div class="row mt-3 mb-5">
                            <div class="col-12 col-lg-4">
                                <asp:Label ID="lblIngresarCantidad" runat="server" Text="Ingrese cantidad"></asp:Label>
                            </div>
                            <div class="col-12 col-lg-2">
                                <asp:Label ID="lblPrecioUnitario" runat="server" Text="Precio Unitario"></asp:Label>
                            </div>
                            <div class="col-12 col-lg-2">
                                <asp:Label ID="lblImpuesto" runat="server" Text="Impuesto"></asp:Label>
                            </div>
                            <div class="col-12 col-lg-4">
                                <asp:Label ID="Label1" runat="server" Text="Estado"></asp:Label>
                            </div>
                            <div class="col-12 col-lg-4">
                                <asp:TextBox ID="txtIngresarCantidad" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-12 col-lg-2">
                                <asp:DropDownList ID="ddlPrecioUnitario" runat="server" DataSourceID="SqlDataSource8" DataTextField="PrecioUnitario" DataValueField="PrecioUnitario" CssClass="form-control"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [PrecioUnitario] FROM [Producto]"></asp:SqlDataSource>
                            </div>
                            <div class="col-12 col-lg-2">
                                <asp:TextBox ID="txtImpuesto" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-12 col-lg-4">
                                <asp:DropDownList ID="ddlEstado" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="Pendiente">Pendiente</asp:ListItem>
                                    <asp:ListItem Value="Pagado">Pagado</asp:ListItem>
                                    <asp:ListItem Value="Procesado">Procesado</asp:ListItem>
                                    <asp:ListItem Value="Enviado">Enviado</asp:ListItem>
                                    <asp:ListItem Value="Entregado">Entregado</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-12 col-lg-4 mt-3">
                                <asp:Button ID="btnRegistrarPedido" runat="server" OnClick="btnRegistrarPedido_Click" Text="Registrar Pedido" CssClass="btn btn-primary"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 col-lg-12">
                                <asp:Label runat="server" Text="Seleccione vendedor para mostrar sus ventas"></asp:Label>
                            </div>
                            <div class="col-12 col-lg-4 mb-3">
                                <asp:DropDownList ID="ddlFiltrar" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="Nombre" DataValueField="Nombre" CssClass="form-control"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <span class="blockquote text-primary">Visualizacion de Pedidos x Vendedor</span>
                            <div class="col-12 col-lg-12">
                                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource4" DataKeyNames="NoPedido">
                                    <AlternatingItemTemplate>
                                        <span style="">NoPedido:
                                        <asp:Label ID="NoPedidoLabel" runat="server" Text='<%# Eval("NoPedido") %>' />
                                        <br />
                                        IDProducto:
                                        <asp:Label ID="IDProductoLabel" runat="server" Text='<%# Eval("IDProducto") %>' />
                                        <br />
                                        Cantidad:
                                        <asp:Label ID="CantidadLabel" runat="server" Text='<%# Eval("Cantidad") %>' />
                                        <br />
                                        PrecioTotal:
                                        <asp:Label ID="PrecioTotalLabel" runat="server" Text='<%# Eval("PrecioTotal") %>' />
                                        <br />
                                        IDCliente:
                                        <asp:Label ID="IDClienteLabel" runat="server" Text='<%# Eval("IDCliente") %>' />
                                        <br />
                                        IDVendedor:
                                        <asp:Label ID="IDVendedorLabel" runat="server" Text='<%# Eval("IDVendedor") %>' />
                                        <br />
                                        Estado:
                                        <asp:Label ID="EstadoLabel" runat="server" Text='<%# Eval("Estado") %>' />
                                        <br />
                                        PrecioUnitario:
                                        <asp:Label ID="PrecioUnitarioLabel" runat="server" Text='<%# Eval("PrecioUnitario") %>' />
                                        <br />
                                        Impuesto:
                                        <asp:Label ID="ImpuestoLabel" runat="server" Text='<%# Eval("Impuesto") %>' />
                                        <br />
                                        <br />
                                        </span>
                                    </AlternatingItemTemplate>
                                    <EditItemTemplate>
                                        <span style="">NoPedido:
                                        <asp:Label ID="NoPedidoLabel1" runat="server" Text='<%# Eval("NoPedido") %>' />
                                        <br />
                                        IDProducto:
                                        <asp:TextBox ID="IDProductoTextBox" runat="server" Text='<%# Bind("IDProducto") %>' />
                                        <br />
                                        Cantidad:
                                        <asp:TextBox ID="CantidadTextBox" runat="server" Text='<%# Bind("Cantidad") %>' />
                                        <br />
                                        PrecioTotal:
                                        <asp:TextBox ID="PrecioTotalTextBox" runat="server" Text='<%# Bind("PrecioTotal") %>' />
                                        <br />
                                        IDCliente:
                                        <asp:TextBox ID="IDClienteTextBox" runat="server" Text='<%# Bind("IDCliente") %>' />
                                        <br />
                                        IDVendedor:
                                        <asp:TextBox ID="IDVendedorTextBox" runat="server" Text='<%# Bind("IDVendedor") %>' />
                                        <br />
                                        Estado:
                                        <asp:TextBox ID="EstadoTextBox" runat="server" Text='<%# Bind("Estado") %>' />
                                        <br />
                                        PrecioUnitario:
                                        <asp:TextBox ID="PrecioUnitarioTextBox" runat="server" Text='<%# Bind("PrecioUnitario") %>' />
                                        <br />
                                        Impuesto:
                                        <asp:TextBox ID="ImpuestoTextBox" runat="server" Text='<%# Bind("Impuesto") %>' />
                                        <br />
                                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                        <br />
                                        <br />
                                        </span>
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        <span>No data was returned.</span>
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        <span style="">NoPedido:
                                        <asp:TextBox ID="NoPedidoTextBox" runat="server" Text='<%# Bind("NoPedido") %>' />
                                        <br />
                                        IDProducto:
                                        <asp:TextBox ID="IDProductoTextBox" runat="server" Text='<%# Bind("IDProducto") %>' />
                                        <br />
                                        Cantidad:
                                        <asp:TextBox ID="CantidadTextBox" runat="server" Text='<%# Bind("Cantidad") %>' />
                                        <br />
                                        PrecioTotal:
                                        <asp:TextBox ID="PrecioTotalTextBox" runat="server" Text='<%# Bind("PrecioTotal") %>' />
                                        <br />
                                        IDCliente:
                                        <asp:TextBox ID="IDClienteTextBox" runat="server" Text='<%# Bind("IDCliente") %>' />
                                        <br />
                                        IDVendedor:
                                        <asp:TextBox ID="IDVendedorTextBox" runat="server" Text='<%# Bind("IDVendedor") %>' />
                                        <br />
                                        Estado:
                                        <asp:TextBox ID="EstadoTextBox" runat="server" Text='<%# Bind("Estado") %>' />
                                        <br />
                                        PrecioUnitario:
                                        <asp:TextBox ID="PrecioUnitarioTextBox" runat="server" Text='<%# Bind("PrecioUnitario") %>' />
                                        <br />
                                        Impuesto:
                                        <asp:TextBox ID="ImpuestoTextBox" runat="server" Text='<%# Bind("Impuesto") %>' />
                                        <br />
                                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                        <br />
                                        <br />
                                        </span>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <span style="">NoPedido:
                                        <asp:Label ID="NoPedidoLabel" runat="server" Text='<%# Eval("NoPedido") %>' />
                                        <br />
                                        IDProducto:
                                        <asp:Label ID="IDProductoLabel" runat="server" Text='<%# Eval("IDProducto") %>' />
                                        <br />
                                        Cantidad:
                                        <asp:Label ID="CantidadLabel" runat="server" Text='<%# Eval("Cantidad") %>' />
                                        <br />
                                        PrecioTotal:
                                        <asp:Label ID="PrecioTotalLabel" runat="server" Text='<%# Eval("PrecioTotal") %>' />
                                        <br />
                                        IDCliente:
                                        <asp:Label ID="IDClienteLabel" runat="server" Text='<%# Eval("IDCliente") %>' />
                                        <br />
                                        IDVendedor:
                                        <asp:Label ID="IDVendedorLabel" runat="server" Text='<%# Eval("IDVendedor") %>' />
                                        <br />
                                        Estado:
                                        <asp:Label ID="EstadoLabel" runat="server" Text='<%# Eval("Estado") %>' />
                                        <br />
                                        PrecioUnitario:
                                        <asp:Label ID="PrecioUnitarioLabel" runat="server" Text='<%# Eval("PrecioUnitario") %>' />
                                        <br />
                                        Impuesto:
                                        <asp:Label ID="ImpuestoLabel" runat="server" Text='<%# Eval("Impuesto") %>' />
                                        <br />
                                        <br />
                                        </span>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <div style="" id="itemPlaceholderContainer" runat="server">
                                            <span runat="server" id="itemPlaceholder" />
                                        </div>
                                        <div style="">
                                        </div>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <span style="">NoPedido:
                                        <asp:Label ID="NoPedidoLabel" runat="server" Text='<%# Eval("NoPedido") %>' />
                                        <br />
                                        IDProducto:
                                        <asp:Label ID="IDProductoLabel" runat="server" Text='<%# Eval("IDProducto") %>' />
                                        <br />
                                        Cantidad:
                                        <asp:Label ID="CantidadLabel" runat="server" Text='<%# Eval("Cantidad") %>' />
                                        <br />
                                        PrecioTotal:
                                        <asp:Label ID="PrecioTotalLabel" runat="server" Text='<%# Eval("PrecioTotal") %>' />
                                        <br />
                                        IDCliente:
                                        <asp:Label ID="IDClienteLabel" runat="server" Text='<%# Eval("IDCliente") %>' />
                                        <br />
                                        IDVendedor:
                                        <asp:Label ID="IDVendedorLabel" runat="server" Text='<%# Eval("IDVendedor") %>' />
                                        <br />
                                        Estado:
                                        <asp:Label ID="EstadoLabel" runat="server" Text='<%# Eval("Estado") %>' />
                                        <br />
                                        PrecioUnitario:
                                        <asp:Label ID="PrecioUnitarioLabel" runat="server" Text='<%# Eval("PrecioUnitario") %>' />
                                        <br />
                                        Impuesto:
                                        <asp:Label ID="ImpuestoLabel" runat="server" Text='<%# Eval("Impuesto") %>' />
                                        <br />
                                        <br />
                                        </span>
                                    </SelectedItemTemplate>
                                </asp:ListView>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Pedido] WHERE ([IDVendedor] = @IDVendedor)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ddlFiltrar" Name="IDVendedor" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="VistaConsultar" runat="server">
                        <div class="row mt-5">
                            <div class="col-12 col-lg-12 mb-5 text-center">
                                <asp:Label ID="lblTituloCliente" runat="server" Text="Visualización de Clientes" CssClass="display-6 text-primary"></asp:Label>
                            </div>
                            <div class="col-12 col-lg-6">
                                <div class="btn-group">
                                    <asp:TextBox ID="txtBuscarCliente" runat="server" placeholder="Buscar nombre, cedula ..." CssClass="form-control"></asp:TextBox>
                                    <asp:Button ID="btnBuscarCliente" runat="server" Text="Buscar" OnClick="btnBuscarCliente_Click" CssClass="btn btn-primary border-0 rounded"/>
                                </div>
                            </div>
                            <div class="col-12 col-lg-12 mt-3 table-responsive">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Cedula" DataSourceID="SqlDataSource1" Height="160px" Width="1372px" CssClass="table table-hover table-striped table-bordered">
                                    <Columns>
                                        <asp:BoundField DataField="Cedula" HeaderText="CEDULA" ReadOnly="True" SortExpression="Cedula" >
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Nombre" HeaderText="NOMBRE" SortExpression="Nombre" >
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Apellido" HeaderText="APELLIDO" SortExpression="Apellido" >
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Direccion" HeaderText="DIRECCION" SortExpression="Direccion" >
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Tel" HeaderText="TELEFONO" SortExpression="Tel" >
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Celular" HeaderText="CELULAR" SortExpression="Celular" >
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Correo" HeaderText="CORREO" SortExpression="Correo" >
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Edad" HeaderText="EDAD" SortExpression="Edad" >
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Sexo" HeaderText="SEXO" SortExpression="Sexo" >
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Fecha" HeaderText="FECHA" SortExpression="Fecha" >
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="FormaPago" HeaderText="F. PAGO" SortExpression="FormaPago" >
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:CommandField ButtonType="Button" HeaderText="ACCIÓN" ShowDeleteButton="True" ShowEditButton="True">
                                        <ControlStyle CssClass="btn btn-danger border-0 rounded" Font-Bold="True" />
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:CommandField>
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Cliente]" DeleteCommand="DELETE FROM [Cliente] WHERE [Cedula] = @Cedula" InsertCommand="INSERT INTO [Cliente] ([Cedula], [Nombre], [Apellido], [Direccion], [Tel], [Celular], [Correo], [Edad], [Sexo], [Fecha], [FormaPago]) VALUES (@Cedula, @Nombre, @Apellido, @Direccion, @Tel, @Celular, @Correo, @Edad, @Sexo, @Fecha, @FormaPago)" UpdateCommand="UPDATE [Cliente] SET [Nombre] = @Nombre, [Apellido] = @Apellido, [Direccion] = @Direccion, [Tel] = @Tel, [Celular] = @Celular, [Correo] = @Correo, [Edad] = @Edad, [Sexo] = @Sexo, [Fecha] = @Fecha, [FormaPago] = @FormaPago WHERE [Cedula] = @Cedula">
                                    <DeleteParameters>
                                        <asp:Parameter Name="Cedula" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:ControlParameter Name="Cedula" Type="String" ControlID="txtCedula"/>
                                        <asp:ControlParameter Name="Nombre" Type="String" ControlID="txtNombre"/>
                                        <asp:ControlParameter Name="Apellido" Type="String" ControlID="txtApellido"/>
                                        <asp:ControlParameter Name="Direccion" Type="String" ControlID="txtDireccion"/>
                                        <asp:ControlParameter Name="Tel" Type="String" ControlID="txtTelefono"/>
                                        <asp:ControlParameter Name="Celular" Type="String" ControlID="txtCelular"/>
                                        <asp:ControlParameter Name="Correo" Type="String" ControlID="txtCorreo"/>
                                        <asp:ControlParameter Name="Edad" Type="String" ControlID="txtEdad"/>
                                        <asp:ControlParameter Name="Sexo" Type="String" ControlID="ddlSexo"/>
                                        <asp:ControlParameter Name="Fecha" Type="String" ControlID="txtFecha"/>
                                        <asp:ControlParameter Name="FormaPago" Type="String" ControlID="ddlMetodoPago"/>
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="Nombre" Type="String" />
                                        <asp:Parameter Name="Apellido" Type="String" />
                                        <asp:Parameter Name="Direccion" Type="String" />
                                        <asp:Parameter Name="Tel" Type="String"/>
                                        <asp:Parameter Name="Celular" Type="String" />
                                        <asp:Parameter Name="Correo" Type="String" />
                                        <asp:Parameter Name="Edad" Type="String" />
                                        <asp:Parameter Name="Sexo" Type="String" />
                                        <asp:Parameter Name="Fecha" Type="String" />
                                        <asp:Parameter Name="FormaPago" Type="String" />
                                        <asp:Parameter Name="Cedula" Type="String" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>   
                        <div class="row mt-5">
                            <div class="col-12 col-lg-12 mb-5 text-center">
                                <asp:Label ID="lblTituloVendedor" runat="server" Text="Visualización de Vendedores" CssClass="display-6 text-primary"></asp:Label>
                            </div>
                            <div class="col-12 col-lg-6">
                                <div class="btn-group">
                                    <asp:TextBox ID="txtBuscarVendedor" runat="server" placeholder="Buscar nombre, cedula ..." CssClass="form-control"></asp:TextBox>
                                    <asp:Button ID="btnBuscarVendedor" runat="server" Text="Buscar" OnClick="btnBuscarVendedor_Click" CssClass="btn btn-primary border-0 rounded"/>
                                </div>
                            </div>  
                            <div class="col-12 col-lg-12 mt-3 table-responsive">
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Cedula" DataSourceID="SqlDataSource2" Height="163px" Width="1369px" CssClass="table table-hover table-striped table-bordered">
                                    <Columns>
                                        <asp:BoundField DataField="Cedula" HeaderText="CEDULA" ReadOnly="True" SortExpression="Cedula" >
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Nombre" HeaderText="NOMBRE" SortExpression="Nombre" >
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Apellido" HeaderText="APELLIDO" SortExpression="Apellido" >
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Direccion" HeaderText="DIRECCION" SortExpression="Direccion" >
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Tel" HeaderText="TELEFONO" SortExpression="Tel" >
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Celular" HeaderText="CELULAR" SortExpression="Celular" >
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Correo" HeaderText="CORREO" SortExpression="Correo" >
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Edad" HeaderText="EDAD" SortExpression="Edad" >
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Sexo" HeaderText="SEXO" SortExpression="Sexo" >
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Fecha" HeaderText="FECHA" SortExpression="Fecha" >
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:CommandField ButtonType="Button" ShowEditButton="True" ShowDeleteButton="True" HeaderText="ACCIÓN" >
                                        <ControlStyle CssClass="btn btn-danger border-0 rounded" Font-Bold="True" />
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" HorizontalAlign="Center" />
                                        </asp:CommandField>
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Vendedor]" DeleteCommand="DELETE FROM [Vendedor] WHERE [Cedula] = @Cedula" InsertCommand="INSERT INTO [Vendedor] ([Cedula], [Nombre], [Apellido], [Direccion], [Tel], [Celular], [Correo], [Edad], [Sexo], [Fecha]) VALUES (@Cedula, @Nombre, @Apellido, @Direccion, @Tel, @Celular, @Correo, @Edad, @Sexo, @Fecha)" UpdateCommand="UPDATE [Vendedor] SET [Nombre] = @Nombre, [Apellido] = @Apellido, [Direccion] = @Direccion, [Tel] = @Tel, [Celular] = @Celular, [Correo] = @Correo, [Edad] = @Edad, [Sexo] = @Sexo, [Fecha] = @Fecha WHERE [Cedula] = @Cedula">
                                    <DeleteParameters>
                                        <asp:Parameter Name="Cedula" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:ControlParameter Name="Cedula" Type="String" ControlID="txtCedulaVendedor"/>
                                        <asp:ControlParameter Name="Nombre" Type="String" ControlID="txtNombreVendedor"/>
                                        <asp:ControlParameter Name="Apellido" Type="String" ControlID="txtApellidoVendedor"/>
                                        <asp:ControlParameter Name="Direccion" Type="String" ControlID="txtDireccionVendedor"/>
                                        <asp:ControlParameter Name="Tel" Type="String" ControlID="txtTelefonoVendedor"/>
                                        <asp:ControlParameter Name="Celular" Type="String" ControlID="txtCelularVendedor"/>
                                        <asp:ControlParameter Name="Correo" Type="String" ControlID="txtCorreoVendedor"/>
                                        <asp:ControlParameter Name="Edad" Type="String" ControlID="txtEdadVendedor"/>
                                        <asp:ControlParameter Name="Sexo" Type="String" ControlID="ddlSexoVendedor"/>
                                        <asp:ControlParameter Name="Fecha" Type="String" ControlID="txtFechaVendedor"/>
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="Nombre" Type="String" />
                                        <asp:Parameter Name="Apellido" Type="String" />
                                        <asp:Parameter Name="Direccion" Type="String" />
                                        <asp:Parameter Name="Tel" Type="String" />
                                        <asp:Parameter Name="Celular" Type="String" />
                                        <asp:Parameter Name="Correo" Type="String" />
                                        <asp:Parameter Name="Edad" Type="String" />
                                        <asp:Parameter Name="Sexo" Type="String" />
                                        <asp:Parameter Name="Fecha" Type="String" />
                                        <asp:Parameter Name="Cedula" Type="String" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                        <div class="row mt-5">
                            <div class="col-12 col-lg-12 mb-5 text-center">
                                <asp:Label ID="lblTituloProducto" runat="server" Text="Visualización de Productos" CssClass="display-6 text-primary"></asp:Label>
                            </div>
                            <div class="col-12 col-lg-6">
                                <div class="btn-group">
                                    <asp:TextBox ID="txtBuscarProducto" runat="server" placeholder="Buscar nombre, codigo ..." CssClass="form-control"></asp:TextBox>
                                    <asp:Button ID="btnBuscarProducto" runat="server" Text="Buscar" OnClick="btnBuscarProducto_Click" CssClass="btn btn-primary border-0 rounded"/>
                                </div>
                            </div>  
                            <div class="col-12 col-lg-12 mt-3 table-responsive">
                                 <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="Codigo" DataSourceID="SqlDataSource3" Height="133px" Width="1374px" CssClass="table table-hover table-striped table-bordered">
                                    <Columns>
                                        <asp:BoundField DataField="Codigo" HeaderText="CÓDIGO" ReadOnly="True" SortExpression="Codigo" >
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Nombre" HeaderText="NOMBRE" SortExpression="Nombre" >
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Cantidad" HeaderText="CANTIDAD" SortExpression="Cantidad" >
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="PrecioUnitario" HeaderText="PRECIO UNITARIO" SortExpression="PrecioUnitario" >
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:CommandField ButtonType="Button" HeaderText="ACCIÓN" ShowDeleteButton="True" ShowEditButton="True">
                                        <ControlStyle CssClass="btn btn-danger border-0 rounded" Font-Bold="True" />
                                        <HeaderStyle CssClass="text-primary" Font-Bold="True" />
                                        </asp:CommandField>
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Producto]" DeleteCommand="DELETE FROM [Producto] WHERE [Codigo] = @Codigo" InsertCommand="INSERT INTO [Producto] ([Codigo], [Nombre], [Cantidad], [PrecioUnitario]) VALUES (@Codigo, @Nombre, @Cantidad, @PrecioUnitario)" UpdateCommand="UPDATE [Producto] SET [Nombre] = @Nombre, [Cantidad] = @Cantidad, [PrecioUnitario] = @PrecioUnitario WHERE [Codigo] = @Codigo">
                                    <DeleteParameters>
                                        <asp:Parameter Name="Codigo" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="Codigo" Type="Int32" />
                                        <asp:Parameter Name="Nombre" Type="String" />
                                        <asp:Parameter Name="Cantidad" Type="String" />
                                        <asp:Parameter Name="PrecioUnitario" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="Nombre" Type="String" />
                                        <asp:Parameter Name="Cantidad" Type="String" />
                                        <asp:Parameter Name="PrecioUnitario" Type="String" />
                                        <asp:Parameter Name="Codigo" Type="Int32" />
                                    </UpdateParameters>
                                 </asp:SqlDataSource>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="VistaFacturar" runat="server">
                        <div class="row mb-3">
                            <div class="col-12 col-lg-12">
                                <span class="blockquote text-primary">Visualizacion de Factura x Estado</span>
                            </div>
                            <div class="col-12 col-lg-12">
                                <span class="blockquote-footer">Por favor, seleccione un estado para mostrar todas las facturas que se encuentren en el estado seleccionado</span>
                            </div>
                            <div class="col-12 col-lg-6 mt-3">
                                <div class="btn-group">
                                    <asp:DropDownList ID="ddlFiltrarEstado" runat="server" CssClass="form-control">
                                        <asp:ListItem>Pendiente</asp:ListItem>
                                        <asp:ListItem>Pagado</asp:ListItem>
                                        <asp:ListItem>Procesado</asp:ListItem>
                                        <asp:ListItem>Enviado</asp:ListItem>
                                        <asp:ListItem>Entregado</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Button ID="btnFiltrarFacturaXEstado" runat="server" OnClick="btnFiltrarFacturaXEstado_Click" Text="Filtrar" CssClass="btn btn-primary" />
                                </div> 
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 col-lg-12">
                                <asp:DataList ID="DataList1" runat="server" BorderColor="Black" BorderWidth="0px" CellSpacing="10" Font-Bold="False" Font-Italic="False" Font-Names="Berlin Sans FB" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" GridLines="Horizontal" OnItemCommand="DataList1_ItemCommand">
                                    <AlternatingItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" />
                                    <EditItemTemplate>
                                        <table class="w-100">
                                            <tr>
                                                <td class="auto-style2">No Pedido</td>
                                                <td class="auto-style4">&nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("NoPedido") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">ID Producto</td>
                                                <td class="auto-style4">&nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("IDProducto") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">Cantidad</td>
                                                <td class="auto-style4">&nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Cantidad") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">Precio Total</td>
                                                <td class="auto-style4">&nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("PrecioTotal") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">ID Cliente</td>
                                                <td class="auto-style4">&nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("IDCliente") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">ID Vendedor</td>
                                                <td class="auto-style4">&nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("IDVendedor") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">Estado</td>
                                                <td class="auto-style4">&nbsp;</td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Eval("Estado") %>'>
                                                        <asp:ListItem>Pendiente</asp:ListItem>
                                                        <asp:ListItem>Pagado</asp:ListItem>
                                                        <asp:ListItem>Procesado</asp:ListItem>
                                                        <asp:ListItem>Enviado</asp:ListItem>
                                                        <asp:ListItem>Entregado</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">Precio Unitario</td>
                                                <td class="auto-style4">&nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("PrecioUnitario") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">Impuesto</td>
                                                <td class="auto-style4">&nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("Impuesto") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">&nbsp;</td>
                                                <td class="auto-style4">&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">
                                                    <asp:Button ID="Button4" runat="server" CommandName="update" Text="Actualizar" CssClass="bg-danger border-0 rounded text-white" />
                                                </td>
                                                <td class="auto-style4">&nbsp;</td>
                                                <td>
                                                    <asp:Button ID="Button5" runat="server" CommandName="cancel" Text="Cancelar" CssClass="bg-danger border-0 rounded text-white" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">&nbsp;</td>
                                                <td class="auto-style4">&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                    </EditItemTemplate>
                                    <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Green" />
                                    <ItemStyle Font-Bold="False" Font-Italic="False" Font-Names="Berlin Sans FB" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" />
                                    <ItemTemplate>
                                        <table class="w-100">
                                            <tr>
                                                <td class="auto-style2">No Pedido</td>
                                                <td class="auto-style1">&nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("NoPedido") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">ID Producto</td>
                                                <td class="auto-style1">&nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("IDProducto") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">Cantidad</td>
                                                <td class="auto-style1">&nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Cantidad") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">Precio Total</td>
                                                <td class="auto-style1">&nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("PrecioTotal") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">ID Cliente</td>
                                                <td class="auto-style1">&nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("IDCliente") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">ID Vendedor</td>
                                                <td class="auto-style1">&nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("IDVendedor") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">Estado</td>
                                                <td class="auto-style1">&nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("Estado") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">Precio Unitario</td>
                                                <td class="auto-style1">&nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("PrecioUnitario") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">Impuesto</td>
                                                <td class="auto-style1">&nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("Impuesto") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">&nbsp;</td>
                                                <td class="auto-style1">&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">
                                                    <asp:Button ID="Button4" runat="server" CommandName="edit" Text="Editar" CssClass="bg-danger border-0 rounded text-white"/>
                                                </td>
                                                <td class="auto-style1">&nbsp;</td>
                                                <td>
                                                    <asp:Button ID="Button5" runat="server" CommandName="delete" Text="Eliminar" CssClass="bg-danger border-0 rounded text-white"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">&nbsp;</td>
                                                <td class="auto-style1">&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:DataList>
                            </div>
                        </div>
                    </asp:View>
                </asp:MultiView>
            </div>
        </div>
    </form>
</body>
</html>
