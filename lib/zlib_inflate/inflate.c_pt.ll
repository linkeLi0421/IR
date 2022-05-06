; ModuleID = '/llk/IR/lib/zlib_inflate/inflate.c_pt.bc'
source_filename = "../lib/zlib_inflate/inflate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.code = type { i8, i8, i16 }
%struct.z_stream_s = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.inflate_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [2048 x %struct.code] }
%struct.inflate_workspace = type { %struct.inflate_state, [32768 x i8] }

@zlib_inflate.order = internal unnamed_addr constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 2
@.str = private unnamed_addr constant [23 x i8] c"incorrect header check\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"unknown compression method\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"invalid window size\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"too many length or distance symbols\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"invalid code lengths set\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"invalid literal/lengths set\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"invalid distances set\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"incorrect data check\00", align 1
@zlib_fixedtables.lenfix = internal constant [512 x %struct.code] [%struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 192 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 160 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 224 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 144 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 208 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 176 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 240 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 200 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 168 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 232 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 152 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 216 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 184 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 248 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 196 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 164 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 228 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 148 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 212 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 180 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 244 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 204 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 172 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 236 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 156 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 220 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 188 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 252 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 194 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 162 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 226 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 146 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 210 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 178 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 242 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 202 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 170 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 234 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 154 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 218 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 186 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 250 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 198 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 166 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 230 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 150 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 214 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 182 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 246 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 206 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 174 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 238 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 158 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 222 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 190 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 254 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 193 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 161 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 225 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 145 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 209 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 177 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 241 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 201 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 169 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 233 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 153 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 217 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 185 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 249 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 197 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 165 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 229 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 149 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 213 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 181 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 245 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 205 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 173 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 237 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 157 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 221 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 189 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 253 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 195 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 163 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 227 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 147 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 211 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 179 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 243 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 203 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 171 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 235 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 155 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 219 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 187 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 251 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 199 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 167 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 231 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 151 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 215 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 183 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 247 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 207 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 175 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 239 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 159 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 223 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 191 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 255 }], align 2
@zlib_fixedtables.distfix = internal constant [32 x %struct.code] [%struct.code { i8 16, i8 5, i16 1 }, %struct.code { i8 23, i8 5, i16 257 }, %struct.code { i8 19, i8 5, i16 17 }, %struct.code { i8 27, i8 5, i16 4097 }, %struct.code { i8 17, i8 5, i16 5 }, %struct.code { i8 25, i8 5, i16 1025 }, %struct.code { i8 21, i8 5, i16 65 }, %struct.code { i8 29, i8 5, i16 16385 }, %struct.code { i8 16, i8 5, i16 3 }, %struct.code { i8 24, i8 5, i16 513 }, %struct.code { i8 20, i8 5, i16 33 }, %struct.code { i8 28, i8 5, i16 8193 }, %struct.code { i8 18, i8 5, i16 9 }, %struct.code { i8 26, i8 5, i16 2049 }, %struct.code { i8 22, i8 5, i16 129 }, %struct.code { i8 64, i8 5, i16 0 }, %struct.code { i8 16, i8 5, i16 2 }, %struct.code { i8 23, i8 5, i16 385 }, %struct.code { i8 19, i8 5, i16 25 }, %struct.code { i8 27, i8 5, i16 6145 }, %struct.code { i8 17, i8 5, i16 7 }, %struct.code { i8 25, i8 5, i16 1537 }, %struct.code { i8 21, i8 5, i16 97 }, %struct.code { i8 29, i8 5, i16 24577 }, %struct.code { i8 16, i8 5, i16 4 }, %struct.code { i8 24, i8 5, i16 769 }, %struct.code { i8 20, i8 5, i16 49 }, %struct.code { i8 28, i8 5, i16 12289 }, %struct.code { i8 18, i8 5, i16 13 }, %struct.code { i8 26, i8 5, i16 3073 }, %struct.code { i8 22, i8 5, i16 193 }, %struct.code { i8 64, i8 5, i16 0 }], align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @zlib_inflate_workspacesize() local_unnamed_addr #0 {
  ret i32 42284
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @zlib_inflateReset(ptr noundef %0) local_unnamed_addr #1 {
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
define dso_local i32 @zlib_inflateInit2(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
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
define dso_local i32 @zlib_inflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1315, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %1315, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %1315

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

63:                                               ; preds = %1143, %20
  %64 = phi i32 [ %21, %20 ], [ %1152, %1143 ]
  %65 = phi ptr [ %22, %20 ], [ %1144, %1143 ]
  %66 = phi ptr [ %24, %20 ], [ %1145, %1143 ]
  %67 = phi i32 [ %28, %20 ], [ %1146, %1143 ]
  %68 = phi i32 [ %26, %20 ], [ %1147, %1143 ]
  %69 = phi i32 [ %30, %20 ], [ %1148, %1143 ]
  %70 = phi i32 [ %32, %20 ], [ %1149, %1143 ]
  %71 = phi i32 [ %26, %20 ], [ %1150, %1143 ]
  %72 = phi i32 [ 0, %20 ], [ %1151, %1143 ]
  switch i32 %64, label %1315 [
    i32 0, label %85
    i32 9, label %83
    i32 10, label %188
    i32 11, label %197
    i32 12, label %202
    i32 13, label %241
    i32 14, label %73
    i32 15, label %81
    i32 16, label %360
    i32 17, label %79
    i32 18, label %655
    i32 19, label %77
    i32 20, label %837
    i32 21, label %75
    i32 22, label %1007
    i32 23, label %1061
    i32 24, label %1068
    i32 26, label %1181
    i32 27, label %1188
    i32 28, label %1314
  ]

73:                                               ; preds = %63
  %74 = load i32, ptr %39, align 4
  br label %300

75:                                               ; preds = %63
  %76 = load i32, ptr %52, align 4
  br label %956

77:                                               ; preds = %63
  %78 = load i32, ptr %52, align 4
  br label %795

79:                                               ; preds = %63
  %80 = load i32, ptr %43, align 4
  br label %424

81:                                               ; preds = %63
  %82 = icmp ult i32 %70, 14
  br i1 %82, label %319, label %340

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
  br label %1143

91:                                               ; preds = %88
  %92 = icmp eq i32 %67, 0
  br i1 %92, label %1188, label %93

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
  br i1 %103, label %1188, label %104

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
  store ptr @.str, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1143

124:                                              ; preds = %112
  %125 = and i32 %115, 15
  %126 = icmp eq i32 %125, 8
  br i1 %126, label %128, label %127

127:                                              ; preds = %124
  store ptr @.str.1, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1143

128:                                              ; preds = %124
  %129 = lshr i32 %115, 4
  %130 = and i32 %129, 15
  %131 = add nuw nsw i32 %130, 8
  %132 = load i32, ptr %61, align 4
  %133 = icmp ugt i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = add i32 %116, -4
  store ptr @.str.2, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1143

136:                                              ; preds = %128
  %137 = shl nuw nsw i32 256, %130
  store i32 %137, ptr %62, align 4
  store i32 1, ptr %36, align 4
  store i32 1, ptr %37, align 4
  %138 = and i32 %115, 8192
  %139 = icmp eq i32 %138, 0
  %140 = select i1 %139, i32 11, i32 9
  store i32 %140, ptr %6, align 4
  br label %1143

141:                                              ; preds = %83
  %142 = icmp eq i32 %67, 0
  br i1 %142, label %1188, label %143

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
  br i1 %153, label %1188, label %154

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
  br i1 %164, label %1188, label %165

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
  br i1 %175, label %1188, label %176

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
  br label %1315

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
  br i1 %59, label %1181, label %202

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
  br label %1143

215:                                              ; preds = %209
  %216 = icmp eq i32 %204, 0
  br i1 %216, label %1188, label %217

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
  store ptr @.str.3, ptr %38, align 4
  br label %237

236:                                              ; preds = %225
  unreachable

237:                                              ; preds = %235, %234, %233, %225
  %238 = phi i32 [ 18, %233 ], [ 15, %234 ], [ 27, %235 ], [ 13, %225 ]
  store i32 %238, ptr %6, align 4
  %239 = lshr i32 %228, 3
  %240 = add i32 %229, -3
  br label %1143

241:                                              ; preds = %63
  %242 = and i32 %70, 7
  %243 = lshr i32 %69, %242
  %244 = and i32 %70, -8
  %245 = icmp ult i32 %244, 32
  br i1 %245, label %246, label %289

246:                                              ; preds = %241
  %247 = icmp eq i32 %67, 0
  br i1 %247, label %1188, label %248

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
  br i1 %258, label %1188, label %259

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
  br i1 %269, label %1188, label %270

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
  br i1 %280, label %1188, label %281

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
  store ptr @.str.4, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1143

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
  br i1 %306, label %318, label %307

307:                                              ; preds = %300
  %308 = tail call i32 @llvm.umin.i32(i32 %301, i32 %303)
  %309 = tail call i32 @llvm.umin.i32(i32 %308, i32 %68)
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %1181, label %311

311:                                              ; preds = %307
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %66, ptr align 1 %302, i32 %309, i1 false)
  %312 = sub i32 %303, %309
  %313 = getelementptr i8, ptr %302, i32 %309
  %314 = sub i32 %68, %309
  %315 = getelementptr i8, ptr %66, i32 %309
  %316 = load i32, ptr %39, align 4
  %317 = sub i32 %316, %309
  store i32 %317, ptr %39, align 4
  br label %1143

318:                                              ; preds = %300
  store i32 11, ptr %6, align 4
  br label %1143

319:                                              ; preds = %81
  %320 = icmp eq i32 %67, 0
  br i1 %320, label %1188, label %321

321:                                              ; preds = %319
  %322 = add i32 %67, -1
  %323 = getelementptr i8, ptr %65, i32 1
  %324 = load i8, ptr %65, align 1
  %325 = zext i8 %324 to i32
  %326 = shl nuw nsw i32 %325, %70
  %327 = add i32 %326, %69
  %328 = add nuw nsw i32 %70, 8
  %329 = icmp ult i32 %70, 6
  br i1 %329, label %330, label %340

330:                                              ; preds = %321
  %331 = icmp eq i32 %322, 0
  br i1 %331, label %1188, label %332

332:                                              ; preds = %330
  %333 = add i32 %67, -2
  %334 = getelementptr i8, ptr %65, i32 2
  %335 = load i8, ptr %323, align 1
  %336 = zext i8 %335 to i32
  %337 = shl nuw nsw i32 %336, %328
  %338 = add i32 %337, %327
  %339 = add nuw nsw i32 %70, 16
  br label %340

340:                                              ; preds = %332, %321, %81
  %341 = phi ptr [ %65, %81 ], [ %323, %321 ], [ %334, %332 ]
  %342 = phi i32 [ %67, %81 ], [ %322, %321 ], [ %333, %332 ]
  %343 = phi i32 [ %69, %81 ], [ %327, %321 ], [ %338, %332 ]
  %344 = phi i32 [ %70, %81 ], [ %328, %321 ], [ %339, %332 ]
  %345 = and i32 %343, 31
  %346 = add nuw nsw i32 %345, 257
  store i32 %346, ptr %40, align 4
  %347 = lshr i32 %343, 5
  %348 = and i32 %347, 31
  %349 = add nuw nsw i32 %348, 1
  store i32 %349, ptr %41, align 4
  %350 = lshr i32 %343, 10
  %351 = and i32 %350, 15
  %352 = add nuw nsw i32 %351, 4
  store i32 %352, ptr %42, align 4
  %353 = lshr i32 %343, 14
  %354 = add i32 %344, -14
  %355 = icmp ugt i32 %345, 29
  %356 = icmp ugt i32 %348, 29
  %357 = select i1 %355, i1 true, i1 %356
  br i1 %357, label %358, label %359

