<%@ Page Title="" Language="C#" MasterPageFile="~/Pmaestra/Maestro.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UbicatePeru.Pmaestra.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Oficinas Mas Buscadas</h1>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div class="oficina">


            </div>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
