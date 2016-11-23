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
        #contenidoHeroe {
            position: absolute;
            margin-left: 4%;
            width: 86%;
            max-height:59%;
            overflow:auto;
        }
        #contenidoHeroe > h1{
            font-size:50px;
        }
        #contenidoHeroe > h2{
            font-size:34px;
        }
        #contenidoHeroe > p{
            font-size:2em;
        }
        #fondoHeroe{
            background-image: url("/Assets/asanoha-400px.png");
            z-index:-1;
            width:100%;
        }
        video{
            width:100%;
            float: right;
        }
        #cph{
            background-image:initial;
        }
        #contHeroe{
            margin-left:2%;
            width:40%;
            z-index:3;
        }
        #menu{
            z-index:2;
        }
        table{
            height:100%;
            overflow:auto;
        }
        #menu #linkH{
            color:red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID_Heroe" DataSourceID="SqlDataSource1">
        <ItemTemplate >
            <div id="fondoHeroe">
                <video src="<%#Eval("Video") %>" loop autoplay></video>
                <div id="contenidoHeroe">
                    <div id="contHeroe">
                        <h1><%# Eval("Nombre") %></h1>
                        <p><%#Eval("Descripcion") %></p> 
                        <h2>Counters</h2>
                        <asp:AdRotator width="60px" ID="AdRotator1" runat="server" AdvertisementFile="~/ProContraHeroes.xml" />
                        <asp:AdRotator width="60px" ID="AdRotator2" runat="server" AdvertisementFile="~/ProContraHeroes.xml" />
                        <asp:AdRotator width="60px" ID="AdRotator3" runat="server" AdvertisementFile="~/ProContraHeroes.xml" />
                        <h2>Eficaz contra </h2>
                        <asp:AdRotator width="60px" ID="AdRotator4" runat="server" AdvertisementFile="~/ProContraHeroes.xml" />
                        <asp:AdRotator width="60px" ID="AdRotator5" runat="server" AdvertisementFile="~/ProContraHeroes.xml" />
                        <asp:AdRotator width="60px" ID="AdRotator6" runat="server" AdvertisementFile="~/ProContraHeroes.xml" />
                        <h2>Rol</h2>
                        <p>&nbsp;<%# Eval("Rol") %></p><br />
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:OverlookConnectionString %>' SelectCommand="SELECT * FROM [Heroe] WHERE ([ID_Heroe] = @ID_Heroe)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="id" Name="ID_Heroe" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
