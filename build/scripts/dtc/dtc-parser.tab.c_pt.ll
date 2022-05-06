; ModuleID = '/llk/IR/build/scripts/dtc/dtc-parser.tab.c_pt.bc'
source_filename = "scripts/dtc/dtc-parser.tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.srcpos = type { i32, i32, i32, i32, %struct.srcfile_state*, %struct.srcpos* }
%struct.srcfile_state = type { %struct._IO_FILE*, i8*, i8*, i32, i32, %struct.srcfile_state* }
%union.YYSTYPE = type { %struct.anon }
%struct.anon = type { %struct.data, i32 }
%struct.data = type { i32, i8*, %struct.marker* }
%struct.marker = type { i32, i32, i8*, %struct.marker* }
%struct.dt_info = type { i32, %struct.reserve_info*, i32, %struct.node*, i8* }
%struct.reserve_info = type { i64, i64, %struct.reserve_info*, %struct.label* }
%struct.label = type { i8, i8*, %struct.label* }
%struct.node = type { i8, i8*, %struct.property*, %struct.node*, %struct.node*, %struct.node*, i8*, i32, i32, i32, i32, %struct.label*, %struct.bus_type*, %struct.srcpos*, i8, i8 }
%struct.property = type { i8, i8*, %struct.data, %struct.property*, %struct.label*, %struct.srcpos* }
%struct.bus_type = type { i8* }
%union.yyalloc = type { %union.YYSTYPE }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@yydebug = dso_local local_unnamed_addr global i32 0, align 4
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
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
@yylval = dso_local local_unnamed_addr global %union.YYSTYPE zeroinitializer, align 8
@yycheck = internal unnamed_addr constant [152 x i16] [i16 8, i16 46, i16 47, i16 48, i16 20, i16 21, i16 8, i16 9, i16 16, i16 28, i16 25, i16 26, i16 27, i16 19, i16 20, i16 13, i16 19, i16 20, i16 23, i16 3, i16 5, i16 0, i16 27, i16 64, i16 65, i16 66, i16 67, i16 46, i16 47, i16 35, i16 32, i16 36, i16 35, i16 49, i16 50, i16 51, i16 38, i16 14, i16 23, i16 45, i16 27, i16 39, i16 48, i16 49, i16 4, i16 22, i16 23, i16 24, i16 25, i16 26, i16 24, i16 25, i16 27, i16 21, i16 28, i16 23, i16 33, i16 72, i16 73, i16 74, i16 104, i16 38, i16 106, i16 79, i16 19, i16 20, i16 34, i16 29, i16 23, i16 24, i16 25, i16 106, i16 37, i16 117, i16 109, i16 16, i16 17, i16 32, i16 10, i16 11, i16 35, i16 12, i16 23, i16 24, i16 25, i16 41, i16 131, i16 28, i16 15, i16 16, i16 17, i16 18, i16 16, i16 17, i16 18, i16 43, i16 23, i16 42, i16 143, i16 23, i16 40, i16 27, i16 27, i16 29, i16 38, i16 31, i16 6, i16 7, i16 44, i16 45, i16 24, i16 25, i16 27, i16 36, i16 37, i16 62, i16 63, i16 68, i16 69, i16 27, i16 70, i16 71, i16 18, i16 18, i16 30, i16 27, i16 27, i16 19, i16 27, i16 22, i16 35, i16 3, i16 36, i16 11, i16 37, i16 143, i16 9, i16 57, i16 56, i16 58, i16 113, i16 -1, i16 59, i16 109, i16 60, i16 -1, i16 -1, i16 -1, i16 156, i16 61, i16 -1, i16 159], align 16
@yytable = internal unnamed_addr constant [152 x i8] c"\10MNO,-@A*H456\0D\0E8\0D\0E\85\01\08\06\86[\\]^IJ\0FB\87\0FPQRC\88\09\19\059\1A\1B\0C\89\8A\12\13\8B\12\13\18\99\14\9A\8Ccdev\8D{p\0D\0E\9B+\93\12\13z7{}./\94>?\0F:012;\8E3fghight=j<\95uqwK+\97xDEFG\12\13n\9C\9DYZ_`oabrs|\80\81\90\84\98\91\07\9F\17\A1\96\11TSU\7F\00V~W\00\00\00\9EX\00\A0", align 16
@.str.8 = private unnamed_addr constant [9 x i8] c"Shifting\00", align 1
@yydefact = internal unnamed_addr constant [162 x i8] c"\00\00\00\05\07\03\01\06\00\00\00\07\00+,\00\00\0A\0B\0C\00\00\02\08\04\00\00\00M\00./13579;>EHL\00\16\0D\0F\00\00\00\00\00\00NOP-\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\09T\00\00\00\12\11\0E2\00468:<=AB@?CDFGJIK\00\00\00\00\00\17\00T\13\14\10\00\00\00\00\00Y\19#W\1BZ\00VU0\1AX\00\00\15\22\18$\00\1C%\00Q'\1F\00\00\00\00*\1D)(&\00RS\1E\00!\00\00\00 ", align 16
@yyr2 = internal unnamed_addr constant [91 x i8] c"\00\02\03\02\04\01\02\00\02\04\02\01\01\02\03\02\04\03\03\04\04\05\00\02\04\02\03\02\02\03\04\02\09\05\02\00\02\02\03\01\02\02\02\01\01\03\01\01\05\01\03\01\03\01\03\01\03\01\03\01\03\03\01\03\03\03\03\03\03\01\03\03\01\03\03\03\01\01\02\02\02\00\02\02\00\02\02\02\03\02\02", align 16
@parser_output = external dso_local local_unnamed_addr global %struct.dt_info*, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Header flags don't match earlier ones\00", align 1
@treesource_error = external dso_local local_unnamed_addr global i8, align 1
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
@yytname = internal unnamed_addr constant [82 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i32 0, i32 0), i8* null], align 16
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

; Function Attrs: nounwind uwtable
define dso_local i32 @yyparse() local_unnamed_addr #0 {
  %1 = alloca [200 x i8], align 16
  %2 = alloca [200 x %union.YYSTYPE], align 16
  %3 = alloca [200 x %struct.srcpos], align 16
  %4 = alloca { i8*, %struct.marker* }, align 8
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
  %32 = getelementptr inbounds [200 x i8], [200 x i8]* %1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %32) #16
  %33 = bitcast [200 x %union.YYSTYPE]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 6400, i8* nonnull %33) #16
  %34 = bitcast [200 x %struct.srcpos]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 6400, i8* nonnull %34) #16
  %35 = bitcast { i8*, %struct.marker* }* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %35)
  %36 = bitcast %struct.srcpos* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %36) #16
  %37 = getelementptr inbounds [200 x %union.YYSTYPE], [200 x %union.YYSTYPE]* %2, i64 0, i64 0
  %38 = getelementptr inbounds [200 x %struct.srcpos], [200 x %struct.srcpos]* %3, i64 0, i64 0
  %39 = load i32, i32* @yydebug, align 4, !tbaa !3
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %0
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %43 = tail call i64 @fwrite(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %42) #17
  br label %44

44:                                               ; preds = %41, %0
  store i32 0, i32* @yynerrs, align 4, !tbaa !3
  store i32 -2, i32* @yychar, align 4, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %34, i8* noundef nonnull align 8 dereferenceable(32) bitcast (%struct.srcpos* @yylloc to i8*), i64 32, i1 false), !tbaa.struct !9
  %45 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %5, i64 0, i32 4
  %46 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %5, i64 0, i32 5
  %47 = bitcast %struct.data* %31 to i8*
  %48 = bitcast %struct.data* %31 to i64*
  %49 = getelementptr inbounds %struct.data, %struct.data* %31, i64 0, i32 1
  %50 = bitcast i8** %49 to i8*
  %51 = bitcast %struct.data* %30 to i8*
  %52 = bitcast %struct.data* %30 to i64*
  %53 = getelementptr inbounds %struct.data, %struct.data* %30, i64 0, i32 1
  %54 = bitcast i8** %53 to i8*
  %55 = bitcast %struct.data* %28 to i8*
  %56 = bitcast %struct.data* %29 to i8*
  %57 = bitcast %struct.data* %28 to i64*
  %58 = getelementptr inbounds %struct.data, %struct.data* %28, i64 0, i32 1
  %59 = bitcast i8** %58 to i8*
  %60 = bitcast %struct.data* %27 to i8*
  %61 = bitcast %struct.data* %27 to i64*
  %62 = getelementptr inbounds %struct.data, %struct.data* %27, i64 0, i32 1
  %63 = bitcast i8** %62 to i8*
  %64 = bitcast %struct.data* %25 to i8*
  %65 = bitcast %struct.data* %26 to i8*
  %66 = bitcast %struct.data* %26 to i64*
  %67 = getelementptr inbounds %struct.data, %struct.data* %26, i64 0, i32 1
  %68 = bitcast i8** %67 to i8*
  %69 = bitcast %struct.data* %24 to i8*
  %70 = bitcast %struct.data* %24 to i64*
  %71 = getelementptr inbounds %struct.data, %struct.data* %24, i64 0, i32 1
  %72 = bitcast i8** %71 to i8*
  %73 = bitcast %struct.data* %22 to i8*
  %74 = bitcast %struct.data* %23 to i8*
  %75 = bitcast %struct.data* %22 to i64*
  %76 = getelementptr inbounds %struct.data, %struct.data* %22, i64 0, i32 1
  %77 = bitcast i8** %76 to i8*
  %78 = bitcast %struct.data* %20 to i8*
  %79 = bitcast %struct.data* %21 to i8*
  %80 = bitcast %struct.data* %20 to i64*
  %81 = getelementptr inbounds %struct.data, %struct.data* %20, i64 0, i32 1
  %82 = bitcast i8** %81 to i8*
  %83 = bitcast %struct.data* %19 to i8*
  %84 = bitcast %struct.data* %19 to i64*
  %85 = getelementptr inbounds %struct.data, %struct.data* %19, i64 0, i32 1
  %86 = bitcast i8** %85 to i8*
  %87 = bitcast %struct.data* %18 to i8*
  %88 = bitcast %struct.data* %18 to i64*
  %89 = getelementptr inbounds %struct.data, %struct.data* %18, i64 0, i32 1
  %90 = bitcast i8** %89 to i8*
  %91 = bitcast %struct.data* %15 to i8*
  %92 = bitcast %struct.data* %16 to i8*
  %93 = bitcast %struct.data* %17 to i8*
  %94 = bitcast %struct.data* %17 to i64*
  %95 = getelementptr inbounds %struct.data, %struct.data* %17, i64 0, i32 1
  %96 = bitcast i8** %95 to i8*
  %97 = bitcast %struct.data* %12 to i8*
  %98 = bitcast %struct.data* %13 to i8*
  %99 = bitcast %struct.data* %14 to i8*
  %100 = bitcast %struct.data* %14 to i64*
  %101 = getelementptr inbounds %struct.data, %struct.data* %14, i64 0, i32 1
  %102 = bitcast i8** %101 to i8*
  %103 = bitcast %struct.data* %10 to i8*
  %104 = bitcast %struct.data* %11 to i8*
  %105 = bitcast %struct.data* %11 to i64*
  %106 = getelementptr inbounds %struct.data, %struct.data* %11, i64 0, i32 1
  %107 = bitcast i8** %106 to i8*
  %108 = bitcast %struct.data* %9 to i8*
  %109 = bitcast %struct.data* %9 to i64*
  %110 = getelementptr inbounds %struct.data, %struct.data* %9, i64 0, i32 1
  %111 = bitcast i8** %110 to i8*
  %112 = bitcast %struct.data* %8 to i8*
  %113 = bitcast %struct.data* %8 to i64*
  %114 = getelementptr inbounds %struct.data, %struct.data* %8, i64 0, i32 1
  %115 = bitcast i8** %114 to i8*
  %116 = bitcast %struct.data* %7 to i8*
  %117 = bitcast %struct.data* %7 to i64*
  %118 = getelementptr inbounds %struct.data, %struct.data* %7, i64 0, i32 1
  %119 = bitcast i8** %118 to i8*
  %120 = bitcast %struct.data* %6 to i8*
  %121 = bitcast { i8*, %struct.marker* }* %4 to i8*
  %122 = bitcast %struct.srcpos* %5 to <4 x i32>*
  %123 = bitcast %struct.srcpos* %5 to <4 x i32>*
  br label %130

124:                                              ; preds = %1179, %1175, %288
  %125 = phi %struct.srcpos* [ %291, %288 ], [ %1159, %1179 ], [ %1159, %1175 ]
  %126 = phi %union.YYSTYPE* [ %289, %288 ], [ %1148, %1179 ], [ %1148, %1175 ]
  %127 = phi i8* [ %202, %288 ], [ %1146, %1179 ], [ %1146, %1175 ]
  %128 = phi i32 [ %269, %288 ], [ %1182, %1179 ], [ %1178, %1175 ]
  %129 = getelementptr inbounds i8, i8* %127, i64 1
  br label %130

130:                                              ; preds = %124, %44
  %131 = phi i64 [ 200, %44 ], [ %197, %124 ]
  %132 = phi %struct.srcpos* [ %38, %44 ], [ %125, %124 ]
  %133 = phi %struct.srcpos* [ %38, %44 ], [ %199, %124 ]
  %134 = phi %union.YYSTYPE* [ %37, %44 ], [ %126, %124 ]
  %135 = phi %union.YYSTYPE* [ %37, %44 ], [ %201, %124 ]
  %136 = phi i8* [ %32, %44 ], [ %129, %124 ]
  %137 = phi i8* [ %32, %44 ], [ %203, %124 ]
  %138 = phi i32 [ 0, %44 ], [ %128, %124 ]
  %139 = load i32, i32* @yydebug, align 4, !tbaa !3
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %130
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %143 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %142, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %138) #17
  br label %144

