<%@ Page Title="" Language="C#" MasterPageFile="~/Overlook.Master" AutoEventWireup="true" CodeBehind="ver_noticias.aspx.cs" Inherits="OverlookWeb.VerNoticiasOverlook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #menu #linkN{
            color:red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="NVO">
        <ItemTemplate>
            <aside style="margin:10px 15px; text-align:justify">
                <h1 style="font-size:35.5px;display:block"><%# Eval("Titulo") %></h1>
               <div style="display:block"> 
                   <p style="font-size:23px;word-spacing:3px"><%# Eval("Descripcion") %></p>
                <div style="float:left;display:block;width:800px; margin:0 15px">
                
                <img src="<%# Eval("Imagen") %>"  width="800" />
            </div>
               </div>
                    <h2>Fecha de publicación:</h2>
                <h3><%# Eval("Fecha") %></h3>
                <h2>Autor:</h2>
                <h3><%# Eval("Autor") %></h3>
                <a href="<%# Eval("Fuente") %>" style="font-size:20px"/>Fuente</a>
            </aside>
        </ItemTemplate>
    </asp:DataList>
    <a href="Noticias.aspx" style="text-align:center; font-size:23px">REGRESAR</a>
    <asp:SqlDataSource runat="server" ID="NVO" ConnectionString='<%$ ConnectionStrings:OverlookConnectionString %>' SelectCommand="SELECT * FROM [Noticia] WHERE ([ID_Noticia] = @ID_Noticia)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="id" Name="ID_Noticia" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
