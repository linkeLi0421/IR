; ModuleID = '/llk/IR/build_arm/scripts/kconfig/parser.tab.c_pt.bc'
source_filename = "scripts/kconfig/parser.tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.YYSTYPE = type { ptr }
%struct.menu = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr }
%struct.symbol = type { ptr, ptr, i32, %struct.symbol_value, [4 x %struct.symbol_value], i32, i32, ptr, %struct.expr_value, %struct.expr_value, %struct.expr_value }
%struct.symbol_value = type { ptr, i32 }
%struct.expr_value = type { ptr, i32 }
%union.yyalloc = type { %union.YYSTYPE }
%struct.property = type { ptr, i32, ptr, %struct.expr_value, ptr, ptr, ptr, i32 }
%struct.file = type { ptr, ptr, ptr, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.expr = type { i32, %union.expr_data, %union.expr_data }
%union.expr_data = type { ptr }

@cdebug = dso_local local_unnamed_addr global i32 1, align 4
@yydebug = dso_local local_unnamed_addr global i32 0, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"Starting parse\0A\00", align 1
@yynerrs = dso_local local_unnamed_addr global i32 0, align 4
@yychar = dso_local local_unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Entering state %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Stack size increased to %ld\0A\00", align 1
@yypact = internal unnamed_addr constant [184 x i16] [i16 -4, i16 29, i16 47, i16 -65, i16 17, i16 5, i16 -65, i16 49, i16 9, i16 14, i16 51, i16 56, i16 58, i16 2, i16 60, i16 58, i16 63, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 34, i16 -65, i16 -65, i16 -65, i16 41, i16 -65, i16 38, i16 50, i16 -65, i16 52, i16 -65, i16 2, i16 2, i16 30, i16 -65, i16 135, i16 55, i16 57, i16 61, i16 108, i16 108, i16 131, i16 156, i16 91, i16 20, i16 91, i16 68, i16 -65, i16 -65, i16 67, i16 -65, i16 -65, i16 -65, i16 22, i16 -65, i16 -65, i16 2, i16 2, i16 28, i16 28, i16 28, i16 28, i16 28, i16 28, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 62, i16 71, i16 -65, i16 58, i16 -65, i16 72, i16 83, i16 28, i16 58, i16 -65, i16 -65, i16 -65, i16 94, i16 -65, i16 2, i16 112, i16 -65, i16 -65, i16 58, i16 79, i16 114, i16 -65, i16 94, i16 -65, i16 -65, i16 85, i16 86, i16 90, i16 93, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 113, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 96, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 2, i16 -65, i16 113, i16 -65, i16 113, i16 28, i16 113, i16 113, i16 97, i16 25, i16 -65, i16 113, i16 -65, i16 113, i16 100, i16 -65, i16 -65, i16 -65, i16 -65, i16 156, i16 2, i16 109, i16 37, i16 116, i16 120, i16 113, i16 121, i16 -65, i16 -65, i16 123, i16 125, i16 126, i16 -65, i16 -65, i16 44, i16 -65, i16 -65, i16 -65, i16 -65, i16 130, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65], align 16
@.str.3 = private unnamed_addr constant [18 x i8] c"Reading a token: \00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Now at end of input.\0A\00", align 1
@yytranslate = internal unnamed_addr constant [305 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./01", align 16
@.str.5 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Next token is\00", align 1
@yylval = dso_local global %union.YYSTYPE zeroinitializer, align 8
@yycheck = internal unnamed_addr constant [185 x i8] c"./999\0C\04\05\0FIJKLMN\01\03\00\019\18\04<\09\07GH\0A\0B]\08\1D\04\05\05\0F8\18\15;\1B=\19\1A'\1F\15\00'\00\011#\04d\04\07+&\0A\0B\05\04)*\05)*\05'\15)*'\19\1A'')*\90(Y\0F#)*^\05'\1C'\01\8B'\04'h\07\05'\0A\0B\9E\9E\9E'\10\11\12''\15\9F\06\03\19\1A'\05\0C\0D\0E\0F''#\13\14'\16\17'u\15\1B'\06*' !\22\0C$%\0F\8D'\8F\13\91\92\13\94'\96\01\98''\1E' ''\0A\0B%'\A48\10\11\128\9E\15+,-./0l", align 16
@yytable = internal unnamed_addr constant [185 x i16] [i16 68, i16 69, i16 115, i16 117, i16 119, i16 44, i16 43, i16 45, i16 52, i16 133, i16 134, i16 135, i16 136, i16 137, i16 138, i16 35, i16 7, i16 -3, i16 8, i16 120, i16 1, i16 9, i16 127, i16 36, i16 10, i16 131, i16 132, i16 11, i16 12, i16 144, i16 130, i16 46, i16 43, i16 45, i16 5, i16 86, i16 110, i16 58, i16 13, i16 124, i16 60, i16 128, i16 14, i16 15, i16 33, i16 37, i16 159, i16 6, i16 34, i16 -2, i16 8, i16 47, i16 16, i16 9, i16 148, i16 40, i16 10, i16 38, i16 123, i16 11, i16 12, i16 42, i16 43, i16 71, i16 72, i16 51, i16 71, i16 72, i16 53, i16 70, i16 13, i16 71, i16 72, i16 62, i16 14, i16 15, i16 175, i16 65, i16 71, i16 72, i16 164, i16 63, i16 141, i16 86, i16 16, i16 71, i16 72, i16 145, i16 143, i16 66, i16 139, i16 67, i16 8, i16 161, i16 79, i16 9, i16 80, i16 150, i16 10, i16 146, i16 81, i16 11, i16 12, i16 115, i16 117, i16 119, i16 129, i16 112, i16 113, i16 114, i16 140, i16 142, i16 13, i16 173, i16 82, i16 149, i16 14, i16 15, i16 151, i16 152, i16 83, i16 84, i16 85, i16 86, i16 154, i16 155, i16 16, i16 87, i16 88, i16 156, i16 89, i16 90, i16 157, i16 158, i16 159, i16 91, i16 167, i16 82, i16 72, i16 171, i16 92, i16 93, i16 94, i16 104, i16 95, i16 96, i16 86, i16 162, i16 174, i16 163, i16 87, i16 165, i16 166, i16 55, i16 168, i16 176, i16 169, i16 111, i16 170, i16 177, i16 179, i16 105, i16 180, i16 106, i16 181, i16 182, i16 11, i16 12, i16 96, i16 183, i16 178, i16 108, i16 112, i16 113, i16 114, i16 109, i16 172, i16 13, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 153], align 16
@.str.8 = private unnamed_addr constant [9 x i8] c"Shifting\00", align 1
@yydefact = internal unnamed_addr constant [184 x i8] c"\05\00\00\05\00\00\01\00\00\00b\00\00\00\00\00\00\19\09\19\0C(\10\07\05\0AA\05\0B\0DG\08\06\04\0F\00fgehc\00\00_\00a\00\00\00`T\00\00\00\16\18%\00\00>\00F\0Ei\00$E\15\00\\9\00\00\00\00\00\00\00\00=\17D4678\00\002\001\00\00\00\0035\1AM0\00\00\1C\1B\00\00\00)M+*\00\00\00\00\12'\10\13\11&;:RCB@?Hd[]^YZUVWX\00IR#R\00RR\00RJR.R\00\14PQO\00\00\00\00\00\00R\00N\1D\00\00\00-<SLK!\1E\00 \1F/,\22", align 16
@yyr2 = internal unnamed_addr constant [106 x i8] c"\00\02\02\01\03\00\02\02\02\02\02\02\02\02\04\03\00\02\02\02\03\03\02\03\02\00\02\02\02\03\04\04\04\04\05\02\03\02\01\03\00\02\02\02\04\03\02\04\01\01\01\01\01\01\01\01\01\03\01\03\03\03\02\01\03\00\02\02\03\03\02\00\02\02\02\04\03\00\02\02\02\02\00\02\01\03\03\03\03\03\03\03\02\03\03\01\01\01\00\01\04\01\01\01\00\01", align 16
@.str.9 = private unnamed_addr constant [23 x i8] c"unknown statement \22%s\22\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"invalid statement\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"%s:%d:config %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"%s:%d:endconfig\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"%s:%d:menuconfig %s\0A\00", align 1
@current_entry = dso_local local_unnamed_addr global ptr null, align 8
@.str.14 = private unnamed_addr constant [45 x i8] c"warning: menuconfig statement without prompt\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"%s:%d:type(%u)\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"%s:%d:prompt\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"%s:%d:default(%u)\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"%s:%d:select\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"%s:%d:imply\0A\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"%s:%d:range\0A\00", align 1
@modules_sym = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [70 x i8] c"symbol '%s' redefines option 'modules' already defined by symbol '%s'\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"%s:%d:choice\0A\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"choice\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"%s:%d:endchoice\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"%s:%d:optional\0A\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"%s:%d:default\0A\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"%s:%d:if\0A\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"%s:%d:endif\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"%s:%d:menu\0A\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"menu\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"%s:%d:endmenu\0A\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"%s:%d:source %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"%s:%d:comment\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"%s:%d:help\0A\00", align 1
@.str.36 = private unnamed_addr constant [85 x i8] c"warning: '%s' defined with more than one help text -- only the last one will be used\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"<choice>\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c" \0C\0A\0D\09\0B\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"warning: '%s' defined with blank help text\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"%s:%d:depends on\0A\00", align 1
@.str.41 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"-> $$ =\00", align 1
@yyr1 = internal unnamed_addr constant [106 x i8] c"\0023345555555555566666789:;;;;<<<<<<<=>?@AAAABBBBCCCCDDEEEFGHIJKLMNNNOPQRRSTUVWWXXXYYZZZZZZZZZZZ[\\\\]]^___``", align 16
@yypgoto = internal unnamed_addr constant [47 x i16] [i16 -65, i16 -65, i16 -65, i16 13, i16 16, i16 -65, i16 -55, i16 -65, i16 -65, i16 134, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 115, i16 -65, i16 -54, i16 18, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -65, i16 -53, i16 -65, i16 -65, i16 119, i16 -20, i16 -65, i16 76, i16 -38, i16 6, i16 -46, i16 -7, i16 -64, i16 -65, i16 -65, i16 -65, i16 -65], align 16
@yydefgoto = internal unnamed_addr constant [47 x i16] [i16 -1, i16 2, i16 3, i16 4, i16 57, i16 17, i16 18, i16 19, i16 20, i16 54, i16 97, i16 21, i16 22, i16 116, i16 23, i16 56, i16 107, i16 98, i16 99, i16 100, i16 24, i16 121, i16 25, i16 118, i16 26, i16 27, i16 126, i16 28, i16 59, i16 29, i16 30, i16 31, i16 61, i16 101, i16 102, i16 103, i16 125, i16 147, i16 122, i16 160, i16 48, i16 49, i16 50, i16 41, i16 32, i16 39, i16 64], align 16
@.str.43 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"Error: discarding\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"Error: popping\00", align 1
@yystos = internal unnamed_addr constant [184 x i8] c"\00\18345\05\005\01\04\07\0A\0B\15\19\1A#789:=>@FHJKMOPQ^''\01\09\1F+_\04]\05\04[\05\1D1Z[\\\05[\05;;A65N5R'(`'''ZZ')*+,-./0'''\06\0C\0D\0E\0F\13\14\16\17\1B !\22$%<CDESTU\0C\1E BDTU\01\10\11\128?FIQXGX&UVLXU'\08ZZ\\\\\\\\\\\\\1C'['\05\\[\05WZ\03['\05W''''6\15YZYY\\YY'YYY'GZ''''Y'''''", align 16
@.str.46 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"Cleanup: discarding lookahead\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"Cleanup: popping\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"ZCONF_DEBUG\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@rootmenu = external global %struct.menu, align 8
@.str.51 = private unnamed_addr constant [10 x i8] c"Main menu\00", align 1
@symbol_hash = dso_local local_unnamed_addr global [9973 x ptr] zeroinitializer, align 16
@.str.52 = private unnamed_addr constant [10 x i8] c"\0Acomment \00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"\0Amenu \00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"  depends \00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"\0Aendmenu\0A\00", align 1
@current_menu = dso_local local_unnamed_addr global ptr null, align 8
@.str.56 = private unnamed_addr constant [8 x i8] c"%s %s (\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"nterm\00", align 1
@yytname = internal unnamed_addr constant [98 x ptr] [ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.23, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.31, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr null], align 16
@.str.60 = private unnamed_addr constant [5 x i8] c"$end\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"$undefined\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"T_HELPTEXT\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"T_WORD\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"T_WORD_QUOTE\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"T_BOOL\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"T_CHOICE\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"T_CLOSE_PAREN\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"T_COLON_EQUAL\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"T_COMMENT\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"T_CONFIG\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"T_DEFAULT\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"T_DEF_BOOL\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"T_DEF_TRISTATE\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"T_DEPENDS\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"T_ENDCHOICE\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"T_ENDIF\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"T_ENDMENU\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"T_HELP\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"T_HEX\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"T_IF\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"T_IMPLY\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"T_INT\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"T_MAINMENU\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"T_MENU\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"T_MENUCONFIG\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"T_MODULES\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"T_ON\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"T_OPEN_PAREN\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"T_OPTIONAL\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"T_PLUS_EQUAL\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"T_PROMPT\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"T_RANGE\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"T_SELECT\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"T_SOURCE\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"T_STRING\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"T_TRISTATE\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"T_VISIBLE\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"T_EOL\00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"T_ASSIGN_VAL\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"T_OR\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"T_AND\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c"T_EQUAL\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"T_UNEQUAL\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"T_LESS\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"T_LESS_EQUAL\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"T_GREATER\00", align 1
@.str.108 = private unnamed_addr constant [16 x i8] c"T_GREATER_EQUAL\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"T_NOT\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"$accept\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.112 = private unnamed_addr constant [14 x i8] c"mainmenu_stmt\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"stmt_list\00", align 1
@.str.114 = private unnamed_addr constant [20 x i8] c"stmt_list_in_choice\00", align 1
@.str.115 = private unnamed_addr constant [19 x i8] c"config_entry_start\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"config_stmt\00", align 1
@.str.117 = private unnamed_addr constant [23 x i8] c"menuconfig_entry_start\00", align 1
@.str.118 = private unnamed_addr constant [16 x i8] c"menuconfig_stmt\00", align 1
@.str.119 = private unnamed_addr constant [19 x i8] c"config_option_list\00", align 1
@.str.120 = private unnamed_addr constant [14 x i8] c"config_option\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"choice_entry\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"choice_end\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"choice_stmt\00", align 1
@.str.124 = private unnamed_addr constant [19 x i8] c"choice_option_list\00", align 1
@.str.125 = private unnamed_addr constant [14 x i8] c"choice_option\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"logic_type\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"if_entry\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"if_end\00", align 1
@.str.131 = private unnamed_addr constant [8 x i8] c"if_stmt\00", align 1
@.str.132 = private unnamed_addr constant [18 x i8] c"if_stmt_in_choice\00", align 1
@.str.133 = private unnamed_addr constant [11 x i8] c"menu_entry\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"menu_end\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"menu_stmt\00", align 1
@.str.136 = private unnamed_addr constant [17 x i8] c"menu_option_list\00", align 1
@.str.137 = private unnamed_addr constant [12 x i8] c"source_stmt\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"comment_stmt\00", align 1
@.str.140 = private unnamed_addr constant [20 x i8] c"comment_option_list\00", align 1
@.str.141 = private unnamed_addr constant [11 x i8] c"help_start\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.143 = private unnamed_addr constant [8 x i8] c"depends\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.145 = private unnamed_addr constant [16 x i8] c"prompt_stmt_opt\00", align 1
@.str.146 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.147 = private unnamed_addr constant [8 x i8] c"if_expr\00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c"expr\00", align 1
@.str.149 = private unnamed_addr constant [16 x i8] c"nonconst_symbol\00", align 1
@.str.150 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@.str.151 = private unnamed_addr constant [9 x i8] c"word_opt\00", align 1
@.str.152 = private unnamed_addr constant [16 x i8] c"assignment_stmt\00", align 1
@.str.153 = private unnamed_addr constant [10 x i8] c"assign_op\00", align 1
@.str.154 = private unnamed_addr constant [11 x i8] c"assign_val\00", align 1
@yyrline = internal unnamed_addr constant [106 x i16] [i16 0, i16 109, i16 109, i16 109, i16 113, i16 118, i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 127, i16 128, i16 129, i16 132, i16 134, i16 135, i16 136, i16 137, i16 142, i16 149, i16 154, i16 161, i16 170, i16 172, i16 173, i16 174, i16 177, i16 185, i16 191, i16 201, i16 207, i16 213, i16 219, i16 229, i16 239, i16 244, i16 252, i16 255, i16 257, i16 258, i16 259, i16 262, i16 268, i16 275, i16 281, i16 289, i16 290, i16 291, i16 292, i16 295, i16 296, i16 299, i16 300, i16 301, i16 305, i16 313, i16 321, i16 324, i16 329, i16 336, i16 341, i16 349, i16 352, i16 354, i16 355, i16 358, i16 367, i16 374, i16 377, i16 379, i16 384, i16 390, i16 408, i16 415, i16 422, i16 424, i16 429, i16 430, i16 431, i16 434, i16 435, i16 438, i16 439, i16 440, i16 441, i16 442, i16 443, i16 444, i16 445, i16 446, i16 447, i16 448, i16 452, i16 454, i16 455, i16 458, i16 459, i16 463, i16 466, i16 467, i16 468, i16 472, i16 473], align 16
@.str.155 = private unnamed_addr constant [38 x i8] c"Reducing stack by rule %d (line %d):\0A\00", align 1
@.str.156 = private unnamed_addr constant [10 x i8] c"   $%d = \00", align 1
@.str.157 = private unnamed_addr constant [10 x i8] c"Stack now\00", align 1
@.str.158 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.159 = private unnamed_addr constant [9 x i8] c"Deleting\00", align 1
@.str.160 = private unnamed_addr constant [45 x i8] c"%s:%d: missing end statement for this entry\0A\00", align 1
@.str.161 = private unnamed_addr constant [32 x i8] c"unexpected '%s' within %s block\00", align 1
@current_file = external local_unnamed_addr global ptr, align 8
@.str.162 = private unnamed_addr constant [33 x i8] c"'%s' in different file than '%s'\00", align 1
@.str.163 = private unnamed_addr constant [29 x i8] c"%s:%d: location of the '%s'\0A\00", align 1
@.str.164 = private unnamed_addr constant [8 x i8] c"%s:%d: \00", align 1
@.str.165 = private unnamed_addr constant [11 x i8] c"%s:%d: %s\0A\00", align 1
@.str.166 = private unnamed_addr constant [9 x i8] c"\0Achoice\0A\00", align 1
@.str.167 = private unnamed_addr constant [12 x i8] c"\0Aconfig %s\0A\00", align 1
@.str.168 = private unnamed_addr constant [8 x i8] c"  bool\0A\00", align 1
@.str.169 = private unnamed_addr constant [12 x i8] c"  tristate\0A\00", align 1
@.str.170 = private unnamed_addr constant [10 x i8] c"  string\0A\00", align 1
@.str.171 = private unnamed_addr constant [11 x i8] c"  integer\0A\00", align 1
@.str.172 = private unnamed_addr constant [7 x i8] c"  hex\0A\00", align 1
@.str.173 = private unnamed_addr constant [7 x i8] c"  ???\0A\00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c"  prompt \00", align 1
@.str.175 = private unnamed_addr constant [5 x i8] c" if \00", align 1
@.str.176 = private unnamed_addr constant [11 x i8] c"  default \00", align 1
@.str.177 = private unnamed_addr constant [17 x i8] c"  #choice value\0A\00", align 1
@.str.178 = private unnamed_addr constant [10 x i8] c"  select \00", align 1
@.str.179 = private unnamed_addr constant [9 x i8] c"  imply \00", align 1
@.str.180 = private unnamed_addr constant [9 x i8] c"  range \00", align 1
@.str.181 = private unnamed_addr constant [8 x i8] c"  menu \00", align 1
@.str.182 = private unnamed_addr constant [10 x i8] c"  symbol \00", align 1
@.str.183 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.184 = private unnamed_addr constant [20 x i8] c"  unknown prop %d!\0A\00", align 1
@.str.185 = private unnamed_addr constant [11 x i8] c"  help\0A%s\0A\00", align 1
@.str.186 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.187 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@symbol_yes = external global %struct.symbol, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @yyparse() local_unnamed_addr #0 {
  %1 = alloca [200 x i8], align 16
  %2 = alloca [200 x %union.YYSTYPE], align 16
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(i64 1600, ptr nonnull %2) #14
  %3 = load i32, ptr @yydebug, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load ptr, ptr @stderr, align 8, !tbaa !9
  %7 = tail call i64 @fwrite(ptr nonnull @.str, i64 15, i64 1, ptr %6) #15
  br label %8

8:                                                ; preds = %5, %0
  store i32 0, ptr @yynerrs, align 4, !tbaa !5
  store i32 -2, ptr @yychar, align 4, !tbaa !5
  br label %15

9:                                                ; preds = %911, %903, %826, %151
  %10 = phi ptr [ %807, %826 ], [ %152, %151 ], [ %907, %911 ], [ %907, %903 ]
  %11 = phi ptr [ %805, %826 ], [ %68, %151 ], [ %859, %911 ], [ %859, %903 ]
  %12 = phi i32 [ %21, %826 ], [ %142, %151 ], [ 3, %911 ], [ 3, %903 ]
  %13 = phi i32 [ %829, %826 ], [ %134, %151 ], [ %906, %911 ], [ %906, %903 ]
  %14 = getelementptr inbounds i8, ptr %11, i64 1
  br label %15

15:                                               ; preds = %9, %8
  %16 = phi i64 [ 200, %8 ], [ %65, %9 ]
  %17 = phi ptr [ %2, %8 ], [ %10, %9 ]
  %18 = phi ptr [ %2, %8 ], [ %67, %9 ]
  %19 = phi ptr [ %1, %8 ], [ %14, %9 ]
  %20 = phi ptr [ %1, %8 ], [ %69, %9 ]
  %21 = phi i32 [ 0, %8 ], [ %12, %9 ]
  %22 = phi i32 [ 0, %8 ], [ %13, %9 ]
  %23 = load i32, ptr @yydebug, align 4, !tbaa !5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = load ptr, ptr @stderr, align 8, !tbaa !9
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.1, i32 noundef %22) #15
  br label %28

28:                                               ; preds = %25, %15
  %29 = trunc i32 %22 to i8
  store i8 %29, ptr %19, align 1, !tbaa !11
  %30 = getelementptr inbounds i8, ptr %20, i64 -1
  %31 = getelementptr inbounds i8, ptr %30, i64 %16
  %32 = icmp ugt ptr %31, %19
  br i1 %32, label %64, label %33

33:                                               ; preds = %28
  %34 = ptrtoint ptr %19 to i64
  %35 = ptrtoint ptr %20 to i64
  %36 = sub i64 %34, %35
  %37 = add nsw i64 %36, 1
  %38 = icmp sgt i64 %16, 9999
  br i1 %38, label %921, label %39

39:                                               ; preds = %33
  %40 = shl nsw i64 %16, 1
  %41 = call i64 @llvm.smin.i64(i64 %40, i64 10000)
  %42 = mul nsw i64 %41, 9
  %43 = add nsw i64 %42, 7
  %44 = call noalias ptr @malloc(i64 noundef %43) #16
  %45 = icmp eq ptr %44, null
  br i1 %45, label %921, label %46

46:                                               ; preds = %39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %44, ptr align 1 %20, i64 %37, i1 false)
  %47 = add nsw i64 %41, 7
  %48 = sdiv i64 %47, 8
  %49 = getelementptr inbounds %union.yyalloc, ptr %44, i64 %48
  %50 = shl i64 %37, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %49, ptr align 8 %18, i64 %50, i1 false)
  %51 = icmp eq ptr %20, %1
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  call void @free(ptr noundef %20) #14
  br label %53

