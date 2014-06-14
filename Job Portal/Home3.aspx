<%@ Page Title="" Language="C#" MasterPageFile="~/Master3.Master" AutoEventWireup="true" CodeBehind="Home3.aspx.cs" Inherits="Job_Portal.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 195px;
        }
        .style9
        {
            width: 143px;
        }
        .style12
        {
            width: 192px;
        }
        .style18
        {
            width: 136px;
        }
        .style38
        {
        }
        .style47
        {
            height: 39px;
        }
        .style48
        {
            width: 195px;
            height: 39px;
        }
        .style49
        {
            width: 192px;
            height: 39px;
        }
        .style50
        {
            width: 143px;
            height: 39px;
        }
        .style51
        {
            height: 39px;
            width: 136px;
        }
        .style52
        {
            height: 12px;
            width: 195px;
        }
        .style53
        {
            height: 12px;
            width: 192px;
        }
        .style54
        {
            height: 12px;
            width: 143px;
        }
        .style55
        {
            height: 12px;
            width: 136px;
        }
        .style61
        {
            height: 117px;
            width: 315px;
        }
        .style66
        {
        }
        .style71
        {
            height: 79px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <table class="masterpagetable" cellpadding="0" cellspacing="0" frame="border">
            <tr style="border-top-style: solid; border-top-width: 2px; border-top-color: #808080">
                <td class="style2">
                    &nbsp;</td>
                <td class="style12">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style18">
                    &nbsp;</td>
                <td align="center" rowspan="2" 
                    
                    style="border-width: thin; border-color: #808080; border-style: solid solid none solid; font-family: georgia; font-size: large; font-weight: bold; font-style: normal; color: #FFFFFF; background-color: #000000;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style52">
                    &nbsp;</td>
                <td class="style53">
                    &nbsp;</td>
                <td class="style54">
                    &nbsp;</td>
                <td class="style55">
                    &nbsp;</td>
            </tr>
            <tr style="border-bottom:1px solid black;">
                <td class="style48" 
                    style="border-left-style: none; border-bottom-style: solid; border-bottom-width: 2px; border-bottom-color: #808080">
                </td>
                <td class="style49" 
                    style="border-left-style: none; border-bottom-style: solid; border-bottom-width: 2px; border-bottom-color: #808080">
                </td>
                <td class="style50" 
                    style="border-left-style: none; border-bottom-style: solid; border-bottom-width: 2px; border-bottom-color: #808080">
                </td>
                <td class="style51" 
                    style="border-left-style: none; border-bottom-style: solid; border-bottom-width: 2px; border-bottom-color: #808080">
                    &nbsp;</td>
                <td align="center" class="style47" 
                    
                    style="border-width: thin; border-color: #808080; border-style: none solid solid solid; font-family: georgia; font-size: large; font-weight: bold; font-style: normal; color: #000000">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style66" colspan="4" rowspan="4" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #808080">


                 <!--   <div id="showcase" class="showcase"> -->
		<!-- Each child div in #showcase represents a slide -->
	<!--	<div class="showcase-slide">
			<!-- Put the slide content in a div with the class .showcase-content. -->
		<!--	<div class="showcase-content">
				<img src="Images/slide1.jpg" alt="01" />
			</div>
		</div>
        <div class="showcase-slide">
			<!-- Put the slide content in a div with the class .showcase-content. -->
		<!--	<div class="showcase-content">
				<img src="Images/slide2.jpg" alt="01" />
			</div>
		</div>
        <div class="showcase-slide">
			<!-- Put the slide content in a div with the class .showcase-content. -->
		<!--	<div class="showcase-content">
				<img src="Images/slide3.jpg" alt="01" />
			</div>
		</div>
      </div> 


      <!--Inner content DIVs should always carry "contentdiv" CSS class-->
<!--Pagination DIV should always carry "paginate-SLIDERID" CSS class-->

<div id="slider1" class="sliderwrapper">

    <div class="contentdiv">
        <img src="Images/image1.jpg"/>  <br />
        <p><a href="javascript:featuredcontentslider.jumpTo('slider1', 3)">Go to 3rd slide</a></p>
    </div>

    <div class="contentdiv">
        <img src="Images/image2.jpg"/>
    </div>

    <div class="contentdiv">
        <img src="Images/image3.jpg"/>
    </div>

</div>

<div id="paginate-slider1" class="pagination">

</div>

<script type="text/javascript">

    featuredcontentslider.init({
        id: "slider1",  //id of main slider DIV
        contentsource: ["inline", ""],  //Valid values: ["inline", ""] or ["ajax", "path_to_file"]
        toc: "#increment",  //Valid values: "#increment", "markup", ["label1", "label2", etc]
        nextprev: ["Previous", "Next"],  //labels for "prev" and "next" links. Set to "" to hide.
        revealtype: "click", //Behavior of pagination links to reveal the slides: "click" or "mouseover"
        enablefade: [true, 0.04],  //[true/false, fadedegree]
        autorotate: [true, 6000],  //[true/false, pausetime]
        onChange: function (previndex, curindex) {  //event handler fired whenever script changes slide
            //previndex holds index of last slide viewed b4 current (1=1st slide, 2nd=2nd etc)
            //curindex holds index of currently shown slide (1=1st slide, 2nd=2nd etc)
        }
    })

</script>















                    </td>
                <td align="center" 
                    
                    
                    style="border-width: thin; border-color: #808080; border-style: solid solid none solid; font-family: georgia; font-size: large; font-weight: bold; font-style: normal; color: #FFFFFF;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style71" 
                    
                    
                    
                    style="border-color: #808080; border-width: thin; font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000; border-right-style: solid; border-left-style: solid;" 
                    align="center">
                    &nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;<asp:Label ID="lblShow" runat="server" Text="Welcome"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <asp:Label ID="lblShowid" runat="server"></asp:Label>
&nbsp;</td>
            </tr>
            <tr>
                <td class="style61" 
                    
                    
                    style="border-color: #808080; border-width: thin; font-family: georgia; font-size: small; font-weight: bold; font-style: normal; color: #000000; border-right-style: solid; border-left-style: solid;" 
                    width="315">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp; 
                </td>
            </tr>
            <tr>
                <td class="style38" align="center" 
                    style="border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-width: thin; border-color: #808080">
                    &nbsp;</td>
            </tr>
            </table>
    </p>
</asp:Content>
