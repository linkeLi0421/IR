; ModuleID = '/llk/IR/build/scripts/dtc/dtc-lexer.lex.c_pt.bc'
source_filename = "scripts/dtc/dtc-lexer.lex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.yy_buffer_state = type { %struct._IO_FILE*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.srcpos = type { i32, i32, i32, i32, %struct.srcfile_state*, %struct.srcpos* }
%struct.srcfile_state = type { %struct._IO_FILE*, i8*, i8*, i32, i32, %struct.srcfile_state* }
%union.YYSTYPE = type { %struct.anon }
%struct.anon = type { %struct.data, i32 }
%struct.data = type { i32, i8*, %struct.marker* }
%struct.marker = type { i32, i32, i8*, %struct.marker* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@yyin = dso_local local_unnamed_addr global %struct._IO_FILE* null, align 8
@yyout = dso_local local_unnamed_addr global %struct._IO_FILE* null, align 8
@yylineno = dso_local local_unnamed_addr global i32 1, align 4
@yy_flex_debug = dso_local local_unnamed_addr global i32 0, align 4
@yy_init = internal unnamed_addr global i1 false, align 4
@yy_start = internal unnamed_addr global i32 0, align 4
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@yy_buffer_stack = internal unnamed_addr global %struct.yy_buffer_state** null, align 8
@yy_buffer_stack_top = internal unnamed_addr global i64 0, align 8
@yy_c_buf_p = internal unnamed_addr global i8* null, align 8
@yy_hold_char = internal unnamed_addr global i8 0, align 1
@yy_ec = internal unnamed_addr constant [256 x i8] c"\00\01\01\01\01\01\01\01\01\02\03\04\04\04\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\05\06\07\01\01\08\09\01\01\0A\0B\0B\0C\0B\0D\0E\0F\10\10\10\10\10\10\10\10\11\01\12\13\14\0B\0B\15\15\15\15\15\15\16\16\16\16\16\17\16\16\16\16\16\16\16\16\18\16\16\19\16\16\01\1A\1B\01\16\01\15\1C\1D\1E\1F !\16\22\16\16#$%&'\16()*+,\16\19-\16./0\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16
@yy_accept = internal unnamed_addr constant [181 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 33, i16 31, i16 20, i16 20, i16 31, i16 31, i16 31, i16 31, i16 31, i16 31, i16 31, i16 31, i16 31, i16 31, i16 31, i16 31, i16 31, i16 31, i16 17, i16 18, i16 18, i16 31, i16 18, i16 12, i16 12, i16 20, i16 28, i16 0, i16 3, i16 0, i16 29, i16 14, i16 0, i16 0, i16 13, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 23, i16 25, i16 27, i16 26, i16 24, i16 0, i16 11, i16 30, i16 0, i16 0, i16 0, i16 16, i16 16, i16 18, i16 18, i16 18, i16 12, i16 12, i16 12, i16 0, i16 14, i16 0, i16 13, i16 0, i16 0, i16 0, i16 22, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 18, i16 12, i16 12, i16 12, i16 0, i16 15, i16 21, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 18, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 18, i16 7, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 4, i16 19, i16 0, i16 0, i16 0, i16 5, i16 2, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 0, i16 0, i16 0, i16 0, i16 0, i16 6, i16 0, i16 9, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 10, i16 8, i16 0], align 16
@yy_last_accepting_state = internal unnamed_addr global i32 0, align 4
@yy_last_accepting_cpos = internal unnamed_addr global i8* null, align 8
@yy_chk = internal unnamed_addr constant [464 x i16] [i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 3, i16 3, i16 3, i16 3, i16 7, i16 7, i16 7, i16 177, i16 3, i16 11, i16 11, i16 11, i16 18, i16 18, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 8, i16 12, i16 12, i16 12, i16 14, i16 15, i16 16, i16 8, i16 8, i16 8, i16 20, i16 20, i16 23, i16 31, i16 77, i16 29, i16 176, i16 77, i16 29, i16 29, i16 29, i16 36, i16 175, i16 16, i16 14, i16 29, i16 32, i16 32, i16 32, i16 33, i16 33, i16 33, i16 34, i16 34, i16 34, i16 32, i16 32, i16 32, i16 33, i16 33, i16 42, i16 36, i16 44, i16 15, i16 17, i16 23, i16 31, i16 17, i16 140, i16 48, i16 140, i16 67, i16 75, i16 61, i16 67, i16 67, i16 67, i16 42, i16 174, i16 44, i16 48, i16 67, i16 17, i16 173, i16 17, i16 61, i16 61, i16 61, i16 17, i16 75, i16 17, i16 172, i16 17, i16 17, i16 26, i16 26, i16 26, i16 26, i16 93, i16 93, i16 101, i16 26, i16 171, i16 87, i16 69, i16 69, i16 69, i16 101, i16 26, i16 26, i16 26, i16 26, i16 26, i16 69, i16 69, i16 87, i16 87, i16 87, i16 105, i16 118, i16 129, i16 139, i16 105, i16 169, i16 147, i16 150, i16 150, i16 150, i16 156, i16 150, i16 161, i16 167, i16 166, i16 139, i16 139, i16 139, i16 147, i16 147, i16 147, i16 118, i16 129, i16 155, i16 155, i16 155, i16 165, i16 155, i16 164, i16 163, i16 156, i16 160, i16 161, i16 181, i16 181, i16 181, i16 181, i16 181, i16 181, i16 181, i16 181, i16 182, i16 159, i16 158, i16 157, i16 182, i16 182, i16 183, i16 183, i16 183, i16 183, i16 183, i16 183, i16 183, i16 183, i16 184, i16 184, i16 184, i16 184, i16 185, i16 154, i16 185, i16 186, i16 153, i16 152, i16 186, i16 151, i16 186, i16 186, i16 187, i16 149, i16 148, i16 187, i16 187, i16 187, i16 187, i16 188, i16 145, i16 188, i16 188, i16 189, i16 189, i16 189, i16 189, i16 189, i16 189, i16 189, i16 189, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 191, i16 144, i16 191, i16 192, i16 143, i16 192, i16 192, i16 138, i16 192, i16 192, i16 193, i16 193, i16 193, i16 193, i16 193, i16 193, i16 193, i16 193, i16 194, i16 194, i16 194, i16 194, i16 194, i16 194, i16 194, i16 194, i16 137, i16 136, i16 135, i16 134, i16 133, i16 132, i16 131, i16 130, i16 128, i16 127, i16 126, i16 125, i16 124, i16 123, i16 122, i16 120, i16 119, i16 117, i16 116, i16 115, i16 114, i16 113, i16 112, i16 111, i16 110, i16 109, i16 108, i16 107, i16 106, i16 104, i16 103, i16 102, i16 100, i16 99, i16 98, i16 97, i16 96, i16 94, i16 92, i16 90, i16 89, i16 88, i16 86, i16 85, i16 84, i16 83, i16 82, i16 81, i16 80, i16 79, i16 78, i16 76, i16 74, i16 71, i16 70, i16 68, i16 65, i16 63, i16 62, i16 58, i16 52, i16 51, i16 50, i16 49, i16 47, i16 46, i16 45, i16 41, i16 38, i16 24, i16 22, i16 21, i16 19, i16 13, i16 9, i16 6, i16 4, i16 2, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180], align 16
@yy_base = internal unnamed_addr constant [195 x i16] [i16 0, i16 0, i16 407, i16 36, i16 406, i16 68, i16 405, i16 39, i16 110, i16 411, i16 415, i16 56, i16 116, i16 391, i16 115, i16 114, i16 114, i16 151, i16 43, i16 390, i16 108, i16 391, i16 360, i16 127, i16 372, i16 0, i16 177, i16 415, i16 0, i16 125, i16 0, i16 128, i16 129, i16 132, i16 147, i16 415, i16 132, i16 415, i16 402, i16 415, i16 0, i16 391, i16 148, i16 415, i16 150, i16 393, i16 399, i16 367, i16 135, i16 363, i16 368, i16 362, i16 362, i16 415, i16 415, i16 415, i16 415, i16 415, i16 379, i16 415, i16 415, i16 168, i16 361, i16 357, i16 415, i16 376, i16 0, i16 161, i16 358, i16 187, i16 368, i16 367, i16 0, i16 0, i16 341, i16 160, i16 378, i16 121, i16 384, i16 373, i16 343, i16 349, i16 342, i16 353, i16 345, i16 346, i16 336, i16 198, i16 341, i16 348, i16 339, i16 415, i16 352, i16 172, i16 326, i16 415, i16 360, i16 359, i16 330, i16 339, i16 357, i16 169, i16 328, i16 325, i16 333, i16 213, i16 334, i16 329, i16 332, i16 352, i16 348, i16 318, i16 315, i16 324, i16 314, i16 325, i16 343, i16 320, i16 210, i16 351, i16 350, i16 415, i16 320, i16 335, i16 312, i16 318, i16 306, i16 312, i16 308, i16 211, i16 342, i16 340, i16 330, i16 328, i16 327, i16 308, i16 307, i16 305, i16 305, i16 216, i16 128, i16 415, i16 415, i16 302, i16 272, i16 280, i16 415, i16 219, i16 248, i16 245, i16 220, i16 237, i16 242, i16 248, i16 237, i16 236, i16 219, i16 228, i16 220, i16 226, i16 207, i16 221, i16 415, i16 241, i16 230, i16 229, i16 216, i16 197, i16 415, i16 180, i16 415, i16 159, i16 157, i16 138, i16 143, i16 94, i16 120, i16 43, i16 415, i16 415, i16 415, i16 247, i16 253, i16 261, i16 265, i16 269, i16 275, i16 282, i16 286, i16 294, i16 302, i16 306, i16 312, i16 320, i16 328], align 16
@yy_def = internal unnamed_addr constant [195 x i16] [i16 0, i16 180, i16 1, i16 1, i16 3, i16 180, i16 5, i16 1, i16 1, i16 180, i16 180, i16 180, i16 180, i16 180, i16 181, i16 182, i16 183, i16 180, i16 180, i16 180, i16 180, i16 184, i16 180, i16 180, i16 17, i16 185, i16 184, i16 180, i16 186, i16 187, i16 186, i16 186, i16 180, i16 180, i16 180, i16 180, i16 181, i16 180, i16 181, i16 180, i16 188, i16 180, i16 183, i16 180, i16 183, i16 189, i16 190, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 184, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 184, i16 186, i16 187, i16 186, i16 180, i16 180, i16 180, i16 191, i16 188, i16 192, i16 183, i16 189, i16 189, i16 190, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 186, i16 180, i16 180, i16 191, i16 192, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 186, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 193, i16 180, i16 186, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 193, i16 180, i16 193, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 194, i16 180, i16 180, i16 180, i16 180, i16 194, i16 180, i16 194, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 0, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180], align 16
@yy_meta = internal unnamed_addr constant [49 x i8] c"\00\01\01\01\01\01\01\02\03\01\02\02\02\04\05\05\05\06\01\01\01\07\08\08\08\08\01\01\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\03\01\04", align 16
@yy_nxt = internal unnamed_addr constant [464 x i16] [i16 0, i16 10, i16 11, i16 12, i16 11, i16 13, i16 14, i16 10, i16 15, i16 16, i16 10, i16 10, i16 10, i16 17, i16 10, i16 10, i16 10, i16 10, i16 18, i16 19, i16 20, i16 21, i16 21, i16 21, i16 21, i16 21, i16 10, i16 10, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 10, i16 22, i16 10, i16 24, i16 25, i16 25, i16 25, i16 32, i16 33, i16 33, i16 179, i16 26, i16 34, i16 34, i16 34, i16 53, i16 54, i16 27, i16 26, i16 26, i16 26, i16 26, i16 26, i16 10, i16 11, i16 12, i16 11, i16 13, i16 14, i16 28, i16 15, i16 16, i16 28, i16 28, i16 28, i16 24, i16 28, i16 28, i16 28, i16 10, i16 18, i16 19, i16 20, i16 29, i16 29, i16 29, i16 29, i16 29, i16 30, i16 10, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 10, i16 22, i16 10, i16 23, i16 34, i16 34, i16 34, i16 37, i16 39, i16 43, i16 32, i16 33, i16 33, i16 56, i16 57, i16 61, i16 61, i16 77, i16 66, i16 178, i16 96, i16 66, i16 66, i16 66, i16 37, i16 177, i16 44, i16 38, i16 59, i16 69, i16 69, i16 69, i16 69, i16 69, i16 69, i16 34, i16 34, i16 34, i16 70, i16 71, i16 72, i16 70, i16 71, i16 43, i16 38, i16 75, i16 41, i16 45, i16 62, i16 68, i16 46, i16 148, i16 81, i16 149, i16 66, i16 43, i16 61, i16 66, i16 66, i16 66, i16 44, i16 176, i16 44, i16 82, i16 59, i16 47, i16 175, i16 48, i16 87, i16 87, i16 87, i16 49, i16 44, i16 50, i16 174, i16 51, i16 52, i16 65, i16 65, i16 65, i16 59, i16 70, i16 71, i16 113, i16 65, i16 173, i16 105, i16 69, i16 69, i16 69, i16 114, i16 65, i16 65, i16 65, i16 65, i16 65, i16 70, i16 71, i16 87, i16 87, i16 87, i16 105, i16 130, i16 130, i16 139, i16 118, i16 172, i16 139, i16 155, i16 155, i16 155, i16 162, i16 156, i16 162, i16 171, i16 170, i16 147, i16 147, i16 147, i16 147, i16 147, i16 147, i16 131, i16 131, i16 155, i16 155, i16 155, i16 169, i16 156, i16 168, i16 180, i16 163, i16 167, i16 163, i16 36, i16 36, i16 36, i16 36, i16 36, i16 36, i16 36, i16 36, i16 40, i16 166, i16 165, i16 164, i16 40, i16 40, i16 42, i16 42, i16 42, i16 42, i16 42, i16 42, i16 42, i16 42, i16 58, i16 58, i16 58, i16 58, i16 64, i16 160, i16 64, i16 66, i16 159, i16 158, i16 66, i16 157, i16 66, i16 66, i16 67, i16 154, i16 153, i16 67, i16 67, i16 67, i16 67, i16 73, i16 152, i16 73, i16 73, i16 76, i16 76, i16 76, i16 76, i16 76, i16 76, i16 76, i16 76, i16 78, i16 78, i16 78, i16 78, i16 78, i16 78, i16 78, i16 78, i16 93, i16 151, i16 93, i16 94, i16 150, i16 94, i16 94, i16 146, i16 94, i16 94, i16 129, i16 129, i16 129, i16 129, i16 129, i16 129, i16 129, i16 129, i16 161, i16 161, i16 161, i16 161, i16 161, i16 161, i16 161, i16 161, i16 145, i16 144, i16 143, i16 142, i16 141, i16 140, i16 180, i16 139, i16 138, i16 137, i16 136, i16 135, i16 134, i16 133, i16 132, i16 61, i16 61, i16 128, i16 127, i16 126, i16 125, i16 124, i16 123, i16 122, i16 121, i16 45, i16 120, i16 114, i16 119, i16 117, i16 116, i16 115, i16 112, i16 111, i16 110, i16 46, i16 109, i16 95, i16 91, i16 108, i16 107, i16 106, i16 104, i16 103, i16 102, i16 101, i16 100, i16 99, i16 98, i16 97, i16 79, i16 77, i16 95, i16 92, i16 91, i16 90, i16 59, i16 89, i16 88, i16 59, i16 86, i16 85, i16 84, i16 83, i16 80, i16 79, i16 77, i16 74, i16 180, i16 63, i16 60, i16 59, i16 55, i16 35, i16 180, i16 31, i16 23, i16 23, i16 9, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180], align 16
@yytext = dso_local local_unnamed_addr global i8* null, align 8
@yyleng = dso_local local_unnamed_addr global i32 0, align 4
@yylloc = external dso_local global %struct.srcpos, align 8
@.str = private unnamed_addr constant [38 x i8] c"fnstart && fnend && (fnend > fnstart)\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"scripts/dtc/dtc-lexer.lex.c\00", align 1
@__PRETTY_FUNCTION__.yylex = private unnamed_addr constant [16 x i8] c"int yylex(void)\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"nul in line number directive\00", align 1
@yylval = external dso_local local_unnamed_addr global %union.YYSTYPE, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"UL\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Bad integer literal '%s'\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Integer literal '%s' out of range\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"errno == 0\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Empty character literal\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"Character literal has %d characters instead of 1\00", align 1
@yy_n_chars = internal unnamed_addr global i32 0, align 4
@.str.9 = private unnamed_addr constant [51 x i8] c"fatal flex scanner internal error--no action found\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"out of dynamic memory in yy_create_buffer()\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"out of dynamic memory in yy_scan_buffer()\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"out of dynamic memory in yy_scan_bytes()\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"bad buffer in yy_scan_bytes()\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"fatal flex scanner internal error--end of buffer missed\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"fatal error - scanner input buffer overflow\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"input in flex scanner failed\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"out of dynamic memory in yy_get_next_buffer()\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"out of dynamic memory in yyensure_buffer_stack()\00", align 1
@yy_buffer_stack_max = internal unnamed_addr global i64 0, align 8
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@current_srcfile = external dso_local local_unnamed_addr global %struct.srcfile_state*, align 8
@.str.21 = private unnamed_addr constant [14 x i8] c"Lexical error\00", align 1
@treesource_error = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @yylex() local_unnamed_addr #0 {
  %1 = alloca %struct.data, align 8
  %2 = alloca %struct.data, align 8
  %3 = alloca %struct.data, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.data, align 8
  %6 = alloca %struct.data, align 8
  %7 = load i1, i1* @yy_init, align 4
  br i1 %7, label %72, label %8

8:                                                ; preds = %0
  store i1 true, i1* @yy_init, align 4
  %9 = load i32, i32* @yy_start, align 4, !tbaa !3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 1, i32* @yy_start, align 4, !tbaa !3
  br label %12

12:                                               ; preds = %11, %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8, !tbaa !7
  %14 = icmp eq %struct._IO_FILE* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !7
  store %struct._IO_FILE* %16, %struct._IO_FILE** @yyin, align 8, !tbaa !7
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi %struct._IO_FILE* [ %16, %15 ], [ %13, %12 ]
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8, !tbaa !7
  %20 = icmp eq %struct._IO_FILE* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !7
  store %struct._IO_FILE* %22, %struct._IO_FILE** @yyout, align 8, !tbaa !7
  br label %23

23:                                               ; preds = %21, %17
  %24 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %25 = icmp eq %struct.yy_buffer_state** %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %28 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %24, i64 %27
  %29 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %28, align 8, !tbaa !7
  %30 = icmp eq %struct.yy_buffer_state* %29, null
  br i1 %30, label %37, label %59

31:                                               ; preds = %23
  %32 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #21
  store i8* %32, i8** bitcast (%struct.yy_buffer_state*** @yy_buffer_stack to i8**), align 8, !tbaa !7
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  tail call fastcc void @yy_fatal_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i64 0, i64 0)) #22
  unreachable

35:                                               ; preds = %31
  %36 = bitcast i8* %32 to i64*
  store i64 0, i64* %36, align 16
  store i64 1, i64* @yy_buffer_stack_max, align 8, !tbaa !9
  store i64 0, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  br label %53

37:                                               ; preds = %26
  %38 = load i64, i64* @yy_buffer_stack_max, align 8, !tbaa !9
  %39 = add i64 %38, -1
  %40 = icmp ult i64 %27, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %37
  %42 = add i64 %38, 8
  %43 = bitcast %struct.yy_buffer_state** %24 to i8*
  %44 = shl i64 %42, 3
  %45 = tail call align 16 i8* @realloc(i8* nonnull %43, i64 %44) #21
  store i8* %45, i8** bitcast (%struct.yy_buffer_state*** @yy_buffer_stack to i8**), align 8, !tbaa !7
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  tail call fastcc void @yy_fatal_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i64 0, i64 0)) #22
  unreachable

48:                                               ; preds = %41
  %49 = bitcast i8* %45 to %struct.yy_buffer_state**
  %50 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %49, i64 %38
  %51 = bitcast %struct.yy_buffer_state** %50 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %51, i8 0, i64 64, i1 false) #21
  store i64 %42, i64* @yy_buffer_stack_max, align 8, !tbaa !9
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8, !tbaa !7
  br label %53

