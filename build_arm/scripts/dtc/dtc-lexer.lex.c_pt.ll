; ModuleID = '/llk/IR/build_arm/scripts/dtc/dtc-lexer.lex.c_pt.bc'
source_filename = "scripts/dtc/dtc-lexer.lex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcpos = type { i32, i32, i32, i32, ptr, ptr }
%union.YYSTYPE = type { %struct.anon }
%struct.anon = type { %struct.data, i32 }
%struct.data = type { i32, ptr, ptr }
%struct.yy_buffer_state = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@yyin = dso_local local_unnamed_addr global ptr null, align 8
@yyout = dso_local local_unnamed_addr global ptr null, align 8
@yylineno = dso_local local_unnamed_addr global i32 1, align 4
@yy_flex_debug = dso_local local_unnamed_addr global i32 0, align 4
@yy_init = internal unnamed_addr global i1 false, align 4
@yy_start = internal unnamed_addr global i32 0, align 4
@stdin = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@yy_buffer_stack = internal unnamed_addr global ptr null, align 8
@yy_buffer_stack_top = internal unnamed_addr global i64 0, align 8
@yy_c_buf_p = internal unnamed_addr global ptr null, align 8
@yy_hold_char = internal unnamed_addr global i8 0, align 1
@yy_ec = internal unnamed_addr constant [256 x i8] c"\00\01\01\01\01\01\01\01\01\02\03\04\04\04\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\05\06\07\01\01\08\09\01\01\0A\0B\0B\0C\0B\0D\0E\0F\10\10\10\10\10\10\10\10\11\01\12\13\14\0B\0B\15\15\15\15\15\15\16\16\16\16\16\17\16\16\16\16\16\16\16\16\18\16\16\19\16\16\01\1A\1B\01\16\01\15\1C\1D\1E\1F !\16\22\16\16#$%&'\16()*+,\16\19-\16./0\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16
@yy_accept = internal unnamed_addr constant [181 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 33, i16 31, i16 20, i16 20, i16 31, i16 31, i16 31, i16 31, i16 31, i16 31, i16 31, i16 31, i16 31, i16 31, i16 31, i16 31, i16 31, i16 31, i16 17, i16 18, i16 18, i16 31, i16 18, i16 12, i16 12, i16 20, i16 28, i16 0, i16 3, i16 0, i16 29, i16 14, i16 0, i16 0, i16 13, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 23, i16 25, i16 27, i16 26, i16 24, i16 0, i16 11, i16 30, i16 0, i16 0, i16 0, i16 16, i16 16, i16 18, i16 18, i16 18, i16 12, i16 12, i16 12, i16 0, i16 14, i16 0, i16 13, i16 0, i16 0, i16 0, i16 22, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 18, i16 12, i16 12, i16 12, i16 0, i16 15, i16 21, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 18, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 18, i16 7, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 4, i16 19, i16 0, i16 0, i16 0, i16 5, i16 2, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 0, i16 0, i16 0, i16 0, i16 0, i16 6, i16 0, i16 9, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 10, i16 8, i16 0], align 16
@yy_last_accepting_state = internal unnamed_addr global i32 0, align 4
@yy_last_accepting_cpos = internal unnamed_addr global ptr null, align 8
@yy_chk = internal unnamed_addr constant [464 x i16] [i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 3, i16 3, i16 3, i16 3, i16 7, i16 7, i16 7, i16 177, i16 3, i16 11, i16 11, i16 11, i16 18, i16 18, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 8, i16 12, i16 12, i16 12, i16 14, i16 15, i16 16, i16 8, i16 8, i16 8, i16 20, i16 20, i16 23, i16 31, i16 77, i16 29, i16 176, i16 77, i16 29, i16 29, i16 29, i16 36, i16 175, i16 16, i16 14, i16 29, i16 32, i16 32, i16 32, i16 33, i16 33, i16 33, i16 34, i16 34, i16 34, i16 32, i16 32, i16 32, i16 33, i16 33, i16 42, i16 36, i16 44, i16 15, i16 17, i16 23, i16 31, i16 17, i16 140, i16 48, i16 140, i16 67, i16 75, i16 61, i16 67, i16 67, i16 67, i16 42, i16 174, i16 44, i16 48, i16 67, i16 17, i16 173, i16 17, i16 61, i16 61, i16 61, i16 17, i16 75, i16 17, i16 172, i16 17, i16 17, i16 26, i16 26, i16 26, i16 26, i16 93, i16 93, i16 101, i16 26, i16 171, i16 87, i16 69, i16 69, i16 69, i16 101, i16 26, i16 26, i16 26, i16 26, i16 26, i16 69, i16 69, i16 87, i16 87, i16 87, i16 105, i16 118, i16 129, i16 139, i16 105, i16 169, i16 147, i16 150, i16 150, i16 150, i16 156, i16 150, i16 161, i16 167, i16 166, i16 139, i16 139, i16 139, i16 147, i16 147, i16 147, i16 118, i16 129, i16 155, i16 155, i16 155, i16 165, i16 155, i16 164, i16 163, i16 156, i16 160, i16 161, i16 181, i16 181, i16 181, i16 181, i16 181, i16 181, i16 181, i16 181, i16 182, i16 159, i16 158, i16 157, i16 182, i16 182, i16 183, i16 183, i16 183, i16 183, i16 183, i16 183, i16 183, i16 183, i16 184, i16 184, i16 184, i16 184, i16 185, i16 154, i16 185, i16 186, i16 153, i16 152, i16 186, i16 151, i16 186, i16 186, i16 187, i16 149, i16 148, i16 187, i16 187, i16 187, i16 187, i16 188, i16 145, i16 188, i16 188, i16 189, i16 189, i16 189, i16 189, i16 189, i16 189, i16 189, i16 189, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 190, i16 191, i16 144, i16 191, i16 192, i16 143, i16 192, i16 192, i16 138, i16 192, i16 192, i16 193, i16 193, i16 193, i16 193, i16 193, i16 193, i16 193, i16 193, i16 194, i16 194, i16 194, i16 194, i16 194, i16 194, i16 194, i16 194, i16 137, i16 136, i16 135, i16 134, i16 133, i16 132, i16 131, i16 130, i16 128, i16 127, i16 126, i16 125, i16 124, i16 123, i16 122, i16 120, i16 119, i16 117, i16 116, i16 115, i16 114, i16 113, i16 112, i16 111, i16 110, i16 109, i16 108, i16 107, i16 106, i16 104, i16 103, i16 102, i16 100, i16 99, i16 98, i16 97, i16 96, i16 94, i16 92, i16 90, i16 89, i16 88, i16 86, i16 85, i16 84, i16 83, i16 82, i16 81, i16 80, i16 79, i16 78, i16 76, i16 74, i16 71, i16 70, i16 68, i16 65, i16 63, i16 62, i16 58, i16 52, i16 51, i16 50, i16 49, i16 47, i16 46, i16 45, i16 41, i16 38, i16 24, i16 22, i16 21, i16 19, i16 13, i16 9, i16 6, i16 4, i16 2, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180], align 16
@yy_base = internal unnamed_addr constant [195 x i16] [i16 0, i16 0, i16 407, i16 36, i16 406, i16 68, i16 405, i16 39, i16 110, i16 411, i16 415, i16 56, i16 116, i16 391, i16 115, i16 114, i16 114, i16 151, i16 43, i16 390, i16 108, i16 391, i16 360, i16 127, i16 372, i16 0, i16 177, i16 415, i16 0, i16 125, i16 0, i16 128, i16 129, i16 132, i16 147, i16 415, i16 132, i16 415, i16 402, i16 415, i16 0, i16 391, i16 148, i16 415, i16 150, i16 393, i16 399, i16 367, i16 135, i16 363, i16 368, i16 362, i16 362, i16 415, i16 415, i16 415, i16 415, i16 415, i16 379, i16 415, i16 415, i16 168, i16 361, i16 357, i16 415, i16 376, i16 0, i16 161, i16 358, i16 187, i16 368, i16 367, i16 0, i16 0, i16 341, i16 160, i16 378, i16 121, i16 384, i16 373, i16 343, i16 349, i16 342, i16 353, i16 345, i16 346, i16 336, i16 198, i16 341, i16 348, i16 339, i16 415, i16 352, i16 172, i16 326, i16 415, i16 360, i16 359, i16 330, i16 339, i16 357, i16 169, i16 328, i16 325, i16 333, i16 213, i16 334, i16 329, i16 332, i16 352, i16 348, i16 318, i16 315, i16 324, i16 314, i16 325, i16 343, i16 320, i16 210, i16 351, i16 350, i16 415, i16 320, i16 335, i16 312, i16 318, i16 306, i16 312, i16 308, i16 211, i16 342, i16 340, i16 330, i16 328, i16 327, i16 308, i16 307, i16 305, i16 305, i16 216, i16 128, i16 415, i16 415, i16 302, i16 272, i16 280, i16 415, i16 219, i16 248, i16 245, i16 220, i16 237, i16 242, i16 248, i16 237, i16 236, i16 219, i16 228, i16 220, i16 226, i16 207, i16 221, i16 415, i16 241, i16 230, i16 229, i16 216, i16 197, i16 415, i16 180, i16 415, i16 159, i16 157, i16 138, i16 143, i16 94, i16 120, i16 43, i16 415, i16 415, i16 415, i16 247, i16 253, i16 261, i16 265, i16 269, i16 275, i16 282, i16 286, i16 294, i16 302, i16 306, i16 312, i16 320, i16 328], align 16
@yy_def = internal unnamed_addr constant [195 x i16] [i16 0, i16 180, i16 1, i16 1, i16 3, i16 180, i16 5, i16 1, i16 1, i16 180, i16 180, i16 180, i16 180, i16 180, i16 181, i16 182, i16 183, i16 180, i16 180, i16 180, i16 180, i16 184, i16 180, i16 180, i16 17, i16 185, i16 184, i16 180, i16 186, i16 187, i16 186, i16 186, i16 180, i16 180, i16 180, i16 180, i16 181, i16 180, i16 181, i16 180, i16 188, i16 180, i16 183, i16 180, i16 183, i16 189, i16 190, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 184, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 184, i16 186, i16 187, i16 186, i16 180, i16 180, i16 180, i16 191, i16 188, i16 192, i16 183, i16 189, i16 189, i16 190, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 186, i16 180, i16 180, i16 191, i16 192, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 186, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 193, i16 180, i16 186, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 193, i16 180, i16 193, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 194, i16 180, i16 180, i16 180, i16 180, i16 194, i16 180, i16 194, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 0, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180], align 16
@yy_meta = internal unnamed_addr constant [49 x i8] c"\00\01\01\01\01\01\01\02\03\01\02\02\02\04\05\05\05\06\01\01\01\07\08\08\08\08\01\01\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\03\01\04", align 16
@yy_nxt = internal unnamed_addr constant [464 x i16] [i16 0, i16 10, i16 11, i16 12, i16 11, i16 13, i16 14, i16 10, i16 15, i16 16, i16 10, i16 10, i16 10, i16 17, i16 10, i16 10, i16 10, i16 10, i16 18, i16 19, i16 20, i16 21, i16 21, i16 21, i16 21, i16 21, i16 10, i16 10, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 10, i16 22, i16 10, i16 24, i16 25, i16 25, i16 25, i16 32, i16 33, i16 33, i16 179, i16 26, i16 34, i16 34, i16 34, i16 53, i16 54, i16 27, i16 26, i16 26, i16 26, i16 26, i16 26, i16 10, i16 11, i16 12, i16 11, i16 13, i16 14, i16 28, i16 15, i16 16, i16 28, i16 28, i16 28, i16 24, i16 28, i16 28, i16 28, i16 10, i16 18, i16 19, i16 20, i16 29, i16 29, i16 29, i16 29, i16 29, i16 30, i16 10, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 29, i16 10, i16 22, i16 10, i16 23, i16 34, i16 34, i16 34, i16 37, i16 39, i16 43, i16 32, i16 33, i16 33, i16 56, i16 57, i16 61, i16 61, i16 77, i16 66, i16 178, i16 96, i16 66, i16 66, i16 66, i16 37, i16 177, i16 44, i16 38, i16 59, i16 69, i16 69, i16 69, i16 69, i16 69, i16 69, i16 34, i16 34, i16 34, i16 70, i16 71, i16 72, i16 70, i16 71, i16 43, i16 38, i16 75, i16 41, i16 45, i16 62, i16 68, i16 46, i16 148, i16 81, i16 149, i16 66, i16 43, i16 61, i16 66, i16 66, i16 66, i16 44, i16 176, i16 44, i16 82, i16 59, i16 47, i16 175, i16 48, i16 87, i16 87, i16 87, i16 49, i16 44, i16 50, i16 174, i16 51, i16 52, i16 65, i16 65, i16 65, i16 59, i16 70, i16 71, i16 113, i16 65, i16 173, i16 105, i16 69, i16 69, i16 69, i16 114, i16 65, i16 65, i16 65, i16 65, i16 65, i16 70, i16 71, i16 87, i16 87, i16 87, i16 105, i16 130, i16 130, i16 139, i16 118, i16 172, i16 139, i16 155, i16 155, i16 155, i16 162, i16 156, i16 162, i16 171, i16 170, i16 147, i16 147, i16 147, i16 147, i16 147, i16 147, i16 131, i16 131, i16 155, i16 155, i16 155, i16 169, i16 156, i16 168, i16 180, i16 163, i16 167, i16 163, i16 36, i16 36, i16 36, i16 36, i16 36, i16 36, i16 36, i16 36, i16 40, i16 166, i16 165, i16 164, i16 40, i16 40, i16 42, i16 42, i16 42, i16 42, i16 42, i16 42, i16 42, i16 42, i16 58, i16 58, i16 58, i16 58, i16 64, i16 160, i16 64, i16 66, i16 159, i16 158, i16 66, i16 157, i16 66, i16 66, i16 67, i16 154, i16 153, i16 67, i16 67, i16 67, i16 67, i16 73, i16 152, i16 73, i16 73, i16 76, i16 76, i16 76, i16 76, i16 76, i16 76, i16 76, i16 76, i16 78, i16 78, i16 78, i16 78, i16 78, i16 78, i16 78, i16 78, i16 93, i16 151, i16 93, i16 94, i16 150, i16 94, i16 94, i16 146, i16 94, i16 94, i16 129, i16 129, i16 129, i16 129, i16 129, i16 129, i16 129, i16 129, i16 161, i16 161, i16 161, i16 161, i16 161, i16 161, i16 161, i16 161, i16 145, i16 144, i16 143, i16 142, i16 141, i16 140, i16 180, i16 139, i16 138, i16 137, i16 136, i16 135, i16 134, i16 133, i16 132, i16 61, i16 61, i16 128, i16 127, i16 126, i16 125, i16 124, i16 123, i16 122, i16 121, i16 45, i16 120, i16 114, i16 119, i16 117, i16 116, i16 115, i16 112, i16 111, i16 110, i16 46, i16 109, i16 95, i16 91, i16 108, i16 107, i16 106, i16 104, i16 103, i16 102, i16 101, i16 100, i16 99, i16 98, i16 97, i16 79, i16 77, i16 95, i16 92, i16 91, i16 90, i16 59, i16 89, i16 88, i16 59, i16 86, i16 85, i16 84, i16 83, i16 80, i16 79, i16 77, i16 74, i16 180, i16 63, i16 60, i16 59, i16 55, i16 35, i16 180, i16 31, i16 23, i16 23, i16 9, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180, i16 180], align 16
@yytext = dso_local local_unnamed_addr global ptr null, align 8
@yyleng = dso_local local_unnamed_addr global i32 0, align 4
@yylloc = external global %struct.srcpos, align 8
@.str = private unnamed_addr constant [38 x i8] c"fnstart && fnend && (fnend > fnstart)\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"scripts/dtc/dtc-lexer.lex.c\00", align 1
@__PRETTY_FUNCTION__.yylex = private unnamed_addr constant [16 x i8] c"int yylex(void)\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"nul in line number directive\00", align 1
@yylval = external local_unnamed_addr global %union.YYSTYPE, align 8
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
@stderr = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@current_srcfile = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [14 x i8] c"Lexical error\00", align 1
@treesource_error = external local_unnamed_addr global i8, align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @yylex() local_unnamed_addr #0 {
  %1 = alloca %struct.data, align 8
  %2 = alloca %struct.data, align 8
  %3 = alloca %struct.data, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.data, align 8
  %6 = load i1, ptr @yy_init, align 4
  br i1 %6, label %66, label %7

7:                                                ; preds = %0
  store i1 true, ptr @yy_init, align 4
  %8 = load i32, ptr @yy_start, align 4, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 1, ptr @yy_start, align 4, !tbaa !5
  br label %11

11:                                               ; preds = %10, %7
  %12 = load ptr, ptr @yyin, align 8, !tbaa !9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load ptr, ptr @stdin, align 8, !tbaa !9
  store ptr %15, ptr @yyin, align 8, !tbaa !9
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi ptr [ %15, %14 ], [ %12, %11 ]
  %18 = load ptr, ptr @yyout, align 8, !tbaa !9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load ptr, ptr @stdout, align 8, !tbaa !9
  store ptr %21, ptr @yyout, align 8, !tbaa !9
  br label %22

22:                                               ; preds = %20, %16
  %23 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %27 = getelementptr inbounds ptr, ptr %23, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %54

30:                                               ; preds = %22
  %31 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #22
  store ptr %31, ptr @yy_buffer_stack, align 8, !tbaa !9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.18) #23
  unreachable

34:                                               ; preds = %30
  store i64 0, ptr %31, align 8
  store i64 1, ptr @yy_buffer_stack_max, align 8, !tbaa !11
  store i64 0, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  br label %48

35:                                               ; preds = %25
  %36 = load i64, ptr @yy_buffer_stack_max, align 8, !tbaa !11
  %37 = add i64 %36, -1
  %38 = icmp ult i64 %26, %37
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = add i64 %36, 8
  %41 = shl i64 %40, 3
  %42 = tail call ptr @realloc(ptr noundef nonnull %23, i64 noundef %41) #24
  store ptr %42, ptr @yy_buffer_stack, align 8, !tbaa !9
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.18) #23
  unreachable

45:                                               ; preds = %39
  %46 = getelementptr inbounds ptr, ptr %42, i64 %36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %46, i8 0, i64 64, i1 false) #25
  store i64 %40, ptr @yy_buffer_stack_max, align 8, !tbaa !11
  %47 = load ptr, ptr @yyin, align 8, !tbaa !9
  br label %48

48:                                               ; preds = %45, %35, %34
  %49 = phi ptr [ %17, %34 ], [ %17, %35 ], [ %47, %45 ]
  %50 = tail call ptr @yy_create_buffer(ptr noundef %49, i32 noundef 16384)
  %51 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %52 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %53 = getelementptr inbounds ptr, ptr %51, i64 %52
  store ptr %50, ptr %53, align 8, !tbaa !9
  br label %54

54:                                               ; preds = %48, %25
  %55 = phi ptr [ %50, %48 ], [ %28, %25 ]
  %56 = phi i64 [ %52, %48 ], [ %26, %25 ]
  %57 = phi ptr [ %51, %48 ], [ %23, %25 ]
  %58 = getelementptr inbounds ptr, ptr %57, i64 %56
  %59 = getelementptr inbounds %struct.yy_buffer_state, ptr %55, i64 0, i32 4
  %60 = load i32, ptr %59, align 4, !tbaa !13
  store i32 %60, ptr @yy_n_chars, align 4, !tbaa !5
  %61 = getelementptr inbounds %struct.yy_buffer_state, ptr %55, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !15
  store ptr %62, ptr @yy_c_buf_p, align 8, !tbaa !9
  store ptr %62, ptr @yytext, align 8, !tbaa !9
  %63 = load ptr, ptr %58, align 8, !tbaa !9
  %64 = load ptr, ptr %63, align 8, !tbaa !16
  store ptr %64, ptr @yyin, align 8, !tbaa !9
  %65 = load i8, ptr %62, align 1, !tbaa !17
  store i8 %65, ptr @yy_hold_char, align 1, !tbaa !17
  br label %66

