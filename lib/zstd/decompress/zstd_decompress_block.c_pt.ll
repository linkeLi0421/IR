; ModuleID = '/llk/IR/lib/zstd/decompress/zstd_decompress_block.c_pt.bc'
source_filename = "../lib/zstd/decompress/zstd_decompress_block.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.ZSTD_seqSymbol = type { i16, i8, i8, i32 }
%struct.blockProperties_t = type { i32, i32, i32 }
%struct.ZSTD_DCtx_s = type { ptr, ptr, ptr, ptr, %struct.ZSTD_entropyDTables_t, [640 x i32], ptr, ptr, ptr, ptr, i32, %struct.ZSTD_frameHeader, i64, i64, i32, i32, i32, i32, %struct.xxh64_state, i32, i32, i32, i32, ptr, %struct.ZSTD_customMem, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.ZSTD_outBuffer_s, [131104 x i8], [18 x i8], i32 }
%struct.ZSTD_entropyDTables_t = type { [513 x %struct.ZSTD_seqSymbol], [257 x %struct.ZSTD_seqSymbol], [513 x %struct.ZSTD_seqSymbol], [4097 x i32], [3 x i32], [157 x i32] }
%struct.ZSTD_frameHeader = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.xxh64_state = type { i64, i64, i64, i64, i64, [4 x i64], i32 }
%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.ZSTD_outBuffer_s = type { ptr, i32, i32 }
%struct.ZSTD_seqSymbol_header = type { i32, i32 }
%struct.seq_t = type { i32, i32, i32, ptr }
%struct.seqState_t = type { %struct.BIT_DStream_t, %struct.ZSTD_fseState, %struct.ZSTD_fseState, %struct.ZSTD_fseState, [3 x i32], ptr, ptr, i32 }
%struct.BIT_DStream_t = type { i32, i32, ptr, ptr, ptr }
%struct.ZSTD_fseState = type { i32, ptr }

@LL_base = internal constant [36 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 18, i32 20, i32 22, i32 24, i32 28, i32 32, i32 40, i32 48, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768, i32 65536], align 4
@LL_bits = internal constant [36 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], align 4
@LL_defaultDTable = internal constant [65 x %struct.ZSTD_seqSymbol] [%struct.ZSTD_seqSymbol { i16 1, i8 1, i8 1, i32 6 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 4, i32 0 }, %struct.ZSTD_seqSymbol { i16 16, i8 0, i8 4, i32 0 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 1 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 3 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 4 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 6 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 7 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 9 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 10 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 12 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 14 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 5, i32 16 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 5, i32 20 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 5, i32 22 }, %struct.ZSTD_seqSymbol { i16 0, i8 2, i8 5, i32 28 }, %struct.ZSTD_seqSymbol { i16 0, i8 3, i8 5, i32 32 }, %struct.ZSTD_seqSymbol { i16 0, i8 4, i8 5, i32 48 }, %struct.ZSTD_seqSymbol { i16 32, i8 6, i8 5, i32 64 }, %struct.ZSTD_seqSymbol { i16 0, i8 7, i8 5, i32 128 }, %struct.ZSTD_seqSymbol { i16 0, i8 8, i8 6, i32 256 }, %struct.ZSTD_seqSymbol { i16 0, i8 10, i8 6, i32 1024 }, %struct.ZSTD_seqSymbol { i16 0, i8 12, i8 6, i32 4096 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 4, i32 0 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 4, i32 1 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 2 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 4 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 5 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 7 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 8 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 10 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 11 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 13 }, %struct.ZSTD_seqSymbol { i16 32, i8 1, i8 5, i32 16 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 5, i32 18 }, %struct.ZSTD_seqSymbol { i16 32, i8 1, i8 5, i32 22 }, %struct.ZSTD_seqSymbol { i16 0, i8 2, i8 5, i32 24 }, %struct.ZSTD_seqSymbol { i16 32, i8 3, i8 5, i32 32 }, %struct.ZSTD_seqSymbol { i16 0, i8 3, i8 5, i32 40 }, %struct.ZSTD_seqSymbol { i16 0, i8 6, i8 4, i32 64 }, %struct.ZSTD_seqSymbol { i16 16, i8 6, i8 4, i32 64 }, %struct.ZSTD_seqSymbol { i16 32, i8 7, i8 5, i32 128 }, %struct.ZSTD_seqSymbol { i16 0, i8 9, i8 6, i32 512 }, %struct.ZSTD_seqSymbol { i16 0, i8 11, i8 6, i32 2048 }, %struct.ZSTD_seqSymbol { i16 48, i8 0, i8 4, i32 0 }, %struct.ZSTD_seqSymbol { i16 16, i8 0, i8 4, i32 1 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 2 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 3 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 5 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 6 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 8 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 9 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 11 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 12 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 15 }, %struct.ZSTD_seqSymbol { i16 32, i8 1, i8 5, i32 18 }, %struct.ZSTD_seqSymbol { i16 32, i8 1, i8 5, i32 20 }, %struct.ZSTD_seqSymbol { i16 32, i8 2, i8 5, i32 24 }, %struct.ZSTD_seqSymbol { i16 32, i8 2, i8 5, i32 28 }, %struct.ZSTD_seqSymbol { i16 32, i8 3, i8 5, i32 40 }, %struct.ZSTD_seqSymbol { i16 32, i8 4, i8 5, i32 48 }, %struct.ZSTD_seqSymbol { i16 0, i8 16, i8 6, i32 65536 }, %struct.ZSTD_seqSymbol { i16 0, i8 15, i8 6, i32 32768 }, %struct.ZSTD_seqSymbol { i16 0, i8 14, i8 6, i32 16384 }, %struct.ZSTD_seqSymbol { i16 0, i8 13, i8 6, i32 8192 }], align 4
@OF_base = internal constant [32 x i32] [i32 0, i32 1, i32 1, i32 5, i32 13, i32 29, i32 61, i32 125, i32 253, i32 509, i32 1021, i32 2045, i32 4093, i32 8189, i32 16381, i32 32765, i32 65533, i32 131069, i32 262141, i32 524285, i32 1048573, i32 2097149, i32 4194301, i32 8388605, i32 16777213, i32 33554429, i32 67108861, i32 134217725, i32 268435453, i32 536870909, i32 1073741821, i32 2147483645], align 4
@OF_bits = internal constant [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31], align 4
@OF_defaultDTable = internal constant [33 x %struct.ZSTD_seqSymbol] [%struct.ZSTD_seqSymbol { i16 1, i8 1, i8 1, i32 5 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 0 }, %struct.ZSTD_seqSymbol { i16 0, i8 6, i8 4, i32 61 }, %struct.ZSTD_seqSymbol { i16 0, i8 9, i8 5, i32 509 }, %struct.ZSTD_seqSymbol { i16 0, i8 15, i8 5, i32 32765 }, %struct.ZSTD_seqSymbol { i16 0, i8 21, i8 5, i32 2097149 }, %struct.ZSTD_seqSymbol { i16 0, i8 3, i8 5, i32 5 }, %struct.ZSTD_seqSymbol { i16 0, i8 7, i8 4, i32 125 }, %struct.ZSTD_seqSymbol { i16 0, i8 12, i8 5, i32 4093 }, %struct.ZSTD_seqSymbol { i16 0, i8 18, i8 5, i32 262141 }, %struct.ZSTD_seqSymbol { i16 0, i8 23, i8 5, i32 8388605 }, %struct.ZSTD_seqSymbol { i16 0, i8 5, i8 5, i32 29 }, %struct.ZSTD_seqSymbol { i16 0, i8 8, i8 4, i32 253 }, %struct.ZSTD_seqSymbol { i16 0, i8 14, i8 5, i32 16381 }, %struct.ZSTD_seqSymbol { i16 0, i8 20, i8 5, i32 1048573 }, %struct.ZSTD_seqSymbol { i16 0, i8 2, i8 5, i32 1 }, %struct.ZSTD_seqSymbol { i16 16, i8 7, i8 4, i32 125 }, %struct.ZSTD_seqSymbol { i16 0, i8 11, i8 5, i32 2045 }, %struct.ZSTD_seqSymbol { i16 0, i8 17, i8 5, i32 131069 }, %struct.ZSTD_seqSymbol { i16 0, i8 22, i8 5, i32 4194301 }, %struct.ZSTD_seqSymbol { i16 0, i8 4, i8 5, i32 13 }, %struct.ZSTD_seqSymbol { i16 16, i8 8, i8 4, i32 253 }, %struct.ZSTD_seqSymbol { i16 0, i8 13, i8 5, i32 8189 }, %struct.ZSTD_seqSymbol { i16 0, i8 19, i8 5, i32 524285 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 5, i32 1 }, %struct.ZSTD_seqSymbol { i16 16, i8 6, i8 4, i32 61 }, %struct.ZSTD_seqSymbol { i16 0, i8 10, i8 5, i32 1021 }, %struct.ZSTD_seqSymbol { i16 0, i8 16, i8 5, i32 65533 }, %struct.ZSTD_seqSymbol { i16 0, i8 28, i8 5, i32 268435453 }, %struct.ZSTD_seqSymbol { i16 0, i8 27, i8 5, i32 134217725 }, %struct.ZSTD_seqSymbol { i16 0, i8 26, i8 5, i32 67108861 }, %struct.ZSTD_seqSymbol { i16 0, i8 25, i8 5, i32 33554429 }, %struct.ZSTD_seqSymbol { i16 0, i8 24, i8 5, i32 16777213 }], align 4
@ML_base = internal constant [53 x i32] [i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 37, i32 39, i32 41, i32 43, i32 47, i32 51, i32 59, i32 67, i32 83, i32 99, i32 131, i32 259, i32 515, i32 1027, i32 2051, i32 4099, i32 8195, i32 16387, i32 32771, i32 65539], align 4
@ML_bits = internal constant [53 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], align 4
@ML_defaultDTable = internal constant [65 x %struct.ZSTD_seqSymbol] [%struct.ZSTD_seqSymbol { i16 1, i8 1, i8 1, i32 6 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 3 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 4, i32 4 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 5 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 6 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 8 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 9 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 11 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 13 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 16 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 19 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 22 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 25 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 28 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 31 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 34 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 6, i32 37 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 6, i32 41 }, %struct.ZSTD_seqSymbol { i16 0, i8 2, i8 6, i32 47 }, %struct.ZSTD_seqSymbol { i16 0, i8 3, i8 6, i32 59 }, %struct.ZSTD_seqSymbol { i16 0, i8 4, i8 6, i32 83 }, %struct.ZSTD_seqSymbol { i16 0, i8 7, i8 6, i32 131 }, %struct.ZSTD_seqSymbol { i16 0, i8 9, i8 6, i32 515 }, %struct.ZSTD_seqSymbol { i16 16, i8 0, i8 4, i32 4 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 4, i32 5 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 6 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 7 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 9 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 10 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 12 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 15 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 18 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 21 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 24 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 27 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 30 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 33 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 6, i32 35 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 6, i32 39 }, %struct.ZSTD_seqSymbol { i16 0, i8 2, i8 6, i32 43 }, %struct.ZSTD_seqSymbol { i16 0, i8 3, i8 6, i32 51 }, %struct.ZSTD_seqSymbol { i16 0, i8 4, i8 6, i32 67 }, %struct.ZSTD_seqSymbol { i16 0, i8 5, i8 6, i32 99 }, %struct.ZSTD_seqSymbol { i16 0, i8 8, i8 6, i32 259 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 4, i32 4 }, %struct.ZSTD_seqSymbol { i16 48, i8 0, i8 4, i32 4 }, %struct.ZSTD_seqSymbol { i16 16, i8 0, i8 4, i32 5 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 7 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 8 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 10 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 11 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 14 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 17 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 20 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 23 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 26 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 29 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 32 }, %struct.ZSTD_seqSymbol { i16 0, i8 16, i8 6, i32 65539 }, %struct.ZSTD_seqSymbol { i16 0, i8 15, i8 6, i32 32771 }, %struct.ZSTD_seqSymbol { i16 0, i8 14, i8 6, i32 16387 }, %struct.ZSTD_seqSymbol { i16 0, i8 13, i8 6, i32 8195 }, %struct.ZSTD_seqSymbol { i16 0, i8 12, i8 6, i32 4099 }, %struct.ZSTD_seqSymbol { i16 0, i8 11, i8 6, i32 2051 }, %struct.ZSTD_seqSymbol { i16 0, i8 10, i8 6, i32 1027 }], align 4
@BIT_mask = internal unnamed_addr constant [32 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535, i32 131071, i32 262143, i32 524287, i32 1048575, i32 2097151, i32 4194303, i32 8388607, i32 16777215, i32 33554431, i32 67108863, i32 134217727, i32 268435455, i32 536870911, i32 1073741823, i32 2147483647], align 4
@ZSTD_overlapCopy8.dec32table = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 1, i32 4, i32 4, i32 4, i32 4], align 4
@ZSTD_overlapCopy8.dec64table = internal unnamed_addr constant [8 x i32] [i32 8, i32 8, i32 8, i32 7, i32 8, i32 9, i32 10, i32 11], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_getcBlockSize(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp ult i32 %1, 3
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  %6 = load i16, ptr %0, align 1
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = or i32 %11, %7
  %13 = lshr i32 %12, 3
  %14 = and i32 %7, 1
  %15 = getelementptr inbounds %struct.blockProperties_t, ptr %2, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = lshr i32 %7, 1
  %17 = and i32 %16, 3
  store i32 %17, ptr %2, align 4
  %18 = getelementptr inbounds %struct.blockProperties_t, ptr %2, i32 0, i32 2
  store i32 %13, ptr %18, align 4
  switch i32 %17, label %20 [
    i32 1, label %21
    i32 3, label %19
  ]

19:                                               ; preds = %5
  br label %21

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %20, %19, %5, %3
  %22 = phi i32 [ -72, %3 ], [ -20, %19 ], [ %13, %20 ], [ %17, %5 ]
  ret i32 %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decodeLiteralsBlock(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp ult i32 %2, 3
  br i1 %4, label %167, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %1, align 1
  %7 = zext i8 %6 to i32
  %8 = and i32 %7, 3
  switch i32 %8, label %166 [
    i32 3, label %9
    i32 2, label %13
    i32 0, label %99
    i32 1, label %135
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 16
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %167, label %13

13:                                               ; preds = %9, %5
  %14 = icmp ult i32 %2, 5
  br i1 %14, label %167, label %15

15:                                               ; preds = %13
  %16 = lshr i8 %6, 2
  %17 = and i8 %16, 3
  %18 = zext i8 %17 to i32
  %19 = load i32, ptr %1, align 1
  switch i32 %18, label %20 [
    i32 3, label %31
    i32 2, label %27
  ]

20:                                               ; preds = %15
  %21 = icmp eq i8 %17, 0
  %22 = zext i1 %21 to i32
  %23 = lshr i32 %19, 4
  %24 = and i32 %23, 1023
  %25 = lshr i32 %19, 14
  %26 = and i32 %25, 1023
  br label %39

27:                                               ; preds = %15
  %28 = lshr i32 %19, 4
  %29 = and i32 %28, 16383
  %30 = lshr i32 %19, 18
  br label %39

31:                                               ; preds = %15
  %32 = lshr i32 %19, 4
  %33 = and i32 %32, 262143
  %34 = getelementptr i8, ptr %1, i32 4
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %19, i32 10)
  %38 = icmp ugt i32 %33, 131072
  br i1 %38, label %167, label %39

39:                                               ; preds = %31, %27, %20
  %40 = phi i32 [ 0, %31 ], [ 0, %27 ], [ %22, %20 ]
  %41 = phi i32 [ %37, %31 ], [ %30, %27 ], [ %26, %20 ]
  %42 = phi i32 [ %33, %31 ], [ %29, %27 ], [ %24, %20 ]
  %43 = phi i32 [ 5, %31 ], [ 4, %27 ], [ 3, %20 ]
  %44 = add nsw i32 %43, %41
  %45 = icmp ugt i32 %44, %2
  br i1 %45, label %167, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 32
  %48 = load i32, ptr %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = icmp ugt i32 %42, 768
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  br label %55

55:                                               ; preds = %55, %52
  %56 = phi i32 [ 0, %52 ], [ %58, %55 ]
  %57 = getelementptr i8, ptr %54, i32 %56
  tail call void @llvm.prefetch.p0(ptr %57, i32 0, i32 2, i32 1)
  %58 = add nuw nsw i32 %56, 64
  %59 = icmp ult i32 %56, 16324
  br i1 %59, label %55, label %60

60:                                               ; preds = %55, %46
  %61 = icmp eq i32 %8, 3
  %62 = icmp eq i32 %40, 0
  br i1 %61, label %63, label %74

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 53
  %65 = getelementptr i8, ptr %1, i32 %43
  %66 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 28
  %69 = load i32, ptr %68, align 4
  br i1 %62, label %72, label %70

70:                                               ; preds = %63
  %71 = tail call i32 @HUF_decompress1X_usingDTable_bmi2(ptr noundef %64, i32 noundef %42, ptr noundef %65, i32 noundef %41, ptr noundef %67, i32 noundef %69) #11
  br label %85

72:                                               ; preds = %63
  %73 = tail call i32 @HUF_decompress4X_usingDTable_bmi2(ptr noundef %64, i32 noundef %42, ptr noundef %65, i32 noundef %41, ptr noundef %67, i32 noundef %69) #11
  br label %85

74:                                               ; preds = %60
  %75 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 3
  %76 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 53
  %77 = getelementptr i8, ptr %1, i32 %43
  %78 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 5
  %79 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 28
  %80 = load i32, ptr %79, align 4
  br i1 %62, label %83, label %81

81:                                               ; preds = %74
  %82 = tail call i32 @HUF_decompress1X1_DCtx_wksp_bmi2(ptr noundef %75, ptr noundef %76, i32 noundef %42, ptr noundef %77, i32 noundef %41, ptr noundef %78, i32 noundef 2560, i32 noundef %80) #11
  br label %85

83:                                               ; preds = %74
  %84 = tail call i32 @HUF_decompress4X_hufOnly_wksp_bmi2(ptr noundef %75, ptr noundef %76, i32 noundef %42, ptr noundef %77, i32 noundef %41, ptr noundef %78, i32 noundef 2560, i32 noundef %80) #11
  br label %85

85:                                               ; preds = %83, %81, %72, %70
  %86 = phi i32 [ %71, %70 ], [ %73, %72 ], [ %82, %81 ], [ %84, %83 ]
  %87 = icmp ult i32 %86, -119
  br i1 %87, label %88, label %167

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 53
  %90 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 23
  store ptr %89, ptr %90, align 8
  %91 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 25
  store i32 %42, ptr %91, align 8
  %92 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 16
  store i32 1, ptr %92, align 8
  %93 = icmp eq i32 %8, 2
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 3
  %96 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 3
  store ptr %95, ptr %96, align 4
  br label %97

97:                                               ; preds = %94, %88
  %98 = getelementptr i8, ptr %89, i32 %42
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(32) %98, i8 0, i32 32, i1 false)
  br label %167

99:                                               ; preds = %5
  %100 = lshr i32 %7, 2
  %101 = and i32 %100, 3
  switch i32 %101, label %102 [
    i32 3, label %108
    i32 1, label %104
  ]

102:                                              ; preds = %99
  %103 = lshr i32 %7, 3
  br label %117

104:                                              ; preds = %99
  %105 = load i16, ptr %1, align 1
  %106 = lshr i16 %105, 4
  %107 = zext i16 %106 to i32
  br label %117

108:                                              ; preds = %99
  %109 = load i16, ptr %1, align 1
  %110 = zext i16 %109 to i32
  %111 = getelementptr i8, ptr %1, i32 2
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  %114 = shl nuw nsw i32 %113, 16
  %115 = or i32 %114, %110
  %116 = lshr i32 %115, 4
  br label %117

117:                                              ; preds = %108, %104, %102
  %118 = phi i32 [ %103, %102 ], [ %107, %104 ], [ %116, %108 ]
  %119 = phi i32 [ 1, %102 ], [ 2, %104 ], [ 3, %108 ]
  %120 = add nuw nsw i32 %119, %118
  %121 = add nuw nsw i32 %120, 32
  %122 = icmp ugt i32 %121, %2
  br i1 %122, label %123, label %131

123:                                              ; preds = %117
  %124 = icmp ugt i32 %120, %2
  br i1 %124, label %167, label %125

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 53
  %127 = getelementptr i8, ptr %1, i32 %119
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %126, ptr align 1 %127, i32 %118, i1 false)
  %128 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 23
  store ptr %126, ptr %128, align 8
  %129 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 25
  store i32 %118, ptr %129, align 8
  %130 = getelementptr i8, ptr %126, i32 %118
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(32) %130, i8 0, i32 32, i1 false)
  br label %167

131:                                              ; preds = %117
  %132 = getelementptr i8, ptr %1, i32 %119
  %133 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 23
  store ptr %132, ptr %133, align 8
  %134 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 25
  store i32 %118, ptr %134, align 8
  br label %167

135:                                              ; preds = %5
  %136 = lshr i32 %7, 2
  %137 = and i32 %136, 3
  switch i32 %137, label %138 [
    i32 3, label %144
    i32 1, label %140
  ]

138:                                              ; preds = %135
  %139 = lshr i32 %7, 3
  br label %156

140:                                              ; preds = %135
  %141 = load i16, ptr %1, align 1
  %142 = lshr i16 %141, 4
  %143 = zext i16 %142 to i32
  br label %156

144:                                              ; preds = %135
  %145 = load i16, ptr %1, align 1
  %146 = zext i16 %145 to i32
  %147 = getelementptr i8, ptr %1, i32 2
  %148 = load i8, ptr %147, align 1
  %149 = zext i8 %148 to i32
  %150 = shl nuw nsw i32 %149, 16
  %151 = or i32 %150, %146
  %152 = lshr i32 %151, 4
  %153 = icmp ult i32 %2, 4
  %154 = icmp ugt i32 %151, 2097167
  %155 = select i1 %153, i1 true, i1 %154
  br i1 %155, label %167, label %156

156:                                              ; preds = %144, %140, %138
  %157 = phi i32 [ 2, %140 ], [ 1, %138 ], [ 3, %144 ]
  %158 = phi i32 [ %143, %140 ], [ %139, %138 ], [ %152, %144 ]
  %159 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 53
  %160 = getelementptr i8, ptr %1, i32 %157
  %161 = load i8, ptr %160, align 1
  %162 = add nuw nsw i32 %158, 32
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 %159, i8 %161, i32 %162, i1 false)
  %163 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 23
  store ptr %159, ptr %163, align 8
  %164 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 25
  store i32 %158, ptr %164, align 8
  %165 = add nuw nsw i32 %157, 1
  br label %167

166:                                              ; preds = %5
  unreachable

