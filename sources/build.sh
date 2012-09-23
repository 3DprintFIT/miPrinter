#!/bin/bash
# This is part of miPrint package
# GNU GPL version 3
cd "$( dirname "$( type -p $0 )" )"
openscad="$HOME/Stažené/openscad-2012.06.18/bin/openscad"

rm *.stl -f

$openscad -m make -o ../stl/cornerL.stl -D 'side=+1' corner.scad
$openscad -m make -o ../stl/cornerR.stl -D 'side=-1' corner.scad
$openscad -m make -o ../stl/side.stl side.scad
$openscad -m make -o ../stl/side-center.stl side-center.scad
$openscad -m make -o ../stl/topholder.stl topholder.scad
