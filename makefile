##
## @file		makefile
## @brief		MDACCFort  makefile.
## @author		Rinku Mishra <rinku.mishra@cppipr.res.in>
##

F95 = ~/opt/miniconda3/bin/gfortran

# Definition of the Flags
OMP = -O -fopenmp
#FFTWI = -I/usr/bin/include
#FFTWL = -lfftw3 -lm

EXEC = mdaccfort

SDIR = src
ODIR = src/obj
OUTDIR = output

SRC_ = # Additional CPP files
OBJ_ = $(SRC_:.f95=.o)

SRC = $(patsubst %,$(DIR)/%,$(SRC_))
OBJ = $(patsubst %,$(ODIR)/%,$(OBJ_))

all: $(EXEC)

$(EXEC) : $(ODIR)/main.o
	@echo "Linking MDACCFort"
	@$(F95) $^ -o $@ $(OpenACC)
	@echo "MDACCFort is built"
	@mkdir -p $(OUTDIR)

$(ODIR)/%.o: $(SDIR)/%.f95
	@echo "Cleaning complied files"
	@rm -f *~ $(ODIR)/*.o $(SDIR)/*.o $(SDIR)/*~
	@rm -rf $(OUTDIR)
