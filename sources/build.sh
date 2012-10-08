#!/bin/bash
# This is part of miPrint package
# GNU GPL version 3
cd "$( dirname "$( type -p $0 )" )"
openscad="openscad"

$openscad -m make -o ../stl/cornerL.stl -D 'side=+1' corner.scad
$openscad -m make -o ../stl/cornerR.stl -D 'side=-1' corner.scad
$openscad -m make -o ../stl/side.stl side.scad
$openscad -m make -o ../stl/side-center.stl side-center.scad
$openscad -m make -o ../stl/topholder.stl topholder.scad
$openscad -m make -o ../stl/motortop.stl motortop.scad
$openscad -m make -o ../stl/pulley8.stl  -D 'teeth=16'  pulley.scad
$openscad -m make -o ../stl/pulley32.stl -D 'teeth=60' pulley.scad
$openscad -m make -o ../stl/pulley32.stl pulley32.scad
