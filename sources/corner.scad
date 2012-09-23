// This is part of miPrint package
// GNU GPL version 3

include <configuration.scad>

side = 1; // or -1

cubeh=motorw+2*wall+2*rail;
 rotate([90,0,0])
difference() {
  translate([-side*wall/2,0,0]) cube([motorw+wall,motorw,cubeh], center=true);
  translate([-side*(rod/2+wall),0,-cubeh/2+1.5*rod-(rod-wall)]) rotate([90,0,0]) cylinder(r=rod/2,h=inf,center=true);
  translate([0,0,-cubeh/2+3.5*rod]) rotate([0,90,0]) cylinder(r=rod/2,h=inf,center=true);
  translate([side*motorw/2,motorw/2,cubeh/2-1.25*rail]) cube([motorw,motorw,rail],center=true);
}
