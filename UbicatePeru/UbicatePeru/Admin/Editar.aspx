<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editar.aspx.cs" Inherits="UbicatePeru.Admin.Editar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Admin-Editar</title>
    <link href="../css/Admin_css.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="Admin_cuerpo">
            <h1>Editar Organismos</h1>
            <asp:FormView ID="FormView1" DefaultMode="Edit" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnItemUpdated="FormView1_ItemUpdated">
                <EditItemTemplate>
                    Id:
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel1" /><br />
                    nombre:<br />
                    <asp:TextBox Text='<%# Bind("nombre") %>' runat="server" ID="nombreTextBox" /><br />
                    descripcion:<br />
                    <asp:TextBox Rows="5" TextMode="MultiLine" Columns="50" Text='<%# Bind("descripcion") %>' runat="server" ID="descripcionTextBox" /><br />
                    descripcion:<br />
                    <asp:TextBox Columns="50" Text='<%# Bind("direccion") %>' runat="server" ID="direccionTextBox" /><br />
                    imagen:<br />
                    <asp:TextBox Text='<%# Bind("imagen") %>' runat="server" ID="imagenTextBox" /><br />
                   <asp:Button runat="server" Text="Actualizar" CommandName="Update" ID="UpdateButton" CausesValidation="True" />
                    &nbsp;
                    <asp:Button runat="server" Text="Cancelar" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
           
                </EditItemTemplate>

            </asp:FormView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:UbicateConnectionString2 %>' DeleteCommand="DELETE FROM [Organismos] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Organismos] ([nombre], [descripcion], [direccion], [imagen], [visita]) VALUES (@nombre, @descripcion, @direccion, @imagen, @visita)" SelectCommand="SELECT * FROM [Organismos] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Organismos] SET [nombre] = @nombre, [descripcion] = @descripcion, [direccion] = @direccion, [imagen] = @imagen, [visita] = @visita WHERE [Id] = @Id">
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
                <SelectParameters>
                    <asp:QueryStringParameter QueryStringField="n" Name="Id" Type="Int32"></asp:QueryStringParameter>
                </SelectParameters>
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
