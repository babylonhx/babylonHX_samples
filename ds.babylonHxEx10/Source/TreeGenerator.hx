package;
import com.gamestudiohx.babylonhx.Scene;
import com.gamestudiohx.babylonhx.lights.shadows.ShadowGenerator;
import com.gamestudiohx.babylonhx.materials.StandardMaterial;
import com.gamestudiohx.babylonhx.mesh. *;
import com.gamestudiohx.babylonhx.tools.math.Color3;
import Tree;

/**
* ...
* @author Brendon Smith
*/

class TreeGenerator{

    var material:StandardMaterial;

    var treeNumber:Int = 50;
    var _trees:Array<Tree> = [];
    var scene:Scene;
    var minSizeBranch:Int = 15;
    var maxSizeBranch:Int = 20;
    var minSizeTrunk:Int = 15;
    var maxSizeTrunk:Int = 18;
    var minRadius:Float = 1.0;
    var maxRadius:Float = 5.0;
    var sd:ShadowGenerator;

    public function new(scene:Scene, ?sd:ShadowGenerator = null) {
            this.scene = scene;
            this.sd = sd;
            this.generate();
    }


    public function generate() {

        this.clean();

        var size:Int,
        sizeTrunk:Int, x:Int, z:Int, radius:Float;


        var i:Int = 0;
        while (i<this.treeNumber) {
            size = this.randomNumber(this.minSizeBranch,this.maxSizeBranch);
            sizeTrunk = this.randomNumber(this.minSizeTrunk,this.maxSizeTrunk);
            radius = this.randomNumber(this.minRadius,this.maxRadius);
            x = this.randomNumber(-300, 300);
            z = this.randomNumber(-300, 300);

            //trace(size);
            var tree:Tree = new Tree('tree', this.scene, size, sizeTrunk, radius, this.sd);
            tree.position.x = x;
            tree.position.z = z;
            tree.trunk.position.x = x;
            tree.trunk.position.z = z;

            this._trees.push(tree);
            i++;
        }
    }


    public function randomNumber(min:Dynamic, max:Dynamic):Dynamic {
        if (min == max) {
            return (min);
        }
        var random = Math.random();
        return ((random * (max - min)) + min);
    }

    public function clean() {
        for(t in this._trees){
            t.dispose();
        }

        this._trees = [];
    }

}

            