66:                                               ; preds = %54, %0
  %67 = getelementptr inbounds %struct.data, ptr %1, i64 0, i32 1
  br label %68

68:                                               ; preds = %293, %66
  %69 = load ptr, ptr @yy_c_buf_p, align 8, !tbaa !9
  %70 = load i8, ptr @yy_hold_char, align 1, !tbaa !17
  store i8 %70, ptr %69, align 1, !tbaa !17
  %71 = load i32, ptr @yy_start, align 4, !tbaa !5
  %72 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %73 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %74 = getelementptr inbounds ptr, ptr %72, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !9
  %76 = getelementptr inbounds %struct.yy_buffer_state, ptr %75, i64 0, i32 7
  %77 = load i32, ptr %76, align 8, !tbaa !18
  %78 = add nsw i32 %77, %71
  br label %85

79:                                               ; preds = %1445
  %80 = sext i16 %1448 to i32
  br label %81

81:                                               ; preds = %1380, %1014, %79
  %82 = phi ptr [ %1370, %1380 ], [ %913, %1014 ], [ %1370, %79 ]
  %83 = phi ptr [ %1388, %1380 ], [ %1016, %1014 ], [ %1388, %79 ]
  %84 = phi i32 [ %1396, %1380 ], [ %1015, %1014 ], [ %80, %79 ]
  br label %85

85:                                               ; preds = %81, %68
  %86 = phi ptr [ %69, %68 ], [ %82, %81 ]
  %87 = phi ptr [ %69, %68 ], [ %83, %81 ]
  %88 = phi i32 [ %78, %68 ], [ %84, %81 ]
  br label %89

89:                                               ; preds = %132, %85
  %90 = phi ptr [ %87, %85 ], [ %137, %132 ]
  %91 = phi i32 [ %88, %85 ], [ %136, %132 ]
  %92 = load i8, ptr %90, align 1, !tbaa !17
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds [256 x i8], ptr @yy_ec, i64 0, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !17
  %96 = sext i32 %91 to i64
  %97 = getelementptr inbounds [181 x i16], ptr @yy_accept, i64 0, i64 %96
  %98 = load i16, ptr %97, align 2, !tbaa !19
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %89
  store i32 %91, ptr @yy_last_accepting_state, align 4, !tbaa !5
  store ptr %90, ptr @yy_last_accepting_cpos, align 8, !tbaa !9
  br label %101

101:                                              ; preds = %100, %89
  %102 = getelementptr inbounds [195 x i16], ptr @yy_base, i64 0, i64 %96
  %103 = load i16, ptr %102, align 2, !tbaa !19
  %104 = sext i16 %103 to i64
  %105 = zext i8 %95 to i64
  %106 = add nsw i64 %104, %105
  %107 = getelementptr inbounds [464 x i16], ptr @yy_chk, i64 0, i64 %106
  %108 = load i16, ptr %107, align 2, !tbaa !19
  %109 = sext i16 %108 to i32
  %110 = icmp eq i32 %91, %109
  br i1 %110, label %132, label %111

111:                                              ; preds = %121, %101
  %112 = phi i64 [ %127, %121 ], [ %105, %101 ]
  %113 = phi i64 [ %123, %121 ], [ %96, %101 ]
  %114 = phi i8 [ %122, %121 ], [ %95, %101 ]
  %115 = getelementptr inbounds [195 x i16], ptr @yy_def, i64 0, i64 %113
  %116 = load i16, ptr %115, align 2, !tbaa !19
  %117 = icmp sgt i16 %116, 180
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = getelementptr inbounds [49 x i8], ptr @yy_meta, i64 0, i64 %112
  %120 = load i8, ptr %119, align 1, !tbaa !17
  br label %121

121:                                              ; preds = %118, %111
  %122 = phi i8 [ %120, %118 ], [ %114, %111 ]
  %123 = sext i16 %116 to i64
  %124 = getelementptr inbounds [195 x i16], ptr @yy_base, i64 0, i64 %123
  %125 = load i16, ptr %124, align 2, !tbaa !19
  %126 = sext i16 %125 to i64
  %127 = zext i8 %122 to i64
  %128 = add nsw i64 %126, %127
  %129 = getelementptr inbounds [464 x i16], ptr @yy_chk, i64 0, i64 %128
  %130 = load i16, ptr %129, align 2, !tbaa !19
  %131 = icmp eq i16 %116, %130
  br i1 %131, label %132, label %111

132:                                              ; preds = %121, %101
  %133 = phi i64 [ %106, %101 ], [ %128, %121 ]
  %134 = getelementptr inbounds [464 x i16], ptr @yy_nxt, i64 0, i64 %133
  %135 = load i16, ptr %134, align 2, !tbaa !19
  %136 = sext i16 %135 to i32
  %137 = getelementptr inbounds i8, ptr %90, i64 1
  %138 = icmp eq i16 %135, 180
  br i1 %138, label %139, label %89

139:                                              ; preds = %132
  %140 = load ptr, ptr @yy_last_accepting_cpos, align 8, !tbaa !9
  %141 = load i32, ptr @yy_last_accepting_state, align 4, !tbaa !5
  br label %142

142:                                              ; preds = %1463, %139
  %143 = phi ptr [ %86, %139 ], [ %1464, %1463 ]
  %144 = phi ptr [ %140, %139 ], [ %1465, %1463 ]
  %145 = phi i32 [ %141, %139 ], [ %1466, %1463 ]
  %146 = ptrtoint ptr %143 to i64
  br label %147

147:                                              ; preds = %160, %142
  %148 = phi ptr [ %162, %160 ], [ %144, %142 ]
  %149 = phi i32 [ %163, %160 ], [ %145, %142 ]
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [181 x i16], ptr @yy_accept, i64 0, i64 %150
  %152 = load i16, ptr %151, align 2, !tbaa !19
  %153 = sext i16 %152 to i32
  store ptr %143, ptr @yytext, align 8, !tbaa !9
  %154 = ptrtoint ptr %148 to i64
  %155 = sub i64 %154, %146
  %156 = trunc i64 %155 to i32
  store i32 %156, ptr @yyleng, align 4, !tbaa !5
  %157 = load i8, ptr %148, align 1, !tbaa !17
  store i8 %157, ptr @yy_hold_char, align 1, !tbaa !17
  store i8 0, ptr %148, align 1, !tbaa !17
  store ptr %148, ptr @yy_c_buf_p, align 8, !tbaa !9
  br label %158

158:                                              ; preds = %1526, %147
  %159 = phi i32 [ %153, %147 ], [ %1531, %1526 ]
  switch i32 %159, label %1532 [
    i32 0, label %160
    i32 1, label %166
    i32 2, label %193
    i32 34, label %258
    i32 35, label %258
    i32 36, label %258
    i32 37, label %258
    i32 3, label %294
    i32 4, label %315
    i32 5, label %332
    i32 6, label %349
    i32 7, label %366
    i32 8, label %383
    i32 9, label %400
    i32 10, label %417
    i32 11, label %434
    i32 12, label %457
    i32 13, label %493
    i32 14, label %526
    i32 15, label %546
    i32 16, label %571
    i32 17, label %591
    i32 18, label %608
    i32 19, label %631
    i32 20, label %648
    i32 21, label %665
    i32 22, label %682
    i32 23, label %699
    i32 24, label %716
    i32 25, label %733
    i32 26, label %750
    i32 27, label %767
    i32 28, label %784
    i32 29, label %801
    i32 30, label %818
    i32 31, label %835
    i32 32, label %859
    i32 33, label %881
  ]

160:                                              ; preds = %158
  %161 = load i8, ptr @yy_hold_char, align 1, !tbaa !17
  store i8 %161, ptr %148, align 1, !tbaa !17
  %162 = load ptr, ptr @yy_last_accepting_cpos, align 8, !tbaa !9
  %163 = load i32, ptr @yy_last_accepting_state, align 4, !tbaa !5
  br label %147

164:                                              ; preds = %1519
  %165 = sext i16 %1522 to i32
  br label %1463

166:                                              ; preds = %158
  %167 = load i32, ptr @yyleng, align 4, !tbaa !5
  %168 = icmp sgt i32 %167, 0
  %169 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %168, label %170, label %182

170:                                              ; preds = %166
  %171 = add nsw i32 %167, -1
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i8, ptr %169, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !17
  %175 = icmp eq i8 %174, 10
  %176 = zext i1 %175 to i32
  %177 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %178 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %179 = getelementptr inbounds ptr, ptr %177, i64 %178
  %180 = load ptr, ptr %179, align 8, !tbaa !9
  %181 = getelementptr inbounds %struct.yy_buffer_state, ptr %180, i64 0, i32 7
  store i32 %176, ptr %181, align 8, !tbaa !18
  br label %182

182:                                              ; preds = %170, %166
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %169, i32 noundef %167) #25
  %183 = load ptr, ptr @yytext, align 8, !tbaa !9
  %184 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %183, i32 noundef 34) #26
  %185 = getelementptr inbounds i8, ptr %184, i64 1
  %186 = load i32, ptr @yyleng, align 4, !tbaa !5
  %187 = add nsw i32 %186, -1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, ptr %183, i64 %188
  store i8 0, ptr %189, align 1, !tbaa !17
  call void @srcfile_push(ptr noundef nonnull %185) #25
  %190 = load ptr, ptr @current_srcfile, align 8, !tbaa !9
  %191 = load ptr, ptr %190, align 8, !tbaa !21
  store ptr %191, ptr @yyin, align 8, !tbaa !9
  %192 = call ptr @yy_create_buffer(ptr noundef %191, i32 noundef 16384) #25
  call void @yypush_buffer_state(ptr noundef %192) #25
  br label %293

193:                                              ; preds = %158
  %194 = load i32, ptr @yyleng, align 4, !tbaa !5
  %195 = icmp sgt i32 %194, 0
  %196 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %195, label %197, label %209

197:                                              ; preds = %193
  %198 = add nsw i32 %194, -1
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds i8, ptr %196, i64 %199
  %201 = load i8, ptr %200, align 1, !tbaa !17
  %202 = icmp eq i8 %201, 10
  %203 = zext i1 %202 to i32
  %204 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %205 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %206 = getelementptr inbounds ptr, ptr %204, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !9
  %208 = getelementptr inbounds %struct.yy_buffer_state, ptr %207, i64 0, i32 7
  store i32 %203, ptr %208, align 8, !tbaa !18
  br label %209

209:                                              ; preds = %197, %193
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %196, i32 noundef %194) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #25
  %210 = load ptr, ptr @yytext, align 8, !tbaa !9
  %211 = tail call ptr @__ctype_b_loc() #27
  %212 = load ptr, ptr %211, align 8, !tbaa !9
  br label %213

213:                                              ; preds = %213, %209
  %214 = phi ptr [ %210, %209 ], [ %221, %213 ]
  %215 = load i8, ptr %214, align 1, !tbaa !17
  %216 = zext i8 %215 to i64
  %217 = getelementptr inbounds i16, ptr %212, i64 %216
  %218 = load i16, ptr %217, align 2, !tbaa !19
  %219 = and i16 %218, 2048
  %220 = icmp eq i16 %219, 0
  %221 = getelementptr inbounds i8, ptr %214, i64 1
  br i1 %220, label %213, label %222

222:                                              ; preds = %213
  %223 = load i32, ptr @yyleng, align 4, !tbaa !5
  %224 = sext i32 %223 to i64
  %225 = call ptr @memchr(ptr noundef %210, i32 noundef 34, i64 noundef %224) #26
  %226 = getelementptr inbounds i8, ptr %210, i64 %224
  br label %227

227:                                              ; preds = %227, %222
  %228 = phi ptr [ %226, %222 ], [ %229, %227 ]
  %229 = getelementptr inbounds i8, ptr %228, i64 -1
  %230 = load i8, ptr %229, align 1, !tbaa !17
  %231 = icmp eq i8 %230, 34
  br i1 %231, label %232, label %227

232:                                              ; preds = %227
  %233 = icmp ne ptr %225, null
  %234 = icmp ugt ptr %229, %225
  %235 = and i1 %233, %234
  br i1 %235, label %237, label %236

236:                                              ; preds = %232
  call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 938, ptr noundef nonnull @__PRETTY_FUNCTION__.yylex) #23
  unreachable

237:                                              ; preds = %232
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  %238 = getelementptr inbounds i8, ptr %225, i64 1
  %239 = ptrtoint ptr %229 to i64
  %240 = ptrtoint ptr %225 to i64
  %241 = xor i64 %240, -1
  %242 = add i64 %239, %241
  %243 = trunc i64 %242 to i32
  call void @data_copy_escape_string(ptr nonnull sret(%struct.data) align 8 %2, ptr noundef nonnull %238, i32 noundef %243) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  %244 = load ptr, ptr %67, align 8, !tbaa !24
  %245 = load i32, ptr %1, align 8, !tbaa !26
  %246 = add i32 %245, -1
  %247 = zext i32 %246 to i64
  %248 = call ptr @memchr(ptr noundef %244, i32 noundef 0, i64 noundef %247) #26
  %249 = icmp eq ptr %248, null
  br i1 %249, label %252, label %250

250:                                              ; preds = %237
  call void (ptr, ...) @lexical_error(ptr noundef nonnull @.str.2)
  %251 = load ptr, ptr %67, align 8, !tbaa !24
  br label %252

252:                                              ; preds = %250, %237
  %253 = phi ptr [ %251, %250 ], [ %244, %237 ]
  %254 = call ptr @xstrdup(ptr noundef %253) #25
  %255 = call i64 @strtol(ptr nocapture noundef nonnull %214, ptr noundef null, i32 noundef 10) #25
  %256 = trunc i64 %255 to i32
  %257 = add nsw i32 %256, -1
  call void @srcpos_set_line(ptr noundef %254, i32 noundef %257) #25
  call void @data_free(ptr noundef nonnull byval(%struct.data) align 8 %1) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #25
  br label %293

258:                                              ; preds = %158, %158, %158, %158
  %259 = call zeroext i1 @srcfile_pop() #25
  br i1 %259, label %260, label %1533

260:                                              ; preds = %258
  %261 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %262 = icmp eq ptr %261, null
  br i1 %262, label %290, label %263

263:                                              ; preds = %260
  %264 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %265 = getelementptr inbounds ptr, ptr %261, i64 %264
  %266 = load ptr, ptr %265, align 8, !tbaa !9
  %267 = icmp eq ptr %266, null
  br i1 %267, label %290, label %268

268:                                              ; preds = %263
  store ptr null, ptr %265, align 8, !tbaa !9
  %269 = getelementptr inbounds %struct.yy_buffer_state, ptr %266, i64 0, i32 5
  %270 = load i32, ptr %269, align 8, !tbaa !27
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %275, label %272

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.yy_buffer_state, ptr %266, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !28
  call void @free(ptr noundef %274) #25
  br label %275

275:                                              ; preds = %272, %268
  call void @free(ptr noundef nonnull %266) #25
  store ptr null, ptr %265, align 8, !tbaa !9
  %276 = icmp eq i64 %264, 0
  br i1 %276, label %290, label %277

277:                                              ; preds = %275
  %278 = add i64 %264, -1
  store i64 %278, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %279 = getelementptr inbounds ptr, ptr %261, i64 %278
  %280 = load ptr, ptr %279, align 8, !tbaa !9
  %281 = icmp eq ptr %280, null
  br i1 %281, label %290, label %282

282:                                              ; preds = %277
  %283 = getelementptr inbounds %struct.yy_buffer_state, ptr %280, i64 0, i32 4
  %284 = load i32, ptr %283, align 4, !tbaa !13
  store i32 %284, ptr @yy_n_chars, align 4, !tbaa !5
  %285 = getelementptr inbounds %struct.yy_buffer_state, ptr %280, i64 0, i32 2
  %286 = load ptr, ptr %285, align 8, !tbaa !15
  store ptr %286, ptr @yy_c_buf_p, align 8, !tbaa !9
  store ptr %286, ptr @yytext, align 8, !tbaa !9
  %287 = load ptr, ptr %279, align 8, !tbaa !9
  %288 = load ptr, ptr %287, align 8, !tbaa !16
  store ptr %288, ptr @yyin, align 8, !tbaa !9
  %289 = load i8, ptr %286, align 1, !tbaa !17
  store i8 %289, ptr @yy_hold_char, align 1, !tbaa !17
  br label %290

290:                                              ; preds = %282, %277, %275, %263, %260
  %291 = load ptr, ptr @current_srcfile, align 8, !tbaa !9
  %292 = load ptr, ptr %291, align 8, !tbaa !21
  store ptr %292, ptr @yyin, align 8, !tbaa !9
  br label %293

293:                                              ; preds = %1358, %875, %698, %681, %664, %290, %252, %182
  br label %68

294:                                              ; preds = %158
  %295 = load i32, ptr @yyleng, align 4, !tbaa !5
  %296 = icmp sgt i32 %295, 0
  %297 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %296, label %298, label %310

298:                                              ; preds = %294
  %299 = add nsw i32 %295, -1
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds i8, ptr %297, i64 %300
  %302 = load i8, ptr %301, align 1, !tbaa !17
  %303 = icmp eq i8 %302, 10
  %304 = zext i1 %303 to i32
  %305 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %306 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %307 = getelementptr inbounds ptr, ptr %305, i64 %306
  %308 = load ptr, ptr %307, align 8, !tbaa !9
  %309 = getelementptr inbounds %struct.yy_buffer_state, ptr %308, i64 0, i32 7
  store i32 %304, ptr %309, align 8, !tbaa !18
  br label %310

310:                                              ; preds = %298, %294
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %297, i32 noundef %295) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  %311 = load ptr, ptr @yytext, align 8, !tbaa !9
  %312 = getelementptr inbounds i8, ptr %311, i64 1
  %313 = load i32, ptr @yyleng, align 4, !tbaa !5
  %314 = add nsw i32 %313, -2
  call void @data_copy_escape_string(ptr nonnull sret(%struct.data) align 8 %3, ptr noundef nonnull %312, i32 noundef %314) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @yylval, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  br label %1533

315:                                              ; preds = %158
  %316 = load i32, ptr @yyleng, align 4, !tbaa !5
  %317 = icmp sgt i32 %316, 0
  %318 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %317, label %319, label %331

319:                                              ; preds = %315
  %320 = add nsw i32 %316, -1
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds i8, ptr %318, i64 %321
  %323 = load i8, ptr %322, align 1, !tbaa !17
  %324 = icmp eq i8 %323, 10
  %325 = zext i1 %324 to i32
  %326 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %327 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %328 = getelementptr inbounds ptr, ptr %326, i64 %327
  %329 = load ptr, ptr %328, align 8, !tbaa !9
  %330 = getelementptr inbounds %struct.yy_buffer_state, ptr %329, i64 0, i32 7
  store i32 %325, ptr %330, align 8, !tbaa !18
  br label %331

331:                                              ; preds = %319, %315
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %318, i32 noundef %316) #25
  store i32 7, ptr @yy_start, align 4, !tbaa !5
  br label %1533

