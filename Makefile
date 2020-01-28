# nim-tcc
#########

PROJPATH	:= $(PWD)
PROJNAME	:= $(notdir $(PROJPATH))
MK		:= mk

include $(MK)/os-detect.mk
include $(MK)/c-project.mk
include $(MK)/sphinx.mk

include $(MK)/debug.mk
include $(MK)/c-lint.mk

TARGET		:= $(PROJNAME)$(EXT)
