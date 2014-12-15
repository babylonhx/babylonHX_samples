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
		
		
		urls.push ("assets/scenes/WCafe/Affiches.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Affiches.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Affiches2.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Affiches2.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Affiches3.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Affiches3.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/AffichesLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/AffichesLightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Bafle.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Bafle.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/BafleLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/BafleLightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Beton1.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Beton1.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/BlancUniLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/BlancUniLightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Bois2.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Bois2.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Briques3.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Briques3.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Canape1LightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Canapé1LightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Canette1.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Canette1.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Canette2.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Canette2.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/ChaineHifi.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/ChaineHifi.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/ChaineHifi2.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/ChaineHifi2.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/ChromeBrosseLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/ChromeBrosséLightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/ChromeLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/ChromeLightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/ColonnesLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/ColonnesLightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Coussins2LightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Coussins2LightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/CoussinsfauteuilLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/CoussinsfauteuilLightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Cuir1Spec.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/CuirbrunSpec.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/CuiViolet.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/CuiViolet.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Degrade.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Degradebar.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Degradebar.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Ecrantele1.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Ecrantele1.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/EscalierLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/EscalierLightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/exit.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/exit.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/FauteuilRond01LightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/FauteuilRond01LightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Fauteuilsronds.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Fauteuilsronds.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Fndgris.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Fndgris.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Fndrouge2.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Fndrouge2.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Fondmeuble basLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Fondmeuble basLightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Fvert.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Fvert.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Grille.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/liquiorange.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/liquiorange.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Liquirouge.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Liquirouge.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Liquivert.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Liquivert.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Masque1.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Masque2.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/MurrdcLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/MurrdcLightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Mursdivers.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Mursdivers.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/NeonarcheAmbiant.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/NeonarcheAmbiant.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/NoirmatLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/NoirmatLightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Ordi.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Ordi.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/OrdiSI.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/OrdiSI.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/OrdisLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/OrdisLightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Pano2Alt.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Pano2Alt.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Pano5refNoirpurFloue_nx.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Pano5refNoirpurFloue_ny.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Pano5refNoirpurFloue_nz.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Pano5refNoirpurFloue_px.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Pano5refNoirpurFloue_py.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Pano5refNoirpurFloue_pz.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Parquet1.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Parquet1.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Parquet3.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Parquet3.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Peintureverte.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Peintureverte.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/PlafondsLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/PlafondsLightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Plancher2LightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Plancher2LightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Plancheretage1LightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Plancherétage1LightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/PlotDiffuseMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/PlotDiffuseMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Produits.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Produits.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/RedFlowers.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/RedFlowers.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Refcubenoire_nx.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Refcubenoire_ny.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Refcubenoire_nz.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Refcubenoire_px.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Refcubenoire_py.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Refcubenoire_pz.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Refcubenoireplate.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Refcubenoireplate.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Salade.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Salade.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/SaladesLM.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/SaladesLM.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/SolRDCLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/SolRDCLightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/SpecMetalbrosse.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Sponsor01DiffuseMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Sponsor01DiffuseMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Sticker haut.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Sticker haut.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Surface.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Surface.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/tableaux.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/tableaux.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/TableSurfaceLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/TableSurfaceLightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/tapis4.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/tapis4.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/TapisLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/TapisLightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Tele.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Tele.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/TeleLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/TeleSI.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/TeleSI.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/TéléLightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/vENT.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/vENT.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Verticola.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Verticola.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/WCafe.babylon");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/scenes/WCafe/WCafe.babylon.manifest");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/scenes/WCafe/Wifi.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Wifi.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Win7.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Win7.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Win7A.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Win7A.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/WinCafe1.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/WinCafe1.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/WinCafe1IL.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/WinCafe1IL.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/xBOXLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/xBOXLightingMap.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Xbrique.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Xbrique.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Zebu.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/Zebu.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/ZincLightingMap.jpg");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/scenes/WCafe/ZincLightingMap.png");
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
