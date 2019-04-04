<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to check body load finish and prevent JavaScript errors for unloaded JS and HTML


<p>This sample shows how to catch the moment when the page is <strong>loaded</strong> and thus avoid Java <strong>script</strong> errors related to the incomplete loading of the page's HTML content and scripts.  This sample contains the <i><script src='?dummy=1'... ></i> tag which is positioned before the <strong>ASPxCallback</strong> declaration. This tag mimics server delay for 5 secods. If you click the <strong>link</strong> during this moment, the callback will not be sent, bu the "Please wait" message will be shown. Once the <strong>scripts</strong> are <strong>loaded</strong>, the callback will be sent to the server and properly handled.</p>

<br/>


