<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UbicatePeru.Admin.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Admin-Ubicate</title>
    <link href="../css/Admin_css.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="Admin_cuerpo">
            <h1>Administracion de Pagina</h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id"  DataSourceID="SqlDataSource1">
                <Columns>
                    
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False"></asp:BoundField>
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre"></asp:BoundField>
                    <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion"></asp:BoundField>            
                    <asp:BoundField DataField="visita" HeaderText="visita" SortExpression="visita"></asp:BoundField>

                    <asp:TemplateField>
                        <ItemTemplate>
                            <a href="Editar.aspx?n=<%#Eval("Id") %>">Editar</a>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowDeleteButton="true"></asp:CommandField>
                </Columns>
            </asp:GridView>
            <br />
            <a  href="NuevaDireccion.aspx">Nuevo Organismo</a>
            <br />
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:UbicateConnectionString2 %>' SelectCommand="SELECT * FROM [Organismos]" DeleteCommand="DELETE FROM [Organismos] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Organismos] ([nombre], [descripcion], [direccion], [imagen], [visita]) VALUES (@nombre, @descripcion, @direccion, @imagen, @visita)" UpdateCommand="UPDATE [Organismos] SET [nombre] = @nombre, [descripcion] = @descripcion, [direccion] = @direccion, [imagen] = @imagen, [visita] = @visita WHERE [Id] = @Id">
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