53:                                               ; preds = %48, %37, %35
  %54 = phi %struct._IO_FILE* [ %18, %35 ], [ %18, %37 ], [ %52, %48 ]
  %55 = tail call %struct.yy_buffer_state* @yy_create_buffer(%struct._IO_FILE* %54, i32 16384)
  %56 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %57 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %58 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %56, i64 %57
  store %struct.yy_buffer_state* %55, %struct.yy_buffer_state** %58, align 8, !tbaa !7
  br label %59

59:                                               ; preds = %53, %26
  %60 = phi %struct.yy_buffer_state* [ %55, %53 ], [ %29, %26 ]
  %61 = phi i64 [ %57, %53 ], [ %27, %26 ]
  %62 = phi %struct.yy_buffer_state** [ %56, %53 ], [ %24, %26 ]
  %63 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %62, i64 %61
  %64 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %60, i64 0, i32 4
  %65 = load i32, i32* %64, align 4, !tbaa !11
  store i32 %65, i32* @yy_n_chars, align 4, !tbaa !3
  %66 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %60, i64 0, i32 2
  %67 = load i8*, i8** %66, align 8, !tbaa !13
  store i8* %67, i8** @yy_c_buf_p, align 8, !tbaa !7
  store i8* %67, i8** @yytext, align 8, !tbaa !7
  %68 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %63, align 8, !tbaa !7
  %69 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %68, i64 0, i32 0
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %69, align 8, !tbaa !14
  store %struct._IO_FILE* %70, %struct._IO_FILE** @yyin, align 8, !tbaa !7
  %71 = load i8, i8* %67, align 1, !tbaa !15
  store i8 %71, i8* @yy_hold_char, align 1, !tbaa !15
  br label %72

72:                                               ; preds = %59, %0
  %73 = bitcast %struct.data* %1 to i8*
  %74 = bitcast %struct.data* %2 to i8*
  %75 = getelementptr inbounds %struct.data, %struct.data* %1, i64 0, i32 1
  %76 = getelementptr inbounds %struct.data, %struct.data* %1, i64 0, i32 0
  br label %77

77:                                               ; preds = %306, %72
  %78 = load i8*, i8** @yy_c_buf_p, align 8, !tbaa !7
  %79 = load i8, i8* @yy_hold_char, align 1, !tbaa !15
  store i8 %79, i8* %78, align 1, !tbaa !15
  %80 = load i32, i32* @yy_start, align 4, !tbaa !3
  %81 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %82 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %83 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %81, i64 %82
  %84 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %83, align 8, !tbaa !7
  %85 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %84, i64 0, i32 7
  %86 = load i32, i32* %85, align 8, !tbaa !16
  %87 = add nsw i32 %86, %80
  br label %94

88:                                               ; preds = %1491
  %89 = sext i16 %1494 to i32
  br label %90

90:                                               ; preds = %1426, %1033, %88
  %91 = phi i8* [ %1416, %1426 ], [ %932, %1033 ], [ %1416, %88 ]
  %92 = phi i8* [ %1434, %1426 ], [ %1035, %1033 ], [ %1434, %88 ]
  %93 = phi i32 [ %1442, %1426 ], [ %1034, %1033 ], [ %89, %88 ]
  br label %94

94:                                               ; preds = %90, %77
  %95 = phi i8* [ %78, %77 ], [ %91, %90 ]
  %96 = phi i8* [ %78, %77 ], [ %92, %90 ]
  %97 = phi i32 [ %87, %77 ], [ %93, %90 ]
  br label %98

98:                                               ; preds = %141, %94
  %99 = phi i8* [ %96, %94 ], [ %146, %141 ]
  %100 = phi i32 [ %97, %94 ], [ %145, %141 ]
  %101 = load i8, i8* %99, align 1, !tbaa !15
  %102 = zext i8 %101 to i64
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* @yy_ec, i64 0, i64 %102
  %104 = load i8, i8* %103, align 1, !tbaa !15
  %105 = sext i32 %100 to i64
  %106 = getelementptr inbounds [181 x i16], [181 x i16]* @yy_accept, i64 0, i64 %105
  %107 = load i16, i16* %106, align 2, !tbaa !17
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %98
  store i32 %100, i32* @yy_last_accepting_state, align 4, !tbaa !3
  store i8* %99, i8** @yy_last_accepting_cpos, align 8, !tbaa !7
  br label %110

110:                                              ; preds = %109, %98
  %111 = getelementptr inbounds [195 x i16], [195 x i16]* @yy_base, i64 0, i64 %105
  %112 = load i16, i16* %111, align 2, !tbaa !17
  %113 = sext i16 %112 to i64
  %114 = zext i8 %104 to i64
  %115 = add nsw i64 %113, %114
  %116 = getelementptr inbounds [464 x i16], [464 x i16]* @yy_chk, i64 0, i64 %115
  %117 = load i16, i16* %116, align 2, !tbaa !17
  %118 = sext i16 %117 to i32
  %119 = icmp eq i32 %100, %118
  br i1 %119, label %141, label %120

120:                                              ; preds = %130, %110
  %121 = phi i64 [ %136, %130 ], [ %114, %110 ]
  %122 = phi i64 [ %132, %130 ], [ %105, %110 ]
  %123 = phi i8 [ %131, %130 ], [ %104, %110 ]
  %124 = getelementptr inbounds [195 x i16], [195 x i16]* @yy_def, i64 0, i64 %122
  %125 = load i16, i16* %124, align 2, !tbaa !17
  %126 = icmp sgt i16 %125, 180
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = getelementptr inbounds [49 x i8], [49 x i8]* @yy_meta, i64 0, i64 %121
  %129 = load i8, i8* %128, align 1, !tbaa !15
  br label %130

130:                                              ; preds = %127, %120
  %131 = phi i8 [ %129, %127 ], [ %123, %120 ]
  %132 = sext i16 %125 to i64
  %133 = getelementptr inbounds [195 x i16], [195 x i16]* @yy_base, i64 0, i64 %132
  %134 = load i16, i16* %133, align 2, !tbaa !17
  %135 = sext i16 %134 to i64
  %136 = zext i8 %131 to i64
  %137 = add nsw i64 %135, %136
  %138 = getelementptr inbounds [464 x i16], [464 x i16]* @yy_chk, i64 0, i64 %137
  %139 = load i16, i16* %138, align 2, !tbaa !17
  %140 = icmp eq i16 %125, %139
  br i1 %140, label %141, label %120

141:                                              ; preds = %130, %110
  %142 = phi i64 [ %115, %110 ], [ %137, %130 ]
  %143 = getelementptr inbounds [464 x i16], [464 x i16]* @yy_nxt, i64 0, i64 %142
  %144 = load i16, i16* %143, align 2, !tbaa !17
  %145 = sext i16 %144 to i32
  %146 = getelementptr inbounds i8, i8* %99, i64 1
  %147 = icmp eq i16 %144, 180
  br i1 %147, label %148, label %98

148:                                              ; preds = %141
  %149 = load i8*, i8** @yy_last_accepting_cpos, align 8, !tbaa !7
  %150 = load i32, i32* @yy_last_accepting_state, align 4, !tbaa !3
  br label %151

151:                                              ; preds = %1509, %148
  %152 = phi i8* [ %95, %148 ], [ %1510, %1509 ]
  %153 = phi i8* [ %149, %148 ], [ %1511, %1509 ]
  %154 = phi i32 [ %150, %148 ], [ %1512, %1509 ]
  %155 = ptrtoint i8* %152 to i64
  br label %156

156:                                              ; preds = %169, %151
  %157 = phi i8* [ %171, %169 ], [ %153, %151 ]
  %158 = phi i32 [ %172, %169 ], [ %154, %151 ]
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [181 x i16], [181 x i16]* @yy_accept, i64 0, i64 %159
  %161 = load i16, i16* %160, align 2, !tbaa !17
  %162 = sext i16 %161 to i32
  store i8* %152, i8** @yytext, align 8, !tbaa !7
  %163 = ptrtoint i8* %157 to i64
  %164 = sub i64 %163, %155
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* @yyleng, align 4, !tbaa !3
  %166 = load i8, i8* %157, align 1, !tbaa !15
  store i8 %166, i8* @yy_hold_char, align 1, !tbaa !15
  store i8 0, i8* %157, align 1, !tbaa !15
  store i8* %157, i8** @yy_c_buf_p, align 8, !tbaa !7
  br label %167

167:                                              ; preds = %1572, %156
  %168 = phi i32 [ %162, %156 ], [ %1577, %1572 ]
  switch i32 %168, label %1578 [
    i32 0, label %169
    i32 1, label %175
    i32 2, label %203
    i32 34, label %268
    i32 35, label %268
    i32 36, label %268
    i32 37, label %268
    i32 3, label %307
    i32 4, label %329
    i32 5, label %346
    i32 6, label %363
    i32 7, label %380
    i32 8, label %397
    i32 9, label %414
    i32 10, label %431
    i32 11, label %448
    i32 12, label %471
    i32 13, label %508
    i32 14, label %544
    i32 15, label %564
    i32 16, label %589
    i32 17, label %609
    i32 18, label %626
    i32 19, label %649
    i32 20, label %666
    i32 21, label %683
    i32 22, label %700
    i32 23, label %717
    i32 24, label %734
    i32 25, label %751
    i32 26, label %768
    i32 27, label %785
    i32 28, label %802
    i32 29, label %819
    i32 30, label %836
    i32 31, label %853
    i32 32, label %877
    i32 33, label %899
  ]

169:                                              ; preds = %167
  %170 = load i8, i8* @yy_hold_char, align 1, !tbaa !15
  store i8 %170, i8* %157, align 1, !tbaa !15
  %171 = load i8*, i8** @yy_last_accepting_cpos, align 8, !tbaa !7
  %172 = load i32, i32* @yy_last_accepting_state, align 4, !tbaa !3
  br label %156

173:                                              ; preds = %1565
  %174 = sext i16 %1568 to i32
  br label %1509

175:                                              ; preds = %167
  %176 = load i32, i32* @yyleng, align 4, !tbaa !3
  %177 = icmp sgt i32 %176, 0
  %178 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %177, label %179, label %191

179:                                              ; preds = %175
  %180 = add nsw i32 %176, -1
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %178, i64 %181
  %183 = load i8, i8* %182, align 1, !tbaa !15
  %184 = icmp eq i8 %183, 10
  %185 = zext i1 %184 to i32
  %186 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %187 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %188 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %186, i64 %187
  %189 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %188, align 8, !tbaa !7
  %190 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %189, i64 0, i32 7
  store i32 %185, i32* %190, align 8, !tbaa !16
  br label %191

191:                                              ; preds = %179, %175
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %178, i32 %176) #21
  %192 = load i8*, i8** @yytext, align 8, !tbaa !7
  %193 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %192, i32 34) #23
  %194 = getelementptr inbounds i8, i8* %193, i64 1
  %195 = load i32, i32* @yyleng, align 4, !tbaa !3
  %196 = add nsw i32 %195, -1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %192, i64 %197
  store i8 0, i8* %198, align 1, !tbaa !15
  call void @srcfile_push(i8* nonnull %194) #21
  %199 = load %struct.srcfile_state*, %struct.srcfile_state** @current_srcfile, align 8, !tbaa !7
  %200 = getelementptr inbounds %struct.srcfile_state, %struct.srcfile_state* %199, i64 0, i32 0
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** %200, align 8, !tbaa !19
  store %struct._IO_FILE* %201, %struct._IO_FILE** @yyin, align 8, !tbaa !7
  %202 = call %struct.yy_buffer_state* @yy_create_buffer(%struct._IO_FILE* %201, i32 16384) #21
  call void @yypush_buffer_state(%struct.yy_buffer_state* %202) #21
  br label %306

203:                                              ; preds = %167
  %204 = load i32, i32* @yyleng, align 4, !tbaa !3
  %205 = icmp sgt i32 %204, 0
  %206 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %205, label %207, label %219

207:                                              ; preds = %203
  %208 = add nsw i32 %204, -1
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %206, i64 %209
  %211 = load i8, i8* %210, align 1, !tbaa !15
  %212 = icmp eq i8 %211, 10
  %213 = zext i1 %212 to i32
  %214 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %215 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %216 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %214, i64 %215
  %217 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %216, align 8, !tbaa !7
  %218 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %217, i64 0, i32 7
  store i32 %213, i32* %218, align 8, !tbaa !16
  br label %219

219:                                              ; preds = %207, %203
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %206, i32 %204) #21
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %73) #21
  %220 = load i8*, i8** @yytext, align 8, !tbaa !7
  %221 = tail call i16** @__ctype_b_loc() #24
  %222 = load i16*, i16** %221, align 8, !tbaa !7
  br label %223

223:                                              ; preds = %223, %219
  %224 = phi i8* [ %220, %219 ], [ %231, %223 ]
  %225 = load i8, i8* %224, align 1, !tbaa !15
  %226 = zext i8 %225 to i64
  %227 = getelementptr inbounds i16, i16* %222, i64 %226
  %228 = load i16, i16* %227, align 2, !tbaa !17
  %229 = and i16 %228, 2048
  %230 = icmp eq i16 %229, 0
  %231 = getelementptr inbounds i8, i8* %224, i64 1
  br i1 %230, label %223, label %232

232:                                              ; preds = %223
  %233 = load i32, i32* @yyleng, align 4, !tbaa !3
  %234 = sext i32 %233 to i64
  %235 = call i8* @memchr(i8* %220, i32 34, i64 %234) #23
  %236 = getelementptr inbounds i8, i8* %220, i64 %234
  br label %237

237:                                              ; preds = %237, %232
  %238 = phi i8* [ %236, %232 ], [ %239, %237 ]
  %239 = getelementptr inbounds i8, i8* %238, i64 -1
  %240 = load i8, i8* %239, align 1, !tbaa !15
  %241 = icmp eq i8 %240, 34
  br i1 %241, label %242, label %237

242:                                              ; preds = %237
  %243 = icmp ne i8* %235, null
  %244 = icmp ugt i8* %239, %235
  %245 = and i1 %243, %244
  br i1 %245, label %247, label %246

246:                                              ; preds = %242
  call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 938, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__PRETTY_FUNCTION__.yylex, i64 0, i64 0)) #22
  unreachable

247:                                              ; preds = %242
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %74) #21
  %248 = getelementptr inbounds i8, i8* %235, i64 1
  %249 = ptrtoint i8* %239 to i64
  %250 = ptrtoint i8* %235 to i64
  %251 = xor i64 %250, -1
  %252 = add i64 %249, %251
  %253 = trunc i64 %252 to i32
  call void @data_copy_escape_string(%struct.data* nonnull sret(%struct.data) align 8 %2, i8* nonnull %248, i32 %253) #21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %73, i8* noundef nonnull align 8 dereferenceable(24) %74, i64 24, i1 false), !tbaa.struct !21
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %74) #21
  %254 = load i8*, i8** %75, align 8, !tbaa !22
  %255 = load i32, i32* %76, align 8, !tbaa !24
  %256 = add i32 %255, -1
  %257 = zext i32 %256 to i64
  %258 = call i8* @memchr(i8* %254, i32 0, i64 %257) #23
  %259 = icmp eq i8* %258, null
  br i1 %259, label %262, label %260

260:                                              ; preds = %247
  call void (i8*, ...) @lexical_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %261 = load i8*, i8** %75, align 8, !tbaa !22
  br label %262

262:                                              ; preds = %260, %247
  %263 = phi i8* [ %261, %260 ], [ %254, %247 ]
  %264 = call i8* @xstrdup(i8* %263) #21
  %265 = call i64 @strtol(i8* nocapture nonnull %224, i8** null, i32 10) #21
  %266 = trunc i64 %265 to i32
  %267 = add nsw i32 %266, -1
  call void @srcpos_set_line(i8* %264, i32 %267) #21
  call void @data_free(%struct.data* nonnull byval(%struct.data) align 8 %1) #21
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %73) #21
  br label %306

268:                                              ; preds = %167, %167, %167, %167
  %269 = call zeroext i1 @srcfile_pop() #21
  br i1 %269, label %270, label %1579

270:                                              ; preds = %268
  %271 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %272 = icmp eq %struct.yy_buffer_state** %271, null
  br i1 %272, label %302, label %273

273:                                              ; preds = %270
  %274 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %275 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %271, i64 %274
  %276 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %275, align 8, !tbaa !7
  %277 = icmp eq %struct.yy_buffer_state* %276, null
  br i1 %277, label %302, label %278

278:                                              ; preds = %273
  store %struct.yy_buffer_state* null, %struct.yy_buffer_state** %275, align 8, !tbaa !7
  %279 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %276, i64 0, i32 5
  %280 = load i32, i32* %279, align 8, !tbaa !25
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %276, i64 0, i32 1
  %284 = load i8*, i8** %283, align 8, !tbaa !26
  call void @free(i8* %284) #21
  br label %285

285:                                              ; preds = %282, %278
  %286 = bitcast %struct.yy_buffer_state* %276 to i8*
  call void @free(i8* %286) #21
  store %struct.yy_buffer_state* null, %struct.yy_buffer_state** %275, align 8, !tbaa !7
  %287 = icmp eq i64 %274, 0
  br i1 %287, label %302, label %288

288:                                              ; preds = %285
  %289 = add i64 %274, -1
  store i64 %289, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %290 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %271, i64 %289
  %291 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %290, align 8, !tbaa !7
  %292 = icmp eq %struct.yy_buffer_state* %291, null
  br i1 %292, label %302, label %293

293:                                              ; preds = %288
  %294 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %291, i64 0, i32 4
  %295 = load i32, i32* %294, align 4, !tbaa !11
  store i32 %295, i32* @yy_n_chars, align 4, !tbaa !3
  %296 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %291, i64 0, i32 2
  %297 = load i8*, i8** %296, align 8, !tbaa !13
  store i8* %297, i8** @yy_c_buf_p, align 8, !tbaa !7
  store i8* %297, i8** @yytext, align 8, !tbaa !7
  %298 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %290, align 8, !tbaa !7
  %299 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %298, i64 0, i32 0
  %300 = load %struct._IO_FILE*, %struct._IO_FILE** %299, align 8, !tbaa !14
  store %struct._IO_FILE* %300, %struct._IO_FILE** @yyin, align 8, !tbaa !7
  %301 = load i8, i8* %297, align 1, !tbaa !15
  store i8 %301, i8* @yy_hold_char, align 1, !tbaa !15
  br label %302

302:                                              ; preds = %293, %288, %285, %273, %270
  %303 = load %struct.srcfile_state*, %struct.srcfile_state** @current_srcfile, align 8, !tbaa !7
  %304 = getelementptr inbounds %struct.srcfile_state, %struct.srcfile_state* %303, i64 0, i32 0
  %305 = load %struct._IO_FILE*, %struct._IO_FILE** %304, align 8, !tbaa !19
  store %struct._IO_FILE* %305, %struct._IO_FILE** @yyin, align 8, !tbaa !7
  br label %306

306:                                              ; preds = %1404, %893, %716, %699, %682, %302, %262, %191
  br label %77

307:                                              ; preds = %167
  %308 = load i32, i32* @yyleng, align 4, !tbaa !3
  %309 = icmp sgt i32 %308, 0
  %310 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %309, label %311, label %323

311:                                              ; preds = %307
  %312 = add nsw i32 %308, -1
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds i8, i8* %310, i64 %313
  %315 = load i8, i8* %314, align 1, !tbaa !15
  %316 = icmp eq i8 %315, 10
  %317 = zext i1 %316 to i32
  %318 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %319 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %320 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %318, i64 %319
  %321 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %320, align 8, !tbaa !7
  %322 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %321, i64 0, i32 7
  store i32 %317, i32* %322, align 8, !tbaa !16
  br label %323

323:                                              ; preds = %311, %307
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %310, i32 %308) #21
  %324 = bitcast %struct.data* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %324) #21
  %325 = load i8*, i8** @yytext, align 8, !tbaa !7
  %326 = getelementptr inbounds i8, i8* %325, i64 1
  %327 = load i32, i32* @yyleng, align 4, !tbaa !3
  %328 = add nsw i32 %327, -2
  call void @data_copy_escape_string(%struct.data* nonnull sret(%struct.data) align 8 %3, i8* nonnull %326, i32 %328) #21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) bitcast (%union.YYSTYPE* @yylval to i8*), i8* noundef nonnull align 8 dereferenceable(24) %324, i64 24, i1 false), !tbaa.struct !21
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %324) #21
  br label %1579

