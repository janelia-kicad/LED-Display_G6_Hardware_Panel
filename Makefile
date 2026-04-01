KICAD_CONFIG_HOME := $(CURDIR)/.guix/.config/kicad
GUIX_TIME_MACHINE = guix time-machine -C .guix/channels.scm
GUIX_SHELL = $(GUIX_TIME_MACHINE) -- shell --pure -m .guix/manifest.scm

.PHONY: guix-shell
guix-shell:
	$(GUIX_SHELL)

.PHONY: kicad-edits
kicad-edits:
	mkdir -p $(KICAD_CONFIG_HOME)
	KICAD_CONFIG_HOME=$(KICAD_CONFIG_HOME) $(GUIX_SHELL) -E "^KICAD_CONFIG_HOME$$" -- kicad
