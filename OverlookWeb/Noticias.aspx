<%@ Page Title="" Language="C#" MasterPageFile="~/Overlook.Master" AutoEventWireup="true" CodeBehind="Noticias.aspx.cs" Inherits="OverlookWeb.NoticiasOverlook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #noticia{
            text-align:center;
            margin:20px 25px;
            height:270px;
            padding-right:11px;
            padding-top:20px;
            display:block;
        }
        #noticia:hover{
            border-bottom:5px solid #000000;
            background-color:rgb(187, 183, 183);
        }
        #cph{
            background-image: url("/Assets/asanoha-400px.png");
        }
        #contenedor{
            margin:0;
        }
        .image{
            width:370px;
            height:230px;
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
            font-size:30px;
            text-align:center;
            margin-top:0;
        }
        
        #noticia p{
            font-size:23px;
            text-align:justify;
        }
        #noticia h3{
            font-size:21px;
            text-align:justify;
            margin:0px;
        }
        table{
            width:80%;
        }
        td{
            padding:10px;
        }
    </style>
    <link rel="stylesheet" href="estilos.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <header class="headMenu">
            Noticias
        </header>

<div id="contenedor">
      
    <h1 id="T">LO MAS RECIENTE </h1>
    <div class="main">
        <div class="slides">
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="noticiasTop">
              <ItemTemplate>
                  <div id="cont">
                  <a style="text-decoration:none" href="ver_noticias.aspx?id=<%# Eval("ID_Noticia") %>" /><img src="<%#Eval("Imagen") %>" alt="" /></a>
                   <div id="l">
                       <h1><%#Eval("Titulo") %></h1>
                      <p><%#Eval("Sinopsis") %></p>
                      <h3>Fecha: <%#Eval("Fecha") %></h3>
                       </div>
                  </div>
              </ItemTemplate>
               </asp:Repeater>
            <asp:SqlDataSource runat="server" ID="noticiasTop" ConnectionString='<%$ ConnectionStrings:OverlookConnectionString %>' SelectCommand="SELECT TOP (5) [ID_Noticia], [Titulo], [Sinopsis], [Imagen], [Fecha], [Autor] FROM [Noticia] ORDER BY [Fecha] DESC"></asp:SqlDataSource>
        </div>
	</div>
        <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
        <script src="jquery.slides.js"></script>
        <script>
 
	$(function(){
  $(".slides").slidesjs({
    play: {
      active: true,
        // [boolean] Generate the play and stop buttons.
        // You cannot use your own buttons. Sorry.
      effect: "slide",
        // [string] Can be either "slide" or "fade".
      interval: 3000,
        // [number] Time spent on each slide in milliseconds.
      auto: true,
        // [boolean] Start playing the slideshow on load.
      swap: true,
        // [boolean] show/hide stop and play buttons
      pauseOnHover: false,
        // [boolean] pause a playing slideshow on hover
      restartDelay: 2500
        // [number] restart delay on inactive slideshow
    }
  });
});
 
	</script>
     <h1 id="T2">+NOTICIAS</h1>
    <asp:DataList RepeatColumns="1" ID="DataList1" runat="server" DataSourceID="NVO">
        <ItemTemplate>
            <section id="noticia">
            <img class="image" src="<%# Eval("Imagen") %>"/>
                <h1><a href="ver_noticias.aspx?id=<%# Eval("ID_Noticia") %>" /><%# Eval("Titulo") %></a></h1>
                <p><%# Eval("Sinopsis") %></p>
                <h3>Fecha: <%# Eval("Fecha") %></h3> 
                <h3>Autor: <%# Eval("Autor") %></h3>
                </section>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource runat="server" ID="NVO" ConnectionString='<%$ ConnectionStrings:OverlookConnectionString %>' SelectCommand="SELECT [ID_Noticia], [Titulo], [Sinopsis], [Imagen], [Fecha], [Autor] FROM [Noticia] ORDER BY [Fecha] DESC"></asp:SqlDataSource>
</div>
</asp:Content>