358:                                              ; preds = %340
  store ptr @.str.5, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1143

359:                                              ; preds = %340
  store i32 0, ptr %43, align 4
  store i32 16, ptr %6, align 4
  br label %364

360:                                              ; preds = %63
  %361 = load i32, ptr %43, align 4
  %362 = load i32, ptr %42, align 4
  %363 = icmp ult i32 %361, %362
  br i1 %363, label %364, label %371

364:                                              ; preds = %360, %359
  %365 = phi i32 [ %354, %359 ], [ %70, %360 ]
  %366 = phi i32 [ %353, %359 ], [ %69, %360 ]
  %367 = phi i32 [ %342, %359 ], [ %67, %360 ]
  %368 = phi ptr [ %341, %359 ], [ %65, %360 ]
  %369 = phi i32 [ 0, %359 ], [ %361, %360 ]
  %370 = phi i32 [ %352, %359 ], [ %362, %360 ]
  br label %378

371:                                              ; preds = %395, %360
  %372 = phi ptr [ %65, %360 ], [ %396, %395 ]
  %373 = phi i32 [ %67, %360 ], [ %397, %395 ]
  %374 = phi i32 [ %69, %360 ], [ %407, %395 ]
  %375 = phi i32 [ %70, %360 ], [ %408, %395 ]
  %376 = phi i32 [ %361, %360 ], [ %402, %395 ]
  %377 = icmp ult i32 %376, 19
  br i1 %377, label %410, label %419

378:                                              ; preds = %395, %364
  %379 = phi i32 [ %402, %395 ], [ %369, %364 ]
  %380 = phi i32 [ %408, %395 ], [ %365, %364 ]
  %381 = phi i32 [ %407, %395 ], [ %366, %364 ]
  %382 = phi i32 [ %397, %395 ], [ %367, %364 ]
  %383 = phi ptr [ %396, %395 ], [ %368, %364 ]
  %384 = icmp ult i32 %380, 3
  br i1 %384, label %385, label %395

385:                                              ; preds = %378
  %386 = icmp eq i32 %382, 0
  br i1 %386, label %1188, label %387

387:                                              ; preds = %385
  %388 = add i32 %382, -1
  %389 = getelementptr i8, ptr %383, i32 1
  %390 = load i8, ptr %383, align 1
  %391 = zext i8 %390 to i32
  %392 = shl nuw nsw i32 %391, %380
  %393 = add i32 %392, %381
  %394 = add nuw nsw i32 %380, 8
  br label %395

395:                                              ; preds = %387, %378
  %396 = phi ptr [ %389, %387 ], [ %383, %378 ]
  %397 = phi i32 [ %388, %387 ], [ %382, %378 ]
  %398 = phi i32 [ %393, %387 ], [ %381, %378 ]
  %399 = phi i32 [ %394, %387 ], [ %380, %378 ]
  %400 = trunc i32 %398 to i16
  %401 = and i16 %400, 7
  %402 = add nuw i32 %379, 1
  store i32 %402, ptr %43, align 4
  %403 = getelementptr [19 x i16], ptr @zlib_inflate.order, i32 0, i32 %379
  %404 = load i16, ptr %403, align 2
  %405 = zext i16 %404 to i32
  %406 = getelementptr %struct.inflate_state, ptr %6, i32 0, i32 27, i32 %405
  store i16 %401, ptr %406, align 2
  %407 = lshr i32 %398, 3
  %408 = add i32 %399, -3
  %409 = icmp ult i32 %402, %370
  br i1 %409, label %378, label %371

410:                                              ; preds = %410, %371
  %411 = phi i32 [ %412, %410 ], [ %376, %371 ]
  %412 = add i32 %411, 1
  %413 = getelementptr [19 x i16], ptr @zlib_inflate.order, i32 0, i32 %411
  %414 = load i16, ptr %413, align 2
  %415 = zext i16 %414 to i32
  %416 = getelementptr %struct.inflate_state, ptr %6, i32 0, i32 27, i32 %415
  store i16 0, ptr %416, align 2
  %417 = icmp eq i32 %412, 19
  br i1 %417, label %418, label %410

418:                                              ; preds = %410
  store i32 %412, ptr %43, align 4
  br label %419

419:                                              ; preds = %418, %371
  store ptr %44, ptr %45, align 4
  store ptr %44, ptr %46, align 4
  store i32 7, ptr %47, align 4
  %420 = tail call i32 @zlib_inflate_table(i32 noundef 0, ptr noundef %48, i32 noundef 19, ptr noundef %45, ptr noundef %47, ptr noundef %49) #9
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %423, label %422

422:                                              ; preds = %419
  store ptr @.str.6, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1143

423:                                              ; preds = %419
  store i32 0, ptr %43, align 4
  store i32 17, ptr %6, align 4
  br label %424

424:                                              ; preds = %423, %79
  %425 = phi i32 [ %80, %79 ], [ 0, %423 ]
  %426 = phi ptr [ %65, %79 ], [ %372, %423 ]
  %427 = phi i32 [ %67, %79 ], [ %373, %423 ]
  %428 = phi i32 [ %69, %79 ], [ %374, %423 ]
  %429 = phi i32 [ %70, %79 ], [ %375, %423 ]
  %430 = phi i32 [ %72, %79 ], [ 0, %423 ]
  %431 = load i32, ptr %40, align 4
  %432 = load i32, ptr %41, align 4
  %433 = add i32 %432, %431
  %434 = icmp ult i32 %425, %433
  br i1 %434, label %435, label %637

435:                                              ; preds = %624, %424
  %436 = phi i32 [ %632, %624 ], [ %433, %424 ]
  %437 = phi i32 [ %629, %624 ], [ %425, %424 ]
  %438 = phi i32 [ %628, %624 ], [ %429, %424 ]
  %439 = phi i32 [ %627, %624 ], [ %428, %424 ]
  %440 = phi i32 [ %626, %624 ], [ %427, %424 ]
  %441 = phi ptr [ %625, %624 ], [ %426, %424 ]
  %442 = load ptr, ptr %46, align 4
  %443 = load i32, ptr %47, align 4
  %444 = shl nsw i32 -1, %443
  %445 = xor i32 %444, -1
  %446 = and i32 %439, %445
  %447 = getelementptr %struct.code, ptr %442, i32 %446, i32 1
  %448 = load i8, ptr %447, align 1
  %449 = zext i8 %448 to i32
  %450 = icmp ult i32 %438, %449
  br i1 %450, label %451, label %472

451:                                              ; preds = %457, %435
  %452 = phi i32 [ %464, %457 ], [ %438, %435 ]
  %453 = phi i32 [ %463, %457 ], [ %439, %435 ]
  %454 = phi i32 [ %458, %457 ], [ %440, %435 ]
  %455 = phi ptr [ %459, %457 ], [ %441, %435 ]
  %456 = icmp eq i32 %454, 0
  br i1 %456, label %1153, label %457

457:                                              ; preds = %451
  %458 = add i32 %454, -1
  %459 = getelementptr i8, ptr %455, i32 1
  %460 = load i8, ptr %455, align 1
  %461 = zext i8 %460 to i32
  %462 = shl i32 %461, %452
  %463 = add i32 %462, %453
  %464 = add nuw nsw i32 %452, 8
  %465 = and i32 %463, %445
  %466 = getelementptr %struct.code, ptr %442, i32 %465, i32 1
  %467 = load i8, ptr %466, align 1
  %468 = zext i8 %467 to i32
  %469 = icmp ult i32 %464, %468
  br i1 %469, label %451, label %470

470:                                              ; preds = %457
  %471 = zext i8 %467 to i32
  br label %472

472:                                              ; preds = %470, %435
  %473 = phi i32 [ %449, %435 ], [ %471, %470 ]
  %474 = phi i32 [ %446, %435 ], [ %465, %470 ]
  %475 = phi ptr [ %441, %435 ], [ %459, %470 ]
  %476 = phi i32 [ %440, %435 ], [ %458, %470 ]
  %477 = phi i32 [ %439, %435 ], [ %463, %470 ]
  %478 = phi i32 [ %438, %435 ], [ %464, %470 ]
  %479 = getelementptr %struct.code, ptr %442, i32 %474, i32 2
  %480 = load i16, ptr %479, align 2
  %481 = icmp ult i16 %480, 16
  br i1 %481, label %482, label %508

482:                                              ; preds = %472
  %483 = icmp ult i32 %478, %473
  br i1 %483, label %484, label %499

484:                                              ; preds = %490, %482
  %485 = phi i32 [ %497, %490 ], [ %478, %482 ]
  %486 = phi i32 [ %496, %490 ], [ %477, %482 ]
  %487 = phi i32 [ %491, %490 ], [ %476, %482 ]
  %488 = phi ptr [ %492, %490 ], [ %475, %482 ]
  %489 = icmp eq i32 %487, 0
  br i1 %489, label %1188, label %490

490:                                              ; preds = %484
  %491 = add i32 %487, -1
  %492 = getelementptr i8, ptr %488, i32 1
  %493 = load i8, ptr %488, align 1
  %494 = zext i8 %493 to i32
  %495 = shl i32 %494, %485
  %496 = add i32 %495, %486
  %497 = add nuw nsw i32 %485, 8
  %498 = icmp ult i32 %497, %473
  br i1 %498, label %484, label %499

499:                                              ; preds = %490, %482
  %500 = phi ptr [ %475, %482 ], [ %492, %490 ]
  %501 = phi i32 [ %476, %482 ], [ %491, %490 ]
  %502 = phi i32 [ %477, %482 ], [ %496, %490 ]
  %503 = phi i32 [ %478, %482 ], [ %497, %490 ]
  %504 = lshr i32 %502, %473
  %505 = sub i32 %503, %473
  %506 = add i32 %437, 1
  store i32 %506, ptr %43, align 4
  %507 = getelementptr %struct.inflate_state, ptr %6, i32 0, i32 27, i32 %437
  store i16 %480, ptr %507, align 2
  br label %624

508:                                              ; preds = %472
  switch i16 %480, label %515 [
    i16 16, label %512
    i16 17, label %509
  ]

509:                                              ; preds = %508
  %510 = add nuw nsw i32 %473, 3
  %511 = icmp ult i32 %478, %510
  br i1 %511, label %550, label %565

512:                                              ; preds = %508
  %513 = add nuw nsw i32 %473, 2
  %514 = icmp ult i32 %478, %513
  br i1 %514, label %518, label %533

515:                                              ; preds = %508
  %516 = add nuw nsw i32 %473, 7
  %517 = icmp ult i32 %478, %516
  br i1 %517, label %576, label %591

