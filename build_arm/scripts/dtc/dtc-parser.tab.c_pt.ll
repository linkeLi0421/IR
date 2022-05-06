; ModuleID = '/llk/IR/build_arm/scripts/dtc/dtc-parser.tab.c_pt.bc'
source_filename = "scripts/dtc/dtc-parser.tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcpos = type { i32, i32, i32, i32, ptr, ptr }
%union.YYSTYPE = type { %struct.anon }
%struct.anon = type { %struct.data, i32 }
%struct.data = type { i32, ptr, ptr }
%union.yyalloc = type { %union.YYSTYPE }
%struct.reserve_info = type { i64, i64, ptr, ptr }
%struct.node = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i8, i8 }
%struct.property = type { i8, ptr, %struct.data, ptr, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@yydebug = dso_local local_unnamed_addr global i32 0, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"Starting parse\0A\00", align 1
@yynerrs = dso_local local_unnamed_addr global i32 0, align 4
@yychar = dso_local local_unnamed_addr global i32 0, align 4
@yylloc = dso_local global %struct.srcpos zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Entering state %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Stack size increased to %ld\0A\00", align 1
@yypact = internal unnamed_addr constant [162 x i8] c"\10\0D\15\10\0F(\D2\D2\FD\0F\1A\0F\19\D2\D2\FA\FD\D2\D2\D2&&;\D2\D2\FA\FA\FA\D2#\D2\02E,74D\FEd@\ED\D2K\D2\D2\D2VVV&&&\D2\D2\D2\D2\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\D2IU\\&\D2\D2\D2E<,74D\FE\FEdddd@@\ED\ED\D2\D2\D2hiLJI\D2^I\D2\D2\D2\FAbc&L\D2\D2\D2\D2\D2\D2e\D2\D2\D2\D2\D2\FB\17\D2\D2\D2\D2l\D2\D2_\D2\D2\D2-Bk \D2\D2\D2\D2\D2M\D2\D2\D2\FD\D2`\FDa\D2", align 16
@.str.3 = private unnamed_addr constant [18 x i8] c"Reading a token: \00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Now at end of input.\0A\00", align 1
@yytranslate = internal unnamed_addr constant [282 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\021\02\02\02/+\02#%.,$-\02\1C\02\02\02\02\02\02\02\02\02\02(\1B&\1F '\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02!\02\22*\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\1D)\1E0\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A", align 16
@.str.5 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Next token is\00", align 1
@yylval = dso_local global %union.YYSTYPE zeroinitializer, align 8
@yycheck = internal unnamed_addr constant [152 x i16] [i16 8, i16 46, i16 47, i16 48, i16 20, i16 21, i16 8, i16 9, i16 16, i16 28, i16 25, i16 26, i16 27, i16 19, i16 20, i16 13, i16 19, i16 20, i16 23, i16 3, i16 5, i16 0, i16 27, i16 64, i16 65, i16 66, i16 67, i16 46, i16 47, i16 35, i16 32, i16 36, i16 35, i16 49, i16 50, i16 51, i16 38, i16 14, i16 23, i16 45, i16 27, i16 39, i16 48, i16 49, i16 4, i16 22, i16 23, i16 24, i16 25, i16 26, i16 24, i16 25, i16 27, i16 21, i16 28, i16 23, i16 33, i16 72, i16 73, i16 74, i16 104, i16 38, i16 106, i16 79, i16 19, i16 20, i16 34, i16 29, i16 23, i16 24, i16 25, i16 106, i16 37, i16 117, i16 109, i16 16, i16 17, i16 32, i16 10, i16 11, i16 35, i16 12, i16 23, i16 24, i16 25, i16 41, i16 131, i16 28, i16 15, i16 16, i16 17, i16 18, i16 16, i16 17, i16 18, i16 43, i16 23, i16 42, i16 143, i16 23, i16 40, i16 27, i16 27, i16 29, i16 38, i16 31, i16 6, i16 7, i16 44, i16 45, i16 24, i16 25, i16 27, i16 36, i16 37, i16 62, i16 63, i16 68, i16 69, i16 27, i16 70, i16 71, i16 18, i16 18, i16 30, i16 27, i16 27, i16 19, i16 27, i16 22, i16 35, i16 3, i16 36, i16 11, i16 37, i16 143, i16 9, i16 57, i16 56, i16 58, i16 113, i16 -1, i16 59, i16 109, i16 60, i16 -1, i16 -1, i16 -1, i16 156, i16 61, i16 -1, i16 159], align 16
@yytable = internal unnamed_addr constant [152 x i8] c"\10MNO,-@A*H456\0D\0E8\0D\0E\85\01\08\06\86[\\]^IJ\0FB\87\0FPQRC\88\09\19\059\1A\1B\0C\89\8A\12\13\8B\12\13\18\99\14\9A\8Ccdev\8D{p\0D\0E\9B+\93\12\13z7{}./\94>?\0F:012;\8E3fghight=j<\95uqwK+\97xDEFG\12\13n\9C\9DYZ_`oabrs|\80\81\90\84\98\91\07\9F\17\A1\96\11TSU\7F\00V~W\00\00\00\9EX\00\A0", align 16
@.str.8 = private unnamed_addr constant [9 x i8] c"Shifting\00", align 1
@yydefact = internal unnamed_addr constant [162 x i8] c"\00\00\00\05\07\03\01\06\00\00\00\07\00+,\00\00\0A\0B\0C\00\00\02\08\04\00\00\00M\00./13579;>EHL\00\16\0D\0F\00\00\00\00\00\00NOP-\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\09T\00\00\00\12\11\0E2\00468:<=AB@?CDFGJIK\00\00\00\00\00\17\00T\13\14\10\00\00\00\00\00Y\19#W\1BZ\00VU0\1AX\00\00\15\22\18$\00\1C%\00Q'\1F\00\00\00\00*\1D)(&\00RS\1E\00!\00\00\00 ", align 16
@yyr2 = internal unnamed_addr constant [91 x i8] c"\00\02\03\02\04\01\02\00\02\04\02\01\01\02\03\02\04\03\03\04\04\05\00\02\04\02\03\02\02\03\04\02\09\05\02\00\02\02\03\01\02\02\02\01\01\03\01\01\05\01\03\01\03\01\03\01\03\01\03\01\03\03\01\03\03\03\03\03\03\01\03\03\01\03\03\03\01\01\02\02\02\00\02\02\00\02\02\02\03\02\02", align 16
@parser_output = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Header flags don't match earlier ones\00", align 1
@treesource_error = external local_unnamed_addr global i8, align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Label or path %s not found\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Couldn't seek to offset %llu in \22%s\22: %s\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"Array elements must be 8, 16, 32 or 64-bits\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"Value out of range for %d-bit array element\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c"References are only allowed in arrays with 32-bit elements.\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"Division by zero\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"Properties must precede subnodes\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"-> $$ =\00", align 1
@yyr1 = internal unnamed_addr constant [91 x i8] c"\0023445566778899999999:;;<<<<=======>>>?????@@@ABBCCDDEEFFGGHHHIIIIIJJJKKKLLLLMMMMNNNOOOPPPP", align 16
@yypgoto = internal unnamed_addr constant [31 x i16] [i16 -46, i16 -46, i16 -46, i16 128, i16 122, i16 127, i16 -45, i16 -46, i16 -16, i16 -46, i16 -35, i16 -46, i16 -46, i16 -46, i16 -8, i16 80, i16 27, i16 -46, i16 82, i16 81, i16 83, i16 84, i16 88, i16 53, i16 -41, i16 49, i16 50, i16 -15, i16 -46, i16 34, i16 -44], align 16
@yydefgoto = internal unnamed_addr constant [31 x i16] [i16 -1, i16 2, i16 3, i16 4, i16 10, i16 11, i16 21, i16 22, i16 121, i16 76, i16 107, i16 130, i16 131, i16 143, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 146, i16 108, i16 109], align 16
@.str.20 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"Error: popping\00", align 1
@yystos = internal unnamed_addr constant [162 x i8] c"\00\03345\1B\005\05\1767\04\13\14#@7\18\19\1C896\1B-01@ABCDEFGHIJKLM@\1D::\10\11\17\18\19\1CMMM%\0D'\0C)*+\0A\0B\08\09 &\06\07,-\1C./\1B;888:::DAEFGHIIJJJJKKLLMMM\0F\10\11\12\17<OP\1B\1B:(\12\12\12\17P\1B\1F:<P\1E<OB\1B\1B=>\1B\17\1B$\0E\16\17\1A!&8?\13#N\17 8@&\16\15\17\22$%@$@%", align 16
@.str.23 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"Cleanup: discarding lookahead\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"Cleanup: popping\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"%s %s (\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"nterm\00", align 1
@yytname = internal unnamed_addr constant [82 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr null], align 16
@.str.30 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"$end\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"$undefined\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"DT_V1\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"DT_PLUGIN\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"DT_MEMRESERVE\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"DT_LSHIFT\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"DT_RSHIFT\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"DT_LE\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"DT_GE\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"DT_EQ\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"DT_NE\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"DT_AND\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"DT_OR\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"DT_BITS\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"DT_DEL_PROP\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"DT_DEL_NODE\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"DT_OMIT_NO_REF\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"DT_PROPNODENAME\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"DT_LITERAL\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"DT_CHAR_LITERAL\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"DT_BYTE\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"DT_STRING\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"DT_LABEL\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"DT_LABEL_REF\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"DT_PATH_REF\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"DT_INCBIN\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"';'\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"'/'\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"'{'\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"'}'\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"'='\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"'>'\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"'['\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"']'\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"'('\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"','\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"')'\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"'<'\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"'?'\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"':'\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"'|'\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"'^'\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"'&'\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"'+'\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"'-'\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"'*'\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"'%'\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"'~'\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"'!'\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"$accept\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"sourcefile\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"headers\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"memreserves\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"memreserve\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"dt_ref\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"devicetree\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"nodedef\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"proplist\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"propdef\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"propdata\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"propdataprefix\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"arrayprefix\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"integer_prim\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"integer_expr\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"integer_trinary\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"integer_or\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"integer_and\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"integer_bitor\00", align 1
@.str.102 = private unnamed_addr constant [15 x i8] c"integer_bitxor\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c"integer_bitand\00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c"integer_eq\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"integer_rela\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"integer_shift\00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c"integer_add\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"integer_mul\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"integer_unary\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"bytestring\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"subnodes\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"subnode\00", align 1
@yyrline = internal unnamed_addr constant [91 x i16] [i16 0, i16 101, i16 101, i16 109, i16 113, i16 120, i16 121, i16 131, i16 134, i16 141, i16 145, i16 152, i16 152, i16 155, i16 159, i16 163, i16 177, i16 188, i16 207, i16 226, i16 238, i16 253, i16 261, i16 264, i16 271, i16 275, i16 279, i16 283, i16 291, i16 295, i16 299, i16 303, i16 308, i16 324, i16 334, i16 342, i16 345, i16 349, i16 356, i16 377, i16 382, i16 401, i16 415, i16 422, i16 423, i16 424, i16 431, i16 435, i16 436, i16 440, i16 441, i16 445, i16 446, i16 450, i16 451, i16 455, i16 456, i16 460, i16 461, i16 465, i16 466, i16 467, i16 471, i16 472, i16 473, i16 474, i16 475, i16 479, i16 480, i16 481, i16 485, i16 486, i16 487, i16 491, i16 492, i16 501, i16 510, i16 514, i16 515, i16 516, i16 517, i16 522, i16 525, i16 529, i16 537, i16 540, i16 544, i16 552, i16 556, i16 560, i16 564], align 16
@.str.113 = private unnamed_addr constant [38 x i8] c"Reducing stack by rule %d (line %d):\0A\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"   $%d = \00", align 1
@.str.115 = private unnamed_addr constant [14 x i8] c"FATAL ERROR: \00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"Stack now\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"Deleting\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @yyparse() local_unnamed_addr #0 {
  %1 = alloca [200 x i8], align 16
  %2 = alloca [200 x %union.YYSTYPE], align 16
  %3 = alloca [200 x %struct.srcpos], align 16
  %4 = alloca { ptr, ptr }, align 8
  %5 = alloca %struct.srcpos, align 16
  %6 = alloca %struct.data, align 8
  %7 = alloca %struct.data, align 8
  %8 = alloca %struct.data, align 8
  %9 = alloca %struct.data, align 8
  %10 = alloca %struct.data, align 8
  %11 = alloca %struct.data, align 8
  %12 = alloca %struct.data, align 8
  %13 = alloca %struct.data, align 8
  %14 = alloca %struct.data, align 8
  %15 = alloca %struct.data, align 8
  %16 = alloca %struct.data, align 8
  %17 = alloca %struct.data, align 8
  %18 = alloca %struct.data, align 8
  %19 = alloca %struct.data, align 8
  %20 = alloca %struct.data, align 8
  %21 = alloca %struct.data, align 8
  %22 = alloca %struct.data, align 8
  %23 = alloca %struct.data, align 8
  %24 = alloca %struct.data, align 8
  %25 = alloca %struct.data, align 8
  %26 = alloca %struct.data, align 8
  %27 = alloca %struct.data, align 8
  %28 = alloca %struct.data, align 8
  %29 = alloca %struct.data, align 8
  %30 = alloca %struct.data, align 8
  %31 = alloca %struct.data, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 6400, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 6400, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %32 = load i32, ptr @yydebug, align 4, !tbaa !5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %0
  %35 = load ptr, ptr @stderr, align 8, !tbaa !9
  %36 = tail call i64 @fwrite(ptr nonnull @.str, i64 15, i64 1, ptr %35) #17
  br label %37

37:                                               ; preds = %34, %0
  store i32 0, ptr @yynerrs, align 4, !tbaa !5
  store i32 -2, ptr @yychar, align 4, !tbaa !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) @yylloc, i64 32, i1 false), !tbaa.struct !11
  %38 = getelementptr inbounds %struct.srcpos, ptr %5, i64 0, i32 4
  %39 = getelementptr inbounds %struct.srcpos, ptr %5, i64 0, i32 5
  %40 = getelementptr inbounds i8, ptr %31, i64 8
  %41 = getelementptr inbounds i8, ptr %30, i64 8
  %42 = getelementptr inbounds i8, ptr %28, i64 8
  %43 = getelementptr inbounds i8, ptr %27, i64 8
  %44 = getelementptr inbounds i8, ptr %26, i64 8
  %45 = getelementptr inbounds i8, ptr %24, i64 8
  %46 = getelementptr inbounds i8, ptr %22, i64 8
  %47 = getelementptr inbounds i8, ptr %20, i64 8
  %48 = getelementptr inbounds i8, ptr %19, i64 8
  %49 = getelementptr inbounds i8, ptr %18, i64 8
  %50 = getelementptr inbounds i8, ptr %17, i64 8
  %51 = getelementptr inbounds i8, ptr %14, i64 8
  %52 = getelementptr inbounds i8, ptr %11, i64 8
  %53 = getelementptr inbounds i8, ptr %9, i64 8
  %54 = getelementptr inbounds i8, ptr %8, i64 8
  %55 = getelementptr inbounds i8, ptr %7, i64 8
  br label %62