53:                                               ; preds = %52, %46
  %54 = getelementptr inbounds i8, ptr %44, i64 %36
  %55 = getelementptr inbounds %union.YYSTYPE, ptr %49, i64 -1
  %56 = getelementptr inbounds %union.YYSTYPE, ptr %55, i64 %37
  %57 = load i32, ptr @yydebug, align 4, !tbaa !5
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load ptr, ptr @stderr, align 8, !tbaa !9
  %61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.2, i64 noundef %41) #15
  br label %62

62:                                               ; preds = %59, %53
  %63 = icmp sgt i64 %41, %37
  br i1 %63, label %64, label %927

64:                                               ; preds = %62, %28
  %65 = phi i64 [ %16, %28 ], [ %41, %62 ]
  %66 = phi ptr [ %17, %28 ], [ %56, %62 ]
  %67 = phi ptr [ %18, %28 ], [ %49, %62 ]
  %68 = phi ptr [ %19, %28 ], [ %54, %62 ]
  %69 = phi ptr [ %20, %28 ], [ %44, %62 ]
  %70 = icmp eq i32 %22, 6
  br i1 %70, label %927, label %71

71:                                               ; preds = %64
  %72 = sext i32 %22 to i64
  %73 = getelementptr inbounds [184 x i16], ptr @yypact, i64 0, i64 %72
  %74 = load i16, ptr %73, align 2, !tbaa !12
  %75 = sext i16 %74 to i32
  %76 = icmp eq i16 %74, -65
  br i1 %76, label %154, label %77

77:                                               ; preds = %71
  %78 = load i32, ptr @yychar, align 4, !tbaa !5
  %79 = icmp eq i32 %78, -2
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i32, ptr @yydebug, align 4, !tbaa !5
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr @stderr, align 8, !tbaa !9
  %85 = call i64 @fwrite(ptr nonnull @.str.3, i64 17, i64 1, ptr %84) #15
  br label %86

86:                                               ; preds = %83, %80
  %87 = call i32 @yylex() #14
  store i32 %87, ptr @yychar, align 4, !tbaa !5
  br label %88

88:                                               ; preds = %86, %77
  %89 = phi i32 [ %87, %86 ], [ %78, %77 ]
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  store i32 0, ptr @yychar, align 4, !tbaa !5
  %92 = load i32, ptr @yydebug, align 4, !tbaa !5
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %121, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr @stderr, align 8, !tbaa !9
  %96 = call i64 @fwrite(ptr nonnull @.str.4, i64 21, i64 1, ptr %95) #15
  br label %121

97:                                               ; preds = %88
  %98 = icmp ult i32 %89, 305
  br i1 %98, label %99, label %104

99:                                               ; preds = %97
  %100 = zext i32 %89 to i64
  %101 = getelementptr inbounds [305 x i8], ptr @yytranslate, i64 0, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !11
  %103 = sext i8 %102 to i32
  br label %104

104:                                              ; preds = %99, %97
  %105 = phi i32 [ %103, %99 ], [ 2, %97 ]
  %106 = load i32, ptr @yydebug, align 4, !tbaa !5
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %121, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr @stderr, align 8, !tbaa !9
  %110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #15
  %111 = load ptr, ptr @stderr, align 8, !tbaa !9
  %112 = icmp slt i32 %105, 50
  %113 = select i1 %112, ptr @.str.57, ptr @.str.58
  %114 = sext i32 %105 to i64
  %115 = getelementptr inbounds [98 x ptr], ptr @yytname, i64 0, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !9
  %117 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %111, ptr noundef nonnull @.str.56, ptr noundef nonnull %113, ptr noundef %116) #17
  %118 = call i32 @fputc(i32 41, ptr %111) #14
  %119 = load ptr, ptr @stderr, align 8, !tbaa !9
  %120 = call i32 @fputc(i32 10, ptr %119)
  br label %121

121:                                              ; preds = %108, %104, %94, %91
  %122 = phi i32 [ 0, %94 ], [ 0, %91 ], [ %105, %108 ], [ %105, %104 ]
  %123 = add nsw i32 %122, %75
  %124 = icmp ugt i32 %123, 184
  br i1 %124, label %154, label %125

