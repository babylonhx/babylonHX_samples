package;

import com.gamestudiohx.babylonhx.cameras.ArcRotateCamera;
import com.gamestudiohx.babylonhx.cameras.Camera;
import com.gamestudiohx.babylonhx.cameras.FreeCamera;
import com.gamestudiohx.babylonhx.lensflare.LensFlare;
import com.gamestudiohx.babylonhx.lensflare.LensFlareSystem;
import com.gamestudiohx.babylonhx.lights.DirectionalLight;
import com.gamestudiohx.babylonhx.lights.PointLight;
import com.gamestudiohx.babylonhx.lights.HemisphericLight;
import com.gamestudiohx.babylonhx.layer.Layer;
import com.gamestudiohx.babylonhx.materials.MultiMaterial;
import com.gamestudiohx.babylonhx.materials.StandardMaterial;
import com.gamestudiohx.babylonhx.materials.ShaderMaterial;
import com.gamestudiohx.babylonhx.materials.textures.CubeTexture;
import com.gamestudiohx.babylonhx.materials.textures.DynamicTexture;
import com.gamestudiohx.babylonhx.materials.textures.Texture;
import com.gamestudiohx.babylonhx.particles.ParticleSystem;
import com.gamestudiohx.babylonhx.postprocess.RefractionPostProcess;
import com.gamestudiohx.babylonhx.lights.shadows.ShadowGenerator;
import com.gamestudiohx.babylonhx.tools.math.Color4;
import com.gamestudiohx.babylonhx.tools.math.Vector3;
import com.gamestudiohx.babylonhx.tools.math.Color3;
import com.gamestudiohx.babylonhx.tools.math.Matrix;
import com.gamestudiohx.babylonhx.tools.SceneLoader;
import com.gamestudiohx.babylonhx.Scene;
import com.gamestudiohx.babylonhx.Engine;
import com.gamestudiohx.babylonhx.mesh. *;
import openfl.display.Shape;
import openfl.display.Sprite;
import openfl.events.Event;
import openfl.events.KeyboardEvent;
import openfl.geom.Rectangle;
import openfl.Lib;
import openfl.display.Graphics;
import openfl.display.GradientType;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.Assets;
import net.hires.debug.Stats;
import Tree;
import TreeGenerator;

/**
* ...
* @author Brendon Smith
*/

class Main extends Sprite {

    var inited:Bool;
    var scene:Scene;
    var camera:ArcRotateCamera;

    function resize(e) {
        if (!inited) init();
        // else (resize or orientation change)
    }

    function init() {
        if (inited) return;
        inited = true;
        var engine = new Engine(this, true);
        var scene = new Scene(engine);
        //scene.fogMode = Scene.FOGMODE_EXP2;

        var HEMILIGHT0 = new HemisphericLight("hemi", new Vector3(0, 1, -1), scene);
        HEMILIGHT0.intensity = 0.002;
        HEMILIGHT0.position = new Vector3(0,600,0);
        //var d1:DirectionalLight = new DirectionalLight("dir", new Vector3(1, -1, -2), scene);
        var d1 = new DirectionalLight("Dir0", new Vector3(1, -1, -2), scene);
        d1.position = new Vector3(-600,600,600);
        d1.intensity = 0.003;
        var shadowGenerator:ShadowGenerator = new ShadowGenerator(2048, d1);
        camera = new ArcRotateCamera("Camera", 0, 0, 100, Vector3.Zero(), scene);
        camera.setPosition(new Vector3(-60, 60, 0));
        camera.lowerBetaLimit = (Math.PI / 2) * 0.8;
        camera.attachControl(this);

    

       
        var skybox = Mesh.CreateSphere("skyBox", 100, 1000, scene);
        var shader =  new ShaderMaterial("gradient", scene, {
        vertex: "gradient", fragment: "gradient", }, {});
        shader.setFloat("offset", 10);
        shader.setColor3("topColor", new Color3(0,119,255));
        shader.setColor3("bottomColor", new Color3(240,240, 255));
        shader.backFaceCulling = false;
        skybox.material = shader;
        skybox.position.x = 0;
        skybox.position.y = 0;
        skybox.position.z = 0;
       
        

        var ground = Mesh.CreateGround("ground", 1000, 1000, 1, scene);
        ground.material = new StandardMaterial("ground", scene);
        ground.material.diffuseColor = new Color3(193, 181, 151);
        ground.material.specularColor = new Color3(0,0,0);
        ground.receiveShadows = true;


        var tg:TreeGenerator = new TreeGenerator(scene, shadowGenerator);


        scene.executeWhenReady(function() {
            engine.runRenderLoop(scene.render);
        });

        addEventListener(Event.ENTER_FRAME, frameloop);
        addStats();
    }

    private function addStats():Void {
        addChild(new Stats());
    }


    private function frameloop(event:Event):Void {
        var previousTime:Int = 0;
        var currentTime = Lib.getTimer();
        var deltaTime = currentTime - previousTime;
        previousTime = currentTime;
        var cameraDepth = (deltaTime * 0.03) % 8000;
        camera.position.z = cameraDepth;
    }

    public function toRad(a:Float):Float {
        return a * Math.PI / 180;
    }

    /* SETUP */

    public function new() {
        super();
        addEventListener(Event.ADDED_TO_STAGE, added);
    }

    function added(e) {
        removeEventListener(Event.ADDED_TO_STAGE, added);
        stage.addEventListener(Event.RESIZE, resize);
        #if ios
    haxe.Timer.delay(init, 100); // iOS 6
    #else
        init();
        #end
    }

    public static function main() {
        // static entry point
        Lib.current.stage.align = openfl.display.StageAlign.TOP_LEFT;
        Lib.current.stage.scaleMode = openfl.display.StageScaleMode.NO_SCALE;
        Lib.current.addChild(new Main());
    }

    public static function safeDestroy(obj:Dynamic, ?destroy:Bool = true):Bool {
        if (obj == null) return false;
        var objs:Array<Dynamic> = Std.is(obj, Array) ? obj : [obj];
        for (o in objs) {
            if (o == null) continue;
            if (destroy)
                try { o.destroy(); } catch (e:Dynamic) { trace("[Error on object: " + o + ", {" + e + "}"); }

            var parent = null; try { parent = o.parent; } catch (e:Dynamic) { trace(e); }
            if (parent != null) parent.removeChild(o);
        }
        return true;
    }

    public static function safeRemove(obj:Dynamic):Bool {
        return safeDestroy(obj, false);
    }
}

            