518:                                              ; preds = %524, %512
  %519 = phi i32 [ %531, %524 ], [ %478, %512 ]
  %520 = phi i32 [ %530, %524 ], [ %477, %512 ]
  %521 = phi i32 [ %525, %524 ], [ %476, %512 ]
  %522 = phi ptr [ %526, %524 ], [ %475, %512 ]
  %523 = icmp eq i32 %521, 0
  br i1 %523, label %1188, label %524

524:                                              ; preds = %518
  %525 = add i32 %521, -1
  %526 = getelementptr i8, ptr %522, i32 1
  %527 = load i8, ptr %522, align 1
  %528 = zext i8 %527 to i32
  %529 = shl i32 %528, %519
  %530 = add i32 %529, %520
  %531 = add nuw nsw i32 %519, 8
  %532 = icmp ult i32 %531, %513
  br i1 %532, label %518, label %533

533:                                              ; preds = %524, %512
  %534 = phi ptr [ %475, %512 ], [ %526, %524 ]
  %535 = phi i32 [ %476, %512 ], [ %525, %524 ]
  %536 = phi i32 [ %477, %512 ], [ %530, %524 ]
  %537 = phi i32 [ %478, %512 ], [ %531, %524 ]
  %538 = lshr i32 %536, %473
  %539 = sub i32 %537, %473
  %540 = icmp eq i32 %437, 0
  br i1 %540, label %541, label %542

541:                                              ; preds = %533
  store ptr @.str.7, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1143

542:                                              ; preds = %533
  %543 = add i32 %437, -1
  %544 = getelementptr %struct.inflate_state, ptr %6, i32 0, i32 27, i32 %543
  %545 = load i16, ptr %544, align 2
  %546 = and i32 %538, 3
  %547 = add nuw nsw i32 %546, 3
  %548 = lshr i32 %538, 2
  %549 = add i32 %539, -2
  br label %602

550:                                              ; preds = %556, %509
  %551 = phi i32 [ %563, %556 ], [ %478, %509 ]
  %552 = phi i32 [ %562, %556 ], [ %477, %509 ]
  %553 = phi i32 [ %557, %556 ], [ %476, %509 ]
  %554 = phi ptr [ %558, %556 ], [ %475, %509 ]
  %555 = icmp eq i32 %553, 0
  br i1 %555, label %1188, label %556

556:                                              ; preds = %550
  %557 = add i32 %553, -1
  %558 = getelementptr i8, ptr %554, i32 1
  %559 = load i8, ptr %554, align 1
  %560 = zext i8 %559 to i32
  %561 = shl i32 %560, %551
  %562 = add i32 %561, %552
  %563 = add nuw nsw i32 %551, 8
  %564 = icmp ult i32 %563, %510
  br i1 %564, label %550, label %565

565:                                              ; preds = %556, %509
  %566 = phi ptr [ %475, %509 ], [ %558, %556 ]
  %567 = phi i32 [ %476, %509 ], [ %557, %556 ]
  %568 = phi i32 [ %477, %509 ], [ %562, %556 ]
  %569 = phi i32 [ %478, %509 ], [ %563, %556 ]
  %570 = lshr i32 %568, %473
  %571 = and i32 %570, 7
  %572 = add nuw nsw i32 %571, 3
  %573 = lshr i32 %570, 3
  %574 = sub nuw nsw i32 -3, %473
  %575 = add i32 %574, %569
  br label %602

576:                                              ; preds = %582, %515
  %577 = phi i32 [ %589, %582 ], [ %478, %515 ]
  %578 = phi i32 [ %588, %582 ], [ %477, %515 ]
  %579 = phi i32 [ %583, %582 ], [ %476, %515 ]
  %580 = phi ptr [ %584, %582 ], [ %475, %515 ]
  %581 = icmp eq i32 %579, 0
  br i1 %581, label %1188, label %582

582:                                              ; preds = %576
  %583 = add i32 %579, -1
  %584 = getelementptr i8, ptr %580, i32 1
  %585 = load i8, ptr %580, align 1
  %586 = zext i8 %585 to i32
  %587 = shl i32 %586, %577
  %588 = add i32 %587, %578
  %589 = add nuw nsw i32 %577, 8
  %590 = icmp ult i32 %589, %516
  br i1 %590, label %576, label %591

591:                                              ; preds = %582, %515
  %592 = phi ptr [ %475, %515 ], [ %584, %582 ]
  %593 = phi i32 [ %476, %515 ], [ %583, %582 ]
  %594 = phi i32 [ %477, %515 ], [ %588, %582 ]
  %595 = phi i32 [ %478, %515 ], [ %589, %582 ]
  %596 = lshr i32 %594, %473
  %597 = and i32 %596, 127
  %598 = add nuw nsw i32 %597, 11
  %599 = lshr i32 %596, 7
  %600 = sub nuw nsw i32 -7, %473
  %601 = add i32 %600, %595
  br label %602

602:                                              ; preds = %591, %565, %542
  %603 = phi ptr [ %534, %542 ], [ %566, %565 ], [ %592, %591 ]
  %604 = phi i32 [ %535, %542 ], [ %567, %565 ], [ %593, %591 ]
  %605 = phi i32 [ %548, %542 ], [ %573, %565 ], [ %599, %591 ]
  %606 = phi i32 [ %549, %542 ], [ %575, %565 ], [ %601, %591 ]
  %607 = phi i32 [ %547, %542 ], [ %572, %565 ], [ %598, %591 ]
  %608 = phi i16 [ %545, %542 ], [ 0, %565 ], [ 0, %591 ]
  %609 = add i32 %607, %437
  %610 = icmp ugt i32 %609, %436
  br i1 %610, label %616, label %611

611:                                              ; preds = %602
  %612 = add nsw i32 %607, -1
  %613 = add i32 %437, 1
  store i32 %613, ptr %43, align 4
  %614 = getelementptr %struct.inflate_state, ptr %6, i32 0, i32 27, i32 %437
  store i16 %608, ptr %614, align 2
  %615 = icmp eq i32 %612, 0
  br i1 %615, label %624, label %617

616:                                              ; preds = %602
  store ptr @.str.7, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1143

617:                                              ; preds = %617, %611
  %618 = phi i32 [ %620, %617 ], [ %612, %611 ]
  %619 = load i32, ptr %43, align 4
  %620 = add nsw i32 %618, -1
  %621 = add i32 %619, 1
  store i32 %621, ptr %43, align 4
  %622 = getelementptr %struct.inflate_state, ptr %6, i32 0, i32 27, i32 %619
  store i16 %608, ptr %622, align 2
  %623 = icmp eq i32 %620, 0
  br i1 %623, label %624, label %617

624:                                              ; preds = %617, %611, %499
  %625 = phi ptr [ %500, %499 ], [ %603, %611 ], [ %603, %617 ]
  %626 = phi i32 [ %501, %499 ], [ %604, %611 ], [ %604, %617 ]
  %627 = phi i32 [ %504, %499 ], [ %605, %611 ], [ %605, %617 ]
  %628 = phi i32 [ %505, %499 ], [ %606, %611 ], [ %606, %617 ]
  %629 = load i32, ptr %43, align 4
  %630 = load i32, ptr %40, align 4
  %631 = load i32, ptr %41, align 4
  %632 = add i32 %631, %630
  %633 = icmp ult i32 %629, %632
  br i1 %633, label %435, label %634

634:                                              ; preds = %624
  %635 = load i32, ptr %6, align 4
  %636 = icmp eq i32 %635, 27
  br i1 %636, label %1143, label %637

637:                                              ; preds = %634, %424
  %638 = phi i32 [ %628, %634 ], [ %429, %424 ]
  %639 = phi i32 [ %627, %634 ], [ %428, %424 ]
  %640 = phi i32 [ %626, %634 ], [ %427, %424 ]
  %641 = phi ptr [ %625, %634 ], [ %426, %424 ]
  %642 = phi i32 [ %630, %634 ], [ %431, %424 ]
  store ptr %44, ptr %45, align 4
  store ptr %44, ptr %46, align 4
  store i32 9, ptr %47, align 4
  %643 = tail call i32 @zlib_inflate_table(i32 noundef 1, ptr noundef %48, i32 noundef %642, ptr noundef %45, ptr noundef %47, ptr noundef %49) #9
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %646, label %645

645:                                              ; preds = %637
  store ptr @.str.8, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1143

646:                                              ; preds = %637
  %647 = load ptr, ptr %45, align 4
  store ptr %647, ptr %50, align 4
  store i32 6, ptr %51, align 4
  %648 = load i32, ptr %40, align 4
  %649 = getelementptr i16, ptr %48, i32 %648
  %650 = load i32, ptr %41, align 4
  %651 = tail call i32 @zlib_inflate_table(i32 noundef 2, ptr noundef %649, i32 noundef %650, ptr noundef %45, ptr noundef %51, ptr noundef %49) #9
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %654, label %653

653:                                              ; preds = %646
  store ptr @.str.9, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1143

654:                                              ; preds = %646
  store i32 18, ptr %6, align 4
  br label %655

655:                                              ; preds = %654, %63
  %656 = phi ptr [ %65, %63 ], [ %641, %654 ]
  %657 = phi i32 [ %67, %63 ], [ %640, %654 ]
  %658 = phi i32 [ %69, %63 ], [ %639, %654 ]
  %659 = phi i32 [ %70, %63 ], [ %638, %654 ]
  %660 = phi i32 [ %72, %63 ], [ 0, %654 ]
  %661 = icmp ugt i32 %657, 5
  %662 = icmp ugt i32 %68, 257
  %663 = select i1 %661, i1 %662, i1 false
  br i1 %663, label %675, label %664

664:                                              ; preds = %655
  %665 = load ptr, ptr %46, align 4
  %666 = load i32, ptr %47, align 4
  %667 = shl nsw i32 -1, %666
  %668 = xor i32 %667, -1
  %669 = and i32 %658, %668
  %670 = getelementptr %struct.code, ptr %665, i32 %669
  %671 = getelementptr inbounds i8, ptr %670, i32 1
  %672 = load i8, ptr %671, align 1
  %673 = zext i8 %672 to i32
  %674 = icmp ult i32 %659, %673
  br i1 %674, label %682, label %704

675:                                              ; preds = %655
  store ptr %66, ptr %23, align 4
  store i32 %68, ptr %25, align 4
  store ptr %656, ptr %0, align 4
  store i32 %657, ptr %27, align 4
  store i32 %658, ptr %29, align 4
  store i32 %659, ptr %31, align 4
  tail call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %71) #9
  %676 = load ptr, ptr %23, align 4
  %677 = load i32, ptr %25, align 4
  %678 = load ptr, ptr %0, align 4
  %679 = load i32, ptr %27, align 4
  %680 = load i32, ptr %29, align 4
  %681 = load i32, ptr %31, align 4
  br label %1143

682:                                              ; preds = %688, %664
  %683 = phi i32 [ %695, %688 ], [ %659, %664 ]
  %684 = phi i32 [ %694, %688 ], [ %658, %664 ]
  %685 = phi i32 [ %689, %688 ], [ %657, %664 ]
  %686 = phi ptr [ %690, %688 ], [ %656, %664 ]
  %687 = icmp eq i32 %685, 0
  br i1 %687, label %1177, label %688