125:                                              ; preds = %121
  %126 = zext i32 %123 to i64
  %127 = getelementptr inbounds [185 x i8], ptr @yycheck, i64 0, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !11
  %129 = zext i8 %128 to i32
  %130 = icmp eq i32 %122, %129
  br i1 %130, label %131, label %154

131:                                              ; preds = %125
  %132 = getelementptr inbounds [185 x i16], ptr @yytable, i64 0, i64 %126
  %133 = load i16, ptr %132, align 2, !tbaa !12
  %134 = sext i16 %133 to i32
  %135 = and i32 %123, -33
  %136 = icmp eq i32 %135, 17
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = sub nsw i32 0, %134
  br label %159

139:                                              ; preds = %131
  %140 = icmp eq i32 %21, 0
  %141 = add nsw i32 %21, -1
  %142 = select i1 %140, i32 0, i32 %141
  %143 = load i32, ptr @yydebug, align 4, !tbaa !5
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %139
  %146 = load ptr, ptr @stderr, align 8, !tbaa !9
  %147 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %146, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8) #15
  %148 = load ptr, ptr @stderr, align 8, !tbaa !9
  call fastcc void @yy_symbol_print(ptr noundef %148, i32 noundef %122, ptr noundef nonnull @yylval)
  %149 = load ptr, ptr @stderr, align 8, !tbaa !9
  %150 = call i32 @fputc(i32 10, ptr %149)
  br label %151

151:                                              ; preds = %145, %139
  %152 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 1
  %153 = load i64, ptr @yylval, align 8
  store i64 %153, ptr %152, align 8
  store i32 -2, ptr @yychar, align 4, !tbaa !5
  br label %9

154:                                              ; preds = %125, %121, %71
  %155 = getelementptr inbounds [184 x i8], ptr @yydefact, i64 0, i64 %72
  %156 = load i8, ptr %155, align 1, !tbaa !11
  %157 = sext i8 %156 to i32
  %158 = icmp eq i8 %156, 0
  br i1 %158, label %830, label %159

159:                                              ; preds = %154, %137
  %160 = phi i32 [ %157, %154 ], [ %138, %137 ]
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [106 x i8], ptr @yyr2, i64 0, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !11
  %164 = sext i8 %163 to i64
  %165 = sub nsw i64 1, %164
  %166 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 %165
  %167 = load i64, ptr %166, align 8
  %168 = inttoptr i64 %167 to ptr
  %169 = load i32, ptr @yydebug, align 4, !tbaa !5
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %204, label %171

171:                                              ; preds = %159
  %172 = getelementptr inbounds [106 x i16], ptr @yyrline, i64 0, i64 %161
  %173 = load i16, ptr %172, align 2, !tbaa !12
  %174 = sext i16 %173 to i32
  %175 = load ptr, ptr @stderr, align 8, !tbaa !9
  %176 = add nsw i32 %160, -1
  %177 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %175, ptr noundef nonnull @.str.155, i32 noundef %176, i32 noundef %174) #17
  %178 = icmp sgt i8 %163, 0
  br i1 %178, label %179, label %204

179:                                              ; preds = %171
  %180 = zext i8 %163 to i64
  br label %181

181:                                              ; preds = %181, %179
  %182 = phi i64 [ 0, %179 ], [ %184, %181 ]
  %183 = load ptr, ptr @stderr, align 8, !tbaa !9
  %184 = add nuw nsw i64 %182, 1
  %185 = trunc i64 %184 to i32
  %186 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %183, ptr noundef nonnull @.str.156, i32 noundef %185) #17
  %187 = load ptr, ptr @stderr, align 8, !tbaa !9
  %188 = sub nsw i64 %184, %180
  %189 = getelementptr inbounds i8, ptr %68, i64 %188
  %190 = load i8, ptr %189, align 1, !tbaa !11
  %191 = zext i8 %190 to i64
  %192 = getelementptr inbounds [184 x i8], ptr @yystos, i64 0, i64 %191
  %193 = load i8, ptr %192, align 1, !tbaa !11
  %194 = icmp slt i8 %193, 50
  %195 = select i1 %194, ptr @.str.57, ptr @.str.58
  %196 = sext i8 %193 to i64
  %197 = getelementptr inbounds [98 x ptr], ptr @yytname, i64 0, i64 %196
  %198 = load ptr, ptr %197, align 8, !tbaa !9
  %199 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %187, ptr noundef nonnull @.str.56, ptr noundef nonnull %195, ptr noundef %198) #17
  %200 = call i32 @fputc(i32 41, ptr %187) #14
  %201 = load ptr, ptr @stderr, align 8, !tbaa !9
  %202 = call i32 @fputc(i32 10, ptr %201) #14
  %203 = icmp eq i64 %184, %180
  br i1 %203, label %204, label %181

204:                                              ; preds = %181, %171, %159
  switch i32 %160, label %757 [
    i32 4, label %205
    i32 14, label %209
    i32 15, label %212
    i32 20, label %213
    i32 21, label %214
    i32 22, label %231
    i32 23, label %239
    i32 24, label %256
    i32 29, label %272
    i32 30, label %283
    i32 31, label %296
    i32 32, label %314
    i32 33, label %326
    i32 34, label %338
    i32 35, label %353
    i32 36, label %368
    i32 37, label %383
    i32 38, label %385
    i32 44, label %417
    i32 45, label %430
    i32 46, label %441
    i32 47, label %455
    i32 49, label %467
    i32 50, label %471
    i32 51, label %475
    i32 52, label %479
    i32 53, label %483
    i32 54, label %487
    i32 55, label %490
    i32 56, label %494
    i32 57, label %498
    i32 58, label %510
    i32 61, label %542
    i32 62, label %553
    i32 63, label %555
    i32 68, label %587
    i32 69, label %601
    i32 73, label %612
    i32 74, label %621
    i32 75, label %653
    i32 76, label %663
    i32 78, label %666
    i32 79, label %671
    i32 80, label %672
    i32 81, label %673
    i32 82, label %674
    i32 83, label %675
    i32 84, label %677
    i32 85, label %680
    i32 86, label %685
    i32 87, label %690
    i32 88, label %695
    i32 89, label %700
    i32 90, label %705
    i32 91, label %710
    i32 92, label %713
    i32 93, label %716
    i32 94, label %721
    i32 95, label %726
    i32 97, label %730
    i32 98, label %734
    i32 100, label %735
    i32 101, label %744
    i32 102, label %748
    i32 103, label %751
    i32 104, label %755
  ]

205:                                              ; preds = %204
  %206 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -1
  %207 = load ptr, ptr %206, align 8, !tbaa !11
  %208 = call ptr @menu_add_prompt(i32 noundef 3, ptr noundef %207, ptr noundef null) #14
  br label %757

209:                                              ; preds = %204
  %210 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -2
  %211 = load ptr, ptr %210, align 8, !tbaa !11
  call void (ptr, ...) @zconf_error(ptr noundef nonnull @.str.9, ptr noundef %211)
  br label %757

212:                                              ; preds = %204
  call void (ptr, ...) @zconf_error(ptr noundef nonnull @.str.10)
  br label %757

213:                                              ; preds = %204
  call void (ptr, ...) @zconf_error(ptr noundef nonnull @.str.10)
  br label %757

214:                                              ; preds = %204
  %215 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -1
  %216 = load ptr, ptr %215, align 8, !tbaa !11
  %217 = getelementptr inbounds %struct.symbol, ptr %216, i64 0, i32 6
  %218 = load i32, ptr %217, align 4, !tbaa !14
  %219 = or i32 %218, 256
  store i32 %219, ptr %217, align 4, !tbaa !14
  %220 = load ptr, ptr %215, align 8, !tbaa !11
  call void @menu_add_entry(ptr noundef %220) #14
  %221 = load i32, ptr @cdebug, align 4, !tbaa !5
  %222 = and i32 %221, 2
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %757, label %224

224:                                              ; preds = %214
  %225 = call ptr @zconf_curname() #14
  %226 = call i32 @zconf_lineno() #14
  %227 = load ptr, ptr %215, align 8, !tbaa !11
  %228 = getelementptr inbounds %struct.symbol, ptr %227, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !18
  %230 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, ptr noundef %225, i32 noundef %226, ptr noundef %229)
  br label %757

231:                                              ; preds = %204
  %232 = load i32, ptr @cdebug, align 4, !tbaa !5
  %233 = and i32 %232, 2
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %757, label %235

235:                                              ; preds = %231
  %236 = call ptr @zconf_curname() #14
  %237 = call i32 @zconf_lineno() #14
  %238 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.12, ptr noundef %236, i32 noundef %237)
  br label %757

239:                                              ; preds = %204
  %240 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -1
  %241 = load ptr, ptr %240, align 8, !tbaa !11
  %242 = getelementptr inbounds %struct.symbol, ptr %241, i64 0, i32 6
  %243 = load i32, ptr %242, align 4, !tbaa !14
  %244 = or i32 %243, 256
  store i32 %244, ptr %242, align 4, !tbaa !14
  %245 = load ptr, ptr %240, align 8, !tbaa !11
  call void @menu_add_entry(ptr noundef %245) #14
  %246 = load i32, ptr @cdebug, align 4, !tbaa !5
  %247 = and i32 %246, 2
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %757, label %249

249:                                              ; preds = %239
  %250 = call ptr @zconf_curname() #14
  %251 = call i32 @zconf_lineno() #14
  %252 = load ptr, ptr %240, align 8, !tbaa !11
  %253 = getelementptr inbounds %struct.symbol, ptr %252, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !18
  %255 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.13, ptr noundef %250, i32 noundef %251, ptr noundef %254)
  br label %757

256:                                              ; preds = %204
  %257 = load ptr, ptr @current_entry, align 8, !tbaa !9
  %258 = getelementptr inbounds %struct.menu, ptr %257, i64 0, i32 4
  %259 = load ptr, ptr %258, align 8, !tbaa !19
  %260 = icmp eq ptr %259, null
  br i1 %260, label %263, label %261

261:                                              ; preds = %256
  %262 = getelementptr inbounds %struct.property, ptr %259, i64 0, i32 1
  store i32 3, ptr %262, align 8, !tbaa !21
  br label %264

263:                                              ; preds = %256
  call void (ptr, ...) @zconfprint(ptr noundef nonnull @.str.14)
  br label %264

264:                                              ; preds = %263, %261
  %265 = load i32, ptr @cdebug, align 4, !tbaa !5
  %266 = and i32 %265, 2
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %757, label %268

268:                                              ; preds = %264
  %269 = call ptr @zconf_curname() #14
  %270 = call i32 @zconf_lineno() #14
  %271 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.12, ptr noundef %269, i32 noundef %270)
  br label %757

272:                                              ; preds = %204
  %273 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -2
  %274 = load i32, ptr %273, align 8, !tbaa !11
  call void @menu_set_type(i32 noundef %274) #14
  %275 = load i32, ptr @cdebug, align 4, !tbaa !5
  %276 = and i32 %275, 2
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %757, label %278

278:                                              ; preds = %272
  %279 = call ptr @zconf_curname() #14
  %280 = call i32 @zconf_lineno() #14
  %281 = load i32, ptr %273, align 8, !tbaa !11
  %282 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.15, ptr noundef %279, i32 noundef %280, i32 noundef %281)
  br label %757

283:                                              ; preds = %204
  %284 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -2
  %285 = load ptr, ptr %284, align 8, !tbaa !11
  %286 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -1
  %287 = load ptr, ptr %286, align 8, !tbaa !11
  %288 = call ptr @menu_add_prompt(i32 noundef 1, ptr noundef %285, ptr noundef %287) #14
  %289 = load i32, ptr @cdebug, align 4, !tbaa !5
  %290 = and i32 %289, 2
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %757, label %292

292:                                              ; preds = %283
  %293 = call ptr @zconf_curname() #14
  %294 = call i32 @zconf_lineno() #14
  %295 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.16, ptr noundef %293, i32 noundef %294)
  br label %757

296:                                              ; preds = %204
  %297 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -2
  %298 = load ptr, ptr %297, align 8, !tbaa !11
  %299 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -1
  %300 = load ptr, ptr %299, align 8, !tbaa !11
  call void @menu_add_expr(i32 noundef 4, ptr noundef %298, ptr noundef %300) #14
  %301 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -3
  %302 = load i32, ptr %301, align 8, !tbaa !11
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %296
  call void @menu_set_type(i32 noundef %302) #14
  br label %305

305:                                              ; preds = %304, %296
  %306 = load i32, ptr @cdebug, align 4, !tbaa !5
  %307 = and i32 %306, 2
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %757, label %309

309:                                              ; preds = %305
  %310 = call ptr @zconf_curname() #14
  %311 = call i32 @zconf_lineno() #14
  %312 = load i32, ptr %301, align 8, !tbaa !11
  %313 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.17, ptr noundef %310, i32 noundef %311, i32 noundef %312)
  br label %757

314:                                              ; preds = %204
  %315 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -2
  %316 = load ptr, ptr %315, align 8, !tbaa !11
  %317 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -1
  %318 = load ptr, ptr %317, align 8, !tbaa !11
  call void @menu_add_symbol(i32 noundef 6, ptr noundef %316, ptr noundef %318) #14
  %319 = load i32, ptr @cdebug, align 4, !tbaa !5
  %320 = and i32 %319, 2
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %757, label %322

322:                                              ; preds = %314
  %323 = call ptr @zconf_curname() #14
  %324 = call i32 @zconf_lineno() #14
  %325 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.18, ptr noundef %323, i32 noundef %324)
  br label %757

326:                                              ; preds = %204
  %327 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -2
  %328 = load ptr, ptr %327, align 8, !tbaa !11
  %329 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -1
  %330 = load ptr, ptr %329, align 8, !tbaa !11
  call void @menu_add_symbol(i32 noundef 7, ptr noundef %328, ptr noundef %330) #14
  %331 = load i32, ptr @cdebug, align 4, !tbaa !5
  %332 = and i32 %331, 2
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %757, label %334

