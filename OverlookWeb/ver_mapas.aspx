<%@ Page Title="" Language="C#" MasterPageFile="~/Overlook.Master" AutoEventWireup="true" CodeBehind="ver_mapas.aspx.cs" Inherits="OverlookWeb.ver_mapas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <header class="headMenu">MAPAS</header>

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID_Mapa" DataSourceID="MapasSource">
        <ItemTemplate>
            ID_Mapa:
            <asp:Label Text='<%# Eval("ID_Mapa") %>' runat="server" ID="ID_MapaLabel" /><br />
            Nombre:
            <asp:Label Text='<%# Bind("Nombre") %>' runat="server" ID="NombreLabel" /><br />
            Descripcion:
            <asp:Label Text='<%# Bind("Descripcion") %>' runat="server" ID="DescripcionLabel" /><br />
            Tipo:
            <asp:Label Text='<%# Bind("Tipo") %>' runat="server" ID="TipoLabel" /><br />
            Imagen:
            <asp:Label Text='<%# Bind("Imagen") %>' runat="server" ID="ImagenLabel" /><br />
        </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource ID="MapasSource" runat="server" ConnectionString='<%$ ConnectionStrings:MapasSource %>' SelectCommand="SELECT * FROM [Mapa] WHERE ([ID_Mapa] = @ID_Mapa)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="MID" Name="ID_Mapa" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>


</asp:Content>
