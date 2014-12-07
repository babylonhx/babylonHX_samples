package;


import haxe.Timer;
import haxe.Unserializer;
import lime.app.Preloader;
import lime.audio.openal.AL;
import lime.audio.AudioBuffer;
import lime.graphics.Font;
import lime.graphics.Image;
import lime.utils.ByteArray;
import lime.utils.UInt8Array;
import lime.Assets;

#if (sys || nodejs)
import sys.FileSystem;
#end

#if flash
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Loader;
import flash.events.Event;
import flash.media.Sound;
import flash.net.URLLoader;
import flash.net.URLRequest;
#end


class DefaultAssetLibrary extends AssetLibrary {
	
	
	public var className (default, null) = new Map <String, Dynamic> ();
	public var path (default, null) = new Map <String, String> ();
	public var type (default, null) = new Map <String, AssetType> ();
	
	private var lastModified:Float;
	private var timer:Timer;
	
	
	public function new () {
		
		super ();
		
		#if flash
		
		className.set ("assets/font/Aaargh.eot", __ASSET__assets_font_aaargh_eot);
		type.set ("assets/font/Aaargh.eot", AssetType.BINARY);
		className.set ("assets/font/Aaargh.svg", __ASSET__assets_font_aaargh_svg);
		type.set ("assets/font/Aaargh.svg", AssetType.TEXT);
		className.set ("assets/font/Aaargh.ttf", __ASSET__assets_font_aaargh_ttf);
		type.set ("assets/font/Aaargh.ttf", AssetType.FONT);
		className.set ("assets/font/Aaargh.woff", __ASSET__assets_font_aaargh_woff);
		type.set ("assets/font/Aaargh.woff", AssetType.BINARY);
		className.set ("assets/font/OpenSansRegular.eot", __ASSET__assets_font_opensansregular_eot);
		type.set ("assets/font/OpenSansRegular.eot", AssetType.BINARY);
		className.set ("assets/font/OpenSansRegular.svg", __ASSET__assets_font_opensansregular_svg);
		type.set ("assets/font/OpenSansRegular.svg", AssetType.TEXT);
		className.set ("assets/font/OpenSansRegular.ttf", __ASSET__assets_font_opensansregular_ttf);
		type.set ("assets/font/OpenSansRegular.ttf", AssetType.FONT);
		className.set ("assets/font/OpenSansRegular.woff", __ASSET__assets_font_opensansregular_woff);
		type.set ("assets/font/OpenSansRegular.woff", AssetType.BINARY);
		className.set ("assets/font/Tup Wanders Font License.txt", __ASSET__assets_font_tup_wanders_font_license_txt);
		type.set ("assets/font/Tup Wanders Font License.txt", AssetType.TEXT);
		className.set ("assets/img/cloud.jpg", __ASSET__assets_img_cloud_jpg);
		type.set ("assets/img/cloud.jpg", AssetType.IMAGE);
		className.set ("assets/img/cloud.png", __ASSET__assets_img_cloud_png);
		type.set ("assets/img/cloud.png", AssetType.IMAGE);
		className.set ("assets/img/cloud__.png", __ASSET__assets_img_cloud___png);
		type.set ("assets/img/cloud__.png", AssetType.IMAGE);
		className.set ("assets/img/grass.jpg", __ASSET__assets_img_grass_jpg);
		type.set ("assets/img/grass.jpg", AssetType.IMAGE);
		className.set ("assets/img/skybox/README.TXT", __ASSET__assets_img_skybox_readme_txt);
		type.set ("assets/img/skybox/README.TXT", AssetType.TEXT);
		className.set ("assets/img/skybox/skybox_nx.jpg", __ASSET__assets_img_skybox_skybox_nx_jpg);
		type.set ("assets/img/skybox/skybox_nx.jpg", AssetType.IMAGE);
		className.set ("assets/img/skybox/skybox_nx.png", __ASSET__assets_img_skybox_skybox_nx_png);
		type.set ("assets/img/skybox/skybox_nx.png", AssetType.IMAGE);
		className.set ("assets/img/skybox/skybox_ny.jpg", __ASSET__assets_img_skybox_skybox_ny_jpg);
		type.set ("assets/img/skybox/skybox_ny.jpg", AssetType.IMAGE);
		className.set ("assets/img/skybox/skybox_ny.png", __ASSET__assets_img_skybox_skybox_ny_png);
		type.set ("assets/img/skybox/skybox_ny.png", AssetType.IMAGE);
		className.set ("assets/img/skybox/skybox_nz.jpg", __ASSET__assets_img_skybox_skybox_nz_jpg);
		type.set ("assets/img/skybox/skybox_nz.jpg", AssetType.IMAGE);
		className.set ("assets/img/skybox/skybox_nz.png", __ASSET__assets_img_skybox_skybox_nz_png);
		type.set ("assets/img/skybox/skybox_nz.png", AssetType.IMAGE);
		className.set ("assets/img/skybox/skybox_px.jpg", __ASSET__assets_img_skybox_skybox_px_jpg);
		type.set ("assets/img/skybox/skybox_px.jpg", AssetType.IMAGE);
		className.set ("assets/img/skybox/skybox_px.png", __ASSET__assets_img_skybox_skybox_px_png);
		type.set ("assets/img/skybox/skybox_px.png", AssetType.IMAGE);
		className.set ("assets/img/skybox/skybox_py.jpg", __ASSET__assets_img_skybox_skybox_py_jpg);
		type.set ("assets/img/skybox/skybox_py.jpg", AssetType.IMAGE);
		className.set ("assets/img/skybox/skybox_py.png", __ASSET__assets_img_skybox_skybox_py_png);
		type.set ("assets/img/skybox/skybox_py.png", AssetType.IMAGE);
		className.set ("assets/img/skybox/skybox_pz.jpg", __ASSET__assets_img_skybox_skybox_pz_jpg);
		type.set ("assets/img/skybox/skybox_pz.jpg", AssetType.IMAGE);
		className.set ("assets/img/skybox/skybox_pz.png", __ASSET__assets_img_skybox_skybox_pz_png);
		type.set ("assets/img/skybox/skybox_pz.png", AssetType.IMAGE);
		className.set ("assets/shaders/gradient.fragment.txt", __ASSET__assets_shaders_gradient_fragment_txt);
		type.set ("assets/shaders/gradient.fragment.txt", AssetType.TEXT);
		className.set ("assets/shaders/gradient.vertex.txt", __ASSET__assets_shaders_gradient_vertex_txt);
		type.set ("assets/shaders/gradient.vertex.txt", AssetType.TEXT);
		
		
		#elseif html5
		
		var id;
		id = "assets/font/Aaargh.eot";
		path.set (id, id);
		
		type.set (id, AssetType.BINARY);
		id = "assets/font/Aaargh.svg";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/font/Aaargh.ttf";
		className.set (id, __ASSET__assets_font_aaargh_ttf);
		
		type.set (id, AssetType.FONT);
		id = "assets/font/Aaargh.woff";
		path.set (id, id);
		
		type.set (id, AssetType.BINARY);
		id = "assets/font/OpenSansRegular.eot";
		path.set (id, id);
		
		type.set (id, AssetType.BINARY);
		id = "assets/font/OpenSansRegular.svg";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/font/OpenSansRegular.ttf";
		className.set (id, __ASSET__assets_font_opensansregular_ttf);
		
		type.set (id, AssetType.FONT);
		id = "assets/font/OpenSansRegular.woff";
		path.set (id, id);
		
		type.set (id, AssetType.BINARY);
		id = "assets/font/Tup Wanders Font License.txt";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/img/cloud.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/img/cloud.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/img/cloud__.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/img/grass.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/img/skybox/README.TXT";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/img/skybox/skybox_nx.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/img/skybox/skybox_nx.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/img/skybox/skybox_ny.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/img/skybox/skybox_ny.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/img/skybox/skybox_nz.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/img/skybox/skybox_nz.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/img/skybox/skybox_px.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/img/skybox/skybox_px.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/img/skybox/skybox_py.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/img/skybox/skybox_py.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/img/skybox/skybox_pz.jpg";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/img/skybox/skybox_pz.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/shaders/gradient.fragment.txt";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/shaders/gradient.vertex.txt";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		
		
		#else
		
		#if openfl
		
		
		
		openfl.text.Font.registerFont (__ASSET__assets_font_aaargh_ttf);
		
		
		
		openfl.text.Font.registerFont (__ASSET__assets_font_opensansregular_ttf);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		#end
		
		#if (windows || mac || linux)
		
		/*var useManifest = false;
		
		className.set ("assets/font/Aaargh.eot", __ASSET__assets_font_aaargh_eot);
		type.set ("assets/font/Aaargh.eot", AssetType.BINARY);
		
		className.set ("assets/font/Aaargh.svg", __ASSET__assets_font_aaargh_svg);
		type.set ("assets/font/Aaargh.svg", AssetType.TEXT);
		
		className.set ("assets/font/Aaargh.ttf", __ASSET__assets_font_aaargh_ttf);
		type.set ("assets/font/Aaargh.ttf", AssetType.FONT);
		
		className.set ("assets/font/Aaargh.woff", __ASSET__assets_font_aaargh_woff);
		type.set ("assets/font/Aaargh.woff", AssetType.BINARY);
		
		className.set ("assets/font/OpenSansRegular.eot", __ASSET__assets_font_opensansregular_eot);
		type.set ("assets/font/OpenSansRegular.eot", AssetType.BINARY);
		
		className.set ("assets/font/OpenSansRegular.svg", __ASSET__assets_font_opensansregular_svg);
		type.set ("assets/font/OpenSansRegular.svg", AssetType.TEXT);
		
		className.set ("assets/font/OpenSansRegular.ttf", __ASSET__assets_font_opensansregular_ttf);
		type.set ("assets/font/OpenSansRegular.ttf", AssetType.FONT);
		
		className.set ("assets/font/OpenSansRegular.woff", __ASSET__assets_font_opensansregular_woff);
		type.set ("assets/font/OpenSansRegular.woff", AssetType.BINARY);
		
		className.set ("assets/font/Tup Wanders Font License.txt", __ASSET__assets_font_tup_wanders_font_license_txt);
		type.set ("assets/font/Tup Wanders Font License.txt", AssetType.TEXT);
		
		className.set ("assets/img/cloud.jpg", __ASSET__assets_img_cloud_jpg);
		type.set ("assets/img/cloud.jpg", AssetType.IMAGE);
		
		className.set ("assets/img/cloud.png", __ASSET__assets_img_cloud_png);
		type.set ("assets/img/cloud.png", AssetType.IMAGE);
		
		className.set ("assets/img/cloud__.png", __ASSET__assets_img_cloud___png);
		type.set ("assets/img/cloud__.png", AssetType.IMAGE);
		
		className.set ("assets/img/grass.jpg", __ASSET__assets_img_grass_jpg);
		type.set ("assets/img/grass.jpg", AssetType.IMAGE);
		
		className.set ("assets/img/skybox/README.TXT", __ASSET__assets_img_skybox_readme_txt);
		type.set ("assets/img/skybox/README.TXT", AssetType.TEXT);
		
		className.set ("assets/img/skybox/skybox_nx.jpg", __ASSET__assets_img_skybox_skybox_nx_jpg);
		type.set ("assets/img/skybox/skybox_nx.jpg", AssetType.IMAGE);
		
		className.set ("assets/img/skybox/skybox_nx.png", __ASSET__assets_img_skybox_skybox_nx_png);
		type.set ("assets/img/skybox/skybox_nx.png", AssetType.IMAGE);
		
		className.set ("assets/img/skybox/skybox_ny.jpg", __ASSET__assets_img_skybox_skybox_ny_jpg);
		type.set ("assets/img/skybox/skybox_ny.jpg", AssetType.IMAGE);
		
		className.set ("assets/img/skybox/skybox_ny.png", __ASSET__assets_img_skybox_skybox_ny_png);
		type.set ("assets/img/skybox/skybox_ny.png", AssetType.IMAGE);
		
		className.set ("assets/img/skybox/skybox_nz.jpg", __ASSET__assets_img_skybox_skybox_nz_jpg);
		type.set ("assets/img/skybox/skybox_nz.jpg", AssetType.IMAGE);
		
		className.set ("assets/img/skybox/skybox_nz.png", __ASSET__assets_img_skybox_skybox_nz_png);
		type.set ("assets/img/skybox/skybox_nz.png", AssetType.IMAGE);
		
		className.set ("assets/img/skybox/skybox_px.jpg", __ASSET__assets_img_skybox_skybox_px_jpg);
		type.set ("assets/img/skybox/skybox_px.jpg", AssetType.IMAGE);
		
		className.set ("assets/img/skybox/skybox_px.png", __ASSET__assets_img_skybox_skybox_px_png);
		type.set ("assets/img/skybox/skybox_px.png", AssetType.IMAGE);
		
		className.set ("assets/img/skybox/skybox_py.jpg", __ASSET__assets_img_skybox_skybox_py_jpg);
		type.set ("assets/img/skybox/skybox_py.jpg", AssetType.IMAGE);
		
		className.set ("assets/img/skybox/skybox_py.png", __ASSET__assets_img_skybox_skybox_py_png);
		type.set ("assets/img/skybox/skybox_py.png", AssetType.IMAGE);
		
		className.set ("assets/img/skybox/skybox_pz.jpg", __ASSET__assets_img_skybox_skybox_pz_jpg);
		type.set ("assets/img/skybox/skybox_pz.jpg", AssetType.IMAGE);
		
		className.set ("assets/img/skybox/skybox_pz.png", __ASSET__assets_img_skybox_skybox_pz_png);
		type.set ("assets/img/skybox/skybox_pz.png", AssetType.IMAGE);
		
		className.set ("assets/shaders/gradient.fragment.txt", __ASSET__assets_shaders_gradient_fragment_txt);
		type.set ("assets/shaders/gradient.fragment.txt", AssetType.TEXT);
		
		className.set ("assets/shaders/gradient.vertex.txt", __ASSET__assets_shaders_gradient_vertex_txt);
		type.set ("assets/shaders/gradient.vertex.txt", AssetType.TEXT);
		*/
		var useManifest = true;
		
		if (useManifest) {
			
			loadManifest ();
			
			if (Sys.args ().indexOf ("-livereload") > -1) {
				
				var path = FileSystem.fullPath ("manifest");
				lastModified = FileSystem.stat (path).mtime.getTime ();
				
				timer = new Timer (2000);
				timer.run = function () {
					
					var modified = FileSystem.stat (path).mtime.getTime ();
					
					if (modified > lastModified) {
						
						lastModified = modified;
						loadManifest ();
						
						if (eventCallback != null) {
							
							eventCallback (this, "change");
							
						}
						
					}
					
				}
				
			}
			
		}
		
		#else
		
		loadManifest ();
		
		#end
		#end
		
	}
	
	
	public override function exists (id:String, type:String):Bool {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		var assetType = this.type.get (id);
		
		if (assetType != null) {
			
			if (assetType == requestedType || ((requestedType == SOUND || requestedType == MUSIC) && (assetType == MUSIC || assetType == SOUND))) {
				
				return true;
				
			}
			
			#if flash
			
			if ((assetType == BINARY || assetType == TEXT) && requestedType == BINARY) {
				
				return true;
				
			} else if (path.exists (id)) {
				
				return true;
				
			}
			
			#else
			
			if (requestedType == BINARY || requestedType == null || (assetType == BINARY && requestedType == TEXT)) {
				
				return true;
				
			}
			
			#end
			
		}
		
		return false;
		
	}
	
	
	public override function getAudioBuffer (id:String):AudioBuffer {
		
		#if flash
		
		var buffer = new AudioBuffer ();
		buffer.src = cast (Type.createInstance (className.get (id), []), Sound);
		return buffer;
		
		#elseif html5
		
		return null;
		//return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		return AudioBuffer.fromFile (path.get (id));
		//if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Sound);
		//else return new Sound (new URLRequest (path.get (id)), null, type.get (id) == MUSIC);
		
		#end
		
	}
	
	
	public override function getBytes (id:String):ByteArray {
		
		#if flash
		
		return cast (Type.createInstance (className.get (id), []), ByteArray);
		
		#elseif html5
		
		var bytes:ByteArray = null;
		var data = Preloader.loaders.get (path.get (id)).data;
		
		if (Std.is (data, String)) {
			
			bytes = new ByteArray ();
			bytes.writeUTFBytes (data);
			
		} else if (Std.is (data, ByteArray)) {
			
			bytes = cast data;
			
		} else {
			
			bytes = null;
			
		}
		
		if (bytes != null) {
			
			bytes.position = 0;
			return bytes;
			
		} else {
			
			return null;
		}
		
		#else
		
		//return null;
		//if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), ByteArray);
		//else 
		return ByteArray.readFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getFont (id:String):Dynamic /*Font*/ {
		
		// TODO: Complete Lime Font API
		
		#if openfl
		#if (flash || js)
		
		return cast (Type.createInstance (className.get (id), []), openfl.text.Font);
		
		#else
		
		if (className.exists (id)) {
			
			var fontClass = className.get (id);
			openfl.text.Font.registerFont (fontClass);
			return cast (Type.createInstance (fontClass, []), openfl.text.Font);
			
		} else {
			
			return new openfl.text.Font (path.get (id));
			
		}
		
		#end
		#end
		
		return null;
		
	}
	
	
	public override function getImage (id:String):Image {
		
		#if flash
		
		return Image.fromBitmapData (cast (Type.createInstance (className.get (id), []), BitmapData));
		
		#elseif html5
		
		return Image.fromImageElement (Preloader.images.get (path.get (id)));
		
		#else
		
		return Image.fromFile (path.get (id));
		
		#end
		
	}
	
	
	/*public override function getMusic (id:String):Dynamic {
		
		#if flash
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif openfl_html5
		
		//var sound = new Sound ();
		//sound.__buffer = true;
		//sound.load (new URLRequest (path.get (id)));
		//return sound;
		return null;
		
		#elseif html5
		
		return null;
		//return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		return null;
		//if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Sound);
		//else return new Sound (new URLRequest (path.get (id)), null, true);
		
		#end
		
	}*/
	
	
	public override function getPath (id:String):String {
		
		//#if ios
		
		//return SystemPath.applicationDirectory + "/assets/" + path.get (id);
		
		//#else
		
		return path.get (id);
		
		//#end
		
	}
	
	
	public override function getText (id:String):String {
		
		#if html5
		
		var bytes:ByteArray = null;
		var data = Preloader.loaders.get (path.get (id)).data;
		
		if (Std.is (data, String)) {
			
			return cast data;
			
		} else if (Std.is (data, ByteArray)) {
			
			bytes = cast data;
			
		} else {
			
			bytes = null;
			
		}
		
		if (bytes != null) {
			
			bytes.position = 0;
			return bytes.readUTFBytes (bytes.length);
			
		} else {
			
			return null;
		}
		
		#else
		
		var bytes = getBytes (id);
		
		if (bytes == null) {
			
			return null;
			
		} else {
			
			return bytes.readUTFBytes (bytes.length);
			
		}
		
		#end
		
	}
	
	
	public override function isLocal (id:String, type:String):Bool {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		
		#if flash
		
		if (requestedType != AssetType.MUSIC && requestedType != AssetType.SOUND) {
			
			return className.exists (id);
			
		}
		
		#end
		
		return true;
		
	}
	
	
	public override function list (type:String):Array<String> {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		var items = [];
		
		for (id in this.type.keys ()) {
			
			if (requestedType == null || exists (id, type)) {
				
				items.push (id);
				
			}
			
		}
		
		return items;
		
	}
	
	
	public override function loadAudioBuffer (id:String, handler:AudioBuffer -> Void):Void {
		
		#if (flash || js)
		
		//if (path.exists (id)) {
			
		//	var loader = new Loader ();
		//	loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
		//		handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
		//	});
		//	loader.load (new URLRequest (path.get (id)));
			
		//} else {
			
			handler (getAudioBuffer (id));
			
		//}
		
		#else
		
		handler (getAudioBuffer (id));
		
		#end
		
	}
	
	
	public override function loadBytes (id:String, handler:ByteArray -> Void):Void {
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bytes = new ByteArray ();
				bytes.writeUTFBytes (event.currentTarget.data);
				bytes.position = 0;
				
				handler (bytes);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getBytes (id));
			
		}
		