56:                                               ; preds = %980, %976, %210
  %57 = phi ptr [ %212, %210 ], [ %961, %980 ], [ %961, %976 ]
  %58 = phi ptr [ %211, %210 ], [ %954, %980 ], [ %954, %976 ]
  %59 = phi ptr [ %124, %210 ], [ %952, %980 ], [ %952, %976 ]
  %60 = phi i32 [ %191, %210 ], [ %983, %980 ], [ %979, %976 ]
  %61 = getelementptr inbounds i8, ptr %59, i64 1
  br label %62

62:                                               ; preds = %56, %37
  %63 = phi i64 [ 200, %37 ], [ %119, %56 ]
  %64 = phi ptr [ %3, %37 ], [ %57, %56 ]
  %65 = phi ptr [ %3, %37 ], [ %121, %56 ]
  %66 = phi ptr [ %2, %37 ], [ %58, %56 ]
  %67 = phi ptr [ %2, %37 ], [ %123, %56 ]
  %68 = phi ptr [ %1, %37 ], [ %61, %56 ]
  %69 = phi ptr [ %1, %37 ], [ %125, %56 ]
  %70 = phi i32 [ 0, %37 ], [ %60, %56 ]
  %71 = load i32, ptr @yydebug, align 4, !tbaa !5
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %62
  %74 = load ptr, ptr @stderr, align 8, !tbaa !9
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.1, i32 noundef %70) #17
  br label %76

76:                                               ; preds = %73, %62
  %77 = trunc i32 %70 to i8
  store i8 %77, ptr %68, align 1, !tbaa !12
  %78 = getelementptr inbounds i8, ptr %69, i64 -1
  %79 = getelementptr inbounds i8, ptr %78, i64 %63
  %80 = icmp ugt ptr %79, %68
  br i1 %80, label %118, label %81

81:                                               ; preds = %76
  %82 = ptrtoint ptr %68 to i64
  %83 = ptrtoint ptr %69 to i64
  %84 = sub i64 %82, %83
  %85 = add nsw i64 %84, 1
  %86 = icmp sgt i64 %63, 9999
  br i1 %86, label %1027, label %87

87:                                               ; preds = %81
  %88 = shl nsw i64 %63, 1
  %89 = call i64 @llvm.smin.i64(i64 %88, i64 10000)
  %90 = mul nsw i64 %89, 65
  %91 = add nsw i64 %90, 62
  %92 = call noalias ptr @malloc(i64 noundef %91) #18
  %93 = icmp eq ptr %92, null
  br i1 %93, label %1027, label %94

94:                                               ; preds = %87
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %92, ptr align 1 %69, i64 %85, i1 false)
  %95 = add nsw i64 %89, 31
  %96 = sdiv i64 %95, 32
  %97 = getelementptr inbounds %union.yyalloc, ptr %92, i64 %96
  %98 = shl i64 %85, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %97, ptr align 8 %67, i64 %98, i1 false)
  %99 = shl nsw i64 %89, 5
  %100 = or i64 %99, 31
  %101 = sdiv i64 %100, 32
  %102 = getelementptr inbounds %union.yyalloc, ptr %97, i64 %101
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %102, ptr align 8 %65, i64 %98, i1 false)
  %103 = icmp eq ptr %69, %1
  br i1 %103, label %105, label %104

104:                                              ; preds = %94
  call void @free(ptr noundef %69) #16
  br label %105

105:                                              ; preds = %104, %94
  %106 = getelementptr inbounds i8, ptr %92, i64 %84
  %107 = getelementptr inbounds %union.YYSTYPE, ptr %97, i64 -1
  %108 = getelementptr inbounds %union.YYSTYPE, ptr %107, i64 %85
  %109 = getelementptr inbounds %struct.srcpos, ptr %102, i64 -1
  %110 = getelementptr inbounds %struct.srcpos, ptr %109, i64 %85
  %111 = load i32, ptr @yydebug, align 4, !tbaa !5
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %105
  %114 = load ptr, ptr @stderr, align 8, !tbaa !9
  %115 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.2, i64 noundef %89) #17
  br label %116

116:                                              ; preds = %113, %105
  %117 = icmp sgt i64 %89, %85
  br i1 %117, label %118, label %1028

118:                                              ; preds = %116, %76
  %119 = phi i64 [ %63, %76 ], [ %89, %116 ]
  %120 = phi ptr [ %64, %76 ], [ %110, %116 ]
  %121 = phi ptr [ %65, %76 ], [ %102, %116 ]
  %122 = phi ptr [ %66, %76 ], [ %108, %116 ]
  %123 = phi ptr [ %67, %76 ], [ %97, %116 ]
  %124 = phi ptr [ %68, %76 ], [ %106, %116 ]
  %125 = phi ptr [ %69, %76 ], [ %92, %116 ]
  %126 = icmp eq i32 %70, 6
  br i1 %126, label %1028, label %127

127:                                              ; preds = %118
  %128 = sext i32 %70 to i64
  %129 = getelementptr inbounds [162 x i8], ptr @yypact, i64 0, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !12
  %131 = sext i8 %130 to i32
  %132 = icmp eq i8 %130, -46
  br i1 %132, label %213, label %133

133:                                              ; preds = %127
  %134 = load i32, ptr @yychar, align 4, !tbaa !5
  %135 = icmp eq i32 %134, -2
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  %137 = load i32, ptr @yydebug, align 4, !tbaa !5
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load ptr, ptr @stderr, align 8, !tbaa !9
  %141 = call i64 @fwrite(ptr nonnull @.str.3, i64 17, i64 1, ptr %140) #17
  br label %142

142:                                              ; preds = %139, %136
  %143 = call i32 @yylex() #16
  store i32 %143, ptr @yychar, align 4, !tbaa !5
  br label %144

144:                                              ; preds = %142, %133
  %145 = phi i32 [ %143, %142 ], [ %134, %133 ]
  %146 = icmp slt i32 %145, 1
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  store i32 0, ptr @yychar, align 4, !tbaa !5
  %148 = load i32, ptr @yydebug, align 4, !tbaa !5
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %178, label %150

150:                                              ; preds = %147
  %151 = load ptr, ptr @stderr, align 8, !tbaa !9
  %152 = call i64 @fwrite(ptr nonnull @.str.4, i64 21, i64 1, ptr %151) #17
  br label %178

153:                                              ; preds = %144
  %154 = icmp ult i32 %145, 282
  br i1 %154, label %155, label %160

155:                                              ; preds = %153
  %156 = zext i32 %145 to i64
  %157 = getelementptr inbounds [282 x i8], ptr @yytranslate, i64 0, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !12
  %159 = sext i8 %158 to i32
  br label %160

160:                                              ; preds = %155, %153
  %161 = phi i32 [ %159, %155 ], [ 2, %153 ]
  %162 = load i32, ptr @yydebug, align 4, !tbaa !5
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %178, label %164

164:                                              ; preds = %160
  %165 = load ptr, ptr @stderr, align 8, !tbaa !9
  %166 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %165, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #17
  %167 = load ptr, ptr @stderr, align 8, !tbaa !9
  %168 = icmp slt i32 %161, 50
  %169 = select i1 %168, ptr @.str.28, ptr @.str.29
  %170 = sext i32 %161 to i64
  %171 = getelementptr inbounds [82 x ptr], ptr @yytname, i64 0, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !9
  %173 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %167, ptr noundef nonnull @.str.27, ptr noundef nonnull %169, ptr noundef %172) #19
  %174 = call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %167) #19
  %175 = call i32 @fputc(i32 41, ptr %167) #16
  %176 = load ptr, ptr @stderr, align 8, !tbaa !9
  %177 = call i32 @fputc(i32 10, ptr %176)
  br label %178

178:                                              ; preds = %164, %160, %150, %147
  %179 = phi i32 [ 0, %150 ], [ 0, %147 ], [ %161, %164 ], [ %161, %160 ]
  %180 = add nsw i32 %179, %131
  %181 = icmp ugt i32 %180, 151
  br i1 %181, label %213, label %182

182:                                              ; preds = %178
  %183 = zext i32 %180 to i64
  %184 = getelementptr inbounds [152 x i16], ptr @yycheck, i64 0, i64 %183
  %185 = load i16, ptr %184, align 2, !tbaa !13
  %186 = sext i16 %185 to i32
  %187 = icmp eq i32 %179, %186
  br i1 %187, label %188, label %213

188:                                              ; preds = %182
  %189 = getelementptr inbounds [152 x i8], ptr @yytable, i64 0, i64 %183
  %190 = load i8, ptr %189, align 1, !tbaa !12
  %191 = zext i8 %190 to i32
  %192 = icmp eq i8 %190, 0
  br i1 %192, label %218, label %193

193:                                              ; preds = %188
  %194 = load i32, ptr @yydebug, align 4, !tbaa !5
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %210, label %196

