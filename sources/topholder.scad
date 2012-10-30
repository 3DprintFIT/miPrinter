// miPrinter
// https://github.com/3DprintFIT/miPrinter
// Top part holder
// GNU GPL v3
// Miro Hrončok

include <configuration.scad>

difference() {
  translate([motorw*1.1,0,0]) scale([2.1,1,1]) cylinder(r=motorw/2+wall*1.7,h=2*bearingd+wall,center=true,$fn=100);
  translate([inf/2+motorw/2+rod+2*wall,0,0]) cube([inf,inf,inf],center=true);
  translate([0,0,-wall/2+layer]) cylinder(r=rod/2+1,h=inf);
  translate([0,0,-bearingd/2+bearingd+wall/2]) cylinder(r=bearingr,h=bearingd,center=true);
  translate([0,0,bearingd/2-bearingd-wall/2]) cylinder(r=bearingr,h=bearingd,center=true);
  translate([motorw/2+rod/2+wall,motorw/2-wall*1.5,0]) cylinder(r=rod/2+0.5,h=inf,center=true);
  translate([motorw/2+rod/2+wall,-motorw/2+wall*1.5,0]) cylinder(r=rod/2+0.5,h=inf,center=true);
  translate([motorw/2+wall*2,0,0]) cube([motorw/2,motorw/2-bearingd-wall/2,2*bearingd+wall],center=true);
}

translate([0,0,wall+rod/2+bearingd+wall/2]) difference() {
  translate([motorw*1.1,0,0]) scale([2.1,1,1]) cylinder(r=motorw/2+wall*1.7,h=wall*2+rod,center=true,$fn=100);
  translate([inf/2+motorw/2+rod+2*wall,0,0]) cube([inf,inf,inf],center=true);
  translate([-inf/2+rod/2+wall*2,0,0]) cube([inf,inf,inf],center=true);
  translate([0,rod+wall,0]) rotate([0,90,0]) cylinder(r=rod/2,h=inf,center=true);
  translate([0,-rod-wall,0]) rotate([0,90,0]) cylinder(r=rod/2,h=inf,center=true);
}

