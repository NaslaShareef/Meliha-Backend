<%@ Page Title="" Language="C#" MasterPageFile="~/BO_Digits/en/en_master.Master" AutoEventWireup="true" CodeBehind="CustomerConnectSettings.aspx.cs" Inherits="SalesForceAutomation.BO_Digits.en.CustomerConnectSettings" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Actions" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="kt-container  kt-container--fluid  kt-grid__item kt-grid__item--fluid">
        <div class="row">
            <div class="col-lg-12">
                <br />
                <!--begin::Portlet-->
                <div class="kt-portlet" style="background-color: white; padding: 20px;">
                    <div class="kt-portlet__body">
                        <div class="col-lg-12 row">
                            <div class="col-lg-4">
                                <label class="control-label col-lg-12">User<span class="required"></span></label>
                                <div class="col-lg-12">
                                    <telerik:RadComboBox ID="ddlname" runat="server" EmptyMessage="Select User Name" CausesValidation="false" Width="100%" Filter="Contains"></telerik:RadComboBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="form"
                                        ControlToValidate="ddlname" ErrorMessage="Please select User Name" ForeColor="Red" Display="Dynamic"
                                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <label class="control-label col-lg-12">Parent Node<span class="required"></span></label>
                                <div class="col-lg-12">
                                    <telerik:RadDropDownList ID="ddlrotType" runat="server" Width="100%" OnSelectedIndexChanged="ddlrotType_SelectedIndexChanged" AutoPostBack="true" DefaultMessage="Select Route Type">
                                        <Items>
                                            <telerik:DropDownListItem Text="INVENTORY TRANSACTIONS" Value="INTR" />
                                            <telerik:DropDownListItem Text="CUSTOMER TRANSACTIONS" Value="CUTR" />                                        
                                            <telerik:DropDownListItem Text="SALES ORDER" Value="SLOR" />
                                            <telerik:DropDownListItem Text="CUSTOMER INSIGHTS" Value="CUIN" />
                                            <telerik:DropDownListItem Text="APPROVALS" Value="APPR" />
                                            <telerik:DropDownListItem Text="OTHER OPTIONS" Value="OTOP" />                                            

                                        </Items>
                                    </telerik:RadDropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ValidationGroup="form"
                                        ControlToValidate="ddlrotType" ErrorMessage="<br/>Please Enter Type" ForeColor="Red" Display="Dynamic"
                                        SetFocusOnError="True"></asp:RequiredFieldValidator><br />
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <label class="control-label col-lg-12">Child Node<span class="required"></span></label>
                                <div class="col-lg-12">
                                    <telerik:RadComboBox ID="RadComboBox2" runat="server" EmptyMessage="Select User Name" CausesValidation="false" Width="100%" Filter="Contains"></telerik:RadComboBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="form"
                                        ControlToValidate="ddlname" ErrorMessage="Please select User Name" ForeColor="Red" Display="Dynamic"
                                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footerScripts" runat="server">
</asp:Content>
