<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="EV26.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Aptauja</h1>
    
    <form method="post" action="/Home/Buy">
    
        <h2>Kurss</h2>
        <input type="radio" name="radio" value="1" onclick="getInputFromRadio()" checked="checked"><span class="pl-1 pr-2">1</span>
        <input type="radio" name="radio" value="2" onclick="getInputFromRadio()"><span class="pl-1 pr-2">2</span>
        <input type="radio" name="radio" value="3" onclick="getInputFromRadio()"><span class="pl-1 pr-2">3</span>

        <h2>Studiju programma</h2>
        <div>
            <select class="w-100" name="d" id="studies" onclick="getInputFromSelectedOption()">
                <option value="IT">IT</option>
                <option value="LSP">LSP</option>
            </select>
        </div>

        <h2>Vārds</h2>
        <input class="w-100" type="text" name="Vards" id="name" oninput="getInputFromTextField(this)" value="Jevgenijs Struņevskis"/>

        <h2>Komentārs</h2>
        <textarea class="w-100" id="coment" oninput="getInputFromTextField(this)">Mācāmies lietot ASP.NET tehnoloģijas...</textarea>
        <br />
        <input type="submit" value="Sūtīt">
    </form>

    <h1>Rezultāts</h1>

    <table>
        <tr>
            <td>Kurss:</td>
            <td class="pl-2" id="course-out">null</td>
        </tr>
        <tr>
            <td>Studiju programma</td>
            <td class="pl-2" id="studies-out">null</td>
        </tr>
        <tr>
            <td>Vārds</td>
            <td class="pl-2" id="name-out">null</td>
        </tr>
        <tr>
            <td>Komentārs</td>
            <td class="pl-2" id="coment-out">null</td>
        </tr>
    </table>
   
    <script type="text/javascript">

        var n, e;

        function getInputFromTextField(element) {
            n = document.getElementById(element.id).value;  // get value
            e = (element.id) + "-out";                      // set value
            document.getElementById(e).innerHTML = n;       // print out value
        }

        function getInputFromSelectedOption() {
            e = document.getElementById("studies");                 // get value
            n = e.options[e.selectedIndex].text;                    // set value
            document.getElementById('studies-out').innerHTML = n;   // print out value
        }

        function getInputFromRadio() {
            var radios = document.getElementsByName('radio');
            for (var i = 0, length = radios.length; i < length; i++) {
                if (radios[i].checked) {
                    document.getElementById('course-out').innerHTML = radios[i].value // здесь мы меняем данные, которые ввёл пользователь (Kurss: 1)
                    break;
                }
            }
        }
    </script>
</asp:Content>