167:                                              ; preds = %156, %144, %131, %125, %123, %97, %85, %39, %31, %13, %9, %3
  %168 = phi i32 [ -20, %3 ], [ -30, %9 ], [ -20, %13 ], [ %44, %97 ], [ -20, %31 ], [ -20, %39 ], [ -20, %85 ], [ %120, %125 ], [ %120, %131 ], [ -20, %123 ], [ %165, %156 ], [ -20, %144 ]
  ret i32 %168
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_decompress1X_usingDTable_bmi2(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_decompress4X_usingDTable_bmi2(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_decompress1X1_DCtx_wksp_bmi2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_decompress4X_hufOnly_wksp_bmi2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ZSTD_buildFSETable(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef %6, i32 %7, i32 %8) local_unnamed_addr #7 {
  %10 = getelementptr %struct.ZSTD_seqSymbol, ptr %0, i32 1
  %11 = shl nuw i32 1, %5
  %12 = getelementptr i16, ptr %6, i32 53
  %13 = add i32 %11, -1
  %14 = icmp eq i32 %2, -1
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  store i32 1, ptr %0, align 4
  %16 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 %5, ptr %16, align 4
  %17 = lshr i32 %11, 1
  %18 = lshr i32 %11, 3
  %19 = add nuw nsw i32 %18, 3
  %20 = add nuw i32 %19, %17
  br label %55

21:                                               ; preds = %9
  %22 = add i32 %5, -1
  %23 = shl i32 65536, %22
  %24 = ashr exact i32 %23, 16
  br label %25

25:                                               ; preds = %40, %21
  %26 = phi i32 [ 0, %21 ], [ %45, %40 ]
  %27 = phi i32 [ 1, %21 ], [ %43, %40 ]
  %28 = phi i32 [ %13, %21 ], [ %42, %40 ]
  %29 = getelementptr i16, ptr %1, i32 %26
  %30 = load i16, ptr %29, align 2
  %31 = icmp eq i16 %30, -1
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = add i32 %28, -1
  %34 = getelementptr %struct.ZSTD_seqSymbol, ptr %10, i32 %28
  %35 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %34, i32 0, i32 3
  store i32 %26, ptr %35, align 4
  br label %40

36:                                               ; preds = %25
  %37 = sext i16 %30 to i32
  %38 = icmp sgt i32 %24, %37
  %39 = select i1 %38, i32 %27, i32 0
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i16 [ 1, %32 ], [ %30, %36 ]
  %42 = phi i32 [ %33, %32 ], [ %28, %36 ]
  %43 = phi i32 [ %27, %32 ], [ %39, %36 ]
  %44 = getelementptr i16, ptr %6, i32 %26
  store i16 %41, ptr %44, align 2
  %45 = add nuw i32 %26, 1
  %46 = icmp eq i32 %26, %2
  br i1 %46, label %47, label %25

47:                                               ; preds = %40
  store i32 %43, ptr %0, align 4
  %48 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 %5, ptr %48, align 4
  %49 = icmp eq i32 %42, %13
  %50 = lshr i32 %11, 3
  br i1 %49, label %58, label %98

51:                                               ; preds = %72
  %52 = add nuw nsw i32 %50, 3
  %53 = lshr i32 %11, 1
  %54 = add nuw i32 %52, %53
  br label %55

55:                                               ; preds = %51, %15
  %56 = phi i32 [ %20, %15 ], [ %54, %51 ]
  %57 = shl i32 %56, 1
  br label %77

58:                                               ; preds = %72, %47
  %59 = phi i32 [ %74, %72 ], [ 0, %47 ]
  %60 = phi i64 [ %75, %72 ], [ 0, %47 ]
  %61 = phi i32 [ %73, %72 ], [ 0, %47 ]
  %62 = getelementptr i16, ptr %1, i32 %59
  %63 = load i16, ptr %62, align 2
  %64 = sext i16 %63 to i32
  %65 = getelementptr i8, ptr %12, i32 %61
  store i64 %60, ptr %65, align 1
  %66 = icmp sgt i16 %63, 8
  br i1 %66, label %67, label %72

67:                                               ; preds = %67, %58
  %68 = phi i32 [ %70, %67 ], [ 8, %58 ]
  %69 = getelementptr i8, ptr %65, i32 %68
  store i64 %60, ptr %69, align 1
  %70 = add nuw nsw i32 %68, 8
  %71 = icmp slt i32 %70, %64
  br i1 %71, label %67, label %72

72:                                               ; preds = %67, %58
  %73 = add i32 %61, %64
  %74 = add nuw i32 %59, 1
  %75 = add i64 %60, 72340172838076673
  %76 = icmp eq i32 %59, %2
  br i1 %76, label %51, label %58

77:                                               ; preds = %77, %55
  %78 = phi i32 [ 0, %55 ], [ %96, %77 ]
  %79 = phi i32 [ 0, %55 ], [ %95, %77 ]
  %80 = and i32 %79, %13
  %81 = getelementptr i8, ptr %12, i32 %78
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = getelementptr %struct.ZSTD_seqSymbol, ptr %10, i32 %80
  %85 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %84, i32 0, i32 3
  store i32 %83, ptr %85, align 4
  %86 = add i32 %79, %56
  %87 = and i32 %86, %13
  %88 = or i32 %78, 1
  %89 = getelementptr i8, ptr %12, i32 %88
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  %92 = getelementptr %struct.ZSTD_seqSymbol, ptr %10, i32 %87
  %93 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %92, i32 0, i32 3
  store i32 %91, ptr %93, align 4
  %94 = add i32 %79, %57
  %95 = and i32 %94, %13
  %96 = add i32 %78, 2
  %97 = icmp ult i32 %96, %11
  br i1 %97, label %77, label %126

98:                                               ; preds = %47
  %99 = lshr i32 %11, 1
  %100 = add nuw nsw i32 %50, 3
  %101 = add nuw i32 %100, %99
  br label %102

102:                                              ; preds = %122, %98
  %103 = phi i32 [ 0, %98 ], [ %123, %122 ]
  %104 = phi i32 [ 0, %98 ], [ %124, %122 ]
  %105 = getelementptr i16, ptr %1, i32 %104
  %106 = load i16, ptr %105, align 2
  %107 = sext i16 %106 to i32
  %108 = icmp sgt i16 %106, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %119, %102
  %110 = phi i32 [ %120, %119 ], [ 0, %102 ]
  %111 = phi i32 [ %117, %119 ], [ %103, %102 ]
  %112 = getelementptr %struct.ZSTD_seqSymbol, ptr %10, i32 %111
  %113 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %112, i32 0, i32 3
  store i32 %104, ptr %113, align 4
  br label %114

114:                                              ; preds = %114, %109
  %115 = phi i32 [ %111, %109 ], [ %117, %114 ]
  %116 = add i32 %101, %115
  %117 = and i32 %116, %13
  %118 = icmp ugt i32 %117, %42
  br i1 %118, label %114, label %119

119:                                              ; preds = %114
  %120 = add nuw nsw i32 %110, 1
  %121 = icmp eq i32 %120, %107
  br i1 %121, label %122, label %109

122:                                              ; preds = %119, %102
  %123 = phi i32 [ %103, %102 ], [ %117, %119 ]
  %124 = add nuw i32 %104, 1
  %125 = icmp eq i32 %104, %2
  br i1 %125, label %126, label %102

126:                                              ; preds = %122, %77
  %127 = add i32 %5, 1
  br label %128

128:                                              ; preds = %128, %126
  %129 = phi i32 [ 0, %126 ], [ %152, %128 ]
  %130 = getelementptr %struct.ZSTD_seqSymbol, ptr %10, i32 %129
  %131 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %130, i32 0, i32 3
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr i16, ptr %6, i32 %132
  %134 = load i16, ptr %133, align 2
  %135 = add i16 %134, 1
  store i16 %135, ptr %133, align 2
  %136 = zext i16 %134 to i32
  %137 = tail call i32 @llvm.ctlz.i32(i32 %136, i1 false) #11, !range !8
  %138 = xor i32 %137, -32
  %139 = add i32 %127, %138
  %140 = trunc i32 %139 to i8
  %141 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %130, i32 0, i32 2
  store i8 %140, ptr %141, align 1
  %142 = and i32 %139, 255
  %143 = shl i32 %136, %142
  %144 = sub i32 %143, %11
  %145 = trunc i32 %144 to i16
  store i16 %145, ptr %130, align 4
  %146 = getelementptr i32, ptr %4, i32 %132
  %147 = load i32, ptr %146, align 4
  %148 = trunc i32 %147 to i8
  %149 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %130, i32 0, i32 1
  store i8 %148, ptr %149, align 2
  %150 = getelementptr i32, ptr %3, i32 %132
  %151 = load i32, ptr %150, align 4
  store i32 %151, ptr %131, align 4
  %152 = add nuw i32 %129, 1
  %153 = icmp eq i32 %152, %11
  br i1 %153, label %154, label %128

154:                                              ; preds = %128
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decodeSeqHeaders(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr i8, ptr %2, i32 %3
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %88, label %7

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %2, i32 1
  %9 = load i8, ptr %2, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i8 %9, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  store i32 0, ptr %1, align 4
  %13 = icmp eq i32 %3, 1
  %14 = select i1 %13, i32 1, i32 -72
  br label %88

15:                                               ; preds = %7
  %16 = icmp slt i8 %9, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %15
  %18 = icmp eq i8 %9, -1
  br i1 %18, label %19, label %26

19:                                               ; preds = %17
  %20 = getelementptr i8, ptr %2, i32 3
  %21 = icmp ugt ptr %20, %5
  br i1 %21, label %88, label %22

22:                                               ; preds = %19
  %23 = load i16, ptr %8, align 1
  %24 = zext i16 %23 to i32
  %25 = add nuw nsw i32 %24, 32512
  br label %35

26:                                               ; preds = %17
  %27 = icmp ult ptr %8, %5
  br i1 %27, label %28, label %88

28:                                               ; preds = %26
  %29 = shl nuw nsw i32 %10, 8
  %30 = add nsw i32 %29, -32768
  %31 = getelementptr i8, ptr %2, i32 2
  %32 = load i8, ptr %8, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %30, %33
  br label %35

35:                                               ; preds = %28, %22, %15
  %36 = phi ptr [ %20, %22 ], [ %31, %28 ], [ %8, %15 ]
  %37 = phi i32 [ %25, %22 ], [ %34, %28 ], [ %10, %15 ]
  store i32 %37, ptr %1, align 4
  %38 = getelementptr i8, ptr %36, i32 1
  %39 = icmp ugt ptr %38, %5
  br i1 %39, label %88, label %40

40:                                               ; preds = %35
  %41 = load i8, ptr %36, align 1
  %42 = zext i8 %41 to i32
  %43 = lshr i32 %42, 6
  %44 = lshr i32 %42, 2
  %45 = and i32 %44, 3
  %46 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4
  %47 = ptrtoint ptr %5 to i32
  %48 = ptrtoint ptr %38 to i32
  %49 = sub i32 %47, %48
  %50 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 17
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 32
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 5
  %55 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 28
  %56 = load i32, ptr %55, align 4
  %57 = tail call fastcc i32 @ZSTD_buildSeqTable(ptr noundef %46, ptr noundef %0, i32 noundef %43, i32 noundef 35, i32 noundef 9, ptr noundef %38, i32 noundef %49, ptr noundef nonnull @LL_base, ptr noundef nonnull @LL_bits, ptr noundef nonnull @LL_defaultDTable, i32 noundef %51, i32 noundef %53, i32 noundef %37, ptr noundef %54, i32 noundef %56)
  %58 = icmp ult i32 %57, -119
  br i1 %58, label %59, label %88

59:                                               ; preds = %40
  %60 = getelementptr i8, ptr %38, i32 %57
  %61 = lshr i32 %42, 4
  %62 = and i32 %61, 3
  %63 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 1
  %64 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 2
  %65 = ptrtoint ptr %60 to i32
  %66 = sub i32 %47, %65
  %67 = load i32, ptr %50, align 4
  %68 = load i32, ptr %52, align 4
  %69 = load i32, ptr %55, align 4
  %70 = tail call fastcc i32 @ZSTD_buildSeqTable(ptr noundef %63, ptr noundef %64, i32 noundef %62, i32 noundef 31, i32 noundef 8, ptr noundef %60, i32 noundef %66, ptr noundef nonnull @OF_base, ptr noundef nonnull @OF_bits, ptr noundef nonnull @OF_defaultDTable, i32 noundef %67, i32 noundef %68, i32 noundef %37, ptr noundef %54, i32 noundef %69)
  %71 = icmp ult i32 %70, -119
  br i1 %71, label %72, label %88

72:                                               ; preds = %59
  %73 = getelementptr i8, ptr %60, i32 %70
  %74 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 2
  %75 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 1
  %76 = ptrtoint ptr %73 to i32
  %77 = sub i32 %47, %76
  %78 = load i32, ptr %50, align 4
  %79 = load i32, ptr %52, align 4
  %80 = load i32, ptr %55, align 4
  %81 = tail call fastcc i32 @ZSTD_buildSeqTable(ptr noundef %74, ptr noundef %75, i32 noundef %45, i32 noundef 52, i32 noundef 9, ptr noundef %73, i32 noundef %77, ptr noundef nonnull @ML_base, ptr noundef nonnull @ML_bits, ptr noundef nonnull @ML_defaultDTable, i32 noundef %78, i32 noundef %79, i32 noundef %37, ptr noundef %54, i32 noundef %80)
  %82 = icmp ult i32 %81, -119
  br i1 %82, label %83, label %88

83:                                               ; preds = %72
  %84 = getelementptr i8, ptr %73, i32 %81
  %85 = ptrtoint ptr %84 to i32
  %86 = ptrtoint ptr %2 to i32
  %87 = sub i32 %85, %86
  br label %88

88:                                               ; preds = %83, %72, %59, %40, %35, %26, %19, %12, %4
  %89 = phi i32 [ %87, %83 ], [ -72, %4 ], [ %14, %12 ], [ -72, %19 ], [ -72, %26 ], [ -72, %35 ], [ -20, %72 ], [ -20, %59 ], [ -20, %40 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_buildSeqTable(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr nocapture noundef readonly %7, ptr nocapture noundef readonly %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, ptr nocapture noundef %13, i32 noundef %14) unnamed_addr #2 {
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [53 x i16], align 2
  store i32 %3, ptr %16, align 4
  switch i32 %2, label %63 [
    i32 1, label %19
    i32 0, label %36
    i32 3, label %37
    i32 2, label %53
  ]

19:                                               ; preds = %15
  %20 = icmp eq i32 %6, 0
  br i1 %20, label %63, label %21

21:                                               ; preds = %19
  %22 = load i8, ptr %5, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp ugt i32 %23, %3
  br i1 %24, label %63, label %25

25:                                               ; preds = %21
  %26 = getelementptr i32, ptr %7, i32 %23
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i32, ptr %8, i32 %23
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr %struct.ZSTD_seqSymbol, ptr %0, i32 1
  %31 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %0, i32 0, i32 1
  store i32 0, ptr %31, align 4
  store i32 0, ptr %0, align 4
  %32 = getelementptr %struct.ZSTD_seqSymbol, ptr %0, i32 1, i32 2
  store i8 0, ptr %32, align 1
  store i16 0, ptr %30, align 4
  %33 = trunc i32 %29 to i8
  %34 = getelementptr %struct.ZSTD_seqSymbol, ptr %0, i32 1, i32 1
  store i8 %33, ptr %34, align 2
  %35 = getelementptr %struct.ZSTD_seqSymbol, ptr %0, i32 1, i32 3
  store i32 %27, ptr %35, align 4
  store ptr %0, ptr %1, align 4
  br label %63

36:                                               ; preds = %15
  store ptr %9, ptr %1, align 4
  br label %63

37:                                               ; preds = %15
  %38 = icmp eq i32 %10, 0
  br i1 %38, label %63, label %39

39:                                               ; preds = %37
  %40 = icmp ne i32 %11, 0
  %41 = icmp sgt i32 %12, 24
  %42 = and i1 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %39
  %44 = load ptr, ptr %1, align 4
  %45 = shl i32 8, %4
  %46 = add i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %48, %43
  %49 = phi i32 [ %51, %48 ], [ 0, %43 ]
  %50 = getelementptr i8, ptr %44, i32 %49
  tail call void @llvm.prefetch.p0(ptr %50, i32 0, i32 2, i32 1)
  %51 = add i32 %49, 64
  %52 = icmp ult i32 %51, %46
  br i1 %52, label %48, label %63

53:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #11
  store i32 0, ptr %17, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 106, ptr nonnull %18) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(106) %18, i8 0, i32 106, i1 false), !annotation !9
  %54 = call i32 @FSE_readNCount(ptr noundef nonnull %18, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef %5, i32 noundef %6) #11
  %55 = icmp ult i32 %54, -119
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, ptr %17, align 4
  %58 = icmp ugt i32 %57, %4
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load i32, ptr %16, align 4
  call void @ZSTD_buildFSETable(ptr noundef %0, ptr noundef nonnull %18, i32 noundef %60, ptr noundef %7, ptr noundef %8, i32 noundef %57, ptr noundef %13, i32 undef, i32 undef)
  store ptr %0, ptr %1, align 4
  br label %61

61:                                               ; preds = %59, %56, %53
  %62 = phi i32 [ %54, %59 ], [ -20, %53 ], [ -20, %56 ]
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #11
  br label %63

63:                                               ; preds = %61, %48, %43, %39, %37, %36, %25, %21, %19, %15
  %64 = phi i32 [ %62, %61 ], [ 0, %36 ], [ 1, %25 ], [ -72, %19 ], [ -20, %21 ], [ -20, %37 ], [ 0, %39 ], [ -1, %15 ], [ 0, %43 ], [ 0, %48 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decompressBlock_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = alloca ptr, align 4
  %8 = alloca [4 x %struct.seq_t], align 4
  %9 = alloca %struct.seqState_t, align 4
  %10 = alloca i32, align 4
  %11 = icmp eq i32 %5, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 11, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = icmp ugt i64 %14, 33554432
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %12, %6
  %18 = phi i32 [ 1, %6 ], [ %16, %12 ]
  %19 = icmp ugt i32 %4, 131071
  br i1 %19, label %1414, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @ZSTD_decodeLiteralsBlock(ptr noundef %0, ptr noundef %3, i32 noundef %4)
  %22 = icmp ult i32 %21, -119
  %23 = select i1 %22, i32 %21, i32 0
  %24 = getelementptr i8, ptr %3, i32 %23
  %25 = sub i32 %4, %23
  br i1 %22, label %26, label %1414

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 32
  %28 = load i32, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  store i32 0, ptr %10, align 4, !annotation !9
  %29 = call i32 @ZSTD_decodeSeqHeaders(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %24, i32 noundef %25)
  %30 = icmp ult i32 %29, -119
  br i1 %30, label %31, label %1412

31:                                               ; preds = %26
  %32 = getelementptr i8, ptr %24, i32 %29
  %33 = sub i32 %25, %29
  %34 = icmp eq ptr %1, null
  %35 = load i32, ptr %10, align 4
  %36 = icmp sgt i32 %35, 0
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %1412, label %38

38:                                               ; preds = %31
  %39 = icmp eq i32 %28, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %38
  store i32 0, ptr %27, align 4
  br label %73

41:                                               ; preds = %38
  br i1 %11, label %48, label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 11, i32 1
  %44 = load i64, ptr %43, align 8
  %45 = icmp ugt i64 %44, 16777216
  %46 = icmp sgt i32 %35, 4
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %50, label %68

48:                                               ; preds = %41
  %49 = icmp sgt i32 %35, 4
  br i1 %49, label %50, label %68

50:                                               ; preds = %48, %42
  %51 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %52, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr %struct.ZSTD_seqSymbol, ptr %52, i32 1
  br label %56

56:                                               ; preds = %56, %50
  %57 = phi i32 [ 0, %50 ], [ %64, %56 ]
  %58 = phi i32 [ 0, %50 ], [ %65, %56 ]
  %59 = getelementptr %struct.ZSTD_seqSymbol, ptr %55, i32 %58
  %60 = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %59, i32 0, i32 1
  %61 = load i8, ptr %60, align 2
  %62 = icmp ugt i8 %61, 22
  %63 = zext i1 %62 to i32
  %64 = add i32 %57, %63
  %65 = add i32 %58, 1
  %66 = lshr i32 %65, %54
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %56, label %69

68:                                               ; preds = %48, %42
  store i32 0, ptr %27, align 4
  br label %1410

69:                                               ; preds = %56
  %70 = sub i32 8, %54
  %71 = shl i32 %64, %70
  %72 = icmp ult i32 %71, 20
  store i32 0, ptr %27, align 4
  br i1 %72, label %1410, label %73

73:                                               ; preds = %69, %40
  %74 = getelementptr i8, ptr %1, i32 %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  %75 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 23
  %76 = load ptr, ptr %75, align 8
  store ptr %76, ptr %7, align 4
  %77 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 25
  %78 = load i32, ptr %77, align 8
  %79 = getelementptr i8, ptr %76, i32 %78
  %80 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 7
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 8
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 9
  %85 = load ptr, ptr %84, align 8
  %86 = icmp eq i32 %35, 0
  br i1 %86, label %1389, label %87

87:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %8, i8 0, i32 64, i1 false) #11, !annotation !9
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %9) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %9, i8 0, i32 44, i1 false) #11, !annotation !9
  %88 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 17
  store i32 1, ptr %88, align 4
  %89 = getelementptr inbounds i8, ptr %9, i32 44
  %90 = getelementptr i8, ptr %0, i32 26668
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %89, ptr noundef align 4 dereferenceable(12) %90, i32 12, i1 false) #11
  %91 = tail call i32 @llvm.smin.i32(i32 %35, i32 4) #11
  %92 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 5
  store ptr %81, ptr %92, align 4
  %93 = ptrtoint ptr %1 to i32
  %94 = ptrtoint ptr %81 to i32
  %95 = sub i32 %93, %94
  %96 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 7
  store i32 %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 6
  store ptr %85, ptr %97, align 4
  %98 = icmp eq i32 %25, %29
  br i1 %98, label %1387, label %99

99:                                               ; preds = %87
  %100 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i32 0, i32 3
  store ptr %32, ptr %100, align 4
  %101 = getelementptr i8, ptr %32, i32 4
  %102 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i32 0, i32 4
  store ptr %101, ptr %102, align 4
  %103 = icmp ugt i32 %33, 3
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = getelementptr i8, ptr %32, i32 %33
  %106 = getelementptr i8, ptr %105, i32 -4
  %107 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i32 0, i32 2
  store ptr %106, ptr %107, align 4
  %108 = load i32, ptr %106, align 1
  store i32 %108, ptr %9, align 4
  %109 = icmp ult i32 %108, 16777216
  br i1 %109, label %1387, label %140

110:                                              ; preds = %99
  %111 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i32 0, i32 2
  store ptr %32, ptr %111, align 4
  %112 = load i8, ptr %32, align 1
  %113 = zext i8 %112 to i32
  store i32 %113, ptr %9, align 4
  switch i32 %33, label %127 [
    i32 2, label %120
    i32 3, label %114
  ]

114:                                              ; preds = %110
  %115 = getelementptr i8, ptr %32, i32 2
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = shl nuw nsw i32 %117, 16
  %119 = or i32 %118, %113
  br label %120

120:                                              ; preds = %114, %110
  %121 = phi i32 [ %113, %110 ], [ %119, %114 ]
  %122 = getelementptr i8, ptr %32, i32 1
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = shl nuw nsw i32 %124, 8
  %126 = add nsw i32 %125, %121
  store i32 %126, ptr %9, align 4
  br label %127

127:                                              ; preds = %120, %110
  %128 = phi i32 [ %126, %120 ], [ %113, %110 ]
  %129 = add nsw i32 %33, -1
  %130 = getelementptr i8, ptr %32, i32 %129
  %131 = load i8, ptr %130, align 1
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %1387, label %133

133:                                              ; preds = %127
  %134 = zext i8 %131 to i32
  %135 = tail call i32 @llvm.ctlz.i32(i32 %134, i1 true) #11, !range !8
  %136 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i32 0, i32 1
  %137 = mul nsw i32 %33, -8
  %138 = add nsw i32 %137, 9
  %139 = add nsw i32 %138, %135
  store i32 %139, ptr %136, align 4
  br label %146

140:                                              ; preds = %104
  %141 = lshr i32 %108, 24
  %142 = tail call i32 @llvm.ctlz.i32(i32 %141, i1 true) #11, !range !8
  %143 = add nsw i32 %142, -23
  %144 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i32 0, i32 1
  store i32 %143, ptr %144, align 4
  %145 = icmp ult i32 %33, -119
  br i1 %145, label %146, label %1387

146:                                              ; preds = %140, %133
  %147 = phi ptr [ %32, %133 ], [ %106, %140 ]
  %148 = phi i32 [ %139, %133 ], [ %143, %140 ]
  %149 = phi i32 [ %128, %133 ], [ %108, %140 ]
  %150 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 1
  %151 = load ptr, ptr %0, align 8
  %152 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %151, i32 0, i32 1
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i32 0, i32 1
  %155 = add i32 %153, %148
  %156 = sub i32 0, %155
  %157 = and i32 %156, 31
  %158 = lshr i32 %149, %157
  %159 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %153
  %160 = load i32, ptr %159, align 4
  %161 = and i32 %158, %160
  store i32 %155, ptr %154, align 4
  store i32 %161, ptr %150, align 4
  %162 = icmp ugt i32 %155, 32
  br i1 %162, label %190, label %163

163:                                              ; preds = %146
  %164 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i32 0, i32 2
  %165 = icmp ult ptr %147, %101
  br i1 %165, label %171, label %166

166:                                              ; preds = %163
  %167 = lshr i32 %155, 3
  %168 = sub nsw i32 0, %167
  %169 = getelementptr i8, ptr %147, i32 %168
  store ptr %169, ptr %164, align 4
  %170 = and i32 %155, 7
  br label %186

171:                                              ; preds = %163
  %172 = icmp eq ptr %147, %32
  br i1 %172, label %190, label %173

173:                                              ; preds = %171
  %174 = lshr i32 %155, 3
  %175 = sub nsw i32 0, %174
  %176 = getelementptr i8, ptr %147, i32 %175
  %177 = icmp ult ptr %176, %32
  %178 = ptrtoint ptr %147 to i32
  %179 = ptrtoint ptr %32 to i32
  %180 = sub i32 %178, %179
  %181 = select i1 %177, i32 %180, i32 %174
  %182 = sub i32 0, %181
  %183 = getelementptr i8, ptr %147, i32 %182
  store ptr %183, ptr %164, align 4
  %184 = mul i32 %181, -8
  %185 = add i32 %184, %155
  br label %186

