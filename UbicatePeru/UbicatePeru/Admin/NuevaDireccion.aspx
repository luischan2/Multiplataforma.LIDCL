<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NuevaDireccion.aspx.cs" Inherits="UbicatePeru.Admin.NuevaDireccion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Nuevo Organismo</h1>
            <asp:FormView ID="FormView1" DefaultMode="Insert" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id" OnItemInserted="FormView1_ItemInserted">

                <InsertItemTemplate>
                    nombre:
                    <asp:TextBox Text='<%# Bind("nombre") %>' runat="server" ID="nombreTextBox" /><br />
                    descripcion:
                    <asp:TextBox Text='<%# Bind("descripcion") %>' runat="server" ID="descripcionTextBox" /><br />
                    direccion:
                    <asp:TextBox Text='<%# Bind("direccion") %>' runat="server" ID="direccionTextBox" /><br />
                    imagen:
                    <asp:TextBox Text='<%# Bind("imagen") %>' runat="server" ID="imagenTextBox" /><br />
                    visita:
                    <asp:TextBox Text='<%# Bind("visita") %>' runat="server" ID="visitaTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Insertar" CommandName="Insert" ID="InsertButton" CausesValidation="True" />
                    &nbsp;
                    <asp:LinkButton runat="server" Text="Cancelar" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>

            </asp:FormView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:UbicateConnectionString2 %>'
                SelectCommand="SELECT * FROM [Organismos]" DeleteCommand="DELETE FROM [Organismos] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Organismos] ([nombre], [descripcion], [direccion], [imagen], [visita]) VALUES (@nombre, @descripcion, @direccion, @imagen, @visita)" UpdateCommand="UPDATE [Organismos] SET [nombre] = @nombre, [descripcion] = @descripcion, [direccion] = @direccion, [imagen] = @imagen, [visita] = @visita WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nombre" Type="String"></asp:Parameter>
                    <asp:Parameter Name="descripcion" Type="String"></asp:Parameter>
                    <asp:Parameter Name="direccion" Type="String"></asp:Parameter>
                    <asp:Parameter Name="imagen" Type="String"></asp:Parameter>
                    <asp:Parameter Name="visita" Type="Decimal"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nombre" Type="String"></asp:Parameter>
                    <asp:Parameter Name="descripcion" Type="String"></asp:Parameter>
                    <asp:Parameter Name="direccion" Type="String"></asp:Parameter>
                    <asp:Parameter Name="imagen" Type="String"></asp:Parameter>
                    <asp:Parameter Name="visita" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
