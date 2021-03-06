﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Pmaestra/Maestro.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UbicatePeru.Pmaestra.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Oficinas Mas Buscadas</h1>
    <h2>Aqui usted puede observar todala informacion de las oficinas gubernamentales mas buscadas</h2>
       
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <div class="oficina">
                <h2><%#Eval("nombre") %></h2>
                <img height="200" width="200" src="<%#Eval("imagen") %>"/>
                <br />
                <p>Numero de Visitas: <%#Eval("visita") %></p>
                <br />
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1"
        ConnectionString='<%$ ConnectionStrings:UbicateConnectionString2 %>'
        SelectCommand="SELECT [nombre], [imagen], [visita] FROM [Organismos] ORDER BY [visita] DESC">

    </asp:SqlDataSource>
</asp:Content>
