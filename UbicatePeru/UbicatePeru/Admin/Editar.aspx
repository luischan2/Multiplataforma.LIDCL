﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editar.aspx.cs" Inherits="UbicatePeru.Admin.Editar" %>

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
                    
                    nombre:
                    <asp:TextBox Text='<%# Bind("Nombre") %>' runat="server" ID="nombreTextBox" /><br /><br />
                    descripcion:
                    <asp:TextBox TextMode="MultiLine" Rows="3" Columns="50" Text='<%# Bind("Descripcion") %>' runat="server" ID="descripcionTextBox" /><br /><br />
                    direccion:
                    <asp:TextBox TextMode="MultiLine" Rows="20" Columns="50" Text='<%# Bind("Direccion") %>' runat="server" ID="direccionTextBox" /><br /><br />
                    <asp:Button runat="server" Text="Actualizar" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;
                    <asp:Button runat="server" Text="Cancelar" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                          
            </asp:FormView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:UbicateConnectionString %>' DeleteCommand="DELETE FROM [Organismos] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Organismos] ([Id], [nombre], [descripcion], [direccion]) VALUES (@Id, @nombre, @descripcion, @direccion)" SelectCommand="SELECT * FROM [Organismos] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Organismos] SET [nombre] = @nombre, [descripcion] = @descripcion, [direccion] = @direccion WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="nombre" Type="String"></asp:Parameter>
                    <asp:Parameter Name="descripcion" Type="String"></asp:Parameter>
                    <asp:Parameter Name="direccion" Type="String"></asp:Parameter>
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter QueryStringField="n" Name="Id" Type="Int32"></asp:QueryStringParameter>
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nombre" Type="String"></asp:Parameter>
                    <asp:Parameter Name="descripcion" Type="String"></asp:Parameter>
                    <asp:Parameter Name="direccion" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>