		#else
		
		handler (getBytes (id));
		
		#end
		
	}
	
	
	public override function loadImage (id:String, handler:Image -> Void):Void {
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bitmapData = cast (event.currentTarget.content, Bitmap).bitmapData;
				handler (Image.fromBitmapData (bitmapData));
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getImage (id));
			
		}
		
		#else
		
		handler (getImage (id));
		
		#end
		
	}
	
	
	#if (!flash && !html5)
	private function loadManifest ():Void {
		
		try {
			
			#if blackberry
			var bytes = ByteArray.readFile ("app/native/manifest");
			#elseif tizen
			var bytes = ByteArray.readFile ("../res/manifest");
			#elseif emscripten
			var bytes = ByteArray.readFile ("assets/manifest");
			#else
			var bytes = ByteArray.readFile ("manifest");
			#end
			
			if (bytes != null) {
				
				bytes.position = 0;
				
				if (bytes.length > 0) {
					
					var data = bytes.readUTFBytes (bytes.length);
					
					if (data != null && data.length > 0) {
						
						var manifest:Array<Dynamic> = Unserializer.run (data);
						
						for (asset in manifest) {
							
							if (!className.exists (asset.id)) {
								
								path.set (asset.id, asset.path);
								type.set (asset.id, cast (asset.type, AssetType));
								
							}
							
						}
						
					}
					
				}
				
			} else {
				
				trace ("Warning: Could not load asset manifest (bytes was null)");
				
			}
		
		} catch (e:Dynamic) {
			
			trace ('Warning: Could not load asset manifest (${e})');
			
		}
		
	}
	#end
	
	
	/*public override function loadMusic (id:String, handler:Dynamic -> Void):Void {
		
		#if (flash || js)
		
		//if (path.exists (id)) {
			
		//	var loader = new Loader ();
		//	loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
		//		handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
		//	});
		//	loader.load (new URLRequest (path.get (id)));
			
		//} else {
			
			handler (getMusic (id));
			
		//}
		
		#else
		
		handler (getMusic (id));
		
		#end
		
	}*/
	
	
	public override function loadText (id:String, handler:String -> Void):Void {
		
		//#if html5
		
		/*if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				handler (event.currentTarget.data);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getText (id));
			
		}*/
		
		//#else
		
		var callback = function (bytes:ByteArray):Void {
			
			if (bytes == null) {
				
				handler (null);
				
			} else {
				
				handler (bytes.readUTFBytes (bytes.length));
				
			}
			
		}
		
		loadBytes (id, callback);
		
		//#end
		
	}
	
	
}


