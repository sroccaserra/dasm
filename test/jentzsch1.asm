; $Id: jentzsch1.asm 299 2008-11-10 02:17:18Z phf $
;
; Thomas Jentzsch <tjentzsch@web.de> test case for bug
; in error handling.

	processor 6502
	include vcs.h

	ORG $f800

Start
	ldz #$00 ; illegal mnemonic

	org $fffc
	.word Start
	.word Start
