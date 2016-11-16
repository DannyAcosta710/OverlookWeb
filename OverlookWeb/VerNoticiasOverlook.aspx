<%@ Page Title="" Language="C#" MasterPageFile="~/Overlook.Master" AutoEventWireup="true" CodeBehind="VerNoticiasOverlook.aspx.cs" Inherits="OverlookWeb.VerNoticiasOverlook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="OverlookVN">

        <ItemTemplate>
            Titulo:
            <h1><%# Eval("Titulo") %></h1>
            Sinopsis:
            <p><%# Eval("Sinopsis") %></p>
            Imagen:
            <img src="<%# Eval("Imagen") %>" />
            Descripcion:
            <p><%# Eval("Descripcion") %></p>
            Fecha:
            <h3><%# Eval("Fecha") %></h3>
            Autor:
            <h3><%# Eval("Autor") %></h3>
            Fuente:
            <h3><%# Eval("Fuente") %></h3>
       
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource runat="server" ID="OverlookVN" ConnectionString='<%$ ConnectionStrings:OverlookConnectionString %>' SelectCommand="SELECT [Titulo], [Sinopsis], [Imagen], [Descripcion], [Fecha], [Autor], [Fuente] FROM [Noticia] WHERE ([Imagen] = @Imagen)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="nid" DefaultValue="id" Name="Imagen" Type="String"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