#if !display
#if flash

@:keep @:bind #if display private #end class __ASSET__assets_font_aaargh_eot extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_font_aaargh_svg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_font_aaargh_ttf extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_font_aaargh_woff extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_font_opensansregular_eot extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_font_opensansregular_svg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_font_opensansregular_ttf extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_font_opensansregular_woff extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_font_tup_wanders_font_license_txt extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_img_cloud_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_img_cloud_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_img_cloud___png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_img_grass_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_img_skybox_readme_txt extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_img_skybox_skybox_nx_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_img_skybox_skybox_nx_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_img_skybox_skybox_ny_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_img_skybox_skybox_ny_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_img_skybox_skybox_nz_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_img_skybox_skybox_nz_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_img_skybox_skybox_px_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_img_skybox_skybox_px_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_img_skybox_skybox_py_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_img_skybox_skybox_py_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_img_skybox_skybox_pz_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_img_skybox_skybox_pz_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_shaders_gradient_fragment_txt extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_shaders_gradient_vertex_txt extends null { }


#elseif html5

#if openfl


@:keep #if display private #end class __ASSET__assets_font_aaargh_ttf extends openfl.text.Font { public function new () { super (); fontName = "assets/font/Aaargh.ttf"; } } 



@:keep #if display private #end class __ASSET__assets_font_opensansregular_ttf extends openfl.text.Font { public function new () { super (); fontName = "assets/font/OpenSansRegular.ttf"; } } 






