186:                                              ; preds = %173, %166
  %187 = phi i32 [ %170, %166 ], [ %185, %173 ]
  %188 = phi ptr [ %169, %166 ], [ %183, %173 ]
  store i32 %187, ptr %154, align 4
  %189 = load i32, ptr %188, align 1
  store i32 %189, ptr %9, align 4
  br label %190

190:                                              ; preds = %186, %171, %146
  %191 = phi ptr [ %147, %146 ], [ %32, %171 ], [ %188, %186 ]
  %192 = phi i32 [ %155, %146 ], [ %155, %171 ], [ %187, %186 ]
  %193 = phi i32 [ %149, %146 ], [ %149, %171 ], [ %189, %186 ]
  %194 = getelementptr %struct.ZSTD_seqSymbol, ptr %151, i32 1
  %195 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 1, i32 1
  store ptr %194, ptr %195, align 4
  %196 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 2
  %197 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 2
  %198 = load ptr, ptr %197, align 8
  %199 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %198, i32 0, i32 1
  %200 = load i32, ptr %199, align 4
  %201 = add i32 %200, %192
  %202 = sub i32 0, %201
  %203 = and i32 %202, 31
  %204 = lshr i32 %193, %203
  %205 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %200
  %206 = load i32, ptr %205, align 4
  %207 = and i32 %204, %206
  store i32 %201, ptr %154, align 4
  store i32 %207, ptr %196, align 4
  %208 = icmp ugt i32 %201, 32
  br i1 %208, label %236, label %209

209:                                              ; preds = %190
  %210 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i32 0, i32 2
  %211 = icmp ult ptr %191, %101
  br i1 %211, label %217, label %212

212:                                              ; preds = %209
  %213 = lshr i32 %201, 3
  %214 = sub nsw i32 0, %213
  %215 = getelementptr i8, ptr %191, i32 %214
  store ptr %215, ptr %210, align 4
  %216 = and i32 %201, 7
  br label %232

217:                                              ; preds = %209
  %218 = icmp eq ptr %191, %32
  br i1 %218, label %236, label %219

219:                                              ; preds = %217
  %220 = lshr i32 %201, 3
  %221 = sub nsw i32 0, %220
  %222 = getelementptr i8, ptr %191, i32 %221
  %223 = icmp ult ptr %222, %32
  %224 = ptrtoint ptr %191 to i32
  %225 = ptrtoint ptr %32 to i32
  %226 = sub i32 %224, %225
  %227 = select i1 %223, i32 %226, i32 %220
  %228 = sub i32 0, %227
  %229 = getelementptr i8, ptr %191, i32 %228
  store ptr %229, ptr %210, align 4
  %230 = mul i32 %227, -8
  %231 = add i32 %230, %201
  br label %232

232:                                              ; preds = %219, %212
  %233 = phi i32 [ %216, %212 ], [ %231, %219 ]
  %234 = phi ptr [ %215, %212 ], [ %229, %219 ]
  store i32 %233, ptr %154, align 4
  %235 = load i32, ptr %234, align 1
  store i32 %235, ptr %9, align 4
  br label %236

236:                                              ; preds = %232, %217, %190
  %237 = phi ptr [ %191, %190 ], [ %32, %217 ], [ %234, %232 ]
  %238 = phi i32 [ %201, %190 ], [ %201, %217 ], [ %233, %232 ]
  %239 = phi i32 [ %193, %190 ], [ %193, %217 ], [ %235, %232 ]
  %240 = getelementptr %struct.ZSTD_seqSymbol, ptr %198, i32 1
  %241 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 2, i32 1
  store ptr %240, ptr %241, align 4
  %242 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 3
  %243 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 1
  %244 = load ptr, ptr %243, align 4
  %245 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %244, i32 0, i32 1
  %246 = load i32, ptr %245, align 4
  %247 = add i32 %246, %238
  %248 = sub i32 0, %247
  %249 = and i32 %248, 31
  %250 = lshr i32 %239, %249
  %251 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %246
  %252 = load i32, ptr %251, align 4
  %253 = and i32 %250, %252
  store i32 %247, ptr %154, align 4
  store i32 %253, ptr %242, align 4
  %254 = icmp ugt i32 %247, 32
  br i1 %254, label %255, label %258

255:                                              ; preds = %236
  %256 = getelementptr %struct.ZSTD_seqSymbol, ptr %244, i32 1
  %257 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 3, i32 1
  store ptr %256, ptr %257, align 4
  br label %302

258:                                              ; preds = %236
  %259 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i32 0, i32 2
  %260 = icmp ult ptr %237, %101
  br i1 %260, label %269, label %261

261:                                              ; preds = %258
  %262 = lshr i32 %247, 3
  %263 = sub nsw i32 0, %262
  %264 = getelementptr i8, ptr %237, i32 %263
  store ptr %264, ptr %259, align 4
  %265 = and i32 %247, 7
  store i32 %265, ptr %154, align 4
  %266 = load i32, ptr %264, align 1
  store i32 %266, ptr %9, align 4
  %267 = getelementptr %struct.ZSTD_seqSymbol, ptr %244, i32 1
  %268 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 3, i32 1
  store ptr %267, ptr %268, align 4
  br label %291

269:                                              ; preds = %258
  %270 = icmp eq ptr %237, %32
  br i1 %270, label %271, label %274

271:                                              ; preds = %269
  %272 = getelementptr %struct.ZSTD_seqSymbol, ptr %244, i32 1
  %273 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 3, i32 1
  store ptr %272, ptr %273, align 4
  br label %291

274:                                              ; preds = %269
  %275 = lshr i32 %247, 3
  %276 = sub nsw i32 0, %275
  %277 = getelementptr i8, ptr %237, i32 %276
  %278 = icmp ult ptr %277, %32
  %279 = ptrtoint ptr %237 to i32
  %280 = ptrtoint ptr %32 to i32
  %281 = sub i32 %279, %280
  %282 = select i1 %278, i32 %281, i32 %275
  %283 = sub i32 0, %282
  %284 = getelementptr i8, ptr %237, i32 %283
  store ptr %284, ptr %259, align 4
  %285 = mul i32 %282, -8
  %286 = add i32 %285, %247
  store i32 %286, ptr %154, align 4
  %287 = load i32, ptr %284, align 1
  store i32 %287, ptr %9, align 4
  %288 = getelementptr %struct.ZSTD_seqSymbol, ptr %244, i32 1
  %289 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 3, i32 1
  store ptr %288, ptr %289, align 4
  %290 = icmp ugt i32 %286, 32
  br i1 %290, label %302, label %291

291:                                              ; preds = %274, %271, %261
  %292 = phi ptr [ %273, %271 ], [ %289, %274 ], [ %268, %261 ]
  %293 = phi i32 [ %247, %271 ], [ %286, %274 ], [ %265, %261 ]
  %294 = phi ptr [ %32, %271 ], [ %284, %274 ], [ %264, %261 ]
  %295 = phi i32 [ %239, %271 ], [ %287, %274 ], [ %266, %261 ]
  %296 = ptrtoint ptr %32 to i32
  %297 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 4, i32 1
  %298 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 4, i32 2
  %299 = icmp ne i32 %18, 0
  %300 = tail call i32 @llvm.smax.i32(i32 %91, i32 0) #11
  %301 = getelementptr %struct.ZSTD_seqSymbol, ptr %244, i32 1
  br label %307

302:                                              ; preds = %689, %274, %255
  %303 = phi ptr [ %289, %274 ], [ %257, %255 ], [ %292, %689 ]
  %304 = phi i32 [ 0, %274 ], [ 0, %255 ], [ %713, %689 ]
  %305 = phi i32 [ %286, %274 ], [ %247, %255 ], [ %699, %689 ]
  %306 = icmp slt i32 %304, %91
  br i1 %306, label %1387, label %353

307:                                              ; preds = %689, %291
  %308 = phi ptr [ %294, %291 ], [ %690, %689 ]
  %309 = phi i32 [ %295, %291 ], [ %691, %689 ]
  %310 = phi i32 [ %95, %291 ], [ %642, %689 ]
  %311 = phi ptr [ %294, %291 ], [ %692, %689 ]
  %312 = phi ptr [ %294, %291 ], [ %693, %689 ]
  %313 = phi ptr [ %294, %291 ], [ %694, %689 ]
  %314 = phi ptr [ %294, %291 ], [ %695, %689 ]
  %315 = phi i32 [ %207, %291 ], [ %707, %689 ]
  %316 = phi i32 [ %253, %291 ], [ %662, %689 ]
  %317 = phi i32 [ %161, %291 ], [ %652, %689 ]
  %318 = phi ptr [ %294, %291 ], [ %696, %689 ]
  %319 = phi i32 [ %293, %291 ], [ %699, %689 ]
  %320 = phi i32 [ 0, %291 ], [ %713, %689 ]
  %321 = icmp ult ptr %318, %101
  br i1 %321, label %328, label %322

322:                                              ; preds = %307
  %323 = lshr i32 %319, 3
  %324 = sub nsw i32 0, %323
  %325 = getelementptr i8, ptr %318, i32 %324
  store ptr %325, ptr %259, align 4
  %326 = and i32 %319, 7
  store i32 %326, ptr %154, align 4
  %327 = load i32, ptr %325, align 1
  store i32 %327, ptr %9, align 4
  br label %343

328:                                              ; preds = %307
  %329 = icmp eq ptr %318, %32
  br i1 %329, label %343, label %330

330:                                              ; preds = %328
  %331 = lshr i32 %319, 3
  %332 = sub nsw i32 0, %331
  %333 = getelementptr i8, ptr %318, i32 %332
  %334 = icmp ult ptr %333, %32
  %335 = ptrtoint ptr %318 to i32
  %336 = sub i32 %335, %296
  %337 = select i1 %334, i32 %336, i32 %331
  %338 = sub i32 0, %337
  %339 = getelementptr i8, ptr %318, i32 %338
  store ptr %339, ptr %259, align 4
  %340 = mul i32 %337, -8
  %341 = add i32 %340, %319
  store i32 %341, ptr %154, align 4
  %342 = load i32, ptr %339, align 1
  store i32 %342, ptr %9, align 4
  br label %343

343:                                              ; preds = %330, %328, %322
  %344 = phi ptr [ %308, %328 ], [ %325, %322 ], [ %339, %330 ]
  %345 = phi i32 [ %309, %328 ], [ %327, %322 ], [ %342, %330 ]
  %346 = phi ptr [ %311, %328 ], [ %325, %322 ], [ %339, %330 ]
  %347 = phi ptr [ %312, %328 ], [ %325, %322 ], [ %339, %330 ]
  %348 = phi ptr [ %313, %328 ], [ %325, %322 ], [ %339, %330 ]
  %349 = phi ptr [ %314, %328 ], [ %325, %322 ], [ %339, %330 ]
  %350 = phi i32 [ %319, %328 ], [ %326, %322 ], [ %341, %330 ]
  %351 = phi ptr [ %32, %328 ], [ %325, %322 ], [ %339, %330 ]
  %352 = icmp eq i32 %320, %300
  br i1 %352, label %353, label %368

353:                                              ; preds = %343, %302
  %354 = phi ptr [ %303, %302 ], [ %292, %343 ]
  %355 = phi i32 [ %305, %302 ], [ %350, %343 ]
  %356 = phi i32 [ %304, %302 ], [ %300, %343 ]
  %357 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i32 0, i32 2
  %358 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 4, i32 1
  %359 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 4, i32 2
  %360 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 4, i32 1
  %361 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 4, i32 1
  %362 = icmp ne i32 %18, 0
  %363 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 4, i32 1
  %364 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 4, i32 2
  %365 = getelementptr i8, ptr %74, i32 -32
  %366 = ptrtoint ptr %74 to i32
  %367 = ptrtoint ptr %83 to i32
  br label %715

368:                                              ; preds = %343
  %369 = getelementptr [4 x %struct.seq_t], ptr %8, i32 0, i32 %320
  %370 = getelementptr %struct.ZSTD_seqSymbol, ptr %194, i32 %317
  %371 = load i32, ptr %370, align 4, !noalias !10
  %372 = lshr i32 %371, 16
  %373 = getelementptr inbounds i8, ptr %370, i32 4
  %374 = load i32, ptr %373, align 4, !noalias !10
  %375 = getelementptr %struct.ZSTD_seqSymbol, ptr %301, i32 %316
  %376 = load i32, ptr %375, align 4, !noalias !10
  %377 = lshr i32 %376, 16
  %378 = getelementptr inbounds i8, ptr %375, i32 4
  %379 = load i32, ptr %378, align 4, !noalias !10
  %380 = getelementptr %struct.ZSTD_seqSymbol, ptr %240, i32 %315
  %381 = load i32, ptr %380, align 4, !noalias !10
  %382 = lshr i32 %381, 16
  %383 = getelementptr inbounds i8, ptr %380, i32 4
  %384 = load i32, ptr %383, align 4, !noalias !10
  %385 = and i32 %372, 255
  %386 = and i32 %377, 255
  %387 = add nuw nsw i32 %386, %385
  %388 = and i32 %382, 255
  %389 = icmp ugt i32 %388, 1
  br i1 %389, label %390, label %493

390:                                              ; preds = %368
  %391 = icmp ugt i32 %388, 24
  %392 = select i1 %299, i1 %391, i1 false
  br i1 %392, label %393, label %449

393:                                              ; preds = %390
  %394 = sub i32 32, %350
  %395 = tail call i32 @llvm.umin.i32(i32 %388, i32 %394) #11
  %396 = sub nsw i32 %388, %395
  %397 = and i32 %350, 31
  %398 = shl i32 %345, %397
  %399 = sub nsw i32 0, %395
  %400 = and i32 %399, 31
  %401 = lshr i32 %398, %400
  %402 = add i32 %395, %350
  %403 = shl i32 %401, %396
  %404 = add i32 %403, %384
  %405 = icmp ugt i32 %402, 32
  br i1 %405, label %431, label %406

406:                                              ; preds = %393
  %407 = icmp ult ptr %348, %101
  br i1 %407, label %413, label %408

408:                                              ; preds = %406
  %409 = lshr i32 %402, 3
  %410 = sub nsw i32 0, %409
  %411 = getelementptr i8, ptr %348, i32 %410
  store ptr %411, ptr %259, align 4, !noalias !10
  %412 = and i32 %402, 7
  br label %427

413:                                              ; preds = %406
  %414 = icmp eq ptr %348, %32
  br i1 %414, label %431, label %415

415:                                              ; preds = %413
  %416 = lshr i32 %402, 3
  %417 = sub nsw i32 0, %416
  %418 = getelementptr i8, ptr %348, i32 %417
  %419 = icmp ult ptr %418, %32
  %420 = ptrtoint ptr %348 to i32
  %421 = sub i32 %420, %296
  %422 = select i1 %419, i32 %421, i32 %416
  %423 = sub i32 0, %422
  %424 = getelementptr i8, ptr %348, i32 %423
  store ptr %424, ptr %259, align 4, !noalias !10
  %425 = mul i32 %422, -8
  %426 = add i32 %425, %402
  br label %427

427:                                              ; preds = %415, %408
  %428 = phi i32 [ %426, %415 ], [ %412, %408 ]
  %429 = phi ptr [ %424, %415 ], [ %411, %408 ]
  store i32 %428, ptr %154, align 4, !noalias !10
  %430 = load i32, ptr %429, align 1, !noalias !10
  store i32 %430, ptr %9, align 4, !noalias !10
  br label %431

431:                                              ; preds = %427, %413, %393
  %432 = phi ptr [ %344, %413 ], [ %344, %393 ], [ %429, %427 ]
  %433 = phi i32 [ %345, %413 ], [ %345, %393 ], [ %430, %427 ]
  %434 = phi ptr [ %346, %413 ], [ %346, %393 ], [ %429, %427 ]
  %435 = phi ptr [ %347, %413 ], [ %347, %393 ], [ %429, %427 ]
  %436 = phi ptr [ %32, %413 ], [ %348, %393 ], [ %429, %427 ]
  %437 = phi ptr [ %32, %413 ], [ %349, %393 ], [ %429, %427 ]
  %438 = phi ptr [ %32, %413 ], [ %351, %393 ], [ %429, %427 ]
  %439 = phi i32 [ %402, %413 ], [ %402, %393 ], [ %428, %427 ]
  %440 = icmp ugt i32 %388, %394
  br i1 %440, label %441, label %481

441:                                              ; preds = %431
  %442 = and i32 %439, 31
  %443 = shl i32 %433, %442
  %444 = sub nsw i32 0, %396
  %445 = and i32 %444, 31
  %446 = lshr i32 %443, %445
  %447 = add i32 %439, %396
  %448 = add i32 %446, %404
  br label %481

449:                                              ; preds = %390
  %450 = and i32 %350, 31
  %451 = shl i32 %345, %450
  %452 = sub nsw i32 0, %382
  %453 = and i32 %452, 31
  %454 = lshr i32 %451, %453
  %455 = add i32 %388, %350
  %456 = add i32 %454, %384
  %457 = icmp ugt i32 %455, 32
  br i1 %457, label %481, label %458

458:                                              ; preds = %449
  %459 = icmp ult ptr %349, %101
  br i1 %459, label %466, label %460

460:                                              ; preds = %458
  %461 = lshr i32 %455, 3
  %462 = sub nsw i32 0, %461
  %463 = getelementptr i8, ptr %349, i32 %462
  store ptr %463, ptr %259, align 4, !noalias !10
  %464 = and i32 %455, 7
  store i32 %464, ptr %154, align 4, !noalias !10
  %465 = load i32, ptr %463, align 1, !noalias !10
  store i32 %465, ptr %9, align 4, !noalias !10
  br label %481

466:                                              ; preds = %458
  %467 = icmp eq ptr %349, %32
  br i1 %467, label %481, label %468

468:                                              ; preds = %466
  %469 = lshr i32 %455, 3
  %470 = sub nsw i32 0, %469
  %471 = getelementptr i8, ptr %349, i32 %470
  %472 = icmp ult ptr %471, %32
  %473 = ptrtoint ptr %349 to i32
  %474 = sub i32 %473, %296
  %475 = select i1 %472, i32 %474, i32 %469
  %476 = sub i32 0, %475
  %477 = getelementptr i8, ptr %349, i32 %476
  store ptr %477, ptr %259, align 4, !noalias !10
  %478 = mul i32 %475, -8
  %479 = add i32 %478, %455
  store i32 %479, ptr %154, align 4, !noalias !10
  %480 = load i32, ptr %477, align 1, !noalias !10
  store i32 %480, ptr %9, align 4, !noalias !10
  br label %481

481:                                              ; preds = %468, %466, %460, %449, %441, %431
  %482 = phi ptr [ %432, %441 ], [ %432, %431 ], [ %344, %449 ], [ %463, %460 ], [ %477, %468 ], [ %344, %466 ]
  %483 = phi i32 [ %433, %441 ], [ %433, %431 ], [ %345, %449 ], [ %465, %460 ], [ %480, %468 ], [ %345, %466 ]
  %484 = phi ptr [ %434, %441 ], [ %434, %431 ], [ %346, %449 ], [ %463, %460 ], [ %477, %468 ], [ %346, %466 ]
  %485 = phi ptr [ %435, %441 ], [ %435, %431 ], [ %347, %449 ], [ %463, %460 ], [ %477, %468 ], [ %347, %466 ]
  %486 = phi i32 [ %447, %441 ], [ %439, %431 ], [ %455, %449 ], [ %464, %460 ], [ %479, %468 ], [ %455, %466 ]
  %487 = phi ptr [ %436, %441 ], [ %436, %431 ], [ %348, %449 ], [ %463, %460 ], [ %477, %468 ], [ %348, %466 ]
  %488 = phi ptr [ %437, %441 ], [ %437, %431 ], [ %349, %449 ], [ %463, %460 ], [ %477, %468 ], [ %32, %466 ]
  %489 = phi ptr [ %438, %441 ], [ %438, %431 ], [ %351, %449 ], [ %463, %460 ], [ %477, %468 ], [ %32, %466 ]
  %490 = phi i32 [ %448, %441 ], [ %404, %431 ], [ %456, %449 ], [ %456, %460 ], [ %456, %468 ], [ %456, %466 ]
  %491 = load i32, ptr %297, align 4, !noalias !10
  store i32 %491, ptr %298, align 4, !noalias !10
  %492 = load i32, ptr %89, align 4, !noalias !10
  store i32 %492, ptr %297, align 4, !noalias !10
  store i32 %490, ptr %89, align 4, !noalias !10
  br label %530

493:                                              ; preds = %368
  %494 = icmp eq i32 %374, 0
  %495 = icmp eq i32 %388, 0
  br i1 %495, label %496, label %502, !prof !13

496:                                              ; preds = %493
  br i1 %494, label %499, label %497, !prof !14

497:                                              ; preds = %496
  %498 = load i32, ptr %89, align 4, !noalias !10
  br label %530

499:                                              ; preds = %496
  %500 = load i32, ptr %297, align 4, !noalias !10
  %501 = load i32, ptr %89, align 4, !noalias !10
  store i32 %501, ptr %297, align 4, !noalias !10
  store i32 %500, ptr %89, align 4, !noalias !10
  br label %530

502:                                              ; preds = %493
  %503 = zext i1 %494 to i32
  %504 = and i32 %350, 31
  %505 = shl i32 %345, %504
  %506 = lshr i32 %505, 31
  %507 = add i32 %350, 1
  store i32 %507, ptr %154, align 4, !noalias !10
  %508 = add nuw nsw i32 %506, %503
  %509 = add i32 %508, %384
  %510 = icmp eq i32 %509, 3
  br i1 %510, label %511, label %517

511:                                              ; preds = %502
  %512 = load i32, ptr %89, align 4, !noalias !10
  %513 = add i32 %512, -1
  %514 = icmp eq i32 %513, 0
  %515 = zext i1 %514 to i32
  %516 = add i32 %513, %515
  br label %524

517:                                              ; preds = %502
  %518 = getelementptr %struct.seqState_t, ptr %9, i32 0, i32 4, i32 %509
  %519 = load i32, ptr %518, align 4, !noalias !10
  %520 = icmp eq i32 %519, 0
  %521 = zext i1 %520 to i32
  %522 = add i32 %519, %521
  %523 = icmp eq i32 %509, 1
  br i1 %523, label %527, label %524

524:                                              ; preds = %517, %511
  %525 = phi i32 [ %516, %511 ], [ %522, %517 ]
  %526 = load i32, ptr %297, align 4, !noalias !10
  store i32 %526, ptr %298, align 4, !noalias !10
  br label %527

527:                                              ; preds = %524, %517
  %528 = phi i32 [ %525, %524 ], [ %522, %517 ]
  %529 = load i32, ptr %89, align 4, !noalias !10
  store i32 %529, ptr %297, align 4, !noalias !10
  store i32 %528, ptr %89, align 4, !noalias !10
  br label %530

530:                                              ; preds = %527, %499, %497, %481
  %531 = phi ptr [ %482, %481 ], [ %344, %497 ], [ %344, %499 ], [ %344, %527 ]
  %532 = phi i32 [ %483, %481 ], [ %345, %497 ], [ %345, %499 ], [ %345, %527 ]
  %533 = phi ptr [ %484, %481 ], [ %346, %497 ], [ %346, %499 ], [ %346, %527 ]
  %534 = phi ptr [ %485, %481 ], [ %347, %497 ], [ %347, %499 ], [ %347, %527 ]
  %535 = phi i32 [ %486, %481 ], [ %350, %497 ], [ %350, %499 ], [ %507, %527 ]
  %536 = phi ptr [ %487, %481 ], [ %348, %497 ], [ %348, %499 ], [ %348, %527 ]
  %537 = phi ptr [ %488, %481 ], [ %349, %497 ], [ %349, %499 ], [ %349, %527 ]
  %538 = phi ptr [ %489, %481 ], [ %351, %497 ], [ %351, %499 ], [ %351, %527 ]
  %539 = phi i32 [ %490, %481 ], [ %498, %497 ], [ %500, %499 ], [ %528, %527 ]
  %540 = icmp eq i32 %386, 0
  br i1 %540, label %549, label %541

541:                                              ; preds = %530
  %542 = and i32 %535, 31
  %543 = shl i32 %532, %542
  %544 = sub nsw i32 0, %377
  %545 = and i32 %544, 31
  %546 = lshr i32 %543, %545
  %547 = add i32 %535, %386
  %548 = add i32 %546, %379
  br label %549

