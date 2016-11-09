<%@ Page Title="" Language="C#" MasterPageFile="~/Overlook.Master" AutoEventWireup="true" CodeBehind="Mapas.aspx.cs" Inherits="OverlookWeb.Mapas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
<link rel="stylesheet" href="/resources/demos/style.css"/>
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
        font-size: 42px;vb
    }
    .probamela{
        object-fit: cover;
        height: 400px;
        width: 150px;
    }
</style>
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
      $(function () {
          // run the currently selected effect
          function runEffect() {


              // Most effect types need no options passed by default
              var options = {};
              // some effects have required parameters
              if ("fade" === "scale") {
                  options = { percent: 50 };
              } else if ("fade" === "size") {
                  options = { to: { width: 280, height: 185 } };
              }

              // Run the effect
              $("#effect").show("fade", options, 500, callback);
          };

          //callback function to bring a hidden box back
          function callback() {
              setTimeout(function () {
                  $("#effect:visible")
              }, 0);
          };

          // Set effect from select menu value
          $("#button").on("click", function () {
              runEffect();
          });

          $("#effect").hide();
      });
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="total">
        <header class="headMenu">MAPAS</header>
        <button id="button" class="ui-state-default ui-corner-all">ASALTO</button>
        <asp:DataList RepeatColumns="3" ID="effect" runat="server"  DataSourceID="AsaltoFuente">
            <ItemTemplate>
                <a href="http://www.pornsfw.com/" ><img class="probamela" src="<%# Eval("Imagen")%>"/></a>
            </ItemTemplate>
        </asp:DataList>
        <h1>ESCOLTA</h1>
        <asp:DataList RepeatColumns="3" ID="MapasEscolta" runat="server" DataSourceID="EscoltaFuente">
            <ItemTemplate>
                 <a href="Ver_Mapas.aspx?Mapa="<%# Eval("IdMapa") %> ><img class="probamela" src="<%# Eval("Imagen") %>"/></a>
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