196:                                              ; preds = %193
  %197 = load ptr, ptr @stderr, align 8, !tbaa !9
  %198 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %197, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8) #17
  %199 = load ptr, ptr @stderr, align 8, !tbaa !9
  %200 = icmp slt i32 %179, 50
  %201 = select i1 %200, ptr @.str.28, ptr @.str.29
  %202 = sext i32 %179 to i64
  %203 = getelementptr inbounds [82 x ptr], ptr @yytname, i64 0, i64 %202
  %204 = load ptr, ptr %203, align 8, !tbaa !9
  %205 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %199, ptr noundef nonnull @.str.27, ptr noundef nonnull %201, ptr noundef %204) #19
  %206 = call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %199) #19
  %207 = call i32 @fputc(i32 41, ptr %199) #16
  %208 = load ptr, ptr @stderr, align 8, !tbaa !9
  %209 = call i32 @fputc(i32 10, ptr %208)
  br label %210

210:                                              ; preds = %196, %193
  %211 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %211, ptr noundef nonnull align 8 dereferenceable(32) @yylval, i64 32, i1 false), !tbaa.struct !15
  %212 = getelementptr inbounds %struct.srcpos, ptr %120, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %212, ptr noundef nonnull align 8 dereferenceable(32) @yylloc, i64 32, i1 false), !tbaa.struct !11
  store i32 -2, ptr @yychar, align 4, !tbaa !5
  br label %56

213:                                              ; preds = %182, %178, %127
  %214 = getelementptr inbounds [162 x i8], ptr @yydefact, i64 0, i64 %128
  %215 = load i8, ptr %214, align 1, !tbaa !12
  %216 = sext i8 %215 to i32
  %217 = icmp eq i8 %215, 0
  br i1 %217, label %984, label %218

218:                                              ; preds = %213, %188
  %219 = phi i32 [ %216, %213 ], [ 0, %188 ]
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [91 x i8], ptr @yyr2, i64 0, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !12
  %223 = sext i8 %222 to i64
  %224 = sub nsw i64 1, %223
  %225 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 %224
  %226 = load i64, ptr %225, align 8, !tbaa.struct !15
  %227 = trunc i64 %226 to i32
  %228 = lshr i64 %226, 32
  %229 = getelementptr inbounds i8, ptr %225, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %229, i64 16, i1 false), !tbaa.struct !18
  %230 = getelementptr inbounds i8, ptr %225, i64 24
  %231 = load i32, ptr %230, align 8, !tbaa.struct !19
  %232 = getelementptr inbounds i8, ptr %225, i64 28
  %233 = load i32, ptr %232, align 4, !tbaa.struct !20
  %234 = icmp eq i8 %222, 0
  br i1 %234, label %243, label %235

235:                                              ; preds = %218
  %236 = sub nsw i64 0, %223
  %237 = getelementptr inbounds %struct.srcpos, ptr %120, i64 1
  %238 = getelementptr inbounds %struct.srcpos, ptr %237, i64 %236
  %239 = getelementptr inbounds %struct.srcpos, ptr %120, i64 0, i32 2
  %240 = load <2 x i32>, ptr %238, align 8, !tbaa !5
  %241 = load <2 x i32>, ptr %239, align 8, !tbaa !5
  %242 = shufflevector <2 x i32> %240, <2 x i32> %241, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %247

243:                                              ; preds = %218
  %244 = getelementptr inbounds %struct.srcpos, ptr %120, i64 0, i32 2
  %245 = load <2 x i32>, ptr %244, align 8, !tbaa !5
  %246 = shufflevector <2 x i32> %245, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %247

247:                                              ; preds = %243, %235
  %248 = phi <4 x i32> [ %246, %243 ], [ %242, %235 ]
  store <4 x i32> %248, ptr %5, align 16, !tbaa !5
  %249 = getelementptr inbounds %struct.srcpos, ptr %120, i64 0, i32 4
  %250 = load ptr, ptr %249, align 8, !tbaa !21
  store ptr %250, ptr %38, align 16, !tbaa !21
  store ptr null, ptr %39, align 8, !tbaa !23
  %251 = load i32, ptr @yydebug, align 4, !tbaa !5
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %287, label %253

253:                                              ; preds = %247
  %254 = getelementptr inbounds [91 x i16], ptr @yyrline, i64 0, i64 %220
  %255 = load i16, ptr %254, align 2, !tbaa !13
  %256 = sext i16 %255 to i32
  %257 = load ptr, ptr @stderr, align 8, !tbaa !9
  %258 = add nsw i32 %219, -1
  %259 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %257, ptr noundef nonnull @.str.113, i32 noundef %258, i32 noundef %256) #19
  %260 = icmp sgt i8 %222, 0
  br i1 %260, label %261, label %287

261:                                              ; preds = %253
  %262 = zext i8 %222 to i64
  br label %263

263:                                              ; preds = %263, %261
  %264 = phi i64 [ 0, %261 ], [ %266, %263 ]
  %265 = load ptr, ptr @stderr, align 8, !tbaa !9
  %266 = add nuw nsw i64 %264, 1
  %267 = trunc i64 %266 to i32
  %268 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %265, ptr noundef nonnull @.str.114, i32 noundef %267) #19
  %269 = load ptr, ptr @stderr, align 8, !tbaa !9
  %270 = sub nsw i64 %266, %262
  %271 = getelementptr inbounds i8, ptr %124, i64 %270
  %272 = load i8, ptr %271, align 1, !tbaa !12
  %273 = zext i8 %272 to i64
  %274 = getelementptr inbounds [162 x i8], ptr @yystos, i64 0, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !12
  %276 = icmp slt i8 %275, 50
  %277 = select i1 %276, ptr @.str.28, ptr @.str.29
  %278 = sext i8 %275 to i64
  %279 = getelementptr inbounds [82 x ptr], ptr @yytname, i64 0, i64 %278
  %280 = load ptr, ptr %279, align 8, !tbaa !9
  %281 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %269, ptr noundef nonnull @.str.27, ptr noundef nonnull %277, ptr noundef %280) #19
  %282 = call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %269) #19
  %283 = call i32 @fputc(i32 41, ptr %269) #16
  %284 = load ptr, ptr @stderr, align 8, !tbaa !9
  %285 = call i32 @fputc(i32 10, ptr %284) #16
  %286 = icmp eq i64 %266, %262
  br i1 %286, label %287, label %263

287:                                              ; preds = %263, %253, %247
  switch i32 %219, label %898 [
    i32 2, label %288
    i32 3, label %296
    i32 4, label %297
    i32 6, label %298
    i32 7, label %305
    i32 8, label %306
    i32 9, label %314
    i32 10, label %323
    i32 13, label %332
    i32 14, label %338
    i32 15, label %346
    i32 16, label %364
    i32 17, label %385
    i32 18, label %414
    i32 19, label %442
    i32 20, label %458
    i32 21, label %475
    i32 22, label %484
    i32 23, label %485
    i32 24, label %493
    i32 25, label %501
    i32 26, label %508
    i32 27, label %515
    i32 28, label %524
    i32 29, label %529
    i32 30, label %535
    i32 31, label %541
    i32 32, label %548
    i32 33, label %574
    i32 34, label %583
    i32 35, label %589
    i32 36, label %590
    i32 37, label %596
    i32 38, label %602
    i32 39, label %619
    i32 40, label %623
    i32 41, label %645
    i32 42, label %661
    i32 45, label %667
    i32 48, label %672
    i32 50, label %681
    i32 52, label %691
    i32 54, label %701
    i32 56, label %708
    i32 58, label %715
    i32 60, label %722
    i32 61, label %728
    i32 63, label %734
    i32 64, label %740
    i32 65, label %746
    i32 66, label %752
    i32 67, label %758
    i32 68, label %769
    i32 70, label %780
    i32 71, label %787
    i32 73, label %794
    i32 74, label %801
    i32 75, label %811
    i32 78, label %821
    i32 79, label %826
    i32 80, label %831
    i32 81, label %835
    i32 82, label %839
    i32 83, label %845
    i32 84, label %851
    i32 85, label %852
    i32 86, label %860
    i32 87, label %867
    i32 88, label %875
    i32 89, label %883
    i32 90, label %889
  ]

288:                                              ; preds = %287
  %289 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %290 = load i32, ptr %289, align 8, !tbaa !12
  %291 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %292 = load ptr, ptr %291, align 8, !tbaa !12
  %293 = load ptr, ptr %122, align 8, !tbaa !12
  %294 = call i32 @guess_boot_cpuid(ptr noundef %293) #16
  %295 = call ptr @build_dt_info(i32 noundef %290, ptr noundef %292, ptr noundef %293, i32 noundef %294) #16
  store ptr %295, ptr @parser_output, align 8, !tbaa !9
  br label %898

296:                                              ; preds = %287
  br label %898

297:                                              ; preds = %287
  br label %898

298:                                              ; preds = %287
  %299 = load i32, ptr %122, align 8, !tbaa !12
  %300 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %301 = load i32, ptr %300, align 8, !tbaa !12
  %302 = icmp eq i32 %299, %301
  br i1 %302, label %898, label %303

