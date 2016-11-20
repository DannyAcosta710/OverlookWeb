<%@ Page Title="" Language="C#" MasterPageFile="~/Overlook.Master" AutoEventWireup="true" CodeBehind="ver_noticias.aspx.cs" Inherits="OverlookWeb.VerNoticiasOverlook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header class="headMenu">NOTICIAS</header>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="NVO">
        <ItemTemplate>
            <div style="float:right; text-align:center; margin:10px; margin-top:40px;">
                
                <img src="<%# Eval("Imagen") %>" width="600"/>
            </div>
            <aside style="margin:10px; text-align:justify;">
                <h1><%# Eval("Titulo") %></h1>
                <p><%# Eval("Descripcion") %></p>
                <h2>Fecha de publicación:</h2>
                <h3><%# Eval("Fecha") %></h3>
                <h2>Autor:</h2>
                <h3><%# Eval("Autor") %></h3>
                <a href="<%# Eval("Fuente") %>"/>Fuente</a>
            </aside>
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource runat="server" ID="NVO" ConnectionString='<%$ ConnectionStrings:OverlookConnectionString %>' SelectCommand="SELECT * FROM [Noticia] WHERE ([ID_Noticia] = @ID_Noticia)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="id" Name="ID_Noticia" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
