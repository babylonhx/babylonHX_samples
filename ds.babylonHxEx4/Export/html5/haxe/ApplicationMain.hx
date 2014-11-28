import lime.Assets;
#if !macro


class ApplicationMain {
	
	
	public static var config:lime.app.Config;
	public static var preloader:openfl.display.Preloader;
	
	private static var app:lime.app.Application;
	
	
	public static function create ():Void {
		
		app = new openfl.display.Application ();
		app.create (config);
		
		var display = new NMEPreloader ();
		
		preloader = new openfl.display.Preloader (display);
		preloader.onComplete = init;
		preloader.create (config);
		
		#if js
		var urls = [];
		var types = [];
		
		
		urls.push ("assets/font/Aaargh.eot");
		types.push (AssetType.BINARY);
		
		
		urls.push ("assets/font/Aaargh.svg");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/font/Aaargh.ttf");
		types.push (AssetType.FONT);
		
		
		urls.push ("assets/font/Aaargh.woff");
		types.push (AssetType.BINARY);
		
		
		urls.push ("assets/font/OpenSansRegular.eot");
		types.push (AssetType.BINARY);
		
		
		urls.push ("assets/font/OpenSansRegular.svg");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/font/OpenSansRegular.ttf");
		types.push (AssetType.FONT);
		
		
		urls.push ("assets/font/OpenSansRegular.woff");
		types.push (AssetType.BINARY);
		
		
		urls.push ("assets/font/Tup Wanders Font License.txt");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/img/cloud.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/img/cloud.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/img/cloud__.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/img/skybox/README.TXT");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/img/skybox/skybox_nx.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/img/skybox/skybox_nx.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/img/skybox/skybox_ny.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/img/skybox/skybox_ny.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/img/skybox/skybox_nz.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/img/skybox/skybox_nz.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/img/skybox/skybox_px.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/img/skybox/skybox_px.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/img/skybox/skybox_py.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/img/skybox/skybox_py.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/img/skybox/skybox_pz.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/img/skybox/skybox_pz.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/BalanceDM.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/BalanceDM.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/BalanceLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/BalanceLightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/BoisLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/BoisLightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Book.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Book.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Box029CompleteMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Box029CompleteMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Box079LightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Box079LightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Briquesblanches.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Briquesblanches.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Bumpverre.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Bumpverre.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/ChalkboardCompleteMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/ChalkboardCompleteMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Chimie.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Chimie.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/ChromeLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/ChromeLightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Coeur.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Cylinder008LightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Cylinder008LightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/flamme-gaz.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Floor.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Floor.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Graph.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Gris somreLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Gris somreLightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Heart.babylon");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/scenes/Heart/Heart.babylon.manifest");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/scenes/Heart/heartSpecjpg.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Labels.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Marble.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Marble.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/MursLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/MursLightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Object1LightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Object1LightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Ordi001LightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Ordi001LightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/OrdiDiffuseMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/OrdiDiffuseMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/PaillasseLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/PaillasseLightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Plane003LightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Plane003LightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Plaque.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Plaque.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/ref1_nx.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/ref1_ny.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/ref1_nz.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/ref1_px.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/ref1_py.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/ref1_pz.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Sky.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Sky.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/VerreLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/VerreLightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Wood.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/Heart/Wood.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/shaders/clouds.fragment.txt");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/shaders/clouds.vertex.txt");
		types.push (AssetType.TEXT);
		
		
		
		preloader.load (urls, types);
		#end
		
		var result = app.exec ();
		
		#if sys
		Sys.exit (result);
		#end
		
	}
	
	
	public static function init ():Void {
		
		var loaded = 0;
		var total = 0;
		var library_onLoad = function (_) {
			
			loaded++;
			
			if (loaded == total) {
				
				start ();
				
			}
			
		}
		
		preloader = null;
		
		
		
		if (loaded == total) {
			
			start ();
			
		}
		
	}
	
	
	public static function main () {
		
		config = {
			
			antialiasing: Std.int (0),
			background: Std.int (16777215),
			borderless: false,
			depthBuffer: true,
			fps: Std.int (60),
			fullscreen: false,
			height: Std.int (0),
			orientation: "landscape",
			resizable: true,
			stencilBuffer: true,
			title: "BabylonHx4",
			vsync: true,
			width: Std.int (0),
			
		}
		
		#if js
		#if munit
		flash.Lib.embed (null, 0, 0, "FFFFFF");
		#end
		#else
		create ();
		#end
		
	}
	
	
	public static function start ():Void {
		
		openfl.Lib.current.stage.align = openfl.display.StageAlign.TOP_LEFT;
		openfl.Lib.current.stage.scaleMode = openfl.display.StageScaleMode.NO_SCALE;
		
		var hasMain = false;
		
		for (methodName in Type.getClassFields (Main)) {
			
			if (methodName == "main") {
				
				hasMain = true;
				break;
				
			}
			
		}
		
		if (hasMain) {
			
			Reflect.callMethod (Main, Reflect.field (Main, "main"), []);
			
		} else {
			
			var instance:DocumentClass = Type.createInstance (DocumentClass, []);
			
			if (Std.is (instance, openfl.display.DisplayObject)) {
				
				openfl.Lib.current.addChild (cast instance);
				
			}
			
		}
		
		openfl.Lib.current.stage.dispatchEvent (new openfl.events.Event (openfl.events.Event.RESIZE, false, false));
		
	}
	
	
	#if neko
	@:noCompletion public static function __init__ () {
		
		var loader = new neko.vm.Loader (untyped $loader);
		loader.addPath (haxe.io.Path.directory (Sys.executablePath ()));
		loader.addPath ("./");
		loader.addPath ("@executable_path/");
		
	}
	#end
	
	
}


