TARGETS = \
	cornerL.stl \
	cornerR.stl \
	coupling.stl \
	motortop.stl \
	pulley32.stl \
	pulley.stl \
	side-center.stl \
	side.stl \
	topholder.stl \
	x-carriage.stl \
	x-end-idler.stl \
	x-end-motor.stl \

STL_DIR=stl/
#STL_LM8UU_DIR=stl/
SRC_DIR=sources/

all: default #lm8uu

calibration:
	openscad -m make -o calibration.stl $(SRC_DIR)calibration.scad

default: $(addprefix $(STL_DIR),$(TARGETS)) $(STL_DIR)frame-vertex-foot.stl

#lm8uu: $(addprefix $(STL_LM8UU_DIR),$(TARGETS)) $(STL_LM8UU_DIR)frame-vertex-foot.stl

$(STL_DIR)frame-vertex-foot.stl:
	openscad -m make -o $@ -D 'basefoot=true' $(SRC_DIR)frame-vertex.scad

$(addprefix $(STL_DIR),$(TARGETS)):
	openscad -m make -o $@ $(patsubst %.stl,%.scad,$(SRC_DIR)$(subst $(STL_DIR),,$@))
	
#$(addprefix $(STL_LM8UU_DIR),$(TARGETS)):
#	openscad -m make -D 'linear=true;lme8uu=false' -o $@ $(patsubst %.stl,%.scad,$(SRC_DIR)$(subst $(STL_LM8UU_DIR),,$@))

#$(STL_LM8UU_DIR)frame-vertex-foot.stl: $(STL_DIR)frame-vertex-foot.stl
#	cp $(STL_DIR)frame-vertex-foot.stl $(STL_LM8UU_DIR)frame-vertex-foot.stl
	
clean:
	rm -f $(STL_DIR)*.stl
#	rm -f $(STL_LM8UU_DIR)*.stl
	
	
	
	
