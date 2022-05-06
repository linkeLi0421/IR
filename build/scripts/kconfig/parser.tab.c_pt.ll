; ModuleID = '/llk/IR/build/scripts/kconfig/parser.tab.c_pt.bc'
source_filename = "scripts/kconfig/parser.tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%union.YYSTYPE = type { i8* }
%struct.menu = type { %struct.menu*, %struct.menu*, %struct.menu*, %struct.symbol*, %struct.property*, %struct.expr*, %struct.expr*, i32, i8*, %struct.file*, i32, i8* }
%struct.symbol = type { %struct.symbol*, i8*, i32, %struct.symbol_value, [4 x %struct.symbol_value], i32, i32, %struct.property*, %struct.expr_value, %struct.expr_value, %struct.expr_value }
%struct.symbol_value = type { i8*, i32 }
%struct.expr_value = type { %struct.expr*, i32 }
%struct.property = type { %struct.property*, i32, i8*, %struct.expr_value, %struct.expr*, %struct.menu*, %struct.file*, i32 }
%struct.expr = type { i32, %union.expr_data, %union.expr_data }
%union.expr_data = type { %struct.expr* }
%struct.file = type { %struct.file*, %struct.file*, i8*, i32 }
%union.yyalloc = type { %union.YYSTYPE }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@cdebug = dso_local local_unnamed_addr global i32 1, align 4
@yydebug = dso_local local_unnamed_addr global i32 0, align 4
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
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
@current_entry = dso_local local_unnamed_addr global %struct.menu* null, align 8
@.str.14 = private unnamed_addr constant [45 x i8] c"warning: menuconfig statement without prompt\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"%s:%d:type(%u)\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"%s:%d:prompt\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"%s:%d:default(%u)\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"%s:%d:select\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"%s:%d:imply\0A\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"%s:%d:range\0A\00", align 1
@modules_sym = external dso_local local_unnamed_addr global %struct.symbol*, align 8
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
@rootmenu = external dso_local global %struct.menu, align 8
@.str.51 = private unnamed_addr constant [10 x i8] c"Main menu\00", align 1
@symbol_hash = dso_local local_unnamed_addr global [9973 x %struct.symbol*] zeroinitializer, align 16
@.str.52 = private unnamed_addr constant [10 x i8] c"\0Acomment \00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"\0Amenu \00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"  depends \00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"\0Aendmenu\0A\00", align 1
@current_menu = dso_local local_unnamed_addr global %struct.menu* null, align 8
@.str.56 = private unnamed_addr constant [8 x i8] c"%s %s (\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"nterm\00", align 1
@yytname = internal unnamed_addr constant [98 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.154, i32 0, i32 0), i8* null], align 16
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
@current_file = external dso_local local_unnamed_addr global %struct.file*, align 8
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
@symbol_yes = external dso_local global %struct.symbol, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @yyparse() local_unnamed_addr #0 {
  %1 = alloca [200 x i8], align 16
  %2 = alloca [200 x %union.YYSTYPE], align 16
  %3 = getelementptr inbounds [200 x i8], [200 x i8]* %1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %3) #13
  %4 = bitcast [200 x %union.YYSTYPE]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1600, i8* nonnull %4) #13
  %5 = getelementptr inbounds [200 x %union.YYSTYPE], [200 x %union.YYSTYPE]* %2, i64 0, i64 0
  %6 = load i32, i32* @yydebug, align 4, !tbaa !3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %9) #14
  br label %11

11:                                               ; preds = %8, %0
  store i32 0, i32* @yynerrs, align 4, !tbaa !3
  store i32 -2, i32* @yychar, align 4, !tbaa !3
  br label %18

12:                                               ; preds = %986, %977, %900, %159
  %13 = phi %union.YYSTYPE* [ %880, %900 ], [ %160, %159 ], [ %981, %986 ], [ %981, %977 ]
  %14 = phi i8* [ %878, %900 ], [ %76, %159 ], [ %933, %986 ], [ %933, %977 ]
  %15 = phi i32 [ %24, %900 ], [ %150, %159 ], [ 3, %986 ], [ 3, %977 ]
  %16 = phi i32 [ %903, %900 ], [ %142, %159 ], [ %980, %986 ], [ %980, %977 ]
  %17 = getelementptr inbounds i8, i8* %14, i64 1
  br label %18

18:                                               ; preds = %12, %11
  %19 = phi i64 [ 200, %11 ], [ %73, %12 ]
  %20 = phi %union.YYSTYPE* [ %5, %11 ], [ %13, %12 ]
  %21 = phi %union.YYSTYPE* [ %5, %11 ], [ %75, %12 ]
  %22 = phi i8* [ %3, %11 ], [ %17, %12 ]
  %23 = phi i8* [ %3, %11 ], [ %77, %12 ]
  %24 = phi i32 [ 0, %11 ], [ %15, %12 ]
  %25 = phi i32 [ 0, %11 ], [ %16, %12 ]
  %26 = load i32, i32* @yydebug, align 4, !tbaa !3
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %25) #14
  br label %31

31:                                               ; preds = %28, %18
  %32 = trunc i32 %25 to i8
  store i8 %32, i8* %22, align 1, !tbaa !9
  %33 = getelementptr inbounds i8, i8* %23, i64 -1
  %34 = getelementptr inbounds i8, i8* %33, i64 %19
  %35 = icmp ugt i8* %34, %22
  br i1 %35, label %72, label %36

36:                                               ; preds = %31
  %37 = ptrtoint i8* %22 to i64
  %38 = ptrtoint i8* %23 to i64
  %39 = sub i64 %37, %38
  %40 = add nsw i64 %39, 1
  %41 = icmp sgt i64 %19, 9999
  br i1 %41, label %996, label %42

42:                                               ; preds = %36
  %43 = shl nsw i64 %19, 1
  %44 = icmp slt i64 %43, 10000
  %45 = select i1 %44, i64 %43, i64 10000
  %46 = mul nsw i64 %45, 9
  %47 = add nsw i64 %46, 7
  %48 = call noalias align 16 i8* @malloc(i64 %47) #13
  %49 = icmp eq i8* %48, null
  br i1 %49, label %996, label %50

50:                                               ; preds = %42
  %51 = bitcast i8* %48 to %union.yyalloc*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %48, i8* align 1 %23, i64 %40, i1 false)
  %52 = add nsw i64 %45, 7
  %53 = sdiv i64 %52, 8
  %54 = getelementptr inbounds %union.yyalloc, %union.yyalloc* %51, i64 %53, i32 0
  %55 = bitcast %union.YYSTYPE* %54 to i8*
  %56 = bitcast %union.YYSTYPE* %21 to i8*
  %57 = shl i64 %40, 3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %55, i8* align 8 %56, i64 %57, i1 false)
  %58 = icmp eq i8* %23, %3
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  call void @free(i8* %23) #13
  br label %60

60:                                               ; preds = %59, %50
  %61 = getelementptr inbounds i8, i8* %48, i64 %39
  %62 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %54, i64 %39
  %63 = load i32, i32* @yydebug, align 4, !tbaa !3
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %45) #14
  br label %68

68:                                               ; preds = %65, %60
  %69 = getelementptr inbounds i8, i8* %48, i64 -1
  %70 = getelementptr inbounds i8, i8* %69, i64 %45
  %71 = icmp ugt i8* %70, %61
  br i1 %71, label %72, label %1002

72:                                               ; preds = %68, %31
  %73 = phi i64 [ %19, %31 ], [ %45, %68 ]
  %74 = phi %union.YYSTYPE* [ %20, %31 ], [ %62, %68 ]
  %75 = phi %union.YYSTYPE* [ %21, %31 ], [ %54, %68 ]
  %76 = phi i8* [ %22, %31 ], [ %61, %68 ]
  %77 = phi i8* [ %23, %31 ], [ %48, %68 ]
  %78 = icmp eq i32 %25, 6
  br i1 %78, label %1002, label %79

79:                                               ; preds = %72
  %80 = sext i32 %25 to i64
  %81 = getelementptr inbounds [184 x i16], [184 x i16]* @yypact, i64 0, i64 %80
  %82 = load i16, i16* %81, align 2, !tbaa !10
  %83 = sext i16 %82 to i32
  %84 = icmp eq i16 %82, -65
  br i1 %84, label %163, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @yychar, align 4, !tbaa !3
  %87 = icmp eq i32 %86, -2
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i32, i32* @yydebug, align 4, !tbaa !3
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %93 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %92) #14
  br label %94

94:                                               ; preds = %91, %88
  %95 = call i32 @yylex() #13
  store i32 %95, i32* @yychar, align 4, !tbaa !3
  br label %96

96:                                               ; preds = %94, %85
  %97 = phi i32 [ %95, %94 ], [ %86, %85 ]
  %98 = icmp slt i32 %97, 1
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  store i32 0, i32* @yychar, align 4, !tbaa !3
  %100 = load i32, i32* @yydebug, align 4, !tbaa !3
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %129, label %102

102:                                              ; preds = %99
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %104 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %103) #14
  br label %129

105:                                              ; preds = %96
  %106 = icmp ult i32 %97, 305
  br i1 %106, label %107, label %112

107:                                              ; preds = %105
  %108 = zext i32 %97 to i64
  %109 = getelementptr inbounds [305 x i8], [305 x i8]* @yytranslate, i64 0, i64 %108
  %110 = load i8, i8* %109, align 1, !tbaa !9
  %111 = sext i8 %110 to i32
  br label %112

112:                                              ; preds = %107, %105
  %113 = phi i32 [ %111, %107 ], [ 2, %105 ]
  %114 = load i32, i32* @yydebug, align 4, !tbaa !3
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %129, label %116

116:                                              ; preds = %112
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0)) #14
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %120 = icmp slt i32 %113, 50
  %121 = select i1 %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0)
  %122 = sext i32 %113 to i64
  %123 = getelementptr inbounds [98 x i8*], [98 x i8*]* @yytname, i64 0, i64 %122
  %124 = load i8*, i8** %123, align 8, !tbaa !7
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0), i8* %121, i8* %124) #15
  %126 = call i32 @fputc(i32 41, %struct._IO_FILE* %119) #13
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %128 = call i32 @fputc(i32 10, %struct._IO_FILE* %127)
  br label %129

129:                                              ; preds = %116, %112, %102, %99
  %130 = phi i32 [ 0, %102 ], [ 0, %99 ], [ %113, %116 ], [ %113, %112 ]
  %131 = add nsw i32 %130, %83
  %132 = icmp ugt i32 %131, 184
  br i1 %132, label %163, label %133

133:                                              ; preds = %129
  %134 = zext i32 %131 to i64
  %135 = getelementptr inbounds [185 x i8], [185 x i8]* @yycheck, i64 0, i64 %134
  %136 = load i8, i8* %135, align 1, !tbaa !9
  %137 = zext i8 %136 to i32
  %138 = icmp eq i32 %130, %137
  br i1 %138, label %139, label %163

139:                                              ; preds = %133
  %140 = getelementptr inbounds [185 x i16], [185 x i16]* @yytable, i64 0, i64 %134
  %141 = load i16, i16* %140, align 2, !tbaa !10
  %142 = sext i16 %141 to i32
  %143 = and i32 %131, -33
  %144 = icmp eq i32 %143, 17
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = sub nsw i32 0, %142
  br label %168

147:                                              ; preds = %139
  %148 = icmp eq i32 %24, 0
  %149 = add nsw i32 %24, -1
  %150 = select i1 %148, i32 0, i32 %149
  %151 = load i32, i32* @yydebug, align 4, !tbaa !3
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %147
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #14
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  call fastcc void @yy_symbol_print(%struct._IO_FILE* %156, i32 %130, %union.YYSTYPE* nonnull @yylval)
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %158 = call i32 @fputc(i32 10, %struct._IO_FILE* %157)
  br label %159

159:                                              ; preds = %153, %147
  %160 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 1
  %161 = bitcast %union.YYSTYPE* %160 to i64*
  %162 = load i64, i64* bitcast (%union.YYSTYPE* @yylval to i64*), align 8
  store i64 %162, i64* %161, align 8
  store i32 -2, i32* @yychar, align 4, !tbaa !3
  br label %12

163:                                              ; preds = %133, %129, %79
  %164 = getelementptr inbounds [184 x i8], [184 x i8]* @yydefact, i64 0, i64 %80
  %165 = load i8, i8* %164, align 1, !tbaa !9
  %166 = sext i8 %165 to i32
  %167 = icmp eq i8 %165, 0
  br i1 %167, label %904, label %168

168:                                              ; preds = %163, %145
  %169 = phi i32 [ %166, %163 ], [ %146, %145 ]
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [106 x i8], [106 x i8]* @yyr2, i64 0, i64 %170
  %172 = load i8, i8* %171, align 1, !tbaa !9
  %173 = sext i8 %172 to i64
  %174 = sub nsw i64 1, %173
  %175 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 %174
  %176 = bitcast %union.YYSTYPE* %175 to i64*
  %177 = load i64, i64* %176, align 8
  %178 = inttoptr i64 %177 to i8*
  %179 = load i32, i32* @yydebug, align 4, !tbaa !3
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %214, label %181

