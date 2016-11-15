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
        <video id="videoHeroe" loop src="<%#Eval("Video") %>"   autoplay/>
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

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID_Heroe" DataSourceID="SqlDataSource1">
        
        <ItemTemplate>
            ID_Heroe:
            <asp:Label Text='<%# Eval("ID_Heroe") %>' runat="server" ID="ID_HeroeLabel" /><br />
            Nombre:
            <asp:Label Text='<%# Bind("Nombre") %>' runat="server" ID="NombreLabel" /><br />
            Rol:
            <asp:Label Text='<%# Bind("Rol") %>' runat="server" ID="RolLabel" /><br />
            Imagen:
            <asp:Label Text='<%# Bind("Imagen") %>' runat="server" ID="ImagenLabel" /><br />
            Descripcion:
            <asp:Label Text='<%# Bind("Descripcion") %>' runat="server" ID="DescripcionLabel" /><br />
            ID_MapasPro:
            <asp:Label Text='<%# Bind("ID_MapasPro") %>' runat="server" ID="ID_MapasProLabel" /><br />
            ID_HabilidadHeroe:
            <asp:Label Text='<%# Bind("ID_HabilidadHeroe") %>' runat="server" ID="ID_HabilidadHeroeLabel" /><br />
            ID_EstrategiaHeroe:
            <asp:Label Text='<%# Bind("ID_EstrategiaHeroe") %>' runat="server" ID="ID_EstrategiaHeroeLabel" /><br />
            Video:
            <asp:Label Text='<%# Bind("Video") %>' runat="server" ID="VideoLabel" /><br />

        </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:OverlookConnectionString %>' SelectCommand="SELECT * FROM [Heroe] WHERE ([ID_Heroe] = @ID_Heroe)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="id" Name="ID_Heroe" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