688:                                              ; preds = %682
  %689 = add i32 %685, -1
  %690 = getelementptr i8, ptr %686, i32 1
  %691 = load i8, ptr %686, align 1
  %692 = zext i8 %691 to i32
  %693 = shl i32 %692, %683
  %694 = add i32 %693, %684
  %695 = add nuw nsw i32 %683, 8
  %696 = and i32 %694, %668
  %697 = getelementptr %struct.code, ptr %665, i32 %696
  %698 = getelementptr inbounds i8, ptr %697, i32 1
  %699 = load i8, ptr %698, align 1
  %700 = zext i8 %699 to i32
  %701 = icmp ult i32 %695, %700
  br i1 %701, label %682, label %702

702:                                              ; preds = %688
  %703 = zext i8 %699 to i32
  br label %704

704:                                              ; preds = %702, %664
  %705 = phi i32 [ %673, %664 ], [ %703, %702 ]
  %706 = phi ptr [ %670, %664 ], [ %697, %702 ]
  %707 = phi ptr [ %656, %664 ], [ %690, %702 ]
  %708 = phi i32 [ %657, %664 ], [ %689, %702 ]
  %709 = phi i32 [ %658, %664 ], [ %694, %702 ]
  %710 = phi i32 [ %659, %664 ], [ %695, %702 ]
  %711 = getelementptr inbounds i8, ptr %706, i32 2
  %712 = load i16, ptr %711, align 2
  %713 = load i8, ptr %706, align 2
  %714 = zext i8 %713 to i32
  %715 = icmp ne i8 %713, 0
  %716 = and i32 %714, 240
  %717 = icmp eq i32 %716, 0
  %718 = select i1 %715, i1 %717, i1 false
  br i1 %718, label %719, label %771

719:                                              ; preds = %704
  %720 = zext i16 %712 to i32
  %721 = add nuw nsw i32 %705, %714
  %722 = shl nsw i32 -1, %721
  %723 = xor i32 %722, -1
  %724 = and i32 %709, %723
  %725 = lshr i32 %724, %705
  %726 = add i32 %725, %720
  %727 = getelementptr %struct.code, ptr %665, i32 %726
  %728 = getelementptr inbounds i8, ptr %727, i32 1
  %729 = load i8, ptr %728, align 1
  %730 = zext i8 %729 to i32
  %731 = add nuw nsw i32 %705, %730
  %732 = icmp ugt i32 %731, %710
  br i1 %732, label %733, label %758

733:                                              ; preds = %739, %719
  %734 = phi i32 [ %746, %739 ], [ %710, %719 ]
  %735 = phi i32 [ %745, %739 ], [ %709, %719 ]
  %736 = phi i32 [ %740, %739 ], [ %708, %719 ]
  %737 = phi ptr [ %741, %739 ], [ %707, %719 ]
  %738 = icmp eq i32 %736, 0
  br i1 %738, label %1173, label %739

739:                                              ; preds = %733
  %740 = add i32 %736, -1
  %741 = getelementptr i8, ptr %737, i32 1
  %742 = load i8, ptr %737, align 1
  %743 = zext i8 %742 to i32
  %744 = shl i32 %743, %734
  %745 = add i32 %744, %735
  %746 = add nuw nsw i32 %734, 8
  %747 = and i32 %745, %723
  %748 = lshr i32 %747, %705
  %749 = add i32 %748, %720
  %750 = getelementptr %struct.code, ptr %665, i32 %749
  %751 = getelementptr inbounds i8, ptr %750, i32 1
  %752 = load i8, ptr %751, align 1
  %753 = zext i8 %752 to i32
  %754 = add nuw nsw i32 %705, %753
  %755 = icmp ugt i32 %754, %746
  br i1 %755, label %733, label %756

756:                                              ; preds = %739
  %757 = zext i8 %752 to i32
  br label %758

758:                                              ; preds = %756, %719
  %759 = phi i32 [ %730, %719 ], [ %757, %756 ]
  %760 = phi ptr [ %707, %719 ], [ %741, %756 ]
  %761 = phi i32 [ %708, %719 ], [ %740, %756 ]
  %762 = phi i32 [ %709, %719 ], [ %745, %756 ]
  %763 = phi i32 [ %710, %719 ], [ %746, %756 ]
  %764 = phi ptr [ %727, %719 ], [ %750, %756 ]
  %765 = getelementptr inbounds i8, ptr %764, i32 2
  %766 = load i16, ptr %765, align 2
  %767 = load i8, ptr %764, align 2
  %768 = lshr i32 %762, %705
  %769 = sub i32 %763, %705
  %770 = zext i8 %767 to i32
  br label %771

771:                                              ; preds = %758, %704
  %772 = phi i32 [ %714, %704 ], [ %770, %758 ]
  %773 = phi i32 [ %705, %704 ], [ %759, %758 ]
  %774 = phi ptr [ %707, %704 ], [ %760, %758 ]
  %775 = phi i32 [ %708, %704 ], [ %761, %758 ]
  %776 = phi i32 [ %709, %704 ], [ %768, %758 ]
  %777 = phi i32 [ %710, %704 ], [ %769, %758 ]
  %778 = phi i8 [ %713, %704 ], [ %767, %758 ]
  %779 = phi i16 [ %712, %704 ], [ %766, %758 ]
  %780 = lshr i32 %776, %773
  %781 = sub i32 %777, %773
  %782 = zext i16 %779 to i32
  store i32 %782, ptr %39, align 4
  %783 = icmp eq i8 %778, 0
  br i1 %783, label %784, label %785

784:                                              ; preds = %771
  store i32 23, ptr %6, align 4
  br label %1143

785:                                              ; preds = %771
  %786 = and i32 %772, 32
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %789, label %788

788:                                              ; preds = %785
  store i32 11, ptr %6, align 4
  br label %1143

789:                                              ; preds = %785
  %790 = and i32 %772, 64
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %793, label %792

792:                                              ; preds = %789
  store ptr @.str.10, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1143

793:                                              ; preds = %789
  %794 = and i32 %772, 15
  store i32 %794, ptr %52, align 4
  store i32 19, ptr %6, align 4
  br label %795

795:                                              ; preds = %793, %77
  %796 = phi i32 [ %78, %77 ], [ %794, %793 ]
  %797 = phi ptr [ %65, %77 ], [ %774, %793 ]
  %798 = phi i32 [ %67, %77 ], [ %775, %793 ]
  %799 = phi i32 [ %69, %77 ], [ %780, %793 ]
  %800 = phi i32 [ %70, %77 ], [ %781, %793 ]
  %801 = phi i32 [ %72, %77 ], [ %660, %793 ]
  %802 = icmp eq i32 %796, 0
  br i1 %802, label %832, label %803

803:                                              ; preds = %795
  %804 = icmp ult i32 %800, %796
  br i1 %804, label %805, label %820

805:                                              ; preds = %811, %803
  %806 = phi i32 [ %818, %811 ], [ %800, %803 ]
  %807 = phi i32 [ %817, %811 ], [ %799, %803 ]
  %808 = phi i32 [ %812, %811 ], [ %798, %803 ]
  %809 = phi ptr [ %813, %811 ], [ %797, %803 ]
  %810 = icmp eq i32 %808, 0
  br i1 %810, label %1169, label %811

811:                                              ; preds = %805
  %812 = add i32 %808, -1
  %813 = getelementptr i8, ptr %809, i32 1
  %814 = load i8, ptr %809, align 1
  %815 = zext i8 %814 to i32
  %816 = shl i32 %815, %806
  %817 = add i32 %816, %807
  %818 = add i32 %806, 8
  %819 = icmp ult i32 %818, %796
  br i1 %819, label %805, label %820

820:                                              ; preds = %811, %803
  %821 = phi ptr [ %797, %803 ], [ %813, %811 ]
  %822 = phi i32 [ %798, %803 ], [ %812, %811 ]
  %823 = phi i32 [ %799, %803 ], [ %817, %811 ]
  %824 = phi i32 [ %800, %803 ], [ %818, %811 ]
  %825 = shl nsw i32 -1, %796
  %826 = xor i32 %825, -1
  %827 = and i32 %823, %826
  %828 = load i32, ptr %39, align 4
  %829 = add i32 %828, %827
  store i32 %829, ptr %39, align 4
  %830 = lshr i32 %823, %796
  %831 = sub i32 %824, %796
  br label %832

832:                                              ; preds = %820, %795
  %833 = phi ptr [ %821, %820 ], [ %797, %795 ]
  %834 = phi i32 [ %822, %820 ], [ %798, %795 ]
  %835 = phi i32 [ %830, %820 ], [ %799, %795 ]
  %836 = phi i32 [ %831, %820 ], [ %800, %795 ]
  store i32 20, ptr %6, align 4
  br label %837

837:                                              ; preds = %832, %63
  %838 = phi ptr [ %65, %63 ], [ %833, %832 ]
  %839 = phi i32 [ %67, %63 ], [ %834, %832 ]
  %840 = phi i32 [ %69, %63 ], [ %835, %832 ]
  %841 = phi i32 [ %70, %63 ], [ %836, %832 ]
  %842 = phi i32 [ %72, %63 ], [ %801, %832 ]
  %843 = load ptr, ptr %50, align 4
  %844 = load i32, ptr %51, align 4
  %845 = shl nsw i32 -1, %844
  %846 = xor i32 %845, -1
  %847 = and i32 %840, %846
  %848 = getelementptr %struct.code, ptr %843, i32 %847
  %849 = getelementptr inbounds i8, ptr %848, i32 1
  %850 = load i8, ptr %849, align 1
  %851 = zext i8 %850 to i32
  %852 = icmp ult i32 %841, %851
  br i1 %852, label %853, label %875

853:                                              ; preds = %859, %837
  %854 = phi i32 [ %866, %859 ], [ %841, %837 ]
  %855 = phi i32 [ %865, %859 ], [ %840, %837 ]
  %856 = phi i32 [ %860, %859 ], [ %839, %837 ]
  %857 = phi ptr [ %861, %859 ], [ %838, %837 ]
  %858 = icmp eq i32 %856, 0
  br i1 %858, label %1165, label %859

859:                                              ; preds = %853
  %860 = add i32 %856, -1
  %861 = getelementptr i8, ptr %857, i32 1
  %862 = load i8, ptr %857, align 1
  %863 = zext i8 %862 to i32
  %864 = shl i32 %863, %854
  %865 = add i32 %864, %855
  %866 = add nuw nsw i32 %854, 8
  %867 = and i32 %865, %846
  %868 = getelementptr %struct.code, ptr %843, i32 %867
  %869 = getelementptr inbounds i8, ptr %868, i32 1
  %870 = load i8, ptr %869, align 1
  %871 = zext i8 %870 to i32
  %872 = icmp ult i32 %866, %871
  br i1 %872, label %853, label %873

873:                                              ; preds = %859
  %874 = zext i8 %870 to i32
  br label %875

