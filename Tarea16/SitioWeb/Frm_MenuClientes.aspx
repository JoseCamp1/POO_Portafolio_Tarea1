﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Frm_MenuClientes.aspx.cs" Inherits="SitioWeb.Frm_MenuClientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Menu Clientes</title>

    <style>

        h1{
            text-align:center
        }

        #gridview{
            margin: 10px auto;
            width: 100%;
        }

        #form1{
            margin: 10px auto;
            width: 70%;
        }

    </style>

</head>
<body>

    <header>
        <h1>Menu Clientes</h1>
    </header>

    <form id="form1" runat="server">

        <div>            
            <asp:Label ID="Label2" runat="server" Text="Nombre del Cliente:"></asp:Label>
            &nbsp;<asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnAgregar" runat="server" Text="Agregar Nuevo" OnClick="btnAgregar_Click" />
            <br />            
        </div>

        <div class="gridview">
            <asp:GridView ID="grdClientes" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" EmptyDataText="No existen registros para mostrar" ForeColor="Black" GridLines="Horizontal" Width="80%" OnPageIndexChanging="grdClientes_PageIndexChanging" PageSize="5">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="InkModificar" runat="server" CommandArgument='<%# Eval("ID_CLIENTE").ToString() %>' CommandName="Modificar">Modificar</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="InkEliminar" runat="server" CommandArgument='<%# Eval("ID_CLIENTE").ToString() %>' CommandName="Eliminar" OnCommand="InkEliminar_Command">Eliminar</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ID_CLIENTE" HeaderText="ID Cliente" />
                    <asp:BoundField DataField="NOMBRE" HeaderText="Nombre" />
                    <asp:BoundField DataField="TELEFONO" HeaderText="Telefono" />
                    <asp:BoundField DataField="DIRECCION" HeaderText="Direccion" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
        </div>

        <div class="botones">
            <asp:Button ID="btnRegresar" runat="server" Text="Regresar" OnClick="btnRegresar_Click" />            
        </div>        
        
    </form>

</body>
</html>
