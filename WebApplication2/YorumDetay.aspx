<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="WebApplication2.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: right;
            width: 139px;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            width: 139px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>AD SOYAD:</strong></td>
            <td>
                <asp:TextBox ID="TxtAd" runat="server" Width="290px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>MAİL ADRESİ:</strong></td>
            <td>
                <asp:TextBox ID="TxtMail" runat="server" Width="290px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>İÇERİK:</strong></td>
            <td>
                <asp:TextBox ID="Txticerik" runat="server" Height="150px" TextMode="MultiLine" Width="290px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>YEMEK:</strong></td>
            <td>
                <asp:TextBox ID="TxtYemek" runat="server" Width="290px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style6">
                <asp:Button ID="BtnOnayla" runat="server" Text="Onayla" Width="200px" OnClick="BtnOnayla_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
