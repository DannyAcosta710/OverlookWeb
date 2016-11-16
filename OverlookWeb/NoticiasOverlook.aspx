<%@ Page Title="" Language="C#" MasterPageFile="~/Overlook.Master" AutoEventWireup="true" CodeBehind="NoticiasOverlook.aspx.cs" Inherits="OverlookWeb.NoticiasOverlook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
     #not{
      width:80%;
      margin-left:20px;
      margin-right:20px;

     }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header class="headMenu">
        <h1>NOTICIAS</h1>
           </header>
   <div id="cont">
     <section id="not">
         <asp:DataList ID="DataList1" runat="server" DataSourceID="overlookN">
             <ItemTemplate>
               <div id="d1"><a href="VerNoticiasOverlook.aspx?nid=<%#Eval("id")%>"><img src="<%# Eval("Imagen") %>"/></a></div>
                 <div id="d2">
                <h1> <%# Eval("Titulo") %></h1>
                <p><%# Eval("Descripcion") %></p>
                 </div>
             </ItemTemplate>
         </asp:DataList>
         <asp:SqlDataSource runat="server" ID="overlookN" ConnectionString="Data Source=.\sqlexpress;Initial Catalog=Overlook;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Titulo], [Imagen], [Descripcion] FROM [Noticia] WHERE ([Imagen] = @Imagen) ORDER BY [Fecha] DESC">
             <SelectParameters>
                 <asp:QueryStringParameter QueryStringField="nid" DefaultValue="id" Name="Imagen" Type="String"></asp:QueryStringParameter>
             </SelectParameters>
         </asp:SqlDataSource>
         <asp:SqlDataSource runat="server" ID="Overlook"></asp:SqlDataSource>
     </section>
</div>
     
</asp:Content>
