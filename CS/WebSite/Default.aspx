<%-- BeginRegion Page setup --%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="ASPxperience_DataView_ItemCommand" %>

<%@ Register Assembly="DevExpress.Web.v15.1" Namespace="DevExpress.Web"
    TagPrefix="dxe" %>

<%@ Register Assembly="DevExpress.Web.v15.1" Namespace="DevExpress.Web"
    TagPrefix="dxcb" %>


<%-- EndRegion --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>How to check body load finish and prevent JavaScript errors for unloaded JavaScripts and HTML elements</title>
    <style type="text/css">
        .mylink {
            font-size: 24pt; 
            color: blue;
            cursor: pointer;
            text-decoration: underline;
        }
    </style>
    <script type="text/javascript">
var fLoaded = false;
var fID = null;

function CustomClick(id) {
    if (!fLoaded) {
        fID = id;
        document.getElementById('statusText').innerHTML = "Please wait...";
        return;
    }
    
    if (ASPxCallback1.InCallback()) 
        return;
    document.getElementById('link').innerHTML = 'Loading...';
    ASPxCallback1.SendCallback(id);
}
function Loaded() {
    fLoaded = true;
    if (fID != null)
        CustomClick(fID);
}
function CallbackComplete(s, e) {
    document.getElementById('link').innerHTML = e.result;
    document.getElementById('statusText').innerHTML = '';
}
    </script>
</head>
<body onload="Loaded()">
    <form id="form1" runat="server">
    
    <div>
    
        <span id="link" onclick="CustomClick(1)" class="mylink">Click here</span>
        
        <br />
        <span id="statusText"></span>

<!-- Slow connection simulation --><%-- SKIPJSCODE_BEGIN --%>
<script type="text/javascript" src="?dummy=1"></script>
<%-- SKIPJSCODE_END --%>

        <dxcb:ASPxCallback ID="ASPxCallback1" runat="server" OnCallback="ASPxCallback1_Callback">
            <ClientSideEvents CallbackComplete="CallbackComplete" />
        </dxcb:ASPxCallback>
        <br />
        <dxe:ASPxButton ID="ASPxButton1" runat="server" Text="Refresh">
        </dxe:ASPxButton>
        
        
    </div>
    </form>

</body>
</html>
