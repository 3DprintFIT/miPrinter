// This is part of miPrint package
// GNU GPL version 3

include <configuration.scad>
include <side.scad>

tail = print/2-20;

// saving material
module antiholes() {
  for ( i = [1 : (tail/(2*wall)-1)] ) {
    translate([cubew/2-wall/2+wall*i+wall*i,0,0]) cube([wall,motorw-2*wall,inf],center=true);
  }
}

difference() {
  translate([cubew/2+tail/2,0,-motorh/2+motorw/2+wall]) cube([tail,2*wall+motorw,motorw+2*wall],center=true);
  translate([cubew/2+tail/2-wall/2,0,wall]) cube([tail-wall,motorw,motorh],center=true);
  translate([cubew/2+(tail-wall)/2,0,motorh/2]) scale([1,1,0.7]) rotate([90,0,0]) cylinder(r=(tail-wall)/2,h=inf,center=true);
  translate([cubew/2+(tail-wall)/2,0,motorw/2+wall]) cube([tail-wall,inf,motorw+2*wall-motorh],center=true);
  antiholes();
  translate([tail+cubew/2,0,-motorh/2+motorw/2+wall]) rotate([0,90,0])union() {
    // this part is copied form Prusa Mendel
    rotate ([0,0,45]) translate([20,0,0]) cube(size = [9,3.2,25], center = true);
    rotate ([0,0,-45]) translate([20,0,0]) cube(size = [9,3.2,25], center = true);
    rotate ([0,0,135]) translate([20,0,0]) cube(size = [9,3.2,25], center = true);
    rotate ([0,0,-135]) translate([20,0,0]) cube(size = [9,3.2,25], center = true);
    cylinder(r=10,h=25, center = true);
  }
}