303:                                              ; preds = %298
  call void (ptr, ptr, ptr, ...) @srcpos_error(ptr noundef %120, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #16
  store i8 1, ptr @treesource_error, align 1, !tbaa !24
  %304 = load i32, ptr %300, align 8, !tbaa !12
  br label %898

305:                                              ; preds = %287
  br label %898

306:                                              ; preds = %287
  %307 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %308 = load ptr, ptr %307, align 8, !tbaa !12
  %309 = load ptr, ptr %122, align 8, !tbaa !12
  %310 = call ptr @chain_reserve_entry(ptr noundef %308, ptr noundef %309) #16
  %311 = ptrtoint ptr %310 to i64
  %312 = trunc i64 %311 to i32
  %313 = lshr i64 %311, 32
  br label %898

314:                                              ; preds = %287
  %315 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %316 = load i64, ptr %315, align 8, !tbaa !12
  %317 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %318 = load i64, ptr %317, align 8, !tbaa !12
  %319 = call ptr @build_reserve_entry(i64 noundef %316, i64 noundef %318) #16
  %320 = ptrtoint ptr %319 to i64
  %321 = trunc i64 %320 to i32
  %322 = lshr i64 %320, 32
  br label %898

323:                                              ; preds = %287
  %324 = load ptr, ptr %122, align 8, !tbaa !12
  %325 = getelementptr inbounds %struct.reserve_info, ptr %324, i64 0, i32 3
  %326 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %327 = load ptr, ptr %326, align 8, !tbaa !12
  call void @add_label(ptr noundef nonnull %325, ptr noundef %327) #16
  %328 = load ptr, ptr %122, align 8, !tbaa !12
  %329 = ptrtoint ptr %328 to i64
  %330 = trunc i64 %329 to i32
  %331 = lshr i64 %329, 32
  br label %898

332:                                              ; preds = %287
  %333 = load ptr, ptr %122, align 8, !tbaa !12
  %334 = call ptr @name_node(ptr noundef %333, ptr noundef nonnull @.str.11) #16
  %335 = ptrtoint ptr %334 to i64
  %336 = trunc i64 %335 to i32
  %337 = lshr i64 %335, 32
  br label %898

338:                                              ; preds = %287
  %339 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %340 = load ptr, ptr %339, align 8, !tbaa !12
  %341 = load ptr, ptr %122, align 8, !tbaa !12
  %342 = call ptr @merge_nodes(ptr noundef %340, ptr noundef %341) #16
  %343 = ptrtoint ptr %342 to i64
  %344 = trunc i64 %343 to i32
  %345 = lshr i64 %343, 32
  br label %898

346:                                              ; preds = %287
  %347 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -3
  %348 = load i32, ptr %347, align 8, !tbaa !12
  %349 = and i32 %348, 2
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %346
  %352 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %353 = load ptr, ptr %352, align 8, !tbaa !12
  call void (ptr, ptr, ptr, ...) @srcpos_error(ptr noundef %120, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, ptr noundef %353) #16
  store i8 1, ptr @treesource_error, align 1, !tbaa !24
  br label %354

354:                                              ; preds = %351, %346
  %355 = call ptr @build_node(ptr noundef null, ptr noundef null, ptr noundef null) #16
  %356 = call ptr @name_node(ptr noundef %355, ptr noundef nonnull @.str.11) #16
  %357 = load ptr, ptr %122, align 8, !tbaa !12
  %358 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %359 = load ptr, ptr %358, align 8, !tbaa !12
  %360 = call ptr @add_orphan_node(ptr noundef %356, ptr noundef %357, ptr noundef %359) #16
  %361 = ptrtoint ptr %360 to i64
  %362 = trunc i64 %361 to i32
  %363 = lshr i64 %361, 32
  br label %898

364:                                              ; preds = %287
  %365 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -3
  %366 = load ptr, ptr %365, align 8, !tbaa !12
  %367 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %368 = load ptr, ptr %367, align 8, !tbaa !12
  %369 = call ptr @get_node_by_ref(ptr noundef %366, ptr noundef %368) #16
  %370 = icmp eq ptr %369, null
  br i1 %370, label %377, label %371

371:                                              ; preds = %364
  %372 = getelementptr inbounds %struct.node, ptr %369, i64 0, i32 11
  %373 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %374 = load ptr, ptr %373, align 8, !tbaa !12
  call void @add_label(ptr noundef nonnull %372, ptr noundef %374) #16
  %375 = load ptr, ptr %122, align 8, !tbaa !12
  %376 = call ptr @merge_nodes(ptr noundef nonnull %369, ptr noundef %375) #16
  br label %380

377:                                              ; preds = %364
  %378 = getelementptr inbounds %struct.srcpos, ptr %120, i64 -1
  %379 = load ptr, ptr %367, align 8, !tbaa !12
  call void (ptr, ptr, ptr, ...) @srcpos_error(ptr noundef nonnull %378, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, ptr noundef %379) #16
  store i8 1, ptr @treesource_error, align 1, !tbaa !24
  br label %380

380:                                              ; preds = %377, %371
  %381 = load ptr, ptr %365, align 8, !tbaa !12
  %382 = ptrtoint ptr %381 to i64
  %383 = trunc i64 %382 to i32
  %384 = lshr i64 %382, 32
  br label %898

385:                                              ; preds = %287
  %386 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -4
  %387 = load i32, ptr %386, align 8, !tbaa !12
  %388 = and i32 %387, 2
  %389 = icmp eq i32 %388, 0
  %390 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %391 = load ptr, ptr %390, align 8, !tbaa !12
  br i1 %389, label %397, label %392

392:                                              ; preds = %385
  %393 = load ptr, ptr %122, align 8, !tbaa !12
  %394 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %395 = load ptr, ptr %394, align 8, !tbaa !12
  %396 = call ptr @add_orphan_node(ptr noundef %391, ptr noundef %393, ptr noundef %395) #16
  br label %408

397:                                              ; preds = %385
  %398 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %399 = load ptr, ptr %398, align 8, !tbaa !12
  %400 = call ptr @get_node_by_ref(ptr noundef %391, ptr noundef %399) #16
  %401 = icmp eq ptr %400, null
  br i1 %401, label %405, label %402

402:                                              ; preds = %397
  %403 = load ptr, ptr %122, align 8, !tbaa !12
  %404 = call ptr @merge_nodes(ptr noundef nonnull %400, ptr noundef %403) #16
  br label %408

405:                                              ; preds = %397
  %406 = getelementptr inbounds %struct.srcpos, ptr %120, i64 -1
  %407 = load ptr, ptr %398, align 8, !tbaa !12
  call void (ptr, ptr, ptr, ...) @srcpos_error(ptr noundef nonnull %406, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, ptr noundef %407) #16
  store i8 1, ptr @treesource_error, align 1, !tbaa !24
  br label %408

408:                                              ; preds = %405, %402, %392
  %409 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %410 = load ptr, ptr %409, align 8, !tbaa !12
  %411 = ptrtoint ptr %410 to i64
  %412 = trunc i64 %411 to i32
  %413 = lshr i64 %411, 32
  br label %898

414:                                              ; preds = %287
  %415 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %416 = load ptr, ptr %415, align 8, !tbaa !12
  %417 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %418 = load ptr, ptr %417, align 8, !tbaa !12
  %419 = call ptr @get_node_by_ref(ptr noundef %416, ptr noundef %418) #16
  %420 = icmp eq ptr %419, null
  br i1 %420, label %424, label %421

421:                                              ; preds = %414
  %422 = load ptr, ptr %122, align 8, !tbaa !12
  %423 = call ptr @merge_nodes(ptr noundef nonnull %419, ptr noundef %422) #16
  br label %437

424:                                              ; preds = %414
  %425 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -4
  %426 = load i32, ptr %425, align 8, !tbaa !12
  %427 = and i32 %426, 2
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %434, label %429

429:                                              ; preds = %424
  %430 = load ptr, ptr %415, align 8, !tbaa !12
  %431 = load ptr, ptr %122, align 8, !tbaa !12
  %432 = load ptr, ptr %417, align 8, !tbaa !12
  %433 = call ptr @add_orphan_node(ptr noundef %430, ptr noundef %431, ptr noundef %432) #16
  br label %437

434:                                              ; preds = %424
  %435 = getelementptr inbounds %struct.srcpos, ptr %120, i64 -1
  %436 = load ptr, ptr %417, align 8, !tbaa !12
  call void (ptr, ptr, ptr, ...) @srcpos_error(ptr noundef nonnull %435, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, ptr noundef %436) #16
  store i8 1, ptr @treesource_error, align 1, !tbaa !24
  br label %437

437:                                              ; preds = %434, %429, %421
  %438 = load ptr, ptr %415, align 8, !tbaa !12
  %439 = ptrtoint ptr %438 to i64
  %440 = trunc i64 %439 to i32
  %441 = lshr i64 %439, 32
  br label %898

442:                                              ; preds = %287
  %443 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -3
  %444 = load ptr, ptr %443, align 8, !tbaa !12
  %445 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %446 = load ptr, ptr %445, align 8, !tbaa !12
  %447 = call ptr @get_node_by_ref(ptr noundef %444, ptr noundef %446) #16
  %448 = icmp eq ptr %447, null
  br i1 %448, label %450, label %449

449:                                              ; preds = %442
  call void @delete_node(ptr noundef nonnull %447) #16
  br label %453

450:                                              ; preds = %442
  %451 = getelementptr inbounds %struct.srcpos, ptr %120, i64 -1
  %452 = load ptr, ptr %445, align 8, !tbaa !12
  call void (ptr, ptr, ptr, ...) @srcpos_error(ptr noundef nonnull %451, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, ptr noundef %452) #16
  store i8 1, ptr @treesource_error, align 1, !tbaa !24
  br label %453

453:                                              ; preds = %450, %449
  %454 = load ptr, ptr %443, align 8, !tbaa !12
  %455 = ptrtoint ptr %454 to i64
  %456 = trunc i64 %455 to i32
  %457 = lshr i64 %455, 32
  br label %898

458:                                              ; preds = %287
  %459 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -3
  %460 = load ptr, ptr %459, align 8, !tbaa !12
  %461 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %462 = load ptr, ptr %461, align 8, !tbaa !12
  %463 = call ptr @get_node_by_ref(ptr noundef %460, ptr noundef %462) #16
  %464 = icmp eq ptr %463, null
  br i1 %464, label %467, label %465

465:                                              ; preds = %458
  %466 = call ptr @omit_node_if_unused(ptr noundef nonnull %463) #16
  br label %470

467:                                              ; preds = %458
  %468 = getelementptr inbounds %struct.srcpos, ptr %120, i64 -1
  %469 = load ptr, ptr %461, align 8, !tbaa !12
  call void (ptr, ptr, ptr, ...) @srcpos_error(ptr noundef nonnull %468, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, ptr noundef %469) #16
  store i8 1, ptr @treesource_error, align 1, !tbaa !24
  br label %470

470:                                              ; preds = %467, %465
  %471 = load ptr, ptr %459, align 8, !tbaa !12
  %472 = ptrtoint ptr %471 to i64
  %473 = trunc i64 %472 to i32
  %474 = lshr i64 %472, 32
  br label %898

475:                                              ; preds = %287
  %476 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -3
  %477 = load ptr, ptr %476, align 8, !tbaa !12
  %478 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %479 = load ptr, ptr %478, align 8, !tbaa !12
  %480 = call ptr @build_node(ptr noundef %477, ptr noundef %479, ptr noundef nonnull %5) #16
  %481 = ptrtoint ptr %480 to i64
  %482 = trunc i64 %481 to i32
  %483 = lshr i64 %481, 32
  br label %898

484:                                              ; preds = %287
  br label %898

485:                                              ; preds = %287
  %486 = load ptr, ptr %122, align 8, !tbaa !12
  %487 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %488 = load ptr, ptr %487, align 8, !tbaa !12
  %489 = call ptr @chain_property(ptr noundef %486, ptr noundef %488) #16
  %490 = ptrtoint ptr %489 to i64
  %491 = trunc i64 %490 to i32
  %492 = lshr i64 %490, 32
  br label %898

493:                                              ; preds = %287
  %494 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -3
  %495 = load ptr, ptr %494, align 8, !tbaa !12
  %496 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %497 = call ptr @build_property(ptr noundef %495, ptr noundef nonnull byval(%struct.data) align 8 %496, ptr noundef nonnull %5) #16
  %498 = ptrtoint ptr %497 to i64
  %499 = trunc i64 %498 to i32
  %500 = lshr i64 %498, 32
  br label %898

501:                                              ; preds = %287
  %502 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %503 = load ptr, ptr %502, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %504 = call ptr @build_property(ptr noundef %503, ptr noundef nonnull byval(%struct.data) align 8 %6, ptr noundef nonnull %5) #16
  %505 = ptrtoint ptr %504 to i64
  %506 = trunc i64 %505 to i32
  %507 = lshr i64 %505, 32
  br label %898

508:                                              ; preds = %287
  %509 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %510 = load ptr, ptr %509, align 8, !tbaa !12
  %511 = call ptr @build_property_delete(ptr noundef %510) #16
  %512 = ptrtoint ptr %511 to i64
  %513 = trunc i64 %512 to i32
  %514 = lshr i64 %512, 32
  br label %898

515:                                              ; preds = %287
  %516 = load ptr, ptr %122, align 8, !tbaa !12
  %517 = getelementptr inbounds %struct.property, ptr %516, i64 0, i32 4
  %518 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %519 = load ptr, ptr %518, align 8, !tbaa !12
  call void @add_label(ptr noundef nonnull %517, ptr noundef %519) #16
  %520 = load ptr, ptr %122, align 8, !tbaa !12
  %521 = ptrtoint ptr %520 to i64
  %522 = trunc i64 %521 to i32
  %523 = lshr i64 %521, 32
  br label %898

524:                                              ; preds = %287
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  %525 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  call void @data_merge(ptr nonnull sret(%struct.data) align 8 %7, ptr noundef nonnull byval(%struct.data) align 8 %525, ptr noundef byval(%struct.data) align 8 %122) #16
  %526 = load i64, ptr %7, align 8, !tbaa.struct !26
  %527 = trunc i64 %526 to i32
  %528 = lshr i64 %526, 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %55, i64 16, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  br label %898

529:                                              ; preds = %287
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  %530 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %531 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  call void @data_merge(ptr nonnull sret(%struct.data) align 8 %8, ptr noundef nonnull byval(%struct.data) align 8 %530, ptr noundef nonnull byval(%struct.data) align 8 %531) #16
  %532 = load i64, ptr %8, align 8, !tbaa.struct !26
  %533 = trunc i64 %532 to i32
  %534 = lshr i64 %532, 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %54, i64 16, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  br label %898

535:                                              ; preds = %287
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #16
  %536 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -3
  %537 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  call void @data_merge(ptr nonnull sret(%struct.data) align 8 %9, ptr noundef nonnull byval(%struct.data) align 8 %536, ptr noundef nonnull byval(%struct.data) align 8 %537) #16
  %538 = load i64, ptr %9, align 8, !tbaa.struct !26
  %539 = trunc i64 %538 to i32
  %540 = lshr i64 %538, 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %53, i64 16, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  br label %898

541:                                              ; preds = %287
  %542 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #16
  %543 = load ptr, ptr %122, align 8, !tbaa !12
  call void @data_add_marker(ptr nonnull sret(%struct.data) align 8 %10, ptr noundef nonnull byval(%struct.data) align 8 %542, i32 noundef 8, ptr noundef %543) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %542, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #16
  %544 = load ptr, ptr %122, align 8, !tbaa !12
  call void @data_add_marker(ptr nonnull sret(%struct.data) align 8 %11, ptr noundef nonnull byval(%struct.data) align 8 %542, i32 noundef 2, ptr noundef %544) #16
  %545 = load i64, ptr %11, align 8, !tbaa.struct !26
  %546 = trunc i64 %545 to i32
  %547 = lshr i64 %545, 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %52, i64 16, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #16
  br label %898

548:                                              ; preds = %287
  %549 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -5, i32 0, i32 0, i32 1
  %550 = load ptr, ptr %549, align 8, !tbaa !12
  %551 = call ptr @srcfile_relative_open(ptr noundef %550, ptr noundef null) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #16
  %552 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -3
  %553 = load i64, ptr %552, align 8, !tbaa !12
  %554 = icmp eq i64 %553, 0
  br i1 %554, label %566, label %555

555:                                              ; preds = %548
  %556 = call i32 @fseek(ptr noundef %551, i64 noundef %553, i32 noundef 0)
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %566, label %558

558:                                              ; preds = %555
  %559 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -5, i32 0, i32 0, i32 1
  %560 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -3
  %561 = load i64, ptr %560, align 8, !tbaa !12
  %562 = load ptr, ptr %559, align 8, !tbaa !12
  %563 = tail call ptr @__errno_location() #20
  %564 = load i32, ptr %563, align 4, !tbaa !5
  %565 = call ptr @strerror(i32 noundef %564) #16
  call void (ptr, ...) @die(ptr undef, i64 noundef %561, ptr noundef %562, ptr noundef %565) #21
  unreachable

566:                                              ; preds = %555, %548
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #16
  %567 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %568 = load i64, ptr %567, align 8, !tbaa !12
  call void @data_copy_file(ptr nonnull sret(%struct.data) align 8 %13, ptr noundef %551, i64 noundef %568) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #16
  %569 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -8
  call void @data_merge(ptr nonnull sret(%struct.data) align 8 %14, ptr noundef nonnull byval(%struct.data) align 8 %569, ptr noundef nonnull byval(%struct.data) align 8 %12) #16
  %570 = load i64, ptr %14, align 8, !tbaa.struct !26
  %571 = trunc i64 %570 to i32
  %572 = lshr i64 %570, 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %51, i64 16, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #16
  %573 = call i32 @fclose(ptr noundef %551)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #16
  br label %898

574:                                              ; preds = %287
  %575 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1, i32 0, i32 0, i32 1
  %576 = load ptr, ptr %575, align 8, !tbaa !12
  %577 = call ptr @srcfile_relative_open(ptr noundef %576, ptr noundef null) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #16
  call void @data_copy_file(ptr nonnull sret(%struct.data) align 8 %16, ptr noundef %577, i64 noundef -1) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 24, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #16
  %578 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -4
  call void @data_merge(ptr nonnull sret(%struct.data) align 8 %17, ptr noundef nonnull byval(%struct.data) align 8 %578, ptr noundef nonnull byval(%struct.data) align 8 %15) #16
  %579 = load i64, ptr %17, align 8, !tbaa.struct !26
  %580 = trunc i64 %579 to i32
  %581 = lshr i64 %579, 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %50, i64 16, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #16
  %582 = call i32 @fclose(ptr noundef %577)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #16
  br label %898

583:                                              ; preds = %287
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #16
  %584 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %585 = load ptr, ptr %122, align 8, !tbaa !12
  call void @data_add_marker(ptr nonnull sret(%struct.data) align 8 %18, ptr noundef nonnull byval(%struct.data) align 8 %584, i32 noundef 3, ptr noundef %585) #16
  %586 = load i64, ptr %18, align 8, !tbaa.struct !26
  %587 = trunc i64 %586 to i32
  %588 = lshr i64 %586, 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %49, i64 16, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #16
  br label %898

589:                                              ; preds = %287
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %898

590:                                              ; preds = %287
  %591 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %592 = load i64, ptr %591, align 8, !tbaa.struct !26
  %593 = trunc i64 %592 to i32
  %594 = lshr i64 %592, 32
  %595 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1, i32 0, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %595, i64 16, i1 false), !tbaa.struct !27
  br label %898