144:                                              ; preds = %141, %130
  %145 = trunc i32 %138 to i8
  store i8 %145, i8* %136, align 1, !tbaa !10
  %146 = getelementptr inbounds i8, i8* %137, i64 -1
  %147 = getelementptr inbounds i8, i8* %146, i64 %131
  %148 = icmp ugt i8* %147, %136
  br i1 %148, label %196, label %149

149:                                              ; preds = %144
  %150 = ptrtoint i8* %136 to i64
  %151 = ptrtoint i8* %137 to i64
  %152 = sub i64 %150, %151
  %153 = add nsw i64 %152, 1
  %154 = icmp sgt i64 %131, 9999
  br i1 %154, label %1247, label %155

155:                                              ; preds = %149
  %156 = shl nsw i64 %131, 1
  %157 = icmp slt i64 %156, 10000
  %158 = select i1 %157, i64 %156, i64 10000
  %159 = mul nsw i64 %158, 65
  %160 = add nsw i64 %159, 62
  %161 = call noalias align 16 i8* @malloc(i64 %160) #16
  %162 = icmp eq i8* %161, null
  br i1 %162, label %1247, label %163

163:                                              ; preds = %155
  %164 = bitcast i8* %161 to %union.yyalloc*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %161, i8* align 1 %137, i64 %153, i1 false)
  %165 = add nsw i64 %158, 31
  %166 = sdiv i64 %165, 32
  %167 = getelementptr inbounds %union.yyalloc, %union.yyalloc* %164, i64 %166
  %168 = getelementptr %union.yyalloc, %union.yyalloc* %167, i64 0, i32 0
  %169 = bitcast %union.yyalloc* %167 to i8*
  %170 = bitcast %union.YYSTYPE* %135 to i8*
  %171 = shl i64 %153, 5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %169, i8* align 8 %170, i64 %171, i1 false)
  %172 = shl nsw i64 %158, 5
  %173 = or i64 %172, 31
  %174 = sdiv i64 %173, 32
  %175 = getelementptr inbounds %union.yyalloc, %union.yyalloc* %167, i64 %174
  %176 = bitcast %union.yyalloc* %175 to %struct.srcpos*
  %177 = bitcast %union.yyalloc* %175 to i8*
  %178 = bitcast %struct.srcpos* %133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %177, i8* align 8 %178, i64 %171, i1 false)
  %179 = icmp eq i8* %137, %32
  br i1 %179, label %181, label %180

180:                                              ; preds = %163
  call void @free(i8* %137) #16
  br label %181

181:                                              ; preds = %180, %163
  %182 = getelementptr inbounds i8, i8* %161, i64 %152
  %183 = getelementptr inbounds %union.yyalloc, %union.yyalloc* %167, i64 %152
  %184 = getelementptr %union.yyalloc, %union.yyalloc* %183, i64 0, i32 0
  %185 = getelementptr inbounds %union.yyalloc, %union.yyalloc* %175, i64 %152
  %186 = bitcast %union.yyalloc* %185 to %struct.srcpos*
  %187 = load i32, i32* @yydebug, align 4, !tbaa !3
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %181
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %191 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %190, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %158) #17
  br label %192

192:                                              ; preds = %189, %181
  %193 = getelementptr inbounds i8, i8* %161, i64 -1
  %194 = getelementptr inbounds i8, i8* %193, i64 %158
  %195 = icmp ugt i8* %194, %182
  br i1 %195, label %196, label %1248

196:                                              ; preds = %192, %144
  %197 = phi i64 [ %131, %144 ], [ %158, %192 ]
  %198 = phi %struct.srcpos* [ %132, %144 ], [ %186, %192 ]
  %199 = phi %struct.srcpos* [ %133, %144 ], [ %176, %192 ]
  %200 = phi %union.YYSTYPE* [ %134, %144 ], [ %184, %192 ]
  %201 = phi %union.YYSTYPE* [ %135, %144 ], [ %168, %192 ]
  %202 = phi i8* [ %136, %144 ], [ %182, %192 ]
  %203 = phi i8* [ %137, %144 ], [ %161, %192 ]
  %204 = icmp eq i32 %138, 6
  br i1 %204, label %1248, label %205

205:                                              ; preds = %196
  %206 = sext i32 %138 to i64
  %207 = getelementptr inbounds [162 x i8], [162 x i8]* @yypact, i64 0, i64 %206
  %208 = load i8, i8* %207, align 1, !tbaa !10
  %209 = sext i8 %208 to i32
  %210 = icmp eq i8 %208, -46
  br i1 %210, label %293, label %211

211:                                              ; preds = %205
  %212 = load i32, i32* @yychar, align 4, !tbaa !3
  %213 = icmp eq i32 %212, -2
  br i1 %213, label %214, label %222

214:                                              ; preds = %211
  %215 = load i32, i32* @yydebug, align 4, !tbaa !3
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %214
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %219 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %218) #17
  br label %220

220:                                              ; preds = %217, %214
  %221 = call i32 @yylex() #16
  store i32 %221, i32* @yychar, align 4, !tbaa !3
  br label %222

222:                                              ; preds = %220, %211
  %223 = phi i32 [ %221, %220 ], [ %212, %211 ]
  %224 = icmp slt i32 %223, 1
  br i1 %224, label %225, label %231

225:                                              ; preds = %222
  store i32 0, i32* @yychar, align 4, !tbaa !3
  %226 = load i32, i32* @yydebug, align 4, !tbaa !3
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %256, label %228

228:                                              ; preds = %225
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %230 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %229) #17
  br label %256

231:                                              ; preds = %222
  %232 = icmp ult i32 %223, 282
  br i1 %232, label %233, label %238

233:                                              ; preds = %231
  %234 = zext i32 %223 to i64
  %235 = getelementptr inbounds [282 x i8], [282 x i8]* @yytranslate, i64 0, i64 %234
  %236 = load i8, i8* %235, align 1, !tbaa !10
  %237 = sext i8 %236 to i32
  br label %238

238:                                              ; preds = %233, %231
  %239 = phi i32 [ %237, %233 ], [ 2, %231 ]
  %240 = load i32, i32* @yydebug, align 4, !tbaa !3
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %256, label %242

242:                                              ; preds = %238
  %243 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %244 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %243, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0)) #17
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %246 = icmp slt i32 %239, 50
  %247 = select i1 %246, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)
  %248 = sext i32 %239 to i64
  %249 = getelementptr inbounds [82 x i8*], [82 x i8*]* @yytname, i64 0, i64 %248
  %250 = load i8*, i8** %249, align 8, !tbaa !7
  %251 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %245, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* %247, i8* %250) #18
  %252 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %245) #18
  %253 = call i32 @fputc(i32 41, %struct._IO_FILE* %245) #16
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %255 = call i32 @fputc(i32 10, %struct._IO_FILE* %254)
  br label %256

256:                                              ; preds = %242, %238, %228, %225
  %257 = phi i32 [ 0, %228 ], [ 0, %225 ], [ %239, %242 ], [ %239, %238 ]
  %258 = add nsw i32 %257, %209
  %259 = icmp ugt i32 %258, 151
  br i1 %259, label %293, label %260

260:                                              ; preds = %256
  %261 = zext i32 %258 to i64
  %262 = getelementptr inbounds [152 x i16], [152 x i16]* @yycheck, i64 0, i64 %261
  %263 = load i16, i16* %262, align 2, !tbaa !11
  %264 = sext i16 %263 to i32
  %265 = icmp eq i32 %257, %264
  br i1 %265, label %266, label %293

266:                                              ; preds = %260
  %267 = getelementptr inbounds [152 x i8], [152 x i8]* @yytable, i64 0, i64 %261
  %268 = load i8, i8* %267, align 1, !tbaa !10
  %269 = zext i8 %268 to i32
  %270 = icmp eq i8 %268, 0
  br i1 %270, label %298, label %271

271:                                              ; preds = %266
  %272 = load i32, i32* @yydebug, align 4, !tbaa !3
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %288, label %274

274:                                              ; preds = %271
  %275 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %276 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %275, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #17
  %277 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %278 = icmp slt i32 %257, 50
  %279 = select i1 %278, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)
  %280 = sext i32 %257 to i64
  %281 = getelementptr inbounds [82 x i8*], [82 x i8*]* @yytname, i64 0, i64 %280
  %282 = load i8*, i8** %281, align 8, !tbaa !7
  %283 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %277, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* %279, i8* %282) #18
  %284 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %277) #18
  %285 = call i32 @fputc(i32 41, %struct._IO_FILE* %277) #16
  %286 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %287 = call i32 @fputc(i32 10, %struct._IO_FILE* %286)
  br label %288

288:                                              ; preds = %274, %271
  %289 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 1
  %290 = bitcast %union.YYSTYPE* %289 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %290, i8* noundef nonnull align 8 dereferenceable(32) bitcast (%union.YYSTYPE* @yylval to i8*), i64 32, i1 false), !tbaa.struct !13
  %291 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %198, i64 1
  %292 = bitcast %struct.srcpos* %291 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %292, i8* noundef nonnull align 8 dereferenceable(32) bitcast (%struct.srcpos* @yylloc to i8*), i64 32, i1 false), !tbaa.struct !9
  store i32 -2, i32* @yychar, align 4, !tbaa !3
  br label %124

293:                                              ; preds = %260, %256, %205
  %294 = getelementptr inbounds [162 x i8], [162 x i8]* @yydefact, i64 0, i64 %206
  %295 = load i8, i8* %294, align 1, !tbaa !10
  %296 = sext i8 %295 to i32
  %297 = icmp eq i8 %295, 0
  br i1 %297, label %1183, label %298

298:                                              ; preds = %293, %266
  %299 = phi i32 [ %296, %293 ], [ 0, %266 ]
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [91 x i8], [91 x i8]* @yyr2, i64 0, i64 %300
  %302 = load i8, i8* %301, align 1, !tbaa !10
  %303 = sext i8 %302 to i64
  %304 = sub nsw i64 1, %303
  %305 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 %304
  %306 = bitcast %union.YYSTYPE* %305 to i8*
  %307 = bitcast %union.YYSTYPE* %305 to i64*
  %308 = load i64, i64* %307, align 8, !tbaa.struct !13
  %309 = trunc i64 %308 to i32
  %310 = lshr i64 %308, 32
  %311 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 %304, i32 0, i32 0, i32 1
  %312 = bitcast i8** %311 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %35, i8* noundef nonnull align 8 dereferenceable(16) %312, i64 16, i1 false), !tbaa.struct !16
  %313 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 %304, i32 0, i32 1
  %314 = load i32, i32* %313, align 8, !tbaa.struct !17
  %315 = getelementptr inbounds i8, i8* %306, i64 28
  %316 = bitcast i8* %315 to i32*
  %317 = load i32, i32* %316, align 4, !tbaa.struct !18
  %318 = icmp eq i8 %302, 0
  br i1 %318, label %329, label %319

319:                                              ; preds = %298
  %320 = sub nsw i64 0, %303
  %321 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %198, i64 1
  %322 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %321, i64 %320
  %323 = bitcast %struct.srcpos* %322 to <2 x i32>*
  %324 = load <2 x i32>, <2 x i32>* %323, align 8, !tbaa !3
  %325 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %198, i64 0, i32 2
  %326 = bitcast i32* %325 to <2 x i32>*
  %327 = load <2 x i32>, <2 x i32>* %326, align 8, !tbaa !3
  %328 = shufflevector <2 x i32> %324, <2 x i32> %327, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %328, <4 x i32>* %122, align 16, !tbaa !3
  br label %334

329:                                              ; preds = %298
  %330 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %198, i64 0, i32 2
  %331 = bitcast i32* %330 to <2 x i32>*
  %332 = load <2 x i32>, <2 x i32>* %331, align 8, !tbaa !3
  %333 = shufflevector <2 x i32> %332, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x i32> %333, <4 x i32>* %123, align 16, !tbaa !3
  br label %334

334:                                              ; preds = %329, %319
  %335 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %198, i64 0, i32 4
  %336 = load %struct.srcfile_state*, %struct.srcfile_state** %335, align 8, !tbaa !19
  store %struct.srcfile_state* %336, %struct.srcfile_state** %45, align 16, !tbaa !19
  store %struct.srcpos* null, %struct.srcpos** %46, align 8, !tbaa !21
  %337 = load i32, i32* @yydebug, align 4, !tbaa !3
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %373, label %339

339:                                              ; preds = %334
  %340 = getelementptr inbounds [91 x i16], [91 x i16]* @yyrline, i64 0, i64 %300
  %341 = load i16, i16* %340, align 2, !tbaa !11
  %342 = sext i16 %341 to i32
  %343 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %344 = add nsw i32 %299, -1
  %345 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %343, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.113, i64 0, i64 0), i32 %344, i32 %342) #18
  %346 = icmp sgt i8 %302, 0
  br i1 %346, label %347, label %373

347:                                              ; preds = %339
  %348 = zext i8 %302 to i64
  br label %349

349:                                              ; preds = %349, %347
  %350 = phi i64 [ 0, %347 ], [ %352, %349 ]
  %351 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %352 = add nuw nsw i64 %350, 1
  %353 = trunc i64 %352 to i32
  %354 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %351, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.114, i64 0, i64 0), i32 %353) #18
  %355 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %356 = sub nsw i64 %352, %348
  %357 = getelementptr inbounds i8, i8* %202, i64 %356
  %358 = load i8, i8* %357, align 1, !tbaa !10
  %359 = zext i8 %358 to i64
  %360 = getelementptr inbounds [162 x i8], [162 x i8]* @yystos, i64 0, i64 %359
  %361 = load i8, i8* %360, align 1, !tbaa !10
  %362 = icmp slt i8 %361, 50
  %363 = select i1 %362, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)
  %364 = sext i8 %361 to i64
  %365 = getelementptr inbounds [82 x i8*], [82 x i8*]* @yytname, i64 0, i64 %364
  %366 = load i8*, i8** %365, align 8, !tbaa !7
  %367 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %355, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* %363, i8* %366) #18
  %368 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %355) #18
  %369 = call i32 @fputc(i32 41, %struct._IO_FILE* %355) #16
  %370 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %371 = call i32 @fputc(i32 10, %struct._IO_FILE* %370) #16
  %372 = icmp eq i64 %352, %348
  br i1 %372, label %373, label %349

