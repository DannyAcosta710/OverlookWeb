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
            width:40%;
            font-family:'Segoe UI';
        }
        #contenidoHeroe > h1{
            font-size:50px;
        }
        #contenidoHeroe > h2{
            font-size:34px;
        }
        #contenidoHeroe > p{
            font-size:22px;
        }
        #videoHeroe {
            width: 100%;
            height: 100%;
            display: block;
            float: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header class="headMenu">
        Heroes   
    </header>
    
    

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID_Heroe" DataSourceID="SqlDataSource1">
        
        <ItemTemplate>
            <div id="fondoHeroe">
                <video id="videoHeroe" loop src="<%#Eval("Video") %>"   autoplay/>
            </div>
            <div id="contenidoHeroe">
                <h1><%# Eval("Nombre") %></h1>
                <p><%#Eval("Descripcion") %></p>
                <h2>Counters</h2>
                <p>Aqui van los counters xdxdxd</p>
                <h2>Eficaz contra </h2>
                <p>Aqui van los eficazes xdxd</p>
                <h2>Rol</h2>
                <p><%# Eval("Rol") %></p>
            </div>

        </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:OverlookConnectionString %>' SelectCommand="SELECT * FROM [Heroe] WHERE ([ID_Heroe] = @ID_Heroe)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="id" Name="ID_Heroe" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