329:                                              ; preds = %167
  %330 = load i32, i32* @yyleng, align 4, !tbaa !3
  %331 = icmp sgt i32 %330, 0
  %332 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %331, label %333, label %345

333:                                              ; preds = %329
  %334 = add nsw i32 %330, -1
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds i8, i8* %332, i64 %335
  %337 = load i8, i8* %336, align 1, !tbaa !15
  %338 = icmp eq i8 %337, 10
  %339 = zext i1 %338 to i32
  %340 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %341 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %342 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %340, i64 %341
  %343 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %342, align 8, !tbaa !7
  %344 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %343, i64 0, i32 7
  store i32 %339, i32* %344, align 8, !tbaa !16
  br label %345

345:                                              ; preds = %333, %329
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %332, i32 %330) #21
  store i32 7, i32* @yy_start, align 4, !tbaa !3
  br label %1579

346:                                              ; preds = %167
  %347 = load i32, i32* @yyleng, align 4, !tbaa !3
  %348 = icmp sgt i32 %347, 0
  %349 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %348, label %350, label %362

350:                                              ; preds = %346
  %351 = add nsw i32 %347, -1
  %352 = zext i32 %351 to i64
  %353 = getelementptr inbounds i8, i8* %349, i64 %352
  %354 = load i8, i8* %353, align 1, !tbaa !15
  %355 = icmp eq i8 %354, 10
  %356 = zext i1 %355 to i32
  %357 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %358 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %359 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %357, i64 %358
  %360 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %359, align 8, !tbaa !7
  %361 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %360, i64 0, i32 7
  store i32 %356, i32* %361, align 8, !tbaa !16
  br label %362

362:                                              ; preds = %350, %346
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %349, i32 %347) #21
  br label %1579

363:                                              ; preds = %167
  %364 = load i32, i32* @yyleng, align 4, !tbaa !3
  %365 = icmp sgt i32 %364, 0
  %366 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %365, label %367, label %379

367:                                              ; preds = %363
  %368 = add nsw i32 %364, -1
  %369 = zext i32 %368 to i64
  %370 = getelementptr inbounds i8, i8* %366, i64 %369
  %371 = load i8, i8* %370, align 1, !tbaa !15
  %372 = icmp eq i8 %371, 10
  %373 = zext i1 %372 to i32
  %374 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %375 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %376 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %374, i64 %375
  %377 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %376, align 8, !tbaa !7
  %378 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %377, i64 0, i32 7
  store i32 %373, i32* %378, align 8, !tbaa !16
  br label %379

379:                                              ; preds = %367, %363
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %366, i32 %364) #21
  store i32 7, i32* @yy_start, align 4, !tbaa !3
  br label %1579

380:                                              ; preds = %167
  %381 = load i32, i32* @yyleng, align 4, !tbaa !3
  %382 = icmp sgt i32 %381, 0
  %383 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %382, label %384, label %396

384:                                              ; preds = %380
  %385 = add nsw i32 %381, -1
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds i8, i8* %383, i64 %386
  %388 = load i8, i8* %387, align 1, !tbaa !15
  %389 = icmp eq i8 %388, 10
  %390 = zext i1 %389 to i32
  %391 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %392 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %393 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %391, i64 %392
  %394 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %393, align 8, !tbaa !7
  %395 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %394, i64 0, i32 7
  store i32 %390, i32* %395, align 8, !tbaa !16
  br label %396

396:                                              ; preds = %384, %380
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %383, i32 %381) #21
  store i32 7, i32* @yy_start, align 4, !tbaa !3
  br label %1579

397:                                              ; preds = %167
  %398 = load i32, i32* @yyleng, align 4, !tbaa !3
  %399 = icmp sgt i32 %398, 0
  %400 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %399, label %401, label %413

401:                                              ; preds = %397
  %402 = add nsw i32 %398, -1
  %403 = zext i32 %402 to i64
  %404 = getelementptr inbounds i8, i8* %400, i64 %403
  %405 = load i8, i8* %404, align 1, !tbaa !15
  %406 = icmp eq i8 %405, 10
  %407 = zext i1 %406 to i32
  %408 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %409 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %410 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %408, i64 %409
  %411 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %410, align 8, !tbaa !7
  %412 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %411, i64 0, i32 7
  store i32 %407, i32* %412, align 8, !tbaa !16
  br label %413

413:                                              ; preds = %401, %397
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %400, i32 %398) #21
  store i32 5, i32* @yy_start, align 4, !tbaa !3
  br label %1579

414:                                              ; preds = %167
  %415 = load i32, i32* @yyleng, align 4, !tbaa !3
  %416 = icmp sgt i32 %415, 0
  %417 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %416, label %418, label %430

418:                                              ; preds = %414
  %419 = add nsw i32 %415, -1
  %420 = zext i32 %419 to i64
  %421 = getelementptr inbounds i8, i8* %417, i64 %420
  %422 = load i8, i8* %421, align 1, !tbaa !15
  %423 = icmp eq i8 %422, 10
  %424 = zext i1 %423 to i32
  %425 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %426 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %427 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %425, i64 %426
  %428 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %427, align 8, !tbaa !7
  %429 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %428, i64 0, i32 7
  store i32 %424, i32* %429, align 8, !tbaa !16
  br label %430

430:                                              ; preds = %418, %414
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %417, i32 %415) #21
  store i32 5, i32* @yy_start, align 4, !tbaa !3
  br label %1579

431:                                              ; preds = %167
  %432 = load i32, i32* @yyleng, align 4, !tbaa !3
  %433 = icmp sgt i32 %432, 0
  %434 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %433, label %435, label %447

435:                                              ; preds = %431
  %436 = add nsw i32 %432, -1
  %437 = zext i32 %436 to i64
  %438 = getelementptr inbounds i8, i8* %434, i64 %437
  %439 = load i8, i8* %438, align 1, !tbaa !15
  %440 = icmp eq i8 %439, 10
  %441 = zext i1 %440 to i32
  %442 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %443 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %444 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %442, i64 %443
  %445 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %444, align 8, !tbaa !7
  %446 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %445, i64 0, i32 7
  store i32 %441, i32* %446, align 8, !tbaa !16
  br label %447

447:                                              ; preds = %435, %431
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %434, i32 %432) #21
  store i32 5, i32* @yy_start, align 4, !tbaa !3
  br label %1579

448:                                              ; preds = %167
  %449 = load i32, i32* @yyleng, align 4, !tbaa !3
  %450 = icmp sgt i32 %449, 0
  %451 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %450, label %452, label %464

452:                                              ; preds = %448
  %453 = add nsw i32 %449, -1
  %454 = zext i32 %453 to i64
  %455 = getelementptr inbounds i8, i8* %451, i64 %454
  %456 = load i8, i8* %455, align 1, !tbaa !15
  %457 = icmp eq i8 %456, 10
  %458 = zext i1 %457 to i32
  %459 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %460 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %461 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %459, i64 %460
  %462 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %461, align 8, !tbaa !7
  %463 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %462, i64 0, i32 7
  store i32 %458, i32* %463, align 8, !tbaa !16
  br label %464

464:                                              ; preds = %452, %448
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %451, i32 %449) #21
  %465 = load i8*, i8** @yytext, align 8, !tbaa !7
  %466 = call i8* @xstrdup(i8* %465) #21
  store i8* %466, i8** bitcast (%union.YYSTYPE* @yylval to i8**), align 8, !tbaa !15
  %467 = load i32, i32* @yyleng, align 4, !tbaa !3
  %468 = add nsw i32 %467, -1
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i8, i8* %466, i64 %469
  store i8 0, i8* %470, align 1, !tbaa !15
  br label %1579

471:                                              ; preds = %167
  %472 = load i32, i32* @yyleng, align 4, !tbaa !3
  %473 = icmp sgt i32 %472, 0
  %474 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %473, label %475, label %487

475:                                              ; preds = %471
  %476 = add nsw i32 %472, -1
  %477 = zext i32 %476 to i64
  %478 = getelementptr inbounds i8, i8* %474, i64 %477
  %479 = load i8, i8* %478, align 1, !tbaa !15
  %480 = icmp eq i8 %479, 10
  %481 = zext i1 %480 to i32
  %482 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %483 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %484 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %482, i64 %483
  %485 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %484, align 8, !tbaa !7
  %486 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %485, i64 0, i32 7
  store i32 %481, i32* %486, align 8, !tbaa !16
  br label %487

487:                                              ; preds = %475, %471
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %474, i32 %472) #21
  %488 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %488) #21
  %489 = tail call i32* @__errno_location() #24
  store i32 0, i32* %489, align 4, !tbaa !3
  %490 = load i8*, i8** @yytext, align 8, !tbaa !7
  %491 = call i64 @strtoull(i8* %490, i8** nonnull %4, i32 0) #21
  store i64 %491, i64* bitcast (%union.YYSTYPE* @yylval to i64*), align 8, !tbaa !15
  %492 = load i8*, i8** %4, align 8, !tbaa !7
  %493 = load i8, i8* %492, align 1, !tbaa !15
  %494 = icmp eq i8 %493, 0
  br i1 %494, label %502, label %495

495:                                              ; preds = %487
  %496 = call i64 @strspn(i8* nonnull %492, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #23
  %497 = getelementptr inbounds i8, i8* %492, i64 %496
  %498 = load i8, i8* %497, align 1, !tbaa !15
  %499 = icmp eq i8 %498, 0
  br i1 %499, label %502, label %500

500:                                              ; preds = %495
  %501 = load i8*, i8** @yytext, align 8, !tbaa !7
  call void (i8*, ...) @lexical_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %501)
  br label %502

502:                                              ; preds = %500, %495, %487
  %503 = load i32, i32* %489, align 4, !tbaa !3
  switch i32 %503, label %506 [
    i32 34, label %504
    i32 0, label %507
  ]

504:                                              ; preds = %502
  %505 = load i8*, i8** @yytext, align 8, !tbaa !7
  call void (i8*, ...) @lexical_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %505)
  br label %507

506:                                              ; preds = %502
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 1060, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__PRETTY_FUNCTION__.yylex, i64 0, i64 0)) #22
  unreachable

507:                                              ; preds = %504, %502
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %488) #21
  br label %1579

508:                                              ; preds = %167
  %509 = load i32, i32* @yyleng, align 4, !tbaa !3
  %510 = icmp sgt i32 %509, 0
  %511 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %510, label %512, label %524

512:                                              ; preds = %508
  %513 = add nsw i32 %509, -1
  %514 = zext i32 %513 to i64
  %515 = getelementptr inbounds i8, i8* %511, i64 %514
  %516 = load i8, i8* %515, align 1, !tbaa !15
  %517 = icmp eq i8 %516, 10
  %518 = zext i1 %517 to i32
  %519 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %520 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %521 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %519, i64 %520
  %522 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %521, align 8, !tbaa !7
  %523 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %522, i64 0, i32 7
  store i32 %518, i32* %523, align 8, !tbaa !16
  br label %524

524:                                              ; preds = %512, %508
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %511, i32 %509) #21
  %525 = bitcast %struct.data* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %525) #21
  %526 = bitcast %struct.data* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %526) #21
  %527 = load i8*, i8** @yytext, align 8, !tbaa !7
  %528 = getelementptr inbounds i8, i8* %527, i64 1
  %529 = load i32, i32* @yyleng, align 4, !tbaa !3
  %530 = add nsw i32 %529, -2
  call void @data_copy_escape_string(%struct.data* nonnull sret(%struct.data) align 8 %6, i8* nonnull %528, i32 %530) #21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %525, i8* noundef nonnull align 8 dereferenceable(24) %526, i64 24, i1 false), !tbaa.struct !21
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %526) #21
  %531 = getelementptr inbounds %struct.data, %struct.data* %5, i64 0, i32 0
  %532 = load i32, i32* %531, align 8, !tbaa !24
  %533 = icmp eq i32 %532, 1
  br i1 %533, label %534, label %535

534:                                              ; preds = %524
  call void (i8*, ...) @lexical_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  store i64 0, i64* bitcast (%union.YYSTYPE* @yylval to i64*), align 8, !tbaa !15
  br label %543

535:                                              ; preds = %524
  %536 = getelementptr inbounds %struct.data, %struct.data* %5, i64 0, i32 1
  %537 = load i8*, i8** %536, align 8, !tbaa !22
  %538 = load i8, i8* %537, align 1, !tbaa !15
  %539 = zext i8 %538 to i64
  store i64 %539, i64* bitcast (%union.YYSTYPE* @yylval to i64*), align 8, !tbaa !15
  %540 = icmp ugt i32 %532, 2
  br i1 %540, label %541, label %543

541:                                              ; preds = %535
  %542 = add i32 %532, -1
  call void (i8*, ...) @lexical_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %542)
  br label %543

543:                                              ; preds = %541, %535, %534
  call void @data_free(%struct.data* nonnull byval(%struct.data) align 8 %5) #21
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %525) #21
  br label %1579

544:                                              ; preds = %167
  %545 = load i32, i32* @yyleng, align 4, !tbaa !3
  %546 = icmp sgt i32 %545, 0
  %547 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %546, label %548, label %560

548:                                              ; preds = %544
  %549 = add nsw i32 %545, -1
  %550 = zext i32 %549 to i64
  %551 = getelementptr inbounds i8, i8* %547, i64 %550
  %552 = load i8, i8* %551, align 1, !tbaa !15
  %553 = icmp eq i8 %552, 10
  %554 = zext i1 %553 to i32
  %555 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %556 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %557 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %555, i64 %556
  %558 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %557, align 8, !tbaa !7
  %559 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %558, i64 0, i32 7
  store i32 %554, i32* %559, align 8, !tbaa !16
  br label %560

560:                                              ; preds = %548, %544
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %547, i32 %545) #21
  %561 = load i8*, i8** @yytext, align 8, !tbaa !7
  %562 = getelementptr inbounds i8, i8* %561, i64 1
  %563 = call i8* @xstrdup(i8* nonnull %562) #21
  store i8* %563, i8** bitcast (%union.YYSTYPE* @yylval to i8**), align 8, !tbaa !15
  br label %1579

564:                                              ; preds = %167
  %565 = load i32, i32* @yyleng, align 4, !tbaa !3
  %566 = icmp sgt i32 %565, 0
  %567 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %566, label %568, label %580

568:                                              ; preds = %564
  %569 = add nsw i32 %565, -1
  %570 = zext i32 %569 to i64
  %571 = getelementptr inbounds i8, i8* %567, i64 %570
  %572 = load i8, i8* %571, align 1, !tbaa !15
  %573 = icmp eq i8 %572, 10
  %574 = zext i1 %573 to i32
  %575 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %576 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %577 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %575, i64 %576
  %578 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %577, align 8, !tbaa !7
  %579 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %578, i64 0, i32 7
  store i32 %574, i32* %579, align 8, !tbaa !16
  br label %580

580:                                              ; preds = %568, %564
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %567, i32 %565) #21
  %581 = load i8*, i8** @yytext, align 8, !tbaa !7
  %582 = load i32, i32* @yyleng, align 4, !tbaa !3
  %583 = add nsw i32 %582, -1
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds i8, i8* %581, i64 %584
  store i8 0, i8* %585, align 1, !tbaa !15
  %586 = load i8*, i8** @yytext, align 8, !tbaa !7
  %587 = getelementptr inbounds i8, i8* %586, i64 2
  %588 = call i8* @xstrdup(i8* nonnull %587) #21
  store i8* %588, i8** bitcast (%union.YYSTYPE* @yylval to i8**), align 8, !tbaa !15
  br label %1579

589:                                              ; preds = %167
  %590 = load i32, i32* @yyleng, align 4, !tbaa !3
  %591 = icmp sgt i32 %590, 0
  %592 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %591, label %593, label %605

593:                                              ; preds = %589
  %594 = add nsw i32 %590, -1
  %595 = zext i32 %594 to i64
  %596 = getelementptr inbounds i8, i8* %592, i64 %595
  %597 = load i8, i8* %596, align 1, !tbaa !15
  %598 = icmp eq i8 %597, 10
  %599 = zext i1 %598 to i32
  %600 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %601 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %602 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %600, i64 %601
  %603 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %602, align 8, !tbaa !7
  %604 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %603, i64 0, i32 7
  store i32 %599, i32* %604, align 8, !tbaa !16
  br label %605

605:                                              ; preds = %593, %589
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %592, i32 %590) #21
  %606 = load i8*, i8** @yytext, align 8, !tbaa !7
  %607 = call i64 @strtol(i8* nocapture %606, i8** null, i32 16) #21
  %608 = trunc i64 %607 to i8
  store i8 %608, i8* bitcast (%union.YYSTYPE* @yylval to i8*), align 8, !tbaa !15
  br label %1579

609:                                              ; preds = %167
  %610 = load i32, i32* @yyleng, align 4, !tbaa !3
  %611 = icmp sgt i32 %610, 0
  %612 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %611, label %613, label %625

613:                                              ; preds = %609
  %614 = add nsw i32 %610, -1
  %615 = zext i32 %614 to i64
  %616 = getelementptr inbounds i8, i8* %612, i64 %615
  %617 = load i8, i8* %616, align 1, !tbaa !15
  %618 = icmp eq i8 %617, 10
  %619 = zext i1 %618 to i32
  %620 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %621 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %622 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %620, i64 %621
  %623 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %622, align 8, !tbaa !7
  %624 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %623, i64 0, i32 7
  store i32 %619, i32* %624, align 8, !tbaa !16
  br label %625

625:                                              ; preds = %613, %609
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %612, i32 %610) #21
  store i32 7, i32* @yy_start, align 4, !tbaa !3
  br label %1579

626:                                              ; preds = %167
  %627 = load i32, i32* @yyleng, align 4, !tbaa !3
  %628 = icmp sgt i32 %627, 0
  %629 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %628, label %630, label %642

630:                                              ; preds = %626
  %631 = add nsw i32 %627, -1
  %632 = zext i32 %631 to i64
  %633 = getelementptr inbounds i8, i8* %629, i64 %632
  %634 = load i8, i8* %633, align 1, !tbaa !15
  %635 = icmp eq i8 %634, 10
  %636 = zext i1 %635 to i32
  %637 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %638 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %639 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %637, i64 %638
  %640 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %639, align 8, !tbaa !7
  %641 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %640, i64 0, i32 7
  store i32 %636, i32* %641, align 8, !tbaa !16
  br label %642

642:                                              ; preds = %630, %626
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %629, i32 %627) #21
  %643 = load i8*, i8** @yytext, align 8, !tbaa !7
  %644 = load i8, i8* %643, align 1, !tbaa !15
  %645 = icmp eq i8 %644, 92
  %646 = zext i1 %645 to i64
  %647 = getelementptr i8, i8* %643, i64 %646
  %648 = call i8* @xstrdup(i8* %647) #21
  store i8* %648, i8** bitcast (%union.YYSTYPE* @yylval to i8**), align 8, !tbaa !15
  store i32 7, i32* @yy_start, align 4, !tbaa !3
  br label %1579

649:                                              ; preds = %167
  %650 = load i32, i32* @yyleng, align 4, !tbaa !3
  %651 = icmp sgt i32 %650, 0
  %652 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %651, label %653, label %665

653:                                              ; preds = %649
  %654 = add nsw i32 %650, -1
  %655 = zext i32 %654 to i64
  %656 = getelementptr inbounds i8, i8* %652, i64 %655
  %657 = load i8, i8* %656, align 1, !tbaa !15
  %658 = icmp eq i8 %657, 10
  %659 = zext i1 %658 to i32
  %660 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %661 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %662 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %660, i64 %661
  %663 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %662, align 8, !tbaa !7
  %664 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %663, i64 0, i32 7
  store i32 %659, i32* %664, align 8, !tbaa !16
  br label %665

665:                                              ; preds = %653, %649
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %652, i32 %650) #21
  br label %1579

666:                                              ; preds = %167
  %667 = load i32, i32* @yyleng, align 4, !tbaa !3
  %668 = icmp sgt i32 %667, 0
  %669 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %668, label %670, label %682

