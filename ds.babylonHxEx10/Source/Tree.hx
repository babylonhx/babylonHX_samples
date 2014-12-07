package;
import com.gamestudiohx.babylonhx.Scene;
import com.gamestudiohx.babylonhx.lights.shadows.ShadowGenerator;
import com.gamestudiohx.babylonhx.materials.StandardMaterial;
import com.gamestudiohx.babylonhx.mesh.Mesh;
import com.gamestudiohx.babylonhx.mesh.VertexData;
import com.gamestudiohx.babylonhx.mesh.VertexBuffer;
import com.gamestudiohx.babylonhx.tools.math.Vector3;
import com.gamestudiohx.babylonhx.tools.math.Color3;

/**
* ...
* @author Brendon Smith
*/

class Tree extends Mesh {
    public var trunk:Mesh;

    public function new(name:String="tree", scene:Scene, sizeBranch:Int, sizeTrunk:Int, radius:Float, ?sd:ShadowGenerator = null) {
            super(name, scene);
            this._init(sizeBranch);

            //todo add random color class 
            //var branchColor = randomColor({hue: 'green', luminosity: 'darl', format: 'rgbArray'});
            //var trunkColor = randomColor({hue: 'orange',luminosity: 'dark', format: 'rgbArray'});
            // 
            var branchColor = [97,196,25];
            var trunkColor = [133,135,17];
            this.material = new StandardMaterial("mat", scene);
            this.material.diffuseColor = new Color3(branchColor[0],branchColor[1],branchColor[2]);
            this.material.specularColor = new Color3(0,0,0);
            this.position.y = sizeTrunk+sizeBranch/2-2;

            var dT:Float = 0;
            if(radius-2<1){
                dT = 1;
            }else{
                dT = radius - 2;
            }

            this.trunk =  Mesh.CreateCylinder("trunk", sizeTrunk, dT, radius, 7, 2, scene );
            //this.trunk.parent = this;
            this.trunk.position.y = (-sizeBranch/2+16);
            //trace(this.trunk.position.y);

            this.trunk.material = new StandardMaterial("trunk", scene);
            this.trunk.material.diffuseColor = new Color3(trunkColor[0],trunkColor[1],trunkColor[2]);
            this.trunk.material.specularColor = new Color3(0,0,0);
            this.trunk.convertToFlatShadedMesh();
            if(sd != null){
                sd.getShadowMap().renderList.push(this);
                sd.getShadowMap().renderList.push(this.trunk);
            }
            
    }


    public function randomNumber(min:Dynamic, max:Dynamic):Dynamic {
        if (min == max) {
            return (min);
        }
        var random = Math.random();
        return ((random * (max - min)) + min);
    }

    public function _init(sizeBranch:Int){
    var vertexData = VertexData.CreateSphere(2,sizeBranch);
    vertexData.applyToMesh(this, false);

    var positions = this.getVerticesData(VertexBuffer.PositionKind);
    var indices = this.getIndices();
    var numberOfPoints = positions.length/3;
    var array:Array<Dynamic> = [];
    var map:Array<Dynamic> = [];
    var max:Array<Dynamic> = [];
    var i:Int=0;
    var v3:Vector3 = new Vector3(0,0,0);
    while(i < numberOfPoints){

        var p = new Vector3(positions[i*3], positions[i*3+1], positions[i*3+2]);

        if (p.y >= sizeBranch/2) {
            max.push(p);
        }

        var found = false;
        var index:Int=0;
        while (index < map.length && !found){

            array= map[index];
            var p0:Vector3 = array[0];
            if (p0.equals (p) || (p0.subtract(p)).lengthSquared() < 0.01){
                //
                array.push(i*3);
                found = true;
            }
            index++;
        }

        if (!found) {
            array = [];
            array.push(p);
            array.push(i*3);
            map.push(array);
        }
        i++;
        //trace(map.length);
    }

    for(m in map){
        var index:Int = 1, min = -sizeBranch/10, max = sizeBranch/10;
        
        var rx = this.randomNumber(min,max);
        var ry = this.randomNumber(min,max);
        var rz = this.randomNumber(min,max);
        while( index < m.length ) {
            var i:Int = m[index];
            positions[i] += rx;
            positions[i+1] += ry;
            positions[i+2] += rz;

            index++;
        }
       

     
    }


    this.setVerticesData(VertexBuffer.PositionKind, positions);
    var normals = new Array<Float>();
    VertexData.ComputeNormals(positions, indices, normals);
    this.setVerticesData(VertexBuffer.NormalKind, normals);
    this.convertToFlatShadedMesh();

    }

}

            