373:                                              ; preds = %349, %339, %334
  switch i32 %299, label %1092 [
    i32 2, label %374
    i32 3, label %384
    i32 4, label %385
    i32 6, label %386
    i32 7, label %394
    i32 8, label %395
    i32 9, label %405
    i32 10, label %416
    i32 13, label %427
    i32 14, label %434
    i32 15, label %444
    i32 16, label %465
    i32 17, label %490
    i32 18, label %523
    i32 19, label %555
    i32 20, label %573
    i32 21, label %592
    i32 22, label %603
    i32 23, label %604
    i32 24, label %614
    i32 25, label %623
    i32 26, label %631
    i32 27, label %639
    i32 28, label %650
    i32 29, label %656
    i32 30, label %662
    i32 31, label %668
    i32 32, label %677
    i32 33, label %705
    i32 34, label %714
    i32 35, label %721
    i32 36, label %722
    i32 37, label %730
    i32 38, label %737
    i32 39, label %755
    i32 40, label %759
    i32 41, label %783
    i32 42, label %803
    i32 45, label %810
    i32 48, label %816
    i32 50, label %827
    i32 52, label %839
    i32 54, label %851
    i32 56, label %860
    i32 58, label %869
    i32 60, label %878
    i32 61, label %886
    i32 63, label %894
    i32 64, label %902
    i32 65, label %910
    i32 66, label %918
    i32 67, label %926
    i32 68, label %939
    i32 70, label %952
    i32 71, label %961
    i32 73, label %970
    i32 74, label %979
    i32 75, label %991
    i32 78, label %1003
    i32 79, label %1009
    i32 80, label %1015
    i32 81, label %1020
    i32 82, label %1024
    i32 83, label %1031
    i32 84, label %1038
    i32 85, label %1039
    i32 86, label %1049
    i32 87, label %1055
    i32 88, label %1065
    i32 89, label %1074
    i32 90, label %1081
  ]

374:                                              ; preds = %373
  %375 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2, i32 0, i32 0, i32 0
  %376 = load i32, i32* %375, align 8, !tbaa !10
  %377 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1
  %378 = bitcast %union.YYSTYPE* %377 to %struct.reserve_info**
  %379 = load %struct.reserve_info*, %struct.reserve_info** %378, align 8, !tbaa !10
  %380 = bitcast %union.YYSTYPE* %200 to %struct.node**
  %381 = load %struct.node*, %struct.node** %380, align 8, !tbaa !10
  %382 = call i32 @guess_boot_cpuid(%struct.node* %381) #16
  %383 = call %struct.dt_info* @build_dt_info(i32 %376, %struct.reserve_info* %379, %struct.node* %381, i32 %382) #16
  store %struct.dt_info* %383, %struct.dt_info** @parser_output, align 8, !tbaa !7
  br label %1092

384:                                              ; preds = %373
  br label %1092

385:                                              ; preds = %373
  br label %1092

386:                                              ; preds = %373
  %387 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %200, i64 0, i32 0, i32 0, i32 0
  %388 = load i32, i32* %387, align 8, !tbaa !10
  %389 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1, i32 0, i32 0, i32 0
  %390 = load i32, i32* %389, align 8, !tbaa !10
  %391 = icmp eq i32 %388, %390
  br i1 %391, label %1092, label %392

392:                                              ; preds = %386
  call void (%struct.srcpos*, i8*, i8*, ...) @srcpos_error(%struct.srcpos* %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0)) #16
  store i8 1, i8* @treesource_error, align 1, !tbaa !22
  %393 = load i32, i32* %389, align 8, !tbaa !10
  br label %1092

394:                                              ; preds = %373
  br label %1092

395:                                              ; preds = %373
  %396 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1
  %397 = bitcast %union.YYSTYPE* %396 to %struct.reserve_info**
  %398 = load %struct.reserve_info*, %struct.reserve_info** %397, align 8, !tbaa !10
  %399 = bitcast %union.YYSTYPE* %200 to %struct.reserve_info**
  %400 = load %struct.reserve_info*, %struct.reserve_info** %399, align 8, !tbaa !10
  %401 = call %struct.reserve_info* @chain_reserve_entry(%struct.reserve_info* %398, %struct.reserve_info* %400) #16
  %402 = ptrtoint %struct.reserve_info* %401 to i64
  %403 = trunc i64 %402 to i32
  %404 = lshr i64 %402, 32
  br label %1092

405:                                              ; preds = %373
  %406 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2
  %407 = bitcast %union.YYSTYPE* %406 to i64*
  %408 = load i64, i64* %407, align 8, !tbaa !10
  %409 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1
  %410 = bitcast %union.YYSTYPE* %409 to i64*
  %411 = load i64, i64* %410, align 8, !tbaa !10
  %412 = call %struct.reserve_info* @build_reserve_entry(i64 %408, i64 %411) #16
  %413 = ptrtoint %struct.reserve_info* %412 to i64
  %414 = trunc i64 %413 to i32
  %415 = lshr i64 %413, 32
  br label %1092

416:                                              ; preds = %373
  %417 = bitcast %union.YYSTYPE* %200 to %struct.reserve_info**
  %418 = load %struct.reserve_info*, %struct.reserve_info** %417, align 8, !tbaa !10
  %419 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %418, i64 0, i32 3
  %420 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1
  %421 = bitcast %union.YYSTYPE* %420 to i8**
  %422 = load i8*, i8** %421, align 8, !tbaa !10
  call void @add_label(%struct.label** nonnull %419, i8* %422) #16
  %423 = load %struct.reserve_info*, %struct.reserve_info** %417, align 8, !tbaa !10
  %424 = ptrtoint %struct.reserve_info* %423 to i64
  %425 = trunc i64 %424 to i32
  %426 = lshr i64 %424, 32
  br label %1092