596:                                              ; preds = %287
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %19) #16
  %597 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %598 = load ptr, ptr %122, align 8, !tbaa !12
  call void @data_add_marker(ptr nonnull sret(%struct.data) align 8 %19, ptr noundef nonnull byval(%struct.data) align 8 %597, i32 noundef 3, ptr noundef %598) #16
  %599 = load i64, ptr %19, align 8, !tbaa.struct !26
  %600 = trunc i64 %599 to i32
  %601 = lshr i64 %599, 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %48, i64 16, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #16
  br label %898

602:                                              ; preds = %287
  %603 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %604 = load i64, ptr %603, align 8, !tbaa !12
  %605 = add i64 %604, -8
  %606 = call i64 @llvm.fshl.i64(i64 %605, i64 %605, i64 61)
  switch i64 %606, label %610 [
    i64 0, label %612
    i64 1, label %607
    i64 3, label %608
    i64 7, label %609
  ]

607:                                              ; preds = %602
  br label %612

608:                                              ; preds = %602
  br label %612

609:                                              ; preds = %602
  br label %612

610:                                              ; preds = %602
  %611 = getelementptr inbounds %struct.srcpos, ptr %120, i64 -1
  call void (ptr, ptr, ptr, ...) @srcpos_error(ptr noundef nonnull %611, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #16
  store i8 1, ptr @treesource_error, align 1, !tbaa !24
  br label %612

612:                                              ; preds = %610, %609, %608, %607, %602
  %613 = phi i64 [ 32, %610 ], [ %604, %609 ], [ %604, %608 ], [ %604, %607 ], [ %604, %602 ]
  %614 = phi i32 [ 6, %610 ], [ 7, %609 ], [ 6, %608 ], [ 5, %607 ], [ 4, %602 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  call void @data_add_marker(ptr nonnull sret(%struct.data) align 8 %20, ptr noundef nonnull byval(%struct.data) align 8 %21, i32 noundef %614, ptr noundef null) #16
  %615 = load i64, ptr %20, align 8, !tbaa.struct !26
  %616 = trunc i64 %615 to i32
  %617 = lshr i64 %615, 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %47, i64 16, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #16
  %618 = trunc i64 %613 to i32
  br label %898

619:                                              ; preds = %287
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  call void @data_add_marker(ptr nonnull sret(%struct.data) align 8 %22, ptr noundef nonnull byval(%struct.data) align 8 %23, i32 noundef 6, ptr noundef null) #16
  %620 = load i64, ptr %22, align 8, !tbaa.struct !26
  %621 = trunc i64 %620 to i32
  %622 = lshr i64 %620, 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %46, i64 16, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #16
  br label %898

623:                                              ; preds = %287
  %624 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %625 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1, i32 0, i32 1
  %626 = load i32, ptr %625, align 8, !tbaa !12
  %627 = icmp slt i32 %626, 64
  br i1 %627, label %628, label %639

628:                                              ; preds = %623
  %629 = zext i32 %626 to i64
  %630 = shl nsw i64 -1, %629
  %631 = xor i64 %630, -1
  %632 = load i64, ptr %122, align 8, !tbaa !12
  %633 = icmp ule i64 %632, %631
  %634 = or i64 %632, %631
  %635 = icmp eq i64 %634, -1
  %636 = or i1 %633, %635
  br i1 %636, label %639, label %637

637:                                              ; preds = %628
  call void (ptr, ptr, ptr, ...) @srcpos_error(ptr noundef %120, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.15, i32 noundef %626) #16
  store i8 1, ptr @treesource_error, align 1, !tbaa !24
  %638 = load i32, ptr %625, align 8, !tbaa !12
  br label %639

639:                                              ; preds = %637, %628, %623
  %640 = phi i32 [ %626, %628 ], [ %638, %637 ], [ %626, %623 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %24) #16
  %641 = load i64, ptr %122, align 8, !tbaa !12
  call void @data_append_integer(ptr nonnull sret(%struct.data) align 8 %24, ptr noundef nonnull byval(%struct.data) align 8 %624, i64 noundef %641, i32 noundef %640) #16
  %642 = load i64, ptr %24, align 8, !tbaa.struct !26
  %643 = trunc i64 %642 to i32
  %644 = lshr i64 %642, 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %45, i64 16, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %24) #16
  br label %898

645:                                              ; preds = %287
  %646 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %647 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1, i32 0, i32 1
  %648 = load i32, ptr %647, align 8, !tbaa !12
  %649 = sub nsw i32 64, %648
  %650 = zext i32 %649 to i64
  %651 = lshr i64 -1, %650
  %652 = icmp eq i32 %648, 32
  br i1 %652, label %653, label %655

653:                                              ; preds = %645
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %25) #16
  %654 = load ptr, ptr %122, align 8, !tbaa !12
  call void @data_add_marker(ptr nonnull sret(%struct.data) align 8 %25, ptr noundef nonnull byval(%struct.data) align 8 %646, i32 noundef 1, ptr noundef %654) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %646, ptr noundef nonnull align 8 dereferenceable(24) %25, i64 24, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %25) #16
  br label %656

655:                                              ; preds = %645
  call void (ptr, ptr, ptr, ...) @srcpos_error(ptr noundef %120, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.16) #16
  store i8 1, ptr @treesource_error, align 1, !tbaa !24
  br label %656

656:                                              ; preds = %655, %653
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %26) #16
  %657 = load i32, ptr %647, align 8, !tbaa !12
  call void @data_append_integer(ptr nonnull sret(%struct.data) align 8 %26, ptr noundef nonnull byval(%struct.data) align 8 %646, i64 noundef %651, i32 noundef %657) #16
  %658 = load i64, ptr %26, align 8, !tbaa.struct !26
  %659 = trunc i64 %658 to i32
  %660 = lshr i64 %658, 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %44, i64 16, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %26) #16
  br label %898

661:                                              ; preds = %287
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %27) #16
  %662 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %663 = load ptr, ptr %122, align 8, !tbaa !12
  call void @data_add_marker(ptr nonnull sret(%struct.data) align 8 %27, ptr noundef nonnull byval(%struct.data) align 8 %662, i32 noundef 3, ptr noundef %663) #16
  %664 = load i64, ptr %27, align 8, !tbaa.struct !26
  %665 = trunc i64 %664 to i32
  %666 = lshr i64 %664, 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %43, i64 16, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %27) #16
  br label %898

667:                                              ; preds = %287
  %668 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %669 = load i64, ptr %668, align 8, !tbaa !12
  %670 = trunc i64 %669 to i32
  %671 = lshr i64 %669, 32
  br label %898

672:                                              ; preds = %287
  %673 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -4
  %674 = load i64, ptr %673, align 8, !tbaa !12
  %675 = icmp eq i64 %674, 0
  %676 = select i1 %675, i64 0, i64 -2
  %677 = getelementptr %union.YYSTYPE, ptr %122, i64 %676
  %678 = load i64, ptr %677, align 8, !tbaa !12
  %679 = trunc i64 %678 to i32
  %680 = lshr i64 %678, 32
  br label %898

681:                                              ; preds = %287
  %682 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %683 = load i64, ptr %682, align 8, !tbaa !12
  %684 = icmp eq i64 %683, 0
  br i1 %684, label %685, label %688

685:                                              ; preds = %681
  %686 = load i64, ptr %122, align 8, !tbaa !12
  %687 = icmp ne i64 %686, 0
  br label %688

688:                                              ; preds = %685, %681
  %689 = phi i1 [ true, %681 ], [ %687, %685 ]
  %690 = zext i1 %689 to i32
  br label %898

691:                                              ; preds = %287
  %692 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %693 = load i64, ptr %692, align 8, !tbaa !12
  %694 = icmp eq i64 %693, 0
  br i1 %694, label %698, label %695

695:                                              ; preds = %691
  %696 = load i64, ptr %122, align 8, !tbaa !12
  %697 = icmp ne i64 %696, 0
  br label %698

698:                                              ; preds = %695, %691
  %699 = phi i1 [ false, %691 ], [ %697, %695 ]
  %700 = zext i1 %699 to i32
  br label %898

