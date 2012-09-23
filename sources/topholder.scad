// This is part of miPrint package
// GNU GPL version 3

include <configuration.scad>


difference() {
  translate([motorw*1.1,0,0]) scale([2,1,1]) cylinder(r=motorw/2+wall*1.5,h=wall*4,center=true);
  translate([inf/2+motorw/2+rod+2*wall,0,0]) cube([inf,inf,inf],center=true);
  cylinder(r=rod/2+0.1,h=inf,center=true);
  translate([motorw/2+rod/2+wall,motorw/2-wall/2,0]) cylinder(r=rod/2,h=inf,center=true);
  translate([motorw/2+rod/2+wall,-motorw/2+wall/2,0]) cylinder(r=rod/2,h=inf,center=true);
  difference() {
    translate([motorw/2+rod/2+wall,0,0]) rotate([90,0,0]) cylinder(r=(minirod-0.5)/2,h=inf,center=true,$fn=50);
    cube([inf,motorw-rod,inf],center=true);
  }
}

difference() {
  translate([motorw*1.1,0,wall*3+rod/2]) scale([2,1,1]) cylinder(r=motorw/2+wall*1.5,h=wall*2+rod,center=true);
  translate([inf/2+motorw/2+rod+2*wall,0,0]) cube([inf,inf,inf],center=true);
  translate([-inf/2+rod/2+wall*2,0,0]) cube([inf,inf,inf],center=true);
  translate([0,rod+wall,wall*3+rod/2]) rotate([0,90,0]) cylinder(r=rod/2,h=inf,center=true);
  translate([0,-rod-wall,wall*3+rod/2]) rotate([0,90,0]) cylinder(r=rod/2,h=inf,center=true);
}