181:                                              ; preds = %168
  %182 = getelementptr inbounds [106 x i16], [106 x i16]* @yyrline, i64 0, i64 %170
  %183 = load i16, i16* %182, align 2, !tbaa !10
  %184 = sext i16 %183 to i32
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %186 = add nsw i32 %169, -1
  %187 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %185, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.155, i64 0, i64 0), i32 %186, i32 %184) #15
  %188 = icmp sgt i8 %172, 0
  br i1 %188, label %189, label %214

189:                                              ; preds = %181
  %190 = zext i8 %172 to i64
  br label %191

191:                                              ; preds = %191, %189
  %192 = phi i64 [ 0, %189 ], [ %194, %191 ]
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %194 = add nuw nsw i64 %192, 1
  %195 = trunc i64 %194 to i32
  %196 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %193, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.156, i64 0, i64 0), i32 %195) #15
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %198 = sub nsw i64 %194, %190
  %199 = getelementptr inbounds i8, i8* %76, i64 %198
  %200 = load i8, i8* %199, align 1, !tbaa !9
  %201 = zext i8 %200 to i64
  %202 = getelementptr inbounds [184 x i8], [184 x i8]* @yystos, i64 0, i64 %201
  %203 = load i8, i8* %202, align 1, !tbaa !9
  %204 = icmp slt i8 %203, 50
  %205 = select i1 %204, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0)
  %206 = sext i8 %203 to i64
  %207 = getelementptr inbounds [98 x i8*], [98 x i8*]* @yytname, i64 0, i64 %206
  %208 = load i8*, i8** %207, align 8, !tbaa !7
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %197, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0), i8* %205, i8* %208) #15
  %210 = call i32 @fputc(i32 41, %struct._IO_FILE* %197) #13
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %212 = call i32 @fputc(i32 10, %struct._IO_FILE* %211) #13
  %213 = icmp eq i64 %194, %190
  br i1 %213, label %214, label %191

214:                                              ; preds = %191, %181, %168
  switch i32 %169, label %830 [
    i32 4, label %215
    i32 14, label %219
    i32 15, label %222
    i32 20, label %223
    i32 21, label %224
    i32 22, label %242
    i32 23, label %250
    i32 24, label %268
    i32 29, label %284
    i32 30, label %296
    i32 31, label %310
    i32 32, label %331
    i32 33, label %345
    i32 34, label %359
    i32 35, label %377
    i32 36, label %392
    i32 37, label %407
    i32 38, label %410
    i32 44, label %443
    i32 45, label %457
    i32 46, label %469
    i32 47, label %483
    i32 49, label %497
    i32 50, label %501
    i32 51, label %505
    i32 52, label %509
    i32 53, label %513
    i32 54, label %517
    i32 55, label %520
    i32 56, label %524
    i32 57, label %528
    i32 58, label %542
    i32 61, label %575
    i32 62, label %586
    i32 63, label %589
    i32 68, label %622
    i32 69, label %636
    i32 73, label %647
    i32 74, label %656
    i32 75, label %689
    i32 76, label %700
    i32 78, label %704
    i32 79, label %710
    i32 80, label %711
    i32 81, label %712
    i32 82, label %713
    i32 83, label %714
    i32 84, label %717
    i32 85, label %722
    i32 86, label %730
    i32 87, label %738
    i32 88, label %746
    i32 89, label %754
    i32 90, label %762
    i32 91, label %770
    i32 92, label %773
    i32 93, label %778
    i32 94, label %786
    i32 95, label %794
    i32 97, label %800
    i32 98, label %806
    i32 100, label %807
    i32 101, label %817
    i32 102, label %821
    i32 103, label %824
    i32 104, label %828
  ]

215:                                              ; preds = %214
  %216 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -1, i32 0
  %217 = load i8*, i8** %216, align 8, !tbaa !9
  %218 = call %struct.property* @menu_add_prompt(i32 3, i8* %217, %struct.expr* null) #13
  br label %830

219:                                              ; preds = %214
  %220 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -2, i32 0
  %221 = load i8*, i8** %220, align 8, !tbaa !9
  call void (i8*, ...) @zconf_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* %221)
  br label %830

222:                                              ; preds = %214
  call void (i8*, ...) @zconf_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %830

223:                                              ; preds = %214
  call void (i8*, ...) @zconf_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %830

224:                                              ; preds = %214
  %225 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -1
  %226 = bitcast %union.YYSTYPE* %225 to %struct.symbol**
  %227 = load %struct.symbol*, %struct.symbol** %226, align 8, !tbaa !9
  %228 = getelementptr inbounds %struct.symbol, %struct.symbol* %227, i64 0, i32 6
  %229 = load i32, i32* %228, align 4, !tbaa !12
  %230 = or i32 %229, 256
  store i32 %230, i32* %228, align 4, !tbaa !12
  %231 = load %struct.symbol*, %struct.symbol** %226, align 8, !tbaa !9
  call void @menu_add_entry(%struct.symbol* %231) #13
  %232 = load i32, i32* @cdebug, align 4, !tbaa !3
  %233 = and i32 %232, 2
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %830, label %235

235:                                              ; preds = %224
  %236 = call i8* @zconf_curname() #13
  %237 = call i32 @zconf_lineno() #13
  %238 = load %struct.symbol*, %struct.symbol** %226, align 8, !tbaa !9
  %239 = getelementptr inbounds %struct.symbol, %struct.symbol* %238, i64 0, i32 1
  %240 = load i8*, i8** %239, align 8, !tbaa !16
  %241 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %236, i32 %237, i8* %240)
  br label %830

242:                                              ; preds = %214
  %243 = load i32, i32* @cdebug, align 4, !tbaa !3
  %244 = and i32 %243, 2
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %830, label %246

246:                                              ; preds = %242
  %247 = call i8* @zconf_curname() #13
  %248 = call i32 @zconf_lineno() #13
  %249 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %247, i32 %248)
  br label %830

250:                                              ; preds = %214
  %251 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -1
  %252 = bitcast %union.YYSTYPE* %251 to %struct.symbol**
  %253 = load %struct.symbol*, %struct.symbol** %252, align 8, !tbaa !9
  %254 = getelementptr inbounds %struct.symbol, %struct.symbol* %253, i64 0, i32 6
  %255 = load i32, i32* %254, align 4, !tbaa !12
  %256 = or i32 %255, 256
  store i32 %256, i32* %254, align 4, !tbaa !12
  %257 = load %struct.symbol*, %struct.symbol** %252, align 8, !tbaa !9
  call void @menu_add_entry(%struct.symbol* %257) #13
  %258 = load i32, i32* @cdebug, align 4, !tbaa !3
  %259 = and i32 %258, 2
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %830, label %261

261:                                              ; preds = %250
  %262 = call i8* @zconf_curname() #13
  %263 = call i32 @zconf_lineno() #13
  %264 = load %struct.symbol*, %struct.symbol** %252, align 8, !tbaa !9
  %265 = getelementptr inbounds %struct.symbol, %struct.symbol* %264, i64 0, i32 1
  %266 = load i8*, i8** %265, align 8, !tbaa !16
  %267 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8* %262, i32 %263, i8* %266)
  br label %830

268:                                              ; preds = %214
  %269 = load %struct.menu*, %struct.menu** @current_entry, align 8, !tbaa !7
  %270 = getelementptr inbounds %struct.menu, %struct.menu* %269, i64 0, i32 4
  %271 = load %struct.property*, %struct.property** %270, align 8, !tbaa !17
  %272 = icmp eq %struct.property* %271, null
  br i1 %272, label %275, label %273

273:                                              ; preds = %268
  %274 = getelementptr inbounds %struct.property, %struct.property* %271, i64 0, i32 1
  store i32 3, i32* %274, align 8, !tbaa !19
  br label %276

275:                                              ; preds = %268
  call void (i8*, ...) @zconfprint(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0))
  br label %276

276:                                              ; preds = %275, %273
  %277 = load i32, i32* @cdebug, align 4, !tbaa !3
  %278 = and i32 %277, 2
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %830, label %280

280:                                              ; preds = %276
  %281 = call i8* @zconf_curname() #13
  %282 = call i32 @zconf_lineno() #13
  %283 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %281, i32 %282)
  br label %830

284:                                              ; preds = %214
  %285 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -2
  %286 = bitcast %union.YYSTYPE* %285 to i32*
  %287 = load i32, i32* %286, align 8, !tbaa !9
  call void @menu_set_type(i32 %287) #13
  %288 = load i32, i32* @cdebug, align 4, !tbaa !3
  %289 = and i32 %288, 2
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %830, label %291

291:                                              ; preds = %284
  %292 = call i8* @zconf_curname() #13
  %293 = call i32 @zconf_lineno() #13
  %294 = load i32, i32* %286, align 8, !tbaa !9
  %295 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* %292, i32 %293, i32 %294)
  br label %830

296:                                              ; preds = %214
  %297 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -2, i32 0
  %298 = load i8*, i8** %297, align 8, !tbaa !9
  %299 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -1
  %300 = bitcast %union.YYSTYPE* %299 to %struct.expr**
  %301 = load %struct.expr*, %struct.expr** %300, align 8, !tbaa !9
  %302 = call %struct.property* @menu_add_prompt(i32 1, i8* %298, %struct.expr* %301) #13
  %303 = load i32, i32* @cdebug, align 4, !tbaa !3
  %304 = and i32 %303, 2
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %830, label %306

306:                                              ; preds = %296
  %307 = call i8* @zconf_curname() #13
  %308 = call i32 @zconf_lineno() #13
  %309 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %307, i32 %308)
  br label %830

310:                                              ; preds = %214
  %311 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -2
  %312 = bitcast %union.YYSTYPE* %311 to %struct.expr**
  %313 = load %struct.expr*, %struct.expr** %312, align 8, !tbaa !9
  %314 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -1
  %315 = bitcast %union.YYSTYPE* %314 to %struct.expr**
  %316 = load %struct.expr*, %struct.expr** %315, align 8, !tbaa !9
  call void @menu_add_expr(i32 4, %struct.expr* %313, %struct.expr* %316) #13
  %317 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -3
  %318 = bitcast %union.YYSTYPE* %317 to i32*
  %319 = load i32, i32* %318, align 8, !tbaa !9
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %322, label %321

321:                                              ; preds = %310
  call void @menu_set_type(i32 %319) #13
  br label %322

322:                                              ; preds = %321, %310
  %323 = load i32, i32* @cdebug, align 4, !tbaa !3
  %324 = and i32 %323, 2
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %830, label %326

326:                                              ; preds = %322
  %327 = call i8* @zconf_curname() #13
  %328 = call i32 @zconf_lineno() #13
  %329 = load i32, i32* %318, align 8, !tbaa !9
  %330 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i8* %327, i32 %328, i32 %329)
  br label %830

331:                                              ; preds = %214
  %332 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -2
  %333 = bitcast %union.YYSTYPE* %332 to %struct.symbol**
  %334 = load %struct.symbol*, %struct.symbol** %333, align 8, !tbaa !9
  %335 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -1
  %336 = bitcast %union.YYSTYPE* %335 to %struct.expr**
  %337 = load %struct.expr*, %struct.expr** %336, align 8, !tbaa !9
  call void @menu_add_symbol(i32 6, %struct.symbol* %334, %struct.expr* %337) #13
  %338 = load i32, i32* @cdebug, align 4, !tbaa !3
  %339 = and i32 %338, 2
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %830, label %341

341:                                              ; preds = %331
  %342 = call i8* @zconf_curname() #13
  %343 = call i32 @zconf_lineno() #13
  %344 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %342, i32 %343)
  br label %830

345:                                              ; preds = %214
  %346 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -2
  %347 = bitcast %union.YYSTYPE* %346 to %struct.symbol**
  %348 = load %struct.symbol*, %struct.symbol** %347, align 8, !tbaa !9
  %349 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -1
  %350 = bitcast %union.YYSTYPE* %349 to %struct.expr**
  %351 = load %struct.expr*, %struct.expr** %350, align 8, !tbaa !9
  call void @menu_add_symbol(i32 7, %struct.symbol* %348, %struct.expr* %351) #13
  %352 = load i32, i32* @cdebug, align 4, !tbaa !3
  %353 = and i32 %352, 2
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %830, label %355

355:                                              ; preds = %345
  %356 = call i8* @zconf_curname() #13
  %357 = call i32 @zconf_lineno() #13
  %358 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* %356, i32 %357)
  br label %830

