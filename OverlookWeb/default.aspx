<%@ Page Title="Overlook - Héroes" Language="C#" MasterPageFile="~/Overlook.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="OverlookWeb._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <style>
        #contenedorDefault{
            background-image: url("/Assets/asanoha-400px.png");
            background-repeat :repeat;
            height:100%;
            width:100%;
            margin:0 auto;
            position:absolute;
        }
        #heroes{
            width:100%;
            min-width:100%;
            margin:0 auto;
            text-align:center;
        }
        .imgAtributo{
            width:100px;
        }
        .atributos{
            float:left;
            padding:11.1vh;
        }
        button{
            border-radius:2vh;
            background-color:black;
            color:white;
        }
        button:hover {
            background-color: #FCBD49;
        }
        .imagenCss{
            width:155px;
            height:225px;
        }
        .contenidoHeroes{
            display:block;
            text-align:center;
            margin:0 auto;
            font-size:20px;
        }
        .izi{
            margin:0 auto;
        }
        .izi td{
            text-align:center;
        }
        #contenedorAtributos{
            display:inline-block;
            margin:0 auto;
            text-align:center;
        }
    </style>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
      $(function () {
          // run the currently selected effect
          function runEffect(datalist) {
              var options = {};
              $("#" + datalist).show("fade", options, 500, callback);
          };
          //callback function to bring a hidden box back
          function callback() {
              setTimeout(function () {
                  $("#effect:visible")
              }, 0);
          };
          // Set effect from select menu value
          $(".Mbutton").on("click", function (e) {
              e.preventDefault();
              var datalist = $(this).attr("data-datalistid");
              runEffect(datalist)
              $(".Mbutton").on("click", function () {
                  $('#'+datalist).hide();
              });
          });
          $("#ataque, #defensa, #tank, #healer").hide();
      });
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="contenedorDefault">
        <header class="headMenu">Heroes</header>
        <div id="heroes">
            <div id="contenedorAtributos">
                <div class="atributos">
                    <button data-datalistid="ataque" class="Mbutton"><img class="imgAtributo" src="http://owinfinity.com/wp-content/themes/overwatch-theme/assets/images/icons/skill-common/flip-attack-large.png" />
                    <p>Ataque</p></button>
                </div>
                <div class="atributos">
                    <button data-datalistid="defensa" class="Mbutton"><img class="imgAtributo" src="http://owinfinity.com/wp-content/themes/overwatch-theme/assets/images/icons/skill-common/flip-defense-large.png" />
                    <p>Defensa</p></button>
                </div>
                <div class="atributos">
                    <button data-datalistid="tank" class="Mbutton"><img class="imgAtributo" src="http://owinfinity.com/wp-content/themes/overwatch-theme/assets/images/icons/skill-common/flip-tank-large.png" />
                    <p>Tanque</p></button>
                </div>
                <div class="atributos">
                    <button data-datalistid="healer" class="Mbutton"><img class="imgAtributo" src="http://www.overwatchgg.com/wp-content/uploads/2016/06/flip-support-large.png" />
                    <p>Apoyo</p></button>
                </div>
            </div>
            <div class="contenidoHeroes">
            <asp:DataList RepeatColumns="7" CssClass="izi" ClientIDMode="Static" ID="ataque" runat="server" DataKeyField="ID_Heroe" DataSourceID="sdsAtaque">
                    <ItemTemplate>
                        <a href="Ver_Heroe.aspx?id=<%#Eval("ID_Heroe") %>"><img class="imagenCss" src="<%#Eval ("Imagen") %>" /></a><br />
                        <p><%# Eval("Nombre") %></p><br />
                    </ItemTemplate>
            </asp:DataList>
            <asp:DataList RepeatColumns="6" CssClass="izi" ClientIDMode="Static" ID="defensa" runat="server" DataKeyField="ID_Heroe" DataSourceID="sdsDefensa">
                <ItemTemplate>
                    <a href="Ver_Heroe.aspx?id=<%#Eval("ID_Heroe") %>"><img class="imagenCss" src="<%# Eval("Imagen") %>"/></a><br />
                    <p><%# Eval("Nombre") %></p><br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:DataList RepeatColumns="5"  CssClass="izi"  ClientIDMode="Static" ID="tank" runat="server" DataKeyField="ID_Heroe" DataSourceID="sdsTank">
                <ItemTemplate>
                    <a href="Ver_Heroe.aspx?id=<%#Eval("ID_Heroe") %>"><img class="imagenCss" src="<%# Eval("Imagen") %>"/></a><br />
                    <p><%# Eval("Nombre") %></p><br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:DataList RepeatColumns="5" CssClass="izi" ClientIDMode="Static" ID="healer" runat="server" DataKeyField="ID_Heroe" DataSourceID="sdsHealer">
                <ItemTemplate>                    
                    <a href="Ver_Heroe.aspx?id=<%#Eval("ID_Heroe") %>"><img class="imagenCss" src="<%# Eval("Imagen") %>"/></a><br />
                    <p><%# Eval("Nombre") %></p><br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            </div>

            <asp:SqlDataSource runat="server" ID="sdsHealer" ConnectionString='<%$ ConnectionStrings:OverlookConnectionString %>' SelectCommand="SELECT [ID_Heroe], [Nombre], [Rol], [Imagen] FROM [Heroe] WHERE ([Rol] = @Rol)">
                <SelectParameters>
                    <asp:QueryStringParameter QueryStringField="Rol" DefaultValue="Healer" Name="Rol" Type="String"></asp:QueryStringParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource runat="server" ID="sdsTank" ConnectionString='<%$ ConnectionStrings:OverlookConnectionString %>' SelectCommand="SELECT [ID_Heroe], [Nombre], [Rol], [Imagen] FROM [Heroe] WHERE ([Rol] = @Rol)">
                <SelectParameters>
                    <asp:QueryStringParameter QueryStringField="Rol" DefaultValue="Tank" Name="Rol" Type="String"></asp:QueryStringParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource runat="server" ID="sdsDefensa" ConnectionString='<%$ ConnectionStrings:OverlookConnectionString %>' SelectCommand="SELECT [ID_Heroe], [Nombre], [Rol], [Imagen] FROM [Heroe] WHERE ([Rol] = @Rol)">
                <SelectParameters>
                    <asp:QueryStringParameter QueryStringField="Rol" DefaultValue="Defensa" Name="Rol" Type="String"></asp:QueryStringParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource runat="server" ID="sdsAtaque" ConnectionString='<%$ ConnectionStrings:OverlookConnectionString %>' SelectCommand="SELECT [ID_Heroe], [Rol], [Nombre], [Imagen] FROM [Heroe] WHERE ([Rol] = @Rol)">
                    <SelectParameters>
                        <asp:QueryStringParameter QueryStringField="Rol" DefaultValue="Ataque" Name="Rol" Type="String"></asp:QueryStringParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
