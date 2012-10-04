translate([33, 15, 10.0]) rotate([0, 0, 90]) import("../stl/topholder.stl");
translate([78, 36, 10.0]) rotate([0, 0, -20]) import("../stl/topholder.stl");
translate([136, -4, 23.5]) rotate([0, 0, 70]) import("../stl/side.stl");
translate([60, 84.1732, 23.5]) rotate([0, 0, 0]) import("../stl/side-center.stl");
translate([64, -14, 19.5]) difference() {
  rotate([180, 0, 0]) import("../stl/pulley32.stl");
  translate([15,0,0]) cylinder(r=4,h=200,center=true);
  translate([-15,0,0]) cylinder(r=4,h=200,center=true);
  translate([0,15,0]) cylinder(r=4,h=200,center=true);
  translate([0,-15,0]) cylinder(r=4,h=200,center=true);
}
translate([54, 84, 0]) rotate([0, 0, 0]) import("../stl/pulley8.stl");