359:                                              ; preds = %214
  %360 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -3
  %361 = bitcast %union.YYSTYPE* %360 to %struct.symbol**
  %362 = load %struct.symbol*, %struct.symbol** %361, align 8, !tbaa !9
  %363 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -2
  %364 = bitcast %union.YYSTYPE* %363 to %struct.symbol**
  %365 = load %struct.symbol*, %struct.symbol** %364, align 8, !tbaa !9
  %366 = call %struct.expr* @expr_alloc_comp(i32 12, %struct.symbol* %362, %struct.symbol* %365) #13
  %367 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -1
  %368 = bitcast %union.YYSTYPE* %367 to %struct.expr**
  %369 = load %struct.expr*, %struct.expr** %368, align 8, !tbaa !9
  call void @menu_add_expr(i32 8, %struct.expr* %366, %struct.expr* %369) #13
  %370 = load i32, i32* @cdebug, align 4, !tbaa !3
  %371 = and i32 %370, 2
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %830, label %373

373:                                              ; preds = %359
  %374 = call i8* @zconf_curname() #13
  %375 = call i32 @zconf_lineno() #13
  %376 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* %374, i32 %375)
  br label %830

377:                                              ; preds = %214
  %378 = load %struct.symbol*, %struct.symbol** @modules_sym, align 8, !tbaa !7
  %379 = icmp eq %struct.symbol* %378, null
  br i1 %379, label %388, label %380

380:                                              ; preds = %377
  %381 = load %struct.menu*, %struct.menu** @current_entry, align 8, !tbaa !7
  %382 = getelementptr inbounds %struct.menu, %struct.menu* %381, i64 0, i32 3
  %383 = load %struct.symbol*, %struct.symbol** %382, align 8, !tbaa !21
  %384 = getelementptr inbounds %struct.symbol, %struct.symbol* %383, i64 0, i32 1
  %385 = load i8*, i8** %384, align 8, !tbaa !16
  %386 = getelementptr inbounds %struct.symbol, %struct.symbol* %378, i64 0, i32 1
  %387 = load i8*, i8** %386, align 8, !tbaa !16
  call void (i8*, ...) @zconf_error(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.21, i64 0, i64 0), i8* %385, i8* %387)
  br label %388

388:                                              ; preds = %380, %377
  %389 = load %struct.menu*, %struct.menu** @current_entry, align 8, !tbaa !7
  %390 = getelementptr inbounds %struct.menu, %struct.menu* %389, i64 0, i32 3
  %391 = load %struct.symbol*, %struct.symbol** %390, align 8, !tbaa !21
  store %struct.symbol* %391, %struct.symbol** @modules_sym, align 8, !tbaa !7
  br label %830

392:                                              ; preds = %214
  %393 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -1, i32 0
  %394 = load i8*, i8** %393, align 8, !tbaa !9
  %395 = call %struct.symbol* @sym_lookup(i8* %394, i32 16) #13
  %396 = getelementptr inbounds %struct.symbol, %struct.symbol* %395, i64 0, i32 6
  %397 = load i32, i32* %396, align 4, !tbaa !12
  %398 = or i32 %397, 4096
  store i32 %398, i32* %396, align 4, !tbaa !12
  call void @menu_add_entry(%struct.symbol* %395) #13
  call void @menu_add_expr(i32 5, %struct.expr* null, %struct.expr* null) #13
  %399 = load i8*, i8** %393, align 8, !tbaa !9
  call void @free(i8* %399) #13
  %400 = load i32, i32* @cdebug, align 4, !tbaa !3
  %401 = and i32 %400, 2
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %830, label %403

403:                                              ; preds = %392
  %404 = call i8* @zconf_curname() #13
  %405 = call i32 @zconf_lineno() #13
  %406 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* %404, i32 %405)
  br label %830

407:                                              ; preds = %214
  %408 = call %struct.menu* @menu_add_menu() #13
  %409 = bitcast %struct.menu* %408 to i8*
  br label %830

410:                                              ; preds = %214
  %411 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %74, i64 0, i32 0
  %412 = load i8*, i8** %411, align 8, !tbaa !9
  %413 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %412, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #16
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %416, label %415

415:                                              ; preds = %410
  call void (i8*, ...) @zconf_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.161, i64 0, i64 0), i8* %412, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #13
  br label %432

416:                                              ; preds = %410
  %417 = load %struct.menu*, %struct.menu** @current_menu, align 8, !tbaa !7
  %418 = getelementptr inbounds %struct.menu, %struct.menu* %417, i64 0, i32 9
  %419 = load %struct.file*, %struct.file** %418, align 8, !tbaa !22
  %420 = load %struct.file*, %struct.file** @current_file, align 8, !tbaa !7
  %421 = icmp eq %struct.file* %419, %420
  br i1 %421, label %435, label %422

422:                                              ; preds = %416
  call void (i8*, ...) @zconf_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.162, i64 0, i64 0), i8* %412, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #13
  %423 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %424 = load %struct.menu*, %struct.menu** @current_menu, align 8, !tbaa !7
  %425 = getelementptr inbounds %struct.menu, %struct.menu* %424, i64 0, i32 9
  %426 = load %struct.file*, %struct.file** %425, align 8, !tbaa !22
  %427 = getelementptr inbounds %struct.file, %struct.file* %426, i64 0, i32 2
  %428 = load i8*, i8** %427, align 8, !tbaa !23
  %429 = getelementptr inbounds %struct.menu, %struct.menu* %424, i64 0, i32 10
  %430 = load i32, i32* %429, align 8, !tbaa !25
  %431 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %423, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.163, i64 0, i64 0), i8* %428, i32 %430, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #15
  br label %432

432:                                              ; preds = %422, %415
  %433 = load i32, i32* @yynerrs, align 4, !tbaa !3
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* @yynerrs, align 4, !tbaa !3
  br label %830

435:                                              ; preds = %416
  call void @menu_end_menu() #13
  %436 = load i32, i32* @cdebug, align 4, !tbaa !3
  %437 = and i32 %436, 2
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %830, label %439

439:                                              ; preds = %435
  %440 = call i8* @zconf_curname() #13
  %441 = call i32 @zconf_lineno() #13
  %442 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i8* %440, i32 %441)
  br label %830

443:                                              ; preds = %214
  %444 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -2, i32 0
  %445 = load i8*, i8** %444, align 8, !tbaa !9
  %446 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -1
  %447 = bitcast %union.YYSTYPE* %446 to %struct.expr**
  %448 = load %struct.expr*, %struct.expr** %447, align 8, !tbaa !9
  %449 = call %struct.property* @menu_add_prompt(i32 1, i8* %445, %struct.expr* %448) #13
  %450 = load i32, i32* @cdebug, align 4, !tbaa !3
  %451 = and i32 %450, 2
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %830, label %453

453:                                              ; preds = %443
  %454 = call i8* @zconf_curname() #13
  %455 = call i32 @zconf_lineno() #13
  %456 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %454, i32 %455)
  br label %830

457:                                              ; preds = %214
  %458 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -2
  %459 = bitcast %union.YYSTYPE* %458 to i32*
  %460 = load i32, i32* %459, align 8, !tbaa !9
  call void @menu_set_type(i32 %460) #13
  %461 = load i32, i32* @cdebug, align 4, !tbaa !3
  %462 = and i32 %461, 2
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %830, label %464

464:                                              ; preds = %457
  %465 = call i8* @zconf_curname() #13
  %466 = call i32 @zconf_lineno() #13
  %467 = load i32, i32* %459, align 8, !tbaa !9
  %468 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* %465, i32 %466, i32 %467)
  br label %830

469:                                              ; preds = %214
  %470 = load %struct.menu*, %struct.menu** @current_entry, align 8, !tbaa !7
  %471 = getelementptr inbounds %struct.menu, %struct.menu* %470, i64 0, i32 3
  %472 = load %struct.symbol*, %struct.symbol** %471, align 8, !tbaa !21
  %473 = getelementptr inbounds %struct.symbol, %struct.symbol* %472, i64 0, i32 6
  %474 = load i32, i32* %473, align 4, !tbaa !12
  %475 = or i32 %474, 256
  store i32 %475, i32* %473, align 4, !tbaa !12
  %476 = load i32, i32* @cdebug, align 4, !tbaa !3
  %477 = and i32 %476, 2
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %830, label %479

479:                                              ; preds = %469
  %480 = call i8* @zconf_curname() #13
  %481 = call i32 @zconf_lineno() #13
  %482 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i8* %480, i32 %481)
  br label %830

483:                                              ; preds = %214
  %484 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -2
  %485 = bitcast %union.YYSTYPE* %484 to %struct.symbol**
  %486 = load %struct.symbol*, %struct.symbol** %485, align 8, !tbaa !9
  %487 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -1
  %488 = bitcast %union.YYSTYPE* %487 to %struct.expr**
  %489 = load %struct.expr*, %struct.expr** %488, align 8, !tbaa !9
  call void @menu_add_symbol(i32 4, %struct.symbol* %486, %struct.expr* %489) #13
  %490 = load i32, i32* @cdebug, align 4, !tbaa !3
  %491 = and i32 %490, 2
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %830, label %493

493:                                              ; preds = %483
  %494 = call i8* @zconf_curname() #13
  %495 = call i32 @zconf_lineno() #13
  %496 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0), i8* %494, i32 %495)
  br label %830

497:                                              ; preds = %214
  %498 = and i64 %177, -4294967296
  %499 = or i64 %498, 3
  %500 = inttoptr i64 %499 to i8*
  br label %830

501:                                              ; preds = %214
  %502 = and i64 %177, -4294967296
  %503 = or i64 %502, 4
  %504 = inttoptr i64 %503 to i8*
  br label %830

505:                                              ; preds = %214
  %506 = and i64 %177, -4294967296
  %507 = or i64 %506, 5
  %508 = inttoptr i64 %507 to i8*
  br label %830

509:                                              ; preds = %214
  %510 = and i64 %177, -4294967296
  %511 = or i64 %510, 1
  %512 = inttoptr i64 %511 to i8*
  br label %830

513:                                              ; preds = %214
  %514 = and i64 %177, -4294967296
  %515 = or i64 %514, 2
  %516 = inttoptr i64 %515 to i8*
  br label %830

517:                                              ; preds = %214
  %518 = and i64 %177, -4294967296
  %519 = inttoptr i64 %518 to i8*
  br label %830

520:                                              ; preds = %214
  %521 = and i64 %177, -4294967296
  %522 = or i64 %521, 1
  %523 = inttoptr i64 %522 to i8*
  br label %830

524:                                              ; preds = %214
  %525 = and i64 %177, -4294967296
  %526 = or i64 %525, 2
  %527 = inttoptr i64 %526 to i8*
  br label %830

528:                                              ; preds = %214
  %529 = load i32, i32* @cdebug, align 4, !tbaa !3
  %530 = and i32 %529, 2
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %536, label %532

532:                                              ; preds = %528
  %533 = call i8* @zconf_curname() #13
  %534 = call i32 @zconf_lineno() #13
  %535 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8* %533, i32 %534)
  br label %536

536:                                              ; preds = %532, %528
  call void @menu_add_entry(%struct.symbol* null) #13
  %537 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -1
  %538 = bitcast %union.YYSTYPE* %537 to %struct.expr**
  %539 = load %struct.expr*, %struct.expr** %538, align 8, !tbaa !9
  call void @menu_add_dep(%struct.expr* %539) #13
  %540 = call %struct.menu* @menu_add_menu() #13
  %541 = bitcast %struct.menu* %540 to i8*
  br label %830

542:                                              ; preds = %214
  %543 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %74, i64 0, i32 0
  %544 = load i8*, i8** %543, align 8, !tbaa !9
  %545 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %544, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0)) #16
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %548, label %547

547:                                              ; preds = %542
  call void (i8*, ...) @zconf_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.161, i64 0, i64 0), i8* %544, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0)) #13
  br label %564

548:                                              ; preds = %542
  %549 = load %struct.menu*, %struct.menu** @current_menu, align 8, !tbaa !7
  %550 = getelementptr inbounds %struct.menu, %struct.menu* %549, i64 0, i32 9
  %551 = load %struct.file*, %struct.file** %550, align 8, !tbaa !22
  %552 = load %struct.file*, %struct.file** @current_file, align 8, !tbaa !7
  %553 = icmp eq %struct.file* %551, %552
  br i1 %553, label %567, label %554

554:                                              ; preds = %548
  call void (i8*, ...) @zconf_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.162, i64 0, i64 0), i8* %544, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0)) #13
  %555 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %556 = load %struct.menu*, %struct.menu** @current_menu, align 8, !tbaa !7
  %557 = getelementptr inbounds %struct.menu, %struct.menu* %556, i64 0, i32 9
  %558 = load %struct.file*, %struct.file** %557, align 8, !tbaa !22
  %559 = getelementptr inbounds %struct.file, %struct.file* %558, i64 0, i32 2
  %560 = load i8*, i8** %559, align 8, !tbaa !23
  %561 = getelementptr inbounds %struct.menu, %struct.menu* %556, i64 0, i32 10
  %562 = load i32, i32* %561, align 8, !tbaa !25
  %563 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %555, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.163, i64 0, i64 0), i8* %560, i32 %562, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0)) #15
  br label %564

564:                                              ; preds = %554, %547
  %565 = load i32, i32* @yynerrs, align 4, !tbaa !3
  %566 = add nsw i32 %565, 1
  store i32 %566, i32* @yynerrs, align 4, !tbaa !3
  br label %830