332:                                              ; preds = %158
  %333 = load i32, ptr @yyleng, align 4, !tbaa !5
  %334 = icmp sgt i32 %333, 0
  %335 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %334, label %336, label %348

336:                                              ; preds = %332
  %337 = add nsw i32 %333, -1
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds i8, ptr %335, i64 %338
  %340 = load i8, ptr %339, align 1, !tbaa !17
  %341 = icmp eq i8 %340, 10
  %342 = zext i1 %341 to i32
  %343 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %344 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %345 = getelementptr inbounds ptr, ptr %343, i64 %344
  %346 = load ptr, ptr %345, align 8, !tbaa !9
  %347 = getelementptr inbounds %struct.yy_buffer_state, ptr %346, i64 0, i32 7
  store i32 %342, ptr %347, align 8, !tbaa !18
  br label %348

348:                                              ; preds = %336, %332
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %335, i32 noundef %333) #25
  br label %1533

349:                                              ; preds = %158
  %350 = load i32, ptr @yyleng, align 4, !tbaa !5
  %351 = icmp sgt i32 %350, 0
  %352 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %351, label %353, label %365

353:                                              ; preds = %349
  %354 = add nsw i32 %350, -1
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds i8, ptr %352, i64 %355
  %357 = load i8, ptr %356, align 1, !tbaa !17
  %358 = icmp eq i8 %357, 10
  %359 = zext i1 %358 to i32
  %360 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %361 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %362 = getelementptr inbounds ptr, ptr %360, i64 %361
  %363 = load ptr, ptr %362, align 8, !tbaa !9
  %364 = getelementptr inbounds %struct.yy_buffer_state, ptr %363, i64 0, i32 7
  store i32 %359, ptr %364, align 8, !tbaa !18
  br label %365

365:                                              ; preds = %353, %349
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %352, i32 noundef %350) #25
  store i32 7, ptr @yy_start, align 4, !tbaa !5
  br label %1533

366:                                              ; preds = %158
  %367 = load i32, ptr @yyleng, align 4, !tbaa !5
  %368 = icmp sgt i32 %367, 0
  %369 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %368, label %370, label %382

370:                                              ; preds = %366
  %371 = add nsw i32 %367, -1
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds i8, ptr %369, i64 %372
  %374 = load i8, ptr %373, align 1, !tbaa !17
  %375 = icmp eq i8 %374, 10
  %376 = zext i1 %375 to i32
  %377 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %378 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %379 = getelementptr inbounds ptr, ptr %377, i64 %378
  %380 = load ptr, ptr %379, align 8, !tbaa !9
  %381 = getelementptr inbounds %struct.yy_buffer_state, ptr %380, i64 0, i32 7
  store i32 %376, ptr %381, align 8, !tbaa !18
  br label %382

382:                                              ; preds = %370, %366
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %369, i32 noundef %367) #25
  store i32 7, ptr @yy_start, align 4, !tbaa !5
  br label %1533

383:                                              ; preds = %158
  %384 = load i32, ptr @yyleng, align 4, !tbaa !5
  %385 = icmp sgt i32 %384, 0
  %386 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %385, label %387, label %399

387:                                              ; preds = %383
  %388 = add nsw i32 %384, -1
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds i8, ptr %386, i64 %389
  %391 = load i8, ptr %390, align 1, !tbaa !17
  %392 = icmp eq i8 %391, 10
  %393 = zext i1 %392 to i32
  %394 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %395 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %396 = getelementptr inbounds ptr, ptr %394, i64 %395
  %397 = load ptr, ptr %396, align 8, !tbaa !9
  %398 = getelementptr inbounds %struct.yy_buffer_state, ptr %397, i64 0, i32 7
  store i32 %393, ptr %398, align 8, !tbaa !18
  br label %399

399:                                              ; preds = %387, %383
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %386, i32 noundef %384) #25
  store i32 5, ptr @yy_start, align 4, !tbaa !5
  br label %1533

400:                                              ; preds = %158
  %401 = load i32, ptr @yyleng, align 4, !tbaa !5
  %402 = icmp sgt i32 %401, 0
  %403 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %402, label %404, label %416

404:                                              ; preds = %400
  %405 = add nsw i32 %401, -1
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds i8, ptr %403, i64 %406
  %408 = load i8, ptr %407, align 1, !tbaa !17
  %409 = icmp eq i8 %408, 10
  %410 = zext i1 %409 to i32
  %411 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %412 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %413 = getelementptr inbounds ptr, ptr %411, i64 %412
  %414 = load ptr, ptr %413, align 8, !tbaa !9
  %415 = getelementptr inbounds %struct.yy_buffer_state, ptr %414, i64 0, i32 7
  store i32 %410, ptr %415, align 8, !tbaa !18
  br label %416

416:                                              ; preds = %404, %400
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %403, i32 noundef %401) #25
  store i32 5, ptr @yy_start, align 4, !tbaa !5
  br label %1533

417:                                              ; preds = %158
  %418 = load i32, ptr @yyleng, align 4, !tbaa !5
  %419 = icmp sgt i32 %418, 0
  %420 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %419, label %421, label %433

421:                                              ; preds = %417
  %422 = add nsw i32 %418, -1
  %423 = zext i32 %422 to i64
  %424 = getelementptr inbounds i8, ptr %420, i64 %423
  %425 = load i8, ptr %424, align 1, !tbaa !17
  %426 = icmp eq i8 %425, 10
  %427 = zext i1 %426 to i32
  %428 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %429 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %430 = getelementptr inbounds ptr, ptr %428, i64 %429
  %431 = load ptr, ptr %430, align 8, !tbaa !9
  %432 = getelementptr inbounds %struct.yy_buffer_state, ptr %431, i64 0, i32 7
  store i32 %427, ptr %432, align 8, !tbaa !18
  br label %433

433:                                              ; preds = %421, %417
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %420, i32 noundef %418) #25
  store i32 5, ptr @yy_start, align 4, !tbaa !5
  br label %1533

434:                                              ; preds = %158
  %435 = load i32, ptr @yyleng, align 4, !tbaa !5
  %436 = icmp sgt i32 %435, 0
  %437 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %436, label %438, label %450

438:                                              ; preds = %434
  %439 = add nsw i32 %435, -1
  %440 = zext i32 %439 to i64
  %441 = getelementptr inbounds i8, ptr %437, i64 %440
  %442 = load i8, ptr %441, align 1, !tbaa !17
  %443 = icmp eq i8 %442, 10
  %444 = zext i1 %443 to i32
  %445 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %446 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %447 = getelementptr inbounds ptr, ptr %445, i64 %446
  %448 = load ptr, ptr %447, align 8, !tbaa !9
  %449 = getelementptr inbounds %struct.yy_buffer_state, ptr %448, i64 0, i32 7
  store i32 %444, ptr %449, align 8, !tbaa !18
  br label %450

450:                                              ; preds = %438, %434
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %437, i32 noundef %435) #25
  %451 = load ptr, ptr @yytext, align 8, !tbaa !9
  %452 = call ptr @xstrdup(ptr noundef %451) #25
  store ptr %452, ptr @yylval, align 8, !tbaa !17
  %453 = load i32, ptr @yyleng, align 4, !tbaa !5
  %454 = add nsw i32 %453, -1
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i8, ptr %452, i64 %455
  store i8 0, ptr %456, align 1, !tbaa !17
  br label %1533

457:                                              ; preds = %158
  %458 = load i32, ptr @yyleng, align 4, !tbaa !5
  %459 = icmp sgt i32 %458, 0
  %460 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %459, label %461, label %473

461:                                              ; preds = %457
  %462 = add nsw i32 %458, -1
  %463 = zext i32 %462 to i64
  %464 = getelementptr inbounds i8, ptr %460, i64 %463
  %465 = load i8, ptr %464, align 1, !tbaa !17
  %466 = icmp eq i8 %465, 10
  %467 = zext i1 %466 to i32
  %468 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %469 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %470 = getelementptr inbounds ptr, ptr %468, i64 %469
  %471 = load ptr, ptr %470, align 8, !tbaa !9
  %472 = getelementptr inbounds %struct.yy_buffer_state, ptr %471, i64 0, i32 7
  store i32 %467, ptr %472, align 8, !tbaa !18
  br label %473

473:                                              ; preds = %461, %457
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %460, i32 noundef %458) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %474 = tail call ptr @__errno_location() #27
  store i32 0, ptr %474, align 4, !tbaa !5
  %475 = load ptr, ptr @yytext, align 8, !tbaa !9
  %476 = call i64 @strtoull(ptr noundef %475, ptr noundef nonnull %4, i32 noundef 0) #25
  store i64 %476, ptr @yylval, align 8, !tbaa !17
  %477 = load ptr, ptr %4, align 8, !tbaa !9
  %478 = load i8, ptr %477, align 1, !tbaa !17
  %479 = icmp eq i8 %478, 0
  br i1 %479, label %487, label %480

480:                                              ; preds = %473
  %481 = call i64 @strspn(ptr noundef nonnull %477, ptr noundef nonnull @.str.3) #26
  %482 = getelementptr inbounds i8, ptr %477, i64 %481
  %483 = load i8, ptr %482, align 1, !tbaa !17
  %484 = icmp eq i8 %483, 0
  br i1 %484, label %487, label %485

485:                                              ; preds = %480
  %486 = load ptr, ptr @yytext, align 8, !tbaa !9
  call void (ptr, ...) @lexical_error(ptr noundef nonnull @.str.4, ptr noundef %486)
  br label %487

487:                                              ; preds = %485, %480, %473
  %488 = load i32, ptr %474, align 4, !tbaa !5
  switch i32 %488, label %491 [
    i32 34, label %489
    i32 0, label %492
  ]

489:                                              ; preds = %487
  %490 = load ptr, ptr @yytext, align 8, !tbaa !9
  call void (ptr, ...) @lexical_error(ptr noundef nonnull @.str.5, ptr noundef %490)
  br label %492

491:                                              ; preds = %487
  call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 1060, ptr noundef nonnull @__PRETTY_FUNCTION__.yylex) #23
  unreachable

492:                                              ; preds = %489, %487
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  br label %1533

493:                                              ; preds = %158
  %494 = load i32, ptr @yyleng, align 4, !tbaa !5
  %495 = icmp sgt i32 %494, 0
  %496 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %495, label %497, label %509

497:                                              ; preds = %493
  %498 = add nsw i32 %494, -1
  %499 = zext i32 %498 to i64
  %500 = getelementptr inbounds i8, ptr %496, i64 %499
  %501 = load i8, ptr %500, align 1, !tbaa !17
  %502 = icmp eq i8 %501, 10
  %503 = zext i1 %502 to i32
  %504 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %505 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %506 = getelementptr inbounds ptr, ptr %504, i64 %505
  %507 = load ptr, ptr %506, align 8, !tbaa !9
  %508 = getelementptr inbounds %struct.yy_buffer_state, ptr %507, i64 0, i32 7
  store i32 %503, ptr %508, align 8, !tbaa !18
  br label %509

509:                                              ; preds = %497, %493
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %496, i32 noundef %494) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #25
  %510 = load ptr, ptr @yytext, align 8, !tbaa !9
  %511 = getelementptr inbounds i8, ptr %510, i64 1
  %512 = load i32, ptr @yyleng, align 4, !tbaa !5
  %513 = add nsw i32 %512, -2
  call void @data_copy_escape_string(ptr nonnull sret(%struct.data) align 8 %5, ptr noundef nonnull %511, i32 noundef %513) #25
  %514 = load i32, ptr %5, align 8, !tbaa !26
  %515 = icmp eq i32 %514, 1
  br i1 %515, label %516, label %517

516:                                              ; preds = %509
  call void (ptr, ...) @lexical_error(ptr noundef nonnull @.str.7)
  store i64 0, ptr @yylval, align 8, !tbaa !17
  br label %525

517:                                              ; preds = %509
  %518 = getelementptr inbounds %struct.data, ptr %5, i64 0, i32 1
  %519 = load ptr, ptr %518, align 8, !tbaa !24
  %520 = load i8, ptr %519, align 1, !tbaa !17
  %521 = zext i8 %520 to i64
  store i64 %521, ptr @yylval, align 8, !tbaa !17
  %522 = icmp ugt i32 %514, 2
  br i1 %522, label %523, label %525

523:                                              ; preds = %517
  %524 = add i32 %514, -1
  call void (ptr, ...) @lexical_error(ptr noundef nonnull @.str.8, i32 noundef %524)
  br label %525

525:                                              ; preds = %523, %517, %516
  call void @data_free(ptr noundef nonnull byval(%struct.data) align 8 %5) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #25
  br label %1533

526:                                              ; preds = %158
  %527 = load i32, ptr @yyleng, align 4, !tbaa !5
  %528 = icmp sgt i32 %527, 0
  %529 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %528, label %530, label %542

530:                                              ; preds = %526
  %531 = add nsw i32 %527, -1
  %532 = zext i32 %531 to i64
  %533 = getelementptr inbounds i8, ptr %529, i64 %532
  %534 = load i8, ptr %533, align 1, !tbaa !17
  %535 = icmp eq i8 %534, 10
  %536 = zext i1 %535 to i32
  %537 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %538 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %539 = getelementptr inbounds ptr, ptr %537, i64 %538
  %540 = load ptr, ptr %539, align 8, !tbaa !9
  %541 = getelementptr inbounds %struct.yy_buffer_state, ptr %540, i64 0, i32 7
  store i32 %536, ptr %541, align 8, !tbaa !18
  br label %542

542:                                              ; preds = %530, %526
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %529, i32 noundef %527) #25
  %543 = load ptr, ptr @yytext, align 8, !tbaa !9
  %544 = getelementptr inbounds i8, ptr %543, i64 1
  %545 = call ptr @xstrdup(ptr noundef nonnull %544) #25
  store ptr %545, ptr @yylval, align 8, !tbaa !17
  br label %1533

546:                                              ; preds = %158
  %547 = load i32, ptr @yyleng, align 4, !tbaa !5
  %548 = icmp sgt i32 %547, 0
  %549 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %548, label %550, label %562

550:                                              ; preds = %546
  %551 = add nsw i32 %547, -1
  %552 = zext i32 %551 to i64
  %553 = getelementptr inbounds i8, ptr %549, i64 %552
  %554 = load i8, ptr %553, align 1, !tbaa !17
  %555 = icmp eq i8 %554, 10
  %556 = zext i1 %555 to i32
  %557 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %558 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %559 = getelementptr inbounds ptr, ptr %557, i64 %558
  %560 = load ptr, ptr %559, align 8, !tbaa !9
  %561 = getelementptr inbounds %struct.yy_buffer_state, ptr %560, i64 0, i32 7
  store i32 %556, ptr %561, align 8, !tbaa !18
  br label %562

562:                                              ; preds = %550, %546
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %549, i32 noundef %547) #25
  %563 = load ptr, ptr @yytext, align 8, !tbaa !9
  %564 = load i32, ptr @yyleng, align 4, !tbaa !5
  %565 = add nsw i32 %564, -1
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds i8, ptr %563, i64 %566
  store i8 0, ptr %567, align 1, !tbaa !17
  %568 = load ptr, ptr @yytext, align 8, !tbaa !9
  %569 = getelementptr inbounds i8, ptr %568, i64 2
  %570 = call ptr @xstrdup(ptr noundef nonnull %569) #25
  store ptr %570, ptr @yylval, align 8, !tbaa !17
  br label %1533

571:                                              ; preds = %158
  %572 = load i32, ptr @yyleng, align 4, !tbaa !5
  %573 = icmp sgt i32 %572, 0
  %574 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %573, label %575, label %587

575:                                              ; preds = %571
  %576 = add nsw i32 %572, -1
  %577 = zext i32 %576 to i64
  %578 = getelementptr inbounds i8, ptr %574, i64 %577
  %579 = load i8, ptr %578, align 1, !tbaa !17
  %580 = icmp eq i8 %579, 10
  %581 = zext i1 %580 to i32
  %582 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %583 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %584 = getelementptr inbounds ptr, ptr %582, i64 %583
  %585 = load ptr, ptr %584, align 8, !tbaa !9
  %586 = getelementptr inbounds %struct.yy_buffer_state, ptr %585, i64 0, i32 7
  store i32 %581, ptr %586, align 8, !tbaa !18
  br label %587

587:                                              ; preds = %575, %571
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %574, i32 noundef %572) #25
  %588 = load ptr, ptr @yytext, align 8, !tbaa !9
  %589 = call i64 @strtol(ptr nocapture noundef %588, ptr noundef null, i32 noundef 16) #25
  %590 = trunc i64 %589 to i8
  store i8 %590, ptr @yylval, align 8, !tbaa !17
  br label %1533

591:                                              ; preds = %158
  %592 = load i32, ptr @yyleng, align 4, !tbaa !5
  %593 = icmp sgt i32 %592, 0
  %594 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %593, label %595, label %607

595:                                              ; preds = %591
  %596 = add nsw i32 %592, -1
  %597 = zext i32 %596 to i64
  %598 = getelementptr inbounds i8, ptr %594, i64 %597
  %599 = load i8, ptr %598, align 1, !tbaa !17
  %600 = icmp eq i8 %599, 10
  %601 = zext i1 %600 to i32
  %602 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %603 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %604 = getelementptr inbounds ptr, ptr %602, i64 %603
  %605 = load ptr, ptr %604, align 8, !tbaa !9
  %606 = getelementptr inbounds %struct.yy_buffer_state, ptr %605, i64 0, i32 7
  store i32 %601, ptr %606, align 8, !tbaa !18
  br label %607

607:                                              ; preds = %595, %591
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %594, i32 noundef %592) #25
  store i32 7, ptr @yy_start, align 4, !tbaa !5
  br label %1533

608:                                              ; preds = %158
  %609 = load i32, ptr @yyleng, align 4, !tbaa !5
  %610 = icmp sgt i32 %609, 0
  %611 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %610, label %612, label %624

612:                                              ; preds = %608
  %613 = add nsw i32 %609, -1
  %614 = zext i32 %613 to i64
  %615 = getelementptr inbounds i8, ptr %611, i64 %614
  %616 = load i8, ptr %615, align 1, !tbaa !17
  %617 = icmp eq i8 %616, 10
  %618 = zext i1 %617 to i32
  %619 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %620 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %621 = getelementptr inbounds ptr, ptr %619, i64 %620
  %622 = load ptr, ptr %621, align 8, !tbaa !9
  %623 = getelementptr inbounds %struct.yy_buffer_state, ptr %622, i64 0, i32 7
  store i32 %618, ptr %623, align 8, !tbaa !18
  br label %624

624:                                              ; preds = %612, %608
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %611, i32 noundef %609) #25
  %625 = load ptr, ptr @yytext, align 8, !tbaa !9
  %626 = load i8, ptr %625, align 1, !tbaa !17
  %627 = icmp eq i8 %626, 92
  %628 = zext i1 %627 to i64
  %629 = getelementptr i8, ptr %625, i64 %628
  %630 = call ptr @xstrdup(ptr noundef %629) #25
  store ptr %630, ptr @yylval, align 8, !tbaa !17
  store i32 7, ptr @yy_start, align 4, !tbaa !5
  br label %1533

631:                                              ; preds = %158
  %632 = load i32, ptr @yyleng, align 4, !tbaa !5
  %633 = icmp sgt i32 %632, 0
  %634 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %633, label %635, label %647

