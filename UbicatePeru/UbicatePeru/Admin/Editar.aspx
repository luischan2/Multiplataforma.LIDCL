<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editar.aspx.cs" Inherits="UbicatePeru.Admin.Editar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Editar Organismos</h1>
            <asp:FormView ID="FormView1" DefaultMode="Edit" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnItemUpdated="FormView1_ItemUpdated">
                <EditItemTemplate>
                    Id:
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel1" /><br />
                    nombre:
                    <asp:TextBox Text='<%# Bind("nombre") %>' runat="server" ID="nombreTextBox" /><br />
                    descripcion:
                    <asp:TextBox TextMode="MultiLine" Columns="50" Text='<%# Bind("descripcion") %>' runat="server" ID="descripcionTextBox" /><br />
                    descripcion:
                    <asp:TextBox Text='<%# Bind("direccion") %>' runat="server" ID="direccionTextBox" /><br />
                    imagen:
                    <asp:TextBox Text='<%# Bind("imagen") %>' runat="server" ID="imagenTextBox" /><br />
                   <asp:LinkButton runat="server" Text="Actualizar" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancelar" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                    &nbsp;
                    <asp:Button runat="server" Text="Cancelar" CommandName="Cancel" ID="UpdateCancelButton1" CausesValidation="False" />
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