549:                                              ; preds = %541, %530
  %550 = phi i32 [ %535, %530 ], [ %547, %541 ]
  %551 = phi i32 [ %379, %530 ], [ %548, %541 ]
  %552 = icmp ult i32 %387, 20
  %553 = icmp ugt i32 %550, 32
  %554 = select i1 %552, i1 true, i1 %553
  br i1 %554, label %580, label %555

555:                                              ; preds = %549
  %556 = icmp ult ptr %534, %101
  br i1 %556, label %562, label %557

557:                                              ; preds = %555
  %558 = lshr i32 %550, 3
  %559 = sub nsw i32 0, %558
  %560 = getelementptr i8, ptr %534, i32 %559
  store ptr %560, ptr %259, align 4, !noalias !10
  %561 = and i32 %550, 7
  br label %576

562:                                              ; preds = %555
  %563 = icmp eq ptr %534, %32
  br i1 %563, label %580, label %564

564:                                              ; preds = %562
  %565 = lshr i32 %550, 3
  %566 = sub nsw i32 0, %565
  %567 = getelementptr i8, ptr %534, i32 %566
  %568 = icmp ult ptr %567, %32
  %569 = ptrtoint ptr %534 to i32
  %570 = sub i32 %569, %296
  %571 = select i1 %568, i32 %570, i32 %565
  %572 = sub i32 0, %571
  %573 = getelementptr i8, ptr %534, i32 %572
  store ptr %573, ptr %259, align 4, !noalias !10
  %574 = mul i32 %571, -8
  %575 = add i32 %574, %550
  br label %576

576:                                              ; preds = %564, %557
  %577 = phi i32 [ %575, %564 ], [ %561, %557 ]
  %578 = phi ptr [ %573, %564 ], [ %560, %557 ]
  store i32 %577, ptr %154, align 4, !noalias !10
  %579 = load i32, ptr %578, align 1, !noalias !10
  store i32 %579, ptr %9, align 4, !noalias !10
  br label %580

580:                                              ; preds = %576, %562, %549
  %581 = phi ptr [ %578, %576 ], [ %531, %562 ], [ %531, %549 ]
  %582 = phi i32 [ %579, %576 ], [ %532, %562 ], [ %532, %549 ]
  %583 = phi ptr [ %578, %576 ], [ %533, %562 ], [ %533, %549 ]
  %584 = phi i32 [ %577, %576 ], [ %550, %562 ], [ %550, %549 ]
  %585 = phi ptr [ %578, %576 ], [ %32, %562 ], [ %534, %549 ]
  %586 = phi ptr [ %578, %576 ], [ %32, %562 ], [ %536, %549 ]
  %587 = phi ptr [ %578, %576 ], [ %32, %562 ], [ %537, %549 ]
  %588 = phi ptr [ %578, %576 ], [ %32, %562 ], [ %538, %549 ]
  %589 = icmp eq i32 %385, 0
  br i1 %589, label %598, label %590

590:                                              ; preds = %580
  %591 = and i32 %584, 31
  %592 = shl i32 %582, %591
  %593 = sub nsw i32 0, %372
  %594 = and i32 %593, 31
  %595 = lshr i32 %592, %594
  %596 = add i32 %584, %385
  %597 = add i32 %595, %374
  br label %598

598:                                              ; preds = %590, %580
  %599 = phi i32 [ %597, %590 ], [ %374, %580 ]
  %600 = phi i32 [ %596, %590 ], [ %584, %580 ]
  %601 = icmp ugt i32 %600, 32
  br i1 %601, label %627, label %602

602:                                              ; preds = %598
  %603 = icmp ult ptr %583, %101
  br i1 %603, label %609, label %604

604:                                              ; preds = %602
  %605 = lshr i32 %600, 3
  %606 = sub nsw i32 0, %605
  %607 = getelementptr i8, ptr %583, i32 %606
  store ptr %607, ptr %259, align 4, !noalias !10
  %608 = and i32 %600, 7
  br label %623

609:                                              ; preds = %602
  %610 = icmp eq ptr %583, %32
  br i1 %610, label %627, label %611

611:                                              ; preds = %609
  %612 = lshr i32 %600, 3
  %613 = sub nsw i32 0, %612
  %614 = getelementptr i8, ptr %583, i32 %613
  %615 = icmp ult ptr %614, %32
  %616 = ptrtoint ptr %583 to i32
  %617 = sub i32 %616, %296
  %618 = select i1 %615, i32 %617, i32 %612
  %619 = sub i32 0, %618
  %620 = getelementptr i8, ptr %583, i32 %619
  store ptr %620, ptr %259, align 4, !noalias !10
  %621 = mul i32 %618, -8
  %622 = add i32 %621, %600
  br label %623

623:                                              ; preds = %611, %604
  %624 = phi i32 [ %608, %604 ], [ %622, %611 ]
  %625 = phi ptr [ %607, %604 ], [ %620, %611 ]
  store i32 %624, ptr %154, align 4, !noalias !10
  %626 = load i32, ptr %625, align 1, !noalias !10
  store i32 %626, ptr %9, align 4, !noalias !10
  br label %627

627:                                              ; preds = %623, %609, %598
  %628 = phi ptr [ %581, %609 ], [ %581, %598 ], [ %625, %623 ]
  %629 = phi i32 [ %582, %609 ], [ %582, %598 ], [ %626, %623 ]
  %630 = phi ptr [ %32, %609 ], [ %583, %598 ], [ %625, %623 ]
  %631 = phi ptr [ %32, %609 ], [ %585, %598 ], [ %625, %623 ]
  %632 = phi ptr [ %32, %609 ], [ %586, %598 ], [ %625, %623 ]
  %633 = phi ptr [ %32, %609 ], [ %587, %598 ], [ %625, %623 ]
  %634 = phi ptr [ %32, %609 ], [ %588, %598 ], [ %625, %623 ]
  %635 = phi i32 [ %600, %609 ], [ %600, %598 ], [ %624, %623 ]
  %636 = add i32 %599, %310
  %637 = icmp ugt i32 %539, %636
  %638 = select i1 %637, ptr %85, ptr %81
  %639 = getelementptr i8, ptr %638, i32 %636
  %640 = sub i32 0, %539
  %641 = getelementptr i8, ptr %639, i32 %640
  %642 = add i32 %636, %551
  store i32 %642, ptr %96, align 4, !noalias !10
  %643 = lshr i32 %371, 24
  %644 = add i32 %635, %643
  %645 = sub i32 0, %644
  %646 = and i32 %645, 31
  %647 = lshr i32 %629, %646
  %648 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %643
  %649 = load i32, ptr %648, align 4, !noalias !10
  %650 = and i32 %647, %649
  %651 = and i32 %371, 65535
  %652 = add i32 %650, %651
  store i32 %652, ptr %150, align 4, !noalias !10
  %653 = lshr i32 %376, 24
  %654 = add i32 %644, %653
  %655 = sub i32 0, %654
  %656 = and i32 %655, 31
  %657 = lshr i32 %629, %656
  %658 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %653
  %659 = load i32, ptr %658, align 4, !noalias !10
  %660 = and i32 %659, %657
  %661 = and i32 %376, 65535
  %662 = add i32 %660, %661
  store i32 %662, ptr %242, align 4, !noalias !10
  %663 = icmp ugt i32 %654, 32
  br i1 %663, label %689, label %664

664:                                              ; preds = %627
  %665 = icmp ult ptr %628, %101
  br i1 %665, label %671, label %666

666:                                              ; preds = %664
  %667 = lshr i32 %654, 3
  %668 = sub nsw i32 0, %667
  %669 = getelementptr i8, ptr %628, i32 %668
  store ptr %669, ptr %259, align 4, !noalias !10
  %670 = and i32 %654, 7
  br label %685

671:                                              ; preds = %664
  %672 = icmp eq ptr %628, %32
  br i1 %672, label %689, label %673

673:                                              ; preds = %671
  %674 = lshr i32 %654, 3
  %675 = sub nsw i32 0, %674
  %676 = getelementptr i8, ptr %628, i32 %675
  %677 = icmp ult ptr %676, %32
  %678 = ptrtoint ptr %628 to i32
  %679 = sub i32 %678, %296
  %680 = select i1 %677, i32 %679, i32 %674
  %681 = sub i32 0, %680
  %682 = getelementptr i8, ptr %628, i32 %681
  store ptr %682, ptr %259, align 4, !noalias !10
  %683 = mul i32 %680, -8
  %684 = add i32 %683, %654
  br label %685

685:                                              ; preds = %673, %666
  %686 = phi i32 [ %684, %673 ], [ %670, %666 ]
  %687 = phi ptr [ %682, %673 ], [ %669, %666 ]
  store i32 %686, ptr %154, align 4, !noalias !10
  %688 = load i32, ptr %687, align 1, !noalias !10
  store i32 %688, ptr %9, align 4, !noalias !10
  br label %689

689:                                              ; preds = %685, %671, %627
  %690 = phi ptr [ %32, %671 ], [ %628, %627 ], [ %687, %685 ]
  %691 = phi i32 [ %629, %671 ], [ %629, %627 ], [ %688, %685 ]
  %692 = phi ptr [ %32, %671 ], [ %630, %627 ], [ %687, %685 ]
  %693 = phi ptr [ %32, %671 ], [ %631, %627 ], [ %687, %685 ]
  %694 = phi ptr [ %32, %671 ], [ %632, %627 ], [ %687, %685 ]
  %695 = phi ptr [ %32, %671 ], [ %633, %627 ], [ %687, %685 ]
  %696 = phi ptr [ %32, %671 ], [ %634, %627 ], [ %687, %685 ]
  %697 = phi i32 [ %654, %671 ], [ %654, %627 ], [ %686, %685 ]
  %698 = lshr i32 %381, 24
  %699 = add i32 %697, %698
  %700 = sub i32 0, %699
  %701 = and i32 %700, 31
  %702 = lshr i32 %691, %701
  %703 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %698
  %704 = load i32, ptr %703, align 4, !noalias !10
  %705 = and i32 %702, %704
  store i32 %699, ptr %154, align 4, !noalias !10
  %706 = and i32 %381, 65535
  %707 = add i32 %705, %706
  store i32 %707, ptr %196, align 4, !noalias !10
  store i32 %599, ptr %369, align 4
  %708 = getelementptr inbounds i8, ptr %369, i32 4
  store i32 %551, ptr %708, align 4
  %709 = getelementptr inbounds i8, ptr %369, i32 8
  store i32 %539, ptr %709, align 4
  %710 = getelementptr inbounds i8, ptr %369, i32 12
  store ptr %641, ptr %710, align 4
  tail call void @llvm.prefetch.p0(ptr %641, i32 0, i32 3, i32 1) #11
  %711 = getelementptr i8, ptr %641, i32 -1
  %712 = getelementptr i8, ptr %711, i32 %551
  tail call void @llvm.prefetch.p0(ptr %712, i32 0, i32 3, i32 1) #11
  %713 = add nuw nsw i32 %320, 1
  %714 = icmp ugt i32 %699, 32
  br i1 %714, label %302, label %307

715:                                              ; preds = %1223, %353
  %716 = phi i32 [ %1228, %1223 ], [ %355, %353 ]
  %717 = phi ptr [ %1226, %1223 ], [ %1, %353 ]
  %718 = phi i32 [ %1227, %1223 ], [ %356, %353 ]
  %719 = icmp ugt i32 %716, 32
  br i1 %719, label %720, label %722

720:                                              ; preds = %715
  %721 = icmp slt i32 %718, %35
  br i1 %721, label %1387, label %1229

722:                                              ; preds = %715
  %723 = load ptr, ptr %357, align 4
  %724 = load ptr, ptr %102, align 4
  %725 = icmp ult ptr %723, %724
  br i1 %725, label %732, label %726

726:                                              ; preds = %722
  %727 = lshr i32 %716, 3
  %728 = sub nsw i32 0, %727
  %729 = getelementptr i8, ptr %723, i32 %728
  store ptr %729, ptr %357, align 4
  %730 = and i32 %716, 7
  store i32 %730, ptr %154, align 4
  %731 = load i32, ptr %729, align 1
  store i32 %731, ptr %9, align 4
  br label %749

732:                                              ; preds = %722
  %733 = load ptr, ptr %100, align 4
  %734 = icmp eq ptr %723, %733
  br i1 %734, label %749, label %735

735:                                              ; preds = %732
  %736 = lshr i32 %716, 3
  %737 = sub nsw i32 0, %736
  %738 = getelementptr i8, ptr %723, i32 %737
  %739 = icmp ult ptr %738, %733
  %740 = ptrtoint ptr %723 to i32
  %741 = ptrtoint ptr %733 to i32
  %742 = sub i32 %740, %741
  %743 = select i1 %739, i32 %742, i32 %736
  %744 = sub i32 0, %743
  %745 = getelementptr i8, ptr %723, i32 %744
  store ptr %745, ptr %357, align 4
  %746 = mul i32 %743, -8
  %747 = add i32 %746, %716
  store i32 %747, ptr %154, align 4
  %748 = load i32, ptr %745, align 1
  store i32 %748, ptr %9, align 4
  br label %749

749:                                              ; preds = %735, %732, %726
  %750 = phi ptr [ %723, %732 ], [ %729, %726 ], [ %745, %735 ]
  %751 = phi i32 [ %716, %732 ], [ %730, %726 ], [ %747, %735 ]
  %752 = icmp slt i32 %718, %35
  br i1 %752, label %753, label %1229

753:                                              ; preds = %749
  %754 = load ptr, ptr %195, align 4, !noalias !15
  %755 = load i32, ptr %150, align 4, !noalias !15
  %756 = getelementptr %struct.ZSTD_seqSymbol, ptr %754, i32 %755
  %757 = load i32, ptr %756, align 4, !noalias !15
  %758 = lshr i32 %757, 16
  %759 = getelementptr inbounds i8, ptr %756, i32 4
  %760 = load i32, ptr %759, align 4, !noalias !15
  %761 = load ptr, ptr %354, align 4, !noalias !15
  %762 = load i32, ptr %242, align 4, !noalias !15
  %763 = getelementptr %struct.ZSTD_seqSymbol, ptr %761, i32 %762
  %764 = load i32, ptr %763, align 4, !noalias !15
  %765 = lshr i32 %764, 16
  %766 = getelementptr inbounds i8, ptr %763, i32 4
  %767 = load i32, ptr %766, align 4, !noalias !15
  %768 = load ptr, ptr %241, align 4, !noalias !15
  %769 = load i32, ptr %196, align 4, !noalias !15
  %770 = getelementptr %struct.ZSTD_seqSymbol, ptr %768, i32 %769
  %771 = load i32, ptr %770, align 4, !noalias !15
  %772 = lshr i32 %771, 16
  %773 = getelementptr inbounds i8, ptr %770, i32 4
  %774 = load i32, ptr %773, align 4, !noalias !15
  %775 = and i32 %758, 255
  %776 = and i32 %765, 255
  %777 = add nuw nsw i32 %776, %775
  %778 = and i32 %772, 255
  %779 = icmp ugt i32 %778, 1
  br i1 %779, label %780, label %878

780:                                              ; preds = %753
  %781 = icmp ugt i32 %778, 24
  %782 = select i1 %362, i1 %781, i1 false
  br i1 %782, label %783, label %837

783:                                              ; preds = %780
  %784 = sub i32 32, %751
  %785 = tail call i32 @llvm.umin.i32(i32 %778, i32 %784) #11
  %786 = sub nsw i32 %778, %785
  %787 = load i32, ptr %9, align 4, !noalias !15
  %788 = and i32 %751, 31
  %789 = shl i32 %787, %788
  %790 = sub nsw i32 0, %785
  %791 = and i32 %790, 31
  %792 = lshr i32 %789, %791
  %793 = add i32 %785, %751
  %794 = shl i32 %792, %786
  %795 = add i32 %794, %774
  %796 = icmp ugt i32 %793, 32
  br i1 %796, label %824, label %797

797:                                              ; preds = %783
  %798 = icmp ult ptr %750, %724
  br i1 %798, label %804, label %799

799:                                              ; preds = %797
  %800 = lshr i32 %793, 3
  %801 = sub nsw i32 0, %800
  %802 = getelementptr i8, ptr %750, i32 %801
  store ptr %802, ptr %357, align 4, !noalias !15
  %803 = and i32 %793, 7
  br label %820

804:                                              ; preds = %797
  %805 = load ptr, ptr %100, align 4, !noalias !15
  %806 = icmp eq ptr %750, %805
  br i1 %806, label %824, label %807

807:                                              ; preds = %804
  %808 = lshr i32 %793, 3
  %809 = sub nsw i32 0, %808
  %810 = getelementptr i8, ptr %750, i32 %809
  %811 = icmp ult ptr %810, %805
  %812 = ptrtoint ptr %750 to i32
  %813 = ptrtoint ptr %805 to i32
  %814 = sub i32 %812, %813
  %815 = select i1 %811, i32 %814, i32 %808
  %816 = sub i32 0, %815
  %817 = getelementptr i8, ptr %750, i32 %816
  store ptr %817, ptr %357, align 4, !noalias !15
  %818 = mul i32 %815, -8
  %819 = add i32 %818, %793
  br label %820

820:                                              ; preds = %807, %799
  %821 = phi i32 [ %819, %807 ], [ %803, %799 ]
  %822 = phi ptr [ %817, %807 ], [ %802, %799 ]
  store i32 %821, ptr %154, align 4, !noalias !15
  %823 = load i32, ptr %822, align 1, !noalias !15
  store i32 %823, ptr %9, align 4, !noalias !15
  br label %824

824:                                              ; preds = %820, %804, %783
  %825 = phi ptr [ %750, %804 ], [ %750, %783 ], [ %822, %820 ]
  %826 = phi i32 [ %793, %804 ], [ %793, %783 ], [ %821, %820 ]
  %827 = phi i32 [ %787, %804 ], [ %787, %783 ], [ %823, %820 ]
  %828 = icmp ugt i32 %778, %784
  br i1 %828, label %829, label %872

829:                                              ; preds = %824
  %830 = and i32 %826, 31
  %831 = shl i32 %827, %830
  %832 = sub nsw i32 0, %786
  %833 = and i32 %832, 31
  %834 = lshr i32 %831, %833
  %835 = add i32 %826, %786
  %836 = add i32 %834, %795
  br label %872

837:                                              ; preds = %780
  %838 = load i32, ptr %9, align 4, !noalias !15
  %839 = and i32 %751, 31
  %840 = shl i32 %838, %839
  %841 = sub nsw i32 0, %772
  %842 = and i32 %841, 31
  %843 = lshr i32 %840, %842
  %844 = add i32 %778, %751
  %845 = add i32 %843, %774
  %846 = icmp ugt i32 %844, 32
  br i1 %846, label %872, label %847

847:                                              ; preds = %837
  %848 = icmp ult ptr %750, %724
  br i1 %848, label %855, label %849

849:                                              ; preds = %847
  %850 = lshr i32 %844, 3
  %851 = sub nsw i32 0, %850
  %852 = getelementptr i8, ptr %750, i32 %851
  store ptr %852, ptr %357, align 4, !noalias !15
  %853 = and i32 %844, 7
  store i32 %853, ptr %154, align 4, !noalias !15
  %854 = load i32, ptr %852, align 1, !noalias !15
  store i32 %854, ptr %9, align 4, !noalias !15
  br label %872

855:                                              ; preds = %847
  %856 = load ptr, ptr %100, align 4, !noalias !15
  %857 = icmp eq ptr %750, %856
  br i1 %857, label %872, label %858

858:                                              ; preds = %855
  %859 = lshr i32 %844, 3
  %860 = sub nsw i32 0, %859
  %861 = getelementptr i8, ptr %750, i32 %860
  %862 = icmp ult ptr %861, %856
  %863 = ptrtoint ptr %750 to i32
  %864 = ptrtoint ptr %856 to i32
  %865 = sub i32 %863, %864
  %866 = select i1 %862, i32 %865, i32 %859
  %867 = sub i32 0, %866
  %868 = getelementptr i8, ptr %750, i32 %867
  store ptr %868, ptr %357, align 4, !noalias !15
  %869 = mul i32 %866, -8
  %870 = add i32 %869, %844
  store i32 %870, ptr %154, align 4, !noalias !15
  %871 = load i32, ptr %868, align 1, !noalias !15
  store i32 %871, ptr %9, align 4, !noalias !15
  br label %872

872:                                              ; preds = %858, %855, %849, %837, %829, %824
  %873 = phi ptr [ %825, %829 ], [ %825, %824 ], [ %750, %837 ], [ %852, %849 ], [ %868, %858 ], [ %750, %855 ]
  %874 = phi i32 [ %835, %829 ], [ %826, %824 ], [ %844, %837 ], [ %853, %849 ], [ %870, %858 ], [ %844, %855 ]
  %875 = phi i32 [ %836, %829 ], [ %795, %824 ], [ %845, %837 ], [ %845, %849 ], [ %845, %858 ], [ %845, %855 ]
  %876 = load i32, ptr %363, align 4, !noalias !15
  store i32 %876, ptr %364, align 4, !noalias !15
  %877 = load i32, ptr %89, align 4, !noalias !15
  store i32 %877, ptr %363, align 4, !noalias !15
  store i32 %875, ptr %89, align 4, !noalias !15
  br label %916

878:                                              ; preds = %753
  %879 = icmp eq i32 %760, 0
  %880 = icmp eq i32 %778, 0
  br i1 %880, label %881, label %887, !prof !13

881:                                              ; preds = %878
  br i1 %879, label %884, label %882, !prof !14

882:                                              ; preds = %881
  %883 = load i32, ptr %89, align 4, !noalias !15
  br label %916

884:                                              ; preds = %881
  %885 = load i32, ptr %361, align 4, !noalias !15
  %886 = load i32, ptr %89, align 4, !noalias !15
  store i32 %886, ptr %361, align 4, !noalias !15
  store i32 %885, ptr %89, align 4, !noalias !15
  br label %916

887:                                              ; preds = %878
  %888 = zext i1 %879 to i32
  %889 = add i32 %774, %888
  %890 = load i32, ptr %9, align 4, !noalias !15
  %891 = and i32 %751, 31
  %892 = shl i32 %890, %891
  %893 = lshr i32 %892, 31
  %894 = add i32 %751, 1
  store i32 %894, ptr %154, align 4, !noalias !15
  %895 = add i32 %889, %893
  %896 = icmp eq i32 %895, 3
  br i1 %896, label %897, label %903

897:                                              ; preds = %887
  %898 = load i32, ptr %89, align 4, !noalias !15
  %899 = add i32 %898, -1
  %900 = icmp eq i32 %899, 0
  %901 = zext i1 %900 to i32
  %902 = add i32 %899, %901
  br label %910

903:                                              ; preds = %887
  %904 = getelementptr %struct.seqState_t, ptr %9, i32 0, i32 4, i32 %895
  %905 = load i32, ptr %904, align 4, !noalias !15
  %906 = icmp eq i32 %905, 0
  %907 = zext i1 %906 to i32
  %908 = add i32 %905, %907
  %909 = icmp eq i32 %895, 1
  br i1 %909, label %913, label %910

910:                                              ; preds = %903, %897
  %911 = phi i32 [ %902, %897 ], [ %908, %903 ]
  %912 = load i32, ptr %358, align 4, !noalias !15
  store i32 %912, ptr %359, align 4, !noalias !15
  br label %913

913:                                              ; preds = %910, %903
  %914 = phi i32 [ %911, %910 ], [ %908, %903 ]
  %915 = load i32, ptr %89, align 4, !noalias !15
  store i32 %915, ptr %360, align 4, !noalias !15
  store i32 %914, ptr %89, align 4, !noalias !15
  br label %916

916:                                              ; preds = %913, %884, %882, %872
  %917 = phi ptr [ %873, %872 ], [ %750, %882 ], [ %750, %884 ], [ %750, %913 ]
  %918 = phi i32 [ %874, %872 ], [ %751, %882 ], [ %751, %884 ], [ %894, %913 ]
  %919 = phi i32 [ %875, %872 ], [ %883, %882 ], [ %885, %884 ], [ %914, %913 ]
  %920 = icmp eq i32 %776, 0
  br i1 %920, label %930, label %921

921:                                              ; preds = %916
  %922 = load i32, ptr %9, align 4, !noalias !15
  %923 = and i32 %918, 31
  %924 = shl i32 %922, %923
  %925 = sub nsw i32 0, %765
  %926 = and i32 %925, 31
  %927 = lshr i32 %924, %926
  %928 = add i32 %918, %776
  %929 = add i32 %927, %767
  br label %930