635:                                              ; preds = %631
  %636 = add nsw i32 %632, -1
  %637 = zext i32 %636 to i64
  %638 = getelementptr inbounds i8, ptr %634, i64 %637
  %639 = load i8, ptr %638, align 1, !tbaa !17
  %640 = icmp eq i8 %639, 10
  %641 = zext i1 %640 to i32
  %642 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %643 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %644 = getelementptr inbounds ptr, ptr %642, i64 %643
  %645 = load ptr, ptr %644, align 8, !tbaa !9
  %646 = getelementptr inbounds %struct.yy_buffer_state, ptr %645, i64 0, i32 7
  store i32 %641, ptr %646, align 8, !tbaa !18
  br label %647

647:                                              ; preds = %635, %631
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %634, i32 noundef %632) #25
  br label %1533

648:                                              ; preds = %158
  %649 = load i32, ptr @yyleng, align 4, !tbaa !5
  %650 = icmp sgt i32 %649, 0
  %651 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %650, label %652, label %664

652:                                              ; preds = %648
  %653 = add nsw i32 %649, -1
  %654 = zext i32 %653 to i64
  %655 = getelementptr inbounds i8, ptr %651, i64 %654
  %656 = load i8, ptr %655, align 1, !tbaa !17
  %657 = icmp eq i8 %656, 10
  %658 = zext i1 %657 to i32
  %659 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %660 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %661 = getelementptr inbounds ptr, ptr %659, i64 %660
  %662 = load ptr, ptr %661, align 8, !tbaa !9
  %663 = getelementptr inbounds %struct.yy_buffer_state, ptr %662, i64 0, i32 7
  store i32 %658, ptr %663, align 8, !tbaa !18
  br label %664

664:                                              ; preds = %652, %648
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %651, i32 noundef %649) #25
  br label %293

665:                                              ; preds = %158
  %666 = load i32, ptr @yyleng, align 4, !tbaa !5
  %667 = icmp sgt i32 %666, 0
  %668 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %667, label %669, label %681

669:                                              ; preds = %665
  %670 = add nsw i32 %666, -1
  %671 = zext i32 %670 to i64
  %672 = getelementptr inbounds i8, ptr %668, i64 %671
  %673 = load i8, ptr %672, align 1, !tbaa !17
  %674 = icmp eq i8 %673, 10
  %675 = zext i1 %674 to i32
  %676 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %677 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %678 = getelementptr inbounds ptr, ptr %676, i64 %677
  %679 = load ptr, ptr %678, align 8, !tbaa !9
  %680 = getelementptr inbounds %struct.yy_buffer_state, ptr %679, i64 0, i32 7
  store i32 %675, ptr %680, align 8, !tbaa !18
  br label %681

681:                                              ; preds = %669, %665
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %668, i32 noundef %666) #25
  br label %293

682:                                              ; preds = %158
  %683 = load i32, ptr @yyleng, align 4, !tbaa !5
  %684 = icmp sgt i32 %683, 0
  %685 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %684, label %686, label %698

686:                                              ; preds = %682
  %687 = add nsw i32 %683, -1
  %688 = zext i32 %687 to i64
  %689 = getelementptr inbounds i8, ptr %685, i64 %688
  %690 = load i8, ptr %689, align 1, !tbaa !17
  %691 = icmp eq i8 %690, 10
  %692 = zext i1 %691 to i32
  %693 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %694 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %695 = getelementptr inbounds ptr, ptr %693, i64 %694
  %696 = load ptr, ptr %695, align 8, !tbaa !9
  %697 = getelementptr inbounds %struct.yy_buffer_state, ptr %696, i64 0, i32 7
  store i32 %692, ptr %697, align 8, !tbaa !18
  br label %698

698:                                              ; preds = %686, %682
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %685, i32 noundef %683) #25
  br label %293

699:                                              ; preds = %158
  %700 = load i32, ptr @yyleng, align 4, !tbaa !5
  %701 = icmp sgt i32 %700, 0
  %702 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %701, label %703, label %715

703:                                              ; preds = %699
  %704 = add nsw i32 %700, -1
  %705 = zext i32 %704 to i64
  %706 = getelementptr inbounds i8, ptr %702, i64 %705
  %707 = load i8, ptr %706, align 1, !tbaa !17
  %708 = icmp eq i8 %707, 10
  %709 = zext i1 %708 to i32
  %710 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %711 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %712 = getelementptr inbounds ptr, ptr %710, i64 %711
  %713 = load ptr, ptr %712, align 8, !tbaa !9
  %714 = getelementptr inbounds %struct.yy_buffer_state, ptr %713, i64 0, i32 7
  store i32 %709, ptr %714, align 8, !tbaa !18
  br label %715

715:                                              ; preds = %703, %699
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %702, i32 noundef %700) #25
  br label %1533

716:                                              ; preds = %158
  %717 = load i32, ptr @yyleng, align 4, !tbaa !5
  %718 = icmp sgt i32 %717, 0
  %719 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %718, label %720, label %732

720:                                              ; preds = %716
  %721 = add nsw i32 %717, -1
  %722 = zext i32 %721 to i64
  %723 = getelementptr inbounds i8, ptr %719, i64 %722
  %724 = load i8, ptr %723, align 1, !tbaa !17
  %725 = icmp eq i8 %724, 10
  %726 = zext i1 %725 to i32
  %727 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %728 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %729 = getelementptr inbounds ptr, ptr %727, i64 %728
  %730 = load ptr, ptr %729, align 8, !tbaa !9
  %731 = getelementptr inbounds %struct.yy_buffer_state, ptr %730, i64 0, i32 7
  store i32 %726, ptr %731, align 8, !tbaa !18
  br label %732

732:                                              ; preds = %720, %716
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %719, i32 noundef %717) #25
  br label %1533

733:                                              ; preds = %158
  %734 = load i32, ptr @yyleng, align 4, !tbaa !5
  %735 = icmp sgt i32 %734, 0
  %736 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %735, label %737, label %749

737:                                              ; preds = %733
  %738 = add nsw i32 %734, -1
  %739 = zext i32 %738 to i64
  %740 = getelementptr inbounds i8, ptr %736, i64 %739
  %741 = load i8, ptr %740, align 1, !tbaa !17
  %742 = icmp eq i8 %741, 10
  %743 = zext i1 %742 to i32
  %744 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %745 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %746 = getelementptr inbounds ptr, ptr %744, i64 %745
  %747 = load ptr, ptr %746, align 8, !tbaa !9
  %748 = getelementptr inbounds %struct.yy_buffer_state, ptr %747, i64 0, i32 7
  store i32 %743, ptr %748, align 8, !tbaa !18
  br label %749

749:                                              ; preds = %737, %733
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %736, i32 noundef %734) #25
  br label %1533

750:                                              ; preds = %158
  %751 = load i32, ptr @yyleng, align 4, !tbaa !5
  %752 = icmp sgt i32 %751, 0
  %753 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %752, label %754, label %766

754:                                              ; preds = %750
  %755 = add nsw i32 %751, -1
  %756 = zext i32 %755 to i64
  %757 = getelementptr inbounds i8, ptr %753, i64 %756
  %758 = load i8, ptr %757, align 1, !tbaa !17
  %759 = icmp eq i8 %758, 10
  %760 = zext i1 %759 to i32
  %761 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %762 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %763 = getelementptr inbounds ptr, ptr %761, i64 %762
  %764 = load ptr, ptr %763, align 8, !tbaa !9
  %765 = getelementptr inbounds %struct.yy_buffer_state, ptr %764, i64 0, i32 7
  store i32 %760, ptr %765, align 8, !tbaa !18
  br label %766

766:                                              ; preds = %754, %750
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %753, i32 noundef %751) #25
  br label %1533

767:                                              ; preds = %158
  %768 = load i32, ptr @yyleng, align 4, !tbaa !5
  %769 = icmp sgt i32 %768, 0
  %770 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %769, label %771, label %783

771:                                              ; preds = %767
  %772 = add nsw i32 %768, -1
  %773 = zext i32 %772 to i64
  %774 = getelementptr inbounds i8, ptr %770, i64 %773
  %775 = load i8, ptr %774, align 1, !tbaa !17
  %776 = icmp eq i8 %775, 10
  %777 = zext i1 %776 to i32
  %778 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %779 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %780 = getelementptr inbounds ptr, ptr %778, i64 %779
  %781 = load ptr, ptr %780, align 8, !tbaa !9
  %782 = getelementptr inbounds %struct.yy_buffer_state, ptr %781, i64 0, i32 7
  store i32 %777, ptr %782, align 8, !tbaa !18
  br label %783

783:                                              ; preds = %771, %767
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %770, i32 noundef %768) #25
  br label %1533

784:                                              ; preds = %158
  %785 = load i32, ptr @yyleng, align 4, !tbaa !5
  %786 = icmp sgt i32 %785, 0
  %787 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %786, label %788, label %800

788:                                              ; preds = %784
  %789 = add nsw i32 %785, -1
  %790 = zext i32 %789 to i64
  %791 = getelementptr inbounds i8, ptr %787, i64 %790
  %792 = load i8, ptr %791, align 1, !tbaa !17
  %793 = icmp eq i8 %792, 10
  %794 = zext i1 %793 to i32
  %795 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %796 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %797 = getelementptr inbounds ptr, ptr %795, i64 %796
  %798 = load ptr, ptr %797, align 8, !tbaa !9
  %799 = getelementptr inbounds %struct.yy_buffer_state, ptr %798, i64 0, i32 7
  store i32 %794, ptr %799, align 8, !tbaa !18
  br label %800

800:                                              ; preds = %788, %784
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %787, i32 noundef %785) #25
  br label %1533

801:                                              ; preds = %158
  %802 = load i32, ptr @yyleng, align 4, !tbaa !5
  %803 = icmp sgt i32 %802, 0
  %804 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %803, label %805, label %817

805:                                              ; preds = %801
  %806 = add nsw i32 %802, -1
  %807 = zext i32 %806 to i64
  %808 = getelementptr inbounds i8, ptr %804, i64 %807
  %809 = load i8, ptr %808, align 1, !tbaa !17
  %810 = icmp eq i8 %809, 10
  %811 = zext i1 %810 to i32
  %812 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %813 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %814 = getelementptr inbounds ptr, ptr %812, i64 %813
  %815 = load ptr, ptr %814, align 8, !tbaa !9
  %816 = getelementptr inbounds %struct.yy_buffer_state, ptr %815, i64 0, i32 7
  store i32 %811, ptr %816, align 8, !tbaa !18
  br label %817

817:                                              ; preds = %805, %801
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %804, i32 noundef %802) #25
  br label %1533

818:                                              ; preds = %158
  %819 = load i32, ptr @yyleng, align 4, !tbaa !5
  %820 = icmp sgt i32 %819, 0
  %821 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %820, label %822, label %834

822:                                              ; preds = %818
  %823 = add nsw i32 %819, -1
  %824 = zext i32 %823 to i64
  %825 = getelementptr inbounds i8, ptr %821, i64 %824
  %826 = load i8, ptr %825, align 1, !tbaa !17
  %827 = icmp eq i8 %826, 10
  %828 = zext i1 %827 to i32
  %829 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %830 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %831 = getelementptr inbounds ptr, ptr %829, i64 %830
  %832 = load ptr, ptr %831, align 8, !tbaa !9
  %833 = getelementptr inbounds %struct.yy_buffer_state, ptr %832, i64 0, i32 7
  store i32 %828, ptr %833, align 8, !tbaa !18
  br label %834

834:                                              ; preds = %822, %818
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %821, i32 noundef %819) #25
  br label %1533

835:                                              ; preds = %158
  %836 = load i32, ptr @yyleng, align 4, !tbaa !5
  %837 = icmp sgt i32 %836, 0
  %838 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %837, label %839, label %851

839:                                              ; preds = %835
  %840 = add nsw i32 %836, -1
  %841 = zext i32 %840 to i64
  %842 = getelementptr inbounds i8, ptr %838, i64 %841
  %843 = load i8, ptr %842, align 1, !tbaa !17
  %844 = icmp eq i8 %843, 10
  %845 = zext i1 %844 to i32
  %846 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %847 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %848 = getelementptr inbounds ptr, ptr %846, i64 %847
  %849 = load ptr, ptr %848, align 8, !tbaa !9
  %850 = getelementptr inbounds %struct.yy_buffer_state, ptr %849, i64 0, i32 7
  store i32 %845, ptr %850, align 8, !tbaa !18
  br label %851

851:                                              ; preds = %839, %835
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %838, i32 noundef %836) #25
  %852 = load ptr, ptr @yytext, align 8, !tbaa !9
  %853 = load i8, ptr %852, align 1, !tbaa !17
  switch i8 %853, label %857 [
    i8 91, label %855
    i8 123, label %854
    i8 59, label %854
  ]

854:                                              ; preds = %851, %851
  br label %855

855:                                              ; preds = %854, %851
  %856 = phi i32 [ 5, %854 ], [ 3, %851 ]
  store i32 %856, ptr @yy_start, align 4, !tbaa !5
  br label %857

857:                                              ; preds = %855, %851
  %858 = sext i8 %853 to i32
  br label %1533

859:                                              ; preds = %158
  %860 = load i32, ptr @yyleng, align 4, !tbaa !5
  %861 = icmp sgt i32 %860, 0
  %862 = load ptr, ptr @yytext, align 8, !tbaa !9
  br i1 %861, label %863, label %875

863:                                              ; preds = %859
  %864 = add nsw i32 %860, -1
  %865 = zext i32 %864 to i64
  %866 = getelementptr inbounds i8, ptr %862, i64 %865
  %867 = load i8, ptr %866, align 1, !tbaa !17
  %868 = icmp eq i8 %867, 10
  %869 = zext i1 %868 to i32
  %870 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %871 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %872 = getelementptr inbounds ptr, ptr %870, i64 %871
  %873 = load ptr, ptr %872, align 8, !tbaa !9
  %874 = getelementptr inbounds %struct.yy_buffer_state, ptr %873, i64 0, i32 7
  store i32 %869, ptr %874, align 8, !tbaa !18
  br label %875

875:                                              ; preds = %863, %859
  call void @srcpos_update(ptr noundef nonnull @yylloc, ptr noundef %862, i32 noundef %860) #25
  %876 = load ptr, ptr @yytext, align 8, !tbaa !9
  %877 = load i32, ptr @yyleng, align 4, !tbaa !5
  %878 = sext i32 %877 to i64
  %879 = load ptr, ptr @yyout, align 8, !tbaa !9
  %880 = call i64 @fwrite(ptr noundef %876, i64 noundef %878, i64 noundef 1, ptr noundef %879)
  br label %293

881:                                              ; preds = %158
  %882 = load ptr, ptr @yytext, align 8, !tbaa !9
  %883 = load i8, ptr @yy_hold_char, align 1, !tbaa !17
  store i8 %883, ptr %148, align 1, !tbaa !17
  %884 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %885 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %886 = getelementptr inbounds ptr, ptr %884, i64 %885
  %887 = load ptr, ptr %886, align 8, !tbaa !9
  %888 = getelementptr inbounds %struct.yy_buffer_state, ptr %887, i64 0, i32 11
  %889 = load i32, ptr %888, align 8, !tbaa !29
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %893, label %891

891:                                              ; preds = %881
  %892 = load i32, ptr @yy_n_chars, align 4, !tbaa !5
  br label %899

893:                                              ; preds = %881
  %894 = getelementptr inbounds %struct.yy_buffer_state, ptr %887, i64 0, i32 4
  %895 = load i32, ptr %894, align 4, !tbaa !13
  store i32 %895, ptr @yy_n_chars, align 4, !tbaa !5
  %896 = load ptr, ptr @yyin, align 8, !tbaa !9
  store ptr %896, ptr %887, align 8, !tbaa !16
  %897 = load ptr, ptr %886, align 8, !tbaa !9
  %898 = getelementptr inbounds %struct.yy_buffer_state, ptr %897, i64 0, i32 11
  store i32 1, ptr %898, align 8, !tbaa !29
  br label %899

899:                                              ; preds = %893, %891
  %900 = phi i32 [ %895, %893 ], [ %892, %891 ]
  %901 = phi ptr [ %897, %893 ], [ %887, %891 ]
  %902 = load ptr, ptr @yy_c_buf_p, align 8, !tbaa !9
  %903 = getelementptr inbounds %struct.yy_buffer_state, ptr %901, i64 0, i32 1
  %904 = load ptr, ptr %903, align 8, !tbaa !28
  %905 = sext i32 %900 to i64
  %906 = getelementptr inbounds i8, ptr %904, i64 %905
  %907 = icmp ugt ptr %902, %906
  br i1 %907, label %1020, label %908

908:                                              ; preds = %899
  %909 = ptrtoint ptr %148 to i64
  %910 = ptrtoint ptr %882 to i64
  %911 = sub i64 %909, %910
  %912 = trunc i64 %911 to i32
  %913 = load ptr, ptr @yytext, align 8, !tbaa !9
  %914 = shl i64 %911, 32
  %915 = add i64 %914, -4294967296
  %916 = ashr exact i64 %915, 32
  %917 = getelementptr inbounds i8, ptr %913, i64 %916
  store ptr %917, ptr @yy_c_buf_p, align 8, !tbaa !9
  %918 = load i32, ptr @yy_start, align 4, !tbaa !5
  %919 = getelementptr inbounds %struct.yy_buffer_state, ptr %901, i64 0, i32 7
  %920 = load i32, ptr %919, align 8, !tbaa !18
  %921 = add nsw i32 %920, %918
  %922 = icmp sgt i32 %912, 1
  br i1 %922, label %923, label %979

923:                                              ; preds = %970, %908
  %924 = phi ptr [ %975, %970 ], [ %913, %908 ]
  %925 = phi i32 [ %974, %970 ], [ %921, %908 ]
  %926 = load i8, ptr %924, align 1, !tbaa !17
  %927 = icmp eq i8 %926, 0
  br i1 %927, label %932, label %928

928:                                              ; preds = %923
  %929 = zext i8 %926 to i64
  %930 = getelementptr inbounds [256 x i8], ptr @yy_ec, i64 0, i64 %929
  %931 = load i8, ptr %930, align 1, !tbaa !17
  br label %932

932:                                              ; preds = %928, %923
  %933 = phi i8 [ %931, %928 ], [ 1, %923 ]
  %934 = sext i32 %925 to i64
  %935 = getelementptr inbounds [181 x i16], ptr @yy_accept, i64 0, i64 %934
  %936 = load i16, ptr %935, align 2, !tbaa !19
  %937 = icmp eq i16 %936, 0
  br i1 %937, label %939, label %938

938:                                              ; preds = %932
  store i32 %925, ptr @yy_last_accepting_state, align 4, !tbaa !5
  store ptr %924, ptr @yy_last_accepting_cpos, align 8, !tbaa !9
  br label %939

939:                                              ; preds = %938, %932
  %940 = getelementptr inbounds [195 x i16], ptr @yy_base, i64 0, i64 %934
  %941 = load i16, ptr %940, align 2, !tbaa !19
  %942 = sext i16 %941 to i64
  %943 = zext i8 %933 to i64
  %944 = add nsw i64 %942, %943
  %945 = getelementptr inbounds [464 x i16], ptr @yy_chk, i64 0, i64 %944
  %946 = load i16, ptr %945, align 2, !tbaa !19
  %947 = sext i16 %946 to i32
  %948 = icmp eq i32 %925, %947
  br i1 %948, label %970, label %949

