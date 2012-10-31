OPENSCAD = openscad -m make -o $@ $<

TARGETS = \
	belt-clamp-nut-holder \
	belt-clamp \
	cornerL \
	cornerR \
	coupling \
	motortop \
	pulley8 \
	side \
	topholder \
	x-carriage \
	x-end-idler \
	x-end-motor \
	ybrac-t \


STL_DIR = stl
SRC_DIR = sources

DEPEND = $(SRC_DIR)/configuration.scad $(SRC_DIR)/prusafunc.scad
X-END-DEPEND = $(DEPEND) $(SRC_DIR)/x-end.scad $(SRC_DIR)/bushing.scad $(SRC_DIR)/teardrop.scad
X-CAR-DEPEND = $(DEPEND) $(SRC_DIR)/bushing.scad

all: $(patsubst %,$(STL_DIR)/%.stl, $(TARGETS))
calibration: $(STL_DIR)/calibration.stl

# Special options
$(STL_DIR)/cornerL.stl: $(SRC_DIR)/corner.scad $(DEPEND)
	$(OPENSCAD) -D 'side=+1'

$(STL_DIR)/cornerR.stl: $(SRC_DIR)/corner.scad $(DEPEND)
	$(OPENSCAD) -D 'side=-1'

$(STL_DIR)/pulley8.stl: $(SRC_DIR)/pulley.scad $(DEPEND)
	$(OPENSCAD) -D 'teeth=16'

# X ends depends on more files
$(STL_DIR)/x-end-%.stl: $(SRC_DIR)/x-end-%.scad $(X-END-DEPEND)
	$(OPENSCAD)

# As well as X carriage
$(STL_DIR)/x-carriage.stl: $(SRC_DIR)/x-carriage.scad $(X-CAR-DEPEND)
	$(OPENSCAD)

# ybarc-t depens odn it's dxf but I don't change it (ever)

# General rest
$(STL_DIR)/%.stl: $(SRC_DIR)/%.scad $(DEPEND)
	$(OPENSCAD)

clean:
	rm $(STL_DIR)/*.stl -f
