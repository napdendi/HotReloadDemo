package crc64d0916be76e7aa092;


public class ApplicationActivity_UnoOnBackPressedCallback
	extends androidx.activity.OnBackPressedCallback
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_handleOnBackPressed:()V:GetHandleOnBackPressedHandler\n" +
			"";
		mono.android.Runtime.register ("Microsoft.UI.Xaml.ApplicationActivity+UnoOnBackPressedCallback, Uno.UI.Runtime.Skia.Android", ApplicationActivity_UnoOnBackPressedCallback.class, __md_methods);
	}

	public ApplicationActivity_UnoOnBackPressedCallback (boolean p0)
	{
		super (p0);
		if (getClass () == ApplicationActivity_UnoOnBackPressedCallback.class) {
			mono.android.TypeManager.Activate ("Microsoft.UI.Xaml.ApplicationActivity+UnoOnBackPressedCallback, Uno.UI.Runtime.Skia.Android", "System.Boolean, System.Private.CoreLib", this, new java.lang.Object[] { p0 });
		}
	}

	public void handleOnBackPressed ()
	{
		n_handleOnBackPressed ();
	}

	private native void n_handleOnBackPressed ();

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