949:                                              ; preds = %959, %939
  %950 = phi i64 [ %965, %959 ], [ %943, %939 ]
  %951 = phi i64 [ %961, %959 ], [ %934, %939 ]
  %952 = phi i8 [ %960, %959 ], [ %933, %939 ]
  %953 = getelementptr inbounds [195 x i16], ptr @yy_def, i64 0, i64 %951
  %954 = load i16, ptr %953, align 2, !tbaa !19
  %955 = icmp sgt i16 %954, 180
  br i1 %955, label %956, label %959

956:                                              ; preds = %949
  %957 = getelementptr inbounds [49 x i8], ptr @yy_meta, i64 0, i64 %950
  %958 = load i8, ptr %957, align 1, !tbaa !17
  br label %959

959:                                              ; preds = %956, %949
  %960 = phi i8 [ %958, %956 ], [ %952, %949 ]
  %961 = sext i16 %954 to i64
  %962 = getelementptr inbounds [195 x i16], ptr @yy_base, i64 0, i64 %961
  %963 = load i16, ptr %962, align 2, !tbaa !19
  %964 = sext i16 %963 to i64
  %965 = zext i8 %960 to i64
  %966 = add nsw i64 %964, %965
  %967 = getelementptr inbounds [464 x i16], ptr @yy_chk, i64 0, i64 %966
  %968 = load i16, ptr %967, align 2, !tbaa !19
  %969 = icmp eq i16 %954, %968
  br i1 %969, label %970, label %949

970:                                              ; preds = %959, %939
  %971 = phi i64 [ %944, %939 ], [ %966, %959 ]
  %972 = getelementptr inbounds [464 x i16], ptr @yy_nxt, i64 0, i64 %971
  %973 = load i16, ptr %972, align 2, !tbaa !19
  %974 = sext i16 %973 to i32
  %975 = getelementptr inbounds i8, ptr %924, i64 1
  %976 = icmp eq ptr %975, %917
  br i1 %976, label %977, label %923

977:                                              ; preds = %970
  %978 = sext i16 %973 to i32
  br label %979

979:                                              ; preds = %977, %908
  %980 = phi i32 [ %921, %908 ], [ %978, %977 ]
  %981 = sext i32 %980 to i64
  %982 = getelementptr inbounds [181 x i16], ptr @yy_accept, i64 0, i64 %981
  %983 = load i16, ptr %982, align 2, !tbaa !19
  %984 = icmp eq i16 %983, 0
  br i1 %984, label %986, label %985

985:                                              ; preds = %979
  store i32 %980, ptr @yy_last_accepting_state, align 4, !tbaa !5
  store ptr %917, ptr @yy_last_accepting_cpos, align 8, !tbaa !9
  br label %986

986:                                              ; preds = %985, %979
  %987 = getelementptr inbounds [195 x i16], ptr @yy_base, i64 0, i64 %981
  %988 = load i16, ptr %987, align 2, !tbaa !19
  %989 = sext i16 %988 to i64
  %990 = add nsw i64 %989, 1
  %991 = getelementptr inbounds [464 x i16], ptr @yy_chk, i64 0, i64 %990
  %992 = load i16, ptr %991, align 2, !tbaa !19
  %993 = sext i16 %992 to i32
  %994 = icmp eq i32 %980, %993
  br i1 %994, label %1007, label %995

995:                                              ; preds = %995, %986
  %996 = phi i64 [ %999, %995 ], [ %981, %986 ]
  %997 = getelementptr inbounds [195 x i16], ptr @yy_def, i64 0, i64 %996
  %998 = load i16, ptr %997, align 2, !tbaa !19
  %999 = sext i16 %998 to i64
  %1000 = getelementptr inbounds [195 x i16], ptr @yy_base, i64 0, i64 %999
  %1001 = load i16, ptr %1000, align 2, !tbaa !19
  %1002 = sext i16 %1001 to i64
  %1003 = add nsw i64 %1002, 1
  %1004 = getelementptr inbounds [464 x i16], ptr @yy_chk, i64 0, i64 %1003
  %1005 = load i16, ptr %1004, align 2, !tbaa !19
  %1006 = icmp eq i16 %998, %1005
  br i1 %1006, label %1007, label %995

1007:                                             ; preds = %995, %986
  %1008 = phi i64 [ %990, %986 ], [ %1003, %995 ]
  %1009 = getelementptr inbounds [464 x i16], ptr @yy_nxt, i64 0, i64 %1008
  %1010 = load i16, ptr %1009, align 2, !tbaa !19
  %1011 = icmp eq i16 %1010, 180
  %1012 = icmp eq i64 %1008, 0
  %1013 = select i1 %1011, i1 true, i1 %1012
  br i1 %1013, label %1017, label %1014

1014:                                             ; preds = %1007
  %1015 = sext i16 %1010 to i32
  %1016 = getelementptr inbounds i8, ptr %917, i64 1
  store ptr %1016, ptr @yy_c_buf_p, align 8, !tbaa !9
  br label %81

1017:                                             ; preds = %1007
  %1018 = load ptr, ptr @yy_last_accepting_cpos, align 8, !tbaa !9
  %1019 = load i32, ptr @yy_last_accepting_state, align 4, !tbaa !5
  br label %1463

1020:                                             ; preds = %899
  %1021 = load ptr, ptr @yytext, align 8, !tbaa !9
  %1022 = add nsw i32 %900, 1
  %1023 = sext i32 %1022 to i64
  %1024 = getelementptr inbounds i8, ptr %904, i64 %1023
  %1025 = icmp ugt ptr %902, %1024
  br i1 %1025, label %1026, label %1027

1026:                                             ; preds = %1020
  call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.14) #23
  unreachable

1027:                                             ; preds = %1020
  %1028 = getelementptr inbounds %struct.yy_buffer_state, ptr %901, i64 0, i32 10
  %1029 = load i32, ptr %1028, align 4, !tbaa !30
  %1030 = icmp eq i32 %1029, 0
  %1031 = ptrtoint ptr %902 to i64
  %1032 = ptrtoint ptr %1021 to i64
  br i1 %1030, label %1033, label %1036

1033:                                             ; preds = %1027
  %1034 = sub i64 %1031, %1032
  %1035 = icmp eq i64 %1034, 1
  br i1 %1035, label %1526, label %1452

1036:                                             ; preds = %1027
  %1037 = xor i64 %1032, -1
  %1038 = add i64 %1037, %1031
  %1039 = trunc i64 %1038 to i32
  %1040 = icmp sgt i32 %1039, 0
  br i1 %1040, label %1041, label %1155

1041:                                             ; preds = %1036
  %1042 = add i64 %1031, 4294967294
  %1043 = sub i64 %1042, %1032
  %1044 = and i64 %1043, 4294967295
  %1045 = add nuw nsw i64 %1044, 1
  %1046 = icmp ult i64 %1044, 7
  br i1 %1046, label %1140, label %1047

1047:                                             ; preds = %1041
  %1048 = getelementptr i8, ptr %904, i64 1
  %1049 = add i64 %1031, 4294967294
  %1050 = sub i64 %1049, %1032
  %1051 = and i64 %1050, 4294967295
  %1052 = getelementptr i8, ptr %1048, i64 %1051
  %1053 = getelementptr i8, ptr %1021, i64 1
  %1054 = getelementptr i8, ptr %1053, i64 %1051
  %1055 = icmp ult ptr %904, %1054
  %1056 = icmp ult ptr %1021, %1052
  %1057 = and i1 %1055, %1056
  br i1 %1057, label %1140, label %1058

1058:                                             ; preds = %1047
  %1059 = icmp ult i64 %1044, 31
  br i1 %1059, label %1125, label %1060

1060:                                             ; preds = %1058
  %1061 = and i64 %1045, 8589934560
  %1062 = add nsw i64 %1061, -32
  %1063 = lshr exact i64 %1062, 5
  %1064 = add nuw nsw i64 %1063, 1
  %1065 = and i64 %1064, 3
  %1066 = icmp ult i64 %1062, 96
  br i1 %1066, label %1102, label %1067

1067:                                             ; preds = %1060
  %1068 = and i64 %1064, 1152921504606846972
  br label %1069

1069:                                             ; preds = %1069, %1067
  %1070 = phi i64 [ 0, %1067 ], [ %1099, %1069 ]
  %1071 = phi i64 [ 0, %1067 ], [ %1100, %1069 ]
  %1072 = getelementptr i8, ptr %904, i64 %1070
  %1073 = getelementptr i8, ptr %1021, i64 %1070
  %1074 = load <16 x i8>, ptr %1073, align 1, !tbaa !17, !alias.scope !31
  %1075 = getelementptr i8, ptr %1073, i64 16
  %1076 = load <16 x i8>, ptr %1075, align 1, !tbaa !17, !alias.scope !31
  store <16 x i8> %1074, ptr %1072, align 1, !tbaa !17, !alias.scope !34, !noalias !31
  %1077 = getelementptr i8, ptr %1072, i64 16
  store <16 x i8> %1076, ptr %1077, align 1, !tbaa !17, !alias.scope !34, !noalias !31
  %1078 = or i64 %1070, 32
  %1079 = getelementptr i8, ptr %904, i64 %1078
  %1080 = getelementptr i8, ptr %1021, i64 %1078
  %1081 = load <16 x i8>, ptr %1080, align 1, !tbaa !17, !alias.scope !31
  %1082 = getelementptr i8, ptr %1080, i64 16
  %1083 = load <16 x i8>, ptr %1082, align 1, !tbaa !17, !alias.scope !31
  store <16 x i8> %1081, ptr %1079, align 1, !tbaa !17, !alias.scope !34, !noalias !31
  %1084 = getelementptr i8, ptr %1079, i64 16
  store <16 x i8> %1083, ptr %1084, align 1, !tbaa !17, !alias.scope !34, !noalias !31
  %1085 = or i64 %1070, 64
  %1086 = getelementptr i8, ptr %904, i64 %1085
  %1087 = getelementptr i8, ptr %1021, i64 %1085
  %1088 = load <16 x i8>, ptr %1087, align 1, !tbaa !17, !alias.scope !31
  %1089 = getelementptr i8, ptr %1087, i64 16
  %1090 = load <16 x i8>, ptr %1089, align 1, !tbaa !17, !alias.scope !31
  store <16 x i8> %1088, ptr %1086, align 1, !tbaa !17, !alias.scope !34, !noalias !31
  %1091 = getelementptr i8, ptr %1086, i64 16
  store <16 x i8> %1090, ptr %1091, align 1, !tbaa !17, !alias.scope !34, !noalias !31
  %1092 = or i64 %1070, 96
  %1093 = getelementptr i8, ptr %904, i64 %1092
  %1094 = getelementptr i8, ptr %1021, i64 %1092
  %1095 = load <16 x i8>, ptr %1094, align 1, !tbaa !17, !alias.scope !31
  %1096 = getelementptr i8, ptr %1094, i64 16
  %1097 = load <16 x i8>, ptr %1096, align 1, !tbaa !17, !alias.scope !31
  store <16 x i8> %1095, ptr %1093, align 1, !tbaa !17, !alias.scope !34, !noalias !31
  %1098 = getelementptr i8, ptr %1093, i64 16
  store <16 x i8> %1097, ptr %1098, align 1, !tbaa !17, !alias.scope !34, !noalias !31
  %1099 = add nuw i64 %1070, 128
  %1100 = add i64 %1071, 4
  %1101 = icmp eq i64 %1100, %1068
  br i1 %1101, label %1102, label %1069, !llvm.loop !36

1102:                                             ; preds = %1069, %1060
  %1103 = phi i64 [ 0, %1060 ], [ %1099, %1069 ]
  %1104 = icmp eq i64 %1065, 0
  br i1 %1104, label %1117, label %1105

1105:                                             ; preds = %1105, %1102
  %1106 = phi i64 [ %1114, %1105 ], [ %1103, %1102 ]
  %1107 = phi i64 [ %1115, %1105 ], [ 0, %1102 ]
  %1108 = getelementptr i8, ptr %904, i64 %1106
  %1109 = getelementptr i8, ptr %1021, i64 %1106
  %1110 = load <16 x i8>, ptr %1109, align 1, !tbaa !17, !alias.scope !31
  %1111 = getelementptr i8, ptr %1109, i64 16
  %1112 = load <16 x i8>, ptr %1111, align 1, !tbaa !17, !alias.scope !31
  store <16 x i8> %1110, ptr %1108, align 1, !tbaa !17, !alias.scope !34, !noalias !31
  %1113 = getelementptr i8, ptr %1108, i64 16
  store <16 x i8> %1112, ptr %1113, align 1, !tbaa !17, !alias.scope !34, !noalias !31
  %1114 = add nuw i64 %1106, 32
  %1115 = add i64 %1107, 1
  %1116 = icmp eq i64 %1115, %1065
  br i1 %1116, label %1117, label %1105, !llvm.loop !38

1117:                                             ; preds = %1105, %1102
  %1118 = icmp eq i64 %1045, %1061
  br i1 %1118, label %1153, label %1119

1119:                                             ; preds = %1117
  %1120 = trunc i64 %1061 to i32
  %1121 = getelementptr i8, ptr %1021, i64 %1061
  %1122 = getelementptr i8, ptr %904, i64 %1061
  %1123 = and i64 %1045, 24
  %1124 = icmp eq i64 %1123, 0
  br i1 %1124, label %1140, label %1125

1125:                                             ; preds = %1119, %1058
  %1126 = phi i64 [ %1061, %1119 ], [ 0, %1058 ]
  %1127 = and i64 %1045, 8589934584
  %1128 = getelementptr i8, ptr %904, i64 %1127
  %1129 = getelementptr i8, ptr %1021, i64 %1127
  %1130 = trunc i64 %1127 to i32
  br label %1131

1131:                                             ; preds = %1131, %1125
  %1132 = phi i64 [ %1126, %1125 ], [ %1136, %1131 ]
  %1133 = getelementptr i8, ptr %904, i64 %1132
  %1134 = getelementptr i8, ptr %1021, i64 %1132
  %1135 = load <8 x i8>, ptr %1134, align 1, !tbaa !17
  store <8 x i8> %1135, ptr %1133, align 1, !tbaa !17
  %1136 = add nuw i64 %1132, 8
  %1137 = icmp eq i64 %1136, %1127
  br i1 %1137, label %1138, label %1131, !llvm.loop !40

1138:                                             ; preds = %1131
  %1139 = icmp eq i64 %1045, %1127
  br i1 %1139, label %1153, label %1140

1140:                                             ; preds = %1138, %1119, %1047, %1041
  %1141 = phi ptr [ %904, %1041 ], [ %904, %1047 ], [ %1122, %1119 ], [ %1128, %1138 ]
  %1142 = phi ptr [ %1021, %1041 ], [ %1021, %1047 ], [ %1121, %1119 ], [ %1129, %1138 ]
  %1143 = phi i32 [ 0, %1041 ], [ 0, %1047 ], [ %1120, %1119 ], [ %1130, %1138 ]
  br label %1144

1144:                                             ; preds = %1144, %1140
  %1145 = phi ptr [ %1150, %1144 ], [ %1141, %1140 ]
  %1146 = phi ptr [ %1148, %1144 ], [ %1142, %1140 ]
  %1147 = phi i32 [ %1151, %1144 ], [ %1143, %1140 ]
  %1148 = getelementptr inbounds i8, ptr %1146, i64 1
  %1149 = load i8, ptr %1146, align 1, !tbaa !17
  %1150 = getelementptr inbounds i8, ptr %1145, i64 1
  store i8 %1149, ptr %1145, align 1, !tbaa !17
  %1151 = add nuw nsw i32 %1147, 1
  %1152 = icmp eq i32 %1151, %1039
  br i1 %1152, label %1153, label %1144, !llvm.loop !42

1153:                                             ; preds = %1144, %1138, %1117
  %1154 = load ptr, ptr %886, align 8, !tbaa !9
  br label %1155

1155:                                             ; preds = %1153, %1036
  %1156 = phi ptr [ %1154, %1153 ], [ %901, %1036 ]
  %1157 = getelementptr inbounds %struct.yy_buffer_state, ptr %1156, i64 0, i32 11
  %1158 = load i32, ptr %1157, align 8, !tbaa !29
  %1159 = icmp eq i32 %1158, 2
  br i1 %1159, label %1160, label %1161

1160:                                             ; preds = %1155
  store i32 0, ptr @yy_n_chars, align 4, !tbaa !5
  br label %1308

1161:                                             ; preds = %1155
  %1162 = xor i32 %1039, -1
  %1163 = getelementptr inbounds %struct.yy_buffer_state, ptr %1156, i64 0, i32 3
  %1164 = load i32, ptr %1163, align 8, !tbaa !43
  %1165 = add i32 %1164, %1162
  %1166 = icmp slt i32 %1165, 1
  br i1 %1166, label %1167, label %1202

1167:                                             ; preds = %1193, %1161
  %1168 = phi i32 [ %1199, %1193 ], [ %1164, %1161 ]
  %1169 = phi ptr [ %1197, %1193 ], [ %1156, %1161 ]
  %1170 = phi ptr [ %1196, %1193 ], [ %902, %1161 ]
  %1171 = getelementptr inbounds %struct.yy_buffer_state, ptr %1169, i64 0, i32 1
  %1172 = load ptr, ptr %1171, align 8, !tbaa !28
  %1173 = ptrtoint ptr %1170 to i64
  %1174 = ptrtoint ptr %1172 to i64
  %1175 = sub i64 %1173, %1174
  %1176 = getelementptr inbounds %struct.yy_buffer_state, ptr %1169, i64 0, i32 5
  %1177 = load i32, ptr %1176, align 8, !tbaa !27
  %1178 = icmp eq i32 %1177, 0
  br i1 %1178, label %1179, label %1180

1179:                                             ; preds = %1167
  store ptr null, ptr %1171, align 8, !tbaa !28
  br label %1192

1180:                                             ; preds = %1167
  %1181 = getelementptr inbounds %struct.yy_buffer_state, ptr %1169, i64 0, i32 3
  %1182 = icmp slt i32 %1168, 1
  %1183 = shl nuw nsw i32 %1168, 1
  %1184 = sub i32 0, %1168
  %1185 = lshr i32 %1184, 3
  %1186 = sub i32 %1168, %1185
  %1187 = select i1 %1182, i32 %1186, i32 %1183
  store i32 %1187, ptr %1181, align 8, !tbaa !43
  %1188 = add nsw i32 %1187, 2
  %1189 = sext i32 %1188 to i64
  %1190 = call ptr @realloc(ptr noundef %1172, i64 noundef %1189) #24
  store ptr %1190, ptr %1171, align 8, !tbaa !28
  %1191 = icmp eq ptr %1190, null
  br i1 %1191, label %1192, label %1193

1192:                                             ; preds = %1180, %1179
  call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.15) #23
  unreachable

1193:                                             ; preds = %1180
  %1194 = shl i64 %1175, 32
  %1195 = ashr exact i64 %1194, 32
  %1196 = getelementptr inbounds i8, ptr %1190, i64 %1195
  store ptr %1196, ptr @yy_c_buf_p, align 8, !tbaa !9
  %1197 = load ptr, ptr %886, align 8, !tbaa !9
  %1198 = getelementptr inbounds %struct.yy_buffer_state, ptr %1197, i64 0, i32 3
  %1199 = load i32, ptr %1198, align 8, !tbaa !43
  %1200 = add i32 %1199, %1162
  %1201 = icmp slt i32 %1200, 1
  br i1 %1201, label %1167, label %1202

