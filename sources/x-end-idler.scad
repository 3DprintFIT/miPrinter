// PRUSA Mendel  
// X-end with idler mount
// GNU GPL v3
// Josef Průša
// josefprusa@me.com
// prusadjs.cz
// http://www.reprap.org/wiki/Prusa_Mendel
// http://github.com/prusajr/PrusaMendel

include <configuration.scad>

corection = 1.17; 

/**
 * @id x-end-idler
 * @name X end idler
 * @category Printed
 * @using 1 m8spring
 * @using 3 m8nut
 * @using 3 m8washer
 * @using 3 m8washer-big
 * @using 2 m8x30
 */ 
use <x-end.scad>
support_beam_offset=(linear==true) ? 6:0;

module xendidler(linear){

	xend(false,linear);
	translate(v = [25-xend_width, 0, 12.5]){
		mirror(){
			difference(){
				union(){
					translate(v = [xend_width/2+1.5, -21.5, 25.3]) cube(size = [xend_width+0.5,7,4.4], center = true);
					
					translate(v = [25, 14.5-support_beam_offset, 25.3]) cube(size = [15,5,4.4], center = true);
					translate(v = [32.5, -5, 7.5]) cube(size = [5,40,40], center = true);
				}
				translate(v = [32.5, -6, 28-3-4.7]) rotate(a=[0,90,0]) cylinder(h = 90, r=m8_diameter/2, $fn=9, center=true);
			}
		}
	}
}
xendidler(linear);