701:                                              ; preds = %287
  %702 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %703 = load i64, ptr %702, align 8, !tbaa !12
  %704 = load i64, ptr %122, align 8, !tbaa !12
  %705 = or i64 %704, %703
  %706 = trunc i64 %705 to i32
  %707 = lshr i64 %705, 32
  br label %898

708:                                              ; preds = %287
  %709 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %710 = load i64, ptr %709, align 8, !tbaa !12
  %711 = load i64, ptr %122, align 8, !tbaa !12
  %712 = xor i64 %711, %710
  %713 = trunc i64 %712 to i32
  %714 = lshr i64 %712, 32
  br label %898

715:                                              ; preds = %287
  %716 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %717 = load i64, ptr %716, align 8, !tbaa !12
  %718 = load i64, ptr %122, align 8, !tbaa !12
  %719 = and i64 %718, %717
  %720 = trunc i64 %719 to i32
  %721 = lshr i64 %719, 32
  br label %898

722:                                              ; preds = %287
  %723 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %724 = load i64, ptr %723, align 8, !tbaa !12
  %725 = load i64, ptr %122, align 8, !tbaa !12
  %726 = icmp eq i64 %724, %725
  %727 = zext i1 %726 to i32
  br label %898

728:                                              ; preds = %287
  %729 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %730 = load i64, ptr %729, align 8, !tbaa !12
  %731 = load i64, ptr %122, align 8, !tbaa !12
  %732 = icmp ne i64 %730, %731
  %733 = zext i1 %732 to i32
  br label %898

734:                                              ; preds = %287
  %735 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %736 = load i64, ptr %735, align 8, !tbaa !12
  %737 = load i64, ptr %122, align 8, !tbaa !12
  %738 = icmp ult i64 %736, %737
  %739 = zext i1 %738 to i32
  br label %898

740:                                              ; preds = %287
  %741 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %742 = load i64, ptr %741, align 8, !tbaa !12
  %743 = load i64, ptr %122, align 8, !tbaa !12
  %744 = icmp ugt i64 %742, %743
  %745 = zext i1 %744 to i32
  br label %898

746:                                              ; preds = %287
  %747 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %748 = load i64, ptr %747, align 8, !tbaa !12
  %749 = load i64, ptr %122, align 8, !tbaa !12
  %750 = icmp ule i64 %748, %749
  %751 = zext i1 %750 to i32
  br label %898

752:                                              ; preds = %287
  %753 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %754 = load i64, ptr %753, align 8, !tbaa !12
  %755 = load i64, ptr %122, align 8, !tbaa !12
  %756 = icmp uge i64 %754, %755
  %757 = zext i1 %756 to i32
  br label %898

758:                                              ; preds = %287
  %759 = load i64, ptr %122, align 8, !tbaa !12
  %760 = icmp ult i64 %759, 64
  br i1 %760, label %761, label %765

761:                                              ; preds = %758
  %762 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %763 = load i64, ptr %762, align 8, !tbaa !12
  %764 = shl i64 %763, %759
  br label %765

765:                                              ; preds = %761, %758
  %766 = phi i64 [ %764, %761 ], [ 0, %758 ]
  %767 = trunc i64 %766 to i32
  %768 = lshr i64 %766, 32
  br label %898

769:                                              ; preds = %287
  %770 = load i64, ptr %122, align 8, !tbaa !12
  %771 = icmp ult i64 %770, 64
  br i1 %771, label %772, label %776

772:                                              ; preds = %769
  %773 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %774 = load i64, ptr %773, align 8, !tbaa !12
  %775 = lshr i64 %774, %770
  br label %776

776:                                              ; preds = %772, %769
  %777 = phi i64 [ %775, %772 ], [ 0, %769 ]
  %778 = trunc i64 %777 to i32
  %779 = lshr i64 %777, 32
  br label %898

780:                                              ; preds = %287
  %781 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %782 = load i64, ptr %781, align 8, !tbaa !12
  %783 = load i64, ptr %122, align 8, !tbaa !12
  %784 = add i64 %783, %782
  %785 = trunc i64 %784 to i32
  %786 = lshr i64 %784, 32
  br label %898

787:                                              ; preds = %287
  %788 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %789 = load i64, ptr %788, align 8, !tbaa !12
  %790 = load i64, ptr %122, align 8, !tbaa !12
  %791 = sub i64 %789, %790
  %792 = trunc i64 %791 to i32
  %793 = lshr i64 %791, 32
  br label %898

794:                                              ; preds = %287
  %795 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %796 = load i64, ptr %795, align 8, !tbaa !12
  %797 = load i64, ptr %122, align 8, !tbaa !12
  %798 = mul i64 %797, %796
  %799 = trunc i64 %798 to i32
  %800 = lshr i64 %798, 32
  br label %898

801:                                              ; preds = %287
  %802 = load i64, ptr %122, align 8, !tbaa !12
  %803 = icmp eq i64 %802, 0
  br i1 %803, label %810, label %804

804:                                              ; preds = %801
  %805 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %806 = load i64, ptr %805, align 8, !tbaa !12
  %807 = udiv i64 %806, %802
  %808 = trunc i64 %807 to i32
  %809 = lshr i64 %807, 32
  br label %898

810:                                              ; preds = %801
  call void (ptr, ptr, ptr, ...) @srcpos_error(ptr noundef nonnull %5, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.17) #16
  store i8 1, ptr @treesource_error, align 1, !tbaa !24
  br label %898

811:                                              ; preds = %287
  %812 = load i64, ptr %122, align 8, !tbaa !12
  %813 = icmp eq i64 %812, 0
  br i1 %813, label %820, label %814

814:                                              ; preds = %811
  %815 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -2
  %816 = load i64, ptr %815, align 8, !tbaa !12
  %817 = urem i64 %816, %812
  %818 = trunc i64 %817 to i32
  %819 = lshr i64 %817, 32
  br label %898

820:                                              ; preds = %811
  call void (ptr, ptr, ptr, ...) @srcpos_error(ptr noundef nonnull %5, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.17) #16
  store i8 1, ptr @treesource_error, align 1, !tbaa !24
  br label %898

821:                                              ; preds = %287
  %822 = load i64, ptr %122, align 8, !tbaa !12
  %823 = sub i64 0, %822
  %824 = trunc i64 %823 to i32
  %825 = lshr i64 %823, 32
  br label %898

826:                                              ; preds = %287
  %827 = load i64, ptr %122, align 8, !tbaa !12
  %828 = xor i64 %827, -1
  %829 = trunc i64 %828 to i32
  %830 = lshr i64 %828, 32
  br label %898

831:                                              ; preds = %287
  %832 = load i64, ptr %122, align 8, !tbaa !12
  %833 = icmp eq i64 %832, 0
  %834 = zext i1 %833 to i32
  br label %898

835:                                              ; preds = %287
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %28) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  call void @data_add_marker(ptr nonnull sret(%struct.data) align 8 %28, ptr noundef nonnull byval(%struct.data) align 8 %29, i32 noundef 4, ptr noundef null) #16
  %836 = load i64, ptr %28, align 8, !tbaa.struct !26
  %837 = trunc i64 %836 to i32
  %838 = lshr i64 %836, 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %42, i64 16, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %28) #16
  br label %898

839:                                              ; preds = %287
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %30) #16
  %840 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %841 = load i8, ptr %122, align 8, !tbaa !12
  call void @data_append_byte(ptr nonnull sret(%struct.data) align 8 %30, ptr noundef nonnull byval(%struct.data) align 8 %840, i8 noundef zeroext %841) #16
  %842 = load i64, ptr %30, align 8, !tbaa.struct !26
  %843 = trunc i64 %842 to i32
  %844 = lshr i64 %842, 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %41, i64 16, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %30) #16
  br label %898

845:                                              ; preds = %287
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %31) #16
  %846 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %847 = load ptr, ptr %122, align 8, !tbaa !12
  call void @data_add_marker(ptr nonnull sret(%struct.data) align 8 %31, ptr noundef nonnull byval(%struct.data) align 8 %846, i32 noundef 3, ptr noundef %847) #16
  %848 = load i64, ptr %31, align 8, !tbaa.struct !26
  %849 = trunc i64 %848 to i32
  %850 = lshr i64 %848, 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %40, i64 16, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %31) #16
  br label %898

851:                                              ; preds = %287
  br label %898

852:                                              ; preds = %287
  %853 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %854 = load ptr, ptr %853, align 8, !tbaa !12
  %855 = load ptr, ptr %122, align 8, !tbaa !12
  %856 = call ptr @chain_node(ptr noundef %854, ptr noundef %855) #16
  %857 = ptrtoint ptr %856 to i64
  %858 = trunc i64 %857 to i32
  %859 = lshr i64 %857, 32
  br label %898

860:                                              ; preds = %287
  %861 = sext i8 %222 to i64
  call void (ptr, ptr, ptr, ...) @srcpos_error(ptr noundef %120, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.18) #16
  store i8 1, ptr @treesource_error, align 1, !tbaa !24
  %862 = sub nsw i64 0, %861
  %863 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 %862
  %864 = getelementptr inbounds i8, ptr %124, i64 %862
  %865 = load i32, ptr @yydebug, align 4, !tbaa !5
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %988, label %987

867:                                              ; preds = %287
  %868 = load ptr, ptr %122, align 8, !tbaa !12
  %869 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %870 = load ptr, ptr %869, align 8, !tbaa !12
  %871 = call ptr @name_node(ptr noundef %868, ptr noundef %870) #16
  %872 = ptrtoint ptr %871 to i64
  %873 = trunc i64 %872 to i32
  %874 = lshr i64 %872, 32
  br label %898

875:                                              ; preds = %287
  %876 = call ptr @build_node_delete(ptr noundef nonnull %5) #16
  %877 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %878 = load ptr, ptr %877, align 8, !tbaa !12
  %879 = call ptr @name_node(ptr noundef %876, ptr noundef %878) #16
  %880 = ptrtoint ptr %879 to i64
  %881 = trunc i64 %880 to i32
  %882 = lshr i64 %880, 32
  br label %898

883:                                              ; preds = %287
  %884 = load ptr, ptr %122, align 8, !tbaa !12
  %885 = call ptr @omit_node_if_unused(ptr noundef %884) #16
  %886 = ptrtoint ptr %885 to i64
  %887 = trunc i64 %886 to i32
  %888 = lshr i64 %886, 32
  br label %898

889:                                              ; preds = %287
  %890 = load ptr, ptr %122, align 8, !tbaa !12
  %891 = getelementptr inbounds %struct.node, ptr %890, i64 0, i32 11
  %892 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 -1
  %893 = load ptr, ptr %892, align 8, !tbaa !12
  call void @add_label(ptr noundef nonnull %891, ptr noundef %893) #16
  %894 = load ptr, ptr %122, align 8, !tbaa !12
  %895 = ptrtoint ptr %894 to i64
  %896 = trunc i64 %895 to i32
  %897 = lshr i64 %895, 32
  br label %898