427:                                              ; preds = %373
  %428 = bitcast %union.YYSTYPE* %200 to %struct.node**
  %429 = load %struct.node*, %struct.node** %428, align 8, !tbaa !10
  %430 = call %struct.node* @name_node(%struct.node* %429, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #16
  %431 = ptrtoint %struct.node* %430 to i64
  %432 = trunc i64 %431 to i32
  %433 = lshr i64 %431, 32
  br label %1092

434:                                              ; preds = %373
  %435 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2
  %436 = bitcast %union.YYSTYPE* %435 to %struct.node**
  %437 = load %struct.node*, %struct.node** %436, align 8, !tbaa !10
  %438 = bitcast %union.YYSTYPE* %200 to %struct.node**
  %439 = load %struct.node*, %struct.node** %438, align 8, !tbaa !10
  %440 = call %struct.node* @merge_nodes(%struct.node* %437, %struct.node* %439) #16
  %441 = ptrtoint %struct.node* %440 to i64
  %442 = trunc i64 %441 to i32
  %443 = lshr i64 %441, 32
  br label %1092

444:                                              ; preds = %373
  %445 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -3, i32 0, i32 0, i32 0
  %446 = load i32, i32* %445, align 8, !tbaa !10
  %447 = and i32 %446, 2
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %453

449:                                              ; preds = %444
  %450 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1
  %451 = bitcast %union.YYSTYPE* %450 to i8**
  %452 = load i8*, i8** %451, align 8, !tbaa !10
  call void (%struct.srcpos*, i8*, i8*, ...) @srcpos_error(%struct.srcpos* %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %452) #16
  store i8 1, i8* @treesource_error, align 1, !tbaa !22
  br label %453

453:                                              ; preds = %449, %444
  %454 = call %struct.node* @build_node(%struct.property* null, %struct.node* null, %struct.srcpos* null) #16
  %455 = call %struct.node* @name_node(%struct.node* %454, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #16
  %456 = bitcast %union.YYSTYPE* %200 to %struct.node**
  %457 = load %struct.node*, %struct.node** %456, align 8, !tbaa !10
  %458 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1
  %459 = bitcast %union.YYSTYPE* %458 to i8**
  %460 = load i8*, i8** %459, align 8, !tbaa !10
  %461 = call %struct.node* @add_orphan_node(%struct.node* %455, %struct.node* %457, i8* %460) #16
  %462 = ptrtoint %struct.node* %461 to i64
  %463 = trunc i64 %462 to i32
  %464 = lshr i64 %462, 32
  br label %1092

465:                                              ; preds = %373
  %466 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -3
  %467 = bitcast %union.YYSTYPE* %466 to %struct.node**
  %468 = load %struct.node*, %struct.node** %467, align 8, !tbaa !10
  %469 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1
  %470 = bitcast %union.YYSTYPE* %469 to i8**
  %471 = load i8*, i8** %470, align 8, !tbaa !10
  %472 = call %struct.node* @get_node_by_ref(%struct.node* %468, i8* %471) #16
  %473 = icmp eq %struct.node* %472, null
  br i1 %473, label %482, label %474

474:                                              ; preds = %465
  %475 = getelementptr inbounds %struct.node, %struct.node* %472, i64 0, i32 11
  %476 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2
  %477 = bitcast %union.YYSTYPE* %476 to i8**
  %478 = load i8*, i8** %477, align 8, !tbaa !10
  call void @add_label(%struct.label** nonnull %475, i8* %478) #16
  %479 = bitcast %union.YYSTYPE* %200 to %struct.node**
  %480 = load %struct.node*, %struct.node** %479, align 8, !tbaa !10
  %481 = call %struct.node* @merge_nodes(%struct.node* nonnull %472, %struct.node* %480) #16
  br label %485

482:                                              ; preds = %465
  %483 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %198, i64 -1
  %484 = load i8*, i8** %470, align 8, !tbaa !10
  call void (%struct.srcpos*, i8*, i8*, ...) @srcpos_error(%struct.srcpos* nonnull %483, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %484) #16
  store i8 1, i8* @treesource_error, align 1, !tbaa !22
  br label %485

485:                                              ; preds = %482, %474
  %486 = load %struct.node*, %struct.node** %467, align 8, !tbaa !10
  %487 = ptrtoint %struct.node* %486 to i64
  %488 = trunc i64 %487 to i32
  %489 = lshr i64 %487, 32
  br label %1092

490:                                              ; preds = %373
  %491 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -4, i32 0, i32 0, i32 0
  %492 = load i32, i32* %491, align 8, !tbaa !10
  %493 = and i32 %492, 2
  %494 = icmp eq i32 %493, 0
  %495 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2
  %496 = bitcast %union.YYSTYPE* %495 to %struct.node**
  %497 = load %struct.node*, %struct.node** %496, align 8, !tbaa !10
  br i1 %494, label %505, label %498

498:                                              ; preds = %490
  %499 = bitcast %union.YYSTYPE* %200 to %struct.node**
  %500 = load %struct.node*, %struct.node** %499, align 8, !tbaa !10
  %501 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1
  %502 = bitcast %union.YYSTYPE* %501 to i8**
  %503 = load i8*, i8** %502, align 8, !tbaa !10
  %504 = call %struct.node* @add_orphan_node(%struct.node* %497, %struct.node* %500, i8* %503) #16
  br label %518

505:                                              ; preds = %490
  %506 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1
  %507 = bitcast %union.YYSTYPE* %506 to i8**
  %508 = load i8*, i8** %507, align 8, !tbaa !10
  %509 = call %struct.node* @get_node_by_ref(%struct.node* %497, i8* %508) #16
  %510 = icmp eq %struct.node* %509, null
  br i1 %510, label %515, label %511

511:                                              ; preds = %505
  %512 = bitcast %union.YYSTYPE* %200 to %struct.node**
  %513 = load %struct.node*, %struct.node** %512, align 8, !tbaa !10
  %514 = call %struct.node* @merge_nodes(%struct.node* nonnull %509, %struct.node* %513) #16
  br label %518

515:                                              ; preds = %505
  %516 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %198, i64 -1
  %517 = load i8*, i8** %507, align 8, !tbaa !10
  call void (%struct.srcpos*, i8*, i8*, ...) @srcpos_error(%struct.srcpos* nonnull %516, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %517) #16
  store i8 1, i8* @treesource_error, align 1, !tbaa !22
  br label %518

518:                                              ; preds = %515, %511, %498
  %519 = load %struct.node*, %struct.node** %496, align 8, !tbaa !10
  %520 = ptrtoint %struct.node* %519 to i64
  %521 = trunc i64 %520 to i32
  %522 = lshr i64 %520, 32
  br label %1092

523:                                              ; preds = %373
  %524 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2
  %525 = bitcast %union.YYSTYPE* %524 to %struct.node**
  %526 = load %struct.node*, %struct.node** %525, align 8, !tbaa !10
  %527 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1
  %528 = bitcast %union.YYSTYPE* %527 to i8**
  %529 = load i8*, i8** %528, align 8, !tbaa !10
  %530 = call %struct.node* @get_node_by_ref(%struct.node* %526, i8* %529) #16
  %531 = icmp eq %struct.node* %530, null
  br i1 %531, label %536, label %532

532:                                              ; preds = %523
  %533 = bitcast %union.YYSTYPE* %200 to %struct.node**
  %534 = load %struct.node*, %struct.node** %533, align 8, !tbaa !10
  %535 = call %struct.node* @merge_nodes(%struct.node* nonnull %530, %struct.node* %534) #16
  br label %550

536:                                              ; preds = %523
  %537 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -4, i32 0, i32 0, i32 0
  %538 = load i32, i32* %537, align 8, !tbaa !10
  %539 = and i32 %538, 2
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %547, label %541

541:                                              ; preds = %536
  %542 = load %struct.node*, %struct.node** %525, align 8, !tbaa !10
  %543 = bitcast %union.YYSTYPE* %200 to %struct.node**
  %544 = load %struct.node*, %struct.node** %543, align 8, !tbaa !10
  %545 = load i8*, i8** %528, align 8, !tbaa !10
  %546 = call %struct.node* @add_orphan_node(%struct.node* %542, %struct.node* %544, i8* %545) #16
  br label %550

547:                                              ; preds = %536
  %548 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %198, i64 -1
  %549 = load i8*, i8** %528, align 8, !tbaa !10
  call void (%struct.srcpos*, i8*, i8*, ...) @srcpos_error(%struct.srcpos* nonnull %548, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %549) #16
  store i8 1, i8* @treesource_error, align 1, !tbaa !22
  br label %550

550:                                              ; preds = %547, %541, %532
  %551 = load %struct.node*, %struct.node** %525, align 8, !tbaa !10
  %552 = ptrtoint %struct.node* %551 to i64
  %553 = trunc i64 %552 to i32
  %554 = lshr i64 %552, 32
  br label %1092

555:                                              ; preds = %373
  %556 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -3
  %557 = bitcast %union.YYSTYPE* %556 to %struct.node**
  %558 = load %struct.node*, %struct.node** %557, align 8, !tbaa !10
  %559 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1
  %560 = bitcast %union.YYSTYPE* %559 to i8**
  %561 = load i8*, i8** %560, align 8, !tbaa !10
  %562 = call %struct.node* @get_node_by_ref(%struct.node* %558, i8* %561) #16
  %563 = icmp eq %struct.node* %562, null
  br i1 %563, label %565, label %564

564:                                              ; preds = %555
  call void @delete_node(%struct.node* nonnull %562) #16
  br label %568

565:                                              ; preds = %555
  %566 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %198, i64 -1
  %567 = load i8*, i8** %560, align 8, !tbaa !10
  call void (%struct.srcpos*, i8*, i8*, ...) @srcpos_error(%struct.srcpos* nonnull %566, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %567) #16
  store i8 1, i8* @treesource_error, align 1, !tbaa !22
  br label %568

568:                                              ; preds = %565, %564
  %569 = load %struct.node*, %struct.node** %557, align 8, !tbaa !10
  %570 = ptrtoint %struct.node* %569 to i64
  %571 = trunc i64 %570 to i32
  %572 = lshr i64 %570, 32
  br label %1092

573:                                              ; preds = %373
  %574 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -3
  %575 = bitcast %union.YYSTYPE* %574 to %struct.node**
  %576 = load %struct.node*, %struct.node** %575, align 8, !tbaa !10
  %577 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1
  %578 = bitcast %union.YYSTYPE* %577 to i8**
  %579 = load i8*, i8** %578, align 8, !tbaa !10
  %580 = call %struct.node* @get_node_by_ref(%struct.node* %576, i8* %579) #16
  %581 = icmp eq %struct.node* %580, null
  br i1 %581, label %584, label %582

582:                                              ; preds = %573
  %583 = call %struct.node* @omit_node_if_unused(%struct.node* nonnull %580) #16
  br label %587

584:                                              ; preds = %573
  %585 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %198, i64 -1
  %586 = load i8*, i8** %578, align 8, !tbaa !10
  call void (%struct.srcpos*, i8*, i8*, ...) @srcpos_error(%struct.srcpos* nonnull %585, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %586) #16
  store i8 1, i8* @treesource_error, align 1, !tbaa !22
  br label %587

587:                                              ; preds = %584, %582
  %588 = load %struct.node*, %struct.node** %575, align 8, !tbaa !10
  %589 = ptrtoint %struct.node* %588 to i64
  %590 = trunc i64 %589 to i32
  %591 = lshr i64 %589, 32
  br label %1092

592:                                              ; preds = %373
  %593 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -3
  %594 = bitcast %union.YYSTYPE* %593 to %struct.property**
  %595 = load %struct.property*, %struct.property** %594, align 8, !tbaa !10
  %596 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2
  %597 = bitcast %union.YYSTYPE* %596 to %struct.node**
  %598 = load %struct.node*, %struct.node** %597, align 8, !tbaa !10
  %599 = call %struct.node* @build_node(%struct.property* %595, %struct.node* %598, %struct.srcpos* nonnull %5) #16
  %600 = ptrtoint %struct.node* %599 to i64
  %601 = trunc i64 %600 to i32
  %602 = lshr i64 %600, 32
  br label %1092

603:                                              ; preds = %373
  br label %1092

604:                                              ; preds = %373
  %605 = bitcast %union.YYSTYPE* %200 to %struct.property**
  %606 = load %struct.property*, %struct.property** %605, align 8, !tbaa !10
  %607 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1
  %608 = bitcast %union.YYSTYPE* %607 to %struct.property**
  %609 = load %struct.property*, %struct.property** %608, align 8, !tbaa !10
  %610 = call %struct.property* @chain_property(%struct.property* %606, %struct.property* %609) #16
  %611 = ptrtoint %struct.property* %610 to i64
  %612 = trunc i64 %611 to i32
  %613 = lshr i64 %611, 32
  br label %1092

614:                                              ; preds = %373
  %615 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -3
  %616 = bitcast %union.YYSTYPE* %615 to i8**
  %617 = load i8*, i8** %616, align 8, !tbaa !10
  %618 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1, i32 0, i32 0
  %619 = call %struct.property* @build_property(i8* %617, %struct.data* nonnull byval(%struct.data) align 8 %618, %struct.srcpos* nonnull %5) #16
  %620 = ptrtoint %struct.property* %619 to i64
  %621 = trunc i64 %620 to i32
  %622 = lshr i64 %620, 32
  br label %1092

623:                                              ; preds = %373
  %624 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1
  %625 = bitcast %union.YYSTYPE* %624 to i8**
  %626 = load i8*, i8** %625, align 8, !tbaa !10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %120, i8 0, i64 24, i1 false)
  %627 = call %struct.property* @build_property(i8* %626, %struct.data* nonnull byval(%struct.data) align 8 %6, %struct.srcpos* nonnull %5) #16
  %628 = ptrtoint %struct.property* %627 to i64
  %629 = trunc i64 %628 to i32
  %630 = lshr i64 %628, 32
  br label %1092

631:                                              ; preds = %373
  %632 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1
  %633 = bitcast %union.YYSTYPE* %632 to i8**
  %634 = load i8*, i8** %633, align 8, !tbaa !10
  %635 = call %struct.property* @build_property_delete(i8* %634) #16
  %636 = ptrtoint %struct.property* %635 to i64
  %637 = trunc i64 %636 to i32
  %638 = lshr i64 %636, 32
  br label %1092

639:                                              ; preds = %373
  %640 = bitcast %union.YYSTYPE* %200 to %struct.property**
  %641 = load %struct.property*, %struct.property** %640, align 8, !tbaa !10
  %642 = getelementptr inbounds %struct.property, %struct.property* %641, i64 0, i32 4
  %643 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1
  %644 = bitcast %union.YYSTYPE* %643 to i8**
  %645 = load i8*, i8** %644, align 8, !tbaa !10
  call void @add_label(%struct.label** nonnull %642, i8* %645) #16
  %646 = load %struct.property*, %struct.property** %640, align 8, !tbaa !10
  %647 = ptrtoint %struct.property* %646 to i64
  %648 = trunc i64 %647 to i32
  %649 = lshr i64 %647, 32
  br label %1092

650:                                              ; preds = %373
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %116) #16
  %651 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1, i32 0, i32 0
  %652 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %200, i64 0, i32 0, i32 0
  call void @data_merge(%struct.data* nonnull sret(%struct.data) align 8 %7, %struct.data* nonnull byval(%struct.data) align 8 %651, %struct.data* byval(%struct.data) align 8 %652) #16
  %653 = load i64, i64* %117, align 8, !tbaa.struct !24
  %654 = trunc i64 %653 to i32
  %655 = lshr i64 %653, 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %35, i8* noundef nonnull align 8 dereferenceable(16) %119, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %116) #16
  br label %1092

656:                                              ; preds = %373
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %112) #16
  %657 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2, i32 0, i32 0
  %658 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1, i32 0, i32 0
  call void @data_merge(%struct.data* nonnull sret(%struct.data) align 8 %8, %struct.data* nonnull byval(%struct.data) align 8 %657, %struct.data* nonnull byval(%struct.data) align 8 %658) #16
  %659 = load i64, i64* %113, align 8, !tbaa.struct !24
  %660 = trunc i64 %659 to i32
  %661 = lshr i64 %659, 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %35, i8* noundef nonnull align 8 dereferenceable(16) %115, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %112) #16
  br label %1092

662:                                              ; preds = %373
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %108) #16
  %663 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -3, i32 0, i32 0
  %664 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1, i32 0, i32 0
  call void @data_merge(%struct.data* nonnull sret(%struct.data) align 8 %9, %struct.data* nonnull byval(%struct.data) align 8 %663, %struct.data* nonnull byval(%struct.data) align 8 %664) #16
  %665 = load i64, i64* %109, align 8, !tbaa.struct !24
  %666 = trunc i64 %665 to i32
  %667 = lshr i64 %665, 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %35, i8* noundef nonnull align 8 dereferenceable(16) %111, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %108) #16
  br label %1092

668:                                              ; preds = %373
  %669 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %103) #16
  %670 = bitcast %union.YYSTYPE* %200 to i8**
  %671 = load i8*, i8** %670, align 8, !tbaa !10
  call void @data_add_marker(%struct.data* nonnull sret(%struct.data) align 8 %10, %struct.data* nonnull byval(%struct.data) align 8 %669, i32 8, i8* %671) #16
  %672 = bitcast %struct.data* %669 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %672, i8* noundef nonnull align 8 dereferenceable(24) %103, i64 24, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %103) #16
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %104) #16
  %673 = load i8*, i8** %670, align 8, !tbaa !10
  call void @data_add_marker(%struct.data* nonnull sret(%struct.data) align 8 %11, %struct.data* nonnull byval(%struct.data) align 8 %669, i32 2, i8* %673) #16
  %674 = load i64, i64* %105, align 8, !tbaa.struct !24
  %675 = trunc i64 %674 to i32
  %676 = lshr i64 %674, 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %35, i8* noundef nonnull align 8 dereferenceable(16) %107, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %104) #16
  br label %1092

677:                                              ; preds = %373
  %678 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -5, i32 0, i32 0, i32 1
  %679 = load i8*, i8** %678, align 8, !tbaa !10
  %680 = call %struct._IO_FILE* @srcfile_relative_open(i8* %679, i8** null) #16
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %97) #16
  %681 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -3
  %682 = bitcast %union.YYSTYPE* %681 to i64*
  %683 = load i64, i64* %682, align 8, !tbaa !10
  %684 = icmp eq i64 %683, 0
  br i1 %684, label %696, label %685

685:                                              ; preds = %677
  %686 = call i32 @fseek(%struct._IO_FILE* %680, i64 %683, i32 0)
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %696, label %688

688:                                              ; preds = %685
  %689 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -5, i32 0, i32 0, i32 1
  %690 = bitcast %union.YYSTYPE* %681 to i64*
  %691 = load i64, i64* %690, align 8, !tbaa !10
  %692 = load i8*, i8** %689, align 8, !tbaa !10
  %693 = tail call i32* @__errno_location() #19
  %694 = load i32, i32* %693, align 4, !tbaa !3
  %695 = call i8* @strerror(i32 %694) #16
  call void (i8*, ...) @die(i8* undef, i64 %691, i8* %692, i8* %695) #20
  unreachable

696:                                              ; preds = %685, %677
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %98) #16
  %697 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1
  %698 = bitcast %union.YYSTYPE* %697 to i64*
  %699 = load i64, i64* %698, align 8, !tbaa !10
  call void @data_copy_file(%struct.data* nonnull sret(%struct.data) align 8 %13, %struct._IO_FILE* %680, i64 %699) #16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %97, i8* noundef nonnull align 8 dereferenceable(24) %98, i64 24, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %98) #16
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %99) #16
  %700 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -8, i32 0, i32 0
  call void @data_merge(%struct.data* nonnull sret(%struct.data) align 8 %14, %struct.data* nonnull byval(%struct.data) align 8 %700, %struct.data* nonnull byval(%struct.data) align 8 %12) #16
  %701 = load i64, i64* %100, align 8, !tbaa.struct !24
  %702 = trunc i64 %701 to i32
  %703 = lshr i64 %701, 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %35, i8* noundef nonnull align 8 dereferenceable(16) %102, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %99) #16
  %704 = call i32 @fclose(%struct._IO_FILE* %680)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %97) #16
  br label %1092

705:                                              ; preds = %373
  %706 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1, i32 0, i32 0, i32 1
  %707 = load i8*, i8** %706, align 8, !tbaa !10
  %708 = call %struct._IO_FILE* @srcfile_relative_open(i8* %707, i8** null) #16
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %91) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %91, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %92) #16
  call void @data_copy_file(%struct.data* nonnull sret(%struct.data) align 8 %16, %struct._IO_FILE* %708, i64 -1) #16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %91, i8* noundef nonnull align 8 dereferenceable(24) %92, i64 24, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %92) #16
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %93) #16
  %709 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -4, i32 0, i32 0
  call void @data_merge(%struct.data* nonnull sret(%struct.data) align 8 %17, %struct.data* nonnull byval(%struct.data) align 8 %709, %struct.data* nonnull byval(%struct.data) align 8 %15) #16
  %710 = load i64, i64* %94, align 8, !tbaa.struct !24
  %711 = trunc i64 %710 to i32
  %712 = lshr i64 %710, 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %35, i8* noundef nonnull align 8 dereferenceable(16) %96, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %93) #16
  %713 = call i32 @fclose(%struct._IO_FILE* %708)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %91) #16
  br label %1092

