<%@ Page Title="Overlook" Language="C#" MasterPageFile="~/Overlook.Master" AutoEventWireup="true" CodeBehind="ver_estrategia.aspx.cs" Inherits="OverlookWeb.ver_estrategia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .stratStyle{
            min-height:80%;
            background-color: #FCBD49;
            width:92%;
            margin:20px;
            padding:10px;
        }
        #cph{
            background-image: url("/Assets/asanoha-400px.png");
        }
        img{
            display:inline;
            margin:1%;
        }
        span{
            margin:20px;
        }
        body{
            text-align:center;
        }
        h1,h2,h3{
            text-align:left;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header class="headMenu">ESTRATEGIAS</header>
    <div class="stratStyle">
        <asp:DataList ID="DatEstrat" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <h2><%# Eval("Descripcion") %></h2>
                <h1>Mapas: </h1>
            </ItemTemplate>
        </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:OverlookConnectionString %>' SelectCommand="select * from estrategia WHERE ID_Estrategia=@id">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="ID_Strat" Name="id"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
        <asp:Repeater ID="RepEst2" runat="server" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                <a href="ver_mapas.aspx?mid=<%#Eval("ID_Mapa")%>"><img src="<%#Eval("Imagen") %>" width="200" /></a>
            </ItemTemplate>
        </asp:Repeater>
        <h1>Héroes:</h1>
        <asp:Repeater ID="RepHer" runat="server" DataSourceID="SqlDataSource3">
            <ItemTemplate>
                <a href="Ver_Heroe.aspx?id=<%#Eval("ID_Heroe") %>"><img src="<%#Eval("Imagen") %>" height="150" /></a>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:OverlookConnectionString %>' SelectCommand="select * from estrategiamapa inner join mapa on mapa.id_mapa=estrategiamapa.id_mapa where estrategiamapa.id_estrategia=@ID">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="ID_Strat" Name="id"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString='<%$ ConnectionStrings:OverlookConnectionString %>' SelectCommand="select * from estrategiaheroe inner join heroe on heroe.id_heroe=estrategiaheroe.id_heroe where estrategiaheroe.id_estrategia=@ID">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="ID_Strat" Name="id"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