334:                                              ; preds = %326
  %335 = call ptr @zconf_curname() #14
  %336 = call i32 @zconf_lineno() #14
  %337 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.19, ptr noundef %335, i32 noundef %336)
  br label %757

338:                                              ; preds = %204
  %339 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -3
  %340 = load ptr, ptr %339, align 8, !tbaa !11
  %341 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -2
  %342 = load ptr, ptr %341, align 8, !tbaa !11
  %343 = call ptr @expr_alloc_comp(i32 noundef 12, ptr noundef %340, ptr noundef %342) #14
  %344 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -1
  %345 = load ptr, ptr %344, align 8, !tbaa !11
  call void @menu_add_expr(i32 noundef 8, ptr noundef %343, ptr noundef %345) #14
  %346 = load i32, ptr @cdebug, align 4, !tbaa !5
  %347 = and i32 %346, 2
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %757, label %349

349:                                              ; preds = %338
  %350 = call ptr @zconf_curname() #14
  %351 = call i32 @zconf_lineno() #14
  %352 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.20, ptr noundef %350, i32 noundef %351)
  br label %757

353:                                              ; preds = %204
  %354 = load ptr, ptr @modules_sym, align 8, !tbaa !9
  %355 = icmp eq ptr %354, null
  br i1 %355, label %364, label %356

356:                                              ; preds = %353
  %357 = load ptr, ptr @current_entry, align 8, !tbaa !9
  %358 = getelementptr inbounds %struct.menu, ptr %357, i64 0, i32 3
  %359 = load ptr, ptr %358, align 8, !tbaa !23
  %360 = getelementptr inbounds %struct.symbol, ptr %359, i64 0, i32 1
  %361 = load ptr, ptr %360, align 8, !tbaa !18
  %362 = getelementptr inbounds %struct.symbol, ptr %354, i64 0, i32 1
  %363 = load ptr, ptr %362, align 8, !tbaa !18
  call void (ptr, ...) @zconf_error(ptr noundef nonnull @.str.21, ptr noundef %361, ptr noundef %363)
  br label %364

364:                                              ; preds = %356, %353
  %365 = load ptr, ptr @current_entry, align 8, !tbaa !9
  %366 = getelementptr inbounds %struct.menu, ptr %365, i64 0, i32 3
  %367 = load ptr, ptr %366, align 8, !tbaa !23
  store ptr %367, ptr @modules_sym, align 8, !tbaa !9
  br label %757

368:                                              ; preds = %204
  %369 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -1
  %370 = load ptr, ptr %369, align 8, !tbaa !11
  %371 = call ptr @sym_lookup(ptr noundef %370, i32 noundef 16) #14
  %372 = getelementptr inbounds %struct.symbol, ptr %371, i64 0, i32 6
  %373 = load i32, ptr %372, align 4, !tbaa !14
  %374 = or i32 %373, 4096
  store i32 %374, ptr %372, align 4, !tbaa !14
  call void @menu_add_entry(ptr noundef %371) #14
  call void @menu_add_expr(i32 noundef 5, ptr noundef null, ptr noundef null) #14
  %375 = load ptr, ptr %369, align 8, !tbaa !11
  call void @free(ptr noundef %375) #14
  %376 = load i32, ptr @cdebug, align 4, !tbaa !5
  %377 = and i32 %376, 2
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %757, label %379

379:                                              ; preds = %368
  %380 = call ptr @zconf_curname() #14
  %381 = call i32 @zconf_lineno() #14
  %382 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.22, ptr noundef %380, i32 noundef %381)
  br label %757

383:                                              ; preds = %204
  %384 = call ptr @menu_add_menu() #14
  br label %757

385:                                              ; preds = %204
  %386 = load ptr, ptr %66, align 8, !tbaa !11
  %387 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %386, ptr noundef nonnull dereferenceable(7) @.str.23) #18
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %390, label %389

389:                                              ; preds = %385
  call void (ptr, ...) @zconf_error(ptr noundef nonnull @.str.161, ptr noundef %386, ptr noundef nonnull @.str.23) #14
  br label %406

390:                                              ; preds = %385
  %391 = load ptr, ptr @current_menu, align 8, !tbaa !9
  %392 = getelementptr inbounds %struct.menu, ptr %391, i64 0, i32 9
  %393 = load ptr, ptr %392, align 8, !tbaa !24
  %394 = load ptr, ptr @current_file, align 8, !tbaa !9
  %395 = icmp eq ptr %393, %394
  br i1 %395, label %409, label %396

396:                                              ; preds = %390
  call void (ptr, ...) @zconf_error(ptr noundef nonnull @.str.162, ptr noundef %386, ptr noundef nonnull @.str.23) #14
  %397 = load ptr, ptr @stderr, align 8, !tbaa !9
  %398 = load ptr, ptr @current_menu, align 8, !tbaa !9
  %399 = getelementptr inbounds %struct.menu, ptr %398, i64 0, i32 9
  %400 = load ptr, ptr %399, align 8, !tbaa !24
  %401 = getelementptr inbounds %struct.file, ptr %400, i64 0, i32 2
  %402 = load ptr, ptr %401, align 8, !tbaa !25
  %403 = getelementptr inbounds %struct.menu, ptr %398, i64 0, i32 10
  %404 = load i32, ptr %403, align 8, !tbaa !27
  %405 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %397, ptr noundef nonnull @.str.163, ptr noundef %402, i32 noundef %404, ptr noundef nonnull @.str.23) #17
  br label %406

406:                                              ; preds = %396, %389
  %407 = load i32, ptr @yynerrs, align 4, !tbaa !5
  %408 = add nsw i32 %407, 1
  store i32 %408, ptr @yynerrs, align 4, !tbaa !5
  br label %757

409:                                              ; preds = %390
  call void @menu_end_menu() #14
  %410 = load i32, ptr @cdebug, align 4, !tbaa !5
  %411 = and i32 %410, 2
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %757, label %413

413:                                              ; preds = %409
  %414 = call ptr @zconf_curname() #14
  %415 = call i32 @zconf_lineno() #14
  %416 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.24, ptr noundef %414, i32 noundef %415)
  br label %757

417:                                              ; preds = %204
  %418 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -2
  %419 = load ptr, ptr %418, align 8, !tbaa !11
  %420 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -1
  %421 = load ptr, ptr %420, align 8, !tbaa !11
  %422 = call ptr @menu_add_prompt(i32 noundef 1, ptr noundef %419, ptr noundef %421) #14
  %423 = load i32, ptr @cdebug, align 4, !tbaa !5
  %424 = and i32 %423, 2
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %757, label %426

426:                                              ; preds = %417
  %427 = call ptr @zconf_curname() #14
  %428 = call i32 @zconf_lineno() #14
  %429 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.16, ptr noundef %427, i32 noundef %428)
  br label %757

430:                                              ; preds = %204
  %431 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -2
  %432 = load i32, ptr %431, align 8, !tbaa !11
  call void @menu_set_type(i32 noundef %432) #14
  %433 = load i32, ptr @cdebug, align 4, !tbaa !5
  %434 = and i32 %433, 2
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %757, label %436

436:                                              ; preds = %430
  %437 = call ptr @zconf_curname() #14
  %438 = call i32 @zconf_lineno() #14
  %439 = load i32, ptr %431, align 8, !tbaa !11
  %440 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.15, ptr noundef %437, i32 noundef %438, i32 noundef %439)
  br label %757

441:                                              ; preds = %204
  %442 = load ptr, ptr @current_entry, align 8, !tbaa !9
  %443 = getelementptr inbounds %struct.menu, ptr %442, i64 0, i32 3
  %444 = load ptr, ptr %443, align 8, !tbaa !23
  %445 = getelementptr inbounds %struct.symbol, ptr %444, i64 0, i32 6
  %446 = load i32, ptr %445, align 4, !tbaa !14
  %447 = or i32 %446, 256
  store i32 %447, ptr %445, align 4, !tbaa !14
  %448 = load i32, ptr @cdebug, align 4, !tbaa !5
  %449 = and i32 %448, 2
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %757, label %451

451:                                              ; preds = %441
  %452 = call ptr @zconf_curname() #14
  %453 = call i32 @zconf_lineno() #14
  %454 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.25, ptr noundef %452, i32 noundef %453)
  br label %757

455:                                              ; preds = %204
  %456 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -2
  %457 = load ptr, ptr %456, align 8, !tbaa !11
  %458 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -1
  %459 = load ptr, ptr %458, align 8, !tbaa !11
  call void @menu_add_symbol(i32 noundef 4, ptr noundef %457, ptr noundef %459) #14
  %460 = load i32, ptr @cdebug, align 4, !tbaa !5
  %461 = and i32 %460, 2
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %757, label %463

463:                                              ; preds = %455
  %464 = call ptr @zconf_curname() #14
  %465 = call i32 @zconf_lineno() #14
  %466 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.26, ptr noundef %464, i32 noundef %465)
  br label %757

467:                                              ; preds = %204
  %468 = and i64 %167, -4294967296
  %469 = or i64 %468, 3
  %470 = inttoptr i64 %469 to ptr
  br label %757

471:                                              ; preds = %204
  %472 = and i64 %167, -4294967296
  %473 = or i64 %472, 4
  %474 = inttoptr i64 %473 to ptr
  br label %757

475:                                              ; preds = %204
  %476 = and i64 %167, -4294967296
  %477 = or i64 %476, 5
  %478 = inttoptr i64 %477 to ptr
  br label %757

479:                                              ; preds = %204
  %480 = and i64 %167, -4294967296
  %481 = or i64 %480, 1
  %482 = inttoptr i64 %481 to ptr
  br label %757

483:                                              ; preds = %204
  %484 = and i64 %167, -4294967296
  %485 = or i64 %484, 2
  %486 = inttoptr i64 %485 to ptr
  br label %757

487:                                              ; preds = %204
  %488 = and i64 %167, -4294967296
  %489 = inttoptr i64 %488 to ptr
  br label %757

490:                                              ; preds = %204
  %491 = and i64 %167, -4294967296
  %492 = or i64 %491, 1
  %493 = inttoptr i64 %492 to ptr
  br label %757

494:                                              ; preds = %204
  %495 = and i64 %167, -4294967296
  %496 = or i64 %495, 2
  %497 = inttoptr i64 %496 to ptr
  br label %757

498:                                              ; preds = %204
  %499 = load i32, ptr @cdebug, align 4, !tbaa !5
  %500 = and i32 %499, 2
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %506, label %502

502:                                              ; preds = %498
  %503 = call ptr @zconf_curname() #14
  %504 = call i32 @zconf_lineno() #14
  %505 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.27, ptr noundef %503, i32 noundef %504)
  br label %506

506:                                              ; preds = %502, %498
  call void @menu_add_entry(ptr noundef null) #14
  %507 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -1
  %508 = load ptr, ptr %507, align 8, !tbaa !11
  call void @menu_add_dep(ptr noundef %508) #14
  %509 = call ptr @menu_add_menu() #14
  br label %757

510:                                              ; preds = %204
  %511 = load ptr, ptr %66, align 8, !tbaa !11
  %512 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %511, ptr noundef nonnull dereferenceable(3) @.str.28) #18
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %515, label %514

514:                                              ; preds = %510
  call void (ptr, ...) @zconf_error(ptr noundef nonnull @.str.161, ptr noundef %511, ptr noundef nonnull @.str.28) #14
  br label %531

515:                                              ; preds = %510
  %516 = load ptr, ptr @current_menu, align 8, !tbaa !9
  %517 = getelementptr inbounds %struct.menu, ptr %516, i64 0, i32 9
  %518 = load ptr, ptr %517, align 8, !tbaa !24
  %519 = load ptr, ptr @current_file, align 8, !tbaa !9
  %520 = icmp eq ptr %518, %519
  br i1 %520, label %534, label %521

521:                                              ; preds = %515
  call void (ptr, ...) @zconf_error(ptr noundef nonnull @.str.162, ptr noundef %511, ptr noundef nonnull @.str.28) #14
  %522 = load ptr, ptr @stderr, align 8, !tbaa !9
  %523 = load ptr, ptr @current_menu, align 8, !tbaa !9
  %524 = getelementptr inbounds %struct.menu, ptr %523, i64 0, i32 9
  %525 = load ptr, ptr %524, align 8, !tbaa !24
  %526 = getelementptr inbounds %struct.file, ptr %525, i64 0, i32 2
  %527 = load ptr, ptr %526, align 8, !tbaa !25
  %528 = getelementptr inbounds %struct.menu, ptr %523, i64 0, i32 10
  %529 = load i32, ptr %528, align 8, !tbaa !27
  %530 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %522, ptr noundef nonnull @.str.163, ptr noundef %527, i32 noundef %529, ptr noundef nonnull @.str.28) #17
  br label %531

531:                                              ; preds = %521, %514
  %532 = load i32, ptr @yynerrs, align 4, !tbaa !5
  %533 = add nsw i32 %532, 1
  store i32 %533, ptr @yynerrs, align 4, !tbaa !5
  br label %757

534:                                              ; preds = %515
  call void @menu_end_menu() #14
  %535 = load i32, ptr @cdebug, align 4, !tbaa !5
  %536 = and i32 %535, 2
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %757, label %538

538:                                              ; preds = %534
  %539 = call ptr @zconf_curname() #14
  %540 = call i32 @zconf_lineno() #14
  %541 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.29, ptr noundef %539, i32 noundef %540)
  br label %757

542:                                              ; preds = %204
  call void @menu_add_entry(ptr noundef null) #14
  %543 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -1
  %544 = load ptr, ptr %543, align 8, !tbaa !11
  %545 = call ptr @menu_add_prompt(i32 noundef 3, ptr noundef %544, ptr noundef null) #14
  %546 = load i32, ptr @cdebug, align 4, !tbaa !5
  %547 = and i32 %546, 2
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %757, label %549

549:                                              ; preds = %542
  %550 = call ptr @zconf_curname() #14
  %551 = call i32 @zconf_lineno() #14
  %552 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.30, ptr noundef %550, i32 noundef %551)
  br label %757