930:                                              ; preds = %921, %916
  %931 = phi i32 [ %918, %916 ], [ %928, %921 ]
  %932 = phi i32 [ %767, %916 ], [ %929, %921 ]
  %933 = icmp ult i32 %777, 20
  %934 = icmp ugt i32 %931, 32
  %935 = select i1 %933, i1 true, i1 %934
  br i1 %935, label %963, label %936

936:                                              ; preds = %930
  %937 = icmp ult ptr %917, %724
  br i1 %937, label %943, label %938

938:                                              ; preds = %936
  %939 = lshr i32 %931, 3
  %940 = sub nsw i32 0, %939
  %941 = getelementptr i8, ptr %917, i32 %940
  store ptr %941, ptr %357, align 4, !noalias !15
  %942 = and i32 %931, 7
  br label %959

943:                                              ; preds = %936
  %944 = load ptr, ptr %100, align 4, !noalias !15
  %945 = icmp eq ptr %917, %944
  br i1 %945, label %963, label %946

946:                                              ; preds = %943
  %947 = lshr i32 %931, 3
  %948 = sub nsw i32 0, %947
  %949 = getelementptr i8, ptr %917, i32 %948
  %950 = icmp ult ptr %949, %944
  %951 = ptrtoint ptr %917 to i32
  %952 = ptrtoint ptr %944 to i32
  %953 = sub i32 %951, %952
  %954 = select i1 %950, i32 %953, i32 %947
  %955 = sub i32 0, %954
  %956 = getelementptr i8, ptr %917, i32 %955
  store ptr %956, ptr %357, align 4, !noalias !15
  %957 = mul i32 %954, -8
  %958 = add i32 %957, %931
  br label %959

959:                                              ; preds = %946, %938
  %960 = phi i32 [ %958, %946 ], [ %942, %938 ]
  %961 = phi ptr [ %956, %946 ], [ %941, %938 ]
  store i32 %960, ptr %154, align 4, !noalias !15
  %962 = load i32, ptr %961, align 1, !noalias !15
  store i32 %962, ptr %9, align 4, !noalias !15
  br label %963

963:                                              ; preds = %959, %943, %930
  %964 = phi ptr [ %961, %959 ], [ %917, %943 ], [ %917, %930 ]
  %965 = phi i32 [ %960, %959 ], [ %931, %943 ], [ %931, %930 ]
  %966 = icmp eq i32 %775, 0
  br i1 %966, label %976, label %967

967:                                              ; preds = %963
  %968 = load i32, ptr %9, align 4, !noalias !15
  %969 = and i32 %965, 31
  %970 = shl i32 %968, %969
  %971 = sub nsw i32 0, %758
  %972 = and i32 %971, 31
  %973 = lshr i32 %970, %972
  %974 = add i32 %965, %775
  %975 = add i32 %973, %760
  br label %976

976:                                              ; preds = %967, %963
  %977 = phi i32 [ %975, %967 ], [ %760, %963 ]
  %978 = phi i32 [ %974, %967 ], [ %965, %963 ]
  %979 = icmp ugt i32 %978, 32
  br i1 %979, label %1007, label %980

980:                                              ; preds = %976
  %981 = icmp ult ptr %964, %724
  br i1 %981, label %987, label %982

982:                                              ; preds = %980
  %983 = lshr i32 %978, 3
  %984 = sub nsw i32 0, %983
  %985 = getelementptr i8, ptr %964, i32 %984
  store ptr %985, ptr %357, align 4, !noalias !15
  %986 = and i32 %978, 7
  br label %1003

987:                                              ; preds = %980
  %988 = load ptr, ptr %100, align 4, !noalias !15
  %989 = icmp eq ptr %964, %988
  br i1 %989, label %1007, label %990

990:                                              ; preds = %987
  %991 = lshr i32 %978, 3
  %992 = sub nsw i32 0, %991
  %993 = getelementptr i8, ptr %964, i32 %992
  %994 = icmp ult ptr %993, %988
  %995 = ptrtoint ptr %964 to i32
  %996 = ptrtoint ptr %988 to i32
  %997 = sub i32 %995, %996
  %998 = select i1 %994, i32 %997, i32 %991
  %999 = sub i32 0, %998
  %1000 = getelementptr i8, ptr %964, i32 %999
  store ptr %1000, ptr %357, align 4, !noalias !15
  %1001 = mul i32 %998, -8
  %1002 = add i32 %1001, %978
  br label %1003

1003:                                             ; preds = %990, %982
  %1004 = phi i32 [ %986, %982 ], [ %1002, %990 ]
  %1005 = phi ptr [ %985, %982 ], [ %1000, %990 ]
  store i32 %1004, ptr %154, align 4, !noalias !15
  %1006 = load i32, ptr %1005, align 1, !noalias !15
  store i32 %1006, ptr %9, align 4, !noalias !15
  br label %1007

1007:                                             ; preds = %1003, %987, %976
  %1008 = phi ptr [ %964, %987 ], [ %964, %976 ], [ %1005, %1003 ]
  %1009 = phi i32 [ %978, %987 ], [ %978, %976 ], [ %1004, %1003 ]
  %1010 = load i32, ptr %96, align 4, !noalias !15
  %1011 = add i32 %1010, %977
  %1012 = icmp ugt i32 %919, %1011
  %1013 = load ptr, ptr %97, align 4
  %1014 = load ptr, ptr %92, align 4
  %1015 = select i1 %1012, ptr %1013, ptr %1014
  %1016 = getelementptr i8, ptr %1015, i32 %1011
  %1017 = sub i32 0, %919
  %1018 = getelementptr i8, ptr %1016, i32 %1017
  %1019 = add i32 %1011, %932
  store i32 %1019, ptr %96, align 4, !noalias !15
  %1020 = lshr i32 %757, 24
  %1021 = load i32, ptr %9, align 4, !noalias !15
  %1022 = add i32 %1009, %1020
  %1023 = sub i32 0, %1022
  %1024 = and i32 %1023, 31
  %1025 = lshr i32 %1021, %1024
  %1026 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %1020
  %1027 = load i32, ptr %1026, align 4, !noalias !15
  %1028 = and i32 %1025, %1027
  %1029 = and i32 %757, 65535
  %1030 = add i32 %1028, %1029
  store i32 %1030, ptr %150, align 4, !noalias !15
  %1031 = lshr i32 %764, 24
  %1032 = add i32 %1022, %1031
  %1033 = sub i32 0, %1032
  %1034 = and i32 %1033, 31
  %1035 = lshr i32 %1021, %1034
  %1036 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %1031
  %1037 = load i32, ptr %1036, align 4, !noalias !15
  %1038 = and i32 %1037, %1035
  %1039 = and i32 %764, 65535
  %1040 = add i32 %1038, %1039
  store i32 %1040, ptr %242, align 4, !noalias !15
  %1041 = icmp ugt i32 %1032, 32
  br i1 %1041, label %1069, label %1042

1042:                                             ; preds = %1007
  %1043 = icmp ult ptr %1008, %724
  br i1 %1043, label %1049, label %1044

1044:                                             ; preds = %1042
  %1045 = lshr i32 %1032, 3
  %1046 = sub nsw i32 0, %1045
  %1047 = getelementptr i8, ptr %1008, i32 %1046
  store ptr %1047, ptr %357, align 4, !noalias !15
  %1048 = and i32 %1032, 7
  br label %1065

1049:                                             ; preds = %1042
  %1050 = load ptr, ptr %100, align 4, !noalias !15
  %1051 = icmp eq ptr %1008, %1050
  br i1 %1051, label %1069, label %1052

1052:                                             ; preds = %1049
  %1053 = lshr i32 %1032, 3
  %1054 = sub nsw i32 0, %1053
  %1055 = getelementptr i8, ptr %1008, i32 %1054
  %1056 = icmp ult ptr %1055, %1050
  %1057 = ptrtoint ptr %1008 to i32
  %1058 = ptrtoint ptr %1050 to i32
  %1059 = sub i32 %1057, %1058
  %1060 = select i1 %1056, i32 %1059, i32 %1053
  %1061 = sub i32 0, %1060
  %1062 = getelementptr i8, ptr %1008, i32 %1061
  store ptr %1062, ptr %357, align 4, !noalias !15
  %1063 = mul i32 %1060, -8
  %1064 = add i32 %1063, %1032
  br label %1065

1065:                                             ; preds = %1052, %1044
  %1066 = phi i32 [ %1064, %1052 ], [ %1048, %1044 ]
  %1067 = phi ptr [ %1062, %1052 ], [ %1047, %1044 ]
  store i32 %1066, ptr %154, align 4, !noalias !15
  %1068 = load i32, ptr %1067, align 1, !noalias !15
  store i32 %1068, ptr %9, align 4, !noalias !15
  br label %1069

1069:                                             ; preds = %1065, %1049, %1007
  %1070 = phi i32 [ %1032, %1049 ], [ %1032, %1007 ], [ %1066, %1065 ]
  %1071 = phi i32 [ %1021, %1049 ], [ %1021, %1007 ], [ %1068, %1065 ]
  %1072 = lshr i32 %771, 24
  %1073 = add i32 %1070, %1072
  %1074 = sub i32 0, %1073
  %1075 = and i32 %1074, 31
  %1076 = lshr i32 %1071, %1075
  %1077 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %1072
  %1078 = load i32, ptr %1077, align 4, !noalias !15
  %1079 = and i32 %1076, %1078
  store i32 %1073, ptr %154, align 4, !noalias !15
  %1080 = and i32 %771, 65535
  %1081 = add i32 %1079, %1080
  store i32 %1081, ptr %196, align 4, !noalias !15
  %1082 = and i32 %718, 3
  %1083 = getelementptr [4 x %struct.seq_t], ptr %8, i32 0, i32 %1082
  %1084 = load i32, ptr %1083, align 4
  %1085 = insertvalue [4 x i32] poison, i32 %1084, 0
  %1086 = getelementptr inbounds [4 x i32], ptr %1083, i32 0, i32 1
  %1087 = load i32, ptr %1086, align 4
  %1088 = insertvalue [4 x i32] %1085, i32 %1087, 1
  %1089 = getelementptr inbounds [4 x i32], ptr %1083, i32 0, i32 2
  %1090 = load i32, ptr %1089, align 4
  %1091 = insertvalue [4 x i32] %1088, i32 %1090, 2
  %1092 = getelementptr inbounds [4 x i32], ptr %1083, i32 0, i32 3
  %1093 = load i32, ptr %1092, align 4
  %1094 = insertvalue [4 x i32] %1091, i32 %1093, 3
  %1095 = getelementptr i8, ptr %717, i32 %1084
  %1096 = add i32 %1087, %1084
  %1097 = load ptr, ptr %7, align 4
  %1098 = getelementptr i8, ptr %1097, i32 %1084
  %1099 = sub i32 0, %1090
  %1100 = getelementptr i8, ptr %1095, i32 %1099
  %1101 = icmp ugt ptr %1098, %79
  %1102 = getelementptr i8, ptr %717, i32 %1096
  %1103 = icmp ugt ptr %1102, %365
  %1104 = select i1 %1101, i1 true, i1 %1103
  br i1 %1104, label %1110, label %1105, !prof !18

1105:                                             ; preds = %1069
  %1106 = ptrtoint ptr %717 to i32
  %1107 = sub i32 %366, %1106
  %1108 = add i32 %1096, 32
  %1109 = icmp ult i32 %1107, %1108
  br i1 %1109, label %1110, label %1112, !prof !14

1110:                                             ; preds = %1105, %1069
  %1111 = call fastcc i32 @ZSTD_execSequenceEnd(ptr noundef %717, ptr noundef %74, [4 x i32] %1094, ptr noundef nonnull %7, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85) #11
  br label %1220

1112:                                             ; preds = %1105
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %717, ptr noundef align 1 dereferenceable(16) %1097, i32 16, i1 false) #11
  %1113 = icmp ugt i32 %1084, 16
  br i1 %1113, label %1114, label %1129, !prof !14

1114:                                             ; preds = %1112
  %1115 = getelementptr i8, ptr %717, i32 16
  %1116 = getelementptr i8, ptr %1097, i32 16
  %1117 = add i32 %1084, -16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1115, ptr noundef align 1 dereferenceable(16) %1116, i32 16, i1 false) #11
  %1118 = icmp slt i32 %1117, 17
  br i1 %1118, label %1129, label %1119

1119:                                             ; preds = %1114
  %1120 = getelementptr i8, ptr %717, i32 32
  br label %1121

1121:                                             ; preds = %1121, %1119
  %1122 = phi ptr [ %1116, %1119 ], [ %1126, %1121 ]
  %1123 = phi ptr [ %1120, %1119 ], [ %1127, %1121 ]
  %1124 = getelementptr i8, ptr %1122, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1123, ptr noundef align 1 dereferenceable(16) %1124, i32 16, i1 false) #11
  %1125 = getelementptr i8, ptr %1123, i32 16
  %1126 = getelementptr i8, ptr %1122, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1125, ptr noundef align 1 dereferenceable(16) %1126, i32 16, i1 false) #11
  %1127 = getelementptr i8, ptr %1123, i32 32
  %1128 = icmp ult ptr %1127, %1095
  br i1 %1128, label %1121, label %1129

1129:                                             ; preds = %1121, %1114, %1112
  store ptr %1098, ptr %7, align 4
  %1130 = ptrtoint ptr %1095 to i32
  %1131 = sub i32 %1130, %94
  %1132 = icmp ugt i32 %1090, %1131
  br i1 %1132, label %1133, label %1147

1133:                                             ; preds = %1129
  %1134 = sub i32 %1130, %367
  %1135 = icmp ugt i32 %1090, %1134
  br i1 %1135, label %1387, label %1136, !prof !14

1136:                                             ; preds = %1133
  %1137 = ptrtoint ptr %1100 to i32
  %1138 = sub i32 %1137, %94
  %1139 = getelementptr i8, ptr %85, i32 %1138
  %1140 = getelementptr i8, ptr %1139, i32 %1087
  %1141 = icmp ugt ptr %1140, %85
  br i1 %1141, label %1143, label %1142

1142:                                             ; preds = %1136
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %1095, ptr align 1 %1139, i32 %1087, i1 false) #11
  br label %1220

1143:                                             ; preds = %1136
  %1144 = sub i32 0, %1138
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %1095, ptr align 1 %1139, i32 %1144, i1 false) #11
  %1145 = getelementptr i8, ptr %1095, i32 %1144
  %1146 = add i32 %1138, %1087
  br label %1147

1147:                                             ; preds = %1143, %1129
  %1148 = phi ptr [ %1145, %1143 ], [ %1095, %1129 ]
  %1149 = phi ptr [ %81, %1143 ], [ %1100, %1129 ]
  %1150 = phi i32 [ %1146, %1143 ], [ %1087, %1129 ]
  %1151 = icmp ugt i32 %1090, 15
  br i1 %1151, label %1152, label %1165, !prof !13

1152:                                             ; preds = %1147
  %1153 = getelementptr i8, ptr %1148, i32 %1150
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1148, ptr noundef align 1 dereferenceable(16) %1149, i32 16, i1 false) #11
  %1154 = icmp slt i32 %1150, 17
  br i1 %1154, label %1220, label %1155

1155:                                             ; preds = %1152
  %1156 = getelementptr i8, ptr %1148, i32 16
  br label %1157

1157:                                             ; preds = %1157, %1155
  %1158 = phi ptr [ %1149, %1155 ], [ %1162, %1157 ]
  %1159 = phi ptr [ %1156, %1155 ], [ %1163, %1157 ]
  %1160 = getelementptr i8, ptr %1158, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1159, ptr noundef align 1 dereferenceable(16) %1160, i32 16, i1 false) #11
  %1161 = getelementptr i8, ptr %1159, i32 16
  %1162 = getelementptr i8, ptr %1158, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1161, ptr noundef align 1 dereferenceable(16) %1162, i32 16, i1 false) #11
  %1163 = getelementptr i8, ptr %1159, i32 32
  %1164 = icmp ult ptr %1163, %1153
  br i1 %1164, label %1157, label %1220

1165:                                             ; preds = %1147
  %1166 = icmp ult i32 %1090, 8
  br i1 %1166, label %1167, label %1187

1167:                                             ; preds = %1165
  %1168 = getelementptr [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i32 0, i32 %1090
  %1169 = load i32, ptr %1168, align 4
  %1170 = load i8, ptr %1149, align 1
  store i8 %1170, ptr %1148, align 1
  %1171 = getelementptr i8, ptr %1149, i32 1
  %1172 = load i8, ptr %1171, align 1
  %1173 = getelementptr i8, ptr %1148, i32 1
  store i8 %1172, ptr %1173, align 1
  %1174 = getelementptr i8, ptr %1149, i32 2
  %1175 = load i8, ptr %1174, align 1
  %1176 = getelementptr i8, ptr %1148, i32 2
  store i8 %1175, ptr %1176, align 1
  %1177 = getelementptr i8, ptr %1149, i32 3
  %1178 = load i8, ptr %1177, align 1
  %1179 = getelementptr i8, ptr %1148, i32 3
  store i8 %1178, ptr %1179, align 1
  %1180 = getelementptr [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i32 0, i32 %1090
  %1181 = load i32, ptr %1180, align 4
  %1182 = getelementptr i8, ptr %1149, i32 %1181
  %1183 = getelementptr i8, ptr %1148, i32 4
  %1184 = load i32, ptr %1182, align 1
  store i32 %1184, ptr %1183, align 1
  %1185 = sub i32 0, %1169
  %1186 = getelementptr i8, ptr %1182, i32 %1185
  br label %1189

1187:                                             ; preds = %1165
  %1188 = load i64, ptr %1149, align 1
  store i64 %1188, ptr %1148, align 1
  br label %1189

1189:                                             ; preds = %1187, %1167
  %1190 = phi ptr [ %1149, %1187 ], [ %1186, %1167 ]
  %1191 = getelementptr i8, ptr %1190, i32 8
  %1192 = getelementptr i8, ptr %1148, i32 8
  %1193 = icmp ugt i32 %1150, 8
  br i1 %1193, label %1194, label %1220

1194:                                             ; preds = %1189
  %1195 = ptrtoint ptr %1192 to i32
  %1196 = ptrtoint ptr %1191 to i32
  %1197 = sub i32 %1195, %1196
  %1198 = getelementptr i8, ptr %1148, i32 %1150
  %1199 = icmp slt i32 %1197, 16
  br i1 %1199, label %1200, label %1207

1200:                                             ; preds = %1200, %1194
  %1201 = phi ptr [ %1205, %1200 ], [ %1191, %1194 ]
  %1202 = phi ptr [ %1204, %1200 ], [ %1192, %1194 ]
  %1203 = load i64, ptr %1201, align 1
  store i64 %1203, ptr %1202, align 1
  %1204 = getelementptr i8, ptr %1202, i32 8
  %1205 = getelementptr i8, ptr %1201, i32 8
  %1206 = icmp ult ptr %1204, %1198
  br i1 %1206, label %1200, label %1220

1207:                                             ; preds = %1194
  %1208 = add i32 %1150, -8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1192, ptr noundef align 1 dereferenceable(16) %1191, i32 16, i1 false) #11
  %1209 = icmp slt i32 %1208, 17
  br i1 %1209, label %1220, label %1210

1210:                                             ; preds = %1207
  %1211 = getelementptr i8, ptr %1148, i32 24
  br label %1212

1212:                                             ; preds = %1212, %1210
  %1213 = phi ptr [ %1191, %1210 ], [ %1217, %1212 ]
  %1214 = phi ptr [ %1211, %1210 ], [ %1218, %1212 ]
  %1215 = getelementptr i8, ptr %1213, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1214, ptr noundef align 1 dereferenceable(16) %1215, i32 16, i1 false) #11
  %1216 = getelementptr i8, ptr %1214, i32 16
  %1217 = getelementptr i8, ptr %1213, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1216, ptr noundef align 1 dereferenceable(16) %1217, i32 16, i1 false) #11
  %1218 = getelementptr i8, ptr %1214, i32 32
  %1219 = icmp ult ptr %1218, %1198
  br i1 %1219, label %1212, label %1220

1220:                                             ; preds = %1212, %1207, %1200, %1189, %1157, %1152, %1142, %1110
  %1221 = phi i32 [ %1111, %1110 ], [ %1096, %1142 ], [ %1096, %1189 ], [ %1096, %1152 ], [ %1096, %1207 ], [ %1096, %1157 ], [ %1096, %1200 ], [ %1096, %1212 ]
  %1222 = icmp ult i32 %1221, -119
  br i1 %1222, label %1223, label %1387

1223:                                             ; preds = %1220
  tail call void @llvm.prefetch.p0(ptr %1018, i32 0, i32 3, i32 1) #11
  %1224 = getelementptr i8, ptr %1018, i32 -1
  %1225 = getelementptr i8, ptr %1224, i32 %932
  tail call void @llvm.prefetch.p0(ptr %1225, i32 0, i32 3, i32 1) #11
  store i32 %977, ptr %1083, align 4
  store i32 %932, ptr %1086, align 4
  store i32 %919, ptr %1089, align 4
  store ptr %1018, ptr %1092, align 4
  %1226 = getelementptr i8, ptr %717, i32 %1221
  %1227 = add i32 %718, 1
  %1228 = load i32, ptr %154, align 4
  br label %715

1229:                                             ; preds = %749, %720
  %1230 = sub i32 %718, %91
  %1231 = icmp slt i32 %1230, %35
  br i1 %1231, label %1232, label %1236

1232:                                             ; preds = %1229
  %1233 = getelementptr i8, ptr %74, i32 -32
  %1234 = ptrtoint ptr %74 to i32
  %1235 = ptrtoint ptr %83 to i32
  br label %1239

1236:                                             ; preds = %1383, %1229
  %1237 = phi ptr [ %717, %1229 ], [ %1384, %1383 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %90, ptr noundef align 4 dereferenceable(12) %89, i32 12, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #11
  %1238 = load ptr, ptr %7, align 4
  br label %1389

1239:                                             ; preds = %1383, %1232
  %1240 = phi i32 [ %1230, %1232 ], [ %1385, %1383 ]
  %1241 = phi ptr [ %717, %1232 ], [ %1384, %1383 ]
  %1242 = and i32 %1240, 3
  %1243 = getelementptr [4 x %struct.seq_t], ptr %8, i32 0, i32 %1242
  %1244 = load i32, ptr %1243, align 4
  %1245 = insertvalue [4 x i32] poison, i32 %1244, 0
  %1246 = getelementptr inbounds [4 x i32], ptr %1243, i32 0, i32 1
  %1247 = load i32, ptr %1246, align 4
  %1248 = insertvalue [4 x i32] %1245, i32 %1247, 1
  %1249 = getelementptr inbounds [4 x i32], ptr %1243, i32 0, i32 2
  %1250 = load i32, ptr %1249, align 4
  %1251 = insertvalue [4 x i32] %1248, i32 %1250, 2
  %1252 = getelementptr inbounds [4 x i32], ptr %1243, i32 0, i32 3
  %1253 = load i32, ptr %1252, align 4
  %1254 = insertvalue [4 x i32] %1251, i32 %1253, 3
  %1255 = getelementptr i8, ptr %1241, i32 %1244
  %1256 = add i32 %1247, %1244
  %1257 = load ptr, ptr %7, align 4
  %1258 = getelementptr i8, ptr %1257, i32 %1244
  %1259 = sub i32 0, %1250
  %1260 = getelementptr i8, ptr %1255, i32 %1259
  %1261 = icmp ugt ptr %1258, %79
  %1262 = getelementptr i8, ptr %1241, i32 %1256
  %1263 = icmp ugt ptr %1262, %1233
  %1264 = select i1 %1261, i1 true, i1 %1263
  br i1 %1264, label %1270, label %1265, !prof !18

1265:                                             ; preds = %1239
  %1266 = ptrtoint ptr %1241 to i32
  %1267 = sub i32 %1234, %1266
  %1268 = add i32 %1256, 32
  %1269 = icmp ult i32 %1267, %1268
  br i1 %1269, label %1270, label %1272, !prof !14

1270:                                             ; preds = %1265, %1239
  %1271 = call fastcc i32 @ZSTD_execSequenceEnd(ptr noundef %1241, ptr noundef %74, [4 x i32] %1254, ptr noundef nonnull %7, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85) #11
  br label %1380

1272:                                             ; preds = %1265
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1241, ptr noundef align 1 dereferenceable(16) %1257, i32 16, i1 false) #11
  %1273 = icmp ugt i32 %1244, 16
  br i1 %1273, label %1274, label %1289, !prof !14