670:                                              ; preds = %666
  %671 = add nsw i32 %667, -1
  %672 = zext i32 %671 to i64
  %673 = getelementptr inbounds i8, i8* %669, i64 %672
  %674 = load i8, i8* %673, align 1, !tbaa !15
  %675 = icmp eq i8 %674, 10
  %676 = zext i1 %675 to i32
  %677 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %678 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %679 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %677, i64 %678
  %680 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %679, align 8, !tbaa !7
  %681 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %680, i64 0, i32 7
  store i32 %676, i32* %681, align 8, !tbaa !16
  br label %682

682:                                              ; preds = %670, %666
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %669, i32 %667) #21
  br label %306

683:                                              ; preds = %167
  %684 = load i32, i32* @yyleng, align 4, !tbaa !3
  %685 = icmp sgt i32 %684, 0
  %686 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %685, label %687, label %699

687:                                              ; preds = %683
  %688 = add nsw i32 %684, -1
  %689 = zext i32 %688 to i64
  %690 = getelementptr inbounds i8, i8* %686, i64 %689
  %691 = load i8, i8* %690, align 1, !tbaa !15
  %692 = icmp eq i8 %691, 10
  %693 = zext i1 %692 to i32
  %694 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %695 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %696 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %694, i64 %695
  %697 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %696, align 8, !tbaa !7
  %698 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %697, i64 0, i32 7
  store i32 %693, i32* %698, align 8, !tbaa !16
  br label %699

699:                                              ; preds = %687, %683
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %686, i32 %684) #21
  br label %306

700:                                              ; preds = %167
  %701 = load i32, i32* @yyleng, align 4, !tbaa !3
  %702 = icmp sgt i32 %701, 0
  %703 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %702, label %704, label %716

704:                                              ; preds = %700
  %705 = add nsw i32 %701, -1
  %706 = zext i32 %705 to i64
  %707 = getelementptr inbounds i8, i8* %703, i64 %706
  %708 = load i8, i8* %707, align 1, !tbaa !15
  %709 = icmp eq i8 %708, 10
  %710 = zext i1 %709 to i32
  %711 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %712 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %713 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %711, i64 %712
  %714 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %713, align 8, !tbaa !7
  %715 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %714, i64 0, i32 7
  store i32 %710, i32* %715, align 8, !tbaa !16
  br label %716

716:                                              ; preds = %704, %700
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %703, i32 %701) #21
  br label %306

717:                                              ; preds = %167
  %718 = load i32, i32* @yyleng, align 4, !tbaa !3
  %719 = icmp sgt i32 %718, 0
  %720 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %719, label %721, label %733

721:                                              ; preds = %717
  %722 = add nsw i32 %718, -1
  %723 = zext i32 %722 to i64
  %724 = getelementptr inbounds i8, i8* %720, i64 %723
  %725 = load i8, i8* %724, align 1, !tbaa !15
  %726 = icmp eq i8 %725, 10
  %727 = zext i1 %726 to i32
  %728 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %729 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %730 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %728, i64 %729
  %731 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %730, align 8, !tbaa !7
  %732 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %731, i64 0, i32 7
  store i32 %727, i32* %732, align 8, !tbaa !16
  br label %733

733:                                              ; preds = %721, %717
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %720, i32 %718) #21
  br label %1579

734:                                              ; preds = %167
  %735 = load i32, i32* @yyleng, align 4, !tbaa !3
  %736 = icmp sgt i32 %735, 0
  %737 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %736, label %738, label %750

738:                                              ; preds = %734
  %739 = add nsw i32 %735, -1
  %740 = zext i32 %739 to i64
  %741 = getelementptr inbounds i8, i8* %737, i64 %740
  %742 = load i8, i8* %741, align 1, !tbaa !15
  %743 = icmp eq i8 %742, 10
  %744 = zext i1 %743 to i32
  %745 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %746 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %747 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %745, i64 %746
  %748 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %747, align 8, !tbaa !7
  %749 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %748, i64 0, i32 7
  store i32 %744, i32* %749, align 8, !tbaa !16
  br label %750

750:                                              ; preds = %738, %734
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %737, i32 %735) #21
  br label %1579

751:                                              ; preds = %167
  %752 = load i32, i32* @yyleng, align 4, !tbaa !3
  %753 = icmp sgt i32 %752, 0
  %754 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %753, label %755, label %767

755:                                              ; preds = %751
  %756 = add nsw i32 %752, -1
  %757 = zext i32 %756 to i64
  %758 = getelementptr inbounds i8, i8* %754, i64 %757
  %759 = load i8, i8* %758, align 1, !tbaa !15
  %760 = icmp eq i8 %759, 10
  %761 = zext i1 %760 to i32
  %762 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %763 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %764 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %762, i64 %763
  %765 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %764, align 8, !tbaa !7
  %766 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %765, i64 0, i32 7
  store i32 %761, i32* %766, align 8, !tbaa !16
  br label %767

767:                                              ; preds = %755, %751
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %754, i32 %752) #21
  br label %1579

768:                                              ; preds = %167
  %769 = load i32, i32* @yyleng, align 4, !tbaa !3
  %770 = icmp sgt i32 %769, 0
  %771 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %770, label %772, label %784

772:                                              ; preds = %768
  %773 = add nsw i32 %769, -1
  %774 = zext i32 %773 to i64
  %775 = getelementptr inbounds i8, i8* %771, i64 %774
  %776 = load i8, i8* %775, align 1, !tbaa !15
  %777 = icmp eq i8 %776, 10
  %778 = zext i1 %777 to i32
  %779 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %780 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %781 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %779, i64 %780
  %782 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %781, align 8, !tbaa !7
  %783 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %782, i64 0, i32 7
  store i32 %778, i32* %783, align 8, !tbaa !16
  br label %784

784:                                              ; preds = %772, %768
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %771, i32 %769) #21
  br label %1579

785:                                              ; preds = %167
  %786 = load i32, i32* @yyleng, align 4, !tbaa !3
  %787 = icmp sgt i32 %786, 0
  %788 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %787, label %789, label %801

789:                                              ; preds = %785
  %790 = add nsw i32 %786, -1
  %791 = zext i32 %790 to i64
  %792 = getelementptr inbounds i8, i8* %788, i64 %791
  %793 = load i8, i8* %792, align 1, !tbaa !15
  %794 = icmp eq i8 %793, 10
  %795 = zext i1 %794 to i32
  %796 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %797 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %798 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %796, i64 %797
  %799 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %798, align 8, !tbaa !7
  %800 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %799, i64 0, i32 7
  store i32 %795, i32* %800, align 8, !tbaa !16
  br label %801

801:                                              ; preds = %789, %785
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %788, i32 %786) #21
  br label %1579

802:                                              ; preds = %167
  %803 = load i32, i32* @yyleng, align 4, !tbaa !3
  %804 = icmp sgt i32 %803, 0
  %805 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %804, label %806, label %818

806:                                              ; preds = %802
  %807 = add nsw i32 %803, -1
  %808 = zext i32 %807 to i64
  %809 = getelementptr inbounds i8, i8* %805, i64 %808
  %810 = load i8, i8* %809, align 1, !tbaa !15
  %811 = icmp eq i8 %810, 10
  %812 = zext i1 %811 to i32
  %813 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %814 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %815 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %813, i64 %814
  %816 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %815, align 8, !tbaa !7
  %817 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %816, i64 0, i32 7
  store i32 %812, i32* %817, align 8, !tbaa !16
  br label %818

818:                                              ; preds = %806, %802
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %805, i32 %803) #21
  br label %1579

819:                                              ; preds = %167
  %820 = load i32, i32* @yyleng, align 4, !tbaa !3
  %821 = icmp sgt i32 %820, 0
  %822 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %821, label %823, label %835

823:                                              ; preds = %819
  %824 = add nsw i32 %820, -1
  %825 = zext i32 %824 to i64
  %826 = getelementptr inbounds i8, i8* %822, i64 %825
  %827 = load i8, i8* %826, align 1, !tbaa !15
  %828 = icmp eq i8 %827, 10
  %829 = zext i1 %828 to i32
  %830 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %831 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %832 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %830, i64 %831
  %833 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %832, align 8, !tbaa !7
  %834 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %833, i64 0, i32 7
  store i32 %829, i32* %834, align 8, !tbaa !16
  br label %835

835:                                              ; preds = %823, %819
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %822, i32 %820) #21
  br label %1579

836:                                              ; preds = %167
  %837 = load i32, i32* @yyleng, align 4, !tbaa !3
  %838 = icmp sgt i32 %837, 0
  %839 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %838, label %840, label %852

840:                                              ; preds = %836
  %841 = add nsw i32 %837, -1
  %842 = zext i32 %841 to i64
  %843 = getelementptr inbounds i8, i8* %839, i64 %842
  %844 = load i8, i8* %843, align 1, !tbaa !15
  %845 = icmp eq i8 %844, 10
  %846 = zext i1 %845 to i32
  %847 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %848 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %849 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %847, i64 %848
  %850 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %849, align 8, !tbaa !7
  %851 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %850, i64 0, i32 7
  store i32 %846, i32* %851, align 8, !tbaa !16
  br label %852

852:                                              ; preds = %840, %836
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %839, i32 %837) #21
  br label %1579

853:                                              ; preds = %167
  %854 = load i32, i32* @yyleng, align 4, !tbaa !3
  %855 = icmp sgt i32 %854, 0
  %856 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %855, label %857, label %869

857:                                              ; preds = %853
  %858 = add nsw i32 %854, -1
  %859 = zext i32 %858 to i64
  %860 = getelementptr inbounds i8, i8* %856, i64 %859
  %861 = load i8, i8* %860, align 1, !tbaa !15
  %862 = icmp eq i8 %861, 10
  %863 = zext i1 %862 to i32
  %864 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %865 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %866 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %864, i64 %865
  %867 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %866, align 8, !tbaa !7
  %868 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %867, i64 0, i32 7
  store i32 %863, i32* %868, align 8, !tbaa !16
  br label %869

869:                                              ; preds = %857, %853
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %856, i32 %854) #21
  %870 = load i8*, i8** @yytext, align 8, !tbaa !7
  %871 = load i8, i8* %870, align 1, !tbaa !15
  switch i8 %871, label %875 [
    i8 91, label %873
    i8 123, label %872
    i8 59, label %872
  ]

872:                                              ; preds = %869, %869
  br label %873

873:                                              ; preds = %872, %869
  %874 = phi i32 [ 5, %872 ], [ 3, %869 ]
  store i32 %874, i32* @yy_start, align 4, !tbaa !3
  br label %875

875:                                              ; preds = %873, %869
  %876 = sext i8 %871 to i32
  br label %1579

877:                                              ; preds = %167
  %878 = load i32, i32* @yyleng, align 4, !tbaa !3
  %879 = icmp sgt i32 %878, 0
  %880 = load i8*, i8** @yytext, align 8, !tbaa !7
  br i1 %879, label %881, label %893

881:                                              ; preds = %877
  %882 = add nsw i32 %878, -1
  %883 = zext i32 %882 to i64
  %884 = getelementptr inbounds i8, i8* %880, i64 %883
  %885 = load i8, i8* %884, align 1, !tbaa !15
  %886 = icmp eq i8 %885, 10
  %887 = zext i1 %886 to i32
  %888 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %889 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %890 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %888, i64 %889
  %891 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %890, align 8, !tbaa !7
  %892 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %891, i64 0, i32 7
  store i32 %887, i32* %892, align 8, !tbaa !16
  br label %893

893:                                              ; preds = %881, %877
  call void @srcpos_update(%struct.srcpos* nonnull @yylloc, i8* %880, i32 %878) #21
  %894 = load i8*, i8** @yytext, align 8, !tbaa !7
  %895 = load i32, i32* @yyleng, align 4, !tbaa !3
  %896 = sext i32 %895 to i64
  %897 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8, !tbaa !7
  %898 = call i64 @fwrite(i8* %894, i64 %896, i64 1, %struct._IO_FILE* %897)
  br label %306

899:                                              ; preds = %167
  %900 = load i8*, i8** @yytext, align 8, !tbaa !7
  %901 = load i8, i8* @yy_hold_char, align 1, !tbaa !15
  store i8 %901, i8* %157, align 1, !tbaa !15
  %902 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %903 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %904 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %902, i64 %903
  %905 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %904, align 8, !tbaa !7
  %906 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %905, i64 0, i32 11
  %907 = load i32, i32* %906, align 8, !tbaa !27
  %908 = icmp eq i32 %907, 0
  br i1 %908, label %911, label %909

909:                                              ; preds = %899
  %910 = load i32, i32* @yy_n_chars, align 4, !tbaa !3
  br label %918

911:                                              ; preds = %899
  %912 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %905, i64 0, i32 4
  %913 = load i32, i32* %912, align 4, !tbaa !11
  store i32 %913, i32* @yy_n_chars, align 4, !tbaa !3
  %914 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8, !tbaa !7
  %915 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %905, i64 0, i32 0
  store %struct._IO_FILE* %914, %struct._IO_FILE** %915, align 8, !tbaa !14
  %916 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %904, align 8, !tbaa !7
  %917 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %916, i64 0, i32 11
  store i32 1, i32* %917, align 8, !tbaa !27
  br label %918

918:                                              ; preds = %911, %909
  %919 = phi i32 [ %913, %911 ], [ %910, %909 ]
  %920 = phi %struct.yy_buffer_state* [ %916, %911 ], [ %905, %909 ]
  %921 = load i8*, i8** @yy_c_buf_p, align 8, !tbaa !7
  %922 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %920, i64 0, i32 1
  %923 = load i8*, i8** %922, align 8, !tbaa !26
  %924 = sext i32 %919 to i64
  %925 = getelementptr inbounds i8, i8* %923, i64 %924
  %926 = icmp ugt i8* %921, %925
  br i1 %926, label %1039, label %927

927:                                              ; preds = %918
  %928 = ptrtoint i8* %157 to i64
  %929 = ptrtoint i8* %900 to i64
  %930 = sub i64 %928, %929
  %931 = trunc i64 %930 to i32
  %932 = load i8*, i8** @yytext, align 8, !tbaa !7
  %933 = shl i64 %930, 32
  %934 = add i64 %933, -4294967296
  %935 = ashr exact i64 %934, 32
  %936 = getelementptr inbounds i8, i8* %932, i64 %935
  store i8* %936, i8** @yy_c_buf_p, align 8, !tbaa !7
  %937 = load i32, i32* @yy_start, align 4, !tbaa !3
  %938 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %920, i64 0, i32 7
  %939 = load i32, i32* %938, align 8, !tbaa !16
  %940 = add nsw i32 %939, %937
  %941 = icmp sgt i32 %931, 1
  br i1 %941, label %942, label %998

942:                                              ; preds = %989, %927
  %943 = phi i8* [ %994, %989 ], [ %932, %927 ]
  %944 = phi i32 [ %993, %989 ], [ %940, %927 ]
  %945 = load i8, i8* %943, align 1, !tbaa !15
  %946 = icmp eq i8 %945, 0
  br i1 %946, label %951, label %947

947:                                              ; preds = %942
  %948 = zext i8 %945 to i64
  %949 = getelementptr inbounds [256 x i8], [256 x i8]* @yy_ec, i64 0, i64 %948
  %950 = load i8, i8* %949, align 1, !tbaa !15
  br label %951

951:                                              ; preds = %947, %942
  %952 = phi i8 [ %950, %947 ], [ 1, %942 ]
  %953 = sext i32 %944 to i64
  %954 = getelementptr inbounds [181 x i16], [181 x i16]* @yy_accept, i64 0, i64 %953
  %955 = load i16, i16* %954, align 2, !tbaa !17
  %956 = icmp eq i16 %955, 0
  br i1 %956, label %958, label %957

957:                                              ; preds = %951
  store i32 %944, i32* @yy_last_accepting_state, align 4, !tbaa !3
  store i8* %943, i8** @yy_last_accepting_cpos, align 8, !tbaa !7
  br label %958

958:                                              ; preds = %957, %951
  %959 = getelementptr inbounds [195 x i16], [195 x i16]* @yy_base, i64 0, i64 %953
  %960 = load i16, i16* %959, align 2, !tbaa !17
  %961 = sext i16 %960 to i64
  %962 = zext i8 %952 to i64
  %963 = add nsw i64 %961, %962
  %964 = getelementptr inbounds [464 x i16], [464 x i16]* @yy_chk, i64 0, i64 %963
  %965 = load i16, i16* %964, align 2, !tbaa !17
  %966 = sext i16 %965 to i32
  %967 = icmp eq i32 %944, %966
  br i1 %967, label %989, label %968

968:                                              ; preds = %978, %958
  %969 = phi i64 [ %984, %978 ], [ %962, %958 ]
  %970 = phi i64 [ %980, %978 ], [ %953, %958 ]
  %971 = phi i8 [ %979, %978 ], [ %952, %958 ]
  %972 = getelementptr inbounds [195 x i16], [195 x i16]* @yy_def, i64 0, i64 %970
  %973 = load i16, i16* %972, align 2, !tbaa !17
  %974 = icmp sgt i16 %973, 180
  br i1 %974, label %975, label %978

975:                                              ; preds = %968
  %976 = getelementptr inbounds [49 x i8], [49 x i8]* @yy_meta, i64 0, i64 %969
  %977 = load i8, i8* %976, align 1, !tbaa !15
  br label %978

978:                                              ; preds = %975, %968
  %979 = phi i8 [ %977, %975 ], [ %971, %968 ]
  %980 = sext i16 %973 to i64
  %981 = getelementptr inbounds [195 x i16], [195 x i16]* @yy_base, i64 0, i64 %980
  %982 = load i16, i16* %981, align 2, !tbaa !17
  %983 = sext i16 %982 to i64
  %984 = zext i8 %979 to i64
  %985 = add nsw i64 %983, %984
  %986 = getelementptr inbounds [464 x i16], [464 x i16]* @yy_chk, i64 0, i64 %985
  %987 = load i16, i16* %986, align 2, !tbaa !17
  %988 = icmp eq i16 %973, %987
  br i1 %988, label %989, label %968

989:                                              ; preds = %978, %958
  %990 = phi i64 [ %963, %958 ], [ %985, %978 ]
  %991 = getelementptr inbounds [464 x i16], [464 x i16]* @yy_nxt, i64 0, i64 %990
  %992 = load i16, i16* %991, align 2, !tbaa !17
  %993 = sext i16 %992 to i32
  %994 = getelementptr inbounds i8, i8* %943, i64 1
  %995 = icmp eq i8* %994, %936
  br i1 %995, label %996, label %942

996:                                              ; preds = %989
  %997 = sext i16 %992 to i32
  br label %998

998:                                              ; preds = %996, %927
  %999 = phi i32 [ %940, %927 ], [ %997, %996 ]
  %1000 = sext i32 %999 to i64
  %1001 = getelementptr inbounds [181 x i16], [181 x i16]* @yy_accept, i64 0, i64 %1000
  %1002 = load i16, i16* %1001, align 2, !tbaa !17
  %1003 = icmp eq i16 %1002, 0
  br i1 %1003, label %1005, label %1004

1004:                                             ; preds = %998
  store i32 %999, i32* @yy_last_accepting_state, align 4, !tbaa !3
  store i8* %936, i8** @yy_last_accepting_cpos, align 8, !tbaa !7
  br label %1005

1005:                                             ; preds = %1004, %998
  %1006 = getelementptr inbounds [195 x i16], [195 x i16]* @yy_base, i64 0, i64 %1000
  %1007 = load i16, i16* %1006, align 2, !tbaa !17
  %1008 = sext i16 %1007 to i64
  %1009 = add nsw i64 %1008, 1
  %1010 = getelementptr inbounds [464 x i16], [464 x i16]* @yy_chk, i64 0, i64 %1009
  %1011 = load i16, i16* %1010, align 2, !tbaa !17
  %1012 = sext i16 %1011 to i32
  %1013 = icmp eq i32 %999, %1012
  br i1 %1013, label %1026, label %1014

