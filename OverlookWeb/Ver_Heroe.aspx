<%@ Page Title="" Language="C#" MasterPageFile="~/Overlook.Master" AutoEventWireup="true" CodeBehind="Ver_Heroe.aspx.cs" Inherits="OverlookWeb.Ver_Heroe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         header{
            background-color: #FCBD49;
            width:auto;
            height:5%;
            margin:0;
            text-align:center;
            font-size:48px;
            padding:0.55%;
            }
         #contenidoHeroe{
            position:absolute;
            margin-left:20px;
        }
        #videoHeroe {
            width: 100%;
            height: 100%;
            display: block;
            float: right;
        }

        #nombreHeroe{
            font-size:45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header class="headMenu">
        Heroes   
    </header>
    <div id="fondoHeroe">
        <video id="videoHeroe" loop src="\Assets\idle-video.webm"   autoplay/>
    </div>
    <div id="contenidoHeroe">
        <h1 id="nombreHeroe">Hanzo</h1>
        <h2>Counters</h2>
        <p>Aqui van los counters xdxdxd</p>
        <h2>Eficaz contra </h2>
        <p>Aqui van los eficazes xdxd</p>
        <h1>Rol <img width="30px" src="http://owinfinity.com/wp-content/themes/overwatch-theme/assets/images/icons/skill-common/flip-defense-large.png" /></h1>
        <p>Defensa</p>
    </div>
</asp:Content>
