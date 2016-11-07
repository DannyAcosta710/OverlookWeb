<%@ Page Title="" Language="C#" MasterPageFile="~/Overlook.Master" AutoEventWireup="true" CodeBehind="Mapas.aspx.cs" Inherits="OverlookWeb.Mapas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>
    #total{
        background-image: url("http://media.idownloadblog.com/wp-content/uploads/2016/05/Plus-Slate-By-Jason-Zigrino-2.png");
        height: 950px;
        width: 100%;
    }
    #total > h1,h2{
        color: white;
        font-size: 42px;
    }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="total">
        <header class="headMenu">MAPAS</header>
        <h1>ASALTO</h1>
        <h1>ESCOLTA</h1>
        <h1>CONTROL</h1>
        <h1>ASALTO/ESCOLTA</h1>
    </div>

</asp:Content>
