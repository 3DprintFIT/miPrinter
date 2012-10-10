// This is part of miPrint package
// GNU GPL version 3

include <configuration.scad>

cubew=wall+motorw+rod;

difference() {
  union() {
    translate([wall/2+rod/2,0,0]) cube([cubew,motorw,wall],center=true);
    translate([cubew/2+wall/2,motorw/2-wall*1.5,0]) cylinder(r=rod/2+wall,h=wall,center=true);
    translate([cubew/2+wall/2,-(motorw/2-wall*1.5),0]) cylinder(r=rod/2+wall,h=wall,center=true);
  }
  translate([cubew/2+wall/2,motorw/2-wall*1.5,0]) cylinder(r=rod/2+0.5,h=inf,center=true);
  translate([cubew/2+wall/2,-(motorw/2-wall*1.5),0]) cylinder(r=rod/2+0.5,h=inf,center=true);
  // this part is copied form Prusa Mendel
  rotate ([0,0,45]) translate([20,0,0]) cube(size = [9,3.2,25], center = true);
  rotate ([0,0,-45]) translate([20,0,0]) cube(size = [9,3.2,25], center = true);
  rotate ([0,0,135]) translate([20,0,0]) cube(size = [9,3.2,25], center = true);
  rotate ([0,0,-135]) translate([20,0,0]) cube(size = [9,3.2,25], center = true);
  cylinder(r=13,h=25, center = true);
  // savng material (and hole for motor cabels)
  translate([cubew/2-wall,0,0]) cylinder(r=rod*0.7,h=inf,center=true);
}

