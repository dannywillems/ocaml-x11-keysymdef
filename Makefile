MLI_FILE		= x11_keysymdef.mli
ML_FILE			= $(patsubst %.mli, %.ml,   $(MLI_FILE))
CMI_FILE		= $(patsubst %.mli, %.cmi,  $(MLI_FILE))
CMO_FILE		= $(patsubst %.mli, %.cmo,  $(MLI_FILE))
CMA_FILE		= $(patsubst %.mli, %.cma,  $(MLI_FILE))
CMXA_FILE		= $(patsubst %.mli, %.cmxa, $(MLI_FILE))
A_FILE			= $(patsubst %.mli, %.a,    $(MLI_FILE))

LIB_NAME		= ocaml-x11-keysymdef

all: build

%.cmo: %.ml
	ocamlc -c -o $@ $<

%.cmi: %.mli
	ocamlc -c -o $@ $<

%.cmx: %.ml
	ocamlopt -c -o $@ $<

%.cma: $(CMI_FILE) $(CMO_FILE)
	ocamlc -a -o $@ $(CMO_FILE)

%.cmxa: $(CMI_FILE) $(CMX_FILE)
	ocamlopt -a -o $@ $(CMX_FILE)

build: $(CMI_FILE) $(CMO_FILE) $(CMX_FILE) $(CMA_FILE) $(CMXA_FILE)

install:
	ocamlfind install $(LIB_NAME) META $(CMI_FILE) $(CMA_FILE) $(CMXA_FILE)

remove:
	ocamlfind remove $(LIB_NAME)

clean:
	$(RM) $(CMI_FILE) $(CMO_FILE) $(CMX_FILE)

fclean: clean
	$(RM) $(CMXA_FILE) $(CMA_FILE)
