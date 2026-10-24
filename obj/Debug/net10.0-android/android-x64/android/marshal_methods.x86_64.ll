; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [383 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [1149 x i64] [
	i64 u0x00067106fe65b365, ; 0: Microsoft.Kiota.Serialization.Text.dll => 217
	i64 u0x001e58127c546039, ; 1: lib_System.Globalization.dll.so => 42
	i64 u0x0024d0f62dee05bd, ; 2: Xamarin.KotlinX.Coroutines.Core.dll => 338
	i64 u0x0071cf2d27b7d61e, ; 3: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 320
	i64 u0x00b3aadb3a4c4038, ; 4: lib_Refit.dll.so => 219
	i64 u0x01109b0e4d99e61f, ; 5: System.ComponentModel.Annotations.dll => 13
	i64 u0x022f31be406de945, ; 6: Microsoft.Extensions.Options.ConfigurationExtensions => 209
	i64 u0x0284512fad379f7e, ; 7: System.Runtime.Handles => 107
	i64 u0x02abedc11addc1ed, ; 8: lib_Mono.Android.Runtime.dll.so => 174
	i64 u0x02f55bf70672f5c8, ; 9: lib_System.IO.FileSystem.DriveInfo.dll.so => 48
	i64 u0x032267b2a94db371, ; 10: lib_Xamarin.AndroidX.AppCompat.dll.so => 269
	i64 u0x033a1d0324ba06bd, ; 11: Microsoft.IO.RecyclableMemoryStream.dll => 211
	i64 u0x03621c804933a890, ; 12: System.Buffers => 7
	i64 u0x0399610510a38a38, ; 13: lib_System.Private.DataContractSerialization.dll.so => 88
	i64 u0x03c4743d1c68b959, ; 14: CommonServiceLocator.dll => 178
	i64 u0x047408741db2431a, ; 15: Xamarin.AndroidX.DynamicAnimation => 291
	i64 u0x04d19ea444b78ec6, ; 16: Uno.Extensions.Serialization.Refit.dll => 248
	i64 u0x0517ef04e06e9f76, ; 17: System.Net.Primitives => 72
	i64 u0x0565d18c6da3de38, ; 18: Xamarin.AndroidX.RecyclerView => 314
	i64 u0x0581db89237110e9, ; 19: lib_System.Collections.dll.so => 12
	i64 u0x05a1c25e78e22d87, ; 20: lib_System.Runtime.CompilerServices.Unsafe.dll.so => 104
	i64 u0x05bf1224940324ca, ; 21: Uno.Core.Extensions.Disposables.dll => 230
	i64 u0x0600544dd3961080, ; 22: HarfBuzzSharp => 180
	i64 u0x06388ffe9f6c161a, ; 23: System.Xml.Linq.dll => 159
	i64 u0x06600c4c124cb358, ; 24: System.Configuration.dll => 19
	i64 u0x0680a433c781bb3d, ; 25: Xamarin.AndroidX.Collection.Jvm => 277
	i64 u0x069fff96ec92a91d, ; 26: System.Xml.XPath.dll => 164
	i64 u0x06b144cbebb60242, ; 27: Uno.Diagnostics.Eventing.dll => 234
	i64 u0x070b0847e18dab68, ; 28: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 293
	i64 u0x0739448d84d3b016, ; 29: lib_Xamarin.AndroidX.VectorDrawable.dll.so => 324
	i64 u0x07469f2eecce9e85, ; 30: mscorlib.dll => 170
	i64 u0x07dcdc7460a0c5e4, ; 31: System.Collections.NonGeneric => 10
	i64 u0x08122e52765333c8, ; 32: lib_Microsoft.Extensions.Logging.Debug.dll.so => 205
	i64 u0x0822aec647387e5b, ; 33: Uno.Extensions.Configuration.dll => 236
	i64 u0x088610fc2509f69e, ; 34: lib_Xamarin.AndroidX.VectorDrawable.Animated.dll.so => 325
	i64 u0x08a7c865576bbde7, ; 35: System.Reflection.Primitives => 98
	i64 u0x08c9d051a4a817e5, ; 36: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 288
	i64 u0x08f266f8aa30ea83, ; 37: lib_Microsoft.Kiota.Serialization.Text.dll.so => 217
	i64 u0x08f3c9788ee2153c, ; 38: Xamarin.AndroidX.DrawerLayout => 290
	i64 u0x09138715c92dba90, ; 39: lib_System.ComponentModel.Annotations.dll.so => 13
	i64 u0x0919c28b89381a0b, ; 40: lib_Microsoft.Extensions.Options.dll.so => 208
	i64 u0x092266563089ae3e, ; 41: lib_System.Collections.NonGeneric.dll.so => 10
	i64 u0x09d144a7e214d457, ; 42: System.Security.Cryptography => 129
	i64 u0x09e2b9f743db21a8, ; 43: lib_System.Reflection.Metadata.dll.so => 97
	i64 u0x0abb3e2b271edc45, ; 44: System.Threading.Channels.dll => 143
	i64 u0x0b06b1feab070143, ; 45: System.Formats.Tar => 39
	i64 u0x0b6aff547b84fbe9, ; 46: Xamarin.KotlinX.Serialization.Core.Jvm => 341
	i64 u0x0be2e1f8ce4064ed, ; 47: Xamarin.AndroidX.ViewPager => 327
	i64 u0x0c0edaaebec7f4bb, ; 48: Microsoft.Extensions.Logging.Console => 204
	i64 u0x0c59ad9fbbd43abe, ; 49: Mono.Android => 175
	i64 u0x0c74af560004e816, ; 50: Microsoft.Win32.Registry.dll => 5
	i64 u0x0c83c82812e96127, ; 51: lib_System.Net.Mail.dll.so => 68
	i64 u0x0ce6935d49a012ea, ; 52: lib_Uno.Core.Extensions.Collections.dll.so => 229
	i64 u0x0d13cd7cce4284e4, ; 53: System.Security.SecureString => 132
	i64 u0x0d3b5ab8b2766190, ; 54: lib_Microsoft.Bcl.AsyncInterfaces.dll.so => 181
	i64 u0x0d70f04f7f0d4f44, ; 55: lib_Uno.UI.HotDesign.PropertyGrid.dll.so => 376
	i64 u0x0da13792b76f89bf, ; 56: lib_Microsoft.Extensions.Configuration.UserSecrets.dll.so => 189
	i64 u0x0e04e702012f8463, ; 57: Xamarin.AndroidX.Emoji2 => 292
	i64 u0x0e14e73a54dda68e, ; 58: lib_System.Net.NameResolution.dll.so => 69
	i64 u0x0e3e3546f7145ec7, ; 59: Uno.UI.Runtime.Skia => 263
	i64 u0x0ebc6f110dd392e7, ; 60: lib_Uno.Extensions.Hosting.WinUI.dll.so => 356
	i64 u0x0ec01b05613190b9, ; 61: SkiaSharp.Views.Android.dll => 224
	i64 u0x0f2efb04303555fb, ; 62: lib_Uno.UI.App.Mcp.Messages.dll.so => 258
	i64 u0x0f5e7abaa7cf470a, ; 63: System.Net.HttpListener => 67
	i64 u0x0ffd31f49f95aa54, ; 64: Uno.UI.HotDesign.Hierarchy.dll => 373
	i64 u0x1001f97bbe242e64, ; 65: System.IO.UnmanagedMemoryStream => 57
	i64 u0x102861e4055f511a, ; 66: Microsoft.Bcl.AsyncInterfaces.dll => 181
	i64 u0x102a31b45304b1da, ; 67: Xamarin.AndroidX.CustomView => 287
	i64 u0x10528185966e1bc4, ; 68: Uno.Extensions.Logging.WinUI.dll => 359
	i64 u0x1065c4cb554c3d75, ; 69: System.IO.IsolatedStorage.dll => 52
	i64 u0x10930c8576e334f2, ; 70: HotReloadDemo.dll => 0
	i64 u0x10a461bde7caa83d, ; 71: Uno.UI.HotDesign.CommunityToolkit => 372
	i64 u0x10f6cfcbcf801616, ; 72: System.IO.Compression.Brotli => 43
	i64 u0x114443cdcf2091f1, ; 73: System.Security.Cryptography.Primitives => 127
	i64 u0x116b98357c9d923c, ; 74: lib_Uno.Extensions.Core.UI.dll.so => 355
	i64 u0x11a603952763e1d4, ; 75: System.Net.Mail => 68
	i64 u0x11a70d0e1009fb11, ; 76: System.Net.WebSockets.dll => 83
	i64 u0x12128b3f59302d47, ; 77: lib_System.Xml.Serialization.dll.so => 161
	i64 u0x123639456fb056da, ; 78: System.Reflection.Emit.Lightweight.dll => 94
	i64 u0x124f7048715ad9a7, ; 79: lib_Uno.Extensions.Storage.UI.dll.so => 363
	i64 u0x12521e9764603eaa, ; 80: lib_System.Resources.Reader.dll.so => 101
	i64 u0x125b7f94acb989db, ; 81: Xamarin.AndroidX.RecyclerView.dll => 314
	i64 u0x12d3b63863d4ab0b, ; 82: lib_System.Threading.Overlapped.dll.so => 144
	i64 u0x1335cab027872f4a, ; 83: Uno.Diagnostics.Eventing => 234
	i64 u0x134eab1061c395ee, ; 84: System.Transactions => 154
	i64 u0x138567fa954faa55, ; 85: Xamarin.AndroidX.Browser => 274
	i64 u0x13beedefb0e28a45, ; 86: lib_System.Xml.XmlDocument.dll.so => 165
	i64 u0x13f1e5e209e91af4, ; 87: lib_Java.Interop.dll.so => 172
	i64 u0x143d8ea60a6a4011, ; 88: Microsoft.Extensions.DependencyInjection.Abstractions => 191
	i64 u0x1497051b917530bd, ; 89: lib_System.Net.WebSockets.dll.so => 83
	i64 u0x14d612a531c79c05, ; 90: Xamarin.JSpecify.dll => 335
	i64 u0x152a448bd1e745a7, ; 91: Microsoft.Win32.Primitives => 4
	i64 u0x1557de0138c445f4, ; 92: lib_Microsoft.Win32.Registry.dll.so => 5
	i64 u0x1573ff102697d837, ; 93: Uno.Foundation.Logging.dll => 254
	i64 u0x159cc6c81072f00e, ; 94: lib_System.Diagnostics.EventLog.dll.so => 226
	i64 u0x15bdc156ed462f2f, ; 95: lib_System.IO.FileSystem.dll.so => 51
	i64 u0x15e300c2c1668655, ; 96: System.Resources.Writer.dll => 103
	i64 u0x16bf2a22df043a09, ; 97: System.IO.Pipes.dll => 56
	i64 u0x16ea2b318ad2d830, ; 98: System.Security.Cryptography.Algorithms => 122
	i64 u0x16eeae54c7ebcc08, ; 99: System.Reflection.dll => 100
	i64 u0x17125c9a85b4929f, ; 100: lib_netstandard.dll.so => 171
	i64 u0x1716866f7416792e, ; 101: lib_System.Security.AccessControl.dll.so => 120
	i64 u0x172ccba35f902721, ; 102: Uno.AI.XamlGeneration.Contracts => 368
	i64 u0x1749e14ff4710666, ; 103: lib_Uno.Fonts.OpenSans.dll.so => 252
	i64 u0x174f71c46216e44a, ; 104: Xamarin.KotlinX.Coroutines.Core => 338
	i64 u0x1752c12f1e1fc00c, ; 105: System.Core => 21
	i64 u0x17549effa322a938, ; 106: Uno.UI.HotDesign.Client.Core => 370
	i64 u0x17f9358913beb16a, ; 107: System.Text.Encodings.Web => 139
	i64 u0x1809fb23f29ba44a, ; 108: lib_System.Reflection.TypeExtensions.dll.so => 99
	i64 u0x1839963c9b7fa0fd, ; 109: Uno.Extensions.Navigation.UI => 361
	i64 u0x18402a709e357f3b, ; 110: lib_Xamarin.KotlinX.Serialization.Core.Jvm.dll.so => 341
	i64 u0x18a9befae51bb361, ; 111: System.Net.WebClient => 79
	i64 u0x193d7a04b7eda8bc, ; 112: lib_Xamarin.AndroidX.Print.dll.so => 312
	i64 u0x19777fba3c41b398, ; 113: Xamarin.AndroidX.Startup.StartupRuntime.dll => 319
	i64 u0x19a4c090f14ebb66, ; 114: System.Security.Claims => 121
	i64 u0x19bc90af88e68474, ; 115: lib_Uno.Core.Extensions.Equality.dll.so => 231
	i64 u0x1a539258f88190d6, ; 116: lib_System.Linq.Async.dll.so => 227
	i64 u0x1a91866a319e9259, ; 117: lib_System.Collections.Concurrent.dll.so => 8
	i64 u0x1aac34d1917ba5d3, ; 118: lib_System.dll.so => 168
	i64 u0x1aea8f1c3b282172, ; 119: lib_System.Net.Ping.dll.so => 71
	i64 u0x1afd3676467797e6, ; 120: Uno.Extensions.Storage => 249
	i64 u0x1bb3620f9bfed3f5, ; 121: Uno.UI.Adapter.Microsoft.Extensions.Logging => 256
	i64 u0x1bc766e07b2b4241, ; 122: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 315
	i64 u0x1c292b1598348d77, ; 123: Microsoft.Extensions.Diagnostics.dll => 192
	i64 u0x1c422a8fbc506ee1, ; 124: lib_Uno.Extensions.Navigation.Toolkit.UI.dll.so => 360
	i64 u0x1c5217a9e4973753, ; 125: lib_Microsoft.Extensions.FileProviders.Physical.dll.so => 195
	i64 u0x1c753b5ff15bce1b, ; 126: Mono.Android.Runtime.dll => 174
	i64 u0x1cd47467799d8250, ; 127: System.Threading.Tasks.dll => 148
	i64 u0x1d23eafdc6dc346c, ; 128: System.Globalization.Calendars.dll => 40
	i64 u0x1db6820994506bf5, ; 129: System.IO.FileSystem.AccessControl.dll => 47
	i64 u0x1dbb0c2c6a999acb, ; 130: System.Diagnostics.StackTrace => 30
	i64 u0x1e7c31185e2fb266, ; 131: lib_System.Threading.Tasks.Parallel.dll.so => 147
	i64 u0x1ed8fcce5e9b50a0, ; 132: Microsoft.Extensions.Options.dll => 208
	i64 u0x1f055d15d807e1b2, ; 133: System.Xml.XmlSerializer => 166
	i64 u0x1f1ed22c1085f044, ; 134: lib_System.Diagnostics.FileVersionInfo.dll.so => 28
	i64 u0x1f61df9c5b94d2c1, ; 135: lib_System.Numerics.dll.so => 86
	i64 u0x1f750bb5421397de, ; 136: lib_Xamarin.AndroidX.Tracing.Tracing.dll.so => 321
	i64 u0x1f7fcab141728c45, ; 137: Xamarin.AndroidX.Legacy.Support.Core.UI => 296
	i64 u0x20237ea48006d7a8, ; 138: lib_System.Net.WebClient.dll.so => 79
	i64 u0x209375905fcc1bad, ; 139: lib_System.IO.Compression.Brotli.dll.so => 43
	i64 u0x20c7339f8c515d8f, ; 140: lib_Uno.UI.HotDesign.Xaml.Interactions.dll.so => 378
	i64 u0x20fab3cf2dfbc8df, ; 141: lib_System.Diagnostics.Process.dll.so => 29
	i64 u0x2110167c128cba15, ; 142: System.Globalization => 42
	i64 u0x21419508838f7547, ; 143: System.Runtime.CompilerServices.VisualC => 105
	i64 u0x2174319c0d835bc9, ; 144: System.Runtime => 119
	i64 u0x2198e5bc8b7153fa, ; 145: Xamarin.AndroidX.Annotation.Experimental.dll => 267
	i64 u0x219ea1b751a4dee4, ; 146: lib_System.IO.Compression.ZipFile.dll.so => 45
	i64 u0x21b5c677c2cb9a31, ; 147: lib_Uno.Core.Extensions.Logging.Singleton.dll.so => 233
	i64 u0x21cc7e445dcd5469, ; 148: System.Reflection.Emit.ILGeneration => 93
	i64 u0x224538d85ed15a82, ; 149: System.IO.Pipes => 56
	i64 u0x22461382310e5e72, ; 150: Uno.Xaml.dll => 351
	i64 u0x22908438c6bed1af, ; 151: lib_System.Threading.Timer.dll.so => 151
	i64 u0x231ee10f66783c13, ; 152: Uno.UI.Composition => 345
	i64 u0x237be844f1f812c7, ; 153: System.Threading.Thread.dll => 149
	i64 u0x23852b3bdc9f7096, ; 154: System.Resources.ResourceManager => 102
	i64 u0x23986dd7e5d4fc01, ; 155: System.IO.FileSystem.Primitives.dll => 49
	i64 u0x2407aef2bbe8fadf, ; 156: System.Console => 20
	i64 u0x240abe014b27e7d3, ; 157: Xamarin.AndroidX.Core.dll => 282
	i64 u0x242bf4514622c837, ; 158: Xamarin.AndroidX.Legacy.Support.V4.dll => 298
	i64 u0x247619fe4413f8bf, ; 159: System.Runtime.Serialization.Primitives.dll => 116
	i64 u0x24ca2f4d947724b1, ; 160: Uno.Extensions.Localization.dll => 241
	i64 u0x256bb42e523417dd, ; 161: Uno.Extensions.Hosting.WinUI => 356
	i64 u0x257ad007e4c5d230, ; 162: lib_Uno.Extensions.Logging.WinUI.dll.so => 359
	i64 u0x2643615a57920257, ; 163: Xamarin.AndroidX.Legacy.Support.V4 => 298
	i64 u0x26465d2492645e75, ; 164: Uno.UI.App.Mcp.Messages.dll => 258
	i64 u0x2662c629b96b0b30, ; 165: lib_Xamarin.Kotlin.StdLib.dll.so => 336
	i64 u0x268c1439f13bcc29, ; 166: lib_Microsoft.Extensions.Primitives.dll.so => 210
	i64 u0x26a670e154a9c54b, ; 167: System.Reflection.Extensions.dll => 96
	i64 u0x26d077d9678fe34f, ; 168: System.IO.dll => 58
	i64 u0x2759af78ab94d39b, ; 169: System.Net.WebSockets => 83
	i64 u0x27b410442fad6cf1, ; 170: Java.Interop.dll => 172
	i64 u0x27b97e0d52c3034a, ; 171: System.Diagnostics.Debug => 26
	i64 u0x2801845a2c71fbfb, ; 172: System.Net.Primitives.dll => 72
	i64 u0x283248a48688210b, ; 173: Uno.UI => 346
	i64 u0x2855ff2e8947532e, ; 174: Uno.Fonts.Fluent.dll => 250
	i64 u0x286835e259162700, ; 175: lib_Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so => 313
	i64 u0x288f0dc6b8b36b5f, ; 176: Refit.dll => 219
	i64 u0x28e52865585a1ebe, ; 177: Microsoft.Extensions.Diagnostics.Abstractions.dll => 193
	i64 u0x2927d345f3daec35, ; 178: SkiaSharp.dll => 220
	i64 u0x294b9b92ac1a634f, ; 179: Microsoft.Kiota.Serialization.Text => 217
	i64 u0x29ead3982a9daddf, ; 180: HotReloadDemo => 0
	i64 u0x2a3b095612184159, ; 181: lib_System.Net.NetworkInformation.dll.so => 70
	i64 u0x2a6507a5ffabdf28, ; 182: System.Diagnostics.TraceSource.dll => 33
	i64 u0x2ac1e200ffb85b64, ; 183: lib_Uno.Extensions.Http.Kiota.dll.so => 240
	i64 u0x2ad5d6b13b7a3e04, ; 184: System.ComponentModel.DataAnnotations.dll => 14
	i64 u0x2af298f63581d886, ; 185: System.Text.RegularExpressions.dll => 141
	i64 u0x2afc1c4f898552ee, ; 186: lib_System.Formats.Asn1.dll.so => 38
	i64 u0x2b4d4904cebfa4e9, ; 187: Microsoft.Extensions.FileSystemGlobbing => 196
	i64 u0x2b6989d78cba9a15, ; 188: Xamarin.AndroidX.Concurrent.Futures.dll => 278
	i64 u0x2c4c3b619f1b41f8, ; 189: Xamarin.AndroidX.AsyncLayoutInflater.dll => 273
	i64 u0x2c52b6785191227e, ; 190: lib_Microsoft.Extensions.Logging.Configuration.dll.so => 203
	i64 u0x2cbd9262ca785540, ; 191: lib_System.Text.Encoding.CodePages.dll.so => 136
	i64 u0x2cc9e1fed6257257, ; 192: lib_System.Reflection.Emit.Lightweight.dll.so => 94
	i64 u0x2cd723e9fe623c7c, ; 193: lib_System.Private.Xml.Linq.dll.so => 90
	i64 u0x2d169d318a968379, ; 194: System.Threading.dll => 152
	i64 u0x2d1a116bc3e7586c, ; 195: Microsoft.Kiota.Serialization.Form.dll => 214
	i64 u0x2d5ffcae1ad0aaca, ; 196: System.Data.dll => 24
	i64 u0x2db915caf23548d2, ; 197: System.Text.Json.dll => 140
	i64 u0x2dcaa0bb15a4117a, ; 198: System.IO.UnmanagedMemoryStream.dll => 57
	i64 u0x2ddb12e499efdd14, ; 199: Uno.Extensions.Http.Kiota.dll => 240
	i64 u0x2ddc23ce366af58c, ; 200: Microsoft.Kiota.Serialization.Json.dll => 215
	i64 u0x2e2ced2c3c6a1edc, ; 201: lib_System.Threading.AccessControl.dll.so => 142
	i64 u0x2e5a40c319acb800, ; 202: System.IO.FileSystem => 51
	i64 u0x2f02f94df3200fe5, ; 203: System.Diagnostics.Process => 29
	i64 u0x2f2e98e1c89b1aff, ; 204: System.Xml.ReaderWriter => 160
	i64 u0x2f5911d9ba814e4e, ; 205: System.Diagnostics.Tracing => 34
	i64 u0x2f84070a459bc31f, ; 206: lib_System.Xml.dll.so => 167
	i64 u0x2f929b94724a0444, ; 207: Uno.Fonts.OpenSans => 252
	i64 u0x2ff49de6a71764a1, ; 208: lib_Microsoft.Extensions.Http.dll.so => 199
	i64 u0x302f1b4dc6bdc050, ; 209: Uno.UI.RemoteControl.Messaging.dll => 262
	i64 u0x309ee9eeec09a71e, ; 210: lib_Xamarin.AndroidX.Fragment.dll.so => 294
	i64 u0x30c6dda129408828, ; 211: System.IO.IsolatedStorage => 52
	i64 u0x30e7aecf2b6bd6a5, ; 212: lib_SkiaSharp.SceneGraph.dll.so => 222
	i64 u0x31195fef5d8fb552, ; 213: _Microsoft.Android.Resource.Designer.dll => 382
	i64 u0x312c8ed623cbfc8d, ; 214: Xamarin.AndroidX.Window.dll => 329
	i64 u0x31496b779ed0663d, ; 215: lib_System.Reflection.DispatchProxy.dll.so => 92
	i64 u0x31c3fc2f785d7148, ; 216: Uno.Extensions.Serialization.Http => 247
	i64 u0x31fa96037ec9470c, ; 217: Uno.Extensions.Navigation.Toolkit.UI.dll => 360
	i64 u0x32243413e774362a, ; 218: Xamarin.AndroidX.CardView.dll => 275
	i64 u0x3235427f8d12dae1, ; 219: lib_System.Drawing.Primitives.dll.so => 35
	i64 u0x32aa989ff07a84ff, ; 220: lib_System.Xml.ReaderWriter.dll.so => 160
	i64 u0x332a304caa6ae359, ; 221: lib_Uno.UI.HotDesign.MessageRouting.dll.so => 374
	i64 u0x33642d5508314e46, ; 222: Microsoft.Extensions.FileSystemGlobbing.dll => 196
	i64 u0x337f012a75968fc4, ; 223: Uno.Fonts.Roboto.dll => 253
	i64 u0x33829542f112d59b, ; 224: System.Collections.Immutable => 9
	i64 u0x340c4458ce55db90, ; 225: lib_HotReloadDemo.dll.so => 0
	i64 u0x341abc357fbb4ebf, ; 226: lib_System.Net.Sockets.dll.so => 78
	i64 u0x346a212343615ac5, ; 227: lib_System.Linq.AsyncEnumerable.dll.so => 59
	i64 u0x3496c1e2dcaf5ecc, ; 228: lib_System.IO.Pipes.AccessControl.dll.so => 55
	i64 u0x34ba4f98e908c741, ; 229: Uno.UI.Toolkit => 350
	i64 u0x34bd75e3edd6f65d, ; 230: Uno.Extensions.Core => 237
	i64 u0x34d5776a14f55c84, ; 231: lib_Uno.Toolkit.WinUI.dll.so => 366
	i64 u0x34f847545107e6d0, ; 232: lib_Microsoft.Kiota.Serialization.Multipart.dll.so => 216
	i64 u0x353590da528c9d22, ; 233: System.ComponentModel.Annotations => 13
	i64 u0x3549870798b4cd30, ; 234: lib_Xamarin.AndroidX.ViewPager2.dll.so => 328
	i64 u0x355282fc1c909694, ; 235: Microsoft.Extensions.Configuration => 182
	i64 u0x3552fc5d578f0fbf, ; 236: Xamarin.AndroidX.Arch.Core.Common => 271
	i64 u0x355c649948d55d97, ; 237: lib_System.Runtime.Intrinsics.dll.so => 111
	i64 u0x3628ab68db23a01a, ; 238: lib_System.Diagnostics.Tools.dll.so => 32
	i64 u0x363b20822dde19a3, ; 239: Uno.Extensions.Storage.UI.dll => 363
	i64 u0x3673b042508f5b6b, ; 240: lib_System.Runtime.Extensions.dll.so => 106
	i64 u0x36740f1a8ecdc6c4, ; 241: System.Numerics => 86
	i64 u0x367a3676061023d7, ; 242: Uno.UI.FluentTheme.v1.dll => 348
	i64 u0x36b2b50fdf589ae2, ; 243: System.Reflection.Emit.Lightweight => 94
	i64 u0x36cada77dc79928b, ; 244: System.IO.MemoryMappedFiles => 53
	i64 u0x374ef46b06791af6, ; 245: System.Reflection.Primitives.dll => 98
	i64 u0x376bf93e521a5417, ; 246: lib_Xamarin.Jetbrains.Annotations.dll.so => 334
	i64 u0x3777009967682ff9, ; 247: lib_Uno.Extensions.Localization.dll.so => 241
	i64 u0x3788d607cb52bd77, ; 248: lib_Uno.Extensions.Hosting.dll.so => 238
	i64 u0x37bc29f3183003b6, ; 249: lib_System.IO.dll.so => 58
	i64 u0x380134e03b1e160a, ; 250: System.Collections.Immutable.dll => 9
	i64 u0x38049b5c59b39324, ; 251: System.Runtime.CompilerServices.Unsafe => 104
	i64 u0x3845db321af44b80, ; 252: Uno.UI.FluentTheme => 347
	i64 u0x385c17636bb6fe6e, ; 253: Xamarin.AndroidX.CustomView.dll => 287
	i64 u0x38869c811d74050e, ; 254: System.Net.NameResolution.dll => 69
	i64 u0x393c226616977fdb, ; 255: lib_Xamarin.AndroidX.ViewPager.dll.so => 327
	i64 u0x39aa39fda111d9d3, ; 256: Newtonsoft.Json => 218
	i64 u0x39c3107c28752af1, ; 257: lib_Microsoft.Extensions.FileProviders.Abstractions.dll.so => 194
	i64 u0x3a9b6c5ebeb4b1b9, ; 258: Microsoft.Extensions.Logging.EventLog => 206
	i64 u0x3ab5859054645f72, ; 259: System.Security.Cryptography.Primitives.dll => 127
	i64 u0x3ad75090c3fac0e9, ; 260: lib_Xamarin.AndroidX.ResourceInspection.Annotation.dll.so => 315
	i64 u0x3ae44ac43a1fbdbb, ; 261: System.Runtime.Serialization => 118
	i64 u0x3b860f9932505633, ; 262: lib_System.Text.Encoding.Extensions.dll.so => 137
	i64 u0x3baca4076d706de1, ; 263: Uno.UI.HotDesign.CommunityToolkit.dll => 372
	i64 u0x3be99b43dd39dd37, ; 264: Xamarin.AndroidX.SavedState.SavedState.Android => 317
	i64 u0x3befcbd1160b62f8, ; 265: Uno.Fonts.Inter => 251
	i64 u0x3c3aafb6b3a00bf6, ; 266: lib_System.Security.Cryptography.X509Certificates.dll.so => 128
	i64 u0x3c4049146b59aa90, ; 267: System.Runtime.InteropServices.JavaScript => 108
	i64 u0x3c7c495f58ac5ee9, ; 268: Xamarin.Kotlin.StdLib => 336
	i64 u0x3c7e5ed3d5db71bb, ; 269: System.Security => 133
	i64 u0x3cd9d281d402eb9b, ; 270: Xamarin.AndroidX.Browser.dll => 274
	i64 u0x3d1c50cc001a991e, ; 271: Xamarin.Google.Guava.ListenableFuture.dll => 333
	i64 u0x3d1f54d6b217cd0f, ; 272: Microsoft.Extensions.Configuration.UserSecrets => 189
	i64 u0x3d2b1913edfc08d7, ; 273: lib_System.Threading.ThreadPool.dll.so => 150
	i64 u0x3d46f0b995082740, ; 274: System.Xml.Linq => 159
	i64 u0x3d9c2a242b040a50, ; 275: lib_Xamarin.AndroidX.Core.dll.so => 282
	i64 u0x3db495de2204755c, ; 276: Microsoft.Extensions.Configuration.FileExtensions => 187
	i64 u0x3dbb6b9f5ab90fa7, ; 277: lib_Xamarin.AndroidX.DynamicAnimation.dll.so => 291
	i64 u0x3dd439ce7a88088b, ; 278: lib_Uno.UI.HotDesign.Hierarchy.dll.so => 373
	i64 u0x3e4faa6a59e20b1e, ; 279: Uno.UI.HotDesign.MessageRouting => 374
	i64 u0x3e53d601a7b95d2e, ; 280: lib_Uno.Extensions.Authentication.dll.so => 235
	i64 u0x3e5441657549b213, ; 281: Xamarin.AndroidX.ResourceInspection.Annotation => 315
	i64 u0x3e57d4d195c53c2e, ; 282: System.Reflection.TypeExtensions => 99
	i64 u0x3e616ab4ed1f3f15, ; 283: lib_System.Data.dll.so => 24
	i64 u0x3f1d226e6e06db7e, ; 284: Xamarin.AndroidX.SlidingPaneLayout.dll => 318
	i64 u0x3f510adf788828dd, ; 285: System.Threading.Tasks.Extensions => 146
	i64 u0x3f6f5914291cdcf7, ; 286: Microsoft.Extensions.Hosting.Abstractions => 198
	i64 u0x407740ff2e914d86, ; 287: Xamarin.AndroidX.Print.dll => 312
	i64 u0x40c98b6bd77346d4, ; 288: Microsoft.VisualBasic.dll => 3
	i64 u0x41833cf766d27d96, ; 289: mscorlib => 170
	i64 u0x41cab042be111c34, ; 290: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 270
	i64 u0x423a9ecc4d905a88, ; 291: lib_System.Resources.ResourceManager.dll.so => 102
	i64 u0x423bf51ae7def810, ; 292: System.Xml.XPath => 164
	i64 u0x42462ff15ddba223, ; 293: System.Resources.Reader.dll => 101
	i64 u0x4291015ff4e5ef71, ; 294: Xamarin.AndroidX.Core.ViewTree.dll => 285
	i64 u0x4295dc09d350b651, ; 295: Uno.Extensions.Serialization.Refit => 248
	i64 u0x42a31b86e6ccc3f0, ; 296: System.Diagnostics.Contracts => 25
	i64 u0x430e95b891249788, ; 297: lib_System.Reflection.Emit.dll.so => 95
	i64 u0x43375950ec7c1b6a, ; 298: netstandard.dll => 171
	i64 u0x434c4e1d9284cdae, ; 299: Mono.Android.dll => 175
	i64 u0x437d06c381ed575a, ; 300: lib_Microsoft.VisualBasic.dll.so => 3
	i64 u0x43c077442b230f64, ; 301: Xamarin.AndroidX.Tracing.Tracing.Android => 322
	i64 u0x43e8ca5bc927ff37, ; 302: lib_Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so => 293
	i64 u0x43ee9ed9f6ac86fc, ; 303: Microsoft.Extensions.Logging.EventSource.dll => 207
	i64 u0x43ffdb4d66f61308, ; 304: Microsoft.Extensions.Logging.Console.dll => 204
	i64 u0x448bd33429269b19, ; 305: Microsoft.CSharp => 1
	i64 u0x44942f1193b90245, ; 306: lib_Uno.UI.Adapter.Microsoft.Extensions.Logging.dll.so => 256
	i64 u0x4499fa3c8e494654, ; 307: lib_System.Runtime.Serialization.Primitives.dll.so => 116
	i64 u0x4515080865a951a5, ; 308: Xamarin.Kotlin.StdLib.dll => 336
	i64 u0x454b4d1e66bb783c, ; 309: Xamarin.AndroidX.Lifecycle.Process => 302
	i64 u0x45c40276a42e283e, ; 310: System.Diagnostics.TraceSource => 33
	i64 u0x45d443f2a29adc37, ; 311: System.AppContext.dll => 6
	i64 u0x45decad1218d1192, ; 312: Uno.Core.Extensions.Equality.dll => 231
	i64 u0x4712d4f69222f133, ; 313: lib_SkiaSharp.Views.Windows.dll.so => 352
	i64 u0x47358bd471172e1d, ; 314: lib_System.Xml.Linq.dll.so => 159
	i64 u0x473af9a103273735, ; 315: lib_Uno.Toolkit.WinUI.Simple.dll.so => 367
	i64 u0x4746648ac1f0eef4, ; 316: lib_Uno.UI.HotDesign.Xaml.Interactivity.dll.so => 379
	i64 u0x47598cc3106f5ca5, ; 317: Uno.UI.HotDesign.Messaging => 260
	i64 u0x480c0a47dd42dd81, ; 318: lib_System.IO.MemoryMappedFiles.dll.so => 53
	i64 u0x488d293220a4fe37, ; 319: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 297
	i64 u0x49d93aa6c5bca5c5, ; 320: Uno.UI.Runtime.Skia.dll => 263
	i64 u0x49e952f19a4e2022, ; 321: System.ObjectModel => 87
	i64 u0x49f61f655a6a21de, ; 322: Microsoft.Extensions.Localization.Abstractions.dll => 200
	i64 u0x49f9e6948a8131e4, ; 323: lib_Xamarin.AndroidX.VersionedParcelable.dll.so => 326
	i64 u0x4a0b4d28cc5945ae, ; 324: Microsoft.Extensions.Configuration.CommandLine => 185
	i64 u0x4a7a18981dbd56bc, ; 325: System.IO.Compression.FileSystem.dll => 44
	i64 u0x4a84f946e042885e, ; 326: lib_Uno.Core.Extensions.Disposables.dll.so => 230
	i64 u0x4b07a0ed0ab33ff4, ; 327: System.Runtime.Extensions.dll => 106
	i64 u0x4b576d47ac054f3c, ; 328: System.IO.FileSystem.AccessControl => 47
	i64 u0x4b7b6532ded934b7, ; 329: System.Text.Json => 140
	i64 u0x4b7f698e07b2b2e9, ; 330: lib_Uno.Foundation.dll.so => 342
	i64 u0x4bf547f87e5016a8, ; 331: lib_SkiaSharp.Views.Android.dll.so => 224
	i64 u0x4c11677a3fc8281a, ; 332: Uno.Extensions.Http => 239
	i64 u0x4c2029a97af23a8d, ; 333: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.Android => 308
	i64 u0x4c7755cf07ad2d5f, ; 334: System.Net.Http.Json.dll => 65
	i64 u0x4cc5f15266470798, ; 335: lib_Xamarin.AndroidX.Loader.dll.so => 309
	i64 u0x4cf6f67dc77aacd2, ; 336: System.Net.NetworkInformation.dll => 70
	i64 u0x4d3183dd245425d4, ; 337: System.Net.WebSockets.Client.dll => 82
	i64 u0x4d479f968a05e504, ; 338: System.Linq.Expressions.dll => 60
	i64 u0x4d55a010ffc4faff, ; 339: System.Private.Xml => 91
	i64 u0x4d5cbe77561c5b2e, ; 340: System.Web.dll => 157
	i64 u0x4d77512dbd86ee4c, ; 341: lib_Xamarin.AndroidX.Arch.Core.Common.dll.so => 271
	i64 u0x4d7793536e79c309, ; 342: System.ServiceProcess => 135
	i64 u0x4d95fccc1f67c7ca, ; 343: System.Runtime.Loader.dll => 112
	i64 u0x4db014bf0ff1c9c1, ; 344: System.Linq.AsyncEnumerable => 59
	i64 u0x4dcf888aabaac5ae, ; 345: lib_Uno.Extensions.Storage.dll.so => 249
	i64 u0x4dd9247f1d2c3235, ; 346: Xamarin.AndroidX.Loader.dll => 309
	i64 u0x4de9173d4bc9cabd, ; 347: Uno.Core.Extensions => 228
	i64 u0x4e16eb47af4d6577, ; 348: Uno.Extensions.Reactive.UI => 362
	i64 u0x4e2aeee78e2c4a87, ; 349: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 313
	i64 u0x4e32f00cb0937401, ; 350: Mono.Android.Runtime => 174
	i64 u0x4e5eea4668ac2b18, ; 351: System.Text.Encoding.CodePages => 136
	i64 u0x4ebd0c4b82c5eefc, ; 352: lib_System.Threading.Channels.dll.so => 143
	i64 u0x4ee8eaa9c9c1151a, ; 353: System.Globalization.Calendars => 40
	i64 u0x4f858c702fcd3124, ; 354: Uno.UI.HotDesign.MessageRouting.dll => 374
	i64 u0x4fdc964ec1888e25, ; 355: lib_Microsoft.Extensions.Configuration.Binder.dll.so => 184
	i64 u0x50c3a29b21050d45, ; 356: System.Linq.Parallel.dll => 61
	i64 u0x5112ed116d87baf8, ; 357: CommunityToolkit.Mvvm => 179
	i64 u0x5116b21580ae6eb0, ; 358: Microsoft.Extensions.Configuration.Binder.dll => 184
	i64 u0x5131bbe80989093f, ; 359: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 306
	i64 u0x516324a5050a7e3c, ; 360: System.Net.WebProxy => 81
	i64 u0x516d6f0b21a303de, ; 361: lib_System.Diagnostics.Contracts.dll.so => 25
	i64 u0x51bb8a2afe774e32, ; 362: System.Drawing => 36
	i64 u0x52039b32a142ae7c, ; 363: lib_Uno.UI.App.Mcp.Client.dll.so => 257
	i64 u0x5247c5c32a4140f0, ; 364: System.Resources.Reader => 101
	i64 u0x526ce79eb8e90527, ; 365: lib_System.Net.Primitives.dll.so => 72
	i64 u0x52829f00b4467c38, ; 366: lib_System.Data.Common.dll.so => 22
	i64 u0x529ffe06f39ab8db, ; 367: Xamarin.AndroidX.Core => 282
	i64 u0x53978aac584c666e, ; 368: lib_System.Security.Cryptography.Cng.dll.so => 123
	i64 u0x53a96d5c86c9e194, ; 369: System.Net.NetworkInformation => 70
	i64 u0x53be1038a61e8d44, ; 370: System.Runtime.InteropServices.RuntimeInformation.dll => 109
	i64 u0x53e450ebd586f842, ; 371: lib_Xamarin.AndroidX.LocalBroadcastManager.dll.so => 310
	i64 u0x5435e6f049e9bc37, ; 372: System.Security.Claims.dll => 121
	i64 u0x54430c9d68d6835f, ; 373: Uno.UI.HotDesign.Xaml.Interactions.dll => 378
	i64 u0x54795225dd1587af, ; 374: lib_System.Runtime.dll.so => 119
	i64 u0x547a34f14e5f6210, ; 375: Xamarin.AndroidX.Lifecycle.Common.dll => 299
	i64 u0x5537fc63d1ba75dd, ; 376: lib_Uno.Extensions.Reactive.UI.dll.so => 362
	i64 u0x556e8b63b660ab8b, ; 377: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 300
	i64 u0x5588627c9a108ec9, ; 378: System.Collections.Specialized => 11
	i64 u0x55a898e4f42e3fae, ; 379: Microsoft.VisualBasic.Core.dll => 2
	i64 u0x55fa0c610fe93bb1, ; 380: lib_System.Security.Cryptography.OpenSsl.dll.so => 126
	i64 u0x56442b99bc64bb47, ; 381: System.Runtime.Serialization.Xml.dll => 117
	i64 u0x568938eab398ce9b, ; 382: SkiaSharp.SceneGraph.dll => 222
	i64 u0x56a8b26e1aeae27b, ; 383: System.Threading.Tasks.Dataflow => 145
	i64 u0x56f932d61e93c07f, ; 384: System.Globalization.Extensions => 41
	i64 u0x571c5cfbec5ae8e2, ; 385: System.Private.Uri => 89
	i64 u0x571dda7188dff28b, ; 386: lib_Uno.UI.Dispatching.dll.so => 344
	i64 u0x576499c9f52fea31, ; 387: Xamarin.AndroidX.Annotation => 266
	i64 u0x579a06fed6eec900, ; 388: System.Private.CoreLib.dll => 177
	i64 u0x57adda3c951abb33, ; 389: Microsoft.Extensions.Hosting.Abstractions.dll => 198
	i64 u0x57c542c14049b66d, ; 390: System.Diagnostics.DiagnosticSource => 27
	i64 u0x581a8bd5cfda563e, ; 391: System.Threading.Timer => 151
	i64 u0x584723e3aa2719a5, ; 392: Uno.Extensions.Http.Kiota => 240
	i64 u0x584ac38e21d2fde1, ; 393: Microsoft.Extensions.Configuration.Binder => 184
	i64 u0x58688d9af496b168, ; 394: Microsoft.Extensions.DependencyInjection.dll => 190
	i64 u0x588c167a79db6bfb, ; 395: lib_Xamarin.Google.ErrorProne.Annotations.dll.so => 332
	i64 u0x58c6f30aed57e191, ; 396: lib_Uno.Extensions.Reactive.Messaging.dll.so => 245
	i64 u0x592118920837fbdd, ; 397: Uno.UI.FluentTheme.v2 => 349
	i64 u0x595a356d23e8da9a, ; 398: lib_Microsoft.CSharp.dll.so => 1
	i64 u0x59a05a34374c68d2, ; 399: Uno.Extensions.Hosting.WinUI.dll => 356
	i64 u0x59f9e60b9475085f, ; 400: lib_Xamarin.AndroidX.Annotation.Experimental.dll.so => 267
	i64 u0x5a745f5101a75527, ; 401: lib_System.IO.Compression.FileSystem.dll.so => 44
	i64 u0x5a89a886ae30258d, ; 402: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 281
	i64 u0x5a8f6699f4a1caa9, ; 403: lib_System.Threading.dll.so => 152
	i64 u0x5a937c3bd8caaa2a, ; 404: Uno.Core.Extensions.Disposables => 230
	i64 u0x5a97621bbf6b97c1, ; 405: Uno.Extensions.Core.dll => 237
	i64 u0x5abe6626ac8129b9, ; 406: Uno.UI.HotDesign.Toolbox.dll => 377
	i64 u0x5ae8e4f3eae4d547, ; 407: Xamarin.AndroidX.Legacy.Support.Core.Utils => 297
	i64 u0x5ae9cd33b15841bf, ; 408: System.ComponentModel => 18
	i64 u0x5b54391bdc6fcfe6, ; 409: System.Private.DataContractSerialization => 88
	i64 u0x5b8109e8e14c5e3e, ; 410: System.Globalization.Extensions.dll => 41
	i64 u0x5bdf16b09da116ab, ; 411: Xamarin.AndroidX.Collection => 276
	i64 u0x5c30a4a35f9cc8c4, ; 412: lib_System.Reflection.Extensions.dll.so => 96
	i64 u0x5c393624b8176517, ; 413: lib_Microsoft.Extensions.Logging.dll.so => 201
	i64 u0x5c53c29f5073b0c9, ; 414: System.Diagnostics.FileVersionInfo => 28
	i64 u0x5c87463c575c7616, ; 415: lib_System.Globalization.Extensions.dll.so => 41
	i64 u0x5cc5d8982976e2bb, ; 416: SkiaSharp.Views.Windows.dll => 352
	i64 u0x5d0a4a29b02d9d3c, ; 417: System.Net.WebHeaderCollection.dll => 80
	i64 u0x5d40c9b15181641f, ; 418: lib_Xamarin.AndroidX.Emoji2.dll.so => 292
	i64 u0x5d478aee7235f487, ; 419: lib_Uno.UI.Toolkit.dll.so => 350
	i64 u0x5d6ca10d35e9485b, ; 420: lib_Xamarin.AndroidX.Concurrent.Futures.dll.so => 278
	i64 u0x5d7ec76c1c703055, ; 421: System.Threading.Tasks.Parallel => 147
	i64 u0x5db0cbbd1028510e, ; 422: lib_System.Runtime.InteropServices.dll.so => 110
	i64 u0x5db30905d3e5013b, ; 423: Xamarin.AndroidX.Collection.Jvm.dll => 277
	i64 u0x5e467bc8f09ad026, ; 424: System.Collections.Specialized.dll => 11
	i64 u0x5e5173b3208d97e7, ; 425: System.Runtime.Handles.dll => 107
	i64 u0x5ea92fdb19ec8c4c, ; 426: System.Text.Encodings.Web.dll => 139
	i64 u0x5eb8046dd40e9ac3, ; 427: System.ComponentModel.Primitives => 16
	i64 u0x5eb8606c438e352c, ; 428: Uno.Extensions.Hosting.dll => 238
	i64 u0x5ec272d219c9aba4, ; 429: System.Security.Cryptography.Csp.dll => 124
	i64 u0x5eee1376d94c7f5e, ; 430: System.Net.HttpListener.dll => 67
	i64 u0x5f36ccf5c6a57e24, ; 431: System.Xml.ReaderWriter.dll => 160
	i64 u0x5f4294b9b63cb842, ; 432: System.Data.Common => 22
	i64 u0x5fa6da9c3cd8142a, ; 433: lib_Xamarin.KotlinX.Serialization.Core.dll.so => 340
	i64 u0x5fac98e0b37a5b9d, ; 434: System.Runtime.CompilerServices.Unsafe.dll => 104
	i64 u0x60910e8dc058ee0e, ; 435: Uno.UI.HotDesign.Previews.dll => 375
	i64 u0x609f4b7b63d802d4, ; 436: lib_Microsoft.Extensions.DependencyInjection.dll.so => 190
	i64 u0x60cd4e33d7e60134, ; 437: Xamarin.KotlinX.Coroutines.Core.Jvm => 339
	i64 u0x60f62d786afcf130, ; 438: System.Memory => 64
	i64 u0x61077ab83a0aeb8e, ; 439: lib_Uno.Extensions.Core.dll.so => 237
	i64 u0x6187a781fa8a67cf, ; 440: lib_Uno.UI.dll.so => 346
	i64 u0x61bb78c89f867353, ; 441: System.IO => 58
	i64 u0x61c72fd7e3bc0073, ; 442: lib_Uno.Diagnostics.Eventing.dll.so => 234
	i64 u0x61d88f399afb2f45, ; 443: lib_System.Runtime.Loader.dll.so => 112
	i64 u0x622eef6f9e59068d, ; 444: System.Private.CoreLib => 177
	i64 u0x624a0c01bc0c1d39, ; 445: lib_Uno.Extensions.Http.dll.so => 239
	i64 u0x6259a2b81531f5de, ; 446: Microsoft.Kiota.Abstractions => 212
	i64 u0x634be9581b31caef, ; 447: Microsoft.Extensions.Logging.EventLog.dll => 206
	i64 u0x63d5e3aa4ef9b931, ; 448: Xamarin.KotlinX.Coroutines.Android.dll => 337
	i64 u0x63f1f6883c1e23c2, ; 449: lib_System.Collections.Immutable.dll.so => 9
	i64 u0x6400f68068c1e9f1, ; 450: Xamarin.Google.Android.Material.dll => 331
	i64 u0x640e3b14dbd325c2, ; 451: System.Security.Cryptography.Algorithms.dll => 122
	i64 u0x64587004560099b9, ; 452: System.Reflection => 100
	i64 u0x64b1529a438a3c45, ; 453: lib_System.Runtime.Handles.dll.so => 107
	i64 u0x64b61dd9da8a4d57, ; 454: System.Net.ServerSentEvents.dll => 76
	i64 u0x6525e13597f85586, ; 455: Microsoft.Kiota.Serialization.Form => 214
	i64 u0x653d3b893497cb1e, ; 456: lib_Uno.Xaml.dll.so => 351
	i64 u0x658cd45f73307043, ; 457: lib_Uno.Extensions.Http.WinUI.dll.so => 357
	i64 u0x659dc45417570048, ; 458: Refit => 219
	i64 u0x65ece51227bfa724, ; 459: lib_System.Runtime.Numerics.dll.so => 113
	i64 u0x6610f3fd66f361a2, ; 460: Uno.Extensions.Http.WinUI => 357
	i64 u0x661722438787b57f, ; 461: Xamarin.AndroidX.Annotation.Jvm.dll => 268
	i64 u0x661e0b8cd611cbfd, ; 462: lib_Uno.Simple.WinUI.dll.so => 364
	i64 u0x665a1091e84bdadb, ; 463: Uno.WinUI.Graphics2DSK => 381
	i64 u0x6679b2337ee6b22a, ; 464: lib_System.IO.FileSystem.Primitives.dll.so => 49
	i64 u0x667c66a03dd97d40, ; 465: System.Linq.AsyncEnumerable.dll => 59
	i64 u0x6692e924eade1b29, ; 466: lib_System.Console.dll.so => 20
	i64 u0x66a4e5c6a3fb0bae, ; 467: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 306
	i64 u0x66d13304ce1a3efa, ; 468: Xamarin.AndroidX.CursorAdapter => 286
	i64 u0x66dbfab90c22ebbf, ; 469: Uno.Extensions.Logging.WebAssembly.Console.dll => 242
	i64 u0x674303f65d8fad6f, ; 470: lib_System.Net.Quic.dll.so => 73
	i64 u0x6744cb0cb8e0b315, ; 471: lib_Microsoft.Extensions.Logging.EventLog.dll.so => 206
	i64 u0x6756ca4cad62e9d6, ; 472: lib_Xamarin.AndroidX.ConstraintLayout.Core.dll.so => 280
	i64 u0x67817c2e525f9e91, ; 473: lib_Uno.UI.RemoteControl.dll.so => 354
	i64 u0x67c0802770244408, ; 474: System.Windows.dll => 158
	i64 u0x67c08d9fda61cbed, ; 475: Uno.WinUI.Graphics2DSK.dll => 381
	i64 u0x67cd37b561c3ea65, ; 476: lib_Uno.Core.Extensions.dll.so => 228
	i64 u0x68100b69286e27cd, ; 477: lib_System.Formats.Tar.dll.so => 39
	i64 u0x686160124b62e464, ; 478: Uno.Extensions.Hosting => 238
	i64 u0x6872ec7a2e36b1ac, ; 479: System.Drawing.Primitives.dll => 35
	i64 u0x68fb1f9188f2a501, ; 480: Uno.UI.RemoteControl.Messaging => 262
	i64 u0x68fbbbe2eb455198, ; 481: System.Formats.Asn1 => 38
	i64 u0x69555d2f5872629f, ; 482: Uno.UI.HotDesign.Chat.dll => 369
	i64 u0x69796f1bfa792204, ; 483: Uno.Extensions.Reactive.dll => 244
	i64 u0x69a3e26c76f6eec4, ; 484: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 330
	i64 u0x6a4d7577b2317255, ; 485: System.Runtime.InteropServices.dll => 110
	i64 u0x6a9ad6d50582f81c, ; 486: lib_Uno.UI.FluentTheme.v1.dll.so => 348
	i64 u0x6afcedb171067e2b, ; 487: System.Core.dll => 21
	i64 u0x6bef98e124147c24, ; 488: Xamarin.Jetbrains.Annotations => 334
	i64 u0x6ce874bff138ce2b, ; 489: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 305
	i64 u0x6d5aa88607e8743f, ; 490: Uno.UI.Runtime.Skia.Android => 264
	i64 u0x6d70755158ca866e, ; 491: lib_System.ComponentModel.EventBasedAsync.dll.so => 15
	i64 u0x6d79993361e10ef2, ; 492: Microsoft.Extensions.Primitives => 210
	i64 u0x6d7eeca99577fc8b, ; 493: lib_System.Net.WebProxy.dll.so => 81
	i64 u0x6d8515b19946b6a2, ; 494: System.Net.WebProxy.dll => 81
	i64 u0x6d86d56b84c8eb71, ; 495: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 286
	i64 u0x6d9bea6b3e895cf7, ; 496: Microsoft.Extensions.Primitives.dll => 210
	i64 u0x6dd9bf4083de3f6a, ; 497: Xamarin.AndroidX.DocumentFile.dll => 289
	i64 u0x6e0e81efa491f20a, ; 498: Microsoft.Extensions.Hosting.dll => 197
	i64 u0x6e19df2f3dcfe33d, ; 499: Uno.UI.HotDesign.Xaml.dll => 261
	i64 u0x6e838d9a2a6f6c9e, ; 500: lib_System.ValueTuple.dll.so => 155
	i64 u0x6e9965ce1095e60a, ; 501: lib_System.Core.dll.so => 21
	i64 u0x6f8a996b85c163e1, ; 502: lib_Uno.Fonts.Fluent.dll.so => 250
	i64 u0x6fb521749b8a226a, ; 503: Uno.dll => 343
	i64 u0x6ffc4967cc47ba57, ; 504: System.IO.FileSystem.Watcher.dll => 50
	i64 u0x701cd46a1c25a5fe, ; 505: System.IO.FileSystem.dll => 51
	i64 u0x7027b29cbd1f2a0c, ; 506: Uno.UI.RemoteControl => 354
	i64 u0x709688f4ec2831e9, ; 507: lib_Xamarin.AndroidX.Media.dll.so => 311
	i64 u0x71485e7ffdb4b958, ; 508: System.Reflection.Extensions => 96
	i64 u0x716b00a7f4d7b1a3, ; 509: Uno.Toolkit.dll => 255
	i64 u0x7173c12b6c5fd247, ; 510: Uno.UI.HotDesign.Xaml.Interactivity.dll => 379
	i64 u0x717530326f808838, ; 511: lib_Microsoft.Extensions.Diagnostics.Abstractions.dll.so => 193
	i64 u0x71ad672adbe48f35, ; 512: System.ComponentModel.Primitives.dll => 16
	i64 u0x720f102581a4a5c8, ; 513: Xamarin.AndroidX.Core.ViewTree => 285
	i64 u0x725f5a9e82a45c81, ; 514: System.Security.Cryptography.Encoding => 125
	i64 u0x72e0300099accce1, ; 515: System.Xml.XPath.XDocument => 163
	i64 u0x730bfb248998f67a, ; 516: System.IO.Compression.ZipFile => 45
	i64 u0x732b2d67b9e5c47b, ; 517: Xamarin.Google.ErrorProne.Annotations.dll => 332
	i64 u0x73794ea04d0af900, ; 518: Uno.Extensions.Reactive.UI.dll => 362
	i64 u0x73a6be34e822f9d1, ; 519: lib_System.Runtime.Serialization.dll.so => 118
	i64 u0x73e4ce94e2eb6ffc, ; 520: lib_System.Memory.dll.so => 64
	i64 u0x743a1eccf080489a, ; 521: WindowsBase.dll => 169
	i64 u0x746cf89b511b4d40, ; 522: lib_Microsoft.Extensions.Diagnostics.dll.so => 192
	i64 u0x7503ac24fcf8095e, ; 523: Xamarin.AndroidX.Core.SplashScreen.dll => 284
	i64 u0x752d04248f3e9de6, ; 524: Uno.UI.Dispatching.dll => 344
	i64 u0x755a91767330b3d4, ; 525: lib_Microsoft.Extensions.Configuration.dll.so => 182
	i64 u0x75c326eb821b85c4, ; 526: lib_System.ComponentModel.DataAnnotations.dll.so => 14
	i64 u0x76012e7334db86e5, ; 527: lib_Xamarin.AndroidX.SavedState.dll.so => 316
	i64 u0x7660291fd945d236, ; 528: Uno.Extensions.Reactive.Messaging => 245
	i64 u0x7671ad1224a65f5e, ; 529: lib_Uno.Extensions.Serialization.Refit.dll.so => 248
	i64 u0x76ca07b878f44da0, ; 530: System.Runtime.Numerics.dll => 113
	i64 u0x771edab0cbcf20db, ; 531: Uno.UI.HotDesign.Chat => 369
	i64 u0x7736c8a96e51a061, ; 532: lib_Xamarin.AndroidX.Annotation.Jvm.dll.so => 268
	i64 u0x77564dc3bfb31c3f, ; 533: Std.UriTemplate.dll => 225
	i64 u0x778a805e625329ef, ; 534: System.Linq.Parallel => 61
	i64 u0x779f67ad3b8efbd5, ; 535: Microsoft.Extensions.Configuration.Json.dll => 188
	i64 u0x77d9074d8f33a303, ; 536: lib_System.Net.ServerSentEvents.dll.so => 76
	i64 u0x77f8a4acc2fdc449, ; 537: System.Security.Cryptography.Cng.dll => 123
	i64 u0x782c5d8eb99ff201, ; 538: lib_Microsoft.VisualBasic.Core.dll.so => 2
	i64 u0x7888a6733fa675d9, ; 539: Uno.UI.Dispatching => 344
	i64 u0x78a45e51311409b6, ; 540: Xamarin.AndroidX.Fragment.dll => 294
	i64 u0x78ed4ab8f9d800a1, ; 541: Xamarin.AndroidX.Lifecycle.ViewModel => 305
	i64 u0x78f23ebd61104f09, ; 542: Uno.Extensions.Storage.UI => 363
	i64 u0x7a25bdb29108c6e7, ; 543: Microsoft.Extensions.Http => 199
	i64 u0x7a4ae2fc3a5abfd1, ; 544: lib_Uno.UI.HotDesign.Chat.dll.so => 369
	i64 u0x7a5207a7c82d30b4, ; 545: lib_Xamarin.JSpecify.dll.so => 335
	i64 u0x7a7e7eddf79c5d26, ; 546: lib_Xamarin.AndroidX.Lifecycle.ViewModel.dll.so => 305
	i64 u0x7a9a57d43b0845fa, ; 547: System.AppContext => 6
	i64 u0x7ad0f4f1e5d08183, ; 548: Xamarin.AndroidX.Collection.dll => 276
	i64 u0x7b13d9eaa944ade8, ; 549: Xamarin.AndroidX.DynamicAnimation.dll => 291
	i64 u0x7bef86a4335c4870, ; 550: System.ComponentModel.TypeConverter => 17
	i64 u0x7c008975e0d3a539, ; 551: lib_Uno.WinUI.Graphics2DSK.dll.so => 381
	i64 u0x7c160b2bd93179e6, ; 552: lib_Uno.UI.RemoteControl.Messaging.dll.so => 262
	i64 u0x7c41d387501568ba, ; 553: System.Net.WebClient.dll => 79
	i64 u0x7c482cd79bd24b13, ; 554: lib_Xamarin.AndroidX.ConstraintLayout.dll.so => 279
	i64 u0x7c915d27bc4afbdb, ; 555: Xamarin.AndroidX.Core.SplashScreen => 284
	i64 u0x7cac6eacc9c9a06b, ; 556: lib_Uno.UI.Lottie.dll.so => 353
	i64 u0x7cc97975275cce3c, ; 557: Microsoft.Kiota.Http.HttpClientLibrary => 213
	i64 u0x7cd2ec8eaf5241cd, ; 558: System.Security.dll => 133
	i64 u0x7cf9ae50dd350622, ; 559: Xamarin.Jetbrains.Annotations.dll => 334
	i64 u0x7d8ee2bdc8e3aad1, ; 560: System.Numerics.Vectors => 85
	i64 u0x7dd79496c6166bbf, ; 561: lib_CommonServiceLocator.dll.so => 178
	i64 u0x7df5df8db8eaa6ac, ; 562: Microsoft.Extensions.Logging.Debug => 205
	i64 u0x7dfc3d6d9d8d7b70, ; 563: System.Collections => 12
	i64 u0x7e2e564fa2f76c65, ; 564: lib_System.Diagnostics.Tracing.dll.so => 34
	i64 u0x7e302e110e1e1346, ; 565: lib_System.Security.Claims.dll.so => 121
	i64 u0x7e4465b3f78ad8d0, ; 566: Xamarin.KotlinX.Serialization.Core.dll => 340
	i64 u0x7e571cad5915e6c3, ; 567: lib_Xamarin.AndroidX.Lifecycle.Process.dll.so => 302
	i64 u0x7e6ac99e4e8df72f, ; 568: System.IO.Hashing => 176
	i64 u0x7e6b1ca712437d7d, ; 569: Xamarin.AndroidX.Emoji2.ViewsHelper => 293
	i64 u0x7e738cf73b546f91, ; 570: Uno.Extensions.Logging.WinUI => 359
	i64 u0x7e946809d6008ef2, ; 571: lib_System.ObjectModel.dll.so => 87
	i64 u0x7ecc13347c8fd849, ; 572: lib_System.ComponentModel.dll.so => 18
	i64 u0x7f00ddd9b9ca5a13, ; 573: Xamarin.AndroidX.ViewPager.dll => 327
	i64 u0x7f9351cd44b1273f, ; 574: Microsoft.Extensions.Configuration.Abstractions => 183
	i64 u0x7fbd557c99b3ce6f, ; 575: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 301
	i64 u0x8047b95bc9644e33, ; 576: lib_Uno.Extensions.Logging.WebAssembly.Console.dll.so => 242
	i64 u0x8076a9a44a2ca331, ; 577: System.Net.Quic => 73
	i64 u0x80ca3d88b0159b22, ; 578: lib_Xamarin.AndroidX.Legacy.Support.Core.UI.dll.so => 296
	i64 u0x80da183a87731838, ; 579: System.Reflection.Metadata => 97
	i64 u0x812c069d5cdecc17, ; 580: System.dll => 168
	i64 u0x81381be520a60adb, ; 581: Xamarin.AndroidX.Interpolator.dll => 295
	i64 u0x8148a1fb34fceb7c, ; 582: Microsoft.Extensions.Localization.Abstractions => 200
	i64 u0x81657cec2b31e8aa, ; 583: System.Net => 84
	i64 u0x8171cdf22b671acf, ; 584: Uno.Themes.WinUI.dll => 365
	i64 u0x825767256f457674, ; 585: lib_Xamarin.AndroidX.Legacy.Support.V4.dll.so => 298
	i64 u0x8273eafcc5465a27, ; 586: Uno.Extensions.Reactive.Messaging.dll => 245
	i64 u0x8277f2be6b5ce05f, ; 587: Xamarin.AndroidX.AppCompat => 269
	i64 u0x828f06563b30bc50, ; 588: lib_Xamarin.AndroidX.CardView.dll.so => 275
	i64 u0x82b399cb01b531c4, ; 589: lib_System.Web.dll.so => 157
	i64 u0x82d926168ed1b8d3, ; 590: Uno.Extensions.Serialization => 246
	i64 u0x82df8f5532a10c59, ; 591: lib_System.Drawing.dll.so => 36
	i64 u0x82f0b6e911d13535, ; 592: lib_System.Transactions.dll.so => 154
	i64 u0x834ca94d5cc73fa6, ; 593: lib_SkiaSharp.Resources.dll.so => 221
	i64 u0x846ce984efea52c7, ; 594: System.Threading.Tasks.Parallel.dll => 147
	i64 u0x84adba7e9ed3dce1, ; 595: Uno.Extensions.Serialization.Http.dll => 247
	i64 u0x84ae73148a4557d2, ; 596: lib_System.IO.Pipes.dll.so => 56
	i64 u0x84b01102c12a9232, ; 597: System.Runtime.Serialization.Json.dll => 115
	i64 u0x84f9060cc4a93c8f, ; 598: lib_SkiaSharp.dll.so => 220
	i64 u0x850c5ba0b57ce8e7, ; 599: lib_Xamarin.AndroidX.Collection.dll.so => 276
	i64 u0x851a3e1954958404, ; 600: Uno.Core.Extensions.Logging.Singleton => 233
	i64 u0x851d02edd334b044, ; 601: Xamarin.AndroidX.VectorDrawable => 324
	i64 u0x85c919db62150978, ; 602: Xamarin.AndroidX.Transition.dll => 323
	i64 u0x8662aaeb94fef37f, ; 603: lib_System.Dynamic.Runtime.dll.so => 37
	i64 u0x86b3e00c36b84509, ; 604: Microsoft.Extensions.Configuration.dll => 182
	i64 u0x86b62cb077ec4fd7, ; 605: System.Runtime.Serialization.Xml => 117
	i64 u0x8704193f462e892e, ; 606: lib_Microsoft.Extensions.FileSystemGlobbing.dll.so => 196
	i64 u0x8706ffb12bf3f53d, ; 607: Xamarin.AndroidX.Annotation.Experimental => 267
	i64 u0x872a5b14c18d328c, ; 608: System.ComponentModel.DataAnnotations => 14
	i64 u0x87c69b87d9283884, ; 609: lib_System.Threading.Thread.dll.so => 149
	i64 u0x87c8e86d8a13c4d6, ; 610: lib_Uno.Extensions.Configuration.dll.so => 236
	i64 u0x87f6569b25707834, ; 611: System.IO.Compression.Brotli.dll => 43
	i64 u0x8808a9d7c53dc4c0, ; 612: lib_HarfBuzzSharp.dll.so => 180
	i64 u0x887c87f2c140da3e, ; 613: Uno.Toolkit.WinUI.Simple => 367
	i64 u0x88ba6bc4f7762b03, ; 614: lib_System.Reflection.dll.so => 100
	i64 u0x88bda98e0cffb7a9, ; 615: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 339
	i64 u0x88c373de2ec9b4ff, ; 616: lib_Uno.UI.HotDesign.Toolbox.dll.so => 377
	i64 u0x88f3740ca92b93ab, ; 617: lib_Uno.Themes.WinUI.dll.so => 365
	i64 u0x8930322c7bd8f768, ; 618: netstandard => 171
	i64 u0x897a606c9e39c75f, ; 619: lib_System.ComponentModel.Primitives.dll.so => 16
	i64 u0x898a5c6bc9e47ec1, ; 620: lib_Xamarin.AndroidX.SavedState.SavedState.Android.dll.so => 317
	i64 u0x89911a22005b92b7, ; 621: System.IO.FileSystem.DriveInfo.dll => 48
	i64 u0x89c5188089ec2cd5, ; 622: lib_System.Runtime.InteropServices.RuntimeInformation.dll.so => 109
	i64 u0x89e22268d7b408dc, ; 623: Uno.Core.Extensions.Collections.dll => 229
	i64 u0x8a060d46564a0c12, ; 624: Uno.Toolkit => 255
	i64 u0x8a19e3dc71b34b2c, ; 625: System.Reflection.TypeExtensions.dll => 99
	i64 u0x8a7e97e1a349c268, ; 626: Uno.UI.HotDesign.Abstractions.dll => 259
	i64 u0x8ad229ea26432ee2, ; 627: Xamarin.AndroidX.Loader => 309
	i64 u0x8b45795125607260, ; 628: Uno.Core.Extensions.Equality => 231
	i64 u0x8b4ff5d0fdd5faa1, ; 629: lib_System.Diagnostics.DiagnosticSource.dll.so => 27
	i64 u0x8b541d476eb3774c, ; 630: System.Security.Principal.Windows => 130
	i64 u0x8b7e069255267079, ; 631: Uno.Extensions.Core.UI.dll => 355
	i64 u0x8b8d01333a96d0b5, ; 632: System.Diagnostics.Process.dll => 29
	i64 u0x8b9217410f624d49, ; 633: Uno.UI.HotDesign.Toolbox => 377
	i64 u0x8bcd4f918789551e, ; 634: Uno.UI.HotDesign.Abstractions => 259
	i64 u0x8c346c1b40688068, ; 635: lib_Uno.UI.HotDesign.CommunityToolkit.dll.so => 372
	i64 u0x8c575135aa1ccef4, ; 636: Microsoft.Extensions.FileProviders.Abstractions => 194
	i64 u0x8cdfdb4ce85fb925, ; 637: lib_System.Security.Principal.Windows.dll.so => 130
	i64 u0x8cdfe7b8f4caa426, ; 638: System.IO.Compression.FileSystem => 44
	i64 u0x8d0f420977c2c1c7, ; 639: Xamarin.AndroidX.CursorAdapter.dll => 286
	i64 u0x8d4090b147c3167c, ; 640: lib_Microsoft.Kiota.Serialization.Form.dll.so => 214
	i64 u0x8d52f7ea2796c531, ; 641: Xamarin.AndroidX.Emoji2.dll => 292
	i64 u0x8d7b8ab4b3310ead, ; 642: System.Threading => 152
	i64 u0x8da188285aadfe8e, ; 643: System.Collections.Concurrent => 8
	i64 u0x8e8f269ad1e1ff94, ; 644: lib_Xamarin.AndroidX.Tracing.Tracing.Android.dll.so => 322
	i64 u0x8ec6e06a61c1baeb, ; 645: lib_Newtonsoft.Json.dll.so => 218
	i64 u0x8ed3cdd722b4d782, ; 646: System.Diagnostics.EventLog => 226
	i64 u0x8f44b45eb046bbd1, ; 647: System.ServiceModel.Web.dll => 134
	i64 u0x8fbf5b0114c6dcef, ; 648: System.Globalization.dll => 42
	i64 u0x8fcc8c2a81f3d9e7, ; 649: Xamarin.KotlinX.Serialization.Core => 340
	i64 u0x90263f8448b8f572, ; 650: lib_System.Diagnostics.TraceSource.dll.so => 33
	i64 u0x903101b46fb73a04, ; 651: _Microsoft.Android.Resource.Designer => 382
	i64 u0x90393bd4865292f3, ; 652: lib_System.IO.Compression.dll.so => 46
	i64 u0x905e2b8e7ae91ae6, ; 653: System.Threading.Tasks.Extensions.dll => 146
	i64 u0x90634f86c5ebe2b5, ; 654: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 306
	i64 u0x91418dc638b29e68, ; 655: lib_Xamarin.AndroidX.CustomView.dll.so => 287
	i64 u0x914647982e998267, ; 656: Microsoft.Extensions.Configuration.Json => 188
	i64 u0x9157bd523cd7ed36, ; 657: lib_System.Text.Json.dll.so => 140
	i64 u0x91a74f07b30d37e2, ; 658: System.Linq.dll => 63
	i64 u0x91b1c99a5d27f6b3, ; 659: Uno.Extensions.Storage.dll => 249
	i64 u0x91cb86ea3b17111d, ; 660: System.ServiceModel.Web => 134
	i64 u0x92054e486c0c7ea7, ; 661: System.IO.FileSystem.DriveInfo => 48
	i64 u0x928614058c40c4cd, ; 662: lib_System.Xml.XPath.XDocument.dll.so => 163
	i64 u0x92b138fffca2b01e, ; 663: lib_Xamarin.AndroidX.Arch.Core.Runtime.dll.so => 272
	i64 u0x9388aad9b7ae40ce, ; 664: lib_Xamarin.AndroidX.Lifecycle.Common.dll.so => 299
	i64 u0x941c00d21e5c0679, ; 665: lib_Xamarin.AndroidX.Transition.dll.so => 323
	i64 u0x944077d8ca3c6580, ; 666: System.IO.Compression.dll => 46
	i64 u0x948cffedc8ed7960, ; 667: System.Xml => 167
	i64 u0x94bbeab0d4764588, ; 668: System.IO.Hashing.dll => 176
	i64 u0x94c8990839c4bdb1, ; 669: lib_Xamarin.AndroidX.Interpolator.dll.so => 295
	i64 u0x95aea98e066bba1c, ; 670: Uno.UI.dll => 346
	i64 u0x96a408fb493baf48, ; 671: Uno.Foundation.Logging => 254
	i64 u0x97b8c771ea3e4220, ; 672: System.ComponentModel.dll => 18
	i64 u0x97c770e43b1ab242, ; 673: lib_Uno.UI.HotDesign.Abstractions.dll.so => 259
	i64 u0x97e144c9d3c6976e, ; 674: System.Collections.Concurrent.dll => 8
	i64 u0x97e62b58d5c7d5f9, ; 675: lib_Microsoft.Extensions.Logging.Console.dll.so => 204
	i64 u0x9843944103683dd3, ; 676: Xamarin.AndroidX.Core.Core.Ktx => 283
	i64 u0x98b05cc81e6f333c, ; 677: Xamarin.AndroidX.SavedState.SavedState.Android.dll => 317
	i64 u0x98d720cc4597562c, ; 678: System.Security.Cryptography.OpenSsl => 126
	i64 u0x991d510397f92d9d, ; 679: System.Linq.Expressions => 60
	i64 u0x996ceeb8a3da3d67, ; 680: System.Threading.Overlapped.dll => 144
	i64 u0x999cb19e1a04ffd3, ; 681: CommunityToolkit.Mvvm.dll => 179
	i64 u0x9a01b1da98b6ee10, ; 682: Xamarin.AndroidX.Lifecycle.Runtime.dll => 303
	i64 u0x9a816d9654deff7c, ; 683: Microsoft.IO.RecyclableMemoryStream => 211
	i64 u0x9ae6940b11c02876, ; 684: lib_Xamarin.AndroidX.Window.dll.so => 329
	i64 u0x9b011702101b7bd3, ; 685: SkiaSharp.Resources.dll => 221
	i64 u0x9b211a749105beac, ; 686: System.Transactions.Local => 153
	i64 u0x9b39a221fa2e112d, ; 687: Uno.UI.HotDesign.Xaml.Interactivity => 379
	i64 u0x9b7b70725f2d62d4, ; 688: lib_Uno.dll.so => 343
	i64 u0x9b8734714671022d, ; 689: System.Threading.Tasks.Dataflow.dll => 145
	i64 u0x9bc6aea27fbf034f, ; 690: lib_Xamarin.KotlinX.Coroutines.Core.dll.so => 338
	i64 u0x9c244ac7cda32d26, ; 691: System.Security.Cryptography.X509Certificates.dll => 128
	i64 u0x9c2ed9e31edd3ff3, ; 692: Uno.UI.App.Mcp.Client.dll => 257
	i64 u0x9c465f280cf43733, ; 693: lib_Xamarin.KotlinX.Coroutines.Android.dll.so => 337
	i64 u0x9c8f6872beab6408, ; 694: System.Xml.XPath.XDocument.dll => 163
	i64 u0x9ce01cf91101ae23, ; 695: System.Xml.XmlDocument => 165
	i64 u0x9d128180c81d7ce6, ; 696: Xamarin.AndroidX.CustomView.PoolingContainer => 288
	i64 u0x9d5dbcf5a48583fe, ; 697: lib_Xamarin.AndroidX.Activity.dll.so => 265
	i64 u0x9d74dee1a7725f34, ; 698: Microsoft.Extensions.Configuration.Abstractions.dll => 183
	i64 u0x9e4b95dec42769f7, ; 699: System.Diagnostics.Debug.dll => 26
	i64 u0x9ef542cf1f78c506, ; 700: Xamarin.AndroidX.Lifecycle.LiveData.Core => 301
	i64 u0x9fbb2961ca18e5c2, ; 701: Microsoft.Extensions.FileProviders.Physical.dll => 195
	i64 u0x9fefe41b8c9e0f3b, ; 702: Uno.UI.HotDesign.Messaging.dll => 260
	i64 u0xa00832eb975f56a8, ; 703: lib_System.Net.dll.so => 84
	i64 u0xa0ad78236b7b267f, ; 704: Xamarin.AndroidX.Window => 329
	i64 u0xa0d8259f4cc284ec, ; 705: lib_System.Security.Cryptography.dll.so => 129
	i64 u0xa0ff9b3e34d92f11, ; 706: lib_System.Resources.Writer.dll.so => 103
	i64 u0xa12fbfb4da97d9f3, ; 707: System.Threading.Timer.dll => 151
	i64 u0xa1421cc8ece3d2f1, ; 708: Uno.UI.HotDesign.Xaml.Interactions => 378
	i64 u0xa1440773ee9d341e, ; 709: Xamarin.Google.Android.Material => 331
	i64 u0xa2572680829d2c7c, ; 710: System.IO.Pipelines.dll => 54
	i64 u0xa26597e57ee9c7f6, ; 711: System.Xml.XmlDocument.dll => 165
	i64 u0xa2beee74530fc01c, ; 712: SkiaSharp.Views.Android => 224
	i64 u0xa308401900e5bed3, ; 713: lib_mscorlib.dll.so => 170
	i64 u0xa395572e7da6c99d, ; 714: lib_System.Security.dll.so => 133
	i64 u0xa3e683f24b43af6f, ; 715: System.Dynamic.Runtime.dll => 37
	i64 u0xa3f90f5dc6f49882, ; 716: Uno.Fonts.OpenSans.dll => 252
	i64 u0xa4145becdee3dc4f, ; 717: Xamarin.AndroidX.VectorDrawable.Animated => 325
	i64 u0xa4a372eecb9e4df0, ; 718: Microsoft.Extensions.Diagnostics => 192
	i64 u0xa4b9d11b424dfbf2, ; 719: Uno.UI.FluentTheme.v1 => 348
	i64 u0xa4d20d2ff0563d26, ; 720: lib_CommunityToolkit.Mvvm.dll.so => 179
	i64 u0xa4edc8f2ceae241a, ; 721: System.Data.Common.dll => 22
	i64 u0xa53e356dddbedd7a, ; 722: Uno.Fonts.Inter.dll => 251
	i64 u0xa5494f40f128ce6a, ; 723: System.Runtime.Serialization.Formatters.dll => 114
	i64 u0xa54b74df83dce92b, ; 724: System.Reflection.DispatchProxy => 92
	i64 u0xa579ed010d7e5215, ; 725: Xamarin.AndroidX.DocumentFile => 289
	i64 u0xa59c505c7ef405e1, ; 726: Uno.AI.XamlGeneration.Contracts.dll => 368
	i64 u0xa5b7152421ed6d98, ; 727: lib_System.IO.FileSystem.Watcher.dll.so => 50
	i64 u0xa5c3844f17b822db, ; 728: lib_System.Linq.Parallel.dll.so => 61
	i64 u0xa5ce5c755bde8cb8, ; 729: lib_System.Security.Cryptography.Csp.dll.so => 124
	i64 u0xa5e599d1e0524750, ; 730: System.Numerics.Vectors.dll => 85
	i64 u0xa5f1ba49b85dd355, ; 731: System.Security.Cryptography.dll => 129
	i64 u0xa5f1e826b58a6998, ; 732: System.Linq.Async.dll => 227
	i64 u0xa61975a5a37873ea, ; 733: lib_System.Xml.XmlSerializer.dll.so => 166
	i64 u0xa627f81c2d625e09, ; 734: Uno.UI.App.Mcp.Messages => 258
	i64 u0xa63d0790069d0bed, ; 735: Uno.Foundation.dll => 342
	i64 u0xa66cbee0130865f7, ; 736: lib_WindowsBase.dll.so => 169
	i64 u0xa67dbee13e1df9ca, ; 737: Xamarin.AndroidX.SavedState.dll => 316
	i64 u0xa68a420042bb9b1f, ; 738: Xamarin.AndroidX.DrawerLayout.dll => 290
	i64 u0xa75386b5cb9595aa, ; 739: Xamarin.AndroidX.Lifecycle.Runtime.Android => 304
	i64 u0xa763fbb98df8d9fb, ; 740: lib_Microsoft.Win32.Primitives.dll.so => 4
	i64 u0xa77e30733da34712, ; 741: lib_Std.UriTemplate.dll.so => 225
	i64 u0xa7841fd16006e4e7, ; 742: Uno.UI.FluentTheme.dll => 347
	i64 u0xa78ce3745383236a, ; 743: Xamarin.AndroidX.Lifecycle.Common.Jvm => 300
	i64 u0xa7eab29ed44b4e7a, ; 744: Mono.Android.Export => 173
	i64 u0xa7f28c26235ca0e4, ; 745: Microsoft.Extensions.Logging.EventSource => 207
	i64 u0xa8195217cbf017b7, ; 746: Microsoft.VisualBasic.Core => 2
	i64 u0xa82fd211eef00a5b, ; 747: Microsoft.Extensions.FileProviders.Physical => 195
	i64 u0xa83035abb36a373a, ; 748: Uno.Extensions.Serialization.dll => 246
	i64 u0xa8b52f21e0dbe690, ; 749: System.Runtime.Serialization.dll => 118
	i64 u0xa8ee4ed7de2efaee, ; 750: Xamarin.AndroidX.Annotation.dll => 266
	i64 u0xa95590e7c57438a4, ; 751: System.Configuration => 19
	i64 u0xa9818a923048730c, ; 752: Uno.Extensions.Authentication.dll => 235
	i64 u0xaa2219c8e3449ff5, ; 753: Microsoft.Extensions.Logging.Abstractions => 202
	i64 u0xaa37ba936fe63a35, ; 754: lib_Uno.Core.Extensions.Logging.dll.so => 232
	i64 u0xaa443ac34067eeef, ; 755: System.Private.Xml.dll => 91
	i64 u0xaa52de307ef5d1dd, ; 756: System.Net.Http => 66
	i64 u0xaa9a7b0214a5cc5c, ; 757: System.Diagnostics.StackTrace.dll => 30
	i64 u0xaaaf86367285a918, ; 758: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 191
	i64 u0xab9af77b5b67a0b8, ; 759: Xamarin.AndroidX.ConstraintLayout.Core => 280
	i64 u0xab9c1b2687d86b0b, ; 760: lib_System.Linq.Expressions.dll.so => 60
	i64 u0xab9c576dc13fe678, ; 761: lib_Microsoft.Kiota.Serialization.Json.dll.so => 215
	i64 u0xac0f30d94c068d66, ; 762: Uno.Xaml => 351
	i64 u0xac2af3fa195a15ce, ; 763: System.Runtime.Numerics => 113
	i64 u0xac5376a2a538dc10, ; 764: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 301
	i64 u0xac5acae88f60357e, ; 765: System.Diagnostics.Tools.dll => 32
	i64 u0xac79c7e46047ad98, ; 766: System.Security.Principal.Windows.dll => 130
	i64 u0xac98d31068e24591, ; 767: System.Xml.XDocument => 162
	i64 u0xacdd9e4180d56dda, ; 768: Xamarin.AndroidX.Concurrent.Futures => 278
	i64 u0xacf42eea7ef9cd12, ; 769: System.Threading.Channels => 143
	i64 u0xad7e82ed3b0f16d0, ; 770: lib_Xamarin.AndroidX.DocumentFile.dll.so => 289
	i64 u0xadbb53caf78a79d2, ; 771: System.Web.HttpUtility => 156
	i64 u0xadc90ab061a9e6e4, ; 772: System.ComponentModel.TypeConverter.dll => 17
	i64 u0xadf4cf30debbeb9a, ; 773: System.Net.ServicePoint.dll => 77
	i64 u0xadf511667bef3595, ; 774: System.Net.Security => 75
	i64 u0xae0aaa94fdcfce0f, ; 775: System.ComponentModel.EventBasedAsync.dll => 15
	i64 u0xae282bcd03739de7, ; 776: Java.Interop => 172
	i64 u0xae31ed372ac8c4cf, ; 777: lib_Uno.UI.HotDesign.Client.dll.so => 371
	i64 u0xae53579c90db1107, ; 778: System.ObjectModel.dll => 87
	i64 u0xaf732d0b2193b8f5, ; 779: System.Security.Cryptography.OpenSsl.dll => 126
	i64 u0xaf7d4166c4304223, ; 780: Uno.UI.Composition.dll => 345
	i64 u0xaf9c4f550f1dfc36, ; 781: Xamarin.AndroidX.AsyncLayoutInflater => 273
	i64 u0xafc06a67bec4f1bf, ; 782: lib_Uno.UI.Composition.dll.so => 345
	i64 u0xafe29f45095518e7, ; 783: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 307
	i64 u0xafe8e4d1ae2a2c43, ; 784: lib_Microsoft.Extensions.Configuration.EnvironmentVariables.dll.so => 186
	i64 u0xb03ae931fb25607e, ; 785: Xamarin.AndroidX.ConstraintLayout => 279
	i64 u0xb05b6f0a6cc8ddbb, ; 786: lib_Microsoft.IO.RecyclableMemoryStream.dll.so => 211
	i64 u0xb0bb43dc52ea59f9, ; 787: System.Diagnostics.Tracing.dll => 34
	i64 u0xb10eef93822a91f0, ; 788: lib_Microsoft.Extensions.Hosting.dll.so => 197
	i64 u0xb1457ca42d0503f1, ; 789: SkiaSharp.Resources => 221
	i64 u0xb1530eae0c9aa834, ; 790: Uno.UI.Runtime.Skia.Android.dll => 264
	i64 u0xb1dd05401aa8ee63, ; 791: System.Security.AccessControl => 120
	i64 u0xb220631954820169, ; 792: System.Text.RegularExpressions => 141
	i64 u0xb2376e1dbf8b4ed7, ; 793: System.Security.Cryptography.Csp => 124
	i64 u0xb2a1959fe95c5402, ; 794: lib_System.Runtime.InteropServices.JavaScript.dll.so => 108
	i64 u0xb3874072ee0ecf8c, ; 795: Xamarin.AndroidX.VectorDrawable.Animated.dll => 325
	i64 u0xb3aa4fc3d77a571c, ; 796: Microsoft.Extensions.Hosting => 197
	i64 u0xb3f0a0fcda8d3ebc, ; 797: Xamarin.AndroidX.CardView => 275
	i64 u0xb4bd7015ecee9d86, ; 798: System.IO.Pipelines => 54
	i64 u0xb4c53d9749c5f226, ; 799: lib_System.IO.FileSystem.AccessControl.dll.so => 47
	i64 u0xb4ff710863453fda, ; 800: System.Diagnostics.FileVersionInfo.dll => 28
	i64 u0xb54092076b15e062, ; 801: System.Threading.AccessControl => 142
	i64 u0xb5c38bf497a4cfe2, ; 802: lib_System.Threading.Tasks.dll.so => 148
	i64 u0xb5c7fcdafbc67ee4, ; 803: Microsoft.Extensions.Logging.Abstractions.dll => 202
	i64 u0xb5ea31d5244c6626, ; 804: System.Threading.ThreadPool.dll => 150
	i64 u0xb64b14a20f4a5b5d, ; 805: lib_Uno.UI.HotDesign.dll.so => 380
	i64 u0xb64c147353266789, ; 806: Uno.UI.RemoteControl.dll => 354
	i64 u0xb6852b59bbe5aa16, ; 807: lib_Uno.Extensions.Reactive.dll.so => 244
	i64 u0xb7212c4683a94afe, ; 808: System.Drawing.Primitives => 35
	i64 u0xb74efaf1941bd698, ; 809: Uno.Extensions.Configuration => 236
	i64 u0xb76fec8889890d92, ; 810: lib_Xamarin.AndroidX.Core.SplashScreen.dll.so => 284
	i64 u0xb81a2c6e0aee50fe, ; 811: lib_System.Private.CoreLib.dll.so => 177
	i64 u0xb872c26142d22aa9, ; 812: Microsoft.Extensions.Http.dll => 199
	i64 u0xb8800dbd458dbf07, ; 813: lib_Uno.UI.HotDesign.Previews.dll.so => 375
	i64 u0xb89bb37af66b9fc2, ; 814: Uno.Extensions.Navigation => 243
	i64 u0xb8b0a9b3dfbc5cb7, ; 815: Xamarin.AndroidX.Window.Extensions.Core.Core => 330
	i64 u0xb8c60af47c08d4da, ; 816: System.Net.ServicePoint => 77
	i64 u0xb8e68d20aad91196, ; 817: lib_System.Xml.XPath.dll.so => 164
	i64 u0xb9185c33a1643eed, ; 818: Microsoft.CSharp.dll => 1
	i64 u0xb960d6b2200ba320, ; 819: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.Android.dll => 308
	i64 u0xb9b8001adf4ed7cc, ; 820: lib_Xamarin.AndroidX.SlidingPaneLayout.dll.so => 318
	i64 u0xba4670aa94a2b3c6, ; 821: lib_System.Xml.XDocument.dll.so => 162
	i64 u0xba48785529705af9, ; 822: System.Collections.dll => 12
	i64 u0xba965b8c86359996, ; 823: lib_System.Windows.dll.so => 158
	i64 u0xbb272a43608ae0e8, ; 824: Microsoft.Extensions.Configuration.EnvironmentVariables => 186
	i64 u0xbb286883bc35db36, ; 825: System.Transactions.dll => 154
	i64 u0xbb65706fde942ce3, ; 826: System.Net.Sockets => 78
	i64 u0xbb6cecb7d9fc68d7, ; 827: SkiaSharp.Skottie => 223
	i64 u0xbba28979413cad9e, ; 828: lib_System.Runtime.CompilerServices.VisualC.dll.so => 105
	i64 u0xbbd180354b67271a, ; 829: System.Runtime.Serialization.Formatters => 114
	i64 u0xbc260cdba33291a3, ; 830: Xamarin.AndroidX.Arch.Core.Common.dll => 271
	i64 u0xbcad254416964f51, ; 831: lib_Uno.Extensions.Navigation.UI.dll.so => 361
	i64 u0xbce1d9f3fda5f9b6, ; 832: Uno.Toolkit.WinUI.dll => 366
	i64 u0xbd0e2c0d55246576, ; 833: System.Net.Http.dll => 66
	i64 u0xbd3fbd85b9e1cb29, ; 834: lib_System.Net.HttpListener.dll.so => 67
	i64 u0xbd437a2cdb333d0d, ; 835: Xamarin.AndroidX.ViewPager2 => 328
	i64 u0xbd4f572d2bd0a789, ; 836: System.IO.Compression.ZipFile.dll => 45
	i64 u0xbd5d0b88d3d647a5, ; 837: lib_Xamarin.AndroidX.Browser.dll.so => 274
	i64 u0xbd877b14d0b56392, ; 838: System.Runtime.Intrinsics.dll => 111
	i64 u0xbe04c77645f06233, ; 839: Microsoft.Extensions.Logging.Configuration => 203
	i64 u0xbe65a49036345cf4, ; 840: lib_System.Buffers.dll.so => 7
	i64 u0xbea5dd3dab982a58, ; 841: Uno.UI.Toolkit.dll => 350
	i64 u0xbee38d4a88835966, ; 842: Xamarin.AndroidX.AppCompat.AppCompatResources => 270
	i64 u0xbef9919db45b4ca7, ; 843: System.IO.Pipes.AccessControl => 55
	i64 u0xbf0fa68611139208, ; 844: lib_Xamarin.AndroidX.Annotation.dll.so => 266
	i64 u0xbf1896fd30862e56, ; 845: Uno.Core.Extensions.dll => 228
	i64 u0xbfc1e1fb3095f2b3, ; 846: lib_System.Net.Http.Json.dll.so => 65
	i64 u0xbfc455f43efd8f21, ; 847: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 296
	i64 u0xc07cadab29efeba0, ; 848: Xamarin.AndroidX.Core.Core.Ktx.dll => 283
	i64 u0xc0c7d9274d1f6be3, ; 849: lib_Microsoft.Kiota.Abstractions.dll.so => 212
	i64 u0xc0d928351ab5ca77, ; 850: System.Console.dll => 20
	i64 u0xc0f5a221a9383aea, ; 851: System.Runtime.Intrinsics => 111
	i64 u0xc111030af54d7191, ; 852: System.Resources.Writer => 103
	i64 u0xc12b8b3afa48329c, ; 853: lib_System.Linq.dll.so => 63
	i64 u0xc183ca0b74453aa9, ; 854: lib_System.Threading.Tasks.Dataflow.dll.so => 145
	i64 u0xc1ff9ae3cdb6e1e6, ; 855: Xamarin.AndroidX.Activity.dll => 265
	i64 u0xc25755fc164040b8, ; 856: Uno.UI.HotDesign.dll => 380
	i64 u0xc26c064effb1dea9, ; 857: System.Buffers.dll => 7
	i64 u0xc27a0dbe1ae51104, ; 858: Microsoft.Extensions.Configuration.EnvironmentVariables.dll => 186
	i64 u0xc2902f6cf5452577, ; 859: lib_Mono.Android.Export.dll.so => 173
	i64 u0xc2a3bca55b573141, ; 860: System.IO.FileSystem.Watcher => 50
	i64 u0xc2bcfec99f69365e, ; 861: Xamarin.AndroidX.ViewPager2.dll => 328
	i64 u0xc308f6b20c694373, ; 862: lib_Uno.UI.HotDesign.Client.Core.dll.so => 370
	i64 u0xc30b52815b58ac2c, ; 863: lib_System.Runtime.Serialization.Xml.dll.so => 117
	i64 u0xc30e216f42f9c081, ; 864: Uno.UI.FluentTheme.v2.dll => 349
	i64 u0xc35d73df3cf0bcc2, ; 865: lib_Microsoft.Extensions.Logging.EventSource.dll.so => 207
	i64 u0xc36d7d89c652f455, ; 866: System.Threading.Overlapped => 144
	i64 u0xc3c86c1e5e12f03d, ; 867: WindowsBase => 169
	i64 u0xc3c93b190799ed2a, ; 868: lib_Uno.Fonts.Roboto.dll.so => 253
	i64 u0xc421b61fd853169d, ; 869: lib_System.Net.WebSockets.Client.dll.so => 82
	i64 u0xc463e077917aa21d, ; 870: System.Runtime.Serialization.Json => 115
	i64 u0xc4acfa192235f49c, ; 871: Uno.UI.Lottie => 353
	i64 u0xc4d3858ed4d08512, ; 872: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 307
	i64 u0xc4d459336da7464d, ; 873: Uno.Fonts.Roboto => 253
	i64 u0xc50fded0ded1418c, ; 874: lib_System.ComponentModel.TypeConverter.dll.so => 17
	i64 u0xc519125d6bc8fb11, ; 875: lib_System.Net.Requests.dll.so => 74
	i64 u0xc5325b2fcb37446f, ; 876: lib_System.Private.Xml.dll.so => 91
	i64 u0xc560ed0a5d4290b7, ; 877: Uno.UI.Lottie.dll => 353
	i64 u0xc5a0f4b95a699af7, ; 878: lib_System.Private.Uri.dll.so => 89
	i64 u0xc5cdcd5b6277579e, ; 879: lib_System.Security.Cryptography.Algorithms.dll.so => 122
	i64 u0xc5ec286825cb0bf4, ; 880: Xamarin.AndroidX.Tracing.Tracing => 321
	i64 u0xc61b38dee7737ca4, ; 881: lib_Uno.Extensions.Localization.WinUI.dll.so => 358
	i64 u0xc659b586d4c229e2, ; 882: Microsoft.Extensions.Configuration.FileExtensions.dll => 187
	i64 u0xc6706bc8aa7fe265, ; 883: Xamarin.AndroidX.Annotation.Jvm => 268
	i64 u0xc75eca90670793ff, ; 884: Uno.Extensions.Localization.WinUI => 358
	i64 u0xc7c01e7d7c93a110, ; 885: System.Text.Encoding.Extensions.dll => 137
	i64 u0xc7c23499e19bc0e8, ; 886: Uno.Core.Extensions.Logging.Singleton.dll => 233
	i64 u0xc7ce851898a4548e, ; 887: lib_System.Web.HttpUtility.dll.so => 156
	i64 u0xc809d4089d2556b2, ; 888: System.Runtime.InteropServices.JavaScript.dll => 108
	i64 u0xc858a28d9ee5a6c5, ; 889: lib_System.Collections.Specialized.dll.so => 11
	i64 u0xc8ac7c6bf1c2ec51, ; 890: System.Reflection.DispatchProxy.dll => 92
	i64 u0xc931411ad5c0b93a, ; 891: Uno.UI.HotDesign.Hierarchy => 373
	i64 u0xc9c62c8f354ac568, ; 892: lib_System.Diagnostics.TextWriterTraceListener.dll.so => 31
	i64 u0xca0bef579a9cf029, ; 893: Uno.UI.HotDesign.Client => 371
	i64 u0xca5099cf6d83d680, ; 894: Uno.Extensions.Reactive => 244
	i64 u0xca5801070d9fccfb, ; 895: System.Text.Encoding => 138
	i64 u0xca5f451f0eb31b61, ; 896: lib_Uno.UI.FluentTheme.v2.dll.so => 349
	i64 u0xca81875c5e598234, ; 897: lib_Uno.Fonts.Inter.dll.so => 251
	i64 u0xcadbc92899a777f0, ; 898: Xamarin.AndroidX.Startup.StartupRuntime => 319
	i64 u0xcb30a17ded08477c, ; 899: Uno.Core.Extensions.Logging => 232
	i64 u0xcb9f74e7e7336118, ; 900: Uno.UI.HotDesign.PropertyGrid => 376
	i64 u0xcbb5f80c7293e696, ; 901: lib_System.Globalization.Calendars.dll.so => 40
	i64 u0xcbd4fdd9cef4a294, ; 902: lib__Microsoft.Android.Resource.Designer.dll.so => 382
	i64 u0xcc15da1e07bbd994, ; 903: Xamarin.AndroidX.SlidingPaneLayout => 318
	i64 u0xcc182c3afdc374d6, ; 904: Microsoft.Bcl.AsyncInterfaces => 181
	i64 u0xcc2876b32ef2794c, ; 905: lib_System.Text.RegularExpressions.dll.so => 141
	i64 u0xcc5c3bb714c4561e, ; 906: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 339
	i64 u0xcc76886e09b88260, ; 907: Xamarin.KotlinX.Serialization.Core.Jvm.dll => 341
	i64 u0xcc9fa2923aa1c9ef, ; 908: System.Diagnostics.Contracts.dll => 25
	i64 u0xccae9bb73e2326bd, ; 909: lib_System.IO.Hashing.dll.so => 176
	i64 u0xcd10a42808629144, ; 910: System.Net.Requests => 74
	i64 u0xcdca1b920e9f53ba, ; 911: Xamarin.AndroidX.Interpolator => 295
	i64 u0xcdd0c48b6937b21c, ; 912: Xamarin.AndroidX.SwipeRefreshLayout => 320
	i64 u0xcf23d8093f3ceadf, ; 913: System.Diagnostics.DiagnosticSource.dll => 27
	i64 u0xcf3a9996a625b6e2, ; 914: Microsoft.Extensions.Logging.Configuration.dll => 203
	i64 u0xcf5ff6b6b2c4c382, ; 915: System.Net.Mail.dll => 68
	i64 u0xcf8fc898f98b0d34, ; 916: System.Private.Xml.Linq => 90
	i64 u0xcfa125f4158d691c, ; 917: Uno.Extensions.Localization => 241
	i64 u0xd04890efc9deb2e0, ; 918: lib_Uno.Foundation.Logging.dll.so => 254
	i64 u0xd04b5f59ed596e31, ; 919: System.Reflection.Metadata.dll => 97
	i64 u0xd063299fcfc0c93f, ; 920: lib_System.Runtime.Serialization.Json.dll.so => 115
	i64 u0xd0de8a113e976700, ; 921: System.Diagnostics.TextWriterTraceListener => 31
	i64 u0xd0fc33d5ae5d4cb8, ; 922: System.Runtime.Extensions => 106
	i64 u0xd10d5932534af399, ; 923: CommonServiceLocator => 178
	i64 u0xd1194e1d8a8de83c, ; 924: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 300
	i64 u0xd12beacdfc14f696, ; 925: System.Dynamic.Runtime => 37
	i64 u0xd16fd7fb9bbcd43e, ; 926: Microsoft.Extensions.Diagnostics.Abstractions => 193
	i64 u0xd198e7ce1b6a8344, ; 927: System.Net.Quic.dll => 73
	i64 u0xd23f43eaa6c25c64, ; 928: Xamarin.AndroidX.Media.dll => 311
	i64 u0xd3144156a3727ebe, ; 929: Xamarin.Google.Guava.ListenableFuture => 333
	i64 u0xd3299c184f2cad6e, ; 930: Microsoft.Kiota.Http.HttpClientLibrary.dll => 213
	i64 u0xd333d0af9e423810, ; 931: System.Runtime.InteropServices => 110
	i64 u0xd33a415cb4278969, ; 932: System.Security.Cryptography.Encoding.dll => 125
	i64 u0xd33afc69c2e5e4f5, ; 933: Uno.Toolkit.WinUI => 366
	i64 u0xd3426d966bb704f5, ; 934: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 270
	i64 u0xd3651b6fc3125825, ; 935: System.Private.Uri.dll => 89
	i64 u0xd373685349b1fe8b, ; 936: Microsoft.Extensions.Logging.dll => 201
	i64 u0xd3801faafafb7698, ; 937: System.Private.DataContractSerialization.dll => 88
	i64 u0xd3edcc1f25459a50, ; 938: System.Reflection.Emit => 95
	i64 u0xd4645626dffec99d, ; 939: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 191
	i64 u0xd4fa0abb79079ea9, ; 940: System.Security.Principal.dll => 131
	i64 u0xd51be2ac10031cf7, ; 941: lib_Uno.Extensions.Serialization.Http.dll.so => 247
	i64 u0xd5507e11a2b2839f, ; 942: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 307
	i64 u0xd5a2778f5584fa3b, ; 943: SkiaSharp.Skottie.dll => 223
	i64 u0xd5d04bef8478ea19, ; 944: Xamarin.AndroidX.Tracing.Tracing.dll => 321
	i64 u0xd60815f26a12e140, ; 945: Microsoft.Extensions.Logging.Debug.dll => 205
	i64 u0xd6694f8359737e4e, ; 946: Xamarin.AndroidX.SavedState => 316
	i64 u0xd6949e129339eae5, ; 947: lib_Xamarin.AndroidX.Core.Core.Ktx.dll.so => 283
	i64 u0xd6c63d7094e9738d, ; 948: lib_Uno.UI.FluentTheme.dll.so => 347
	i64 u0xd6d21782156bc35b, ; 949: Xamarin.AndroidX.SwipeRefreshLayout.dll => 320
	i64 u0xd6de019f6af72435, ; 950: Xamarin.AndroidX.ConstraintLayout.Core.dll => 280
	i64 u0xd72329819cbbbc44, ; 951: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 183
	i64 u0xd72c760af136e863, ; 952: System.Xml.XmlSerializer.dll => 166
	i64 u0xd753f071e44c2a03, ; 953: lib_System.Security.SecureString.dll.so => 132
	i64 u0xd780421822bce3af, ; 954: Uno.Simple.WinUI => 364
	i64 u0xd7b3764ada9d341d, ; 955: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 202
	i64 u0xd7f0088bc5ad71f2, ; 956: Xamarin.AndroidX.VersionedParcelable => 326
	i64 u0xd82c7682756bef81, ; 957: SkiaSharp.Views.Windows => 352
	i64 u0xd8a1897004ca8e24, ; 958: lib_Uno.Extensions.Serialization.dll.so => 246
	i64 u0xd8fb25e28ae30a12, ; 959: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 313
	i64 u0xd961b5933473042b, ; 960: Uno.UI.HotDesign => 380
	i64 u0xda1dfa4c534a9251, ; 961: Microsoft.Extensions.DependencyInjection => 190
	i64 u0xdab32c1c8855e7d2, ; 962: Uno.UI.HotDesign.Client.Core.dll => 370
	i64 u0xdad05a11827959a3, ; 963: System.Collections.NonGeneric.dll => 10
	i64 u0xdaefdfe71aa53cf9, ; 964: System.IO.FileSystem.Primitives => 49
	i64 u0xdb58816721c02a59, ; 965: lib_System.Reflection.Emit.ILGeneration.dll.so => 93
	i64 u0xdbef3561b7718883, ; 966: Uno.UI.Adapter.Microsoft.Extensions.Logging.dll => 256
	i64 u0xdbf2a779fbc3ac31, ; 967: System.Transactions.Local.dll => 153
	i64 u0xdbf9607a441b4505, ; 968: System.Linq => 63
	i64 u0xdbfc90157a0de9b0, ; 969: lib_System.Text.Encoding.dll.so => 138
	i64 u0xdc42cfae1d79e9d1, ; 970: Uno.Core.Extensions.Logging.dll => 232
	i64 u0xdc4e2bc401dc6de6, ; 971: Uno.Extensions.Core.UI => 355
	i64 u0xdc75032002d1a212, ; 972: lib_System.Transactions.Local.dll.so => 153
	i64 u0xdca8be7403f92d4f, ; 973: lib_System.Linq.Queryable.dll.so => 62
	i64 u0xdce2c53525640bf3, ; 974: Microsoft.Extensions.Logging => 201
	i64 u0xdd2b722d78ef5f43, ; 975: System.Runtime.dll => 119
	i64 u0xdd67031857c72f96, ; 976: lib_System.Text.Encodings.Web.dll.so => 139
	i64 u0xdd70765ad6162057, ; 977: Xamarin.JSpecify => 335
	i64 u0xdd92e229ad292030, ; 978: System.Numerics.dll => 86
	i64 u0xdda326156873618f, ; 979: Uno.Toolkit.WinUI.Simple.dll => 367
	i64 u0xdddcdd701e911af1, ; 980: lib_Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so => 297
	i64 u0xde110ae80fa7c2e2, ; 981: System.Xml.XDocument.dll => 162
	i64 u0xde327cd8af0a2cbc, ; 982: lib_Microsoft.Extensions.Configuration.CommandLine.dll.so => 185
	i64 u0xde4726fcdf63a198, ; 983: Xamarin.AndroidX.Transition => 323
	i64 u0xde572c2b2fb32f93, ; 984: lib_System.Threading.Tasks.Extensions.dll.so => 146
	i64 u0xdea2dda0ffa41844, ; 985: Uno.Extensions.Http.dll => 239
	i64 u0xdf3b81f65864db44, ; 986: Microsoft.Extensions.Configuration.UserSecrets.dll => 189
	i64 u0xdf4b773de8fb1540, ; 987: System.Net.dll => 84
	i64 u0xdf9c7682560a9629, ; 988: System.Net.ServerSentEvents => 76
	i64 u0xdfa254ebb4346068, ; 989: System.Net.Ping => 71
	i64 u0xe0142572c095a480, ; 990: Xamarin.AndroidX.AppCompat.dll => 269
	i64 u0xe021eaa401792a05, ; 991: System.Text.Encoding.dll => 138
	i64 u0xe02f89350ec78051, ; 992: Xamarin.AndroidX.CoordinatorLayout.dll => 281
	i64 u0xe097285d3875c47d, ; 993: Uno.Fonts.Fluent => 250
	i64 u0xe0b295ef869eb971, ; 994: lib_Uno.UI.Runtime.Skia.Android.dll.so => 264
	i64 u0xe0e2d27292831dcc, ; 995: Uno.UI.HotDesign.Xaml => 261
	i64 u0xe0f282c49dd6bd0a, ; 996: Xamarin.AndroidX.Media => 311
	i64 u0xe10b760bb1462e7a, ; 997: lib_System.Security.Cryptography.Primitives.dll.so => 127
	i64 u0xe188b6ef9ca6b211, ; 998: Uno.Extensions.Authentication => 235
	i64 u0xe192a588d4410686, ; 999: lib_System.IO.Pipelines.dll.so => 54
	i64 u0xe1a08bd3fa539e0d, ; 1000: System.Runtime.Loader => 112
	i64 u0xe1a77eb8831f7741, ; 1001: System.Security.SecureString.dll => 132
	i64 u0xe1b52f9f816c70ef, ; 1002: System.Private.Xml.Linq.dll => 90
	i64 u0xe1e199c8ab02e356, ; 1003: System.Data.DataSetExtensions.dll => 23
	i64 u0xe1ecfdb7fff86067, ; 1004: System.Net.Security.dll => 75
	i64 u0xe2252a80fe853de4, ; 1005: lib_System.Security.Principal.dll.so => 131
	i64 u0xe22fa4c9c645db62, ; 1006: System.Diagnostics.TextWriterTraceListener.dll => 31
	i64 u0xe24095a7afddaab3, ; 1007: lib_Microsoft.Extensions.Hosting.Abstractions.dll.so => 198
	i64 u0xe2420585aeceb728, ; 1008: System.Net.Requests.dll => 74
	i64 u0xe2ad448dee50fbdf, ; 1009: System.Xml.Serialization => 161
	i64 u0xe2d920f978f5d85c, ; 1010: System.Data.DataSetExtensions => 23
	i64 u0xe2e426c7714fa0bc, ; 1011: Microsoft.Win32.Primitives.dll => 4
	i64 u0xe2ecad4b18de7d3c, ; 1012: Std.UriTemplate => 225
	i64 u0xe332bacb3eb4a806, ; 1013: Mono.Android.Export.dll => 173
	i64 u0xe3b7cbae5ad66c75, ; 1014: lib_System.Security.Cryptography.Encoding.dll.so => 125
	i64 u0xe415854e7ac717bf, ; 1015: Uno => 343
	i64 u0xe4292b48f3224d5b, ; 1016: lib_Xamarin.AndroidX.Core.ViewTree.dll.so => 285
	i64 u0xe4525d53abf07af2, ; 1017: lib_Uno.UI.Runtime.Skia.dll.so => 263
	i64 u0xe4f74a0b5bf9703f, ; 1018: System.Runtime.Serialization.Primitives => 116
	i64 u0xe50653e2bf1f4af6, ; 1019: Microsoft.Kiota.Serialization.Multipart => 216
	i64 u0xe5434e8a119ceb69, ; 1020: lib_Mono.Android.dll.so => 175
	i64 u0xe55703b9ce5c038a, ; 1021: System.Diagnostics.Tools => 32
	i64 u0xe57013c8afc270b5, ; 1022: Microsoft.VisualBasic => 3
	i64 u0xe5a86e0c11dca2ba, ; 1023: lib_Xamarin.AndroidX.AsyncLayoutInflater.dll.so => 273
	i64 u0xe5d3abc39882176f, ; 1024: Uno.Themes.WinUI => 365
	i64 u0xe606eaeeff126ee6, ; 1025: lib_Uno.Toolkit.dll.so => 255
	i64 u0xe6246bb45a39d0c5, ; 1026: Microsoft.Kiota.Serialization.Multipart.dll => 216
	i64 u0xe62913cc36bc07ec, ; 1027: System.Xml.dll => 167
	i64 u0xe63ad56dcb91c664, ; 1028: lib_Uno.UI.HotDesign.Xaml.dll.so => 261
	i64 u0xe6cb556a9ea66905, ; 1029: Uno.Extensions.Navigation.Toolkit.UI => 360
	i64 u0xe76e87f06648a47c, ; 1030: Uno.Extensions.Http.WinUI.dll => 357
	i64 u0xe770aaabc753743d, ; 1031: lib_Microsoft.Kiota.Http.HttpClientLibrary.dll.so => 213
	i64 u0xe7b0691bcbb5a85d, ; 1032: System.Linq.Async => 227
	i64 u0xe7bea09c4900a191, ; 1033: Xamarin.AndroidX.VectorDrawable.dll => 324
	i64 u0xe7e03cc18dcdeb49, ; 1034: lib_System.Diagnostics.StackTrace.dll.so => 30
	i64 u0xe7e147ff99a7a380, ; 1035: lib_System.Configuration.dll.so => 19
	i64 u0xe8397cf3948e7cb7, ; 1036: lib_Microsoft.Extensions.Options.ConfigurationExtensions.dll.so => 209
	i64 u0xe86b0df4ba9e5db8, ; 1037: lib_Xamarin.AndroidX.Lifecycle.Runtime.Android.dll.so => 304
	i64 u0xe896622fe0902957, ; 1038: System.Reflection.Emit.dll => 95
	i64 u0xe89a2a9ef110899b, ; 1039: System.Drawing.dll => 36
	i64 u0xe8c5f8c100b5934b, ; 1040: Microsoft.Win32.Registry => 5
	i64 u0xe957c3976986ab72, ; 1041: lib_Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so => 330
	i64 u0xe98163eb702ae5c5, ; 1042: Xamarin.AndroidX.Arch.Core.Runtime => 272
	i64 u0xe994f23ba4c143e5, ; 1043: Xamarin.KotlinX.Coroutines.Android => 337
	i64 u0xe9b9c8c0458fd92a, ; 1044: System.Windows => 158
	i64 u0xe9d166d87a7f2bdb, ; 1045: lib_Xamarin.AndroidX.Startup.StartupRuntime.dll.so => 319
	i64 u0xea5a4efc2ad81d1b, ; 1046: Xamarin.Google.ErrorProne.Annotations => 332
	i64 u0xeb2313fe9d65b785, ; 1047: Xamarin.AndroidX.ConstraintLayout.dll => 279
	i64 u0xeb6e275e78cb8d42, ; 1048: Xamarin.AndroidX.LocalBroadcastManager.dll => 310
	i64 u0xec47091de17c49a6, ; 1049: Uno.UI.HotDesign.PropertyGrid.dll => 376
	i64 u0xece21f5892e31f80, ; 1050: lib_Uno.AI.XamlGeneration.Contracts.dll.so => 368
	i64 u0xecf5eb577a23c9c6, ; 1051: SkiaSharp.SceneGraph => 222
	i64 u0xed1581e8b74d657f, ; 1052: Uno.Foundation => 342
	i64 u0xed19c616b3fcb7eb, ; 1053: Xamarin.AndroidX.VersionedParcelable.dll => 326
	i64 u0xed6ef763c6fb395f, ; 1054: System.Diagnostics.EventLog.dll => 226
	i64 u0xedc4817167106c23, ; 1055: System.Net.Sockets.dll => 78
	i64 u0xedc632067fb20ff3, ; 1056: System.Memory.dll => 64
	i64 u0xee25c2570ce19192, ; 1057: lib_Microsoft.Extensions.Localization.Abstractions.dll.so => 200
	i64 u0xee81f5b3f1c4f83b, ; 1058: System.Threading.ThreadPool => 150
	i64 u0xeeaacd472515fc4d, ; 1059: Uno.Extensions.Navigation.dll => 243
	i64 u0xeeb7ebb80150501b, ; 1060: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 277
	i64 u0xeefc635595ef57f0, ; 1061: System.Security.Cryptography.Cng => 123
	i64 u0xef03b1b5a04e9709, ; 1062: System.Text.Encoding.CodePages.dll => 136
	i64 u0xef160fd12d6857e4, ; 1063: Uno.Extensions.Navigation.UI.dll => 361
	i64 u0xef432781d5667f61, ; 1064: Xamarin.AndroidX.Print => 312
	i64 u0xef5bcbe61622ee5f, ; 1065: Xamarin.AndroidX.Tracing.Tracing.Android.dll => 322
	i64 u0xef602c523fe2e87a, ; 1066: lib_Xamarin.Google.Guava.ListenableFuture.dll.so => 333
	i64 u0xefd1e0c4e5c9b371, ; 1067: System.Resources.ResourceManager.dll => 102
	i64 u0xefd684bb6d739244, ; 1068: Microsoft.Kiota.Abstractions.dll => 212
	i64 u0xefe8f8d5ed3c72ea, ; 1069: System.Formats.Tar.dll => 39
	i64 u0xefec0b7fdc57ec42, ; 1070: Xamarin.AndroidX.Activity => 265
	i64 u0xeff59cbde4363ec3, ; 1071: System.Threading.AccessControl.dll => 142
	i64 u0xf09e47b6ae914f6e, ; 1072: System.Net.NameResolution => 69
	i64 u0xf0ac2b489fed2e35, ; 1073: lib_System.Diagnostics.Debug.dll.so => 26
	i64 u0xf0bb3be9a4d1cca1, ; 1074: lib_Uno.UI.HotDesign.Messaging.dll.so => 260
	i64 u0xf0bb49dadd3a1fe1, ; 1075: lib_System.Net.ServicePoint.dll.so => 77
	i64 u0xf0de2537ee19c6ca, ; 1076: lib_System.Net.WebHeaderCollection.dll.so => 80
	i64 u0xf1138779fa181c68, ; 1077: lib_Xamarin.AndroidX.Lifecycle.Runtime.dll.so => 303
	i64 u0xf1413eec37190751, ; 1078: lib_Uno.Extensions.Navigation.dll.so => 243
	i64 u0xf161f4f3c3b7e62c, ; 1079: System.Data => 24
	i64 u0xf16eb650d5a464bc, ; 1080: System.ValueTuple => 155
	i64 u0xf1c4b4005493d871, ; 1081: System.Formats.Asn1.dll => 38
	i64 u0xf22514cfad2d598b, ; 1082: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.Android.dll.so => 308
	i64 u0xf2feea356ba760af, ; 1083: Xamarin.AndroidX.Arch.Core.Runtime.dll => 272
	i64 u0xf300e085f8acd238, ; 1084: lib_System.ServiceProcess.dll.so => 135
	i64 u0xf34e52b26e7e059d, ; 1085: System.Runtime.CompilerServices.VisualC.dll => 105
	i64 u0xf37221fda4ef8830, ; 1086: lib_Xamarin.Google.Android.Material.dll.so => 331
	i64 u0xf384f31200346545, ; 1087: Uno.Extensions.Localization.WinUI.dll => 358
	i64 u0xf3ad9b8fb3eefd12, ; 1088: lib_System.IO.UnmanagedMemoryStream.dll.so => 57
	i64 u0xf3ddfe05336abf29, ; 1089: System => 168
	i64 u0xf408654b2a135055, ; 1090: System.Reflection.Emit.ILGeneration.dll => 93
	i64 u0xf4103170a1de5bd0, ; 1091: System.Linq.Queryable.dll => 62
	i64 u0xf42d20c23173d77c, ; 1092: lib_System.ServiceModel.Web.dll.so => 134
	i64 u0xf4727d423e5d26f3, ; 1093: SkiaSharp => 220
	i64 u0xf4c1dd70a5496a17, ; 1094: System.IO.Compression => 46
	i64 u0xf4ecf4b9afc64781, ; 1095: System.ServiceProcess.dll => 135
	i64 u0xf4eeeaa566e9b970, ; 1096: lib_Xamarin.AndroidX.CustomView.PoolingContainer.dll.so => 288
	i64 u0xf518f63ead11fcd1, ; 1097: System.Threading.Tasks => 148
	i64 u0xf5dc86709fe55ab9, ; 1098: Microsoft.Kiota.Serialization.Json => 215
	i64 u0xf5fc7602fe27b333, ; 1099: System.Net.WebHeaderCollection => 80
	i64 u0xf6077741019d7428, ; 1100: Xamarin.AndroidX.CoordinatorLayout => 281
	i64 u0xf6742cbf457c450b, ; 1101: Xamarin.AndroidX.Lifecycle.Runtime.Android.dll => 304
	i64 u0xf69a1e3aae41f1f5, ; 1102: Uno.UI.App.Mcp.Client => 257
	i64 u0xf6abefb663f82926, ; 1103: Uno.UI.HotDesign.Client.dll => 371
	i64 u0xf6de7fa3776f8927, ; 1104: lib_Microsoft.Extensions.Configuration.Json.dll.so => 188
	i64 u0xf6e9ed5983c08f64, ; 1105: Microsoft.Extensions.Configuration.CommandLine.dll => 185
	i64 u0xf6f893f692f8cb43, ; 1106: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 209
	i64 u0xf70c0a7bf8ccf5af, ; 1107: System.Web => 157
	i64 u0xf727d83c50eea94d, ; 1108: lib_SkiaSharp.Skottie.dll.so => 223
	i64 u0xf76b7a08c2eb65b0, ; 1109: Uno.UI.HotDesign.Previews => 375
	i64 u0xf7dc71948ede9063, ; 1110: Uno.Core.Extensions.Collections => 229
	i64 u0xf7e2cac4c45067b3, ; 1111: lib_System.Numerics.Vectors.dll.so => 85
	i64 u0xf7e6db547511a252, ; 1112: Uno.Simple.WinUI.dll => 364
	i64 u0xf7fa0bf77fe677cc, ; 1113: Newtonsoft.Json.dll => 218
	i64 u0xf8aac5ea82de1348, ; 1114: System.Linq.Queryable => 62
	i64 u0xf8b77539b362d3ba, ; 1115: lib_System.Reflection.Primitives.dll.so => 98
	i64 u0xf8e045dc345b2ea3, ; 1116: lib_Xamarin.AndroidX.RecyclerView.dll.so => 314
	i64 u0xf915dc29808193a1, ; 1117: System.Web.HttpUtility.dll => 156
	i64 u0xf9be54c8bcf8ff3b, ; 1118: System.Security.AccessControl.dll => 120
	i64 u0xf9eec5bb3a6aedc6, ; 1119: Microsoft.Extensions.Options => 208
	i64 u0xfa0e82300e67f913, ; 1120: lib_System.AppContext.dll.so => 6
	i64 u0xfa2fdb27e8a2c8e8, ; 1121: System.ComponentModel.EventBasedAsync => 15
	i64 u0xfa3f278f288b0e84, ; 1122: lib_System.Net.Security.dll.so => 75
	i64 u0xfa504dfa0f097d72, ; 1123: Microsoft.Extensions.FileProviders.Abstractions.dll => 194
	i64 u0xfa645d91e9fc4cba, ; 1124: System.Threading.Thread => 149
	i64 u0xfad4d2c770e827f9, ; 1125: lib_System.IO.IsolatedStorage.dll.so => 52
	i64 u0xfb06dd2338e6f7c4, ; 1126: System.Net.Ping.dll => 71
	i64 u0xfb087abe5365e3b7, ; 1127: lib_System.Data.DataSetExtensions.dll.so => 23
	i64 u0xfb846e949baff5ea, ; 1128: System.Xml.Serialization.dll => 161
	i64 u0xfbad3e4ce4b98145, ; 1129: System.Security.Cryptography.X509Certificates => 128
	i64 u0xfbce58eec00f66ce, ; 1130: Uno.Extensions.Logging.WebAssembly.Console => 242
	i64 u0xfbf0a31c9fc34bc4, ; 1131: lib_System.Net.Http.dll.so => 66
	i64 u0xfc61ddcf78dd1f54, ; 1132: Xamarin.AndroidX.LocalBroadcastManager => 310
	i64 u0xfc6b7527cc280b3f, ; 1133: lib_System.Runtime.Serialization.Formatters.dll.so => 114
	i64 u0xfc82690c2fe2735c, ; 1134: Xamarin.AndroidX.Lifecycle.Process.dll => 302
	i64 u0xfc93fc307d279893, ; 1135: System.IO.Pipes.AccessControl.dll => 55
	i64 u0xfcd302092ada6328, ; 1136: System.IO.MemoryMappedFiles.dll => 53
	i64 u0xfd22f00870e40ae0, ; 1137: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 290
	i64 u0xfd49b3c1a76e2748, ; 1138: System.Runtime.InteropServices.RuntimeInformation => 109
	i64 u0xfd536c702f64dc47, ; 1139: System.Text.Encoding.Extensions => 137
	i64 u0xfd583f7657b6a1cb, ; 1140: Xamarin.AndroidX.Fragment => 294
	i64 u0xfd8dd91a2c26bd5d, ; 1141: Xamarin.AndroidX.Lifecycle.Runtime => 303
	i64 u0xfda36abccf05cf5c, ; 1142: System.Net.WebSockets.Client => 82
	i64 u0xfddbe9695626a7f5, ; 1143: Xamarin.AndroidX.Lifecycle.Common => 299
	i64 u0xfe9856c3af9365ab, ; 1144: lib_Microsoft.Extensions.Configuration.FileExtensions.dll.so => 187
	i64 u0xfeca84fe7f34860b, ; 1145: HarfBuzzSharp.dll => 180
	i64 u0xff270a55858bac8d, ; 1146: System.Security.Principal => 131
	i64 u0xff9b54613e0d2cc8, ; 1147: System.Net.Http.Json => 65
	i64 u0xffdb7a971be4ec73 ; 1148: System.ValueTuple.dll => 155
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [1149 x i32] [
	i32 217, i32 42, i32 338, i32 320, i32 219, i32 13, i32 209, i32 107,
	i32 174, i32 48, i32 269, i32 211, i32 7, i32 88, i32 178, i32 291,
	i32 248, i32 72, i32 314, i32 12, i32 104, i32 230, i32 180, i32 159,
	i32 19, i32 277, i32 164, i32 234, i32 293, i32 324, i32 170, i32 10,
	i32 205, i32 236, i32 325, i32 98, i32 288, i32 217, i32 290, i32 13,
	i32 208, i32 10, i32 129, i32 97, i32 143, i32 39, i32 341, i32 327,
	i32 204, i32 175, i32 5, i32 68, i32 229, i32 132, i32 181, i32 376,
	i32 189, i32 292, i32 69, i32 263, i32 356, i32 224, i32 258, i32 67,
	i32 373, i32 57, i32 181, i32 287, i32 359, i32 52, i32 0, i32 372,
	i32 43, i32 127, i32 355, i32 68, i32 83, i32 161, i32 94, i32 363,
	i32 101, i32 314, i32 144, i32 234, i32 154, i32 274, i32 165, i32 172,
	i32 191, i32 83, i32 335, i32 4, i32 5, i32 254, i32 226, i32 51,
	i32 103, i32 56, i32 122, i32 100, i32 171, i32 120, i32 368, i32 252,
	i32 338, i32 21, i32 370, i32 139, i32 99, i32 361, i32 341, i32 79,
	i32 312, i32 319, i32 121, i32 231, i32 227, i32 8, i32 168, i32 71,
	i32 249, i32 256, i32 315, i32 192, i32 360, i32 195, i32 174, i32 148,
	i32 40, i32 47, i32 30, i32 147, i32 208, i32 166, i32 28, i32 86,
	i32 321, i32 296, i32 79, i32 43, i32 378, i32 29, i32 42, i32 105,
	i32 119, i32 267, i32 45, i32 233, i32 93, i32 56, i32 351, i32 151,
	i32 345, i32 149, i32 102, i32 49, i32 20, i32 282, i32 298, i32 116,
	i32 241, i32 356, i32 359, i32 298, i32 258, i32 336, i32 210, i32 96,
	i32 58, i32 83, i32 172, i32 26, i32 72, i32 346, i32 250, i32 313,
	i32 219, i32 193, i32 220, i32 217, i32 0, i32 70, i32 33, i32 240,
	i32 14, i32 141, i32 38, i32 196, i32 278, i32 273, i32 203, i32 136,
	i32 94, i32 90, i32 152, i32 214, i32 24, i32 140, i32 57, i32 240,
	i32 215, i32 142, i32 51, i32 29, i32 160, i32 34, i32 167, i32 252,
	i32 199, i32 262, i32 294, i32 52, i32 222, i32 382, i32 329, i32 92,
	i32 247, i32 360, i32 275, i32 35, i32 160, i32 374, i32 196, i32 253,
	i32 9, i32 0, i32 78, i32 59, i32 55, i32 350, i32 237, i32 366,
	i32 216, i32 13, i32 328, i32 182, i32 271, i32 111, i32 32, i32 363,
	i32 106, i32 86, i32 348, i32 94, i32 53, i32 98, i32 334, i32 241,
	i32 238, i32 58, i32 9, i32 104, i32 347, i32 287, i32 69, i32 327,
	i32 218, i32 194, i32 206, i32 127, i32 315, i32 118, i32 137, i32 372,
	i32 317, i32 251, i32 128, i32 108, i32 336, i32 133, i32 274, i32 333,
	i32 189, i32 150, i32 159, i32 282, i32 187, i32 291, i32 373, i32 374,
	i32 235, i32 315, i32 99, i32 24, i32 318, i32 146, i32 198, i32 312,
	i32 3, i32 170, i32 270, i32 102, i32 164, i32 101, i32 285, i32 248,
	i32 25, i32 95, i32 171, i32 175, i32 3, i32 322, i32 293, i32 207,
	i32 204, i32 1, i32 256, i32 116, i32 336, i32 302, i32 33, i32 6,
	i32 231, i32 352, i32 159, i32 367, i32 379, i32 260, i32 53, i32 297,
	i32 263, i32 87, i32 200, i32 326, i32 185, i32 44, i32 230, i32 106,
	i32 47, i32 140, i32 342, i32 224, i32 239, i32 308, i32 65, i32 309,
	i32 70, i32 82, i32 60, i32 91, i32 157, i32 271, i32 135, i32 112,
	i32 59, i32 249, i32 309, i32 228, i32 362, i32 313, i32 174, i32 136,
	i32 143, i32 40, i32 374, i32 184, i32 61, i32 179, i32 184, i32 306,
	i32 81, i32 25, i32 36, i32 257, i32 101, i32 72, i32 22, i32 282,
	i32 123, i32 70, i32 109, i32 310, i32 121, i32 378, i32 119, i32 299,
	i32 362, i32 300, i32 11, i32 2, i32 126, i32 117, i32 222, i32 145,
	i32 41, i32 89, i32 344, i32 266, i32 177, i32 198, i32 27, i32 151,
	i32 240, i32 184, i32 190, i32 332, i32 245, i32 349, i32 1, i32 356,
	i32 267, i32 44, i32 281, i32 152, i32 230, i32 237, i32 377, i32 297,
	i32 18, i32 88, i32 41, i32 276, i32 96, i32 201, i32 28, i32 41,
	i32 352, i32 80, i32 292, i32 350, i32 278, i32 147, i32 110, i32 277,
	i32 11, i32 107, i32 139, i32 16, i32 238, i32 124, i32 67, i32 160,
	i32 22, i32 340, i32 104, i32 375, i32 190, i32 339, i32 64, i32 237,
	i32 346, i32 58, i32 234, i32 112, i32 177, i32 239, i32 212, i32 206,
	i32 337, i32 9, i32 331, i32 122, i32 100, i32 107, i32 76, i32 214,
	i32 351, i32 357, i32 219, i32 113, i32 357, i32 268, i32 364, i32 381,
	i32 49, i32 59, i32 20, i32 306, i32 286, i32 242, i32 73, i32 206,
	i32 280, i32 354, i32 158, i32 381, i32 228, i32 39, i32 238, i32 35,
	i32 262, i32 38, i32 369, i32 244, i32 330, i32 110, i32 348, i32 21,
	i32 334, i32 305, i32 264, i32 15, i32 210, i32 81, i32 81, i32 286,
	i32 210, i32 289, i32 197, i32 261, i32 155, i32 21, i32 250, i32 343,
	i32 50, i32 51, i32 354, i32 311, i32 96, i32 255, i32 379, i32 193,
	i32 16, i32 285, i32 125, i32 163, i32 45, i32 332, i32 362, i32 118,
	i32 64, i32 169, i32 192, i32 284, i32 344, i32 182, i32 14, i32 316,
	i32 245, i32 248, i32 113, i32 369, i32 268, i32 225, i32 61, i32 188,
	i32 76, i32 123, i32 2, i32 344, i32 294, i32 305, i32 363, i32 199,
	i32 369, i32 335, i32 305, i32 6, i32 276, i32 291, i32 17, i32 381,
	i32 262, i32 79, i32 279, i32 284, i32 353, i32 213, i32 133, i32 334,
	i32 85, i32 178, i32 205, i32 12, i32 34, i32 121, i32 340, i32 302,
	i32 176, i32 293, i32 359, i32 87, i32 18, i32 327, i32 183, i32 301,
	i32 242, i32 73, i32 296, i32 97, i32 168, i32 295, i32 200, i32 84,
	i32 365, i32 298, i32 245, i32 269, i32 275, i32 157, i32 246, i32 36,
	i32 154, i32 221, i32 147, i32 247, i32 56, i32 115, i32 220, i32 276,
	i32 233, i32 324, i32 323, i32 37, i32 182, i32 117, i32 196, i32 267,
	i32 14, i32 149, i32 236, i32 43, i32 180, i32 367, i32 100, i32 339,
	i32 377, i32 365, i32 171, i32 16, i32 317, i32 48, i32 109, i32 229,
	i32 255, i32 99, i32 259, i32 309, i32 231, i32 27, i32 130, i32 355,
	i32 29, i32 377, i32 259, i32 372, i32 194, i32 130, i32 44, i32 286,
	i32 214, i32 292, i32 152, i32 8, i32 322, i32 218, i32 226, i32 134,
	i32 42, i32 340, i32 33, i32 382, i32 46, i32 146, i32 306, i32 287,
	i32 188, i32 140, i32 63, i32 249, i32 134, i32 48, i32 163, i32 272,
	i32 299, i32 323, i32 46, i32 167, i32 176, i32 295, i32 346, i32 254,
	i32 18, i32 259, i32 8, i32 204, i32 283, i32 317, i32 126, i32 60,
	i32 144, i32 179, i32 303, i32 211, i32 329, i32 221, i32 153, i32 379,
	i32 343, i32 145, i32 338, i32 128, i32 257, i32 337, i32 163, i32 165,
	i32 288, i32 265, i32 183, i32 26, i32 301, i32 195, i32 260, i32 84,
	i32 329, i32 129, i32 103, i32 151, i32 378, i32 331, i32 54, i32 165,
	i32 224, i32 170, i32 133, i32 37, i32 252, i32 325, i32 192, i32 348,
	i32 179, i32 22, i32 251, i32 114, i32 92, i32 289, i32 368, i32 50,
	i32 61, i32 124, i32 85, i32 129, i32 227, i32 166, i32 258, i32 342,
	i32 169, i32 316, i32 290, i32 304, i32 4, i32 225, i32 347, i32 300,
	i32 173, i32 207, i32 2, i32 195, i32 246, i32 118, i32 266, i32 19,
	i32 235, i32 202, i32 232, i32 91, i32 66, i32 30, i32 191, i32 280,
	i32 60, i32 215, i32 351, i32 113, i32 301, i32 32, i32 130, i32 162,
	i32 278, i32 143, i32 289, i32 156, i32 17, i32 77, i32 75, i32 15,
	i32 172, i32 371, i32 87, i32 126, i32 345, i32 273, i32 345, i32 307,
	i32 186, i32 279, i32 211, i32 34, i32 197, i32 221, i32 264, i32 120,
	i32 141, i32 124, i32 108, i32 325, i32 197, i32 275, i32 54, i32 47,
	i32 28, i32 142, i32 148, i32 202, i32 150, i32 380, i32 354, i32 244,
	i32 35, i32 236, i32 284, i32 177, i32 199, i32 375, i32 243, i32 330,
	i32 77, i32 164, i32 1, i32 308, i32 318, i32 162, i32 12, i32 158,
	i32 186, i32 154, i32 78, i32 223, i32 105, i32 114, i32 271, i32 361,
	i32 366, i32 66, i32 67, i32 328, i32 45, i32 274, i32 111, i32 203,
	i32 7, i32 350, i32 270, i32 55, i32 266, i32 228, i32 65, i32 296,
	i32 283, i32 212, i32 20, i32 111, i32 103, i32 63, i32 145, i32 265,
	i32 380, i32 7, i32 186, i32 173, i32 50, i32 328, i32 370, i32 117,
	i32 349, i32 207, i32 144, i32 169, i32 253, i32 82, i32 115, i32 353,
	i32 307, i32 253, i32 17, i32 74, i32 91, i32 353, i32 89, i32 122,
	i32 321, i32 358, i32 187, i32 268, i32 358, i32 137, i32 233, i32 156,
	i32 108, i32 11, i32 92, i32 373, i32 31, i32 371, i32 244, i32 138,
	i32 349, i32 251, i32 319, i32 232, i32 376, i32 40, i32 382, i32 318,
	i32 181, i32 141, i32 339, i32 341, i32 25, i32 176, i32 74, i32 295,
	i32 320, i32 27, i32 203, i32 68, i32 90, i32 241, i32 254, i32 97,
	i32 115, i32 31, i32 106, i32 178, i32 300, i32 37, i32 193, i32 73,
	i32 311, i32 333, i32 213, i32 110, i32 125, i32 366, i32 270, i32 89,
	i32 201, i32 88, i32 95, i32 191, i32 131, i32 247, i32 307, i32 223,
	i32 321, i32 205, i32 316, i32 283, i32 347, i32 320, i32 280, i32 183,
	i32 166, i32 132, i32 364, i32 202, i32 326, i32 352, i32 246, i32 313,
	i32 380, i32 190, i32 370, i32 10, i32 49, i32 93, i32 256, i32 153,
	i32 63, i32 138, i32 232, i32 355, i32 153, i32 62, i32 201, i32 119,
	i32 139, i32 335, i32 86, i32 367, i32 297, i32 162, i32 185, i32 323,
	i32 146, i32 239, i32 189, i32 84, i32 76, i32 71, i32 269, i32 138,
	i32 281, i32 250, i32 264, i32 261, i32 311, i32 127, i32 235, i32 54,
	i32 112, i32 132, i32 90, i32 23, i32 75, i32 131, i32 31, i32 198,
	i32 74, i32 161, i32 23, i32 4, i32 225, i32 173, i32 125, i32 343,
	i32 285, i32 263, i32 116, i32 216, i32 175, i32 32, i32 3, i32 273,
	i32 365, i32 255, i32 216, i32 167, i32 261, i32 360, i32 357, i32 213,
	i32 227, i32 324, i32 30, i32 19, i32 209, i32 304, i32 95, i32 36,
	i32 5, i32 330, i32 272, i32 337, i32 158, i32 319, i32 332, i32 279,
	i32 310, i32 376, i32 368, i32 222, i32 342, i32 326, i32 226, i32 78,
	i32 64, i32 200, i32 150, i32 243, i32 277, i32 123, i32 136, i32 361,
	i32 312, i32 322, i32 333, i32 102, i32 212, i32 39, i32 265, i32 142,
	i32 69, i32 26, i32 260, i32 77, i32 80, i32 303, i32 243, i32 24,
	i32 155, i32 38, i32 308, i32 272, i32 135, i32 105, i32 331, i32 358,
	i32 57, i32 168, i32 93, i32 62, i32 134, i32 220, i32 46, i32 135,
	i32 288, i32 148, i32 215, i32 80, i32 281, i32 304, i32 257, i32 371,
	i32 188, i32 185, i32 209, i32 157, i32 223, i32 375, i32 229, i32 85,
	i32 364, i32 218, i32 62, i32 98, i32 314, i32 156, i32 120, i32 208,
	i32 6, i32 15, i32 75, i32 194, i32 149, i32 52, i32 71, i32 23,
	i32 161, i32 128, i32 242, i32 66, i32 310, i32 114, i32 302, i32 55,
	i32 53, i32 290, i32 109, i32 137, i32 294, i32 303, i32 82, i32 299,
	i32 187, i32 180, i32 131, i32 65, i32 155
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.mm.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.mm.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/10.0.1xx @ 01024bb616e7b80417a2c6d320885bfdb956f20a"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
