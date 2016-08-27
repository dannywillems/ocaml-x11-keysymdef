type t =
  | XK_VoidSymbol                    (* Void symbol *)

(*
 * TTY function keys, cleverly chosen to map to ASCII, for convenience of
 * programming, but could have been arbitrary (at the cost of lookup
 * tables in client code).
 *)

  | XK_BackSpace                       (* Back space, back char *)
  | XK_Tab
  | XK_Linefeed                        (* Linefeed, LF *)
  | XK_Clear
  | XK_Return                          (* Return, enter *)
  | XK_Pause                           (* Pause, hold *)
  | XK_Scroll_Lock
  | XK_Sys_Req
  | XK_Escape
  | XK_Delete                          (* Delete, rubout *)

(* International & multi-key character composition *)

  | XK_Multi_key                       (* Multi-key character compose *)
  | XK_Codeinput
  | XK_SingleCandidate
  | XK_MultipleCandidate
  | XK_PreviousCandidate

(* Japanese keyboard support *)

  | XK_Kanji                           (* Kanji, Kanji convert *)
  | XK_Muhenkan                        (* Cancel Conversion *)
  | XK_Henkan_Mode                     (* Start/Stop Conversion *)
  | XK_Henkan                          (* Alias for Henkan_Mode *)
  | XK_Romaji                          (* to Romaji *)
  | XK_Hiragana                        (* to Hiragana *)
  | XK_Katakana                        (* to Katakana *)
  | XK_Hiragana_Katakana               (* Hiragana/Katakana toggle *)
  | XK_Zenkaku                         (* to Zenkaku *)
  | XK_Hankaku                         (* to Hankaku *)
  | XK_Zenkaku_Hankaku                 (* Zenkaku/Hankaku toggle *)
  | XK_Touroku                         (* Add to Dictionary *)
  | XK_Massyo                          (* Delete from Dictionary *)
  | XK_Kana_Lock                       (* Kana Lock *)
  | XK_Kana_Shift                      (* Kana Shift *)
  | XK_Eisu_Shift                      (* Alphanumeric Shift *)
  | XK_Eisu_toggle                     (* Alphanumeric toggle *)
  | XK_Kanji_Bangou                    (* Codeinput *)
  | XK_Zen_Koho                        (* Multiple/All Candidate(s) *)
  | XK_Mae_Koho                        (* Previous Candidate *)

(*  thru  are under XK_KOREAN *)

(* Cursor control & motion *)

  | XK_Home
  | XK_Left                            (* Move left, left arrow *)
  | XK_Up                              (* Move up, up arrow *)
  | XK_Right                           (* Move right, right arrow *)
  | XK_Down                            (* Move down, down arrow *)
  | XK_Prior                           (* Prior, previous *)
  | XK_Page_Up
  | XK_Next                            (* Next *)
  | XK_Page_Down
  | XK_End                             (* EOL *)
  | XK_Begin                           (* BOL *)


(* Misc functions *)

  | XK_Select                          (* Select, mark *)
  | XK_Print
  | XK_Execute                         (* Execute, run, do *)
  | XK_Insert                          (* Insert, insert here *)
  | XK_Undo
  | XK_Redo                            (* Redo, again *)
  | XK_Menu
  | XK_Find                            (* Find, search *)
  | XK_Cancel                          (* Cancel, stop, abort, exit *)
  | XK_Help                            (* Help *)
  | XK_Break
  | XK_Mode_switch                     (* Character set switch *)
  | XK_script_switch                   (* Alias for mode_switch *)
  | XK_Num_Lock

(* Keypad functions, keypad numbers cleverly chosen to map to ASCII *)

  | XK_KP_Space                        (* Space *)
  | XK_KP_Tab
  | XK_KP_Enter                        (* Enter *)
  | XK_KP_F1                           (* PF1, KP_A, ... *)
  | XK_KP_F2
  | XK_KP_F3
  | XK_KP_F4
  | XK_KP_Home
  | XK_KP_Left
  | XK_KP_Up
  | XK_KP_Right
  | XK_KP_Down
  | XK_KP_Prior
  | XK_KP_Page_Up
  | XK_KP_Next
  | XK_KP_Page_Down
  | XK_KP_End
  | XK_KP_Begin
  | XK_KP_Insert
  | XK_KP_Delete
  | XK_KP_Equal                        (* Equals *)
  | XK_KP_Multiply
  | XK_KP_Add
  | XK_KP_Separator                    (* Separator, often comma *)
  | XK_KP_Subtract
  | XK_KP_Decimal
  | XK_KP_Divide

  | XK_KP_0
  | XK_KP_1
  | XK_KP_2
  | XK_KP_3
  | XK_KP_4
  | XK_KP_5
  | XK_KP_6
  | XK_KP_7
  | XK_KP_8
  | XK_KP_9



(*
 * Auxiliary functions; note the duplicate definitions for left and right
 * function keys;  Sun keyboards and a few other manufacturers have such
 * function key groups on the left and/or right sides of the keyboard.
 * We've not found a keyboard with more than 35 function keys total.
 *)

  | XK_F1
  | XK_F2
  | XK_F3
  | XK_F4
  | XK_F5
  | XK_F6
  | XK_F7
  | XK_F8
  | XK_F9
  | XK_F10
  | XK_F11
  | XK_L1
  | XK_F12
  | XK_L2
  | XK_F13
  | XK_L3
  | XK_F14
  | XK_L4
  | XK_F15
  | XK_L5
  | XK_F16
  | XK_L6
  | XK_F17
  | XK_L7
  | XK_F18
  | XK_L8
  | XK_F19
  | XK_L9
  | XK_F20
  | XK_L10
  | XK_F21
  | XK_R1
  | XK_F22
  | XK_R2
  | XK_F23
  | XK_R3
  | XK_F24
  | XK_R4
  | XK_F25
  | XK_R5
  | XK_F26
  | XK_R6
  | XK_F27
  | XK_R7
  | XK_F28
  | XK_R8
  | XK_F29
  | XK_R9
  | XK_F30
  | XK_R10
  | XK_F31
  | XK_R11
  | XK_F32
  | XK_R12
  | XK_F33
  | XK_R13
  | XK_F34
  | XK_R14
  | XK_F35
  | XK_R15

(* Modifiers *)

  | XK_Shift_L                         (* Left shift *)
  | XK_Shift_R                         (* Right shift *)
  | XK_Control_L                       (* Left control *)
  | XK_Control_R                       (* Right control *)
  | XK_Caps_Lock                       (* Caps lock *)
  | XK_Shift_Lock                      (* Shift lock *)

  | XK_Meta_L                          (* Left meta *)
  | XK_Meta_R                          (* Right meta *)
  | XK_Alt_L                           (* Left alt *)
  | XK_Alt_R                           (* Right alt *)
  | XK_Super_L                         (* Left super *)
  | XK_Super_R                         (* Right super *)
  | XK_Hyper_L                         (* Left hyper *)
  | XK_Hyper_R                         (* Right hyper *)

(*
 * Keyboard (XKB) Extension function and modifier keys
 * (from Appendix C of "The X Keyboard Extension: Protocol Specification")
 * Byte 3 =
 *)

  | XK_ISO_Lock
  | XK_ISO_Level2_Latch
  | XK_ISO_Level3_Shift
  | XK_ISO_Level3_Latch
  | XK_ISO_Level3_Lock
  | XK_ISO_Level5_Shift
  | XK_ISO_Level5_Latch
  | XK_ISO_Level5_Lock
  | XK_ISO_Group_Shift                 (* Alias for mode_switch *)
  | XK_ISO_Group_Latch
  | XK_ISO_Group_Lock
  | XK_ISO_Next_Group
  | XK_ISO_Next_Group_Lock
  | XK_ISO_Prev_Group
  | XK_ISO_Prev_Group_Lock
  | XK_ISO_First_Group
  | XK_ISO_First_Group_Lock
  | XK_ISO_Last_Group
  | XK_ISO_Last_Group_Lock

  | XK_ISO_Left_Tab
  | XK_ISO_Move_Line_Up
  | XK_ISO_Move_Line_Down
  | XK_ISO_Partial_Line_Up
  | XK_ISO_Partial_Line_Down
  | XK_ISO_Partial_Space_Left
  | XK_ISO_Partial_Space_Right
  | XK_ISO_Set_Margin_Left
  | XK_ISO_Set_Margin_Right
  | XK_ISO_Release_Margin_Left
  | XK_ISO_Release_Margin_Right
  | XK_ISO_Release_Both_Margins
  | XK_ISO_Fast_Cursor_Left
  | XK_ISO_Fast_Cursor_Right
  | XK_ISO_Fast_Cursor_Up
  | XK_ISO_Fast_Cursor_Down
  | XK_ISO_Continuous_Underline
  | XK_ISO_Discontinuous_Underline
  | XK_ISO_Emphasize
  | XK_ISO_Center_Object
  | XK_ISO_Enter

  | XK_dead_grave
  | XK_dead_acute
  | XK_dead_circumflex
  | XK_dead_tilde
  | XK_dead_perispomeni                (* alias for dead_tilde *)
  | XK_dead_macron
  | XK_dead_breve
  | XK_dead_abovedot
  | XK_dead_diaeresis
  | XK_dead_abovering
  | XK_dead_doubleacute
  | XK_dead_caron
  | XK_dead_cedilla
  | XK_dead_ogonek
  | XK_dead_iota
  | XK_dead_voiced_sound
  | XK_dead_semivoiced_sound
  | XK_dead_belowdot
  | XK_dead_hook
  | XK_dead_horn
  | XK_dead_stroke
  | XK_dead_abovecomma
  | XK_dead_psili                      (* alias for dead_abovecomma *)
  | XK_dead_abovereversedcomma
  | XK_dead_dasia                      (* alias for dead_abovereversedcomma *)
  | XK_dead_doublegrave
  | XK_dead_belowring
  | XK_dead_belowmacron
  | XK_dead_belowcircumflex
  | XK_dead_belowtilde
  | XK_dead_belowbreve
  | XK_dead_belowdiaeresis
  | XK_dead_invertedbreve
  | XK_dead_belowcomma
  | XK_dead_currency

(* extra dead elements for German T3 layout *)
  | XK_dead_lowline
  | XK_dead_aboveverticalline
  | XK_dead_belowverticalline
  | XK_dead_longsolidusoverlay

(* dead vowels for universal syllable entry *)
  | XK_dead_a
  | XK_dead_A
  | XK_dead_e
  | XK_dead_E
  | XK_dead_i
  | XK_dead_I
  | XK_dead_o
  | XK_dead_O
  | XK_dead_u
  | XK_dead_U
  | XK_dead_small_schwa
  | XK_dead_capital_schwa

  | XK_dead_greek

  | XK_First_Virtual_Screen
  | XK_Prev_Virtual_Screen
  | XK_Next_Virtual_Screen
  | XK_Last_Virtual_Screen
  | XK_Terminate_Server

  | XK_AccessX_Enable
  | XK_AccessX_Feedback_Enable
  | XK_RepeatKeys_Enable
  | XK_SlowKeys_Enable
  | XK_BounceKeys_Enable
  | XK_StickyKeys_Enable
  | XK_MouseKeys_Enable
  | XK_MouseKeys_Accel_Enable
  | XK_Overlay1_Enable
  | XK_Overlay2_Enable
  | XK_AudibleBell_Enable

  | XK_Pointer_Left
  | XK_Pointer_Right
  | XK_Pointer_Up
  | XK_Pointer_Down
  | XK_Pointer_UpLeft
  | XK_Pointer_UpRight
  | XK_Pointer_DownLeft
  | XK_Pointer_DownRight
  | XK_Pointer_Button_Dflt
  | XK_Pointer_Button1
  | XK_Pointer_Button2
  | XK_Pointer_Button3
  | XK_Pointer_Button4
  | XK_Pointer_Button5
  | XK_Pointer_DblClick_Dflt
  | XK_Pointer_DblClick1
  | XK_Pointer_DblClick2
  | XK_Pointer_DblClick3
  | XK_Pointer_DblClick4
  | XK_Pointer_DblClick5
  | XK_Pointer_Drag_Dflt
  | XK_Pointer_Drag1
  | XK_Pointer_Drag2
  | XK_Pointer_Drag3
  | XK_Pointer_Drag4
  | XK_Pointer_Drag5

  | XK_Pointer_EnableKeys
  | XK_Pointer_Accelerate
  | XK_Pointer_DfltBtnNext
  | XK_Pointer_DfltBtnPrev

(* Single-Stroke Multiple-Character N-Graph Keysyms For The X Input Method *)

  | XK_ch
  | XK_Ch
  | XK_CH
  | XK_c_h
  | XK_C_h
  | XK_C_H


(*
 * 3270 Terminal Keys
 * Byte 3 =
 *)

  | XK_3270_Duplicate
  | XK_3270_FieldMark
  | XK_3270_Right2
  | XK_3270_Left2
  | XK_3270_BackTab
  | XK_3270_EraseEOF
  | XK_3270_EraseInput
  | XK_3270_Reset
  | XK_3270_Quit
  | XK_3270_PA1
  | XK_3270_PA2
  | XK_3270_PA3
  | XK_3270_Test
  | XK_3270_Attn
  | XK_3270_CursorBlink
  | XK_3270_AltCursor
  | XK_3270_KeyClick
  | XK_3270_Jump
  | XK_3270_Ident
  | XK_3270_Rule
  | XK_3270_Copy
  | XK_3270_Play
  | XK_3270_Setup
  | XK_3270_Record
  | XK_3270_ChangeScreen
  | XK_3270_DeleteWord
  | XK_3270_ExSelect
  | XK_3270_CursorSelect
  | XK_3270_PrintScreen
  | XK_3270_Enter

(*
 * Latin 1
 * (ISO/IEC 8859-1 = Unicode U+0020..U+00FF)
 * Byte 3 = 0
 *)
  | XK_space                           (* U+0020 SPACE *)
  | XK_exclam                          (* U+0021 EXCLAMATION MARK *)
  | XK_quotedbl                        (* U+0022 QUOTATION MARK *)
  | XK_numbersign                      (* U+0023 NUMBER SIGN *)
  | XK_dollar                          (* U+0024 DOLLAR SIGN *)
  | XK_percent                         (* U+0025 PERCENT SIGN *)
  | XK_ampersand                       (* U+0026 AMPERSAND *)
  | XK_apostrophe                      (* U+0027 APOSTROPHE *)
  | XK_quoteright                      (* deprecated *)
  | XK_parenleft                       (* U+0028 LEFT PARENTHESIS *)
  | XK_parenright                      (* U+0029 RIGHT PARENTHESIS *)
  | XK_asterisk                        (* U+002A ASTERISK *)
  | XK_plus                            (* U+002B PLUS SIGN *)
  | XK_comma                           (* U+002C COMMA *)
  | XK_minus                           (* U+002D HYPHEN-MINUS *)
  | XK_period                          (* U+002E FULL STOP *)
  | XK_slash                           (* U+002F SOLIDUS *)
  | XK_0                               (* U+0030 DIGIT ZERO *)
  | XK_1                               (* U+0031 DIGIT ONE *)
  | XK_2                               (* U+0032 DIGIT TWO *)
  | XK_3                               (* U+0033 DIGIT THREE *)
  | XK_4                               (* U+0034 DIGIT FOUR *)
  | XK_5                               (* U+0035 DIGIT FIVE *)
  | XK_6                               (* U+0036 DIGIT SIX *)
  | XK_7                               (* U+0037 DIGIT SEVEN *)
  | XK_8                               (* U+0038 DIGIT EIGHT *)
  | XK_9                               (* U+0039 DIGIT NINE *)
  | XK_colon                           (* U+003A COLON *)
  | XK_semicolon                       (* U+003B SEMICOLON *)
  | XK_less                            (* U+003C LESS-THAN SIGN *)
  | XK_equal                           (* U+003D EQUALS SIGN *)
  | XK_greater                         (* U+003E GREATER-THAN SIGN *)
  | XK_question                        (* U+003F QUESTION MARK *)
  | XK_at                              (* U+0040 COMMERCIAL AT *)
  | XK_A                               (* U+0041 LATIN CAPITAL LETTER A *)
  | XK_B                               (* U+0042 LATIN CAPITAL LETTER B *)
  | XK_C                               (* U+0043 LATIN CAPITAL LETTER C *)
  | XK_D                               (* U+0044 LATIN CAPITAL LETTER D *)
  | XK_E                               (* U+0045 LATIN CAPITAL LETTER E *)
  | XK_F                               (* U+0046 LATIN CAPITAL LETTER F *)
  | XK_G                               (* U+0047 LATIN CAPITAL LETTER G *)
  | XK_H                               (* U+0048 LATIN CAPITAL LETTER H *)
  | XK_I                               (* U+0049 LATIN CAPITAL LETTER I *)
  | XK_J                               (* U+004A LATIN CAPITAL LETTER J *)
  | XK_K                               (* U+004B LATIN CAPITAL LETTER K *)
  | XK_L                               (* U+004C LATIN CAPITAL LETTER L *)
  | XK_M                               (* U+004D LATIN CAPITAL LETTER M *)
  | XK_N                               (* U+004E LATIN CAPITAL LETTER N *)
  | XK_O                               (* U+004F LATIN CAPITAL LETTER O *)
  | XK_P                               (* U+0050 LATIN CAPITAL LETTER P *)
  | XK_Q                               (* U+0051 LATIN CAPITAL LETTER Q *)
  | XK_R                               (* U+0052 LATIN CAPITAL LETTER R *)
  | XK_S                               (* U+0053 LATIN CAPITAL LETTER S *)
  | XK_T                               (* U+0054 LATIN CAPITAL LETTER T *)
  | XK_U                               (* U+0055 LATIN CAPITAL LETTER U *)
  | XK_V                               (* U+0056 LATIN CAPITAL LETTER V *)
  | XK_W                               (* U+0057 LATIN CAPITAL LETTER W *)
  | XK_X                               (* U+0058 LATIN CAPITAL LETTER X *)
  | XK_Y                               (* U+0059 LATIN CAPITAL LETTER Y *)
  | XK_Z                               (* U+005A LATIN CAPITAL LETTER Z *)
  | XK_bracketleft                     (* U+005B LEFT SQUARE BRACKET *)
  | XK_backslash                       (* U+005C REVERSE SOLIDUS *)
  | XK_bracketright                    (* U+005D RIGHT SQUARE BRACKET *)
  | XK_asciicircum                     (* U+005E CIRCUMFLEX ACCENT *)
  | XK_underscore                      (* U+005F LOW LINE *)
  | XK_grave                           (* U+0060 GRAVE ACCENT *)
  | XK_quoteleft                       (* deprecated *)
  | XK_a                               (* U+0061 LATIN SMALL LETTER A *)
  | XK_b                               (* U+0062 LATIN SMALL LETTER B *)
  | XK_c                               (* U+0063 LATIN SMALL LETTER C *)
  | XK_d                               (* U+0064 LATIN SMALL LETTER D *)
  | XK_e                               (* U+0065 LATIN SMALL LETTER E *)
  | XK_f                               (* U+0066 LATIN SMALL LETTER F *)
  | XK_g                               (* U+0067 LATIN SMALL LETTER G *)
  | XK_h                               (* U+0068 LATIN SMALL LETTER H *)
  | XK_i                               (* U+0069 LATIN SMALL LETTER I *)
  | XK_j                               (* U+006A LATIN SMALL LETTER J *)
  | XK_k                               (* U+006B LATIN SMALL LETTER K *)
  | XK_l                               (* U+006C LATIN SMALL LETTER L *)
  | XK_m                               (* U+006D LATIN SMALL LETTER M *)
  | XK_n                               (* U+006E LATIN SMALL LETTER N *)
  | XK_o                               (* U+006F LATIN SMALL LETTER O *)
  | XK_p                               (* U+0070 LATIN SMALL LETTER P *)
  | XK_q                               (* U+0071 LATIN SMALL LETTER Q *)
  | XK_r                               (* U+0072 LATIN SMALL LETTER R *)
  | XK_s                               (* U+0073 LATIN SMALL LETTER S *)
  | XK_t                               (* U+0074 LATIN SMALL LETTER T *)
  | XK_u                               (* U+0075 LATIN SMALL LETTER U *)
  | XK_v                               (* U+0076 LATIN SMALL LETTER V *)
  | XK_w                               (* U+0077 LATIN SMALL LETTER W *)
  | XK_x                               (* U+0078 LATIN SMALL LETTER X *)
  | XK_y                               (* U+0079 LATIN SMALL LETTER Y *)
  | XK_z                               (* U+007A LATIN SMALL LETTER Z *)
  | XK_braceleft                       (* U+007B LEFT CURLY BRACKET *)
  | XK_bar                             (* U+007C VERTICAL LINE *)
  | XK_braceright                      (* U+007D RIGHT CURLY BRACKET *)
  | XK_asciitilde                      (* U+007E TILDE *)

  | XK_nobreakspace                    (* U+00A0 NO-BREAK SPACE *)
  | XK_exclamdown                      (* U+00A1 INVERTED EXCLAMATION MARK *)
  | XK_cent                            (* U+00A2 CENT SIGN *)
  | XK_sterling                        (* U+00A3 POUND SIGN *)
  | XK_currency                        (* U+00A4 CURRENCY SIGN *)
  | XK_yen                             (* U+00A5 YEN SIGN *)
  | XK_brokenbar                       (* U+00A6 BROKEN BAR *)
  | XK_section                         (* U+00A7 SECTION SIGN *)
  | XK_diaeresis                       (* U+00A8 DIAERESIS *)
  | XK_copyright                       (* U+00A9 COPYRIGHT SIGN *)
  | XK_ordfeminine                     (* U+00AA FEMININE ORDINAL INDICATOR *)
  | XK_guillemotleft                   (* U+00AB LEFT-POINTING DOUBLE ANGLE QUOTATION MARK *)
  | XK_notsign                         (* U+00AC NOT SIGN *)
  | XK_hyphen                          (* U+00AD SOFT HYPHEN *)
  | XK_registered                      (* U+00AE REGISTERED SIGN *)
  | XK_macron                          (* U+00AF MACRON *)
  | XK_degree                          (* U+00B0 DEGREE SIGN *)
  | XK_plusminus                       (* U+00B1 PLUS-MINUS SIGN *)
  | XK_twosuperior                     (* U+00B2 SUPERSCRIPT TWO *)
  | XK_threesuperior                   (* U+00B3 SUPERSCRIPT THREE *)
  | XK_acute                           (* U+00B4 ACUTE ACCENT *)
  | XK_mu                              (* U+00B5 MICRO SIGN *)
  | XK_paragraph                       (* U+00B6 PILCROW SIGN *)
  | XK_periodcentered                  (* U+00B7 MIDDLE DOT *)
  | XK_cedilla                         (* U+00B8 CEDILLA *)
  | XK_onesuperior                     (* U+00B9 SUPERSCRIPT ONE *)
  | XK_masculine                       (* U+00BA MASCULINE ORDINAL INDICATOR *)
  | XK_guillemotright                  (* U+00BB RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK *)
  | XK_onequarter                      (* U+00BC VULGAR FRACTION ONE QUARTER *)
  | XK_onehalf                         (* U+00BD VULGAR FRACTION ONE HALF *)
  | XK_threequarters                   (* U+00BE VULGAR FRACTION THREE QUARTERS *)
  | XK_questiondown                    (* U+00BF INVERTED QUESTION MARK *)
  | XK_Agrave                          (* U+00C0 LATIN CAPITAL LETTER A WITH GRAVE *)
  | XK_Aacute                          (* U+00C1 LATIN CAPITAL LETTER A WITH ACUTE *)
  | XK_Acircumflex                     (* U+00C2 LATIN CAPITAL LETTER A WITH CIRCUMFLEX *)
  | XK_Atilde                          (* U+00C3 LATIN CAPITAL LETTER A WITH TILDE *)
  | XK_Adiaeresis                      (* U+00C4 LATIN CAPITAL LETTER A WITH DIAERESIS *)
  | XK_Aring                           (* U+00C5 LATIN CAPITAL LETTER A WITH RING ABOVE *)
  | XK_AE                              (* U+00C6 LATIN CAPITAL LETTER AE *)
  | XK_Ccedilla                        (* U+00C7 LATIN CAPITAL LETTER C WITH CEDILLA *)
  | XK_Egrave                          (* U+00C8 LATIN CAPITAL LETTER E WITH GRAVE *)
  | XK_Eacute                          (* U+00C9 LATIN CAPITAL LETTER E WITH ACUTE *)
  | XK_Ecircumflex                     (* U+00CA LATIN CAPITAL LETTER E WITH CIRCUMFLEX *)
  | XK_Ediaeresis                      (* U+00CB LATIN CAPITAL LETTER E WITH DIAERESIS *)
  | XK_Igrave                          (* U+00CC LATIN CAPITAL LETTER I WITH GRAVE *)
  | XK_Iacute                          (* U+00CD LATIN CAPITAL LETTER I WITH ACUTE *)
  | XK_Icircumflex                     (* U+00CE LATIN CAPITAL LETTER I WITH CIRCUMFLEX *)
  | XK_Idiaeresis                      (* U+00CF LATIN CAPITAL LETTER I WITH DIAERESIS *)
  | XK_ETH                             (* U+00D0 LATIN CAPITAL LETTER ETH *)
  | XK_Eth                             (* deprecated *)
  | XK_Ntilde                          (* U+00D1 LATIN CAPITAL LETTER N WITH TILDE *)
  | XK_Ograve                          (* U+00D2 LATIN CAPITAL LETTER O WITH GRAVE *)
  | XK_Oacute                          (* U+00D3 LATIN CAPITAL LETTER O WITH ACUTE *)
  | XK_Ocircumflex                     (* U+00D4 LATIN CAPITAL LETTER O WITH CIRCUMFLEX *)
  | XK_Otilde                          (* U+00D5 LATIN CAPITAL LETTER O WITH TILDE *)
  | XK_Odiaeresis                      (* U+00D6 LATIN CAPITAL LETTER O WITH DIAERESIS *)
  | XK_multiply                        (* U+00D7 MULTIPLICATION SIGN *)
  | XK_Oslash                          (* U+00D8 LATIN CAPITAL LETTER O WITH STROKE *)
  | XK_Ooblique                        (* U+00D8 LATIN CAPITAL LETTER O WITH STROKE *)
  | XK_Ugrave                          (* U+00D9 LATIN CAPITAL LETTER U WITH GRAVE *)
  | XK_Uacute                          (* U+00DA LATIN CAPITAL LETTER U WITH ACUTE *)
  | XK_Ucircumflex                     (* U+00DB LATIN CAPITAL LETTER U WITH CIRCUMFLEX *)
  | XK_Udiaeresis                      (* U+00DC LATIN CAPITAL LETTER U WITH DIAERESIS *)
  | XK_Yacute                          (* U+00DD LATIN CAPITAL LETTER Y WITH ACUTE *)
  | XK_THORN                           (* U+00DE LATIN CAPITAL LETTER THORN *)
  | XK_Thorn                           (* deprecated *)
  | XK_ssharp                          (* U+00DF LATIN SMALL LETTER SHARP S *)
  | XK_agrave                          (* U+00E0 LATIN SMALL LETTER A WITH GRAVE *)
  | XK_aacute                          (* U+00E1 LATIN SMALL LETTER A WITH ACUTE *)
  | XK_acircumflex                     (* U+00E2 LATIN SMALL LETTER A WITH CIRCUMFLEX *)
  | XK_atilde                          (* U+00E3 LATIN SMALL LETTER A WITH TILDE *)
  | XK_adiaeresis                      (* U+00E4 LATIN SMALL LETTER A WITH DIAERESIS *)
  | XK_aring                           (* U+00E5 LATIN SMALL LETTER A WITH RING ABOVE *)
  | XK_ae                              (* U+00E6 LATIN SMALL LETTER AE *)
  | XK_ccedilla                        (* U+00E7 LATIN SMALL LETTER C WITH CEDILLA *)
  | XK_egrave                          (* U+00E8 LATIN SMALL LETTER E WITH GRAVE *)
  | XK_eacute                          (* U+00E9 LATIN SMALL LETTER E WITH ACUTE *)
  | XK_ecircumflex                     (* U+00EA LATIN SMALL LETTER E WITH CIRCUMFLEX *)
  | XK_ediaeresis                      (* U+00EB LATIN SMALL LETTER E WITH DIAERESIS *)
  | XK_igrave                          (* U+00EC LATIN SMALL LETTER I WITH GRAVE *)
  | XK_iacute                          (* U+00ED LATIN SMALL LETTER I WITH ACUTE *)
  | XK_icircumflex                     (* U+00EE LATIN SMALL LETTER I WITH CIRCUMFLEX *)
  | XK_idiaeresis                      (* U+00EF LATIN SMALL LETTER I WITH DIAERESIS *)
  | XK_eth                             (* U+00F0 LATIN SMALL LETTER ETH *)
  | XK_ntilde                          (* U+00F1 LATIN SMALL LETTER N WITH TILDE *)
  | XK_ograve                          (* U+00F2 LATIN SMALL LETTER O WITH GRAVE *)
  | XK_oacute                          (* U+00F3 LATIN SMALL LETTER O WITH ACUTE *)
  | XK_ocircumflex                     (* U+00F4 LATIN SMALL LETTER O WITH CIRCUMFLEX *)
  | XK_otilde                          (* U+00F5 LATIN SMALL LETTER O WITH TILDE *)
  | XK_odiaeresis                      (* U+00F6 LATIN SMALL LETTER O WITH DIAERESIS *)
  | XK_division                        (* U+00F7 DIVISION SIGN *)
  | XK_oslash                          (* U+00F8 LATIN SMALL LETTER O WITH STROKE *)
  | XK_ooblique                        (* U+00F8 LATIN SMALL LETTER O WITH STROKE *)
  | XK_ugrave                          (* U+00F9 LATIN SMALL LETTER U WITH GRAVE *)
  | XK_uacute                          (* U+00FA LATIN SMALL LETTER U WITH ACUTE *)
  | XK_ucircumflex                     (* U+00FB LATIN SMALL LETTER U WITH CIRCUMFLEX *)
  | XK_udiaeresis                      (* U+00FC LATIN SMALL LETTER U WITH DIAERESIS *)
  | XK_yacute                          (* U+00FD LATIN SMALL LETTER Y WITH ACUTE *)
  | XK_thorn                           (* U+00FE LATIN SMALL LETTER THORN *)
  | XK_ydiaeresis                      (* U+00FF LATIN SMALL LETTER Y WITH DIAERESIS *)