714:                                              ; preds = %373
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %87) #16
  %715 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1, i32 0, i32 0
  %716 = bitcast %union.YYSTYPE* %200 to i8**
  %717 = load i8*, i8** %716, align 8, !tbaa !10
  call void @data_add_marker(%struct.data* nonnull sret(%struct.data) align 8 %18, %struct.data* nonnull byval(%struct.data) align 8 %715, i32 3, i8* %717) #16
  %718 = load i64, i64* %88, align 8, !tbaa.struct !24
  %719 = trunc i64 %718 to i32
  %720 = lshr i64 %718, 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %35, i8* noundef nonnull align 8 dereferenceable(16) %90, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %87) #16
  br label %1092

721:                                              ; preds = %373
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %121, i8 0, i64 16, i1 false)
  br label %1092

722:                                              ; preds = %373
  %723 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1
  %724 = bitcast %union.YYSTYPE* %723 to i64*
  %725 = load i64, i64* %724, align 8, !tbaa.struct !24
  %726 = trunc i64 %725 to i32
  %727 = lshr i64 %725, 32
  %728 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1, i32 0, i32 0, i32 1
  %729 = bitcast i8** %728 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %35, i8* noundef nonnull align 8 dereferenceable(16) %729, i64 16, i1 false), !tbaa.struct !25
  br label %1092

730:                                              ; preds = %373
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %83) #16
  %731 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1, i32 0, i32 0
  %732 = bitcast %union.YYSTYPE* %200 to i8**
  %733 = load i8*, i8** %732, align 8, !tbaa !10
  call void @data_add_marker(%struct.data* nonnull sret(%struct.data) align 8 %19, %struct.data* nonnull byval(%struct.data) align 8 %731, i32 3, i8* %733) #16
  %734 = load i64, i64* %84, align 8, !tbaa.struct !24
  %735 = trunc i64 %734 to i32
  %736 = lshr i64 %734, 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %35, i8* noundef nonnull align 8 dereferenceable(16) %86, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %83) #16
  br label %1092

737:                                              ; preds = %373
  %738 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1
  %739 = bitcast %union.YYSTYPE* %738 to i64*
  %740 = load i64, i64* %739, align 8, !tbaa !10
  %741 = add i64 %740, -8
  %742 = call i64 @llvm.fshl.i64(i64 %741, i64 %741, i64 61)
  switch i64 %742, label %746 [
    i64 0, label %748
    i64 1, label %743
    i64 3, label %744
    i64 7, label %745
  ]

743:                                              ; preds = %737
  br label %748

744:                                              ; preds = %737
  br label %748

745:                                              ; preds = %737
  br label %748

746:                                              ; preds = %737
  %747 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %198, i64 -1
  call void (%struct.srcpos*, i8*, i8*, ...) @srcpos_error(%struct.srcpos* nonnull %747, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0)) #16
  store i8 1, i8* @treesource_error, align 1, !tbaa !22
  br label %748

748:                                              ; preds = %746, %745, %744, %743, %737
  %749 = phi i64 [ 32, %746 ], [ %740, %745 ], [ %740, %744 ], [ %740, %743 ], [ %740, %737 ]
  %750 = phi i32 [ 6, %746 ], [ 7, %745 ], [ 6, %744 ], [ 5, %743 ], [ 4, %737 ]
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %78) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %79, i8 0, i64 24, i1 false)
  call void @data_add_marker(%struct.data* nonnull sret(%struct.data) align 8 %20, %struct.data* nonnull byval(%struct.data) align 8 %21, i32 %750, i8* null) #16
  %751 = load i64, i64* %80, align 8, !tbaa.struct !24
  %752 = trunc i64 %751 to i32
  %753 = lshr i64 %751, 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %35, i8* noundef nonnull align 8 dereferenceable(16) %82, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %78) #16
  %754 = trunc i64 %749 to i32
  br label %1092

755:                                              ; preds = %373
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %73) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %74, i8 0, i64 24, i1 false)
  call void @data_add_marker(%struct.data* nonnull sret(%struct.data) align 8 %22, %struct.data* nonnull byval(%struct.data) align 8 %23, i32 6, i8* null) #16
  %756 = load i64, i64* %75, align 8, !tbaa.struct !24
  %757 = trunc i64 %756 to i32
  %758 = lshr i64 %756, 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %35, i8* noundef nonnull align 8 dereferenceable(16) %77, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %73) #16
  br label %1092

759:                                              ; preds = %373
  %760 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1, i32 0, i32 1
  %761 = load i32, i32* %760, align 8, !tbaa !10
  %762 = icmp slt i32 %761, 64
  br i1 %762, label %763, label %775

763:                                              ; preds = %759
  %764 = zext i32 %761 to i64
  %765 = shl nsw i64 -1, %764
  %766 = xor i64 %765, -1
  %767 = bitcast %union.YYSTYPE* %200 to i64*
  %768 = load i64, i64* %767, align 8, !tbaa !10
  %769 = icmp ule i64 %768, %766
  %770 = or i64 %768, %766
  %771 = icmp eq i64 %770, -1
  %772 = or i1 %769, %771
  br i1 %772, label %775, label %773

773:                                              ; preds = %763
  call void (%struct.srcpos*, i8*, i8*, ...) @srcpos_error(%struct.srcpos* %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0), i32 %761) #16
  store i8 1, i8* @treesource_error, align 1, !tbaa !22
  %774 = load i32, i32* %760, align 8, !tbaa !10
  br label %775

775:                                              ; preds = %773, %763, %759
  %776 = phi i32 [ %761, %763 ], [ %774, %773 ], [ %761, %759 ]
  %777 = bitcast %union.YYSTYPE* %200 to i64*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %69) #16
  %778 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1, i32 0, i32 0
  %779 = load i64, i64* %777, align 8, !tbaa !10
  call void @data_append_integer(%struct.data* nonnull sret(%struct.data) align 8 %24, %struct.data* nonnull byval(%struct.data) align 8 %778, i64 %779, i32 %776) #16
  %780 = load i64, i64* %70, align 8, !tbaa.struct !24
  %781 = trunc i64 %780 to i32
  %782 = lshr i64 %780, 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %35, i8* noundef nonnull align 8 dereferenceable(16) %72, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %69) #16
  br label %1092

783:                                              ; preds = %373
  %784 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1, i32 0
  %785 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1, i32 0, i32 1
  %786 = load i32, i32* %785, align 8, !tbaa !10
  %787 = sub nsw i32 64, %786
  %788 = zext i32 %787 to i64
  %789 = lshr i64 -1, %788
  %790 = icmp eq i32 %786, 32
  br i1 %790, label %791, label %796

791:                                              ; preds = %783
  %792 = getelementptr inbounds %struct.anon, %struct.anon* %784, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %64) #16
  %793 = bitcast %union.YYSTYPE* %200 to i8**
  %794 = load i8*, i8** %793, align 8, !tbaa !10
  call void @data_add_marker(%struct.data* nonnull sret(%struct.data) align 8 %25, %struct.data* nonnull byval(%struct.data) align 8 %792, i32 1, i8* %794) #16
  %795 = bitcast %struct.anon* %784 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %795, i8* noundef nonnull align 8 dereferenceable(24) %64, i64 24, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %64) #16
  br label %797

796:                                              ; preds = %783
  call void (%struct.srcpos*, i8*, i8*, ...) @srcpos_error(%struct.srcpos* %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i64 0, i64 0)) #16
  store i8 1, i8* @treesource_error, align 1, !tbaa !22
  br label %797

797:                                              ; preds = %796, %791
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %65) #16
  %798 = getelementptr inbounds %struct.anon, %struct.anon* %784, i64 0, i32 0
  %799 = load i32, i32* %785, align 8, !tbaa !10
  call void @data_append_integer(%struct.data* nonnull sret(%struct.data) align 8 %26, %struct.data* nonnull byval(%struct.data) align 8 %798, i64 %789, i32 %799) #16
  %800 = load i64, i64* %66, align 8, !tbaa.struct !24
  %801 = trunc i64 %800 to i32
  %802 = lshr i64 %800, 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %35, i8* noundef nonnull align 8 dereferenceable(16) %68, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %65) #16
  br label %1092

803:                                              ; preds = %373
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %60) #16
  %804 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1, i32 0, i32 0
  %805 = bitcast %union.YYSTYPE* %200 to i8**
  %806 = load i8*, i8** %805, align 8, !tbaa !10
  call void @data_add_marker(%struct.data* nonnull sret(%struct.data) align 8 %27, %struct.data* nonnull byval(%struct.data) align 8 %804, i32 3, i8* %806) #16
  %807 = load i64, i64* %61, align 8, !tbaa.struct !24
  %808 = trunc i64 %807 to i32
  %809 = lshr i64 %807, 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %35, i8* noundef nonnull align 8 dereferenceable(16) %63, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %60) #16
  br label %1092

810:                                              ; preds = %373
  %811 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1
  %812 = bitcast %union.YYSTYPE* %811 to i64*
  %813 = load i64, i64* %812, align 8, !tbaa !10
  %814 = trunc i64 %813 to i32
  %815 = lshr i64 %813, 32
  br label %1092

816:                                              ; preds = %373
  %817 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -4
  %818 = bitcast %union.YYSTYPE* %817 to i64*
  %819 = load i64, i64* %818, align 8, !tbaa !10
  %820 = icmp eq i64 %819, 0
  %821 = select i1 %820, i64 0, i64 -2
  %822 = getelementptr %union.YYSTYPE, %union.YYSTYPE* %200, i64 %821
  %823 = bitcast %union.YYSTYPE* %822 to i64*
  %824 = load i64, i64* %823, align 8, !tbaa !10
  %825 = trunc i64 %824 to i32
  %826 = lshr i64 %824, 32
  br label %1092

827:                                              ; preds = %373
  %828 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2
  %829 = bitcast %union.YYSTYPE* %828 to i64*
  %830 = load i64, i64* %829, align 8, !tbaa !10
  %831 = icmp eq i64 %830, 0
  br i1 %831, label %832, label %836

832:                                              ; preds = %827
  %833 = bitcast %union.YYSTYPE* %200 to i64*
  %834 = load i64, i64* %833, align 8, !tbaa !10
  %835 = icmp ne i64 %834, 0
  br label %836

836:                                              ; preds = %832, %827
  %837 = phi i1 [ true, %827 ], [ %835, %832 ]
  %838 = zext i1 %837 to i32
  br label %1092

839:                                              ; preds = %373
  %840 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2
  %841 = bitcast %union.YYSTYPE* %840 to i64*
  %842 = load i64, i64* %841, align 8, !tbaa !10
  %843 = icmp eq i64 %842, 0
  br i1 %843, label %848, label %844

844:                                              ; preds = %839
  %845 = bitcast %union.YYSTYPE* %200 to i64*
  %846 = load i64, i64* %845, align 8, !tbaa !10
  %847 = icmp ne i64 %846, 0
  br label %848

848:                                              ; preds = %844, %839
  %849 = phi i1 [ false, %839 ], [ %847, %844 ]
  %850 = zext i1 %849 to i32
  br label %1092

851:                                              ; preds = %373
  %852 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2
  %853 = bitcast %union.YYSTYPE* %852 to i64*
  %854 = load i64, i64* %853, align 8, !tbaa !10
  %855 = bitcast %union.YYSTYPE* %200 to i64*
  %856 = load i64, i64* %855, align 8, !tbaa !10
  %857 = or i64 %856, %854
  %858 = trunc i64 %857 to i32
  %859 = lshr i64 %857, 32
  br label %1092

860:                                              ; preds = %373
  %861 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2
  %862 = bitcast %union.YYSTYPE* %861 to i64*
  %863 = load i64, i64* %862, align 8, !tbaa !10
  %864 = bitcast %union.YYSTYPE* %200 to i64*
  %865 = load i64, i64* %864, align 8, !tbaa !10
  %866 = xor i64 %865, %863
  %867 = trunc i64 %866 to i32
  %868 = lshr i64 %866, 32
  br label %1092

869:                                              ; preds = %373
  %870 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2
  %871 = bitcast %union.YYSTYPE* %870 to i64*
  %872 = load i64, i64* %871, align 8, !tbaa !10
  %873 = bitcast %union.YYSTYPE* %200 to i64*
  %874 = load i64, i64* %873, align 8, !tbaa !10
  %875 = and i64 %874, %872
  %876 = trunc i64 %875 to i32
  %877 = lshr i64 %875, 32
  br label %1092

878:                                              ; preds = %373
  %879 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2
  %880 = bitcast %union.YYSTYPE* %879 to i64*
  %881 = load i64, i64* %880, align 8, !tbaa !10
  %882 = bitcast %union.YYSTYPE* %200 to i64*
  %883 = load i64, i64* %882, align 8, !tbaa !10
  %884 = icmp eq i64 %881, %883
  %885 = zext i1 %884 to i32
  br label %1092

886:                                              ; preds = %373
  %887 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2
  %888 = bitcast %union.YYSTYPE* %887 to i64*
  %889 = load i64, i64* %888, align 8, !tbaa !10
  %890 = bitcast %union.YYSTYPE* %200 to i64*
  %891 = load i64, i64* %890, align 8, !tbaa !10
  %892 = icmp ne i64 %889, %891
  %893 = zext i1 %892 to i32
  br label %1092

894:                                              ; preds = %373
  %895 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2
  %896 = bitcast %union.YYSTYPE* %895 to i64*
  %897 = load i64, i64* %896, align 8, !tbaa !10
  %898 = bitcast %union.YYSTYPE* %200 to i64*
  %899 = load i64, i64* %898, align 8, !tbaa !10
  %900 = icmp ult i64 %897, %899
  %901 = zext i1 %900 to i32
  br label %1092