553:                                              ; preds = %204
  %554 = call ptr @menu_add_menu() #14
  br label %757

555:                                              ; preds = %204
  %556 = load ptr, ptr %66, align 8, !tbaa !11
  %557 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %556, ptr noundef nonnull dereferenceable(5) @.str.31) #18
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %560, label %559

559:                                              ; preds = %555
  call void (ptr, ...) @zconf_error(ptr noundef nonnull @.str.161, ptr noundef %556, ptr noundef nonnull @.str.31) #14
  br label %576

560:                                              ; preds = %555
  %561 = load ptr, ptr @current_menu, align 8, !tbaa !9
  %562 = getelementptr inbounds %struct.menu, ptr %561, i64 0, i32 9
  %563 = load ptr, ptr %562, align 8, !tbaa !24
  %564 = load ptr, ptr @current_file, align 8, !tbaa !9
  %565 = icmp eq ptr %563, %564
  br i1 %565, label %579, label %566

566:                                              ; preds = %560
  call void (ptr, ...) @zconf_error(ptr noundef nonnull @.str.162, ptr noundef %556, ptr noundef nonnull @.str.31) #14
  %567 = load ptr, ptr @stderr, align 8, !tbaa !9
  %568 = load ptr, ptr @current_menu, align 8, !tbaa !9
  %569 = getelementptr inbounds %struct.menu, ptr %568, i64 0, i32 9
  %570 = load ptr, ptr %569, align 8, !tbaa !24
  %571 = getelementptr inbounds %struct.file, ptr %570, i64 0, i32 2
  %572 = load ptr, ptr %571, align 8, !tbaa !25
  %573 = getelementptr inbounds %struct.menu, ptr %568, i64 0, i32 10
  %574 = load i32, ptr %573, align 8, !tbaa !27
  %575 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %567, ptr noundef nonnull @.str.163, ptr noundef %572, i32 noundef %574, ptr noundef nonnull @.str.31) #17
  br label %576

576:                                              ; preds = %566, %559
  %577 = load i32, ptr @yynerrs, align 4, !tbaa !5
  %578 = add nsw i32 %577, 1
  store i32 %578, ptr @yynerrs, align 4, !tbaa !5
  br label %757

579:                                              ; preds = %560
  call void @menu_end_menu() #14
  %580 = load i32, ptr @cdebug, align 4, !tbaa !5
  %581 = and i32 %580, 2
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %757, label %583

583:                                              ; preds = %579
  %584 = call ptr @zconf_curname() #14
  %585 = call i32 @zconf_lineno() #14
  %586 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.32, ptr noundef %584, i32 noundef %585)
  br label %757

587:                                              ; preds = %204
  %588 = load i32, ptr @cdebug, align 4, !tbaa !5
  %589 = and i32 %588, 2
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %597, label %591

591:                                              ; preds = %587
  %592 = call ptr @zconf_curname() #14
  %593 = call i32 @zconf_lineno() #14
  %594 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -1
  %595 = load ptr, ptr %594, align 8, !tbaa !11
  %596 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.33, ptr noundef %592, i32 noundef %593, ptr noundef %595)
  br label %597

597:                                              ; preds = %591, %587
  %598 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -1
  %599 = load ptr, ptr %598, align 8, !tbaa !11
  call void @zconf_nextfile(ptr noundef %599) #14
  %600 = load ptr, ptr %598, align 8, !tbaa !11
  call void @free(ptr noundef %600) #14
  br label %757

601:                                              ; preds = %204
  call void @menu_add_entry(ptr noundef null) #14
  %602 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -1
  %603 = load ptr, ptr %602, align 8, !tbaa !11
  %604 = call ptr @menu_add_prompt(i32 noundef 2, ptr noundef %603, ptr noundef null) #14
  %605 = load i32, ptr @cdebug, align 4, !tbaa !5
  %606 = and i32 %605, 2
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %757, label %608

608:                                              ; preds = %601
  %609 = call ptr @zconf_curname() #14
  %610 = call i32 @zconf_lineno() #14
  %611 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.34, ptr noundef %609, i32 noundef %610)
  br label %757

612:                                              ; preds = %204
  %613 = load i32, ptr @cdebug, align 4, !tbaa !5
  %614 = and i32 %613, 2
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %620, label %616

616:                                              ; preds = %612
  %617 = call ptr @zconf_curname() #14
  %618 = call i32 @zconf_lineno() #14
  %619 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.35, ptr noundef %617, i32 noundef %618)
  br label %620

620:                                              ; preds = %616, %612
  call void @zconf_starthelp() #14
  br label %757

621:                                              ; preds = %204
  %622 = load ptr, ptr @current_entry, align 8, !tbaa !9
  %623 = getelementptr inbounds %struct.menu, ptr %622, i64 0, i32 8
  %624 = load ptr, ptr %623, align 8, !tbaa !28
  %625 = icmp eq ptr %624, null
  br i1 %625, label %634, label %626

626:                                              ; preds = %621
  call void @free(ptr noundef nonnull %624) #14
  %627 = load ptr, ptr @current_entry, align 8, !tbaa !9
  %628 = getelementptr inbounds %struct.menu, ptr %627, i64 0, i32 3
  %629 = load ptr, ptr %628, align 8, !tbaa !23
  %630 = getelementptr inbounds %struct.symbol, ptr %629, i64 0, i32 1
  %631 = load ptr, ptr %630, align 8, !tbaa !18
  %632 = icmp eq ptr %631, null
  %633 = select i1 %632, ptr @.str.37, ptr %631
  call void (ptr, ...) @zconfprint(ptr noundef nonnull @.str.36, ptr noundef %633)
  br label %634

634:                                              ; preds = %626, %621
  %635 = load ptr, ptr %66, align 8, !tbaa !11
  %636 = call i64 @strspn(ptr noundef %635, ptr noundef nonnull @.str.38) #18
  %637 = getelementptr inbounds i8, ptr %635, i64 %636
  %638 = load i8, ptr %637, align 1, !tbaa !11
  %639 = icmp eq i8 %638, 0
  br i1 %639, label %640, label %649

640:                                              ; preds = %634
  %641 = load ptr, ptr @current_entry, align 8, !tbaa !9
  %642 = getelementptr inbounds %struct.menu, ptr %641, i64 0, i32 3
  %643 = load ptr, ptr %642, align 8, !tbaa !23
  %644 = getelementptr inbounds %struct.symbol, ptr %643, i64 0, i32 1
  %645 = load ptr, ptr %644, align 8, !tbaa !18
  %646 = icmp eq ptr %645, null
  %647 = select i1 %646, ptr @.str.37, ptr %645
  call void (ptr, ...) @zconfprint(ptr noundef nonnull @.str.39, ptr noundef %647)
  %648 = load ptr, ptr %66, align 8, !tbaa !11
  br label %649

649:                                              ; preds = %640, %634
  %650 = phi ptr [ %648, %640 ], [ %635, %634 ]
  %651 = load ptr, ptr @current_entry, align 8, !tbaa !9
  %652 = getelementptr inbounds %struct.menu, ptr %651, i64 0, i32 8
  store ptr %650, ptr %652, align 8, !tbaa !28
  br label %757

653:                                              ; preds = %204
  %654 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -1
  %655 = load ptr, ptr %654, align 8, !tbaa !11
  call void @menu_add_dep(ptr noundef %655) #14
  %656 = load i32, ptr @cdebug, align 4, !tbaa !5
  %657 = and i32 %656, 2
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %757, label %659

659:                                              ; preds = %653
  %660 = call ptr @zconf_curname() #14
  %661 = call i32 @zconf_lineno() #14
  %662 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.40, ptr noundef %660, i32 noundef %661)
  br label %757

663:                                              ; preds = %204
  %664 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -1
  %665 = load ptr, ptr %664, align 8, !tbaa !11
  call void @menu_add_visibility(ptr noundef %665) #14
  br label %757

666:                                              ; preds = %204
  %667 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -1
  %668 = load ptr, ptr %667, align 8, !tbaa !11
  %669 = load ptr, ptr %66, align 8, !tbaa !11
  %670 = call ptr @menu_add_prompt(i32 noundef 1, ptr noundef %668, ptr noundef %669) #14
  br label %757

671:                                              ; preds = %204
  br label %757

672:                                              ; preds = %204
  br label %757

673:                                              ; preds = %204
  br label %757

674:                                              ; preds = %204
  br label %757

675:                                              ; preds = %204
  %676 = load ptr, ptr %66, align 8, !tbaa !11
  br label %757

677:                                              ; preds = %204
  %678 = load ptr, ptr %66, align 8, !tbaa !11
  %679 = call ptr @expr_alloc_symbol(ptr noundef %678) #14
  br label %757

680:                                              ; preds = %204
  %681 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -2
  %682 = load ptr, ptr %681, align 8, !tbaa !11
  %683 = load ptr, ptr %66, align 8, !tbaa !11
  %684 = call ptr @expr_alloc_comp(i32 noundef 6, ptr noundef %682, ptr noundef %683) #14
  br label %757

685:                                              ; preds = %204
  %686 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -2
  %687 = load ptr, ptr %686, align 8, !tbaa !11
  %688 = load ptr, ptr %66, align 8, !tbaa !11
  %689 = call ptr @expr_alloc_comp(i32 noundef 7, ptr noundef %687, ptr noundef %688) #14
  br label %757

690:                                              ; preds = %204
  %691 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -2
  %692 = load ptr, ptr %691, align 8, !tbaa !11
  %693 = load ptr, ptr %66, align 8, !tbaa !11
  %694 = call ptr @expr_alloc_comp(i32 noundef 8, ptr noundef %692, ptr noundef %693) #14
  br label %757

695:                                              ; preds = %204
  %696 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -2
  %697 = load ptr, ptr %696, align 8, !tbaa !11
  %698 = load ptr, ptr %66, align 8, !tbaa !11
  %699 = call ptr @expr_alloc_comp(i32 noundef 9, ptr noundef %697, ptr noundef %698) #14
  br label %757

700:                                              ; preds = %204
  %701 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -2
  %702 = load ptr, ptr %701, align 8, !tbaa !11
  %703 = load ptr, ptr %66, align 8, !tbaa !11
  %704 = call ptr @expr_alloc_comp(i32 noundef 4, ptr noundef %702, ptr noundef %703) #14
  br label %757

705:                                              ; preds = %204
  %706 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -2
  %707 = load ptr, ptr %706, align 8, !tbaa !11
  %708 = load ptr, ptr %66, align 8, !tbaa !11
  %709 = call ptr @expr_alloc_comp(i32 noundef 5, ptr noundef %707, ptr noundef %708) #14
  br label %757

710:                                              ; preds = %204
  %711 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -1
  %712 = load ptr, ptr %711, align 8, !tbaa !11
  br label %757

713:                                              ; preds = %204
  %714 = load ptr, ptr %66, align 8, !tbaa !11
  %715 = call ptr @expr_alloc_one(i32 noundef 3, ptr noundef %714) #14
  br label %757

716:                                              ; preds = %204
  %717 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -2
  %718 = load ptr, ptr %717, align 8, !tbaa !11
  %719 = load ptr, ptr %66, align 8, !tbaa !11
  %720 = call ptr @expr_alloc_two(i32 noundef 1, ptr noundef %718, ptr noundef %719) #14
  br label %757

721:                                              ; preds = %204
  %722 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -2
  %723 = load ptr, ptr %722, align 8, !tbaa !11
  %724 = load ptr, ptr %66, align 8, !tbaa !11
  %725 = call ptr @expr_alloc_two(i32 noundef 2, ptr noundef %723, ptr noundef %724) #14
  br label %757

726:                                              ; preds = %204
  %727 = load ptr, ptr %66, align 8, !tbaa !11
  %728 = call ptr @sym_lookup(ptr noundef %727, i32 noundef 0) #14
  %729 = load ptr, ptr %66, align 8, !tbaa !11
  call void @free(ptr noundef %729) #14
  br label %757

730:                                              ; preds = %204
  %731 = load ptr, ptr %66, align 8, !tbaa !11
  %732 = call ptr @sym_lookup(ptr noundef %731, i32 noundef 1) #14
  %733 = load ptr, ptr %66, align 8, !tbaa !11
  call void @free(ptr noundef %733) #14
  br label %757

734:                                              ; preds = %204
  br label %757

735:                                              ; preds = %204
  %736 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -3
  %737 = load ptr, ptr %736, align 8, !tbaa !11
  %738 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -1
  %739 = load ptr, ptr %738, align 8, !tbaa !11
  %740 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 -2
  %741 = load i32, ptr %740, align 8, !tbaa !11
  call void @variable_add(ptr noundef %737, ptr noundef %739, i32 noundef %741) #14
  %742 = load ptr, ptr %736, align 8, !tbaa !11
  call void @free(ptr noundef %742) #14
  %743 = load ptr, ptr %738, align 8, !tbaa !11
  call void @free(ptr noundef %743) #14
  br label %757

744:                                              ; preds = %204
  %745 = and i64 %167, -4294967296
  %746 = or i64 %745, 1
  %747 = inttoptr i64 %746 to ptr
  br label %757

748:                                              ; preds = %204
  %749 = and i64 %167, -4294967296
  %750 = inttoptr i64 %749 to ptr
  br label %757

751:                                              ; preds = %204
  %752 = and i64 %167, -4294967296
  %753 = or i64 %752, 2
  %754 = inttoptr i64 %753 to ptr
  br label %757

755:                                              ; preds = %204
  %756 = call ptr @xstrdup(ptr noundef nonnull @.str.41) #14
  br label %757

