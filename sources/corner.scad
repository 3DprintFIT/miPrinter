// This is part of miPrint package
// GNU GPL version 3

include <configuration.scad>

width = 2*wall+rod;

side = -1; // or 1

difference() {
  union() {
    cylinder(r=rod/2+wall,h=width,center=true);
    polyhedron(points = [[0,-side*(wall+rod/2),width/2],
    					  [0,-side*(wall+rod/2),-width/2],
    					  [motorw/2+1.5*rod-wall,0,width/2],
    					  [motorw/2+1.5*rod-wall,0,-width/2],
    					  [motorw/2+1.5*rod-wall,side*(raildepth+wall),width/2],
    					  [motorw/2+1.5*rod-wall,side*(raildepth+wall),-width/2],
    					  [0,side*(wall+rod/2),width/2],
    					  [0,side*(wall+rod/2),-width/2]],
    			triangles = [[0,1,2],[1,3,2],[2,3,4],[3,5,4],[4,5,6],[5,7,6],[6,7,0],[7,1,0],[0,2,4],[0,4,6],[1,5,3],[1,7,5]]);
  }
  cylinder(r=rod/2,h=inf,center=true);
}

translate([rail/2-rod/2+2*wall+motorw,side*(raildepth+wall)/2,0]) difference() {
  cube([2*wall+rail,raildepth+wall,width],center=true);
  translate([0,side*wall/2,wall/2]) cube([rail,raildepth,width-wall],center=true);
}

translate([motorw/2+2*rod,side*2*wall,0]) difference() {
  cube([2*wall+rod,4*wall,width],center=true);
  rotate([90,0,0]) cylinder(r=rod/2,h=inf,center=true);
}