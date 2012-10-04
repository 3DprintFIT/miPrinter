difference() {
  rotate([180, 0, 0]) import("../stl/pulley32.stl");
  translate([15,0,0]) cylinder(r=4,h=200,center=true);
  translate([-15,0,0]) cylinder(r=4,h=200,center=true);
  translate([0,15,0]) cylinder(r=4,h=200,center=true);
  translate([0,-15,0]) cylinder(r=4,h=200,center=true);
}
