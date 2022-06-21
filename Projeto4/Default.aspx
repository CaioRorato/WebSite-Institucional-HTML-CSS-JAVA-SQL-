<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Projeto4.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="flexslider box-shadow">
        <ul class="slides">

            <!--imagem 1-->
            <li style="width: 474px; height: 500px;">
                <asp:HyperLink ID="HyperLink1" NavigateUrl="~/SO.aspx" runat="server">
                <img src="Images/Sistemas-Operacionais.jpg" />
                </asp:HyperLink>
            </li>
            <!--imagem 2-->
            <li style="width: 474px; height: 500px;">
                <asp:HyperLink ID="HyperLink2" NavigateUrl="~/Linguagem_C.aspx" runat="server">
                <img src="Images/image_c.jpg" />
                </asp:HyperLink>
            </li>
            <!--imagem 3-->
            <li style="width: 474px; height: 500px;">
                <asp:HyperLink ID="HyperLink3" NavigateUrl="~/LG_programacao_HTML.aspx" runat="server">
                <img src="Images/htm_css.jpg" />
                </asp:HyperLink>
            </li>

        </ul>

    </div>

    <script>
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "slide",
                animationLoop: true
            });
        });
    </script>

    <br />
    <br />



    <!--Conteudo-->

    <div class="box-shadow" style="float: right;">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14718.809407810393!2d-47.350742!3d-22.739302!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94c89bc1bf4f929b%3A0xf9a443e43964e245!2sFATEC+Americana!5e0!3m2!1spt-BR!2sbr!4v1470222993020" frameborder="0"
            style="border: 0; width: 550px; height: 350px;" allowfullscreen=""></iframe>
    </div>
    <div class="textos border box-shadow ">
        <h3>História</h3>
        A Fatec Americana está situada no município paulista de Americana, no interior do Estado de São Paulo. O município, fundando em 27 de agosto de 1875, sempre teve forte vocação têxtil, sendo até a atualidade um dos principais polos industriais de tecidos da América Latina.
        <br />
        Em 28 de novembro de 1991, foi aprovada a criação do Curso Superior de Tecnologia em Processamento de Dados, que constituía o segundo curso da Fatec Americana. Com essa diversificação dos cursos oferecidos pela faculdade, em 26 de janeiro de 1993, foi publicado o Decreto Estadual nº 36.457, alterando a denominação da Faculdade de Tecnologia Têxtil de Americana, que passou a se chamar Faculdade de Tecnologia de Americana.
        <br />
        Em 16 de novembro de 2009, o campus da Fatec Americana passou por uma nova expansão, com a inauguração de mais um bloco de salas de aula, o que melhorou a infraestrutura da faculdade. Com a nova estrutura, os cursos da Fatec Americana foram revisados e a faculdade passou a oferecer, a partir do segundo semestre de 2010, os cursos de Análise e Desenvolvimento de Sistemas, Jogos Digitais e Segurança da Informação, Gestão Empresarial, Logística e Produção Têxtil.
    </div>
    <br />
    <br />
    <br />





</asp:Content>