#end

#else

#if openfl
class __ASSET__assets_font_aaargh_ttf extends openfl.text.Font { public function new () { super (); __fontPath = "assets/font/Aaargh"; fontName = "Aaargh Normal"; }}
class __ASSET__assets_font_opensansregular_ttf extends openfl.text.Font { public function new () { super (); __fontPath = "assets/font/OpenSansRegular"; fontName = "Open Sans"; }}

#end

#if (windows || mac || linux)

//
//@:file("assets/font/Aaargh.eot") class __ASSET__assets_font_aaargh_eot extends lime.utils.ByteArray {}
//@:file("assets/font/Aaargh.svg") class __ASSET__assets_font_aaargh_svg extends lime.utils.ByteArray {}
//@:font("assets/font/Aaargh.ttf") class __ASSET__assets_font_aaargh_ttf extends openfl.text.Font {}
//@:file("assets/font/Aaargh.woff") class __ASSET__assets_font_aaargh_woff extends lime.utils.ByteArray {}
//@:file("assets/font/OpenSansRegular.eot") class __ASSET__assets_font_opensansregular_eot extends lime.utils.ByteArray {}
//@:file("assets/font/OpenSansRegular.svg") class __ASSET__assets_font_opensansregular_svg extends lime.utils.ByteArray {}
//@:font("assets/font/OpenSansRegular.ttf") class __ASSET__assets_font_opensansregular_ttf extends openfl.text.Font {}
//@:file("assets/font/OpenSansRegular.woff") class __ASSET__assets_font_opensansregular_woff extends lime.utils.ByteArray {}
//@:file("assets/font/Tup Wanders Font License.txt") class __ASSET__assets_font_tup_wanders_font_license_txt extends lime.utils.ByteArray {}
//@:bitmap("assets/img/cloud.jpg") class __ASSET__assets_img_cloud_jpg extends openfl.display.BitmapData {}
//@:bitmap("assets/img/cloud.png") class __ASSET__assets_img_cloud_png extends openfl.display.BitmapData {}
//@:bitmap("assets/img/cloud__.png") class __ASSET__assets_img_cloud___png extends openfl.display.BitmapData {}
//@:bitmap("assets/img/grass.jpg") class __ASSET__assets_img_grass_jpg extends openfl.display.BitmapData {}
//@:file("assets/img/skybox/README.TXT") class __ASSET__assets_img_skybox_readme_txt extends lime.utils.ByteArray {}
//@:bitmap("assets/img/skybox/skybox_nx.jpg") class __ASSET__assets_img_skybox_skybox_nx_jpg extends openfl.display.BitmapData {}
//@:bitmap("assets/img/skybox/skybox_nx.png") class __ASSET__assets_img_skybox_skybox_nx_png extends openfl.display.BitmapData {}
//@:bitmap("assets/img/skybox/skybox_ny.jpg") class __ASSET__assets_img_skybox_skybox_ny_jpg extends openfl.display.BitmapData {}
//@:bitmap("assets/img/skybox/skybox_ny.png") class __ASSET__assets_img_skybox_skybox_ny_png extends openfl.display.BitmapData {}
//@:bitmap("assets/img/skybox/skybox_nz.jpg") class __ASSET__assets_img_skybox_skybox_nz_jpg extends openfl.display.BitmapData {}
//@:bitmap("assets/img/skybox/skybox_nz.png") class __ASSET__assets_img_skybox_skybox_nz_png extends openfl.display.BitmapData {}
//@:bitmap("assets/img/skybox/skybox_px.jpg") class __ASSET__assets_img_skybox_skybox_px_jpg extends openfl.display.BitmapData {}
//@:bitmap("assets/img/skybox/skybox_px.png") class __ASSET__assets_img_skybox_skybox_px_png extends openfl.display.BitmapData {}
//@:bitmap("assets/img/skybox/skybox_py.jpg") class __ASSET__assets_img_skybox_skybox_py_jpg extends openfl.display.BitmapData {}
//@:bitmap("assets/img/skybox/skybox_py.png") class __ASSET__assets_img_skybox_skybox_py_png extends openfl.display.BitmapData {}
//@:bitmap("assets/img/skybox/skybox_pz.jpg") class __ASSET__assets_img_skybox_skybox_pz_jpg extends openfl.display.BitmapData {}
//@:bitmap("assets/img/skybox/skybox_pz.png") class __ASSET__assets_img_skybox_skybox_pz_png extends openfl.display.BitmapData {}
//@:file("assets/shaders/gradient.fragment.txt") class __ASSET__assets_shaders_gradient_fragment_txt extends lime.utils.ByteArray {}
//@:file("assets/shaders/gradient.vertex.txt") class __ASSET__assets_shaders_gradient_vertex_txt extends lime.utils.ByteArray {}
//
//

#end

#end
#end