567:                                              ; preds = %548
  call void @menu_end_menu() #13
  %568 = load i32, i32* @cdebug, align 4, !tbaa !3
  %569 = and i32 %568, 2
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %830, label %571

571:                                              ; preds = %567
  %572 = call i8* @zconf_curname() #13
  %573 = call i32 @zconf_lineno() #13
  %574 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i8* %572, i32 %573)
  br label %830

575:                                              ; preds = %214
  call void @menu_add_entry(%struct.symbol* null) #13
  %576 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -1, i32 0
  %577 = load i8*, i8** %576, align 8, !tbaa !9
  %578 = call %struct.property* @menu_add_prompt(i32 3, i8* %577, %struct.expr* null) #13
  %579 = load i32, i32* @cdebug, align 4, !tbaa !3
  %580 = and i32 %579, 2
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %830, label %582

582:                                              ; preds = %575
  %583 = call i8* @zconf_curname() #13
  %584 = call i32 @zconf_lineno() #13
  %585 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* %583, i32 %584)
  br label %830

586:                                              ; preds = %214
  %587 = call %struct.menu* @menu_add_menu() #13
  %588 = bitcast %struct.menu* %587 to i8*
  br label %830

589:                                              ; preds = %214
  %590 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %74, i64 0, i32 0
  %591 = load i8*, i8** %590, align 8, !tbaa !9
  %592 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %591, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0)) #16
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %595, label %594

594:                                              ; preds = %589
  call void (i8*, ...) @zconf_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.161, i64 0, i64 0), i8* %591, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0)) #13
  br label %611

595:                                              ; preds = %589
  %596 = load %struct.menu*, %struct.menu** @current_menu, align 8, !tbaa !7
  %597 = getelementptr inbounds %struct.menu, %struct.menu* %596, i64 0, i32 9
  %598 = load %struct.file*, %struct.file** %597, align 8, !tbaa !22
  %599 = load %struct.file*, %struct.file** @current_file, align 8, !tbaa !7
  %600 = icmp eq %struct.file* %598, %599
  br i1 %600, label %614, label %601

601:                                              ; preds = %595
  call void (i8*, ...) @zconf_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.162, i64 0, i64 0), i8* %591, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0)) #13
  %602 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %603 = load %struct.menu*, %struct.menu** @current_menu, align 8, !tbaa !7
  %604 = getelementptr inbounds %struct.menu, %struct.menu* %603, i64 0, i32 9
  %605 = load %struct.file*, %struct.file** %604, align 8, !tbaa !22
  %606 = getelementptr inbounds %struct.file, %struct.file* %605, i64 0, i32 2
  %607 = load i8*, i8** %606, align 8, !tbaa !23
  %608 = getelementptr inbounds %struct.menu, %struct.menu* %603, i64 0, i32 10
  %609 = load i32, i32* %608, align 8, !tbaa !25
  %610 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %602, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.163, i64 0, i64 0), i8* %607, i32 %609, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0)) #15
  br label %611

611:                                              ; preds = %601, %594
  %612 = load i32, i32* @yynerrs, align 4, !tbaa !3
  %613 = add nsw i32 %612, 1
  store i32 %613, i32* @yynerrs, align 4, !tbaa !3
  br label %830

614:                                              ; preds = %595
  call void @menu_end_menu() #13
  %615 = load i32, i32* @cdebug, align 4, !tbaa !3
  %616 = and i32 %615, 2
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %830, label %618

618:                                              ; preds = %614
  %619 = call i8* @zconf_curname() #13
  %620 = call i32 @zconf_lineno() #13
  %621 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i8* %619, i32 %620)
  br label %830

622:                                              ; preds = %214
  %623 = load i32, i32* @cdebug, align 4, !tbaa !3
  %624 = and i32 %623, 2
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %632, label %626

626:                                              ; preds = %622
  %627 = call i8* @zconf_curname() #13
  %628 = call i32 @zconf_lineno() #13
  %629 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -1, i32 0
  %630 = load i8*, i8** %629, align 8, !tbaa !9
  %631 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0), i8* %627, i32 %628, i8* %630)
  br label %632

632:                                              ; preds = %626, %622
  %633 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -1, i32 0
  %634 = load i8*, i8** %633, align 8, !tbaa !9
  call void @zconf_nextfile(i8* %634) #13
  %635 = load i8*, i8** %633, align 8, !tbaa !9
  call void @free(i8* %635) #13
  br label %830

636:                                              ; preds = %214
  call void @menu_add_entry(%struct.symbol* null) #13
  %637 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -1, i32 0
  %638 = load i8*, i8** %637, align 8, !tbaa !9
  %639 = call %struct.property* @menu_add_prompt(i32 2, i8* %638, %struct.expr* null) #13
  %640 = load i32, i32* @cdebug, align 4, !tbaa !3
  %641 = and i32 %640, 2
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %830, label %643

643:                                              ; preds = %636
  %644 = call i8* @zconf_curname() #13
  %645 = call i32 @zconf_lineno() #13
  %646 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8* %644, i32 %645)
  br label %830

647:                                              ; preds = %214
  %648 = load i32, i32* @cdebug, align 4, !tbaa !3
  %649 = and i32 %648, 2
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %655, label %651

651:                                              ; preds = %647
  %652 = call i8* @zconf_curname() #13
  %653 = call i32 @zconf_lineno() #13
  %654 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i8* %652, i32 %653)
  br label %655

655:                                              ; preds = %651, %647
  call void @zconf_starthelp() #13
  br label %830

656:                                              ; preds = %214
  %657 = load %struct.menu*, %struct.menu** @current_entry, align 8, !tbaa !7
  %658 = getelementptr inbounds %struct.menu, %struct.menu* %657, i64 0, i32 8
  %659 = load i8*, i8** %658, align 8, !tbaa !26
  %660 = icmp eq i8* %659, null
  br i1 %660, label %669, label %661

661:                                              ; preds = %656
  call void @free(i8* nonnull %659) #13
  %662 = load %struct.menu*, %struct.menu** @current_entry, align 8, !tbaa !7
  %663 = getelementptr inbounds %struct.menu, %struct.menu* %662, i64 0, i32 3
  %664 = load %struct.symbol*, %struct.symbol** %663, align 8, !tbaa !21
  %665 = getelementptr inbounds %struct.symbol, %struct.symbol* %664, i64 0, i32 1
  %666 = load i8*, i8** %665, align 8, !tbaa !16
  %667 = icmp eq i8* %666, null
  %668 = select i1 %667, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0), i8* %666
  call void (i8*, ...) @zconfprint(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.36, i64 0, i64 0), i8* %668)
  br label %669

669:                                              ; preds = %661, %656
  %670 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %74, i64 0, i32 0
  %671 = load i8*, i8** %670, align 8, !tbaa !9
  %672 = call i64 @strspn(i8* %671, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0)) #16
  %673 = getelementptr inbounds i8, i8* %671, i64 %672
  %674 = load i8, i8* %673, align 1, !tbaa !9
  %675 = icmp eq i8 %674, 0
  br i1 %675, label %676, label %685

676:                                              ; preds = %669
  %677 = load %struct.menu*, %struct.menu** @current_entry, align 8, !tbaa !7
  %678 = getelementptr inbounds %struct.menu, %struct.menu* %677, i64 0, i32 3
  %679 = load %struct.symbol*, %struct.symbol** %678, align 8, !tbaa !21
  %680 = getelementptr inbounds %struct.symbol, %struct.symbol* %679, i64 0, i32 1
  %681 = load i8*, i8** %680, align 8, !tbaa !16
  %682 = icmp eq i8* %681, null
  %683 = select i1 %682, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0), i8* %681
  call void (i8*, ...) @zconfprint(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0), i8* %683)
  %684 = load i8*, i8** %670, align 8, !tbaa !9
  br label %685

685:                                              ; preds = %676, %669
  %686 = phi i8* [ %684, %676 ], [ %671, %669 ]
  %687 = load %struct.menu*, %struct.menu** @current_entry, align 8, !tbaa !7
  %688 = getelementptr inbounds %struct.menu, %struct.menu* %687, i64 0, i32 8
  store i8* %686, i8** %688, align 8, !tbaa !26
  br label %830

689:                                              ; preds = %214
  %690 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -1
  %691 = bitcast %union.YYSTYPE* %690 to %struct.expr**
  %692 = load %struct.expr*, %struct.expr** %691, align 8, !tbaa !9
  call void @menu_add_dep(%struct.expr* %692) #13
  %693 = load i32, i32* @cdebug, align 4, !tbaa !3
  %694 = and i32 %693, 2
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %830, label %696

696:                                              ; preds = %689
  %697 = call i8* @zconf_curname() #13
  %698 = call i32 @zconf_lineno() #13
  %699 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i64 0, i64 0), i8* %697, i32 %698)
  br label %830

700:                                              ; preds = %214
  %701 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -1
  %702 = bitcast %union.YYSTYPE* %701 to %struct.expr**
  %703 = load %struct.expr*, %struct.expr** %702, align 8, !tbaa !9
  call void @menu_add_visibility(%struct.expr* %703) #13
  br label %830

704:                                              ; preds = %214
  %705 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -1, i32 0
  %706 = load i8*, i8** %705, align 8, !tbaa !9
  %707 = bitcast %union.YYSTYPE* %74 to %struct.expr**
  %708 = load %struct.expr*, %struct.expr** %707, align 8, !tbaa !9
  %709 = call %struct.property* @menu_add_prompt(i32 1, i8* %706, %struct.expr* %708) #13
  br label %830

710:                                              ; preds = %214
  br label %830

711:                                              ; preds = %214
  br label %830

712:                                              ; preds = %214
  br label %830

713:                                              ; preds = %214
  br label %830

714:                                              ; preds = %214
  %715 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %74, i64 0, i32 0
  %716 = load i8*, i8** %715, align 8, !tbaa !9
  br label %830

717:                                              ; preds = %214
  %718 = bitcast %union.YYSTYPE* %74 to %struct.symbol**
  %719 = load %struct.symbol*, %struct.symbol** %718, align 8, !tbaa !9
  %720 = call %struct.expr* @expr_alloc_symbol(%struct.symbol* %719) #13
  %721 = bitcast %struct.expr* %720 to i8*
  br label %830

722:                                              ; preds = %214
  %723 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -2
  %724 = bitcast %union.YYSTYPE* %723 to %struct.symbol**
  %725 = load %struct.symbol*, %struct.symbol** %724, align 8, !tbaa !9
  %726 = bitcast %union.YYSTYPE* %74 to %struct.symbol**
  %727 = load %struct.symbol*, %struct.symbol** %726, align 8, !tbaa !9
  %728 = call %struct.expr* @expr_alloc_comp(i32 6, %struct.symbol* %725, %struct.symbol* %727) #13
  %729 = bitcast %struct.expr* %728 to i8*
  br label %830

730:                                              ; preds = %214
  %731 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -2
  %732 = bitcast %union.YYSTYPE* %731 to %struct.symbol**
  %733 = load %struct.symbol*, %struct.symbol** %732, align 8, !tbaa !9
  %734 = bitcast %union.YYSTYPE* %74 to %struct.symbol**
  %735 = load %struct.symbol*, %struct.symbol** %734, align 8, !tbaa !9
  %736 = call %struct.expr* @expr_alloc_comp(i32 7, %struct.symbol* %733, %struct.symbol* %735) #13
  %737 = bitcast %struct.expr* %736 to i8*
  br label %830

738:                                              ; preds = %214
  %739 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -2
  %740 = bitcast %union.YYSTYPE* %739 to %struct.symbol**
  %741 = load %struct.symbol*, %struct.symbol** %740, align 8, !tbaa !9
  %742 = bitcast %union.YYSTYPE* %74 to %struct.symbol**
  %743 = load %struct.symbol*, %struct.symbol** %742, align 8, !tbaa !9
  %744 = call %struct.expr* @expr_alloc_comp(i32 8, %struct.symbol* %741, %struct.symbol* %743) #13
  %745 = bitcast %struct.expr* %744 to i8*
  br label %830

746:                                              ; preds = %214
  %747 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -2
  %748 = bitcast %union.YYSTYPE* %747 to %struct.symbol**
  %749 = load %struct.symbol*, %struct.symbol** %748, align 8, !tbaa !9
  %750 = bitcast %union.YYSTYPE* %74 to %struct.symbol**
  %751 = load %struct.symbol*, %struct.symbol** %750, align 8, !tbaa !9
  %752 = call %struct.expr* @expr_alloc_comp(i32 9, %struct.symbol* %749, %struct.symbol* %751) #13
  %753 = bitcast %struct.expr* %752 to i8*
  br label %830

754:                                              ; preds = %214
  %755 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -2
  %756 = bitcast %union.YYSTYPE* %755 to %struct.symbol**
  %757 = load %struct.symbol*, %struct.symbol** %756, align 8, !tbaa !9
  %758 = bitcast %union.YYSTYPE* %74 to %struct.symbol**
  %759 = load %struct.symbol*, %struct.symbol** %758, align 8, !tbaa !9
  %760 = call %struct.expr* @expr_alloc_comp(i32 4, %struct.symbol* %757, %struct.symbol* %759) #13
  %761 = bitcast %struct.expr* %760 to i8*
  br label %830