1202:                                             ; preds = %1193, %1161
  %1203 = phi ptr [ %1156, %1161 ], [ %1197, %1193 ]
  %1204 = phi i32 [ %1165, %1161 ], [ %1200, %1193 ]
  %1205 = call i32 @llvm.smin.i32(i32 %1204, i32 8192) #25
  %1206 = getelementptr inbounds %struct.yy_buffer_state, ptr %1203, i64 0, i32 6
  %1207 = load i32, ptr %1206, align 4, !tbaa !44
  %1208 = icmp eq i32 %1207, 0
  br i1 %1208, label %1251, label %1209

1209:                                             ; preds = %1202
  %1210 = shl i64 %1038, 32
  %1211 = ashr exact i64 %1210, 32
  %1212 = zext i32 %1205 to i64
  br label %1213

1213:                                             ; preds = %1217, %1209
  %1214 = phi i64 [ 0, %1209 ], [ %1227, %1217 ]
  %1215 = load ptr, ptr @yyin, align 8, !tbaa !9
  %1216 = call i32 @getc(ptr noundef %1215) #25
  switch i32 %1216, label %1217 [
    i32 -1, label %1229
    i32 10, label %1229
  ]

1217:                                             ; preds = %1213
  %1218 = trunc i32 %1216 to i8
  %1219 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %1220 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %1221 = getelementptr inbounds ptr, ptr %1219, i64 %1220
  %1222 = load ptr, ptr %1221, align 8, !tbaa !9
  %1223 = getelementptr inbounds %struct.yy_buffer_state, ptr %1222, i64 0, i32 1
  %1224 = load ptr, ptr %1223, align 8, !tbaa !28
  %1225 = getelementptr inbounds i8, ptr %1224, i64 %1211
  %1226 = getelementptr inbounds i8, ptr %1225, i64 %1214
  store i8 %1218, ptr %1226, align 1, !tbaa !17
  %1227 = add nuw nsw i64 %1214, 1
  %1228 = icmp eq i64 %1227, %1212
  br i1 %1228, label %1231, label %1213

1229:                                             ; preds = %1213, %1213
  %1230 = trunc i64 %1214 to i32
  br label %1231

1231:                                             ; preds = %1229, %1217
  %1232 = phi i32 [ %1230, %1229 ], [ %1205, %1217 ]
  switch i32 %1216, label %1301 [
    i32 10, label %1233
    i32 -1, label %1246
  ]

1233:                                             ; preds = %1231
  %1234 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %1235 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %1236 = getelementptr inbounds ptr, ptr %1234, i64 %1235
  %1237 = load ptr, ptr %1236, align 8, !tbaa !9
  %1238 = getelementptr inbounds %struct.yy_buffer_state, ptr %1237, i64 0, i32 1
  %1239 = load ptr, ptr %1238, align 8, !tbaa !28
  %1240 = getelementptr inbounds i8, ptr %1239, i64 %1211
  %1241 = add nuw nsw i32 %1232, 1
  %1242 = zext i32 %1232 to i64
  %1243 = getelementptr inbounds i8, ptr %1240, i64 %1242
  store i8 10, ptr %1243, align 1, !tbaa !17
  store i32 %1241, ptr @yy_n_chars, align 4, !tbaa !5
  %1244 = load ptr, ptr %1236, align 8, !tbaa !9
  %1245 = getelementptr inbounds %struct.yy_buffer_state, ptr %1244, i64 0, i32 4
  store i32 %1241, ptr %1245, align 4, !tbaa !13
  br label %1327

1246:                                             ; preds = %1231
  %1247 = load ptr, ptr @yyin, align 8, !tbaa !9
  %1248 = call i32 @ferror(ptr noundef %1247) #25
  %1249 = icmp eq i32 %1248, 0
  br i1 %1249, label %1301, label %1250

1250:                                             ; preds = %1246
  call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.16) #23
  unreachable

1251:                                             ; preds = %1202
  %1252 = tail call ptr @__errno_location() #27
  store i32 0, ptr %1252, align 4, !tbaa !5
  %1253 = shl i64 %1038, 32
  %1254 = ashr exact i64 %1253, 32
  %1255 = zext i32 %1205 to i64
  %1256 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %1257 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %1258 = getelementptr inbounds ptr, ptr %1256, i64 %1257
  %1259 = load ptr, ptr %1258, align 8, !tbaa !9
  %1260 = getelementptr inbounds %struct.yy_buffer_state, ptr %1259, i64 0, i32 1
  %1261 = load ptr, ptr %1260, align 8, !tbaa !28
  %1262 = getelementptr inbounds i8, ptr %1261, i64 %1254
  %1263 = load ptr, ptr @yyin, align 8, !tbaa !9
  %1264 = call i64 @fread(ptr noundef %1262, i64 noundef 1, i64 noundef %1255, ptr noundef %1263) #25
  %1265 = trunc i64 %1264 to i32
  store i32 %1265, ptr @yy_n_chars, align 4, !tbaa !5
  %1266 = icmp eq i32 %1265, 0
  br i1 %1266, label %1267, label %1294

1267:                                             ; preds = %1280, %1251
  %1268 = load ptr, ptr @yyin, align 8, !tbaa !9
  %1269 = call i32 @ferror(ptr noundef %1268) #25
  %1270 = icmp eq i32 %1269, 0
  br i1 %1270, label %1271, label %1276

1271:                                             ; preds = %1267
  %1272 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %1273 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %1274 = getelementptr inbounds ptr, ptr %1272, i64 %1273
  %1275 = load ptr, ptr %1274, align 8, !tbaa !9
  br label %1308

1276:                                             ; preds = %1267
  %1277 = load i32, ptr %1252, align 4, !tbaa !5
  %1278 = icmp eq i32 %1277, 4
  br i1 %1278, label %1280, label %1279

1279:                                             ; preds = %1276
  call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.16) #23
  unreachable

1280:                                             ; preds = %1276
  store i32 0, ptr %1252, align 4, !tbaa !5
  call void @clearerr(ptr noundef %1268) #25
  %1281 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %1282 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %1283 = getelementptr inbounds ptr, ptr %1281, i64 %1282
  %1284 = load ptr, ptr %1283, align 8, !tbaa !9
  %1285 = getelementptr inbounds %struct.yy_buffer_state, ptr %1284, i64 0, i32 1
  %1286 = load ptr, ptr %1285, align 8, !tbaa !28
  %1287 = getelementptr inbounds i8, ptr %1286, i64 %1254
  %1288 = load ptr, ptr @yyin, align 8, !tbaa !9
  %1289 = call i64 @fread(ptr noundef %1287, i64 noundef 1, i64 noundef %1255, ptr noundef %1288) #25
  %1290 = trunc i64 %1289 to i32
  store i32 %1290, ptr @yy_n_chars, align 4, !tbaa !5
  %1291 = icmp eq i32 %1290, 0
  br i1 %1291, label %1267, label %1292

1292:                                             ; preds = %1280
  %1293 = trunc i64 %1289 to i32
  br label %1294

1294:                                             ; preds = %1292, %1251
  %1295 = phi i32 [ %1265, %1251 ], [ %1293, %1292 ]
  %1296 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %1297 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %1298 = getelementptr inbounds ptr, ptr %1296, i64 %1297
  %1299 = load ptr, ptr %1298, align 8, !tbaa !9
  %1300 = getelementptr inbounds %struct.yy_buffer_state, ptr %1299, i64 0, i32 4
  store i32 %1295, ptr %1300, align 4, !tbaa !13
  br label %1327

1301:                                             ; preds = %1246, %1231
  store i32 %1232, ptr @yy_n_chars, align 4, !tbaa !5
  %1302 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %1303 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %1304 = getelementptr inbounds ptr, ptr %1302, i64 %1303
  %1305 = load ptr, ptr %1304, align 8, !tbaa !9
  %1306 = getelementptr inbounds %struct.yy_buffer_state, ptr %1305, i64 0, i32 4
  store i32 %1232, ptr %1306, align 4, !tbaa !13
  %1307 = icmp eq i32 %1232, 0
  br i1 %1307, label %1313, label %1327

1308:                                             ; preds = %1271, %1160
  %1309 = phi ptr [ %1275, %1271 ], [ %1156, %1160 ]
  %1310 = phi i64 [ %1273, %1271 ], [ %885, %1160 ]
  %1311 = phi ptr [ %1272, %1271 ], [ %884, %1160 ]
  %1312 = getelementptr inbounds %struct.yy_buffer_state, ptr %1309, i64 0, i32 4
  store i32 0, ptr %1312, align 4, !tbaa !13
  br label %1313

1313:                                             ; preds = %1308, %1301
  %1314 = phi ptr [ %1305, %1301 ], [ %1309, %1308 ]
  %1315 = phi i64 [ %1303, %1301 ], [ %1310, %1308 ]
  %1316 = phi ptr [ %1302, %1301 ], [ %1311, %1308 ]
  %1317 = icmp eq i32 %1039, 0
  br i1 %1317, label %1318, label %1325

1318:                                             ; preds = %1313
  %1319 = load ptr, ptr @yyin, align 8, !tbaa !9
  call void @yyrestart(ptr noundef %1319) #25
  %1320 = load i32, ptr @yy_n_chars, align 4, !tbaa !5
  %1321 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %1322 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %1323 = getelementptr inbounds ptr, ptr %1321, i64 %1322
  %1324 = load ptr, ptr %1323, align 8, !tbaa !9
  br label %1327

1325:                                             ; preds = %1313
  %1326 = getelementptr inbounds %struct.yy_buffer_state, ptr %1314, i64 0, i32 11
  store i32 2, ptr %1326, align 8, !tbaa !29
  br label %1327

1327:                                             ; preds = %1325, %1318, %1301, %1294, %1233
  %1328 = phi ptr [ %1324, %1318 ], [ %1314, %1325 ], [ %1305, %1301 ], [ %1299, %1294 ], [ %1244, %1233 ]
  %1329 = phi i64 [ %1322, %1318 ], [ %1315, %1325 ], [ %1303, %1301 ], [ %1297, %1294 ], [ %1235, %1233 ]
  %1330 = phi ptr [ %1321, %1318 ], [ %1316, %1325 ], [ %1302, %1301 ], [ %1296, %1294 ], [ %1234, %1233 ]
  %1331 = phi i32 [ %1320, %1318 ], [ 0, %1325 ], [ %1232, %1301 ], [ %1295, %1294 ], [ %1241, %1233 ]
  %1332 = phi i32 [ 1, %1318 ], [ 2, %1325 ], [ 0, %1301 ], [ 0, %1294 ], [ 0, %1233 ]
  %1333 = add nsw i32 %1331, %1039
  %1334 = getelementptr inbounds ptr, ptr %1330, i64 %1329
  %1335 = getelementptr inbounds %struct.yy_buffer_state, ptr %1328, i64 0, i32 3
  %1336 = load i32, ptr %1335, align 8, !tbaa !43
  %1337 = icmp sgt i32 %1333, %1336
  br i1 %1337, label %1341, label %1338

1338:                                             ; preds = %1327
  %1339 = getelementptr inbounds %struct.yy_buffer_state, ptr %1328, i64 0, i32 1
  %1340 = load ptr, ptr %1339, align 8, !tbaa !28
  br label %1358

1341:                                             ; preds = %1327
  %1342 = ashr i32 %1331, 1
  %1343 = add nsw i32 %1333, %1342
  %1344 = getelementptr inbounds %struct.yy_buffer_state, ptr %1328, i64 0, i32 1
  %1345 = load ptr, ptr %1344, align 8, !tbaa !28
  %1346 = sext i32 %1343 to i64
  %1347 = call ptr @realloc(ptr noundef %1345, i64 noundef %1346) #24
  %1348 = load ptr, ptr %1334, align 8, !tbaa !9
  %1349 = getelementptr inbounds %struct.yy_buffer_state, ptr %1348, i64 0, i32 1
  store ptr %1347, ptr %1349, align 8, !tbaa !28
  %1350 = load ptr, ptr %1334, align 8, !tbaa !9
  %1351 = getelementptr inbounds %struct.yy_buffer_state, ptr %1350, i64 0, i32 1
  %1352 = load ptr, ptr %1351, align 8, !tbaa !28
  %1353 = icmp eq ptr %1352, null
  br i1 %1353, label %1354, label %1355

1354:                                             ; preds = %1341
  call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.17) #23
  unreachable

1355:                                             ; preds = %1341
  %1356 = add nsw i32 %1343, -2
  %1357 = getelementptr inbounds %struct.yy_buffer_state, ptr %1350, i64 0, i32 3
  store i32 %1356, ptr %1357, align 8, !tbaa !43
  br label %1358

1358:                                             ; preds = %1355, %1338
  %1359 = phi ptr [ %1352, %1355 ], [ %1340, %1338 ]
  store i32 %1333, ptr @yy_n_chars, align 4, !tbaa !5
  %1360 = sext i32 %1333 to i64
  %1361 = getelementptr inbounds i8, ptr %1359, i64 %1360
  store i8 0, ptr %1361, align 1, !tbaa !17
  %1362 = load ptr, ptr %1334, align 8, !tbaa !9
  %1363 = getelementptr inbounds %struct.yy_buffer_state, ptr %1362, i64 0, i32 1
  %1364 = load ptr, ptr %1363, align 8, !tbaa !28
  %1365 = add nsw i32 %1333, 1
  %1366 = sext i32 %1365 to i64
  %1367 = getelementptr inbounds i8, ptr %1364, i64 %1366
  store i8 0, ptr %1367, align 1, !tbaa !17
  %1368 = load ptr, ptr %1334, align 8, !tbaa !9
  %1369 = getelementptr inbounds %struct.yy_buffer_state, ptr %1368, i64 0, i32 1
  %1370 = load ptr, ptr %1369, align 8, !tbaa !28
  store ptr %1370, ptr @yytext, align 8, !tbaa !9
  switch i32 %1332, label %293 [
    i32 1, label %1526
    i32 0, label %1380
    i32 2, label %1371
  ]

1371:                                             ; preds = %1358
  %1372 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %1373 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %1374 = getelementptr inbounds ptr, ptr %1372, i64 %1373
  %1375 = load ptr, ptr %1374, align 8, !tbaa !9
  %1376 = getelementptr inbounds %struct.yy_buffer_state, ptr %1375, i64 0, i32 1
  %1377 = load ptr, ptr %1376, align 8, !tbaa !28
  %1378 = load i32, ptr @yy_n_chars, align 4, !tbaa !5
  %1379 = sext i32 %1378 to i64
  br label %1452

1380:                                             ; preds = %1358
  %1381 = ptrtoint ptr %148 to i64
  %1382 = ptrtoint ptr %882 to i64
  %1383 = sub i64 %1381, %1382
  %1384 = trunc i64 %1383 to i32
  %1385 = shl i64 %1383, 32
  %1386 = add i64 %1385, -4294967296
  %1387 = ashr exact i64 %1386, 32
  %1388 = getelementptr inbounds i8, ptr %1370, i64 %1387
  store ptr %1388, ptr @yy_c_buf_p, align 8, !tbaa !9
  %1389 = load i32, ptr @yy_start, align 4, !tbaa !5
  %1390 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %1391 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %1392 = getelementptr inbounds ptr, ptr %1390, i64 %1391
  %1393 = load ptr, ptr %1392, align 8, !tbaa !9
  %1394 = getelementptr inbounds %struct.yy_buffer_state, ptr %1393, i64 0, i32 7
  %1395 = load i32, ptr %1394, align 8, !tbaa !18
  %1396 = add nsw i32 %1395, %1389
  %1397 = icmp sgt i32 %1384, 1
  br i1 %1397, label %1398, label %81

1398:                                             ; preds = %1445, %1380
  %1399 = phi ptr [ %1450, %1445 ], [ %1370, %1380 ]
  %1400 = phi i32 [ %1449, %1445 ], [ %1396, %1380 ]
  %1401 = load i8, ptr %1399, align 1, !tbaa !17
  %1402 = icmp eq i8 %1401, 0
  br i1 %1402, label %1407, label %1403

1403:                                             ; preds = %1398
  %1404 = zext i8 %1401 to i64
  %1405 = getelementptr inbounds [256 x i8], ptr @yy_ec, i64 0, i64 %1404
  %1406 = load i8, ptr %1405, align 1, !tbaa !17
  br label %1407

1407:                                             ; preds = %1403, %1398
  %1408 = phi i8 [ %1406, %1403 ], [ 1, %1398 ]
  %1409 = sext i32 %1400 to i64
  %1410 = getelementptr inbounds [181 x i16], ptr @yy_accept, i64 0, i64 %1409
  %1411 = load i16, ptr %1410, align 2, !tbaa !19
  %1412 = icmp eq i16 %1411, 0
  br i1 %1412, label %1414, label %1413

1413:                                             ; preds = %1407
  store i32 %1400, ptr @yy_last_accepting_state, align 4, !tbaa !5
  store ptr %1399, ptr @yy_last_accepting_cpos, align 8, !tbaa !9
  br label %1414

1414:                                             ; preds = %1413, %1407
  %1415 = getelementptr inbounds [195 x i16], ptr @yy_base, i64 0, i64 %1409
  %1416 = load i16, ptr %1415, align 2, !tbaa !19
  %1417 = sext i16 %1416 to i64
  %1418 = zext i8 %1408 to i64
  %1419 = add nsw i64 %1417, %1418
  %1420 = getelementptr inbounds [464 x i16], ptr @yy_chk, i64 0, i64 %1419
  %1421 = load i16, ptr %1420, align 2, !tbaa !19
  %1422 = sext i16 %1421 to i32
  %1423 = icmp eq i32 %1400, %1422
  br i1 %1423, label %1445, label %1424

1424:                                             ; preds = %1434, %1414
  %1425 = phi i64 [ %1440, %1434 ], [ %1418, %1414 ]
  %1426 = phi i64 [ %1436, %1434 ], [ %1409, %1414 ]
  %1427 = phi i8 [ %1435, %1434 ], [ %1408, %1414 ]
  %1428 = getelementptr inbounds [195 x i16], ptr @yy_def, i64 0, i64 %1426
  %1429 = load i16, ptr %1428, align 2, !tbaa !19
  %1430 = icmp sgt i16 %1429, 180
  br i1 %1430, label %1431, label %1434

1431:                                             ; preds = %1424
  %1432 = getelementptr inbounds [49 x i8], ptr @yy_meta, i64 0, i64 %1425
  %1433 = load i8, ptr %1432, align 1, !tbaa !17
  br label %1434

1434:                                             ; preds = %1431, %1424
  %1435 = phi i8 [ %1433, %1431 ], [ %1427, %1424 ]
  %1436 = sext i16 %1429 to i64
  %1437 = getelementptr inbounds [195 x i16], ptr @yy_base, i64 0, i64 %1436
  %1438 = load i16, ptr %1437, align 2, !tbaa !19
  %1439 = sext i16 %1438 to i64
  %1440 = zext i8 %1435 to i64
  %1441 = add nsw i64 %1439, %1440
  %1442 = getelementptr inbounds [464 x i16], ptr @yy_chk, i64 0, i64 %1441
  %1443 = load i16, ptr %1442, align 2, !tbaa !19
  %1444 = icmp eq i16 %1429, %1443
  br i1 %1444, label %1445, label %1424

1445:                                             ; preds = %1434, %1414
  %1446 = phi i64 [ %1419, %1414 ], [ %1441, %1434 ]
  %1447 = getelementptr inbounds [464 x i16], ptr @yy_nxt, i64 0, i64 %1446
  %1448 = load i16, ptr %1447, align 2, !tbaa !19
  %1449 = sext i16 %1448 to i32
  %1450 = getelementptr inbounds i8, ptr %1399, i64 1
  %1451 = icmp eq ptr %1450, %1388
  br i1 %1451, label %79, label %1398

