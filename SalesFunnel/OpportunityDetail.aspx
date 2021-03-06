﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="OpportunityDetail.aspx.vb" Inherits="OpportunityDetail" %>

<asp:Content ID="HeadContent"  ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" Runat="Server">
    <!--********************************************************************************-->
    <!--                                                                                -->
    <!-- View Panel                                                                     -->
    <!--                                                                                -->
    <!--********************************************************************************--> 
    <asp:Panel ID="pnlView" runat="server" BackColor="White" BorderColor="Black" Visible="false" Width="1200px">
        <asp:Table id="tblOpportunity" runat="server" Width="100%">
        <asp:TableRow>
            <asp:TableCell ColumnSpan="1" Width="200px"><asp:Label ID="lblAction" runat="server" Text="View Opportunity" Font-Size="Large" Font-Bold="True" ForeColor="Black" /></asp:TableCell>
            <asp:TableCell ColumnSpan="1" Width="250px"></asp:TableCell>
            <asp:TableCell ColumnSpan="1" Width="225px"></asp:TableCell>
            <asp:TableCell ColumnSpan="1" Width="225px"></asp:TableCell>
            <asp:TableCell ColumnSpan="1" Width="325px" HorizontalAlign="Right">
                <asp:Button ID="btnDelete" runat="server" Text="Delete" enabled="False" Visible="True"/>
                <asp:Button ID="btnOpportunityOK" runat="server" Text="OK" enabled="False" Visible="false"/>
                <asp:Button ID="btnOpportunityCancel" runat="server" Text="Cancel" enabled="false" Visible="false"/>
                <asp:Button ID="btnOpportunityEdit" runat="server" Text="Edit" />
                <asp:Button ID="btnBack" runat="server" Text="Back" enabled="true" Visible="true" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" VerticalAlign="Top"><asp:Label ID="lblCustomerEdit" runat="server" Text="Customer: " Font-Bold="True" ForeColor="Black" /></asp:TableCell>
            <asp:TableCell ColumnSpan="2" VerticalAlign="Top"><asp:Label ID="lblOpportunityEdit" runat="server" Text="Opportunity: " Font-Bold="True" ForeColor="Black" /></asp:TableCell>
            <asp:TableCell ColumnSpan="1" VerticalAlign="Top"><asp:Label ID="lblAccountTeamEdit" runat="server" Text="Account Team: " Font-Bold="True" ForeColor="Black" Width="325px" /></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" VerticalAlign="Top"><asp:DropDownList ID="ddlCustomerEdit" runat="server" width="445px" Enabled="False" /></asp:TableCell>
            <asp:TableCell ColumnSpan="2" VerticalAlign="Top"><asp:TextBox ID="txtOpportunityEdit" runat="server" width="445px" Enabled="False" Tag="X" /></asp:TableCell>
            <asp:TableCell ColumnSpan="1" VerticalAlign="Top"><asp:DropDownList ID="ddlAccountTeamEdit" runat="server" Width="325px" Enabled="False"  /></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="1" VerticalAlign="Top"><asp:Label ID="lblFunnelPhaseEdit" runat="server" Text="Funnel Phase: " Font-Bold="True" ForeColor="Black" /></asp:TableCell>
            <asp:TableCell ColumnSpan="1" VerticalAlign="Top"><asp:Label ID="lblCloseDateEdit" runat="server" Text="Close Date:" Font-Bold="True" ForeColor="Black" /></asp:TableCell>
            <asp:TableCell ColumnSpan="2" VerticalAlign="Top"><asp:Label ID="lblOpportunityComment" runat="server" Text="Opportunity Comment:" Font-Bold="True" ForeColor="Black" /></asp:TableCell>
            <asp:TableCell ColumnSpan="1" VerticalAlign="Top"><asp:Label ID="lblOpportunityDetail" runat="server" Text="Opportunity Detail: " Font-Bold="True" ForeColor="Black" /></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="1" RowSpan="1"  VerticalAlign="Top"><asp:DropDownList ID="ddlFunnelPhaseEdit" runat="server" width="150px" Enabled="False" /></asp:TableCell>
            <asp:TableCell ColumnSpan="1" RowSpan="7"  VerticalAlign="Top" HorizontalAlign="Left"><asp:Calendar ID="calCloseDateEdit" runat="server"> </asp:Calendar>  </asp:TableCell>
            <asp:TableCell ColumnSpan="2" RowSpan="7"  VerticalAlign="Top">
                <asp:TextBox ID="txtOpportunityCommentEdit" runat="server" width="450px" height= "150px" Enabled="False"/>
                        <!--********************************************************************************-->
                        <!--                                                                                -->
                        <!-- Detail Panel                                                                   -->
                        <!--                                                                                -->
                        <!--********************************************************************************-->
                    <asp:Panel ID="pnlDetail" runat="server" Visible="false" BorderColor="Black" BorderStyle="Solid" BorderWidth="5"  width="450px" height= "150px">
                        <asp:Table id="tblOpportunityDetailEdit" runat="server">
                             <asp:TableRow>
                                 <asp:TableCell ColumnSpan="2" Width="440px" VerticalAlign="Top" HorizontalAlign="Left"><asp:Label ID="lblOpportunityDetailEdit" runat="server" Text="Edit Opportunity Detail" Font-Bold="True" ForeColor="Black" /></asp:TableCell>
                             </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell ColumnSpan="2" Width="440px" VerticalAlign="Top" HorizontalAlign="Left">&nbsp;</asp:TableCell>
                            </asp:TableRow >
                             <asp:TableRow>
                                <asp:TableCell ColumnSpan="1" Width="220px" VerticalAlign="Top" HorizontalAlign="Right"><asp:Label ID="lblOpportunityDetailTypeEdit" runat="server" Text="OpportunityDetailType"></asp:Label></asp:TableCell>
                                <asp:TableCell ColumnSpan="1" Width="220px" VerticalAlign="Top" HorizontalAlign="Left"><asp:DropDownList ID="ddlOpportunityDetailTypeEdit" runat="server" Enabled="False" /></asp:TableCell>
                             </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell ColumnSpan="2" Width="440px" VerticalAlign="Top" HorizontalAlign="Left">&nbsp;</asp:TableCell>
                            </asp:TableRow >
                            <asp:TableRow>
                                <asp:TableCell ColumnSpan="2" Width="440px" VerticalAlign="Top" HorizontalAlign="Left">&nbsp;</asp:TableCell>
                            </asp:TableRow >
                             <asp:TableRow>
                                <asp:TableCell ColumnSpan="1" Width="220px" VerticalAlign="Top" HorizontalAlign="Right"><asp:Button ID="btnOpportunityDetailOK" runat="server" Text="Ok" /></asp:TableCell>
                                <asp:TableCell ColumnSpan="1" Width="220px" VerticalAlign="Top" HorizontalAlign="Left"><asp:Button ID="btnOpportunityDetailCancel" runat="server" Text="Cancel" /> </asp:TableCell>
                             </asp:TableRow>
                        </asp:Table>
                    </asp:Panel>
                    <!--********************************************************************************-->
                    <!--                                                                                -->
                    <!-- Message Panel                                                                  -->
                    <!--                                                                                -->
                    <!--********************************************************************************-->
                    <asp:Panel ID="pnlMsg" runat="server" Visible="false" BorderColor="Black" BorderStyle="Solid" BorderWidth="2"  width="440px" height= "160px">
                        <asp:Table id="Table1" runat="server">
                             <asp:TableRow>
                                 <asp:TableCell ColumnSpan="1" Width="440px" VerticalAlign="Top" HorizontalAlign="Left"><asp:Label ID="lblTitle" runat="server" Text="Title" Font-Bold="True" ForeColor="White" BackColor="Red" Width="430px"/></asp:TableCell>
                             </asp:TableRow>
                             <asp:TableRow>
                                <asp:TableCell ColumnSpan="1" Width="440px" VerticalAlign="Top" HorizontalAlign="Left"><asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Text="Message" Width="430px" Height="100px" BorderStyle="None" /></asp:TableCell>
                             </asp:TableRow>
                             <asp:TableRow>
                                <asp:TableCell ColumnSpan="1" Width="440px" VerticalAlign="Top" HorizontalAlign="Center"><asp:Button ID="btnMessageOK" runat="server" Text="Ok" /></asp:TableCell>
                             </asp:TableRow>
                        </asp:Table>
                    </asp:Panel>
            </asp:TableCell>
            <asp:TableCell ColumnSpan="1" RowSpan="10" VerticalAlign="Top">
                <asp:GridView ID="gvDetail" runat="Server" allowpaging="False" allowsorting="False"  PageSize="10" autogeneratecolumns="False" datakeynames="opportunity_state_detail_id"  emptydatatext="There are no data to display."  showfooter="false" enabled="false" >
                    <Columns> 
                        <asp:TemplateField ControlStyle-Width="50px" >
                            <ItemTemplate>
                                <asp:LinkButton ID="btnViewDetail" runat="server" Text = "Edit" CommandName="EditDetail" CommandArgument = '<%# Eval("opportunity_state_detail_id")%>'/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="opportunity_state_detail_id" HeaderText="opportunity_state_detail_id" visible="false"  />
                        <asp:BoundField DataField="opportunity_detail_id" HeaderText="opportunity_detail_id" visible="false"/>
                        <asp:BoundField DataField="detail_type_id" HeaderText="detail_type_id" visible="false"/>
                        <asp:BoundField DataField="detail_value_id" HeaderText="detail_type_id" visible="false"/>
                        <asp:BoundField DataField="detail_type_desc" HeaderText="Detail" HeaderStyle-ForeColor="Black" HeaderStyle-Width="138px" ItemStyle-HorizontalAlign="Left" ItemStyle-ForeColor="Black"  ItemStyle-Width="125px" />   
                        <asp:BoundField DataField="detail_value_desc" HeaderText="Value" HeaderStyle-ForeColor="Black" HeaderStyle-Width="137px" ItemStyle-HorizontalAlign="Center" ItemStyle-ForeColor="Black" ItemStyle-Width="125px" />   
                    </Columns>
                </asp:GridView>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="1" VerticalAlign="Top"><asp:Label ID="lblPSValueEdit" runat="server" Text="PS Value: " Font-Bold="True" ForeColor="Black" /></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="1" VerticalAlign="Top">
                <ajaxToolkit:NumericUpDownExtender ID="nudPSValue" runat="server" TargetControlID="txtPSValueEdit" Width="100" TargetButtonDownID="btnPSValueDown" TargetButtonUpID="btnPSValueUp"  Step="100" Tag="1" />
                <asp:TextBox ID="txtPSValueEdit" runat="server" width="100px" Enabled="False"  VerticalAlign="Top" /><asp:Button ID="btnPSValueUp" runat="server" Text="+" /><asp:Button ID="btnPSValueDown" runat="server" Text="-" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="1" VerticalAlign="Top"><asp:Label ID="lblWinPercentEdit" runat="server" Text="Win Percent: " Font-Bold="True" ForeColor="Black" /></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="1" VerticalAlign="Top">
                <ajaxToolkit:NumericUpDownExtender ID="nudWinPercent" runat="server" TargetControlID="txtWinPercentEdit" Width="100" TargetButtonDownID="btnWinPercentDown" TargetButtonUpID="btnWinPercentUp"  Step="5" Tag="2" />
                <asp:TextBox ID="txtWinPercentEdit" runat="server" width="100px" Enabled="False" /><asp:Button ID="btnWinPercentUp" runat="server" Text="+" /><asp:Button ID="btnWinPercentDown" runat="server" Text="-" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="1" VerticalAlign="Top"><asp:Label ID="lblOpportunityStatusEdit" runat="server" Text="Opportunity Status: " Font-Bold="True" ForeColor="Black" /></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="1" VerticalAlign="Top"><asp:DropDownList ID="ddlOpportunityStatusEdit" runat="server" width="150px" Enabled="False" /></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="1" VerticalAlign="Top"><asp:Label ID="lblRevenueUpsideEdit" runat="server" Text="Revenue Upside: " Font-Bold="True" ForeColor="Black" /></asp:TableCell>
            <asp:TableCell ColumnSpan="1" VerticalAlign="Top">&nbsp; </asp:TableCell>
            <asp:TableCell ColumnSpan="1" VerticalAlign="Top">&nbsp; </asp:TableCell>
            <asp:TableCell ColumnSpan="1" VerticalAlign="Top">&nbsp; </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="1" VerticalAlign="Top">
                <ajaxToolkit:NumericUpDownExtender ID="nudRevenueUpside" runat="server" TargetControlID="txtRevenueUpsideEdit" Width="100" TargetButtonDownID="btnRevenueUpsideDown" TargetButtonUpID="btnRevenueUpsideUP"  Step="1" Tag="3" />
                <asp:TextBox ID="txtRevenueUpsideEdit" runat="server" width="100px" Enabled="False" /><asp:Button ID="btnRevenueUpsideUP" runat="server" Text="+" /><asp:Button ID="btnRevenueUpsideDown" runat="server" Text="-" />
            </asp:TableCell>
            <asp:TableCell ColumnSpan="1" VerticalAlign="Top">&nbsp; </asp:TableCell>
            <asp:TableCell ColumnSpan="1" VerticalAlign="Top">&nbsp; </asp:TableCell>
            <asp:TableCell ColumnSpan="1" VerticalAlign="Top">&nbsp; </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="1" VerticalAlign="Top">&nbsp; </asp:TableCell>
            <asp:TableCell ColumnSpan="1" VerticalAlign="Top">&nbsp; </asp:TableCell>
            <asp:TableCell ColumnSpan="1" VerticalAlign="Top">&nbsp; </asp:TableCell>
            <asp:TableCell ColumnSpan="1" VerticalAlign="Top">&nbsp; </asp:TableCell>
        </asp:TableRow>
        </asp:Table>
    </asp:Panel>
</asp:Content>

