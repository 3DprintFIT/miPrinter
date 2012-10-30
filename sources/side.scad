// miPrinter
// https://github.com/3DprintFIT/miPrinter
// Side holder
// GNU GPL v3
// Miro Hrončok

include <configuration.scad>

module side() {
	cubew=3*wall+motorw+rod;
	
	difference() {
		cube([cubew,2*wall+motorw,motorh],center=true);
		translate([-wall/2-rod/2,0,motorh/2.5]) cube([motorw,motorw,motorh],center=true);
		translate([cubew/2-rod/2-wall,motorw/2-wall*1.5,0]) cylinder(r=rod/2+0.5,h=inf);
		translate([cubew/2-rod/2-wall,-(motorw/2-wall*1.5),0]) cylinder(r=rod/2+0.5,h=inf);
		translate([cubew/2-rod/2-wall,0,-motorh/2+wall+rod/2]) rotate([90,0,0]) cylinder(r=rod/2,h=inf,center=true);
		translate([-wall/2-rod/2,0,0]) cube([motorw-2*wall,motorw-2*wall,inf],center=true);
		translate([-wall/2-rod/2,0,wall*3]) cube([motorw-2*wall,inf,motorw/2-2*wall],center=true);
		translate([0,0,wall/2]) rotate([0,0,90]) cube([motorw/2-2*wall,inf,motorw/2+2*wall],center=true);
		translate([0,0,-wall+motorh/2]) cube([cubew-wall*2,motorw/2-2*wall,wall*2],center=true);
	}
}

side();
