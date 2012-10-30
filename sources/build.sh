#!/bin/bash
# This is part of miPrint package
# GNU GPL version 3
cd "$( dirname "$( type -p $0 )" )"
openscad="openscad"

$openscad -m make -o ../stl/cornerL.stl -D 'side=+1' corner.scad
$openscad -m make -o ../stl/cornerR.stl -D 'side=-1' corner.scad
$openscad -m make -o ../stl/side.stl side.scad
$openscad -m make -o ../stl/belt-clamp-nut-holder.stl belt-clamp-nut-holder.scad
$openscad -m make -o ../stl/belt-clamp.stl belt-clamp.scad
$openscad -m make -o ../stl/coupling.stl coupling.scad
$openscad -m make -o ../stl/topholder.stl topholder.scad
$openscad -m make -o ../stl/motortop.stl motortop.scad
$openscad -m make -o ../stl/pulley8.stl  -D 'teeth=16'  pulley.scad
$openscad -m make -o ../stl/x-end-idler.stl x-end-idler.scad
$openscad -m make -o ../stl/x-end-motor.stl x-end-motor.scad
$openscad -m make -o ../stl/x-carriage.stl x-carriage.scad
$openscad -m make -o ../stl/ybrac-t.stl ybrac-t.scad