757:                                              ; preds = %755, %751, %748, %744, %735, %734, %730, %726, %721, %716, %713, %710, %705, %700, %695, %690, %685, %680, %677, %675, %674, %673, %672, %671, %666, %663, %659, %653, %649, %620, %608, %601, %597, %583, %579, %576, %553, %549, %542, %538, %534, %531, %506, %494, %490, %487, %483, %479, %475, %471, %467, %463, %455, %451, %441, %436, %430, %426, %417, %413, %409, %406, %383, %379, %368, %364, %349, %338, %334, %326, %322, %314, %309, %305, %292, %283, %278, %272, %268, %264, %249, %239, %235, %231, %224, %214, %213, %212, %209, %205, %204
  %758 = phi ptr [ %168, %204 ], [ %756, %755 ], [ %754, %751 ], [ %750, %748 ], [ %747, %744 ], [ %168, %735 ], [ null, %734 ], [ %732, %730 ], [ %728, %726 ], [ %725, %721 ], [ %720, %716 ], [ %715, %713 ], [ %712, %710 ], [ %709, %705 ], [ %704, %700 ], [ %699, %695 ], [ %694, %690 ], [ %689, %685 ], [ %684, %680 ], [ %679, %677 ], [ %676, %675 ], [ null, %674 ], [ @.str.28, %673 ], [ @.str.23, %672 ], [ @.str.31, %671 ], [ %168, %666 ], [ %168, %663 ], [ %168, %653 ], [ %168, %659 ], [ %168, %649 ], [ %168, %620 ], [ %168, %601 ], [ %168, %608 ], [ %168, %597 ], [ %168, %579 ], [ %168, %583 ], [ %168, %576 ], [ %554, %553 ], [ %168, %542 ], [ %168, %549 ], [ %168, %534 ], [ %168, %538 ], [ %168, %531 ], [ %509, %506 ], [ %497, %494 ], [ %493, %490 ], [ %489, %487 ], [ %486, %483 ], [ %482, %479 ], [ %478, %475 ], [ %474, %471 ], [ %470, %467 ], [ %168, %455 ], [ %168, %463 ], [ %168, %441 ], [ %168, %451 ], [ %168, %430 ], [ %168, %436 ], [ %168, %417 ], [ %168, %426 ], [ %168, %409 ], [ %168, %413 ], [ %168, %406 ], [ %384, %383 ], [ %168, %368 ], [ %168, %379 ], [ %168, %364 ], [ %168, %338 ], [ %168, %349 ], [ %168, %326 ], [ %168, %334 ], [ %168, %314 ], [ %168, %322 ], [ %168, %305 ], [ %168, %309 ], [ %168, %283 ], [ %168, %292 ], [ %168, %272 ], [ %168, %278 ], [ %168, %264 ], [ %168, %268 ], [ %168, %239 ], [ %168, %249 ], [ %168, %231 ], [ %168, %235 ], [ %168, %214 ], [ %168, %224 ], [ %168, %213 ], [ %168, %212 ], [ %168, %209 ], [ %168, %205 ]
  %759 = load i32, ptr @yydebug, align 4, !tbaa !5
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %761, label %768

761:                                              ; preds = %757
  %762 = sub nsw i64 0, %164
  %763 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 %762
  %764 = getelementptr inbounds i8, ptr %68, i64 %762
  %765 = getelementptr inbounds [106 x i8], ptr @yyr1, i64 0, i64 %161
  %766 = load i8, ptr %765, align 1, !tbaa !11
  %767 = sext i8 %766 to i64
  br label %803

768:                                              ; preds = %757
  %769 = load ptr, ptr @stderr, align 8, !tbaa !9
  %770 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %769, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.42) #15
  %771 = load ptr, ptr @stderr, align 8, !tbaa !9
  %772 = getelementptr inbounds [106 x i8], ptr @yyr1, i64 0, i64 %161
  %773 = load i8, ptr %772, align 1, !tbaa !11
  %774 = icmp eq i32 %160, 0
  %775 = select i1 %774, ptr @.str.57, ptr @.str.58
  %776 = sext i8 %773 to i64
  %777 = getelementptr inbounds [98 x ptr], ptr @yytname, i64 0, i64 %776
  %778 = load ptr, ptr %777, align 8, !tbaa !9
  %779 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %771, ptr noundef nonnull @.str.56, ptr noundef nonnull %775, ptr noundef %778) #17
  %780 = call i32 @fputc(i32 41, ptr %771) #14
  %781 = load ptr, ptr @stderr, align 8, !tbaa !9
  %782 = call i32 @fputc(i32 10, ptr %781)
  %783 = load i32, ptr @yydebug, align 4, !tbaa !5
  %784 = sub nsw i64 0, %164
  %785 = getelementptr inbounds %union.YYSTYPE, ptr %66, i64 %784
  %786 = getelementptr inbounds i8, ptr %68, i64 %784
  %787 = icmp eq i32 %783, 0
  br i1 %787, label %803, label %788

788:                                              ; preds = %768
  %789 = load ptr, ptr @stderr, align 8, !tbaa !9
  %790 = call i64 @fwrite(ptr nonnull @.str.157, i64 9, i64 1, ptr %789) #17
  %791 = icmp ugt ptr %69, %786
  br i1 %791, label %800, label %792

792:                                              ; preds = %792, %788
  %793 = phi ptr [ %798, %792 ], [ %69, %788 ]
  %794 = load i8, ptr %793, align 1, !tbaa !11
  %795 = zext i8 %794 to i32
  %796 = load ptr, ptr @stderr, align 8, !tbaa !9
  %797 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %796, ptr noundef nonnull @.str.158, i32 noundef %795) #17
  %798 = getelementptr inbounds i8, ptr %793, i64 1
  %799 = icmp ugt ptr %798, %786
  br i1 %799, label %800, label %792

800:                                              ; preds = %792, %788
  %801 = load ptr, ptr @stderr, align 8, !tbaa !9
  %802 = call i32 @fputc(i32 10, ptr %801) #14
  br label %803

803:                                              ; preds = %800, %768, %761
  %804 = phi i64 [ %767, %761 ], [ %776, %800 ], [ %776, %768 ]
  %805 = phi ptr [ %764, %761 ], [ %786, %800 ], [ %786, %768 ]
  %806 = phi ptr [ %763, %761 ], [ %785, %800 ], [ %785, %768 ]
  %807 = getelementptr inbounds %union.YYSTYPE, ptr %806, i64 1
  %808 = ptrtoint ptr %758 to i64
  store i64 %808, ptr %807, align 8
  %809 = add nsw i64 %804, -50
  %810 = getelementptr inbounds [47 x i16], ptr @yypgoto, i64 0, i64 %809
  %811 = load i16, ptr %810, align 2, !tbaa !12
  %812 = sext i16 %811 to i32
  %813 = load i8, ptr %805, align 1, !tbaa !11
  %814 = zext i8 %813 to i32
  %815 = add nsw i32 %814, %812
  %816 = icmp ult i32 %815, 185
  br i1 %816, label %817, label %824

817:                                              ; preds = %803
  %818 = zext i32 %815 to i64
  %819 = getelementptr inbounds [185 x i8], ptr @yycheck, i64 0, i64 %818
  %820 = load i8, ptr %819, align 1, !tbaa !11
  %821 = icmp eq i8 %820, %813
  br i1 %821, label %822, label %824

822:                                              ; preds = %817
  %823 = getelementptr inbounds [185 x i16], ptr @yytable, i64 0, i64 %818
  br label %826

824:                                              ; preds = %817, %803
  %825 = getelementptr inbounds [47 x i16], ptr @yydefgoto, i64 0, i64 %809
  br label %826

826:                                              ; preds = %824, %822
  %827 = phi ptr [ %823, %822 ], [ %825, %824 ]
  %828 = load i16, ptr %827, align 2, !tbaa !12
  %829 = sext i16 %828 to i32
  br label %9

830:                                              ; preds = %154
  %831 = load i32, ptr @yychar, align 4, !tbaa !5
  %832 = icmp eq i32 %831, -2
  br i1 %832, label %840, label %833

833:                                              ; preds = %830
  %834 = icmp ult i32 %831, 305
  br i1 %834, label %835, label %840

835:                                              ; preds = %833
  %836 = zext i32 %831 to i64
  %837 = getelementptr inbounds [305 x i8], ptr @yytranslate, i64 0, i64 %836
  %838 = load i8, ptr %837, align 1, !tbaa !11
  %839 = sext i8 %838 to i32
  br label %840

840:                                              ; preds = %835, %833, %830
  %841 = phi i32 [ -2, %830 ], [ %839, %835 ], [ 2, %833 ]
  switch i32 %21, label %855 [
    i32 0, label %842
    i32 3, label %850
  ]

842:                                              ; preds = %840
  %843 = load i32, ptr @yynerrs, align 4, !tbaa !5
  %844 = add nsw i32 %843, 1
  store i32 %844, ptr @yynerrs, align 4, !tbaa !5
  %845 = load ptr, ptr @stderr, align 8, !tbaa !9
  %846 = call ptr @zconf_curname() #14
  %847 = call i32 @zconf_lineno() #14
  %848 = add nsw i32 %847, 1
  %849 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %845, ptr noundef nonnull @.str.165, ptr noundef %846, i32 noundef %848, ptr noundef nonnull @.str.43) #17
  br label %855

850:                                              ; preds = %840
  %851 = icmp slt i32 %831, 1
  br i1 %851, label %852, label %854

852:                                              ; preds = %850
  %853 = icmp eq i32 %831, 0
  br i1 %853, label %927, label %855

854:                                              ; preds = %850
  call fastcc void @yydestruct(ptr noundef nonnull @.str.44, i32 noundef %841, ptr noundef nonnull @yylval)
  store i32 -2, ptr @yychar, align 4, !tbaa !5
  br label %855

855:                                              ; preds = %854, %852, %842, %840
  br label %856

856:                                              ; preds = %899, %855
  %857 = phi i16 [ %902, %899 ], [ %74, %855 ]
  %858 = phi ptr [ %878, %899 ], [ %66, %855 ]
  %859 = phi ptr [ %879, %899 ], [ %68, %855 ]
  %860 = phi i32 [ %881, %899 ], [ %22, %855 ]
  %861 = sext i32 %860 to i64
  %862 = icmp sgt i16 %857, -2
  br i1 %862, label %863, label %872

863:                                              ; preds = %856
  %864 = sext i16 %857 to i64
  %865 = add nsw i64 %864, 1
  %866 = getelementptr inbounds [185 x i8], ptr @yycheck, i64 0, i64 %865
  %867 = load i8, ptr %866, align 1, !tbaa !11
  %868 = icmp ne i8 %867, 1
  %869 = and i64 %865, -33
  %870 = icmp eq i64 %869, 17
  %871 = select i1 %868, i1 true, i1 %870
  br i1 %871, label %872, label %903

872:                                              ; preds = %863, %856
  %873 = icmp eq ptr %859, %69
  br i1 %873, label %927, label %874

874:                                              ; preds = %872
  %875 = getelementptr inbounds [184 x i8], ptr @yystos, i64 0, i64 %861
  %876 = load i8, ptr %875, align 1, !tbaa !11
  %877 = sext i8 %876 to i32
  call fastcc void @yydestruct(ptr noundef nonnull @.str.45, i32 noundef %877, ptr noundef %858)
  %878 = getelementptr inbounds %union.YYSTYPE, ptr %858, i64 -1
  %879 = getelementptr inbounds i8, ptr %859, i64 -1
  %880 = load i8, ptr %879, align 1, !tbaa !11
  %881 = zext i8 %880 to i32
  %882 = load i32, ptr @yydebug, align 4, !tbaa !5
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %899, label %884

884:                                              ; preds = %874
  %885 = load ptr, ptr @stderr, align 8, !tbaa !9
  %886 = call i64 @fwrite(ptr nonnull @.str.157, i64 9, i64 1, ptr %885) #17
  %887 = icmp ugt ptr %69, %879
  br i1 %887, label %896, label %888

888:                                              ; preds = %888, %884
  %889 = phi ptr [ %894, %888 ], [ %69, %884 ]
  %890 = load i8, ptr %889, align 1, !tbaa !11
  %891 = zext i8 %890 to i32
  %892 = load ptr, ptr @stderr, align 8, !tbaa !9
  %893 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %892, ptr noundef nonnull @.str.158, i32 noundef %891) #17
  %894 = getelementptr inbounds i8, ptr %889, i64 1
  %895 = icmp ugt ptr %894, %879
  br i1 %895, label %896, label %888

896:                                              ; preds = %888, %884
  %897 = load ptr, ptr @stderr, align 8, !tbaa !9
  %898 = call i32 @fputc(i32 10, ptr %897) #14
  br label %899

899:                                              ; preds = %896, %874
  %900 = zext i8 %880 to i64
  %901 = getelementptr inbounds [184 x i16], ptr @yypact, i64 0, i64 %900
  %902 = load i16, ptr %901, align 2, !tbaa !12
  br label %856

903:                                              ; preds = %863
  %904 = getelementptr inbounds [185 x i16], ptr @yytable, i64 0, i64 %865
  %905 = load i16, ptr %904, align 2, !tbaa !12
  %906 = sext i16 %905 to i32
  %907 = getelementptr inbounds %union.YYSTYPE, ptr %858, i64 1
  %908 = load i64, ptr @yylval, align 8
  store i64 %908, ptr %907, align 8
  %909 = load i32, ptr @yydebug, align 4, !tbaa !5
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %9, label %911

911:                                              ; preds = %903
  %912 = load ptr, ptr @stderr, align 8, !tbaa !9
  %913 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %912, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8) #15
  %914 = load ptr, ptr @stderr, align 8, !tbaa !9
  %915 = sext i16 %905 to i64
  %916 = getelementptr inbounds [184 x i8], ptr @yystos, i64 0, i64 %915
  %917 = load i8, ptr %916, align 1, !tbaa !11
  %918 = sext i8 %917 to i32
  call fastcc void @yy_symbol_print(ptr noundef %914, i32 noundef %918, ptr noundef nonnull %907)
  %919 = load ptr, ptr @stderr, align 8, !tbaa !9
  %920 = call i32 @fputc(i32 10, ptr %919)
  br label %9

921:                                              ; preds = %39, %33
  %922 = load ptr, ptr @stderr, align 8, !tbaa !9
  %923 = call ptr @zconf_curname() #14
  %924 = call i32 @zconf_lineno() #14
  %925 = add nsw i32 %924, 1
  %926 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %922, ptr noundef nonnull @.str.165, ptr noundef %923, i32 noundef %925, ptr noundef nonnull @.str.46) #17
  br label %927

