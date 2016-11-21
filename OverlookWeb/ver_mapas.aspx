<%@ Page Title="" Language="C#" MasterPageFile="~/Overlook.Master" AutoEventWireup="true" CodeBehind="ver_mapas.aspx.cs" Inherits="OverlookWeb.ver_mapas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <header class="headMenu">MAPAS</header>

    <asp:Repeater ID="DataList1" runat="server" DataSourceID="MapasSource">
        <ItemTemplate>
           <style>
               .Form{
                   box-sizing: border-box;
               }

               .fondo{
                    background-image:url("<%# Eval("Imagen") %>");
                    background-size: cover;
                    display:block;
                    filter: blur(5px);
                    -webkit-filter: blur(5px);
                    min-height: 800px;
                    left: 0;
                    right: 0;
                    z-index: 1;
                }
                #centro{
                    z-index: 2;
                    border-radius: 3px;
                    border: solid black 1.5px;
                    background: rgba(255, 255, 255, 0.70);
                    align-content: center;
                    margin: 30px 30px 30px 30px;
                    padding: 10px;
                    position: absolute;
                    top: 15%;
                }
                #centro  h1{
                    font-size: 35px;
                    border-bottom: solid black 1px;
                }
                #descripcion{
                    font-family: Arial;
                    font-size: 18px;
                    float: left;
                    width: 74%; 
                }
                #CuadroDer{
                    border: solid black 1.5px;
                    border-radius: 3.5px;
                    margin-left: 74%;
                    max-width: 25%;                    
                }
                #imagen{
                    padding: 5px;
                    max-width: 500px;
                    max-height: 400px;
                }
                #CuadroTop{
                    border-top: none;
                    border-bottom: solid black 1px;
                    text-align: center;
                    color: black;
                    background-color: #FCBD49;
                    margin:0;
                }
                .Cseccion{
                    border-top: solid black 1px;
                    border-bottom: solid black 1px;
                    padding-left: 3px;
                    text-align: center;
                    font-size:24px;
                    color: black;
                    background-color: #FCBD49;
                    margin:0;
                }
                #tipo{
                    font-size: 20px;
                    text-align: left;
                    padding-left:7px;
                }

            </style>
            
            <div class="fondo"></div>

            <div id="centro">

                <h1><%#Eval("Nombre") %></h1>
                <div id="descripcion"><%# Eval("Descripcion") %></div>
                
                <div id="CuadroDer">
                    <h2 id="CuadroTop"><%#Eval ("Nombre") %></h2>
                    <div id="imagen"> 
                        <img width="100%" src="<%# Eval("imagen")%>" />
                    </div>
                    <h2 class="Cseccion">Tipo</h2>
                    <a id="tipo"><%#Eval("Tipo") %></a>
                    <h2 class="Cseccion">Mejores Héroes</h2>
                    <a>Ataque: </a>
                    <p id="HAtaque">
                        <asp:Repeater ID="FormView2" runat="server" DataSourceID="HeroesSource">
                            <ItemTemplate>
                                <img src="<%#Eval("ImagenH") %>" height="100"/>
                            </ItemTemplate>
                        </asp:Repeater>
                    </p>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="MapasSource" runat="server" ConnectionString='<%$ ConnectionStrings:OverlookConnectionString %>' SelectCommand="SELECT * FROM [Mapa] WHERE ([ID_Mapa] = @ID_Mapa)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="MID" Name="ID_Mapa" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="HeroesSource" runat="server" ConnectionString='<%$ ConnectionStrings:OverlookConnectionString %>' SelectCommand="SELECT * FROM [MapaXHeroeA] WHERE ([ID_Maopa] = @ID_Maopa)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="MID" Name="ID_Maopa" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