1274:                                             ; preds = %1272
  %1275 = getelementptr i8, ptr %1241, i32 16
  %1276 = getelementptr i8, ptr %1257, i32 16
  %1277 = add i32 %1244, -16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1275, ptr noundef align 1 dereferenceable(16) %1276, i32 16, i1 false) #11
  %1278 = icmp slt i32 %1277, 17
  br i1 %1278, label %1289, label %1279

1279:                                             ; preds = %1274
  %1280 = getelementptr i8, ptr %1241, i32 32
  br label %1281

1281:                                             ; preds = %1281, %1279
  %1282 = phi ptr [ %1276, %1279 ], [ %1286, %1281 ]
  %1283 = phi ptr [ %1280, %1279 ], [ %1287, %1281 ]
  %1284 = getelementptr i8, ptr %1282, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1283, ptr noundef align 1 dereferenceable(16) %1284, i32 16, i1 false) #11
  %1285 = getelementptr i8, ptr %1283, i32 16
  %1286 = getelementptr i8, ptr %1282, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1285, ptr noundef align 1 dereferenceable(16) %1286, i32 16, i1 false) #11
  %1287 = getelementptr i8, ptr %1283, i32 32
  %1288 = icmp ult ptr %1287, %1255
  br i1 %1288, label %1281, label %1289

1289:                                             ; preds = %1281, %1274, %1272
  store ptr %1258, ptr %7, align 4
  %1290 = ptrtoint ptr %1255 to i32
  %1291 = sub i32 %1290, %94
  %1292 = icmp ugt i32 %1250, %1291
  br i1 %1292, label %1293, label %1307

1293:                                             ; preds = %1289
  %1294 = sub i32 %1290, %1235
  %1295 = icmp ugt i32 %1250, %1294
  br i1 %1295, label %1387, label %1296, !prof !14

1296:                                             ; preds = %1293
  %1297 = ptrtoint ptr %1260 to i32
  %1298 = sub i32 %1297, %94
  %1299 = getelementptr i8, ptr %85, i32 %1298
  %1300 = getelementptr i8, ptr %1299, i32 %1247
  %1301 = icmp ugt ptr %1300, %85
  br i1 %1301, label %1303, label %1302

1302:                                             ; preds = %1296
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %1255, ptr align 1 %1299, i32 %1247, i1 false) #11
  br label %1380

1303:                                             ; preds = %1296
  %1304 = sub i32 0, %1298
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %1255, ptr align 1 %1299, i32 %1304, i1 false) #11
  %1305 = getelementptr i8, ptr %1255, i32 %1304
  %1306 = add i32 %1298, %1247
  br label %1307

1307:                                             ; preds = %1303, %1289
  %1308 = phi ptr [ %1305, %1303 ], [ %1255, %1289 ]
  %1309 = phi ptr [ %81, %1303 ], [ %1260, %1289 ]
  %1310 = phi i32 [ %1306, %1303 ], [ %1247, %1289 ]
  %1311 = icmp ugt i32 %1250, 15
  br i1 %1311, label %1312, label %1325, !prof !13

1312:                                             ; preds = %1307
  %1313 = getelementptr i8, ptr %1308, i32 %1310
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1308, ptr noundef align 1 dereferenceable(16) %1309, i32 16, i1 false) #11
  %1314 = icmp slt i32 %1310, 17
  br i1 %1314, label %1380, label %1315

1315:                                             ; preds = %1312
  %1316 = getelementptr i8, ptr %1308, i32 16
  br label %1317

1317:                                             ; preds = %1317, %1315
  %1318 = phi ptr [ %1309, %1315 ], [ %1322, %1317 ]
  %1319 = phi ptr [ %1316, %1315 ], [ %1323, %1317 ]
  %1320 = getelementptr i8, ptr %1318, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1319, ptr noundef align 1 dereferenceable(16) %1320, i32 16, i1 false) #11
  %1321 = getelementptr i8, ptr %1319, i32 16
  %1322 = getelementptr i8, ptr %1318, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1321, ptr noundef align 1 dereferenceable(16) %1322, i32 16, i1 false) #11
  %1323 = getelementptr i8, ptr %1319, i32 32
  %1324 = icmp ult ptr %1323, %1313
  br i1 %1324, label %1317, label %1380

1325:                                             ; preds = %1307
  %1326 = icmp ult i32 %1250, 8
  br i1 %1326, label %1327, label %1347

1327:                                             ; preds = %1325
  %1328 = getelementptr [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i32 0, i32 %1250
  %1329 = load i32, ptr %1328, align 4
  %1330 = load i8, ptr %1309, align 1
  store i8 %1330, ptr %1308, align 1
  %1331 = getelementptr i8, ptr %1309, i32 1
  %1332 = load i8, ptr %1331, align 1
  %1333 = getelementptr i8, ptr %1308, i32 1
  store i8 %1332, ptr %1333, align 1
  %1334 = getelementptr i8, ptr %1309, i32 2
  %1335 = load i8, ptr %1334, align 1
  %1336 = getelementptr i8, ptr %1308, i32 2
  store i8 %1335, ptr %1336, align 1
  %1337 = getelementptr i8, ptr %1309, i32 3
  %1338 = load i8, ptr %1337, align 1
  %1339 = getelementptr i8, ptr %1308, i32 3
  store i8 %1338, ptr %1339, align 1
  %1340 = getelementptr [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i32 0, i32 %1250
  %1341 = load i32, ptr %1340, align 4
  %1342 = getelementptr i8, ptr %1309, i32 %1341
  %1343 = getelementptr i8, ptr %1308, i32 4
  %1344 = load i32, ptr %1342, align 1
  store i32 %1344, ptr %1343, align 1
  %1345 = sub i32 0, %1329
  %1346 = getelementptr i8, ptr %1342, i32 %1345
  br label %1349

1347:                                             ; preds = %1325
  %1348 = load i64, ptr %1309, align 1
  store i64 %1348, ptr %1308, align 1
  br label %1349

1349:                                             ; preds = %1347, %1327
  %1350 = phi ptr [ %1309, %1347 ], [ %1346, %1327 ]
  %1351 = getelementptr i8, ptr %1350, i32 8
  %1352 = getelementptr i8, ptr %1308, i32 8
  %1353 = icmp ugt i32 %1310, 8
  br i1 %1353, label %1354, label %1380

1354:                                             ; preds = %1349
  %1355 = ptrtoint ptr %1352 to i32
  %1356 = ptrtoint ptr %1351 to i32
  %1357 = sub i32 %1355, %1356
  %1358 = getelementptr i8, ptr %1308, i32 %1310
  %1359 = icmp slt i32 %1357, 16
  br i1 %1359, label %1360, label %1367

1360:                                             ; preds = %1360, %1354
  %1361 = phi ptr [ %1365, %1360 ], [ %1351, %1354 ]
  %1362 = phi ptr [ %1364, %1360 ], [ %1352, %1354 ]
  %1363 = load i64, ptr %1361, align 1
  store i64 %1363, ptr %1362, align 1
  %1364 = getelementptr i8, ptr %1362, i32 8
  %1365 = getelementptr i8, ptr %1361, i32 8
  %1366 = icmp ult ptr %1364, %1358
  br i1 %1366, label %1360, label %1380

1367:                                             ; preds = %1354
  %1368 = add i32 %1310, -8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1352, ptr noundef align 1 dereferenceable(16) %1351, i32 16, i1 false) #11
  %1369 = icmp slt i32 %1368, 17
  br i1 %1369, label %1380, label %1370

1370:                                             ; preds = %1367
  %1371 = getelementptr i8, ptr %1308, i32 24
  br label %1372

1372:                                             ; preds = %1372, %1370
  %1373 = phi ptr [ %1351, %1370 ], [ %1377, %1372 ]
  %1374 = phi ptr [ %1371, %1370 ], [ %1378, %1372 ]
  %1375 = getelementptr i8, ptr %1373, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1374, ptr noundef align 1 dereferenceable(16) %1375, i32 16, i1 false) #11
  %1376 = getelementptr i8, ptr %1374, i32 16
  %1377 = getelementptr i8, ptr %1373, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1376, ptr noundef align 1 dereferenceable(16) %1377, i32 16, i1 false) #11
  %1378 = getelementptr i8, ptr %1374, i32 32
  %1379 = icmp ult ptr %1378, %1358
  br i1 %1379, label %1372, label %1380

1380:                                             ; preds = %1372, %1367, %1360, %1349, %1317, %1312, %1302, %1270
  %1381 = phi i32 [ %1271, %1270 ], [ %1256, %1302 ], [ %1256, %1349 ], [ %1256, %1312 ], [ %1256, %1367 ], [ %1256, %1317 ], [ %1256, %1360 ], [ %1256, %1372 ]
  %1382 = icmp ult i32 %1381, -119
  br i1 %1382, label %1383, label %1387

1383:                                             ; preds = %1380
  %1384 = getelementptr i8, ptr %1241, i32 %1381
  %1385 = add nsw i32 %1240, 1
  %1386 = icmp eq i32 %1385, %35
  br i1 %1386, label %1236, label %1239

1387:                                             ; preds = %1380, %1293, %1220, %1133, %720, %302, %140, %127, %104, %87
  %1388 = phi i32 [ -20, %720 ], [ -20, %302 ], [ -20, %140 ], [ -20, %87 ], [ -20, %104 ], [ -20, %127 ], [ %1381, %1380 ], [ -20, %1293 ], [ -20, %1133 ], [ %1221, %1220 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #11
  br label %1408

1389:                                             ; preds = %1236, %73
  %1390 = phi ptr [ %1238, %1236 ], [ %76, %73 ]
  %1391 = phi ptr [ %1237, %1236 ], [ %1, %73 ]
  %1392 = ptrtoint ptr %79 to i32
  %1393 = ptrtoint ptr %1390 to i32
  %1394 = sub i32 %1392, %1393
  %1395 = ptrtoint ptr %74 to i32
  %1396 = ptrtoint ptr %1391 to i32
  %1397 = sub i32 %1395, %1396
  %1398 = icmp ugt i32 %1394, %1397
  br i1 %1398, label %1408, label %1399

1399:                                             ; preds = %1389
  %1400 = icmp eq ptr %1391, null
  br i1 %1400, label %1404, label %1401

1401:                                             ; preds = %1399
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %1391, ptr align 1 %1390, i32 %1394, i1 false) #11
  %1402 = getelementptr i8, ptr %1391, i32 %1394
  %1403 = ptrtoint ptr %1402 to i32
  br label %1404

1404:                                             ; preds = %1401, %1399
  %1405 = phi i32 [ 0, %1399 ], [ %1403, %1401 ]
  %1406 = ptrtoint ptr %1 to i32
  %1407 = sub i32 %1405, %1406
  br label %1408

1408:                                             ; preds = %1404, %1389, %1387
  %1409 = phi i32 [ %1407, %1404 ], [ %1388, %1387 ], [ -70, %1389 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  br label %1412

1410:                                             ; preds = %69, %68
  %1411 = tail call fastcc i32 @ZSTD_decompressSequences(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %32, i32 noundef %33, i32 noundef %35, i32 noundef %18)
  br label %1412

1412:                                             ; preds = %1410, %1408, %31, %26
  %1413 = phi i32 [ %1409, %1408 ], [ %1411, %1410 ], [ %29, %26 ], [ -70, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  br label %1414

1414:                                             ; preds = %1412, %20, %17
  %1415 = phi i32 [ %1413, %1412 ], [ %21, %20 ], [ -72, %17 ]
  ret i32 %1415
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_decompressSequences(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #8 {
  %8 = alloca ptr, align 4
  %9 = alloca %struct.seqState_t, align 4
  %10 = getelementptr i8, ptr %1, i32 %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 23
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %8, align 4
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 25
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr i8, ptr %12, i32 %14
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 9
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq i32 %5, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %7
  %24 = ptrtoint ptr %10 to i32
  br label %748

25:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %9) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %9, i8 0, i32 68, i1 false) #11, !annotation !9
  %26 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 17
  store i32 1, ptr %26, align 4
  %27 = getelementptr inbounds i8, ptr %9, i32 44
  %28 = getelementptr i8, ptr %0, i32 26668
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %27, ptr noundef align 4 dereferenceable(12) %28, i32 12, i1 false) #11
  %29 = icmp eq i32 %4, 0
  br i1 %29, label %746, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i32 0, i32 3
  store ptr %3, ptr %31, align 4
  %32 = getelementptr i8, ptr %3, i32 4
  %33 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i32 0, i32 4
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt i32 %4, 3
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = getelementptr i8, ptr %3, i32 %4
  %37 = getelementptr i8, ptr %36, i32 -4
  %38 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i32 0, i32 2
  store ptr %37, ptr %38, align 4
  %39 = load i32, ptr %37, align 1
  store i32 %39, ptr %9, align 4
  %40 = icmp ult i32 %39, 16777216
  br i1 %40, label %746, label %71

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i32 0, i32 2
  store ptr %3, ptr %42, align 4
  %43 = load i8, ptr %3, align 1
  %44 = zext i8 %43 to i32
  store i32 %44, ptr %9, align 4
  switch i32 %4, label %58 [
    i32 2, label %51
    i32 3, label %45
  ]

45:                                               ; preds = %41
  %46 = getelementptr i8, ptr %3, i32 2
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 16
  %50 = or i32 %49, %44
  br label %51

51:                                               ; preds = %45, %41
  %52 = phi i32 [ %44, %41 ], [ %50, %45 ]
  %53 = getelementptr i8, ptr %3, i32 1
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = shl nuw nsw i32 %55, 8
  %57 = add nsw i32 %56, %52
  store i32 %57, ptr %9, align 4
  br label %58

58:                                               ; preds = %51, %41
  %59 = phi i32 [ %57, %51 ], [ %44, %41 ]
  %60 = add nsw i32 %4, -1
  %61 = getelementptr i8, ptr %3, i32 %60
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %746, label %64

64:                                               ; preds = %58
  %65 = zext i8 %62 to i32
  %66 = tail call i32 @llvm.ctlz.i32(i32 %65, i1 true) #11, !range !8
  %67 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i32 0, i32 1
  %68 = mul nsw i32 %4, -8
  %69 = add nsw i32 %68, 9
  %70 = add nsw i32 %69, %66
  store i32 %70, ptr %67, align 4
  br label %77

71:                                               ; preds = %35
  %72 = lshr i32 %39, 24
  %73 = tail call i32 @llvm.ctlz.i32(i32 %72, i1 true) #11, !range !8
  %74 = add nsw i32 %73, -23
  %75 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i32 0, i32 1
  store i32 %74, ptr %75, align 4
  %76 = icmp ult i32 %4, -119
  br i1 %76, label %77, label %746

77:                                               ; preds = %71, %64
  %78 = phi ptr [ %3, %64 ], [ %37, %71 ]
  %79 = phi i32 [ %70, %64 ], [ %74, %71 ]
  %80 = phi i32 [ %59, %64 ], [ %39, %71 ]
  %81 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 1
  %82 = load ptr, ptr %0, align 8
  %83 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %82, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i32 0, i32 1
  %86 = add i32 %84, %79
  %87 = sub i32 0, %86
  %88 = and i32 %87, 31
  %89 = lshr i32 %80, %88
  %90 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %84
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %89, %91
  store i32 %86, ptr %85, align 4
  store i32 %92, ptr %81, align 4
  %93 = icmp ugt i32 %86, 32
  br i1 %93, label %121, label %94

94:                                               ; preds = %77
  %95 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i32 0, i32 2
  %96 = icmp ult ptr %78, %32
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = lshr i32 %86, 3
  %99 = sub nsw i32 0, %98
  %100 = getelementptr i8, ptr %78, i32 %99
  store ptr %100, ptr %95, align 4
  %101 = and i32 %86, 7
  br label %117

102:                                              ; preds = %94
  %103 = icmp eq ptr %78, %3
  br i1 %103, label %121, label %104

104:                                              ; preds = %102
  %105 = lshr i32 %86, 3
  %106 = sub nsw i32 0, %105
  %107 = getelementptr i8, ptr %78, i32 %106
  %108 = icmp ult ptr %107, %3
  %109 = ptrtoint ptr %78 to i32
  %110 = ptrtoint ptr %3 to i32
  %111 = sub i32 %109, %110
  %112 = select i1 %108, i32 %111, i32 %105
  %113 = sub i32 0, %112
  %114 = getelementptr i8, ptr %78, i32 %113
  store ptr %114, ptr %95, align 4
  %115 = mul i32 %112, -8
  %116 = add i32 %115, %86
  br label %117

117:                                              ; preds = %104, %97
  %118 = phi i32 [ %101, %97 ], [ %116, %104 ]
  %119 = phi ptr [ %100, %97 ], [ %114, %104 ]
  store i32 %118, ptr %85, align 4
  %120 = load i32, ptr %119, align 1
  store i32 %120, ptr %9, align 4
  br label %121

121:                                              ; preds = %117, %102, %77
  %122 = phi ptr [ %78, %77 ], [ %3, %102 ], [ %119, %117 ]
  %123 = phi i32 [ %86, %77 ], [ %86, %102 ], [ %118, %117 ]
  %124 = phi i32 [ %80, %77 ], [ %80, %102 ], [ %120, %117 ]
  %125 = getelementptr %struct.ZSTD_seqSymbol, ptr %82, i32 1
  %126 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 1, i32 1
  store ptr %125, ptr %126, align 4
  %127 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 2
  %128 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 2
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %129, i32 0, i32 1
  %131 = load i32, ptr %130, align 4
  %132 = add i32 %131, %123
  %133 = sub i32 0, %132
  %134 = and i32 %133, 31
  %135 = lshr i32 %124, %134
  %136 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %131
  %137 = load i32, ptr %136, align 4
  %138 = and i32 %135, %137
  store i32 %132, ptr %85, align 4
  store i32 %138, ptr %127, align 4
  %139 = icmp ugt i32 %132, 32
  br i1 %139, label %167, label %140

140:                                              ; preds = %121
  %141 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i32 0, i32 2
  %142 = icmp ult ptr %122, %32
  br i1 %142, label %148, label %143

143:                                              ; preds = %140
  %144 = lshr i32 %132, 3
  %145 = sub nsw i32 0, %144
  %146 = getelementptr i8, ptr %122, i32 %145
  store ptr %146, ptr %141, align 4
  %147 = and i32 %132, 7
  br label %163

148:                                              ; preds = %140
  %149 = icmp eq ptr %122, %3
  br i1 %149, label %167, label %150

150:                                              ; preds = %148
  %151 = lshr i32 %132, 3
  %152 = sub nsw i32 0, %151
  %153 = getelementptr i8, ptr %122, i32 %152
  %154 = icmp ult ptr %153, %3
  %155 = ptrtoint ptr %122 to i32
  %156 = ptrtoint ptr %3 to i32
  %157 = sub i32 %155, %156
  %158 = select i1 %154, i32 %157, i32 %151
  %159 = sub i32 0, %158
  %160 = getelementptr i8, ptr %122, i32 %159
  store ptr %160, ptr %141, align 4
  %161 = mul i32 %158, -8
  %162 = add i32 %161, %132
  br label %163

163:                                              ; preds = %150, %143
  %164 = phi i32 [ %147, %143 ], [ %162, %150 ]
  %165 = phi ptr [ %146, %143 ], [ %160, %150 ]
  store i32 %164, ptr %85, align 4
  %166 = load i32, ptr %165, align 1
  store i32 %166, ptr %9, align 4
  br label %167

167:                                              ; preds = %163, %148, %121
  %168 = phi ptr [ %122, %121 ], [ %3, %148 ], [ %165, %163 ]
  %169 = phi i32 [ %132, %121 ], [ %132, %148 ], [ %164, %163 ]
  %170 = phi i32 [ %124, %121 ], [ %124, %148 ], [ %166, %163 ]
  %171 = getelementptr %struct.ZSTD_seqSymbol, ptr %129, i32 1
  %172 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 2, i32 1
  store ptr %171, ptr %172, align 4
  %173 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 3
  %174 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 1
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %175, i32 0, i32 1
  %177 = load i32, ptr %176, align 4
  %178 = add i32 %177, %169
  %179 = sub i32 0, %178
  %180 = and i32 %179, 31
  %181 = lshr i32 %170, %180
  %182 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %177
  %183 = load i32, ptr %182, align 4
  %184 = and i32 %181, %183
  store i32 %178, ptr %85, align 4
  store i32 %184, ptr %173, align 4
  %185 = icmp ugt i32 %178, 32
  br i1 %185, label %213, label %186

186:                                              ; preds = %167
  %187 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i32 0, i32 2
  %188 = icmp ult ptr %168, %32
  br i1 %188, label %194, label %189

189:                                              ; preds = %186
  %190 = lshr i32 %178, 3
  %191 = sub nsw i32 0, %190
  %192 = getelementptr i8, ptr %168, i32 %191
  store ptr %192, ptr %187, align 4
  %193 = and i32 %178, 7
  br label %209

194:                                              ; preds = %186
  %195 = icmp eq ptr %168, %3
  br i1 %195, label %213, label %196

196:                                              ; preds = %194
  %197 = lshr i32 %178, 3
  %198 = sub nsw i32 0, %197
  %199 = getelementptr i8, ptr %168, i32 %198
  %200 = icmp ult ptr %199, %3
  %201 = ptrtoint ptr %168 to i32
  %202 = ptrtoint ptr %3 to i32
  %203 = sub i32 %201, %202
  %204 = select i1 %200, i32 %203, i32 %197
  %205 = sub i32 0, %204
  %206 = getelementptr i8, ptr %168, i32 %205
  store ptr %206, ptr %187, align 4
  %207 = mul i32 %204, -8
  %208 = add i32 %207, %178
  br label %209

209:                                              ; preds = %196, %189
  %210 = phi i32 [ %193, %189 ], [ %208, %196 ]
  %211 = phi ptr [ %192, %189 ], [ %206, %196 ]
  store i32 %210, ptr %85, align 4
  %212 = load i32, ptr %211, align 1
  store i32 %212, ptr %9, align 4
  br label %213

213:                                              ; preds = %209, %194, %167
  %214 = phi i32 [ %178, %167 ], [ %178, %194 ], [ %210, %209 ]
  %215 = getelementptr %struct.ZSTD_seqSymbol, ptr %175, i32 1
  %216 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 3, i32 1
  store ptr %215, ptr %216, align 4
  %217 = getelementptr i8, ptr %10, i32 -32
  %218 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 4, i32 1
  %219 = getelementptr inbounds %struct.seqState_t, ptr %9, i32 0, i32 4, i32 2
  %220 = icmp ne i32 %6, 0
  %221 = getelementptr inbounds %struct.BIT_DStream_t, ptr %9, i32 0, i32 2
  %222 = ptrtoint ptr %10 to i32
  %223 = ptrtoint ptr %17 to i32
  %224 = ptrtoint ptr %19 to i32
  br label %225

225:                                              ; preds = %722, %213
  %226 = phi i32 [ %214, %213 ], [ %714, %722 ]
  %227 = phi i32 [ %138, %213 ], [ %728, %722 ]
  %228 = phi ptr [ %171, %213 ], [ %727, %722 ]
  %229 = phi i32 [ %184, %213 ], [ %726, %722 ]
  %230 = phi ptr [ %215, %213 ], [ %725, %722 ]
  %231 = phi i32 [ %92, %213 ], [ %724, %722 ]
  %232 = phi ptr [ %125, %213 ], [ %723, %722 ]
  %233 = phi i32 [ %5, %213 ], [ %719, %722 ]
  %234 = phi ptr [ %1, %213 ], [ %715, %722 ]
  %235 = phi i32 [ 0, %213 ], [ %720, %722 ]
  %236 = getelementptr %struct.ZSTD_seqSymbol, ptr %232, i32 %231
  %237 = load i32, ptr %236, align 4, !noalias !19
  %238 = lshr i32 %237, 16
  %239 = getelementptr inbounds i8, ptr %236, i32 4
  %240 = load i32, ptr %239, align 4, !noalias !19
  %241 = getelementptr %struct.ZSTD_seqSymbol, ptr %230, i32 %229
  %242 = load i32, ptr %241, align 4, !noalias !19
  %243 = lshr i32 %242, 16
  %244 = getelementptr inbounds i8, ptr %241, i32 4
  %245 = load i32, ptr %244, align 4, !noalias !19
  %246 = getelementptr %struct.ZSTD_seqSymbol, ptr %228, i32 %227
  %247 = load i32, ptr %246, align 4, !noalias !19
  %248 = lshr i32 %247, 16
  %249 = getelementptr inbounds i8, ptr %246, i32 4
  %250 = load i32, ptr %249, align 4, !noalias !19
  %251 = and i32 %238, 255
  %252 = and i32 %243, 255
  %253 = add nuw nsw i32 %252, %251
  %254 = and i32 %248, 255
  %255 = icmp ugt i32 %254, 1
  br i1 %255, label %256, label %356