875:                                              ; preds = %873, %837
  %876 = phi i32 [ %851, %837 ], [ %874, %873 ]
  %877 = phi ptr [ %848, %837 ], [ %868, %873 ]
  %878 = phi ptr [ %838, %837 ], [ %861, %873 ]
  %879 = phi i32 [ %839, %837 ], [ %860, %873 ]
  %880 = phi i32 [ %840, %837 ], [ %865, %873 ]
  %881 = phi i32 [ %841, %837 ], [ %866, %873 ]
  %882 = getelementptr inbounds i8, ptr %877, i32 2
  %883 = load i16, ptr %882, align 2
  %884 = load i8, ptr %877, align 2
  %885 = zext i8 %884 to i32
  %886 = and i32 %885, 240
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %888, label %940

888:                                              ; preds = %875
  %889 = zext i16 %883 to i32
  %890 = add nuw nsw i32 %876, %885
  %891 = shl nsw i32 -1, %890
  %892 = xor i32 %891, -1
  %893 = and i32 %880, %892
  %894 = lshr i32 %893, %876
  %895 = add i32 %894, %889
  %896 = getelementptr %struct.code, ptr %843, i32 %895
  %897 = getelementptr inbounds i8, ptr %896, i32 1
  %898 = load i8, ptr %897, align 1
  %899 = zext i8 %898 to i32
  %900 = add nuw nsw i32 %876, %899
  %901 = icmp ugt i32 %900, %881
  br i1 %901, label %902, label %927

902:                                              ; preds = %908, %888
  %903 = phi i32 [ %915, %908 ], [ %881, %888 ]
  %904 = phi i32 [ %914, %908 ], [ %880, %888 ]
  %905 = phi i32 [ %909, %908 ], [ %879, %888 ]
  %906 = phi ptr [ %910, %908 ], [ %878, %888 ]
  %907 = icmp eq i32 %905, 0
  br i1 %907, label %1161, label %908

908:                                              ; preds = %902
  %909 = add i32 %905, -1
  %910 = getelementptr i8, ptr %906, i32 1
  %911 = load i8, ptr %906, align 1
  %912 = zext i8 %911 to i32
  %913 = shl i32 %912, %903
  %914 = add i32 %913, %904
  %915 = add nuw nsw i32 %903, 8
  %916 = and i32 %914, %892
  %917 = lshr i32 %916, %876
  %918 = add i32 %917, %889
  %919 = getelementptr %struct.code, ptr %843, i32 %918
  %920 = getelementptr inbounds i8, ptr %919, i32 1
  %921 = load i8, ptr %920, align 1
  %922 = zext i8 %921 to i32
  %923 = add nuw nsw i32 %876, %922
  %924 = icmp ugt i32 %923, %915
  br i1 %924, label %902, label %925

925:                                              ; preds = %908
  %926 = zext i8 %921 to i32
  br label %927

927:                                              ; preds = %925, %888
  %928 = phi i32 [ %899, %888 ], [ %926, %925 ]
  %929 = phi ptr [ %878, %888 ], [ %910, %925 ]
  %930 = phi i32 [ %879, %888 ], [ %909, %925 ]
  %931 = phi i32 [ %880, %888 ], [ %914, %925 ]
  %932 = phi i32 [ %881, %888 ], [ %915, %925 ]
  %933 = phi ptr [ %896, %888 ], [ %919, %925 ]
  %934 = getelementptr inbounds i8, ptr %933, i32 2
  %935 = load i16, ptr %934, align 2
  %936 = load i8, ptr %933, align 2
  %937 = lshr i32 %931, %876
  %938 = sub i32 %932, %876
  %939 = zext i8 %936 to i32
  br label %940

940:                                              ; preds = %927, %875
  %941 = phi i32 [ %885, %875 ], [ %939, %927 ]
  %942 = phi i32 [ %876, %875 ], [ %928, %927 ]
  %943 = phi ptr [ %878, %875 ], [ %929, %927 ]
  %944 = phi i32 [ %879, %875 ], [ %930, %927 ]
  %945 = phi i32 [ %880, %875 ], [ %937, %927 ]
  %946 = phi i32 [ %881, %875 ], [ %938, %927 ]
  %947 = phi i16 [ %883, %875 ], [ %935, %927 ]
  %948 = lshr i32 %945, %942
  %949 = sub i32 %946, %942
  %950 = and i32 %941, 64
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %953, label %952

952:                                              ; preds = %940
  store ptr @.str.11, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1143

953:                                              ; preds = %940
  %954 = zext i16 %947 to i32
  store i32 %954, ptr %53, align 4
  %955 = and i32 %941, 15
  store i32 %955, ptr %52, align 4
  store i32 21, ptr %6, align 4
  br label %956

956:                                              ; preds = %953, %75
  %957 = phi i32 [ %76, %75 ], [ %955, %953 ]
  %958 = phi ptr [ %65, %75 ], [ %943, %953 ]
  %959 = phi i32 [ %67, %75 ], [ %944, %953 ]
  %960 = phi i32 [ %69, %75 ], [ %948, %953 ]
  %961 = phi i32 [ %70, %75 ], [ %949, %953 ]
  %962 = phi i32 [ %72, %75 ], [ %842, %953 ]
  %963 = icmp eq i32 %957, 0
  br i1 %963, label %964, label %966

964:                                              ; preds = %956
  %965 = load i32, ptr %53, align 4
  br label %995

966:                                              ; preds = %956
  %967 = icmp ult i32 %961, %957
  br i1 %967, label %968, label %983

968:                                              ; preds = %974, %966
  %969 = phi i32 [ %981, %974 ], [ %961, %966 ]
  %970 = phi i32 [ %980, %974 ], [ %960, %966 ]
  %971 = phi i32 [ %975, %974 ], [ %959, %966 ]
  %972 = phi ptr [ %976, %974 ], [ %958, %966 ]
  %973 = icmp eq i32 %971, 0
  br i1 %973, label %1157, label %974

974:                                              ; preds = %968
  %975 = add i32 %971, -1
  %976 = getelementptr i8, ptr %972, i32 1
  %977 = load i8, ptr %972, align 1
  %978 = zext i8 %977 to i32
  %979 = shl i32 %978, %969
  %980 = add i32 %979, %970
  %981 = add i32 %969, 8
  %982 = icmp ult i32 %981, %957
  br i1 %982, label %968, label %983

983:                                              ; preds = %974, %966
  %984 = phi ptr [ %958, %966 ], [ %976, %974 ]
  %985 = phi i32 [ %959, %966 ], [ %975, %974 ]
  %986 = phi i32 [ %960, %966 ], [ %980, %974 ]
  %987 = phi i32 [ %961, %966 ], [ %981, %974 ]
  %988 = shl nsw i32 -1, %957
  %989 = xor i32 %988, -1
  %990 = and i32 %986, %989
  %991 = load i32, ptr %53, align 4
  %992 = add i32 %991, %990
  store i32 %992, ptr %53, align 4
  %993 = lshr i32 %986, %957
  %994 = sub i32 %987, %957
  br label %995

995:                                              ; preds = %983, %964
  %996 = phi i32 [ %992, %983 ], [ %965, %964 ]
  %997 = phi ptr [ %984, %983 ], [ %958, %964 ]
  %998 = phi i32 [ %985, %983 ], [ %959, %964 ]
  %999 = phi i32 [ %993, %983 ], [ %960, %964 ]
  %1000 = phi i32 [ %994, %983 ], [ %961, %964 ]
  %1001 = load i32, ptr %54, align 4
  %1002 = sub i32 %71, %68
  %1003 = add i32 %1002, %1001
  %1004 = icmp ugt i32 %996, %1003
  br i1 %1004, label %1005, label %1006

1005:                                             ; preds = %995
  store ptr @.str.12, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1143

1006:                                             ; preds = %995
  store i32 22, ptr %6, align 4
  br label %1007

1007:                                             ; preds = %1006, %63
  %1008 = phi ptr [ %65, %63 ], [ %997, %1006 ]
  %1009 = phi i32 [ %67, %63 ], [ %998, %1006 ]
  %1010 = phi i32 [ %69, %63 ], [ %999, %1006 ]
  %1011 = phi i32 [ %70, %63 ], [ %1000, %1006 ]
  %1012 = phi i32 [ %72, %63 ], [ %962, %1006 ]
  %1013 = icmp eq i32 %68, 0
  br i1 %1013, label %1181, label %1014

1014:                                             ; preds = %1007
  %1015 = sub i32 %71, %68
  %1016 = load i32, ptr %53, align 4
  %1017 = icmp ugt i32 %1016, %1015
  br i1 %1017, label %1018, label %1037

1018:                                             ; preds = %1014
  %1019 = sub i32 %1016, %1015
  %1020 = load i32, ptr %55, align 4
  %1021 = icmp ugt i32 %1019, %1020
  br i1 %1021, label %1022, label %1028

1022:                                             ; preds = %1018
  %1023 = sub i32 %1019, %1020
  %1024 = load ptr, ptr %56, align 4
  %1025 = load i32, ptr %57, align 4
  %1026 = sub i32 %1025, %1023
  %1027 = getelementptr i8, ptr %1024, i32 %1026
  br label %1032

1028:                                             ; preds = %1018
  %1029 = load ptr, ptr %56, align 4
  %1030 = sub i32 %1020, %1019
  %1031 = getelementptr i8, ptr %1029, i32 %1030
  br label %1032

1032:                                             ; preds = %1028, %1022
  %1033 = phi i32 [ %1023, %1022 ], [ %1019, %1028 ]
  %1034 = phi ptr [ %1027, %1022 ], [ %1031, %1028 ]
  %1035 = load i32, ptr %39, align 4
  %1036 = tail call i32 @llvm.umin.i32(i32 %1033, i32 %1035)
  br label %1041

1037:                                             ; preds = %1014
  %1038 = sub i32 0, %1016
  %1039 = getelementptr i8, ptr %66, i32 %1038
  %1040 = load i32, ptr %39, align 4
  br label %1041

1041:                                             ; preds = %1037, %1032
  %1042 = phi i32 [ %1040, %1037 ], [ %1035, %1032 ]
  %1043 = phi i32 [ %1040, %1037 ], [ %1036, %1032 ]
  %1044 = phi ptr [ %1039, %1037 ], [ %1034, %1032 ]
  %1045 = tail call i32 @llvm.umin.i32(i32 %1043, i32 %68)
  %1046 = sub i32 %1042, %1045
  store i32 %1046, ptr %39, align 4
  br label %1047

1047:                                             ; preds = %1047, %1041
  %1048 = phi ptr [ %66, %1041 ], [ %1053, %1047 ]
  %1049 = phi i32 [ %1045, %1041 ], [ %1054, %1047 ]
  %1050 = phi ptr [ %1044, %1041 ], [ %1051, %1047 ]
  %1051 = getelementptr i8, ptr %1050, i32 1
  %1052 = load i8, ptr %1050, align 1
  %1053 = getelementptr i8, ptr %1048, i32 1
  store i8 %1052, ptr %1048, align 1
  %1054 = add i32 %1049, -1
  %1055 = icmp eq i32 %1054, 0
  br i1 %1055, label %1056, label %1047

1056:                                             ; preds = %1047
  %1057 = sub i32 %68, %1045
  %1058 = load i32, ptr %39, align 4
  %1059 = icmp eq i32 %1058, 0
  br i1 %1059, label %1060, label %1143

