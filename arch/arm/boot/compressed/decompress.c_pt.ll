; ModuleID = '/llk/IR/arch/arm/boot/compressed/decompress.c_pt.bc'
source_filename = "../arch/arm/boot/compressed/decompress.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.code = type { i8, i8, i16 }
%struct.z_stream_s = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.inflate_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [2048 x %struct.code] }
%struct.inflate_workspace = type { %struct.inflate_state, [32768 x i8] }

@zlib_inflate_table.lbase = internal unnamed_addr constant [31 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 13, i16 15, i16 17, i16 19, i16 23, i16 27, i16 31, i16 35, i16 43, i16 51, i16 59, i16 67, i16 83, i16 99, i16 115, i16 131, i16 163, i16 195, i16 227, i16 258, i16 0, i16 0], align 2
@zlib_inflate_table.lext = internal unnamed_addr constant [31 x i16] [i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 17, i16 17, i16 18, i16 18, i16 18, i16 18, i16 19, i16 19, i16 19, i16 19, i16 20, i16 20, i16 20, i16 20, i16 21, i16 21, i16 21, i16 21, i16 16, i16 201, i16 196], align 2
@zlib_inflate_table.dbase = internal unnamed_addr constant [32 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 7, i16 9, i16 13, i16 17, i16 25, i16 33, i16 49, i16 65, i16 97, i16 129, i16 193, i16 257, i16 385, i16 513, i16 769, i16 1025, i16 1537, i16 2049, i16 3073, i16 4097, i16 6145, i16 8193, i16 12289, i16 16385, i16 24577, i16 0, i16 0], align 2
@zlib_inflate_table.dext = internal unnamed_addr constant [32 x i16] [i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 18, i16 18, i16 19, i16 19, i16 20, i16 20, i16 21, i16 21, i16 22, i16 22, i16 23, i16 23, i16 24, i16 24, i16 25, i16 25, i16 26, i16 26, i16 27, i16 27, i16 28, i16 28, i16 29, i16 29, i16 64, i16 64], align 2
@.str = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@zlib_inflate.order = internal unnamed_addr constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 2
@.str.3 = private unnamed_addr constant [23 x i8] c"incorrect header check\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"unknown compression method\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"invalid window size\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"too many length or distance symbols\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"invalid code lengths set\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"invalid literal/lengths set\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"invalid distances set\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"incorrect data check\00", align 1
@malloc_ptr = local_unnamed_addr global i32 0, align 4
@malloc_count = local_unnamed_addr global i32 0, align 4
@zlib_fixedtables.lenfix = internal constant [512 x %struct.code] [%struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 192 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 160 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 224 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 144 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 208 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 176 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 240 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 200 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 168 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 232 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 152 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 216 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 184 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 248 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 196 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 164 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 228 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 148 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 212 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 180 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 244 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 204 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 172 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 236 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 156 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 220 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 188 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 252 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 194 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 162 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 226 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 146 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 210 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 178 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 242 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 202 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 170 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 234 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 154 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 218 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 186 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 250 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 198 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 166 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 230 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 150 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 214 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 182 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 246 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 206 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 174 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 238 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 158 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 222 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 190 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 254 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 193 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 161 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 225 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 145 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 209 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 177 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 241 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 201 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 169 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 233 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 153 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 217 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 185 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 249 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 197 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 165 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 229 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 149 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 213 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 181 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 245 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 205 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 173 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 237 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 157 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 221 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 189 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 253 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 195 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 163 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 227 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 147 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 211 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 179 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 243 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 203 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 171 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 235 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 155 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 219 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 187 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 251 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 199 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 167 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 231 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 151 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 215 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 183 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 247 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 207 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 175 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 239 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 159 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 223 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 191 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 255 }], align 2
@zlib_fixedtables.distfix = internal constant [32 x %struct.code] [%struct.code { i8 16, i8 5, i16 1 }, %struct.code { i8 23, i8 5, i16 257 }, %struct.code { i8 19, i8 5, i16 17 }, %struct.code { i8 27, i8 5, i16 4097 }, %struct.code { i8 17, i8 5, i16 5 }, %struct.code { i8 25, i8 5, i16 1025 }, %struct.code { i8 21, i8 5, i16 65 }, %struct.code { i8 29, i8 5, i16 16385 }, %struct.code { i8 16, i8 5, i16 3 }, %struct.code { i8 24, i8 5, i16 513 }, %struct.code { i8 20, i8 5, i16 33 }, %struct.code { i8 28, i8 5, i16 8193 }, %struct.code { i8 18, i8 5, i16 9 }, %struct.code { i8 26, i8 5, i16 2049 }, %struct.code { i8 22, i8 5, i16 129 }, %struct.code { i8 64, i8 5, i16 0 }, %struct.code { i8 16, i8 5, i16 2 }, %struct.code { i8 23, i8 5, i16 385 }, %struct.code { i8 19, i8 5, i16 25 }, %struct.code { i8 27, i8 5, i16 6145 }, %struct.code { i8 17, i8 5, i16 7 }, %struct.code { i8 25, i8 5, i16 1537 }, %struct.code { i8 21, i8 5, i16 97 }, %struct.code { i8 29, i8 5, i16 24577 }, %struct.code { i8 16, i8 5, i16 4 }, %struct.code { i8 24, i8 5, i16 769 }, %struct.code { i8 20, i8 5, i16 49 }, %struct.code { i8 28, i8 5, i16 12289 }, %struct.code { i8 18, i8 5, i16 13 }, %struct.code { i8 26, i8 5, i16 3073 }, %struct.code { i8 22, i8 5, i16 193 }, %struct.code { i8 64, i8 5, i16 0 }], align 2
@.str.14 = private unnamed_addr constant [45 x i8] c"Out of memory while allocating output buffer\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"Out of memory while allocating input buffer\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Out of memory while allocating z_stream\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"Out of memory while allocating workspace\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"Not a gzip file\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"header error\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"uncompression error\00", align 1
@free_mem_ptr = external local_unnamed_addr global i32, align 4
@free_mem_end_ptr = external local_unnamed_addr global i32, align 4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define i32 @zlib_inflate_table(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca [16 x i16], align 2
  %8 = alloca [16 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(32) %8, i8 0, i32 32, i1 false), !annotation !9
  store i16 0, ptr %7, align 2
  %9 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 1
  store i16 0, ptr %9, align 2
  %10 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 2
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 3
  store i16 0, ptr %11, align 2
  %12 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 4
  store i16 0, ptr %12, align 2
  %13 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 5
  store i16 0, ptr %13, align 2
  %14 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 6
  store i16 0, ptr %14, align 2
  %15 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 7
  store i16 0, ptr %15, align 2
  %16 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 8
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 9
  store i16 0, ptr %17, align 2
  %18 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 10
  store i16 0, ptr %18, align 2
  %19 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 11
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 12
  store i16 0, ptr %20, align 2
  %21 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 13
  store i16 0, ptr %21, align 2
  %22 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 14
  store i16 0, ptr %22, align 2
  %23 = getelementptr inbounds [16 x i16], ptr %7, i32 0, i32 15
  store i16 0, ptr %23, align 2
  %24 = icmp eq i32 %2, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, ptr %4, align 4
  br label %41

27:                                               ; preds = %27, %6
  %28 = phi i32 [ %35, %27 ], [ 0, %6 ]
  %29 = getelementptr i16, ptr %1, i32 %28
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = getelementptr [16 x i16], ptr %7, i32 0, i32 %31
  %33 = load i16, ptr %32, align 2
  %34 = add i16 %33, 1
  store i16 %34, ptr %32, align 2
  %35 = add nuw i32 %28, 1
  %36 = icmp eq i32 %35, %2
  br i1 %36, label %37, label %27

37:                                               ; preds = %27
  %38 = load i16, ptr %23, align 2
  %39 = load i32, ptr %4, align 4
  %40 = icmp eq i16 %38, 0
  br i1 %40, label %41, label %96

41:                                               ; preds = %37, %25
  %42 = phi i32 [ %26, %25 ], [ %39, %37 ]
  %43 = load i16, ptr %22, align 2
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %96

45:                                               ; preds = %41
  %46 = load i16, ptr %21, align 2
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %96

48:                                               ; preds = %45
  %49 = load i16, ptr %20, align 2
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %96

51:                                               ; preds = %48
  %52 = load i16, ptr %19, align 2
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %96

54:                                               ; preds = %51
  %55 = load i16, ptr %18, align 2
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %57, label %96

57:                                               ; preds = %54
  %58 = load i16, ptr %17, align 2
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %96

60:                                               ; preds = %57
  %61 = load i16, ptr %16, align 2
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %63, label %96

63:                                               ; preds = %60
  %64 = load i16, ptr %15, align 2
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %96

66:                                               ; preds = %63
  %67 = load i16, ptr %14, align 2
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %96

69:                                               ; preds = %66
  %70 = load i16, ptr %13, align 2
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %69
  %73 = load i16, ptr %12, align 2
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %72
  %76 = load i16, ptr %11, align 2
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %75
  %79 = load i16, ptr %10, align 2
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load i16, ptr %9, align 2
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = icmp ne i32 %42, 0
  %86 = zext i1 %85 to i32
  br label %146

87:                                               ; preds = %81
  %88 = load ptr, ptr %3, align 4
  %89 = getelementptr %struct.code, ptr %88, i32 1
  store ptr %89, ptr %3, align 4
  store i8 64, ptr %88, align 2
  %90 = getelementptr inbounds i8, ptr %88, i32 1
  store i8 1, ptr %90, align 1
  %91 = getelementptr inbounds i8, ptr %88, i32 2
  store i16 0, ptr %91, align 2
  %92 = load ptr, ptr %3, align 4
  %93 = getelementptr %struct.code, ptr %92, i32 1
  store ptr %93, ptr %3, align 4
  store i8 64, ptr %92, align 2
  %94 = getelementptr inbounds i8, ptr %92, i32 1
  store i8 1, ptr %94, align 1
  %95 = getelementptr inbounds i8, ptr %92, i32 2
  store i16 0, ptr %95, align 2
  br label %470

96:                                               ; preds = %78, %75, %72, %69, %66, %63, %60, %57, %54, %51, %48, %45, %41, %37
  %97 = phi i32 [ %39, %37 ], [ %42, %41 ], [ %42, %45 ], [ %42, %48 ], [ %42, %51 ], [ %42, %54 ], [ %42, %57 ], [ %42, %60 ], [ %42, %63 ], [ %42, %66 ], [ %42, %69 ], [ %42, %72 ], [ %42, %75 ], [ %42, %78 ]
  %98 = phi i16 [ %38, %37 ], [ 0, %41 ], [ 0, %45 ], [ 0, %48 ], [ 0, %51 ], [ 0, %54 ], [ 0, %57 ], [ 0, %60 ], [ 0, %63 ], [ 0, %66 ], [ 0, %69 ], [ 0, %72 ], [ 0, %75 ], [ 0, %78 ]
  %99 = phi i32 [ 15, %37 ], [ 14, %41 ], [ 13, %45 ], [ 12, %48 ], [ 11, %51 ], [ 10, %54 ], [ 9, %57 ], [ 8, %60 ], [ 7, %63 ], [ 6, %66 ], [ 5, %69 ], [ 4, %72 ], [ 3, %75 ], [ 2, %78 ]
  %100 = load i16, ptr %9, align 2
  %101 = tail call i32 @llvm.umin.i32(i32 %97, i32 %99)
  %102 = icmp eq i16 %100, 0
  br i1 %102, label %103, label %146

103:                                              ; preds = %96
  %104 = load i16, ptr %10, align 2
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %106, label %143

106:                                              ; preds = %103
  %107 = load i16, ptr %11, align 2
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %109, label %143

109:                                              ; preds = %106
  %110 = load i16, ptr %12, align 2
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %143

112:                                              ; preds = %109
  %113 = load i16, ptr %13, align 2
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %115, label %143

115:                                              ; preds = %112
  %116 = load i16, ptr %14, align 2
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %118, label %143

118:                                              ; preds = %115
  %119 = load i16, ptr %15, align 2
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %121, label %143

121:                                              ; preds = %118
  %122 = load i16, ptr %16, align 2
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %121
  %125 = load i16, ptr %17, align 2
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %127, label %143

127:                                              ; preds = %124
  %128 = load i16, ptr %18, align 2
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %127
  %131 = load i16, ptr %19, align 2
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %130
  %134 = load i16, ptr %20, align 2
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = load i16, ptr %21, align 2
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i16, ptr %22, align 2
  %141 = icmp eq i16 %140, 0
  %142 = select i1 %141, i32 15, i32 14
  br label %143

143:                                              ; preds = %139, %136, %133, %130, %127, %124, %121, %118, %115, %112, %109, %106, %103
  %144 = phi i32 [ 13, %136 ], [ 12, %133 ], [ 11, %130 ], [ 10, %127 ], [ 9, %124 ], [ 8, %121 ], [ 7, %118 ], [ 6, %115 ], [ 5, %112 ], [ 4, %109 ], [ 3, %106 ], [ 2, %103 ], [ %142, %139 ]
  %145 = tail call i32 @llvm.umax.i32(i32 %101, i32 %144)
  br label %154

146:                                              ; preds = %96, %84
  %147 = phi i32 [ %101, %96 ], [ %86, %84 ]
  %148 = phi i32 [ %99, %96 ], [ 1, %84 ]
  %149 = phi i1 [ true, %96 ], [ false, %84 ]
  %150 = phi i16 [ %98, %96 ], [ 0, %84 ]
  %151 = phi i16 [ %100, %96 ], [ %82, %84 ]
  %152 = tail call i32 @llvm.umax.i32(i32 %147, i32 1)
  %153 = icmp ugt i16 %151, 2
  br i1 %153, label %472, label %154

154:                                              ; preds = %146, %143
  %155 = phi i32 [ %145, %143 ], [ %152, %146 ]
  %156 = phi i32 [ %144, %143 ], [ 1, %146 ]
  %157 = phi i16 [ 0, %143 ], [ %151, %146 ]
  %158 = phi i16 [ %98, %143 ], [ %150, %146 ]
  %159 = phi i1 [ true, %143 ], [ %149, %146 ]
  %160 = phi i32 [ %99, %143 ], [ %148, %146 ]
  %161 = zext i16 %157 to i32
  %162 = mul nsw i32 %161, -2
  %163 = add nsw i32 %162, 4
  %164 = load i16, ptr %10, align 2
  %165 = zext i16 %164 to i32
  %166 = sub nsw i32 %163, %165
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %472, label %168

168:                                              ; preds = %154
  %169 = shl nuw nsw i32 %166, 1
  %170 = load i16, ptr %11, align 2
  %171 = zext i16 %170 to i32
  %172 = sub nsw i32 %169, %171
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %472, label %174

174:                                              ; preds = %168
  %175 = shl nuw nsw i32 %172, 1
  %176 = load i16, ptr %12, align 2
  %177 = zext i16 %176 to i32
  %178 = sub nsw i32 %175, %177
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %472, label %180

180:                                              ; preds = %174
  %181 = shl nuw nsw i32 %178, 1
  %182 = load i16, ptr %13, align 2
  %183 = zext i16 %182 to i32
  %184 = sub nsw i32 %181, %183
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %472, label %186

186:                                              ; preds = %180
  %187 = shl nuw nsw i32 %184, 1
  %188 = load i16, ptr %14, align 2
  %189 = zext i16 %188 to i32
  %190 = sub nsw i32 %187, %189
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %472, label %192

192:                                              ; preds = %186
  %193 = shl nuw nsw i32 %190, 1
  %194 = load i16, ptr %15, align 2
  %195 = zext i16 %194 to i32
  %196 = sub nsw i32 %193, %195
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %472, label %198

198:                                              ; preds = %192
  %199 = shl nuw nsw i32 %196, 1
  %200 = load i16, ptr %16, align 2
  %201 = zext i16 %200 to i32
  %202 = sub nsw i32 %199, %201
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %472, label %204

204:                                              ; preds = %198
  %205 = shl nuw nsw i32 %202, 1
  %206 = load i16, ptr %17, align 2
  %207 = zext i16 %206 to i32
  %208 = sub nsw i32 %205, %207
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %472, label %210

210:                                              ; preds = %204
  %211 = shl nuw nsw i32 %208, 1
  %212 = load i16, ptr %18, align 2
  %213 = zext i16 %212 to i32
  %214 = sub nsw i32 %211, %213
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %472, label %216

216:                                              ; preds = %210
  %217 = shl nuw nsw i32 %214, 1
  %218 = load i16, ptr %19, align 2
  %219 = zext i16 %218 to i32
  %220 = sub nsw i32 %217, %219
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %472, label %222

222:                                              ; preds = %216
  %223 = shl nuw nsw i32 %220, 1
  %224 = load i16, ptr %20, align 2
  %225 = zext i16 %224 to i32
  %226 = sub nsw i32 %223, %225
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %472, label %228

228:                                              ; preds = %222
  %229 = shl nuw nsw i32 %226, 1
  %230 = load i16, ptr %21, align 2
  %231 = zext i16 %230 to i32
  %232 = sub nsw i32 %229, %231
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %472, label %234

234:                                              ; preds = %228
  %235 = shl nuw nsw i32 %232, 1
  %236 = load i16, ptr %22, align 2
  %237 = zext i16 %236 to i32
  %238 = sub nsw i32 %235, %237
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %472, label %240

240:                                              ; preds = %234
  %241 = shl nuw nsw i32 %238, 1
  %242 = zext i16 %158 to i32
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %472, label %244

244:                                              ; preds = %240
  %245 = icmp ne i32 %241, %242
  %246 = icmp eq i32 %0, 0
  %247 = or i1 %246, %159
  %248 = and i1 %245, %247
  br i1 %248, label %472, label %249

249:                                              ; preds = %244
  %250 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 1
  store i16 0, ptr %250, align 2
  %251 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 2
  store i16 %157, ptr %251, align 2
  %252 = add i16 %164, %157
  %253 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 3
  store i16 %252, ptr %253, align 2
  %254 = add i16 %170, %252
  %255 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 4
  store i16 %254, ptr %255, align 2
  %256 = add i16 %176, %254
  %257 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 5
  store i16 %256, ptr %257, align 2
  %258 = add i16 %182, %256
  %259 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 6
  store i16 %258, ptr %259, align 2
  %260 = add i16 %188, %258
  %261 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 7
  store i16 %260, ptr %261, align 2
  %262 = add i16 %194, %260
  %263 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 8
  store i16 %262, ptr %263, align 2
  %264 = add i16 %200, %262
  %265 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 9
  store i16 %264, ptr %265, align 2
  %266 = add i16 %206, %264
  %267 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 10
  store i16 %266, ptr %267, align 2
  %268 = add i16 %212, %266
  %269 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 11
  store i16 %268, ptr %269, align 2
  %270 = add i16 %218, %268
  %271 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 12
  store i16 %270, ptr %271, align 2
  %272 = add i16 %224, %270
  %273 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 13
  store i16 %272, ptr %273, align 2
  %274 = add i16 %230, %272
  %275 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 14
  store i16 %274, ptr %275, align 2
  %276 = add i16 %236, %274
  %277 = getelementptr inbounds [16 x i16], ptr %8, i32 0, i32 15
  store i16 %276, ptr %277, align 2
  br i1 %24, label %294, label %278

278:                                              ; preds = %291, %249
  %279 = phi i32 [ %292, %291 ], [ 0, %249 ]
  %280 = getelementptr i16, ptr %1, i32 %279
  %281 = load i16, ptr %280, align 2
  %282 = icmp eq i16 %281, 0
  br i1 %282, label %291, label %283

283:                                              ; preds = %278
  %284 = zext i16 %281 to i32
  %285 = trunc i32 %279 to i16
  %286 = getelementptr [16 x i16], ptr %8, i32 0, i32 %284
  %287 = load i16, ptr %286, align 2
  %288 = add i16 %287, 1
  store i16 %288, ptr %286, align 2
  %289 = zext i16 %287 to i32
  %290 = getelementptr i16, ptr %5, i32 %289
  store i16 %285, ptr %290, align 2
  br label %291

291:                                              ; preds = %283, %278
  %292 = add nuw i32 %279, 1
  %293 = icmp eq i32 %292, %2
  br i1 %293, label %294, label %278

294:                                              ; preds = %291, %249
  switch i32 %0, label %295 [
    i32 0, label %298
    i32 1, label %296
  ]

295:                                              ; preds = %294
  br label %298

296:                                              ; preds = %294
  %297 = icmp ugt i32 %155, 10
  br i1 %297, label %472, label %298

298:                                              ; preds = %296, %295, %294
  %299 = phi i1 [ true, %296 ], [ false, %294 ], [ false, %295 ]
  %300 = phi i32 [ 256, %296 ], [ 19, %294 ], [ -1, %295 ]
  %301 = phi ptr [ getelementptr ([31 x i16], ptr @zlib_inflate_table.lext, i32 -9, i32 22), %296 ], [ %5, %294 ], [ @zlib_inflate_table.dext, %295 ]
  %302 = phi ptr [ getelementptr ([31 x i16], ptr @zlib_inflate_table.lbase, i32 -9, i32 22), %296 ], [ %5, %294 ], [ @zlib_inflate_table.dbase, %295 ]
  %303 = shl nuw i32 1, %155
  %304 = add nsw i32 %303, -1
  %305 = load ptr, ptr %3, align 4
  %306 = trunc i32 %155 to i8
  br label %307

307:                                              ; preds = %419, %298
  %308 = phi i32 [ %381, %419 ], [ %156, %298 ]
  %309 = phi i32 [ %362, %419 ], [ 0, %298 ]
  %310 = phi i32 [ %415, %419 ], [ %155, %298 ]
  %311 = phi i32 [ %389, %419 ], [ 0, %298 ]
  %312 = phi i32 [ %416, %419 ], [ %303, %298 ]
  %313 = phi i32 [ %361, %419 ], [ 0, %298 ]
  %314 = phi i32 [ %384, %419 ], [ -1, %298 ]
  %315 = phi ptr [ %390, %419 ], [ %305, %298 ]
  %316 = shl nuw i32 1, %310
  br label %317

317:                                              ; preds = %386, %307
  %318 = phi i32 [ %308, %307 ], [ %381, %386 ]
  %319 = phi i32 [ %309, %307 ], [ %362, %386 ]
  %320 = phi i32 [ %313, %307 ], [ %361, %386 ]
  %321 = sub i32 %318, %311
  %322 = trunc i32 %321 to i8
  %323 = getelementptr i16, ptr %5, i32 %319
  %324 = load i16, ptr %323, align 2
  %325 = zext i16 %324 to i32
  %326 = icmp sgt i32 %300, %325
  br i1 %326, label %335, label %327

327:                                              ; preds = %317
  %328 = icmp slt i32 %300, %325
  br i1 %328, label %329, label %335

329:                                              ; preds = %327
  %330 = getelementptr i16, ptr %301, i32 %325
  %331 = load i16, ptr %330, align 2
  %332 = trunc i16 %331 to i8
  %333 = getelementptr i16, ptr %302, i32 %325
  %334 = load i16, ptr %333, align 2
  br label %335

335:                                              ; preds = %329, %327, %317
  %336 = phi i8 [ %332, %329 ], [ 0, %317 ], [ 96, %327 ]
  %337 = phi i16 [ %334, %329 ], [ %324, %317 ], [ 0, %327 ]
  %338 = shl nsw i32 -1, %321
  %339 = lshr i32 %320, %311
  br label %340

340:                                              ; preds = %340, %335
  %341 = phi i32 [ %316, %335 ], [ %342, %340 ]
  %342 = add i32 %341, %338
  %343 = add i32 %342, %339
  %344 = getelementptr %struct.code, ptr %315, i32 %343
  store i8 %336, ptr %344, align 2
  %345 = getelementptr inbounds i8, ptr %344, i32 1
  store i8 %322, ptr %345, align 1
  %346 = getelementptr inbounds i8, ptr %344, i32 2
  store i16 %337, ptr %346, align 2
  %347 = icmp eq i32 %342, 0
  br i1 %347, label %348, label %340

348:                                              ; preds = %340
  %349 = add i32 %318, -1
  %350 = shl nuw i32 1, %349
  br label %351

351:                                              ; preds = %351, %348
  %352 = phi i32 [ %350, %348 ], [ %355, %351 ]
  %353 = and i32 %352, %320
  %354 = icmp eq i32 %353, 0
  %355 = lshr i32 %352, 1
  br i1 %354, label %356, label %351

356:                                              ; preds = %351
  %357 = icmp eq i32 %352, 0
  %358 = add i32 %352, -1
  %359 = and i32 %358, %320
  %360 = add i32 %359, %352
  %361 = select i1 %357, i32 0, i32 %360
  %362 = add i32 %319, 1
  %363 = getelementptr [16 x i16], ptr %7, i32 0, i32 %318
  %364 = load i16, ptr %363, align 2
  %365 = add i16 %364, -1
  store i16 %365, ptr %363, align 2
  %366 = icmp eq i16 %365, 0
  br i1 %366, label %367, label %380

367:                                              ; preds = %356
  %368 = icmp eq i32 %318, %160
  br i1 %368, label %369, label %373

369:                                              ; preds = %367
  %370 = icmp eq i32 %361, 0
  br i1 %370, label %467, label %371

371:                                              ; preds = %369
  %372 = trunc i32 %321 to i8
  br label %432

373:                                              ; preds = %367
  %374 = getelementptr i16, ptr %5, i32 %362
  %375 = load i16, ptr %374, align 2
  %376 = zext i16 %375 to i32
  %377 = getelementptr i16, ptr %1, i32 %376
  %378 = load i16, ptr %377, align 2
  %379 = zext i16 %378 to i32
  br label %380

380:                                              ; preds = %373, %356
  %381 = phi i32 [ %379, %373 ], [ %318, %356 ]
  %382 = icmp ugt i32 %381, %155
  br i1 %382, label %383, label %386

383:                                              ; preds = %380
  %384 = and i32 %361, %304
  %385 = icmp eq i32 %384, %314
  br i1 %385, label %386, label %387

386:                                              ; preds = %383, %380
  br label %317

387:                                              ; preds = %383
  %388 = icmp eq i32 %311, 0
  %389 = select i1 %388, i32 %155, i32 %311
  %390 = getelementptr %struct.code, ptr %315, i32 %316
  %391 = sub i32 %381, %389
  %392 = shl nuw i32 1, %391
  %393 = icmp ult i32 %381, %160
  br i1 %393, label %394, label %413

394:                                              ; preds = %387
  %395 = sub i32 %160, %389
  br label %396

396:                                              ; preds = %405, %394
  %397 = phi i32 [ %408, %405 ], [ %381, %394 ]
  %398 = phi i32 [ %407, %405 ], [ %392, %394 ]
  %399 = phi i32 [ %406, %405 ], [ %391, %394 ]
  %400 = getelementptr [16 x i16], ptr %7, i32 0, i32 %397
  %401 = load i16, ptr %400, align 2
  %402 = zext i16 %401 to i32
  %403 = sub i32 %398, %402
  %404 = icmp slt i32 %403, 1
  br i1 %404, label %410, label %405

405:                                              ; preds = %396
  %406 = add i32 %399, 1
  %407 = shl nuw i32 %403, 1
  %408 = add i32 %406, %389
  %409 = icmp ult i32 %408, %160
  br i1 %409, label %396, label %410

410:                                              ; preds = %405, %396
  %411 = phi i32 [ %395, %405 ], [ %399, %396 ]
  %412 = shl nuw i32 1, %411
  br label %413

413:                                              ; preds = %410, %387
  %414 = phi i32 [ %412, %410 ], [ %392, %387 ]
  %415 = phi i32 [ %411, %410 ], [ %391, %387 ]
  %416 = add i32 %414, %312
  %417 = icmp ugt i32 %416, 1455
  %418 = select i1 %299, i1 %417, i1 false
  br i1 %418, label %472, label %419

419:                                              ; preds = %413
  %420 = trunc i32 %415 to i8
  %421 = load ptr, ptr %3, align 4
  %422 = getelementptr %struct.code, ptr %421, i32 %384
  store i8 %420, ptr %422, align 2
  %423 = load ptr, ptr %3, align 4
  %424 = getelementptr %struct.code, ptr %423, i32 %384, i32 1
  store i8 %306, ptr %424, align 1
  %425 = load ptr, ptr %3, align 4
  %426 = ptrtoint ptr %390 to i32
  %427 = ptrtoint ptr %425 to i32
  %428 = sub i32 %426, %427
  %429 = lshr exact i32 %428, 2
  %430 = trunc i32 %429 to i16
  %431 = getelementptr %struct.code, ptr %425, i32 %384, i32 2
  store i16 %430, ptr %431, align 2
  br label %307

432:                                              ; preds = %460, %371
  %433 = phi ptr [ %448, %460 ], [ %315, %371 ]
  %434 = phi i8 [ %447, %460 ], [ %372, %371 ]
  %435 = phi i32 [ %464, %460 ], [ %360, %371 ]
  %436 = phi i32 [ %446, %460 ], [ %311, %371 ]
  %437 = phi i32 [ %445, %460 ], [ %160, %371 ]
  %438 = icmp eq i32 %436, 0
  br i1 %438, label %444, label %439

439:                                              ; preds = %432
  %440 = and i32 %435, %304
  %441 = icmp eq i32 %440, %314
  br i1 %441, label %444, label %442

442:                                              ; preds = %439
  %443 = load ptr, ptr %3, align 4
  br label %444

444:                                              ; preds = %442, %439, %432
  %445 = phi i32 [ %155, %442 ], [ %437, %439 ], [ %437, %432 ]
  %446 = phi i32 [ 0, %442 ], [ %436, %439 ], [ 0, %432 ]
  %447 = phi i8 [ %306, %442 ], [ %434, %439 ], [ %434, %432 ]
  %448 = phi ptr [ %443, %442 ], [ %433, %439 ], [ %433, %432 ]
  %449 = lshr i32 %435, %446
  %450 = getelementptr %struct.code, ptr %448, i32 %449
  store i8 64, ptr %450, align 2
  %451 = getelementptr inbounds i8, ptr %450, i32 1
  store i8 %447, ptr %451, align 1
  %452 = getelementptr inbounds i8, ptr %450, i32 2
  store i16 0, ptr %452, align 2
  %453 = add i32 %445, -1
  %454 = shl nuw i32 1, %453
  br label %455

455:                                              ; preds = %455, %444
  %456 = phi i32 [ %454, %444 ], [ %459, %455 ]
  %457 = and i32 %456, %435
  %458 = icmp eq i32 %457, 0
  %459 = lshr i32 %456, 1
  br i1 %458, label %460, label %455

460:                                              ; preds = %455
  %461 = icmp eq i32 %456, 0
  %462 = add i32 %456, -1
  %463 = and i32 %462, %435
  %464 = add i32 %463, %456
  %465 = icmp eq i32 %464, 0
  %466 = select i1 %461, i1 true, i1 %465
  br i1 %466, label %467, label %432

467:                                              ; preds = %460, %369
  %468 = load ptr, ptr %3, align 4
  %469 = getelementptr %struct.code, ptr %468, i32 %312
  store ptr %469, ptr %3, align 4
  br label %470

470:                                              ; preds = %467, %87
  %471 = phi i32 [ %155, %467 ], [ 1, %87 ]
  store i32 %471, ptr %4, align 4
  br label %472

472:                                              ; preds = %470, %413, %296, %244, %240, %234, %228, %222, %216, %210, %204, %198, %192, %186, %180, %174, %168, %154, %146
  %473 = phi i32 [ 1, %296 ], [ -1, %240 ], [ -1, %234 ], [ -1, %228 ], [ -1, %222 ], [ -1, %216 ], [ -1, %210 ], [ -1, %204 ], [ -1, %198 ], [ -1, %192 ], [ -1, %186 ], [ -1, %180 ], [ -1, %174 ], [ -1, %168 ], [ -1, %154 ], [ -1, %146 ], [ -1, %244 ], [ 0, %470 ], [ 1, %413 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #11
  ret i32 %473
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define void @inflate_fast(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -5
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %13, %1
  %15 = getelementptr i8, ptr %11, i32 %14
  %16 = add i32 %13, -257
  %17 = getelementptr i8, ptr %11, i32 %16
  %18 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 9
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 10
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 11
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 12
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 13
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 14
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 18
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 19
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 20
  %35 = load i32, ptr %34, align 4
  %36 = shl nsw i32 -1, %35
  %37 = xor i32 %36, -1
  %38 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 21
  %39 = load i32, ptr %38, align 4
  %40 = shl nsw i32 -1, %39
  %41 = xor i32 %40, -1
  %42 = ptrtoint ptr %15 to i32
  %43 = icmp eq i32 %23, 0
  %44 = add i32 %23, %19
  br label %45

45:                                               ; preds = %393, %2
  %46 = phi ptr [ %5, %2 ], [ %394, %393 ]
  %47 = phi ptr [ %11, %2 ], [ %395, %393 ]
  %48 = phi i32 [ %27, %2 ], [ %396, %393 ]
  %49 = phi i32 [ %29, %2 ], [ %397, %393 ]
  %50 = icmp ult i32 %49, 15
  br i1 %50, label %51, label %64

51:                                               ; preds = %45
  %52 = getelementptr i8, ptr %46, i32 1
  %53 = load i8, ptr %46, align 1
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, %49
  %56 = add i32 %55, %48
  %57 = add nuw nsw i32 %49, 8
  %58 = getelementptr i8, ptr %46, i32 2
  %59 = load i8, ptr %52, align 1
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, %57
  %62 = add i32 %56, %61
  %63 = add nuw nsw i32 %49, 16
  br label %64

64:                                               ; preds = %51, %45
  %65 = phi ptr [ %58, %51 ], [ %46, %45 ]
  %66 = phi i32 [ %62, %51 ], [ %48, %45 ]
  %67 = phi i32 [ %63, %51 ], [ %49, %45 ]
  %68 = and i32 %66, %37
  %69 = getelementptr %struct.code, ptr %31, i32 %68
  %70 = getelementptr inbounds i8, ptr %69, i32 2
  %71 = load i16, ptr %70, align 2
  %72 = getelementptr inbounds i8, ptr %69, i32 1
  %73 = load i8, ptr %72, align 1
  %74 = load i8, ptr %69, align 2
  %75 = zext i8 %73 to i32
  %76 = lshr i32 %66, %75
  %77 = sub i32 %67, %75
  %78 = icmp eq i8 %74, 0
  %79 = trunc i16 %71 to i8
  br i1 %78, label %82, label %87

80:                                               ; preds = %374
  %81 = trunc i16 %382 to i8
  br label %82

82:                                               ; preds = %80, %64
  %83 = phi i8 [ %79, %64 ], [ %81, %80 ]
  %84 = phi i32 [ %76, %64 ], [ %387, %80 ]
  %85 = phi i32 [ %77, %64 ], [ %388, %80 ]
  %86 = getelementptr i8, ptr %47, i32 1
  store i8 %83, ptr %47, align 1
  br label %393

87:                                               ; preds = %374, %64
  %88 = phi i32 [ %388, %374 ], [ %77, %64 ]
  %89 = phi i32 [ %387, %374 ], [ %76, %64 ]
  %90 = phi i8 [ %385, %374 ], [ %74, %64 ]
  %91 = phi i16 [ %382, %374 ], [ %71, %64 ]
  %92 = zext i8 %90 to i32
  %93 = and i32 %92, 16
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %371, label %95

95:                                               ; preds = %87
  %96 = zext i16 %91 to i32
  %97 = and i8 %90, 15
  %98 = zext i8 %97 to i32
  %99 = icmp eq i8 %97, 0
  br i1 %99, label %119, label %100

100:                                              ; preds = %95
  %101 = icmp ult i32 %88, %98
  br i1 %101, label %102, label %109

102:                                              ; preds = %100
  %103 = getelementptr i8, ptr %65, i32 1
  %104 = load i8, ptr %65, align 1
  %105 = zext i8 %104 to i32
  %106 = shl i32 %105, %88
  %107 = add i32 %106, %89
  %108 = add i32 %88, 8
  br label %109

109:                                              ; preds = %102, %100
  %110 = phi ptr [ %103, %102 ], [ %65, %100 ]
  %111 = phi i32 [ %107, %102 ], [ %89, %100 ]
  %112 = phi i32 [ %108, %102 ], [ %88, %100 ]
  %113 = shl nsw i32 -1, %98
  %114 = xor i32 %113, -1
  %115 = and i32 %111, %114
  %116 = add nuw nsw i32 %115, %96
  %117 = lshr i32 %111, %98
  %118 = sub i32 %112, %98
  br label %119

119:                                              ; preds = %109, %95
  %120 = phi ptr [ %110, %109 ], [ %65, %95 ]
  %121 = phi i32 [ %117, %109 ], [ %89, %95 ]
  %122 = phi i32 [ %118, %109 ], [ %88, %95 ]
  %123 = phi i32 [ %116, %109 ], [ %96, %95 ]
  %124 = icmp ult i32 %122, 15
  br i1 %124, label %125, label %138

125:                                              ; preds = %119
  %126 = getelementptr i8, ptr %120, i32 1
  %127 = load i8, ptr %120, align 1
  %128 = zext i8 %127 to i32
  %129 = shl nuw nsw i32 %128, %122
  %130 = add i32 %129, %121
  %131 = add nuw nsw i32 %122, 8
  %132 = getelementptr i8, ptr %120, i32 2
  %133 = load i8, ptr %126, align 1
  %134 = zext i8 %133 to i32
  %135 = shl nuw nsw i32 %134, %131
  %136 = add i32 %130, %135
  %137 = add nuw nsw i32 %122, 16
  br label %138

138:                                              ; preds = %125, %119
  %139 = phi ptr [ %132, %125 ], [ %120, %119 ]
  %140 = phi i32 [ %136, %125 ], [ %121, %119 ]
  %141 = phi i32 [ %137, %125 ], [ %122, %119 ]
  %142 = and i32 %140, %41
  %143 = getelementptr %struct.code, ptr %33, i32 %142
  %144 = getelementptr inbounds i8, ptr %143, i32 2
  %145 = load i16, ptr %144, align 2
  %146 = getelementptr inbounds i8, ptr %143, i32 1
  %147 = load i8, ptr %146, align 1
  %148 = load i8, ptr %143, align 2
  %149 = zext i8 %147 to i32
  %150 = lshr i32 %140, %149
  %151 = sub i32 %141, %149
  %152 = zext i8 %148 to i32
  %153 = and i32 %152, 16
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %346, label %155

155:                                              ; preds = %353, %138
  %156 = phi i8 [ %148, %138 ], [ %364, %353 ]
  %157 = phi i16 [ %145, %138 ], [ %361, %353 ]
  %158 = phi i32 [ %150, %138 ], [ %366, %353 ]
  %159 = phi i32 [ %151, %138 ], [ %367, %353 ]
  %160 = zext i16 %157 to i32
  %161 = and i8 %156, 15
  %162 = zext i8 %161 to i32
  %163 = icmp ult i32 %159, %162
  br i1 %163, label %164, label %179

164:                                              ; preds = %155
  %165 = getelementptr i8, ptr %139, i32 1
  %166 = load i8, ptr %139, align 1
  %167 = zext i8 %166 to i32
  %168 = shl i32 %167, %159
  %169 = add i32 %168, %158
  %170 = add i32 %159, 8
  %171 = icmp ult i32 %170, %162
  br i1 %171, label %172, label %179

172:                                              ; preds = %164
  %173 = getelementptr i8, ptr %139, i32 2
  %174 = load i8, ptr %165, align 1
  %175 = zext i8 %174 to i32
  %176 = shl i32 %175, %170
  %177 = add i32 %176, %169
  %178 = add i32 %159, 16
  br label %179

179:                                              ; preds = %172, %164, %155
  %180 = phi ptr [ %173, %172 ], [ %165, %164 ], [ %139, %155 ]
  %181 = phi i32 [ %177, %172 ], [ %169, %164 ], [ %158, %155 ]
  %182 = phi i32 [ %178, %172 ], [ %170, %164 ], [ %159, %155 ]
  %183 = shl nsw i32 -1, %162
  %184 = xor i32 %183, -1
  %185 = and i32 %181, %184
  %186 = add nuw nsw i32 %185, %160
  %187 = lshr i32 %181, %162
  %188 = sub i32 %182, %162
  %189 = ptrtoint ptr %47 to i32
  %190 = sub i32 %189, %42
  %191 = icmp ugt i32 %186, %190
  br i1 %191, label %192, label %295

192:                                              ; preds = %179
  %193 = sub i32 %186, %190
  %194 = icmp ugt i32 %193, %21
  br i1 %194, label %401, label %195

195:                                              ; preds = %192
  br i1 %43, label %196, label %213

196:                                              ; preds = %195
  %197 = sub i32 %19, %193
  %198 = getelementptr i8, ptr %25, i32 %197
  %199 = icmp ugt i32 %123, %193
  br i1 %199, label %200, label %262

200:                                              ; preds = %200, %196
  %201 = phi ptr [ %206, %200 ], [ %47, %196 ]
  %202 = phi i32 [ %207, %200 ], [ %193, %196 ]
  %203 = phi ptr [ %204, %200 ], [ %198, %196 ]
  %204 = getelementptr i8, ptr %203, i32 1
  %205 = load i8, ptr %203, align 1
  %206 = getelementptr i8, ptr %201, i32 1
  store i8 %205, ptr %201, align 1
  %207 = add i32 %202, -1
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %200

209:                                              ; preds = %200
  %210 = sub i32 %123, %193
  %211 = sub nsw i32 0, %186
  %212 = getelementptr i8, ptr %206, i32 %211
  br label %262

213:                                              ; preds = %195
  %214 = icmp ult i32 %23, %193
  br i1 %214, label %215, label %245

215:                                              ; preds = %213
  %216 = sub i32 %44, %193
  %217 = getelementptr i8, ptr %25, i32 %216
  %218 = sub i32 %193, %23
  %219 = icmp ugt i32 %123, %218
  br i1 %219, label %220, label %262

220:                                              ; preds = %220, %215
  %221 = phi ptr [ %226, %220 ], [ %47, %215 ]
  %222 = phi i32 [ %227, %220 ], [ %218, %215 ]
  %223 = phi ptr [ %224, %220 ], [ %217, %215 ]
  %224 = getelementptr i8, ptr %223, i32 1
  %225 = load i8, ptr %223, align 1
  %226 = getelementptr i8, ptr %221, i32 1
  store i8 %225, ptr %221, align 1
  %227 = add i32 %222, -1
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %220

229:                                              ; preds = %220
  %230 = sub i32 %123, %218
  %231 = icmp ugt i32 %230, %23
  br i1 %231, label %232, label %262

232:                                              ; preds = %232, %229
  %233 = phi ptr [ %238, %232 ], [ %226, %229 ]
  %234 = phi i32 [ %239, %232 ], [ %23, %229 ]
  %235 = phi ptr [ %236, %232 ], [ %25, %229 ]
  %236 = getelementptr i8, ptr %235, i32 1
  %237 = load i8, ptr %235, align 1
  %238 = getelementptr i8, ptr %233, i32 1
  store i8 %237, ptr %233, align 1
  %239 = add i32 %234, -1
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %232

241:                                              ; preds = %232
  %242 = sub i32 %230, %23
  %243 = sub nsw i32 0, %186
  %244 = getelementptr i8, ptr %238, i32 %243
  br label %262

245:                                              ; preds = %213
  %246 = sub i32 %23, %193
  %247 = getelementptr i8, ptr %25, i32 %246
  %248 = icmp ugt i32 %123, %193
  br i1 %248, label %249, label %262

249:                                              ; preds = %249, %245
  %250 = phi ptr [ %255, %249 ], [ %47, %245 ]
  %251 = phi i32 [ %256, %249 ], [ %193, %245 ]
  %252 = phi ptr [ %253, %249 ], [ %247, %245 ]
  %253 = getelementptr i8, ptr %252, i32 1
  %254 = load i8, ptr %252, align 1
  %255 = getelementptr i8, ptr %250, i32 1
  store i8 %254, ptr %250, align 1
  %256 = add i32 %251, -1
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %249

258:                                              ; preds = %249
  %259 = sub i32 %123, %193
  %260 = sub nsw i32 0, %186
  %261 = getelementptr i8, ptr %255, i32 %260
  br label %262

262:                                              ; preds = %258, %245, %241, %229, %215, %209, %196
  %263 = phi ptr [ %206, %209 ], [ %47, %196 ], [ %238, %241 ], [ %226, %229 ], [ %47, %215 ], [ %255, %258 ], [ %47, %245 ]
  %264 = phi i32 [ %210, %209 ], [ %123, %196 ], [ %242, %241 ], [ %230, %229 ], [ %123, %215 ], [ %259, %258 ], [ %123, %245 ]
  %265 = phi ptr [ %212, %209 ], [ %198, %196 ], [ %244, %241 ], [ %25, %229 ], [ %217, %215 ], [ %261, %258 ], [ %247, %245 ]
  %266 = icmp ugt i32 %264, 2
  br i1 %266, label %267, label %282

267:                                              ; preds = %267, %262
  %268 = phi ptr [ %277, %267 ], [ %265, %262 ]
  %269 = phi i32 [ %280, %267 ], [ %264, %262 ]
  %270 = phi ptr [ %279, %267 ], [ %263, %262 ]
  %271 = getelementptr i8, ptr %268, i32 1
  %272 = load i8, ptr %268, align 1
  %273 = getelementptr i8, ptr %270, i32 1
  store i8 %272, ptr %270, align 1
  %274 = getelementptr i8, ptr %268, i32 2
  %275 = load i8, ptr %271, align 1
  %276 = getelementptr i8, ptr %270, i32 2
  store i8 %275, ptr %273, align 1
  %277 = getelementptr i8, ptr %268, i32 3
  %278 = load i8, ptr %274, align 1
  %279 = getelementptr i8, ptr %270, i32 3
  store i8 %278, ptr %276, align 1
  %280 = add i32 %269, -3
  %281 = icmp ugt i32 %280, 2
  br i1 %281, label %267, label %282

282:                                              ; preds = %267, %262
  %283 = phi ptr [ %263, %262 ], [ %279, %267 ]
  %284 = phi i32 [ %264, %262 ], [ %280, %267 ]
  %285 = phi ptr [ %265, %262 ], [ %277, %267 ]
  %286 = icmp eq i32 %284, 0
  br i1 %286, label %393, label %287

287:                                              ; preds = %282
  %288 = load i8, ptr %285, align 1
  %289 = getelementptr i8, ptr %283, i32 1
  store i8 %288, ptr %283, align 1
  %290 = icmp eq i32 %284, 1
  br i1 %290, label %393, label %291

291:                                              ; preds = %287
  %292 = getelementptr i8, ptr %285, i32 1
  %293 = load i8, ptr %292, align 1
  %294 = getelementptr i8, ptr %283, i32 2
  store i8 %293, ptr %289, align 1
  br label %393

295:                                              ; preds = %179
  %296 = sub nsw i32 0, %186
  %297 = getelementptr i8, ptr %47, i32 %296
  %298 = getelementptr i8, ptr %47, i32 -1
  %299 = ptrtoint ptr %298 to i32
  %300 = and i32 %299, 1
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %307

302:                                              ; preds = %295
  %303 = getelementptr i8, ptr %297, i32 1
  %304 = load i8, ptr %297, align 1
  %305 = getelementptr i8, ptr %47, i32 1
  store i8 %304, ptr %47, align 1
  %306 = add nsw i32 %123, -1
  br label %307

307:                                              ; preds = %302, %295
  %308 = phi ptr [ %47, %295 ], [ %305, %302 ]
  %309 = phi i32 [ %123, %295 ], [ %306, %302 ]
  %310 = phi ptr [ %297, %295 ], [ %303, %302 ]
  %311 = icmp ugt i32 %186, 2
  br i1 %311, label %312, label %323

312:                                              ; preds = %307
  %313 = lshr i32 %309, 1
  br label %314

314:                                              ; preds = %314, %312
  %315 = phi ptr [ %308, %312 ], [ %320, %314 ]
  %316 = phi i32 [ %313, %312 ], [ %321, %314 ]
  %317 = phi ptr [ %310, %312 ], [ %318, %314 ]
  %318 = getelementptr i16, ptr %317, i32 1
  %319 = load i16, ptr %317, align 2
  %320 = getelementptr i16, ptr %315, i32 1
  store i16 %319, ptr %315, align 2
  %321 = add i32 %316, -1
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %338, label %314

323:                                              ; preds = %307
  %324 = getelementptr i16, ptr %308, i32 -1
  %325 = load i16, ptr %324, align 2
  %326 = icmp eq i32 %186, 1
  %327 = lshr i16 %325, 8
  %328 = and i16 %325, -256
  %329 = or i16 %328, %327
  %330 = select i1 %326, i16 %329, i16 %325
  %331 = lshr i32 %309, 1
  br label %332

332:                                              ; preds = %332, %323
  %333 = phi ptr [ %308, %323 ], [ %335, %332 ]
  %334 = phi i32 [ %331, %323 ], [ %336, %332 ]
  %335 = getelementptr i16, ptr %333, i32 1
  store i16 %330, ptr %333, align 2
  %336 = add i32 %334, -1
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %332

338:                                              ; preds = %332, %314
  %339 = phi ptr [ %320, %314 ], [ %335, %332 ]
  %340 = phi ptr [ %318, %314 ], [ %310, %332 ]
  %341 = and i32 %309, 1
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %393, label %343

343:                                              ; preds = %338
  %344 = load i8, ptr %340, align 1
  %345 = getelementptr i8, ptr %339, i32 1
  store i8 %344, ptr %339, align 1
  br label %393

346:                                              ; preds = %353, %138
  %347 = phi i32 [ %368, %353 ], [ %152, %138 ]
  %348 = phi i32 [ %367, %353 ], [ %151, %138 ]
  %349 = phi i32 [ %366, %353 ], [ %150, %138 ]
  %350 = phi i16 [ %361, %353 ], [ %145, %138 ]
  %351 = and i32 %347, 64
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %401

353:                                              ; preds = %346
  %354 = zext i16 %350 to i32
  %355 = shl nsw i32 -1, %347
  %356 = xor i32 %355, -1
  %357 = and i32 %349, %356
  %358 = add i32 %357, %354
  %359 = getelementptr %struct.code, ptr %33, i32 %358
  %360 = getelementptr inbounds i8, ptr %359, i32 2
  %361 = load i16, ptr %360, align 2
  %362 = getelementptr inbounds i8, ptr %359, i32 1
  %363 = load i8, ptr %362, align 1
  %364 = load i8, ptr %359, align 2
  %365 = zext i8 %363 to i32
  %366 = lshr i32 %349, %365
  %367 = sub i32 %348, %365
  %368 = zext i8 %364 to i32
  %369 = and i32 %368, 16
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %346, label %155

371:                                              ; preds = %87
  %372 = and i32 %92, 64
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %390

374:                                              ; preds = %371
  %375 = zext i16 %91 to i32
  %376 = shl nsw i32 -1, %92
  %377 = xor i32 %376, -1
  %378 = and i32 %89, %377
  %379 = add i32 %378, %375
  %380 = getelementptr %struct.code, ptr %31, i32 %379
  %381 = getelementptr inbounds i8, ptr %380, i32 2
  %382 = load i16, ptr %381, align 2
  %383 = getelementptr inbounds i8, ptr %380, i32 1
  %384 = load i8, ptr %383, align 1
  %385 = load i8, ptr %380, align 2
  %386 = zext i8 %384 to i32
  %387 = lshr i32 %89, %386
  %388 = sub i32 %88, %386
  %389 = icmp eq i8 %385, 0
  br i1 %389, label %80, label %87

390:                                              ; preds = %371
  %391 = and i8 %90, 32
  %392 = icmp eq i8 %391, 0
  br i1 %392, label %401, label %407

393:                                              ; preds = %343, %338, %291, %287, %282, %82
  %394 = phi ptr [ %65, %82 ], [ %180, %291 ], [ %180, %287 ], [ %180, %282 ], [ %180, %343 ], [ %180, %338 ]
  %395 = phi ptr [ %86, %82 ], [ %294, %291 ], [ %289, %287 ], [ %283, %282 ], [ %345, %343 ], [ %339, %338 ]
  %396 = phi i32 [ %84, %82 ], [ %187, %291 ], [ %187, %287 ], [ %187, %282 ], [ %187, %343 ], [ %187, %338 ]
  %397 = phi i32 [ %85, %82 ], [ %188, %291 ], [ %188, %287 ], [ %188, %282 ], [ %188, %343 ], [ %188, %338 ]
  %398 = icmp ult ptr %394, %9
  %399 = icmp ult ptr %395, %17
  %400 = select i1 %398, i1 %399, i1 false
  br i1 %400, label %45, label %412

401:                                              ; preds = %390, %346, %192
  %402 = phi ptr [ @.str.2, %390 ], [ @.str.1, %346 ], [ @.str, %192 ]
  %403 = phi ptr [ %65, %390 ], [ %139, %346 ], [ %180, %192 ]
  %404 = phi i32 [ %89, %390 ], [ %349, %346 ], [ %187, %192 ]
  %405 = phi i32 [ %88, %390 ], [ %348, %346 ], [ %188, %192 ]
  %406 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 6
  store ptr %402, ptr %406, align 4
  br label %407

407:                                              ; preds = %401, %390
  %408 = phi i32 [ 11, %390 ], [ 27, %401 ]
  %409 = phi ptr [ %65, %390 ], [ %403, %401 ]
  %410 = phi i32 [ %89, %390 ], [ %404, %401 ]
  %411 = phi i32 [ %88, %390 ], [ %405, %401 ]
  store i32 %408, ptr %4, align 4
  br label %412

412:                                              ; preds = %407, %393
  %413 = phi ptr [ %409, %407 ], [ %394, %393 ]
  %414 = phi ptr [ %47, %407 ], [ %395, %393 ]
  %415 = phi i32 [ %410, %407 ], [ %396, %393 ]
  %416 = phi i32 [ %411, %407 ], [ %397, %393 ]
  %417 = lshr i32 %416, 3
  %418 = sub nsw i32 0, %417
  %419 = getelementptr i8, ptr %413, i32 %418
  store ptr %419, ptr %0, align 4
  store ptr %414, ptr %10, align 4
  %420 = ptrtoint ptr %9 to i32
  %421 = ptrtoint ptr %419 to i32
  %422 = add i32 %420, 5
  %423 = sub i32 %422, %421
  store i32 %423, ptr %6, align 4
  %424 = ptrtoint ptr %17 to i32
  %425 = ptrtoint ptr %414 to i32
  %426 = add i32 %424, 257
  %427 = sub i32 %426, %425
  %428 = and i32 %416, 7
  %429 = shl nsw i32 -1, %428
  %430 = xor i32 %429, -1
  %431 = and i32 %415, %430
  store i32 %427, ptr %12, align 4
  store i32 %431, ptr %26, align 4
  store i32 %428, ptr %28, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define i32 @zlib_inflate_workspacesize() local_unnamed_addr #4 {
  ret i32 42284
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define i32 @zlib_inflateReset(ptr noundef %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 7
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 5
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 2
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 6
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 10
  store i32 1, ptr %12, align 4
  store i32 0, ptr %5, align 4
  %13 = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 1
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 3
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 5
  store i32 32768, ptr %15, align 4
  %16 = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 13
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 14
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 29
  %19 = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 26
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 19
  store ptr %18, ptr %20, align 4
  %21 = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 18
  store ptr %18, ptr %21, align 4
  %22 = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  %24 = shl nuw i32 1, %23
  %25 = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 9
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 11
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.inflate_state, ptr %5, i32 0, i32 10
  store i32 0, ptr %27, align 4
  br label %28

28:                                               ; preds = %7, %3, %1
  %29 = phi i32 [ 0, %7 ], [ -2, %3 ], [ -2, %1 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define i32 @zlib_inflateInit2(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %44, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 6
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7
  store ptr %7, ptr %8, align 4
  %9 = icmp slt i32 %1, 0
  %10 = lshr i32 %1, 4
  %11 = add nuw nsw i32 %10, 1
  %12 = select i1 %9, i32 0, i32 %11
  %13 = call i32 @llvm.abs.i32(i32 %1, i1 false)
  %14 = getelementptr inbounds %struct.inflate_state, ptr %7, i32 0, i32 2
  store i32 %12, ptr %14, align 4
  %15 = add i32 %13, -16
  %16 = icmp ult i32 %15, -8
  br i1 %16, label %44, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.inflate_state, ptr %7, i32 0, i32 8
  store i32 %13, ptr %18, align 4
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr inbounds %struct.inflate_workspace, ptr %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.inflate_state, ptr %7, i32 0, i32 12
  store ptr %20, ptr %21, align 4
  %22 = load ptr, ptr %8, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 7
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 5
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 2
  store i32 0, ptr %27, align 4
  store ptr null, ptr %5, align 4
  %28 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 10
  store i32 1, ptr %28, align 4
  store i32 0, ptr %22, align 4
  %29 = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 1
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 3
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 5
  store i32 32768, ptr %31, align 4
  %32 = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 13
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 14
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 29
  %35 = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 26
  store ptr %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 19
  store ptr %34, ptr %36, align 4
  %37 = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 18
  store ptr %34, ptr %37, align 4
  %38 = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 8
  %39 = load i32, ptr %38, align 4
  %40 = shl nuw i32 1, %39
  %41 = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 9
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 11
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 10
  store i32 0, ptr %43, align 4
  br label %44

44:                                               ; preds = %24, %17, %4, %2
  %45 = phi i32 [ -2, %2 ], [ -2, %4 ], [ 0, %24 ], [ -2, %17 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define i32 @zlib_inflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1268, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %1268, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %1268

15:                                               ; preds = %11, %8
  %16 = load i32, ptr %6, align 4
  %17 = icmp eq i32 %16, 11
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  store i32 12, ptr %6, align 4
  %19 = load ptr, ptr %0, align 4
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32 [ %16, %15 ], [ 12, %18 ]
  %22 = phi ptr [ %9, %15 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 13
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 14
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 2
  %34 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 5
  %35 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 7
  %36 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 6
  %37 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 10
  %38 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 6
  %39 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 15
  %40 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 23
  %41 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 24
  %42 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 22
  %43 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 25
  %44 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 29
  %45 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 26
  %46 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 18
  %47 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 20
  %48 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 27
  %49 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 28
  %50 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 19
  %51 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 21
  %52 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 17
  %53 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 16
  %54 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 10
  %55 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 11
  %56 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 12
  %57 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 9
  %58 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 3
  %59 = icmp eq i32 %1, 6
  %60 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 1
  %61 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 8
  %62 = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 5
  br label %63

63:                                               ; preds = %1144, %20
  %64 = phi i32 [ %21, %20 ], [ %1153, %1144 ]
  %65 = phi ptr [ %22, %20 ], [ %1145, %1144 ]
  %66 = phi ptr [ %24, %20 ], [ %1146, %1144 ]
  %67 = phi i32 [ %28, %20 ], [ %1147, %1144 ]
  %68 = phi i32 [ %26, %20 ], [ %1148, %1144 ]
  %69 = phi i32 [ %30, %20 ], [ %1149, %1144 ]
  %70 = phi i32 [ %32, %20 ], [ %1150, %1144 ]
  %71 = phi i32 [ %26, %20 ], [ %1151, %1144 ]
  %72 = phi i32 [ 0, %20 ], [ %1152, %1144 ]
  switch i32 %64, label %1268 [
    i32 0, label %85
    i32 9, label %83
    i32 10, label %188
    i32 11, label %197
    i32 12, label %202
    i32 13, label %241
    i32 14, label %73
    i32 15, label %81
    i32 16, label %361
    i32 17, label %79
    i32 18, label %656
    i32 19, label %77
    i32 20, label %838
    i32 21, label %75
    i32 22, label %1008
    i32 23, label %1062
    i32 24, label %1069
    i32 26, label %1182
    i32 27, label %1189
    i32 28, label %1267
  ]

73:                                               ; preds = %63
  %74 = load i32, ptr %39, align 4
  br label %300

75:                                               ; preds = %63
  %76 = load i32, ptr %52, align 4
  br label %957

77:                                               ; preds = %63
  %78 = load i32, ptr %52, align 4
  br label %796

79:                                               ; preds = %63
  %80 = load i32, ptr %43, align 4
  br label %425

81:                                               ; preds = %63
  %82 = icmp ult i32 %70, 14
  br i1 %82, label %320, label %341

83:                                               ; preds = %63
  %84 = icmp ult i32 %70, 32
  br i1 %84, label %141, label %183

85:                                               ; preds = %63
  %86 = load i32, ptr %33, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = icmp ult i32 %70, 16
  br i1 %89, label %91, label %112

90:                                               ; preds = %85
  store i32 12, ptr %6, align 4
  br label %1144

91:                                               ; preds = %88
  %92 = icmp eq i32 %67, 0
  br i1 %92, label %1189, label %93

93:                                               ; preds = %91
  %94 = add i32 %67, -1
  %95 = getelementptr i8, ptr %65, i32 1
  %96 = load i8, ptr %65, align 1
  %97 = zext i8 %96 to i32
  %98 = shl nuw nsw i32 %97, %70
  %99 = add i32 %98, %69
  %100 = add nuw nsw i32 %70, 8
  %101 = icmp ult i32 %70, 8
  br i1 %101, label %102, label %112

102:                                              ; preds = %93
  %103 = icmp eq i32 %94, 0
  br i1 %103, label %1189, label %104

104:                                              ; preds = %102
  %105 = add i32 %67, -2
  %106 = getelementptr i8, ptr %65, i32 2
  %107 = load i8, ptr %95, align 1
  %108 = zext i8 %107 to i32
  %109 = shl nuw nsw i32 %108, %100
  %110 = add i32 %109, %99
  %111 = add nuw nsw i32 %70, 16
  br label %112

112:                                              ; preds = %104, %93, %88
  %113 = phi ptr [ %65, %88 ], [ %95, %93 ], [ %106, %104 ]
  %114 = phi i32 [ %67, %88 ], [ %94, %93 ], [ %105, %104 ]
  %115 = phi i32 [ %69, %88 ], [ %99, %93 ], [ %110, %104 ]
  %116 = phi i32 [ %70, %88 ], [ %100, %93 ], [ %111, %104 ]
  %117 = shl i32 %115, 8
  %118 = and i32 %117, 65280
  %119 = lshr i32 %115, 8
  %120 = add nuw nsw i32 %118, %119
  %121 = urem i32 %120, 31
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %112
  store ptr @.str.3, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1144

124:                                              ; preds = %112
  %125 = and i32 %115, 15
  %126 = icmp eq i32 %125, 8
  br i1 %126, label %128, label %127

127:                                              ; preds = %124
  store ptr @.str.4, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1144

128:                                              ; preds = %124
  %129 = lshr i32 %115, 4
  %130 = and i32 %129, 15
  %131 = add nuw nsw i32 %130, 8
  %132 = load i32, ptr %61, align 4
  %133 = icmp ugt i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = add i32 %116, -4
  store ptr @.str.5, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1144

136:                                              ; preds = %128
  %137 = shl nuw nsw i32 256, %130
  store i32 %137, ptr %62, align 4
  store i32 1, ptr %36, align 4
  store i32 1, ptr %37, align 4
  %138 = and i32 %115, 8192
  %139 = icmp eq i32 %138, 0
  %140 = select i1 %139, i32 11, i32 9
  store i32 %140, ptr %6, align 4
  br label %1144

141:                                              ; preds = %83
  %142 = icmp eq i32 %67, 0
  br i1 %142, label %1189, label %143

143:                                              ; preds = %141
  %144 = add i32 %67, -1
  %145 = getelementptr i8, ptr %65, i32 1
  %146 = load i8, ptr %65, align 1
  %147 = zext i8 %146 to i32
  %148 = shl i32 %147, %70
  %149 = add i32 %148, %69
  %150 = add nuw nsw i32 %70, 8
  %151 = icmp ult i32 %70, 24
  br i1 %151, label %152, label %183

152:                                              ; preds = %143
  %153 = icmp eq i32 %144, 0
  br i1 %153, label %1189, label %154

154:                                              ; preds = %152
  %155 = add i32 %67, -2
  %156 = getelementptr i8, ptr %65, i32 2
  %157 = load i8, ptr %145, align 1
  %158 = zext i8 %157 to i32
  %159 = shl i32 %158, %150
  %160 = add i32 %159, %149
  %161 = add nuw nsw i32 %70, 16
  %162 = icmp ult i32 %70, 16
  br i1 %162, label %163, label %183

163:                                              ; preds = %154
  %164 = icmp eq i32 %155, 0
  br i1 %164, label %1189, label %165

165:                                              ; preds = %163
  %166 = add i32 %67, -3
  %167 = getelementptr i8, ptr %65, i32 3
  %168 = load i8, ptr %156, align 1
  %169 = zext i8 %168 to i32
  %170 = shl i32 %169, %161
  %171 = add i32 %170, %160
  %172 = add nuw nsw i32 %70, 24
  %173 = icmp ult i32 %70, 8
  br i1 %173, label %174, label %183

174:                                              ; preds = %165
  %175 = icmp eq i32 %166, 0
  br i1 %175, label %1189, label %176

176:                                              ; preds = %174
  %177 = add i32 %67, -4
  %178 = getelementptr i8, ptr %65, i32 4
  %179 = load i8, ptr %167, align 1
  %180 = zext i8 %179 to i32
  %181 = shl i32 %180, %172
  %182 = add i32 %181, %171
  br label %183

183:                                              ; preds = %176, %165, %154, %143, %83
  %184 = phi ptr [ %65, %83 ], [ %145, %143 ], [ %156, %154 ], [ %167, %165 ], [ %178, %176 ]
  %185 = phi i32 [ %67, %83 ], [ %144, %143 ], [ %155, %154 ], [ %166, %165 ], [ %177, %176 ]
  %186 = phi i32 [ %69, %83 ], [ %149, %143 ], [ %160, %154 ], [ %171, %165 ], [ %182, %176 ]
  %187 = tail call i32 @llvm.bswap.i32(i32 %186)
  store i32 %187, ptr %36, align 4
  store i32 %187, ptr %37, align 4
  store i32 10, ptr %6, align 4
  br label %188

188:                                              ; preds = %183, %63
  %189 = phi ptr [ %65, %63 ], [ %184, %183 ]
  %190 = phi i32 [ %67, %63 ], [ %185, %183 ]
  %191 = phi i32 [ %69, %63 ], [ 0, %183 ]
  %192 = phi i32 [ %70, %63 ], [ 0, %183 ]
  %193 = load i32, ptr %58, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %188
  store ptr %66, ptr %23, align 4
  store i32 %68, ptr %25, align 4
  store ptr %189, ptr %0, align 4
  store i32 %190, ptr %27, align 4
  store i32 %191, ptr %29, align 4
  store i32 %192, ptr %31, align 4
  br label %1268

196:                                              ; preds = %188
  store i32 1, ptr %36, align 4
  store i32 1, ptr %37, align 4
  store i32 11, ptr %6, align 4
  br label %197

197:                                              ; preds = %196, %63
  %198 = phi ptr [ %65, %63 ], [ %189, %196 ]
  %199 = phi i32 [ %67, %63 ], [ %190, %196 ]
  %200 = phi i32 [ %69, %63 ], [ %191, %196 ]
  %201 = phi i32 [ %70, %63 ], [ %192, %196 ]
  br i1 %59, label %1182, label %202

202:                                              ; preds = %197, %63
  %203 = phi ptr [ %65, %63 ], [ %198, %197 ]
  %204 = phi i32 [ %67, %63 ], [ %199, %197 ]
  %205 = phi i32 [ %69, %63 ], [ %200, %197 ]
  %206 = phi i32 [ %70, %63 ], [ %201, %197 ]
  %207 = load i32, ptr %60, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %202
  %210 = icmp ult i32 %206, 3
  br i1 %210, label %215, label %225

211:                                              ; preds = %202
  %212 = and i32 %206, 7
  %213 = lshr i32 %205, %212
  %214 = and i32 %206, -8
  store i32 24, ptr %6, align 4
  br label %1144

215:                                              ; preds = %209
  %216 = icmp eq i32 %204, 0
  br i1 %216, label %1189, label %217

217:                                              ; preds = %215
  %218 = add i32 %204, -1
  %219 = getelementptr i8, ptr %203, i32 1
  %220 = load i8, ptr %203, align 1
  %221 = zext i8 %220 to i32
  %222 = shl nuw nsw i32 %221, %206
  %223 = add i32 %222, %205
  %224 = add nuw nsw i32 %206, 8
  br label %225

225:                                              ; preds = %217, %209
  %226 = phi ptr [ %219, %217 ], [ %203, %209 ]
  %227 = phi i32 [ %218, %217 ], [ %204, %209 ]
  %228 = phi i32 [ %223, %217 ], [ %205, %209 ]
  %229 = phi i32 [ %224, %217 ], [ %206, %209 ]
  %230 = and i32 %228, 1
  store i32 %230, ptr %60, align 4
  %231 = lshr i32 %228, 1
  %232 = and i32 %231, 3
  switch i32 %232, label %236 [
    i32 0, label %237
    i32 1, label %233
    i32 2, label %234
    i32 3, label %235
  ]

233:                                              ; preds = %225
  store ptr @zlib_fixedtables.lenfix, ptr %46, align 4
  store i32 9, ptr %47, align 4
  store ptr @zlib_fixedtables.distfix, ptr %50, align 4
  store i32 5, ptr %51, align 4
  br label %237

234:                                              ; preds = %225
  br label %237

235:                                              ; preds = %225
  store ptr @.str.6, ptr %38, align 4
  br label %237

236:                                              ; preds = %225
  unreachable

237:                                              ; preds = %235, %234, %233, %225
  %238 = phi i32 [ 18, %233 ], [ 15, %234 ], [ 27, %235 ], [ 13, %225 ]
  store i32 %238, ptr %6, align 4
  %239 = lshr i32 %228, 3
  %240 = add i32 %229, -3
  br label %1144

241:                                              ; preds = %63
  %242 = and i32 %70, 7
  %243 = lshr i32 %69, %242
  %244 = and i32 %70, -8
  %245 = icmp ult i32 %244, 32
  br i1 %245, label %246, label %289

246:                                              ; preds = %241
  %247 = icmp eq i32 %67, 0
  br i1 %247, label %1189, label %248

248:                                              ; preds = %246
  %249 = add i32 %67, -1
  %250 = getelementptr i8, ptr %65, i32 1
  %251 = load i8, ptr %65, align 1
  %252 = zext i8 %251 to i32
  %253 = shl i32 %252, %244
  %254 = add i32 %253, %243
  %255 = add nuw nsw i32 %244, 8
  %256 = icmp ult i32 %244, 24
  br i1 %256, label %257, label %289

257:                                              ; preds = %248
  %258 = icmp eq i32 %249, 0
  br i1 %258, label %1189, label %259

259:                                              ; preds = %257
  %260 = add i32 %67, -2
  %261 = getelementptr i8, ptr %65, i32 2
  %262 = load i8, ptr %250, align 1
  %263 = zext i8 %262 to i32
  %264 = shl i32 %263, %255
  %265 = add i32 %264, %254
  %266 = add nuw nsw i32 %244, 16
  %267 = icmp ult i32 %244, 16
  br i1 %267, label %268, label %289

268:                                              ; preds = %259
  %269 = icmp eq i32 %260, 0
  br i1 %269, label %1189, label %270

270:                                              ; preds = %268
  %271 = add i32 %67, -3
  %272 = getelementptr i8, ptr %65, i32 3
  %273 = load i8, ptr %261, align 1
  %274 = zext i8 %273 to i32
  %275 = shl i32 %274, %266
  %276 = add i32 %275, %265
  %277 = add nuw nsw i32 %244, 24
  %278 = icmp eq i32 %244, 0
  br i1 %278, label %279, label %289

279:                                              ; preds = %270
  %280 = icmp eq i32 %271, 0
  br i1 %280, label %1189, label %281

281:                                              ; preds = %279
  %282 = add i32 %67, -4
  %283 = getelementptr i8, ptr %65, i32 4
  %284 = load i8, ptr %272, align 1
  %285 = zext i8 %284 to i32
  %286 = shl i32 %285, %277
  %287 = add i32 %286, %276
  %288 = add nuw nsw i32 %244, 32
  br label %289

289:                                              ; preds = %281, %270, %259, %248, %241
  %290 = phi ptr [ %65, %241 ], [ %250, %248 ], [ %261, %259 ], [ %272, %270 ], [ %283, %281 ]
  %291 = phi i32 [ %67, %241 ], [ %249, %248 ], [ %260, %259 ], [ %271, %270 ], [ %282, %281 ]
  %292 = phi i32 [ %243, %241 ], [ %254, %248 ], [ %265, %259 ], [ %276, %270 ], [ %287, %281 ]
  %293 = phi i32 [ %244, %241 ], [ %255, %248 ], [ %266, %259 ], [ %277, %270 ], [ %288, %281 ]
  %294 = and i32 %292, 65535
  %295 = xor i32 %292, -1
  %296 = lshr i32 %295, 16
  %297 = icmp eq i32 %294, %296
  br i1 %297, label %299, label %298

298:                                              ; preds = %289
  store ptr @.str.7, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1144

299:                                              ; preds = %289
  store i32 %294, ptr %39, align 4
  store i32 14, ptr %6, align 4
  br label %300

300:                                              ; preds = %299, %73
  %301 = phi i32 [ %74, %73 ], [ %294, %299 ]
  %302 = phi ptr [ %65, %73 ], [ %290, %299 ]
  %303 = phi i32 [ %67, %73 ], [ %291, %299 ]
  %304 = phi i32 [ %69, %73 ], [ 0, %299 ]
  %305 = phi i32 [ %70, %73 ], [ 0, %299 ]
  %306 = icmp eq i32 %301, 0
  br i1 %306, label %319, label %307

307:                                              ; preds = %300
  %308 = tail call i32 @llvm.umin.i32(i32 %301, i32 %303)
  %309 = tail call i32 @llvm.umin.i32(i32 %308, i32 %68)
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %1182, label %311

311:                                              ; preds = %307
  %312 = tail call ptr @memcpy(ptr noundef %66, ptr noundef %302, i32 noundef %309) #12
  %313 = sub i32 %303, %309
  %314 = getelementptr i8, ptr %302, i32 %309
  %315 = sub i32 %68, %309
  %316 = getelementptr i8, ptr %66, i32 %309
  %317 = load i32, ptr %39, align 4
  %318 = sub i32 %317, %309
  store i32 %318, ptr %39, align 4
  br label %1144

319:                                              ; preds = %300
  store i32 11, ptr %6, align 4
  br label %1144

320:                                              ; preds = %81
  %321 = icmp eq i32 %67, 0
  br i1 %321, label %1189, label %322

322:                                              ; preds = %320
  %323 = add i32 %67, -1
  %324 = getelementptr i8, ptr %65, i32 1
  %325 = load i8, ptr %65, align 1
  %326 = zext i8 %325 to i32
  %327 = shl nuw nsw i32 %326, %70
  %328 = add i32 %327, %69
  %329 = add nuw nsw i32 %70, 8
  %330 = icmp ult i32 %70, 6
  br i1 %330, label %331, label %341

331:                                              ; preds = %322
  %332 = icmp eq i32 %323, 0
  br i1 %332, label %1189, label %333

333:                                              ; preds = %331
  %334 = add i32 %67, -2
  %335 = getelementptr i8, ptr %65, i32 2
  %336 = load i8, ptr %324, align 1
  %337 = zext i8 %336 to i32
  %338 = shl nuw nsw i32 %337, %329
  %339 = add i32 %338, %328
  %340 = add nuw nsw i32 %70, 16
  br label %341

341:                                              ; preds = %333, %322, %81
  %342 = phi ptr [ %65, %81 ], [ %324, %322 ], [ %335, %333 ]
  %343 = phi i32 [ %67, %81 ], [ %323, %322 ], [ %334, %333 ]
  %344 = phi i32 [ %69, %81 ], [ %328, %322 ], [ %339, %333 ]
  %345 = phi i32 [ %70, %81 ], [ %329, %322 ], [ %340, %333 ]
  %346 = and i32 %344, 31
  %347 = add nuw nsw i32 %346, 257
  store i32 %347, ptr %40, align 4
  %348 = lshr i32 %344, 5
  %349 = and i32 %348, 31
  %350 = add nuw nsw i32 %349, 1
  store i32 %350, ptr %41, align 4
  %351 = lshr i32 %344, 10
  %352 = and i32 %351, 15
  %353 = add nuw nsw i32 %352, 4
  store i32 %353, ptr %42, align 4
  %354 = lshr i32 %344, 14
  %355 = add i32 %345, -14
  %356 = icmp ugt i32 %346, 29
  %357 = icmp ugt i32 %349, 29
  %358 = select i1 %356, i1 true, i1 %357
  br i1 %358, label %359, label %360

359:                                              ; preds = %341
  store ptr @.str.8, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1144

360:                                              ; preds = %341
  store i32 0, ptr %43, align 4
  store i32 16, ptr %6, align 4
  br label %365

361:                                              ; preds = %63
  %362 = load i32, ptr %43, align 4
  %363 = load i32, ptr %42, align 4
  %364 = icmp ult i32 %362, %363
  br i1 %364, label %365, label %372

365:                                              ; preds = %361, %360
  %366 = phi i32 [ %355, %360 ], [ %70, %361 ]
  %367 = phi i32 [ %354, %360 ], [ %69, %361 ]
  %368 = phi i32 [ %343, %360 ], [ %67, %361 ]
  %369 = phi ptr [ %342, %360 ], [ %65, %361 ]
  %370 = phi i32 [ 0, %360 ], [ %362, %361 ]
  %371 = phi i32 [ %353, %360 ], [ %363, %361 ]
  br label %379

372:                                              ; preds = %396, %361
  %373 = phi ptr [ %65, %361 ], [ %397, %396 ]
  %374 = phi i32 [ %67, %361 ], [ %398, %396 ]
  %375 = phi i32 [ %69, %361 ], [ %408, %396 ]
  %376 = phi i32 [ %70, %361 ], [ %409, %396 ]
  %377 = phi i32 [ %362, %361 ], [ %403, %396 ]
  %378 = icmp ult i32 %377, 19
  br i1 %378, label %411, label %420

379:                                              ; preds = %396, %365
  %380 = phi i32 [ %403, %396 ], [ %370, %365 ]
  %381 = phi i32 [ %409, %396 ], [ %366, %365 ]
  %382 = phi i32 [ %408, %396 ], [ %367, %365 ]
  %383 = phi i32 [ %398, %396 ], [ %368, %365 ]
  %384 = phi ptr [ %397, %396 ], [ %369, %365 ]
  %385 = icmp ult i32 %381, 3
  br i1 %385, label %386, label %396

386:                                              ; preds = %379
  %387 = icmp eq i32 %383, 0
  br i1 %387, label %1189, label %388

388:                                              ; preds = %386
  %389 = add i32 %383, -1
  %390 = getelementptr i8, ptr %384, i32 1
  %391 = load i8, ptr %384, align 1
  %392 = zext i8 %391 to i32
  %393 = shl nuw nsw i32 %392, %381
  %394 = add i32 %393, %382
  %395 = add nuw nsw i32 %381, 8
  br label %396

396:                                              ; preds = %388, %379
  %397 = phi ptr [ %390, %388 ], [ %384, %379 ]
  %398 = phi i32 [ %389, %388 ], [ %383, %379 ]
  %399 = phi i32 [ %394, %388 ], [ %382, %379 ]
  %400 = phi i32 [ %395, %388 ], [ %381, %379 ]
  %401 = trunc i32 %399 to i16
  %402 = and i16 %401, 7
  %403 = add nuw i32 %380, 1
  store i32 %403, ptr %43, align 4
  %404 = getelementptr [19 x i16], ptr @zlib_inflate.order, i32 0, i32 %380
  %405 = load i16, ptr %404, align 2
  %406 = zext i16 %405 to i32
  %407 = getelementptr %struct.inflate_state, ptr %6, i32 0, i32 27, i32 %406
  store i16 %402, ptr %407, align 2
  %408 = lshr i32 %399, 3
  %409 = add i32 %400, -3
  %410 = icmp ult i32 %403, %371
  br i1 %410, label %379, label %372

411:                                              ; preds = %411, %372
  %412 = phi i32 [ %413, %411 ], [ %377, %372 ]
  %413 = add i32 %412, 1
  %414 = getelementptr [19 x i16], ptr @zlib_inflate.order, i32 0, i32 %412
  %415 = load i16, ptr %414, align 2
  %416 = zext i16 %415 to i32
  %417 = getelementptr %struct.inflate_state, ptr %6, i32 0, i32 27, i32 %416
  store i16 0, ptr %417, align 2
  %418 = icmp eq i32 %413, 19
  br i1 %418, label %419, label %411

419:                                              ; preds = %411
  store i32 %413, ptr %43, align 4
  br label %420

420:                                              ; preds = %419, %372
  store ptr %44, ptr %45, align 4
  store ptr %44, ptr %46, align 4
  store i32 7, ptr %47, align 4
  %421 = tail call i32 @zlib_inflate_table(i32 noundef 0, ptr noundef %48, i32 noundef 19, ptr noundef %45, ptr noundef %47, ptr noundef %49) #13
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %424, label %423

423:                                              ; preds = %420
  store ptr @.str.9, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1144

424:                                              ; preds = %420
  store i32 0, ptr %43, align 4
  store i32 17, ptr %6, align 4
  br label %425

425:                                              ; preds = %424, %79
  %426 = phi i32 [ %80, %79 ], [ 0, %424 ]
  %427 = phi ptr [ %65, %79 ], [ %373, %424 ]
  %428 = phi i32 [ %67, %79 ], [ %374, %424 ]
  %429 = phi i32 [ %69, %79 ], [ %375, %424 ]
  %430 = phi i32 [ %70, %79 ], [ %376, %424 ]
  %431 = phi i32 [ %72, %79 ], [ 0, %424 ]
  %432 = load i32, ptr %40, align 4
  %433 = load i32, ptr %41, align 4
  %434 = add i32 %433, %432
  %435 = icmp ult i32 %426, %434
  br i1 %435, label %436, label %638

436:                                              ; preds = %625, %425
  %437 = phi i32 [ %633, %625 ], [ %434, %425 ]
  %438 = phi i32 [ %630, %625 ], [ %426, %425 ]
  %439 = phi i32 [ %629, %625 ], [ %430, %425 ]
  %440 = phi i32 [ %628, %625 ], [ %429, %425 ]
  %441 = phi i32 [ %627, %625 ], [ %428, %425 ]
  %442 = phi ptr [ %626, %625 ], [ %427, %425 ]
  %443 = load ptr, ptr %46, align 4
  %444 = load i32, ptr %47, align 4
  %445 = shl nsw i32 -1, %444
  %446 = xor i32 %445, -1
  %447 = and i32 %440, %446
  %448 = getelementptr %struct.code, ptr %443, i32 %447, i32 1
  %449 = load i8, ptr %448, align 1
  %450 = zext i8 %449 to i32
  %451 = icmp ult i32 %439, %450
  br i1 %451, label %452, label %473

452:                                              ; preds = %458, %436
  %453 = phi i32 [ %465, %458 ], [ %439, %436 ]
  %454 = phi i32 [ %464, %458 ], [ %440, %436 ]
  %455 = phi i32 [ %459, %458 ], [ %441, %436 ]
  %456 = phi ptr [ %460, %458 ], [ %442, %436 ]
  %457 = icmp eq i32 %455, 0
  br i1 %457, label %1154, label %458

458:                                              ; preds = %452
  %459 = add i32 %455, -1
  %460 = getelementptr i8, ptr %456, i32 1
  %461 = load i8, ptr %456, align 1
  %462 = zext i8 %461 to i32
  %463 = shl i32 %462, %453
  %464 = add i32 %463, %454
  %465 = add nuw nsw i32 %453, 8
  %466 = and i32 %464, %446
  %467 = getelementptr %struct.code, ptr %443, i32 %466, i32 1
  %468 = load i8, ptr %467, align 1
  %469 = zext i8 %468 to i32
  %470 = icmp ult i32 %465, %469
  br i1 %470, label %452, label %471

471:                                              ; preds = %458
  %472 = zext i8 %468 to i32
  br label %473

473:                                              ; preds = %471, %436
  %474 = phi i32 [ %450, %436 ], [ %472, %471 ]
  %475 = phi i32 [ %447, %436 ], [ %466, %471 ]
  %476 = phi ptr [ %442, %436 ], [ %460, %471 ]
  %477 = phi i32 [ %441, %436 ], [ %459, %471 ]
  %478 = phi i32 [ %440, %436 ], [ %464, %471 ]
  %479 = phi i32 [ %439, %436 ], [ %465, %471 ]
  %480 = getelementptr %struct.code, ptr %443, i32 %475, i32 2
  %481 = load i16, ptr %480, align 2
  %482 = icmp ult i16 %481, 16
  br i1 %482, label %483, label %509

483:                                              ; preds = %473
  %484 = icmp ult i32 %479, %474
  br i1 %484, label %485, label %500

485:                                              ; preds = %491, %483
  %486 = phi i32 [ %498, %491 ], [ %479, %483 ]
  %487 = phi i32 [ %497, %491 ], [ %478, %483 ]
  %488 = phi i32 [ %492, %491 ], [ %477, %483 ]
  %489 = phi ptr [ %493, %491 ], [ %476, %483 ]
  %490 = icmp eq i32 %488, 0
  br i1 %490, label %1189, label %491

491:                                              ; preds = %485
  %492 = add i32 %488, -1
  %493 = getelementptr i8, ptr %489, i32 1
  %494 = load i8, ptr %489, align 1
  %495 = zext i8 %494 to i32
  %496 = shl i32 %495, %486
  %497 = add i32 %496, %487
  %498 = add nuw nsw i32 %486, 8
  %499 = icmp ult i32 %498, %474
  br i1 %499, label %485, label %500

500:                                              ; preds = %491, %483
  %501 = phi ptr [ %476, %483 ], [ %493, %491 ]
  %502 = phi i32 [ %477, %483 ], [ %492, %491 ]
  %503 = phi i32 [ %478, %483 ], [ %497, %491 ]
  %504 = phi i32 [ %479, %483 ], [ %498, %491 ]
  %505 = lshr i32 %503, %474
  %506 = sub i32 %504, %474
  %507 = add i32 %438, 1
  store i32 %507, ptr %43, align 4
  %508 = getelementptr %struct.inflate_state, ptr %6, i32 0, i32 27, i32 %438
  store i16 %481, ptr %508, align 2
  br label %625

509:                                              ; preds = %473
  switch i16 %481, label %516 [
    i16 16, label %513
    i16 17, label %510
  ]

510:                                              ; preds = %509
  %511 = add nuw nsw i32 %474, 3
  %512 = icmp ult i32 %479, %511
  br i1 %512, label %551, label %566

513:                                              ; preds = %509
  %514 = add nuw nsw i32 %474, 2
  %515 = icmp ult i32 %479, %514
  br i1 %515, label %519, label %534

516:                                              ; preds = %509
  %517 = add nuw nsw i32 %474, 7
  %518 = icmp ult i32 %479, %517
  br i1 %518, label %577, label %592

519:                                              ; preds = %525, %513
  %520 = phi i32 [ %532, %525 ], [ %479, %513 ]
  %521 = phi i32 [ %531, %525 ], [ %478, %513 ]
  %522 = phi i32 [ %526, %525 ], [ %477, %513 ]
  %523 = phi ptr [ %527, %525 ], [ %476, %513 ]
  %524 = icmp eq i32 %522, 0
  br i1 %524, label %1189, label %525

525:                                              ; preds = %519
  %526 = add i32 %522, -1
  %527 = getelementptr i8, ptr %523, i32 1
  %528 = load i8, ptr %523, align 1
  %529 = zext i8 %528 to i32
  %530 = shl i32 %529, %520
  %531 = add i32 %530, %521
  %532 = add nuw nsw i32 %520, 8
  %533 = icmp ult i32 %532, %514
  br i1 %533, label %519, label %534

534:                                              ; preds = %525, %513
  %535 = phi ptr [ %476, %513 ], [ %527, %525 ]
  %536 = phi i32 [ %477, %513 ], [ %526, %525 ]
  %537 = phi i32 [ %478, %513 ], [ %531, %525 ]
  %538 = phi i32 [ %479, %513 ], [ %532, %525 ]
  %539 = lshr i32 %537, %474
  %540 = sub i32 %538, %474
  %541 = icmp eq i32 %438, 0
  br i1 %541, label %542, label %543

542:                                              ; preds = %534
  store ptr @.str.10, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1144

543:                                              ; preds = %534
  %544 = add i32 %438, -1
  %545 = getelementptr %struct.inflate_state, ptr %6, i32 0, i32 27, i32 %544
  %546 = load i16, ptr %545, align 2
  %547 = and i32 %539, 3
  %548 = add nuw nsw i32 %547, 3
  %549 = lshr i32 %539, 2
  %550 = add i32 %540, -2
  br label %603

551:                                              ; preds = %557, %510
  %552 = phi i32 [ %564, %557 ], [ %479, %510 ]
  %553 = phi i32 [ %563, %557 ], [ %478, %510 ]
  %554 = phi i32 [ %558, %557 ], [ %477, %510 ]
  %555 = phi ptr [ %559, %557 ], [ %476, %510 ]
  %556 = icmp eq i32 %554, 0
  br i1 %556, label %1189, label %557

557:                                              ; preds = %551
  %558 = add i32 %554, -1
  %559 = getelementptr i8, ptr %555, i32 1
  %560 = load i8, ptr %555, align 1
  %561 = zext i8 %560 to i32
  %562 = shl i32 %561, %552
  %563 = add i32 %562, %553
  %564 = add nuw nsw i32 %552, 8
  %565 = icmp ult i32 %564, %511
  br i1 %565, label %551, label %566

566:                                              ; preds = %557, %510
  %567 = phi ptr [ %476, %510 ], [ %559, %557 ]
  %568 = phi i32 [ %477, %510 ], [ %558, %557 ]
  %569 = phi i32 [ %478, %510 ], [ %563, %557 ]
  %570 = phi i32 [ %479, %510 ], [ %564, %557 ]
  %571 = lshr i32 %569, %474
  %572 = and i32 %571, 7
  %573 = add nuw nsw i32 %572, 3
  %574 = lshr i32 %571, 3
  %575 = sub nuw nsw i32 -3, %474
  %576 = add i32 %575, %570
  br label %603

577:                                              ; preds = %583, %516
  %578 = phi i32 [ %590, %583 ], [ %479, %516 ]
  %579 = phi i32 [ %589, %583 ], [ %478, %516 ]
  %580 = phi i32 [ %584, %583 ], [ %477, %516 ]
  %581 = phi ptr [ %585, %583 ], [ %476, %516 ]
  %582 = icmp eq i32 %580, 0
  br i1 %582, label %1189, label %583

583:                                              ; preds = %577
  %584 = add i32 %580, -1
  %585 = getelementptr i8, ptr %581, i32 1
  %586 = load i8, ptr %581, align 1
  %587 = zext i8 %586 to i32
  %588 = shl i32 %587, %578
  %589 = add i32 %588, %579
  %590 = add nuw nsw i32 %578, 8
  %591 = icmp ult i32 %590, %517
  br i1 %591, label %577, label %592

592:                                              ; preds = %583, %516
  %593 = phi ptr [ %476, %516 ], [ %585, %583 ]
  %594 = phi i32 [ %477, %516 ], [ %584, %583 ]
  %595 = phi i32 [ %478, %516 ], [ %589, %583 ]
  %596 = phi i32 [ %479, %516 ], [ %590, %583 ]
  %597 = lshr i32 %595, %474
  %598 = and i32 %597, 127
  %599 = add nuw nsw i32 %598, 11
  %600 = lshr i32 %597, 7
  %601 = sub nuw nsw i32 -7, %474
  %602 = add i32 %601, %596
  br label %603

603:                                              ; preds = %592, %566, %543
  %604 = phi ptr [ %535, %543 ], [ %567, %566 ], [ %593, %592 ]
  %605 = phi i32 [ %536, %543 ], [ %568, %566 ], [ %594, %592 ]
  %606 = phi i32 [ %549, %543 ], [ %574, %566 ], [ %600, %592 ]
  %607 = phi i32 [ %550, %543 ], [ %576, %566 ], [ %602, %592 ]
  %608 = phi i32 [ %548, %543 ], [ %573, %566 ], [ %599, %592 ]
  %609 = phi i16 [ %546, %543 ], [ 0, %566 ], [ 0, %592 ]
  %610 = add i32 %608, %438
  %611 = icmp ugt i32 %610, %437
  br i1 %611, label %617, label %612

612:                                              ; preds = %603
  %613 = add nsw i32 %608, -1
  %614 = add i32 %438, 1
  store i32 %614, ptr %43, align 4
  %615 = getelementptr %struct.inflate_state, ptr %6, i32 0, i32 27, i32 %438
  store i16 %609, ptr %615, align 2
  %616 = icmp eq i32 %613, 0
  br i1 %616, label %625, label %618

617:                                              ; preds = %603
  store ptr @.str.10, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1144

618:                                              ; preds = %618, %612
  %619 = phi i32 [ %621, %618 ], [ %613, %612 ]
  %620 = load i32, ptr %43, align 4
  %621 = add nsw i32 %619, -1
  %622 = add i32 %620, 1
  store i32 %622, ptr %43, align 4
  %623 = getelementptr %struct.inflate_state, ptr %6, i32 0, i32 27, i32 %620
  store i16 %609, ptr %623, align 2
  %624 = icmp eq i32 %621, 0
  br i1 %624, label %625, label %618

625:                                              ; preds = %618, %612, %500
  %626 = phi ptr [ %501, %500 ], [ %604, %612 ], [ %604, %618 ]
  %627 = phi i32 [ %502, %500 ], [ %605, %612 ], [ %605, %618 ]
  %628 = phi i32 [ %505, %500 ], [ %606, %612 ], [ %606, %618 ]
  %629 = phi i32 [ %506, %500 ], [ %607, %612 ], [ %607, %618 ]
  %630 = load i32, ptr %43, align 4
  %631 = load i32, ptr %40, align 4
  %632 = load i32, ptr %41, align 4
  %633 = add i32 %632, %631
  %634 = icmp ult i32 %630, %633
  br i1 %634, label %436, label %635

635:                                              ; preds = %625
  %636 = load i32, ptr %6, align 4
  %637 = icmp eq i32 %636, 27
  br i1 %637, label %1144, label %638

638:                                              ; preds = %635, %425
  %639 = phi i32 [ %629, %635 ], [ %430, %425 ]
  %640 = phi i32 [ %628, %635 ], [ %429, %425 ]
  %641 = phi i32 [ %627, %635 ], [ %428, %425 ]
  %642 = phi ptr [ %626, %635 ], [ %427, %425 ]
  %643 = phi i32 [ %631, %635 ], [ %432, %425 ]
  store ptr %44, ptr %45, align 4
  store ptr %44, ptr %46, align 4
  store i32 9, ptr %47, align 4
  %644 = tail call i32 @zlib_inflate_table(i32 noundef 1, ptr noundef %48, i32 noundef %643, ptr noundef %45, ptr noundef %47, ptr noundef %49) #13
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %647, label %646

646:                                              ; preds = %638
  store ptr @.str.11, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1144

647:                                              ; preds = %638
  %648 = load ptr, ptr %45, align 4
  store ptr %648, ptr %50, align 4
  store i32 6, ptr %51, align 4
  %649 = load i32, ptr %40, align 4
  %650 = getelementptr i16, ptr %48, i32 %649
  %651 = load i32, ptr %41, align 4
  %652 = tail call i32 @zlib_inflate_table(i32 noundef 2, ptr noundef %650, i32 noundef %651, ptr noundef %45, ptr noundef %51, ptr noundef %49) #13
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %655, label %654

654:                                              ; preds = %647
  store ptr @.str.12, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1144

655:                                              ; preds = %647
  store i32 18, ptr %6, align 4
  br label %656

656:                                              ; preds = %655, %63
  %657 = phi ptr [ %65, %63 ], [ %642, %655 ]
  %658 = phi i32 [ %67, %63 ], [ %641, %655 ]
  %659 = phi i32 [ %69, %63 ], [ %640, %655 ]
  %660 = phi i32 [ %70, %63 ], [ %639, %655 ]
  %661 = phi i32 [ %72, %63 ], [ 0, %655 ]
  %662 = icmp ugt i32 %658, 5
  %663 = icmp ugt i32 %68, 257
  %664 = select i1 %662, i1 %663, i1 false
  br i1 %664, label %676, label %665

665:                                              ; preds = %656
  %666 = load ptr, ptr %46, align 4
  %667 = load i32, ptr %47, align 4
  %668 = shl nsw i32 -1, %667
  %669 = xor i32 %668, -1
  %670 = and i32 %659, %669
  %671 = getelementptr %struct.code, ptr %666, i32 %670
  %672 = getelementptr inbounds i8, ptr %671, i32 1
  %673 = load i8, ptr %672, align 1
  %674 = zext i8 %673 to i32
  %675 = icmp ult i32 %660, %674
  br i1 %675, label %683, label %705

676:                                              ; preds = %656
  store ptr %66, ptr %23, align 4
  store i32 %68, ptr %25, align 4
  store ptr %657, ptr %0, align 4
  store i32 %658, ptr %27, align 4
  store i32 %659, ptr %29, align 4
  store i32 %660, ptr %31, align 4
  tail call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %71) #13
  %677 = load ptr, ptr %23, align 4
  %678 = load i32, ptr %25, align 4
  %679 = load ptr, ptr %0, align 4
  %680 = load i32, ptr %27, align 4
  %681 = load i32, ptr %29, align 4
  %682 = load i32, ptr %31, align 4
  br label %1144

683:                                              ; preds = %689, %665
  %684 = phi i32 [ %696, %689 ], [ %660, %665 ]
  %685 = phi i32 [ %695, %689 ], [ %659, %665 ]
  %686 = phi i32 [ %690, %689 ], [ %658, %665 ]
  %687 = phi ptr [ %691, %689 ], [ %657, %665 ]
  %688 = icmp eq i32 %686, 0
  br i1 %688, label %1178, label %689

689:                                              ; preds = %683
  %690 = add i32 %686, -1
  %691 = getelementptr i8, ptr %687, i32 1
  %692 = load i8, ptr %687, align 1
  %693 = zext i8 %692 to i32
  %694 = shl i32 %693, %684
  %695 = add i32 %694, %685
  %696 = add nuw nsw i32 %684, 8
  %697 = and i32 %695, %669
  %698 = getelementptr %struct.code, ptr %666, i32 %697
  %699 = getelementptr inbounds i8, ptr %698, i32 1
  %700 = load i8, ptr %699, align 1
  %701 = zext i8 %700 to i32
  %702 = icmp ult i32 %696, %701
  br i1 %702, label %683, label %703

703:                                              ; preds = %689
  %704 = zext i8 %700 to i32
  br label %705

705:                                              ; preds = %703, %665
  %706 = phi i32 [ %674, %665 ], [ %704, %703 ]
  %707 = phi ptr [ %671, %665 ], [ %698, %703 ]
  %708 = phi ptr [ %657, %665 ], [ %691, %703 ]
  %709 = phi i32 [ %658, %665 ], [ %690, %703 ]
  %710 = phi i32 [ %659, %665 ], [ %695, %703 ]
  %711 = phi i32 [ %660, %665 ], [ %696, %703 ]
  %712 = getelementptr inbounds i8, ptr %707, i32 2
  %713 = load i16, ptr %712, align 2
  %714 = load i8, ptr %707, align 2
  %715 = zext i8 %714 to i32
  %716 = icmp ne i8 %714, 0
  %717 = and i32 %715, 240
  %718 = icmp eq i32 %717, 0
  %719 = select i1 %716, i1 %718, i1 false
  br i1 %719, label %720, label %772

720:                                              ; preds = %705
  %721 = zext i16 %713 to i32
  %722 = add nuw nsw i32 %706, %715
  %723 = shl nsw i32 -1, %722
  %724 = xor i32 %723, -1
  %725 = and i32 %710, %724
  %726 = lshr i32 %725, %706
  %727 = add i32 %726, %721
  %728 = getelementptr %struct.code, ptr %666, i32 %727
  %729 = getelementptr inbounds i8, ptr %728, i32 1
  %730 = load i8, ptr %729, align 1
  %731 = zext i8 %730 to i32
  %732 = add nuw nsw i32 %706, %731
  %733 = icmp ugt i32 %732, %711
  br i1 %733, label %734, label %759

734:                                              ; preds = %740, %720
  %735 = phi i32 [ %747, %740 ], [ %711, %720 ]
  %736 = phi i32 [ %746, %740 ], [ %710, %720 ]
  %737 = phi i32 [ %741, %740 ], [ %709, %720 ]
  %738 = phi ptr [ %742, %740 ], [ %708, %720 ]
  %739 = icmp eq i32 %737, 0
  br i1 %739, label %1174, label %740

740:                                              ; preds = %734
  %741 = add i32 %737, -1
  %742 = getelementptr i8, ptr %738, i32 1
  %743 = load i8, ptr %738, align 1
  %744 = zext i8 %743 to i32
  %745 = shl i32 %744, %735
  %746 = add i32 %745, %736
  %747 = add nuw nsw i32 %735, 8
  %748 = and i32 %746, %724
  %749 = lshr i32 %748, %706
  %750 = add i32 %749, %721
  %751 = getelementptr %struct.code, ptr %666, i32 %750
  %752 = getelementptr inbounds i8, ptr %751, i32 1
  %753 = load i8, ptr %752, align 1
  %754 = zext i8 %753 to i32
  %755 = add nuw nsw i32 %706, %754
  %756 = icmp ugt i32 %755, %747
  br i1 %756, label %734, label %757

757:                                              ; preds = %740
  %758 = zext i8 %753 to i32
  br label %759

759:                                              ; preds = %757, %720
  %760 = phi i32 [ %731, %720 ], [ %758, %757 ]
  %761 = phi ptr [ %708, %720 ], [ %742, %757 ]
  %762 = phi i32 [ %709, %720 ], [ %741, %757 ]
  %763 = phi i32 [ %710, %720 ], [ %746, %757 ]
  %764 = phi i32 [ %711, %720 ], [ %747, %757 ]
  %765 = phi ptr [ %728, %720 ], [ %751, %757 ]
  %766 = getelementptr inbounds i8, ptr %765, i32 2
  %767 = load i16, ptr %766, align 2
  %768 = load i8, ptr %765, align 2
  %769 = lshr i32 %763, %706
  %770 = sub i32 %764, %706
  %771 = zext i8 %768 to i32
  br label %772

772:                                              ; preds = %759, %705
  %773 = phi i32 [ %715, %705 ], [ %771, %759 ]
  %774 = phi i32 [ %706, %705 ], [ %760, %759 ]
  %775 = phi ptr [ %708, %705 ], [ %761, %759 ]
  %776 = phi i32 [ %709, %705 ], [ %762, %759 ]
  %777 = phi i32 [ %710, %705 ], [ %769, %759 ]
  %778 = phi i32 [ %711, %705 ], [ %770, %759 ]
  %779 = phi i8 [ %714, %705 ], [ %768, %759 ]
  %780 = phi i16 [ %713, %705 ], [ %767, %759 ]
  %781 = lshr i32 %777, %774
  %782 = sub i32 %778, %774
  %783 = zext i16 %780 to i32
  store i32 %783, ptr %39, align 4
  %784 = icmp eq i8 %779, 0
  br i1 %784, label %785, label %786

785:                                              ; preds = %772
  store i32 23, ptr %6, align 4
  br label %1144

786:                                              ; preds = %772
  %787 = and i32 %773, 32
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %790, label %789

789:                                              ; preds = %786
  store i32 11, ptr %6, align 4
  br label %1144

790:                                              ; preds = %786
  %791 = and i32 %773, 64
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %794, label %793

793:                                              ; preds = %790
  store ptr @.str.2, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1144

794:                                              ; preds = %790
  %795 = and i32 %773, 15
  store i32 %795, ptr %52, align 4
  store i32 19, ptr %6, align 4
  br label %796

796:                                              ; preds = %794, %77
  %797 = phi i32 [ %78, %77 ], [ %795, %794 ]
  %798 = phi ptr [ %65, %77 ], [ %775, %794 ]
  %799 = phi i32 [ %67, %77 ], [ %776, %794 ]
  %800 = phi i32 [ %69, %77 ], [ %781, %794 ]
  %801 = phi i32 [ %70, %77 ], [ %782, %794 ]
  %802 = phi i32 [ %72, %77 ], [ %661, %794 ]
  %803 = icmp eq i32 %797, 0
  br i1 %803, label %833, label %804

804:                                              ; preds = %796
  %805 = icmp ult i32 %801, %797
  br i1 %805, label %806, label %821

806:                                              ; preds = %812, %804
  %807 = phi i32 [ %819, %812 ], [ %801, %804 ]
  %808 = phi i32 [ %818, %812 ], [ %800, %804 ]
  %809 = phi i32 [ %813, %812 ], [ %799, %804 ]
  %810 = phi ptr [ %814, %812 ], [ %798, %804 ]
  %811 = icmp eq i32 %809, 0
  br i1 %811, label %1170, label %812

812:                                              ; preds = %806
  %813 = add i32 %809, -1
  %814 = getelementptr i8, ptr %810, i32 1
  %815 = load i8, ptr %810, align 1
  %816 = zext i8 %815 to i32
  %817 = shl i32 %816, %807
  %818 = add i32 %817, %808
  %819 = add i32 %807, 8
  %820 = icmp ult i32 %819, %797
  br i1 %820, label %806, label %821

821:                                              ; preds = %812, %804
  %822 = phi ptr [ %798, %804 ], [ %814, %812 ]
  %823 = phi i32 [ %799, %804 ], [ %813, %812 ]
  %824 = phi i32 [ %800, %804 ], [ %818, %812 ]
  %825 = phi i32 [ %801, %804 ], [ %819, %812 ]
  %826 = shl nsw i32 -1, %797
  %827 = xor i32 %826, -1
  %828 = and i32 %824, %827
  %829 = load i32, ptr %39, align 4
  %830 = add i32 %829, %828
  store i32 %830, ptr %39, align 4
  %831 = lshr i32 %824, %797
  %832 = sub i32 %825, %797
  br label %833

833:                                              ; preds = %821, %796
  %834 = phi ptr [ %822, %821 ], [ %798, %796 ]
  %835 = phi i32 [ %823, %821 ], [ %799, %796 ]
  %836 = phi i32 [ %831, %821 ], [ %800, %796 ]
  %837 = phi i32 [ %832, %821 ], [ %801, %796 ]
  store i32 20, ptr %6, align 4
  br label %838

838:                                              ; preds = %833, %63
  %839 = phi ptr [ %65, %63 ], [ %834, %833 ]
  %840 = phi i32 [ %67, %63 ], [ %835, %833 ]
  %841 = phi i32 [ %69, %63 ], [ %836, %833 ]
  %842 = phi i32 [ %70, %63 ], [ %837, %833 ]
  %843 = phi i32 [ %72, %63 ], [ %802, %833 ]
  %844 = load ptr, ptr %50, align 4
  %845 = load i32, ptr %51, align 4
  %846 = shl nsw i32 -1, %845
  %847 = xor i32 %846, -1
  %848 = and i32 %841, %847
  %849 = getelementptr %struct.code, ptr %844, i32 %848
  %850 = getelementptr inbounds i8, ptr %849, i32 1
  %851 = load i8, ptr %850, align 1
  %852 = zext i8 %851 to i32
  %853 = icmp ult i32 %842, %852
  br i1 %853, label %854, label %876

854:                                              ; preds = %860, %838
  %855 = phi i32 [ %867, %860 ], [ %842, %838 ]
  %856 = phi i32 [ %866, %860 ], [ %841, %838 ]
  %857 = phi i32 [ %861, %860 ], [ %840, %838 ]
  %858 = phi ptr [ %862, %860 ], [ %839, %838 ]
  %859 = icmp eq i32 %857, 0
  br i1 %859, label %1166, label %860

860:                                              ; preds = %854
  %861 = add i32 %857, -1
  %862 = getelementptr i8, ptr %858, i32 1
  %863 = load i8, ptr %858, align 1
  %864 = zext i8 %863 to i32
  %865 = shl i32 %864, %855
  %866 = add i32 %865, %856
  %867 = add nuw nsw i32 %855, 8
  %868 = and i32 %866, %847
  %869 = getelementptr %struct.code, ptr %844, i32 %868
  %870 = getelementptr inbounds i8, ptr %869, i32 1
  %871 = load i8, ptr %870, align 1
  %872 = zext i8 %871 to i32
  %873 = icmp ult i32 %867, %872
  br i1 %873, label %854, label %874

874:                                              ; preds = %860
  %875 = zext i8 %871 to i32
  br label %876

876:                                              ; preds = %874, %838
  %877 = phi i32 [ %852, %838 ], [ %875, %874 ]
  %878 = phi ptr [ %849, %838 ], [ %869, %874 ]
  %879 = phi ptr [ %839, %838 ], [ %862, %874 ]
  %880 = phi i32 [ %840, %838 ], [ %861, %874 ]
  %881 = phi i32 [ %841, %838 ], [ %866, %874 ]
  %882 = phi i32 [ %842, %838 ], [ %867, %874 ]
  %883 = getelementptr inbounds i8, ptr %878, i32 2
  %884 = load i16, ptr %883, align 2
  %885 = load i8, ptr %878, align 2
  %886 = zext i8 %885 to i32
  %887 = and i32 %886, 240
  %888 = icmp eq i32 %887, 0
  br i1 %888, label %889, label %941

889:                                              ; preds = %876
  %890 = zext i16 %884 to i32
  %891 = add nuw nsw i32 %877, %886
  %892 = shl nsw i32 -1, %891
  %893 = xor i32 %892, -1
  %894 = and i32 %881, %893
  %895 = lshr i32 %894, %877
  %896 = add i32 %895, %890
  %897 = getelementptr %struct.code, ptr %844, i32 %896
  %898 = getelementptr inbounds i8, ptr %897, i32 1
  %899 = load i8, ptr %898, align 1
  %900 = zext i8 %899 to i32
  %901 = add nuw nsw i32 %877, %900
  %902 = icmp ugt i32 %901, %882
  br i1 %902, label %903, label %928

903:                                              ; preds = %909, %889
  %904 = phi i32 [ %916, %909 ], [ %882, %889 ]
  %905 = phi i32 [ %915, %909 ], [ %881, %889 ]
  %906 = phi i32 [ %910, %909 ], [ %880, %889 ]
  %907 = phi ptr [ %911, %909 ], [ %879, %889 ]
  %908 = icmp eq i32 %906, 0
  br i1 %908, label %1162, label %909

909:                                              ; preds = %903
  %910 = add i32 %906, -1
  %911 = getelementptr i8, ptr %907, i32 1
  %912 = load i8, ptr %907, align 1
  %913 = zext i8 %912 to i32
  %914 = shl i32 %913, %904
  %915 = add i32 %914, %905
  %916 = add nuw nsw i32 %904, 8
  %917 = and i32 %915, %893
  %918 = lshr i32 %917, %877
  %919 = add i32 %918, %890
  %920 = getelementptr %struct.code, ptr %844, i32 %919
  %921 = getelementptr inbounds i8, ptr %920, i32 1
  %922 = load i8, ptr %921, align 1
  %923 = zext i8 %922 to i32
  %924 = add nuw nsw i32 %877, %923
  %925 = icmp ugt i32 %924, %916
  br i1 %925, label %903, label %926

926:                                              ; preds = %909
  %927 = zext i8 %922 to i32
  br label %928

928:                                              ; preds = %926, %889
  %929 = phi i32 [ %900, %889 ], [ %927, %926 ]
  %930 = phi ptr [ %879, %889 ], [ %911, %926 ]
  %931 = phi i32 [ %880, %889 ], [ %910, %926 ]
  %932 = phi i32 [ %881, %889 ], [ %915, %926 ]
  %933 = phi i32 [ %882, %889 ], [ %916, %926 ]
  %934 = phi ptr [ %897, %889 ], [ %920, %926 ]
  %935 = getelementptr inbounds i8, ptr %934, i32 2
  %936 = load i16, ptr %935, align 2
  %937 = load i8, ptr %934, align 2
  %938 = lshr i32 %932, %877
  %939 = sub i32 %933, %877
  %940 = zext i8 %937 to i32
  br label %941

941:                                              ; preds = %928, %876
  %942 = phi i32 [ %886, %876 ], [ %940, %928 ]
  %943 = phi i32 [ %877, %876 ], [ %929, %928 ]
  %944 = phi ptr [ %879, %876 ], [ %930, %928 ]
  %945 = phi i32 [ %880, %876 ], [ %931, %928 ]
  %946 = phi i32 [ %881, %876 ], [ %938, %928 ]
  %947 = phi i32 [ %882, %876 ], [ %939, %928 ]
  %948 = phi i16 [ %884, %876 ], [ %936, %928 ]
  %949 = lshr i32 %946, %943
  %950 = sub i32 %947, %943
  %951 = and i32 %942, 64
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %954, label %953

953:                                              ; preds = %941
  store ptr @.str.1, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1144

954:                                              ; preds = %941
  %955 = zext i16 %948 to i32
  store i32 %955, ptr %53, align 4
  %956 = and i32 %942, 15
  store i32 %956, ptr %52, align 4
  store i32 21, ptr %6, align 4
  br label %957

957:                                              ; preds = %954, %75
  %958 = phi i32 [ %76, %75 ], [ %956, %954 ]
  %959 = phi ptr [ %65, %75 ], [ %944, %954 ]
  %960 = phi i32 [ %67, %75 ], [ %945, %954 ]
  %961 = phi i32 [ %69, %75 ], [ %949, %954 ]
  %962 = phi i32 [ %70, %75 ], [ %950, %954 ]
  %963 = phi i32 [ %72, %75 ], [ %843, %954 ]
  %964 = icmp eq i32 %958, 0
  br i1 %964, label %965, label %967

965:                                              ; preds = %957
  %966 = load i32, ptr %53, align 4
  br label %996

967:                                              ; preds = %957
  %968 = icmp ult i32 %962, %958
  br i1 %968, label %969, label %984

969:                                              ; preds = %975, %967
  %970 = phi i32 [ %982, %975 ], [ %962, %967 ]
  %971 = phi i32 [ %981, %975 ], [ %961, %967 ]
  %972 = phi i32 [ %976, %975 ], [ %960, %967 ]
  %973 = phi ptr [ %977, %975 ], [ %959, %967 ]
  %974 = icmp eq i32 %972, 0
  br i1 %974, label %1158, label %975

975:                                              ; preds = %969
  %976 = add i32 %972, -1
  %977 = getelementptr i8, ptr %973, i32 1
  %978 = load i8, ptr %973, align 1
  %979 = zext i8 %978 to i32
  %980 = shl i32 %979, %970
  %981 = add i32 %980, %971
  %982 = add i32 %970, 8
  %983 = icmp ult i32 %982, %958
  br i1 %983, label %969, label %984

984:                                              ; preds = %975, %967
  %985 = phi ptr [ %959, %967 ], [ %977, %975 ]
  %986 = phi i32 [ %960, %967 ], [ %976, %975 ]
  %987 = phi i32 [ %961, %967 ], [ %981, %975 ]
  %988 = phi i32 [ %962, %967 ], [ %982, %975 ]
  %989 = shl nsw i32 -1, %958
  %990 = xor i32 %989, -1
  %991 = and i32 %987, %990
  %992 = load i32, ptr %53, align 4
  %993 = add i32 %992, %991
  store i32 %993, ptr %53, align 4
  %994 = lshr i32 %987, %958
  %995 = sub i32 %988, %958
  br label %996

996:                                              ; preds = %984, %965
  %997 = phi i32 [ %993, %984 ], [ %966, %965 ]
  %998 = phi ptr [ %985, %984 ], [ %959, %965 ]
  %999 = phi i32 [ %986, %984 ], [ %960, %965 ]
  %1000 = phi i32 [ %994, %984 ], [ %961, %965 ]
  %1001 = phi i32 [ %995, %984 ], [ %962, %965 ]
  %1002 = load i32, ptr %54, align 4
  %1003 = sub i32 %71, %68
  %1004 = add i32 %1003, %1002
  %1005 = icmp ugt i32 %997, %1004
  br i1 %1005, label %1006, label %1007

1006:                                             ; preds = %996
  store ptr @.str, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1144

1007:                                             ; preds = %996
  store i32 22, ptr %6, align 4
  br label %1008

1008:                                             ; preds = %1007, %63
  %1009 = phi ptr [ %65, %63 ], [ %998, %1007 ]
  %1010 = phi i32 [ %67, %63 ], [ %999, %1007 ]
  %1011 = phi i32 [ %69, %63 ], [ %1000, %1007 ]
  %1012 = phi i32 [ %70, %63 ], [ %1001, %1007 ]
  %1013 = phi i32 [ %72, %63 ], [ %963, %1007 ]
  %1014 = icmp eq i32 %68, 0
  br i1 %1014, label %1182, label %1015

1015:                                             ; preds = %1008
  %1016 = sub i32 %71, %68
  %1017 = load i32, ptr %53, align 4
  %1018 = icmp ugt i32 %1017, %1016
  br i1 %1018, label %1019, label %1038

1019:                                             ; preds = %1015
  %1020 = sub i32 %1017, %1016
  %1021 = load i32, ptr %55, align 4
  %1022 = icmp ugt i32 %1020, %1021
  br i1 %1022, label %1023, label %1029

1023:                                             ; preds = %1019
  %1024 = sub i32 %1020, %1021
  %1025 = load ptr, ptr %56, align 4
  %1026 = load i32, ptr %57, align 4
  %1027 = sub i32 %1026, %1024
  %1028 = getelementptr i8, ptr %1025, i32 %1027
  br label %1033

1029:                                             ; preds = %1019
  %1030 = load ptr, ptr %56, align 4
  %1031 = sub i32 %1021, %1020
  %1032 = getelementptr i8, ptr %1030, i32 %1031
  br label %1033

1033:                                             ; preds = %1029, %1023
  %1034 = phi i32 [ %1024, %1023 ], [ %1020, %1029 ]
  %1035 = phi ptr [ %1028, %1023 ], [ %1032, %1029 ]
  %1036 = load i32, ptr %39, align 4
  %1037 = tail call i32 @llvm.umin.i32(i32 %1034, i32 %1036)
  br label %1042

1038:                                             ; preds = %1015
  %1039 = sub i32 0, %1017
  %1040 = getelementptr i8, ptr %66, i32 %1039
  %1041 = load i32, ptr %39, align 4
  br label %1042

1042:                                             ; preds = %1038, %1033
  %1043 = phi i32 [ %1041, %1038 ], [ %1036, %1033 ]
  %1044 = phi i32 [ %1041, %1038 ], [ %1037, %1033 ]
  %1045 = phi ptr [ %1040, %1038 ], [ %1035, %1033 ]
  %1046 = tail call i32 @llvm.umin.i32(i32 %1044, i32 %68)
  %1047 = sub i32 %1043, %1046
  store i32 %1047, ptr %39, align 4
  br label %1048

1048:                                             ; preds = %1048, %1042
  %1049 = phi ptr [ %66, %1042 ], [ %1054, %1048 ]
  %1050 = phi i32 [ %1046, %1042 ], [ %1055, %1048 ]
  %1051 = phi ptr [ %1045, %1042 ], [ %1052, %1048 ]
  %1052 = getelementptr i8, ptr %1051, i32 1
  %1053 = load i8, ptr %1051, align 1
  %1054 = getelementptr i8, ptr %1049, i32 1
  store i8 %1053, ptr %1049, align 1
  %1055 = add i32 %1050, -1
  %1056 = icmp eq i32 %1055, 0
  br i1 %1056, label %1057, label %1048

1057:                                             ; preds = %1048
  %1058 = sub i32 %68, %1046
  %1059 = load i32, ptr %39, align 4
  %1060 = icmp eq i32 %1059, 0
  br i1 %1060, label %1061, label %1144

1061:                                             ; preds = %1057
  store i32 18, ptr %6, align 4
  br label %1144

1062:                                             ; preds = %63
  %1063 = icmp eq i32 %68, 0
  br i1 %1063, label %1182, label %1064

1064:                                             ; preds = %1062
  %1065 = load i32, ptr %39, align 4
  %1066 = trunc i32 %1065 to i8
  %1067 = getelementptr i8, ptr %66, i32 1
  store i8 %1066, ptr %66, align 1
  %1068 = add i32 %68, -1
  store i32 18, ptr %6, align 4
  br label %1144

1069:                                             ; preds = %63
  %1070 = load i32, ptr %33, align 4
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1138, label %1072

1072:                                             ; preds = %1069
  %1073 = icmp ult i32 %70, 32
  br i1 %1073, label %1074, label %1117

1074:                                             ; preds = %1072
  %1075 = icmp eq i32 %67, 0
  br i1 %1075, label %1189, label %1076

1076:                                             ; preds = %1074
  %1077 = add i32 %67, -1
  %1078 = getelementptr i8, ptr %65, i32 1
  %1079 = load i8, ptr %65, align 1
  %1080 = zext i8 %1079 to i32
  %1081 = shl i32 %1080, %70
  %1082 = add i32 %1081, %69
  %1083 = add nuw nsw i32 %70, 8
  %1084 = icmp ult i32 %70, 24
  br i1 %1084, label %1085, label %1117

1085:                                             ; preds = %1076
  %1086 = icmp eq i32 %1077, 0
  br i1 %1086, label %1189, label %1087

1087:                                             ; preds = %1085
  %1088 = add i32 %67, -2
  %1089 = getelementptr i8, ptr %65, i32 2
  %1090 = load i8, ptr %1078, align 1
  %1091 = zext i8 %1090 to i32
  %1092 = shl i32 %1091, %1083
  %1093 = add i32 %1092, %1082
  %1094 = add nuw nsw i32 %70, 16
  %1095 = icmp ult i32 %70, 16
  br i1 %1095, label %1096, label %1117

1096:                                             ; preds = %1087
  %1097 = icmp eq i32 %1088, 0
  br i1 %1097, label %1189, label %1098

1098:                                             ; preds = %1096
  %1099 = add i32 %67, -3
  %1100 = getelementptr i8, ptr %65, i32 3
  %1101 = load i8, ptr %1089, align 1
  %1102 = zext i8 %1101 to i32
  %1103 = shl i32 %1102, %1094
  %1104 = add i32 %1103, %1093
  %1105 = add nuw nsw i32 %70, 24
  %1106 = icmp ult i32 %70, 8
  br i1 %1106, label %1107, label %1117

1107:                                             ; preds = %1098
  %1108 = icmp eq i32 %1099, 0
  br i1 %1108, label %1189, label %1109

1109:                                             ; preds = %1107
  %1110 = add i32 %67, -4
  %1111 = getelementptr i8, ptr %65, i32 4
  %1112 = load i8, ptr %1100, align 1
  %1113 = zext i8 %1112 to i32
  %1114 = shl i32 %1113, %1105
  %1115 = add i32 %1114, %1104
  %1116 = add nuw nsw i32 %70, 32
  br label %1117

1117:                                             ; preds = %1109, %1098, %1087, %1076, %1072
  %1118 = phi ptr [ %65, %1072 ], [ %1078, %1076 ], [ %1089, %1087 ], [ %1100, %1098 ], [ %1111, %1109 ]
  %1119 = phi i32 [ %67, %1072 ], [ %1077, %1076 ], [ %1088, %1087 ], [ %1099, %1098 ], [ %1110, %1109 ]
  %1120 = phi i32 [ %69, %1072 ], [ %1082, %1076 ], [ %1093, %1087 ], [ %1104, %1098 ], [ %1115, %1109 ]
  %1121 = phi i32 [ %70, %1072 ], [ %1083, %1076 ], [ %1094, %1087 ], [ %1105, %1098 ], [ %1116, %1109 ]
  %1122 = sub i32 %71, %68
  %1123 = load i32, ptr %34, align 4
  %1124 = add i32 %1123, %1122
  store i32 %1124, ptr %34, align 4
  %1125 = load i32, ptr %35, align 4
  %1126 = add i32 %1125, %1122
  store i32 %1126, ptr %35, align 4
  %1127 = icmp eq i32 %71, %68
  br i1 %1127, label %1133, label %1128

1128:                                             ; preds = %1117
  %1129 = load i32, ptr %36, align 4
  %1130 = sub i32 0, %1122
  %1131 = getelementptr i8, ptr %66, i32 %1130
  %1132 = tail call fastcc i32 @zlib_adler32(i32 noundef %1129, ptr noundef %1131, i32 noundef %1122) #13
  store i32 %1132, ptr %36, align 4
  store i32 %1132, ptr %37, align 4
  br label %1133

1133:                                             ; preds = %1128, %1117
  %1134 = tail call i32 @llvm.bswap.i32(i32 %1120)
  %1135 = load i32, ptr %36, align 4
  %1136 = icmp eq i32 %1134, %1135
  br i1 %1136, label %1138, label %1137

1137:                                             ; preds = %1133
  store ptr @.str.13, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1144

1138:                                             ; preds = %1133, %1069
  %1139 = phi ptr [ %65, %1069 ], [ %1118, %1133 ]
  %1140 = phi i32 [ %67, %1069 ], [ %1119, %1133 ]
  %1141 = phi i32 [ %69, %1069 ], [ 0, %1133 ]
  %1142 = phi i32 [ %70, %1069 ], [ 0, %1133 ]
  %1143 = phi i32 [ %71, %1069 ], [ %68, %1133 ]
  store i32 26, ptr %6, align 4
  br label %1189

1144:                                             ; preds = %1137, %1064, %1061, %1057, %1006, %953, %793, %789, %785, %676, %654, %646, %635, %617, %542, %423, %359, %319, %311, %298, %237, %211, %136, %134, %127, %123, %90
  %1145 = phi ptr [ %1118, %1137 ], [ %65, %1064 ], [ %1009, %1061 ], [ %1009, %1057 ], [ %998, %1006 ], [ %944, %953 ], [ %679, %676 ], [ %775, %785 ], [ %775, %789 ], [ %775, %793 ], [ %626, %635 ], [ %642, %646 ], [ %642, %654 ], [ %373, %423 ], [ %342, %359 ], [ %314, %311 ], [ %302, %319 ], [ %290, %298 ], [ %203, %211 ], [ %226, %237 ], [ %65, %90 ], [ %113, %123 ], [ %113, %127 ], [ %113, %134 ], [ %113, %136 ], [ %604, %617 ], [ %535, %542 ]
  %1146 = phi ptr [ %66, %1137 ], [ %1067, %1064 ], [ %1054, %1061 ], [ %1054, %1057 ], [ %66, %1006 ], [ %66, %953 ], [ %677, %676 ], [ %66, %785 ], [ %66, %789 ], [ %66, %793 ], [ %66, %635 ], [ %66, %646 ], [ %66, %654 ], [ %66, %423 ], [ %66, %359 ], [ %316, %311 ], [ %66, %319 ], [ %66, %298 ], [ %66, %211 ], [ %66, %237 ], [ %66, %90 ], [ %66, %123 ], [ %66, %127 ], [ %66, %134 ], [ %66, %136 ], [ %66, %617 ], [ %66, %542 ]
  %1147 = phi i32 [ %1119, %1137 ], [ %67, %1064 ], [ %1010, %1061 ], [ %1010, %1057 ], [ %999, %1006 ], [ %945, %953 ], [ %680, %676 ], [ %776, %785 ], [ %776, %789 ], [ %776, %793 ], [ %627, %635 ], [ %641, %646 ], [ %641, %654 ], [ %374, %423 ], [ %343, %359 ], [ %313, %311 ], [ %303, %319 ], [ %291, %298 ], [ %204, %211 ], [ %227, %237 ], [ %67, %90 ], [ %114, %123 ], [ %114, %127 ], [ %114, %134 ], [ %114, %136 ], [ %605, %617 ], [ %536, %542 ]
  %1148 = phi i32 [ %68, %1137 ], [ %1068, %1064 ], [ %1058, %1061 ], [ %1058, %1057 ], [ %68, %1006 ], [ %68, %953 ], [ %678, %676 ], [ %68, %785 ], [ %68, %789 ], [ %68, %793 ], [ %68, %635 ], [ %68, %646 ], [ %68, %654 ], [ %68, %423 ], [ %68, %359 ], [ %315, %311 ], [ %68, %319 ], [ %68, %298 ], [ %68, %211 ], [ %68, %237 ], [ %68, %90 ], [ %68, %123 ], [ %68, %127 ], [ %68, %134 ], [ %68, %136 ], [ %68, %617 ], [ %68, %542 ]
  %1149 = phi i32 [ %1120, %1137 ], [ %69, %1064 ], [ %1011, %1061 ], [ %1011, %1057 ], [ %1000, %1006 ], [ %949, %953 ], [ %681, %676 ], [ %781, %785 ], [ %781, %789 ], [ %781, %793 ], [ %628, %635 ], [ %640, %646 ], [ %640, %654 ], [ %375, %423 ], [ %354, %359 ], [ %304, %311 ], [ %304, %319 ], [ %292, %298 ], [ %213, %211 ], [ %239, %237 ], [ %69, %90 ], [ %115, %123 ], [ %115, %127 ], [ %129, %134 ], [ 0, %136 ], [ %606, %617 ], [ %539, %542 ]
  %1150 = phi i32 [ %1121, %1137 ], [ %70, %1064 ], [ %1012, %1061 ], [ %1012, %1057 ], [ %1001, %1006 ], [ %950, %953 ], [ %682, %676 ], [ %782, %785 ], [ %782, %789 ], [ %782, %793 ], [ %629, %635 ], [ %639, %646 ], [ %639, %654 ], [ %376, %423 ], [ %355, %359 ], [ %305, %311 ], [ %305, %319 ], [ %293, %298 ], [ %214, %211 ], [ %240, %237 ], [ %70, %90 ], [ %116, %123 ], [ %116, %127 ], [ %135, %134 ], [ 0, %136 ], [ %607, %617 ], [ %540, %542 ]
  %1151 = phi i32 [ %68, %1137 ], [ %71, %1064 ], [ %71, %1061 ], [ %71, %1057 ], [ %71, %1006 ], [ %71, %953 ], [ %71, %676 ], [ %71, %785 ], [ %71, %789 ], [ %71, %793 ], [ %71, %635 ], [ %71, %646 ], [ %71, %654 ], [ %71, %423 ], [ %71, %359 ], [ %71, %311 ], [ %71, %319 ], [ %71, %298 ], [ %71, %211 ], [ %71, %237 ], [ %71, %90 ], [ %71, %123 ], [ %71, %127 ], [ %71, %134 ], [ %71, %136 ], [ %71, %617 ], [ %71, %542 ]
  %1152 = phi i32 [ %72, %1137 ], [ %72, %1064 ], [ %1013, %1061 ], [ %1013, %1057 ], [ %963, %1006 ], [ %843, %953 ], [ %661, %676 ], [ %661, %785 ], [ %661, %789 ], [ %661, %793 ], [ %431, %635 ], [ %644, %646 ], [ %652, %654 ], [ %421, %423 ], [ %72, %359 ], [ %72, %311 ], [ %72, %319 ], [ %72, %298 ], [ %72, %211 ], [ %72, %237 ], [ %72, %90 ], [ %72, %123 ], [ %72, %127 ], [ %72, %134 ], [ %72, %136 ], [ %431, %617 ], [ %431, %542 ]
  %1153 = load i32, ptr %6, align 4
  br label %63

1154:                                             ; preds = %452
  %1155 = shl i32 %441, 3
  %1156 = add i32 %439, %1155
  %1157 = getelementptr i8, ptr %442, i32 %441
  br label %1189

1158:                                             ; preds = %969
  %1159 = shl i32 %960, 3
  %1160 = add i32 %962, %1159
  %1161 = getelementptr i8, ptr %959, i32 %960
  br label %1189

1162:                                             ; preds = %903
  %1163 = shl i32 %880, 3
  %1164 = add i32 %882, %1163
  %1165 = getelementptr i8, ptr %879, i32 %880
  br label %1189

1166:                                             ; preds = %854
  %1167 = shl i32 %840, 3
  %1168 = add i32 %842, %1167
  %1169 = getelementptr i8, ptr %839, i32 %840
  br label %1189

1170:                                             ; preds = %806
  %1171 = shl i32 %799, 3
  %1172 = add i32 %801, %1171
  %1173 = getelementptr i8, ptr %798, i32 %799
  br label %1189

1174:                                             ; preds = %734
  %1175 = shl i32 %709, 3
  %1176 = add i32 %711, %1175
  %1177 = getelementptr i8, ptr %708, i32 %709
  br label %1189

1178:                                             ; preds = %683
  %1179 = shl i32 %658, 3
  %1180 = add i32 %660, %1179
  %1181 = getelementptr i8, ptr %657, i32 %658
  br label %1189

1182:                                             ; preds = %1062, %1008, %307, %197, %63
  %1183 = phi i32 [ 0, %1062 ], [ 0, %1008 ], [ %68, %307 ], [ %68, %197 ], [ %68, %63 ]
  %1184 = phi ptr [ %65, %1062 ], [ %1009, %1008 ], [ %302, %307 ], [ %198, %197 ], [ %65, %63 ]
  %1185 = phi i32 [ %67, %1062 ], [ %1010, %1008 ], [ %303, %307 ], [ %199, %197 ], [ %67, %63 ]
  %1186 = phi i32 [ %69, %1062 ], [ %1011, %1008 ], [ %304, %307 ], [ %200, %197 ], [ %69, %63 ]
  %1187 = phi i32 [ %70, %1062 ], [ %1012, %1008 ], [ %305, %307 ], [ %201, %197 ], [ %70, %63 ]
  %1188 = phi i32 [ %72, %1062 ], [ %1013, %1008 ], [ %72, %307 ], [ %72, %197 ], [ 1, %63 ]
  br label %1189

1189:                                             ; preds = %1182, %1178, %1174, %1170, %1166, %1162, %1158, %1154, %1138, %1107, %1096, %1085, %1074, %577, %551, %519, %485, %386, %331, %320, %279, %268, %257, %246, %215, %174, %163, %152, %141, %102, %91, %63
  %1190 = phi i32 [ %68, %1138 ], [ %68, %1154 ], [ %68, %1158 ], [ %68, %1162 ], [ %68, %1166 ], [ %68, %1170 ], [ %68, %1174 ], [ %68, %1178 ], [ %1183, %1182 ], [ %68, %63 ], [ %68, %215 ], [ %68, %485 ], [ %68, %577 ], [ %68, %519 ], [ %68, %551 ], [ %68, %102 ], [ %68, %91 ], [ %68, %174 ], [ %68, %163 ], [ %68, %152 ], [ %68, %141 ], [ %68, %279 ], [ %68, %268 ], [ %68, %257 ], [ %68, %246 ], [ %68, %386 ], [ %68, %331 ], [ %68, %320 ], [ %68, %1107 ], [ %68, %1096 ], [ %68, %1085 ], [ %68, %1074 ]
  %1191 = phi ptr [ %1139, %1138 ], [ %1157, %1154 ], [ %1161, %1158 ], [ %1165, %1162 ], [ %1169, %1166 ], [ %1173, %1170 ], [ %1177, %1174 ], [ %1181, %1178 ], [ %1184, %1182 ], [ %203, %215 ], [ %65, %63 ], [ %489, %485 ], [ %581, %577 ], [ %523, %519 ], [ %555, %551 ], [ %65, %91 ], [ %95, %102 ], [ %65, %141 ], [ %145, %152 ], [ %156, %163 ], [ %167, %174 ], [ %65, %246 ], [ %250, %257 ], [ %261, %268 ], [ %272, %279 ], [ %384, %386 ], [ %65, %320 ], [ %324, %331 ], [ %65, %1074 ], [ %1078, %1085 ], [ %1089, %1096 ], [ %1100, %1107 ]
  %1192 = phi i32 [ %1140, %1138 ], [ 0, %1154 ], [ 0, %1158 ], [ 0, %1162 ], [ 0, %1166 ], [ 0, %1170 ], [ 0, %1174 ], [ 0, %1178 ], [ %1185, %1182 ], [ 0, %215 ], [ %67, %63 ], [ 0, %485 ], [ 0, %577 ], [ 0, %519 ], [ 0, %551 ], [ 0, %102 ], [ 0, %91 ], [ 0, %174 ], [ 0, %163 ], [ 0, %152 ], [ 0, %141 ], [ 0, %279 ], [ 0, %268 ], [ 0, %257 ], [ 0, %246 ], [ 0, %386 ], [ 0, %331 ], [ 0, %320 ], [ 0, %1107 ], [ 0, %1096 ], [ 0, %1085 ], [ 0, %1074 ]
  %1193 = phi i32 [ %1141, %1138 ], [ %454, %1154 ], [ %971, %1158 ], [ %905, %1162 ], [ %856, %1166 ], [ %808, %1170 ], [ %736, %1174 ], [ %685, %1178 ], [ %1186, %1182 ], [ %205, %215 ], [ %69, %63 ], [ %487, %485 ], [ %579, %577 ], [ %521, %519 ], [ %553, %551 ], [ %69, %91 ], [ %99, %102 ], [ %69, %141 ], [ %149, %152 ], [ %160, %163 ], [ %171, %174 ], [ %243, %246 ], [ %254, %257 ], [ %265, %268 ], [ %276, %279 ], [ %382, %386 ], [ %69, %320 ], [ %328, %331 ], [ %69, %1074 ], [ %1082, %1085 ], [ %1093, %1096 ], [ %1104, %1107 ]
  %1194 = phi i32 [ %1142, %1138 ], [ %1156, %1154 ], [ %1160, %1158 ], [ %1164, %1162 ], [ %1168, %1166 ], [ %1172, %1170 ], [ %1176, %1174 ], [ %1180, %1178 ], [ %1187, %1182 ], [ %206, %215 ], [ %70, %63 ], [ %486, %485 ], [ %578, %577 ], [ %520, %519 ], [ %552, %551 ], [ %70, %91 ], [ %100, %102 ], [ %70, %141 ], [ %150, %152 ], [ %161, %163 ], [ %172, %174 ], [ %244, %246 ], [ %255, %257 ], [ %266, %268 ], [ %277, %279 ], [ %381, %386 ], [ %70, %320 ], [ %329, %331 ], [ %70, %1074 ], [ %1083, %1085 ], [ %1094, %1096 ], [ %1105, %1107 ]
  %1195 = phi i32 [ %1143, %1138 ], [ %71, %1154 ], [ %71, %1158 ], [ %71, %1162 ], [ %71, %1166 ], [ %71, %1170 ], [ %71, %1174 ], [ %71, %1178 ], [ %71, %1182 ], [ %71, %63 ], [ %71, %215 ], [ %71, %485 ], [ %71, %577 ], [ %71, %519 ], [ %71, %551 ], [ %71, %102 ], [ %71, %91 ], [ %71, %174 ], [ %71, %163 ], [ %71, %152 ], [ %71, %141 ], [ %71, %279 ], [ %71, %268 ], [ %71, %257 ], [ %71, %246 ], [ %71, %386 ], [ %71, %331 ], [ %71, %320 ], [ %71, %1107 ], [ %71, %1096 ], [ %71, %1085 ], [ %71, %1074 ]
  %1196 = phi i32 [ 1, %1138 ], [ %431, %1154 ], [ %963, %1158 ], [ %843, %1162 ], [ %843, %1166 ], [ %802, %1170 ], [ %661, %1174 ], [ %661, %1178 ], [ %1188, %1182 ], [ %72, %215 ], [ -3, %63 ], [ %431, %485 ], [ %431, %577 ], [ %431, %519 ], [ %431, %551 ], [ %72, %102 ], [ %72, %91 ], [ %72, %174 ], [ %72, %163 ], [ %72, %152 ], [ %72, %141 ], [ %72, %279 ], [ %72, %268 ], [ %72, %257 ], [ %72, %246 ], [ %72, %386 ], [ %72, %331 ], [ %72, %320 ], [ %72, %1107 ], [ %72, %1096 ], [ %72, %1085 ], [ %72, %1074 ]
  store ptr %66, ptr %23, align 4
  store i32 %1190, ptr %25, align 4
  store ptr %1191, ptr %0, align 4
  store i32 %1192, ptr %27, align 4
  store i32 %1193, ptr %29, align 4
  store i32 %1194, ptr %31, align 4
  %1197 = load i32, ptr %57, align 4
  %1198 = icmp eq i32 %1197, 0
  br i1 %1198, label %1199, label %1205

1199:                                             ; preds = %1189
  %1200 = load i32, ptr %6, align 4
  %1201 = icmp ult i32 %1200, 24
  br i1 %1201, label %1202, label %1206

1202:                                             ; preds = %1199
  %1203 = load i32, ptr %25, align 4
  %1204 = icmp eq i32 %1195, %1203
  br i1 %1204, label %1206, label %1205

1205:                                             ; preds = %1202, %1189
  tail call fastcc void @zlib_updatewindow(ptr noundef nonnull %0, i32 noundef %1195) #13
  br label %1206

1206:                                             ; preds = %1205, %1202, %1199
  %1207 = load i32, ptr %27, align 4
  %1208 = sub i32 %28, %1207
  %1209 = load i32, ptr %25, align 4
  %1210 = sub i32 %1195, %1209
  %1211 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 2
  %1212 = load i32, ptr %1211, align 4
  %1213 = add i32 %1208, %1212
  store i32 %1213, ptr %1211, align 4
  %1214 = load i32, ptr %34, align 4
  %1215 = add i32 %1214, %1210
  store i32 %1215, ptr %34, align 4
  %1216 = load i32, ptr %35, align 4
  %1217 = add i32 %1216, %1210
  store i32 %1217, ptr %35, align 4
  %1218 = load i32, ptr %33, align 4
  %1219 = icmp ne i32 %1218, 0
  %1220 = icmp ne i32 %1195, %1209
  %1221 = select i1 %1219, i1 %1220, i1 false
  br i1 %1221, label %1222, label %1228

1222:                                             ; preds = %1206
  %1223 = load i32, ptr %36, align 4
  %1224 = load ptr, ptr %23, align 4
  %1225 = sub i32 0, %1210
  %1226 = getelementptr i8, ptr %1224, i32 %1225
  %1227 = tail call fastcc i32 @zlib_adler32(i32 noundef %1223, ptr noundef %1226, i32 noundef %1210) #13
  store i32 %1227, ptr %36, align 4
  store i32 %1227, ptr %37, align 4
  br label %1228

1228:                                             ; preds = %1222, %1206
  %1229 = load i32, ptr %31, align 4
  %1230 = load i32, ptr %60, align 4
  %1231 = icmp eq i32 %1230, 0
  %1232 = select i1 %1231, i32 0, i32 64
  %1233 = add i32 %1232, %1229
  %1234 = load i32, ptr %6, align 4
  %1235 = icmp eq i32 %1234, 11
  %1236 = select i1 %1235, i32 128, i32 0
  %1237 = add i32 %1233, %1236
  %1238 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 9
  store i32 %1237, ptr %1238, align 4
  %1239 = icmp eq i32 %1, 2
  %1240 = icmp eq i32 %1196, 0
  %1241 = select i1 %1239, i1 %1240, i1 false
  br i1 %1241, label %1242, label %1259

1242:                                             ; preds = %1228
  %1243 = load i32, ptr %25, align 4
  %1244 = icmp eq i32 %1243, 0
  br i1 %1244, label %1259, label %1245

1245:                                             ; preds = %1242
  %1246 = load i32, ptr %27, align 4
  %1247 = icmp eq i32 %1246, 0
  br i1 %1247, label %1248, label %1259

1248:                                             ; preds = %1245
  %1249 = load ptr, ptr %5, align 4
  %1250 = icmp eq ptr %1249, null
  br i1 %1250, label %1268, label %1251

1251:                                             ; preds = %1248
  %1252 = load i32, ptr %1249, align 4
  %1253 = icmp eq i32 %1252, 13
  br i1 %1253, label %1254, label %1268

1254:                                             ; preds = %1251
  %1255 = getelementptr inbounds %struct.inflate_state, ptr %1249, i32 0, i32 14
  %1256 = load i32, ptr %1255, align 4
  %1257 = icmp eq i32 %1256, 0
  br i1 %1257, label %1258, label %1268

1258:                                             ; preds = %1254
  store i32 11, ptr %1249, align 4
  br label %1268

1259:                                             ; preds = %1245, %1242, %1228
  %1260 = icmp eq i32 %28, %1207
  %1261 = icmp eq i32 %1195, %1209
  %1262 = select i1 %1260, i1 %1261, i1 false
  %1263 = icmp eq i32 %1, 5
  %1264 = or i1 %1263, %1262
  %1265 = select i1 %1264, i1 %1240, i1 false
  %1266 = select i1 %1265, i32 -5, i32 %1196
  br label %1268

1267:                                             ; preds = %63
  br label %1268

1268:                                             ; preds = %1267, %1259, %1258, %1254, %1251, %1248, %195, %63, %11, %4, %2
  %1269 = phi i32 [ %1266, %1259 ], [ 2, %195 ], [ -2, %11 ], [ -2, %4 ], [ -2, %2 ], [ 0, %1258 ], [ -2, %1248 ], [ -3, %1254 ], [ -3, %1251 ], [ -4, %1267 ], [ -2, %63 ]
  ret i32 %1269
}

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @zlib_adler32(i32 noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #7 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %137, label %5

5:                                                ; preds = %3
  %6 = lshr i32 %0, 16
  %7 = and i32 %0, 65535
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %132, label %9

9:                                                ; preds = %125, %5
  %10 = phi i32 [ %130, %125 ], [ %6, %5 ]
  %11 = phi i32 [ %129, %125 ], [ %7, %5 ]
  %12 = phi i32 [ %15, %125 ], [ %2, %5 ]
  %13 = phi ptr [ %126, %125 ], [ %1, %5 ]
  %14 = tail call i32 @llvm.umin.i32(i32 %12, i32 5552)
  %15 = sub i32 %12, %14
  %16 = icmp ugt i32 %14, 15
  br i1 %16, label %17, label %106

17:                                               ; preds = %17, %9
  %18 = phi i32 [ %102, %17 ], [ %14, %9 ]
  %19 = phi i32 [ %100, %17 ], [ %10, %9 ]
  %20 = phi i32 [ %99, %17 ], [ %11, %9 ]
  %21 = phi ptr [ %101, %17 ], [ %13, %9 ]
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = add i32 %20, %23
  %25 = add i32 %24, %19
  %26 = getelementptr i8, ptr %21, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = add i32 %24, %28
  %30 = add i32 %25, %29
  %31 = getelementptr i8, ptr %21, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = add i32 %29, %33
  %35 = add i32 %30, %34
  %36 = getelementptr i8, ptr %21, i32 3
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = add i32 %34, %38
  %40 = add i32 %35, %39
  %41 = getelementptr i8, ptr %21, i32 4
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = add i32 %39, %43
  %45 = add i32 %40, %44
  %46 = getelementptr i8, ptr %21, i32 5
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = add i32 %44, %48
  %50 = add i32 %45, %49
  %51 = getelementptr i8, ptr %21, i32 6
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = add i32 %49, %53
  %55 = add i32 %50, %54
  %56 = getelementptr i8, ptr %21, i32 7
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = add i32 %54, %58
  %60 = add i32 %55, %59
  %61 = getelementptr i8, ptr %21, i32 8
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = add i32 %59, %63
  %65 = add i32 %60, %64
  %66 = getelementptr i8, ptr %21, i32 9
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = add i32 %64, %68
  %70 = add i32 %65, %69
  %71 = getelementptr i8, ptr %21, i32 10
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  %74 = add i32 %69, %73
  %75 = add i32 %70, %74
  %76 = getelementptr i8, ptr %21, i32 11
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = add i32 %74, %78
  %80 = add i32 %75, %79
  %81 = getelementptr i8, ptr %21, i32 12
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = add i32 %79, %83
  %85 = add i32 %80, %84
  %86 = getelementptr i8, ptr %21, i32 13
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = add i32 %84, %88
  %90 = add i32 %85, %89
  %91 = getelementptr i8, ptr %21, i32 14
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = add i32 %89, %93
  %95 = add i32 %90, %94
  %96 = getelementptr i8, ptr %21, i32 15
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  %99 = add i32 %94, %98
  %100 = add i32 %95, %99
  %101 = getelementptr i8, ptr %21, i32 16
  %102 = add nsw i32 %18, -16
  %103 = icmp ugt i32 %102, 15
  br i1 %103, label %17, label %104

104:                                              ; preds = %17
  %105 = icmp eq i32 %102, 0
  br i1 %105, label %125, label %106

106:                                              ; preds = %104, %9
  %107 = phi i32 [ %102, %104 ], [ %14, %9 ]
  %108 = phi i32 [ %100, %104 ], [ %10, %9 ]
  %109 = phi i32 [ %99, %104 ], [ %11, %9 ]
  %110 = phi ptr [ %101, %104 ], [ %13, %9 ]
  br label %111

111:                                              ; preds = %111, %106
  %112 = phi ptr [ %116, %111 ], [ %110, %106 ]
  %113 = phi i32 [ %119, %111 ], [ %109, %106 ]
  %114 = phi i32 [ %120, %111 ], [ %108, %106 ]
  %115 = phi i32 [ %121, %111 ], [ %107, %106 ]
  %116 = getelementptr i8, ptr %112, i32 1
  %117 = load i8, ptr %112, align 1
  %118 = zext i8 %117 to i32
  %119 = add i32 %113, %118
  %120 = add i32 %119, %114
  %121 = add i32 %115, -1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %111

123:                                              ; preds = %111
  %124 = getelementptr i8, ptr %110, i32 %107
  br label %125

125:                                              ; preds = %123, %104
  %126 = phi ptr [ %101, %104 ], [ %124, %123 ]
  %127 = phi i32 [ %99, %104 ], [ %119, %123 ]
  %128 = phi i32 [ %100, %104 ], [ %120, %123 ]
  %129 = urem i32 %127, 65521
  %130 = urem i32 %128, 65521
  %131 = icmp eq i32 %15, 0
  br i1 %131, label %132, label %9

132:                                              ; preds = %125, %5
  %133 = phi i32 [ %7, %5 ], [ %129, %125 ]
  %134 = phi i32 [ %6, %5 ], [ %130, %125 ]
  %135 = shl nuw i32 %134, 16
  %136 = or i32 %135, %133
  br label %137

137:                                              ; preds = %132, %3
  %138 = phi i32 [ %136, %132 ], [ 1, %3 ]
  ret i32 %138
}

; Function Attrs: null_pointer_is_valid
declare ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @zlib_updatewindow(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %1, %6
  %8 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %22, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = sub i32 0, %9
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = tail call ptr @memcpy(ptr noundef %13, ptr noundef %17, i32 noundef %9) #12
  %19 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 11
  store i32 0, ptr %19, align 4
  %20 = load i32, ptr %8, align 4
  %21 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 10
  store i32 %20, ptr %21, align 4
  br label %56

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 11
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 %9, %24
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 %7)
  %27 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 12
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 %24
  %30 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = sub i32 0, %7
  %33 = getelementptr i8, ptr %31, i32 %32
  %34 = tail call ptr @memcpy(ptr noundef %29, ptr noundef %33, i32 noundef %26) #12
  %35 = icmp ugt i32 %7, %25
  br i1 %35, label %36, label %45

36:                                               ; preds = %22
  %37 = sub i32 %7, %26
  %38 = load ptr, ptr %27, align 4
  %39 = load ptr, ptr %30, align 4
  %40 = sub i32 0, %37
  %41 = getelementptr i8, ptr %39, i32 %40
  %42 = tail call ptr @memcpy(ptr noundef %38, ptr noundef %41, i32 noundef %37) #12
  store i32 %37, ptr %23, align 4
  %43 = load i32, ptr %8, align 4
  %44 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 10
  store i32 %43, ptr %44, align 4
  br label %56

45:                                               ; preds = %22
  %46 = load i32, ptr %23, align 4
  %47 = add i32 %46, %26
  %48 = load i32, ptr %8, align 4
  %49 = icmp eq i32 %47, %48
  %50 = select i1 %49, i32 0, i32 %47
  store i32 %50, ptr %23, align 4
  %51 = getelementptr inbounds %struct.inflate_state, ptr %4, i32 0, i32 10
  %52 = load i32, ptr %51, align 4
  %53 = icmp ult i32 %52, %48
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = add i32 %52, %26
  store i32 %55, ptr %51, align 4
  br label %56

56:                                               ; preds = %54, %45, %36, %11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define i32 @zlib_inflateEnd(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, i32 -2, i32 0
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi i32 [ -2, %1 ], [ %7, %3 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define i32 @zlib_inflateIncomp(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %32 [
    i32 11, label %5
    i32 0, label %5
  ]

5:                                                ; preds = %1, %1
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  store i32 0, ptr %6, align 4
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %10, i32 %12
  store ptr %13, ptr %8, align 4
  tail call fastcc void @zlib_updatewindow(ptr noundef %0, i32 noundef %12) #13
  store i32 %7, ptr %6, align 4
  store ptr %9, ptr %8, align 4
  %14 = getelementptr inbounds %struct.inflate_state, ptr %3, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %0, align 4
  %17 = load i32, ptr %11, align 4
  %18 = tail call fastcc i32 @zlib_adler32(i32 noundef %15, ptr noundef %16, i32 noundef %17) #13
  store i32 %18, ptr %14, align 4
  %19 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 10
  store i32 %18, ptr %19, align 4
  %20 = load i32, ptr %11, align 4
  %21 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %20
  store i32 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %20
  store i32 %26, ptr %24, align 4
  %27 = load ptr, ptr %0, align 4
  %28 = getelementptr i8, ptr %27, i32 %20
  store ptr %28, ptr %0, align 4
  %29 = getelementptr inbounds %struct.inflate_state, ptr %3, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %20
  store i32 %31, ptr %29, align 4
  store i32 0, ptr %11, align 4
  br label %32

32:                                               ; preds = %5, %1
  %33 = phi i32 [ 0, %5 ], [ -3, %1 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define i32 @do_decompress(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #6 {
  %5 = ptrtoint ptr %2 to i32
  %6 = xor i32 %5, -1
  %7 = icmp eq ptr %2, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void %3(ptr noundef nonnull @.str.14) #12
  br label %171

9:                                                ; preds = %4
  %10 = icmp eq ptr %0, null
  %11 = load i32, ptr @malloc_ptr, align 4
  br i1 %10, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr @free_mem_ptr, align 4
  %14 = load i32, ptr @free_mem_end_ptr, align 4
  br label %32

15:                                               ; preds = %9
  %16 = icmp eq i32 %11, 0
  %17 = load i32, ptr @free_mem_ptr, align 4
  %18 = select i1 %16, i32 %17, i32 %11
  %19 = add i32 %18, 3
  %20 = and i32 %19, -4
  %21 = add i32 %20, 16384
  store i32 %21, ptr @malloc_ptr, align 4
  %22 = load i32, ptr @free_mem_end_ptr, align 4
  %23 = icmp eq i32 %22, 0
  %24 = icmp ult i32 %21, %22
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = inttoptr i32 %20 to ptr
  %28 = load i32, ptr @malloc_count, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr @malloc_count, align 4
  %30 = icmp eq i32 %20, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %15
  tail call void %3(ptr noundef nonnull @.str.15) #12
  br label %171

32:                                               ; preds = %26, %12
  %33 = phi i32 [ %22, %26 ], [ %14, %12 ]
  %34 = phi i32 [ %17, %26 ], [ %13, %12 ]
  %35 = phi i32 [ %21, %26 ], [ %11, %12 ]
  %36 = phi i32 [ 0, %26 ], [ %1, %12 ]
  %37 = phi ptr [ %27, %26 ], [ %0, %12 ]
  %38 = icmp eq i32 %35, 0
  %39 = select i1 %38, i32 %34, i32 %35
  %40 = add i32 %39, 3
  %41 = and i32 %40, -4
  %42 = add i32 %41, 48
  store i32 %42, ptr @malloc_ptr, align 4
  %43 = icmp eq i32 %33, 0
  %44 = icmp ult i32 %42, %33
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %32
  %47 = inttoptr i32 %41 to ptr
  %48 = load i32, ptr @malloc_count, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr @malloc_count, align 4
  %50 = icmp eq i32 %41, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %32
  tail call void %3(ptr noundef nonnull @.str.16) #12
  br label %163

52:                                               ; preds = %46
  %53 = icmp eq i32 %42, 0
  %54 = select i1 %53, i32 %34, i32 %42
  %55 = add i32 %54, 3
  %56 = and i32 %55, -4
  %57 = add i32 %56, 9516
  store i32 %57, ptr @malloc_ptr, align 4
  %58 = icmp ult i32 %57, %33
  %59 = select i1 %43, i1 true, i1 %58
  br i1 %59, label %62, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.z_stream_s, ptr %47, i32 0, i32 8
  store ptr null, ptr %61, align 4
  br label %67

62:                                               ; preds = %52
  %63 = inttoptr i32 %56 to ptr
  %64 = add i32 %48, 2
  store i32 %64, ptr @malloc_count, align 4
  %65 = getelementptr inbounds %struct.z_stream_s, ptr %47, i32 0, i32 8
  store ptr %63, ptr %65, align 4
  %66 = icmp eq i32 %56, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62, %60
  tail call void %3(ptr noundef nonnull @.str.17) #12
  %68 = load i32, ptr @malloc_count, align 4
  br label %156

69:                                               ; preds = %62
  %70 = icmp slt i32 %36, 10
  br i1 %70, label %147, label %71

71:                                               ; preds = %69
  %72 = load i8, ptr %37, align 1
  %73 = icmp eq i8 %72, 31
  br i1 %73, label %74, label %147

74:                                               ; preds = %71
  %75 = getelementptr i8, ptr %37, i32 1
  %76 = load i8, ptr %75, align 1
  %77 = icmp eq i8 %76, -117
  br i1 %77, label %78, label %147

78:                                               ; preds = %74
  %79 = getelementptr i8, ptr %37, i32 2
  %80 = load i8, ptr %79, align 1
  %81 = icmp eq i8 %80, 8
  br i1 %81, label %82, label %147

82:                                               ; preds = %78
  %83 = getelementptr i8, ptr %37, i32 10
  store ptr %83, ptr %47, align 4
  %84 = add nsw i32 %36, -10
  %85 = getelementptr inbounds %struct.z_stream_s, ptr %47, i32 0, i32 1
  store i32 %84, ptr %85, align 4
  %86 = getelementptr i8, ptr %37, i32 3
  %87 = load i8, ptr %86, align 1
  %88 = and i8 %87, 8
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %82
  %91 = icmp eq i32 %84, 0
  br i1 %91, label %147, label %94

92:                                               ; preds = %94
  %93 = icmp eq i32 %97, 0
  br i1 %93, label %147, label %94

94:                                               ; preds = %92, %90
  %95 = phi ptr [ %98, %92 ], [ %83, %90 ]
  %96 = phi i32 [ %97, %92 ], [ %84, %90 ]
  %97 = add i32 %96, -1
  store i32 %97, ptr %85, align 4
  %98 = getelementptr i8, ptr %95, i32 1
  store ptr %98, ptr %47, align 4
  %99 = load i8, ptr %95, align 1
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %92

101:                                              ; preds = %94, %82
  %102 = getelementptr inbounds %struct.z_stream_s, ptr %47, i32 0, i32 3
  store ptr %2, ptr %102, align 4
  %103 = getelementptr inbounds %struct.z_stream_s, ptr %47, i32 0, i32 4
  store i32 %6, ptr %103, align 4
  %104 = getelementptr inbounds %struct.z_stream_s, ptr %47, i32 0, i32 6
  store ptr null, ptr %104, align 4
  %105 = getelementptr inbounds %struct.z_stream_s, ptr %47, i32 0, i32 7
  store ptr %63, ptr %105, align 4
  %106 = getelementptr inbounds %struct.inflate_state, ptr %63, i32 0, i32 2
  store i32 0, ptr %106, align 4
  %107 = getelementptr inbounds %struct.inflate_state, ptr %63, i32 0, i32 8
  store i32 15, ptr %107, align 4
  %108 = load ptr, ptr %65, align 4
  %109 = getelementptr inbounds %struct.inflate_workspace, ptr %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.inflate_state, ptr %63, i32 0, i32 12
  store ptr %109, ptr %110, align 4
  %111 = load ptr, ptr %105, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %101
  %114 = load ptr, ptr %65, align 4
  %115 = getelementptr inbounds %struct.inflate_state, ptr %114, i32 0, i32 9
  store i32 0, ptr %115, align 4
  %116 = load ptr, ptr %65, align 4
  %117 = getelementptr inbounds %struct.inflate_state, ptr %116, i32 0, i32 12
  store ptr null, ptr %117, align 4
  br label %149

118:                                              ; preds = %101
  %119 = getelementptr inbounds %struct.inflate_state, ptr %111, i32 0, i32 7
  store i32 0, ptr %119, align 4
  %120 = getelementptr inbounds %struct.z_stream_s, ptr %47, i32 0, i32 5
  store i32 0, ptr %120, align 4
  %121 = getelementptr inbounds %struct.z_stream_s, ptr %47, i32 0, i32 2
  store i32 0, ptr %121, align 4
  store ptr null, ptr %104, align 4
  %122 = getelementptr inbounds %struct.z_stream_s, ptr %47, i32 0, i32 10
  store i32 1, ptr %122, align 4
  store i32 0, ptr %111, align 4
  %123 = getelementptr inbounds %struct.inflate_state, ptr %111, i32 0, i32 1
  store i32 0, ptr %123, align 4
  %124 = getelementptr inbounds %struct.inflate_state, ptr %111, i32 0, i32 3
  store i32 0, ptr %124, align 4
  %125 = getelementptr inbounds %struct.inflate_state, ptr %111, i32 0, i32 5
  store i32 32768, ptr %125, align 4
  %126 = getelementptr inbounds %struct.inflate_state, ptr %111, i32 0, i32 13
  store i32 0, ptr %126, align 4
  %127 = getelementptr inbounds %struct.inflate_state, ptr %111, i32 0, i32 14
  store i32 0, ptr %127, align 4
  %128 = getelementptr inbounds %struct.inflate_state, ptr %111, i32 0, i32 29
  %129 = getelementptr inbounds %struct.inflate_state, ptr %111, i32 0, i32 26
  store ptr %128, ptr %129, align 4
  %130 = getelementptr inbounds %struct.inflate_state, ptr %111, i32 0, i32 19
  store ptr %128, ptr %130, align 4
  %131 = getelementptr inbounds %struct.inflate_state, ptr %111, i32 0, i32 18
  store ptr %128, ptr %131, align 4
  %132 = getelementptr inbounds %struct.inflate_state, ptr %111, i32 0, i32 8
  %133 = load i32, ptr %132, align 4
  %134 = shl nuw i32 1, %133
  %135 = getelementptr inbounds %struct.inflate_state, ptr %111, i32 0, i32 9
  store i32 %134, ptr %135, align 4
  %136 = getelementptr inbounds %struct.inflate_state, ptr %111, i32 0, i32 11
  store i32 0, ptr %136, align 4
  %137 = getelementptr inbounds %struct.inflate_state, ptr %111, i32 0, i32 10
  store i32 0, ptr %137, align 4
  %138 = load ptr, ptr %65, align 4
  %139 = getelementptr inbounds %struct.inflate_state, ptr %138, i32 0, i32 9
  store i32 0, ptr %139, align 4
  %140 = load ptr, ptr %65, align 4
  %141 = getelementptr inbounds %struct.inflate_state, ptr %140, i32 0, i32 12
  store ptr null, ptr %141, align 4
  br label %142

142:                                              ; preds = %145, %118
  %143 = load i32, ptr %85, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %142
  %146 = tail call i32 @zlib_inflate(ptr noundef nonnull %47, i32 noundef 0) #12
  switch i32 %146, label %147 [
    i32 1, label %149
    i32 0, label %142
  ]

147:                                              ; preds = %145, %142, %92, %90, %78, %74, %71, %69
  %148 = phi ptr [ @.str.18, %69 ], [ @.str.18, %71 ], [ @.str.18, %74 ], [ @.str.18, %78 ], [ @.str.19, %90 ], [ @.str.20, %142 ], [ @.str.22, %145 ], [ @.str.19, %92 ]
  tail call void %3(ptr noundef nonnull %148) #12
  br label %149

149:                                              ; preds = %147, %145, %113
  %150 = phi i32 [ -1, %147 ], [ -2, %113 ], [ 0, %145 ]
  %151 = load i32, ptr @malloc_count, align 4
  %152 = add i32 %151, -1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = load i32, ptr @free_mem_ptr, align 4
  store i32 %155, ptr @malloc_ptr, align 4
  store i32 -1, ptr @malloc_count, align 4
  br label %163

156:                                              ; preds = %149, %67
  %157 = phi i32 [ %68, %67 ], [ %152, %149 ]
  %158 = phi i32 [ -1, %67 ], [ %150, %149 ]
  %159 = add i32 %157, -1
  store i32 %159, ptr @malloc_count, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = load i32, ptr @free_mem_ptr, align 4
  store i32 %162, ptr @malloc_ptr, align 4
  br label %163

163:                                              ; preds = %161, %156, %154, %51
  %164 = phi i32 [ -1, %51 ], [ %158, %156 ], [ %158, %161 ], [ %150, %154 ]
  br i1 %10, label %165, label %171

165:                                              ; preds = %163
  %166 = load i32, ptr @malloc_count, align 4
  %167 = add i32 %166, -1
  store i32 %167, ptr @malloc_count, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = load i32, ptr @free_mem_ptr, align 4
  store i32 %170, ptr @malloc_ptr, align 4
  br label %171

171:                                              ; preds = %169, %165, %163, %31, %8
  %172 = phi i32 [ -1, %8 ], [ %164, %163 ], [ -1, %31 ], [ %164, %165 ], [ %164, %169 ]
  ret i32 %172
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 1}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"auto-init"}
