<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="EV26.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Aptauja</h1>
    
    <form method="post" action="/Home/Buy">
    
        <h2>Kurss</h2>
        <input type="radio" name="name" value="1" ondurationchange="funcID1()"><span class="pl-1 pr-2">1</span>
        <input type="radio" name="name" value="2"><span class="pl-1 pr-2">2</span>
        <input type="radio" name="name" value="3"><span class="pl-1 pr-2">3</span>

        <h2>Studiju programma</h2>
        <div>
            <select class="w-100" name="d">
                <option value="IT">IT</option>
                <option value="LSP">LSP</option>
            </select>
        </div>

        <h2>Vārds</h2>
        <input id="pr" class="w-100" type="text" name="Vards" oninput="ff()" />

        <h2>Komentārs</h2>
        <textarea class="w-100"></textarea>
        <input type="submit" value="Sūtīt" />
    </form>

    <h1>Rezultāts</h1>

    <table>
        <tr>
            <td>Kurss</td>
            <td id="demo" class="pl-2"><span id="v2"></span></td>
        </tr>
        <tr>
            <td>Studiju programma</td>
            <td class="pl-2">IT</td>
        </tr>
        <tr>
            <td>Vārds</td>
            <td class="pl-2">Jānis</td>
        </tr>
        <tr>
            <td>Komentārs</td>
            <td class="pl-2">Viss ir labi!</td>
        </tr>
    </table>
    
</asp:Content>