1060:                                             ; preds = %1056
  store i32 18, ptr %6, align 4
  br label %1143

1061:                                             ; preds = %63
  %1062 = icmp eq i32 %68, 0
  br i1 %1062, label %1181, label %1063

1063:                                             ; preds = %1061
  %1064 = load i32, ptr %39, align 4
  %1065 = trunc i32 %1064 to i8
  %1066 = getelementptr i8, ptr %66, i32 1
  store i8 %1065, ptr %66, align 1
  %1067 = add i32 %68, -1
  store i32 18, ptr %6, align 4
  br label %1143

1068:                                             ; preds = %63
  %1069 = load i32, ptr %33, align 4
  %1070 = icmp eq i32 %1069, 0
  br i1 %1070, label %1137, label %1071

1071:                                             ; preds = %1068
  %1072 = icmp ult i32 %70, 32
  br i1 %1072, label %1073, label %1116

1073:                                             ; preds = %1071
  %1074 = icmp eq i32 %67, 0
  br i1 %1074, label %1188, label %1075

1075:                                             ; preds = %1073
  %1076 = add i32 %67, -1
  %1077 = getelementptr i8, ptr %65, i32 1
  %1078 = load i8, ptr %65, align 1
  %1079 = zext i8 %1078 to i32
  %1080 = shl i32 %1079, %70
  %1081 = add i32 %1080, %69
  %1082 = add nuw nsw i32 %70, 8
  %1083 = icmp ult i32 %70, 24
  br i1 %1083, label %1084, label %1116

1084:                                             ; preds = %1075
  %1085 = icmp eq i32 %1076, 0
  br i1 %1085, label %1188, label %1086

1086:                                             ; preds = %1084
  %1087 = add i32 %67, -2
  %1088 = getelementptr i8, ptr %65, i32 2
  %1089 = load i8, ptr %1077, align 1
  %1090 = zext i8 %1089 to i32
  %1091 = shl i32 %1090, %1082
  %1092 = add i32 %1091, %1081
  %1093 = add nuw nsw i32 %70, 16
  %1094 = icmp ult i32 %70, 16
  br i1 %1094, label %1095, label %1116

1095:                                             ; preds = %1086
  %1096 = icmp eq i32 %1087, 0
  br i1 %1096, label %1188, label %1097

1097:                                             ; preds = %1095
  %1098 = add i32 %67, -3
  %1099 = getelementptr i8, ptr %65, i32 3
  %1100 = load i8, ptr %1088, align 1
  %1101 = zext i8 %1100 to i32
  %1102 = shl i32 %1101, %1093
  %1103 = add i32 %1102, %1092
  %1104 = add nuw nsw i32 %70, 24
  %1105 = icmp ult i32 %70, 8
  br i1 %1105, label %1106, label %1116

1106:                                             ; preds = %1097
  %1107 = icmp eq i32 %1098, 0
  br i1 %1107, label %1188, label %1108

1108:                                             ; preds = %1106
  %1109 = add i32 %67, -4
  %1110 = getelementptr i8, ptr %65, i32 4
  %1111 = load i8, ptr %1099, align 1
  %1112 = zext i8 %1111 to i32
  %1113 = shl i32 %1112, %1104
  %1114 = add i32 %1113, %1103
  %1115 = add nuw nsw i32 %70, 32
  br label %1116

1116:                                             ; preds = %1108, %1097, %1086, %1075, %1071
  %1117 = phi ptr [ %65, %1071 ], [ %1077, %1075 ], [ %1088, %1086 ], [ %1099, %1097 ], [ %1110, %1108 ]
  %1118 = phi i32 [ %67, %1071 ], [ %1076, %1075 ], [ %1087, %1086 ], [ %1098, %1097 ], [ %1109, %1108 ]
  %1119 = phi i32 [ %69, %1071 ], [ %1081, %1075 ], [ %1092, %1086 ], [ %1103, %1097 ], [ %1114, %1108 ]
  %1120 = phi i32 [ %70, %1071 ], [ %1082, %1075 ], [ %1093, %1086 ], [ %1104, %1097 ], [ %1115, %1108 ]
  %1121 = sub i32 %71, %68
  %1122 = load i32, ptr %34, align 4
  %1123 = add i32 %1122, %1121
  store i32 %1123, ptr %34, align 4
  %1124 = load i32, ptr %35, align 4
  %1125 = add i32 %1124, %1121
  store i32 %1125, ptr %35, align 4
  %1126 = icmp eq i32 %71, %68
  br i1 %1126, label %1132, label %1127

1127:                                             ; preds = %1116
  %1128 = load i32, ptr %36, align 4
  %1129 = sub i32 0, %1121
  %1130 = getelementptr i8, ptr %66, i32 %1129
  %1131 = tail call fastcc i32 @zlib_adler32(i32 noundef %1128, ptr noundef %1130, i32 noundef %1121)
  store i32 %1131, ptr %36, align 4
  store i32 %1131, ptr %37, align 4
  br label %1132

1132:                                             ; preds = %1127, %1116
  %1133 = tail call i32 @llvm.bswap.i32(i32 %1119)
  %1134 = load i32, ptr %36, align 4
  %1135 = icmp eq i32 %1133, %1134
  br i1 %1135, label %1137, label %1136

1136:                                             ; preds = %1132
  store ptr @.str.13, ptr %38, align 4
  store i32 27, ptr %6, align 4
  br label %1143

1137:                                             ; preds = %1132, %1068
  %1138 = phi ptr [ %65, %1068 ], [ %1117, %1132 ]
  %1139 = phi i32 [ %67, %1068 ], [ %1118, %1132 ]
  %1140 = phi i32 [ %69, %1068 ], [ 0, %1132 ]
  %1141 = phi i32 [ %70, %1068 ], [ 0, %1132 ]
  %1142 = phi i32 [ %71, %1068 ], [ %68, %1132 ]
  store i32 26, ptr %6, align 4
  br label %1188

1143:                                             ; preds = %1136, %1063, %1060, %1056, %1005, %952, %792, %788, %784, %675, %653, %645, %634, %616, %541, %422, %358, %318, %311, %298, %237, %211, %136, %134, %127, %123, %90
  %1144 = phi ptr [ %1117, %1136 ], [ %65, %1063 ], [ %1008, %1060 ], [ %1008, %1056 ], [ %997, %1005 ], [ %943, %952 ], [ %678, %675 ], [ %774, %784 ], [ %774, %788 ], [ %774, %792 ], [ %625, %634 ], [ %641, %645 ], [ %641, %653 ], [ %372, %422 ], [ %341, %358 ], [ %313, %311 ], [ %302, %318 ], [ %290, %298 ], [ %203, %211 ], [ %226, %237 ], [ %65, %90 ], [ %113, %123 ], [ %113, %127 ], [ %113, %134 ], [ %113, %136 ], [ %603, %616 ], [ %534, %541 ]
  %1145 = phi ptr [ %66, %1136 ], [ %1066, %1063 ], [ %1053, %1060 ], [ %1053, %1056 ], [ %66, %1005 ], [ %66, %952 ], [ %676, %675 ], [ %66, %784 ], [ %66, %788 ], [ %66, %792 ], [ %66, %634 ], [ %66, %645 ], [ %66, %653 ], [ %66, %422 ], [ %66, %358 ], [ %315, %311 ], [ %66, %318 ], [ %66, %298 ], [ %66, %211 ], [ %66, %237 ], [ %66, %90 ], [ %66, %123 ], [ %66, %127 ], [ %66, %134 ], [ %66, %136 ], [ %66, %616 ], [ %66, %541 ]
  %1146 = phi i32 [ %1118, %1136 ], [ %67, %1063 ], [ %1009, %1060 ], [ %1009, %1056 ], [ %998, %1005 ], [ %944, %952 ], [ %679, %675 ], [ %775, %784 ], [ %775, %788 ], [ %775, %792 ], [ %626, %634 ], [ %640, %645 ], [ %640, %653 ], [ %373, %422 ], [ %342, %358 ], [ %312, %311 ], [ %303, %318 ], [ %291, %298 ], [ %204, %211 ], [ %227, %237 ], [ %67, %90 ], [ %114, %123 ], [ %114, %127 ], [ %114, %134 ], [ %114, %136 ], [ %604, %616 ], [ %535, %541 ]
  %1147 = phi i32 [ %68, %1136 ], [ %1067, %1063 ], [ %1057, %1060 ], [ %1057, %1056 ], [ %68, %1005 ], [ %68, %952 ], [ %677, %675 ], [ %68, %784 ], [ %68, %788 ], [ %68, %792 ], [ %68, %634 ], [ %68, %645 ], [ %68, %653 ], [ %68, %422 ], [ %68, %358 ], [ %314, %311 ], [ %68, %318 ], [ %68, %298 ], [ %68, %211 ], [ %68, %237 ], [ %68, %90 ], [ %68, %123 ], [ %68, %127 ], [ %68, %134 ], [ %68, %136 ], [ %68, %616 ], [ %68, %541 ]
  %1148 = phi i32 [ %1119, %1136 ], [ %69, %1063 ], [ %1010, %1060 ], [ %1010, %1056 ], [ %999, %1005 ], [ %948, %952 ], [ %680, %675 ], [ %780, %784 ], [ %780, %788 ], [ %780, %792 ], [ %627, %634 ], [ %639, %645 ], [ %639, %653 ], [ %374, %422 ], [ %353, %358 ], [ %304, %311 ], [ %304, %318 ], [ %292, %298 ], [ %213, %211 ], [ %239, %237 ], [ %69, %90 ], [ %115, %123 ], [ %115, %127 ], [ %129, %134 ], [ 0, %136 ], [ %605, %616 ], [ %538, %541 ]
  %1149 = phi i32 [ %1120, %1136 ], [ %70, %1063 ], [ %1011, %1060 ], [ %1011, %1056 ], [ %1000, %1005 ], [ %949, %952 ], [ %681, %675 ], [ %781, %784 ], [ %781, %788 ], [ %781, %792 ], [ %628, %634 ], [ %638, %645 ], [ %638, %653 ], [ %375, %422 ], [ %354, %358 ], [ %305, %311 ], [ %305, %318 ], [ %293, %298 ], [ %214, %211 ], [ %240, %237 ], [ %70, %90 ], [ %116, %123 ], [ %116, %127 ], [ %135, %134 ], [ 0, %136 ], [ %606, %616 ], [ %539, %541 ]
  %1150 = phi i32 [ %68, %1136 ], [ %71, %1063 ], [ %71, %1060 ], [ %71, %1056 ], [ %71, %1005 ], [ %71, %952 ], [ %71, %675 ], [ %71, %784 ], [ %71, %788 ], [ %71, %792 ], [ %71, %634 ], [ %71, %645 ], [ %71, %653 ], [ %71, %422 ], [ %71, %358 ], [ %71, %311 ], [ %71, %318 ], [ %71, %298 ], [ %71, %211 ], [ %71, %237 ], [ %71, %90 ], [ %71, %123 ], [ %71, %127 ], [ %71, %134 ], [ %71, %136 ], [ %71, %616 ], [ %71, %541 ]
  %1151 = phi i32 [ %72, %1136 ], [ %72, %1063 ], [ %1012, %1060 ], [ %1012, %1056 ], [ %962, %1005 ], [ %842, %952 ], [ %660, %675 ], [ %660, %784 ], [ %660, %788 ], [ %660, %792 ], [ %430, %634 ], [ %643, %645 ], [ %651, %653 ], [ %420, %422 ], [ %72, %358 ], [ %72, %311 ], [ %72, %318 ], [ %72, %298 ], [ %72, %211 ], [ %72, %237 ], [ %72, %90 ], [ %72, %123 ], [ %72, %127 ], [ %72, %134 ], [ %72, %136 ], [ %430, %616 ], [ %430, %541 ]
  %1152 = load i32, ptr %6, align 4
  br label %63

