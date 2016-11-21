<%@ Page Title="" Language="C#" MasterPageFile="~/Overlook.Master" AutoEventWireup="true" CodeBehind="Noticias.aspx.cs" Inherits="OverlookWeb.NoticiasOverlook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #noticia{
            text-align:center;
            margin:20px;
            height:300px;
            padding-right:11px;
            display:block;
            box-shadow: 3px 3px 5px #000000 ;

        }
        #contenedor{
            margin:0;
        }
        .image{
            width:360px;
            height:244px;
            float:left;
            margin-right:15px;
        }
        .image:hover{
            -webkit-transform: scale(1.1);
            -moz-transform: scale(1.1);
            -o-transform: scale(1.1);
            -ms-transform: scale(1.1);
            transform: scale(1.1);
            margin-right:20px;
            padding-right:10px;
        }
        #noticia h1{
            font-size:28px;
            text-align:center;
        }
        #noticia p{
            font-size:21px;
            text-align:justify;
        }
        #noticia h3{
            font-size:22px;
            text-align:justify;
        }
        table{
            width:80%;
        }
        td{
            padding:10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <header class="headMenu">
            Noticias
        </header>
<div id="contenedor">
        
    <asp:DataList RepeatColumns="1" ID="DataList1" runat="server" DataSourceID="NVO">
        <ItemTemplate>
            <img class="image" src="<%# Eval("Imagen") %>"/>
                <h1><a href="ver_noticias.aspx?id=<%# Eval("ID_Noticia") %>" /><%# Eval("Titulo") %></a></h1>
                <p><%# Eval("Sinopsis") %></p>
                <h3>Fecha: <%# Eval("Fecha") %></h3> 
                <h3>Autor: <%# Eval("Autor") %></h3>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource runat="server" ID="NVO" ConnectionString='<%$ ConnectionStrings:OverlookConnectionString %>' SelectCommand="SELECT [ID_Noticia], [Titulo], [Sinopsis], [Imagen], [Fecha], [Autor] FROM [Noticia] ORDER BY [Fecha] DESC"></asp:SqlDataSource>
</div>
</asp:Content>
