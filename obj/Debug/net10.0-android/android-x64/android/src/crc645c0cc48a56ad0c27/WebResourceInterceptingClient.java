package crc645c0cc48a56ad0c27;


public class WebResourceInterceptingClient
	extends crc645c0cc48a56ad0c27.InternalClient
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_shouldInterceptRequest:(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;:GetShouldInterceptRequest_Landroid_webkit_WebView_Landroid_webkit_WebResourceRequest_Handler\n" +
			"";
		mono.android.Runtime.register ("Uno.UI.Xaml.Controls.WebResourceInterceptingClient, Uno.UI.Runtime.Skia.Android", WebResourceInterceptingClient.class, __md_methods);
	}

	public WebResourceInterceptingClient ()
	{
		super ();
		if (getClass () == WebResourceInterceptingClient.class) {
			mono.android.TypeManager.Activate ("Uno.UI.Xaml.Controls.WebResourceInterceptingClient, Uno.UI.Runtime.Skia.Android", "", this, new java.lang.Object[] {  });
		}
	}

	public android.webkit.WebResourceResponse shouldInterceptRequest (android.webkit.WebView p0, android.webkit.WebResourceRequest p1)
	{
		return n_shouldInterceptRequest (p0, p1);
	}

	private native android.webkit.WebResourceResponse n_shouldInterceptRequest (android.webkit.WebView p0, android.webkit.WebResourceRequest p1);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