(*
 * Latin 2
 * Byte 3 = 1
 *)

  | XK_Aogonek                         (* U+0104 LATIN CAPITAL LETTER A WITH OGONEK *)
  | XK_breve                           (* U+02D8 BREVE *)
  | XK_Lstroke                         (* U+0141 LATIN CAPITAL LETTER L WITH STROKE *)
  | XK_Lcaron                          (* U+013D LATIN CAPITAL LETTER L WITH CARON *)
  | XK_Sacute                          (* U+015A LATIN CAPITAL LETTER S WITH ACUTE *)
  | XK_Scaron                          (* U+0160 LATIN CAPITAL LETTER S WITH CARON *)
  | XK_Scedilla                        (* U+015E LATIN CAPITAL LETTER S WITH CEDILLA *)
  | XK_Tcaron                          (* U+0164 LATIN CAPITAL LETTER T WITH CARON *)
  | XK_Zacute                          (* U+0179 LATIN CAPITAL LETTER Z WITH ACUTE *)
  | XK_Zcaron                          (* U+017D LATIN CAPITAL LETTER Z WITH CARON *)
  | XK_Zabovedot                       (* U+017B LATIN CAPITAL LETTER Z WITH DOT ABOVE *)
  | XK_aogonek                         (* U+0105 LATIN SMALL LETTER A WITH OGONEK *)
  | XK_ogonek                          (* U+02DB OGONEK *)
  | XK_lstroke                         (* U+0142 LATIN SMALL LETTER L WITH STROKE *)
  | XK_lcaron                          (* U+013E LATIN SMALL LETTER L WITH CARON *)
  | XK_sacute                          (* U+015B LATIN SMALL LETTER S WITH ACUTE *)
  | XK_caron                           (* U+02C7 CARON *)
  | XK_scaron                          (* U+0161 LATIN SMALL LETTER S WITH CARON *)
  | XK_scedilla                        (* U+015F LATIN SMALL LETTER S WITH CEDILLA *)
  | XK_tcaron                          (* U+0165 LATIN SMALL LETTER T WITH CARON *)
  | XK_zacute                          (* U+017A LATIN SMALL LETTER Z WITH ACUTE *)
  | XK_doubleacute                     (* U+02DD DOUBLE ACUTE ACCENT *)
  | XK_zcaron                          (* U+017E LATIN SMALL LETTER Z WITH CARON *)
  | XK_zabovedot                       (* U+017C LATIN SMALL LETTER Z WITH DOT ABOVE *)
  | XK_Racute                          (* U+0154 LATIN CAPITAL LETTER R WITH ACUTE *)
  | XK_Abreve                          (* U+0102 LATIN CAPITAL LETTER A WITH BREVE *)
  | XK_Lacute                          (* U+0139 LATIN CAPITAL LETTER L WITH ACUTE *)
  | XK_Cacute                          (* U+0106 LATIN CAPITAL LETTER C WITH ACUTE *)
  | XK_Ccaron                          (* U+010C LATIN CAPITAL LETTER C WITH CARON *)
  | XK_Eogonek                         (* U+0118 LATIN CAPITAL LETTER E WITH OGONEK *)
  | XK_Ecaron                          (* U+011A LATIN CAPITAL LETTER E WITH CARON *)
  | XK_Dcaron                          (* U+010E LATIN CAPITAL LETTER D WITH CARON *)
  | XK_Dstroke                         (* U+0110 LATIN CAPITAL LETTER D WITH STROKE *)
  | XK_Nacute                          (* U+0143 LATIN CAPITAL LETTER N WITH ACUTE *)
  | XK_Ncaron                          (* U+0147 LATIN CAPITAL LETTER N WITH CARON *)
  | XK_Odoubleacute                    (* U+0150 LATIN CAPITAL LETTER O WITH DOUBLE ACUTE *)
  | XK_Rcaron                          (* U+0158 LATIN CAPITAL LETTER R WITH CARON *)
  | XK_Uring                           (* U+016E LATIN CAPITAL LETTER U WITH RING ABOVE *)
  | XK_Udoubleacute                    (* U+0170 LATIN CAPITAL LETTER U WITH DOUBLE ACUTE *)
  | XK_Tcedilla                        (* U+0162 LATIN CAPITAL LETTER T WITH CEDILLA *)
  | XK_racute                          (* U+0155 LATIN SMALL LETTER R WITH ACUTE *)
  | XK_abreve                          (* U+0103 LATIN SMALL LETTER A WITH BREVE *)
  | XK_lacute                          (* U+013A LATIN SMALL LETTER L WITH ACUTE *)
  | XK_cacute                          (* U+0107 LATIN SMALL LETTER C WITH ACUTE *)
  | XK_ccaron                          (* U+010D LATIN SMALL LETTER C WITH CARON *)
  | XK_eogonek                         (* U+0119 LATIN SMALL LETTER E WITH OGONEK *)
  | XK_ecaron                          (* U+011B LATIN SMALL LETTER E WITH CARON *)
  | XK_dcaron                          (* U+010F LATIN SMALL LETTER D WITH CARON *)
  | XK_dstroke                         (* U+0111 LATIN SMALL LETTER D WITH STROKE *)
  | XK_nacute                          (* U+0144 LATIN SMALL LETTER N WITH ACUTE *)
  | XK_ncaron                          (* U+0148 LATIN SMALL LETTER N WITH CARON *)
  | XK_odoubleacute                    (* U+0151 LATIN SMALL LETTER O WITH DOUBLE ACUTE *)
  | XK_rcaron                          (* U+0159 LATIN SMALL LETTER R WITH CARON *)
  | XK_uring                           (* U+016F LATIN SMALL LETTER U WITH RING ABOVE *)
  | XK_udoubleacute                    (* U+0171 LATIN SMALL LETTER U WITH DOUBLE ACUTE *)
  | XK_tcedilla                        (* U+0163 LATIN SMALL LETTER T WITH CEDILLA *)
  | XK_abovedot                        (* U+02D9 DOT ABOVE *)

(*
 * Latin 3
 * Byte 3 = 2
 *)

  | XK_Hstroke                         (* U+0126 LATIN CAPITAL LETTER H WITH STROKE *)
  | XK_Hcircumflex                     (* U+0124 LATIN CAPITAL LETTER H WITH CIRCUMFLEX *)
  | XK_Iabovedot                       (* U+0130 LATIN CAPITAL LETTER I WITH DOT ABOVE *)
  | XK_Gbreve                          (* U+011E LATIN CAPITAL LETTER G WITH BREVE *)
  | XK_Jcircumflex                     (* U+0134 LATIN CAPITAL LETTER J WITH CIRCUMFLEX *)
  | XK_hstroke                         (* U+0127 LATIN SMALL LETTER H WITH STROKE *)
  | XK_hcircumflex                     (* U+0125 LATIN SMALL LETTER H WITH CIRCUMFLEX *)
  | XK_idotless                        (* U+0131 LATIN SMALL LETTER DOTLESS I *)
  | XK_gbreve                          (* U+011F LATIN SMALL LETTER G WITH BREVE *)
  | XK_jcircumflex                     (* U+0135 LATIN SMALL LETTER J WITH CIRCUMFLEX *)
  | XK_Cabovedot                       (* U+010A LATIN CAPITAL LETTER C WITH DOT ABOVE *)
  | XK_Ccircumflex                     (* U+0108 LATIN CAPITAL LETTER C WITH CIRCUMFLEX *)
  | XK_Gabovedot                       (* U+0120 LATIN CAPITAL LETTER G WITH DOT ABOVE *)
  | XK_Gcircumflex                     (* U+011C LATIN CAPITAL LETTER G WITH CIRCUMFLEX *)
  | XK_Ubreve                          (* U+016C LATIN CAPITAL LETTER U WITH BREVE *)
  | XK_Scircumflex                     (* U+015C LATIN CAPITAL LETTER S WITH CIRCUMFLEX *)
  | XK_cabovedot                       (* U+010B LATIN SMALL LETTER C WITH DOT ABOVE *)
  | XK_ccircumflex                     (* U+0109 LATIN SMALL LETTER C WITH CIRCUMFLEX *)
  | XK_gabovedot                       (* U+0121 LATIN SMALL LETTER G WITH DOT ABOVE *)
  | XK_gcircumflex                     (* U+011D LATIN SMALL LETTER G WITH CIRCUMFLEX *)
  | XK_ubreve                          (* U+016D LATIN SMALL LETTER U WITH BREVE *)
  | XK_scircumflex                     (* U+015D LATIN SMALL LETTER S WITH CIRCUMFLEX *)


(*
 * Latin 4
 * Byte 3 = 3
 *)

  | XK_kra                             (* U+0138 LATIN SMALL LETTER KRA *)
  | XK_kappa                           (* deprecated *)
  | XK_Rcedilla                        (* U+0156 LATIN CAPITAL LETTER R WITH CEDILLA *)
  | XK_Itilde                          (* U+0128 LATIN CAPITAL LETTER I WITH TILDE *)
  | XK_Lcedilla                        (* U+013B LATIN CAPITAL LETTER L WITH CEDILLA *)
  | XK_Emacron                         (* U+0112 LATIN CAPITAL LETTER E WITH MACRON *)
  | XK_Gcedilla                        (* U+0122 LATIN CAPITAL LETTER G WITH CEDILLA *)
  | XK_Tslash                          (* U+0166 LATIN CAPITAL LETTER T WITH STROKE *)
  | XK_rcedilla                        (* U+0157 LATIN SMALL LETTER R WITH CEDILLA *)
  | XK_itilde                          (* U+0129 LATIN SMALL LETTER I WITH TILDE *)
  | XK_lcedilla                        (* U+013C LATIN SMALL LETTER L WITH CEDILLA *)
  | XK_emacron                         (* U+0113 LATIN SMALL LETTER E WITH MACRON *)
  | XK_gcedilla                        (* U+0123 LATIN SMALL LETTER G WITH CEDILLA *)
  | XK_tslash                          (* U+0167 LATIN SMALL LETTER T WITH STROKE *)
  | XK_ENG                             (* U+014A LATIN CAPITAL LETTER ENG *)
  | XK_eng                             (* U+014B LATIN SMALL LETTER ENG *)
  | XK_Amacron                         (* U+0100 LATIN CAPITAL LETTER A WITH MACRON *)
  | XK_Iogonek                         (* U+012E LATIN CAPITAL LETTER I WITH OGONEK *)
  | XK_Eabovedot                       (* U+0116 LATIN CAPITAL LETTER E WITH DOT ABOVE *)
  | XK_Imacron                         (* U+012A LATIN CAPITAL LETTER I WITH MACRON *)
  | XK_Ncedilla                        (* U+0145 LATIN CAPITAL LETTER N WITH CEDILLA *)
  | XK_Omacron                         (* U+014C LATIN CAPITAL LETTER O WITH MACRON *)
  | XK_Kcedilla                        (* U+0136 LATIN CAPITAL LETTER K WITH CEDILLA *)
  | XK_Uogonek                         (* U+0172 LATIN CAPITAL LETTER U WITH OGONEK *)
  | XK_Utilde                          (* U+0168 LATIN CAPITAL LETTER U WITH TILDE *)
  | XK_Umacron                         (* U+016A LATIN CAPITAL LETTER U WITH MACRON *)
  | XK_amacron                         (* U+0101 LATIN SMALL LETTER A WITH MACRON *)
  | XK_iogonek                         (* U+012F LATIN SMALL LETTER I WITH OGONEK *)
  | XK_eabovedot                       (* U+0117 LATIN SMALL LETTER E WITH DOT ABOVE *)
  | XK_imacron                         (* U+012B LATIN SMALL LETTER I WITH MACRON *)
  | XK_ncedilla                        (* U+0146 LATIN SMALL LETTER N WITH CEDILLA *)
  | XK_omacron                         (* U+014D LATIN SMALL LETTER O WITH MACRON *)
  | XK_kcedilla                        (* U+0137 LATIN SMALL LETTER K WITH CEDILLA *)
  | XK_uogonek                         (* U+0173 LATIN SMALL LETTER U WITH OGONEK *)
  | XK_utilde                          (* U+0169 LATIN SMALL LETTER U WITH TILDE *)
  | XK_umacron                         (* U+016B LATIN SMALL LETTER U WITH MACRON *)

(*
 * Latin 8
 *)
  | XK_Wcircumflex                  (* U+0174 LATIN CAPITAL LETTER W WITH CIRCUMFLEX *)
  | XK_wcircumflex                  (* U+0175 LATIN SMALL LETTER W WITH CIRCUMFLEX *)
  | XK_Ycircumflex                  (* U+0176 LATIN CAPITAL LETTER Y WITH CIRCUMFLEX *)
  | XK_ycircumflex                  (* U+0177 LATIN SMALL LETTER Y WITH CIRCUMFLEX *)
  | XK_Babovedot                    (* U+1E02 LATIN CAPITAL LETTER B WITH DOT ABOVE *)
  | XK_babovedot                    (* U+1E03 LATIN SMALL LETTER B WITH DOT ABOVE *)
  | XK_Dabovedot                    (* U+1E0A LATIN CAPITAL LETTER D WITH DOT ABOVE *)
  | XK_dabovedot                    (* U+1E0B LATIN SMALL LETTER D WITH DOT ABOVE *)
  | XK_Fabovedot                    (* U+1E1E LATIN CAPITAL LETTER F WITH DOT ABOVE *)
  | XK_fabovedot                    (* U+1E1F LATIN SMALL LETTER F WITH DOT ABOVE *)
  | XK_Mabovedot                    (* U+1E40 LATIN CAPITAL LETTER M WITH DOT ABOVE *)
  | XK_mabovedot                    (* U+1E41 LATIN SMALL LETTER M WITH DOT ABOVE *)
  | XK_Pabovedot                    (* U+1E56 LATIN CAPITAL LETTER P WITH DOT ABOVE *)
  | XK_pabovedot                    (* U+1E57 LATIN SMALL LETTER P WITH DOT ABOVE *)
  | XK_Sabovedot                    (* U+1E60 LATIN CAPITAL LETTER S WITH DOT ABOVE *)
  | XK_sabovedot                    (* U+1E61 LATIN SMALL LETTER S WITH DOT ABOVE *)
  | XK_Tabovedot                    (* U+1E6A LATIN CAPITAL LETTER T WITH DOT ABOVE *)
  | XK_tabovedot                    (* U+1E6B LATIN SMALL LETTER T WITH DOT ABOVE *)
  | XK_Wgrave                       (* U+1E80 LATIN CAPITAL LETTER W WITH GRAVE *)
  | XK_wgrave                       (* U+1E81 LATIN SMALL LETTER W WITH GRAVE *)
  | XK_Wacute                       (* U+1E82 LATIN CAPITAL LETTER W WITH ACUTE *)
  | XK_wacute                       (* U+1E83 LATIN SMALL LETTER W WITH ACUTE *)
  | XK_Wdiaeresis                   (* U+1E84 LATIN CAPITAL LETTER W WITH DIAERESIS *)
  | XK_wdiaeresis                   (* U+1E85 LATIN SMALL LETTER W WITH DIAERESIS *)
  | XK_Ygrave                       (* U+1EF2 LATIN CAPITAL LETTER Y WITH GRAVE *)
  | XK_ygrave                       (* U+1EF3 LATIN SMALL LETTER Y WITH GRAVE *)