762:                                              ; preds = %214
  %763 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -2
  %764 = bitcast %union.YYSTYPE* %763 to %struct.symbol**
  %765 = load %struct.symbol*, %struct.symbol** %764, align 8, !tbaa !9
  %766 = bitcast %union.YYSTYPE* %74 to %struct.symbol**
  %767 = load %struct.symbol*, %struct.symbol** %766, align 8, !tbaa !9
  %768 = call %struct.expr* @expr_alloc_comp(i32 5, %struct.symbol* %765, %struct.symbol* %767) #13
  %769 = bitcast %struct.expr* %768 to i8*
  br label %830

770:                                              ; preds = %214
  %771 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -1, i32 0
  %772 = load i8*, i8** %771, align 8, !tbaa !9
  br label %830

773:                                              ; preds = %214
  %774 = bitcast %union.YYSTYPE* %74 to %struct.expr**
  %775 = load %struct.expr*, %struct.expr** %774, align 8, !tbaa !9
  %776 = call %struct.expr* @expr_alloc_one(i32 3, %struct.expr* %775) #13
  %777 = bitcast %struct.expr* %776 to i8*
  br label %830

778:                                              ; preds = %214
  %779 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -2
  %780 = bitcast %union.YYSTYPE* %779 to %struct.expr**
  %781 = load %struct.expr*, %struct.expr** %780, align 8, !tbaa !9
  %782 = bitcast %union.YYSTYPE* %74 to %struct.expr**
  %783 = load %struct.expr*, %struct.expr** %782, align 8, !tbaa !9
  %784 = call %struct.expr* @expr_alloc_two(i32 1, %struct.expr* %781, %struct.expr* %783) #13
  %785 = bitcast %struct.expr* %784 to i8*
  br label %830

786:                                              ; preds = %214
  %787 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -2
  %788 = bitcast %union.YYSTYPE* %787 to %struct.expr**
  %789 = load %struct.expr*, %struct.expr** %788, align 8, !tbaa !9
  %790 = bitcast %union.YYSTYPE* %74 to %struct.expr**
  %791 = load %struct.expr*, %struct.expr** %790, align 8, !tbaa !9
  %792 = call %struct.expr* @expr_alloc_two(i32 2, %struct.expr* %789, %struct.expr* %791) #13
  %793 = bitcast %struct.expr* %792 to i8*
  br label %830

794:                                              ; preds = %214
  %795 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %74, i64 0, i32 0
  %796 = load i8*, i8** %795, align 8, !tbaa !9
  %797 = call %struct.symbol* @sym_lookup(i8* %796, i32 0) #13
  %798 = bitcast %struct.symbol* %797 to i8*
  %799 = load i8*, i8** %795, align 8, !tbaa !9
  call void @free(i8* %799) #13
  br label %830

800:                                              ; preds = %214
  %801 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %74, i64 0, i32 0
  %802 = load i8*, i8** %801, align 8, !tbaa !9
  %803 = call %struct.symbol* @sym_lookup(i8* %802, i32 1) #13
  %804 = bitcast %struct.symbol* %803 to i8*
  %805 = load i8*, i8** %801, align 8, !tbaa !9
  call void @free(i8* %805) #13
  br label %830

806:                                              ; preds = %214
  br label %830

807:                                              ; preds = %214
  %808 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -3, i32 0
  %809 = load i8*, i8** %808, align 8, !tbaa !9
  %810 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -1, i32 0
  %811 = load i8*, i8** %810, align 8, !tbaa !9
  %812 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -2
  %813 = bitcast %union.YYSTYPE* %812 to i32*
  %814 = load i32, i32* %813, align 8, !tbaa !9
  call void @variable_add(i8* %809, i8* %811, i32 %814) #13
  %815 = load i8*, i8** %808, align 8, !tbaa !9
  call void @free(i8* %815) #13
  %816 = load i8*, i8** %810, align 8, !tbaa !9
  call void @free(i8* %816) #13
  br label %830

817:                                              ; preds = %214
  %818 = and i64 %177, -4294967296
  %819 = or i64 %818, 1
  %820 = inttoptr i64 %819 to i8*
  br label %830

821:                                              ; preds = %214
  %822 = and i64 %177, -4294967296
  %823 = inttoptr i64 %822 to i8*
  br label %830

824:                                              ; preds = %214
  %825 = and i64 %177, -4294967296
  %826 = or i64 %825, 2
  %827 = inttoptr i64 %826 to i8*
  br label %830

828:                                              ; preds = %214
  %829 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i64 0, i64 0)) #13
  br label %830

830:                                              ; preds = %828, %824, %821, %817, %807, %806, %800, %794, %786, %778, %773, %770, %762, %754, %746, %738, %730, %722, %717, %714, %713, %712, %711, %710, %704, %700, %696, %689, %685, %655, %643, %636, %632, %618, %614, %611, %586, %582, %575, %571, %567, %564, %536, %524, %520, %517, %513, %509, %505, %501, %497, %493, %483, %479, %469, %464, %457, %453, %443, %439, %435, %432, %407, %403, %392, %388, %373, %359, %355, %345, %341, %331, %326, %322, %306, %296, %291, %284, %280, %276, %261, %250, %246, %242, %235, %224, %223, %222, %219, %215, %214
  %831 = phi i8* [ %178, %214 ], [ %829, %828 ], [ %827, %824 ], [ %823, %821 ], [ %820, %817 ], [ %178, %807 ], [ null, %806 ], [ %804, %800 ], [ %798, %794 ], [ %793, %786 ], [ %785, %778 ], [ %777, %773 ], [ %772, %770 ], [ %769, %762 ], [ %761, %754 ], [ %753, %746 ], [ %745, %738 ], [ %737, %730 ], [ %729, %722 ], [ %721, %717 ], [ %716, %714 ], [ null, %713 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), %712 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), %711 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), %710 ], [ %178, %704 ], [ %178, %700 ], [ %178, %689 ], [ %178, %696 ], [ %178, %685 ], [ %178, %655 ], [ %178, %636 ], [ %178, %643 ], [ %178, %632 ], [ %178, %614 ], [ %178, %618 ], [ %178, %611 ], [ %588, %586 ], [ %178, %575 ], [ %178, %582 ], [ %178, %567 ], [ %178, %571 ], [ %178, %564 ], [ %541, %536 ], [ %527, %524 ], [ %523, %520 ], [ %519, %517 ], [ %516, %513 ], [ %512, %509 ], [ %508, %505 ], [ %504, %501 ], [ %500, %497 ], [ %178, %483 ], [ %178, %493 ], [ %178, %469 ], [ %178, %479 ], [ %178, %457 ], [ %178, %464 ], [ %178, %443 ], [ %178, %453 ], [ %178, %435 ], [ %178, %439 ], [ %178, %432 ], [ %409, %407 ], [ %178, %392 ], [ %178, %403 ], [ %178, %388 ], [ %178, %359 ], [ %178, %373 ], [ %178, %345 ], [ %178, %355 ], [ %178, %331 ], [ %178, %341 ], [ %178, %322 ], [ %178, %326 ], [ %178, %296 ], [ %178, %306 ], [ %178, %284 ], [ %178, %291 ], [ %178, %276 ], [ %178, %280 ], [ %178, %250 ], [ %178, %261 ], [ %178, %242 ], [ %178, %246 ], [ %178, %224 ], [ %178, %235 ], [ %178, %223 ], [ %178, %222 ], [ %178, %219 ], [ %178, %215 ]
  %832 = load i32, i32* @yydebug, align 4, !tbaa !3
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %834, label %841

834:                                              ; preds = %830
  %835 = sub nsw i64 0, %173
  %836 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 %835
  %837 = getelementptr inbounds i8, i8* %76, i64 %835
  %838 = getelementptr inbounds [106 x i8], [106 x i8]* @yyr1, i64 0, i64 %170
  %839 = load i8, i8* %838, align 1, !tbaa !9
  %840 = sext i8 %839 to i64
  br label %876

841:                                              ; preds = %830
  %842 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %843 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %842, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0)) #14
  %844 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %845 = getelementptr inbounds [106 x i8], [106 x i8]* @yyr1, i64 0, i64 %170
  %846 = load i8, i8* %845, align 1, !tbaa !9
  %847 = icmp eq i32 %169, 0
  %848 = select i1 %847, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0)
  %849 = sext i8 %846 to i64
  %850 = getelementptr inbounds [98 x i8*], [98 x i8*]* @yytname, i64 0, i64 %849
  %851 = load i8*, i8** %850, align 8, !tbaa !7
  %852 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %844, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0), i8* %848, i8* %851) #15
  %853 = call i32 @fputc(i32 41, %struct._IO_FILE* %844) #13
  %854 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %855 = call i32 @fputc(i32 10, %struct._IO_FILE* %854)
  %856 = load i32, i32* @yydebug, align 4, !tbaa !3
  %857 = sub nsw i64 0, %173
  %858 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 %857
  %859 = getelementptr inbounds i8, i8* %76, i64 %857
  %860 = icmp eq i32 %856, 0
  br i1 %860, label %876, label %861

861:                                              ; preds = %841
  %862 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %863 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.157, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %862) #15
  %864 = icmp ugt i8* %77, %859
  br i1 %864, label %873, label %865

865:                                              ; preds = %865, %861
  %866 = phi i8* [ %871, %865 ], [ %77, %861 ]
  %867 = load i8, i8* %866, align 1, !tbaa !9
  %868 = zext i8 %867 to i32
  %869 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %870 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %869, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.158, i64 0, i64 0), i32 %868) #15
  %871 = getelementptr inbounds i8, i8* %866, i64 1
  %872 = icmp ugt i8* %871, %859
  br i1 %872, label %873, label %865

873:                                              ; preds = %865, %861
  %874 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %875 = call i32 @fputc(i32 10, %struct._IO_FILE* %874) #13
  br label %876

876:                                              ; preds = %873, %841, %834
  %877 = phi i64 [ %840, %834 ], [ %849, %873 ], [ %849, %841 ]
  %878 = phi i8* [ %837, %834 ], [ %859, %873 ], [ %859, %841 ]
  %879 = phi %union.YYSTYPE* [ %836, %834 ], [ %858, %873 ], [ %858, %841 ]
  %880 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %879, i64 1
  %881 = bitcast %union.YYSTYPE* %880 to i64*
  %882 = ptrtoint i8* %831 to i64
  store i64 %882, i64* %881, align 8
  %883 = add nsw i64 %877, -50
  %884 = getelementptr inbounds [47 x i16], [47 x i16]* @yypgoto, i64 0, i64 %883
  %885 = load i16, i16* %884, align 2, !tbaa !10
  %886 = sext i16 %885 to i32
  %887 = load i8, i8* %878, align 1, !tbaa !9
  %888 = zext i8 %887 to i32
  %889 = add nsw i32 %888, %886
  %890 = icmp ult i32 %889, 185
  br i1 %890, label %891, label %898

891:                                              ; preds = %876
  %892 = zext i32 %889 to i64
  %893 = getelementptr inbounds [185 x i8], [185 x i8]* @yycheck, i64 0, i64 %892
  %894 = load i8, i8* %893, align 1, !tbaa !9
  %895 = icmp eq i8 %894, %887
  br i1 %895, label %896, label %898

896:                                              ; preds = %891
  %897 = getelementptr inbounds [185 x i16], [185 x i16]* @yytable, i64 0, i64 %892
  br label %900

898:                                              ; preds = %891, %876
  %899 = getelementptr inbounds [47 x i16], [47 x i16]* @yydefgoto, i64 0, i64 %883
  br label %900

900:                                              ; preds = %898, %896
  %901 = phi i16* [ %897, %896 ], [ %899, %898 ]
  %902 = load i16, i16* %901, align 2, !tbaa !10
  %903 = sext i16 %902 to i32
  br label %12

904:                                              ; preds = %163
  %905 = load i32, i32* @yychar, align 4, !tbaa !3
  %906 = icmp eq i32 %905, -2
  br i1 %906, label %914, label %907

907:                                              ; preds = %904
  %908 = icmp ult i32 %905, 305
  br i1 %908, label %909, label %914

909:                                              ; preds = %907
  %910 = zext i32 %905 to i64
  %911 = getelementptr inbounds [305 x i8], [305 x i8]* @yytranslate, i64 0, i64 %910
  %912 = load i8, i8* %911, align 1, !tbaa !9
  %913 = sext i8 %912 to i32
  br label %914

914:                                              ; preds = %909, %907, %904
  %915 = phi i32 [ -2, %904 ], [ %913, %909 ], [ 2, %907 ]
  switch i32 %24, label %929 [
    i32 0, label %916
    i32 3, label %924
  ]