#if flash @:build(DocumentClass.buildFlash())
#else @:build(DocumentClass.build()) #end
@:keep class DocumentClass extends Main {}


#else


import haxe.macro.Context;
import haxe.macro.Expr;


class DocumentClass {
	
	
	macro public static function build ():Array<Field> {
		
		var classType = Context.getLocalClass ().get ();
		var searchTypes = classType;
		
		while (searchTypes.superClass != null) {
			
			if (searchTypes.pack.length == 2 && searchTypes.pack[1] == "display" && searchTypes.name == "DisplayObject") {
				
				var fields = Context.getBuildFields ();
				
				var method = macro {
					
					this.stage = flash.Lib.current.stage;
					super ();
					dispatchEvent (new openfl.events.Event (openfl.events.Event.ADDED_TO_STAGE, false, false));
					
				}
				
				fields.push ({ name: "new", access: [ APublic ], kind: FFun({ args: [], expr: method, params: [], ret: macro :Void }), pos: Context.currentPos () });
				
				return fields;
				
			}
			
			searchTypes = searchTypes.superClass.t.get ();
			
		}
		
		return null;
		
	}
	
	
	macro public static function buildFlash ():Array<Field> {
		
		var classType = Context.getLocalClass ().get ();
		var searchTypes = classType;
		
		while (searchTypes.superClass != null) {
			
			if (searchTypes.pack.length == 2 && searchTypes.pack[1] == "display" && searchTypes.name == "DisplayObject") {
				
				var fields = Context.getBuildFields ();
				var method = macro {
					return flash.Lib.current.stage;
				}
				
				fields.push ({ name: "get_stage", access: [ APrivate ], meta: [ { name: ":getter", params: [ macro stage ], pos: Context.currentPos() } ], kind: FFun({ args: [], expr: method, params: [], ret: macro :flash.display.Stage }), pos: Context.currentPos() });
				return fields;
				
			}
			
			searchTypes = searchTypes.superClass.t.get ();
			
		}
		
		return null;
		
	}
	
	
}


#end