256:                                              ; preds = %225
  %257 = icmp ugt i32 %254, 24
  %258 = select i1 %220, i1 %257, i1 false
  br i1 %258, label %259, label %314

259:                                              ; preds = %256
  %260 = sub i32 32, %226
  %261 = tail call i32 @llvm.umin.i32(i32 %254, i32 %260) #11
  %262 = sub nsw i32 %254, %261
  %263 = load i32, ptr %9, align 4, !noalias !19
  %264 = and i32 %226, 31
  %265 = shl i32 %263, %264
  %266 = sub nsw i32 0, %261
  %267 = and i32 %266, 31
  %268 = lshr i32 %265, %267
  %269 = add i32 %261, %226
  %270 = shl i32 %268, %262
  %271 = add i32 %270, %250
  %272 = icmp ugt i32 %269, 32
  br i1 %272, label %302, label %273

273:                                              ; preds = %259
  %274 = load ptr, ptr %221, align 4, !noalias !19
  %275 = load ptr, ptr %33, align 4, !noalias !19
  %276 = icmp ult ptr %274, %275
  br i1 %276, label %282, label %277

277:                                              ; preds = %273
  %278 = lshr i32 %269, 3
  %279 = sub nsw i32 0, %278
  %280 = getelementptr i8, ptr %274, i32 %279
  store ptr %280, ptr %221, align 4, !noalias !19
  %281 = and i32 %269, 7
  br label %298

282:                                              ; preds = %273
  %283 = load ptr, ptr %31, align 4, !noalias !19
  %284 = icmp eq ptr %274, %283
  br i1 %284, label %302, label %285

285:                                              ; preds = %282
  %286 = lshr i32 %269, 3
  %287 = sub nsw i32 0, %286
  %288 = getelementptr i8, ptr %274, i32 %287
  %289 = icmp ult ptr %288, %283
  %290 = ptrtoint ptr %274 to i32
  %291 = ptrtoint ptr %283 to i32
  %292 = sub i32 %290, %291
  %293 = select i1 %289, i32 %292, i32 %286
  %294 = sub i32 0, %293
  %295 = getelementptr i8, ptr %274, i32 %294
  store ptr %295, ptr %221, align 4, !noalias !19
  %296 = mul i32 %293, -8
  %297 = add i32 %296, %269
  br label %298

298:                                              ; preds = %285, %277
  %299 = phi i32 [ %297, %285 ], [ %281, %277 ]
  %300 = phi ptr [ %295, %285 ], [ %280, %277 ]
  store i32 %299, ptr %85, align 4, !noalias !19
  %301 = load i32, ptr %300, align 1, !noalias !19
  store i32 %301, ptr %9, align 4, !noalias !19
  br label %302

302:                                              ; preds = %298, %282, %259
  %303 = phi i32 [ %269, %282 ], [ %269, %259 ], [ %299, %298 ]
  %304 = phi i32 [ %263, %282 ], [ %263, %259 ], [ %301, %298 ]
  %305 = icmp ugt i32 %254, %260
  br i1 %305, label %306, label %351

306:                                              ; preds = %302
  %307 = and i32 %303, 31
  %308 = shl i32 %304, %307
  %309 = sub nsw i32 0, %262
  %310 = and i32 %309, 31
  %311 = lshr i32 %308, %310
  %312 = add i32 %303, %262
  %313 = add i32 %311, %271
  br label %351

314:                                              ; preds = %256
  %315 = load i32, ptr %9, align 4, !noalias !19
  %316 = and i32 %226, 31
  %317 = shl i32 %315, %316
  %318 = sub nsw i32 0, %248
  %319 = and i32 %318, 31
  %320 = lshr i32 %317, %319
  %321 = add i32 %254, %226
  %322 = add i32 %320, %250
  %323 = icmp ugt i32 %321, 32
  br i1 %323, label %351, label %324

324:                                              ; preds = %314
  %325 = load ptr, ptr %221, align 4, !noalias !19
  %326 = load ptr, ptr %33, align 4, !noalias !19
  %327 = icmp ult ptr %325, %326
  br i1 %327, label %334, label %328

328:                                              ; preds = %324
  %329 = lshr i32 %321, 3
  %330 = sub nsw i32 0, %329
  %331 = getelementptr i8, ptr %325, i32 %330
  store ptr %331, ptr %221, align 4, !noalias !19
  %332 = and i32 %321, 7
  store i32 %332, ptr %85, align 4, !noalias !19
  %333 = load i32, ptr %331, align 1, !noalias !19
  store i32 %333, ptr %9, align 4, !noalias !19
  br label %351

334:                                              ; preds = %324
  %335 = load ptr, ptr %31, align 4, !noalias !19
  %336 = icmp eq ptr %325, %335
  br i1 %336, label %351, label %337

337:                                              ; preds = %334
  %338 = lshr i32 %321, 3
  %339 = sub nsw i32 0, %338
  %340 = getelementptr i8, ptr %325, i32 %339
  %341 = icmp ult ptr %340, %335
  %342 = ptrtoint ptr %325 to i32
  %343 = ptrtoint ptr %335 to i32
  %344 = sub i32 %342, %343
  %345 = select i1 %341, i32 %344, i32 %338
  %346 = sub i32 0, %345
  %347 = getelementptr i8, ptr %325, i32 %346
  store ptr %347, ptr %221, align 4, !noalias !19
  %348 = mul i32 %345, -8
  %349 = add i32 %348, %321
  store i32 %349, ptr %85, align 4, !noalias !19
  %350 = load i32, ptr %347, align 1, !noalias !19
  store i32 %350, ptr %9, align 4, !noalias !19
  br label %351

351:                                              ; preds = %337, %334, %328, %314, %306, %302
  %352 = phi i32 [ %312, %306 ], [ %303, %302 ], [ %321, %314 ], [ %332, %328 ], [ %349, %337 ], [ %321, %334 ]
  %353 = phi i32 [ %313, %306 ], [ %271, %302 ], [ %322, %314 ], [ %322, %328 ], [ %322, %337 ], [ %322, %334 ]
  %354 = load i32, ptr %218, align 4, !noalias !19
  store i32 %354, ptr %219, align 4, !noalias !19
  %355 = load i32, ptr %27, align 4, !noalias !19
  store i32 %355, ptr %218, align 4, !noalias !19
  store i32 %353, ptr %27, align 4, !noalias !19
  br label %394

356:                                              ; preds = %225
  %357 = icmp eq i32 %240, 0
  %358 = icmp eq i32 %254, 0
  br i1 %358, label %359, label %365, !prof !13

359:                                              ; preds = %356
  br i1 %357, label %362, label %360, !prof !14

360:                                              ; preds = %359
  %361 = load i32, ptr %27, align 4, !noalias !19
  br label %394

362:                                              ; preds = %359
  %363 = load i32, ptr %218, align 4, !noalias !19
  %364 = load i32, ptr %27, align 4, !noalias !19
  store i32 %364, ptr %218, align 4, !noalias !19
  store i32 %363, ptr %27, align 4, !noalias !19
  br label %394

365:                                              ; preds = %356
  %366 = zext i1 %357 to i32
  %367 = add i32 %250, %366
  %368 = load i32, ptr %9, align 4, !noalias !19
  %369 = and i32 %226, 31
  %370 = shl i32 %368, %369
  %371 = lshr i32 %370, 31
  %372 = add i32 %226, 1
  store i32 %372, ptr %85, align 4, !noalias !19
  %373 = add i32 %367, %371
  %374 = icmp eq i32 %373, 3
  br i1 %374, label %375, label %381

375:                                              ; preds = %365
  %376 = load i32, ptr %27, align 4, !noalias !19
  %377 = add i32 %376, -1
  %378 = icmp eq i32 %377, 0
  %379 = zext i1 %378 to i32
  %380 = add i32 %377, %379
  br label %388

381:                                              ; preds = %365
  %382 = getelementptr %struct.seqState_t, ptr %9, i32 0, i32 4, i32 %373
  %383 = load i32, ptr %382, align 4, !noalias !19
  %384 = icmp eq i32 %383, 0
  %385 = zext i1 %384 to i32
  %386 = add i32 %383, %385
  %387 = icmp eq i32 %373, 1
  br i1 %387, label %391, label %388

388:                                              ; preds = %381, %375
  %389 = phi i32 [ %380, %375 ], [ %386, %381 ]
  %390 = load i32, ptr %218, align 4, !noalias !19
  store i32 %390, ptr %219, align 4, !noalias !19
  br label %391

391:                                              ; preds = %388, %381
  %392 = phi i32 [ %389, %388 ], [ %386, %381 ]
  %393 = load i32, ptr %27, align 4, !noalias !19
  store i32 %393, ptr %218, align 4, !noalias !19
  store i32 %392, ptr %27, align 4, !noalias !19
  br label %394

394:                                              ; preds = %391, %362, %360, %351
  %395 = phi i32 [ %352, %351 ], [ %226, %360 ], [ %226, %362 ], [ %372, %391 ]
  %396 = phi i32 [ %353, %351 ], [ %361, %360 ], [ %363, %362 ], [ %392, %391 ]
  %397 = icmp eq i32 %252, 0
  br i1 %397, label %407, label %398

398:                                              ; preds = %394
  %399 = load i32, ptr %9, align 4, !noalias !19
  %400 = and i32 %395, 31
  %401 = shl i32 %399, %400
  %402 = sub nsw i32 0, %243
  %403 = and i32 %402, 31
  %404 = lshr i32 %401, %403
  %405 = add i32 %395, %252
  %406 = add i32 %404, %245
  br label %407

407:                                              ; preds = %398, %394
  %408 = phi i32 [ %395, %394 ], [ %405, %398 ]
  %409 = phi i32 [ %245, %394 ], [ %406, %398 ]
  %410 = icmp ult i32 %253, 20
  %411 = icmp ugt i32 %408, 32
  %412 = select i1 %410, i1 true, i1 %411
  br i1 %412, label %442, label %413

413:                                              ; preds = %407
  %414 = load ptr, ptr %221, align 4, !noalias !19
  %415 = load ptr, ptr %33, align 4, !noalias !19
  %416 = icmp ult ptr %414, %415
  br i1 %416, label %422, label %417

417:                                              ; preds = %413
  %418 = lshr i32 %408, 3
  %419 = sub nsw i32 0, %418
  %420 = getelementptr i8, ptr %414, i32 %419
  store ptr %420, ptr %221, align 4, !noalias !19
  %421 = and i32 %408, 7
  br label %438

422:                                              ; preds = %413
  %423 = load ptr, ptr %31, align 4, !noalias !19
  %424 = icmp eq ptr %414, %423
  br i1 %424, label %442, label %425

425:                                              ; preds = %422
  %426 = lshr i32 %408, 3
  %427 = sub nsw i32 0, %426
  %428 = getelementptr i8, ptr %414, i32 %427
  %429 = icmp ult ptr %428, %423
  %430 = ptrtoint ptr %414 to i32
  %431 = ptrtoint ptr %423 to i32
  %432 = sub i32 %430, %431
  %433 = select i1 %429, i32 %432, i32 %426
  %434 = sub i32 0, %433
  %435 = getelementptr i8, ptr %414, i32 %434
  store ptr %435, ptr %221, align 4, !noalias !19
  %436 = mul i32 %433, -8
  %437 = add i32 %436, %408
  br label %438

438:                                              ; preds = %425, %417
  %439 = phi i32 [ %437, %425 ], [ %421, %417 ]
  %440 = phi ptr [ %435, %425 ], [ %420, %417 ]
  store i32 %439, ptr %85, align 4, !noalias !19
  %441 = load i32, ptr %440, align 1, !noalias !19
  store i32 %441, ptr %9, align 4, !noalias !19
  br label %442

442:                                              ; preds = %438, %422, %407
  %443 = phi i32 [ %439, %438 ], [ %408, %422 ], [ %408, %407 ]
  %444 = icmp eq i32 %251, 0
  br i1 %444, label %454, label %445

445:                                              ; preds = %442
  %446 = load i32, ptr %9, align 4, !noalias !19
  %447 = and i32 %443, 31
  %448 = shl i32 %446, %447
  %449 = sub nsw i32 0, %238
  %450 = and i32 %449, 31
  %451 = lshr i32 %448, %450
  %452 = add i32 %443, %251
  %453 = add i32 %451, %240
  br label %454

454:                                              ; preds = %445, %442
  %455 = phi i32 [ %453, %445 ], [ %240, %442 ]
  %456 = phi i32 [ %452, %445 ], [ %443, %442 ]
  %457 = icmp ugt i32 %456, 32
  br i1 %457, label %487, label %458

458:                                              ; preds = %454
  %459 = load ptr, ptr %221, align 4, !noalias !19
  %460 = load ptr, ptr %33, align 4, !noalias !19
  %461 = icmp ult ptr %459, %460
  br i1 %461, label %467, label %462

462:                                              ; preds = %458
  %463 = lshr i32 %456, 3
  %464 = sub nsw i32 0, %463
  %465 = getelementptr i8, ptr %459, i32 %464
  store ptr %465, ptr %221, align 4, !noalias !19
  %466 = and i32 %456, 7
  br label %483

467:                                              ; preds = %458
  %468 = load ptr, ptr %31, align 4, !noalias !19
  %469 = icmp eq ptr %459, %468
  br i1 %469, label %487, label %470

470:                                              ; preds = %467
  %471 = lshr i32 %456, 3
  %472 = sub nsw i32 0, %471
  %473 = getelementptr i8, ptr %459, i32 %472
  %474 = icmp ult ptr %473, %468
  %475 = ptrtoint ptr %459 to i32
  %476 = ptrtoint ptr %468 to i32
  %477 = sub i32 %475, %476
  %478 = select i1 %474, i32 %477, i32 %471
  %479 = sub i32 0, %478
  %480 = getelementptr i8, ptr %459, i32 %479
  store ptr %480, ptr %221, align 4, !noalias !19
  %481 = mul i32 %478, -8
  %482 = add i32 %481, %456
  br label %483

483:                                              ; preds = %470, %462
  %484 = phi i32 [ %466, %462 ], [ %482, %470 ]
  %485 = phi ptr [ %465, %462 ], [ %480, %470 ]
  store i32 %484, ptr %85, align 4, !noalias !19
  %486 = load i32, ptr %485, align 1, !noalias !19
  store i32 %486, ptr %9, align 4, !noalias !19
  br label %487

487:                                              ; preds = %483, %467, %454
  %488 = phi i32 [ %456, %467 ], [ %456, %454 ], [ %484, %483 ]
  %489 = lshr i32 %237, 24
  %490 = load i32, ptr %9, align 4, !noalias !19
  %491 = add i32 %488, %489
  %492 = sub i32 0, %491
  %493 = and i32 %492, 31
  %494 = lshr i32 %490, %493
  %495 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %489
  %496 = load i32, ptr %495, align 4, !noalias !19
  %497 = and i32 %494, %496
  %498 = and i32 %237, 65535
  %499 = add i32 %497, %498
  store i32 %499, ptr %81, align 4, !noalias !19
  %500 = lshr i32 %242, 24
  %501 = add i32 %491, %500
  %502 = sub i32 0, %501
  %503 = and i32 %502, 31
  %504 = lshr i32 %490, %503
  %505 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %500
  %506 = load i32, ptr %505, align 4, !noalias !19
  %507 = and i32 %504, %506
  %508 = and i32 %242, 65535
  %509 = add i32 %507, %508
  store i32 %509, ptr %173, align 4, !noalias !19
  %510 = icmp ugt i32 %501, 32
  br i1 %510, label %540, label %511

511:                                              ; preds = %487
  %512 = load ptr, ptr %221, align 4, !noalias !19
  %513 = load ptr, ptr %33, align 4, !noalias !19
  %514 = icmp ult ptr %512, %513
  br i1 %514, label %520, label %515

515:                                              ; preds = %511
  %516 = lshr i32 %501, 3
  %517 = sub nsw i32 0, %516
  %518 = getelementptr i8, ptr %512, i32 %517
  store ptr %518, ptr %221, align 4, !noalias !19
  %519 = and i32 %501, 7
  br label %536

520:                                              ; preds = %511
  %521 = load ptr, ptr %31, align 4, !noalias !19
  %522 = icmp eq ptr %512, %521
  br i1 %522, label %540, label %523

523:                                              ; preds = %520
  %524 = lshr i32 %501, 3
  %525 = sub nsw i32 0, %524
  %526 = getelementptr i8, ptr %512, i32 %525
  %527 = icmp ult ptr %526, %521
  %528 = ptrtoint ptr %512 to i32
  %529 = ptrtoint ptr %521 to i32
  %530 = sub i32 %528, %529
  %531 = select i1 %527, i32 %530, i32 %524
  %532 = sub i32 0, %531
  %533 = getelementptr i8, ptr %512, i32 %532
  store ptr %533, ptr %221, align 4, !noalias !19
  %534 = mul i32 %531, -8
  %535 = add i32 %534, %501
  br label %536

536:                                              ; preds = %523, %515
  %537 = phi i32 [ %535, %523 ], [ %519, %515 ]
  %538 = phi ptr [ %533, %523 ], [ %518, %515 ]
  store i32 %537, ptr %85, align 4, !noalias !19
  %539 = load i32, ptr %538, align 1, !noalias !19
  store i32 %539, ptr %9, align 4, !noalias !19
  br label %540

540:                                              ; preds = %536, %520, %487
  %541 = phi i32 [ %501, %520 ], [ %501, %487 ], [ %537, %536 ]
  %542 = phi i32 [ %490, %520 ], [ %490, %487 ], [ %539, %536 ]
  %543 = lshr i32 %247, 24
  %544 = add i32 %541, %543
  %545 = sub i32 0, %544
  %546 = and i32 %545, 31
  %547 = lshr i32 %542, %546
  %548 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %543
  %549 = load i32, ptr %548, align 4, !noalias !19
  %550 = and i32 %547, %549
  store i32 %544, ptr %85, align 4, !noalias !19
  %551 = and i32 %247, 65535
  %552 = add i32 %550, %551
  store i32 %552, ptr %127, align 4, !noalias !19
  %553 = insertvalue [4 x i32] poison, i32 %455, 0
  %554 = insertvalue [4 x i32] %553, i32 %409, 1
  %555 = insertvalue [4 x i32] %554, i32 %396, 2
  %556 = insertvalue [4 x i32] %555, i32 0, 3
  %557 = getelementptr i8, ptr %234, i32 %455
  %558 = add i32 %455, %409
  %559 = load ptr, ptr %8, align 4
  %560 = getelementptr i8, ptr %559, i32 %455
  %561 = sub i32 0, %396
  %562 = getelementptr i8, ptr %557, i32 %561
  %563 = icmp ugt ptr %560, %15
  %564 = getelementptr i8, ptr %234, i32 %558
  %565 = icmp ugt ptr %564, %217
  %566 = select i1 %563, i1 true, i1 %565
  br i1 %566, label %572, label %567, !prof !18

567:                                              ; preds = %540
  %568 = ptrtoint ptr %234 to i32
  %569 = sub i32 %222, %568
  %570 = add i32 %558, 32
  %571 = icmp ult i32 %569, %570
  br i1 %571, label %572, label %574, !prof !14

572:                                              ; preds = %567, %540
  %573 = call fastcc i32 @ZSTD_execSequenceEnd(ptr noundef %234, ptr noundef %10, [4 x i32] %556, ptr noundef nonnull %8, ptr noundef %15, ptr noundef %17, ptr noundef %19, ptr noundef %21) #11
  br label %682

574:                                              ; preds = %567
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %234, ptr noundef align 1 dereferenceable(16) %559, i32 16, i1 false) #11
  %575 = icmp ugt i32 %455, 16
  br i1 %575, label %576, label %591, !prof !14

576:                                              ; preds = %574
  %577 = getelementptr i8, ptr %234, i32 16
  %578 = getelementptr i8, ptr %559, i32 16
  %579 = add i32 %455, -16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %577, ptr noundef align 1 dereferenceable(16) %578, i32 16, i1 false) #11
  %580 = icmp slt i32 %579, 17
  br i1 %580, label %591, label %581

581:                                              ; preds = %576
  %582 = getelementptr i8, ptr %234, i32 32
  br label %583

583:                                              ; preds = %583, %581
  %584 = phi ptr [ %578, %581 ], [ %588, %583 ]
  %585 = phi ptr [ %582, %581 ], [ %589, %583 ]
  %586 = getelementptr i8, ptr %584, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %585, ptr noundef align 1 dereferenceable(16) %586, i32 16, i1 false) #11
  %587 = getelementptr i8, ptr %585, i32 16
  %588 = getelementptr i8, ptr %584, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %587, ptr noundef align 1 dereferenceable(16) %588, i32 16, i1 false) #11
  %589 = getelementptr i8, ptr %585, i32 32
  %590 = icmp ult ptr %589, %557
  br i1 %590, label %583, label %591

591:                                              ; preds = %583, %576, %574
  store ptr %560, ptr %8, align 4
  %592 = ptrtoint ptr %557 to i32
  %593 = sub i32 %592, %223
  %594 = icmp ugt i32 %396, %593
  br i1 %594, label %595, label %609

595:                                              ; preds = %591
  %596 = sub i32 %592, %224
  %597 = icmp ugt i32 %396, %596
  br i1 %597, label %682, label %598, !prof !14

598:                                              ; preds = %595
  %599 = ptrtoint ptr %562 to i32
  %600 = sub i32 %599, %223
  %601 = getelementptr i8, ptr %21, i32 %600
  %602 = getelementptr i8, ptr %601, i32 %409
  %603 = icmp ugt ptr %602, %21
  br i1 %603, label %605, label %604

604:                                              ; preds = %598
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %557, ptr align 1 %601, i32 %409, i1 false) #11
  br label %682

605:                                              ; preds = %598
  %606 = sub i32 0, %600
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %557, ptr align 1 %601, i32 %606, i1 false) #11
  %607 = getelementptr i8, ptr %557, i32 %606
  %608 = add i32 %600, %409
  br label %609

609:                                              ; preds = %605, %591
  %610 = phi ptr [ %607, %605 ], [ %557, %591 ]
  %611 = phi ptr [ %17, %605 ], [ %562, %591 ]
  %612 = phi i32 [ %608, %605 ], [ %409, %591 ]
  %613 = icmp ugt i32 %396, 15
  br i1 %613, label %614, label %627, !prof !13

614:                                              ; preds = %609
  %615 = getelementptr i8, ptr %610, i32 %612
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %610, ptr noundef align 1 dereferenceable(16) %611, i32 16, i1 false) #11
  %616 = icmp slt i32 %612, 17
  br i1 %616, label %682, label %617

617:                                              ; preds = %614
  %618 = getelementptr i8, ptr %610, i32 16
  br label %619

619:                                              ; preds = %619, %617
  %620 = phi ptr [ %611, %617 ], [ %624, %619 ]
  %621 = phi ptr [ %618, %617 ], [ %625, %619 ]
  %622 = getelementptr i8, ptr %620, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %621, ptr noundef align 1 dereferenceable(16) %622, i32 16, i1 false) #11
  %623 = getelementptr i8, ptr %621, i32 16
  %624 = getelementptr i8, ptr %620, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %623, ptr noundef align 1 dereferenceable(16) %624, i32 16, i1 false) #11
  %625 = getelementptr i8, ptr %621, i32 32
  %626 = icmp ult ptr %625, %615
  br i1 %626, label %619, label %682

627:                                              ; preds = %609
  %628 = icmp ult i32 %396, 8
  br i1 %628, label %629, label %649