916:                                              ; preds = %914
  %917 = load i32, i32* @yynerrs, align 4, !tbaa !3
  %918 = add nsw i32 %917, 1
  store i32 %918, i32* @yynerrs, align 4, !tbaa !3
  %919 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %920 = call i8* @zconf_curname() #13
  %921 = call i32 @zconf_lineno() #13
  %922 = add nsw i32 %921, 1
  %923 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %919, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.165, i64 0, i64 0), i8* %920, i32 %922, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i64 0, i64 0)) #15
  br label %929

924:                                              ; preds = %914
  %925 = icmp slt i32 %905, 1
  br i1 %925, label %926, label %928

926:                                              ; preds = %924
  %927 = icmp eq i32 %905, 0
  br i1 %927, label %1002, label %929

928:                                              ; preds = %924
  call fastcc void @yydestruct(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i64 0, i64 0), i32 %915, %union.YYSTYPE* nonnull @yylval)
  store i32 -2, i32* @yychar, align 4, !tbaa !3
  br label %929

929:                                              ; preds = %928, %926, %916, %914
  br label %930

930:                                              ; preds = %973, %929
  %931 = phi i16 [ %976, %973 ], [ %82, %929 ]
  %932 = phi %union.YYSTYPE* [ %952, %973 ], [ %74, %929 ]
  %933 = phi i8* [ %953, %973 ], [ %76, %929 ]
  %934 = phi i32 [ %955, %973 ], [ %25, %929 ]
  %935 = sext i32 %934 to i64
  %936 = icmp sgt i16 %931, -2
  br i1 %936, label %937, label %946

937:                                              ; preds = %930
  %938 = sext i16 %931 to i64
  %939 = add nsw i64 %938, 1
  %940 = getelementptr inbounds [185 x i8], [185 x i8]* @yycheck, i64 0, i64 %939
  %941 = load i8, i8* %940, align 1, !tbaa !9
  %942 = icmp ne i8 %941, 1
  %943 = and i64 %939, -33
  %944 = icmp eq i64 %943, 17
  %945 = select i1 %942, i1 true, i1 %944
  br i1 %945, label %946, label %977

946:                                              ; preds = %937, %930
  %947 = icmp eq i8* %933, %77
  br i1 %947, label %1002, label %948

948:                                              ; preds = %946
  %949 = getelementptr inbounds [184 x i8], [184 x i8]* @yystos, i64 0, i64 %935
  %950 = load i8, i8* %949, align 1, !tbaa !9
  %951 = sext i8 %950 to i32
  call fastcc void @yydestruct(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i64 0, i64 0), i32 %951, %union.YYSTYPE* %932)
  %952 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %932, i64 -1
  %953 = getelementptr inbounds i8, i8* %933, i64 -1
  %954 = load i8, i8* %953, align 1, !tbaa !9
  %955 = zext i8 %954 to i32
  %956 = load i32, i32* @yydebug, align 4, !tbaa !3
  %957 = icmp eq i32 %956, 0
  br i1 %957, label %973, label %958

958:                                              ; preds = %948
  %959 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %960 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.157, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %959) #15
  %961 = icmp ugt i8* %77, %953
  br i1 %961, label %970, label %962

962:                                              ; preds = %962, %958
  %963 = phi i8* [ %968, %962 ], [ %77, %958 ]
  %964 = load i8, i8* %963, align 1, !tbaa !9
  %965 = zext i8 %964 to i32
  %966 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %967 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %966, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.158, i64 0, i64 0), i32 %965) #15
  %968 = getelementptr inbounds i8, i8* %963, i64 1
  %969 = icmp ugt i8* %968, %953
  br i1 %969, label %970, label %962

970:                                              ; preds = %962, %958
  %971 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %972 = call i32 @fputc(i32 10, %struct._IO_FILE* %971) #13
  br label %973

973:                                              ; preds = %970, %948
  %974 = zext i8 %954 to i64
  %975 = getelementptr inbounds [184 x i16], [184 x i16]* @yypact, i64 0, i64 %974
  %976 = load i16, i16* %975, align 2, !tbaa !10
  br label %930

977:                                              ; preds = %937
  %978 = getelementptr inbounds [185 x i16], [185 x i16]* @yytable, i64 0, i64 %939
  %979 = load i16, i16* %978, align 2, !tbaa !10
  %980 = sext i16 %979 to i32
  %981 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %932, i64 1
  %982 = bitcast %union.YYSTYPE* %981 to i64*
  %983 = load i64, i64* bitcast (%union.YYSTYPE* @yylval to i64*), align 8
  store i64 %983, i64* %982, align 8
  %984 = load i32, i32* @yydebug, align 4, !tbaa !3
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %12, label %986

986:                                              ; preds = %977
  %987 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %988 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %987, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #14
  %989 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %990 = sext i16 %979 to i64
  %991 = getelementptr inbounds [184 x i8], [184 x i8]* @yystos, i64 0, i64 %990
  %992 = load i8, i8* %991, align 1, !tbaa !9
  %993 = sext i8 %992 to i32
  call fastcc void @yy_symbol_print(%struct._IO_FILE* %989, i32 %993, %union.YYSTYPE* nonnull %981)
  %994 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %995 = call i32 @fputc(i32 10, %struct._IO_FILE* %994)
  br label %12

996:                                              ; preds = %42, %36
  %997 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %998 = call i8* @zconf_curname() #13
  %999 = call i32 @zconf_lineno() #13
  %1000 = add nsw i32 %999, 1
  %1001 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %997, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.165, i64 0, i64 0), i8* %998, i32 %1000, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0)) #15
  br label %1002

1002:                                             ; preds = %996, %946, %926, %72, %68
  %1003 = phi i32 [ 2, %996 ], [ 1, %946 ], [ 1, %68 ], [ 1, %926 ], [ 0, %72 ]
  %1004 = phi %union.YYSTYPE* [ %20, %996 ], [ %932, %946 ], [ %62, %68 ], [ %74, %926 ], [ %74, %72 ]
  %1005 = phi i8* [ %22, %996 ], [ %77, %946 ], [ %61, %68 ], [ %76, %926 ], [ %76, %72 ]
  %1006 = phi i8* [ %23, %996 ], [ %77, %946 ], [ %48, %68 ], [ %77, %926 ], [ %77, %72 ]
  %1007 = load i32, i32* @yychar, align 4, !tbaa !3
  %1008 = icmp eq i32 %1007, -2
  br i1 %1008, label %1018, label %1009

1009:                                             ; preds = %1002
  %1010 = icmp ult i32 %1007, 305
  br i1 %1010, label %1011, label %1016

1011:                                             ; preds = %1009
  %1012 = zext i32 %1007 to i64
  %1013 = getelementptr inbounds [305 x i8], [305 x i8]* @yytranslate, i64 0, i64 %1012
  %1014 = load i8, i8* %1013, align 1, !tbaa !9
  %1015 = sext i8 %1014 to i32
  br label %1016

1016:                                             ; preds = %1011, %1009
  %1017 = phi i32 [ %1015, %1011 ], [ 2, %1009 ]
  call fastcc void @yydestruct(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i64 0, i64 0), i32 %1017, %union.YYSTYPE* nonnull @yylval)
  br label %1018

1018:                                             ; preds = %1016, %1002
  %1019 = load i32, i32* @yydebug, align 4, !tbaa !3
  %1020 = icmp eq i32 %1019, 0
  br i1 %1020, label %1036, label %1021

1021:                                             ; preds = %1018
  %1022 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1023 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.157, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %1022) #15
  %1024 = icmp ugt i8* %1006, %1005
  br i1 %1024, label %1033, label %1025

1025:                                             ; preds = %1025, %1021
  %1026 = phi i8* [ %1031, %1025 ], [ %1006, %1021 ]
  %1027 = load i8, i8* %1026, align 1, !tbaa !9
  %1028 = zext i8 %1027 to i32
  %1029 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1030 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1029, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.158, i64 0, i64 0), i32 %1028) #15
  %1031 = getelementptr inbounds i8, i8* %1026, i64 1
  %1032 = icmp ugt i8* %1031, %1005
  br i1 %1032, label %1033, label %1025

1033:                                             ; preds = %1025, %1021
  %1034 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1035 = call i32 @fputc(i32 10, %struct._IO_FILE* %1034) #13
  br label %1036

1036:                                             ; preds = %1033, %1018
  %1037 = icmp eq i8* %1005, %1006
  br i1 %1037, label %1049, label %1038

1038:                                             ; preds = %1038, %1036
  %1039 = phi i8* [ %1047, %1038 ], [ %1005, %1036 ]
  %1040 = phi %union.YYSTYPE* [ %1046, %1038 ], [ %1004, %1036 ]
  %1041 = load i8, i8* %1039, align 1, !tbaa !9
  %1042 = zext i8 %1041 to i64
  %1043 = getelementptr inbounds [184 x i8], [184 x i8]* @yystos, i64 0, i64 %1042
  %1044 = load i8, i8* %1043, align 1, !tbaa !9
  %1045 = sext i8 %1044 to i32
  call fastcc void @yydestruct(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i64 0, i64 0), i32 %1045, %union.YYSTYPE* %1040)
  %1046 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1040, i64 -1
  %1047 = getelementptr inbounds i8, i8* %1039, i64 -1
  %1048 = icmp eq i8* %1047, %1006
  br i1 %1048, label %1049, label %1038

1049:                                             ; preds = %1038, %1036
  %1050 = icmp eq i8* %1006, %3
  br i1 %1050, label %1052, label %1051

1051:                                             ; preds = %1049
  call void @free(i8* %1006) #13
  br label %1052

1052:                                             ; preds = %1051, %1049
  call void @llvm.lifetime.end.p0i8(i64 1600, i8* nonnull %4) #13
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %3) #13
  ret i32 %1003
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #5

declare dso_local i32 @yylex() local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @yy_symbol_print(%struct._IO_FILE* nocapture %0, i32 %1, %union.YYSTYPE* nocapture readnone %2) unnamed_addr #7 {
  %4 = icmp slt i32 %1, 50
  %5 = select i1 %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0)
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds [98 x i8*], [98 x i8*]* @yytname, i64 0, i64 %6
  %8 = load i8*, i8** %7, align 8, !tbaa !7
  %9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0), i8* %5, i8* %8)
  %10 = tail call i32 @fputc(i32 41, %struct._IO_FILE* %0)
  ret void
}

declare dso_local %struct.property* @menu_add_prompt(i32, i8*, %struct.expr*) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @zconf_error(i8* nocapture readonly %0, ...) unnamed_addr #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #13
  %4 = load i32, i32* @yynerrs, align 4, !tbaa !3
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @yynerrs, align 4, !tbaa !3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %7 = tail call i8* @zconf_curname() #13
  %8 = tail call i32 @zconf_lineno() #13
  %9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.164, i64 0, i64 0), i8* %7, i32 %8) #14
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %3)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %12 = call i32 @vfprintf(%struct._IO_FILE* %11, i8* %0, %struct.__va_list_tag* nonnull %10) #14
  call void @llvm.va_end(i8* nonnull %3)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %14 = call i32 @fputc(i32 10, %struct._IO_FILE* %13)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #13
  ret void
}

declare dso_local void @menu_add_entry(%struct.symbol*) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

declare dso_local i8* @zconf_curname() local_unnamed_addr #6

declare dso_local i32 @zconf_lineno() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @zconfprint(i8* nocapture readonly %0, ...) unnamed_addr #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #13
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %5 = tail call i8* @zconf_curname() #13
  %6 = tail call i32 @zconf_lineno() #13
  %7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.164, i64 0, i64 0), i8* %5, i32 %6) #14
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %3)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %10 = call i32 @vfprintf(%struct._IO_FILE* %9, i8* %0, %struct.__va_list_tag* nonnull %8) #14
  call void @llvm.va_end(i8* nonnull %3)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %12 = call i32 @fputc(i32 10, %struct._IO_FILE* %11)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #13
  ret void
}

declare dso_local void @menu_set_type(i32) local_unnamed_addr #6

declare dso_local void @menu_add_expr(i32, %struct.expr*, %struct.expr*) local_unnamed_addr #6

declare dso_local void @menu_add_symbol(i32, %struct.symbol*, %struct.expr*) local_unnamed_addr #6

declare dso_local %struct.expr* @expr_alloc_comp(i32, %struct.symbol*, %struct.symbol*) local_unnamed_addr #6

declare dso_local %struct.symbol* @sym_lookup(i8*, i32) local_unnamed_addr #6

declare dso_local %struct.menu* @menu_add_menu() local_unnamed_addr #6

declare dso_local void @menu_end_menu() local_unnamed_addr #6

declare dso_local void @menu_add_dep(%struct.expr*) local_unnamed_addr #6

declare dso_local void @zconf_nextfile(i8*) local_unnamed_addr #6

declare dso_local void @zconf_starthelp() local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #8

declare dso_local void @menu_add_visibility(%struct.expr*) local_unnamed_addr #6

declare dso_local %struct.expr* @expr_alloc_symbol(%struct.symbol*) local_unnamed_addr #6