(*
 * Latin 9
 * Byte 3 =
 *)

  | XK_OE                              (* U+0152 LATIN CAPITAL LIGATURE OE *)
  | XK_oe                              (* U+0153 LATIN SMALL LIGATURE OE *)
  | XK_Ydiaeresis                      (* U+0178 LATIN CAPITAL LETTER Y WITH DIAERESIS *)

(*
 * Katakana
 * Byte 3 = 4
 *)

  | XK_overline                        (* U+203E OVERLINE *)
  | XK_kana_fullstop                   (* U+3002 IDEOGRAPHIC FULL STOP *)
  | XK_kana_openingbracket             (* U+300C LEFT CORNER BRACKET *)
  | XK_kana_closingbracket             (* U+300D RIGHT CORNER BRACKET *)
  | XK_kana_comma                      (* U+3001 IDEOGRAPHIC COMMA *)
  | XK_kana_conjunctive                (* U+30FB KATAKANA MIDDLE DOT *)
  | XK_kana_middledot                  (* deprecated *)
  | XK_kana_WO                         (* U+30F2 KATAKANA LETTER WO *)
  | XK_kana_a                          (* U+30A1 KATAKANA LETTER SMALL A *)
  | XK_kana_i                          (* U+30A3 KATAKANA LETTER SMALL I *)
  | XK_kana_u                          (* U+30A5 KATAKANA LETTER SMALL U *)
  | XK_kana_e                          (* U+30A7 KATAKANA LETTER SMALL E *)
  | XK_kana_o                          (* U+30A9 KATAKANA LETTER SMALL O *)
  | XK_kana_ya                         (* U+30E3 KATAKANA LETTER SMALL YA *)
  | XK_kana_yu                         (* U+30E5 KATAKANA LETTER SMALL YU *)
  | XK_kana_yo                         (* U+30E7 KATAKANA LETTER SMALL YO *)
  | XK_kana_tsu                        (* U+30C3 KATAKANA LETTER SMALL TU *)
  | XK_kana_tu                         (* deprecated *)
  | XK_prolongedsound                  (* U+30FC KATAKANA-HIRAGANA PROLONGED SOUND MARK *)
  | XK_kana_A                          (* U+30A2 KATAKANA LETTER A *)
  | XK_kana_I                          (* U+30A4 KATAKANA LETTER I *)
  | XK_kana_U                          (* U+30A6 KATAKANA LETTER U *)
  | XK_kana_E                          (* U+30A8 KATAKANA LETTER E *)
  | XK_kana_O                          (* U+30AA KATAKANA LETTER O *)
  | XK_kana_KA                         (* U+30AB KATAKANA LETTER KA *)
  | XK_kana_KI                         (* U+30AD KATAKANA LETTER KI *)
  | XK_kana_KU                         (* U+30AF KATAKANA LETTER KU *)
  | XK_kana_KE                         (* U+30B1 KATAKANA LETTER KE *)
  | XK_kana_KO                         (* U+30B3 KATAKANA LETTER KO *)
  | XK_kana_SA                         (* U+30B5 KATAKANA LETTER SA *)
  | XK_kana_SHI                        (* U+30B7 KATAKANA LETTER SI *)
  | XK_kana_SU                         (* U+30B9 KATAKANA LETTER SU *)
  | XK_kana_SE                         (* U+30BB KATAKANA LETTER SE *)
  | XK_kana_SO                         (* U+30BD KATAKANA LETTER SO *)
  | XK_kana_TA                         (* U+30BF KATAKANA LETTER TA *)
  | XK_kana_CHI                        (* U+30C1 KATAKANA LETTER TI *)
  | XK_kana_TI                         (* deprecated *)
  | XK_kana_TSU                        (* U+30C4 KATAKANA LETTER TU *)
  | XK_kana_TU                         (* deprecated *)
  | XK_kana_TE                         (* U+30C6 KATAKANA LETTER TE *)
  | XK_kana_TO                         (* U+30C8 KATAKANA LETTER TO *)
  | XK_kana_NA                         (* U+30CA KATAKANA LETTER NA *)
  | XK_kana_NI                         (* U+30CB KATAKANA LETTER NI *)
  | XK_kana_NU                         (* U+30CC KATAKANA LETTER NU *)
  | XK_kana_NE                         (* U+30CD KATAKANA LETTER NE *)
  | XK_kana_NO                         (* U+30CE KATAKANA LETTER NO *)
  | XK_kana_HA                         (* U+30CF KATAKANA LETTER HA *)
  | XK_kana_HI                         (* U+30D2 KATAKANA LETTER HI *)
  | XK_kana_FU                         (* U+30D5 KATAKANA LETTER HU *)
  | XK_kana_HU                         (* deprecated *)
  | XK_kana_HE                         (* U+30D8 KATAKANA LETTER HE *)
  | XK_kana_HO                         (* U+30DB KATAKANA LETTER HO *)
  | XK_kana_MA                         (* U+30DE KATAKANA LETTER MA *)
  | XK_kana_MI                         (* U+30DF KATAKANA LETTER MI *)
  | XK_kana_MU                         (* U+30E0 KATAKANA LETTER MU *)
  | XK_kana_ME                         (* U+30E1 KATAKANA LETTER ME *)
  | XK_kana_MO                         (* U+30E2 KATAKANA LETTER MO *)
  | XK_kana_YA                         (* U+30E4 KATAKANA LETTER YA *)
  | XK_kana_YU                         (* U+30E6 KATAKANA LETTER YU *)
  | XK_kana_YO                         (* U+30E8 KATAKANA LETTER YO *)
  | XK_kana_RA                         (* U+30E9 KATAKANA LETTER RA *)
  | XK_kana_RI                         (* U+30EA KATAKANA LETTER RI *)
  | XK_kana_RU                         (* U+30EB KATAKANA LETTER RU *)
  | XK_kana_RE                         (* U+30EC KATAKANA LETTER RE *)
  | XK_kana_RO                         (* U+30ED KATAKANA LETTER RO *)
  | XK_kana_WA                         (* U+30EF KATAKANA LETTER WA *)
  | XK_kana_N                          (* U+30F3 KATAKANA LETTER N *)
  | XK_voicedsound                     (* U+309B KATAKANA-HIRAGANA VOICED SOUND MARK *)
  | XK_semivoicedsound                 (* U+309C KATAKANA-HIRAGANA SEMI-VOICED SOUND MARK *)
  | XK_kana_switch                     (* Alias for mode_switch *)

(*
 * Arabic
 * Byte 3 = 5
 *)

  | XK_Farsi_0                      (* U+06F0 EXTENDED ARABIC-INDIC DIGIT ZERO *)
  | XK_Farsi_1                      (* U+06F1 EXTENDED ARABIC-INDIC DIGIT ONE *)
  | XK_Farsi_2                      (* U+06F2 EXTENDED ARABIC-INDIC DIGIT TWO *)
  | XK_Farsi_3                      (* U+06F3 EXTENDED ARABIC-INDIC DIGIT THREE *)
  | XK_Farsi_4                      (* U+06F4 EXTENDED ARABIC-INDIC DIGIT FOUR *)
  | XK_Farsi_5                      (* U+06F5 EXTENDED ARABIC-INDIC DIGIT FIVE *)
  | XK_Farsi_6                      (* U+06F6 EXTENDED ARABIC-INDIC DIGIT SIX *)
  | XK_Farsi_7                      (* U+06F7 EXTENDED ARABIC-INDIC DIGIT SEVEN *)
  | XK_Farsi_8                      (* U+06F8 EXTENDED ARABIC-INDIC DIGIT EIGHT *)
  | XK_Farsi_9                      (* U+06F9 EXTENDED ARABIC-INDIC DIGIT NINE *)
  | XK_Arabic_percent               (* U+066A ARABIC PERCENT SIGN *)
  | XK_Arabic_superscript_alef      (* U+0670 ARABIC LETTER SUPERSCRIPT ALEF *)
  | XK_Arabic_tteh                  (* U+0679 ARABIC LETTER TTEH *)
  | XK_Arabic_peh                   (* U+067E ARABIC LETTER PEH *)
  | XK_Arabic_tcheh                 (* U+0686 ARABIC LETTER TCHEH *)
  | XK_Arabic_ddal                  (* U+0688 ARABIC LETTER DDAL *)
  | XK_Arabic_rreh                  (* U+0691 ARABIC LETTER RREH *)
  | XK_Arabic_comma                    (* U+060C ARABIC COMMA *)
  | XK_Arabic_fullstop              (* U+06D4 ARABIC FULL STOP *)
  | XK_Arabic_0                     (* U+0660 ARABIC-INDIC DIGIT ZERO *)
  | XK_Arabic_1                     (* U+0661 ARABIC-INDIC DIGIT ONE *)
  | XK_Arabic_2                     (* U+0662 ARABIC-INDIC DIGIT TWO *)
  | XK_Arabic_3                     (* U+0663 ARABIC-INDIC DIGIT THREE *)
  | XK_Arabic_4                     (* U+0664 ARABIC-INDIC DIGIT FOUR *)
  | XK_Arabic_5                     (* U+0665 ARABIC-INDIC DIGIT FIVE *)
  | XK_Arabic_6                     (* U+0666 ARABIC-INDIC DIGIT SIX *)
  | XK_Arabic_7                     (* U+0667 ARABIC-INDIC DIGIT SEVEN *)
  | XK_Arabic_8                     (* U+0668 ARABIC-INDIC DIGIT EIGHT *)
  | XK_Arabic_9                     (* U+0669 ARABIC-INDIC DIGIT NINE *)
  | XK_Arabic_semicolon                (* U+061B ARABIC SEMICOLON *)
  | XK_Arabic_question_mark            (* U+061F ARABIC QUESTION MARK *)
  | XK_Arabic_hamza                    (* U+0621 ARABIC LETTER HAMZA *)
  | XK_Arabic_maddaonalef              (* U+0622 ARABIC LETTER ALEF WITH MADDA ABOVE *)
  | XK_Arabic_hamzaonalef              (* U+0623 ARABIC LETTER ALEF WITH HAMZA ABOVE *)
  | XK_Arabic_hamzaonwaw               (* U+0624 ARABIC LETTER WAW WITH HAMZA ABOVE *)
  | XK_Arabic_hamzaunderalef           (* U+0625 ARABIC LETTER ALEF WITH HAMZA BELOW *)
  | XK_Arabic_hamzaonyeh               (* U+0626 ARABIC LETTER YEH WITH HAMZA ABOVE *)
  | XK_Arabic_alef                     (* U+0627 ARABIC LETTER ALEF *)
  | XK_Arabic_beh                      (* U+0628 ARABIC LETTER BEH *)
  | XK_Arabic_tehmarbuta               (* U+0629 ARABIC LETTER TEH MARBUTA *)
  | XK_Arabic_teh                      (* U+062A ARABIC LETTER TEH *)
  | XK_Arabic_theh                     (* U+062B ARABIC LETTER THEH *)
  | XK_Arabic_jeem                     (* U+062C ARABIC LETTER JEEM *)
  | XK_Arabic_hah                      (* U+062D ARABIC LETTER HAH *)
  | XK_Arabic_khah                     (* U+062E ARABIC LETTER KHAH *)
  | XK_Arabic_dal                      (* U+062F ARABIC LETTER DAL *)
  | XK_Arabic_thal                     (* U+0630 ARABIC LETTER THAL *)
  | XK_Arabic_ra                       (* U+0631 ARABIC LETTER REH *)
  | XK_Arabic_zain                     (* U+0632 ARABIC LETTER ZAIN *)
  | XK_Arabic_seen                     (* U+0633 ARABIC LETTER SEEN *)
  | XK_Arabic_sheen                    (* U+0634 ARABIC LETTER SHEEN *)
  | XK_Arabic_sad                      (* U+0635 ARABIC LETTER SAD *)
  | XK_Arabic_dad                      (* U+0636 ARABIC LETTER DAD *)
  | XK_Arabic_tah                      (* U+0637 ARABIC LETTER TAH *)
  | XK_Arabic_zah                      (* U+0638 ARABIC LETTER ZAH *)
  | XK_Arabic_ain                      (* U+0639 ARABIC LETTER AIN *)
  | XK_Arabic_ghain                    (* U+063A ARABIC LETTER GHAIN *)
  | XK_Arabic_tatweel                  (* U+0640 ARABIC TATWEEL *)
  | XK_Arabic_feh                      (* U+0641 ARABIC LETTER FEH *)
  | XK_Arabic_qaf                      (* U+0642 ARABIC LETTER QAF *)
  | XK_Arabic_kaf                      (* U+0643 ARABIC LETTER KAF *)
  | XK_Arabic_lam                      (* U+0644 ARABIC LETTER LAM *)
  | XK_Arabic_meem                     (* U+0645 ARABIC LETTER MEEM *)
  | XK_Arabic_noon                     (* U+0646 ARABIC LETTER NOON *)
  | XK_Arabic_ha                       (* U+0647 ARABIC LETTER HEH *)
  | XK_Arabic_heh                      (* deprecated *)
  | XK_Arabic_waw                      (* U+0648 ARABIC LETTER WAW *)
  | XK_Arabic_alefmaksura              (* U+0649 ARABIC LETTER ALEF MAKSURA *)
  | XK_Arabic_yeh                      (* U+064A ARABIC LETTER YEH *)
  | XK_Arabic_fathatan                 (* U+064B ARABIC FATHATAN *)
  | XK_Arabic_dammatan                 (* U+064C ARABIC DAMMATAN *)
  | XK_Arabic_kasratan                 (* U+064D ARABIC KASRATAN *)
  | XK_Arabic_fatha                    (* U+064E ARABIC FATHA *)
  | XK_Arabic_damma                    (* U+064F ARABIC DAMMA *)
  | XK_Arabic_kasra                    (* U+0650 ARABIC KASRA *)
  | XK_Arabic_shadda                   (* U+0651 ARABIC SHADDA *)
  | XK_Arabic_sukun                    (* U+0652 ARABIC SUKUN *)
  | XK_Arabic_madda_above           (* U+0653 ARABIC MADDAH ABOVE *)
  | XK_Arabic_hamza_above           (* U+0654 ARABIC HAMZA ABOVE *)
  | XK_Arabic_hamza_below           (* U+0655 ARABIC HAMZA BELOW *)
  | XK_Arabic_jeh                   (* U+0698 ARABIC LETTER JEH *)
  | XK_Arabic_veh                   (* U+06A4 ARABIC LETTER VEH *)
  | XK_Arabic_keheh                 (* U+06A9 ARABIC LETTER KEHEH *)
  | XK_Arabic_gaf                   (* U+06AF ARABIC LETTER GAF *)
  | XK_Arabic_noon_ghunna           (* U+06BA ARABIC LETTER NOON GHUNNA *)
  | XK_Arabic_heh_doachashmee       (* U+06BE ARABIC LETTER HEH DOACHASHMEE *)
  | XK_Farsi_yeh                    (* U+06CC ARABIC LETTER FARSI YEH *)
  | XK_Arabic_farsi_yeh             (* U+06CC ARABIC LETTER FARSI YEH *)
  | XK_Arabic_yeh_baree             (* U+06D2 ARABIC LETTER YEH BARREE *)
  | XK_Arabic_heh_goal              (* U+06C1 ARABIC LETTER HEH GOAL *)
  | XK_Arabic_switch                   (* Alias for mode_switch *)