629:                                              ; preds = %627
  %630 = getelementptr [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i32 0, i32 %396
  %631 = load i32, ptr %630, align 4
  %632 = load i8, ptr %611, align 1
  store i8 %632, ptr %610, align 1
  %633 = getelementptr i8, ptr %611, i32 1
  %634 = load i8, ptr %633, align 1
  %635 = getelementptr i8, ptr %610, i32 1
  store i8 %634, ptr %635, align 1
  %636 = getelementptr i8, ptr %611, i32 2
  %637 = load i8, ptr %636, align 1
  %638 = getelementptr i8, ptr %610, i32 2
  store i8 %637, ptr %638, align 1
  %639 = getelementptr i8, ptr %611, i32 3
  %640 = load i8, ptr %639, align 1
  %641 = getelementptr i8, ptr %610, i32 3
  store i8 %640, ptr %641, align 1
  %642 = getelementptr [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i32 0, i32 %396
  %643 = load i32, ptr %642, align 4
  %644 = getelementptr i8, ptr %611, i32 %643
  %645 = getelementptr i8, ptr %610, i32 4
  %646 = load i32, ptr %644, align 1
  store i32 %646, ptr %645, align 1
  %647 = sub i32 0, %631
  %648 = getelementptr i8, ptr %644, i32 %647
  br label %651

649:                                              ; preds = %627
  %650 = load i64, ptr %611, align 1
  store i64 %650, ptr %610, align 1
  br label %651

651:                                              ; preds = %649, %629
  %652 = phi ptr [ %611, %649 ], [ %648, %629 ]
  %653 = getelementptr i8, ptr %652, i32 8
  %654 = getelementptr i8, ptr %610, i32 8
  %655 = icmp ugt i32 %612, 8
  br i1 %655, label %656, label %682

656:                                              ; preds = %651
  %657 = ptrtoint ptr %654 to i32
  %658 = ptrtoint ptr %653 to i32
  %659 = sub i32 %657, %658
  %660 = getelementptr i8, ptr %610, i32 %612
  %661 = icmp slt i32 %659, 16
  br i1 %661, label %662, label %669

662:                                              ; preds = %662, %656
  %663 = phi ptr [ %667, %662 ], [ %653, %656 ]
  %664 = phi ptr [ %666, %662 ], [ %654, %656 ]
  %665 = load i64, ptr %663, align 1
  store i64 %665, ptr %664, align 1
  %666 = getelementptr i8, ptr %664, i32 8
  %667 = getelementptr i8, ptr %663, i32 8
  %668 = icmp ult ptr %666, %660
  br i1 %668, label %662, label %682

669:                                              ; preds = %656
  %670 = add i32 %612, -8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %654, ptr noundef align 1 dereferenceable(16) %653, i32 16, i1 false) #11
  %671 = icmp slt i32 %670, 17
  br i1 %671, label %682, label %672

672:                                              ; preds = %669
  %673 = getelementptr i8, ptr %610, i32 24
  br label %674

674:                                              ; preds = %674, %672
  %675 = phi ptr [ %653, %672 ], [ %679, %674 ]
  %676 = phi ptr [ %673, %672 ], [ %680, %674 ]
  %677 = getelementptr i8, ptr %675, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %676, ptr noundef align 1 dereferenceable(16) %677, i32 16, i1 false) #11
  %678 = getelementptr i8, ptr %676, i32 16
  %679 = getelementptr i8, ptr %675, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %678, ptr noundef align 1 dereferenceable(16) %679, i32 16, i1 false) #11
  %680 = getelementptr i8, ptr %676, i32 32
  %681 = icmp ult ptr %680, %660
  br i1 %681, label %674, label %682

682:                                              ; preds = %674, %669, %662, %651, %619, %614, %604, %595, %572
  %683 = phi i32 [ %573, %572 ], [ %558, %604 ], [ -20, %595 ], [ %558, %651 ], [ %558, %614 ], [ %558, %669 ], [ %558, %619 ], [ %558, %662 ], [ %558, %674 ]
  %684 = load i32, ptr %85, align 4
  %685 = icmp ugt i32 %684, 32
  br i1 %685, label %713, label %686

686:                                              ; preds = %682
  %687 = load ptr, ptr %221, align 4
  %688 = load ptr, ptr %33, align 4
  %689 = icmp ult ptr %687, %688
  br i1 %689, label %696, label %690

690:                                              ; preds = %686
  %691 = lshr i32 %684, 3
  %692 = sub nsw i32 0, %691
  %693 = getelementptr i8, ptr %687, i32 %692
  store ptr %693, ptr %221, align 4
  %694 = and i32 %684, 7
  store i32 %694, ptr %85, align 4
  %695 = load i32, ptr %693, align 1
  store i32 %695, ptr %9, align 4
  br label %713

696:                                              ; preds = %686
  %697 = load ptr, ptr %31, align 4
  %698 = icmp eq ptr %687, %697
  br i1 %698, label %713, label %699

699:                                              ; preds = %696
  %700 = lshr i32 %684, 3
  %701 = sub nsw i32 0, %700
  %702 = getelementptr i8, ptr %687, i32 %701
  %703 = icmp ult ptr %702, %697
  %704 = ptrtoint ptr %687 to i32
  %705 = ptrtoint ptr %697 to i32
  %706 = sub i32 %704, %705
  %707 = select i1 %703, i32 %706, i32 %700
  %708 = sub i32 0, %707
  %709 = getelementptr i8, ptr %687, i32 %708
  store ptr %709, ptr %221, align 4
  %710 = mul i32 %707, -8
  %711 = add i32 %710, %684
  store i32 %711, ptr %85, align 4
  %712 = load i32, ptr %709, align 1
  store i32 %712, ptr %9, align 4
  br label %713

713:                                              ; preds = %699, %696, %690, %682
  %714 = phi i32 [ %684, %696 ], [ %684, %682 ], [ %694, %690 ], [ %711, %699 ]
  %715 = getelementptr i8, ptr %234, i32 %683
  %716 = icmp ult i32 %683, -119
  %717 = add i32 %233, -1
  %718 = icmp ne i32 %717, 0
  %719 = select i1 %716, i32 %717, i32 %233, !prof !13
  %720 = select i1 %716, i32 %235, i32 %683, !prof !13
  %721 = select i1 %716, i1 %718, i1 false
  br i1 %721, label %722, label %729

722:                                              ; preds = %713
  %723 = load ptr, ptr %126, align 4, !noalias !19
  %724 = load i32, ptr %81, align 4, !noalias !19
  %725 = load ptr, ptr %216, align 4, !noalias !19
  %726 = load i32, ptr %173, align 4, !noalias !19
  %727 = load ptr, ptr %172, align 4, !noalias !19
  %728 = load i32, ptr %127, align 4, !noalias !19
  br label %225

729:                                              ; preds = %713
  %730 = icmp ult i32 %720, -119
  br i1 %730, label %731, label %746

731:                                              ; preds = %729
  %732 = icmp eq i32 %719, 0
  br i1 %732, label %733, label %746

733:                                              ; preds = %731
  %734 = icmp ugt i32 %714, 32
  br i1 %734, label %744, label %735

735:                                              ; preds = %733
  %736 = load ptr, ptr %221, align 4
  %737 = load ptr, ptr %33, align 4
  %738 = icmp uge ptr %736, %737
  %739 = load ptr, ptr %31, align 4
  %740 = icmp ne ptr %736, %739
  %741 = select i1 %738, i1 true, i1 %740
  %742 = icmp ne i32 %714, 32
  %743 = select i1 %741, i1 true, i1 %742
  br i1 %743, label %746, label %744

744:                                              ; preds = %735, %733
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %28, ptr noundef align 4 dereferenceable(12) %27, i32 12, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %9) #11
  %745 = load ptr, ptr %8, align 4
  br label %748

746:                                              ; preds = %735, %731, %729, %71, %58, %35, %25
  %747 = phi i32 [ -20, %731 ], [ %720, %729 ], [ -20, %71 ], [ -20, %25 ], [ -20, %35 ], [ -20, %58 ], [ -20, %735 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %9) #11
  br label %767

748:                                              ; preds = %744, %23
  %749 = phi i32 [ %24, %23 ], [ %222, %744 ]
  %750 = phi ptr [ %12, %23 ], [ %745, %744 ]
  %751 = phi ptr [ %1, %23 ], [ %715, %744 ]
  %752 = ptrtoint ptr %15 to i32
  %753 = ptrtoint ptr %750 to i32
  %754 = sub i32 %752, %753
  %755 = ptrtoint ptr %751 to i32
  %756 = sub i32 %749, %755
  %757 = icmp ugt i32 %754, %756
  br i1 %757, label %767, label %758

758:                                              ; preds = %748
  %759 = icmp eq ptr %751, null
  br i1 %759, label %763, label %760

760:                                              ; preds = %758
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %751, ptr align 1 %750, i32 %754, i1 false) #11
  %761 = getelementptr i8, ptr %751, i32 %754
  %762 = ptrtoint ptr %761 to i32
  br label %763

763:                                              ; preds = %760, %758
  %764 = phi i32 [ 0, %758 ], [ %762, %760 ]
  %765 = ptrtoint ptr %1 to i32
  %766 = sub i32 %764, %765
  br label %767

767:                                              ; preds = %763, %748, %746
  %768 = phi i32 [ %766, %763 ], [ %747, %746 ], [ -70, %748 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  ret i32 %768
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ZSTD_checkContinuity(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ne ptr %5, %1
  %7 = icmp ne i32 %2, 0
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 9
  store ptr %5, ptr %10, align 8
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 8
  %13 = ptrtoint ptr %5 to i32
  %14 = ptrtoint ptr %12 to i32
  %15 = sub i32 %14, %13
  %16 = getelementptr i8, ptr %1, i32 %15
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 8
  store ptr %16, ptr %17, align 4
  store ptr %1, ptr %11, align 8
  store ptr %1, ptr %4, align 4
  br label %18

18:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decompressBlock(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ne ptr %7, %1
  %9 = icmp ne i32 %2, 0
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %20

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 9
  store ptr %7, ptr %12, align 8
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 7
  %14 = load ptr, ptr %13, align 8
  %15 = ptrtoint ptr %7 to i32
  %16 = ptrtoint ptr %14 to i32
  %17 = sub i32 %16, %15
  %18 = getelementptr i8, ptr %1, i32 %17
  %19 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 8
  store ptr %18, ptr %19, align 4
  store ptr %1, ptr %13, align 8
  store ptr %1, ptr %6, align 4
  br label %20

20:                                               ; preds = %11, %5
  %21 = tail call i32 @ZSTD_decompressBlock_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0)
  %22 = getelementptr i8, ptr %1, i32 %21
  store ptr %22, ptr %6, align 4
  ret i32 %21
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_readNCount(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_execSequenceEnd(ptr noundef %0, ptr noundef %1, [4 x i32] %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef readonly %7) unnamed_addr #10 {
  %9 = extractvalue [4 x i32] %2, 0
  %10 = extractvalue [4 x i32] %2, 1
  %11 = extractvalue [4 x i32] %2, 2
  %12 = getelementptr i8, ptr %0, i32 %9
  %13 = add i32 %9, %10
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr i8, ptr %14, i32 %9
  %16 = sub i32 0, %11
  %17 = getelementptr i8, ptr %12, i32 %16
  %18 = getelementptr i8, ptr %1, i32 -32
  %19 = ptrtoint ptr %1 to i32
  %20 = ptrtoint ptr %0 to i32
  %21 = sub i32 %19, %20
  %22 = icmp ugt i32 %13, %21
  br i1 %22, label %220, label %23

23:                                               ; preds = %8
  %24 = ptrtoint ptr %4 to i32
  %25 = ptrtoint ptr %14 to i32
  %26 = sub i32 %24, %25
  %27 = icmp ugt i32 %9, %26
  br i1 %27, label %220, label %28

28:                                               ; preds = %23
  %29 = icmp slt i32 %9, 8
  br i1 %29, label %30, label %39

30:                                               ; preds = %28
  %31 = icmp ugt ptr %12, %0
  br i1 %31, label %32, label %83

32:                                               ; preds = %32, %30
  %33 = phi ptr [ %35, %32 ], [ %14, %30 ]
  %34 = phi ptr [ %37, %32 ], [ %0, %30 ]
  %35 = getelementptr i8, ptr %33, i32 1
  %36 = load i8, ptr %33, align 1
  %37 = getelementptr i8, ptr %34, i32 1
  store i8 %36, ptr %34, align 1
  %38 = icmp eq ptr %37, %12
  br i1 %38, label %83, label %32

39:                                               ; preds = %28
  %40 = icmp ugt ptr %12, %18
  br i1 %40, label %53, label %41

41:                                               ; preds = %39
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %0, ptr noundef align 1 dereferenceable(16) %14, i32 16, i1 false) #11
  %42 = icmp ult i32 %9, 17
  br i1 %42, label %83, label %43

43:                                               ; preds = %41
  %44 = getelementptr i8, ptr %0, i32 16
  br label %45

45:                                               ; preds = %45, %43
  %46 = phi ptr [ %14, %43 ], [ %50, %45 ]
  %47 = phi ptr [ %44, %43 ], [ %51, %45 ]
  %48 = getelementptr i8, ptr %46, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %47, ptr noundef align 1 dereferenceable(16) %48, i32 16, i1 false) #11
  %49 = getelementptr i8, ptr %47, i32 16
  %50 = getelementptr i8, ptr %46, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %49, ptr noundef align 1 dereferenceable(16) %50, i32 16, i1 false) #11
  %51 = getelementptr i8, ptr %47, i32 32
  %52 = icmp ult ptr %51, %12
  br i1 %52, label %45, label %83

53:                                               ; preds = %39
  %54 = icmp ult ptr %18, %0
  br i1 %54, label %72, label %55

55:                                               ; preds = %53
  %56 = ptrtoint ptr %18 to i32
  %57 = sub i32 %56, %20
  %58 = getelementptr i8, ptr %0, i32 %57
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %0, ptr noundef align 1 dereferenceable(16) %14, i32 16, i1 false) #11
  %59 = icmp slt i32 %57, 17
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = getelementptr i8, ptr %0, i32 16
  br label %62

62:                                               ; preds = %62, %60
  %63 = phi ptr [ %14, %60 ], [ %67, %62 ]
  %64 = phi ptr [ %61, %60 ], [ %68, %62 ]
  %65 = getelementptr i8, ptr %63, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %64, ptr noundef align 1 dereferenceable(16) %65, i32 16, i1 false) #11
  %66 = getelementptr i8, ptr %64, i32 16
  %67 = getelementptr i8, ptr %63, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %66, ptr noundef align 1 dereferenceable(16) %67, i32 16, i1 false) #11
  %68 = getelementptr i8, ptr %64, i32 32
  %69 = icmp ult ptr %68, %58
  br i1 %69, label %62, label %70

70:                                               ; preds = %62, %55
  %71 = getelementptr i8, ptr %14, i32 %57
  br label %72

72:                                               ; preds = %70, %53
  %73 = phi ptr [ %0, %53 ], [ %18, %70 ]
  %74 = phi ptr [ %14, %53 ], [ %71, %70 ]
  %75 = icmp ult ptr %73, %12
  br i1 %75, label %76, label %83

76:                                               ; preds = %76, %72
  %77 = phi ptr [ %79, %76 ], [ %74, %72 ]
  %78 = phi ptr [ %81, %76 ], [ %73, %72 ]
  %79 = getelementptr i8, ptr %77, i32 1
  %80 = load i8, ptr %77, align 1
  %81 = getelementptr i8, ptr %78, i32 1
  store i8 %80, ptr %78, align 1
  %82 = icmp ult ptr %81, %12
  br i1 %82, label %76, label %83

83:                                               ; preds = %76, %72, %45, %41, %32, %30
  store ptr %15, ptr %3, align 4
  %84 = ptrtoint ptr %12 to i32
  %85 = ptrtoint ptr %5 to i32
  %86 = sub i32 %84, %85
  %87 = icmp ugt i32 %11, %86
  br i1 %87, label %90, label %88

88:                                               ; preds = %83
  %89 = ptrtoint ptr %17 to i32
  br label %106

90:                                               ; preds = %83
  %91 = ptrtoint ptr %6 to i32
  %92 = sub i32 %84, %91
  %93 = icmp ugt i32 %11, %92
  br i1 %93, label %220, label %94

94:                                               ; preds = %90
  %95 = ptrtoint ptr %17 to i32
  %96 = sub i32 %95, %85
  %97 = getelementptr i8, ptr %7, i32 %96
  %98 = getelementptr i8, ptr %97, i32 %10
  %99 = icmp ugt ptr %98, %7
  br i1 %99, label %101, label %100

100:                                              ; preds = %94
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %12, ptr align 1 %97, i32 %10, i1 false)
  br label %220

101:                                              ; preds = %94
  %102 = sub i32 0, %96
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %12, ptr align 1 %97, i32 %102, i1 false)
  %103 = getelementptr i8, ptr %12, i32 %102
  %104 = add i32 %96, %10
  %105 = ptrtoint ptr %103 to i32
  br label %106

106:                                              ; preds = %101, %88
  %107 = phi i32 [ %89, %88 ], [ %85, %101 ]
  %108 = phi i32 [ %84, %88 ], [ %105, %101 ]
  %109 = phi ptr [ %12, %88 ], [ %103, %101 ]
  %110 = phi i32 [ %10, %88 ], [ %104, %101 ]
  %111 = phi ptr [ %17, %88 ], [ %5, %101 ]
  %112 = sub i32 %108, %107
  %113 = getelementptr i8, ptr %109, i32 %110
  %114 = icmp slt i32 %110, 8
  br i1 %114, label %115, label %124

115:                                              ; preds = %106
  %116 = icmp ugt ptr %113, %109
  br i1 %116, label %117, label %220

117:                                              ; preds = %117, %115
  %118 = phi ptr [ %120, %117 ], [ %111, %115 ]
  %119 = phi ptr [ %122, %117 ], [ %109, %115 ]
  %120 = getelementptr i8, ptr %118, i32 1
  %121 = load i8, ptr %118, align 1
  %122 = getelementptr i8, ptr %119, i32 1
  store i8 %121, ptr %119, align 1
  %123 = icmp eq ptr %122, %113
  br i1 %123, label %220, label %117

124:                                              ; preds = %106
  %125 = icmp ult i32 %112, 8
  br i1 %125, label %126, label %146

126:                                              ; preds = %124
  %127 = getelementptr [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i32 0, i32 %112
  %128 = load i32, ptr %127, align 4
  %129 = load i8, ptr %111, align 1
  store i8 %129, ptr %109, align 1
  %130 = getelementptr i8, ptr %111, i32 1
  %131 = load i8, ptr %130, align 1
  %132 = getelementptr i8, ptr %109, i32 1
  store i8 %131, ptr %132, align 1
  %133 = getelementptr i8, ptr %111, i32 2
  %134 = load i8, ptr %133, align 1
  %135 = getelementptr i8, ptr %109, i32 2
  store i8 %134, ptr %135, align 1
  %136 = getelementptr i8, ptr %111, i32 3
  %137 = load i8, ptr %136, align 1
  %138 = getelementptr i8, ptr %109, i32 3
  store i8 %137, ptr %138, align 1
  %139 = getelementptr [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i32 0, i32 %112
  %140 = load i32, ptr %139, align 4
  %141 = getelementptr i8, ptr %111, i32 %140
  %142 = getelementptr i8, ptr %109, i32 4
  %143 = load i32, ptr %141, align 1
  store i32 %143, ptr %142, align 1
  %144 = sub i32 0, %128
  %145 = getelementptr i8, ptr %141, i32 %144
  br label %148

146:                                              ; preds = %124
  %147 = load i64, ptr %111, align 1
  store i64 %147, ptr %109, align 1
  br label %148

148:                                              ; preds = %146, %126
  %149 = phi ptr [ %111, %146 ], [ %145, %126 ]
  %150 = getelementptr i8, ptr %149, i32 8
  %151 = getelementptr i8, ptr %109, i32 8
  %152 = icmp ugt ptr %113, %18
  br i1 %152, label %178, label %153

153:                                              ; preds = %148
  %154 = ptrtoint ptr %151 to i32
  %155 = ptrtoint ptr %150 to i32
  %156 = sub i32 %154, %155
  %157 = getelementptr i8, ptr %151, i32 %110
  %158 = icmp slt i32 %156, 16
  br i1 %158, label %159, label %166

159:                                              ; preds = %159, %153
  %160 = phi ptr [ %164, %159 ], [ %150, %153 ]
  %161 = phi ptr [ %163, %159 ], [ %151, %153 ]
  %162 = load i64, ptr %160, align 1
  store i64 %162, ptr %161, align 1
  %163 = getelementptr i8, ptr %161, i32 8
  %164 = getelementptr i8, ptr %160, i32 8
  %165 = icmp ult ptr %163, %157
  br i1 %165, label %159, label %220

166:                                              ; preds = %153
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %151, ptr noundef align 1 dereferenceable(16) %150, i32 16, i1 false) #11
  %167 = icmp ult i32 %110, 17
  br i1 %167, label %220, label %168

168:                                              ; preds = %166
  %169 = getelementptr i8, ptr %109, i32 24
  br label %170

170:                                              ; preds = %170, %168
  %171 = phi ptr [ %150, %168 ], [ %175, %170 ]
  %172 = phi ptr [ %169, %168 ], [ %176, %170 ]
  %173 = getelementptr i8, ptr %171, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %172, ptr noundef align 1 dereferenceable(16) %173, i32 16, i1 false) #11
  %174 = getelementptr i8, ptr %172, i32 16
  %175 = getelementptr i8, ptr %171, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %174, ptr noundef align 1 dereferenceable(16) %175, i32 16, i1 false) #11
  %176 = getelementptr i8, ptr %172, i32 32
  %177 = icmp ult ptr %176, %157
  br i1 %177, label %170, label %220

178:                                              ; preds = %148
  %179 = icmp ugt ptr %151, %18
  br i1 %179, label %209, label %180

180:                                              ; preds = %178
  %181 = ptrtoint ptr %18 to i32
  %182 = ptrtoint ptr %151 to i32
  %183 = sub i32 %181, %182
  %184 = ptrtoint ptr %150 to i32
  %185 = sub i32 %182, %184
  %186 = getelementptr i8, ptr %151, i32 %183
  %187 = icmp slt i32 %185, 16
  br i1 %187, label %188, label %195

188:                                              ; preds = %188, %180
  %189 = phi ptr [ %193, %188 ], [ %150, %180 ]
  %190 = phi ptr [ %192, %188 ], [ %151, %180 ]
  %191 = load i64, ptr %189, align 1
  store i64 %191, ptr %190, align 1
  %192 = getelementptr i8, ptr %190, i32 8
  %193 = getelementptr i8, ptr %189, i32 8
  %194 = icmp ult ptr %192, %186
  br i1 %194, label %188, label %207

195:                                              ; preds = %180
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %151, ptr noundef align 1 dereferenceable(16) %150, i32 16, i1 false) #11
  %196 = icmp slt i32 %183, 17
  br i1 %196, label %207, label %197

197:                                              ; preds = %195
  %198 = getelementptr i8, ptr %109, i32 24
  br label %199

199:                                              ; preds = %199, %197
  %200 = phi ptr [ %150, %197 ], [ %204, %199 ]
  %201 = phi ptr [ %198, %197 ], [ %205, %199 ]
  %202 = getelementptr i8, ptr %200, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %201, ptr noundef align 1 dereferenceable(16) %202, i32 16, i1 false) #11
  %203 = getelementptr i8, ptr %201, i32 16
  %204 = getelementptr i8, ptr %200, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %203, ptr noundef align 1 dereferenceable(16) %204, i32 16, i1 false) #11
  %205 = getelementptr i8, ptr %201, i32 32
  %206 = icmp ult ptr %205, %186
  br i1 %206, label %199, label %207

207:                                              ; preds = %199, %195, %188
  %208 = getelementptr i8, ptr %150, i32 %183
  br label %209

209:                                              ; preds = %207, %178
  %210 = phi ptr [ %151, %178 ], [ %18, %207 ]
  %211 = phi ptr [ %150, %178 ], [ %208, %207 ]
  %212 = icmp ult ptr %210, %113
  br i1 %212, label %213, label %220

213:                                              ; preds = %213, %209
  %214 = phi ptr [ %216, %213 ], [ %211, %209 ]
  %215 = phi ptr [ %218, %213 ], [ %210, %209 ]
  %216 = getelementptr i8, ptr %214, i32 1
  %217 = load i8, ptr %214, align 1
  %218 = getelementptr i8, ptr %215, i32 1
  store i8 %217, ptr %215, align 1
  %219 = icmp ult ptr %218, %113
  br i1 %219, label %213, label %220

220:                                              ; preds = %213, %209, %170, %166, %159, %117, %115, %100, %90, %23, %8
  %221 = phi i32 [ %13, %100 ], [ -70, %8 ], [ -20, %23 ], [ -20, %90 ], [ %13, %115 ], [ %13, %166 ], [ %13, %209 ], [ %13, %117 ], [ %13, %213 ], [ %13, %159 ], [ %13, %170 ]
  ret i32 %221
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree noinline nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }

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
!8 = !{i32 0, i32 33}
!9 = !{!"auto-init"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"ZSTD_decodeSequence: argument 0"}
!12 = distinct !{!12, !"ZSTD_decodeSequence"}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{!16}
!16 = distinct !{!16, !17, !"ZSTD_decodeSequence: argument 0"}
!17 = distinct !{!17, !"ZSTD_decodeSequence"}
!18 = !{!"branch_weights", i32 4001, i32 4000000}
!19 = !{!20}
!20 = distinct !{!20, !21, !"ZSTD_decodeSequence: argument 0"}
!21 = distinct !{!21, !"ZSTD_decodeSequence"}
