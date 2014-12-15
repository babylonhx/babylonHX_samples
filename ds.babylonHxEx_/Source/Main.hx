package;
import com.gamestudiohx.babylonhx.Node;
import com.gamestudiohx.babylonhx.Scene;
import com.gamestudiohx.babylonhx.Engine;
import com.gamestudiohx.babylonhx.animations.Animation;
import com.gamestudiohx.babylonhx.bones.Bone;
import com.gamestudiohx.babylonhx.bones.Skeleton;
import com.gamestudiohx.babylonhx.cameras.Camera;
import com.gamestudiohx.babylonhx.cameras.ArcRotateCamera;
import com.gamestudiohx.babylonhx.cameras.FreeCamera;
import com.gamestudiohx.babylonhx.cameras.TouchCamera;
import com.gamestudiohx.babylonhx.collisions.Collider;
import com.gamestudiohx.babylonhx.collisions.CollisionPlane;
import com.gamestudiohx.babylonhx.collisions.PickingInfo;
import com.gamestudiohx.babylonhx.culling.octrees.Octree;
import com.gamestudiohx.babylonhx.culling.octrees.OctreeBlock;
import com.gamestudiohx.babylonhx.culling.BoundingSphere;
import com.gamestudiohx.babylonhx.culling.BoundingInfo;
import com.gamestudiohx.babylonhx.culling.BoundingBox;
import com.gamestudiohx.babylonhx.layer.Layer;
import com.gamestudiohx.babylonhx.lensflare.LensFlare;
import com.gamestudiohx.babylonhx.lensflare.LensFlareSystem;
import com.gamestudiohx.babylonhx.lights.shadows.ShadowGenerator;
import com.gamestudiohx.babylonhx.lights.DirectionalLight;
import com.gamestudiohx.babylonhx.lights.PointLight;
import com.gamestudiohx.babylonhx.lights.HemisphericLight;
import com.gamestudiohx.babylonhx.lights.SpotLight;
import com.gamestudiohx.babylonhx.lights.Light;
import com.gamestudiohx.babylonhx.materials.textures.BaseTexture;
import com.gamestudiohx.babylonhx.materials.textures.CubeTexture;
import com.gamestudiohx.babylonhx.materials.textures.DynamicTexture;
import com.gamestudiohx.babylonhx.materials.textures.MirrorTexture;
import com.gamestudiohx.babylonhx.materials.textures.RenderTargetTexture;
import com.gamestudiohx.babylonhx.materials.textures.Texture;
import com.gamestudiohx.babylonhx.materials.Effect;
import com.gamestudiohx.babylonhx.materials.Material;
import com.gamestudiohx.babylonhx.materials.MultiMaterial;
import com.gamestudiohx.babylonhx.materials.ShaderMaterial;
import com.gamestudiohx.babylonhx.materials.StandardMaterial;
import com.gamestudiohx.babylonhx.mesh.AbstractMesh;
import com.gamestudiohx.babylonhx.mesh.SubMesh;
import com.gamestudiohx.babylonhx.mesh.Geometry;
import com.gamestudiohx.babylonhx.mesh.InstancedMesh;
import com.gamestudiohx.babylonhx.mesh.Mesh;
import com.gamestudiohx.babylonhx.mesh.VertexBuffer;
import com.gamestudiohx.babylonhx.mesh.GroundMesh;
import com.gamestudiohx.babylonhx.mesh.VertexData;
import com.gamestudiohx.babylonhx.particles.Particle;
import com.gamestudiohx.babylonhx.particles.ParticleSystem;
import com.gamestudiohx.babylonhx.postprocess.BlackAndWhitePostProcess;
import com.gamestudiohx.babylonhx.postprocess.BlurPostProcess;
import com.gamestudiohx.babylonhx.postprocess.ConvolutionPostProcess;
import com.gamestudiohx.babylonhx.postprocess.FxaaPostProcess;
import com.gamestudiohx.babylonhx.postprocess.PassPostProcess;
import com.gamestudiohx.babylonhx.postprocess.PostProcess;
import com.gamestudiohx.babylonhx.postprocess.PostProcessManager;
import com.gamestudiohx.babylonhx.postprocess.RefractionPostProcess;
import com.gamestudiohx.babylonhx.rendering.BoundingBoxRenderer;
import com.gamestudiohx.babylonhx.rendering.RenderingGroup;
import com.gamestudiohx.babylonhx.rendering.RenderingManager;
import com.gamestudiohx.babylonhx.sprites.Sprite;
import com.gamestudiohx.babylonhx.sprites.SpriteManager;
import com.gamestudiohx.babylonhx.tools.math.Color4;
import com.gamestudiohx.babylonhx.tools.math.Vector3;
import com.gamestudiohx.babylonhx.tools.math.Color3;
import com.gamestudiohx.babylonhx.tools.math.Frustum;
import com.gamestudiohx.babylonhx.tools.math.Matrix;
import com.gamestudiohx.babylonhx.tools.math.Plane;
import com.gamestudiohx.babylonhx.tools.math.Quaternion;
import com.gamestudiohx.babylonhx.tools.math.Ray;
import com.gamestudiohx.babylonhx.tools.math.Vector2;
import com.gamestudiohx.babylonhx.tools.math.Viewport;
import com.gamestudiohx.babylonhx.tools.SceneLoader;
import com.gamestudiohx.babylonhx.tools.SmartArray;
import com.gamestudiohx.babylonhx.tools.Tools;
import openfl.Vector.Vector;
import openfl.display.Shape;
import openfl.display.Sprite;
import openfl.events.Event;
import openfl.events.KeyboardEvent;
import openfl.geom.Rectangle;
import openfl.Lib;
import openfl.display.Graphics;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.FPS;
extern class BabylonExt {  
    function new(engine:Engine, scene:Scene, camera:Dynamic);  
}  

/**
* ...
* @author Brendon Smith
*/


class Main extends Sprite {

    public var inited:Bool;
    public var scene:Scene;
    public var engine:Engine;
    public var camera:Dynamic;

    function resize(e) {
            if (!inited) init();
    }

    public function init() {
        if (inited) return;
        inited = true;
        engine = new Engine(this, true);
        scene = new Scene(engine);
        camera = new ArcRotateCamera("Camera", 0, 0, 10, Vector3.Zero(), scene);

        scene.executeWhenReady(function() {
            engine.runRenderLoop(scene.render);
            var expose = new BabylonExt(engine, scene, camera);
        });

        /*
        var light = new PointLight("Omni", new Vector3(20, 100, 2), scene);
        var sphere = Mesh.CreateSphere("Sphere", 16, 3, scene);
        var material = new StandardMaterial("kosh", scene);
        material.diffuseColor = new Color3(1, 0, 0);    
        material.bumpTexture = new Texture("assets/img/normalMap.jpg", scene);
        sphere.material = material; 

        scene.executeWhenReady(function() {
            engine.runRenderLoop(scene.render);
            var expose = new BabylonExt(engine, scene, camera);
        });*/
    }

    public function getEngine():Engine {
        return this.engine;
    }

    public function getScene():Scene {
        return this.scene;
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
        Lib.current.stage.align = flash.display.StageAlign.TOP_LEFT;
        Lib.current.stage.scaleMode = flash.display.StageScaleMode.NO_SCALE;
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

            