1452:                                             ; preds = %1371, %1033
  %1453 = phi i64 [ %1379, %1371 ], [ %905, %1033 ]
  %1454 = phi ptr [ %1370, %1371 ], [ %1021, %1033 ]
  %1455 = phi ptr [ %1377, %1371 ], [ %904, %1033 ]
  %1456 = phi ptr [ %1375, %1371 ], [ %901, %1033 ]
  %1457 = getelementptr inbounds i8, ptr %1455, i64 %1453
  store ptr %1457, ptr @yy_c_buf_p, align 8, !tbaa !9
  %1458 = load i32, ptr @yy_start, align 4, !tbaa !5
  %1459 = getelementptr inbounds %struct.yy_buffer_state, ptr %1456, i64 0, i32 7
  %1460 = load i32, ptr %1459, align 8, !tbaa !18
  %1461 = add nsw i32 %1460, %1458
  %1462 = icmp ult ptr %1454, %1457
  br i1 %1462, label %1467, label %1463

1463:                                             ; preds = %1452, %1017, %164
  %1464 = phi ptr [ %1454, %164 ], [ %913, %1017 ], [ %1454, %1452 ]
  %1465 = phi ptr [ %1457, %164 ], [ %1018, %1017 ], [ %1457, %1452 ]
  %1466 = phi i32 [ %165, %164 ], [ %1019, %1017 ], [ %1461, %1452 ]
  br label %142

1467:                                             ; preds = %1452
  %1468 = ptrtoint ptr %1457 to i64
  %1469 = ptrtoint ptr %1454 to i64
  %1470 = sub i64 %1468, %1469
  %1471 = getelementptr i8, ptr %1454, i64 %1470
  br label %1472

1472:                                             ; preds = %1519, %1467
  %1473 = phi ptr [ %1524, %1519 ], [ %1454, %1467 ]
  %1474 = phi i32 [ %1523, %1519 ], [ %1461, %1467 ]
  %1475 = load i8, ptr %1473, align 1, !tbaa !17
  %1476 = icmp eq i8 %1475, 0
  br i1 %1476, label %1481, label %1477

1477:                                             ; preds = %1472
  %1478 = zext i8 %1475 to i64
  %1479 = getelementptr inbounds [256 x i8], ptr @yy_ec, i64 0, i64 %1478
  %1480 = load i8, ptr %1479, align 1, !tbaa !17
  br label %1481

1481:                                             ; preds = %1477, %1472
  %1482 = phi i8 [ %1480, %1477 ], [ 1, %1472 ]
  %1483 = sext i32 %1474 to i64
  %1484 = getelementptr inbounds [181 x i16], ptr @yy_accept, i64 0, i64 %1483
  %1485 = load i16, ptr %1484, align 2, !tbaa !19
  %1486 = icmp eq i16 %1485, 0
  br i1 %1486, label %1488, label %1487

1487:                                             ; preds = %1481
  store i32 %1474, ptr @yy_last_accepting_state, align 4, !tbaa !5
  store ptr %1473, ptr @yy_last_accepting_cpos, align 8, !tbaa !9
  br label %1488

1488:                                             ; preds = %1487, %1481
  %1489 = getelementptr inbounds [195 x i16], ptr @yy_base, i64 0, i64 %1483
  %1490 = load i16, ptr %1489, align 2, !tbaa !19
  %1491 = sext i16 %1490 to i64
  %1492 = zext i8 %1482 to i64
  %1493 = add nsw i64 %1491, %1492
  %1494 = getelementptr inbounds [464 x i16], ptr @yy_chk, i64 0, i64 %1493
  %1495 = load i16, ptr %1494, align 2, !tbaa !19
  %1496 = sext i16 %1495 to i32
  %1497 = icmp eq i32 %1474, %1496
  br i1 %1497, label %1519, label %1498

1498:                                             ; preds = %1508, %1488
  %1499 = phi i64 [ %1514, %1508 ], [ %1492, %1488 ]
  %1500 = phi i64 [ %1510, %1508 ], [ %1483, %1488 ]
  %1501 = phi i8 [ %1509, %1508 ], [ %1482, %1488 ]
  %1502 = getelementptr inbounds [195 x i16], ptr @yy_def, i64 0, i64 %1500
  %1503 = load i16, ptr %1502, align 2, !tbaa !19
  %1504 = icmp sgt i16 %1503, 180
  br i1 %1504, label %1505, label %1508

1505:                                             ; preds = %1498
  %1506 = getelementptr inbounds [49 x i8], ptr @yy_meta, i64 0, i64 %1499
  %1507 = load i8, ptr %1506, align 1, !tbaa !17
  br label %1508

1508:                                             ; preds = %1505, %1498
  %1509 = phi i8 [ %1507, %1505 ], [ %1501, %1498 ]
  %1510 = sext i16 %1503 to i64
  %1511 = getelementptr inbounds [195 x i16], ptr @yy_base, i64 0, i64 %1510
  %1512 = load i16, ptr %1511, align 2, !tbaa !19
  %1513 = sext i16 %1512 to i64
  %1514 = zext i8 %1509 to i64
  %1515 = add nsw i64 %1513, %1514
  %1516 = getelementptr inbounds [464 x i16], ptr @yy_chk, i64 0, i64 %1515
  %1517 = load i16, ptr %1516, align 2, !tbaa !19
  %1518 = icmp eq i16 %1503, %1517
  br i1 %1518, label %1519, label %1498

1519:                                             ; preds = %1508, %1488
  %1520 = phi i64 [ %1493, %1488 ], [ %1515, %1508 ]
  %1521 = getelementptr inbounds [464 x i16], ptr @yy_nxt, i64 0, i64 %1520
  %1522 = load i16, ptr %1521, align 2, !tbaa !19
  %1523 = sext i16 %1522 to i32
  %1524 = getelementptr inbounds i8, ptr %1473, i64 1
  %1525 = icmp eq ptr %1524, %1471
  br i1 %1525, label %164, label %1472

1526:                                             ; preds = %1358, %1033
  %1527 = phi ptr [ %1021, %1033 ], [ %1370, %1358 ]
  store ptr %1527, ptr @yy_c_buf_p, align 8, !tbaa !9
  %1528 = load i32, ptr @yy_start, align 4, !tbaa !5
  %1529 = add nsw i32 %1528, -1
  %1530 = sdiv i32 %1529, 2
  %1531 = add nsw i32 %1530, 34
  br label %158

1532:                                             ; preds = %158
  call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.9) #28
  unreachable

1533:                                             ; preds = %857, %834, %817, %800, %783, %766, %749, %732, %715, %647, %624, %607, %587, %562, %542, %525, %492, %450, %433, %416, %399, %382, %365, %348, %331, %310, %258
  %1534 = phi i32 [ %858, %857 ], [ 268, %834 ], [ 267, %817 ], [ 266, %800 ], [ 265, %783 ], [ 264, %766 ], [ 263, %749 ], [ 262, %732 ], [ 261, %715 ], [ 281, %647 ], [ 273, %624 ], [ 93, %607 ], [ 276, %587 ], [ 280, %562 ], [ 279, %542 ], [ 275, %525 ], [ 274, %492 ], [ 278, %450 ], [ 272, %433 ], [ 271, %416 ], [ 270, %399 ], [ 269, %382 ], [ 260, %365 ], [ 259, %348 ], [ 258, %331 ], [ 277, %310 ], [ 0, %258 ]
  ret i32 %1534
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @yy_create_buffer(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.10) #28
  unreachable

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.yy_buffer_state, ptr %3, i64 0, i32 3
  store i32 %1, ptr %7, align 8, !tbaa !43
  %8 = add nsw i32 %1, 2
  %9 = sext i32 %8 to i64
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #22
  %11 = getelementptr inbounds %struct.yy_buffer_state, ptr %3, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !28
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.10) #28
  unreachable

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.yy_buffer_state, ptr %3, i64 0, i32 5
  store i32 1, ptr %15, align 8, !tbaa !27
  %16 = tail call ptr @__errno_location() #27
  %17 = load i32, ptr %16, align 4, !tbaa !5
  %18 = getelementptr inbounds %struct.yy_buffer_state, ptr %3, i64 0, i32 4
  store i32 0, ptr %18, align 4, !tbaa !13
  store i8 0, ptr %10, align 1, !tbaa !17
  %19 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 0, ptr %19, align 1, !tbaa !17
  %20 = getelementptr inbounds %struct.yy_buffer_state, ptr %3, i64 0, i32 2
  store ptr %10, ptr %20, align 8, !tbaa !15
  %21 = getelementptr inbounds %struct.yy_buffer_state, ptr %3, i64 0, i32 7
  store i32 1, ptr %21, align 8, !tbaa !18
  %22 = getelementptr inbounds %struct.yy_buffer_state, ptr %3, i64 0, i32 11
  store i32 0, ptr %22, align 8, !tbaa !29
  %23 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %14
  %26 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %27 = getelementptr inbounds ptr, ptr %23, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !9
  %29 = icmp eq ptr %28, %3
  br i1 %29, label %32, label %36

30:                                               ; preds = %14
  store ptr %0, ptr %3, align 8, !tbaa !16
  %31 = getelementptr inbounds %struct.yy_buffer_state, ptr %3, i64 0, i32 10
  store i32 1, ptr %31, align 4, !tbaa !30
  br label %39

32:                                               ; preds = %25
  store i32 0, ptr @yy_n_chars, align 4, !tbaa !5
  store ptr %10, ptr @yy_c_buf_p, align 8, !tbaa !9
  store ptr %10, ptr @yytext, align 8, !tbaa !9
  %33 = load ptr, ptr %27, align 8, !tbaa !9
  %34 = load ptr, ptr %33, align 8, !tbaa !16
  store ptr %34, ptr @yyin, align 8, !tbaa !9
  %35 = load i8, ptr %10, align 1, !tbaa !17
  store i8 %35, ptr @yy_hold_char, align 1, !tbaa !17
  br label %36

36:                                               ; preds = %32, %25
  store ptr %0, ptr %3, align 8, !tbaa !16
  %37 = getelementptr inbounds %struct.yy_buffer_state, ptr %3, i64 0, i32 10
  store i32 1, ptr %37, align 4
  %38 = load ptr, ptr %27, align 8, !tbaa !9
  br label %39

39:                                               ; preds = %36, %30
  %40 = phi ptr [ %38, %36 ], [ null, %30 ]
  %41 = icmp eq ptr %40, %3
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.yy_buffer_state, ptr %3, i64 0, i32 8
  store i32 1, ptr %43, align 4, !tbaa !45
  %44 = getelementptr inbounds %struct.yy_buffer_state, ptr %3, i64 0, i32 9
  store i32 0, ptr %44, align 8, !tbaa !46
  br label %45

45:                                               ; preds = %42, %39
  %46 = getelementptr inbounds %struct.yy_buffer_state, ptr %3, i64 0, i32 6
  store i32 0, ptr %46, align 4, !tbaa !44
  store i32 %17, ptr %16, align 4, !tbaa !5
  ret ptr %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @srcpos_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @data_copy_escape_string(ptr sret(%struct.data) align 8, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define internal void @lexical_error(ptr noundef %0, ...) unnamed_addr #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  call void @llvm.va_start(ptr nonnull %2)
  call void @srcpos_verror(ptr noundef nonnull @yylloc, ptr noundef nonnull @.str.21, ptr noundef %0, ptr noundef nonnull %2) #25
  call void @llvm.va_end(ptr nonnull %2)
  store i8 1, ptr @treesource_error, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret void
}

declare void @srcpos_set_line(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #2

declare void @data_free(ptr noundef byval(%struct.data) align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoull(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @yy_fatal_error(ptr noundef %0) unnamed_addr #9 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !9
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.19, ptr noundef %0) #29
  tail call void @exit(i32 noundef 2) #23
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @yyrestart(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %32

9:                                                ; preds = %1
  %10 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #22
  store ptr %10, ptr @yy_buffer_stack, align 8, !tbaa !9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.18) #23
  unreachable

13:                                               ; preds = %9
  store i64 0, ptr %10, align 8
  store i64 1, ptr @yy_buffer_stack_max, align 8, !tbaa !11
  store i64 0, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  br label %26

14:                                               ; preds = %4
  %15 = load i64, ptr @yy_buffer_stack_max, align 8, !tbaa !11
  %16 = add i64 %15, -1
  %17 = icmp ult i64 %5, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = add i64 %15, 8
  %20 = shl i64 %19, 3
  %21 = tail call ptr @realloc(ptr noundef nonnull %2, i64 noundef %20) #24
  store ptr %21, ptr @yy_buffer_stack, align 8, !tbaa !9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.18) #23
  unreachable

24:                                               ; preds = %18
  %25 = getelementptr inbounds ptr, ptr %21, i64 %15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %25, i8 0, i64 64, i1 false) #25
  store i64 %19, ptr @yy_buffer_stack_max, align 8, !tbaa !11
  br label %26

26:                                               ; preds = %24, %14, %13
  %27 = load ptr, ptr @yyin, align 8, !tbaa !9
  %28 = tail call ptr @yy_create_buffer(ptr noundef %27, i32 noundef 16384)
  %29 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %30 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30
  store ptr %28, ptr %31, align 8, !tbaa !9
  br label %32

32:                                               ; preds = %26, %4
  %33 = phi ptr [ %28, %26 ], [ %7, %4 ]
  %34 = phi i64 [ %30, %26 ], [ %5, %4 ]
  %35 = phi ptr [ %29, %26 ], [ %2, %4 ]
  %36 = getelementptr inbounds ptr, ptr %35, i64 %34
  %37 = tail call ptr @__errno_location() #27
  %38 = load i32, ptr %37, align 4, !tbaa !5
  %39 = getelementptr inbounds %struct.yy_buffer_state, ptr %33, i64 0, i32 4
  store i32 0, ptr %39, align 4, !tbaa !13
  %40 = getelementptr inbounds %struct.yy_buffer_state, ptr %33, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !28
  store i8 0, ptr %41, align 1, !tbaa !17
  %42 = load ptr, ptr %40, align 8, !tbaa !28
  %43 = getelementptr inbounds i8, ptr %42, i64 1
  store i8 0, ptr %43, align 1, !tbaa !17
  %44 = load ptr, ptr %40, align 8, !tbaa !28
  %45 = getelementptr inbounds %struct.yy_buffer_state, ptr %33, i64 0, i32 2
  store ptr %44, ptr %45, align 8, !tbaa !15
  %46 = getelementptr inbounds %struct.yy_buffer_state, ptr %33, i64 0, i32 7
  store i32 1, ptr %46, align 8, !tbaa !18
  %47 = getelementptr inbounds %struct.yy_buffer_state, ptr %33, i64 0, i32 11
  store i32 0, ptr %47, align 8, !tbaa !29
  %48 = load ptr, ptr %36, align 8, !tbaa !9
  %49 = icmp eq ptr %48, %33
  br i1 %49, label %50, label %59

50:                                               ; preds = %32
  %51 = load ptr, ptr %36, align 8, !tbaa !9
  %52 = getelementptr inbounds %struct.yy_buffer_state, ptr %51, i64 0, i32 4
  %53 = load i32, ptr %52, align 4, !tbaa !13
  store i32 %53, ptr @yy_n_chars, align 4, !tbaa !5
  %54 = getelementptr inbounds %struct.yy_buffer_state, ptr %51, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !15
  store ptr %55, ptr @yy_c_buf_p, align 8, !tbaa !9
  store ptr %55, ptr @yytext, align 8, !tbaa !9
  %56 = load ptr, ptr %36, align 8, !tbaa !9
  %57 = load ptr, ptr %56, align 8, !tbaa !16
  store ptr %57, ptr @yyin, align 8, !tbaa !9
  %58 = load i8, ptr %55, align 1, !tbaa !17
  store i8 %58, ptr @yy_hold_char, align 1, !tbaa !17
  br label %59

59:                                               ; preds = %50, %32
  store ptr %0, ptr %33, align 8, !tbaa !16
  %60 = getelementptr inbounds %struct.yy_buffer_state, ptr %33, i64 0, i32 10
  store i32 1, ptr %60, align 4, !tbaa !30
  %61 = load ptr, ptr %36, align 8, !tbaa !9
  %62 = icmp eq ptr %61, %33
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.yy_buffer_state, ptr %33, i64 0, i32 8
  store i32 1, ptr %64, align 4, !tbaa !45
  %65 = getelementptr inbounds %struct.yy_buffer_state, ptr %33, i64 0, i32 9
  store i32 0, ptr %65, align 8, !tbaa !46
  br label %66

66:                                               ; preds = %63, %59
  %67 = getelementptr inbounds %struct.yy_buffer_state, ptr %33, i64 0, i32 6
  store i32 0, ptr %67, align 4, !tbaa !44
  store i32 %38, ptr %37, align 4, !tbaa !5
  %68 = load ptr, ptr %36, align 8, !tbaa !9
  %69 = getelementptr inbounds %struct.yy_buffer_state, ptr %68, i64 0, i32 4
  %70 = load i32, ptr %69, align 4, !tbaa !13
  store i32 %70, ptr @yy_n_chars, align 4, !tbaa !5
  %71 = getelementptr inbounds %struct.yy_buffer_state, ptr %68, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !15
  store ptr %72, ptr @yy_c_buf_p, align 8, !tbaa !9
  store ptr %72, ptr @yytext, align 8, !tbaa !9
  %73 = load ptr, ptr %36, align 8, !tbaa !9
  %74 = load ptr, ptr %73, align 8, !tbaa !16
  store ptr %74, ptr @yyin, align 8, !tbaa !9
  %75 = load i8, ptr %72, align 1, !tbaa !17
  store i8 %75, ptr @yy_hold_char, align 1, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @yy_switch_to_buffer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #22
  store ptr %5, ptr @yy_buffer_stack, align 8, !tbaa !9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.18) #23
  unreachable

8:                                                ; preds = %4
  store i64 0, ptr %5, align 8
  store i64 1, ptr @yy_buffer_stack_max, align 8, !tbaa !11
  store i64 0, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  br label %22

9:                                                ; preds = %1
  %10 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %11 = load i64, ptr @yy_buffer_stack_max, align 8, !tbaa !11
  %12 = add i64 %11, -1
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %22, label %14

14:                                               ; preds = %9
  %15 = add i64 %11, 8
  %16 = shl i64 %15, 3
  %17 = tail call ptr @realloc(ptr noundef nonnull %2, i64 noundef %16) #24
  store ptr %17, ptr @yy_buffer_stack, align 8, !tbaa !9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.18) #23
  unreachable

20:                                               ; preds = %14
  %21 = getelementptr inbounds ptr, ptr %17, i64 %11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %21, i8 0, i64 64, i1 false) #25
  store i64 %15, ptr @yy_buffer_stack_max, align 8, !tbaa !11
  br label %22

22:                                               ; preds = %20, %9, %8
  %23 = phi i64 [ 0, %8 ], [ %10, %9 ], [ %10, %20 ]
  %24 = phi ptr [ %5, %8 ], [ %2, %9 ], [ %17, %20 ]
  %25 = getelementptr inbounds ptr, ptr %24, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !9
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %47, label %28