902:                                              ; preds = %373
  %903 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2
  %904 = bitcast %union.YYSTYPE* %903 to i64*
  %905 = load i64, i64* %904, align 8, !tbaa !10
  %906 = bitcast %union.YYSTYPE* %200 to i64*
  %907 = load i64, i64* %906, align 8, !tbaa !10
  %908 = icmp ugt i64 %905, %907
  %909 = zext i1 %908 to i32
  br label %1092

910:                                              ; preds = %373
  %911 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2
  %912 = bitcast %union.YYSTYPE* %911 to i64*
  %913 = load i64, i64* %912, align 8, !tbaa !10
  %914 = bitcast %union.YYSTYPE* %200 to i64*
  %915 = load i64, i64* %914, align 8, !tbaa !10
  %916 = icmp ule i64 %913, %915
  %917 = zext i1 %916 to i32
  br label %1092

918:                                              ; preds = %373
  %919 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2
  %920 = bitcast %union.YYSTYPE* %919 to i64*
  %921 = load i64, i64* %920, align 8, !tbaa !10
  %922 = bitcast %union.YYSTYPE* %200 to i64*
  %923 = load i64, i64* %922, align 8, !tbaa !10
  %924 = icmp uge i64 %921, %923
  %925 = zext i1 %924 to i32
  br label %1092

926:                                              ; preds = %373
  %927 = bitcast %union.YYSTYPE* %200 to i64*
  %928 = load i64, i64* %927, align 8, !tbaa !10
  %929 = icmp ult i64 %928, 64
  br i1 %929, label %930, label %935

930:                                              ; preds = %926
  %931 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2
  %932 = bitcast %union.YYSTYPE* %931 to i64*
  %933 = load i64, i64* %932, align 8, !tbaa !10
  %934 = shl i64 %933, %928
  br label %935

935:                                              ; preds = %930, %926
  %936 = phi i64 [ %934, %930 ], [ 0, %926 ]
  %937 = trunc i64 %936 to i32
  %938 = lshr i64 %936, 32
  br label %1092

939:                                              ; preds = %373
  %940 = bitcast %union.YYSTYPE* %200 to i64*
  %941 = load i64, i64* %940, align 8, !tbaa !10
  %942 = icmp ult i64 %941, 64
  br i1 %942, label %943, label %948

943:                                              ; preds = %939
  %944 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2
  %945 = bitcast %union.YYSTYPE* %944 to i64*
  %946 = load i64, i64* %945, align 8, !tbaa !10
  %947 = lshr i64 %946, %941
  br label %948

948:                                              ; preds = %943, %939
  %949 = phi i64 [ %947, %943 ], [ 0, %939 ]
  %950 = trunc i64 %949 to i32
  %951 = lshr i64 %949, 32
  br label %1092

952:                                              ; preds = %373
  %953 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2
  %954 = bitcast %union.YYSTYPE* %953 to i64*
  %955 = load i64, i64* %954, align 8, !tbaa !10
  %956 = bitcast %union.YYSTYPE* %200 to i64*
  %957 = load i64, i64* %956, align 8, !tbaa !10
  %958 = add i64 %957, %955
  %959 = trunc i64 %958 to i32
  %960 = lshr i64 %958, 32
  br label %1092

961:                                              ; preds = %373
  %962 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2
  %963 = bitcast %union.YYSTYPE* %962 to i64*
  %964 = load i64, i64* %963, align 8, !tbaa !10
  %965 = bitcast %union.YYSTYPE* %200 to i64*
  %966 = load i64, i64* %965, align 8, !tbaa !10
  %967 = sub i64 %964, %966
  %968 = trunc i64 %967 to i32
  %969 = lshr i64 %967, 32
  br label %1092

970:                                              ; preds = %373
  %971 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2
  %972 = bitcast %union.YYSTYPE* %971 to i64*
  %973 = load i64, i64* %972, align 8, !tbaa !10
  %974 = bitcast %union.YYSTYPE* %200 to i64*
  %975 = load i64, i64* %974, align 8, !tbaa !10
  %976 = mul i64 %975, %973
  %977 = trunc i64 %976 to i32
  %978 = lshr i64 %976, 32
  br label %1092

979:                                              ; preds = %373
  %980 = bitcast %union.YYSTYPE* %200 to i64*
  %981 = load i64, i64* %980, align 8, !tbaa !10
  %982 = icmp eq i64 %981, 0
  br i1 %982, label %990, label %983

983:                                              ; preds = %979
  %984 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2
  %985 = bitcast %union.YYSTYPE* %984 to i64*
  %986 = load i64, i64* %985, align 8, !tbaa !10
  %987 = udiv i64 %986, %981
  %988 = trunc i64 %987 to i32
  %989 = lshr i64 %987, 32
  br label %1092

990:                                              ; preds = %979
  call void (%struct.srcpos*, i8*, i8*, ...) @srcpos_error(%struct.srcpos* nonnull %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0)) #16
  store i8 1, i8* @treesource_error, align 1, !tbaa !22
  br label %1092

991:                                              ; preds = %373
  %992 = bitcast %union.YYSTYPE* %200 to i64*
  %993 = load i64, i64* %992, align 8, !tbaa !10
  %994 = icmp eq i64 %993, 0
  br i1 %994, label %1002, label %995

995:                                              ; preds = %991
  %996 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -2
  %997 = bitcast %union.YYSTYPE* %996 to i64*
  %998 = load i64, i64* %997, align 8, !tbaa !10
  %999 = urem i64 %998, %993
  %1000 = trunc i64 %999 to i32
  %1001 = lshr i64 %999, 32
  br label %1092

1002:                                             ; preds = %991
  call void (%struct.srcpos*, i8*, i8*, ...) @srcpos_error(%struct.srcpos* nonnull %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0)) #16
  store i8 1, i8* @treesource_error, align 1, !tbaa !22
  br label %1092

1003:                                             ; preds = %373
  %1004 = bitcast %union.YYSTYPE* %200 to i64*
  %1005 = load i64, i64* %1004, align 8, !tbaa !10
  %1006 = sub i64 0, %1005
  %1007 = trunc i64 %1006 to i32
  %1008 = lshr i64 %1006, 32
  br label %1092

1009:                                             ; preds = %373
  %1010 = bitcast %union.YYSTYPE* %200 to i64*
  %1011 = load i64, i64* %1010, align 8, !tbaa !10
  %1012 = xor i64 %1011, -1
  %1013 = trunc i64 %1012 to i32
  %1014 = lshr i64 %1012, 32
  br label %1092

1015:                                             ; preds = %373
  %1016 = bitcast %union.YYSTYPE* %200 to i64*
  %1017 = load i64, i64* %1016, align 8, !tbaa !10
  %1018 = icmp eq i64 %1017, 0
  %1019 = zext i1 %1018 to i32
  br label %1092

1020:                                             ; preds = %373
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %55) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %56, i8 0, i64 24, i1 false)
  call void @data_add_marker(%struct.data* nonnull sret(%struct.data) align 8 %28, %struct.data* nonnull byval(%struct.data) align 8 %29, i32 4, i8* null) #16
  %1021 = load i64, i64* %57, align 8, !tbaa.struct !24
  %1022 = trunc i64 %1021 to i32
  %1023 = lshr i64 %1021, 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %35, i8* noundef nonnull align 8 dereferenceable(16) %59, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %55) #16
  br label %1092

1024:                                             ; preds = %373
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %51) #16
  %1025 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1, i32 0, i32 0
  %1026 = bitcast %union.YYSTYPE* %200 to i8*
  %1027 = load i8, i8* %1026, align 8, !tbaa !10
  call void @data_append_byte(%struct.data* nonnull sret(%struct.data) align 8 %30, %struct.data* nonnull byval(%struct.data) align 8 %1025, i8 zeroext %1027) #16
  %1028 = load i64, i64* %52, align 8, !tbaa.struct !24
  %1029 = trunc i64 %1028 to i32
  %1030 = lshr i64 %1028, 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %35, i8* noundef nonnull align 8 dereferenceable(16) %54, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %51) #16
  br label %1092

1031:                                             ; preds = %373
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %47) #16
  %1032 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1, i32 0, i32 0
  %1033 = bitcast %union.YYSTYPE* %200 to i8**
  %1034 = load i8*, i8** %1033, align 8, !tbaa !10
  call void @data_add_marker(%struct.data* nonnull sret(%struct.data) align 8 %31, %struct.data* nonnull byval(%struct.data) align 8 %1032, i32 3, i8* %1034) #16
  %1035 = load i64, i64* %48, align 8, !tbaa.struct !24
  %1036 = trunc i64 %1035 to i32
  %1037 = lshr i64 %1035, 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %35, i8* noundef nonnull align 8 dereferenceable(16) %50, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %47) #16
  br label %1092

1038:                                             ; preds = %373
  br label %1092

1039:                                             ; preds = %373
  %1040 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1
  %1041 = bitcast %union.YYSTYPE* %1040 to %struct.node**
  %1042 = load %struct.node*, %struct.node** %1041, align 8, !tbaa !10
  %1043 = bitcast %union.YYSTYPE* %200 to %struct.node**
  %1044 = load %struct.node*, %struct.node** %1043, align 8, !tbaa !10
  %1045 = call %struct.node* @chain_node(%struct.node* %1042, %struct.node* %1044) #16
  %1046 = ptrtoint %struct.node* %1045 to i64
  %1047 = trunc i64 %1046 to i32
  %1048 = lshr i64 %1046, 32
  br label %1092

1049:                                             ; preds = %373
  %1050 = sext i8 %302 to i64
  call void (%struct.srcpos*, i8*, i8*, ...) @srcpos_error(%struct.srcpos* %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0)) #16
  store i8 1, i8* @treesource_error, align 1, !tbaa !22
  %1051 = sub nsw i64 0, %1050
  %1052 = getelementptr inbounds i8, i8* %202, i64 %1051
  %1053 = load i32, i32* @yydebug, align 4, !tbaa !3
  %1054 = icmp eq i32 %1053, 0
  br i1 %1054, label %1187, label %1186

1055:                                             ; preds = %373
  %1056 = bitcast %union.YYSTYPE* %200 to %struct.node**
  %1057 = load %struct.node*, %struct.node** %1056, align 8, !tbaa !10
  %1058 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1
  %1059 = bitcast %union.YYSTYPE* %1058 to i8**
  %1060 = load i8*, i8** %1059, align 8, !tbaa !10
  %1061 = call %struct.node* @name_node(%struct.node* %1057, i8* %1060) #16
  %1062 = ptrtoint %struct.node* %1061 to i64
  %1063 = trunc i64 %1062 to i32
  %1064 = lshr i64 %1062, 32
  br label %1092

1065:                                             ; preds = %373
  %1066 = call %struct.node* @build_node_delete(%struct.srcpos* nonnull %5) #16
  %1067 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1
  %1068 = bitcast %union.YYSTYPE* %1067 to i8**
  %1069 = load i8*, i8** %1068, align 8, !tbaa !10
  %1070 = call %struct.node* @name_node(%struct.node* %1066, i8* %1069) #16
  %1071 = ptrtoint %struct.node* %1070 to i64
  %1072 = trunc i64 %1071 to i32
  %1073 = lshr i64 %1071, 32
  br label %1092

1074:                                             ; preds = %373
  %1075 = bitcast %union.YYSTYPE* %200 to %struct.node**
  %1076 = load %struct.node*, %struct.node** %1075, align 8, !tbaa !10
  %1077 = call %struct.node* @omit_node_if_unused(%struct.node* %1076) #16
  %1078 = ptrtoint %struct.node* %1077 to i64
  %1079 = trunc i64 %1078 to i32
  %1080 = lshr i64 %1078, 32
  br label %1092

1081:                                             ; preds = %373
  %1082 = bitcast %union.YYSTYPE* %200 to %struct.node**
  %1083 = load %struct.node*, %struct.node** %1082, align 8, !tbaa !10
  %1084 = getelementptr inbounds %struct.node, %struct.node* %1083, i64 0, i32 11
  %1085 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 -1
  %1086 = bitcast %union.YYSTYPE* %1085 to i8**
  %1087 = load i8*, i8** %1086, align 8, !tbaa !10
  call void @add_label(%struct.label** nonnull %1084, i8* %1087) #16
  %1088 = load %struct.node*, %struct.node** %1082, align 8, !tbaa !10
  %1089 = ptrtoint %struct.node* %1088 to i64
  %1090 = trunc i64 %1089 to i32
  %1091 = lshr i64 %1089, 32
  br label %1092