1014:                                             ; preds = %1014, %1005
  %1015 = phi i64 [ %1018, %1014 ], [ %1000, %1005 ]
  %1016 = getelementptr inbounds [195 x i16], [195 x i16]* @yy_def, i64 0, i64 %1015
  %1017 = load i16, i16* %1016, align 2, !tbaa !17
  %1018 = sext i16 %1017 to i64
  %1019 = getelementptr inbounds [195 x i16], [195 x i16]* @yy_base, i64 0, i64 %1018
  %1020 = load i16, i16* %1019, align 2, !tbaa !17
  %1021 = sext i16 %1020 to i64
  %1022 = add nsw i64 %1021, 1
  %1023 = getelementptr inbounds [464 x i16], [464 x i16]* @yy_chk, i64 0, i64 %1022
  %1024 = load i16, i16* %1023, align 2, !tbaa !17
  %1025 = icmp eq i16 %1017, %1024
  br i1 %1025, label %1026, label %1014

1026:                                             ; preds = %1014, %1005
  %1027 = phi i64 [ %1009, %1005 ], [ %1022, %1014 ]
  %1028 = getelementptr inbounds [464 x i16], [464 x i16]* @yy_nxt, i64 0, i64 %1027
  %1029 = load i16, i16* %1028, align 2, !tbaa !17
  %1030 = icmp eq i16 %1029, 180
  %1031 = icmp eq i64 %1027, 0
  %1032 = select i1 %1030, i1 true, i1 %1031
  br i1 %1032, label %1036, label %1033

1033:                                             ; preds = %1026
  %1034 = sext i16 %1029 to i32
  %1035 = getelementptr inbounds i8, i8* %936, i64 1
  store i8* %1035, i8** @yy_c_buf_p, align 8, !tbaa !7
  br label %90

1036:                                             ; preds = %1026
  %1037 = load i8*, i8** @yy_last_accepting_cpos, align 8, !tbaa !7
  %1038 = load i32, i32* @yy_last_accepting_state, align 4, !tbaa !3
  br label %1509

1039:                                             ; preds = %918
  %1040 = load i8*, i8** @yytext, align 8, !tbaa !7
  %1041 = add nsw i32 %919, 1
  %1042 = sext i32 %1041 to i64
  %1043 = getelementptr inbounds i8, i8* %923, i64 %1042
  %1044 = icmp ugt i8* %921, %1043
  br i1 %1044, label %1045, label %1046

1045:                                             ; preds = %1039
  call fastcc void @yy_fatal_error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0)) #22
  unreachable

1046:                                             ; preds = %1039
  %1047 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %920, i64 0, i32 10
  %1048 = load i32, i32* %1047, align 4, !tbaa !28
  %1049 = icmp eq i32 %1048, 0
  %1050 = ptrtoint i8* %921 to i64
  %1051 = ptrtoint i8* %1040 to i64
  br i1 %1049, label %1052, label %1055

1052:                                             ; preds = %1046
  %1053 = sub i64 %1050, %1051
  %1054 = icmp eq i64 %1053, 1
  br i1 %1054, label %1572, label %1498

1055:                                             ; preds = %1046
  %1056 = xor i64 %1051, -1
  %1057 = add i64 %1056, %1050
  %1058 = trunc i64 %1057 to i32
  %1059 = icmp sgt i32 %1058, 0
  br i1 %1059, label %1060, label %1200

1060:                                             ; preds = %1055
  %1061 = add i64 %1050, 4294967294
  %1062 = sub i64 %1061, %1051
  %1063 = and i64 %1062, 4294967295
  %1064 = add nuw nsw i64 %1063, 1
  %1065 = icmp ult i64 %1063, 7
  br i1 %1065, label %1185, label %1066

1066:                                             ; preds = %1060
  %1067 = getelementptr i8, i8* %923, i64 1
  %1068 = add i64 %1050, 4294967294
  %1069 = sub i64 %1068, %1051
  %1070 = and i64 %1069, 4294967295
  %1071 = getelementptr i8, i8* %1067, i64 %1070
  %1072 = getelementptr i8, i8* %1040, i64 1
  %1073 = getelementptr i8, i8* %1072, i64 %1070
  %1074 = icmp ult i8* %923, %1073
  %1075 = icmp ult i8* %1040, %1071
  %1076 = and i1 %1074, %1075
  br i1 %1076, label %1185, label %1077

1077:                                             ; preds = %1066
  %1078 = icmp ult i64 %1063, 31
  br i1 %1078, label %1164, label %1079

1079:                                             ; preds = %1077
  %1080 = and i64 %1064, 8589934560
  %1081 = add nsw i64 %1080, -32
  %1082 = lshr exact i64 %1081, 5
  %1083 = add nuw nsw i64 %1082, 1
  %1084 = and i64 %1083, 3
  %1085 = icmp ult i64 %1081, 96
  br i1 %1085, label %1137, label %1086

1086:                                             ; preds = %1079
  %1087 = and i64 %1083, 1152921504606846972
  br label %1088

1088:                                             ; preds = %1088, %1086
  %1089 = phi i64 [ 0, %1086 ], [ %1134, %1088 ]
  %1090 = phi i64 [ 0, %1086 ], [ %1135, %1088 ]
  %1091 = getelementptr i8, i8* %923, i64 %1089
  %1092 = getelementptr i8, i8* %1040, i64 %1089
  %1093 = bitcast i8* %1092 to <16 x i8>*
  %1094 = load <16 x i8>, <16 x i8>* %1093, align 1, !tbaa !15, !alias.scope !29
  %1095 = getelementptr i8, i8* %1092, i64 16
  %1096 = bitcast i8* %1095 to <16 x i8>*
  %1097 = load <16 x i8>, <16 x i8>* %1096, align 1, !tbaa !15, !alias.scope !29
  %1098 = bitcast i8* %1091 to <16 x i8>*
  store <16 x i8> %1094, <16 x i8>* %1098, align 1, !tbaa !15, !alias.scope !32, !noalias !29
  %1099 = getelementptr i8, i8* %1091, i64 16
  %1100 = bitcast i8* %1099 to <16 x i8>*
  store <16 x i8> %1097, <16 x i8>* %1100, align 1, !tbaa !15, !alias.scope !32, !noalias !29
  %1101 = or i64 %1089, 32
  %1102 = getelementptr i8, i8* %923, i64 %1101
  %1103 = getelementptr i8, i8* %1040, i64 %1101
  %1104 = bitcast i8* %1103 to <16 x i8>*
  %1105 = load <16 x i8>, <16 x i8>* %1104, align 1, !tbaa !15, !alias.scope !29
  %1106 = getelementptr i8, i8* %1103, i64 16
  %1107 = bitcast i8* %1106 to <16 x i8>*
  %1108 = load <16 x i8>, <16 x i8>* %1107, align 1, !tbaa !15, !alias.scope !29
  %1109 = bitcast i8* %1102 to <16 x i8>*
  store <16 x i8> %1105, <16 x i8>* %1109, align 1, !tbaa !15, !alias.scope !32, !noalias !29
  %1110 = getelementptr i8, i8* %1102, i64 16
  %1111 = bitcast i8* %1110 to <16 x i8>*
  store <16 x i8> %1108, <16 x i8>* %1111, align 1, !tbaa !15, !alias.scope !32, !noalias !29
  %1112 = or i64 %1089, 64
  %1113 = getelementptr i8, i8* %923, i64 %1112
  %1114 = getelementptr i8, i8* %1040, i64 %1112
  %1115 = bitcast i8* %1114 to <16 x i8>*
  %1116 = load <16 x i8>, <16 x i8>* %1115, align 1, !tbaa !15, !alias.scope !29
  %1117 = getelementptr i8, i8* %1114, i64 16
  %1118 = bitcast i8* %1117 to <16 x i8>*
  %1119 = load <16 x i8>, <16 x i8>* %1118, align 1, !tbaa !15, !alias.scope !29
  %1120 = bitcast i8* %1113 to <16 x i8>*
  store <16 x i8> %1116, <16 x i8>* %1120, align 1, !tbaa !15, !alias.scope !32, !noalias !29
  %1121 = getelementptr i8, i8* %1113, i64 16
  %1122 = bitcast i8* %1121 to <16 x i8>*
  store <16 x i8> %1119, <16 x i8>* %1122, align 1, !tbaa !15, !alias.scope !32, !noalias !29
  %1123 = or i64 %1089, 96
  %1124 = getelementptr i8, i8* %923, i64 %1123
  %1125 = getelementptr i8, i8* %1040, i64 %1123
  %1126 = bitcast i8* %1125 to <16 x i8>*
  %1127 = load <16 x i8>, <16 x i8>* %1126, align 1, !tbaa !15, !alias.scope !29
  %1128 = getelementptr i8, i8* %1125, i64 16
  %1129 = bitcast i8* %1128 to <16 x i8>*
  %1130 = load <16 x i8>, <16 x i8>* %1129, align 1, !tbaa !15, !alias.scope !29
  %1131 = bitcast i8* %1124 to <16 x i8>*
  store <16 x i8> %1127, <16 x i8>* %1131, align 1, !tbaa !15, !alias.scope !32, !noalias !29
  %1132 = getelementptr i8, i8* %1124, i64 16
  %1133 = bitcast i8* %1132 to <16 x i8>*
  store <16 x i8> %1130, <16 x i8>* %1133, align 1, !tbaa !15, !alias.scope !32, !noalias !29
  %1134 = add nuw i64 %1089, 128
  %1135 = add i64 %1090, 4
  %1136 = icmp eq i64 %1135, %1087
  br i1 %1136, label %1137, label %1088, !llvm.loop !34

1137:                                             ; preds = %1088, %1079
  %1138 = phi i64 [ 0, %1079 ], [ %1134, %1088 ]
  %1139 = icmp eq i64 %1084, 0
  br i1 %1139, label %1156, label %1140

1140:                                             ; preds = %1140, %1137
  %1141 = phi i64 [ %1153, %1140 ], [ %1138, %1137 ]
  %1142 = phi i64 [ %1154, %1140 ], [ 0, %1137 ]
  %1143 = getelementptr i8, i8* %923, i64 %1141
  %1144 = getelementptr i8, i8* %1040, i64 %1141
  %1145 = bitcast i8* %1144 to <16 x i8>*
  %1146 = load <16 x i8>, <16 x i8>* %1145, align 1, !tbaa !15, !alias.scope !29
  %1147 = getelementptr i8, i8* %1144, i64 16
  %1148 = bitcast i8* %1147 to <16 x i8>*
  %1149 = load <16 x i8>, <16 x i8>* %1148, align 1, !tbaa !15, !alias.scope !29
  %1150 = bitcast i8* %1143 to <16 x i8>*
  store <16 x i8> %1146, <16 x i8>* %1150, align 1, !tbaa !15, !alias.scope !32, !noalias !29
  %1151 = getelementptr i8, i8* %1143, i64 16
  %1152 = bitcast i8* %1151 to <16 x i8>*
  store <16 x i8> %1149, <16 x i8>* %1152, align 1, !tbaa !15, !alias.scope !32, !noalias !29
  %1153 = add nuw i64 %1141, 32
  %1154 = add i64 %1142, 1
  %1155 = icmp eq i64 %1154, %1084
  br i1 %1155, label %1156, label %1140, !llvm.loop !36

1156:                                             ; preds = %1140, %1137
  %1157 = icmp eq i64 %1064, %1080
  br i1 %1157, label %1198, label %1158

1158:                                             ; preds = %1156
  %1159 = trunc i64 %1080 to i32
  %1160 = getelementptr i8, i8* %1040, i64 %1080
  %1161 = getelementptr i8, i8* %923, i64 %1080
  %1162 = and i64 %1064, 24
  %1163 = icmp eq i64 %1162, 0
  br i1 %1163, label %1185, label %1164

1164:                                             ; preds = %1158, %1077
  %1165 = phi i64 [ %1080, %1158 ], [ 0, %1077 ]
  %1166 = add i64 %1050, 4294967294
  %1167 = sub i64 %1166, %1051
  %1168 = and i64 %1167, 4294967295
  %1169 = add nuw nsw i64 %1168, 1
  %1170 = and i64 %1169, 8589934584
  %1171 = getelementptr i8, i8* %923, i64 %1170
  %1172 = getelementptr i8, i8* %1040, i64 %1170
  %1173 = trunc i64 %1170 to i32
  br label %1174

1174:                                             ; preds = %1174, %1164
  %1175 = phi i64 [ %1165, %1164 ], [ %1181, %1174 ]
  %1176 = getelementptr i8, i8* %923, i64 %1175
  %1177 = getelementptr i8, i8* %1040, i64 %1175
  %1178 = bitcast i8* %1177 to <8 x i8>*
  %1179 = load <8 x i8>, <8 x i8>* %1178, align 1, !tbaa !15
  %1180 = bitcast i8* %1176 to <8 x i8>*
  store <8 x i8> %1179, <8 x i8>* %1180, align 1, !tbaa !15
  %1181 = add nuw i64 %1175, 8
  %1182 = icmp eq i64 %1181, %1170
  br i1 %1182, label %1183, label %1174, !llvm.loop !38

1183:                                             ; preds = %1174
  %1184 = icmp eq i64 %1169, %1170
  br i1 %1184, label %1198, label %1185

1185:                                             ; preds = %1183, %1158, %1066, %1060
  %1186 = phi i8* [ %923, %1060 ], [ %923, %1066 ], [ %1161, %1158 ], [ %1171, %1183 ]
  %1187 = phi i8* [ %1040, %1060 ], [ %1040, %1066 ], [ %1160, %1158 ], [ %1172, %1183 ]
  %1188 = phi i32 [ 0, %1060 ], [ 0, %1066 ], [ %1159, %1158 ], [ %1173, %1183 ]
  br label %1189

1189:                                             ; preds = %1189, %1185
  %1190 = phi i8* [ %1195, %1189 ], [ %1186, %1185 ]
  %1191 = phi i8* [ %1193, %1189 ], [ %1187, %1185 ]
  %1192 = phi i32 [ %1196, %1189 ], [ %1188, %1185 ]
  %1193 = getelementptr inbounds i8, i8* %1191, i64 1
  %1194 = load i8, i8* %1191, align 1, !tbaa !15
  %1195 = getelementptr inbounds i8, i8* %1190, i64 1
  store i8 %1194, i8* %1190, align 1, !tbaa !15
  %1196 = add nuw nsw i32 %1192, 1
  %1197 = icmp eq i32 %1196, %1058
  br i1 %1197, label %1198, label %1189, !llvm.loop !40

1198:                                             ; preds = %1189, %1183, %1156
  %1199 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %904, align 8, !tbaa !7
  br label %1200

1200:                                             ; preds = %1198, %1055
  %1201 = phi %struct.yy_buffer_state* [ %1199, %1198 ], [ %920, %1055 ]
  %1202 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1201, i64 0, i32 11
  %1203 = load i32, i32* %1202, align 8, !tbaa !27
  %1204 = icmp eq i32 %1203, 2
  br i1 %1204, label %1205, label %1206

1205:                                             ; preds = %1200
  store i32 0, i32* @yy_n_chars, align 4, !tbaa !3
  br label %1354

1206:                                             ; preds = %1200
  %1207 = xor i32 %1058, -1
  %1208 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1201, i64 0, i32 3
  %1209 = load i32, i32* %1208, align 8, !tbaa !41
  %1210 = add i32 %1209, %1207
  %1211 = icmp slt i32 %1210, 1
  br i1 %1211, label %1212, label %1247

1212:                                             ; preds = %1238, %1206
  %1213 = phi i32 [ %1244, %1238 ], [ %1209, %1206 ]
  %1214 = phi i8* [ %1241, %1238 ], [ %921, %1206 ]
  %1215 = phi %struct.yy_buffer_state* [ %1242, %1238 ], [ %1201, %1206 ]
  %1216 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1215, i64 0, i32 1
  %1217 = load i8*, i8** %1216, align 8, !tbaa !26
  %1218 = ptrtoint i8* %1214 to i64
  %1219 = ptrtoint i8* %1217 to i64
  %1220 = sub i64 %1218, %1219
  %1221 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1215, i64 0, i32 5
  %1222 = load i32, i32* %1221, align 8, !tbaa !25
  %1223 = icmp eq i32 %1222, 0
  br i1 %1223, label %1224, label %1225

1224:                                             ; preds = %1212
  store i8* null, i8** %1216, align 8, !tbaa !26
  br label %1237

1225:                                             ; preds = %1212
  %1226 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1215, i64 0, i32 3
  %1227 = icmp slt i32 %1213, 1
  %1228 = shl nuw nsw i32 %1213, 1
  %1229 = sub i32 0, %1213
  %1230 = lshr i32 %1229, 3
  %1231 = sub i32 %1213, %1230
  %1232 = select i1 %1227, i32 %1231, i32 %1228
  store i32 %1232, i32* %1226, align 8, !tbaa !41
  %1233 = add nsw i32 %1232, 2
  %1234 = sext i32 %1233 to i64
  %1235 = call align 16 i8* @realloc(i8* %1217, i64 %1234) #21
  store i8* %1235, i8** %1216, align 8, !tbaa !26
  %1236 = icmp eq i8* %1235, null
  br i1 %1236, label %1237, label %1238

1237:                                             ; preds = %1225, %1224
  call fastcc void @yy_fatal_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0)) #22
  unreachable

1238:                                             ; preds = %1225
  %1239 = shl i64 %1220, 32
  %1240 = ashr exact i64 %1239, 32
  %1241 = getelementptr inbounds i8, i8* %1235, i64 %1240
  store i8* %1241, i8** @yy_c_buf_p, align 8, !tbaa !7
  %1242 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %904, align 8, !tbaa !7
  %1243 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1242, i64 0, i32 3
  %1244 = load i32, i32* %1243, align 8, !tbaa !41
  %1245 = add i32 %1244, %1207
  %1246 = icmp slt i32 %1245, 1
  br i1 %1246, label %1212, label %1247

1247:                                             ; preds = %1238, %1206
  %1248 = phi %struct.yy_buffer_state* [ %1201, %1206 ], [ %1242, %1238 ]
  %1249 = phi i32 [ %1210, %1206 ], [ %1245, %1238 ]
  %1250 = icmp ult i32 %1249, 8192
  %1251 = select i1 %1250, i32 %1249, i32 8192
  %1252 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1248, i64 0, i32 6
  %1253 = load i32, i32* %1252, align 4, !tbaa !42
  %1254 = icmp eq i32 %1253, 0
  br i1 %1254, label %1297, label %1255

1255:                                             ; preds = %1247
  %1256 = shl i64 %1057, 32
  %1257 = ashr exact i64 %1256, 32
  %1258 = zext i32 %1251 to i64
  br label %1259

1259:                                             ; preds = %1263, %1255
  %1260 = phi i64 [ 0, %1255 ], [ %1273, %1263 ]
  %1261 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8, !tbaa !7
  %1262 = call i32 @getc(%struct._IO_FILE* %1261) #21
  switch i32 %1262, label %1263 [
    i32 -1, label %1275
    i32 10, label %1275
  ]

1263:                                             ; preds = %1259
  %1264 = trunc i32 %1262 to i8
  %1265 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %1266 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %1267 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %1265, i64 %1266
  %1268 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %1267, align 8, !tbaa !7
  %1269 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1268, i64 0, i32 1
  %1270 = load i8*, i8** %1269, align 8, !tbaa !26
  %1271 = getelementptr inbounds i8, i8* %1270, i64 %1257
  %1272 = getelementptr inbounds i8, i8* %1271, i64 %1260
  store i8 %1264, i8* %1272, align 1, !tbaa !15
  %1273 = add nuw nsw i64 %1260, 1
  %1274 = icmp eq i64 %1273, %1258
  br i1 %1274, label %1277, label %1259

1275:                                             ; preds = %1259, %1259
  %1276 = trunc i64 %1260 to i32
  br label %1277

1277:                                             ; preds = %1275, %1263
  %1278 = phi i32 [ %1276, %1275 ], [ %1251, %1263 ]
  switch i32 %1262, label %1347 [
    i32 10, label %1279
    i32 -1, label %1292
  ]

1279:                                             ; preds = %1277
  %1280 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %1281 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %1282 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %1280, i64 %1281
  %1283 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %1282, align 8, !tbaa !7
  %1284 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1283, i64 0, i32 1
  %1285 = load i8*, i8** %1284, align 8, !tbaa !26
  %1286 = getelementptr inbounds i8, i8* %1285, i64 %1257
  %1287 = add nuw nsw i32 %1278, 1
  %1288 = zext i32 %1278 to i64
  %1289 = getelementptr inbounds i8, i8* %1286, i64 %1288
  store i8 10, i8* %1289, align 1, !tbaa !15
  store i32 %1287, i32* @yy_n_chars, align 4, !tbaa !3
  %1290 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %1282, align 8, !tbaa !7
  %1291 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1290, i64 0, i32 4
  store i32 %1287, i32* %1291, align 4, !tbaa !11
  br label %1373

