<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Linguagem_C.aspx.cs" Inherits="Projeto4.Linguagem_C" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Linguagem C</h2>
    <br />
    <br />

    <!--image 1-->
    <div style="float: right; margin-left: 30px; margin-top: 55px">
        <img class="border" src="Images/linguagemc.jpg" />
    </div>



    <div class="margin-top">
        <h3 style="text-align: left">Conceito</h3>
        <div class="textos">
            Considerada uma linguagem de alto nível genérica, a C pode ser usada em diversos tipos de projeto, como a criação de aplicativos, sistemas operacionais, drivers, entre outros. Trata-se de uma linguagem estruturada que se tornou muito popular nos anos 80 — tanto que é difícil encontrar arquiteturas para as quais não existam compiladores para a C, o que garante o seu elevado nível de portabilidade.
        </div>
        <div class="textos">Uma das grandes vantagens dessa linguagem é a capacidade de gerar códigos rápidos, ou seja, com um tempo de execução baixo. Além disso, a programação em C é bastante simplificada, pois sua estrutura é simples e flexível. Tendo isso em mente, podemos dizer que as principais características da linguagem C são:</div>
        <br />

        <div class="textos">
            •Portabilidade;
            <br />
            •Geração de código eficiente;
            <br />
            •Simplicidade;
            <br />
            •Confiabilidade;
            <br />
            •Facilidade de uso;
            <br />
            •Regularidade. 
            <br />
        </div>
        <br />
        <div style="margin-right: 500px" class="textos">
            Por fim, a popularidade da linguagem C é foi grande que ela ainda influenciou diretamente a estrutura e sintaxe de outras, como C++, Objective C e C#.
Para o desenvolvimento e compilação de um programa em C, utilizamos Code::Blocks oferece um ambiente que integra um editor de textos a um compilador para linguagem C.
            Para conhcer mais sobre cliquen no link abaixo:
        </div>

        <br />
        <br />
        <br />
        <br />
        <asp:HyperLink Target="_blank" ID="HyperLink1" NavigateUrl="https://www.codeblocks.org" runat="server">
<img style="width:740px; height:290px;" " src="Images/codeblocks.png" />
        </asp:HyperLink>
        <br />


    </div>


</asp:Content>
