miPrinter
=========

Foldable RepRap printer. Not ready for production, but almost done.

Rebuild
-------

To rebuild the parts, run `make` (you'll need `openscad` in `$PATH`).

It is advised to run `make calibration` first, print the result and adjust configuration.scad until you are satisfated.

Print
-----

* Once:
 * x-carriage.stl
 * x-end-idler.stl
 * x-end-motor.stl
 * ybrac-t.stl
* Twice:
 * belt-clamp-nut-holder.stl
 * cornerL.stl
 * cornerR.stl
 * coupling.stl
 * motortop.stl
 * topholder.stl
 * side.stl
* Four times:
 * belt-clamp.stl

And if you don't use alluminium pulleys, print also  pulley8.stl twice.

License
-------

This printer is licensed under the terms of GNU GPL version 3, see COPYING. Lot's of parts are form [josefprusa/PrusaMendel](https://github.com/josefprusa/PrusaMendel) - some of them are bit modified.