(*
 * Cyrillic
 * Byte 3 = 6
 *)
  | XK_Cyrillic_GHE_bar             (* U+0492 CYRILLIC CAPITAL LETTER GHE WITH STROKE *)
  | XK_Cyrillic_ghe_bar             (* U+0493 CYRILLIC SMALL LETTER GHE WITH STROKE *)
  | XK_Cyrillic_ZHE_descender       (* U+0496 CYRILLIC CAPITAL LETTER ZHE WITH DESCENDER *)
  | XK_Cyrillic_zhe_descender       (* U+0497 CYRILLIC SMALL LETTER ZHE WITH DESCENDER *)
  | XK_Cyrillic_KA_descender        (* U+049A CYRILLIC CAPITAL LETTER KA WITH DESCENDER *)
  | XK_Cyrillic_ka_descender        (* U+049B CYRILLIC SMALL LETTER KA WITH DESCENDER *)
  | XK_Cyrillic_KA_vertstroke       (* U+049C CYRILLIC CAPITAL LETTER KA WITH VERTICAL STROKE *)
  | XK_Cyrillic_ka_vertstroke       (* U+049D CYRILLIC SMALL LETTER KA WITH VERTICAL STROKE *)
  | XK_Cyrillic_EN_descender        (* U+04A2 CYRILLIC CAPITAL LETTER EN WITH DESCENDER *)
  | XK_Cyrillic_en_descender        (* U+04A3 CYRILLIC SMALL LETTER EN WITH DESCENDER *)
  | XK_Cyrillic_U_straight          (* U+04AE CYRILLIC CAPITAL LETTER STRAIGHT U *)
  | XK_Cyrillic_u_straight          (* U+04AF CYRILLIC SMALL LETTER STRAIGHT U *)
  | XK_Cyrillic_U_straight_bar      (* U+04B0 CYRILLIC CAPITAL LETTER STRAIGHT U WITH STROKE *)
  | XK_Cyrillic_u_straight_bar      (* U+04B1 CYRILLIC SMALL LETTER STRAIGHT U WITH STROKE *)
  | XK_Cyrillic_HA_descender        (* U+04B2 CYRILLIC CAPITAL LETTER HA WITH DESCENDER *)
  | XK_Cyrillic_ha_descender        (* U+04B3 CYRILLIC SMALL LETTER HA WITH DESCENDER *)
  | XK_Cyrillic_CHE_descender       (* U+04B6 CYRILLIC CAPITAL LETTER CHE WITH DESCENDER *)
  | XK_Cyrillic_che_descender       (* U+04B7 CYRILLIC SMALL LETTER CHE WITH DESCENDER *)
  | XK_Cyrillic_CHE_vertstroke      (* U+04B8 CYRILLIC CAPITAL LETTER CHE WITH VERTICAL STROKE *)
  | XK_Cyrillic_che_vertstroke      (* U+04B9 CYRILLIC SMALL LETTER CHE WITH VERTICAL STROKE *)
  | XK_Cyrillic_SHHA                (* U+04BA CYRILLIC CAPITAL LETTER SHHA *)
  | XK_Cyrillic_shha                (* U+04BB CYRILLIC SMALL LETTER SHHA *)

  | XK_Cyrillic_SCHWA               (* U+04D8 CYRILLIC CAPITAL LETTER SCHWA *)
  | XK_Cyrillic_schwa               (* U+04D9 CYRILLIC SMALL LETTER SCHWA *)
  | XK_Cyrillic_I_macron            (* U+04E2 CYRILLIC CAPITAL LETTER I WITH MACRON *)
  | XK_Cyrillic_i_macron            (* U+04E3 CYRILLIC SMALL LETTER I WITH MACRON *)
  | XK_Cyrillic_O_bar               (* U+04E8 CYRILLIC CAPITAL LETTER BARRED O *)
  | XK_Cyrillic_o_bar               (* U+04E9 CYRILLIC SMALL LETTER BARRED O *)
  | XK_Cyrillic_U_macron            (* U+04EE CYRILLIC CAPITAL LETTER U WITH MACRON *)
  | XK_Cyrillic_u_macron            (* U+04EF CYRILLIC SMALL LETTER U WITH MACRON *)

  | XK_Serbian_dje                     (* U+0452 CYRILLIC SMALL LETTER DJE *)
  | XK_Macedonia_gje                   (* U+0453 CYRILLIC SMALL LETTER GJE *)
  | XK_Cyrillic_io                     (* U+0451 CYRILLIC SMALL LETTER IO *)
  | XK_Ukrainian_ie                    (* U+0454 CYRILLIC SMALL LETTER UKRAINIAN IE *)
  | XK_Ukranian_je                     (* deprecated *)
  | XK_Macedonia_dse                   (* U+0455 CYRILLIC SMALL LETTER DZE *)
  | XK_Ukrainian_i                     (* U+0456 CYRILLIC SMALL LETTER BYELORUSSIAN-UKRAINIAN I *)
  | XK_Ukranian_i                      (* deprecated *)
  | XK_Ukrainian_yi                    (* U+0457 CYRILLIC SMALL LETTER YI *)
  | XK_Ukranian_yi                     (* deprecated *)
  | XK_Cyrillic_je                     (* U+0458 CYRILLIC SMALL LETTER JE *)
  | XK_Serbian_je                      (* deprecated *)
  | XK_Cyrillic_lje                    (* U+0459 CYRILLIC SMALL LETTER LJE *)
  | XK_Serbian_lje                     (* deprecated *)
  | XK_Cyrillic_nje                    (* U+045A CYRILLIC SMALL LETTER NJE *)
  | XK_Serbian_nje                     (* deprecated *)
  | XK_Serbian_tshe                    (* U+045B CYRILLIC SMALL LETTER TSHE *)
  | XK_Macedonia_kje                   (* U+045C CYRILLIC SMALL LETTER KJE *)
  | XK_Ukrainian_ghe_with_upturn       (* U+0491 CYRILLIC SMALL LETTER GHE WITH UPTURN *)
  | XK_Byelorussian_shortu             (* U+045E CYRILLIC SMALL LETTER SHORT U *)
  | XK_Cyrillic_dzhe                   (* U+045F CYRILLIC SMALL LETTER DZHE *)
  | XK_Serbian_dze                     (* deprecated *)
  | XK_numerosign                      (* U+2116 NUMERO SIGN *)
  | XK_Serbian_DJE                     (* U+0402 CYRILLIC CAPITAL LETTER DJE *)
  | XK_Macedonia_GJE                   (* U+0403 CYRILLIC CAPITAL LETTER GJE *)
  | XK_Cyrillic_IO                     (* U+0401 CYRILLIC CAPITAL LETTER IO *)
  | XK_Ukrainian_IE                    (* U+0404 CYRILLIC CAPITAL LETTER UKRAINIAN IE *)
  | XK_Ukranian_JE                     (* deprecated *)
  | XK_Macedonia_DSE                   (* U+0405 CYRILLIC CAPITAL LETTER DZE *)
  | XK_Ukrainian_I                     (* U+0406 CYRILLIC CAPITAL LETTER BYELORUSSIAN-UKRAINIAN I *)
  | XK_Ukranian_I                      (* deprecated *)
  | XK_Ukrainian_YI                    (* U+0407 CYRILLIC CAPITAL LETTER YI *)
  | XK_Ukranian_YI                     (* deprecated *)
  | XK_Cyrillic_JE                     (* U+0408 CYRILLIC CAPITAL LETTER JE *)
  | XK_Serbian_JE                      (* deprecated *)
  | XK_Cyrillic_LJE                    (* U+0409 CYRILLIC CAPITAL LETTER LJE *)
  | XK_Serbian_LJE                     (* deprecated *)
  | XK_Cyrillic_NJE                    (* U+040A CYRILLIC CAPITAL LETTER NJE *)
  | XK_Serbian_NJE                     (* deprecated *)
  | XK_Serbian_TSHE                    (* U+040B CYRILLIC CAPITAL LETTER TSHE *)
  | XK_Macedonia_KJE                   (* U+040C CYRILLIC CAPITAL LETTER KJE *)
  | XK_Ukrainian_GHE_WITH_UPTURN       (* U+0490 CYRILLIC CAPITAL LETTER GHE WITH UPTURN *)
  | XK_Byelorussian_SHORTU             (* U+040E CYRILLIC CAPITAL LETTER SHORT U *)
  | XK_Cyrillic_DZHE                   (* U+040F CYRILLIC CAPITAL LETTER DZHE *)
  | XK_Serbian_DZE                     (* deprecated *)
  | XK_Cyrillic_yu                     (* U+044E CYRILLIC SMALL LETTER YU *)
  | XK_Cyrillic_a                      (* U+0430 CYRILLIC SMALL LETTER A *)
  | XK_Cyrillic_be                     (* U+0431 CYRILLIC SMALL LETTER BE *)
  | XK_Cyrillic_tse                    (* U+0446 CYRILLIC SMALL LETTER TSE *)
  | XK_Cyrillic_de                     (* U+0434 CYRILLIC SMALL LETTER DE *)
  | XK_Cyrillic_ie                     (* U+0435 CYRILLIC SMALL LETTER IE *)
  | XK_Cyrillic_ef                     (* U+0444 CYRILLIC SMALL LETTER EF *)
  | XK_Cyrillic_ghe                    (* U+0433 CYRILLIC SMALL LETTER GHE *)
  | XK_Cyrillic_ha                     (* U+0445 CYRILLIC SMALL LETTER HA *)
  | XK_Cyrillic_i                      (* U+0438 CYRILLIC SMALL LETTER I *)
  | XK_Cyrillic_shorti                 (* U+0439 CYRILLIC SMALL LETTER SHORT I *)
  | XK_Cyrillic_ka                     (* U+043A CYRILLIC SMALL LETTER KA *)
  | XK_Cyrillic_el                     (* U+043B CYRILLIC SMALL LETTER EL *)
  | XK_Cyrillic_em                     (* U+043C CYRILLIC SMALL LETTER EM *)
  | XK_Cyrillic_en                     (* U+043D CYRILLIC SMALL LETTER EN *)
  | XK_Cyrillic_o                      (* U+043E CYRILLIC SMALL LETTER O *)
  | XK_Cyrillic_pe                     (* U+043F CYRILLIC SMALL LETTER PE *)
  | XK_Cyrillic_ya                     (* U+044F CYRILLIC SMALL LETTER YA *)
  | XK_Cyrillic_er                     (* U+0440 CYRILLIC SMALL LETTER ER *)
  | XK_Cyrillic_es                     (* U+0441 CYRILLIC SMALL LETTER ES *)
  | XK_Cyrillic_te                     (* U+0442 CYRILLIC SMALL LETTER TE *)
  | XK_Cyrillic_u                      (* U+0443 CYRILLIC SMALL LETTER U *)
  | XK_Cyrillic_zhe                    (* U+0436 CYRILLIC SMALL LETTER ZHE *)
  | XK_Cyrillic_ve                     (* U+0432 CYRILLIC SMALL LETTER VE *)
  | XK_Cyrillic_softsign               (* U+044C CYRILLIC SMALL LETTER SOFT SIGN *)
  | XK_Cyrillic_yeru                   (* U+044B CYRILLIC SMALL LETTER YERU *)
  | XK_Cyrillic_ze                     (* U+0437 CYRILLIC SMALL LETTER ZE *)
  | XK_Cyrillic_sha                    (* U+0448 CYRILLIC SMALL LETTER SHA *)
  | XK_Cyrillic_e                      (* U+044D CYRILLIC SMALL LETTER E *)
  | XK_Cyrillic_shcha                  (* U+0449 CYRILLIC SMALL LETTER SHCHA *)
  | XK_Cyrillic_che                    (* U+0447 CYRILLIC SMALL LETTER CHE *)
  | XK_Cyrillic_hardsign               (* U+044A CYRILLIC SMALL LETTER HARD SIGN *)
  | XK_Cyrillic_YU                     (* U+042E CYRILLIC CAPITAL LETTER YU *)
  | XK_Cyrillic_A                      (* U+0410 CYRILLIC CAPITAL LETTER A *)
  | XK_Cyrillic_BE                     (* U+0411 CYRILLIC CAPITAL LETTER BE *)
  | XK_Cyrillic_TSE                    (* U+0426 CYRILLIC CAPITAL LETTER TSE *)
  | XK_Cyrillic_DE                     (* U+0414 CYRILLIC CAPITAL LETTER DE *)
  | XK_Cyrillic_IE                     (* U+0415 CYRILLIC CAPITAL LETTER IE *)
  | XK_Cyrillic_EF                     (* U+0424 CYRILLIC CAPITAL LETTER EF *)
  | XK_Cyrillic_GHE                    (* U+0413 CYRILLIC CAPITAL LETTER GHE *)
  | XK_Cyrillic_HA                     (* U+0425 CYRILLIC CAPITAL LETTER HA *)
  | XK_Cyrillic_I                      (* U+0418 CYRILLIC CAPITAL LETTER I *)
  | XK_Cyrillic_SHORTI                 (* U+0419 CYRILLIC CAPITAL LETTER SHORT I *)
  | XK_Cyrillic_KA                     (* U+041A CYRILLIC CAPITAL LETTER KA *)
  | XK_Cyrillic_EL                     (* U+041B CYRILLIC CAPITAL LETTER EL *)
  | XK_Cyrillic_EM                     (* U+041C CYRILLIC CAPITAL LETTER EM *)
  | XK_Cyrillic_EN                     (* U+041D CYRILLIC CAPITAL LETTER EN *)
  | XK_Cyrillic_O                      (* U+041E CYRILLIC CAPITAL LETTER O *)
  | XK_Cyrillic_PE                     (* U+041F CYRILLIC CAPITAL LETTER PE *)
  | XK_Cyrillic_YA                     (* U+042F CYRILLIC CAPITAL LETTER YA *)
  | XK_Cyrillic_ER                     (* U+0420 CYRILLIC CAPITAL LETTER ER *)
  | XK_Cyrillic_ES                     (* U+0421 CYRILLIC CAPITAL LETTER ES *)
  | XK_Cyrillic_TE                     (* U+0422 CYRILLIC CAPITAL LETTER TE *)
  | XK_Cyrillic_U                      (* U+0423 CYRILLIC CAPITAL LETTER U *)
  | XK_Cyrillic_ZHE                    (* U+0416 CYRILLIC CAPITAL LETTER ZHE *)
  | XK_Cyrillic_VE                     (* U+0412 CYRILLIC CAPITAL LETTER VE *)
  | XK_Cyrillic_SOFTSIGN               (* U+042C CYRILLIC CAPITAL LETTER SOFT SIGN *)
  | XK_Cyrillic_YERU                   (* U+042B CYRILLIC CAPITAL LETTER YERU *)
  | XK_Cyrillic_ZE                     (* U+0417 CYRILLIC CAPITAL LETTER ZE *)
  | XK_Cyrillic_SHA                    (* U+0428 CYRILLIC CAPITAL LETTER SHA *)
  | XK_Cyrillic_E                      (* U+042D CYRILLIC CAPITAL LETTER E *)
  | XK_Cyrillic_SHCHA                  (* U+0429 CYRILLIC CAPITAL LETTER SHCHA *)
  | XK_Cyrillic_CHE                    (* U+0427 CYRILLIC CAPITAL LETTER CHE *)
  | XK_Cyrillic_HARDSIGN               (* U+042A CYRILLIC CAPITAL LETTER HARD SIGN *)

(*
 * Greek
 * (based on an early draft of, and not quite identical to, ISO/IEC 8859-7)
 * Byte 3 = 7
 *)

  | XK_Greek_ALPHAaccent               (* U+0386 GREEK CAPITAL LETTER ALPHA WITH TONOS *)
  | XK_Greek_EPSILONaccent             (* U+0388 GREEK CAPITAL LETTER EPSILON WITH TONOS *)
  | XK_Greek_ETAaccent                 (* U+0389 GREEK CAPITAL LETTER ETA WITH TONOS *)
  | XK_Greek_IOTAaccent                (* U+038A GREEK CAPITAL LETTER IOTA WITH TONOS *)
  | XK_Greek_IOTAdieresis              (* U+03AA GREEK CAPITAL LETTER IOTA WITH DIALYTIKA *)
  | XK_Greek_IOTAdiaeresis             (* old typo *)
  | XK_Greek_OMICRONaccent             (* U+038C GREEK CAPITAL LETTER OMICRON WITH TONOS *)
  | XK_Greek_UPSILONaccent             (* U+038E GREEK CAPITAL LETTER UPSILON WITH TONOS *)
  | XK_Greek_UPSILONdieresis           (* U+03AB GREEK CAPITAL LETTER UPSILON WITH DIALYTIKA *)
  | XK_Greek_OMEGAaccent               (* U+038F GREEK CAPITAL LETTER OMEGA WITH TONOS *)
  | XK_Greek_accentdieresis            (* U+0385 GREEK DIALYTIKA TONOS *)
  | XK_Greek_horizbar                  (* U+2015 HORIZONTAL BAR *)
  | XK_Greek_alphaaccent               (* U+03AC GREEK SMALL LETTER ALPHA WITH TONOS *)
  | XK_Greek_epsilonaccent             (* U+03AD GREEK SMALL LETTER EPSILON WITH TONOS *)
  | XK_Greek_etaaccent                 (* U+03AE GREEK SMALL LETTER ETA WITH TONOS *)
  | XK_Greek_iotaaccent                (* U+03AF GREEK SMALL LETTER IOTA WITH TONOS *)
  | XK_Greek_iotadieresis              (* U+03CA GREEK SMALL LETTER IOTA WITH DIALYTIKA *)
  | XK_Greek_iotaaccentdieresis        (* U+0390 GREEK SMALL LETTER IOTA WITH DIALYTIKA AND TONOS *)
  | XK_Greek_omicronaccent             (* U+03CC GREEK SMALL LETTER OMICRON WITH TONOS *)
  | XK_Greek_upsilonaccent             (* U+03CD GREEK SMALL LETTER UPSILON WITH TONOS *)
  | XK_Greek_upsilondieresis           (* U+03CB GREEK SMALL LETTER UPSILON WITH DIALYTIKA *)
  | XK_Greek_upsilonaccentdieresis     (* U+03B0 GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND TONOS *)
  | XK_Greek_omegaaccent               (* U+03CE GREEK SMALL LETTER OMEGA WITH TONOS *)
  | XK_Greek_ALPHA                     (* U+0391 GREEK CAPITAL LETTER ALPHA *)
  | XK_Greek_BETA                      (* U+0392 GREEK CAPITAL LETTER BETA *)
  | XK_Greek_GAMMA                     (* U+0393 GREEK CAPITAL LETTER GAMMA *)
  | XK_Greek_DELTA                     (* U+0394 GREEK CAPITAL LETTER DELTA *)
  | XK_Greek_EPSILON                   (* U+0395 GREEK CAPITAL LETTER EPSILON *)
  | XK_Greek_ZETA                      (* U+0396 GREEK CAPITAL LETTER ZETA *)
  | XK_Greek_ETA                       (* U+0397 GREEK CAPITAL LETTER ETA *)
  | XK_Greek_THETA                     (* U+0398 GREEK CAPITAL LETTER THETA *)
  | XK_Greek_IOTA                      (* U+0399 GREEK CAPITAL LETTER IOTA *)
  | XK_Greek_KAPPA                     (* U+039A GREEK CAPITAL LETTER KAPPA *)
  | XK_Greek_LAMDA                     (* U+039B GREEK CAPITAL LETTER LAMDA *)
  | XK_Greek_LAMBDA                    (* U+039B GREEK CAPITAL LETTER LAMDA *)
  | XK_Greek_MU                        (* U+039C GREEK CAPITAL LETTER MU *)
  | XK_Greek_NU                        (* U+039D GREEK CAPITAL LETTER NU *)
  | XK_Greek_XI                        (* U+039E GREEK CAPITAL LETTER XI *)
  | XK_Greek_OMICRON                   (* U+039F GREEK CAPITAL LETTER OMICRON *)
  | XK_Greek_PI                        (* U+03A0 GREEK CAPITAL LETTER PI *)
  | XK_Greek_RHO                       (* U+03A1 GREEK CAPITAL LETTER RHO *)
  | XK_Greek_SIGMA                     (* U+03A3 GREEK CAPITAL LETTER SIGMA *)
  | XK_Greek_TAU                       (* U+03A4 GREEK CAPITAL LETTER TAU *)
  | XK_Greek_UPSILON                   (* U+03A5 GREEK CAPITAL LETTER UPSILON *)
  | XK_Greek_PHI                       (* U+03A6 GREEK CAPITAL LETTER PHI *)
  | XK_Greek_CHI                       (* U+03A7 GREEK CAPITAL LETTER CHI *)
  | XK_Greek_PSI                       (* U+03A8 GREEK CAPITAL LETTER PSI *)
  | XK_Greek_OMEGA                     (* U+03A9 GREEK CAPITAL LETTER OMEGA *)
  | XK_Greek_alpha                     (* U+03B1 GREEK SMALL LETTER ALPHA *)
  | XK_Greek_beta                      (* U+03B2 GREEK SMALL LETTER BETA *)
  | XK_Greek_gamma                     (* U+03B3 GREEK SMALL LETTER GAMMA *)
  | XK_Greek_delta                     (* U+03B4 GREEK SMALL LETTER DELTA *)
  | XK_Greek_epsilon                   (* U+03B5 GREEK SMALL LETTER EPSILON *)
  | XK_Greek_zeta                      (* U+03B6 GREEK SMALL LETTER ZETA *)
  | XK_Greek_eta                       (* U+03B7 GREEK SMALL LETTER ETA *)
  | XK_Greek_theta                     (* U+03B8 GREEK SMALL LETTER THETA *)
  | XK_Greek_iota                      (* U+03B9 GREEK SMALL LETTER IOTA *)
  | XK_Greek_kappa                     (* U+03BA GREEK SMALL LETTER KAPPA *)
  | XK_Greek_lamda                     (* U+03BB GREEK SMALL LETTER LAMDA *)
  | XK_Greek_lambda                    (* U+03BB GREEK SMALL LETTER LAMDA *)
  | XK_Greek_mu                        (* U+03BC GREEK SMALL LETTER MU *)
  | XK_Greek_nu                        (* U+03BD GREEK SMALL LETTER NU *)
  | XK_Greek_xi                        (* U+03BE GREEK SMALL LETTER XI *)
  | XK_Greek_omicron                   (* U+03BF GREEK SMALL LETTER OMICRON *)
  | XK_Greek_pi                        (* U+03C0 GREEK SMALL LETTER PI *)
  | XK_Greek_rho                       (* U+03C1 GREEK SMALL LETTER RHO *)
  | XK_Greek_sigma                     (* U+03C3 GREEK SMALL LETTER SIGMA *)
  | XK_Greek_finalsmallsigma           (* U+03C2 GREEK SMALL LETTER FINAL SIGMA *)
  | XK_Greek_tau                       (* U+03C4 GREEK SMALL LETTER TAU *)
  | XK_Greek_upsilon                   (* U+03C5 GREEK SMALL LETTER UPSILON *)
  | XK_Greek_phi                       (* U+03C6 GREEK SMALL LETTER PHI *)
  | XK_Greek_chi                       (* U+03C7 GREEK SMALL LETTER CHI *)
  | XK_Greek_psi                       (* U+03C8 GREEK SMALL LETTER PSI *)
  | XK_Greek_omega                     (* U+03C9 GREEK SMALL LETTER OMEGA *)
  | XK_Greek_switch                    (* Alias for mode_switch *)

