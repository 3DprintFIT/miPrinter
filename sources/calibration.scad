// This is part of miPrint package
// GNU GPL version 3
include <configuration.scad>

/**
 *@name Configuration test
 */
module configurationtest(){
	difference(){
		cube([m8_nut_diameter+m3_nut_diameter+2*wall,m8_nut_diameter+wall,10], center=true);
		translate([-m8_nut_diameter/3,0,0])cylinder(r=m8_nut_diameter/2,h=6,$fs=8);
		translate([m3_nut_diameter,0,0])cylinder(r=m3_nut_diameter/2,h=5,$fs=1.2);
	}
}
configurationtest();