898:                                              ; preds = %889, %883, %875, %867, %852, %851, %845, %839, %835, %831, %826, %821, %820, %814, %810, %804, %794, %787, %780, %776, %765, %752, %746, %740, %734, %728, %722, %715, %708, %701, %698, %688, %672, %667, %661, %656, %639, %619, %612, %596, %590, %589, %583, %574, %566, %541, %535, %529, %524, %515, %508, %501, %493, %485, %484, %475, %470, %453, %437, %408, %380, %354, %338, %332, %323, %314, %306, %305, %303, %298, %297, %296, %288, %287
  %899 = phi i32 [ %227, %287 ], [ %896, %889 ], [ %887, %883 ], [ %881, %875 ], [ %873, %867 ], [ %858, %852 ], [ 0, %851 ], [ %849, %845 ], [ %843, %839 ], [ %837, %835 ], [ %834, %831 ], [ %829, %826 ], [ %824, %821 ], [ 0, %820 ], [ %818, %814 ], [ 0, %810 ], [ %808, %804 ], [ %799, %794 ], [ %792, %787 ], [ %785, %780 ], [ %778, %776 ], [ %767, %765 ], [ %757, %752 ], [ %751, %746 ], [ %745, %740 ], [ %739, %734 ], [ %733, %728 ], [ %727, %722 ], [ %720, %715 ], [ %713, %708 ], [ %706, %701 ], [ %700, %698 ], [ %690, %688 ], [ %679, %672 ], [ %670, %667 ], [ %665, %661 ], [ %659, %656 ], [ %643, %639 ], [ %621, %619 ], [ %616, %612 ], [ %600, %596 ], [ %593, %590 ], [ 0, %589 ], [ %587, %583 ], [ %580, %574 ], [ %571, %566 ], [ %546, %541 ], [ %539, %535 ], [ %533, %529 ], [ %527, %524 ], [ %522, %515 ], [ %513, %508 ], [ %506, %501 ], [ %499, %493 ], [ %491, %485 ], [ 0, %484 ], [ %482, %475 ], [ %473, %470 ], [ %456, %453 ], [ %440, %437 ], [ %412, %408 ], [ %383, %380 ], [ %362, %354 ], [ %344, %338 ], [ %336, %332 ], [ %330, %323 ], [ %321, %314 ], [ %312, %306 ], [ 0, %305 ], [ 3, %297 ], [ 1, %296 ], [ %227, %288 ], [ %304, %303 ], [ %299, %298 ]
  %900 = phi i64 [ %228, %287 ], [ %897, %889 ], [ %888, %883 ], [ %882, %875 ], [ %874, %867 ], [ %859, %852 ], [ 0, %851 ], [ %850, %845 ], [ %844, %839 ], [ %838, %835 ], [ 0, %831 ], [ %830, %826 ], [ %825, %821 ], [ 0, %820 ], [ %819, %814 ], [ 0, %810 ], [ %809, %804 ], [ %800, %794 ], [ %793, %787 ], [ %786, %780 ], [ %779, %776 ], [ %768, %765 ], [ 0, %752 ], [ 0, %746 ], [ 0, %740 ], [ 0, %734 ], [ 0, %728 ], [ 0, %722 ], [ %721, %715 ], [ %714, %708 ], [ %707, %701 ], [ 0, %698 ], [ 0, %688 ], [ %680, %672 ], [ %671, %667 ], [ %666, %661 ], [ %660, %656 ], [ %644, %639 ], [ %622, %619 ], [ %617, %612 ], [ %601, %596 ], [ %594, %590 ], [ 0, %589 ], [ %588, %583 ], [ %581, %574 ], [ %572, %566 ], [ %547, %541 ], [ %540, %535 ], [ %534, %529 ], [ %528, %524 ], [ %523, %515 ], [ %514, %508 ], [ %507, %501 ], [ %500, %493 ], [ %492, %485 ], [ 0, %484 ], [ %483, %475 ], [ %474, %470 ], [ %457, %453 ], [ %441, %437 ], [ %413, %408 ], [ %384, %380 ], [ %363, %354 ], [ %345, %338 ], [ %337, %332 ], [ %331, %323 ], [ %322, %314 ], [ %313, %306 ], [ 0, %305 ], [ %228, %297 ], [ %228, %296 ], [ %228, %288 ], [ %228, %303 ], [ %228, %298 ]
  %901 = phi i32 [ %231, %287 ], [ %231, %889 ], [ %231, %883 ], [ %231, %875 ], [ %231, %867 ], [ %231, %852 ], [ %231, %851 ], [ %231, %845 ], [ %231, %839 ], [ %231, %835 ], [ %231, %831 ], [ %231, %826 ], [ %231, %821 ], [ %231, %820 ], [ %231, %814 ], [ %231, %810 ], [ %231, %804 ], [ %231, %794 ], [ %231, %787 ], [ %231, %780 ], [ %231, %776 ], [ %231, %765 ], [ %231, %752 ], [ %231, %746 ], [ %231, %740 ], [ %231, %734 ], [ %231, %728 ], [ %231, %722 ], [ %231, %715 ], [ %231, %708 ], [ %231, %701 ], [ %231, %698 ], [ %231, %688 ], [ %231, %672 ], [ %231, %667 ], [ %231, %661 ], [ %231, %656 ], [ %231, %639 ], [ 32, %619 ], [ %618, %612 ], [ %231, %596 ], [ %231, %590 ], [ %231, %589 ], [ %231, %583 ], [ %231, %574 ], [ %231, %566 ], [ %231, %541 ], [ %231, %535 ], [ %231, %529 ], [ %231, %524 ], [ %231, %515 ], [ %231, %508 ], [ %231, %501 ], [ %231, %493 ], [ %231, %485 ], [ %231, %484 ], [ %231, %475 ], [ %231, %470 ], [ %231, %453 ], [ %231, %437 ], [ %231, %408 ], [ %231, %380 ], [ %231, %354 ], [ %231, %338 ], [ %231, %332 ], [ %231, %323 ], [ %231, %314 ], [ %231, %306 ], [ %231, %305 ], [ %231, %297 ], [ %231, %296 ], [ %231, %288 ], [ %231, %303 ], [ %231, %298 ]
  %902 = load i32, ptr @yydebug, align 4, !tbaa !5
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %904, label %912

904:                                              ; preds = %898
  %905 = sub nsw i64 0, %223
  %906 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 %905
  %907 = getelementptr inbounds i8, ptr %124, i64 %905
  %908 = getelementptr inbounds %struct.srcpos, ptr %120, i64 %905
  %909 = getelementptr inbounds [91 x i8], ptr @yyr1, i64 0, i64 %220
  %910 = load i8, ptr %909, align 1, !tbaa !12
  %911 = sext i8 %910 to i64
  br label %949

912:                                              ; preds = %898
  %913 = load ptr, ptr @stderr, align 8, !tbaa !9
  %914 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %913, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.19) #17
  %915 = load ptr, ptr @stderr, align 8, !tbaa !9
  %916 = getelementptr inbounds [91 x i8], ptr @yyr1, i64 0, i64 %220
  %917 = load i8, ptr %916, align 1, !tbaa !12
  %918 = icmp eq i32 %219, 0
  %919 = select i1 %918, ptr @.str.28, ptr @.str.29
  %920 = sext i8 %917 to i64
  %921 = getelementptr inbounds [82 x ptr], ptr @yytname, i64 0, i64 %920
  %922 = load ptr, ptr %921, align 8, !tbaa !9
  %923 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %915, ptr noundef nonnull @.str.27, ptr noundef nonnull %919, ptr noundef %922) #19
  %924 = call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %915) #19
  %925 = call i32 @fputc(i32 41, ptr %915) #16
  %926 = load ptr, ptr @stderr, align 8, !tbaa !9
  %927 = call i32 @fputc(i32 10, ptr %926)
  %928 = load i32, ptr @yydebug, align 4, !tbaa !5
  %929 = sub nsw i64 0, %223
  %930 = getelementptr inbounds %union.YYSTYPE, ptr %122, i64 %929
  %931 = getelementptr inbounds i8, ptr %124, i64 %929
  %932 = getelementptr inbounds %struct.srcpos, ptr %120, i64 %929
  %933 = icmp eq i32 %928, 0
  br i1 %933, label %949, label %934

934:                                              ; preds = %912
  %935 = load ptr, ptr @stderr, align 8, !tbaa !9
  %936 = call i64 @fwrite(ptr nonnull @.str.116, i64 9, i64 1, ptr %935) #19
  %937 = icmp ugt ptr %125, %931
  br i1 %937, label %946, label %938

938:                                              ; preds = %938, %934
  %939 = phi ptr [ %944, %938 ], [ %125, %934 ]
  %940 = load i8, ptr %939, align 1, !tbaa !12
  %941 = zext i8 %940 to i32
  %942 = load ptr, ptr @stderr, align 8, !tbaa !9
  %943 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %942, ptr noundef nonnull @.str.117, i32 noundef %941) #19
  %944 = getelementptr inbounds i8, ptr %939, i64 1
  %945 = icmp ugt ptr %944, %931
  br i1 %945, label %946, label %938

946:                                              ; preds = %938, %934
  %947 = load ptr, ptr @stderr, align 8, !tbaa !9
  %948 = call i32 @fputc(i32 10, ptr %947) #16
  br label %949

949:                                              ; preds = %946, %912, %904
  %950 = phi i64 [ %911, %904 ], [ %920, %946 ], [ %920, %912 ]
  %951 = phi ptr [ %908, %904 ], [ %932, %946 ], [ %932, %912 ]
  %952 = phi ptr [ %907, %904 ], [ %931, %946 ], [ %931, %912 ]
  %953 = phi ptr [ %906, %904 ], [ %930, %946 ], [ %930, %912 ]
  %954 = getelementptr inbounds %union.YYSTYPE, ptr %953, i64 1
  %955 = shl nuw i64 %900, 32
  %956 = zext i32 %899 to i64
  %957 = or i64 %955, %956
  store i64 %957, ptr %954, align 8, !tbaa.struct !15
  %958 = getelementptr inbounds %union.YYSTYPE, ptr %953, i64 1, i32 0, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %958, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !18
  %959 = getelementptr inbounds %union.YYSTYPE, ptr %953, i64 1, i32 0, i32 1
  store i32 %901, ptr %959, align 8, !tbaa.struct !19
  %960 = getelementptr inbounds i8, ptr %954, i64 28
  store i32 %233, ptr %960, align 4, !tbaa.struct !20
  %961 = getelementptr inbounds %struct.srcpos, ptr %951, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %961, ptr noundef nonnull align 16 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !11
  %962 = add nsw i64 %950, -50
  %963 = getelementptr inbounds [31 x i16], ptr @yypgoto, i64 0, i64 %962
  %964 = load i16, ptr %963, align 2, !tbaa !13
  %965 = sext i16 %964 to i32
  %966 = load i8, ptr %952, align 1, !tbaa !12
  %967 = zext i8 %966 to i32
  %968 = add nsw i32 %967, %965
  %969 = icmp ult i32 %968, 152
  br i1 %969, label %970, label %980

970:                                              ; preds = %949
  %971 = zext i32 %968 to i64
  %972 = getelementptr inbounds [152 x i16], ptr @yycheck, i64 0, i64 %971
  %973 = load i16, ptr %972, align 2, !tbaa !13
  %974 = sext i16 %973 to i32
  %975 = icmp eq i32 %974, %967
  br i1 %975, label %976, label %980

976:                                              ; preds = %970
  %977 = getelementptr inbounds [152 x i8], ptr @yytable, i64 0, i64 %971
  %978 = load i8, ptr %977, align 1, !tbaa !12
  %979 = zext i8 %978 to i32
  br label %56

980:                                              ; preds = %970, %949
  %981 = getelementptr inbounds [31 x i16], ptr @yydefgoto, i64 0, i64 %962
  %982 = load i16, ptr %981, align 2, !tbaa !13
  %983 = sext i16 %982 to i32
  br label %56

984:                                              ; preds = %213
  %985 = load i32, ptr @yynerrs, align 4, !tbaa !5
  %986 = add nsw i32 %985, 1
  store i32 %986, ptr @yynerrs, align 4, !tbaa !5
  call void (ptr, ptr, ptr, ...) @srcpos_error(ptr noundef nonnull @yylloc, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.20) #16
  store i8 1, ptr @treesource_error, align 1, !tbaa !24
  br label %991

987:                                              ; preds = %860
  call fastcc void @yy_stack_print(ptr noundef %125, ptr noundef %864)
  br label %988

988:                                              ; preds = %987, %860
  %989 = load i8, ptr %864, align 1, !tbaa !12
  %990 = zext i8 %989 to i32
  br label %991

991:                                              ; preds = %988, %984
  %992 = phi ptr [ %122, %984 ], [ %863, %988 ]
  %993 = phi ptr [ %124, %984 ], [ %864, %988 ]
  %994 = phi i32 [ %70, %984 ], [ %990, %988 ]
  %995 = icmp eq ptr %993, %125
  br i1 %995, label %1028, label %996

