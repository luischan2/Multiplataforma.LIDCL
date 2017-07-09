<%@ Page Title="" Language="C#" MasterPageFile="~/Pmaestra/Maestro.Master" AutoEventWireup="true" CodeBehind="Otros.aspx.cs" Inherits="UbicatePeru.Pmaestra.Otros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Otros</h1>
    <h2></h2>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <div class="oficina">
                <h2><%#Eval("nombre") %></h2>
                <img height="200" width="200" src="<%#Eval("imagen") %>" />
                <br />
                <p>Numero de Visitas: <%#Eval("visita") %></p>
                <br />
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" 
        ConnectionString='<%$ ConnectionStrings:UbicateConnectionString2 %>' 
        SelectCommand="SELECT [visita], [imagen], [nombre] FROM [Organismos] WHERE ([visita] < @visita)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="n" DefaultValue="10" Name="visita" Type="Decimal"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