1092:                                             ; preds = %1081, %1074, %1065, %1055, %1039, %1038, %1031, %1024, %1020, %1015, %1009, %1003, %1002, %995, %990, %983, %970, %961, %952, %948, %935, %918, %910, %902, %894, %886, %878, %869, %860, %851, %848, %836, %816, %810, %803, %797, %775, %755, %748, %730, %722, %721, %714, %705, %696, %668, %662, %656, %650, %639, %631, %623, %614, %604, %603, %592, %587, %568, %550, %518, %485, %453, %434, %427, %416, %405, %395, %394, %392, %386, %385, %384, %374, %373
  %1093 = phi i32 [ %309, %373 ], [ %1090, %1081 ], [ %1079, %1074 ], [ %1072, %1065 ], [ %1063, %1055 ], [ %1047, %1039 ], [ 0, %1038 ], [ %1036, %1031 ], [ %1029, %1024 ], [ %1022, %1020 ], [ %1019, %1015 ], [ %1013, %1009 ], [ %1007, %1003 ], [ 0, %1002 ], [ %1000, %995 ], [ 0, %990 ], [ %988, %983 ], [ %977, %970 ], [ %968, %961 ], [ %959, %952 ], [ %950, %948 ], [ %937, %935 ], [ %925, %918 ], [ %917, %910 ], [ %909, %902 ], [ %901, %894 ], [ %893, %886 ], [ %885, %878 ], [ %876, %869 ], [ %867, %860 ], [ %858, %851 ], [ %850, %848 ], [ %838, %836 ], [ %825, %816 ], [ %814, %810 ], [ %808, %803 ], [ %801, %797 ], [ %781, %775 ], [ %757, %755 ], [ %752, %748 ], [ %735, %730 ], [ %726, %722 ], [ 0, %721 ], [ %719, %714 ], [ %711, %705 ], [ %702, %696 ], [ %675, %668 ], [ %666, %662 ], [ %660, %656 ], [ %654, %650 ], [ %648, %639 ], [ %637, %631 ], [ %629, %623 ], [ %621, %614 ], [ %612, %604 ], [ 0, %603 ], [ %601, %592 ], [ %590, %587 ], [ %571, %568 ], [ %553, %550 ], [ %521, %518 ], [ %488, %485 ], [ %463, %453 ], [ %442, %434 ], [ %432, %427 ], [ %425, %416 ], [ %414, %405 ], [ %403, %395 ], [ 0, %394 ], [ 3, %385 ], [ 1, %384 ], [ %309, %374 ], [ %393, %392 ], [ %388, %386 ]
  %1094 = phi i64 [ %310, %373 ], [ %1091, %1081 ], [ %1080, %1074 ], [ %1073, %1065 ], [ %1064, %1055 ], [ %1048, %1039 ], [ 0, %1038 ], [ %1037, %1031 ], [ %1030, %1024 ], [ %1023, %1020 ], [ 0, %1015 ], [ %1014, %1009 ], [ %1008, %1003 ], [ 0, %1002 ], [ %1001, %995 ], [ 0, %990 ], [ %989, %983 ], [ %978, %970 ], [ %969, %961 ], [ %960, %952 ], [ %951, %948 ], [ %938, %935 ], [ 0, %918 ], [ 0, %910 ], [ 0, %902 ], [ 0, %894 ], [ 0, %886 ], [ 0, %878 ], [ %877, %869 ], [ %868, %860 ], [ %859, %851 ], [ 0, %848 ], [ 0, %836 ], [ %826, %816 ], [ %815, %810 ], [ %809, %803 ], [ %802, %797 ], [ %782, %775 ], [ %758, %755 ], [ %753, %748 ], [ %736, %730 ], [ %727, %722 ], [ 0, %721 ], [ %720, %714 ], [ %712, %705 ], [ %703, %696 ], [ %676, %668 ], [ %667, %662 ], [ %661, %656 ], [ %655, %650 ], [ %649, %639 ], [ %638, %631 ], [ %630, %623 ], [ %622, %614 ], [ %613, %604 ], [ 0, %603 ], [ %602, %592 ], [ %591, %587 ], [ %572, %568 ], [ %554, %550 ], [ %522, %518 ], [ %489, %485 ], [ %464, %453 ], [ %443, %434 ], [ %433, %427 ], [ %426, %416 ], [ %415, %405 ], [ %404, %395 ], [ 0, %394 ], [ %310, %385 ], [ %310, %384 ], [ %310, %374 ], [ %310, %392 ], [ %310, %386 ]
  %1095 = phi i32 [ %314, %373 ], [ %314, %1081 ], [ %314, %1074 ], [ %314, %1065 ], [ %314, %1055 ], [ %314, %1039 ], [ %314, %1038 ], [ %314, %1031 ], [ %314, %1024 ], [ %314, %1020 ], [ %314, %1015 ], [ %314, %1009 ], [ %314, %1003 ], [ %314, %1002 ], [ %314, %995 ], [ %314, %990 ], [ %314, %983 ], [ %314, %970 ], [ %314, %961 ], [ %314, %952 ], [ %314, %948 ], [ %314, %935 ], [ %314, %918 ], [ %314, %910 ], [ %314, %902 ], [ %314, %894 ], [ %314, %886 ], [ %314, %878 ], [ %314, %869 ], [ %314, %860 ], [ %314, %851 ], [ %314, %848 ], [ %314, %836 ], [ %314, %816 ], [ %314, %810 ], [ %314, %803 ], [ %314, %797 ], [ %314, %775 ], [ 32, %755 ], [ %754, %748 ], [ %314, %730 ], [ %314, %722 ], [ %314, %721 ], [ %314, %714 ], [ %314, %705 ], [ %314, %696 ], [ %314, %668 ], [ %314, %662 ], [ %314, %656 ], [ %314, %650 ], [ %314, %639 ], [ %314, %631 ], [ %314, %623 ], [ %314, %614 ], [ %314, %604 ], [ %314, %603 ], [ %314, %592 ], [ %314, %587 ], [ %314, %568 ], [ %314, %550 ], [ %314, %518 ], [ %314, %485 ], [ %314, %453 ], [ %314, %434 ], [ %314, %427 ], [ %314, %416 ], [ %314, %405 ], [ %314, %395 ], [ %314, %394 ], [ %314, %385 ], [ %314, %384 ], [ %314, %374 ], [ %314, %392 ], [ %314, %386 ]
  %1096 = load i32, i32* @yydebug, align 4, !tbaa !3
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1098, label %1106

1098:                                             ; preds = %1092
  %1099 = sub nsw i64 0, %303
  %1100 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 %1099
  %1101 = getelementptr inbounds i8, i8* %202, i64 %1099
  %1102 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %198, i64 %1099
  %1103 = getelementptr inbounds [91 x i8], [91 x i8]* @yyr1, i64 0, i64 %300
  %1104 = load i8, i8* %1103, align 1, !tbaa !10
  %1105 = sext i8 %1104 to i64
  br label %1143

1106:                                             ; preds = %1092
  %1107 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0)) #17
  %1109 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1110 = getelementptr inbounds [91 x i8], [91 x i8]* @yyr1, i64 0, i64 %300
  %1111 = load i8, i8* %1110, align 1, !tbaa !10
  %1112 = icmp eq i32 %299, 0
  %1113 = select i1 %1112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)
  %1114 = sext i8 %1111 to i64
  %1115 = getelementptr inbounds [82 x i8*], [82 x i8*]* @yytname, i64 0, i64 %1114
  %1116 = load i8*, i8** %1115, align 8, !tbaa !7
  %1117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* %1113, i8* %1116) #18
  %1118 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %1109) #18
  %1119 = call i32 @fputc(i32 41, %struct._IO_FILE* %1109) #16
  %1120 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1121 = call i32 @fputc(i32 10, %struct._IO_FILE* %1120)
  %1122 = load i32, i32* @yydebug, align 4, !tbaa !3
  %1123 = sub nsw i64 0, %303
  %1124 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 %1123
  %1125 = getelementptr inbounds i8, i8* %202, i64 %1123
  %1126 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %198, i64 %1123
  %1127 = icmp eq i32 %1122, 0
  br i1 %1127, label %1143, label %1128

1128:                                             ; preds = %1106
  %1129 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1130 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.116, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %1129) #18
  %1131 = icmp ugt i8* %203, %1125
  br i1 %1131, label %1140, label %1132

1132:                                             ; preds = %1132, %1128
  %1133 = phi i8* [ %1138, %1132 ], [ %203, %1128 ]
  %1134 = load i8, i8* %1133, align 1, !tbaa !10
  %1135 = zext i8 %1134 to i32
  %1136 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1137 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i64 0, i64 0), i32 %1135) #18
  %1138 = getelementptr inbounds i8, i8* %1133, i64 1
  %1139 = icmp ugt i8* %1138, %1125
  br i1 %1139, label %1140, label %1132

1140:                                             ; preds = %1132, %1128
  %1141 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1142 = call i32 @fputc(i32 10, %struct._IO_FILE* %1141) #16
  br label %1143

1143:                                             ; preds = %1140, %1106, %1098
  %1144 = phi i64 [ %1105, %1098 ], [ %1114, %1140 ], [ %1114, %1106 ]
  %1145 = phi %struct.srcpos* [ %1102, %1098 ], [ %1126, %1140 ], [ %1126, %1106 ]
  %1146 = phi i8* [ %1101, %1098 ], [ %1125, %1140 ], [ %1125, %1106 ]
  %1147 = phi %union.YYSTYPE* [ %1100, %1098 ], [ %1124, %1140 ], [ %1124, %1106 ]
  %1148 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1147, i64 1
  %1149 = bitcast %union.YYSTYPE* %1148 to i8*
  %1150 = bitcast %union.YYSTYPE* %1148 to i64*
  %1151 = shl nuw i64 %1094, 32
  %1152 = zext i32 %1093 to i64
  %1153 = or i64 %1151, %1152
  store i64 %1153, i64* %1150, align 8, !tbaa.struct !13
  %1154 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1147, i64 1, i32 0, i32 0, i32 1
  %1155 = bitcast i8** %1154 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1155, i8* noundef nonnull align 8 dereferenceable(16) %35, i64 16, i1 false), !tbaa.struct !16
  %1156 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1147, i64 1, i32 0, i32 1
  store i32 %1095, i32* %1156, align 8, !tbaa.struct !17
  %1157 = getelementptr inbounds i8, i8* %1149, i64 28
  %1158 = bitcast i8* %1157 to i32*
  store i32 %317, i32* %1158, align 4, !tbaa.struct !18
  %1159 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %1145, i64 1
  %1160 = bitcast %struct.srcpos* %1159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1160, i8* noundef nonnull align 16 dereferenceable(32) %36, i64 32, i1 false), !tbaa.struct !9
  %1161 = add nsw i64 %1144, -50
  %1162 = getelementptr inbounds [31 x i16], [31 x i16]* @yypgoto, i64 0, i64 %1161
  %1163 = load i16, i16* %1162, align 2, !tbaa !11
  %1164 = sext i16 %1163 to i32
  %1165 = load i8, i8* %1146, align 1, !tbaa !10
  %1166 = zext i8 %1165 to i32
  %1167 = add nsw i32 %1166, %1164
  %1168 = icmp ult i32 %1167, 152
  br i1 %1168, label %1169, label %1179

1169:                                             ; preds = %1143
  %1170 = zext i32 %1167 to i64
  %1171 = getelementptr inbounds [152 x i16], [152 x i16]* @yycheck, i64 0, i64 %1170
  %1172 = load i16, i16* %1171, align 2, !tbaa !11
  %1173 = sext i16 %1172 to i32
  %1174 = icmp eq i32 %1173, %1166
  br i1 %1174, label %1175, label %1179

1175:                                             ; preds = %1169
  %1176 = getelementptr inbounds [152 x i8], [152 x i8]* @yytable, i64 0, i64 %1170
  %1177 = load i8, i8* %1176, align 1, !tbaa !10
  %1178 = zext i8 %1177 to i32
  br label %124

1179:                                             ; preds = %1169, %1143
  %1180 = getelementptr inbounds [31 x i16], [31 x i16]* @yydefgoto, i64 0, i64 %1161
  %1181 = load i16, i16* %1180, align 2, !tbaa !11
  %1182 = sext i16 %1181 to i32
  br label %124

1183:                                             ; preds = %293
  %1184 = load i32, i32* @yynerrs, align 4, !tbaa !3
  %1185 = add nsw i32 %1184, 1
  store i32 %1185, i32* @yynerrs, align 4, !tbaa !3
  call void (%struct.srcpos*, i8*, i8*, ...) @srcpos_error(%struct.srcpos* nonnull @yylloc, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0)) #16
  store i8 1, i8* @treesource_error, align 1, !tbaa !22
  br label %1190

1186:                                             ; preds = %1049
  call fastcc void @yy_stack_print(i8* %203, i8* %1052)
  br label %1187

1187:                                             ; preds = %1186, %1049
  %1188 = load i8, i8* %1052, align 1, !tbaa !10
  %1189 = zext i8 %1188 to i32
  br label %1190

1190:                                             ; preds = %1187, %1183
  %1191 = phi i8* [ %202, %1183 ], [ %1052, %1187 ]
  %1192 = phi i32 [ %138, %1183 ], [ %1189, %1187 ]
  %1193 = icmp eq i8* %1191, %203
  br i1 %1193, label %1248, label %1194

1194:                                             ; preds = %1190
  %1195 = load i32, i32* @yydebug, align 4, !tbaa !3
  br label %1196

1196:                                             ; preds = %1241, %1194
  %1197 = phi i32 [ %1242, %1241 ], [ %1195, %1194 ]
  %1198 = phi i32 [ %1245, %1241 ], [ %1192, %1194 ]
  %1199 = phi i8* [ %1244, %1241 ], [ %1191, %1194 ]
  %1200 = sext i32 %1198 to i64
  %1201 = getelementptr inbounds [162 x i8], [162 x i8]* @yystos, i64 0, i64 %1200
  %1202 = load i8, i8* %1201, align 1, !tbaa !10
  %1203 = icmp eq i32 %1197, 0
  br i1 %1203, label %1204, label %1207

1204:                                             ; preds = %1196
  %1205 = getelementptr inbounds i8, i8* %1199, i64 -1
  %1206 = load i8, i8* %1205, align 1, !tbaa !10
  br label %1241

1207:                                             ; preds = %1196
  %1208 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1208, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0)) #18
  %1210 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1211 = icmp slt i8 %1202, 50
  %1212 = select i1 %1211, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)
  %1213 = sext i8 %1202 to i64
  %1214 = getelementptr inbounds [82 x i8*], [82 x i8*]* @yytname, i64 0, i64 %1213
  %1215 = load i8*, i8** %1214, align 8, !tbaa !7
  %1216 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1210, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* %1212, i8* %1215) #18
  %1217 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %1210) #18
  %1218 = call i32 @fputc(i32 41, %struct._IO_FILE* %1210) #16
  %1219 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1220 = call i32 @fputc(i32 10, %struct._IO_FILE* %1219) #16
  %1221 = load i32, i32* @yydebug, align 4, !tbaa !3
  %1222 = getelementptr inbounds i8, i8* %1199, i64 -1
  %1223 = load i8, i8* %1222, align 1, !tbaa !10
  %1224 = icmp eq i32 %1221, 0
  br i1 %1224, label %1241, label %1225

