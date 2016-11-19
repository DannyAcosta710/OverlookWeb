<%@ Page Title="" Language="C#" MasterPageFile="~/Overlook.Master" AutoEventWireup="true" CodeBehind="VerNoticiasOverlook.aspx.cs" Inherits="OverlookWeb.VerNoticiasOverlook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="NVO">

        <ItemTemplate>
            Titulo:
            <h1><%# Eval("Titulo") %></h1>
            Imagen:
            <img src="<%# Eval("Imagen") %>"/>
            Descripcion:
            <p><%# Eval("Descripcion") %></p>
            Fecha:
            <h3><%# Eval("Fecha") %></h3>
            Autor:
            <h3><%# Eval("Autor") %></h3>
            Fuente:
            <a href="<%# Eval("Fuente") %>"/>AQUI</a>
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource runat="server" ID="NVO" ConnectionString='<%$ ConnectionStrings:OverlookConnectionStringY %>' SelectCommand="SELECT DISTINCT [Titulo], [Imagen], [Descripcion], [Fecha], [Autor], [Fuente] FROM [Noticia] WHERE ([Imagen] = @Imagen)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="nid" DefaultValue="id" Name="ID_Noticia" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