declare dso_local %struct.expr* @expr_alloc_one(i32, %struct.expr*) local_unnamed_addr #6

declare dso_local %struct.expr* @expr_alloc_two(i32, %struct.expr*, %struct.expr*) local_unnamed_addr #6

declare dso_local void @variable_add(i8*, i8*, i32) local_unnamed_addr #6

declare dso_local i8* @xstrdup(i8*) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @yydestruct(i8* %0, i32 %1, %union.YYSTYPE* nocapture readonly %2) unnamed_addr #0 {
  %4 = load i32, i32* @yydebug, align 4, !tbaa !3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = icmp eq i8* %0, null
  %8 = select i1 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.159, i64 0, i64 0), i8* %0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %8) #14
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %12 = icmp slt i32 %1, 50
  %13 = select i1 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0)
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds [98 x i8*], [98 x i8*]* @yytname, i64 0, i64 %14
  %16 = load i8*, i8** %15, align 8, !tbaa !7
  %17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0), i8* %13, i8* %16) #15
  %18 = tail call i32 @fputc(i32 41, %struct._IO_FILE* %11) #13
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %20 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %19)
  br label %21

21:                                               ; preds = %6, %3
  switch i32 %1, label %65 [
    i32 62, label %22
    i32 70, label %36
    i32 75, label %50
  ]

22:                                               ; preds = %21
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %24 = bitcast %union.YYSTYPE* %2 to %struct.menu**
  %25 = load %struct.menu*, %struct.menu** %24, align 8, !tbaa !9
  %26 = getelementptr inbounds %struct.menu, %struct.menu* %25, i64 0, i32 9
  %27 = load %struct.file*, %struct.file** %26, align 8, !tbaa !22
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i64 0, i32 2
  %29 = load i8*, i8** %28, align 8, !tbaa !23
  %30 = getelementptr inbounds %struct.menu, %struct.menu* %25, i64 0, i32 10
  %31 = load i32, i32* %30, align 8, !tbaa !25
  %32 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.160, i64 0, i64 0), i8* %29, i32 %31) #14
  %33 = load %struct.menu*, %struct.menu** @current_menu, align 8, !tbaa !7
  %34 = load %struct.menu*, %struct.menu** %24, align 8, !tbaa !9
  %35 = icmp eq %struct.menu* %33, %34
  br i1 %35, label %64, label %65

36:                                               ; preds = %21
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %38 = bitcast %union.YYSTYPE* %2 to %struct.menu**
  %39 = load %struct.menu*, %struct.menu** %38, align 8, !tbaa !9
  %40 = getelementptr inbounds %struct.menu, %struct.menu* %39, i64 0, i32 9
  %41 = load %struct.file*, %struct.file** %40, align 8, !tbaa !22
  %42 = getelementptr inbounds %struct.file, %struct.file* %41, i64 0, i32 2
  %43 = load i8*, i8** %42, align 8, !tbaa !23
  %44 = getelementptr inbounds %struct.menu, %struct.menu* %39, i64 0, i32 10
  %45 = load i32, i32* %44, align 8, !tbaa !25
  %46 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.160, i64 0, i64 0), i8* %43, i32 %45) #14
  %47 = load %struct.menu*, %struct.menu** @current_menu, align 8, !tbaa !7
  %48 = load %struct.menu*, %struct.menu** %38, align 8, !tbaa !9
  %49 = icmp eq %struct.menu* %47, %48
  br i1 %49, label %64, label %65

50:                                               ; preds = %21
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %52 = bitcast %union.YYSTYPE* %2 to %struct.menu**
  %53 = load %struct.menu*, %struct.menu** %52, align 8, !tbaa !9
  %54 = getelementptr inbounds %struct.menu, %struct.menu* %53, i64 0, i32 9
  %55 = load %struct.file*, %struct.file** %54, align 8, !tbaa !22
  %56 = getelementptr inbounds %struct.file, %struct.file* %55, i64 0, i32 2
  %57 = load i8*, i8** %56, align 8, !tbaa !23
  %58 = getelementptr inbounds %struct.menu, %struct.menu* %53, i64 0, i32 10
  %59 = load i32, i32* %58, align 8, !tbaa !25
  %60 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.160, i64 0, i64 0), i8* %57, i32 %59) #14
  %61 = load %struct.menu*, %struct.menu** @current_menu, align 8, !tbaa !7
  %62 = load %struct.menu*, %struct.menu** %52, align 8, !tbaa !9
  %63 = icmp eq %struct.menu* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %50, %36, %22
  tail call void @menu_end_menu() #13
  br label %65

65:                                               ; preds = %64, %50, %36, %22, %21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @conf_parse(i8* %0) local_unnamed_addr #0 {
  tail call void @zconf_initscan(i8* %0) #13
  tail call void @_menu_init() #13
  %2 = tail call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0)) #13
  %3 = icmp eq i8* %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  store i32 1, i32* @yydebug, align 4, !tbaa !3
  br label %5

5:                                                ; preds = %4, %1
  %6 = tail call i32 @yyparse()
  tail call void @variable_all_del() #13
  %7 = load i32, i32* @yynerrs, align 4, !tbaa !3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @exit(i32 1) #17
  unreachable

10:                                               ; preds = %5
  %11 = load %struct.symbol*, %struct.symbol** @modules_sym, align 8, !tbaa !7
  %12 = icmp eq %struct.symbol* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call %struct.symbol* @sym_find(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0)) #13
  store %struct.symbol* %14, %struct.symbol** @modules_sym, align 8, !tbaa !7
  br label %15

15:                                               ; preds = %13, %10
  %16 = tail call zeroext i1 @menu_has_prompt(%struct.menu* nonnull @rootmenu) #13
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  store %struct.menu* @rootmenu, %struct.menu** @current_entry, align 8, !tbaa !7
  %18 = tail call %struct.property* @menu_add_prompt(i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0), %struct.expr* null) #13
  br label %19

19:                                               ; preds = %17, %15
  tail call void @menu_finalize(%struct.menu* nonnull @rootmenu) #13
  br label %20

20:                                               ; preds = %36, %19
  %21 = phi i64 [ 0, %19 ], [ %37, %36 ]
  %22 = getelementptr inbounds [9973 x %struct.symbol*], [9973 x %struct.symbol*]* @symbol_hash, i64 0, i64 %21
  %23 = load %struct.symbol*, %struct.symbol** %22, align 8, !tbaa !7
  %24 = icmp eq %struct.symbol* %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %32, %20
  %26 = phi %struct.symbol* [ %34, %32 ], [ %23, %20 ]
  %27 = tail call %struct.symbol* @sym_check_deps(%struct.symbol* nonnull %26) #13
  %28 = icmp eq %struct.symbol* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @yynerrs, align 4, !tbaa !3
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @yynerrs, align 4, !tbaa !3
  br label %32

32:                                               ; preds = %29, %25
  %33 = getelementptr inbounds %struct.symbol, %struct.symbol* %26, i64 0, i32 0
  %34 = load %struct.symbol*, %struct.symbol** %33, align 8, !tbaa !7
  %35 = icmp eq %struct.symbol* %34, null
  br i1 %35, label %36, label %25

36:                                               ; preds = %32, %20
  %37 = add nuw nsw i64 %21, 1
  %38 = icmp eq i64 %37, 9973
  br i1 %38, label %39, label %20

39:                                               ; preds = %36
  %40 = load i32, i32* @yynerrs, align 4, !tbaa !3
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call void @exit(i32 1) #17
  unreachable

43:                                               ; preds = %39
  tail call void @conf_set_changed(i1 zeroext true) #13
  ret void
}

declare dso_local void @zconf_initscan(i8*) local_unnamed_addr #6

declare dso_local void @_menu_init() local_unnamed_addr #6

; Function Attrs: nofree nounwind readonly
declare dso_local noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #9

declare dso_local void @variable_all_del() local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #10

declare dso_local %struct.symbol* @sym_find(i8*) local_unnamed_addr #6

declare dso_local zeroext i1 @menu_has_prompt(%struct.menu*) local_unnamed_addr #6

declare dso_local void @menu_finalize(%struct.menu*) local_unnamed_addr #6

declare dso_local %struct.symbol* @sym_check_deps(%struct.symbol*) local_unnamed_addr #6

declare dso_local void @conf_set_changed(i1 zeroext) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @zconfdump(%struct._IO_FILE* %0) local_unnamed_addr #0 {
  %2 = load %struct.menu*, %struct.menu** getelementptr inbounds (%struct.menu, %struct.menu* @rootmenu, i64 0, i32 2), align 8, !tbaa !27
  %3 = icmp eq %struct.menu* %2, null
  br i1 %3, label %212, label %4

4:                                                ; preds = %191, %1
  %5 = phi %struct.menu* [ %192, %191 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.menu, %struct.menu* %5, i64 0, i32 3
  %7 = load %struct.symbol*, %struct.symbol** %6, align 8, !tbaa !21
  %8 = icmp eq %struct.symbol* %7, null
  br i1 %8, label %151, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.symbol, %struct.symbol* %7, i64 0, i32 6
  %11 = load i32, i32* %10, align 4, !tbaa !12
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.166, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %0) #13
  br label %20

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.symbol, %struct.symbol* %7, i64 0, i32 1
  %18 = load i8*, i8** %17, align 8, !tbaa !16
  %19 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.167, i64 0, i64 0), i8* %18) #13
  br label %20

20:                                               ; preds = %16, %14
  %21 = getelementptr inbounds %struct.symbol, %struct.symbol* %7, i64 0, i32 2
  %22 = load i32, i32* %21, align 8, !tbaa !28
  switch i32 %22, label %33 [
    i32 1, label %23
    i32 2, label %25
    i32 5, label %27
    i32 3, label %29
    i32 4, label %31
  ]

23:                                               ; preds = %20
  %24 = tail call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.168, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %0) #13
  br label %35

25:                                               ; preds = %20
  %26 = tail call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.169, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %0) #13
  br label %35

27:                                               ; preds = %20
  %28 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.170, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %0) #13
  br label %35

29:                                               ; preds = %20
  %30 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.171, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %0) #13
  br label %35

31:                                               ; preds = %20
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.172, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %0) #13
  br label %35

33:                                               ; preds = %20
  %34 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.173, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %0) #13
  br label %35

35:                                               ; preds = %33, %31, %29, %27, %25, %23
  %36 = getelementptr inbounds %struct.symbol, %struct.symbol* %7, i64 0, i32 7
  %37 = load %struct.property*, %struct.property** %36, align 8, !tbaa !7
  %38 = icmp eq %struct.property* %37, null
  br i1 %38, label %125, label %39

39:                                               ; preds = %121, %35
  %40 = phi %struct.property* [ %123, %121 ], [ %37, %35 ]
  %41 = getelementptr inbounds %struct.property, %struct.property* %40, i64 0, i32 5
  %42 = load %struct.menu*, %struct.menu** %41, align 8, !tbaa !29
  %43 = icmp eq %struct.menu* %42, %5
  br i1 %43, label %44, label %121

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.property, %struct.property* %40, i64 0, i32 1
  %46 = load i32, i32* %45, align 8, !tbaa !19
  switch i32 %46, label %119 [
    i32 1, label %47
    i32 4, label %68
    i32 5, label %89
    i32 6, label %91
    i32 7, label %96
    i32 8, label %101
    i32 3, label %106
    i32 9, label %111
  ]

47:                                               ; preds = %44
  %48 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.174, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %0) #13
  %49 = getelementptr inbounds %struct.property, %struct.property* %40, i64 0, i32 2
  %50 = load i8*, i8** %49, align 8, !tbaa !30
  tail call fastcc void @print_quoted_string(%struct._IO_FILE* %0, i8* %50) #13
  %51 = getelementptr inbounds %struct.property, %struct.property* %40, i64 0, i32 3, i32 0
  %52 = load %struct.expr*, %struct.expr** %51, align 8, !tbaa !31
  %53 = icmp eq %struct.expr* %52, null
  br i1 %53, label %66, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.expr, %struct.expr* %52, i64 0, i32 0
  %56 = load i32, i32* %55, align 8, !tbaa !32
  %57 = icmp eq i32 %56, 11
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.expr, %struct.expr* %52, i64 0, i32 1
  %60 = bitcast %union.expr_data* %59 to %struct.symbol**
  %61 = load %struct.symbol*, %struct.symbol** %60, align 8, !tbaa !9
  %62 = icmp eq %struct.symbol* %61, @symbol_yes
  br i1 %62, label %66, label %63

63:                                               ; preds = %58, %54
  %64 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.175, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %0) #13
  %65 = load %struct.expr*, %struct.expr** %51, align 8, !tbaa !31
  tail call void @expr_fprint(%struct.expr* %65, %struct._IO_FILE* %0) #13
  br label %66

66:                                               ; preds = %63, %58, %47
  %67 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %0) #13
  br label %121

