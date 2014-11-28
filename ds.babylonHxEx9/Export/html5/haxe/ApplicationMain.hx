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
		
		
		urls.push ("assets/img/Flare.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/img/grass.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/img/lens4.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/img/lens5.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/img/normalMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/img/refMap.jpg");
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
		
		
		urls.push ("assets/train/barrieres_bois.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/barrieres_bois_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/bat_console_murs_ext_lm.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/bat_console_murs_lm.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/bat_lm.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/bosquet_grass.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/bosquet_grass.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/bottes_paille.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/bottes_paille_face.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/champ_ble.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/champ_ble.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/chariot_planche.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/chariot_planche_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/chariot_roue.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/chariot_roue_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/console.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/console_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/cubemap5_nx.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/cubemap5_ny.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/cubemap5_nz.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/cubemap5_px.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/cubemap5_py.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/cubemap5_pz.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/cubemap_nx.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/cubemap_ny.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/cubemap_nz.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/cubemap_px.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/cubemap_py.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/cubemap_pz.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/cubemap_vitres_nx.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/cubemap_vitres_ny.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/cubemap_vitres_nz.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/cubemap_vitres_px.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/cubemap_vitres_py.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/cubemap_vitres_pz.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/cuir.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/cuir_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/debug.txt");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/train/disneyland_paris.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/flechage.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/flechage.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/flechage2.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/flechage2.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/grass.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/grass.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/grillage.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/grillage.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/lens2.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/lens3.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/lens4.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/lens5.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/lens6.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/metal_rouille.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/metal_rouille_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/metal_tache.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/metal_tache_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/murs_wood.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/murs_wood_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/no_signal.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/paille_alpha.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/paille_alpha.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/pile_bois.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/pile_bois_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/planches.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/planches_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/poteaux.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/poteaux_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/poubelle.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/poubelle_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/rochers_big.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/rochers_big_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/rock_tunnel.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/rock_tunnel_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/sacs_sable.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/sacs_sable_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/sapin_leaves.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/sapin_leaves.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/sapin_trunk_up.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/sapin_trunk_up_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/skydome.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/smoke.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/sol_metal.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/sol_metal_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/terrain1.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/terrain1_lm.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/terrain1_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/terrain2.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/terrain2_lm.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/terrain2_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/terrain3.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/terrain3_lm.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/terrain3_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/terrain4.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/terrain4_lm.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/terrain4_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/terrain_clotures_lm.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/terrain_escalier_lm.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/terrain_tunnel_lm.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/toit_bois.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/toit_bois_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/tole.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/tole_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/tonneau.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/tonneau_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/tracteur.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/tracteur_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/Train.babylon");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/train/Train.babylon.manifest");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/train/Train.babylon_works");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/train/train_4.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/train_4_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/train_cote.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/train_cote_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/train_loco_lm.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/train_wagon_lm.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/tronc.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/tronc_face.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/tronc_face_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/tronc_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/verre_lampes.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/train/water_n.jpg");
		types.push (AssetType.IMAGE);
		
		
		
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
			stencilBuffer: false,
			title: "BabylonHx",
			vsync: false,
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
