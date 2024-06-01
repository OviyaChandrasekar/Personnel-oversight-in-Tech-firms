<%@ Page Title="" Language="C#" MasterPageFile="~/Master/User.master" AutoEventWireup="true" CodeFile="Exam.aspx.cs" Inherits="User_Exam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="../DatePicker/jquery.countdown.js"></script>

    <script type="text/javascript">
        $(function () {

            $('#counter').countdown({
                image: '../images/digits.png',
                startTime: '01:12:12:00'
            });

            $('#counter_2').countdown({
                startTime: '00:40',
                format: 'mm:ss',
                digitImages: 6,
                digitWidth: 53,
                digitHeight: 77,
                timerEnd: function () { alert("Sorry Time out"); window.location.href = "Home.aspx"; },
                image: '../images/digits.png'
            });
        });
    </script>
    <style type="text/css">
        br {
            clear: both;
        }

        .cntSeparator {
            font-size: 54px;
            margin: 10px 7px;
            color: #000;
        }

        .desc {
            margin: 7px 3px;
        }

            .desc div {
                float: left;
                font-family: Arial;
                width: 70px;
                margin-right: 65px;
                font-size: 13px;
                font-weight: bold;
                color: #000;
            }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <asp:ScriptManager runat="server">
    </asp:ScriptManager>


    <section class="about py-5">
        <div class="container py-md-5">
            <h3 class="tittle-wthree text-center">Write Exam</h3>
            <div class="row d-flex justify-content-center">
                <div class="col-lg-6">
                    <div class="form-group mt-4">

                        <div id="counter_2"></div>
                        <div class="desc">
                            <div>Minutes</div>
                            <div>Seconds</div>
                        </div>

                        <table class="table">
                            <tr>
                                <td colspan="2">Exam For Post</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label Text="" ID="lblMessage" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td style="font-weight: bold">User Email</td>
                                <td>
                                    <asp:Label Text="" ID="lblUserEmail" runat="server" />
                                </td>
                            </tr>

                            <tr>
                                <td style="font-weight: bold">Question No 1: 
                                </td>
                                <td>
                                    <asp:Label ID="txt1stQuestion" Style="font-weight: bold" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <tr>
                                            <td  style="text-align:center ">
                                                <asp:RadioButton Text="" ID="rdb11stAnswer" OnCheckedChanged="rdb11stAnswer_CheckedChanged" AutoPostBack="true" runat="server" />
                                            </td>
                                        </tr>


                                        <tr>

                                            <td style="text-align:center ">
                                                <asp:RadioButton Text="" ID="rdb12stAnswer" OnCheckedChanged="rdb12stAnswer_CheckedChanged" AutoPostBack="true" runat="server" />
                                            </td>
                                        </tr>
                                        <tr>

                                            <td style="text-align:center ">
                                                <asp:RadioButton Text="" ID="rdb13stAnswer" OnCheckedChanged="rdb13stAnswer_CheckedChanged" AutoPostBack="true" runat="server" />
                                            </td>
                                        </tr>
                                        <tr>

                                            <td style="text-align:center ">
                                                <asp:RadioButton Text="" ID="rdb14stAnswer" OnCheckedChanged="rdb14stAnswer_CheckedChanged" AutoPostBack="true" runat="server" />
                                            </td>
                                        </tr>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </tr>
                            <tr>
                                <td style="font-weight: bold">Question No 2:
                                </td>
                                <td>
                                    <asp:Label ID="txt2stQuestion" Style="font-weight: bold" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                        <tr>
                                            <td style="text-align:center ">
                                                <asp:RadioButton Text="" ID="rdb21stAnswer" OnCheckedChanged="rdb21stAnswer_CheckedChanged" AutoPostBack="true" runat="server" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center ">
                                                <asp:RadioButton Text="" ID="rdb22stAnswer" OnCheckedChanged="rdb22stAnswer_CheckedChanged" AutoPostBack="true" runat="server" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center ">
                                                <asp:RadioButton Text="" ID="rdb23stAnswer" OnCheckedChanged="rdb23stAnswer_CheckedChanged" AutoPostBack="true" runat="server" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center ">
                                                <asp:RadioButton Text="" ID="rdb24stAnswer" OnCheckedChanged="rdb24stAnswer_CheckedChanged" AutoPostBack="true" runat="server" />
                                            </td>
                                        </tr>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </tr>
                            <tr>
                                <td style="font-weight: bold">Question No 3:
                                </td>
                                <td>
                                    <asp:Label ID="txt3stQuestion" Style="font-weight: bold" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                    <ContentTemplate>
                                        <tr>
                                            <td style="text-align:center ">
                                                <asp:RadioButton Text="" ID="rdb31stAnswer" OnCheckedChanged="rdb31stAnswer_CheckedChanged" AutoPostBack="true" runat="server" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center ">
                                                <asp:RadioButton Text="" ID="rdb32stAnswer" OnCheckedChanged="rdb32stAnswer_CheckedChanged" AutoPostBack="true" runat="server" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center ">
                                                <asp:RadioButton Text="" ID="rdb33stAnswer" OnCheckedChanged="rdb33stAnswer_CheckedChanged" AutoPostBack="true" runat="server" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center ">
                                                <asp:RadioButton Text="" ID="rdb34stAnswer" OnCheckedChanged="rdb34stAnswer_CheckedChanged" AutoPostBack="true" runat="server" />
                                            </td>
                                        </tr>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </tr>
                            <tr>
                                <td style="font-weight: bold">Question No 4:
                                </td>
                                <td>
                                    <asp:Label ID="txt4stQuestion" Style="font-weight: bold" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                    <ContentTemplate>
                                        <tr>
                                            <td style="text-align:center ">
                                                <asp:RadioButton Text="" ID="rdb41stAnswer" OnCheckedChanged="rdb41stAnswer_CheckedChanged" AutoPostBack="true" runat="server" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center ">
                                                <asp:RadioButton Text="" ID="rdb42stAnswer" OnCheckedChanged="rdb42stAnswer_CheckedChanged" AutoPostBack="true" runat="server" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center ">
                                                <asp:RadioButton Text="" ID="rdb43stAnswer" OnCheckedChanged="rdb43stAnswer_CheckedChanged" AutoPostBack="true" runat="server" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center ">
                                                <asp:RadioButton Text="" ID="rdb44stAnswer" OnCheckedChanged="rdb44stAnswer_CheckedChanged" AutoPostBack="true" runat="server" />
                                            </td>
                                        </tr>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </tr>
                            <tr>
                                <td style="font-weight: bold">Question No 5:
                                </td>
                                <td>
                                    <asp:Label ID="txt5stQuestion" Style="font-weight: bold" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                    <ContentTemplate>
                                        <tr>
                                            <td style="text-align:center ">
                                                <asp:RadioButton Text="" ID="rdb51stAnswer" OnCheckedChanged="rdb51stAnswer_CheckedChanged" AutoPostBack="true" runat="server" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center ">
                                                <asp:RadioButton Text="" ID="rdb52stAnswer" OnCheckedChanged="rdb52stAnswer_CheckedChanged" AutoPostBack="true" runat="server" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center ">
                                                <asp:RadioButton Text="" ID="rdb53stAnswer" OnCheckedChanged="rdb53stAnswer_CheckedChanged" AutoPostBack="true" runat="server" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align:center ">
                                                <asp:RadioButton Text="" ID="rdb54stAnswer" OnCheckedChanged="rdb54stAnswer_CheckedChanged" AutoPostBack="true" runat="server" />
                                            </td>
                                        </tr>
                                        </tr>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <tr>

                                    <td colspan="2" style="text-align:center ">
                                        <asp:Button class="btn btn-primary submit mb-4" ID="CmdSubmit" OnClick="CmdSubmit_Click" runat="server" Text="Confirm Save" />
                                    </td>
                                </tr>
                        </table>
                        <asp:TextBox runat="server" ID="hid1" Visible="false" />
                        <asp:TextBox runat="server" ID="hid2" Visible="false" />
                        <asp:TextBox runat="server" ID="hid3" Visible="false" />
                        <asp:TextBox runat="server" ID="hid4" Visible="false" />
                        <asp:TextBox runat="server" ID="hid5" Visible="false" />


                        <asp:TextBox runat="server" ID="anshid1" Visible="false" />
                        <asp:TextBox runat="server" ID="anshid2" Visible="false" />
                        <asp:TextBox runat="server" ID="anshid3" Visible="false" />
                        <asp:TextBox runat="server" ID="anshid4" Visible="false" />
                        <asp:TextBox runat="server" ID="anshid5" Visible="false" />



                    </div>
                </div>
            </div>
        </div>


    </section>

</asp:Content>