1153:                                             ; preds = %451
  %1154 = shl i32 %440, 3
  %1155 = add i32 %438, %1154
  %1156 = getelementptr i8, ptr %441, i32 %440
  br label %1188

1157:                                             ; preds = %968
  %1158 = shl i32 %959, 3
  %1159 = add i32 %961, %1158
  %1160 = getelementptr i8, ptr %958, i32 %959
  br label %1188

1161:                                             ; preds = %902
  %1162 = shl i32 %879, 3
  %1163 = add i32 %881, %1162
  %1164 = getelementptr i8, ptr %878, i32 %879
  br label %1188

1165:                                             ; preds = %853
  %1166 = shl i32 %839, 3
  %1167 = add i32 %841, %1166
  %1168 = getelementptr i8, ptr %838, i32 %839
  br label %1188

1169:                                             ; preds = %805
  %1170 = shl i32 %798, 3
  %1171 = add i32 %800, %1170
  %1172 = getelementptr i8, ptr %797, i32 %798
  br label %1188

1173:                                             ; preds = %733
  %1174 = shl i32 %708, 3
  %1175 = add i32 %710, %1174
  %1176 = getelementptr i8, ptr %707, i32 %708
  br label %1188

1177:                                             ; preds = %682
  %1178 = shl i32 %657, 3
  %1179 = add i32 %659, %1178
  %1180 = getelementptr i8, ptr %656, i32 %657
  br label %1188

1181:                                             ; preds = %1061, %1007, %307, %197, %63
  %1182 = phi i32 [ 0, %1061 ], [ 0, %1007 ], [ %68, %307 ], [ %68, %197 ], [ %68, %63 ]
  %1183 = phi ptr [ %65, %1061 ], [ %1008, %1007 ], [ %302, %307 ], [ %198, %197 ], [ %65, %63 ]
  %1184 = phi i32 [ %67, %1061 ], [ %1009, %1007 ], [ %303, %307 ], [ %199, %197 ], [ %67, %63 ]
  %1185 = phi i32 [ %69, %1061 ], [ %1010, %1007 ], [ %304, %307 ], [ %200, %197 ], [ %69, %63 ]
  %1186 = phi i32 [ %70, %1061 ], [ %1011, %1007 ], [ %305, %307 ], [ %201, %197 ], [ %70, %63 ]
  %1187 = phi i32 [ %72, %1061 ], [ %1012, %1007 ], [ %72, %307 ], [ %72, %197 ], [ 1, %63 ]
  br label %1188

1188:                                             ; preds = %1181, %1177, %1173, %1169, %1165, %1161, %1157, %1153, %1137, %1106, %1095, %1084, %1073, %576, %550, %518, %484, %385, %330, %319, %279, %268, %257, %246, %215, %174, %163, %152, %141, %102, %91, %63
  %1189 = phi i32 [ %68, %1137 ], [ %68, %1153 ], [ %68, %1157 ], [ %68, %1161 ], [ %68, %1165 ], [ %68, %1169 ], [ %68, %1173 ], [ %68, %1177 ], [ %1182, %1181 ], [ %68, %63 ], [ %68, %215 ], [ %68, %484 ], [ %68, %576 ], [ %68, %518 ], [ %68, %550 ], [ %68, %102 ], [ %68, %91 ], [ %68, %174 ], [ %68, %163 ], [ %68, %152 ], [ %68, %141 ], [ %68, %279 ], [ %68, %268 ], [ %68, %257 ], [ %68, %246 ], [ %68, %385 ], [ %68, %330 ], [ %68, %319 ], [ %68, %1106 ], [ %68, %1095 ], [ %68, %1084 ], [ %68, %1073 ]
  %1190 = phi ptr [ %1138, %1137 ], [ %1156, %1153 ], [ %1160, %1157 ], [ %1164, %1161 ], [ %1168, %1165 ], [ %1172, %1169 ], [ %1176, %1173 ], [ %1180, %1177 ], [ %1183, %1181 ], [ %203, %215 ], [ %65, %63 ], [ %488, %484 ], [ %580, %576 ], [ %522, %518 ], [ %554, %550 ], [ %65, %91 ], [ %95, %102 ], [ %65, %141 ], [ %145, %152 ], [ %156, %163 ], [ %167, %174 ], [ %65, %246 ], [ %250, %257 ], [ %261, %268 ], [ %272, %279 ], [ %383, %385 ], [ %65, %319 ], [ %323, %330 ], [ %65, %1073 ], [ %1077, %1084 ], [ %1088, %1095 ], [ %1099, %1106 ]
  %1191 = phi i32 [ %1139, %1137 ], [ 0, %1153 ], [ 0, %1157 ], [ 0, %1161 ], [ 0, %1165 ], [ 0, %1169 ], [ 0, %1173 ], [ 0, %1177 ], [ %1184, %1181 ], [ 0, %215 ], [ %67, %63 ], [ 0, %484 ], [ 0, %576 ], [ 0, %518 ], [ 0, %550 ], [ 0, %102 ], [ 0, %91 ], [ 0, %174 ], [ 0, %163 ], [ 0, %152 ], [ 0, %141 ], [ 0, %279 ], [ 0, %268 ], [ 0, %257 ], [ 0, %246 ], [ 0, %385 ], [ 0, %330 ], [ 0, %319 ], [ 0, %1106 ], [ 0, %1095 ], [ 0, %1084 ], [ 0, %1073 ]
  %1192 = phi i32 [ %1140, %1137 ], [ %453, %1153 ], [ %970, %1157 ], [ %904, %1161 ], [ %855, %1165 ], [ %807, %1169 ], [ %735, %1173 ], [ %684, %1177 ], [ %1185, %1181 ], [ %205, %215 ], [ %69, %63 ], [ %486, %484 ], [ %578, %576 ], [ %520, %518 ], [ %552, %550 ], [ %69, %91 ], [ %99, %102 ], [ %69, %141 ], [ %149, %152 ], [ %160, %163 ], [ %171, %174 ], [ %243, %246 ], [ %254, %257 ], [ %265, %268 ], [ %276, %279 ], [ %381, %385 ], [ %69, %319 ], [ %327, %330 ], [ %69, %1073 ], [ %1081, %1084 ], [ %1092, %1095 ], [ %1103, %1106 ]
  %1193 = phi i32 [ %1141, %1137 ], [ %1155, %1153 ], [ %1159, %1157 ], [ %1163, %1161 ], [ %1167, %1165 ], [ %1171, %1169 ], [ %1175, %1173 ], [ %1179, %1177 ], [ %1186, %1181 ], [ %206, %215 ], [ %70, %63 ], [ %485, %484 ], [ %577, %576 ], [ %519, %518 ], [ %551, %550 ], [ %70, %91 ], [ %100, %102 ], [ %70, %141 ], [ %150, %152 ], [ %161, %163 ], [ %172, %174 ], [ %244, %246 ], [ %255, %257 ], [ %266, %268 ], [ %277, %279 ], [ %380, %385 ], [ %70, %319 ], [ %328, %330 ], [ %70, %1073 ], [ %1082, %1084 ], [ %1093, %1095 ], [ %1104, %1106 ]
  %1194 = phi i32 [ %1142, %1137 ], [ %71, %1153 ], [ %71, %1157 ], [ %71, %1161 ], [ %71, %1165 ], [ %71, %1169 ], [ %71, %1173 ], [ %71, %1177 ], [ %71, %1181 ], [ %71, %63 ], [ %71, %215 ], [ %71, %484 ], [ %71, %576 ], [ %71, %518 ], [ %71, %550 ], [ %71, %102 ], [ %71, %91 ], [ %71, %174 ], [ %71, %163 ], [ %71, %152 ], [ %71, %141 ], [ %71, %279 ], [ %71, %268 ], [ %71, %257 ], [ %71, %246 ], [ %71, %385 ], [ %71, %330 ], [ %71, %319 ], [ %71, %1106 ], [ %71, %1095 ], [ %71, %1084 ], [ %71, %1073 ]
  %1195 = phi i32 [ 1, %1137 ], [ %430, %1153 ], [ %962, %1157 ], [ %842, %1161 ], [ %842, %1165 ], [ %801, %1169 ], [ %660, %1173 ], [ %660, %1177 ], [ %1187, %1181 ], [ %72, %215 ], [ -3, %63 ], [ %430, %484 ], [ %430, %576 ], [ %430, %518 ], [ %430, %550 ], [ %72, %102 ], [ %72, %91 ], [ %72, %174 ], [ %72, %163 ], [ %72, %152 ], [ %72, %141 ], [ %72, %279 ], [ %72, %268 ], [ %72, %257 ], [ %72, %246 ], [ %72, %385 ], [ %72, %330 ], [ %72, %319 ], [ %72, %1106 ], [ %72, %1095 ], [ %72, %1084 ], [ %72, %1073 ]
  store ptr %66, ptr %23, align 4
  store i32 %1189, ptr %25, align 4
  store ptr %1190, ptr %0, align 4
  store i32 %1191, ptr %27, align 4
  store i32 %1192, ptr %29, align 4
  store i32 %1193, ptr %31, align 4
  %1196 = load i32, ptr %57, align 4
  %1197 = icmp eq i32 %1196, 0
  br i1 %1197, label %1200, label %1198

1198:                                             ; preds = %1188
  %1199 = load i32, ptr %25, align 4
  br label %1206

1200:                                             ; preds = %1188
  %1201 = load i32, ptr %6, align 4
  %1202 = icmp ult i32 %1201, 24
  br i1 %1202, label %1203, label %1253

1203:                                             ; preds = %1200
  %1204 = load i32, ptr %25, align 4
  %1205 = icmp eq i32 %1194, %1204
  br i1 %1205, label %1253, label %1206

1206:                                             ; preds = %1203, %1198
  %1207 = phi i32 [ %1199, %1198 ], [ %1204, %1203 ]
  %1208 = load ptr, ptr %5, align 4
  %1209 = sub i32 %1194, %1207
  %1210 = getelementptr inbounds %struct.inflate_state, ptr %1208, i32 0, i32 9
  %1211 = load i32, ptr %1210, align 4
  %1212 = icmp ult i32 %1209, %1211
  br i1 %1212, label %1222, label %1213

