<%@ Page Title="" Language="C#" MasterPageFile="~/Overlook.Master" AutoEventWireup="true" CodeBehind="ver_mapas.aspx.cs" Inherits="OverlookWeb.ver_mapas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <header class="headMenu">MAPAS</header>

    <asp:FormView CssClass="Form" ID="FormView1" runat="server" DataKeyNames="ID_Mapa" DataSourceID="MapasSource">
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
                      height: 800px;
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
                    position: relative;
                    top: -800px;
                }
                #centro  h1{
                    font-size: 35px;
                }
                #descripcion{
                    font-family: Arial;
                    font-size: 18px;
                    float: left;
                    width: 50%; 
                }
                #imagen{
                    margin-left: 50%;
                    max-width: 500px;
                    max-height; 500px;

                }
            </style>
            
            <div class="fondo"></div>

            <div id="centro">
                <h1><%#Eval("Nombre") %></h1>
                <div id="descripcion"><%# Eval("Descripcion") %></div>
                <div id="imagen"> <img src="<%# Eval("imagen")%>" /> </div>
                Tipo:
                <asp:Label Text='<%# Bind("Tipo") %>' runat="server" ID="TipoLabel" /><br />

            </div>

                
        </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource ID="MapasSource" runat="server" ConnectionString='<%$ ConnectionStrings:OverlookConnectionString %>' SelectCommand="SELECT * FROM [Mapa] WHERE ([ID_Mapa] = @ID_Mapa)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="MID" Name="ID_Mapa" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>


</asp:Content>