1292:                                             ; preds = %1277
  %1293 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8, !tbaa !7
  %1294 = call i32 @ferror(%struct._IO_FILE* %1293) #21
  %1295 = icmp eq i32 %1294, 0
  br i1 %1295, label %1347, label %1296

1296:                                             ; preds = %1292
  call fastcc void @yy_fatal_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #22
  unreachable

1297:                                             ; preds = %1247
  %1298 = tail call i32* @__errno_location() #24
  store i32 0, i32* %1298, align 4, !tbaa !3
  %1299 = shl i64 %1057, 32
  %1300 = ashr exact i64 %1299, 32
  %1301 = zext i32 %1251 to i64
  %1302 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %1303 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %1304 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %1302, i64 %1303
  %1305 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %1304, align 8, !tbaa !7
  %1306 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1305, i64 0, i32 1
  %1307 = load i8*, i8** %1306, align 8, !tbaa !26
  %1308 = getelementptr inbounds i8, i8* %1307, i64 %1300
  %1309 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8, !tbaa !7
  %1310 = call i64 @fread(i8* %1308, i64 1, i64 %1301, %struct._IO_FILE* %1309) #21
  %1311 = trunc i64 %1310 to i32
  store i32 %1311, i32* @yy_n_chars, align 4, !tbaa !3
  %1312 = icmp eq i32 %1311, 0
  br i1 %1312, label %1313, label %1340

1313:                                             ; preds = %1326, %1297
  %1314 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8, !tbaa !7
  %1315 = call i32 @ferror(%struct._IO_FILE* %1314) #21
  %1316 = icmp eq i32 %1315, 0
  br i1 %1316, label %1317, label %1322

1317:                                             ; preds = %1313
  %1318 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %1319 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %1320 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %1318, i64 %1319
  %1321 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %1320, align 8, !tbaa !7
  br label %1354

1322:                                             ; preds = %1313
  %1323 = load i32, i32* %1298, align 4, !tbaa !3
  %1324 = icmp eq i32 %1323, 4
  br i1 %1324, label %1326, label %1325

1325:                                             ; preds = %1322
  call fastcc void @yy_fatal_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #22
  unreachable

1326:                                             ; preds = %1322
  store i32 0, i32* %1298, align 4, !tbaa !3
  call void @clearerr(%struct._IO_FILE* %1314) #21
  %1327 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %1328 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %1329 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %1327, i64 %1328
  %1330 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %1329, align 8, !tbaa !7
  %1331 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1330, i64 0, i32 1
  %1332 = load i8*, i8** %1331, align 8, !tbaa !26
  %1333 = getelementptr inbounds i8, i8* %1332, i64 %1300
  %1334 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8, !tbaa !7
  %1335 = call i64 @fread(i8* %1333, i64 1, i64 %1301, %struct._IO_FILE* %1334) #21
  %1336 = trunc i64 %1335 to i32
  store i32 %1336, i32* @yy_n_chars, align 4, !tbaa !3
  %1337 = icmp eq i32 %1336, 0
  br i1 %1337, label %1313, label %1338

1338:                                             ; preds = %1326
  %1339 = trunc i64 %1335 to i32
  br label %1340

1340:                                             ; preds = %1338, %1297
  %1341 = phi i32 [ %1311, %1297 ], [ %1339, %1338 ]
  %1342 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %1343 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %1344 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %1342, i64 %1343
  %1345 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %1344, align 8, !tbaa !7
  %1346 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1345, i64 0, i32 4
  store i32 %1341, i32* %1346, align 4, !tbaa !11
  br label %1373

1347:                                             ; preds = %1292, %1277
  store i32 %1278, i32* @yy_n_chars, align 4, !tbaa !3
  %1348 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %1349 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %1350 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %1348, i64 %1349
  %1351 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %1350, align 8, !tbaa !7
  %1352 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1351, i64 0, i32 4
  store i32 %1278, i32* %1352, align 4, !tbaa !11
  %1353 = icmp eq i32 %1278, 0
  br i1 %1353, label %1359, label %1373

1354:                                             ; preds = %1317, %1205
  %1355 = phi %struct.yy_buffer_state* [ %1321, %1317 ], [ %1201, %1205 ]
  %1356 = phi i64 [ %1319, %1317 ], [ %903, %1205 ]
  %1357 = phi %struct.yy_buffer_state** [ %1318, %1317 ], [ %902, %1205 ]
  %1358 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1355, i64 0, i32 4
  store i32 0, i32* %1358, align 4, !tbaa !11
  br label %1359

1359:                                             ; preds = %1354, %1347
  %1360 = phi %struct.yy_buffer_state* [ %1351, %1347 ], [ %1355, %1354 ]
  %1361 = phi i64 [ %1349, %1347 ], [ %1356, %1354 ]
  %1362 = phi %struct.yy_buffer_state** [ %1348, %1347 ], [ %1357, %1354 ]
  %1363 = icmp eq i32 %1058, 0
  br i1 %1363, label %1364, label %1371

1364:                                             ; preds = %1359
  %1365 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8, !tbaa !7
  call void @yyrestart(%struct._IO_FILE* %1365) #21
  %1366 = load i32, i32* @yy_n_chars, align 4, !tbaa !3
  %1367 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %1368 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %1369 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %1367, i64 %1368
  %1370 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %1369, align 8, !tbaa !7
  br label %1373

1371:                                             ; preds = %1359
  %1372 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1360, i64 0, i32 11
  store i32 2, i32* %1372, align 8, !tbaa !27
  br label %1373

1373:                                             ; preds = %1371, %1364, %1347, %1340, %1279
  %1374 = phi %struct.yy_buffer_state* [ %1370, %1364 ], [ %1360, %1371 ], [ %1351, %1347 ], [ %1345, %1340 ], [ %1290, %1279 ]
  %1375 = phi i64 [ %1368, %1364 ], [ %1361, %1371 ], [ %1349, %1347 ], [ %1343, %1340 ], [ %1281, %1279 ]
  %1376 = phi %struct.yy_buffer_state** [ %1367, %1364 ], [ %1362, %1371 ], [ %1348, %1347 ], [ %1342, %1340 ], [ %1280, %1279 ]
  %1377 = phi i32 [ %1366, %1364 ], [ 0, %1371 ], [ %1278, %1347 ], [ %1341, %1340 ], [ %1287, %1279 ]
  %1378 = phi i32 [ 1, %1364 ], [ 2, %1371 ], [ 0, %1347 ], [ 0, %1340 ], [ 0, %1279 ]
  %1379 = add nsw i32 %1377, %1058
  %1380 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %1376, i64 %1375
  %1381 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1374, i64 0, i32 3
  %1382 = load i32, i32* %1381, align 8, !tbaa !41
  %1383 = icmp sgt i32 %1379, %1382
  br i1 %1383, label %1387, label %1384

1384:                                             ; preds = %1373
  %1385 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1374, i64 0, i32 1
  %1386 = load i8*, i8** %1385, align 8, !tbaa !26
  br label %1404

1387:                                             ; preds = %1373
  %1388 = ashr i32 %1377, 1
  %1389 = add nsw i32 %1379, %1388
  %1390 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1374, i64 0, i32 1
  %1391 = load i8*, i8** %1390, align 8, !tbaa !26
  %1392 = sext i32 %1389 to i64
  %1393 = call align 16 i8* @realloc(i8* %1391, i64 %1392) #21
  %1394 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %1380, align 8, !tbaa !7
  %1395 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1394, i64 0, i32 1
  store i8* %1393, i8** %1395, align 8, !tbaa !26
  %1396 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %1380, align 8, !tbaa !7
  %1397 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1396, i64 0, i32 1
  %1398 = load i8*, i8** %1397, align 8, !tbaa !26
  %1399 = icmp eq i8* %1398, null
  br i1 %1399, label %1400, label %1401

1400:                                             ; preds = %1387
  call fastcc void @yy_fatal_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i64 0, i64 0)) #22
  unreachable

1401:                                             ; preds = %1387
  %1402 = add nsw i32 %1389, -2
  %1403 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1396, i64 0, i32 3
  store i32 %1402, i32* %1403, align 8, !tbaa !41
  br label %1404

1404:                                             ; preds = %1401, %1384
  %1405 = phi i8* [ %1398, %1401 ], [ %1386, %1384 ]
  store i32 %1379, i32* @yy_n_chars, align 4, !tbaa !3
  %1406 = sext i32 %1379 to i64
  %1407 = getelementptr inbounds i8, i8* %1405, i64 %1406
  store i8 0, i8* %1407, align 1, !tbaa !15
  %1408 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %1380, align 8, !tbaa !7
  %1409 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1408, i64 0, i32 1
  %1410 = load i8*, i8** %1409, align 8, !tbaa !26
  %1411 = add nsw i32 %1379, 1
  %1412 = sext i32 %1411 to i64
  %1413 = getelementptr inbounds i8, i8* %1410, i64 %1412
  store i8 0, i8* %1413, align 1, !tbaa !15
  %1414 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %1380, align 8, !tbaa !7
  %1415 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1414, i64 0, i32 1
  %1416 = load i8*, i8** %1415, align 8, !tbaa !26
  store i8* %1416, i8** @yytext, align 8, !tbaa !7
  switch i32 %1378, label %306 [
    i32 1, label %1572
    i32 0, label %1426
    i32 2, label %1417
  ]

1417:                                             ; preds = %1404
  %1418 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %1419 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %1420 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %1418, i64 %1419
  %1421 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %1420, align 8, !tbaa !7
  %1422 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1421, i64 0, i32 1
  %1423 = load i8*, i8** %1422, align 8, !tbaa !26
  %1424 = load i32, i32* @yy_n_chars, align 4, !tbaa !3
  %1425 = sext i32 %1424 to i64
  br label %1498

1426:                                             ; preds = %1404
  %1427 = ptrtoint i8* %157 to i64
  %1428 = ptrtoint i8* %900 to i64
  %1429 = sub i64 %1427, %1428
  %1430 = trunc i64 %1429 to i32
  %1431 = shl i64 %1429, 32
  %1432 = add i64 %1431, -4294967296
  %1433 = ashr exact i64 %1432, 32
  %1434 = getelementptr inbounds i8, i8* %1416, i64 %1433
  store i8* %1434, i8** @yy_c_buf_p, align 8, !tbaa !7
  %1435 = load i32, i32* @yy_start, align 4, !tbaa !3
  %1436 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %1437 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %1438 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %1436, i64 %1437
  %1439 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %1438, align 8, !tbaa !7
  %1440 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1439, i64 0, i32 7
  %1441 = load i32, i32* %1440, align 8, !tbaa !16
  %1442 = add nsw i32 %1441, %1435
  %1443 = icmp sgt i32 %1430, 1
  br i1 %1443, label %1444, label %90

1444:                                             ; preds = %1491, %1426
  %1445 = phi i8* [ %1496, %1491 ], [ %1416, %1426 ]
  %1446 = phi i32 [ %1495, %1491 ], [ %1442, %1426 ]
  %1447 = load i8, i8* %1445, align 1, !tbaa !15
  %1448 = icmp eq i8 %1447, 0
  br i1 %1448, label %1453, label %1449

1449:                                             ; preds = %1444
  %1450 = zext i8 %1447 to i64
  %1451 = getelementptr inbounds [256 x i8], [256 x i8]* @yy_ec, i64 0, i64 %1450
  %1452 = load i8, i8* %1451, align 1, !tbaa !15
  br label %1453

1453:                                             ; preds = %1449, %1444
  %1454 = phi i8 [ %1452, %1449 ], [ 1, %1444 ]
  %1455 = sext i32 %1446 to i64
  %1456 = getelementptr inbounds [181 x i16], [181 x i16]* @yy_accept, i64 0, i64 %1455
  %1457 = load i16, i16* %1456, align 2, !tbaa !17
  %1458 = icmp eq i16 %1457, 0
  br i1 %1458, label %1460, label %1459

1459:                                             ; preds = %1453
  store i32 %1446, i32* @yy_last_accepting_state, align 4, !tbaa !3
  store i8* %1445, i8** @yy_last_accepting_cpos, align 8, !tbaa !7
  br label %1460

1460:                                             ; preds = %1459, %1453
  %1461 = getelementptr inbounds [195 x i16], [195 x i16]* @yy_base, i64 0, i64 %1455
  %1462 = load i16, i16* %1461, align 2, !tbaa !17
  %1463 = sext i16 %1462 to i64
  %1464 = zext i8 %1454 to i64
  %1465 = add nsw i64 %1463, %1464
  %1466 = getelementptr inbounds [464 x i16], [464 x i16]* @yy_chk, i64 0, i64 %1465
  %1467 = load i16, i16* %1466, align 2, !tbaa !17
  %1468 = sext i16 %1467 to i32
  %1469 = icmp eq i32 %1446, %1468
  br i1 %1469, label %1491, label %1470

1470:                                             ; preds = %1480, %1460
  %1471 = phi i64 [ %1486, %1480 ], [ %1464, %1460 ]
  %1472 = phi i64 [ %1482, %1480 ], [ %1455, %1460 ]
  %1473 = phi i8 [ %1481, %1480 ], [ %1454, %1460 ]
  %1474 = getelementptr inbounds [195 x i16], [195 x i16]* @yy_def, i64 0, i64 %1472
  %1475 = load i16, i16* %1474, align 2, !tbaa !17
  %1476 = icmp sgt i16 %1475, 180
  br i1 %1476, label %1477, label %1480

1477:                                             ; preds = %1470
  %1478 = getelementptr inbounds [49 x i8], [49 x i8]* @yy_meta, i64 0, i64 %1471
  %1479 = load i8, i8* %1478, align 1, !tbaa !15
  br label %1480

1480:                                             ; preds = %1477, %1470
  %1481 = phi i8 [ %1479, %1477 ], [ %1473, %1470 ]
  %1482 = sext i16 %1475 to i64
  %1483 = getelementptr inbounds [195 x i16], [195 x i16]* @yy_base, i64 0, i64 %1482
  %1484 = load i16, i16* %1483, align 2, !tbaa !17
  %1485 = sext i16 %1484 to i64
  %1486 = zext i8 %1481 to i64
  %1487 = add nsw i64 %1485, %1486
  %1488 = getelementptr inbounds [464 x i16], [464 x i16]* @yy_chk, i64 0, i64 %1487
  %1489 = load i16, i16* %1488, align 2, !tbaa !17
  %1490 = icmp eq i16 %1475, %1489
  br i1 %1490, label %1491, label %1470

1491:                                             ; preds = %1480, %1460
  %1492 = phi i64 [ %1465, %1460 ], [ %1487, %1480 ]
  %1493 = getelementptr inbounds [464 x i16], [464 x i16]* @yy_nxt, i64 0, i64 %1492
  %1494 = load i16, i16* %1493, align 2, !tbaa !17
  %1495 = sext i16 %1494 to i32
  %1496 = getelementptr inbounds i8, i8* %1445, i64 1
  %1497 = icmp eq i8* %1496, %1434
  br i1 %1497, label %88, label %1444

1498:                                             ; preds = %1417, %1052
  %1499 = phi i64 [ %1425, %1417 ], [ %924, %1052 ]
  %1500 = phi i8* [ %1416, %1417 ], [ %1040, %1052 ]
  %1501 = phi i8* [ %1423, %1417 ], [ %923, %1052 ]
  %1502 = phi %struct.yy_buffer_state* [ %1421, %1417 ], [ %920, %1052 ]
  %1503 = getelementptr inbounds i8, i8* %1501, i64 %1499
  store i8* %1503, i8** @yy_c_buf_p, align 8, !tbaa !7
  %1504 = load i32, i32* @yy_start, align 4, !tbaa !3
  %1505 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1502, i64 0, i32 7
  %1506 = load i32, i32* %1505, align 8, !tbaa !16
  %1507 = add nsw i32 %1506, %1504
  %1508 = icmp ult i8* %1500, %1503
  br i1 %1508, label %1513, label %1509

1509:                                             ; preds = %1498, %1036, %173
  %1510 = phi i8* [ %1500, %173 ], [ %932, %1036 ], [ %1500, %1498 ]
  %1511 = phi i8* [ %1503, %173 ], [ %1037, %1036 ], [ %1503, %1498 ]
  %1512 = phi i32 [ %174, %173 ], [ %1038, %1036 ], [ %1507, %1498 ]
  br label %151

1513:                                             ; preds = %1498
  %1514 = ptrtoint i8* %1503 to i64
  %1515 = ptrtoint i8* %1500 to i64
  %1516 = sub i64 %1514, %1515
  %1517 = getelementptr i8, i8* %1500, i64 %1516
  br label %1518

1518:                                             ; preds = %1565, %1513
  %1519 = phi i8* [ %1570, %1565 ], [ %1500, %1513 ]
  %1520 = phi i32 [ %1569, %1565 ], [ %1507, %1513 ]
  %1521 = load i8, i8* %1519, align 1, !tbaa !15
  %1522 = icmp eq i8 %1521, 0
  br i1 %1522, label %1527, label %1523

1523:                                             ; preds = %1518
  %1524 = zext i8 %1521 to i64
  %1525 = getelementptr inbounds [256 x i8], [256 x i8]* @yy_ec, i64 0, i64 %1524
  %1526 = load i8, i8* %1525, align 1, !tbaa !15
  br label %1527

1527:                                             ; preds = %1523, %1518
  %1528 = phi i8 [ %1526, %1523 ], [ 1, %1518 ]
  %1529 = sext i32 %1520 to i64
  %1530 = getelementptr inbounds [181 x i16], [181 x i16]* @yy_accept, i64 0, i64 %1529
  %1531 = load i16, i16* %1530, align 2, !tbaa !17
  %1532 = icmp eq i16 %1531, 0
  br i1 %1532, label %1534, label %1533

1533:                                             ; preds = %1527
  store i32 %1520, i32* @yy_last_accepting_state, align 4, !tbaa !3
  store i8* %1519, i8** @yy_last_accepting_cpos, align 8, !tbaa !7
  br label %1534

1534:                                             ; preds = %1533, %1527
  %1535 = getelementptr inbounds [195 x i16], [195 x i16]* @yy_base, i64 0, i64 %1529
  %1536 = load i16, i16* %1535, align 2, !tbaa !17
  %1537 = sext i16 %1536 to i64
  %1538 = zext i8 %1528 to i64
  %1539 = add nsw i64 %1537, %1538
  %1540 = getelementptr inbounds [464 x i16], [464 x i16]* @yy_chk, i64 0, i64 %1539
  %1541 = load i16, i16* %1540, align 2, !tbaa !17
  %1542 = sext i16 %1541 to i32
  %1543 = icmp eq i32 %1520, %1542
  br i1 %1543, label %1565, label %1544

1544:                                             ; preds = %1554, %1534
  %1545 = phi i64 [ %1560, %1554 ], [ %1538, %1534 ]
  %1546 = phi i64 [ %1556, %1554 ], [ %1529, %1534 ]
  %1547 = phi i8 [ %1555, %1554 ], [ %1528, %1534 ]
  %1548 = getelementptr inbounds [195 x i16], [195 x i16]* @yy_def, i64 0, i64 %1546
  %1549 = load i16, i16* %1548, align 2, !tbaa !17
  %1550 = icmp sgt i16 %1549, 180
  br i1 %1550, label %1551, label %1554

1551:                                             ; preds = %1544
  %1552 = getelementptr inbounds [49 x i8], [49 x i8]* @yy_meta, i64 0, i64 %1545
  %1553 = load i8, i8* %1552, align 1, !tbaa !15
  br label %1554

1554:                                             ; preds = %1551, %1544
  %1555 = phi i8 [ %1553, %1551 ], [ %1547, %1544 ]
  %1556 = sext i16 %1549 to i64
  %1557 = getelementptr inbounds [195 x i16], [195 x i16]* @yy_base, i64 0, i64 %1556
  %1558 = load i16, i16* %1557, align 2, !tbaa !17
  %1559 = sext i16 %1558 to i64
  %1560 = zext i8 %1555 to i64
  %1561 = add nsw i64 %1559, %1560
  %1562 = getelementptr inbounds [464 x i16], [464 x i16]* @yy_chk, i64 0, i64 %1561
  %1563 = load i16, i16* %1562, align 2, !tbaa !17
  %1564 = icmp eq i16 %1549, %1563
  br i1 %1564, label %1565, label %1544