68:                                               ; preds = %44
  %69 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.176, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %0) #13
  %70 = getelementptr inbounds %struct.property, %struct.property* %40, i64 0, i32 4
  %71 = load %struct.expr*, %struct.expr** %70, align 8, !tbaa !34
  tail call void @expr_fprint(%struct.expr* %71, %struct._IO_FILE* %0) #13
  %72 = getelementptr inbounds %struct.property, %struct.property* %40, i64 0, i32 3, i32 0
  %73 = load %struct.expr*, %struct.expr** %72, align 8, !tbaa !31
  %74 = icmp eq %struct.expr* %73, null
  br i1 %74, label %87, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.expr, %struct.expr* %73, i64 0, i32 0
  %77 = load i32, i32* %76, align 8, !tbaa !32
  %78 = icmp eq i32 %77, 11
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.expr, %struct.expr* %73, i64 0, i32 1
  %81 = bitcast %union.expr_data* %80 to %struct.symbol**
  %82 = load %struct.symbol*, %struct.symbol** %81, align 8, !tbaa !9
  %83 = icmp eq %struct.symbol* %82, @symbol_yes
  br i1 %83, label %87, label %84

84:                                               ; preds = %79, %75
  %85 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.175, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %0) #13
  %86 = load %struct.expr*, %struct.expr** %72, align 8, !tbaa !31
  tail call void @expr_fprint(%struct.expr* %86, %struct._IO_FILE* %0) #13
  br label %87

87:                                               ; preds = %84, %79, %68
  %88 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %0) #13
  br label %121

89:                                               ; preds = %44
  %90 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.177, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %0) #13
  br label %121

91:                                               ; preds = %44
  %92 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.178, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %0) #13
  %93 = getelementptr inbounds %struct.property, %struct.property* %40, i64 0, i32 4
  %94 = load %struct.expr*, %struct.expr** %93, align 8, !tbaa !34
  tail call void @expr_fprint(%struct.expr* %94, %struct._IO_FILE* %0) #13
  %95 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %0) #13
  br label %121

96:                                               ; preds = %44
  %97 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.179, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %0) #13
  %98 = getelementptr inbounds %struct.property, %struct.property* %40, i64 0, i32 4
  %99 = load %struct.expr*, %struct.expr** %98, align 8, !tbaa !34
  tail call void @expr_fprint(%struct.expr* %99, %struct._IO_FILE* %0) #13
  %100 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %0) #13
  br label %121

101:                                              ; preds = %44
  %102 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.180, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %0) #13
  %103 = getelementptr inbounds %struct.property, %struct.property* %40, i64 0, i32 4
  %104 = load %struct.expr*, %struct.expr** %103, align 8, !tbaa !34
  tail call void @expr_fprint(%struct.expr* %104, %struct._IO_FILE* %0) #13
  %105 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %0) #13
  br label %121

106:                                              ; preds = %44
  %107 = tail call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.181, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %0) #13
  %108 = getelementptr inbounds %struct.property, %struct.property* %40, i64 0, i32 2
  %109 = load i8*, i8** %108, align 8, !tbaa !30
  tail call fastcc void @print_quoted_string(%struct._IO_FILE* %0, i8* %109) #13
  %110 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %0) #13
  br label %121

111:                                              ; preds = %44
  %112 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.182, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %0) #13
  %113 = load %struct.menu*, %struct.menu** %41, align 8, !tbaa !29
  %114 = getelementptr inbounds %struct.menu, %struct.menu* %113, i64 0, i32 3
  %115 = load %struct.symbol*, %struct.symbol** %114, align 8, !tbaa !21
  %116 = getelementptr inbounds %struct.symbol, %struct.symbol* %115, i64 0, i32 1
  %117 = load i8*, i8** %116, align 8, !tbaa !16
  %118 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.183, i64 0, i64 0), i8* %117) #13
  br label %121

119:                                              ; preds = %44
  %120 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.184, i64 0, i64 0), i32 %46) #13
  br label %121

121:                                              ; preds = %119, %111, %106, %101, %96, %91, %89, %87, %66, %39
  %122 = getelementptr inbounds %struct.property, %struct.property* %40, i64 0, i32 0
  %123 = load %struct.property*, %struct.property** %122, align 8, !tbaa !7
  %124 = icmp eq %struct.property* %123, null
  br i1 %124, label %125, label %39

125:                                              ; preds = %121, %35
  %126 = getelementptr inbounds %struct.menu, %struct.menu* %5, i64 0, i32 8
  %127 = load i8*, i8** %126, align 8, !tbaa !26
  %128 = icmp eq i8* %127, null
  br i1 %128, label %183, label %129

129:                                              ; preds = %125
  %130 = tail call i64 @strlen(i8* noundef nonnull %127) #16
  %131 = shl i64 %130, 32
  %132 = add i64 %131, -4294967296
  %133 = ashr exact i64 %132, 32
  %134 = getelementptr inbounds i8, i8* %127, i64 %133
  %135 = load i8, i8* %134, align 1, !tbaa !9
  %136 = icmp eq i8 %135, 10
  br i1 %136, label %137, label %148

137:                                              ; preds = %129
  %138 = ashr exact i64 %131, 32
  %139 = add nsw i64 %138, -1
  br label %140

140:                                              ; preds = %140, %137
  %141 = phi i64 [ %139, %137 ], [ %144, %140 ]
  %142 = phi i8* [ %134, %137 ], [ %145, %140 ]
  store i8 0, i8* %142, align 1, !tbaa !9
  %143 = load i8*, i8** %126, align 8, !tbaa !26
  %144 = add i64 %141, -1
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  %146 = load i8, i8* %145, align 1, !tbaa !9
  %147 = icmp eq i8 %146, 10
  br i1 %147, label %140, label %148

148:                                              ; preds = %140, %129
  %149 = phi i8* [ %127, %129 ], [ %143, %140 ]
  %150 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.185, i64 0, i64 0), i8* nonnull %149) #13
  br label %183

151:                                              ; preds = %4
  %152 = getelementptr inbounds %struct.menu, %struct.menu* %5, i64 0, i32 4
  %153 = load %struct.property*, %struct.property** %152, align 8, !tbaa !17
  %154 = icmp eq %struct.property* %153, null
  br i1 %154, label %183, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.property, %struct.property* %153, i64 0, i32 1
  %157 = load i32, i32* %156, align 8, !tbaa !19
  switch i32 %157, label %166 [
    i32 2, label %158
    i32 3, label %160
  ]

158:                                              ; preds = %155
  %159 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %0)
  br label %162

160:                                              ; preds = %155
  %161 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %0)
  br label %162

162:                                              ; preds = %160, %158
  %163 = getelementptr inbounds %struct.property, %struct.property* %153, i64 0, i32 2
  %164 = load i8*, i8** %163, align 8, !tbaa !30
  tail call fastcc void @print_quoted_string(%struct._IO_FILE* %0, i8* %164)
  %165 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %0)
  br label %166

166:                                              ; preds = %162, %155
  %167 = getelementptr inbounds %struct.property, %struct.property* %153, i64 0, i32 3, i32 0
  %168 = load %struct.expr*, %struct.expr** %167, align 8, !tbaa !31
  %169 = icmp eq %struct.expr* %168, null
  br i1 %169, label %183, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.expr, %struct.expr* %168, i64 0, i32 0
  %172 = load i32, i32* %171, align 8, !tbaa !32
  %173 = icmp eq i32 %172, 11
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.expr, %struct.expr* %168, i64 0, i32 1
  %176 = bitcast %union.expr_data* %175 to %struct.symbol**
  %177 = load %struct.symbol*, %struct.symbol** %176, align 8, !tbaa !9
  %178 = icmp eq %struct.symbol* %177, @symbol_yes
  br i1 %178, label %183, label %179

179:                                              ; preds = %174, %170
  %180 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %0)
  %181 = load %struct.expr*, %struct.expr** %167, align 8, !tbaa !31
  tail call void @expr_fprint(%struct.expr* %181, %struct._IO_FILE* %0) #13
  %182 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %0)
  br label %183

183:                                              ; preds = %179, %174, %166, %151, %148, %125
  %184 = getelementptr inbounds %struct.menu, %struct.menu* %5, i64 0, i32 2
  %185 = load %struct.menu*, %struct.menu** %184, align 8, !tbaa !27
  %186 = icmp eq %struct.menu* %185, null
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.menu, %struct.menu* %5, i64 0, i32 0
  %189 = load %struct.menu*, %struct.menu** %188, align 8, !tbaa !35
  %190 = icmp eq %struct.menu* %189, null
  br i1 %190, label %193, label %191

191:                                              ; preds = %208, %187, %183
  %192 = phi %struct.menu* [ %185, %183 ], [ %189, %187 ], [ %210, %208 ]
  br label %4

193:                                              ; preds = %208, %187
  %194 = phi %struct.menu* [ %196, %208 ], [ %5, %187 ]
  %195 = getelementptr inbounds %struct.menu, %struct.menu* %194, i64 0, i32 1
  %196 = load %struct.menu*, %struct.menu** %195, align 8, !tbaa !36
  %197 = icmp eq %struct.menu* %196, null
  br i1 %197, label %212, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.menu, %struct.menu* %196, i64 0, i32 4
  %200 = load %struct.property*, %struct.property** %199, align 8, !tbaa !17
  %201 = icmp eq %struct.property* %200, null
  br i1 %201, label %208, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.property, %struct.property* %200, i64 0, i32 1
  %204 = load i32, i32* %203, align 8, !tbaa !19
  %205 = icmp eq i32 %204, 3
  br i1 %205, label %206, label %208

206:                                              ; preds = %202
  %207 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %0)
  br label %208

208:                                              ; preds = %206, %202, %198
  %209 = getelementptr inbounds %struct.menu, %struct.menu* %196, i64 0, i32 0
  %210 = load %struct.menu*, %struct.menu** %209, align 8, !tbaa !35
  %211 = icmp eq %struct.menu* %210, null
  br i1 %211, label %193, label %191

212:                                              ; preds = %193, %1
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fputs(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @print_quoted_string(%struct._IO_FILE* nocapture %0, i8* %1) unnamed_addr #7 {
  %3 = tail call i32 @putc(i32 34, %struct._IO_FILE* %0)
  %4 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %1, i32 34) #16
  %5 = icmp eq i8* %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %16, %2
  %7 = phi i8* [ %19, %16 ], [ %4, %2 ]
  %8 = phi i8* [ %18, %16 ], [ %1, %2 ]
  %9 = ptrtoint i8* %7 to i64
  %10 = ptrtoint i8* %8 to i64
  %11 = sub i64 %9, %10
  %12 = trunc i64 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %6
  %15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.186, i64 0, i64 0), i32 %12, i8* %8)
  br label %16

16:                                               ; preds = %14, %6
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.187, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %0)
  %18 = getelementptr inbounds i8, i8* %7, i64 1
  %19 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %18, i32 34) #16
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %6

21:                                               ; preds = %16, %2
  %22 = phi i8* [ %1, %2 ], [ %18, %16 ]
  %23 = tail call i32 @fputs(i8* %22, %struct._IO_FILE* %0)
  %24 = tail call i32 @putc(i32 34, %struct._IO_FILE* %0)
  ret void
}

declare dso_local void @expr_fprint(%struct.expr*, %struct._IO_FILE*) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @vfprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, %struct.__va_list_tag* noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @putc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #12

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (https://github.com/linkeLi0421/llvm-project.git 8e98ece848f35020ea3726281f103fce96909c7a)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !5, i64 0}
!12 = !{!13, !4, i64 108}
!13 = !{!"symbol", !8, i64 0, !8, i64 8, !5, i64 16, !14, i64 24, !5, i64 40, !5, i64 104, !4, i64 108, !8, i64 112, !15, i64 120, !15, i64 136, !15, i64 152}
!14 = !{!"symbol_value", !8, i64 0, !5, i64 8}
!15 = !{!"expr_value", !8, i64 0, !5, i64 8}
!16 = !{!13, !8, i64 8}
!17 = !{!18, !8, i64 32}
!18 = !{!"menu", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !4, i64 56, !8, i64 64, !8, i64 72, !4, i64 80, !8, i64 88}
!19 = !{!20, !5, i64 8}
!20 = !{!"property", !8, i64 0, !5, i64 8, !8, i64 16, !15, i64 24, !8, i64 40, !8, i64 48, !8, i64 56, !4, i64 64}
!21 = !{!18, !8, i64 24}
!22 = !{!18, !8, i64 72}
!23 = !{!24, !8, i64 16}
!24 = !{!"file", !8, i64 0, !8, i64 8, !8, i64 16, !4, i64 24}
!25 = !{!18, !4, i64 80}
!26 = !{!18, !8, i64 64}
!27 = !{!18, !8, i64 16}
!28 = !{!13, !5, i64 16}
!29 = !{!20, !8, i64 48}
!30 = !{!20, !8, i64 16}
!31 = !{!20, !8, i64 24}
!32 = !{!33, !5, i64 0}
!33 = !{!"expr", !5, i64 0, !5, i64 8, !5, i64 16}
!34 = !{!20, !8, i64 40}
!35 = !{!18, !8, i64 0}
!36 = !{!18, !8, i64 8}
