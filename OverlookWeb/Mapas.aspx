<%@ Page Title="" Language="C#" MasterPageFile="~/Overlook.Master" AutoEventWireup="true" CodeBehind="Mapas.aspx.cs" Inherits="OverlookWeb.Mapas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>
    #total{
        background-image: url("http://media.idownloadblog.com/wp-content/uploads/2016/05/Plus-Slate-By-Jason-Zigrino-2.png");
        min-width: 100vh;
        min-height: 100vh;
        margin:0;
    }
    body{
        
    }
    #total > h1,h2{
        color: white;
        font-size: 42px;
    }
    .probamela{
        object-fit: cover;
        height: 400px;
        width: 150px;
    }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="total">
        <header class="headMenu">MAPAS</header>
        <h1>ASALTO</h1>
        <asp:DataList RepeatColumns="3" ID="MapasAsalto" runat="server"  DataSourceID="AsaltoFuente">
            <ItemTemplate>
                <a href="http://www.pornsfw.com/" ><img class="probamela" src="<%# Eval("Imagen") %>"/></a>
            </ItemTemplate>
        </asp:DataList>
        <h1>ESCOLTA</h1>
        <asp:DataList RepeatColumns="3" ID="MapasEscolta" runat="server" DataSourceID="EscoltaFuente">
            <ItemTemplate>
                 <a href="http://www.pornsfw.com/" ><img class="probamela" src="<%# Eval("Imagen") %>"/></a>
            </ItemTemplate>
        </asp:DataList>
        <h1>CONTROL</h1>
        <asp:DataList RepeatColumns="3" ID="MapasControl" runat="server" DataSourceID="ControlFuente">
            <ItemTemplate>
                <a href="http://www.pornsfw.com/" ><img class="probamela" src="<%# Eval("Imagen") %>" /></a> 
            </ItemTemplate>
        </asp:DataList>
        <h1>ASALTO/ESCOLTA</h1>
        <asp:DataList RepeatColumns="4" ID="MapasHibrido" runat="server" DataSourceID="HibridoFuente">
            <ItemTemplate>
                 <a href="http://www.pornsfw.com/" ><img class="probamela" src="<%# Eval("Imagen") %>"/></a>
            </ItemTemplate>
        </asp:DataList>
    </div>

    <asp:SqlDataSource ID="AsaltoFuente" runat="server" ConnectionString='<%$ ConnectionStrings:OverlookConnectionString %>' SelectCommand="SELECT [Nombre], [Tipo], [Imagen] FROM [Mapa] WHERE ([Tipo] = @Tipo)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Asalto" Name="Tipo" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="EscoltaFuente" runat="server" ConnectionString='<%$ ConnectionStrings:OverlookConnectionString %>' SelectCommand="SELECT [Nombre], [Tipo], [Imagen] FROM [Mapa] WHERE ([Tipo] = @Tipo)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Escolta" Name="Tipo" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="ControlFuente" runat="server" ConnectionString='<%$ ConnectionStrings:OverlookConnectionString %>' SelectCommand="SELECT [Nombre], [Tipo], [Imagen] FROM [Mapa] WHERE ([Tipo] = @Tipo)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Control" Name="Tipo" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="HibridoFuente" runat="server" ConnectionString='<%$ ConnectionStrings:OverlookConnectionString %>' SelectCommand="SELECT [Imagen], [Tipo], [Nombre] FROM [Mapa] WHERE ([Tipo] = @Tipo)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Asalto/Escolta" Name="Tipo" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