1565:                                             ; preds = %1554, %1534
  %1566 = phi i64 [ %1539, %1534 ], [ %1561, %1554 ]
  %1567 = getelementptr inbounds [464 x i16], [464 x i16]* @yy_nxt, i64 0, i64 %1566
  %1568 = load i16, i16* %1567, align 2, !tbaa !17
  %1569 = sext i16 %1568 to i32
  %1570 = getelementptr inbounds i8, i8* %1519, i64 1
  %1571 = icmp eq i8* %1570, %1517
  br i1 %1571, label %173, label %1518

1572:                                             ; preds = %1404, %1052
  %1573 = phi i8* [ %1040, %1052 ], [ %1416, %1404 ]
  store i8* %1573, i8** @yy_c_buf_p, align 8, !tbaa !7
  %1574 = load i32, i32* @yy_start, align 4, !tbaa !3
  %1575 = add nsw i32 %1574, -1
  %1576 = sdiv i32 %1575, 2
  %1577 = add nsw i32 %1576, 34
  br label %167

1578:                                             ; preds = %167
  call fastcc void @yy_fatal_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0)) #25
  unreachable

1579:                                             ; preds = %875, %852, %835, %818, %801, %784, %767, %750, %733, %665, %642, %625, %605, %580, %560, %543, %507, %464, %447, %430, %413, %396, %379, %362, %345, %323, %268
  %1580 = phi i32 [ %876, %875 ], [ 268, %852 ], [ 267, %835 ], [ 266, %818 ], [ 265, %801 ], [ 264, %784 ], [ 263, %767 ], [ 262, %750 ], [ 261, %733 ], [ 281, %665 ], [ 273, %642 ], [ 93, %625 ], [ 276, %605 ], [ 280, %580 ], [ 279, %560 ], [ 275, %543 ], [ 274, %507 ], [ 278, %464 ], [ 272, %447 ], [ 271, %430 ], [ 270, %413 ], [ 269, %396 ], [ 260, %379 ], [ 259, %362 ], [ 258, %345 ], [ 277, %323 ], [ 0, %268 ]
  ret i32 %1580
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local %struct.yy_buffer_state* @yy_create_buffer(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #0 {
  %3 = tail call noalias align 16 dereferenceable_or_null(64) i8* @malloc(i64 64) #21
  %4 = bitcast i8* %3 to %struct.yy_buffer_state*
  %5 = icmp eq i8* %3, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call fastcc void @yy_fatal_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0)) #25
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %3, i64 24
  %9 = bitcast i8* %8 to i32*
  store i32 %1, i32* %9, align 8, !tbaa !41
  %10 = add nsw i32 %1, 2
  %11 = sext i32 %10 to i64
  %12 = tail call noalias align 16 i8* @malloc(i64 %11) #21
  %13 = getelementptr inbounds i8, i8* %3, i64 8
  %14 = bitcast i8* %13 to i8**
  store i8* %12, i8** %14, align 8, !tbaa !26
  %15 = icmp eq i8* %12, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  tail call fastcc void @yy_fatal_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0)) #25
  unreachable

17:                                               ; preds = %7
  %18 = getelementptr inbounds i8, i8* %3, i64 32
  %19 = bitcast i8* %18 to i32*
  store i32 1, i32* %19, align 16, !tbaa !25
  %20 = tail call i32* @__errno_location() #24
  %21 = load i32, i32* %20, align 4, !tbaa !3
  %22 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i64 0, i32 4
  store i32 0, i32* %22, align 4, !tbaa !11
  store i8 0, i8* %12, align 16, !tbaa !15
  %23 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 0, i8* %23, align 1, !tbaa !15
  %24 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i64 0, i32 2
  store i8* %12, i8** %24, align 16, !tbaa !13
  %25 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i64 0, i32 7
  store i32 1, i32* %25, align 8, !tbaa !16
  %26 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i64 0, i32 11
  store i32 0, i32* %26, align 8, !tbaa !27
  %27 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %28 = icmp eq %struct.yy_buffer_state** %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %17
  %30 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %31 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %27, i64 %30
  %32 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %31, align 8, !tbaa !7
  %33 = icmp eq %struct.yy_buffer_state* %32, %4
  br i1 %33, label %37, label %42

34:                                               ; preds = %17
  %35 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i64 0, i32 0
  store %struct._IO_FILE* %0, %struct._IO_FILE** %35, align 16, !tbaa !14
  %36 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i64 0, i32 10
  store i32 1, i32* %36, align 4, !tbaa !28
  br label %46

37:                                               ; preds = %29
  store i32 0, i32* @yy_n_chars, align 4, !tbaa !3
  store i8* %12, i8** @yy_c_buf_p, align 8, !tbaa !7
  store i8* %12, i8** @yytext, align 8, !tbaa !7
  %38 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %31, align 8, !tbaa !7
  %39 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %38, i64 0, i32 0
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %39, align 8, !tbaa !14
  store %struct._IO_FILE* %40, %struct._IO_FILE** @yyin, align 8, !tbaa !7
  %41 = load i8, i8* %12, align 16, !tbaa !15
  store i8 %41, i8* @yy_hold_char, align 1, !tbaa !15
  br label %42

42:                                               ; preds = %37, %29
  %43 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i64 0, i32 0
  store %struct._IO_FILE* %0, %struct._IO_FILE** %43, align 16
  %44 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i64 0, i32 10
  store i32 1, i32* %44, align 4
  %45 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %31, align 8, !tbaa !7
  br label %46

46:                                               ; preds = %42, %34
  %47 = phi %struct.yy_buffer_state* [ %45, %42 ], [ null, %34 ]
  %48 = icmp eq %struct.yy_buffer_state* %47, %4
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i64 0, i32 8
  store i32 1, i32* %50, align 4, !tbaa !43
  %51 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i64 0, i32 9
  store i32 0, i32* %51, align 16, !tbaa !44
  br label %52

52:                                               ; preds = %49, %46
  %53 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i64 0, i32 6
  store i32 0, i32* %53, align 4, !tbaa !42
  store i32 %21, i32* %20, align 4, !tbaa !3
  ret %struct.yy_buffer_state* %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @srcpos_update(%struct.srcpos*, i8*, i32) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @memchr(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

declare dso_local void @data_copy_escape_string(%struct.data* sret(%struct.data) align 8, i8*, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define internal void @lexical_error(i8* %0, ...) unnamed_addr #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #21
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %3)
  call void @srcpos_verror(%struct.srcpos* nonnull @yylloc, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* %0, %struct.__va_list_tag* nonnull %4) #21
  call void @llvm.va_end(i8* nonnull %3)
  store i8 1, i8* @treesource_error, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #21
  ret void
}

declare dso_local void @srcpos_set_line(i8*, i32) local_unnamed_addr #2

declare dso_local i8* @xstrdup(i8*) local_unnamed_addr #2

declare dso_local void @data_free(%struct.data* byval(%struct.data) align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i64 @strtoull(i8* readonly, i8** nocapture, i32) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @yy_fatal_error(i8* %0) unnamed_addr #9 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* %0) #26
  tail call void @exit(i32 2) #22
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @yyrestart(%struct._IO_FILE* %0) local_unnamed_addr #0 {
  %2 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %3 = icmp eq %struct.yy_buffer_state** %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, i64 %5
  %7 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %6, align 8, !tbaa !7
  %8 = icmp eq %struct.yy_buffer_state* %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, i64 %5
  %11 = tail call i32* @__errno_location() #24
  br label %42

12:                                               ; preds = %1
  %13 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #21
  store i8* %13, i8** bitcast (%struct.yy_buffer_state*** @yy_buffer_stack to i8**), align 8, !tbaa !7
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call fastcc void @yy_fatal_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i64 0, i64 0)) #22
  unreachable

16:                                               ; preds = %12
  %17 = bitcast i8* %13 to i64*
  store i64 0, i64* %17, align 16
  store i64 1, i64* @yy_buffer_stack_max, align 8, !tbaa !9
  store i64 0, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  br label %33

18:                                               ; preds = %4
  %19 = load i64, i64* @yy_buffer_stack_max, align 8, !tbaa !9
  %20 = add i64 %19, -1
  %21 = icmp ult i64 %5, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  %23 = add i64 %19, 8
  %24 = bitcast %struct.yy_buffer_state** %2 to i8*
  %25 = shl i64 %23, 3
  %26 = tail call align 16 i8* @realloc(i8* nonnull %24, i64 %25) #21
  store i8* %26, i8** bitcast (%struct.yy_buffer_state*** @yy_buffer_stack to i8**), align 8, !tbaa !7
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  tail call fastcc void @yy_fatal_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i64 0, i64 0)) #22
  unreachable

29:                                               ; preds = %22
  %30 = bitcast i8* %26 to %struct.yy_buffer_state**
  %31 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %30, i64 %19
  %32 = bitcast %struct.yy_buffer_state** %31 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %32, i8 0, i64 64, i1 false) #21
  store i64 %23, i64* @yy_buffer_stack_max, align 8, !tbaa !9
  br label %33

33:                                               ; preds = %29, %18, %16
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8, !tbaa !7
  %35 = tail call %struct.yy_buffer_state* @yy_create_buffer(%struct._IO_FILE* %34, i32 16384)
  %36 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %37 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %38 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %36, i64 %37
  store %struct.yy_buffer_state* %35, %struct.yy_buffer_state** %38, align 8, !tbaa !7
  %39 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %36, i64 %37
  %40 = tail call i32* @__errno_location() #24
  %41 = icmp ne %struct.yy_buffer_state* %35, null
  call void @llvm.assume(i1 %41)
  br label %42

42:                                               ; preds = %33, %9
  %43 = phi i32* [ %11, %9 ], [ %40, %33 ]
  %44 = phi %struct.yy_buffer_state** [ %10, %9 ], [ %39, %33 ]
  %45 = phi %struct.yy_buffer_state* [ %7, %9 ], [ %35, %33 ]
  %46 = load i32, i32* %43, align 4, !tbaa !3
  %47 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %45, i64 0, i32 4
  store i32 0, i32* %47, align 4, !tbaa !11
  %48 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %45, i64 0, i32 1
  %49 = load i8*, i8** %48, align 8, !tbaa !26
  store i8 0, i8* %49, align 1, !tbaa !15
  %50 = load i8*, i8** %48, align 8, !tbaa !26
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8 0, i8* %51, align 1, !tbaa !15
  %52 = load i8*, i8** %48, align 8, !tbaa !26
  %53 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %45, i64 0, i32 2
  store i8* %52, i8** %53, align 8, !tbaa !13
  %54 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %45, i64 0, i32 7
  store i32 1, i32* %54, align 8, !tbaa !16
  %55 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %45, i64 0, i32 11
  store i32 0, i32* %55, align 8, !tbaa !27
  %56 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %44, align 8, !tbaa !7
  %57 = icmp eq %struct.yy_buffer_state* %56, %45
  br i1 %57, label %58, label %68

58:                                               ; preds = %42
  %59 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %44, align 8, !tbaa !7
  %60 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %59, i64 0, i32 4
  %61 = load i32, i32* %60, align 4, !tbaa !11
  store i32 %61, i32* @yy_n_chars, align 4, !tbaa !3
  %62 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %59, i64 0, i32 2
  %63 = load i8*, i8** %62, align 8, !tbaa !13
  store i8* %63, i8** @yy_c_buf_p, align 8, !tbaa !7
  store i8* %63, i8** @yytext, align 8, !tbaa !7
  %64 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %44, align 8, !tbaa !7
  %65 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %64, i64 0, i32 0
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %65, align 8, !tbaa !14
  store %struct._IO_FILE* %66, %struct._IO_FILE** @yyin, align 8, !tbaa !7
  %67 = load i8, i8* %63, align 1, !tbaa !15
  store i8 %67, i8* @yy_hold_char, align 1, !tbaa !15
  br label %68

68:                                               ; preds = %58, %42
  %69 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %45, i64 0, i32 0
  store %struct._IO_FILE* %0, %struct._IO_FILE** %69, align 8, !tbaa !14
  %70 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %45, i64 0, i32 10
  store i32 1, i32* %70, align 4, !tbaa !28
  %71 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %44, align 8, !tbaa !7
  %72 = icmp eq %struct.yy_buffer_state* %71, %45
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %45, i64 0, i32 8
  store i32 1, i32* %74, align 4, !tbaa !43
  %75 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %45, i64 0, i32 9
  store i32 0, i32* %75, align 8, !tbaa !44
  br label %76

76:                                               ; preds = %73, %68
  %77 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %45, i64 0, i32 6
  store i32 0, i32* %77, align 4, !tbaa !42
  store i32 %46, i32* %43, align 4, !tbaa !3
  %78 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %44, align 8, !tbaa !7
  %79 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %78, i64 0, i32 4
  %80 = load i32, i32* %79, align 4, !tbaa !11
  store i32 %80, i32* @yy_n_chars, align 4, !tbaa !3
  %81 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %78, i64 0, i32 2
  %82 = load i8*, i8** %81, align 8, !tbaa !13
  store i8* %82, i8** @yy_c_buf_p, align 8, !tbaa !7
  store i8* %82, i8** @yytext, align 8, !tbaa !7
  %83 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %44, align 8, !tbaa !7
  %84 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %83, i64 0, i32 0
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %84, align 8, !tbaa !14
  store %struct._IO_FILE* %85, %struct._IO_FILE** @yyin, align 8, !tbaa !7
  %86 = load i8, i8* %82, align 1, !tbaa !15
  store i8 %86, i8* @yy_hold_char, align 1, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @yy_switch_to_buffer(%struct.yy_buffer_state* %0) local_unnamed_addr #0 {
  %2 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %3 = icmp eq %struct.yy_buffer_state** %2, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #21
  store i8* %5, i8** bitcast (%struct.yy_buffer_state*** @yy_buffer_stack to i8**), align 8, !tbaa !7
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call fastcc void @yy_fatal_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i64 0, i64 0)) #22
  unreachable

8:                                                ; preds = %4
  %9 = bitcast i8* %5 to %struct.yy_buffer_state**
  %10 = bitcast i8* %5 to i64*
  store i64 0, i64* %10, align 16
  store i64 1, i64* @yy_buffer_stack_max, align 8, !tbaa !9
  store i64 0, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  br label %27

11:                                               ; preds = %1
  %12 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %13 = load i64, i64* @yy_buffer_stack_max, align 8, !tbaa !9
  %14 = add i64 %13, -1
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %27, label %16

16:                                               ; preds = %11
  %17 = add i64 %13, 8
  %18 = bitcast %struct.yy_buffer_state** %2 to i8*
  %19 = shl i64 %17, 3
  %20 = tail call align 16 i8* @realloc(i8* nonnull %18, i64 %19) #21
  store i8* %20, i8** bitcast (%struct.yy_buffer_state*** @yy_buffer_stack to i8**), align 8, !tbaa !7
  %21 = icmp eq i8* %20, null
  %22 = bitcast i8* %20 to %struct.yy_buffer_state**
  br i1 %21, label %23, label %24

23:                                               ; preds = %16
  tail call fastcc void @yy_fatal_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i64 0, i64 0)) #22
  unreachable

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %22, i64 %13
  %26 = bitcast %struct.yy_buffer_state** %25 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %26, i8 0, i64 64, i1 false) #21
  store i64 %17, i64* @yy_buffer_stack_max, align 8, !tbaa !9
  br label %27

27:                                               ; preds = %24, %11, %8
  %28 = phi i64 [ 0, %8 ], [ %12, %11 ], [ %12, %24 ]
  %29 = phi %struct.yy_buffer_state** [ %9, %8 ], [ %2, %11 ], [ %22, %24 ]
  %30 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %29, i64 %28
  %31 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %30, align 8, !tbaa !7
  %32 = icmp eq %struct.yy_buffer_state* %31, %0
  br i1 %32, label %53, label %33

33:                                               ; preds = %27
  %34 = icmp eq %struct.yy_buffer_state* %31, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %33
  %36 = load i8, i8* @yy_hold_char, align 1, !tbaa !15
  %37 = load i8*, i8** @yy_c_buf_p, align 8, !tbaa !7
  store i8 %36, i8* %37, align 1, !tbaa !15
  %38 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %30, align 8, !tbaa !7
  %39 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %38, i64 0, i32 2
  store i8* %37, i8** %39, align 8, !tbaa !13
  %40 = load i32, i32* @yy_n_chars, align 4, !tbaa !3
  %41 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %30, align 8, !tbaa !7
  %42 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %41, i64 0, i32 4
  store i32 %40, i32* %42, align 4, !tbaa !11
  br label %43

43:                                               ; preds = %35, %33
  %44 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %29, i64 %28
  store %struct.yy_buffer_state* %0, %struct.yy_buffer_state** %44, align 8, !tbaa !7
  %45 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 4
  %46 = load i32, i32* %45, align 4, !tbaa !11
  store i32 %46, i32* @yy_n_chars, align 4, !tbaa !3
  %47 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 2
  %48 = load i8*, i8** %47, align 8, !tbaa !13
  store i8* %48, i8** @yy_c_buf_p, align 8, !tbaa !7
  store i8* %48, i8** @yytext, align 8, !tbaa !7
  %49 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %44, align 8, !tbaa !7
  %50 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %49, i64 0, i32 0
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %50, align 8, !tbaa !14
  store %struct._IO_FILE* %51, %struct._IO_FILE** @yyin, align 8, !tbaa !7
  %52 = load i8, i8* %48, align 1, !tbaa !15
  store i8 %52, i8* @yy_hold_char, align 1, !tbaa !15
  br label %53

53:                                               ; preds = %43, %27
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local noalias i8* @yyalloc(i64 %0) local_unnamed_addr #10 {
  %2 = tail call noalias align 16 i8* @malloc(i64 %0) #21
  ret i8* %2
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @yy_delete_buffer(%struct.yy_buffer_state* %0) local_unnamed_addr #11 {
  %2 = icmp eq %struct.yy_buffer_state* %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %5 = icmp eq %struct.yy_buffer_state** %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %8 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %4, i64 %7
  %9 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %8, align 8, !tbaa !7
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi %struct.yy_buffer_state* [ %9, %6 ], [ null, %3 ]
  %12 = icmp eq %struct.yy_buffer_state* %11, %0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %15 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %4, i64 %14
  store %struct.yy_buffer_state* null, %struct.yy_buffer_state** %15, align 8, !tbaa !7
  br label %16

16:                                               ; preds = %13, %10
  %17 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 5
  %18 = load i32, i32* %17, align 8, !tbaa !25
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 1
  %22 = load i8*, i8** %21, align 8, !tbaa !26
  tail call void @free(i8* %22) #21
  br label %23

23:                                               ; preds = %20, %16
  %24 = bitcast %struct.yy_buffer_state* %0 to i8*
  tail call void @free(i8* %24) #21
  br label %25

25:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @yyfree(i8* nocapture %0) local_unnamed_addr #11 {
  tail call void @free(i8* %0) #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @yy_flush_buffer(%struct.yy_buffer_state* %0) local_unnamed_addr #12 {
  %2 = icmp eq %struct.yy_buffer_state* %0, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 4
  store i32 0, i32* %4, align 4, !tbaa !11
  %5 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 1
  %6 = load i8*, i8** %5, align 8, !tbaa !26
  store i8 0, i8* %6, align 1, !tbaa !15
  %7 = load i8*, i8** %5, align 8, !tbaa !26
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  store i8 0, i8* %8, align 1, !tbaa !15
  %9 = load i8*, i8** %5, align 8, !tbaa !26
  %10 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 2
  store i8* %9, i8** %10, align 8, !tbaa !13
  %11 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 7
  store i32 1, i32* %11, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 11
  store i32 0, i32* %12, align 8, !tbaa !27
  %13 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %14 = icmp eq %struct.yy_buffer_state** %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %17 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %13, i64 %16
  %18 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %17, align 8, !tbaa !7
  br label %19

