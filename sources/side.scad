include <configuration.scad>

cubew=3*wall+motorw+rod;

difference() {
  cube([cubew,2*wall+motorw,motorh],center=true);
  translate([-wall/2-rod/2,0,motorh/2.5]) cube([motorw,motorw,motorh],center=true);
  translate([cubew/2-rod/2-wall,motorw/2-wall/2,0]) cylinder(r=rod/2,h=inf);
  translate([cubew/2-rod/2-wall,-(motorw/2-wall/2),0]) cylinder(r=rod/2,h=inf);
  translate([cubew/2-rod/2-wall,0,-motorw/2+wall+rod/2-(rod-wall)]) rotate([90,0,0]) cylinder(r=rod/2,h=inf,center=true);
}
