<%@ Page Title="" Language="C#" MasterPageFile="~/Overlook.Master" AutoEventWireup="true" CodeBehind="Estrategias.aspx.cs" Inherits="OverlookWeb.Estrategias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Overlook</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header class="headMenu">ESTRATEGIAS</header>
    <style>
        #cph{
            background-image: url("/Assets/asanoha-400px.png");
        }
        .stratStyle{
            min-height:80%;
            background-color: #FCBD49;
            width:95%;
            margin:20px;
            padding:10px;
        }
        a:link{
            color: blue;
            font-style:normal;
            text-decoration:none;
        }
        a:visited{
            color: blue;
            font-style:normal;
            text-decoration:none;
        }
        a:hover{
            color: blue;
            font-style:normal;
            text-decoration:none;
        }
        p{
            font-size:0px;
        }
    </style>
    <div class="stratStyle">
        <h1 style="text-align:center;">Haz click en cada estrategia para más información</h1>
        <asp:DataList ID="DatEstrat" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <a href="ver_estrategia.aspx?id_strat=<%#Eval("ID_Estrategia") %>"><h2><%# Eval("Descripcion") %></h2></a>                
            </ItemTemplate>
        </asp:DataList>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:OverlookConnectionString %>' SelectCommand="select * from estrategia">
    </asp:SqlDataSource>
</asp:Content>