1225:                                             ; preds = %1207
  %1226 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1227 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.116, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %1226) #18
  %1228 = icmp ugt i8* %203, %1222
  br i1 %1228, label %1237, label %1229

1229:                                             ; preds = %1229, %1225
  %1230 = phi i8* [ %1235, %1229 ], [ %203, %1225 ]
  %1231 = load i8, i8* %1230, align 1, !tbaa !10
  %1232 = zext i8 %1231 to i32
  %1233 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1234 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1233, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i64 0, i64 0), i32 %1232) #18
  %1235 = getelementptr inbounds i8, i8* %1230, i64 1
  %1236 = icmp ugt i8* %1235, %1222
  br i1 %1236, label %1237, label %1229

1237:                                             ; preds = %1229, %1225
  %1238 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1239 = call i32 @fputc(i32 10, %struct._IO_FILE* %1238) #16
  %1240 = load i32, i32* @yydebug, align 4, !tbaa !3
  br label %1241

1241:                                             ; preds = %1237, %1207, %1204
  %1242 = phi i32 [ 0, %1204 ], [ %1240, %1237 ], [ 0, %1207 ]
  %1243 = phi i8 [ %1206, %1204 ], [ %1223, %1237 ], [ %1223, %1207 ]
  %1244 = phi i8* [ %1205, %1204 ], [ %1222, %1237 ], [ %1222, %1207 ]
  %1245 = zext i8 %1243 to i32
  %1246 = icmp eq i8* %1244, %203
  br i1 %1246, label %1248, label %1196

1247:                                             ; preds = %155, %149
  call void (%struct.srcpos*, i8*, i8*, ...) @srcpos_error(%struct.srcpos* nonnull @yylloc, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0)) #16
  store i8 1, i8* @treesource_error, align 1, !tbaa !22
  br label %1248

1248:                                             ; preds = %1247, %1241, %1190, %196, %192
  %1249 = phi i32 [ 2, %1247 ], [ 1, %1190 ], [ 1, %1241 ], [ 1, %192 ], [ 0, %196 ]
  %1250 = phi i8* [ %136, %1247 ], [ %203, %1190 ], [ %203, %1241 ], [ %182, %192 ], [ %202, %196 ]
  %1251 = phi i8* [ %137, %1247 ], [ %203, %1190 ], [ %203, %1241 ], [ %161, %192 ], [ %203, %196 ]
  %1252 = load i32, i32* @yychar, align 4, !tbaa !3
  %1253 = icmp eq i32 %1252, -2
  br i1 %1253, label %1279, label %1254

1254:                                             ; preds = %1248
  %1255 = icmp ult i32 %1252, 282
  br i1 %1255, label %1256, label %1261

1256:                                             ; preds = %1254
  %1257 = zext i32 %1252 to i64
  %1258 = getelementptr inbounds [282 x i8], [282 x i8]* @yytranslate, i64 0, i64 %1257
  %1259 = load i8, i8* %1258, align 1, !tbaa !10
  %1260 = sext i8 %1259 to i32
  br label %1261

1261:                                             ; preds = %1256, %1254
  %1262 = phi i32 [ %1260, %1256 ], [ 2, %1254 ]
  %1263 = load i32, i32* @yydebug, align 4, !tbaa !3
  %1264 = icmp eq i32 %1263, 0
  br i1 %1264, label %1297, label %1265

1265:                                             ; preds = %1261
  %1266 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1267 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1266, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0)) #18
  %1268 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1269 = icmp slt i32 %1262, 50
  %1270 = select i1 %1269, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)
  %1271 = sext i32 %1262 to i64
  %1272 = getelementptr inbounds [82 x i8*], [82 x i8*]* @yytname, i64 0, i64 %1271
  %1273 = load i8*, i8** %1272, align 8, !tbaa !7
  %1274 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1268, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* %1270, i8* %1273) #18
  %1275 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %1268) #18
  %1276 = call i32 @fputc(i32 41, %struct._IO_FILE* %1268) #16
  %1277 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1278 = call i32 @fputc(i32 10, %struct._IO_FILE* %1277) #16
  br label %1279

1279:                                             ; preds = %1265, %1248
  %1280 = load i32, i32* @yydebug, align 4, !tbaa !3
  %1281 = icmp eq i32 %1280, 0
  br i1 %1281, label %1297, label %1282

1282:                                             ; preds = %1279
  %1283 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1284 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.116, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %1283) #18
  %1285 = icmp ugt i8* %1251, %1250
  br i1 %1285, label %1294, label %1286

1286:                                             ; preds = %1286, %1282
  %1287 = phi i8* [ %1292, %1286 ], [ %1251, %1282 ]
  %1288 = load i8, i8* %1287, align 1, !tbaa !10
  %1289 = zext i8 %1288 to i32
  %1290 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1291 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1290, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i64 0, i64 0), i32 %1289) #18
  %1292 = getelementptr inbounds i8, i8* %1287, i64 1
  %1293 = icmp ugt i8* %1292, %1250
  br i1 %1293, label %1294, label %1286

1294:                                             ; preds = %1286, %1282
  %1295 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1296 = call i32 @fputc(i32 10, %struct._IO_FILE* %1295) #16
  br label %1297

1297:                                             ; preds = %1294, %1279, %1261
  %1298 = icmp eq i8* %1250, %1251
  br i1 %1298, label %1328, label %1299

1299:                                             ; preds = %1297
  %1300 = load i32, i32* @yydebug, align 4, !tbaa !3
  br label %1301

1301:                                             ; preds = %1324, %1299
  %1302 = phi i32 [ %1325, %1324 ], [ %1300, %1299 ]
  %1303 = phi i8* [ %1326, %1324 ], [ %1250, %1299 ]
  %1304 = load i8, i8* %1303, align 1, !tbaa !10
  %1305 = zext i8 %1304 to i64
  %1306 = getelementptr inbounds [162 x i8], [162 x i8]* @yystos, i64 0, i64 %1305
  %1307 = load i8, i8* %1306, align 1, !tbaa !10
  %1308 = icmp eq i32 %1302, 0
  br i1 %1308, label %1324, label %1309

1309:                                             ; preds = %1301
  %1310 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1311 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1310, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0)) #18
  %1312 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1313 = icmp slt i8 %1307, 50
  %1314 = select i1 %1313, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)
  %1315 = sext i8 %1307 to i64
  %1316 = getelementptr inbounds [82 x i8*], [82 x i8*]* @yytname, i64 0, i64 %1315
  %1317 = load i8*, i8** %1316, align 8, !tbaa !7
  %1318 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1312, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* %1314, i8* %1317) #18
  %1319 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %1312) #18
  %1320 = call i32 @fputc(i32 41, %struct._IO_FILE* %1312) #16
  %1321 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %1322 = call i32 @fputc(i32 10, %struct._IO_FILE* %1321) #16
  %1323 = load i32, i32* @yydebug, align 4, !tbaa !3
  br label %1324

1324:                                             ; preds = %1309, %1301
  %1325 = phi i32 [ 0, %1301 ], [ %1323, %1309 ]
  %1326 = getelementptr inbounds i8, i8* %1303, i64 -1
  %1327 = icmp eq i8* %1326, %1251
  br i1 %1327, label %1328, label %1301

1328:                                             ; preds = %1324, %1297
  %1329 = icmp eq i8* %1251, %32
  br i1 %1329, label %1331, label %1330

1330:                                             ; preds = %1328
  call void @free(i8* %1251) #16
  br label %1331

1331:                                             ; preds = %1330, %1328
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %36) #16
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %35)
  call void @llvm.lifetime.end.p0i8(i64 6400, i8* nonnull %34) #16
  call void @llvm.lifetime.end.p0i8(i64 6400, i8* nonnull %33) #16
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %32) #16
  ret i32 %1249
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #5

declare dso_local i32 @yylex() local_unnamed_addr #6

declare dso_local %struct.dt_info* @build_dt_info(i32, %struct.reserve_info*, %struct.node*, i32) local_unnamed_addr #6

declare dso_local i32 @guess_boot_cpuid(%struct.node*) local_unnamed_addr #6

declare dso_local void @srcpos_error(%struct.srcpos*, i8*, i8*, ...) local_unnamed_addr #6

declare dso_local %struct.reserve_info* @chain_reserve_entry(%struct.reserve_info*, %struct.reserve_info*) local_unnamed_addr #6

declare dso_local %struct.reserve_info* @build_reserve_entry(i64, i64) local_unnamed_addr #6

declare dso_local void @add_label(%struct.label**, i8*) local_unnamed_addr #6

declare dso_local %struct.node* @name_node(%struct.node*, i8*) local_unnamed_addr #6

declare dso_local %struct.node* @merge_nodes(%struct.node*, %struct.node*) local_unnamed_addr #6

declare dso_local %struct.node* @add_orphan_node(%struct.node*, %struct.node*, i8*) local_unnamed_addr #6

declare dso_local %struct.node* @build_node(%struct.property*, %struct.node*, %struct.srcpos*) local_unnamed_addr #6

declare dso_local %struct.node* @get_node_by_ref(%struct.node*, i8*) local_unnamed_addr #6

declare dso_local void @delete_node(%struct.node*) local_unnamed_addr #6

declare dso_local %struct.node* @omit_node_if_unused(%struct.node*) local_unnamed_addr #6

declare dso_local %struct.property* @chain_property(%struct.property*, %struct.property*) local_unnamed_addr #6

declare dso_local %struct.property* @build_property(i8*, %struct.data* byval(%struct.data) align 8, %struct.srcpos*) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

declare dso_local %struct.property* @build_property_delete(i8*) local_unnamed_addr #6

declare dso_local void @data_merge(%struct.data* sret(%struct.data) align 8, %struct.data* byval(%struct.data) align 8, %struct.data* byval(%struct.data) align 8) local_unnamed_addr #6

declare dso_local void @data_add_marker(%struct.data* sret(%struct.data) align 8, %struct.data* byval(%struct.data) align 8, i32, i8*) local_unnamed_addr #6

declare dso_local %struct._IO_FILE* @srcfile_relative_open(i8*, i8**) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fseek(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint noreturn nounwind uwtable
define internal void @die(i8* nocapture readnone %0, ...) unnamed_addr #8 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #16
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %3)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.115, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %5) #17
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %8 = call i32 @vfprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #17
  call void @llvm.va_end(i8* nonnull %3)
  call void @exit(i32 1) #21
  unreachable
}

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() local_unnamed_addr #10

declare dso_local void @data_copy_file(%struct.data* sret(%struct.data) align 8, %struct._IO_FILE*, i64) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

declare dso_local void @data_append_integer(%struct.data* sret(%struct.data) align 8, %struct.data* byval(%struct.data) align 8, i64, i32) local_unnamed_addr #6

declare dso_local void @data_append_byte(%struct.data* sret(%struct.data) align 8, %struct.data* byval(%struct.data) align 8, i8 zeroext) local_unnamed_addr #6

declare dso_local %struct.node* @chain_node(%struct.node*, %struct.node*) local_unnamed_addr #6

declare dso_local %struct.node* @build_node_delete(%struct.srcpos*) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @yy_stack_print(i8* readonly %0, i8* readnone %1) unnamed_addr #11 {
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.116, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %3) #17
  %5 = icmp ugt i8* %0, %1
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %2
  %7 = phi i8* [ %12, %6 ], [ %0, %2 ]
  %8 = load i8, i8* %7, align 1, !tbaa !10
  %9 = zext i8 %8 to i32
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i64 0, i64 0), i32 %9) #17
  %12 = getelementptr inbounds i8, i8* %7, i64 1
  %13 = icmp ugt i8* %12, %1
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %2
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %16 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @yyerror(i8* %0) local_unnamed_addr #0 {
  tail call void (%struct.srcpos*, i8*, i8*, ...) @srcpos_error(%struct.srcpos* nonnull @yylloc, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %0) #16
  store i8 1, i8* @treesource_error, align 1, !tbaa !22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #12

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @vfprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, %struct.__va_list_tag* noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #12

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #15

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readnone willreturn }
attributes #20 = { noreturn }
attributes #21 = { noreturn nounwind }

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
!9 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 4, !3, i64 16, i64 8, !7, i64 24, i64 8, !7}
!10 = !{!5, !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !5, i64 0}
!13 = !{i64 0, i64 8, !7, i64 0, i64 8, !7, i64 0, i64 1, !10, i64 0, i64 4, !3, i64 8, i64 8, !7, i64 16, i64 8, !7, i64 0, i64 4, !3, i64 8, i64 8, !7, i64 16, i64 8, !7, i64 24, i64 4, !3, i64 0, i64 8, !7, i64 0, i64 8, !7, i64 0, i64 8, !7, i64 0, i64 8, !7, i64 0, i64 8, !7, i64 0, i64 8, !14, i64 0, i64 4, !3}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{i64 0, i64 8, !7, i64 8, i64 8, !7, i64 0, i64 8, !7, i64 8, i64 8, !7, i64 16, i64 4, !3}
!17 = !{i64 0, i64 4, !3}
!18 = !{}
!19 = !{!20, !8, i64 16}
!20 = !{!"srcpos", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !8, i64 16, !8, i64 24}
!21 = !{!20, !8, i64 24}
!22 = !{!23, !23, i64 0}
!23 = !{!"_Bool", !5, i64 0}
!24 = !{i64 0, i64 4, !3, i64 8, i64 8, !7, i64 16, i64 8, !7}
!25 = !{i64 0, i64 8, !7, i64 8, i64 8, !7}