1213:                                             ; preds = %1206
  %1214 = getelementptr inbounds %struct.inflate_state, ptr %1208, i32 0, i32 12
  %1215 = load ptr, ptr %1214, align 4
  %1216 = load ptr, ptr %23, align 4
  %1217 = sub i32 0, %1211
  %1218 = getelementptr i8, ptr %1216, i32 %1217
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1215, ptr align 1 %1218, i32 %1211, i1 false) #9
  %1219 = getelementptr inbounds %struct.inflate_state, ptr %1208, i32 0, i32 11
  store i32 0, ptr %1219, align 4
  %1220 = load i32, ptr %1210, align 4
  %1221 = getelementptr inbounds %struct.inflate_state, ptr %1208, i32 0, i32 10
  store i32 %1220, ptr %1221, align 4
  br label %1253

1222:                                             ; preds = %1206
  %1223 = getelementptr inbounds %struct.inflate_state, ptr %1208, i32 0, i32 11
  %1224 = load i32, ptr %1223, align 4
  %1225 = sub i32 %1211, %1224
  %1226 = tail call i32 @llvm.umin.i32(i32 %1225, i32 %1209) #9
  %1227 = getelementptr inbounds %struct.inflate_state, ptr %1208, i32 0, i32 12
  %1228 = load ptr, ptr %1227, align 4
  %1229 = getelementptr i8, ptr %1228, i32 %1224
  %1230 = load ptr, ptr %23, align 4
  %1231 = sub i32 0, %1209
  %1232 = getelementptr i8, ptr %1230, i32 %1231
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1229, ptr align 1 %1232, i32 %1226, i1 false) #9
  %1233 = icmp ugt i32 %1209, %1225
  br i1 %1233, label %1234, label %1242

1234:                                             ; preds = %1222
  %1235 = sub i32 %1209, %1226
  %1236 = load ptr, ptr %1227, align 4
  %1237 = load ptr, ptr %23, align 4
  %1238 = sub i32 0, %1235
  %1239 = getelementptr i8, ptr %1237, i32 %1238
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1236, ptr align 1 %1239, i32 %1235, i1 false) #9
  store i32 %1235, ptr %1223, align 4
  %1240 = load i32, ptr %1210, align 4
  %1241 = getelementptr inbounds %struct.inflate_state, ptr %1208, i32 0, i32 10
  store i32 %1240, ptr %1241, align 4
  br label %1253

1242:                                             ; preds = %1222
  %1243 = load i32, ptr %1223, align 4
  %1244 = add i32 %1243, %1226
  %1245 = load i32, ptr %1210, align 4
  %1246 = icmp eq i32 %1244, %1245
  %1247 = select i1 %1246, i32 0, i32 %1244
  store i32 %1247, ptr %1223, align 4
  %1248 = getelementptr inbounds %struct.inflate_state, ptr %1208, i32 0, i32 10
  %1249 = load i32, ptr %1248, align 4
  %1250 = icmp ult i32 %1249, %1245
  br i1 %1250, label %1251, label %1253

1251:                                             ; preds = %1242
  %1252 = add i32 %1249, %1226
  store i32 %1252, ptr %1248, align 4
  br label %1253

1253:                                             ; preds = %1251, %1242, %1234, %1213, %1203, %1200
  %1254 = load i32, ptr %27, align 4
  %1255 = sub i32 %28, %1254
  %1256 = load i32, ptr %25, align 4
  %1257 = sub i32 %1194, %1256
  %1258 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 2
  %1259 = load i32, ptr %1258, align 4
  %1260 = add i32 %1255, %1259
  store i32 %1260, ptr %1258, align 4
  %1261 = load i32, ptr %34, align 4
  %1262 = add i32 %1261, %1257
  store i32 %1262, ptr %34, align 4
  %1263 = load i32, ptr %35, align 4
  %1264 = add i32 %1263, %1257
  store i32 %1264, ptr %35, align 4
  %1265 = load i32, ptr %33, align 4
  %1266 = icmp ne i32 %1265, 0
  %1267 = icmp ne i32 %1194, %1256
  %1268 = select i1 %1266, i1 %1267, i1 false
  br i1 %1268, label %1269, label %1275

1269:                                             ; preds = %1253
  %1270 = load i32, ptr %36, align 4
  %1271 = load ptr, ptr %23, align 4
  %1272 = sub i32 0, %1257
  %1273 = getelementptr i8, ptr %1271, i32 %1272
  %1274 = tail call fastcc i32 @zlib_adler32(i32 noundef %1270, ptr noundef %1273, i32 noundef %1257)
  store i32 %1274, ptr %36, align 4
  store i32 %1274, ptr %37, align 4
  br label %1275

1275:                                             ; preds = %1269, %1253
  %1276 = load i32, ptr %31, align 4
  %1277 = load i32, ptr %60, align 4
  %1278 = icmp eq i32 %1277, 0
  %1279 = select i1 %1278, i32 0, i32 64
  %1280 = add i32 %1279, %1276
  %1281 = load i32, ptr %6, align 4
  %1282 = icmp eq i32 %1281, 11
  %1283 = select i1 %1282, i32 128, i32 0
  %1284 = add i32 %1280, %1283
  %1285 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 9
  store i32 %1284, ptr %1285, align 4
  %1286 = icmp eq i32 %1, 2
  %1287 = icmp eq i32 %1195, 0
  %1288 = select i1 %1286, i1 %1287, i1 false
  br i1 %1288, label %1289, label %1306

1289:                                             ; preds = %1275
  %1290 = load i32, ptr %25, align 4
  %1291 = icmp eq i32 %1290, 0
  br i1 %1291, label %1306, label %1292

1292:                                             ; preds = %1289
  %1293 = load i32, ptr %27, align 4
  %1294 = icmp eq i32 %1293, 0
  br i1 %1294, label %1295, label %1306

1295:                                             ; preds = %1292
  %1296 = load ptr, ptr %5, align 4
  %1297 = icmp eq ptr %1296, null
  br i1 %1297, label %1315, label %1298

1298:                                             ; preds = %1295
  %1299 = load i32, ptr %1296, align 4
  %1300 = icmp eq i32 %1299, 13
  br i1 %1300, label %1301, label %1315

1301:                                             ; preds = %1298
  %1302 = getelementptr inbounds %struct.inflate_state, ptr %1296, i32 0, i32 14
  %1303 = load i32, ptr %1302, align 4
  %1304 = icmp eq i32 %1303, 0
  br i1 %1304, label %1305, label %1315

1305:                                             ; preds = %1301
  store i32 11, ptr %1296, align 4
  br label %1315

1306:                                             ; preds = %1292, %1289, %1275
  %1307 = icmp eq i32 %28, %1254
  %1308 = icmp eq i32 %1194, %1256
  %1309 = select i1 %1307, i1 %1308, i1 false
  %1310 = icmp eq i32 %1, 5
  %1311 = or i1 %1310, %1309
  %1312 = select i1 %1311, i1 %1287, i1 false
  %1313 = select i1 %1312, i32 -5, i32 %1195
  br label %1315

1314:                                             ; preds = %63
  br label %1315

1315:                                             ; preds = %1314, %1306, %1305, %1301, %1298, %1295, %195, %63, %11, %4, %2
  %1316 = phi i32 [ %1313, %1306 ], [ 2, %195 ], [ -2, %11 ], [ -2, %4 ], [ -2, %2 ], [ 0, %1305 ], [ -2, %1295 ], [ -3, %1301 ], [ -3, %1298 ], [ -4, %1314 ], [ -2, %63 ]
  ret i32 %1316
}

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @zlib_adler32(i32 noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #3 {
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

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @inflate_fast(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @zlib_inflateEnd(ptr noundef readonly %0) local_unnamed_addr #6 {
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

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zlib_inflateIncomp(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %3, align 4
  switch i32 %8, label %72 [
    i32 11, label %9
    i32 0, label %9
  ]

9:                                                ; preds = %1, %1
  store i32 0, ptr %6, align 4
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %10, i32 %12
  store ptr %13, ptr %4, align 4
  %14 = getelementptr inbounds %struct.inflate_state, ptr %3, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.inflate_state, ptr %3, i32 0, i32 12
  %19 = load ptr, ptr %18, align 4
  %20 = sub i32 0, %15
  %21 = getelementptr i8, ptr %13, i32 %20
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %19, ptr align 1 %21, i32 %15, i1 false) #9
  %22 = getelementptr inbounds %struct.inflate_state, ptr %3, i32 0, i32 11
  store i32 0, ptr %22, align 4
  %23 = load i32, ptr %14, align 4
  %24 = getelementptr inbounds %struct.inflate_state, ptr %3, i32 0, i32 10
  store i32 %23, ptr %24, align 4
  br label %53

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.inflate_state, ptr %3, i32 0, i32 11
  %27 = load i32, ptr %26, align 4
  %28 = sub i32 %15, %27
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 %12) #9
  %30 = getelementptr inbounds %struct.inflate_state, ptr %3, i32 0, i32 12
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 %27
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %32, ptr align 1 %10, i32 %29, i1 false) #9
  %33 = icmp ugt i32 %12, %28
  br i1 %33, label %34, label %42

34:                                               ; preds = %25
  %35 = sub i32 %12, %29
  %36 = load ptr, ptr %30, align 4
  %37 = load ptr, ptr %4, align 4
  %38 = sub i32 0, %35
  %39 = getelementptr i8, ptr %37, i32 %38
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %36, ptr align 1 %39, i32 %35, i1 false) #9
  store i32 %35, ptr %26, align 4
  %40 = load i32, ptr %14, align 4
  %41 = getelementptr inbounds %struct.inflate_state, ptr %3, i32 0, i32 10
  store i32 %40, ptr %41, align 4
  br label %53

42:                                               ; preds = %25
  %43 = load i32, ptr %26, align 4
  %44 = add i32 %43, %29
  %45 = load i32, ptr %14, align 4
  %46 = icmp eq i32 %44, %45
  %47 = select i1 %46, i32 0, i32 %44
  store i32 %47, ptr %26, align 4
  %48 = getelementptr inbounds %struct.inflate_state, ptr %3, i32 0, i32 10
  %49 = load i32, ptr %48, align 4
  %50 = icmp ult i32 %49, %45
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = add i32 %49, %29
  store i32 %52, ptr %48, align 4
  br label %53

53:                                               ; preds = %51, %42, %34, %17
  store i32 %7, ptr %6, align 4
  store ptr %5, ptr %4, align 4
  %54 = getelementptr inbounds %struct.inflate_state, ptr %3, i32 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = load ptr, ptr %0, align 4
  %57 = load i32, ptr %11, align 4
  %58 = tail call fastcc i32 @zlib_adler32(i32 noundef %55, ptr noundef %56, i32 noundef %57)
  store i32 %58, ptr %54, align 4
  %59 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 10
  store i32 %58, ptr %59, align 4
  %60 = load i32, ptr %11, align 4
  %61 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, %60
  store i32 %63, ptr %61, align 4
  %64 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, %60
  store i32 %66, ptr %64, align 4
  %67 = load ptr, ptr %0, align 4
  %68 = getelementptr i8, ptr %67, i32 %60
  store ptr %68, ptr %0, align 4
  %69 = getelementptr inbounds %struct.inflate_state, ptr %3, i32 0, i32 7
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, %60
  store i32 %71, ptr %69, align 4
  store i32 0, ptr %11, align 4
  br label %72

72:                                               ; preds = %53, %1
  %73 = phi i32 [ 0, %53 ], [ -3, %1 ]
  ret i32 %73
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
