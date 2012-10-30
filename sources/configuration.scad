// miPrinter
// https://github.com/3DprintFIT/miPrinter
// Configuration
// GNU GPL v3
// Miro Hrončok

print = 200;
wall = 5;
rod = 8;
minirod = 3;
motorw = 43;
motorh = 47;
inf = 500;
bearingd = 7+1; // including 1 washer
bearingr = 11+0.5; // including clearance
layer = 0.3;
bigwasher = 30;

// RAIL: http://eshop.prodance.cz/fotocache/add/620612_1.jpg
rail = 10; // outside
raildepth = 15;

// Prusa parts
use <prusafunc.scad>;

linear = true;
lme8uu=false;
m8_diameter = 9;
m8_nut_diameter = 14.1;
m4_nut_diameter = 9;
m3_diameter = 3.6;
m3_nut_diameter = 5.3;
thin_wall = 3;
xend_width = 32;