996:                                              ; preds = %1025, %991
  %997 = phi i32 [ %1007, %1025 ], [ %994, %991 ]
  %998 = phi ptr [ %1005, %1025 ], [ %993, %991 ]
  %999 = phi ptr [ %1004, %1025 ], [ %992, %991 ]
  %1000 = sext i32 %997 to i64
  %1001 = getelementptr inbounds [162 x i8], ptr @yystos, i64 0, i64 %1000
  %1002 = load i8, ptr %1001, align 1, !tbaa !12
  %1003 = sext i8 %1002 to i32
  call fastcc void @yydestruct(ptr noundef nonnull @.str.22, i32 noundef %1003, ptr noundef %999)
  %1004 = getelementptr inbounds %union.YYSTYPE, ptr %999, i64 -1
  %1005 = getelementptr inbounds i8, ptr %998, i64 -1
  %1006 = load i8, ptr %1005, align 1, !tbaa !12
  %1007 = zext i8 %1006 to i32
  %1008 = load i32, ptr @yydebug, align 4, !tbaa !5
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1025, label %1010

1010:                                             ; preds = %996
  %1011 = load ptr, ptr @stderr, align 8, !tbaa !9
  %1012 = call i64 @fwrite(ptr nonnull @.str.116, i64 9, i64 1, ptr %1011) #19
  %1013 = icmp ugt ptr %125, %1005
  br i1 %1013, label %1022, label %1014

1014:                                             ; preds = %1014, %1010
  %1015 = phi ptr [ %1020, %1014 ], [ %125, %1010 ]
  %1016 = load i8, ptr %1015, align 1, !tbaa !12
  %1017 = zext i8 %1016 to i32
  %1018 = load ptr, ptr @stderr, align 8, !tbaa !9
  %1019 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1018, ptr noundef nonnull @.str.117, i32 noundef %1017) #19
  %1020 = getelementptr inbounds i8, ptr %1015, i64 1
  %1021 = icmp ugt ptr %1020, %1005
  br i1 %1021, label %1022, label %1014

1022:                                             ; preds = %1014, %1010
  %1023 = load ptr, ptr @stderr, align 8, !tbaa !9
  %1024 = call i32 @fputc(i32 10, ptr %1023) #16
  br label %1025

1025:                                             ; preds = %1022, %996
  %1026 = icmp eq ptr %1005, %125
  br i1 %1026, label %1028, label %996

1027:                                             ; preds = %87, %81
  call void (ptr, ptr, ptr, ...) @srcpos_error(ptr noundef nonnull @yylloc, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.23) #16
  store i8 1, ptr @treesource_error, align 1, !tbaa !24
  br label %1028

1028:                                             ; preds = %1027, %1025, %991, %118, %116
  %1029 = phi i32 [ 2, %1027 ], [ 1, %991 ], [ 1, %1025 ], [ 1, %116 ], [ 0, %118 ]
  %1030 = phi ptr [ %66, %1027 ], [ %992, %991 ], [ %1004, %1025 ], [ %108, %116 ], [ %122, %118 ]
  %1031 = phi ptr [ %68, %1027 ], [ %125, %991 ], [ %125, %1025 ], [ %106, %116 ], [ %124, %118 ]
  %1032 = phi ptr [ %69, %1027 ], [ %125, %991 ], [ %125, %1025 ], [ %92, %116 ], [ %125, %118 ]
  %1033 = load i32, ptr @yychar, align 4, !tbaa !5
  %1034 = icmp eq i32 %1033, -2
  br i1 %1034, label %1044, label %1035

1035:                                             ; preds = %1028
  %1036 = icmp ult i32 %1033, 282
  br i1 %1036, label %1037, label %1042

1037:                                             ; preds = %1035
  %1038 = zext i32 %1033 to i64
  %1039 = getelementptr inbounds [282 x i8], ptr @yytranslate, i64 0, i64 %1038
  %1040 = load i8, ptr %1039, align 1, !tbaa !12
  %1041 = sext i8 %1040 to i32
  br label %1042

1042:                                             ; preds = %1037, %1035
  %1043 = phi i32 [ %1041, %1037 ], [ 2, %1035 ]
  call fastcc void @yydestruct(ptr noundef nonnull @.str.24, i32 noundef %1043, ptr noundef nonnull @yylval)
  br label %1044

1044:                                             ; preds = %1042, %1028
  %1045 = load i32, ptr @yydebug, align 4, !tbaa !5
  %1046 = icmp eq i32 %1045, 0
  br i1 %1046, label %1062, label %1047

1047:                                             ; preds = %1044
  %1048 = load ptr, ptr @stderr, align 8, !tbaa !9
  %1049 = call i64 @fwrite(ptr nonnull @.str.116, i64 9, i64 1, ptr %1048) #19
  %1050 = icmp ugt ptr %1032, %1031
  br i1 %1050, label %1059, label %1051

1051:                                             ; preds = %1051, %1047
  %1052 = phi ptr [ %1057, %1051 ], [ %1032, %1047 ]
  %1053 = load i8, ptr %1052, align 1, !tbaa !12
  %1054 = zext i8 %1053 to i32
  %1055 = load ptr, ptr @stderr, align 8, !tbaa !9
  %1056 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1055, ptr noundef nonnull @.str.117, i32 noundef %1054) #19
  %1057 = getelementptr inbounds i8, ptr %1052, i64 1
  %1058 = icmp ugt ptr %1057, %1031
  br i1 %1058, label %1059, label %1051

1059:                                             ; preds = %1051, %1047
  %1060 = load ptr, ptr @stderr, align 8, !tbaa !9
  %1061 = call i32 @fputc(i32 10, ptr %1060) #16
  br label %1062

1062:                                             ; preds = %1059, %1044
  %1063 = icmp eq ptr %1031, %1032
  br i1 %1063, label %1075, label %1064

1064:                                             ; preds = %1064, %1062
  %1065 = phi ptr [ %1073, %1064 ], [ %1031, %1062 ]
  %1066 = phi ptr [ %1072, %1064 ], [ %1030, %1062 ]
  %1067 = load i8, ptr %1065, align 1, !tbaa !12
  %1068 = zext i8 %1067 to i64
  %1069 = getelementptr inbounds [162 x i8], ptr @yystos, i64 0, i64 %1068
  %1070 = load i8, ptr %1069, align 1, !tbaa !12
  %1071 = sext i8 %1070 to i32
  call fastcc void @yydestruct(ptr noundef nonnull @.str.25, i32 noundef %1071, ptr noundef %1066)
  %1072 = getelementptr inbounds %union.YYSTYPE, ptr %1066, i64 -1
  %1073 = getelementptr inbounds i8, ptr %1065, i64 -1
  %1074 = icmp eq ptr %1073, %1032
  br i1 %1074, label %1075, label %1064

1075:                                             ; preds = %1064, %1062
  %1076 = icmp eq ptr %1032, %1
  br i1 %1076, label %1078, label %1077

1077:                                             ; preds = %1075
  call void @free(ptr noundef %1032) #16
  br label %1078

1078:                                             ; preds = %1077, %1075
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 6400, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 6400, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %1) #16
  ret i32 %1029
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

declare i32 @yylex() local_unnamed_addr #6

declare ptr @build_dt_info(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @guess_boot_cpuid(ptr noundef) local_unnamed_addr #6

declare void @srcpos_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

declare ptr @chain_reserve_entry(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @build_reserve_entry(i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @add_label(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @name_node(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @merge_nodes(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @add_orphan_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @build_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @get_node_by_ref(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @delete_node(ptr noundef) local_unnamed_addr #6

declare ptr @omit_node_if_unused(ptr noundef) local_unnamed_addr #6

declare ptr @chain_property(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @build_property(ptr noundef, ptr noundef byval(%struct.data) align 8, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare ptr @build_property_delete(ptr noundef) local_unnamed_addr #6

declare void @data_merge(ptr sret(%struct.data) align 8, ptr noundef byval(%struct.data) align 8, ptr noundef byval(%struct.data) align 8) local_unnamed_addr #6

declare void @data_add_marker(ptr sret(%struct.data) align 8, ptr noundef byval(%struct.data) align 8, i32 noundef, ptr noundef) local_unnamed_addr #6

declare ptr @srcfile_relative_open(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint noreturn nounwind uwtable
define internal void @die(ptr nocapture readnone %0, ...) unnamed_addr #8 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !9
  %4 = call i64 @fwrite(ptr nonnull @.str.115, i64 13, i64 1, ptr %3) #17
  %5 = load ptr, ptr @stderr, align 8, !tbaa !9
  %6 = call i32 @vfprintf(ptr noundef %5, ptr noundef nonnull @.str.13, ptr noundef nonnull %2) #17
  call void @llvm.va_end(ptr nonnull %2)
  call void @exit(i32 noundef 1) #22
  unreachable
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #10

declare void @data_copy_file(ptr sret(%struct.data) align 8, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

declare void @data_append_integer(ptr sret(%struct.data) align 8, ptr noundef byval(%struct.data) align 8, i64 noundef, i32 noundef) local_unnamed_addr #6

declare void @data_append_byte(ptr sret(%struct.data) align 8, ptr noundef byval(%struct.data) align 8, i8 noundef zeroext) local_unnamed_addr #6

declare ptr @chain_node(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @build_node_delete(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @yy_stack_print(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #11 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !9
  %4 = tail call i64 @fwrite(ptr nonnull @.str.116, i64 9, i64 1, ptr %3) #17
  %5 = icmp ugt ptr %0, %1
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %2
  %7 = phi ptr [ %12, %6 ], [ %0, %2 ]
  %8 = load i8, ptr %7, align 1, !tbaa !12
  %9 = zext i8 %8 to i32
  %10 = load ptr, ptr @stderr, align 8, !tbaa !9
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.117, i32 noundef %9) #17
  %12 = getelementptr inbounds i8, ptr %7, i64 1
  %13 = icmp ugt ptr %12, %1
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %2
  %15 = load ptr, ptr @stderr, align 8, !tbaa !9
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @yyerror(ptr noundef %0) local_unnamed_addr #0 {
  tail call void (ptr, ptr, ptr, ...) @srcpos_error(ptr noundef nonnull @yylloc, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.26, ptr noundef %0) #16
  store i8 1, ptr @treesource_error, align 1, !tbaa !24
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @yydestruct(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) unnamed_addr #11 {
  %4 = load i32, ptr @yydebug, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %3
  %7 = icmp eq ptr %0, null
  %8 = select i1 %7, ptr @.str.118, ptr %0
  %9 = load ptr, ptr @stderr, align 8, !tbaa !9
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.5, ptr noundef %8) #17
  %11 = load ptr, ptr @stderr, align 8, !tbaa !9
  %12 = icmp slt i32 %1, 50
  %13 = select i1 %12, ptr @.str.28, ptr @.str.29
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds [82 x ptr], ptr @yytname, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.27, ptr noundef nonnull %13, ptr noundef %16) #19
  %18 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %11) #19
  %19 = tail call i32 @fputc(i32 41, ptr %11) #16
  %20 = load ptr, ptr @stderr, align 8, !tbaa !9
  %21 = tail call i32 @fputc(i32 10, ptr %20)
  br label %22

22:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #12

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #12

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #15

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { inlinehint noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { cold }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind readnone willreturn }
attributes #21 = { noreturn }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 8, !9, i64 24, i64 8, !9}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !7, i64 0}
!15 = !{i64 0, i64 8, !9, i64 0, i64 8, !9, i64 0, i64 1, !12, i64 0, i64 4, !5, i64 8, i64 8, !9, i64 16, i64 8, !9, i64 0, i64 4, !5, i64 8, i64 8, !9, i64 16, i64 8, !9, i64 24, i64 4, !5, i64 0, i64 8, !9, i64 0, i64 8, !9, i64 0, i64 8, !9, i64 0, i64 8, !9, i64 0, i64 8, !9, i64 0, i64 8, !16, i64 0, i64 4, !5}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{i64 0, i64 8, !9, i64 8, i64 8, !9, i64 0, i64 8, !9, i64 8, i64 8, !9, i64 16, i64 4, !5}
!19 = !{i64 0, i64 4, !5}
!20 = !{}
!21 = !{!22, !10, i64 16}
!22 = !{!"srcpos", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !10, i64 16, !10, i64 24}
!23 = !{!22, !10, i64 24}
!24 = !{!25, !25, i64 0}
!25 = !{!"_Bool", !7, i64 0}
!26 = !{i64 0, i64 4, !5, i64 8, i64 8, !9, i64 16, i64 8, !9}
!27 = !{i64 0, i64 8, !9, i64 8, i64 8, !9}