19:                                               ; preds = %15, %3
  %20 = phi %struct.yy_buffer_state* [ %18, %15 ], [ null, %3 ]
  %21 = icmp eq %struct.yy_buffer_state* %20, %0
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %24 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %13, i64 %23
  %25 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %24, align 8, !tbaa !7
  %26 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %25, i64 0, i32 4
  %27 = load i32, i32* %26, align 4, !tbaa !11
  store i32 %27, i32* @yy_n_chars, align 4, !tbaa !3
  %28 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %25, i64 0, i32 2
  %29 = load i8*, i8** %28, align 8, !tbaa !13
  store i8* %29, i8** @yy_c_buf_p, align 8, !tbaa !7
  store i8* %29, i8** @yytext, align 8, !tbaa !7
  %30 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %24, align 8, !tbaa !7
  %31 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %30, i64 0, i32 0
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %31, align 8, !tbaa !14
  store %struct._IO_FILE* %32, %struct._IO_FILE** @yyin, align 8, !tbaa !7
  %33 = load i8, i8* %29, align 1, !tbaa !15
  store i8 %33, i8* @yy_hold_char, align 1, !tbaa !15
  br label %34

34:                                               ; preds = %22, %19, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @yypush_buffer_state(%struct.yy_buffer_state* %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.yy_buffer_state* %0, null
  br i1 %2, label %55, label %3

3:                                                ; preds = %1
  %4 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %5 = icmp eq %struct.yy_buffer_state** %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #21
  store i8* %7, i8** bitcast (%struct.yy_buffer_state*** @yy_buffer_stack to i8**), align 8, !tbaa !7
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call fastcc void @yy_fatal_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i64 0, i64 0)) #22
  unreachable

10:                                               ; preds = %6
  %11 = bitcast i8* %7 to %struct.yy_buffer_state**
  %12 = bitcast i8* %7 to i64*
  store i64 0, i64* %12, align 16
  store i64 1, i64* @yy_buffer_stack_max, align 8, !tbaa !9
  store i64 0, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  br label %29

13:                                               ; preds = %3
  %14 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %15 = load i64, i64* @yy_buffer_stack_max, align 8, !tbaa !9
  %16 = add i64 %15, -1
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %29, label %18

18:                                               ; preds = %13
  %19 = add i64 %15, 8
  %20 = bitcast %struct.yy_buffer_state** %4 to i8*
  %21 = shl i64 %19, 3
  %22 = tail call align 16 i8* @realloc(i8* nonnull %20, i64 %21) #21
  store i8* %22, i8** bitcast (%struct.yy_buffer_state*** @yy_buffer_stack to i8**), align 8, !tbaa !7
  %23 = icmp eq i8* %22, null
  %24 = bitcast i8* %22 to %struct.yy_buffer_state**
  br i1 %23, label %25, label %26

25:                                               ; preds = %18
  tail call fastcc void @yy_fatal_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i64 0, i64 0)) #22
  unreachable

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %24, i64 %15
  %28 = bitcast %struct.yy_buffer_state** %27 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %28, i8 0, i64 64, i1 false) #21
  store i64 %19, i64* @yy_buffer_stack_max, align 8, !tbaa !9
  br label %29

29:                                               ; preds = %26, %13, %10
  %30 = phi i64 [ 0, %10 ], [ %14, %13 ], [ %14, %26 ]
  %31 = phi %struct.yy_buffer_state** [ %11, %10 ], [ %4, %13 ], [ %24, %26 ]
  %32 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %31, i64 %30
  %33 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %32, align 8, !tbaa !7
  %34 = icmp eq %struct.yy_buffer_state* %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %29
  %36 = load i8, i8* @yy_hold_char, align 1, !tbaa !15
  %37 = load i8*, i8** @yy_c_buf_p, align 8, !tbaa !7
  store i8 %36, i8* %37, align 1, !tbaa !15
  %38 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %32, align 8, !tbaa !7
  %39 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %38, i64 0, i32 2
  store i8* %37, i8** %39, align 8, !tbaa !13
  %40 = load i32, i32* @yy_n_chars, align 4, !tbaa !3
  %41 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %32, align 8, !tbaa !7
  %42 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %41, i64 0, i32 4
  store i32 %40, i32* %42, align 4, !tbaa !11
  %43 = add i64 %30, 1
  store i64 %43, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  br label %44

44:                                               ; preds = %35, %29
  %45 = phi i64 [ %43, %35 ], [ %30, %29 ]
  %46 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %31, i64 %45
  store %struct.yy_buffer_state* %0, %struct.yy_buffer_state** %46, align 8, !tbaa !7
  %47 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 4
  %48 = load i32, i32* %47, align 4, !tbaa !11
  store i32 %48, i32* @yy_n_chars, align 4, !tbaa !3
  %49 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 2
  %50 = load i8*, i8** %49, align 8, !tbaa !13
  store i8* %50, i8** @yy_c_buf_p, align 8, !tbaa !7
  store i8* %50, i8** @yytext, align 8, !tbaa !7
  %51 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %46, align 8, !tbaa !7
  %52 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %51, i64 0, i32 0
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %52, align 8, !tbaa !14
  store %struct._IO_FILE* %53, %struct._IO_FILE** @yyin, align 8, !tbaa !7
  %54 = load i8, i8* %50, align 1, !tbaa !15
  store i8 %54, i8* @yy_hold_char, align 1, !tbaa !15
  br label %55

55:                                               ; preds = %44, %1
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @yypop_buffer_state() local_unnamed_addr #11 {
  %1 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %2 = icmp eq %struct.yy_buffer_state** %1, null
  br i1 %2, label %33, label %3

3:                                                ; preds = %0
  %4 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %1, i64 %4
  %6 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8, !tbaa !7
  %7 = icmp eq %struct.yy_buffer_state* %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %3
  store %struct.yy_buffer_state* null, %struct.yy_buffer_state** %5, align 8, !tbaa !7
  %9 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %6, i64 0, i32 5
  %10 = load i32, i32* %9, align 8, !tbaa !25
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %6, i64 0, i32 1
  %14 = load i8*, i8** %13, align 8, !tbaa !26
  tail call void @free(i8* %14) #21
  br label %15

15:                                               ; preds = %12, %8
  %16 = bitcast %struct.yy_buffer_state* %6 to i8*
  tail call void @free(i8* %16) #21
  store %struct.yy_buffer_state* null, %struct.yy_buffer_state** %5, align 8, !tbaa !7
  %17 = icmp eq i64 %4, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %15
  %19 = add i64 %4, -1
  store i64 %19, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %20 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %1, i64 %19
  %21 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %20, align 8, !tbaa !7
  %22 = icmp eq %struct.yy_buffer_state* %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %1, i64 %19
  %25 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %21, i64 0, i32 4
  %26 = load i32, i32* %25, align 4, !tbaa !11
  store i32 %26, i32* @yy_n_chars, align 4, !tbaa !3
  %27 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %21, i64 0, i32 2
  %28 = load i8*, i8** %27, align 8, !tbaa !13
  store i8* %28, i8** @yy_c_buf_p, align 8, !tbaa !7
  store i8* %28, i8** @yytext, align 8, !tbaa !7
  %29 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %24, align 8, !tbaa !7
  %30 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %29, i64 0, i32 0
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %30, align 8, !tbaa !14
  store %struct._IO_FILE* %31, %struct._IO_FILE** @yyin, align 8, !tbaa !7
  %32 = load i8, i8* %28, align 1, !tbaa !15
  store i8 %32, i8* @yy_hold_char, align 1, !tbaa !15
  br label %33

33:                                               ; preds = %23, %18, %15, %3, %0
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local %struct.yy_buffer_state* @yy_scan_buffer(i8* %0, i64 %1) local_unnamed_addr #0 {
  %3 = icmp ult i64 %1, 2
  br i1 %3, label %40, label %4

4:                                                ; preds = %2
  %5 = add i64 %1, -2
  %6 = getelementptr inbounds i8, i8* %0, i64 %5
  %7 = load i8, i8* %6, align 1, !tbaa !15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %4
  %10 = add i64 %1, -1
  %11 = getelementptr inbounds i8, i8* %0, i64 %10
  %12 = load i8, i8* %11, align 1, !tbaa !15
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %9
  %15 = tail call noalias align 16 dereferenceable_or_null(64) i8* @malloc(i64 64) #21
  %16 = bitcast i8* %15 to %struct.yy_buffer_state*
  %17 = icmp eq i8* %15, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call fastcc void @yy_fatal_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0)) #25
  unreachable

19:                                               ; preds = %14
  %20 = trunc i64 %5 to i32
  %21 = getelementptr inbounds i8, i8* %15, i64 24
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 8, !tbaa !41
  %23 = getelementptr inbounds i8, i8* %15, i64 8
  %24 = bitcast i8* %23 to i8**
  store i8* %0, i8** %24, align 8, !tbaa !26
  %25 = getelementptr inbounds i8, i8* %15, i64 16
  %26 = bitcast i8* %25 to i8**
  store i8* %0, i8** %26, align 16, !tbaa !13
  %27 = getelementptr inbounds i8, i8* %15, i64 32
  %28 = bitcast i8* %27 to i32*
  store i32 0, i32* %28, align 16, !tbaa !25
  %29 = bitcast i8* %15 to %struct._IO_FILE**
  store %struct._IO_FILE* null, %struct._IO_FILE** %29, align 16, !tbaa !14
  %30 = getelementptr inbounds i8, i8* %15, i64 28
  %31 = bitcast i8* %30 to i32*
  store i32 %20, i32* %31, align 4, !tbaa !11
  %32 = getelementptr inbounds i8, i8* %15, i64 36
  %33 = bitcast i8* %32 to i32*
  store i32 0, i32* %33, align 4, !tbaa !42
  %34 = getelementptr inbounds i8, i8* %15, i64 40
  %35 = bitcast i8* %34 to i32*
  store i32 1, i32* %35, align 8, !tbaa !16
  %36 = getelementptr inbounds i8, i8* %15, i64 52
  %37 = bitcast i8* %36 to i32*
  store i32 0, i32* %37, align 4, !tbaa !28
  %38 = getelementptr inbounds i8, i8* %15, i64 56
  %39 = bitcast i8* %38 to i32*
  store i32 0, i32* %39, align 8, !tbaa !27
  tail call void @yy_switch_to_buffer(%struct.yy_buffer_state* nonnull %16)
  br label %40

40:                                               ; preds = %19, %9, %4, %2
  %41 = phi %struct.yy_buffer_state* [ %16, %19 ], [ null, %9 ], [ null, %4 ], [ null, %2 ]
  ret %struct.yy_buffer_state* %41
}

; Function Attrs: nounwind uwtable
define dso_local %struct.yy_buffer_state* @yy_scan_string(i8* nocapture readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #23
  %3 = trunc i64 %2 to i32
  %4 = tail call %struct.yy_buffer_state* @yy_scan_bytes(i8* %0, i32 %3)
  ret %struct.yy_buffer_state* %4
}

; Function Attrs: nounwind uwtable
define dso_local %struct.yy_buffer_state* @yy_scan_bytes(i8* nocapture readonly %0, i32 %1) local_unnamed_addr #0 {
  %3 = add nsw i32 %1, 2
  %4 = sext i32 %3 to i64
  %5 = tail call noalias align 16 i8* @malloc(i64 %4) #21
  %6 = icmp eq i8* %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %7
  %10 = zext i32 %1 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %5, i8* align 1 %0, i64 %10, i1 false)
  %11 = add nuw nsw i32 %1, 1
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %5, i64 %12
  store i8 0, i8* %13, align 1, !tbaa !15
  %14 = zext i32 %1 to i64
  %15 = getelementptr inbounds i8, i8* %5, i64 %14
  store i8 0, i8* %15, align 1, !tbaa !15
  br label %24

16:                                               ; preds = %2
  tail call fastcc void @yy_fatal_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0)) #25
  unreachable

17:                                               ; preds = %7
  %18 = add nsw i32 %1, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %5, i64 %19
  store i8 0, i8* %20, align 1, !tbaa !15
  %21 = sext i32 %1 to i64
  %22 = getelementptr inbounds i8, i8* %5, i64 %21
  store i8 0, i8* %22, align 1, !tbaa !15
  %23 = icmp ugt i32 %1, -3
  br i1 %23, label %29, label %24

24:                                               ; preds = %17, %9
  %25 = tail call noalias align 16 dereferenceable_or_null(64) i8* @malloc(i64 64) #21
  %26 = bitcast i8* %25 to %struct.yy_buffer_state*
  %27 = icmp eq i8* %25, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  tail call fastcc void @yy_fatal_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0)) #22
  unreachable

29:                                               ; preds = %17
  tail call fastcc void @yy_fatal_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0)) #25
  unreachable

30:                                               ; preds = %24
  %31 = getelementptr inbounds i8, i8* %25, i64 24
  %32 = bitcast i8* %31 to i32*
  store i32 %1, i32* %32, align 8, !tbaa !41
  %33 = getelementptr inbounds i8, i8* %25, i64 8
  %34 = bitcast i8* %33 to i8**
  store i8* %5, i8** %34, align 8, !tbaa !26
  %35 = getelementptr inbounds i8, i8* %25, i64 16
  %36 = bitcast i8* %35 to i8**
  store i8* %5, i8** %36, align 16, !tbaa !13
  %37 = getelementptr inbounds i8, i8* %25, i64 32
  %38 = bitcast i8* %37 to i32*
  store i32 0, i32* %38, align 16, !tbaa !25
  %39 = bitcast i8* %25 to %struct._IO_FILE**
  store %struct._IO_FILE* null, %struct._IO_FILE** %39, align 16, !tbaa !14
  %40 = getelementptr inbounds i8, i8* %25, i64 28
  %41 = bitcast i8* %40 to i32*
  store i32 %1, i32* %41, align 4, !tbaa !11
  %42 = getelementptr inbounds i8, i8* %25, i64 36
  %43 = bitcast i8* %42 to i32*
  store i32 0, i32* %43, align 4, !tbaa !42
  %44 = getelementptr inbounds i8, i8* %25, i64 40
  %45 = bitcast i8* %44 to i32*
  store i32 1, i32* %45, align 8, !tbaa !16
  %46 = getelementptr inbounds i8, i8* %25, i64 52
  %47 = bitcast i8* %46 to i32*
  store i32 0, i32* %47, align 4, !tbaa !28
  %48 = getelementptr inbounds i8, i8* %25, i64 56
  %49 = bitcast i8* %48 to i32*
  store i32 0, i32* %49, align 8, !tbaa !27
  tail call void @yy_switch_to_buffer(%struct.yy_buffer_state* nonnull %26) #21
  %50 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %26, i64 0, i32 5
  store i32 1, i32* %50, align 16, !tbaa !25
  ret %struct.yy_buffer_state* %26
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @yyget_lineno() local_unnamed_addr #13 {
  %1 = load i32, i32* @yylineno, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local %struct._IO_FILE* @yyget_in() local_unnamed_addr #13 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8, !tbaa !7
  ret %struct._IO_FILE* %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local %struct._IO_FILE* @yyget_out() local_unnamed_addr #13 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8, !tbaa !7
  ret %struct._IO_FILE* %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @yyget_leng() local_unnamed_addr #13 {
  %1 = load i32, i32* @yyleng, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i8* @yyget_text() local_unnamed_addr #13 {
  %1 = load i8*, i8** @yytext, align 8, !tbaa !7
  ret i8* %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @yyset_lineno(i32 %0) local_unnamed_addr #14 {
  store i32 %0, i32* @yylineno, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @yyset_in(%struct._IO_FILE* %0) local_unnamed_addr #14 {
  store %struct._IO_FILE* %0, %struct._IO_FILE** @yyin, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @yyset_out(%struct._IO_FILE* %0) local_unnamed_addr #14 {
  store %struct._IO_FILE* %0, %struct._IO_FILE** @yyout, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @yyget_debug() local_unnamed_addr #13 {
  %1 = load i32, i32* @yy_flex_debug, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @yyset_debug(i32 %0) local_unnamed_addr #14 {
  store i32 %0, i32* @yy_flex_debug, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @yylex_destroy() local_unnamed_addr #0 {
  %1 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %2 = icmp eq %struct.yy_buffer_state** %1, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %0
  %4 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %1, i64 %4
  %6 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8, !tbaa !7
  %7 = icmp eq %struct.yy_buffer_state* %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %1, i64 %4
  store %struct.yy_buffer_state* null, %struct.yy_buffer_state** %9, align 8, !tbaa !7
  %10 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %6, i64 0, i32 5
  %11 = load i32, i32* %10, align 8, !tbaa !25
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %6, i64 0, i32 1
  %15 = load i8*, i8** %14, align 8, !tbaa !26
  tail call void @free(i8* %15) #21
  %16 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  %17 = load i64, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi i64 [ %17, %13 ], [ %4, %8 ]
  %20 = phi %struct.yy_buffer_state** [ %16, %13 ], [ %1, %8 ]
  %21 = bitcast %struct.yy_buffer_state* %6 to i8*
  tail call void @free(i8* %21) #21
  %22 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %20, i64 %19
  store %struct.yy_buffer_state* null, %struct.yy_buffer_state** %22, align 8, !tbaa !7
  br label %23

23:                                               ; preds = %18, %3, %0
  %24 = phi %struct.yy_buffer_state** [ %1, %0 ], [ %20, %18 ], [ %1, %3 ]
  %25 = bitcast %struct.yy_buffer_state** %24 to i8*
  tail call void @free(i8* %25) #21
  store %struct.yy_buffer_state** null, %struct.yy_buffer_state*** @yy_buffer_stack, align 8, !tbaa !7
  store i64 0, i64* @yy_buffer_stack_top, align 8, !tbaa !9
  store i64 0, i64* @yy_buffer_stack_max, align 8, !tbaa !9
  store i8* null, i8** @yy_c_buf_p, align 8, !tbaa !7
  store i1 false, i1* @yy_init, align 4
  store i32 0, i32* @yy_start, align 4, !tbaa !3
  store %struct._IO_FILE* null, %struct._IO_FILE** @yyin, align 8, !tbaa !7
  store %struct._IO_FILE* null, %struct._IO_FILE** @yyout, align 8, !tbaa !7
  ret i32 0
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local noalias i8* @yyrealloc(i8* nocapture %0, i64 %1) local_unnamed_addr #11 {
  %3 = tail call align 16 i8* @realloc(i8* %0, i64 %1) #21
  ret i8* %3
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local noalias noundef i8* @realloc(i8* nocapture, i64 noundef) local_unnamed_addr #16

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @getc(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind readonly
declare dso_local noundef i32 @ferror(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare dso_local void @clearerr(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #5

declare dso_local void @srcfile_push(i8*) local_unnamed_addr #2

declare dso_local zeroext i1 @srcfile_pop() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #19

declare dso_local void @srcpos_verror(%struct.srcpos*, i8*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #19

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #20

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { argmemonly nofree nounwind willreturn writeonly }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind readonly willreturn }
attributes #24 = { nounwind readnone willreturn }
attributes #25 = { noreturn }
attributes #26 = { cold }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!12, !4, i64 28}
!12 = !{!"yy_buffer_state", !8, i64 0, !8, i64 8, !8, i64 16, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56}
!13 = !{!12, !8, i64 16}
!14 = !{!12, !8, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!12, !4, i64 40}
!17 = !{!18, !18, i64 0}
!18 = !{!"short", !5, i64 0}
!19 = !{!20, !8, i64 0}
!20 = !{!"srcfile_state", !8, i64 0, !8, i64 8, !8, i64 16, !4, i64 24, !4, i64 28, !8, i64 32}
!21 = !{i64 0, i64 4, !3, i64 8, i64 8, !7, i64 16, i64 8, !7}
!22 = !{!23, !8, i64 8}
!23 = !{!"data", !4, i64 0, !8, i64 8, !8, i64 16}
!24 = !{!23, !4, i64 0}
!25 = !{!12, !4, i64 32}
!26 = !{!12, !8, i64 8}
!27 = !{!12, !4, i64 56}
!28 = !{!12, !4, i64 52}
!29 = !{!30}
!30 = distinct !{!30, !31}
!31 = distinct !{!31, !"LVerDomain"}
!32 = !{!33}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = distinct !{!38, !39, !35}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = distinct !{!40, !35}
!41 = !{!12, !4, i64 24}
!42 = !{!12, !4, i64 36}
!43 = !{!12, !4, i64 44}
!44 = !{!12, !4, i64 48}
!45 = !{!46, !46, i64 0}
!46 = !{!"_Bool", !5, i64 0}