(*
 * Technical
 * (from the DEC VT330/VT420 Technical Character Set, http://vt100.net/charsets/technical.html)
 * Byte 3 = 8
 *)

  | XK_leftradical                     (* U+23B7 RADICAL SYMBOL BOTTOM *)
  | XK_topleftradical                  (*(U+250C BOX DRAWINGS LIGHT DOWN AND RIGHT)*)
  | XK_horizconnector                  (*(U+2500 BOX DRAWINGS LIGHT HORIZONTAL)*)
  | XK_topintegral                     (* U+2320 TOP HALF INTEGRAL *)
  | XK_botintegral                     (* U+2321 BOTTOM HALF INTEGRAL *)
  | XK_vertconnector                   (*(U+2502 BOX DRAWINGS LIGHT VERTICAL)*)
  | XK_topleftsqbracket                (* U+23A1 LEFT SQUARE BRACKET UPPER CORNER *)
  | XK_botleftsqbracket                (* U+23A3 LEFT SQUARE BRACKET LOWER CORNER *)
  | XK_toprightsqbracket               (* U+23A4 RIGHT SQUARE BRACKET UPPER CORNER *)
  | XK_botrightsqbracket               (* U+23A6 RIGHT SQUARE BRACKET LOWER CORNER *)
  | XK_topleftparens                   (* U+239B LEFT PARENTHESIS UPPER HOOK *)
  | XK_botleftparens                   (* U+239D LEFT PARENTHESIS LOWER HOOK *)
  | XK_toprightparens                  (* U+239E RIGHT PARENTHESIS UPPER HOOK *)
  | XK_botrightparens                  (* U+23A0 RIGHT PARENTHESIS LOWER HOOK *)
  | XK_leftmiddlecurlybrace            (* U+23A8 LEFT CURLY BRACKET MIDDLE PIECE *)
  | XK_rightmiddlecurlybrace           (* U+23AC RIGHT CURLY BRACKET MIDDLE PIECE *)
  | XK_topleftsummation
  | XK_botleftsummation
  | XK_topvertsummationconnector
  | XK_botvertsummationconnector
  | XK_toprightsummation
  | XK_botrightsummation
  | XK_rightmiddlesummation
  | XK_lessthanequal                   (* U+2264 LESS-THAN OR EQUAL TO *)
  | XK_notequal                        (* U+2260 NOT EQUAL TO *)
  | XK_greaterthanequal                (* U+2265 GREATER-THAN OR EQUAL TO *)
  | XK_integral                        (* U+222B INTEGRAL *)
  | XK_therefore                       (* U+2234 THEREFORE *)
  | XK_variation                       (* U+221D PROPORTIONAL TO *)
  | XK_infinity                        (* U+221E INFINITY *)
  | XK_nabla                           (* U+2207 NABLA *)
  | XK_approximate                     (* U+223C TILDE OPERATOR *)
  | XK_similarequal                    (* U+2243 ASYMPTOTICALLY EQUAL TO *)
  | XK_ifonlyif                        (* U+21D4 LEFT RIGHT DOUBLE ARROW *)
  | XK_implies                         (* U+21D2 RIGHTWARDS DOUBLE ARROW *)
  | XK_identical                       (* U+2261 IDENTICAL TO *)
  | XK_radical                         (* U+221A SQUARE ROOT *)
  | XK_includedin                      (* U+2282 SUBSET OF *)
  | XK_includes                        (* U+2283 SUPERSET OF *)
  | XK_intersection                    (* U+2229 INTERSECTION *)
  | XK_union                           (* U+222A UNION *)
  | XK_logicaland                      (* U+2227 LOGICAL AND *)
  | XK_logicalor                       (* U+2228 LOGICAL OR *)
  | XK_partialderivative               (* U+2202 PARTIAL DIFFERENTIAL *)
  | XK_function                        (* U+0192 LATIN SMALL LETTER F WITH HOOK *)
  | XK_leftarrow                       (* U+2190 LEFTWARDS ARROW *)
  | XK_uparrow                         (* U+2191 UPWARDS ARROW *)
  | XK_rightarrow                      (* U+2192 RIGHTWARDS ARROW *)
  | XK_downarrow                       (* U+2193 DOWNWARDS ARROW *)

(*
 * Special
 * (from the DEC VT100 Special Graphics Character Set)
 * Byte 3 = 9
 *)

  | XK_blank
  | XK_soliddiamond                    (* U+25C6 BLACK DIAMOND *)
  | XK_checkerboard                    (* U+2592 MEDIUM SHADE *)
  | XK_ht                              (* U+2409 SYMBOL FOR HORIZONTAL TABULATION *)
  | XK_ff                              (* U+240C SYMBOL FOR FORM FEED *)
  | XK_cr                              (* U+240D SYMBOL FOR CARRIAGE RETURN *)
  | XK_lf                              (* U+240A SYMBOL FOR LINE FEED *)
  | XK_nl                              (* U+2424 SYMBOL FOR NEWLINE *)
  | XK_vt                              (* U+240B SYMBOL FOR VERTICAL TABULATION *)
  | XK_lowrightcorner                  (* U+2518 BOX DRAWINGS LIGHT UP AND LEFT *)
  | XK_uprightcorner                   (* U+2510 BOX DRAWINGS LIGHT DOWN AND LEFT *)
  | XK_upleftcorner                    (* U+250C BOX DRAWINGS LIGHT DOWN AND RIGHT *)
  | XK_lowleftcorner                   (* U+2514 BOX DRAWINGS LIGHT UP AND RIGHT *)
  | XK_crossinglines                   (* U+253C BOX DRAWINGS LIGHT VERTICAL AND HORIZONTAL *)
  | XK_horizlinescan1                  (* U+23BA HORIZONTAL SCAN LINE-1 *)
  | XK_horizlinescan3                  (* U+23BB HORIZONTAL SCAN LINE-3 *)
  | XK_horizlinescan5                  (* U+2500 BOX DRAWINGS LIGHT HORIZONTAL *)
  | XK_horizlinescan7                  (* U+23BC HORIZONTAL SCAN LINE-7 *)
  | XK_horizlinescan9                  (* U+23BD HORIZONTAL SCAN LINE-9 *)
  | XK_leftt                           (* U+251C BOX DRAWINGS LIGHT VERTICAL AND RIGHT *)
  | XK_rightt                          (* U+2524 BOX DRAWINGS LIGHT VERTICAL AND LEFT *)
  | XK_bott                            (* U+2534 BOX DRAWINGS LIGHT UP AND HORIZONTAL *)
  | XK_topt                            (* U+252C BOX DRAWINGS LIGHT DOWN AND HORIZONTAL *)
  | XK_vertbar                         (* U+2502 BOX DRAWINGS LIGHT VERTICAL *)

(*
 * Publishing
 * (these are probably from a long forgotten DEC Publishing
 * font that once shipped with DECwrite)
 * Byte 3 =
 *)

  | XK_emspace                         (* U+2003 EM SPACE *)
  | XK_enspace                         (* U+2002 EN SPACE *)
  | XK_em3space                        (* U+2004 THREE-PER-EM SPACE *)
  | XK_em4space                        (* U+2005 FOUR-PER-EM SPACE *)
  | XK_digitspace                      (* U+2007 FIGURE SPACE *)
  | XK_punctspace                      (* U+2008 PUNCTUATION SPACE *)
  | XK_thinspace                       (* U+2009 THIN SPACE *)
  | XK_hairspace                       (* U+200A HAIR SPACE *)
  | XK_emdash                          (* U+2014 EM DASH *)
  | XK_endash                          (* U+2013 EN DASH *)
  | XK_signifblank                     (*(U+2423 OPEN BOX)*)
  | XK_ellipsis                        (* U+2026 HORIZONTAL ELLIPSIS *)
  | XK_doubbaselinedot                 (* U+2025 TWO DOT LEADER *)
  | XK_onethird                        (* U+2153 VULGAR FRACTION ONE THIRD *)
  | XK_twothirds                       (* U+2154 VULGAR FRACTION TWO THIRDS *)
  | XK_onefifth                        (* U+2155 VULGAR FRACTION ONE FIFTH *)
  | XK_twofifths                       (* U+2156 VULGAR FRACTION TWO FIFTHS *)
  | XK_threefifths                     (* U+2157 VULGAR FRACTION THREE FIFTHS *)
  | XK_fourfifths                      (* U+2158 VULGAR FRACTION FOUR FIFTHS *)
  | XK_onesixth                        (* U+2159 VULGAR FRACTION ONE SIXTH *)
  | XK_fivesixths                      (* U+215A VULGAR FRACTION FIVE SIXTHS *)
  | XK_careof                          (* U+2105 CARE OF *)
  | XK_figdash                         (* U+2012 FIGURE DASH *)
  | XK_leftanglebracket                (*(U+27E8 MATHEMATICAL LEFT ANGLE BRACKET)*)
  | XK_decimalpoint                    (*(U+002E FULL STOP)*)
  | XK_rightanglebracket               (*(U+27E9 MATHEMATICAL RIGHT ANGLE BRACKET)*)
  | XK_marker
  | XK_oneeighth                       (* U+215B VULGAR FRACTION ONE EIGHTH *)
  | XK_threeeighths                    (* U+215C VULGAR FRACTION THREE EIGHTHS *)
  | XK_fiveeighths                     (* U+215D VULGAR FRACTION FIVE EIGHTHS *)
  | XK_seveneighths                    (* U+215E VULGAR FRACTION SEVEN EIGHTHS *)
  | XK_trademark                       (* U+2122 TRADE MARK SIGN *)
  | XK_signaturemark                   (*(U+2613 SALTIRE)*)
  | XK_trademarkincircle
  | XK_leftopentriangle                (*(U+25C1 WHITE LEFT-POINTING TRIANGLE)*)
  | XK_rightopentriangle               (*(U+25B7 WHITE RIGHT-POINTING TRIANGLE)*)
  | XK_emopencircle                    (*(U+25CB WHITE CIRCLE)*)
  | XK_emopenrectangle                 (*(U+25AF WHITE VERTICAL RECTANGLE)*)
  | XK_leftsinglequotemark             (* U+2018 LEFT SINGLE QUOTATION MARK *)
  | XK_rightsinglequotemark            (* U+2019 RIGHT SINGLE QUOTATION MARK *)
  | XK_leftdoublequotemark             (* U+201C LEFT DOUBLE QUOTATION MARK *)
  | XK_rightdoublequotemark            (* U+201D RIGHT DOUBLE QUOTATION MARK *)
  | XK_prescription                    (* U+211E PRESCRIPTION TAKE *)
  | XK_permille                        (* U+2030 PER MILLE SIGN *)
  | XK_minutes                         (* U+2032 PRIME *)
  | XK_seconds                         (* U+2033 DOUBLE PRIME *)
  | XK_latincross                      (* U+271D LATIN CROSS *)
  | XK_hexagram
  | XK_filledrectbullet                (*(U+25AC BLACK RECTANGLE)*)
  | XK_filledlefttribullet             (*(U+25C0 BLACK LEFT-POINTING TRIANGLE)*)
  | XK_filledrighttribullet            (*(U+25B6 BLACK RIGHT-POINTING TRIANGLE)*)
  | XK_emfilledcircle                  (*(U+25CF BLACK CIRCLE)*)
  | XK_emfilledrect                    (*(U+25AE BLACK VERTICAL RECTANGLE)*)
  | XK_enopencircbullet                (*(U+25E6 WHITE BULLET)*)
  | XK_enopensquarebullet              (*(U+25AB WHITE SMALL SQUARE)*)
  | XK_openrectbullet                  (*(U+25AD WHITE RECTANGLE)*)
  | XK_opentribulletup                 (*(U+25B3 WHITE UP-POINTING TRIANGLE)*)
  | XK_opentribulletdown               (*(U+25BD WHITE DOWN-POINTING TRIANGLE)*)
  | XK_openstar                        (*(U+2606 WHITE STAR)*)
  | XK_enfilledcircbullet              (*(U+2022 BULLET)*)
  | XK_enfilledsqbullet                (*(U+25AA BLACK SMALL SQUARE)*)
  | XK_filledtribulletup               (*(U+25B2 BLACK UP-POINTING TRIANGLE)*)
  | XK_filledtribulletdown             (*(U+25BC BLACK DOWN-POINTING TRIANGLE)*)
  | XK_leftpointer                     (*(U+261C WHITE LEFT POINTING INDEX)*)
  | XK_rightpointer                    (*(U+261E WHITE RIGHT POINTING INDEX)*)
  | XK_club                            (* U+2663 BLACK CLUB SUIT *)
  | XK_diamond                         (* U+2666 BLACK DIAMOND SUIT *)
  | XK_heart                           (* U+2665 BLACK HEART SUIT *)
  | XK_maltesecross                    (* U+2720 MALTESE CROSS *)
  | XK_dagger                          (* U+2020 DAGGER *)
  | XK_doubledagger                    (* U+2021 DOUBLE DAGGER *)
  | XK_checkmark                       (* U+2713 CHECK MARK *)
  | XK_ballotcross                     (* U+2717 BALLOT X *)
  | XK_musicalsharp                    (* U+266F MUSIC SHARP SIGN *)
  | XK_musicalflat                     (* U+266D MUSIC FLAT SIGN *)
  | XK_malesymbol                      (* U+2642 MALE SIGN *)
  | XK_femalesymbol                    (* U+2640 FEMALE SIGN *)
  | XK_telephone                       (* U+260E BLACK TELEPHONE *)
  | XK_telephonerecorder               (* U+2315 TELEPHONE RECORDER *)
  | XK_phonographcopyright             (* U+2117 SOUND RECORDING COPYRIGHT *)
  | XK_caret                           (* U+2038 CARET *)
  | XK_singlelowquotemark              (* U+201A SINGLE LOW-9 QUOTATION MARK *)
  | XK_doublelowquotemark              (* U+201E DOUBLE LOW-9 QUOTATION MARK *)
  | XK_cursor

(*
 * APL
 * Byte 3 =
 *)

  | XK_leftcaret                       (*(U+003C LESS-THAN SIGN)*)
  | XK_rightcaret                      (*(U+003E GREATER-THAN SIGN)*)
  | XK_downcaret                       (*(U+2228 LOGICAL OR)*)
  | XK_upcaret                         (*(U+2227 LOGICAL AND)*)
  | XK_overbar                         (*(U+00AF MACRON)*)
  | XK_downtack                        (* U+22A4 DOWN TACK *)
  | XK_upshoe                          (*(U+2229 INTERSECTION)*)
  | XK_downstile                       (* U+230A LEFT FLOOR *)
  | XK_underbar                        (*(U+005F LOW LINE)*)
  | XK_jot                             (* U+2218 RING OPERATOR *)
  | XK_quad                            (* U+2395 APL FUNCTIONAL SYMBOL QUAD *)
  | XK_uptack                          (* U+22A5 UP TACK *)
  | XK_circle                          (* U+25CB WHITE CIRCLE *)
  | XK_upstile                         (* U+2308 LEFT CEILING *)
  | XK_downshoe                        (*(U+222A UNION)*)
  | XK_rightshoe                       (*(U+2283 SUPERSET OF)*)
  | XK_leftshoe                        (*(U+2282 SUBSET OF)*)
  | XK_lefttack                        (* U+22A3 LEFT TACK *)
  | XK_righttack                       (* U+22A2 RIGHT TACK *)

(*
 * Hebrew
 * Byte 3 =
 *)

  | XK_hebrew_doublelowline            (* U+2017 DOUBLE LOW LINE *)
  | XK_hebrew_aleph                    (* U+05D0 HEBREW LETTER ALEF *)
  | XK_hebrew_bet                      (* U+05D1 HEBREW LETTER BET *)
  | XK_hebrew_beth                     (* deprecated *)
  | XK_hebrew_gimel                    (* U+05D2 HEBREW LETTER GIMEL *)
  | XK_hebrew_gimmel                   (* deprecated *)
  | XK_hebrew_dalet                    (* U+05D3 HEBREW LETTER DALET *)
  | XK_hebrew_daleth                   (* deprecated *)
  | XK_hebrew_he                       (* U+05D4 HEBREW LETTER HE *)
  | XK_hebrew_waw                      (* U+05D5 HEBREW LETTER VAV *)
  | XK_hebrew_zain                     (* U+05D6 HEBREW LETTER ZAYIN *)
  | XK_hebrew_zayin                    (* deprecated *)
  | XK_hebrew_chet                     (* U+05D7 HEBREW LETTER HET *)
  | XK_hebrew_het                      (* deprecated *)
  | XK_hebrew_tet                      (* U+05D8 HEBREW LETTER TET *)
  | XK_hebrew_teth                     (* deprecated *)
  | XK_hebrew_yod                      (* U+05D9 HEBREW LETTER YOD *)
  | XK_hebrew_finalkaph                (* U+05DA HEBREW LETTER FINAL KAF *)
  | XK_hebrew_kaph                     (* U+05DB HEBREW LETTER KAF *)
  | XK_hebrew_lamed                    (* U+05DC HEBREW LETTER LAMED *)
  | XK_hebrew_finalmem                 (* U+05DD HEBREW LETTER FINAL MEM *)
  | XK_hebrew_mem                      (* U+05DE HEBREW LETTER MEM *)
  | XK_hebrew_finalnun                 (* U+05DF HEBREW LETTER FINAL NUN *)
  | XK_hebrew_nun                      (* U+05E0 HEBREW LETTER NUN *)
  | XK_hebrew_samech                   (* U+05E1 HEBREW LETTER SAMEKH *)
  | XK_hebrew_samekh                   (* deprecated *)
  | XK_hebrew_ayin                     (* U+05E2 HEBREW LETTER AYIN *)
  | XK_hebrew_finalpe                  (* U+05E3 HEBREW LETTER FINAL PE *)
  | XK_hebrew_pe                       (* U+05E4 HEBREW LETTER PE *)
  | XK_hebrew_finalzade                (* U+05E5 HEBREW LETTER FINAL TSADI *)
  | XK_hebrew_finalzadi                (* deprecated *)
  | XK_hebrew_zade                     (* U+05E6 HEBREW LETTER TSADI *)
  | XK_hebrew_zadi                     (* deprecated *)
  | XK_hebrew_qoph                     (* U+05E7 HEBREW LETTER QOF *)
  | XK_hebrew_kuf                      (* deprecated *)
  | XK_hebrew_resh                     (* U+05E8 HEBREW LETTER RESH *)
  | XK_hebrew_shin                     (* U+05E9 HEBREW LETTER SHIN *)
  | XK_hebrew_taw                      (* U+05EA HEBREW LETTER TAV *)
  | XK_hebrew_taf                      (* deprecated *)
  | XK_Hebrew_switch                   (* Alias for mode_switch *)

(*
 * Thai
 * Byte 3 =
 *)

  | XK_Thai_kokai                      (* U+0E01 THAI CHARACTER KO KAI *)
  | XK_Thai_khokhai                    (* U+0E02 THAI CHARACTER KHO KHAI *)
  | XK_Thai_khokhuat                   (* U+0E03 THAI CHARACTER KHO KHUAT *)
  | XK_Thai_khokhwai                   (* U+0E04 THAI CHARACTER KHO KHWAI *)
  | XK_Thai_khokhon                    (* U+0E05 THAI CHARACTER KHO KHON *)
  | XK_Thai_khorakhang                 (* U+0E06 THAI CHARACTER KHO RAKHANG *)
  | XK_Thai_ngongu                     (* U+0E07 THAI CHARACTER NGO NGU *)
  | XK_Thai_chochan                    (* U+0E08 THAI CHARACTER CHO CHAN *)
  | XK_Thai_choching                   (* U+0E09 THAI CHARACTER CHO CHING *)
  | XK_Thai_chochang                   (* U+0E0A THAI CHARACTER CHO CHANG *)
  | XK_Thai_soso                       (* U+0E0B THAI CHARACTER SO SO *)
  | XK_Thai_chochoe                    (* U+0E0C THAI CHARACTER CHO CHOE *)
  | XK_Thai_yoying                     (* U+0E0D THAI CHARACTER YO YING *)
  | XK_Thai_dochada                    (* U+0E0E THAI CHARACTER DO CHADA *)
  | XK_Thai_topatak                    (* U+0E0F THAI CHARACTER TO PATAK *)
  | XK_Thai_thothan                    (* U+0E10 THAI CHARACTER THO THAN *)
  | XK_Thai_thonangmontho              (* U+0E11 THAI CHARACTER THO NANGMONTHO *)
  | XK_Thai_thophuthao                 (* U+0E12 THAI CHARACTER THO PHUTHAO *)
  | XK_Thai_nonen                      (* U+0E13 THAI CHARACTER NO NEN *)
  | XK_Thai_dodek                      (* U+0E14 THAI CHARACTER DO DEK *)
  | XK_Thai_totao                      (* U+0E15 THAI CHARACTER TO TAO *)
  | XK_Thai_thothung                   (* U+0E16 THAI CHARACTER THO THUNG *)
  | XK_Thai_thothahan                  (* U+0E17 THAI CHARACTER THO THAHAN *)
  | XK_Thai_thothong                   (* U+0E18 THAI CHARACTER THO THONG *)
  | XK_Thai_nonu                       (* U+0E19 THAI CHARACTER NO NU *)
  | XK_Thai_bobaimai                   (* U+0E1A THAI CHARACTER BO BAIMAI *)
  | XK_Thai_popla                      (* U+0E1B THAI CHARACTER PO PLA *)
  | XK_Thai_phophung                   (* U+0E1C THAI CHARACTER PHO PHUNG *)
  | XK_Thai_fofa                       (* U+0E1D THAI CHARACTER FO FA *)
  | XK_Thai_phophan                    (* U+0E1E THAI CHARACTER PHO PHAN *)
  | XK_Thai_fofan                      (* U+0E1F THAI CHARACTER FO FAN *)
  | XK_Thai_phosamphao                 (* U+0E20 THAI CHARACTER PHO SAMPHAO *)
  | XK_Thai_moma                       (* U+0E21 THAI CHARACTER MO MA *)
  | XK_Thai_yoyak                      (* U+0E22 THAI CHARACTER YO YAK *)
  | XK_Thai_rorua                      (* U+0E23 THAI CHARACTER RO RUA *)
  | XK_Thai_ru                         (* U+0E24 THAI CHARACTER RU *)
  | XK_Thai_loling                     (* U+0E25 THAI CHARACTER LO LING *)
  | XK_Thai_lu                         (* U+0E26 THAI CHARACTER LU *)
  | XK_Thai_wowaen                     (* U+0E27 THAI CHARACTER WO WAEN *)
  | XK_Thai_sosala                     (* U+0E28 THAI CHARACTER SO SALA *)
  | XK_Thai_sorusi                     (* U+0E29 THAI CHARACTER SO RUSI *)
  | XK_Thai_sosua                      (* U+0E2A THAI CHARACTER SO SUA *)
  | XK_Thai_hohip                      (* U+0E2B THAI CHARACTER HO HIP *)
  | XK_Thai_lochula                    (* U+0E2C THAI CHARACTER LO CHULA *)
  | XK_Thai_oang                       (* U+0E2D THAI CHARACTER O ANG *)
  | XK_Thai_honokhuk                   (* U+0E2E THAI CHARACTER HO NOKHUK *)
  | XK_Thai_paiyannoi                  (* U+0E2F THAI CHARACTER PAIYANNOI *)
  | XK_Thai_saraa                      (* U+0E30 THAI CHARACTER SARA A *)
  | XK_Thai_maihanakat                 (* U+0E31 THAI CHARACTER MAI HAN-AKAT *)
  | XK_Thai_saraaa                     (* U+0E32 THAI CHARACTER SARA AA *)
  | XK_Thai_saraam                     (* U+0E33 THAI CHARACTER SARA AM *)
  | XK_Thai_sarai                      (* U+0E34 THAI CHARACTER SARA I *)
  | XK_Thai_saraii                     (* U+0E35 THAI CHARACTER SARA II *)
  | XK_Thai_saraue                     (* U+0E36 THAI CHARACTER SARA UE *)
  | XK_Thai_sarauee                    (* U+0E37 THAI CHARACTER SARA UEE *)
  | XK_Thai_sarau                      (* U+0E38 THAI CHARACTER SARA U *)
  | XK_Thai_sarauu                     (* U+0E39 THAI CHARACTER SARA UU *)
  | XK_Thai_phinthu                    (* U+0E3A THAI CHARACTER PHINTHU *)
  | XK_Thai_maihanakat_maitho
  | XK_Thai_baht                       (* U+0E3F THAI CURRENCY SYMBOL BAHT *)
  | XK_Thai_sarae                      (* U+0E40 THAI CHARACTER SARA E *)
  | XK_Thai_saraae                     (* U+0E41 THAI CHARACTER SARA AE *)
  | XK_Thai_sarao                      (* U+0E42 THAI CHARACTER SARA O *)
  | XK_Thai_saraaimaimuan              (* U+0E43 THAI CHARACTER SARA AI MAIMUAN *)
  | XK_Thai_saraaimaimalai             (* U+0E44 THAI CHARACTER SARA AI MAIMALAI *)
  | XK_Thai_lakkhangyao                (* U+0E45 THAI CHARACTER LAKKHANGYAO *)
  | XK_Thai_maiyamok                   (* U+0E46 THAI CHARACTER MAIYAMOK *)
  | XK_Thai_maitaikhu                  (* U+0E47 THAI CHARACTER MAITAIKHU *)
  | XK_Thai_maiek                      (* U+0E48 THAI CHARACTER MAI EK *)
  | XK_Thai_maitho                     (* U+0E49 THAI CHARACTER MAI THO *)
  | XK_Thai_maitri                     (* U+0E4A THAI CHARACTER MAI TRI *)
  | XK_Thai_maichattawa                (* U+0E4B THAI CHARACTER MAI CHATTAWA *)
  | XK_Thai_thanthakhat                (* U+0E4C THAI CHARACTER THANTHAKHAT *)
  | XK_Thai_nikhahit                   (* U+0E4D THAI CHARACTER NIKHAHIT *)
  | XK_Thai_leksun                     (* U+0E50 THAI DIGIT ZERO *)
  | XK_Thai_leknung                    (* U+0E51 THAI DIGIT ONE *)
  | XK_Thai_leksong                    (* U+0E52 THAI DIGIT TWO *)
  | XK_Thai_leksam                     (* U+0E53 THAI DIGIT THREE *)
  | XK_Thai_leksi                      (* U+0E54 THAI DIGIT FOUR *)
  | XK_Thai_lekha                      (* U+0E55 THAI DIGIT FIVE *)
  | XK_Thai_lekhok                     (* U+0E56 THAI DIGIT SIX *)
  | XK_Thai_lekchet                    (* U+0E57 THAI DIGIT SEVEN *)
  | XK_Thai_lekpaet                    (* U+0E58 THAI DIGIT EIGHT *)
  | XK_Thai_lekkao                     (* U+0E59 THAI DIGIT NINE *)

(*
 * Korean
 * Byte 3 =
 *)


  | XK_Hangul                          (* Hangul start/stop(toggle) *)
  | XK_Hangul_Start                    (* Hangul start *)
  | XK_Hangul_End                      (* Hangul end, English start *)
  | XK_Hangul_Hanja                    (* Start Hangul->Hanja Conversion *)
  | XK_Hangul_Jamo                     (* Hangul Jamo mode *)
  | XK_Hangul_Romaja                   (* Hangul Romaja mode *)
  | XK_Hangul_Codeinput                (* Hangul code input mode *)
  | XK_Hangul_Jeonja                   (* Jeonja mode *)
  | XK_Hangul_Banja                    (* Banja mode *)
  | XK_Hangul_PreHanja                 (* Pre Hanja conversion *)
  | XK_Hangul_PostHanja                (* Post Hanja conversion *)
  | XK_Hangul_SingleCandidate          (* Single candidate *)
  | XK_Hangul_MultipleCandidate        (* Multiple candidate *)
  | XK_Hangul_PreviousCandidate        (* Previous candidate *)
  | XK_Hangul_Special                  (* Special symbols *)
  | XK_Hangul_switch                   (* Alias for mode_switch *)

(* Hangul Consonant Characters *)
  | XK_Hangul_Kiyeog
  | XK_Hangul_SsangKiyeog
  | XK_Hangul_KiyeogSios
  | XK_Hangul_Nieun
  | XK_Hangul_NieunJieuj
  | XK_Hangul_NieunHieuh
  | XK_Hangul_Dikeud
  | XK_Hangul_SsangDikeud
  | XK_Hangul_Rieul
  | XK_Hangul_RieulKiyeog
  | XK_Hangul_RieulMieum
  | XK_Hangul_RieulPieub
  | XK_Hangul_RieulSios
  | XK_Hangul_RieulTieut
  | XK_Hangul_RieulPhieuf
  | XK_Hangul_RieulHieuh
  | XK_Hangul_Mieum
  | XK_Hangul_Pieub
  | XK_Hangul_SsangPieub
  | XK_Hangul_PieubSios
  | XK_Hangul_Sios
  | XK_Hangul_SsangSios
  | XK_Hangul_Ieung
  | XK_Hangul_Jieuj
  | XK_Hangul_SsangJieuj
  | XK_Hangul_Cieuc
  | XK_Hangul_Khieuq
  | XK_Hangul_Tieut
  | XK_Hangul_Phieuf
  | XK_Hangul_Hieuh

(* Hangul Vowel Characters *)
  | XK_Hangul_A
  | XK_Hangul_AE
  | XK_Hangul_YA
  | XK_Hangul_YAE
  | XK_Hangul_EO
  | XK_Hangul_E
  | XK_Hangul_YEO
  | XK_Hangul_YE
  | XK_Hangul_O
  | XK_Hangul_WA
  | XK_Hangul_WAE
  | XK_Hangul_OE
  | XK_Hangul_YO
  | XK_Hangul_U
  | XK_Hangul_WEO
  | XK_Hangul_WE
  | XK_Hangul_WI
  | XK_Hangul_YU
  | XK_Hangul_EU
  | XK_Hangul_YI
  | XK_Hangul_I

(* Hangul syllable-final (JongSeong) Characters *)
  | XK_Hangul_J_Kiyeog
  | XK_Hangul_J_SsangKiyeog
  | XK_Hangul_J_KiyeogSios
  | XK_Hangul_J_Nieun
  | XK_Hangul_J_NieunJieuj
  | XK_Hangul_J_NieunHieuh
  | XK_Hangul_J_Dikeud
  | XK_Hangul_J_Rieul
  | XK_Hangul_J_RieulKiyeog
  | XK_Hangul_J_RieulMieum
  | XK_Hangul_J_RieulPieub
  | XK_Hangul_J_RieulSios
  | XK_Hangul_J_RieulTieut
  | XK_Hangul_J_RieulPhieuf
  | XK_Hangul_J_RieulHieuh
  | XK_Hangul_J_Mieum
  | XK_Hangul_J_Pieub
  | XK_Hangul_J_PieubSios
  | XK_Hangul_J_Sios
  | XK_Hangul_J_SsangSios
  | XK_Hangul_J_Ieung
  | XK_Hangul_J_Jieuj
  | XK_Hangul_J_Cieuc
  | XK_Hangul_J_Khieuq
  | XK_Hangul_J_Tieut
  | XK_Hangul_J_Phieuf
  | XK_Hangul_J_Hieuh

(* Ancient Hangul Consonant Characters *)
  | XK_Hangul_RieulYeorinHieuh
  | XK_Hangul_SunkyeongeumMieum
  | XK_Hangul_SunkyeongeumPieub
  | XK_Hangul_PanSios
  | XK_Hangul_KkogjiDalrinIeung
  | XK_Hangul_SunkyeongeumPhieuf
  | XK_Hangul_YeorinHieuh

(* Ancient Hangul Vowel Characters *)
  | XK_Hangul_AraeA
  | XK_Hangul_AraeAE

(* Ancient Hangul syllable-final (JongSeong) Characters *)
  | XK_Hangul_J_PanSios
  | XK_Hangul_J_KkogjiDalrinIeung
  | XK_Hangul_J_YeorinHieuh

(* Korean currency symbol *)
  | XK_Korean_Won                      (*(U+20A9 WON SIGN)*)


(*
 * Armenian
 *)

  | XK_Armenian_ligature_ew         (* U+0587 ARMENIAN SMALL LIGATURE ECH YIWN *)
  | XK_Armenian_full_stop           (* U+0589 ARMENIAN FULL STOP *)
  | XK_Armenian_verjaket            (* U+0589 ARMENIAN FULL STOP *)
  | XK_Armenian_separation_mark     (* U+055D ARMENIAN COMMA *)
  | XK_Armenian_but                 (* U+055D ARMENIAN COMMA *)
  | XK_Armenian_hyphen              (* U+058A ARMENIAN HYPHEN *)
  | XK_Armenian_yentamna            (* U+058A ARMENIAN HYPHEN *)
  | XK_Armenian_exclam              (* U+055C ARMENIAN EXCLAMATION MARK *)
  | XK_Armenian_amanak              (* U+055C ARMENIAN EXCLAMATION MARK *)
  | XK_Armenian_accent              (* U+055B ARMENIAN EMPHASIS MARK *)
  | XK_Armenian_shesht              (* U+055B ARMENIAN EMPHASIS MARK *)
  | XK_Armenian_question            (* U+055E ARMENIAN QUESTION MARK *)
  | XK_Armenian_paruyk              (* U+055E ARMENIAN QUESTION MARK *)
  | XK_Armenian_AYB                 (* U+0531 ARMENIAN CAPITAL LETTER AYB *)
  | XK_Armenian_ayb                 (* U+0561 ARMENIAN SMALL LETTER AYB *)
  | XK_Armenian_BEN                 (* U+0532 ARMENIAN CAPITAL LETTER BEN *)
  | XK_Armenian_ben                 (* U+0562 ARMENIAN SMALL LETTER BEN *)
  | XK_Armenian_GIM                 (* U+0533 ARMENIAN CAPITAL LETTER GIM *)
  | XK_Armenian_gim                 (* U+0563 ARMENIAN SMALL LETTER GIM *)
  | XK_Armenian_DA                  (* U+0534 ARMENIAN CAPITAL LETTER DA *)
  | XK_Armenian_da                  (* U+0564 ARMENIAN SMALL LETTER DA *)
  | XK_Armenian_YECH                (* U+0535 ARMENIAN CAPITAL LETTER ECH *)
  | XK_Armenian_yech                (* U+0565 ARMENIAN SMALL LETTER ECH *)
  | XK_Armenian_ZA                  (* U+0536 ARMENIAN CAPITAL LETTER ZA *)
  | XK_Armenian_za                  (* U+0566 ARMENIAN SMALL LETTER ZA *)
  | XK_Armenian_E                   (* U+0537 ARMENIAN CAPITAL LETTER EH *)
  | XK_Armenian_e                   (* U+0567 ARMENIAN SMALL LETTER EH *)
  | XK_Armenian_AT                  (* U+0538 ARMENIAN CAPITAL LETTER ET *)
  | XK_Armenian_at                  (* U+0568 ARMENIAN SMALL LETTER ET *)
  | XK_Armenian_TO                  (* U+0539 ARMENIAN CAPITAL LETTER TO *)
  | XK_Armenian_to                  (* U+0569 ARMENIAN SMALL LETTER TO *)
  | XK_Armenian_ZHE                 (* U+053A ARMENIAN CAPITAL LETTER ZHE *)
  | XK_Armenian_zhe                 (* U+056A ARMENIAN SMALL LETTER ZHE *)
  | XK_Armenian_INI                 (* U+053B ARMENIAN CAPITAL LETTER INI *)
  | XK_Armenian_ini                 (* U+056B ARMENIAN SMALL LETTER INI *)
  | XK_Armenian_LYUN                (* U+053C ARMENIAN CAPITAL LETTER LIWN *)
  | XK_Armenian_lyun                (* U+056C ARMENIAN SMALL LETTER LIWN *)
  | XK_Armenian_KHE                 (* U+053D ARMENIAN CAPITAL LETTER XEH *)
  | XK_Armenian_khe                 (* U+056D ARMENIAN SMALL LETTER XEH *)
  | XK_Armenian_TSA                 (* U+053E ARMENIAN CAPITAL LETTER CA *)
  | XK_Armenian_tsa                 (* U+056E ARMENIAN SMALL LETTER CA *)
  | XK_Armenian_KEN                 (* U+053F ARMENIAN CAPITAL LETTER KEN *)
  | XK_Armenian_ken                 (* U+056F ARMENIAN SMALL LETTER KEN *)
  | XK_Armenian_HO                  (* U+0540 ARMENIAN CAPITAL LETTER HO *)
  | XK_Armenian_ho                  (* U+0570 ARMENIAN SMALL LETTER HO *)
  | XK_Armenian_DZA                 (* U+0541 ARMENIAN CAPITAL LETTER JA *)
  | XK_Armenian_dza                 (* U+0571 ARMENIAN SMALL LETTER JA *)
  | XK_Armenian_GHAT                (* U+0542 ARMENIAN CAPITAL LETTER GHAD *)
  | XK_Armenian_ghat                (* U+0572 ARMENIAN SMALL LETTER GHAD *)
  | XK_Armenian_TCHE                (* U+0543 ARMENIAN CAPITAL LETTER CHEH *)
  | XK_Armenian_tche                (* U+0573 ARMENIAN SMALL LETTER CHEH *)
  | XK_Armenian_MEN                 (* U+0544 ARMENIAN CAPITAL LETTER MEN *)
  | XK_Armenian_men                 (* U+0574 ARMENIAN SMALL LETTER MEN *)
  | XK_Armenian_HI                  (* U+0545 ARMENIAN CAPITAL LETTER YI *)
  | XK_Armenian_hi                  (* U+0575 ARMENIAN SMALL LETTER YI *)
  | XK_Armenian_NU                  (* U+0546 ARMENIAN CAPITAL LETTER NOW *)
  | XK_Armenian_nu                  (* U+0576 ARMENIAN SMALL LETTER NOW *)
  | XK_Armenian_SHA                 (* U+0547 ARMENIAN CAPITAL LETTER SHA *)
  | XK_Armenian_sha                 (* U+0577 ARMENIAN SMALL LETTER SHA *)
  | XK_Armenian_VO                  (* U+0548 ARMENIAN CAPITAL LETTER VO *)
  | XK_Armenian_vo                  (* U+0578 ARMENIAN SMALL LETTER VO *)
  | XK_Armenian_CHA                 (* U+0549 ARMENIAN CAPITAL LETTER CHA *)
  | XK_Armenian_cha                 (* U+0579 ARMENIAN SMALL LETTER CHA *)
  | XK_Armenian_PE                  (* U+054A ARMENIAN CAPITAL LETTER PEH *)
  | XK_Armenian_pe                  (* U+057A ARMENIAN SMALL LETTER PEH *)
  | XK_Armenian_JE                  (* U+054B ARMENIAN CAPITAL LETTER JHEH *)
  | XK_Armenian_je                  (* U+057B ARMENIAN SMALL LETTER JHEH *)
  | XK_Armenian_RA                  (* U+054C ARMENIAN CAPITAL LETTER RA *)
  | XK_Armenian_ra                  (* U+057C ARMENIAN SMALL LETTER RA *)
  | XK_Armenian_SE                  (* U+054D ARMENIAN CAPITAL LETTER SEH *)
  | XK_Armenian_se                  (* U+057D ARMENIAN SMALL LETTER SEH *)
  | XK_Armenian_VEV                 (* U+054E ARMENIAN CAPITAL LETTER VEW *)
  | XK_Armenian_vev                 (* U+057E ARMENIAN SMALL LETTER VEW *)
  | XK_Armenian_TYUN                (* U+054F ARMENIAN CAPITAL LETTER TIWN *)
  | XK_Armenian_tyun                (* U+057F ARMENIAN SMALL LETTER TIWN *)
  | XK_Armenian_RE                  (* U+0550 ARMENIAN CAPITAL LETTER REH *)
  | XK_Armenian_re                  (* U+0580 ARMENIAN SMALL LETTER REH *)
  | XK_Armenian_TSO                 (* U+0551 ARMENIAN CAPITAL LETTER CO *)
  | XK_Armenian_tso                 (* U+0581 ARMENIAN SMALL LETTER CO *)
  | XK_Armenian_VYUN                (* U+0552 ARMENIAN CAPITAL LETTER YIWN *)
  | XK_Armenian_vyun                (* U+0582 ARMENIAN SMALL LETTER YIWN *)
  | XK_Armenian_PYUR                (* U+0553 ARMENIAN CAPITAL LETTER PIWR *)
  | XK_Armenian_pyur                (* U+0583 ARMENIAN SMALL LETTER PIWR *)
  | XK_Armenian_KE                  (* U+0554 ARMENIAN CAPITAL LETTER KEH *)
  | XK_Armenian_ke                  (* U+0584 ARMENIAN SMALL LETTER KEH *)
  | XK_Armenian_O                   (* U+0555 ARMENIAN CAPITAL LETTER OH *)
  | XK_Armenian_o                   (* U+0585 ARMENIAN SMALL LETTER OH *)
  | XK_Armenian_FE                  (* U+0556 ARMENIAN CAPITAL LETTER FEH *)
  | XK_Armenian_fe                  (* U+0586 ARMENIAN SMALL LETTER FEH *)
  | XK_Armenian_apostrophe          (* U+055A ARMENIAN APOSTROPHE *)

(*
 * Georgian
 *)

  | XK_Georgian_an                  (* U+10D0 GEORGIAN LETTER AN *)
  | XK_Georgian_ban                 (* U+10D1 GEORGIAN LETTER BAN *)
  | XK_Georgian_gan                 (* U+10D2 GEORGIAN LETTER GAN *)
  | XK_Georgian_don                 (* U+10D3 GEORGIAN LETTER DON *)
  | XK_Georgian_en                  (* U+10D4 GEORGIAN LETTER EN *)
  | XK_Georgian_vin                 (* U+10D5 GEORGIAN LETTER VIN *)
  | XK_Georgian_zen                 (* U+10D6 GEORGIAN LETTER ZEN *)
  | XK_Georgian_tan                 (* U+10D7 GEORGIAN LETTER TAN *)
  | XK_Georgian_in                  (* U+10D8 GEORGIAN LETTER IN *)
  | XK_Georgian_kan                 (* U+10D9 GEORGIAN LETTER KAN *)
  | XK_Georgian_las                 (* U+10DA GEORGIAN LETTER LAS *)
  | XK_Georgian_man                 (* U+10DB GEORGIAN LETTER MAN *)
  | XK_Georgian_nar                 (* U+10DC GEORGIAN LETTER NAR *)
  | XK_Georgian_on                  (* U+10DD GEORGIAN LETTER ON *)
  | XK_Georgian_par                 (* U+10DE GEORGIAN LETTER PAR *)
  | XK_Georgian_zhar                (* U+10DF GEORGIAN LETTER ZHAR *)
  | XK_Georgian_rae                 (* U+10E0 GEORGIAN LETTER RAE *)
  | XK_Georgian_san                 (* U+10E1 GEORGIAN LETTER SAN *)
  | XK_Georgian_tar                 (* U+10E2 GEORGIAN LETTER TAR *)
  | XK_Georgian_un                  (* U+10E3 GEORGIAN LETTER UN *)
  | XK_Georgian_phar                (* U+10E4 GEORGIAN LETTER PHAR *)
  | XK_Georgian_khar                (* U+10E5 GEORGIAN LETTER KHAR *)
  | XK_Georgian_ghan                (* U+10E6 GEORGIAN LETTER GHAN *)
  | XK_Georgian_qar                 (* U+10E7 GEORGIAN LETTER QAR *)
  | XK_Georgian_shin                (* U+10E8 GEORGIAN LETTER SHIN *)
  | XK_Georgian_chin                (* U+10E9 GEORGIAN LETTER CHIN *)
  | XK_Georgian_can                 (* U+10EA GEORGIAN LETTER CAN *)
  | XK_Georgian_jil                 (* U+10EB GEORGIAN LETTER JIL *)
  | XK_Georgian_cil                 (* U+10EC GEORGIAN LETTER CIL *)
  | XK_Georgian_char                (* U+10ED GEORGIAN LETTER CHAR *)
  | XK_Georgian_xan                 (* U+10EE GEORGIAN LETTER XAN *)
  | XK_Georgian_jhan                (* U+10EF GEORGIAN LETTER JHAN *)
  | XK_Georgian_hae                 (* U+10F0 GEORGIAN LETTER HAE *)
  | XK_Georgian_he                  (* U+10F1 GEORGIAN LETTER HE *)
  | XK_Georgian_hie                 (* U+10F2 GEORGIAN LETTER HIE *)
  | XK_Georgian_we                  (* U+10F3 GEORGIAN LETTER WE *)
  | XK_Georgian_har                 (* U+10F4 GEORGIAN LETTER HAR *)
  | XK_Georgian_hoe                 (* U+10F5 GEORGIAN LETTER HOE *)
  | XK_Georgian_fi                  (* U+10F6 GEORGIAN LETTER FI *)

(*
 * Azeri (and other Turkic or Caucasian languages)
 *)

(* latin *)
  | XK_Xabovedot                    (* U+1E8A LATIN CAPITAL LETTER X WITH DOT ABOVE *)
  | XK_Ibreve                       (* U+012C LATIN CAPITAL LETTER I WITH BREVE *)
  | XK_Zstroke                      (* U+01B5 LATIN CAPITAL LETTER Z WITH STROKE *)
  | XK_Gcaron                       (* U+01E6 LATIN CAPITAL LETTER G WITH CARON *)
  | XK_Ocaron                       (* U+01D2 LATIN CAPITAL LETTER O WITH CARON *)
  | XK_Obarred                      (* U+019F LATIN CAPITAL LETTER O WITH MIDDLE TILDE *)
  | XK_xabovedot                    (* U+1E8B LATIN SMALL LETTER X WITH DOT ABOVE *)
  | XK_ibreve                       (* U+012D LATIN SMALL LETTER I WITH BREVE *)
  | XK_zstroke                      (* U+01B6 LATIN SMALL LETTER Z WITH STROKE *)
  | XK_gcaron                       (* U+01E7 LATIN SMALL LETTER G WITH CARON *)
  | XK_ocaron                       (* U+01D2 LATIN SMALL LETTER O WITH CARON *)
  | XK_obarred                      (* U+0275 LATIN SMALL LETTER BARRED O *)
  | XK_SCHWA                        (* U+018F LATIN CAPITAL LETTER SCHWA *)
  | XK_schwa                        (* U+0259 LATIN SMALL LETTER SCHWA *)
  | XK_EZH                          (* U+01B7 LATIN CAPITAL LETTER EZH *)
  | XK_ezh                          (* U+0292 LATIN SMALL LETTER EZH *)
(* those are not really Caucasus *)
(* For Inupiak *)
  | XK_Lbelowdot                    (* U+1E36 LATIN CAPITAL LETTER L WITH DOT BELOW *)
  | XK_lbelowdot                    (* U+1E37 LATIN SMALL LETTER L WITH DOT BELOW *)

(*
 * Vietnamese
 *)

  | XK_Abelowdot                    (* U+1EA0 LATIN CAPITAL LETTER A WITH DOT BELOW *)
  | XK_abelowdot                    (* U+1EA1 LATIN SMALL LETTER A WITH DOT BELOW *)
  | XK_Ahook                        (* U+1EA2 LATIN CAPITAL LETTER A WITH HOOK ABOVE *)
  | XK_ahook                        (* U+1EA3 LATIN SMALL LETTER A WITH HOOK ABOVE *)
  | XK_Acircumflexacute             (* U+1EA4 LATIN CAPITAL LETTER A WITH CIRCUMFLEX AND ACUTE *)
  | XK_acircumflexacute             (* U+1EA5 LATIN SMALL LETTER A WITH CIRCUMFLEX AND ACUTE *)
  | XK_Acircumflexgrave             (* U+1EA6 LATIN CAPITAL LETTER A WITH CIRCUMFLEX AND GRAVE *)
  | XK_acircumflexgrave             (* U+1EA7 LATIN SMALL LETTER A WITH CIRCUMFLEX AND GRAVE *)
  | XK_Acircumflexhook              (* U+1EA8 LATIN CAPITAL LETTER A WITH CIRCUMFLEX AND HOOK ABOVE *)
  | XK_acircumflexhook              (* U+1EA9 LATIN SMALL LETTER A WITH CIRCUMFLEX AND HOOK ABOVE *)
  | XK_Acircumflextilde             (* U+1EAA LATIN CAPITAL LETTER A WITH CIRCUMFLEX AND TILDE *)
  | XK_acircumflextilde             (* U+1EAB LATIN SMALL LETTER A WITH CIRCUMFLEX AND TILDE *)
  | XK_Acircumflexbelowdot          (* U+1EAC LATIN CAPITAL LETTER A WITH CIRCUMFLEX AND DOT BELOW *)
  | XK_acircumflexbelowdot          (* U+1EAD LATIN SMALL LETTER A WITH CIRCUMFLEX AND DOT BELOW *)
  | XK_Abreveacute                  (* U+1EAE LATIN CAPITAL LETTER A WITH BREVE AND ACUTE *)
  | XK_abreveacute                  (* U+1EAF LATIN SMALL LETTER A WITH BREVE AND ACUTE *)
  | XK_Abrevegrave                  (* U+1EB0 LATIN CAPITAL LETTER A WITH BREVE AND GRAVE *)
  | XK_abrevegrave                  (* U+1EB1 LATIN SMALL LETTER A WITH BREVE AND GRAVE *)
  | XK_Abrevehook                   (* U+1EB2 LATIN CAPITAL LETTER A WITH BREVE AND HOOK ABOVE *)
  | XK_abrevehook                   (* U+1EB3 LATIN SMALL LETTER A WITH BREVE AND HOOK ABOVE *)
  | XK_Abrevetilde                  (* U+1EB4 LATIN CAPITAL LETTER A WITH BREVE AND TILDE *)
  | XK_abrevetilde                  (* U+1EB5 LATIN SMALL LETTER A WITH BREVE AND TILDE *)
  | XK_Abrevebelowdot               (* U+1EB6 LATIN CAPITAL LETTER A WITH BREVE AND DOT BELOW *)
  | XK_abrevebelowdot               (* U+1EB7 LATIN SMALL LETTER A WITH BREVE AND DOT BELOW *)
  | XK_Ebelowdot                    (* U+1EB8 LATIN CAPITAL LETTER E WITH DOT BELOW *)
  | XK_ebelowdot                    (* U+1EB9 LATIN SMALL LETTER E WITH DOT BELOW *)
  | XK_Ehook                        (* U+1EBA LATIN CAPITAL LETTER E WITH HOOK ABOVE *)
  | XK_ehook                        (* U+1EBB LATIN SMALL LETTER E WITH HOOK ABOVE *)
  | XK_Etilde                       (* U+1EBC LATIN CAPITAL LETTER E WITH TILDE *)
  | XK_etilde                       (* U+1EBD LATIN SMALL LETTER E WITH TILDE *)
  | XK_Ecircumflexacute             (* U+1EBE LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND ACUTE *)
  | XK_ecircumflexacute             (* U+1EBF LATIN SMALL LETTER E WITH CIRCUMFLEX AND ACUTE *)
  | XK_Ecircumflexgrave             (* U+1EC0 LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND GRAVE *)
  | XK_ecircumflexgrave             (* U+1EC1 LATIN SMALL LETTER E WITH CIRCUMFLEX AND GRAVE *)
  | XK_Ecircumflexhook              (* U+1EC2 LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND HOOK ABOVE *)
  | XK_ecircumflexhook              (* U+1EC3 LATIN SMALL LETTER E WITH CIRCUMFLEX AND HOOK ABOVE *)
  | XK_Ecircumflextilde             (* U+1EC4 LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND TILDE *)
  | XK_ecircumflextilde             (* U+1EC5 LATIN SMALL LETTER E WITH CIRCUMFLEX AND TILDE *)
  | XK_Ecircumflexbelowdot          (* U+1EC6 LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND DOT BELOW *)
  | XK_ecircumflexbelowdot          (* U+1EC7 LATIN SMALL LETTER E WITH CIRCUMFLEX AND DOT BELOW *)
  | XK_Ihook                        (* U+1EC8 LATIN CAPITAL LETTER I WITH HOOK ABOVE *)
  | XK_ihook                        (* U+1EC9 LATIN SMALL LETTER I WITH HOOK ABOVE *)
  | XK_Ibelowdot                    (* U+1ECA LATIN CAPITAL LETTER I WITH DOT BELOW *)
  | XK_ibelowdot                    (* U+1ECB LATIN SMALL LETTER I WITH DOT BELOW *)
  | XK_Obelowdot                    (* U+1ECC LATIN CAPITAL LETTER O WITH DOT BELOW *)
  | XK_obelowdot                    (* U+1ECD LATIN SMALL LETTER O WITH DOT BELOW *)
  | XK_Ohook                        (* U+1ECE LATIN CAPITAL LETTER O WITH HOOK ABOVE *)
  | XK_ohook                        (* U+1ECF LATIN SMALL LETTER O WITH HOOK ABOVE *)
  | XK_Ocircumflexacute             (* U+1ED0 LATIN CAPITAL LETTER O WITH CIRCUMFLEX AND ACUTE *)
  | XK_ocircumflexacute             (* U+1ED1 LATIN SMALL LETTER O WITH CIRCUMFLEX AND ACUTE *)
  | XK_Ocircumflexgrave             (* U+1ED2 LATIN CAPITAL LETTER O WITH CIRCUMFLEX AND GRAVE *)
  | XK_ocircumflexgrave             (* U+1ED3 LATIN SMALL LETTER O WITH CIRCUMFLEX AND GRAVE *)
  | XK_Ocircumflexhook              (* U+1ED4 LATIN CAPITAL LETTER O WITH CIRCUMFLEX AND HOOK ABOVE *)
  | XK_ocircumflexhook              (* U+1ED5 LATIN SMALL LETTER O WITH CIRCUMFLEX AND HOOK ABOVE *)
  | XK_Ocircumflextilde             (* U+1ED6 LATIN CAPITAL LETTER O WITH CIRCUMFLEX AND TILDE *)
  | XK_ocircumflextilde             (* U+1ED7 LATIN SMALL LETTER O WITH CIRCUMFLEX AND TILDE *)
  | XK_Ocircumflexbelowdot          (* U+1ED8 LATIN CAPITAL LETTER O WITH CIRCUMFLEX AND DOT BELOW *)
  | XK_ocircumflexbelowdot          (* U+1ED9 LATIN SMALL LETTER O WITH CIRCUMFLEX AND DOT BELOW *)
  | XK_Ohornacute                   (* U+1EDA LATIN CAPITAL LETTER O WITH HORN AND ACUTE *)
  | XK_ohornacute                   (* U+1EDB LATIN SMALL LETTER O WITH HORN AND ACUTE *)
  | XK_Ohorngrave                   (* U+1EDC LATIN CAPITAL LETTER O WITH HORN AND GRAVE *)
  | XK_ohorngrave                   (* U+1EDD LATIN SMALL LETTER O WITH HORN AND GRAVE *)
  | XK_Ohornhook                    (* U+1EDE LATIN CAPITAL LETTER O WITH HORN AND HOOK ABOVE *)
  | XK_ohornhook                    (* U+1EDF LATIN SMALL LETTER O WITH HORN AND HOOK ABOVE *)
  | XK_Ohorntilde                   (* U+1EE0 LATIN CAPITAL LETTER O WITH HORN AND TILDE *)
  | XK_ohorntilde                   (* U+1EE1 LATIN SMALL LETTER O WITH HORN AND TILDE *)
  | XK_Ohornbelowdot                (* U+1EE2 LATIN CAPITAL LETTER O WITH HORN AND DOT BELOW *)
  | XK_ohornbelowdot                (* U+1EE3 LATIN SMALL LETTER O WITH HORN AND DOT BELOW *)
  | XK_Ubelowdot                    (* U+1EE4 LATIN CAPITAL LETTER U WITH DOT BELOW *)
  | XK_ubelowdot                    (* U+1EE5 LATIN SMALL LETTER U WITH DOT BELOW *)
  | XK_Uhook                        (* U+1EE6 LATIN CAPITAL LETTER U WITH HOOK ABOVE *)
  | XK_uhook                        (* U+1EE7 LATIN SMALL LETTER U WITH HOOK ABOVE *)
  | XK_Uhornacute                   (* U+1EE8 LATIN CAPITAL LETTER U WITH HORN AND ACUTE *)
  | XK_uhornacute                   (* U+1EE9 LATIN SMALL LETTER U WITH HORN AND ACUTE *)
  | XK_Uhorngrave                   (* U+1EEA LATIN CAPITAL LETTER U WITH HORN AND GRAVE *)
  | XK_uhorngrave                   (* U+1EEB LATIN SMALL LETTER U WITH HORN AND GRAVE *)
  | XK_Uhornhook                    (* U+1EEC LATIN CAPITAL LETTER U WITH HORN AND HOOK ABOVE *)
  | XK_uhornhook                    (* U+1EED LATIN SMALL LETTER U WITH HORN AND HOOK ABOVE *)
  | XK_Uhorntilde                   (* U+1EEE LATIN CAPITAL LETTER U WITH HORN AND TILDE *)
  | XK_uhorntilde                   (* U+1EEF LATIN SMALL LETTER U WITH HORN AND TILDE *)
  | XK_Uhornbelowdot                (* U+1EF0 LATIN CAPITAL LETTER U WITH HORN AND DOT BELOW *)
  | XK_uhornbelowdot                (* U+1EF1 LATIN SMALL LETTER U WITH HORN AND DOT BELOW *)
  | XK_Ybelowdot                    (* U+1EF4 LATIN CAPITAL LETTER Y WITH DOT BELOW *)
  | XK_ybelowdot                    (* U+1EF5 LATIN SMALL LETTER Y WITH DOT BELOW *)
  | XK_Yhook                        (* U+1EF6 LATIN CAPITAL LETTER Y WITH HOOK ABOVE *)
  | XK_yhook                        (* U+1EF7 LATIN SMALL LETTER Y WITH HOOK ABOVE *)
  | XK_Ytilde                       (* U+1EF8 LATIN CAPITAL LETTER Y WITH TILDE *)
  | XK_ytilde                       (* U+1EF9 LATIN SMALL LETTER Y WITH TILDE *)
  | XK_Ohorn                        (* U+01A0 LATIN CAPITAL LETTER O WITH HORN *)
  | XK_ohorn                        (* U+01A1 LATIN SMALL LETTER O WITH HORN *)
  | XK_Uhorn                        (* U+01AF LATIN CAPITAL LETTER U WITH HORN *)
  | XK_uhorn                        (* U+01B0 LATIN SMALL LETTER U WITH HORN *)


  | XK_EcuSign                      (* U+20A0 EURO-CURRENCY SIGN *)
  | XK_ColonSign                    (* U+20A1 COLON SIGN *)
  | XK_CruzeiroSign                 (* U+20A2 CRUZEIRO SIGN *)
  | XK_FFrancSign                   (* U+20A3 FRENCH FRANC SIGN *)
  | XK_LiraSign                     (* U+20A4 LIRA SIGN *)
  | XK_MillSign                     (* U+20A5 MILL SIGN *)
  | XK_NairaSign                    (* U+20A6 NAIRA SIGN *)
  | XK_PesetaSign                   (* U+20A7 PESETA SIGN *)
  | XK_RupeeSign                    (* U+20A8 RUPEE SIGN *)
  | XK_WonSign                      (* U+20A9 WON SIGN *)
  | XK_NewSheqelSign                (* U+20AA NEW SHEQEL SIGN *)
  | XK_DongSign                     (* U+20AB DONG SIGN *)
  | XK_EuroSign                        (* U+20AC EURO SIGN *)

(* one, two and three are defined above. *)
  | XK_zerosuperior                 (* U+2070 SUPERSCRIPT ZERO *)
  | XK_foursuperior                 (* U+2074 SUPERSCRIPT FOUR *)
  | XK_fivesuperior                 (* U+2075 SUPERSCRIPT FIVE *)
  | XK_sixsuperior                  (* U+2076 SUPERSCRIPT SIX *)
  | XK_sevensuperior                (* U+2077 SUPERSCRIPT SEVEN *)
  | XK_eightsuperior                (* U+2078 SUPERSCRIPT EIGHT *)
  | XK_ninesuperior                 (* U+2079 SUPERSCRIPT NINE *)
  | XK_zerosubscript                (* U+2080 SUBSCRIPT ZERO *)
  | XK_onesubscript                 (* U+2081 SUBSCRIPT ONE *)
  | XK_twosubscript                 (* U+2082 SUBSCRIPT TWO *)
  | XK_threesubscript               (* U+2083 SUBSCRIPT THREE *)
  | XK_foursubscript                (* U+2084 SUBSCRIPT FOUR *)
  | XK_fivesubscript                (* U+2085 SUBSCRIPT FIVE *)
  | XK_sixsubscript                 (* U+2086 SUBSCRIPT SIX *)
  | XK_sevensubscript               (* U+2087 SUBSCRIPT SEVEN *)
  | XK_eightsubscript               (* U+2088 SUBSCRIPT EIGHT *)
  | XK_ninesubscript                (* U+2089 SUBSCRIPT NINE *)
  | XK_partdifferential             (* U+2202 PARTIAL DIFFERENTIAL *)
  | XK_emptyset                     (* U+2205 NULL SET *)
  | XK_elementof                    (* U+2208 ELEMENT OF *)
  | XK_notelementof                 (* U+2209 NOT AN ELEMENT OF *)
  | XK_containsas                   (* U+220B CONTAINS AS MEMBER *)
  | XK_squareroot                   (* U+221A SQUARE ROOT *)
  | XK_cuberoot                     (* U+221B CUBE ROOT *)
  | XK_fourthroot                   (* U+221C FOURTH ROOT *)
  | XK_dintegral                    (* U+222C DOUBLE INTEGRAL *)
  | XK_tintegral                    (* U+222D TRIPLE INTEGRAL *)
  | XK_because                      (* U+2235 BECAUSE *)
  | XK_approxeq                     (* U+2245 ALMOST EQUAL TO *)
  | XK_notapproxeq                  (* U+2247 NOT ALMOST EQUAL TO *)
  | XK_notidentical                 (* U+2262 NOT IDENTICAL TO *)
  | XK_stricteq                     (* U+2263 STRICTLY EQUIVALENT TO *)

  | XK_braille_dot_1
  | XK_braille_dot_2
  | XK_braille_dot_3
  | XK_braille_dot_4
  | XK_braille_dot_5
  | XK_braille_dot_6
  | XK_braille_dot_7
  | XK_braille_dot_8
  | XK_braille_dot_9
  | XK_braille_dot_10
  | XK_braille_blank                (* U+2800 BRAILLE PATTERN BLANK *)
  | XK_braille_dots_1               (* U+2801 BRAILLE PATTERN DOTS-1 *)
  | XK_braille_dots_2               (* U+2802 BRAILLE PATTERN DOTS-2 *)
  | XK_braille_dots_12              (* U+2803 BRAILLE PATTERN DOTS-12 *)
  | XK_braille_dots_3               (* U+2804 BRAILLE PATTERN DOTS-3 *)
  | XK_braille_dots_13              (* U+2805 BRAILLE PATTERN DOTS-13 *)
  | XK_braille_dots_23              (* U+2806 BRAILLE PATTERN DOTS-23 *)
  | XK_braille_dots_123             (* U+2807 BRAILLE PATTERN DOTS-123 *)
  | XK_braille_dots_4               (* U+2808 BRAILLE PATTERN DOTS-4 *)
  | XK_braille_dots_14              (* U+2809 BRAILLE PATTERN DOTS-14 *)
  | XK_braille_dots_24              (* U+280a BRAILLE PATTERN DOTS-24 *)
  | XK_braille_dots_124             (* U+280b BRAILLE PATTERN DOTS-124 *)
  | XK_braille_dots_34              (* U+280c BRAILLE PATTERN DOTS-34 *)
  | XK_braille_dots_134             (* U+280d BRAILLE PATTERN DOTS-134 *)
  | XK_braille_dots_234             (* U+280e BRAILLE PATTERN DOTS-234 *)
  | XK_braille_dots_1234            (* U+280f BRAILLE PATTERN DOTS-1234 *)
  | XK_braille_dots_5               (* U+2810 BRAILLE PATTERN DOTS-5 *)
  | XK_braille_dots_15              (* U+2811 BRAILLE PATTERN DOTS-15 *)
  | XK_braille_dots_25              (* U+2812 BRAILLE PATTERN DOTS-25 *)
  | XK_braille_dots_125             (* U+2813 BRAILLE PATTERN DOTS-125 *)
  | XK_braille_dots_35              (* U+2814 BRAILLE PATTERN DOTS-35 *)
  | XK_braille_dots_135             (* U+2815 BRAILLE PATTERN DOTS-135 *)
  | XK_braille_dots_235             (* U+2816 BRAILLE PATTERN DOTS-235 *)
  | XK_braille_dots_1235            (* U+2817 BRAILLE PATTERN DOTS-1235 *)
  | XK_braille_dots_45              (* U+2818 BRAILLE PATTERN DOTS-45 *)
  | XK_braille_dots_145             (* U+2819 BRAILLE PATTERN DOTS-145 *)
  | XK_braille_dots_245             (* U+281a BRAILLE PATTERN DOTS-245 *)
  | XK_braille_dots_1245            (* U+281b BRAILLE PATTERN DOTS-1245 *)
  | XK_braille_dots_345             (* U+281c BRAILLE PATTERN DOTS-345 *)
  | XK_braille_dots_1345            (* U+281d BRAILLE PATTERN DOTS-1345 *)
  | XK_braille_dots_2345            (* U+281e BRAILLE PATTERN DOTS-2345 *)
  | XK_braille_dots_12345           (* U+281f BRAILLE PATTERN DOTS-12345 *)
  | XK_braille_dots_6               (* U+2820 BRAILLE PATTERN DOTS-6 *)
  | XK_braille_dots_16              (* U+2821 BRAILLE PATTERN DOTS-16 *)
  | XK_braille_dots_26              (* U+2822 BRAILLE PATTERN DOTS-26 *)
  | XK_braille_dots_126             (* U+2823 BRAILLE PATTERN DOTS-126 *)
  | XK_braille_dots_36              (* U+2824 BRAILLE PATTERN DOTS-36 *)
  | XK_braille_dots_136             (* U+2825 BRAILLE PATTERN DOTS-136 *)
  | XK_braille_dots_236             (* U+2826 BRAILLE PATTERN DOTS-236 *)
  | XK_braille_dots_1236            (* U+2827 BRAILLE PATTERN DOTS-1236 *)
  | XK_braille_dots_46              (* U+2828 BRAILLE PATTERN DOTS-46 *)
  | XK_braille_dots_146             (* U+2829 BRAILLE PATTERN DOTS-146 *)
  | XK_braille_dots_246             (* U+282a BRAILLE PATTERN DOTS-246 *)
  | XK_braille_dots_1246            (* U+282b BRAILLE PATTERN DOTS-1246 *)
  | XK_braille_dots_346             (* U+282c BRAILLE PATTERN DOTS-346 *)
  | XK_braille_dots_1346            (* U+282d BRAILLE PATTERN DOTS-1346 *)
  | XK_braille_dots_2346            (* U+282e BRAILLE PATTERN DOTS-2346 *)
  | XK_braille_dots_12346           (* U+282f BRAILLE PATTERN DOTS-12346 *)
  | XK_braille_dots_56              (* U+2830 BRAILLE PATTERN DOTS-56 *)
  | XK_braille_dots_156             (* U+2831 BRAILLE PATTERN DOTS-156 *)
  | XK_braille_dots_256             (* U+2832 BRAILLE PATTERN DOTS-256 *)
  | XK_braille_dots_1256            (* U+2833 BRAILLE PATTERN DOTS-1256 *)
  | XK_braille_dots_356             (* U+2834 BRAILLE PATTERN DOTS-356 *)
  | XK_braille_dots_1356            (* U+2835 BRAILLE PATTERN DOTS-1356 *)
  | XK_braille_dots_2356            (* U+2836 BRAILLE PATTERN DOTS-2356 *)
  | XK_braille_dots_12356           (* U+2837 BRAILLE PATTERN DOTS-12356 *)
  | XK_braille_dots_456             (* U+2838 BRAILLE PATTERN DOTS-456 *)
  | XK_braille_dots_1456            (* U+2839 BRAILLE PATTERN DOTS-1456 *)
  | XK_braille_dots_2456            (* U+283a BRAILLE PATTERN DOTS-2456 *)
  | XK_braille_dots_12456           (* U+283b BRAILLE PATTERN DOTS-12456 *)
  | XK_braille_dots_3456            (* U+283c BRAILLE PATTERN DOTS-3456 *)
  | XK_braille_dots_13456           (* U+283d BRAILLE PATTERN DOTS-13456 *)
  | XK_braille_dots_23456           (* U+283e BRAILLE PATTERN DOTS-23456 *)
  | XK_braille_dots_123456          (* U+283f BRAILLE PATTERN DOTS-123456 *)
  | XK_braille_dots_7               (* U+2840 BRAILLE PATTERN DOTS-7 *)
  | XK_braille_dots_17              (* U+2841 BRAILLE PATTERN DOTS-17 *)
  | XK_braille_dots_27              (* U+2842 BRAILLE PATTERN DOTS-27 *)
  | XK_braille_dots_127             (* U+2843 BRAILLE PATTERN DOTS-127 *)
  | XK_braille_dots_37              (* U+2844 BRAILLE PATTERN DOTS-37 *)
  | XK_braille_dots_137             (* U+2845 BRAILLE PATTERN DOTS-137 *)
  | XK_braille_dots_237             (* U+2846 BRAILLE PATTERN DOTS-237 *)
  | XK_braille_dots_1237            (* U+2847 BRAILLE PATTERN DOTS-1237 *)
  | XK_braille_dots_47              (* U+2848 BRAILLE PATTERN DOTS-47 *)
  | XK_braille_dots_147             (* U+2849 BRAILLE PATTERN DOTS-147 *)
  | XK_braille_dots_247             (* U+284a BRAILLE PATTERN DOTS-247 *)
  | XK_braille_dots_1247            (* U+284b BRAILLE PATTERN DOTS-1247 *)
  | XK_braille_dots_347             (* U+284c BRAILLE PATTERN DOTS-347 *)
  | XK_braille_dots_1347            (* U+284d BRAILLE PATTERN DOTS-1347 *)
  | XK_braille_dots_2347            (* U+284e BRAILLE PATTERN DOTS-2347 *)
  | XK_braille_dots_12347           (* U+284f BRAILLE PATTERN DOTS-12347 *)
  | XK_braille_dots_57              (* U+2850 BRAILLE PATTERN DOTS-57 *)
  | XK_braille_dots_157             (* U+2851 BRAILLE PATTERN DOTS-157 *)
  | XK_braille_dots_257             (* U+2852 BRAILLE PATTERN DOTS-257 *)
  | XK_braille_dots_1257            (* U+2853 BRAILLE PATTERN DOTS-1257 *)
  | XK_braille_dots_357             (* U+2854 BRAILLE PATTERN DOTS-357 *)
  | XK_braille_dots_1357            (* U+2855 BRAILLE PATTERN DOTS-1357 *)
  | XK_braille_dots_2357            (* U+2856 BRAILLE PATTERN DOTS-2357 *)
  | XK_braille_dots_12357           (* U+2857 BRAILLE PATTERN DOTS-12357 *)
  | XK_braille_dots_457             (* U+2858 BRAILLE PATTERN DOTS-457 *)
  | XK_braille_dots_1457            (* U+2859 BRAILLE PATTERN DOTS-1457 *)
  | XK_braille_dots_2457            (* U+285a BRAILLE PATTERN DOTS-2457 *)
  | XK_braille_dots_12457           (* U+285b BRAILLE PATTERN DOTS-12457 *)
  | XK_braille_dots_3457            (* U+285c BRAILLE PATTERN DOTS-3457 *)
  | XK_braille_dots_13457           (* U+285d BRAILLE PATTERN DOTS-13457 *)
  | XK_braille_dots_23457           (* U+285e BRAILLE PATTERN DOTS-23457 *)
  | XK_braille_dots_123457          (* U+285f BRAILLE PATTERN DOTS-123457 *)
  | XK_braille_dots_67              (* U+2860 BRAILLE PATTERN DOTS-67 *)
  | XK_braille_dots_167             (* U+2861 BRAILLE PATTERN DOTS-167 *)
  | XK_braille_dots_267             (* U+2862 BRAILLE PATTERN DOTS-267 *)
  | XK_braille_dots_1267            (* U+2863 BRAILLE PATTERN DOTS-1267 *)
  | XK_braille_dots_367             (* U+2864 BRAILLE PATTERN DOTS-367 *)
  | XK_braille_dots_1367            (* U+2865 BRAILLE PATTERN DOTS-1367 *)
  | XK_braille_dots_2367            (* U+2866 BRAILLE PATTERN DOTS-2367 *)
  | XK_braille_dots_12367           (* U+2867 BRAILLE PATTERN DOTS-12367 *)
  | XK_braille_dots_467             (* U+2868 BRAILLE PATTERN DOTS-467 *)
  | XK_braille_dots_1467            (* U+2869 BRAILLE PATTERN DOTS-1467 *)
  | XK_braille_dots_2467            (* U+286a BRAILLE PATTERN DOTS-2467 *)
  | XK_braille_dots_12467           (* U+286b BRAILLE PATTERN DOTS-12467 *)
  | XK_braille_dots_3467            (* U+286c BRAILLE PATTERN DOTS-3467 *)
  | XK_braille_dots_13467           (* U+286d BRAILLE PATTERN DOTS-13467 *)
  | XK_braille_dots_23467           (* U+286e BRAILLE PATTERN DOTS-23467 *)
  | XK_braille_dots_123467          (* U+286f BRAILLE PATTERN DOTS-123467 *)
  | XK_braille_dots_567             (* U+2870 BRAILLE PATTERN DOTS-567 *)
  | XK_braille_dots_1567            (* U+2871 BRAILLE PATTERN DOTS-1567 *)
  | XK_braille_dots_2567            (* U+2872 BRAILLE PATTERN DOTS-2567 *)
  | XK_braille_dots_12567           (* U+2873 BRAILLE PATTERN DOTS-12567 *)
  | XK_braille_dots_3567            (* U+2874 BRAILLE PATTERN DOTS-3567 *)
  | XK_braille_dots_13567           (* U+2875 BRAILLE PATTERN DOTS-13567 *)
  | XK_braille_dots_23567           (* U+2876 BRAILLE PATTERN DOTS-23567 *)
  | XK_braille_dots_123567          (* U+2877 BRAILLE PATTERN DOTS-123567 *)
  | XK_braille_dots_4567            (* U+2878 BRAILLE PATTERN DOTS-4567 *)
  | XK_braille_dots_14567           (* U+2879 BRAILLE PATTERN DOTS-14567 *)
  | XK_braille_dots_24567           (* U+287a BRAILLE PATTERN DOTS-24567 *)
  | XK_braille_dots_124567          (* U+287b BRAILLE PATTERN DOTS-124567 *)
  | XK_braille_dots_34567           (* U+287c BRAILLE PATTERN DOTS-34567 *)
  | XK_braille_dots_134567          (* U+287d BRAILLE PATTERN DOTS-134567 *)
  | XK_braille_dots_234567          (* U+287e BRAILLE PATTERN DOTS-234567 *)
  | XK_braille_dots_1234567         (* U+287f BRAILLE PATTERN DOTS-1234567 *)
  | XK_braille_dots_8               (* U+2880 BRAILLE PATTERN DOTS-8 *)
  | XK_braille_dots_18              (* U+2881 BRAILLE PATTERN DOTS-18 *)
  | XK_braille_dots_28              (* U+2882 BRAILLE PATTERN DOTS-28 *)
  | XK_braille_dots_128             (* U+2883 BRAILLE PATTERN DOTS-128 *)
  | XK_braille_dots_38              (* U+2884 BRAILLE PATTERN DOTS-38 *)
  | XK_braille_dots_138             (* U+2885 BRAILLE PATTERN DOTS-138 *)
  | XK_braille_dots_238             (* U+2886 BRAILLE PATTERN DOTS-238 *)
  | XK_braille_dots_1238            (* U+2887 BRAILLE PATTERN DOTS-1238 *)
  | XK_braille_dots_48              (* U+2888 BRAILLE PATTERN DOTS-48 *)
  | XK_braille_dots_148             (* U+2889 BRAILLE PATTERN DOTS-148 *)
  | XK_braille_dots_248             (* U+288a BRAILLE PATTERN DOTS-248 *)
  | XK_braille_dots_1248            (* U+288b BRAILLE PATTERN DOTS-1248 *)
  | XK_braille_dots_348             (* U+288c BRAILLE PATTERN DOTS-348 *)
  | XK_braille_dots_1348            (* U+288d BRAILLE PATTERN DOTS-1348 *)
  | XK_braille_dots_2348            (* U+288e BRAILLE PATTERN DOTS-2348 *)
  | XK_braille_dots_12348           (* U+288f BRAILLE PATTERN DOTS-12348 *)
  | XK_braille_dots_58              (* U+2890 BRAILLE PATTERN DOTS-58 *)
  | XK_braille_dots_158             (* U+2891 BRAILLE PATTERN DOTS-158 *)
  | XK_braille_dots_258             (* U+2892 BRAILLE PATTERN DOTS-258 *)
  | XK_braille_dots_1258            (* U+2893 BRAILLE PATTERN DOTS-1258 *)
  | XK_braille_dots_358             (* U+2894 BRAILLE PATTERN DOTS-358 *)
  | XK_braille_dots_1358            (* U+2895 BRAILLE PATTERN DOTS-1358 *)
  | XK_braille_dots_2358            (* U+2896 BRAILLE PATTERN DOTS-2358 *)
  | XK_braille_dots_12358           (* U+2897 BRAILLE PATTERN DOTS-12358 *)
  | XK_braille_dots_458             (* U+2898 BRAILLE PATTERN DOTS-458 *)
  | XK_braille_dots_1458            (* U+2899 BRAILLE PATTERN DOTS-1458 *)
  | XK_braille_dots_2458            (* U+289a BRAILLE PATTERN DOTS-2458 *)
  | XK_braille_dots_12458           (* U+289b BRAILLE PATTERN DOTS-12458 *)
  | XK_braille_dots_3458            (* U+289c BRAILLE PATTERN DOTS-3458 *)
  | XK_braille_dots_13458           (* U+289d BRAILLE PATTERN DOTS-13458 *)
  | XK_braille_dots_23458           (* U+289e BRAILLE PATTERN DOTS-23458 *)
  | XK_braille_dots_123458          (* U+289f BRAILLE PATTERN DOTS-123458 *)
  | XK_braille_dots_68              (* U+28a0 BRAILLE PATTERN DOTS-68 *)
  | XK_braille_dots_168             (* U+28a1 BRAILLE PATTERN DOTS-168 *)
  | XK_braille_dots_268             (* U+28a2 BRAILLE PATTERN DOTS-268 *)
  | XK_braille_dots_1268            (* U+28a3 BRAILLE PATTERN DOTS-1268 *)
  | XK_braille_dots_368             (* U+28a4 BRAILLE PATTERN DOTS-368 *)
  | XK_braille_dots_1368            (* U+28a5 BRAILLE PATTERN DOTS-1368 *)
  | XK_braille_dots_2368            (* U+28a6 BRAILLE PATTERN DOTS-2368 *)
  | XK_braille_dots_12368           (* U+28a7 BRAILLE PATTERN DOTS-12368 *)
  | XK_braille_dots_468             (* U+28a8 BRAILLE PATTERN DOTS-468 *)
  | XK_braille_dots_1468            (* U+28a9 BRAILLE PATTERN DOTS-1468 *)
  | XK_braille_dots_2468            (* U+28aa BRAILLE PATTERN DOTS-2468 *)
  | XK_braille_dots_12468           (* U+28ab BRAILLE PATTERN DOTS-12468 *)
  | XK_braille_dots_3468            (* U+28ac BRAILLE PATTERN DOTS-3468 *)
  | XK_braille_dots_13468           (* U+28ad BRAILLE PATTERN DOTS-13468 *)
  | XK_braille_dots_23468           (* U+28ae BRAILLE PATTERN DOTS-23468 *)
  | XK_braille_dots_123468          (* U+28af BRAILLE PATTERN DOTS-123468 *)
  | XK_braille_dots_568             (* U+28b0 BRAILLE PATTERN DOTS-568 *)
  | XK_braille_dots_1568            (* U+28b1 BRAILLE PATTERN DOTS-1568 *)
  | XK_braille_dots_2568            (* U+28b2 BRAILLE PATTERN DOTS-2568 *)
  | XK_braille_dots_12568           (* U+28b3 BRAILLE PATTERN DOTS-12568 *)
  | XK_braille_dots_3568            (* U+28b4 BRAILLE PATTERN DOTS-3568 *)
  | XK_braille_dots_13568           (* U+28b5 BRAILLE PATTERN DOTS-13568 *)
  | XK_braille_dots_23568           (* U+28b6 BRAILLE PATTERN DOTS-23568 *)
  | XK_braille_dots_123568          (* U+28b7 BRAILLE PATTERN DOTS-123568 *)
  | XK_braille_dots_4568            (* U+28b8 BRAILLE PATTERN DOTS-4568 *)
  | XK_braille_dots_14568           (* U+28b9 BRAILLE PATTERN DOTS-14568 *)
  | XK_braille_dots_24568           (* U+28ba BRAILLE PATTERN DOTS-24568 *)
  | XK_braille_dots_124568          (* U+28bb BRAILLE PATTERN DOTS-124568 *)
  | XK_braille_dots_34568           (* U+28bc BRAILLE PATTERN DOTS-34568 *)
  | XK_braille_dots_134568          (* U+28bd BRAILLE PATTERN DOTS-134568 *)
  | XK_braille_dots_234568          (* U+28be BRAILLE PATTERN DOTS-234568 *)
  | XK_braille_dots_1234568         (* U+28bf BRAILLE PATTERN DOTS-1234568 *)
  | XK_braille_dots_78              (* U+28c0 BRAILLE PATTERN DOTS-78 *)
  | XK_braille_dots_178             (* U+28c1 BRAILLE PATTERN DOTS-178 *)
  | XK_braille_dots_278             (* U+28c2 BRAILLE PATTERN DOTS-278 *)
  | XK_braille_dots_1278            (* U+28c3 BRAILLE PATTERN DOTS-1278 *)
  | XK_braille_dots_378             (* U+28c4 BRAILLE PATTERN DOTS-378 *)
  | XK_braille_dots_1378            (* U+28c5 BRAILLE PATTERN DOTS-1378 *)
  | XK_braille_dots_2378            (* U+28c6 BRAILLE PATTERN DOTS-2378 *)
  | XK_braille_dots_12378           (* U+28c7 BRAILLE PATTERN DOTS-12378 *)
  | XK_braille_dots_478             (* U+28c8 BRAILLE PATTERN DOTS-478 *)
  | XK_braille_dots_1478            (* U+28c9 BRAILLE PATTERN DOTS-1478 *)
  | XK_braille_dots_2478            (* U+28ca BRAILLE PATTERN DOTS-2478 *)
  | XK_braille_dots_12478           (* U+28cb BRAILLE PATTERN DOTS-12478 *)
  | XK_braille_dots_3478            (* U+28cc BRAILLE PATTERN DOTS-3478 *)
  | XK_braille_dots_13478           (* U+28cd BRAILLE PATTERN DOTS-13478 *)
  | XK_braille_dots_23478           (* U+28ce BRAILLE PATTERN DOTS-23478 *)
  | XK_braille_dots_123478          (* U+28cf BRAILLE PATTERN DOTS-123478 *)
  | XK_braille_dots_578             (* U+28d0 BRAILLE PATTERN DOTS-578 *)
  | XK_braille_dots_1578            (* U+28d1 BRAILLE PATTERN DOTS-1578 *)
  | XK_braille_dots_2578            (* U+28d2 BRAILLE PATTERN DOTS-2578 *)
  | XK_braille_dots_12578           (* U+28d3 BRAILLE PATTERN DOTS-12578 *)
  | XK_braille_dots_3578            (* U+28d4 BRAILLE PATTERN DOTS-3578 *)
  | XK_braille_dots_13578           (* U+28d5 BRAILLE PATTERN DOTS-13578 *)
  | XK_braille_dots_23578           (* U+28d6 BRAILLE PATTERN DOTS-23578 *)
  | XK_braille_dots_123578          (* U+28d7 BRAILLE PATTERN DOTS-123578 *)
  | XK_braille_dots_4578            (* U+28d8 BRAILLE PATTERN DOTS-4578 *)
  | XK_braille_dots_14578           (* U+28d9 BRAILLE PATTERN DOTS-14578 *)
  | XK_braille_dots_24578           (* U+28da BRAILLE PATTERN DOTS-24578 *)
  | XK_braille_dots_124578          (* U+28db BRAILLE PATTERN DOTS-124578 *)
  | XK_braille_dots_34578           (* U+28dc BRAILLE PATTERN DOTS-34578 *)
  | XK_braille_dots_134578          (* U+28dd BRAILLE PATTERN DOTS-134578 *)
  | XK_braille_dots_234578          (* U+28de BRAILLE PATTERN DOTS-234578 *)
  | XK_braille_dots_1234578         (* U+28df BRAILLE PATTERN DOTS-1234578 *)
  | XK_braille_dots_678             (* U+28e0 BRAILLE PATTERN DOTS-678 *)
  | XK_braille_dots_1678            (* U+28e1 BRAILLE PATTERN DOTS-1678 *)
  | XK_braille_dots_2678            (* U+28e2 BRAILLE PATTERN DOTS-2678 *)
  | XK_braille_dots_12678           (* U+28e3 BRAILLE PATTERN DOTS-12678 *)
  | XK_braille_dots_3678            (* U+28e4 BRAILLE PATTERN DOTS-3678 *)
  | XK_braille_dots_13678           (* U+28e5 BRAILLE PATTERN DOTS-13678 *)
  | XK_braille_dots_23678           (* U+28e6 BRAILLE PATTERN DOTS-23678 *)
  | XK_braille_dots_123678          (* U+28e7 BRAILLE PATTERN DOTS-123678 *)
  | XK_braille_dots_4678            (* U+28e8 BRAILLE PATTERN DOTS-4678 *)
  | XK_braille_dots_14678           (* U+28e9 BRAILLE PATTERN DOTS-14678 *)
  | XK_braille_dots_24678           (* U+28ea BRAILLE PATTERN DOTS-24678 *)
  | XK_braille_dots_124678          (* U+28eb BRAILLE PATTERN DOTS-124678 *)
  | XK_braille_dots_34678           (* U+28ec BRAILLE PATTERN DOTS-34678 *)
  | XK_braille_dots_134678          (* U+28ed BRAILLE PATTERN DOTS-134678 *)
  | XK_braille_dots_234678          (* U+28ee BRAILLE PATTERN DOTS-234678 *)
  | XK_braille_dots_1234678         (* U+28ef BRAILLE PATTERN DOTS-1234678 *)
  | XK_braille_dots_5678            (* U+28f0 BRAILLE PATTERN DOTS-5678 *)
  | XK_braille_dots_15678           (* U+28f1 BRAILLE PATTERN DOTS-15678 *)
  | XK_braille_dots_25678           (* U+28f2 BRAILLE PATTERN DOTS-25678 *)
  | XK_braille_dots_125678          (* U+28f3 BRAILLE PATTERN DOTS-125678 *)
  | XK_braille_dots_35678           (* U+28f4 BRAILLE PATTERN DOTS-35678 *)
  | XK_braille_dots_135678          (* U+28f5 BRAILLE PATTERN DOTS-135678 *)
  | XK_braille_dots_235678          (* U+28f6 BRAILLE PATTERN DOTS-235678 *)
  | XK_braille_dots_1235678         (* U+28f7 BRAILLE PATTERN DOTS-1235678 *)
  | XK_braille_dots_45678           (* U+28f8 BRAILLE PATTERN DOTS-45678 *)
  | XK_braille_dots_145678          (* U+28f9 BRAILLE PATTERN DOTS-145678 *)
  | XK_braille_dots_245678          (* U+28fa BRAILLE PATTERN DOTS-245678 *)
  | XK_braille_dots_1245678         (* U+28fb BRAILLE PATTERN DOTS-1245678 *)
  | XK_braille_dots_345678          (* U+28fc BRAILLE PATTERN DOTS-345678 *)
  | XK_braille_dots_1345678         (* U+28fd BRAILLE PATTERN DOTS-1345678 *)
  | XK_braille_dots_2345678         (* U+28fe BRAILLE PATTERN DOTS-2345678 *)
  | XK_braille_dots_12345678        (* U+28ff BRAILLE PATTERN DOTS-12345678 *)

(*
 * Sinhala (http://unicode.org/charts/PDF/U0D80.pdf)
 * http://www.nongnu.org/sinhala/doc/transliteration/sinhala-transliteration_6.html
 *)

  | XK_Sinh_ng              (* U+0D82 SINHALA ANUSVARAYA *)
  | XK_Sinh_h2              (* U+0D83 SINHALA VISARGAYA *)
  | XK_Sinh_a               (* U+0D85 SINHALA AYANNA *)
  | XK_Sinh_aa              (* U+0D86 SINHALA AAYANNA *)
  | XK_Sinh_ae              (* U+0D87 SINHALA AEYANNA *)
  | XK_Sinh_aee             (* U+0D88 SINHALA AEEYANNA *)
  | XK_Sinh_i               (* U+0D89 SINHALA IYANNA *)
  | XK_Sinh_ii              (* U+0D8A SINHALA IIYANNA *)
  | XK_Sinh_u               (* U+0D8B SINHALA UYANNA *)
  | XK_Sinh_uu              (* U+0D8C SINHALA UUYANNA *)
  | XK_Sinh_ri              (* U+0D8D SINHALA IRUYANNA *)
  | XK_Sinh_rii             (* U+0D8E SINHALA IRUUYANNA *)
  | XK_Sinh_lu              (* U+0D8F SINHALA ILUYANNA *)
  | XK_Sinh_luu             (* U+0D90 SINHALA ILUUYANNA *)
  | XK_Sinh_e               (* U+0D91 SINHALA EYANNA *)
  | XK_Sinh_ee              (* U+0D92 SINHALA EEYANNA *)
  | XK_Sinh_ai              (* U+0D93 SINHALA AIYANNA *)
  | XK_Sinh_o               (* U+0D94 SINHALA OYANNA *)
  | XK_Sinh_oo              (* U+0D95 SINHALA OOYANNA *)
  | XK_Sinh_au              (* U+0D96 SINHALA AUYANNA *)
  | XK_Sinh_ka              (* U+0D9A SINHALA KAYANNA *)
  | XK_Sinh_kha             (* U+0D9B SINHALA MAHA. KAYANNA *)
  | XK_Sinh_ga              (* U+0D9C SINHALA GAYANNA *)
  | XK_Sinh_gha             (* U+0D9D SINHALA MAHA. GAYANNA *)
  | XK_Sinh_ng2             (* U+0D9E SINHALA KANTAJA NAASIKYAYA *)
  | XK_Sinh_nga             (* U+0D9F SINHALA SANYAKA GAYANNA *)
  | XK_Sinh_ca              (* U+0DA0 SINHALA CAYANNA *)
  | XK_Sinh_cha             (* U+0DA1 SINHALA MAHA. CAYANNA *)
  | XK_Sinh_ja              (* U+0DA2 SINHALA JAYANNA *)
  | XK_Sinh_jha             (* U+0DA3 SINHALA MAHA. JAYANNA *)
  | XK_Sinh_nya             (* U+0DA4 SINHALA TAALUJA NAASIKYAYA *)
  | XK_Sinh_jnya            (* U+0DA5 SINHALA TAALUJA SANYOOGA NAASIKYAYA *)
  | XK_Sinh_nja             (* U+0DA6 SINHALA SANYAKA JAYANNA *)
  | XK_Sinh_tta             (* U+0DA7 SINHALA TTAYANNA *)
  | XK_Sinh_ttha            (* U+0DA8 SINHALA MAHA. TTAYANNA *)
  | XK_Sinh_dda             (* U+0DA9 SINHALA DDAYANNA *)
  | XK_Sinh_ddha            (* U+0DAA SINHALA MAHA. DDAYANNA *)
  | XK_Sinh_nna             (* U+0DAB SINHALA MUURDHAJA NAYANNA *)
  | XK_Sinh_ndda            (* U+0DAC SINHALA SANYAKA DDAYANNA *)
  | XK_Sinh_tha             (* U+0DAD SINHALA TAYANNA *)
  | XK_Sinh_thha            (* U+0DAE SINHALA MAHA. TAYANNA *)
  | XK_Sinh_dha             (* U+0DAF SINHALA DAYANNA *)
  | XK_Sinh_dhha            (* U+0DB0 SINHALA MAHA. DAYANNA *)
  | XK_Sinh_na              (* U+0DB1 SINHALA DANTAJA NAYANNA *)
  | XK_Sinh_ndha            (* U+0DB3 SINHALA SANYAKA DAYANNA *)
  | XK_Sinh_pa              (* U+0DB4 SINHALA PAYANNA *)
  | XK_Sinh_pha             (* U+0DB5 SINHALA MAHA. PAYANNA *)
  | XK_Sinh_ba              (* U+0DB6 SINHALA BAYANNA *)
  | XK_Sinh_bha             (* U+0DB7 SINHALA MAHA. BAYANNA *)
  | XK_Sinh_ma              (* U+0DB8 SINHALA MAYANNA *)
  | XK_Sinh_mba             (* U+0DB9 SINHALA AMBA BAYANNA *)
  | XK_Sinh_ya              (* U+0DBA SINHALA YAYANNA *)
  | XK_Sinh_ra              (* U+0DBB SINHALA RAYANNA *)
  | XK_Sinh_la              (* U+0DBD SINHALA DANTAJA LAYANNA *)
  | XK_Sinh_va              (* U+0DC0 SINHALA VAYANNA *)
  | XK_Sinh_sha             (* U+0DC1 SINHALA TAALUJA SAYANNA *)
  | XK_Sinh_ssha            (* U+0DC2 SINHALA MUURDHAJA SAYANNA *)
  | XK_Sinh_sa              (* U+0DC3 SINHALA DANTAJA SAYANNA *)
  | XK_Sinh_ha              (* U+0DC4 SINHALA HAYANNA *)
  | XK_Sinh_lla             (* U+0DC5 SINHALA MUURDHAJA LAYANNA *)
  | XK_Sinh_fa              (* U+0DC6 SINHALA FAYANNA *)
  | XK_Sinh_al              (* U+0DCA SINHALA AL-LAKUNA *)
  | XK_Sinh_aa2             (* U+0DCF SINHALA AELA-PILLA *)
  | XK_Sinh_ae2             (* U+0DD0 SINHALA AEDA-PILLA *)
  | XK_Sinh_aee2            (* U+0DD1 SINHALA DIGA AEDA-PILLA *)
  | XK_Sinh_i2              (* U+0DD2 SINHALA IS-PILLA *)
  | XK_Sinh_ii2             (* U+0DD3 SINHALA DIGA IS-PILLA *)
  | XK_Sinh_u2              (* U+0DD4 SINHALA PAA-PILLA *)
  | XK_Sinh_uu2             (* U+0DD6 SINHALA DIGA PAA-PILLA *)
  | XK_Sinh_ru2             (* U+0DD8 SINHALA GAETTA-PILLA *)
  | XK_Sinh_e2              (* U+0DD9 SINHALA KOMBUVA *)
  | XK_Sinh_ee2             (* U+0DDA SINHALA DIGA KOMBUVA *)
  | XK_Sinh_ai2             (* U+0DDB SINHALA KOMBU DEKA *)
  | XK_Sinh_o2              (* U+0DDC SINHALA KOMBUVA HAA AELA-PILLA*)
  | XK_Sinh_oo2             (* U+0DDD SINHALA KOMBUVA HAA DIGA AELA-PILLA*)
  | XK_Sinh_au2             (* U+0DDE SINHALA KOMBUVA HAA GAYANUKITTA *)
  | XK_Sinh_lu2             (* U+0DDF SINHALA GAYANUKITTA *)
  | XK_Sinh_ruu2            (* U+0DF2 SINHALA DIGA GAETTA-PILLA *)
  | XK_Sinh_luu2            (* U+0DF3 SINHALA DIGA GAYANUKITTA *)
  | XK_Sinh_kunddaliya      (* U+0DF4 SINHALA KUNDDALIYA *)

  | Unknown

val to_int : t -> int
