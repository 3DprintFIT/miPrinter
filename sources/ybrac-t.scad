// PRUSA Mendel  
// Y motor bracket by Spacexula!!
// GNU GPL v3
// Josef Průša
// josefprusa@me.com
// prusadjs.cz
// http://www.reprap.org/wiki/Prusa_Mendel
// http://github.com/prusajr/PrusaMendel
// Brutaly cutted for miPrinter

include <configuration.scad>

module ybract(){
	difference(){
		rotate(a=[0,0,-2])translate([7,4.5])rotate([0,0,90])mirror()linear_extrude(file="ybrac-t.dxf",height=10);
		rotate(a=[0,0,-2]){
			translate([3.4,30.05,-10])polyhole(m8_diameter, 30);

			translate([33.5,-20.5,10])cylinder(h=30,r=4.4/2, center=true);
			translate([4.5,-10,10])cylinder(h=30,r=4.4/2, center=true);
			translate([15,19.2,10])cylinder(h=30,r=4.4/2, center=true);

			translate([33.5,-20.5,12])cylinder(h=10,r=7.5/2, center=true);
			translate([4.5,-10,12])cylinder(h=10,r=7.5/2, center=true);
			translate([15,19.2,12])cylinder(h=10,r=7.5/2, center=true);
		}
		// Brutal cut here
		rotate([0,0,-22]) translate([-40,-42,0]) cube([100,30,10]);
		difference() {
			rotate([0,0,22]) translate([-15,-17,0]) cube([15,15,10]);
			translate([6.6,-8,0]) cylinder(r=rod,h=15);
		}
	}
}
mirror() ybract();