28:                                               ; preds = %22
  %29 = icmp eq ptr %26, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %28
  %31 = load i8, ptr @yy_hold_char, align 1, !tbaa !17
  %32 = load ptr, ptr @yy_c_buf_p, align 8, !tbaa !9
  store i8 %31, ptr %32, align 1, !tbaa !17
  %33 = load ptr, ptr %25, align 8, !tbaa !9
  %34 = getelementptr inbounds %struct.yy_buffer_state, ptr %33, i64 0, i32 2
  store ptr %32, ptr %34, align 8, !tbaa !15
  %35 = load i32, ptr @yy_n_chars, align 4, !tbaa !5
  %36 = load ptr, ptr %25, align 8, !tbaa !9
  %37 = getelementptr inbounds %struct.yy_buffer_state, ptr %36, i64 0, i32 4
  store i32 %35, ptr %37, align 4, !tbaa !13
  br label %38

38:                                               ; preds = %30, %28
  %39 = getelementptr inbounds ptr, ptr %24, i64 %23
  store ptr %0, ptr %39, align 8, !tbaa !9
  %40 = getelementptr inbounds %struct.yy_buffer_state, ptr %0, i64 0, i32 4
  %41 = load i32, ptr %40, align 4, !tbaa !13
  store i32 %41, ptr @yy_n_chars, align 4, !tbaa !5
  %42 = getelementptr inbounds %struct.yy_buffer_state, ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !15
  store ptr %43, ptr @yy_c_buf_p, align 8, !tbaa !9
  store ptr %43, ptr @yytext, align 8, !tbaa !9
  %44 = load ptr, ptr %39, align 8, !tbaa !9
  %45 = load ptr, ptr %44, align 8, !tbaa !16
  store ptr %45, ptr @yyin, align 8, !tbaa !9
  %46 = load i8, ptr %43, align 1, !tbaa !17
  store i8 %46, ptr @yy_hold_char, align 1, !tbaa !17
  br label %47

47:                                               ; preds = %38, %22
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local noalias ptr @yyalloc(i64 noundef %0) local_unnamed_addr #10 {
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #22
  ret ptr %2
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @yy_delete_buffer(ptr noundef %0) local_unnamed_addr #11 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi ptr [ %9, %6 ], [ null, %3 ]
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %15 = getelementptr inbounds ptr, ptr %4, i64 %14
  store ptr null, ptr %15, align 8, !tbaa !9
  br label %16

16:                                               ; preds = %13, %10
  %17 = getelementptr inbounds %struct.yy_buffer_state, ptr %0, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !27
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.yy_buffer_state, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !28
  tail call void @free(ptr noundef %22) #25
  br label %23

23:                                               ; preds = %20, %16
  tail call void @free(ptr noundef nonnull %0) #25
  br label %24

24:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @yyfree(ptr nocapture noundef %0) local_unnamed_addr #11 {
  tail call void @free(ptr noundef %0) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @yy_flush_buffer(ptr noundef %0) local_unnamed_addr #12 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %33, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.yy_buffer_state, ptr %0, i64 0, i32 4
  store i32 0, ptr %4, align 4, !tbaa !13
  %5 = getelementptr inbounds %struct.yy_buffer_state, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !28
  store i8 0, ptr %6, align 1, !tbaa !17
  %7 = load ptr, ptr %5, align 8, !tbaa !28
  %8 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 0, ptr %8, align 1, !tbaa !17
  %9 = load ptr, ptr %5, align 8, !tbaa !28
  %10 = getelementptr inbounds %struct.yy_buffer_state, ptr %0, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.yy_buffer_state, ptr %0, i64 0, i32 7
  store i32 1, ptr %11, align 8, !tbaa !18
  %12 = getelementptr inbounds %struct.yy_buffer_state, ptr %0, i64 0, i32 11
  store i32 0, ptr %12, align 8, !tbaa !29
  %13 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %17 = getelementptr inbounds ptr, ptr %13, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !9
  br label %19

19:                                               ; preds = %15, %3
  %20 = phi ptr [ %18, %15 ], [ null, %3 ]
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %24 = getelementptr inbounds ptr, ptr %13, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = getelementptr inbounds %struct.yy_buffer_state, ptr %25, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !13
  store i32 %27, ptr @yy_n_chars, align 4, !tbaa !5
  %28 = getelementptr inbounds %struct.yy_buffer_state, ptr %25, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !15
  store ptr %29, ptr @yy_c_buf_p, align 8, !tbaa !9
  store ptr %29, ptr @yytext, align 8, !tbaa !9
  %30 = load ptr, ptr %24, align 8, !tbaa !9
  %31 = load ptr, ptr %30, align 8, !tbaa !16
  store ptr %31, ptr @yyin, align 8, !tbaa !9
  %32 = load i8, ptr %29, align 1, !tbaa !17
  store i8 %32, ptr @yy_hold_char, align 1, !tbaa !17
  br label %33

33:                                               ; preds = %22, %19, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @yypush_buffer_state(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %49, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #22
  store ptr %7, ptr @yy_buffer_stack, align 8, !tbaa !9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.18) #23
  unreachable

10:                                               ; preds = %6
  store i64 0, ptr %7, align 8
  store i64 1, ptr @yy_buffer_stack_max, align 8, !tbaa !11
  store i64 0, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  br label %24

11:                                               ; preds = %3
  %12 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %13 = load i64, ptr @yy_buffer_stack_max, align 8, !tbaa !11
  %14 = add i64 %13, -1
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = add i64 %13, 8
  %18 = shl i64 %17, 3
  %19 = tail call ptr @realloc(ptr noundef nonnull %4, i64 noundef %18) #24
  store ptr %19, ptr @yy_buffer_stack, align 8, !tbaa !9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.18) #23
  unreachable

22:                                               ; preds = %16
  %23 = getelementptr inbounds ptr, ptr %19, i64 %13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %23, i8 0, i64 64, i1 false) #25
  store i64 %17, ptr @yy_buffer_stack_max, align 8, !tbaa !11
  br label %24

24:                                               ; preds = %22, %11, %10
  %25 = phi i64 [ 0, %10 ], [ %12, %11 ], [ %12, %22 ]
  %26 = phi ptr [ %7, %10 ], [ %4, %11 ], [ %19, %22 ]
  %27 = getelementptr inbounds ptr, ptr %26, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %24
  %31 = load i8, ptr @yy_hold_char, align 1, !tbaa !17
  %32 = load ptr, ptr @yy_c_buf_p, align 8, !tbaa !9
  store i8 %31, ptr %32, align 1, !tbaa !17
  %33 = load ptr, ptr %27, align 8, !tbaa !9
  %34 = getelementptr inbounds %struct.yy_buffer_state, ptr %33, i64 0, i32 2
  store ptr %32, ptr %34, align 8, !tbaa !15
  %35 = load i32, ptr @yy_n_chars, align 4, !tbaa !5
  %36 = load ptr, ptr %27, align 8, !tbaa !9
  %37 = getelementptr inbounds %struct.yy_buffer_state, ptr %36, i64 0, i32 4
  store i32 %35, ptr %37, align 4, !tbaa !13
  %38 = add i64 %25, 1
  store i64 %38, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  br label %39

39:                                               ; preds = %30, %24
  %40 = phi i64 [ %38, %30 ], [ %25, %24 ]
  %41 = getelementptr inbounds ptr, ptr %26, i64 %40
  store ptr %0, ptr %41, align 8, !tbaa !9
  %42 = getelementptr inbounds %struct.yy_buffer_state, ptr %0, i64 0, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !13
  store i32 %43, ptr @yy_n_chars, align 4, !tbaa !5
  %44 = getelementptr inbounds %struct.yy_buffer_state, ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !15
  store ptr %45, ptr @yy_c_buf_p, align 8, !tbaa !9
  store ptr %45, ptr @yytext, align 8, !tbaa !9
  %46 = load ptr, ptr %41, align 8, !tbaa !9
  %47 = load ptr, ptr %46, align 8, !tbaa !16
  store ptr %47, ptr @yyin, align 8, !tbaa !9
  %48 = load i8, ptr %45, align 1, !tbaa !17
  store i8 %48, ptr @yy_hold_char, align 1, !tbaa !17
  br label %49

49:                                               ; preds = %39, %1
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @yypop_buffer_state() local_unnamed_addr #11 {
  %1 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %2 = icmp eq ptr %1, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %0
  %4 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %5 = getelementptr inbounds ptr, ptr %1, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %3
  store ptr null, ptr %5, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.yy_buffer_state, ptr %6, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !27
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.yy_buffer_state, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !28
  tail call void @free(ptr noundef %14) #25
  br label %15

15:                                               ; preds = %12, %8
  tail call void @free(ptr noundef nonnull %6) #25
  store ptr null, ptr %5, align 8, !tbaa !9
  %16 = icmp eq i64 %4, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %15
  %18 = add i64 %4, -1
  store i64 %18, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %19 = getelementptr inbounds ptr, ptr %1, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds ptr, ptr %1, i64 %18
  %24 = getelementptr inbounds %struct.yy_buffer_state, ptr %20, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !13
  store i32 %25, ptr @yy_n_chars, align 4, !tbaa !5
  %26 = getelementptr inbounds %struct.yy_buffer_state, ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !15
  store ptr %27, ptr @yy_c_buf_p, align 8, !tbaa !9
  store ptr %27, ptr @yytext, align 8, !tbaa !9
  %28 = load ptr, ptr %23, align 8, !tbaa !9
  %29 = load ptr, ptr %28, align 8, !tbaa !16
  store ptr %29, ptr @yyin, align 8, !tbaa !9
  %30 = load i8, ptr %27, align 1, !tbaa !17
  store i8 %30, ptr @yy_hold_char, align 1, !tbaa !17
  br label %31

31:                                               ; preds = %22, %17, %15, %3, %0
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @yy_scan_buffer(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i64 %1, 2
  br i1 %3, label %29, label %4

4:                                                ; preds = %2
  %5 = add i64 %1, -2
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %4
  %10 = add i64 %1, -1
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !17
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.11) #28
  unreachable

18:                                               ; preds = %14
  %19 = trunc i64 %5 to i32
  %20 = getelementptr inbounds %struct.yy_buffer_state, ptr %15, i64 0, i32 3
  store i32 %19, ptr %20, align 8, !tbaa !43
  %21 = getelementptr inbounds %struct.yy_buffer_state, ptr %15, i64 0, i32 1
  store ptr %0, ptr %21, align 8, !tbaa !28
  %22 = getelementptr inbounds %struct.yy_buffer_state, ptr %15, i64 0, i32 2
  store ptr %0, ptr %22, align 8, !tbaa !15
  %23 = getelementptr inbounds %struct.yy_buffer_state, ptr %15, i64 0, i32 5
  store i32 0, ptr %23, align 8, !tbaa !27
  store ptr null, ptr %15, align 8, !tbaa !16
  %24 = getelementptr inbounds %struct.yy_buffer_state, ptr %15, i64 0, i32 4
  store i32 %19, ptr %24, align 4, !tbaa !13
  %25 = getelementptr inbounds %struct.yy_buffer_state, ptr %15, i64 0, i32 6
  store i32 0, ptr %25, align 4, !tbaa !44
  %26 = getelementptr inbounds %struct.yy_buffer_state, ptr %15, i64 0, i32 7
  store i32 1, ptr %26, align 8, !tbaa !18
  %27 = getelementptr inbounds %struct.yy_buffer_state, ptr %15, i64 0, i32 10
  store i32 0, ptr %27, align 4, !tbaa !30
  %28 = getelementptr inbounds %struct.yy_buffer_state, ptr %15, i64 0, i32 11
  store i32 0, ptr %28, align 8, !tbaa !29
  tail call void @yy_switch_to_buffer(ptr noundef nonnull %15)
  br label %29

29:                                               ; preds = %18, %9, %4, %2
  %30 = phi ptr [ %15, %18 ], [ null, %9 ], [ null, %4 ], [ null, %2 ]
  ret ptr %30
}

; Function Attrs: nounwind uwtable
define dso_local ptr @yy_scan_string(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %3 = trunc i64 %2 to i32
  %4 = tail call ptr @yy_scan_bytes(ptr noundef %0, i32 noundef %3)
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @yy_scan_bytes(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add nsw i32 %1, 2
  %4 = sext i32 %3 to i64
  %5 = tail call noalias ptr @malloc(i64 noundef %4) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %7
  %10 = zext i32 %1 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %5, ptr align 1 %0, i64 %10, i1 false), !tbaa !17
  %11 = add nuw nsw i32 %1, 1
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %5, i64 %12
  store i8 0, ptr %13, align 1, !tbaa !17
  %14 = zext i32 %1 to i64
  %15 = getelementptr inbounds i8, ptr %5, i64 %14
  store i8 0, ptr %15, align 1, !tbaa !17
  br label %24

16:                                               ; preds = %2
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.12) #28
  unreachable

17:                                               ; preds = %7
  %18 = add nsw i32 %1, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %5, i64 %19
  store i8 0, ptr %20, align 1, !tbaa !17
  %21 = sext i32 %1 to i64
  %22 = getelementptr inbounds i8, ptr %5, i64 %21
  store i8 0, ptr %22, align 1, !tbaa !17
  %23 = icmp ugt i32 %1, -3
  br i1 %23, label %28, label %24

24:                                               ; preds = %17, %9
  %25 = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.11) #23
  unreachable

28:                                               ; preds = %17
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.13) #28
  unreachable

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.yy_buffer_state, ptr %25, i64 0, i32 3
  store i32 %1, ptr %30, align 8, !tbaa !43
  %31 = getelementptr inbounds %struct.yy_buffer_state, ptr %25, i64 0, i32 1
  store ptr %5, ptr %31, align 8, !tbaa !28
  %32 = getelementptr inbounds %struct.yy_buffer_state, ptr %25, i64 0, i32 2
  store ptr %5, ptr %32, align 8, !tbaa !15
  %33 = getelementptr inbounds %struct.yy_buffer_state, ptr %25, i64 0, i32 5
  store i32 0, ptr %33, align 8, !tbaa !27
  store ptr null, ptr %25, align 8, !tbaa !16
  %34 = getelementptr inbounds %struct.yy_buffer_state, ptr %25, i64 0, i32 4
  store i32 %1, ptr %34, align 4, !tbaa !13
  %35 = getelementptr inbounds %struct.yy_buffer_state, ptr %25, i64 0, i32 6
  store i32 0, ptr %35, align 4, !tbaa !44
  %36 = getelementptr inbounds %struct.yy_buffer_state, ptr %25, i64 0, i32 7
  store i32 1, ptr %36, align 8, !tbaa !18
  %37 = getelementptr inbounds %struct.yy_buffer_state, ptr %25, i64 0, i32 10
  store i32 0, ptr %37, align 4, !tbaa !30
  %38 = getelementptr inbounds %struct.yy_buffer_state, ptr %25, i64 0, i32 11
  store i32 0, ptr %38, align 8, !tbaa !29
  tail call void @yy_switch_to_buffer(ptr noundef nonnull %25) #25
  store i32 1, ptr %33, align 8, !tbaa !27
  ret ptr %25
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @yyget_lineno() local_unnamed_addr #13 {
  %1 = load i32, ptr @yylineno, align 4, !tbaa !5
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local ptr @yyget_in() local_unnamed_addr #13 {
  %1 = load ptr, ptr @yyin, align 8, !tbaa !9
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local ptr @yyget_out() local_unnamed_addr #13 {
  %1 = load ptr, ptr @yyout, align 8, !tbaa !9
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @yyget_leng() local_unnamed_addr #13 {
  %1 = load i32, ptr @yyleng, align 4, !tbaa !5
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local ptr @yyget_text() local_unnamed_addr #13 {
  %1 = load ptr, ptr @yytext, align 8, !tbaa !9
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @yyset_lineno(i32 noundef %0) local_unnamed_addr #14 {
  store i32 %0, ptr @yylineno, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @yyset_in(ptr noundef %0) local_unnamed_addr #14 {
  store ptr %0, ptr @yyin, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @yyset_out(ptr noundef %0) local_unnamed_addr #14 {
  store ptr %0, ptr @yyout, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @yyget_debug() local_unnamed_addr #13 {
  %1 = load i32, ptr @yy_flex_debug, align 4, !tbaa !5
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @yyset_debug(i32 noundef %0) local_unnamed_addr #14 {
  store i32 %0, ptr @yy_flex_debug, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @yylex_destroy() local_unnamed_addr #0 {
  %1 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %2 = icmp eq ptr %1, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %0
  %4 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  %5 = getelementptr inbounds ptr, ptr %1, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds ptr, ptr %1, i64 %4
  store ptr null, ptr %9, align 8, !tbaa !9
  %10 = getelementptr inbounds %struct.yy_buffer_state, ptr %6, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !27
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.yy_buffer_state, ptr %6, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !28
  tail call void @free(ptr noundef %15) #25
  %16 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !9
  %17 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi i64 [ %17, %13 ], [ %4, %8 ]
  %20 = phi ptr [ %16, %13 ], [ %1, %8 ]
  tail call void @free(ptr noundef nonnull %6) #25
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  store ptr null, ptr %21, align 8, !tbaa !9
  br label %22

22:                                               ; preds = %18, %3, %0
  %23 = phi ptr [ null, %0 ], [ %20, %18 ], [ %1, %3 ]
  tail call void @free(ptr noundef %23) #25
  store ptr null, ptr @yy_buffer_stack, align 8, !tbaa !9
  store i64 0, ptr @yy_buffer_stack_top, align 8, !tbaa !11
  store i64 0, ptr @yy_buffer_stack_max, align 8, !tbaa !11
  store ptr null, ptr @yy_c_buf_p, align 8, !tbaa !9
  store i1 false, ptr @yy_init, align 4
  store i32 0, ptr @yy_start, align 4, !tbaa !5
  store ptr null, ptr @yyin, align 8, !tbaa !9
  store ptr null, ptr @yyout, align 8, !tbaa !9
  ret i32 0
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local noalias ptr @yyrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #11 {
  %3 = tail call ptr @realloc(ptr noundef %0, i64 noundef %1) #24
  ret ptr %3
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind readonly
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare void @clearerr(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

declare void @srcfile_push(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @srcfile_pop() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #20

declare void @srcpos_verror(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #21

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
attributes #15 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { argmemonly nofree nounwind willreturn writeonly }
attributes #20 = { nocallback nofree nosync nounwind willreturn }
attributes #21 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind allocsize(1) }
attributes #25 = { nounwind }
attributes #26 = { nounwind readonly willreturn }
attributes #27 = { nounwind readnone willreturn }
attributes #28 = { noreturn }
attributes #29 = { cold }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!14, !6, i64 28}
!14 = !{!"yy_buffer_state", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56}
!15 = !{!14, !10, i64 16}
!16 = !{!14, !10, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!14, !6, i64 40}
!19 = !{!20, !20, i64 0}
!20 = !{!"short", !7, i64 0}
!21 = !{!22, !10, i64 0}
!22 = !{!"srcfile_state", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !10, i64 32}
!23 = !{i64 0, i64 4, !5, i64 8, i64 8, !9, i64 16, i64 8, !9}
!24 = !{!25, !10, i64 8}
!25 = !{!"data", !6, i64 0, !10, i64 8, !10, i64 16}
!26 = !{!25, !6, i64 0}
!27 = !{!14, !6, i64 32}
!28 = !{!14, !10, i64 8}
!29 = !{!14, !6, i64 56}
!30 = !{!14, !6, i64 52}
!31 = !{!32}
!32 = distinct !{!32, !33}
!33 = distinct !{!33, !"LVerDomain"}
!34 = !{!35}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = distinct !{!40, !37, !41}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = distinct !{!42, !37}
!43 = !{!14, !6, i64 24}
!44 = !{!14, !6, i64 36}
!45 = !{!14, !6, i64 44}
!46 = !{!14, !6, i64 48}
!47 = !{!48, !48, i64 0}
!48 = !{!"_Bool", !7, i64 0}