927:                                              ; preds = %921, %872, %852, %64, %62
  %928 = phi i32 [ 2, %921 ], [ 1, %872 ], [ 1, %62 ], [ 1, %852 ], [ 0, %64 ]
  %929 = phi ptr [ %17, %921 ], [ %858, %872 ], [ %56, %62 ], [ %66, %852 ], [ %66, %64 ]
  %930 = phi ptr [ %19, %921 ], [ %69, %872 ], [ %54, %62 ], [ %68, %852 ], [ %68, %64 ]
  %931 = phi ptr [ %20, %921 ], [ %69, %872 ], [ %44, %62 ], [ %69, %852 ], [ %69, %64 ]
  %932 = load i32, ptr @yychar, align 4, !tbaa !5
  %933 = icmp eq i32 %932, -2
  br i1 %933, label %943, label %934

934:                                              ; preds = %927
  %935 = icmp ult i32 %932, 305
  br i1 %935, label %936, label %941

936:                                              ; preds = %934
  %937 = zext i32 %932 to i64
  %938 = getelementptr inbounds [305 x i8], ptr @yytranslate, i64 0, i64 %937
  %939 = load i8, ptr %938, align 1, !tbaa !11
  %940 = sext i8 %939 to i32
  br label %941

941:                                              ; preds = %936, %934
  %942 = phi i32 [ %940, %936 ], [ 2, %934 ]
  call fastcc void @yydestruct(ptr noundef nonnull @.str.47, i32 noundef %942, ptr noundef nonnull @yylval)
  br label %943

943:                                              ; preds = %941, %927
  %944 = load i32, ptr @yydebug, align 4, !tbaa !5
  %945 = icmp eq i32 %944, 0
  br i1 %945, label %961, label %946

946:                                              ; preds = %943
  %947 = load ptr, ptr @stderr, align 8, !tbaa !9
  %948 = call i64 @fwrite(ptr nonnull @.str.157, i64 9, i64 1, ptr %947) #17
  %949 = icmp ugt ptr %931, %930
  br i1 %949, label %958, label %950

950:                                              ; preds = %950, %946
  %951 = phi ptr [ %956, %950 ], [ %931, %946 ]
  %952 = load i8, ptr %951, align 1, !tbaa !11
  %953 = zext i8 %952 to i32
  %954 = load ptr, ptr @stderr, align 8, !tbaa !9
  %955 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %954, ptr noundef nonnull @.str.158, i32 noundef %953) #17
  %956 = getelementptr inbounds i8, ptr %951, i64 1
  %957 = icmp ugt ptr %956, %930
  br i1 %957, label %958, label %950

958:                                              ; preds = %950, %946
  %959 = load ptr, ptr @stderr, align 8, !tbaa !9
  %960 = call i32 @fputc(i32 10, ptr %959) #14
  br label %961

961:                                              ; preds = %958, %943
  %962 = icmp eq ptr %930, %931
  br i1 %962, label %974, label %963

963:                                              ; preds = %963, %961
  %964 = phi ptr [ %972, %963 ], [ %930, %961 ]
  %965 = phi ptr [ %971, %963 ], [ %929, %961 ]
  %966 = load i8, ptr %964, align 1, !tbaa !11
  %967 = zext i8 %966 to i64
  %968 = getelementptr inbounds [184 x i8], ptr @yystos, i64 0, i64 %967
  %969 = load i8, ptr %968, align 1, !tbaa !11
  %970 = sext i8 %969 to i32
  call fastcc void @yydestruct(ptr noundef nonnull @.str.48, i32 noundef %970, ptr noundef %965)
  %971 = getelementptr inbounds %union.YYSTYPE, ptr %965, i64 -1
  %972 = getelementptr inbounds i8, ptr %964, i64 -1
  %973 = icmp eq ptr %972, %931
  br i1 %973, label %974, label %963

974:                                              ; preds = %963, %961
  %975 = icmp eq ptr %931, %1
  br i1 %975, label %977, label %976

976:                                              ; preds = %974
  call void @free(ptr noundef %931) #14
  br label %977

977:                                              ; preds = %976, %974
  call void @llvm.lifetime.end.p0(i64 1600, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %1) #14
  ret i32 %928
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

declare i32 @yylex() local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @yy_symbol_print(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) unnamed_addr #7 {
  %4 = icmp slt i32 %1, 50
  %5 = select i1 %4, ptr @.str.57, ptr @.str.58
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds [98 x ptr], ptr @yytname, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.56, ptr noundef nonnull %5, ptr noundef %8)
  %10 = tail call i32 @fputc(i32 41, ptr %0)
  ret void
}

declare ptr @menu_add_prompt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @zconf_error(ptr nocapture noundef readonly %0, ...) unnamed_addr #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %3 = load i32, ptr @yynerrs, align 4, !tbaa !5
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr @yynerrs, align 4, !tbaa !5
  %5 = load ptr, ptr @stderr, align 8, !tbaa !9
  %6 = tail call ptr @zconf_curname() #14
  %7 = tail call i32 @zconf_lineno() #14
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.164, ptr noundef %6, i32 noundef %7) #15
  call void @llvm.va_start(ptr nonnull %2)
  %9 = load ptr, ptr @stderr, align 8, !tbaa !9
  %10 = call i32 @vfprintf(ptr noundef %9, ptr noundef %0, ptr noundef nonnull %2) #15
  call void @llvm.va_end(ptr nonnull %2)
  %11 = load ptr, ptr @stderr, align 8, !tbaa !9
  %12 = call i32 @fputc(i32 10, ptr %11)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  ret void
}

declare void @menu_add_entry(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare ptr @zconf_curname() local_unnamed_addr #6

declare i32 @zconf_lineno() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @zconfprint(ptr nocapture noundef readonly %0, ...) unnamed_addr #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %3 = load ptr, ptr @stderr, align 8, !tbaa !9
  %4 = tail call ptr @zconf_curname() #14
  %5 = tail call i32 @zconf_lineno() #14
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.164, ptr noundef %4, i32 noundef %5) #15
  call void @llvm.va_start(ptr nonnull %2)
  %7 = load ptr, ptr @stderr, align 8, !tbaa !9
  %8 = call i32 @vfprintf(ptr noundef %7, ptr noundef %0, ptr noundef nonnull %2) #15
  call void @llvm.va_end(ptr nonnull %2)
  %9 = load ptr, ptr @stderr, align 8, !tbaa !9
  %10 = call i32 @fputc(i32 10, ptr %9)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  ret void
}

declare void @menu_set_type(i32 noundef) local_unnamed_addr #6

declare void @menu_add_expr(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @menu_add_symbol(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @expr_alloc_comp(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @sym_lookup(ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @menu_add_menu() local_unnamed_addr #6

declare void @menu_end_menu() local_unnamed_addr #6

declare void @menu_add_dep(ptr noundef) local_unnamed_addr #6

declare void @zconf_nextfile(ptr noundef) local_unnamed_addr #6

declare void @zconf_starthelp() local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

declare void @menu_add_visibility(ptr noundef) local_unnamed_addr #6

declare ptr @expr_alloc_symbol(ptr noundef) local_unnamed_addr #6

declare ptr @expr_alloc_one(i32 noundef, ptr noundef) local_unnamed_addr #6

declare ptr @expr_alloc_two(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @variable_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @yydestruct(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = load i32, ptr @yydebug, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = icmp eq ptr %0, null
  %8 = select i1 %7, ptr @.str.159, ptr %0
  %9 = load ptr, ptr @stderr, align 8, !tbaa !9
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.5, ptr noundef %8) #15
  %11 = load ptr, ptr @stderr, align 8, !tbaa !9
  %12 = icmp slt i32 %1, 50
  %13 = select i1 %12, ptr @.str.57, ptr @.str.58
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds [98 x ptr], ptr @yytname, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.56, ptr noundef nonnull %13, ptr noundef %16) #17
  %18 = tail call i32 @fputc(i32 41, ptr %11) #14
  %19 = load ptr, ptr @stderr, align 8, !tbaa !9
  %20 = tail call i32 @fputc(i32 10, ptr %19)
  br label %21

21:                                               ; preds = %6, %3
  switch i32 %1, label %62 [
    i32 62, label %22
    i32 70, label %35
    i32 75, label %48
  ]

22:                                               ; preds = %21
  %23 = load ptr, ptr @stderr, align 8, !tbaa !9
  %24 = load ptr, ptr %2, align 8, !tbaa !11
  %25 = getelementptr inbounds %struct.menu, ptr %24, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !24
  %27 = getelementptr inbounds %struct.file, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !25
  %29 = getelementptr inbounds %struct.menu, ptr %24, i64 0, i32 10
  %30 = load i32, ptr %29, align 8, !tbaa !27
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.160, ptr noundef %28, i32 noundef %30) #15
  %32 = load ptr, ptr @current_menu, align 8, !tbaa !9
  %33 = load ptr, ptr %2, align 8, !tbaa !11
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %61, label %62

35:                                               ; preds = %21
  %36 = load ptr, ptr @stderr, align 8, !tbaa !9
  %37 = load ptr, ptr %2, align 8, !tbaa !11
  %38 = getelementptr inbounds %struct.menu, ptr %37, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !24
  %40 = getelementptr inbounds %struct.file, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !25
  %42 = getelementptr inbounds %struct.menu, ptr %37, i64 0, i32 10
  %43 = load i32, ptr %42, align 8, !tbaa !27
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.160, ptr noundef %41, i32 noundef %43) #15
  %45 = load ptr, ptr @current_menu, align 8, !tbaa !9
  %46 = load ptr, ptr %2, align 8, !tbaa !11
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %61, label %62

48:                                               ; preds = %21
  %49 = load ptr, ptr @stderr, align 8, !tbaa !9
  %50 = load ptr, ptr %2, align 8, !tbaa !11
  %51 = getelementptr inbounds %struct.menu, ptr %50, i64 0, i32 9
  %52 = load ptr, ptr %51, align 8, !tbaa !24
  %53 = getelementptr inbounds %struct.file, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !25
  %55 = getelementptr inbounds %struct.menu, ptr %50, i64 0, i32 10
  %56 = load i32, ptr %55, align 8, !tbaa !27
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.160, ptr noundef %54, i32 noundef %56) #15
  %58 = load ptr, ptr @current_menu, align 8, !tbaa !9
  %59 = load ptr, ptr %2, align 8, !tbaa !11
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %48, %35, %22
  tail call void @menu_end_menu() #14
  br label %62

62:                                               ; preds = %61, %48, %35, %22, %21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @conf_parse(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @zconf_initscan(ptr noundef %0) #14
  tail call void @_menu_init() #14
  %2 = tail call ptr @getenv(ptr noundef nonnull @.str.49) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  store i32 1, ptr @yydebug, align 4, !tbaa !5
  br label %5

5:                                                ; preds = %4, %1
  %6 = tail call i32 @yyparse()
  tail call void @variable_all_del() #14
  %7 = load i32, ptr @yynerrs, align 4, !tbaa !5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @exit(i32 noundef 1) #19
  unreachable

10:                                               ; preds = %5
  %11 = load ptr, ptr @modules_sym, align 8, !tbaa !9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call ptr @sym_find(ptr noundef nonnull @.str.50) #14
  store ptr %14, ptr @modules_sym, align 8, !tbaa !9
  br label %15

15:                                               ; preds = %13, %10
  %16 = tail call zeroext i1 @menu_has_prompt(ptr noundef nonnull @rootmenu) #14
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  store ptr @rootmenu, ptr @current_entry, align 8, !tbaa !9
  %18 = tail call ptr @menu_add_prompt(i32 noundef 3, ptr noundef nonnull @.str.51, ptr noundef null) #14
  br label %19

19:                                               ; preds = %17, %15
  tail call void @menu_finalize(ptr noundef nonnull @rootmenu) #14
  br label %20

20:                                               ; preds = %35, %19
  %21 = phi i64 [ 0, %19 ], [ %36, %35 ]
  %22 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %32, %20
  %26 = phi ptr [ %33, %32 ], [ %23, %20 ]
  %27 = tail call ptr @sym_check_deps(ptr noundef nonnull %26) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr @yynerrs, align 4, !tbaa !5
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr @yynerrs, align 4, !tbaa !5
  br label %32

32:                                               ; preds = %29, %25
  %33 = load ptr, ptr %26, align 8, !tbaa !9
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %25

35:                                               ; preds = %32, %20
  %36 = add nuw nsw i64 %21, 1
  %37 = icmp eq i64 %36, 9973
  br i1 %37, label %38, label %20

38:                                               ; preds = %35
  %39 = load i32, ptr @yynerrs, align 4, !tbaa !5
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @exit(i32 noundef 1) #19
  unreachable

42:                                               ; preds = %38
  tail call void @conf_set_changed(i1 noundef zeroext true) #14
  ret void
}

declare void @zconf_initscan(ptr noundef) local_unnamed_addr #6

declare void @_menu_init() local_unnamed_addr #6

; Function Attrs: nofree nounwind readonly
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #9

declare void @variable_all_del() local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

declare ptr @sym_find(ptr noundef) local_unnamed_addr #6

declare zeroext i1 @menu_has_prompt(ptr noundef) local_unnamed_addr #6

declare void @menu_finalize(ptr noundef) local_unnamed_addr #6

declare ptr @sym_check_deps(ptr noundef) local_unnamed_addr #6

declare void @conf_set_changed(i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @zconfdump(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.menu, ptr @rootmenu, i64 0, i32 2), align 8, !tbaa !29
  %3 = icmp eq ptr %2, null
  br i1 %3, label %203, label %4

4:                                                ; preds = %183, %1
  %5 = phi ptr [ %184, %183 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.menu, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %146, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.symbol, ptr %7, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !14
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = tail call i64 @fwrite(ptr nonnull @.str.166, i64 8, i64 1, ptr %0) #14
  br label %20

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.symbol, ptr %7, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !18
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.167, ptr noundef %18) #14
  br label %20

20:                                               ; preds = %16, %14
  %21 = getelementptr inbounds %struct.symbol, ptr %7, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !30
  switch i32 %22, label %33 [
    i32 1, label %23
    i32 2, label %25
    i32 5, label %27
    i32 3, label %29
    i32 4, label %31
  ]

23:                                               ; preds = %20
  %24 = tail call i64 @fwrite(ptr nonnull @.str.168, i64 7, i64 1, ptr %0) #14
  br label %35

25:                                               ; preds = %20
  %26 = tail call i64 @fwrite(ptr nonnull @.str.169, i64 11, i64 1, ptr %0) #14
  br label %35

27:                                               ; preds = %20
  %28 = tail call i64 @fwrite(ptr nonnull @.str.170, i64 9, i64 1, ptr %0) #14
  br label %35

29:                                               ; preds = %20
  %30 = tail call i64 @fwrite(ptr nonnull @.str.171, i64 10, i64 1, ptr %0) #14
  br label %35

31:                                               ; preds = %20
  %32 = tail call i64 @fwrite(ptr nonnull @.str.172, i64 6, i64 1, ptr %0) #14
  br label %35

33:                                               ; preds = %20
  %34 = tail call i64 @fwrite(ptr nonnull @.str.173, i64 6, i64 1, ptr %0) #14
  br label %35

35:                                               ; preds = %33, %31, %29, %27, %25, %23
  %36 = getelementptr inbounds %struct.symbol, ptr %7, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %120, label %39

39:                                               ; preds = %117, %35
  %40 = phi ptr [ %118, %117 ], [ %37, %35 ]
  %41 = getelementptr inbounds %struct.property, ptr %40, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !31
  %43 = icmp eq ptr %42, %5
  br i1 %43, label %44, label %117

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.property, ptr %40, i64 0, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !21
  switch i32 %46, label %115 [
    i32 1, label %47
    i32 4, label %66
    i32 5, label %85
    i32 6, label %87
    i32 7, label %92
    i32 8, label %97
    i32 3, label %102
    i32 9, label %107
  ]

47:                                               ; preds = %44
  %48 = tail call i64 @fwrite(ptr nonnull @.str.174, i64 9, i64 1, ptr %0) #14
  %49 = getelementptr inbounds %struct.property, ptr %40, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !32
  tail call fastcc void @print_quoted_string(ptr noundef %0, ptr noundef %50) #14
  %51 = getelementptr inbounds %struct.property, ptr %40, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !33
  %53 = icmp eq ptr %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %47
  %55 = load i32, ptr %52, align 8, !tbaa !34
  %56 = icmp eq i32 %55, 11
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.expr, ptr %52, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !11
  %60 = icmp eq ptr %59, @symbol_yes
  br i1 %60, label %64, label %61

61:                                               ; preds = %57, %54
  %62 = tail call i64 @fwrite(ptr nonnull @.str.175, i64 4, i64 1, ptr %0) #14
  %63 = load ptr, ptr %51, align 8, !tbaa !33
  tail call void @expr_fprint(ptr noundef %63, ptr noundef %0) #14
  br label %64

64:                                               ; preds = %61, %57, %47
  %65 = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) #14
  br label %117

66:                                               ; preds = %44
  %67 = tail call i64 @fwrite(ptr nonnull @.str.176, i64 10, i64 1, ptr %0) #14
  %68 = getelementptr inbounds %struct.property, ptr %40, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !36
  tail call void @expr_fprint(ptr noundef %69, ptr noundef %0) #14
  %70 = getelementptr inbounds %struct.property, ptr %40, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !33
  %72 = icmp eq ptr %71, null
  br i1 %72, label %83, label %73

73:                                               ; preds = %66
  %74 = load i32, ptr %71, align 8, !tbaa !34
  %75 = icmp eq i32 %74, 11
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.expr, ptr %71, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !11
  %79 = icmp eq ptr %78, @symbol_yes
  br i1 %79, label %83, label %80

80:                                               ; preds = %76, %73
  %81 = tail call i64 @fwrite(ptr nonnull @.str.175, i64 4, i64 1, ptr %0) #14
  %82 = load ptr, ptr %70, align 8, !tbaa !33
  tail call void @expr_fprint(ptr noundef %82, ptr noundef %0) #14
  br label %83

83:                                               ; preds = %80, %76, %66
  %84 = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) #14
  br label %117

85:                                               ; preds = %44
  %86 = tail call i64 @fwrite(ptr nonnull @.str.177, i64 16, i64 1, ptr %0) #14
  br label %117

87:                                               ; preds = %44
  %88 = tail call i64 @fwrite(ptr nonnull @.str.178, i64 9, i64 1, ptr %0) #14
  %89 = getelementptr inbounds %struct.property, ptr %40, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !36
  tail call void @expr_fprint(ptr noundef %90, ptr noundef %0) #14
  %91 = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) #14
  br label %117

92:                                               ; preds = %44
  %93 = tail call i64 @fwrite(ptr nonnull @.str.179, i64 8, i64 1, ptr %0) #14
  %94 = getelementptr inbounds %struct.property, ptr %40, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !36
  tail call void @expr_fprint(ptr noundef %95, ptr noundef %0) #14
  %96 = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) #14
  br label %117

97:                                               ; preds = %44
  %98 = tail call i64 @fwrite(ptr nonnull @.str.180, i64 8, i64 1, ptr %0) #14
  %99 = getelementptr inbounds %struct.property, ptr %40, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !36
  tail call void @expr_fprint(ptr noundef %100, ptr noundef %0) #14
  %101 = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) #14
  br label %117

102:                                              ; preds = %44
  %103 = tail call i64 @fwrite(ptr nonnull @.str.181, i64 7, i64 1, ptr %0) #14
  %104 = getelementptr inbounds %struct.property, ptr %40, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !32
  tail call fastcc void @print_quoted_string(ptr noundef %0, ptr noundef %105) #14
  %106 = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) #14
  br label %117

107:                                              ; preds = %44
  %108 = tail call i64 @fwrite(ptr nonnull @.str.182, i64 9, i64 1, ptr %0) #14
  %109 = load ptr, ptr %41, align 8, !tbaa !31
  %110 = getelementptr inbounds %struct.menu, ptr %109, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !23
  %112 = getelementptr inbounds %struct.symbol, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !18
  %114 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.183, ptr noundef %113) #14
  br label %117

115:                                              ; preds = %44
  %116 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.184, i32 noundef %46) #14
  br label %117

117:                                              ; preds = %115, %107, %102, %97, %92, %87, %85, %83, %64, %39
  %118 = load ptr, ptr %40, align 8, !tbaa !9
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %39

120:                                              ; preds = %117, %35
  %121 = getelementptr inbounds %struct.menu, ptr %5, i64 0, i32 8
  %122 = load ptr, ptr %121, align 8, !tbaa !28
  %123 = icmp eq ptr %122, null
  br i1 %123, label %176, label %124

124:                                              ; preds = %120
  %125 = tail call i64 @strlen(ptr noundef nonnull %122) #18
  %126 = shl i64 %125, 32
  %127 = add i64 %126, -4294967296
  %128 = ashr exact i64 %127, 32
  %129 = getelementptr inbounds i8, ptr %122, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !11
  %131 = icmp eq i8 %130, 10
  br i1 %131, label %132, label %143

132:                                              ; preds = %124
  %133 = ashr exact i64 %126, 32
  %134 = add nsw i64 %133, -1
  br label %135

135:                                              ; preds = %135, %132
  %136 = phi i64 [ %134, %132 ], [ %139, %135 ]
  %137 = phi ptr [ %129, %132 ], [ %140, %135 ]
  store i8 0, ptr %137, align 1, !tbaa !11
  %138 = load ptr, ptr %121, align 8, !tbaa !28
  %139 = add i64 %136, -1
  %140 = getelementptr inbounds i8, ptr %138, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !11
  %142 = icmp eq i8 %141, 10
  br i1 %142, label %135, label %143

143:                                              ; preds = %135, %124
  %144 = phi ptr [ %122, %124 ], [ %138, %135 ]
  %145 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.185, ptr noundef nonnull %144) #14
  br label %176

146:                                              ; preds = %4
  %147 = getelementptr inbounds %struct.menu, ptr %5, i64 0, i32 4
  %148 = load ptr, ptr %147, align 8, !tbaa !19
  %149 = icmp eq ptr %148, null
  br i1 %149, label %176, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.property, ptr %148, i64 0, i32 1
  %152 = load i32, ptr %151, align 8, !tbaa !21
  switch i32 %152, label %161 [
    i32 2, label %153
    i32 3, label %155
  ]

153:                                              ; preds = %150
  %154 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 9, i64 1, ptr %0)
  br label %157

155:                                              ; preds = %150
  %156 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 6, i64 1, ptr %0)
  br label %157

157:                                              ; preds = %155, %153
  %158 = getelementptr inbounds %struct.property, ptr %148, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !32
  tail call fastcc void @print_quoted_string(ptr noundef %0, ptr noundef %159)
  %160 = tail call i32 @fputc(i32 10, ptr %0)
  br label %161

161:                                              ; preds = %157, %150
  %162 = getelementptr inbounds %struct.property, ptr %148, i64 0, i32 3
  %163 = load ptr, ptr %162, align 8, !tbaa !33
  %164 = icmp eq ptr %163, null
  br i1 %164, label %176, label %165

165:                                              ; preds = %161
  %166 = load i32, ptr %163, align 8, !tbaa !34
  %167 = icmp eq i32 %166, 11
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.expr, ptr %163, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !11
  %171 = icmp eq ptr %170, @symbol_yes
  br i1 %171, label %176, label %172

172:                                              ; preds = %168, %165
  %173 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 10, i64 1, ptr %0)
  %174 = load ptr, ptr %162, align 8, !tbaa !33
  tail call void @expr_fprint(ptr noundef %174, ptr noundef %0) #14
  %175 = tail call i32 @fputc(i32 noundef 10, ptr noundef %0)
  br label %176

176:                                              ; preds = %172, %168, %161, %146, %143, %120
  %177 = getelementptr inbounds %struct.menu, ptr %5, i64 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !29
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load ptr, ptr %5, align 8, !tbaa !37
  %182 = icmp eq ptr %181, null
  br i1 %182, label %185, label %183

183:                                              ; preds = %200, %180, %176
  %184 = phi ptr [ %178, %176 ], [ %181, %180 ], [ %201, %200 ]
  br label %4

185:                                              ; preds = %200, %180
  %186 = phi ptr [ %188, %200 ], [ %5, %180 ]
  %187 = getelementptr inbounds %struct.menu, ptr %186, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !38
  %189 = icmp eq ptr %188, null
  br i1 %189, label %203, label %190

190:                                              ; preds = %185
  %191 = getelementptr inbounds %struct.menu, ptr %188, i64 0, i32 4
  %192 = load ptr, ptr %191, align 8, !tbaa !19
  %193 = icmp eq ptr %192, null
  br i1 %193, label %200, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.property, ptr %192, i64 0, i32 1
  %196 = load i32, ptr %195, align 8, !tbaa !21
  %197 = icmp eq i32 %196, 3
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 9, i64 1, ptr %0)
  br label %200

200:                                              ; preds = %198, %194, %190
  %201 = load ptr, ptr %188, align 8, !tbaa !37
  %202 = icmp eq ptr %201, null
  br i1 %202, label %185, label %183

203:                                              ; preds = %185, %1
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @print_quoted_string(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = tail call i32 @putc(i32 noundef 34, ptr noundef %0)
  %4 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 34) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %16, %2
  %7 = phi ptr [ %19, %16 ], [ %4, %2 ]
  %8 = phi ptr [ %18, %16 ], [ %1, %2 ]
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = trunc i64 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %6
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.186, i32 noundef %12, ptr noundef %8)
  br label %16

16:                                               ; preds = %14, %6
  %17 = tail call i64 @fwrite(ptr nonnull @.str.187, i64 2, i64 1, ptr %0)
  %18 = getelementptr inbounds i8, ptr %7, i64 1
  %19 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %18, i32 noundef 34) #18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %6

21:                                               ; preds = %16, %2
  %22 = phi ptr [ %1, %2 ], [ %18, %16 ]
  %23 = tail call i32 @fputs(ptr noundef %22, ptr noundef %0)
  %24 = tail call i32 @putc(i32 noundef 34, ptr noundef %0)
  ret void
}

declare void @expr_fprint(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #11

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #13

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { cold }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { noreturn nounwind }

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
!11 = !{!7, !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !7, i64 0}
!14 = !{!15, !6, i64 108}
!15 = !{!"symbol", !10, i64 0, !10, i64 8, !7, i64 16, !16, i64 24, !7, i64 40, !7, i64 104, !6, i64 108, !10, i64 112, !17, i64 120, !17, i64 136, !17, i64 152}
!16 = !{!"symbol_value", !10, i64 0, !7, i64 8}
!17 = !{!"expr_value", !10, i64 0, !7, i64 8}
!18 = !{!15, !10, i64 8}
!19 = !{!20, !10, i64 32}
!20 = !{!"menu", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !6, i64 56, !10, i64 64, !10, i64 72, !6, i64 80, !10, i64 88}
!21 = !{!22, !7, i64 8}
!22 = !{!"property", !10, i64 0, !7, i64 8, !10, i64 16, !17, i64 24, !10, i64 40, !10, i64 48, !10, i64 56, !6, i64 64}
!23 = !{!20, !10, i64 24}
!24 = !{!20, !10, i64 72}
!25 = !{!26, !10, i64 16}
!26 = !{!"file", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24}
!27 = !{!20, !6, i64 80}
!28 = !{!20, !10, i64 64}
!29 = !{!20, !10, i64 16}
!30 = !{!15, !7, i64 16}
!31 = !{!22, !10, i64 48}
!32 = !{!22, !10, i64 16}
!33 = !{!22, !10, i64 24}
!34 = !{!35, !7, i64 0}
!35 = !{!"expr", !7, i64 0, !7, i64 8, !7, i64 16}
!36 = !{!22, !10, i64 40}
!37 = !{!20, !10, i64 0}
!38 = !{!20, !10, i64 8}
