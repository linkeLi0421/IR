; ModuleID = '/llk/IR/lib/zstd/compress/zstd_compress.c_pt.bc'
source_filename = "../lib/zstd/compress/zstd_compress.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_CCtx_s = type { i32, i32, i32, %struct.ZSTD_CCtx_params_s, %struct.ZSTD_CCtx_params_s, i32, i32, %struct.ZSTD_cwksp, i32, i64, i64, i64, %struct.xxh64_state, %struct.ZSTD_customMem, ptr, i32, %struct.SeqCollector, i32, i32, %struct.seqStore_t, %struct.ldmState_t, ptr, i32, %struct.rawSeqStore_t, %struct.ZSTD_blockState_t, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.ZSTD_inBuffer_s, i32, %struct.ZSTD_localDict, ptr, %struct.ZSTD_prefixDict_s }
%struct.ZSTD_CCtx_params_s = type { i32, %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ldmParams_t, i32, i32, i32, i32, i32, %struct.ZSTD_customMem }
%struct.ZSTD_frameParameters = type { i32, i32, i32 }
%struct.ldmParams_t = type { i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_cwksp = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32 }
%struct.xxh64_state = type { i64, i64, i64, i64, i64, [4 x i64], i32 }
%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.SeqCollector = type { i32, ptr, i32, i32 }
%struct.seqStore_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.ldmState_t = type { %struct.ZSTD_window_t, ptr, i32, ptr, [64 x i32], [64 x %struct.ldmMatchCandidate_t] }
%struct.ZSTD_window_t = type { ptr, ptr, ptr, i32, i32 }
%struct.ldmMatchCandidate_t = type { ptr, i32, i32, ptr }
%struct.rawSeqStore_t = type { ptr, i32, i32, i32, i32 }
%struct.ZSTD_blockState_t = type { ptr, ptr, %struct.ZSTD_matchState_t }
%struct.ZSTD_matchState_t = type { %struct.ZSTD_window_t, i32, i32, i32, ptr, ptr, ptr, i32, %struct.optState_t, ptr, %struct.ZSTD_compressionParameters, ptr }
%struct.optState_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ZSTD_inBuffer_s = type { ptr, i32, i32 }
%struct.ZSTD_localDict = type { ptr, ptr, i32, i32, ptr }
%struct.ZSTD_prefixDict_s = type { ptr, i32, i32 }
%struct.ZSTD_CDict_s = type { ptr, i32, i32, ptr, %struct.ZSTD_cwksp, %struct.ZSTD_matchState_t, %struct.ZSTD_compressedBlockState_t, %struct.ZSTD_customMem, i32, i32 }
%struct.ZSTD_compressedBlockState_t = type { %struct.ZSTD_entropyCTables_t, [3 x i32] }
%struct.ZSTD_entropyCTables_t = type { %struct.ZSTD_hufCTables_t, %struct.ZSTD_fseCTables_t }
%struct.ZSTD_hufCTables_t = type { [256 x %struct.HUF_CElt_s], i32 }
%struct.HUF_CElt_s = type { i16, i8 }
%struct.ZSTD_fseCTables_t = type { [193 x i32], [363 x i32], [329 x i32], i32, i32, i32 }
%struct.ZSTD_bounds = type { i32, i32, i32 }
%struct.ZSTD_frameProgression = type { i64, i64, i64, i64, i32, i32 }
%struct.seqDef_s = type { i32, i16, i16 }
%struct.ZSTD_outBuffer_s = type { ptr, i32, i32 }
%struct.ZSTD_Sequence = type { i32, i32, i32, i32 }
%struct.ZSTD_sequencePosition = type { i32, i32, i32 }
%struct.ZSTD_parameters = type { %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters }
%struct.repcodes_s = type { [3 x i32] }

@repStartValue = internal unnamed_addr constant [3 x i32] [i32 1, i32 4, i32 8], align 4
@ZSTD_selectBlockCompressor.blockCompressor = internal unnamed_addr constant [4 x [10 x ptr]] [[10 x ptr] [ptr @ZSTD_compressBlock_fast, ptr @ZSTD_compressBlock_fast, ptr @ZSTD_compressBlock_doubleFast, ptr @ZSTD_compressBlock_greedy, ptr @ZSTD_compressBlock_lazy, ptr @ZSTD_compressBlock_lazy2, ptr @ZSTD_compressBlock_btlazy2, ptr @ZSTD_compressBlock_btopt, ptr @ZSTD_compressBlock_btultra, ptr @ZSTD_compressBlock_btultra2], [10 x ptr] [ptr @ZSTD_compressBlock_fast_extDict, ptr @ZSTD_compressBlock_fast_extDict, ptr @ZSTD_compressBlock_doubleFast_extDict, ptr @ZSTD_compressBlock_greedy_extDict, ptr @ZSTD_compressBlock_lazy_extDict, ptr @ZSTD_compressBlock_lazy2_extDict, ptr @ZSTD_compressBlock_btlazy2_extDict, ptr @ZSTD_compressBlock_btopt_extDict, ptr @ZSTD_compressBlock_btultra_extDict, ptr @ZSTD_compressBlock_btultra_extDict], [10 x ptr] [ptr @ZSTD_compressBlock_fast_dictMatchState, ptr @ZSTD_compressBlock_fast_dictMatchState, ptr @ZSTD_compressBlock_doubleFast_dictMatchState, ptr @ZSTD_compressBlock_greedy_dictMatchState, ptr @ZSTD_compressBlock_lazy_dictMatchState, ptr @ZSTD_compressBlock_lazy2_dictMatchState, ptr @ZSTD_compressBlock_btlazy2_dictMatchState, ptr @ZSTD_compressBlock_btopt_dictMatchState, ptr @ZSTD_compressBlock_btultra_dictMatchState, ptr @ZSTD_compressBlock_btultra_dictMatchState], [10 x ptr] [ptr null, ptr null, ptr null, ptr @ZSTD_compressBlock_greedy_dedicatedDictSearch, ptr @ZSTD_compressBlock_lazy_dedicatedDictSearch, ptr @ZSTD_compressBlock_lazy2_dedicatedDictSearch, ptr null, ptr null, ptr null, ptr null]], align 4
@ZSTD_estimateCCtxSize_internal.srcSizeTiers = internal unnamed_addr constant [4 x i64] [i64 16384, i64 131072, i64 262144, i64 -1], align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ZSTD_LLcode.LL_Code = internal unnamed_addr constant [64 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\10\11\11\12\12\13\13\14\14\14\14\15\15\15\15\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18", align 1
@ZSTD_MLcode.ML_Code = internal unnamed_addr constant [128 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F  !!\22\22##$$$$%%%%&&&&&&&&''''''''(((((((((((((((())))))))))))))))********************************", align 1
@LL_defaultNorm = internal constant [36 x i16] [i16 4, i16 3, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 3, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1, i16 -1, i16 -1, i16 -1], align 2
@OF_defaultNorm = internal constant [29 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], align 2
@ML_defaultNorm = internal constant [53 x i16] [i16 1, i16 4, i16 3, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], align 2
@attachDictSizeCutoffs = internal unnamed_addr constant [10 x i32] [i32 8192, i32 8192, i32 16384, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 8192, i32 8192], align 4
@ZSTD_defaultCParameters = internal unnamed_addr constant [4 x [23 x %struct.ZSTD_compressionParameters]] [[23 x %struct.ZSTD_compressionParameters] [%struct.ZSTD_compressionParameters { i32 19, i32 12, i32 13, i32 1, i32 6, i32 1, i32 1 }, %struct.ZSTD_compressionParameters { i32 19, i32 13, i32 14, i32 1, i32 7, i32 0, i32 1 }, %struct.ZSTD_compressionParameters { i32 20, i32 15, i32 16, i32 1, i32 6, i32 0, i32 1 }, %struct.ZSTD_compressionParameters { i32 21, i32 16, i32 17, i32 1, i32 5, i32 0, i32 2 }, %struct.ZSTD_compressionParameters { i32 21, i32 18, i32 18, i32 1, i32 5, i32 0, i32 2 }, %struct.ZSTD_compressionParameters { i32 21, i32 18, i32 19, i32 2, i32 5, i32 2, i32 3 }, %struct.ZSTD_compressionParameters { i32 21, i32 19, i32 19, i32 3, i32 5, i32 4, i32 3 }, %struct.ZSTD_compressionParameters { i32 21, i32 19, i32 19, i32 3, i32 5, i32 8, i32 4 }, %struct.ZSTD_compressionParameters { i32 21, i32 19, i32 19, i32 3, i32 5, i32 16, i32 5 }, %struct.ZSTD_compressionParameters { i32 21, i32 19, i32 20, i32 4, i32 5, i32 16, i32 5 }, %struct.ZSTD_compressionParameters { i32 22, i32 20, i32 21, i32 4, i32 5, i32 16, i32 5 }, %struct.ZSTD_compressionParameters { i32 22, i32 21, i32 22, i32 4, i32 5, i32 16, i32 5 }, %struct.ZSTD_compressionParameters { i32 22, i32 21, i32 22, i32 5, i32 5, i32 16, i32 5 }, %struct.ZSTD_compressionParameters { i32 22, i32 21, i32 22, i32 5, i32 5, i32 32, i32 6 }, %struct.ZSTD_compressionParameters { i32 22, i32 22, i32 23, i32 5, i32 5, i32 32, i32 6 }, %struct.ZSTD_compressionParameters { i32 22, i32 23, i32 23, i32 6, i32 5, i32 32, i32 6 }, %struct.ZSTD_compressionParameters { i32 22, i32 22, i32 22, i32 5, i32 5, i32 48, i32 7 }, %struct.ZSTD_compressionParameters { i32 23, i32 23, i32 22, i32 5, i32 4, i32 64, i32 7 }, %struct.ZSTD_compressionParameters { i32 23, i32 23, i32 22, i32 6, i32 3, i32 64, i32 8 }, %struct.ZSTD_compressionParameters { i32 23, i32 24, i32 22, i32 7, i32 3, i32 256, i32 9 }, %struct.ZSTD_compressionParameters { i32 25, i32 25, i32 23, i32 7, i32 3, i32 256, i32 9 }, %struct.ZSTD_compressionParameters { i32 26, i32 26, i32 24, i32 7, i32 3, i32 512, i32 9 }, %struct.ZSTD_compressionParameters { i32 27, i32 27, i32 25, i32 9, i32 3, i32 999, i32 9 }], [23 x %struct.ZSTD_compressionParameters] [%struct.ZSTD_compressionParameters { i32 18, i32 12, i32 13, i32 1, i32 5, i32 1, i32 1 }, %struct.ZSTD_compressionParameters { i32 18, i32 13, i32 14, i32 1, i32 6, i32 0, i32 1 }, %struct.ZSTD_compressionParameters { i32 18, i32 14, i32 14, i32 1, i32 5, i32 0, i32 2 }, %struct.ZSTD_compressionParameters { i32 18, i32 16, i32 16, i32 1, i32 4, i32 0, i32 2 }, %struct.ZSTD_compressionParameters { i32 18, i32 16, i32 17, i32 2, i32 5, i32 2, i32 3 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 18, i32 3, i32 5, i32 2, i32 3 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 3, i32 5, i32 4, i32 4 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 4, i32 4, i32 4, i32 4 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 4, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 5, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 6, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 5, i32 4, i32 12, i32 6 }, %struct.ZSTD_compressionParameters { i32 18, i32 19, i32 19, i32 7, i32 4, i32 12, i32 6 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 4, i32 4, i32 16, i32 7 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 4, i32 3, i32 32, i32 7 }, %struct.ZSTD_compressionParameters { i32 18, i32 18, i32 19, i32 6, i32 3, i32 128, i32 7 }, %struct.ZSTD_compressionParameters { i32 18, i32 19, i32 19, i32 6, i32 3, i32 128, i32 8 }, %struct.ZSTD_compressionParameters { i32 18, i32 19, i32 19, i32 8, i32 3, i32 256, i32 8 }, %struct.ZSTD_compressionParameters { i32 18, i32 19, i32 19, i32 6, i32 3, i32 128, i32 9 }, %struct.ZSTD_compressionParameters { i32 18, i32 19, i32 19, i32 8, i32 3, i32 256, i32 9 }, %struct.ZSTD_compressionParameters { i32 18, i32 19, i32 19, i32 10, i32 3, i32 512, i32 9 }, %struct.ZSTD_compressionParameters { i32 18, i32 19, i32 19, i32 12, i32 3, i32 512, i32 9 }, %struct.ZSTD_compressionParameters { i32 18, i32 19, i32 19, i32 13, i32 3, i32 999, i32 9 }], [23 x %struct.ZSTD_compressionParameters] [%struct.ZSTD_compressionParameters { i32 17, i32 12, i32 12, i32 1, i32 5, i32 1, i32 1 }, %struct.ZSTD_compressionParameters { i32 17, i32 12, i32 13, i32 1, i32 6, i32 0, i32 1 }, %struct.ZSTD_compressionParameters { i32 17, i32 13, i32 15, i32 1, i32 5, i32 0, i32 1 }, %struct.ZSTD_compressionParameters { i32 17, i32 15, i32 16, i32 2, i32 5, i32 0, i32 2 }, %struct.ZSTD_compressionParameters { i32 17, i32 17, i32 17, i32 2, i32 4, i32 0, i32 2 }, %struct.ZSTD_compressionParameters { i32 17, i32 16, i32 17, i32 3, i32 4, i32 2, i32 3 }, %struct.ZSTD_compressionParameters { i32 17, i32 17, i32 17, i32 3, i32 4, i32 4, i32 4 }, %struct.ZSTD_compressionParameters { i32 17, i32 17, i32 17, i32 3, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 17, i32 17, i32 17, i32 4, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 17, i32 17, i32 17, i32 5, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 17, i32 17, i32 17, i32 6, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 17, i32 17, i32 17, i32 5, i32 4, i32 8, i32 6 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 7, i32 4, i32 12, i32 6 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 3, i32 4, i32 12, i32 7 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 4, i32 3, i32 32, i32 7 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 6, i32 3, i32 256, i32 7 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 6, i32 3, i32 128, i32 8 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 8, i32 3, i32 256, i32 8 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 10, i32 3, i32 512, i32 8 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 5, i32 3, i32 256, i32 9 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 7, i32 3, i32 512, i32 9 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 9, i32 3, i32 512, i32 9 }, %struct.ZSTD_compressionParameters { i32 17, i32 18, i32 17, i32 11, i32 3, i32 999, i32 9 }], [23 x %struct.ZSTD_compressionParameters] [%struct.ZSTD_compressionParameters { i32 14, i32 12, i32 13, i32 1, i32 5, i32 1, i32 1 }, %struct.ZSTD_compressionParameters { i32 14, i32 14, i32 15, i32 1, i32 5, i32 0, i32 1 }, %struct.ZSTD_compressionParameters { i32 14, i32 14, i32 15, i32 1, i32 4, i32 0, i32 1 }, %struct.ZSTD_compressionParameters { i32 14, i32 14, i32 15, i32 2, i32 4, i32 0, i32 2 }, %struct.ZSTD_compressionParameters { i32 14, i32 14, i32 14, i32 4, i32 4, i32 2, i32 3 }, %struct.ZSTD_compressionParameters { i32 14, i32 14, i32 14, i32 3, i32 4, i32 4, i32 4 }, %struct.ZSTD_compressionParameters { i32 14, i32 14, i32 14, i32 4, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 14, i32 14, i32 14, i32 6, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 14, i32 14, i32 14, i32 8, i32 4, i32 8, i32 5 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 14, i32 5, i32 4, i32 8, i32 6 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 14, i32 9, i32 4, i32 8, i32 6 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 14, i32 3, i32 4, i32 12, i32 7 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 14, i32 4, i32 3, i32 24, i32 7 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 14, i32 5, i32 3, i32 32, i32 8 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 6, i32 3, i32 64, i32 8 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 7, i32 3, i32 256, i32 8 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 5, i32 3, i32 48, i32 9 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 6, i32 3, i32 128, i32 9 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 7, i32 3, i32 256, i32 9 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 8, i32 3, i32 256, i32 9 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 8, i32 3, i32 512, i32 9 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 9, i32 3, i32 512, i32 9 }, %struct.ZSTD_compressionParameters { i32 14, i32 15, i32 15, i32 10, i32 3, i32 999, i32 9 }]], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_compressBound(i32 noundef %0) local_unnamed_addr #0 {
  %2 = lshr i32 %0, 8
  %3 = add i32 %2, %0
  %4 = icmp ult i32 %0, 131072
  %5 = sub i32 131072, %0
  %6 = lshr i32 %5, 11
  %7 = select i1 %4, i32 %6, i32 0
  %8 = add i32 %3, %7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ZSTD_createCCtx() local_unnamed_addr #1 {
  %1 = tail call ptr @ZSTD_customMalloc(i32 noundef 2144, [3 x i32] zeroinitializer) #23
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2144) %1, i8 0, i64 2144, i1 false)
  %4 = tail call i32 @ZSTD_CCtx_reset(ptr noundef nonnull %1, i32 noundef 2) #23
  br label %5

5:                                                ; preds = %3, %0
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ZSTD_createCCtx_advanced([3 x i32] %0) local_unnamed_addr #1 {
  %2 = extractvalue [3 x i32] %0, 0
  %3 = extractvalue [3 x i32] %0, 1
  %4 = icmp eq i32 %2, 0
  %5 = icmp eq i32 %3, 0
  %6 = xor i1 %4, %5
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @ZSTD_customMalloc(i32 noundef 2144, [3 x i32] %0) #23
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = extractvalue [3 x i32] %0, 2
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(2144) %8, i8 0, i32 2144, i1 false) #23
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %8, i32 0, i32 13
  store i32 %2, ptr %12, align 8
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %8, i32 0, i32 13, i32 1
  store i32 %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %8, i32 0, i32 13, i32 2
  store i32 %11, ptr %14, align 8
  %15 = tail call i32 @ZSTD_CCtx_reset(ptr noundef nonnull %8, i32 noundef 2) #23
  br label %16

16:                                               ; preds = %10, %7, %1
  %17 = phi ptr [ null, %1 ], [ %8, %10 ], [ null, %7 ]
  ret ptr %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ZSTD_customMalloc(i32 noundef, [3 x i32]) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @ZSTD_initStaticCCtx(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp ugt i32 %1, 2144
  %4 = ptrtoint ptr %0 to i32
  %5 = and i32 %4, 7
  %6 = icmp eq i32 %5, 0
  %7 = and i1 %3, %6
  br i1 %7, label %8, label %51

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 %1
  %10 = getelementptr i8, ptr %0, i32 2144
  %11 = icmp ugt ptr %10, %9
  %12 = icmp eq ptr %0, null
  %13 = or i1 %12, %11
  br i1 %13, label %51, label %14

14:                                               ; preds = %8
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(2144) %0, i8 0, i32 2144, i1 false)
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7
  store ptr %0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 1
  store ptr %9, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 2
  store ptr %10, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 3
  store ptr %10, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 4
  store ptr %10, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 5
  store ptr %9, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 6
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 9
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %21, i8 0, i64 12, i1 false)
  store i32 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 15
  store i32 %1, ptr %23, align 8
  %24 = add i32 %1, -2144
  %25 = icmp ult i32 %24, 15800
  br i1 %25, label %51, label %26

26:                                               ; preds = %14
  %27 = getelementptr i8, ptr %0, i32 6736
  %28 = icmp ugt ptr %27, %9
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i8 1, ptr %21, align 4
  br label %31

30:                                               ; preds = %26
  store ptr %27, ptr %17, align 4
  store ptr %27, ptr %18, align 4
  store ptr %27, ptr %19, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = phi ptr [ %10, %29 ], [ %27, %30 ]
  %33 = phi ptr [ null, %29 ], [ %10, %30 ]
  %34 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24
  store ptr %33, ptr %34, align 4
  %35 = getelementptr i8, ptr %32, i32 4592
  %36 = icmp ugt ptr %35, %9
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i8 1, ptr %21, align 4
  br label %39

38:                                               ; preds = %31
  store ptr %35, ptr %17, align 4
  store ptr %35, ptr %18, align 4
  store ptr %35, ptr %19, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = phi ptr [ %32, %37 ], [ %35, %38 ]
  %41 = phi ptr [ null, %37 ], [ %32, %38 ]
  %42 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 1
  store ptr %41, ptr %42, align 4
  %43 = getelementptr i8, ptr %40, i32 6616
  %44 = icmp ugt ptr %43, %9
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i8 1, ptr %21, align 4
  br label %47

46:                                               ; preds = %39
  store ptr %43, ptr %17, align 4
  store ptr %43, ptr %18, align 4
  store ptr %43, ptr %19, align 4
  br label %47

47:                                               ; preds = %46, %45
  %48 = phi ptr [ null, %45 ], [ %40, %46 ]
  %49 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 25
  store ptr %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 2
  store i32 0, ptr %50, align 8
  br label %51

51:                                               ; preds = %47, %14, %8, %2
  %52 = phi ptr [ %0, %47 ], [ null, %2 ], [ null, %14 ], [ null, %8 ]
  ret ptr %52
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_freeCCtx(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %68, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 15
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %68

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ugt ptr %9, %0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp uge ptr %13, %0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %11, %7
  %17 = phi i32 [ 0, %7 ], [ %15, %11 ]
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13
  %21 = load i32, ptr %20, align 8
  %22 = insertvalue [3 x i32] undef, i32 %21, 0
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = insertvalue [3 x i32] %22, i32 %24, 1
  %26 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = insertvalue [3 x i32] %25, i32 %27, 2
  tail call void @ZSTD_customFree(ptr noundef %19, [3 x i32] %28) #23
  %29 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40, i32 4
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %52, label %32

32:                                               ; preds = %16
  %33 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %30, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %30, i32 0, i32 7, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %30, i32 0, i32 7, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %30, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = icmp ugt ptr %40, %30
  br i1 %41, label %46, label %42

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %30, i32 0, i32 4, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = icmp ult ptr %44, %30
  br label %46

46:                                               ; preds = %42, %32
  %47 = phi i1 [ true, %32 ], [ %45, %42 ]
  %48 = insertvalue [3 x i32] poison, i32 %34, 0
  %49 = insertvalue [3 x i32] %48, i32 %36, 1
  %50 = insertvalue [3 x i32] %49, i32 %38, 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %39, i8 0, i32 40, i1 false) #23
  tail call void @ZSTD_customFree(ptr noundef %40, [3 x i32] %50) #23
  br i1 %47, label %51, label %52

51:                                               ; preds = %46
  tail call void @ZSTD_customFree(ptr noundef nonnull %30, [3 x i32] %50) #23
  br label %52

52:                                               ; preds = %51, %46, %16
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(36) %18, i8 0, i64 36, i1 false) #23
  %53 = load i32, ptr %20, align 8
  %54 = insertvalue [3 x i32] undef, i32 %53, 0
  %55 = load i32, ptr %23, align 4
  %56 = insertvalue [3 x i32] %54, i32 %55, 1
  %57 = load i32, ptr %26, align 8
  %58 = insertvalue [3 x i32] %56, i32 %57, 2
  %59 = load ptr, ptr %8, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %8, i8 0, i32 40, i1 false) #23
  tail call void @ZSTD_customFree(ptr noundef %59, [3 x i32] %58) #23
  %60 = icmp eq i32 %17, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load i32, ptr %20, align 8
  %63 = insertvalue [3 x i32] undef, i32 %62, 0
  %64 = load i32, ptr %23, align 4
  %65 = insertvalue [3 x i32] %63, i32 %64, 1
  %66 = load i32, ptr %26, align 8
  %67 = insertvalue [3 x i32] %65, i32 %66, 2
  tail call void @ZSTD_customFree(ptr noundef nonnull %0, [3 x i32] %67) #23
  br label %68

68:                                               ; preds = %61, %52, %3, %1
  %69 = phi i32 [ 0, %1 ], [ -64, %3 ], [ 0, %61 ], [ 0, %52 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_customFree(ptr noundef, [3 x i32]) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_sizeof_CCtx(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %39, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %0
  %7 = select i1 %6, i32 0, i32 2144
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = ptrtoint ptr %5 to i32
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %3
  %20 = inttoptr i32 %17 to ptr
  %21 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %20, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %20
  %24 = select i1 %23, i32 0, i32 4820
  %25 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %20, i32 0, i32 4, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = ptrtoint ptr %22 to i32
  %29 = sub i32 %27, %28
  %30 = add i32 %29, %24
  br label %31

31:                                               ; preds = %19, %3
  %32 = phi i32 [ %30, %19 ], [ 0, %3 ]
  %33 = icmp eq i32 %13, 0
  %34 = select i1 %33, i32 0, i32 %15
  %35 = sub i32 %10, %11
  %36 = add i32 %35, %7
  %37 = add i32 %36, %34
  %38 = add i32 %37, %32
  br label %39

39:                                               ; preds = %31, %1
  %40 = phi i32 [ %38, %31 ], [ 0, %1 ]
  ret i32 %40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_sizeof_CStream(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %39, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %0
  %7 = select i1 %6, i32 0, i32 2144
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = ptrtoint ptr %5 to i32
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %3
  %20 = inttoptr i32 %17 to ptr
  %21 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %20, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %20
  %24 = select i1 %23, i32 0, i32 4820
  %25 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %20, i32 0, i32 4, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = ptrtoint ptr %22 to i32
  %29 = sub i32 %27, %28
  %30 = add i32 %29, %24
  br label %31

31:                                               ; preds = %19, %3
  %32 = phi i32 [ %30, %19 ], [ 0, %3 ]
  %33 = icmp eq i32 %13, 0
  %34 = select i1 %33, i32 0, i32 %15
  %35 = sub i32 %10, %11
  %36 = add i32 %35, %7
  %37 = add i32 %36, %34
  %38 = add i32 %37, %32
  br label %39

39:                                               ; preds = %31, %1
  %40 = phi i32 [ %38, %31 ], [ 0, %1 ]
  ret i32 %40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @ZSTD_getSeqStore(ptr noundef readnone %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ZSTD_createCCtxParams() local_unnamed_addr #1 {
  %1 = tail call ptr @ZSTD_customCalloc(i32 noundef 140, [3 x i32] zeroinitializer) #23
  %2 = icmp eq ptr %1, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(140) %1, i8 0, i32 128, i1 false) #23
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 3
  store i32 3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 2
  store i32 1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 19
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 19, i32 1
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 19, i32 2
  store i32 0, ptr %8, align 4
  br label %9

9:                                                ; preds = %3, %0
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_freeCCtxParams(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 19
  %5 = load i32, ptr %4, align 4
  %6 = insertvalue [3 x i32] undef, i32 %5, 0
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 19, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = insertvalue [3 x i32] %6, i32 %8, 1
  %10 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 19, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = insertvalue [3 x i32] %9, i32 %11, 2
  tail call void @ZSTD_customFree(ptr noundef nonnull %0, [3 x i32] %12) #23
  br label %13

13:                                               ; preds = %3, %1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @ZSTD_CCtxParams_reset(ptr noundef writeonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(140) %0, i8 0, i32 140, i1 false) #23
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 3
  store i32 3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 2
  store i32 1, ptr %5, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ 0, %3 ], [ -1, %1 ]
  ret i32 %7
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @ZSTD_CCtxParams_init(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(140) %0, i8 0, i32 140, i1 false)
  %5 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 3
  store i32 %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 2
  store i32 1, ptr %6, align 4
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i32 [ 0, %4 ], [ -1, %2 ]
  ret i32 %8
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_CCtxParams_init_advanced(ptr noundef writeonly %0, [10 x i32] %1) local_unnamed_addr #8 {
  %3 = extractvalue [10 x i32] %1, 0
  %4 = extractvalue [10 x i32] %1, 1
  %5 = extractvalue [10 x i32] %1, 2
  %6 = extractvalue [10 x i32] %1, 3
  %7 = extractvalue [10 x i32] %1, 4
  %8 = extractvalue [10 x i32] %1, 5
  %9 = extractvalue [10 x i32] %1, 6
  %10 = extractvalue [10 x i32] %1, 7
  %11 = extractvalue [10 x i32] %1, 8
  %12 = extractvalue [10 x i32] %1, 9
  %13 = icmp eq ptr %0, null
  br i1 %13, label %45, label %14

14:                                               ; preds = %2
  %15 = add i32 %3, -31
  %16 = icmp ult i32 %15, -21
  %17 = add i32 %4, -30
  %18 = icmp ult i32 %17, -24
  %19 = select i1 %16, i1 true, i1 %18
  %20 = add i32 %5, -31
  %21 = icmp ult i32 %20, -25
  %22 = select i1 %19, i1 true, i1 %21
  %23 = add i32 %6, -30
  %24 = icmp ult i32 %23, -29
  %25 = select i1 %22, i1 true, i1 %24
  %26 = add i32 %7, -8
  %27 = icmp ult i32 %26, -5
  %28 = select i1 %25, i1 true, i1 %27
  %29 = icmp ugt i32 %8, 131072
  %30 = select i1 %28, i1 true, i1 %29
  %31 = add i32 %9, -10
  %32 = icmp ult i32 %31, -9
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %45, label %34

34:                                               ; preds = %14
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(140) %0, i8 0, i32 140, i1 false) #23
  %35 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 1
  store i32 %3, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 1, i32 1
  store i32 %4, ptr %36, align 4
  %37 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 1, i32 2
  store i32 %5, ptr %37, align 4
  %38 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 1, i32 3
  store i32 %6, ptr %38, align 4
  %39 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 1, i32 4
  store i32 %7, ptr %39, align 4
  %40 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 1, i32 5
  store i32 %8, ptr %40, align 4
  %41 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 1, i32 6
  store i32 %9, ptr %41, align 4
  %42 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 2
  store i32 %10, ptr %42, align 4
  %43 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 2, i32 1
  store i32 %11, ptr %43, align 4
  %44 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 2, i32 2
  store i32 %12, ptr %44, align 4
  br label %45

45:                                               ; preds = %34, %14, %2
  %46 = phi i32 [ -42, %14 ], [ 0, %34 ], [ -1, %2 ]
  ret i32 %46
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_checkCParams([7 x i32] %0) local_unnamed_addr #4 {
  %2 = extractvalue [7 x i32] %0, 0
  %3 = extractvalue [7 x i32] %0, 2
  %4 = extractvalue [7 x i32] %0, 3
  %5 = extractvalue [7 x i32] %0, 4
  %6 = extractvalue [7 x i32] %0, 5
  %7 = extractvalue [7 x i32] %0, 6
  %8 = add i32 %2, -31
  %9 = icmp ult i32 %8, -21
  %10 = extractvalue [7 x i32] %0, 1
  %11 = add i32 %10, -30
  %12 = icmp ult i32 %11, -24
  %13 = select i1 %9, i1 true, i1 %12
  %14 = add i32 %3, -31
  %15 = icmp ult i32 %14, -25
  %16 = select i1 %13, i1 true, i1 %15
  %17 = add i32 %4, -30
  %18 = icmp ult i32 %17, -29
  %19 = select i1 %16, i1 true, i1 %18
  %20 = add i32 %5, -8
  %21 = icmp ult i32 %20, -5
  %22 = select i1 %19, i1 true, i1 %21
  %23 = icmp ugt i32 %6, 131072
  %24 = select i1 %22, i1 true, i1 %23
  %25 = add i32 %7, -10
  %26 = icmp ult i32 %25, -9
  %27 = select i1 %24, i1 true, i1 %26
  %28 = select i1 %27, i32 -42, i32 0
  ret i32 %28
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ZSTD_cParam_getBounds(ptr noalias writeonly sret(%struct.ZSTD_bounds) align 4 %0, i32 noundef %1) local_unnamed_addr #7 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %0, i8 0, i32 12, i1 false)
  switch i32 %1, label %68 [
    i32 100, label %3
    i32 101, label %6
    i32 102, label %9
    i32 103, label %12
    i32 104, label %15
    i32 105, label %18
    i32 106, label %21
    i32 107, label %23
    i32 200, label %26
    i32 201, label %28
    i32 202, label %30
    i32 400, label %69
    i32 401, label %69
    i32 402, label %69
    i32 1005, label %32
    i32 160, label %34
    i32 161, label %36
    i32 162, label %39
    i32 163, label %42
    i32 164, label %45
    i32 500, label %47
    i32 1000, label %49
    i32 10, label %51
    i32 1001, label %53
    i32 1002, label %55
    i32 1003, label %57
    i32 1004, label %60
    i32 1006, label %62
    i32 1007, label %62
    i32 1008, label %64
    i32 1009, label %66
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 1
  store i32 -131072, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 22, ptr %5, align 4
  br label %69

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 1
  store i32 10, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 30, ptr %8, align 4
  br label %69

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 1
  store i32 6, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 30, ptr %11, align 4
  br label %69

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 1
  store i32 6, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 29, ptr %14, align 4
  br label %69

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 1
  store i32 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 29, ptr %17, align 4
  br label %69

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 1
  store i32 3, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 7, ptr %20, align 4
  br label %69

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 131072, ptr %22, align 4
  br label %69

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 1
  store i32 1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 9, ptr %25, align 4
  br label %69

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 1, ptr %27, align 4
  br label %69

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 1, ptr %29, align 4
  br label %69

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 1, ptr %31, align 4
  br label %69

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 1, ptr %33, align 4
  br label %69

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 1, ptr %35, align 4
  br label %69

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 1
  store i32 6, ptr %37, align 4
  %38 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 30, ptr %38, align 4
  br label %69

39:                                               ; preds = %2
  %40 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 1
  store i32 4, ptr %40, align 4
  %41 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 4096, ptr %41, align 4
  br label %69

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 1
  store i32 1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 8, ptr %44, align 4
  br label %69

45:                                               ; preds = %2
  %46 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 24, ptr %46, align 4
  br label %69

47:                                               ; preds = %2
  %48 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 1, ptr %48, align 4
  br label %69

49:                                               ; preds = %2
  %50 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 1, ptr %50, align 4
  br label %69

51:                                               ; preds = %2
  %52 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 1, ptr %52, align 4
  br label %69

53:                                               ; preds = %2
  %54 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 3, ptr %54, align 4
  br label %69

55:                                               ; preds = %2
  %56 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 2, ptr %56, align 4
  br label %69

57:                                               ; preds = %2
  %58 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 1
  store i32 64, ptr %58, align 4
  %59 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 131072, ptr %59, align 4
  br label %69

60:                                               ; preds = %2
  %61 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 2147483647, ptr %61, align 4
  br label %69

62:                                               ; preds = %2, %2
  %63 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 1, ptr %63, align 4
  br label %69

64:                                               ; preds = %2
  %65 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 1, ptr %65, align 4
  br label %69

66:                                               ; preds = %2
  %67 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 1, ptr %67, align 4
  br label %69

68:                                               ; preds = %2
  store i32 -40, ptr %0, align 4
  br label %69

69:                                               ; preds = %68, %66, %64, %62, %60, %57, %55, %53, %51, %49, %47, %45, %42, %39, %36, %34, %32, %30, %28, %26, %23, %21, %18, %15, %12, %9, %6, %3, %2, %2, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_minCLevel() local_unnamed_addr #0 {
  ret i32 -131072
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_maxCLevel() local_unnamed_addr #0 {
  ret i32 22
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_CCtx_setParameter(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 36
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  switch i32 %1, label %20 [
    i32 100, label %8
    i32 102, label %8
    i32 103, label %8
    i32 104, label %8
    i32 105, label %8
    i32 106, label %8
    i32 107, label %8
  ]

8:                                                ; preds = %7, %7, %7, %7, %7, %7, %7
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 1
  store i32 1, ptr %9, align 4
  br label %10

10:                                               ; preds = %8, %3
  switch i32 %1, label %20 [
    i32 400, label %11
    i32 100, label %17
    i32 101, label %17
    i32 102, label %17
    i32 103, label %17
    i32 104, label %17
    i32 105, label %17
    i32 106, label %17
    i32 107, label %17
    i32 164, label %17
    i32 10, label %17
    i32 200, label %17
    i32 201, label %17
    i32 202, label %17
    i32 1000, label %17
    i32 1001, label %17
    i32 1002, label %17
    i32 401, label %17
    i32 402, label %17
    i32 500, label %17
    i32 1005, label %17
    i32 160, label %17
    i32 161, label %17
    i32 162, label %17
    i32 163, label %17
    i32 1003, label %17
    i32 1004, label %17
    i32 1006, label %17
    i32 1007, label %17
    i32 1008, label %17
    i32 1009, label %17
  ]

11:                                               ; preds = %10
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 15
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %11, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3
  %19 = tail call i32 @ZSTD_CCtxParams_setParameter(ptr noundef %18, i32 noundef %1, i32 noundef %2)
  br label %20

20:                                               ; preds = %17, %13, %10, %7
  %21 = phi i32 [ %19, %17 ], [ -40, %13 ], [ -40, %10 ], [ -60, %7 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_CCtxParams_setParameter(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  switch i32 %1, label %169 [
    i32 10, label %4
    i32 100, label %7
    i32 101, label %19
    i32 102, label %26
    i32 103, label %33
    i32 104, label %40
    i32 105, label %47
    i32 106, label %54
    i32 107, label %58
    i32 200, label %65
    i32 201, label %69
    i32 202, label %73
    i32 1000, label %79
    i32 1001, label %83
    i32 1002, label %87
    i32 400, label %91
    i32 401, label %94
    i32 402, label %97
    i32 500, label %100
    i32 1005, label %103
    i32 160, label %107
    i32 161, label %111
    i32 162, label %118
    i32 163, label %125
    i32 164, label %132
    i32 1003, label %139
    i32 1004, label %146
    i32 1006, label %153
    i32 1007, label %157
    i32 1008, label %161
    i32 1009, label %165
  ]

4:                                                ; preds = %3
  %5 = icmp ugt i32 %2, 1
  br i1 %5, label %169, label %6

6:                                                ; preds = %4
  store i32 %2, ptr %0, align 4
  br label %169

7:                                                ; preds = %3
  %8 = icmp slt i32 %2, -131072
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = icmp sgt i32 %2, 22
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %11, %9, %7
  %14 = phi i32 [ %2, %11 ], [ -131072, %7 ], [ 22, %9 ]
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %14, %13 ], [ 3, %11 ]
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 3
  store i32 %16, ptr %17, align 4
  %18 = tail call i32 @llvm.smax.i32(i32 %16, i32 0)
  br label %169

19:                                               ; preds = %3
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = tail call fastcc i32 @ZSTD_cParam_withinBounds(i32 noundef 101, i32 noundef %2)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %169, label %24

24:                                               ; preds = %21, %19
  %25 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 1
  store i32 %2, ptr %25, align 4
  br label %169

26:                                               ; preds = %3
  %27 = icmp eq i32 %2, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %26
  %29 = tail call fastcc i32 @ZSTD_cParam_withinBounds(i32 noundef 102, i32 noundef %2)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %169, label %31

31:                                               ; preds = %28, %26
  %32 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 1, i32 2
  store i32 %2, ptr %32, align 4
  br label %169

33:                                               ; preds = %3
  %34 = icmp eq i32 %2, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %33
  %36 = tail call fastcc i32 @ZSTD_cParam_withinBounds(i32 noundef 103, i32 noundef %2)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %169, label %38

38:                                               ; preds = %35, %33
  %39 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 1, i32 1
  store i32 %2, ptr %39, align 4
  br label %169

40:                                               ; preds = %3
  %41 = icmp eq i32 %2, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %40
  %43 = tail call fastcc i32 @ZSTD_cParam_withinBounds(i32 noundef 104, i32 noundef %2)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %169, label %45

45:                                               ; preds = %42, %40
  %46 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 1, i32 3
  store i32 %2, ptr %46, align 4
  br label %169

47:                                               ; preds = %3
  %48 = icmp eq i32 %2, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %47
  %50 = tail call fastcc i32 @ZSTD_cParam_withinBounds(i32 noundef 105, i32 noundef %2)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %169, label %52

52:                                               ; preds = %49, %47
  %53 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 1, i32 4
  store i32 %2, ptr %53, align 4
  br label %169

54:                                               ; preds = %3
  %55 = icmp ugt i32 %2, 131072
  br i1 %55, label %169, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 1, i32 5
  store i32 %2, ptr %57, align 4
  br label %169

58:                                               ; preds = %3
  %59 = icmp eq i32 %2, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %58
  %61 = tail call fastcc i32 @ZSTD_cParam_withinBounds(i32 noundef 107, i32 noundef %2)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %169, label %63

63:                                               ; preds = %60, %58
  %64 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 1, i32 6
  store i32 %2, ptr %64, align 4
  br label %169

65:                                               ; preds = %3
  %66 = icmp ne i32 %2, 0
  %67 = zext i1 %66 to i32
  %68 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 2
  store i32 %67, ptr %68, align 4
  br label %169

69:                                               ; preds = %3
  %70 = icmp ne i32 %2, 0
  %71 = zext i1 %70 to i32
  %72 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 2, i32 1
  store i32 %71, ptr %72, align 4
  br label %169

73:                                               ; preds = %3
  %74 = icmp ne i32 %2, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 2, i32 2
  store i32 %76, ptr %77, align 4
  %78 = zext i1 %74 to i32
  br label %169

79:                                               ; preds = %3
  %80 = icmp ne i32 %2, 0
  %81 = zext i1 %80 to i32
  %82 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 4
  store i32 %81, ptr %82, align 4
  br label %169

83:                                               ; preds = %3
  %84 = icmp ugt i32 %2, 3
  br i1 %84, label %169, label %85

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 7
  store i32 %2, ptr %86, align 4
  br label %169

87:                                               ; preds = %3
  %88 = icmp ugt i32 %2, 2
  br i1 %88, label %169, label %89

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 8
  store i32 %2, ptr %90, align 4
  br label %169

91:                                               ; preds = %3
  %92 = icmp eq i32 %2, 0
  %93 = select i1 %92, i32 0, i32 -40
  br label %169

94:                                               ; preds = %3
  %95 = icmp eq i32 %2, 0
  %96 = select i1 %95, i32 0, i32 -40
  br label %169

97:                                               ; preds = %3
  %98 = icmp eq i32 %2, 0
  %99 = select i1 %98, i32 0, i32 -40
  br label %169

100:                                              ; preds = %3
  %101 = icmp eq i32 %2, 0
  %102 = select i1 %101, i32 0, i32 -40
  br label %169

103:                                              ; preds = %3
  %104 = icmp ne i32 %2, 0
  %105 = zext i1 %104 to i32
  %106 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 14
  store i32 %105, ptr %106, align 4
  br label %169

107:                                              ; preds = %3
  %108 = icmp ne i32 %2, 0
  %109 = zext i1 %108 to i32
  %110 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 13
  store i32 %109, ptr %110, align 4
  br label %169

111:                                              ; preds = %3
  %112 = icmp eq i32 %2, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %111
  %114 = tail call fastcc i32 @ZSTD_cParam_withinBounds(i32 noundef 161, i32 noundef %2)
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %169, label %116

116:                                              ; preds = %113, %111
  %117 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 13, i32 1
  store i32 %2, ptr %117, align 4
  br label %169

118:                                              ; preds = %3
  %119 = icmp eq i32 %2, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %118
  %121 = tail call fastcc i32 @ZSTD_cParam_withinBounds(i32 noundef 162, i32 noundef %2)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %169, label %123

123:                                              ; preds = %120, %118
  %124 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 13, i32 3
  store i32 %2, ptr %124, align 4
  br label %169

125:                                              ; preds = %3
  %126 = icmp eq i32 %2, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %125
  %128 = tail call fastcc i32 @ZSTD_cParam_withinBounds(i32 noundef 163, i32 noundef %2)
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %169, label %130

130:                                              ; preds = %127, %125
  %131 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 13, i32 2
  store i32 %2, ptr %131, align 4
  br label %169

132:                                              ; preds = %3
  %133 = icmp eq i32 %2, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %132
  %135 = tail call fastcc i32 @ZSTD_cParam_withinBounds(i32 noundef 164, i32 noundef %2)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %169, label %137

137:                                              ; preds = %134, %132
  %138 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 13, i32 4
  store i32 %2, ptr %138, align 4
  br label %169

139:                                              ; preds = %3
  %140 = icmp eq i32 %2, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %139
  %142 = tail call fastcc i32 @ZSTD_cParam_withinBounds(i32 noundef 1003, i32 noundef %2)
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %169, label %144

144:                                              ; preds = %141, %139
  %145 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 5
  store i32 %2, ptr %145, align 4
  br label %169

146:                                              ; preds = %3
  %147 = icmp eq i32 %2, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %146
  %149 = tail call fastcc i32 @ZSTD_cParam_withinBounds(i32 noundef 1004, i32 noundef %2)
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %169, label %151

151:                                              ; preds = %148, %146
  %152 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 6
  store i32 %2, ptr %152, align 4
  br label %169

153:                                              ; preds = %3
  %154 = icmp ugt i32 %2, 1
  br i1 %154, label %169, label %155

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 15
  store i32 %2, ptr %156, align 4
  br label %169

157:                                              ; preds = %3
  %158 = icmp ugt i32 %2, 1
  br i1 %158, label %169, label %159

159:                                              ; preds = %157
  %160 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 16
  store i32 %2, ptr %160, align 4
  br label %169

161:                                              ; preds = %3
  %162 = icmp ugt i32 %2, 1
  br i1 %162, label %169, label %163

163:                                              ; preds = %161
  %164 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 17
  store i32 %2, ptr %164, align 4
  br label %169

165:                                              ; preds = %3
  %166 = icmp ugt i32 %2, 1
  br i1 %166, label %169, label %167

167:                                              ; preds = %165
  %168 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 18
  store i32 %2, ptr %168, align 4
  br label %169

169:                                              ; preds = %167, %165, %163, %161, %159, %157, %155, %153, %151, %148, %144, %141, %137, %134, %130, %127, %123, %120, %116, %113, %107, %103, %100, %97, %94, %91, %89, %87, %85, %83, %79, %73, %69, %65, %63, %60, %56, %54, %52, %49, %45, %42, %38, %35, %31, %28, %24, %21, %15, %6, %4, %3
  %170 = phi i32 [ %2, %167 ], [ %2, %163 ], [ %2, %159 ], [ %2, %155 ], [ %2, %151 ], [ %2, %144 ], [ %2, %137 ], [ %2, %130 ], [ %2, %123 ], [ %2, %116 ], [ %109, %107 ], [ %105, %103 ], [ %81, %79 ], [ %78, %73 ], [ %71, %69 ], [ %67, %65 ], [ %2, %63 ], [ %2, %56 ], [ %2, %52 ], [ %2, %45 ], [ %2, %38 ], [ %2, %31 ], [ %2, %24 ], [ %2, %6 ], [ -42, %4 ], [ %18, %15 ], [ -42, %21 ], [ -42, %28 ], [ -42, %35 ], [ -42, %42 ], [ -42, %49 ], [ -42, %54 ], [ -42, %60 ], [ %2, %85 ], [ -42, %83 ], [ %2, %89 ], [ -42, %87 ], [ %93, %91 ], [ %96, %94 ], [ %99, %97 ], [ %102, %100 ], [ -42, %113 ], [ -42, %120 ], [ -42, %127 ], [ -42, %134 ], [ -42, %141 ], [ -42, %148 ], [ -42, %153 ], [ -42, %157 ], [ -42, %161 ], [ -42, %165 ], [ -40, %3 ]
  ret i32 %170
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ZSTD_cParam_withinBounds(i32 noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = alloca %struct.ZSTD_bounds, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !8
  call void @ZSTD_cParam_getBounds(ptr nonnull sret(%struct.ZSTD_bounds) align 4 %3, i32 noundef %0)
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, -119
  %6 = getelementptr inbounds %struct.ZSTD_bounds, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp sle i32 %7, %1
  %9 = select i1 %5, i1 %8, i1 false
  %10 = getelementptr inbounds %struct.ZSTD_bounds, ptr %3, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp sge i32 %11, %1
  %13 = select i1 %9, i1 %12, i1 false
  %14 = zext i1 %13 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  ret i32 %14
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_CCtx_getParameter(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3
  %5 = tail call i32 @ZSTD_CCtxParams_getParameter(ptr noundef %4, i32 noundef %1, ptr noundef %2)
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_CCtxParams_getParameter(ptr noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #10 {
  switch i32 %1, label %91 [
    i32 10, label %4
    i32 100, label %6
    i32 101, label %9
    i32 102, label %12
    i32 103, label %15
    i32 104, label %18
    i32 105, label %21
    i32 106, label %24
    i32 107, label %27
    i32 200, label %30
    i32 201, label %33
    i32 202, label %36
    i32 1000, label %41
    i32 1001, label %44
    i32 1002, label %47
    i32 400, label %50
    i32 1009, label %86
    i32 1008, label %83
    i32 1007, label %80
    i32 1005, label %53
    i32 160, label %56
    i32 161, label %59
    i32 162, label %62
    i32 163, label %65
    i32 164, label %68
    i32 1003, label %71
    i32 1004, label %74
    i32 1006, label %77
  ]

4:                                                ; preds = %3
  %5 = load i32, ptr %0, align 4
  br label %89

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  br label %89

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  br label %89

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 1, i32 2
  %14 = load i32, ptr %13, align 4
  br label %89

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 1, i32 1
  %17 = load i32, ptr %16, align 4
  br label %89

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 1, i32 3
  %20 = load i32, ptr %19, align 4
  br label %89

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 1, i32 4
  %23 = load i32, ptr %22, align 4
  br label %89

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 1, i32 5
  %26 = load i32, ptr %25, align 4
  br label %89

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 1, i32 6
  %29 = load i32, ptr %28, align 4
  br label %89

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  br label %89

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 2, i32 1
  %35 = load i32, ptr %34, align 4
  br label %89

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 2, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  br label %89

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  br label %89

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 7
  %46 = load i32, ptr %45, align 4
  br label %89

47:                                               ; preds = %3
  %48 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 8
  %49 = load i32, ptr %48, align 4
  br label %89

50:                                               ; preds = %3
  %51 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 9
  %52 = load i32, ptr %51, align 4
  br label %89

53:                                               ; preds = %3
  %54 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 14
  %55 = load i32, ptr %54, align 4
  br label %89

56:                                               ; preds = %3
  %57 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 13
  %58 = load i32, ptr %57, align 4
  br label %89

59:                                               ; preds = %3
  %60 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 13, i32 1
  %61 = load i32, ptr %60, align 4
  br label %89

62:                                               ; preds = %3
  %63 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 13, i32 3
  %64 = load i32, ptr %63, align 4
  br label %89

65:                                               ; preds = %3
  %66 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 13, i32 2
  %67 = load i32, ptr %66, align 4
  br label %89

68:                                               ; preds = %3
  %69 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 13, i32 4
  %70 = load i32, ptr %69, align 4
  br label %89

71:                                               ; preds = %3
  %72 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  br label %89

74:                                               ; preds = %3
  %75 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 6
  %76 = load i32, ptr %75, align 4
  br label %89

77:                                               ; preds = %3
  %78 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 15
  %79 = load i32, ptr %78, align 4
  br label %89

80:                                               ; preds = %3
  %81 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 16
  %82 = load i32, ptr %81, align 4
  br label %89

83:                                               ; preds = %3
  %84 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 17
  %85 = load i32, ptr %84, align 4
  br label %89

86:                                               ; preds = %3
  %87 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 18
  %88 = load i32, ptr %87, align 4
  br label %89

89:                                               ; preds = %86, %83, %80, %77, %74, %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9, %6, %4
  %90 = phi i32 [ %5, %4 ], [ %8, %6 ], [ %11, %9 ], [ %14, %12 ], [ %17, %15 ], [ %20, %18 ], [ %23, %21 ], [ %26, %24 ], [ %29, %27 ], [ %32, %30 ], [ %35, %33 ], [ %40, %36 ], [ %43, %41 ], [ %46, %44 ], [ %49, %47 ], [ %52, %50 ], [ %55, %53 ], [ %58, %56 ], [ %61, %59 ], [ %64, %62 ], [ %67, %65 ], [ %70, %68 ], [ %73, %71 ], [ %76, %74 ], [ %79, %77 ], [ %82, %80 ], [ %85, %83 ], [ %88, %86 ]
  store i32 %90, ptr %2, align 4
  br label %91

91:                                               ; preds = %89, %3
  %92 = phi i32 [ -40, %3 ], [ 0, %89 ]
  ret i32 %92
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_CCtx_setParametersUsingCCtxParams(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 36
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 41
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(140) %11, ptr noundef align 4 dereferenceable(140) %1, i32 140, i1 false)
  br label %12

12:                                               ; preds = %10, %6, %2
  %13 = phi i32 [ 0, %10 ], [ -60, %2 ], [ -60, %6 ]
  ret i32 %13
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_CCtx_setPledgedSrcSize(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 36
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = add i64 %1, 1
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 9
  store i64 %7, ptr %8, align 8
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ 0, %6 ], [ -60, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_CCtx_loadDictionary_advanced(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 36
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %69

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13
  %13 = load i32, ptr %12, align 8
  %14 = insertvalue [3 x i32] undef, i32 %13, 0
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = insertvalue [3 x i32] %14, i32 %16, 1
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = insertvalue [3 x i32] %17, i32 %19, 2
  tail call void @ZSTD_customFree(ptr noundef %11, [3 x i32] %20) #23
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40, i32 4
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %22, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %22, i32 0, i32 7, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %22, i32 0, i32 7, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %22, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = icmp ugt ptr %32, %22
  br i1 %33, label %38, label %34

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %22, i32 0, i32 4, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp ult ptr %36, %22
  br label %38

38:                                               ; preds = %34, %24
  %39 = phi i1 [ true, %24 ], [ %37, %34 ]
  %40 = insertvalue [3 x i32] poison, i32 %26, 0
  %41 = insertvalue [3 x i32] %40, i32 %28, 1
  %42 = insertvalue [3 x i32] %41, i32 %30, 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %31, i8 0, i32 40, i1 false) #23
  tail call void @ZSTD_customFree(ptr noundef %32, [3 x i32] %42) #23
  br i1 %39, label %43, label %44

43:                                               ; preds = %38
  tail call void @ZSTD_customFree(ptr noundef nonnull %22, [3 x i32] %42) #23
  br label %44

44:                                               ; preds = %43, %38, %9
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(36) %10, i8 0, i64 36, i1 false) #23
  %45 = icmp eq ptr %1, null
  %46 = icmp eq i32 %2, 0
  %47 = or i1 %45, %46
  br i1 %47, label %69, label %48

48:                                               ; preds = %44
  %49 = icmp eq i32 %3, 1
  br i1 %49, label %64, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 15
  %52 = load i32, ptr %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load i32, ptr %12, align 8
  %56 = insertvalue [3 x i32] undef, i32 %55, 0
  %57 = load i32, ptr %15, align 4
  %58 = insertvalue [3 x i32] %56, i32 %57, 1
  %59 = load i32, ptr %18, align 8
  %60 = insertvalue [3 x i32] %58, i32 %59, 2
  %61 = tail call ptr @ZSTD_customMalloc(i32 noundef %2, [3 x i32] %60) #23
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %54
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %61, ptr nonnull align 1 %1, i32 %2, i1 false)
  store ptr %61, ptr %10, align 8
  br label %64

64:                                               ; preds = %63, %48
  %65 = phi ptr [ %61, %63 ], [ %1, %48 ]
  %66 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40, i32 1
  store ptr %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40, i32 2
  store i32 %2, ptr %67, align 8
  %68 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40, i32 3
  store i32 %4, ptr %68, align 4
  br label %69

69:                                               ; preds = %64, %54, %50, %44, %5
  %70 = phi i32 [ 0, %64 ], [ -60, %5 ], [ 0, %44 ], [ -64, %50 ], [ -64, %54 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_CCtx_loadDictionary_byReference(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = tail call i32 @ZSTD_CCtx_loadDictionary_advanced(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_CCtx_loadDictionary(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = tail call i32 @ZSTD_CCtx_loadDictionary_advanced(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 0)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_CCtx_refCDict(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 36
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %43

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13
  %10 = load i32, ptr %9, align 8
  %11 = insertvalue [3 x i32] undef, i32 %10, 0
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = insertvalue [3 x i32] %11, i32 %13, 1
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = insertvalue [3 x i32] %14, i32 %16, 2
  tail call void @ZSTD_customFree(ptr noundef %8, [3 x i32] %17) #23
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40, i32 4
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %41, label %21

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %19, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %19, i32 0, i32 7, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %19, i32 0, i32 7, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %19, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp ugt ptr %29, %19
  br i1 %30, label %35, label %31

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %19, i32 0, i32 4, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp ult ptr %33, %19
  br label %35

35:                                               ; preds = %31, %21
  %36 = phi i1 [ true, %21 ], [ %34, %31 ]
  %37 = insertvalue [3 x i32] poison, i32 %23, 0
  %38 = insertvalue [3 x i32] %37, i32 %25, 1
  %39 = insertvalue [3 x i32] %38, i32 %27, 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %28, i8 0, i32 40, i1 false) #23
  tail call void @ZSTD_customFree(ptr noundef %29, [3 x i32] %39) #23
  br i1 %36, label %40, label %41

40:                                               ; preds = %35
  tail call void @ZSTD_customFree(ptr noundef nonnull %19, [3 x i32] %39) #23
  br label %41

41:                                               ; preds = %40, %35, %6
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(36) %7, i8 0, i64 36, i1 false) #23
  %42 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 41
  store ptr %1, ptr %42, align 4
  br label %43

43:                                               ; preds = %41, %2
  %44 = phi i32 [ 0, %41 ], [ -60, %2 ]
  ret i32 %44
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_CCtx_refThreadPool(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 36
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 14
  store ptr %1, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ 0, %6 ], [ -60, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_CCtx_refPrefix(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = tail call i32 @ZSTD_CCtx_refPrefix_advanced(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_CCtx_refPrefix_advanced(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 36
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %51

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13
  %12 = load i32, ptr %11, align 8
  %13 = insertvalue [3 x i32] undef, i32 %12, 0
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = insertvalue [3 x i32] %13, i32 %15, 1
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = insertvalue [3 x i32] %16, i32 %18, 2
  tail call void @ZSTD_customFree(ptr noundef %10, [3 x i32] %19) #23
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40, i32 4
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %21, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %21, i32 0, i32 7, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %21, i32 0, i32 7, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %21, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp ugt ptr %31, %21
  br i1 %32, label %37, label %33

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %21, i32 0, i32 4, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp ult ptr %35, %21
  br label %37

37:                                               ; preds = %33, %23
  %38 = phi i1 [ true, %23 ], [ %36, %33 ]
  %39 = insertvalue [3 x i32] poison, i32 %25, 0
  %40 = insertvalue [3 x i32] %39, i32 %27, 1
  %41 = insertvalue [3 x i32] %40, i32 %29, 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %30, i8 0, i32 40, i1 false) #23
  tail call void @ZSTD_customFree(ptr noundef %31, [3 x i32] %41) #23
  br i1 %38, label %42, label %43

42:                                               ; preds = %37
  tail call void @ZSTD_customFree(ptr noundef nonnull %21, [3 x i32] %41) #23
  br label %43

43:                                               ; preds = %42, %37, %8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(36) %9, i8 0, i64 36, i1 false) #23
  %44 = icmp ne ptr %1, null
  %45 = icmp ne i32 %2, 0
  %46 = and i1 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 42
  store ptr %1, ptr %48, align 8
  %49 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 42, i32 1
  store i32 %2, ptr %49, align 4
  %50 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 42, i32 2
  store i32 %3, ptr %50, align 8
  br label %51

51:                                               ; preds = %47, %43, %4
  %52 = phi i32 [ -60, %4 ], [ 0, %47 ], [ 0, %43 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_CCtx_reset(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = and i32 %1, -3
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 36
  store i32 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 9
  store i64 0, ptr %7, align 8
  br label %8

8:                                                ; preds = %5, %2
  %9 = and i32 %1, -2
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %56

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 36
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %56

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13
  %19 = load i32, ptr %18, align 8
  %20 = insertvalue [3 x i32] undef, i32 %19, 0
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = insertvalue [3 x i32] %20, i32 %22, 1
  %24 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = insertvalue [3 x i32] %23, i32 %25, 2
  tail call void @ZSTD_customFree(ptr noundef %17, [3 x i32] %26) #23
  %27 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40, i32 4
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %50, label %30

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %28, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %28, i32 0, i32 7, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %28, i32 0, i32 7, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %28, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = icmp ugt ptr %38, %28
  br i1 %39, label %44, label %40

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %28, i32 0, i32 4, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp ult ptr %42, %28
  br label %44

44:                                               ; preds = %40, %30
  %45 = phi i1 [ true, %30 ], [ %43, %40 ]
  %46 = insertvalue [3 x i32] poison, i32 %32, 0
  %47 = insertvalue [3 x i32] %46, i32 %34, 1
  %48 = insertvalue [3 x i32] %47, i32 %36, 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %37, i8 0, i32 40, i1 false) #23
  tail call void @ZSTD_customFree(ptr noundef %38, [3 x i32] %48) #23
  br i1 %45, label %49, label %50

49:                                               ; preds = %44
  tail call void @ZSTD_customFree(ptr noundef nonnull %28, [3 x i32] %48) #23
  br label %50

50:                                               ; preds = %49, %44, %15
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(36) %16, i8 0, i64 36, i1 false) #23
  %51 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(140) %51, i8 0, i32 140, i1 false) #23
  %54 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3, i32 3
  store i32 3, ptr %54, align 4
  %55 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3, i32 2
  store i32 1, ptr %55, align 4
  br label %56

56:                                               ; preds = %53, %50, %11, %8
  %57 = phi i32 [ -60, %11 ], [ 0, %8 ], [ 0, %53 ], [ -1, %50 ]
  ret i32 %57
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_cycleLog(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ugt i32 %1, 5
  %4 = sext i1 %3 to i32
  %5 = add i32 %4, %0
  ret i32 %5
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ZSTD_adjustCParams(ptr noalias nocapture writeonly sret(%struct.ZSTD_compressionParameters) align 4 %0, [7 x i32] %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = extractvalue [7 x i32] %1, 0
  %6 = extractvalue [7 x i32] %1, 1
  %7 = extractvalue [7 x i32] %1, 2
  %8 = extractvalue [7 x i32] %1, 6
  %9 = tail call i32 @llvm.smin.i32(i32 %5, i32 30) #23
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 10) #23
  %11 = tail call i32 @llvm.smin.i32(i32 %6, i32 29) #23
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 6) #23
  %13 = tail call i32 @llvm.smin.i32(i32 %7, i32 30) #23
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 6) #23
  %15 = tail call i32 @llvm.smin.i32(i32 %8, i32 9) #23
  %16 = tail call i32 @llvm.smax.i32(i32 %15, i32 1) #23
  %17 = icmp eq i64 %2, 0
  %18 = select i1 %17, i64 -1, i64 %2
  %19 = icmp ult i64 %18, 536870912
  %20 = icmp ult i32 %3, 536870912
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %32

22:                                               ; preds = %4
  %23 = trunc i64 %18 to i32
  %24 = add nuw nsw i32 %23, %3
  %25 = icmp ult i32 %24, 64
  %26 = add nsw i32 %24, -1
  %27 = tail call i32 @llvm.ctlz.i32(i32 %26, i1 false) #23, !range !9
  %28 = xor i32 %27, 31
  %29 = add nuw nsw i32 %28, 1
  %30 = select i1 %25, i32 6, i32 %29
  %31 = tail call i32 @llvm.umin.i32(i32 %10, i32 %30) #23
  br label %34

32:                                               ; preds = %4
  %33 = icmp eq i64 %18, -1
  br i1 %33, label %61, label %34

34:                                               ; preds = %32, %22
  %35 = phi i32 [ %31, %22 ], [ %10, %32 ]
  %36 = icmp eq i32 %3, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %34
  %38 = zext i32 %3 to i64
  %39 = zext i32 %35 to i64
  %40 = shl nuw nsw i64 1, %39
  %41 = add nuw nsw i64 %40, %38
  %42 = add i64 %18, %38
  %43 = icmp ult i64 %40, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = icmp ugt i64 %41, 1073741823
  br i1 %45, label %52, label %46

46:                                               ; preds = %44
  %47 = trunc i64 %41 to i32
  %48 = add nsw i32 %47, -1
  %49 = tail call i32 @llvm.ctlz.i32(i32 %48, i1 false) #23, !range !9
  %50 = xor i32 %49, 31
  %51 = add nuw nsw i32 %50, 1
  br label %52

52:                                               ; preds = %46, %44, %37, %34
  %53 = phi i32 [ %35, %34 ], [ %51, %46 ], [ %35, %37 ], [ 30, %44 ]
  %54 = icmp ugt i32 %16, 5
  %55 = sext i1 %54 to i32
  %56 = add nsw i32 %12, %55
  %57 = add i32 %53, 1
  %58 = tail call i32 @llvm.umin.i32(i32 %14, i32 %57) #23
  %59 = tail call i32 @llvm.usub.sat.i32(i32 %56, i32 %53) #23
  %60 = sub nsw i32 %12, %59
  br label %61

61:                                               ; preds = %52, %32
  %62 = phi i32 [ %35, %52 ], [ %10, %32 ]
  %63 = phi i32 [ %60, %52 ], [ %12, %32 ]
  %64 = phi i32 [ %58, %52 ], [ %14, %32 ]
  %65 = extractvalue [7 x i32] %1, 5
  %66 = tail call i32 @llvm.smin.i32(i32 %65, i32 131072) #23
  %67 = tail call i32 @llvm.smax.i32(i32 %66, i32 0) #23
  %68 = extractvalue [7 x i32] %1, 4
  %69 = tail call i32 @llvm.smin.i32(i32 %68, i32 7) #23
  %70 = tail call i32 @llvm.smax.i32(i32 %69, i32 3) #23
  %71 = extractvalue [7 x i32] %1, 3
  %72 = tail call i32 @llvm.smin.i32(i32 %71, i32 29) #23
  %73 = tail call i32 @llvm.smax.i32(i32 %72, i32 1) #23
  %74 = tail call i32 @llvm.umax.i32(i32 %62, i32 10) #23
  store i32 %74, ptr %0, align 4, !alias.scope !10
  %75 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 %63, ptr %75, align 4, !alias.scope !10
  %76 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 %64, ptr %76, align 4, !alias.scope !10
  %77 = getelementptr inbounds i8, ptr %0, i32 12
  store i32 %73, ptr %77, align 4, !alias.scope !10
  %78 = getelementptr inbounds i8, ptr %0, i32 16
  store i32 %70, ptr %78, align 4, !alias.scope !10
  %79 = getelementptr inbounds i8, ptr %0, i32 20
  store i32 %67, ptr %79, align 4, !alias.scope !10
  %80 = getelementptr inbounds i8, ptr %0, i32 24
  store i32 %16, ptr %80, align 4, !alias.scope !10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ZSTD_getCParamsFromCCtxParams(ptr noalias nocapture writeonly sret(%struct.ZSTD_compressionParameters) align 4 %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = alloca %struct.ZSTD_compressionParameters, align 4
  %7 = icmp eq i64 %2, -1
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  %12 = select i1 %11, i32 %10, i32 -1
  %13 = sext i32 %12 to i64
  br label %14

14:                                               ; preds = %8, %5
  %15 = phi i64 [ %2, %5 ], [ %13, %8 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #23
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  call fastcc void @ZSTD_getCParams_internal(ptr nonnull sret(%struct.ZSTD_compressionParameters) align 4 %6, i32 noundef %17, i64 noundef %15, i32 noundef %3, i32 noundef %4)
  %18 = load i32, ptr %6, align 4
  %19 = getelementptr inbounds i8, ptr %6, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds i8, ptr %6, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds i8, ptr %6, i32 12
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds i8, ptr %6, i32 16
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds i8, ptr %6, i32 20
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds i8, ptr %6, i32 24
  %30 = load i32, ptr %29, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #23
  %31 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 13
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 %18, i32 27
  %35 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 %34, i32 %36
  %39 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 1, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 %22, i32 %40
  %43 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 1, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 %20, i32 %44
  %47 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 1, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 1, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 1, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 1, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 %30, i32 %54
  switch i32 %4, label %63 [
    i32 1, label %62
    i32 2, label %57
  ]

57:                                               ; preds = %14
  %58 = icmp ne i32 %3, 0
  %59 = icmp eq i64 %15, -1
  %60 = and i1 %58, %59
  %61 = select i1 %60, i64 513, i64 %15
  br label %63

62:                                               ; preds = %14
  br label %63

63:                                               ; preds = %62, %57, %14
  %64 = phi i64 [ %15, %14 ], [ %61, %57 ], [ %15, %62 ]
  %65 = phi i32 [ %3, %14 ], [ %3, %57 ], [ 0, %62 ]
  %66 = icmp ult i64 %64, 536870912
  %67 = icmp ult i32 %65, 536870912
  %68 = and i1 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = trunc i64 %64 to i32
  %71 = add nuw nsw i32 %65, %70
  %72 = icmp ult i32 %71, 64
  %73 = add nsw i32 %71, -1
  %74 = tail call i32 @llvm.ctlz.i32(i32 %73, i1 false) #23, !range !9
  %75 = xor i32 %74, 31
  %76 = add nuw nsw i32 %75, 1
  %77 = select i1 %72, i32 6, i32 %76
  %78 = tail call i32 @llvm.umin.i32(i32 %38, i32 %77) #23
  br label %81

79:                                               ; preds = %63
  %80 = icmp eq i64 %64, -1
  br i1 %80, label %108, label %81

81:                                               ; preds = %79, %69
  %82 = phi i32 [ %78, %69 ], [ %38, %79 ]
  %83 = icmp eq i32 %65, 0
  br i1 %83, label %99, label %84

84:                                               ; preds = %81
  %85 = zext i32 %65 to i64
  %86 = zext i32 %82 to i64
  %87 = shl nuw i64 1, %86
  %88 = add nuw i64 %87, %85
  %89 = add i64 %64, %85
  %90 = icmp ult i64 %87, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %84
  %92 = icmp ugt i64 %88, 1073741823
  br i1 %92, label %99, label %93

93:                                               ; preds = %91
  %94 = trunc i64 %88 to i32
  %95 = add nsw i32 %94, -1
  %96 = tail call i32 @llvm.ctlz.i32(i32 %95, i1 false) #23, !range !9
  %97 = xor i32 %96, 31
  %98 = add nuw nsw i32 %97, 1
  br label %99

99:                                               ; preds = %93, %91, %84, %81
  %100 = phi i32 [ %82, %81 ], [ %98, %93 ], [ %82, %84 ], [ 30, %91 ]
  %101 = icmp ugt i32 %56, 5
  %102 = sext i1 %101 to i32
  %103 = add i32 %46, %102
  %104 = add i32 %100, 1
  %105 = tail call i32 @llvm.umin.i32(i32 %42, i32 %104) #23
  %106 = tail call i32 @llvm.usub.sat.i32(i32 %103, i32 %100) #23
  %107 = sub i32 %46, %106
  br label %108

108:                                              ; preds = %99, %79
  %109 = phi i32 [ %82, %99 ], [ %38, %79 ]
  %110 = phi i32 [ %107, %99 ], [ %46, %79 ]
  %111 = phi i32 [ %105, %99 ], [ %42, %79 ]
  %112 = icmp eq i32 %52, 0
  %113 = select i1 %112, i32 %28, i32 %52
  %114 = icmp eq i32 %50, 0
  %115 = select i1 %114, i32 %26, i32 %50
  %116 = icmp eq i32 %48, 0
  %117 = select i1 %116, i32 %24, i32 %48
  %118 = tail call i32 @llvm.umax.i32(i32 %109, i32 10) #23
  store i32 %118, ptr %0, align 4, !alias.scope !13
  %119 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 %110, ptr %119, align 4, !alias.scope !13
  %120 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 %111, ptr %120, align 4, !alias.scope !13
  %121 = getelementptr inbounds i8, ptr %0, i32 12
  store i32 %117, ptr %121, align 4, !alias.scope !13
  %122 = getelementptr inbounds i8, ptr %0, i32 16
  store i32 %115, ptr %122, align 4, !alias.scope !13
  %123 = getelementptr inbounds i8, ptr %0, i32 20
  store i32 %113, ptr %123, align 4, !alias.scope !13
  %124 = getelementptr inbounds i8, ptr %0, i32 24
  store i32 %56, ptr %124, align 4, !alias.scope !13
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @ZSTD_getCParams_internal(ptr noalias nocapture writeonly sret(%struct.ZSTD_compressionParameters) align 4 %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #4 {
  %6 = icmp eq i32 %4, 1
  %7 = select i1 %6, i32 0, i32 %3
  %8 = icmp eq i64 %2, -1
  %9 = icmp eq i32 %7, 0
  %10 = and i1 %8, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %5
  %12 = icmp ne i32 %7, 0
  %13 = and i1 %8, %12
  %14 = zext i32 %7 to i64
  %15 = add i64 %14, %2
  %16 = select i1 %13, i64 500, i64 0
  %17 = add i64 %15, %16
  br label %18

18:                                               ; preds = %11, %5
  %19 = phi i64 [ %17, %11 ], [ -1, %5 ]
  %20 = icmp ult i64 %19, 262145
  %21 = zext i1 %20 to i32
  %22 = icmp ult i64 %19, 131073
  %23 = zext i1 %22 to i32
  %24 = add nuw nsw i32 %21, %23
  %25 = icmp ult i64 %19, 16385
  %26 = zext i1 %25 to i32
  %27 = add nuw nsw i32 %24, %26
  %28 = icmp eq i32 %1, 0
  %29 = icmp slt i32 %1, 0
  %30 = tail call i32 @llvm.umin.i32(i32 %1, i32 22)
  %31 = select i1 %29, i32 0, i32 %30
  %32 = select i1 %28, i32 3, i32 %31
  %33 = getelementptr [4 x [23 x %struct.ZSTD_compressionParameters]], ptr @ZSTD_defaultCParameters, i32 0, i32 %27, i32 %32
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds i8, ptr %33, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds i8, ptr %33, i32 8
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds i8, ptr %33, i32 12
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds i8, ptr %33, i32 16
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds i8, ptr %33, i32 20
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds i8, ptr %33, i32 24
  %46 = load i32, ptr %45, align 4
  switch i32 %4, label %52 [
    i32 1, label %51
    i32 2, label %47
  ]

47:                                               ; preds = %18
  %48 = icmp ne i32 %3, 0
  %49 = and i1 %8, %48
  %50 = select i1 %49, i64 513, i64 %2
  br label %52

51:                                               ; preds = %18
  br label %52

52:                                               ; preds = %51, %47, %18
  %53 = phi i64 [ %2, %18 ], [ %50, %47 ], [ %2, %51 ]
  %54 = phi i32 [ %3, %18 ], [ %3, %47 ], [ 0, %51 ]
  %55 = icmp ult i64 %53, 536870912
  %56 = icmp ult i32 %54, 536870912
  %57 = and i1 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = trunc i64 %53 to i32
  %60 = add nuw nsw i32 %54, %59
  %61 = icmp ult i32 %60, 64
  %62 = add nsw i32 %60, -1
  %63 = tail call i32 @llvm.ctlz.i32(i32 %62, i1 false) #23, !range !9
  %64 = xor i32 %63, 31
  %65 = add nuw nsw i32 %64, 1
  %66 = select i1 %61, i32 6, i32 %65
  %67 = tail call i32 @llvm.umin.i32(i32 %34, i32 %66) #23
  br label %70

68:                                               ; preds = %52
  %69 = icmp eq i64 %53, -1
  br i1 %69, label %97, label %70

70:                                               ; preds = %68, %58
  %71 = phi i32 [ %67, %58 ], [ %34, %68 ]
  %72 = icmp eq i32 %54, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %70
  %74 = zext i32 %54 to i64
  %75 = zext i32 %71 to i64
  %76 = shl nuw i64 1, %75
  %77 = add nuw i64 %76, %74
  %78 = add i64 %53, %74
  %79 = icmp ult i64 %76, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = icmp ugt i64 %77, 1073741823
  br i1 %81, label %88, label %82

82:                                               ; preds = %80
  %83 = trunc i64 %77 to i32
  %84 = add nsw i32 %83, -1
  %85 = tail call i32 @llvm.ctlz.i32(i32 %84, i1 false) #23, !range !9
  %86 = xor i32 %85, 31
  %87 = add nuw nsw i32 %86, 1
  br label %88

88:                                               ; preds = %82, %80, %73, %70
  %89 = phi i32 [ %71, %70 ], [ %87, %82 ], [ %71, %73 ], [ 30, %80 ]
  %90 = icmp ugt i32 %46, 5
  %91 = sext i1 %90 to i32
  %92 = add i32 %36, %91
  %93 = add i32 %89, 1
  %94 = tail call i32 @llvm.umin.i32(i32 %38, i32 %93) #23
  %95 = tail call i32 @llvm.usub.sat.i32(i32 %92, i32 %89) #23
  %96 = sub i32 %36, %95
  br label %97

97:                                               ; preds = %88, %68
  %98 = phi i32 [ %71, %88 ], [ %34, %68 ]
  %99 = phi i32 [ %96, %88 ], [ %36, %68 ]
  %100 = phi i32 [ %94, %88 ], [ %38, %68 ]
  %101 = tail call i32 @llvm.umax.i32(i32 %1, i32 -131072)
  %102 = sub nsw i32 0, %101
  %103 = select i1 %29, i32 %102, i32 %44
  %104 = tail call i32 @llvm.umax.i32(i32 %98, i32 10) #23
  store i32 %104, ptr %0, align 4, !alias.scope !16
  %105 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 %99, ptr %105, align 4, !alias.scope !16
  %106 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 %100, ptr %106, align 4, !alias.scope !16
  %107 = getelementptr inbounds i8, ptr %0, i32 12
  store i32 %40, ptr %107, align 4, !alias.scope !16
  %108 = getelementptr inbounds i8, ptr %0, i32 16
  store i32 %42, ptr %108, align 4, !alias.scope !16
  %109 = getelementptr inbounds i8, ptr %0, i32 20
  store i32 %103, ptr %109, align 4, !alias.scope !16
  %110 = getelementptr inbounds i8, ptr %0, i32 24
  store i32 %46, ptr %110, align 4, !alias.scope !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_estimateCCtxSize_usingCCtxParams(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #23
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false), !annotation !8
  call void @ZSTD_getCParamsFromCCtxParams(ptr nonnull sret(%struct.ZSTD_compressionParameters) align 4 %2, ptr noundef %0, i64 noundef -1, i32 noundef 0, i32 noundef 0)
  %3 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 13
  %8 = call fastcc i32 @ZSTD_estimateCCtxSize_usingCCtxParams_internal(ptr noundef nonnull %2, ptr noundef %7, i32 noundef 1, i32 noundef 0, i32 noundef 0, i64 noundef -1)
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ %8, %6 ], [ -1, %1 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #23
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_estimateCCtxSize_usingCCtxParams_internal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) unnamed_addr #1 {
  %7 = load i32, ptr %0, align 4
  %8 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 3
  %11 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %18, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = shl i32 4, %16
  br label %18

18:                                               ; preds = %14, %6
  %19 = phi i32 [ %17, %14 ], [ 0, %6 ]
  %20 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %0, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  br i1 %10, label %27, label %22

22:                                               ; preds = %18
  %23 = icmp ugt i32 %12, 6
  %24 = select i1 %23, i32 149000, i32 0
  %25 = shl i32 4, %21
  %26 = add i32 %25, %19
  br label %36

27:                                               ; preds = %18
  %28 = icmp ugt i32 %7, 17
  %29 = icmp ugt i32 %12, 6
  %30 = select i1 %29, i32 149000, i32 0
  %31 = shl i32 4, %21
  %32 = add i32 %31, %19
  br i1 %28, label %39, label %33

33:                                               ; preds = %27
  %34 = icmp eq i32 %7, 0
  %35 = shl nuw nsw i32 4, %7
  br i1 %34, label %36, label %39

36:                                               ; preds = %33, %22
  %37 = phi i32 [ %32, %33 ], [ %26, %22 ]
  %38 = phi i32 [ %30, %33 ], [ %24, %22 ]
  br label %39

39:                                               ; preds = %36, %33, %27
  %40 = phi i32 [ %37, %36 ], [ %32, %33 ], [ %32, %27 ]
  %41 = phi i32 [ %38, %36 ], [ %30, %33 ], [ %30, %27 ]
  %42 = phi i32 [ 0, %36 ], [ %35, %33 ], [ 524288, %27 ]
  %43 = zext i32 %7 to i64
  %44 = shl nuw i64 1, %43
  %45 = tail call i64 @llvm.umin.i64(i64 %44, i64 %5)
  %46 = trunc i64 %45 to i32
  %47 = icmp eq i32 %46, 0
  %48 = tail call i32 @llvm.umin.i32(i32 %46, i32 131072)
  %49 = select i1 %47, i32 1, i32 %48
  %50 = select i1 %10, i32 3, i32 4
  %51 = udiv i32 %49, %50
  %52 = load i32, ptr %1, align 4
  %53 = insertvalue [6 x i32] undef, i32 %52, 0
  %54 = getelementptr inbounds [6 x i32], ptr %1, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = insertvalue [6 x i32] %53, i32 %55, 1
  %57 = getelementptr inbounds [6 x i32], ptr %1, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = insertvalue [6 x i32] %56, i32 %58, 2
  %60 = getelementptr inbounds [6 x i32], ptr %1, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = insertvalue [6 x i32] %59, i32 %61, 3
  %63 = getelementptr inbounds [6 x i32], ptr %1, i32 0, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = insertvalue [6 x i32] %62, i32 %64, 4
  %66 = getelementptr inbounds [6 x i32], ptr %1, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = insertvalue [6 x i32] %65, i32 %67, 5
  %69 = tail call i32 @ZSTD_ldm_getTableSize([6 x i32] %68) #23
  %70 = load i32, ptr %1, align 4
  %71 = insertvalue [6 x i32] undef, i32 %70, 0
  %72 = load i32, ptr %54, align 4
  %73 = insertvalue [6 x i32] %71, i32 %72, 1
  %74 = load i32, ptr %57, align 4
  %75 = insertvalue [6 x i32] %73, i32 %74, 2
  %76 = load i32, ptr %60, align 4
  %77 = insertvalue [6 x i32] %75, i32 %76, 3
  %78 = load i32, ptr %63, align 4
  %79 = insertvalue [6 x i32] %77, i32 %78, 4
  %80 = load i32, ptr %66, align 4
  %81 = insertvalue [6 x i32] %79, i32 %80, 5
  %82 = tail call i32 @ZSTD_ldm_getMaxNbSeq([6 x i32] %81, i32 noundef %49) #23
  %83 = load i32, ptr %1, align 4
  %84 = icmp eq i32 %83, 0
  %85 = mul i32 %82, 12
  %86 = select i1 %84, i32 0, i32 %85
  %87 = icmp eq i32 %2, 0
  %88 = select i1 %87, i32 15800, i32 17944
  %89 = mul nuw nsw i32 %51, 11
  %90 = add i32 %3, 32
  %91 = add i32 %90, %4
  %92 = add i32 %91, %88
  %93 = add i32 %92, %49
  %94 = add i32 %93, %40
  %95 = add i32 %94, %41
  %96 = add i32 %95, %42
  %97 = add i32 %96, %89
  %98 = add i32 %97, %69
  %99 = add i32 %98, %86
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_estimateCCtxSize_usingCParams([7 x i32] %0) local_unnamed_addr #1 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 4
  %3 = alloca %struct.ZSTD_compressionParameters, align 4
  %4 = alloca %struct.ZSTD_CCtx_params_s, align 4
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %4) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3)
  %5 = extractvalue [7 x i32] %0, 0
  store i32 %5, ptr %3, align 4, !noalias !19
  %6 = extractvalue [7 x i32] %0, 1
  %7 = getelementptr inbounds [7 x i32], ptr %3, i32 0, i32 1
  store i32 %6, ptr %7, align 4, !noalias !19
  %8 = extractvalue [7 x i32] %0, 2
  %9 = getelementptr inbounds [7 x i32], ptr %3, i32 0, i32 2
  store i32 %8, ptr %9, align 4, !noalias !19
  %10 = extractvalue [7 x i32] %0, 3
  %11 = getelementptr inbounds [7 x i32], ptr %3, i32 0, i32 3
  store i32 %10, ptr %11, align 4, !noalias !19
  %12 = extractvalue [7 x i32] %0, 4
  %13 = getelementptr inbounds [7 x i32], ptr %3, i32 0, i32 4
  store i32 %12, ptr %13, align 4, !noalias !19
  %14 = extractvalue [7 x i32] %0, 5
  %15 = getelementptr inbounds [7 x i32], ptr %3, i32 0, i32 5
  store i32 %14, ptr %15, align 4, !noalias !19
  %16 = extractvalue [7 x i32] %0, 6
  %17 = getelementptr inbounds [7 x i32], ptr %3, i32 0, i32 6
  store i32 %16, ptr %17, align 4, !noalias !19
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(140) %4, i8 0, i64 140, i1 false)
  store i32 3, ptr %18, align 4, !alias.scope !19
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 2
  store i32 1, ptr %19, align 4, !alias.scope !19
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %20, ptr noundef nonnull align 4 dereferenceable(28) %3, i32 28, i1 false) #23
  %21 = icmp ult i32 %16, 7
  %22 = icmp ult i32 %5, 27
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %26, label %24

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 13
  store i32 1, ptr %25, align 4, !alias.scope !19
  call void @ZSTD_ldm_adjustParameters(ptr noundef %25, ptr noundef nonnull %3) #23
  br label %26

26:                                               ; preds = %24, %1
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #23
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false) #23, !annotation !8
  call void @ZSTD_getCParamsFromCCtxParams(ptr nonnull sret(%struct.ZSTD_compressionParameters) align 4 %2, ptr noundef nonnull %4, i64 noundef -1, i32 noundef 0, i32 noundef 0) #23
  %27 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 13
  %32 = call fastcc i32 @ZSTD_estimateCCtxSize_usingCCtxParams_internal(ptr noundef nonnull %2, ptr noundef %31, i32 noundef 1, i32 noundef 0, i32 noundef 0, i64 noundef -1) #23
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i32 [ %32, %30 ], [ -1, %26 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %4) #23
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_estimateCCtxSize(i32 noundef %0) local_unnamed_addr #1 {
  %2 = tail call i32 @llvm.smin.i32(i32 %0, i32 1)
  br label %3

3:                                                ; preds = %79, %1
  %4 = phi i32 [ 0, %1 ], [ %80, %79 ]
  %5 = phi i32 [ %2, %1 ], [ %81, %79 ]
  %6 = icmp eq i32 %5, 0
  %7 = icmp slt i32 %5, 0
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 22) #23
  %9 = select i1 %7, i32 0, i32 %8
  %10 = select i1 %6, i32 3, i32 %9
  %11 = tail call i32 @llvm.umax.i32(i32 %5, i32 -131072) #23
  %12 = sub nsw i32 0, %11
  br label %13

13:                                               ; preds = %75, %3
  %14 = phi i32 [ 0, %3 ], [ %76, %75 ]
  %15 = phi i32 [ 0, %3 ], [ %77, %75 ]
  %16 = icmp ne i32 %15, 3
  %17 = zext i1 %16 to i32
  %18 = and i32 %15, 536870910
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = icmp eq i32 %15, 0
  %22 = zext i1 %21 to i32
  %23 = add nuw nsw i32 %22, %17
  %24 = add nuw nsw i32 %23, %20
  %25 = getelementptr [4 x [23 x %struct.ZSTD_compressionParameters]], ptr @ZSTD_defaultCParameters, i32 0, i32 %24, i32 %10
  %26 = load i32, ptr %25, align 4, !noalias !22
  %27 = getelementptr inbounds i8, ptr %25, i32 4
  %28 = load i32, ptr %27, align 4, !noalias !22
  %29 = getelementptr inbounds i8, ptr %25, i32 8
  %30 = load i32, ptr %29, align 4, !noalias !22
  %31 = getelementptr inbounds i8, ptr %25, i32 12
  %32 = load i32, ptr %31, align 4, !noalias !22
  %33 = getelementptr inbounds i8, ptr %25, i32 16
  %34 = load i32, ptr %33, align 4, !noalias !22
  %35 = getelementptr inbounds i8, ptr %25, i32 20
  %36 = load i32, ptr %35, align 4, !noalias !22
  %37 = getelementptr inbounds i8, ptr %25, i32 24
  %38 = load i32, ptr %37, align 4, !noalias !22
  %39 = icmp eq i32 %15, 3
  br i1 %39, label %58, label %40

40:                                               ; preds = %13
  %41 = getelementptr [4 x i64], ptr @ZSTD_estimateCCtxSize_internal.srcSizeTiers, i32 0, i32 %15
  %42 = load i64, ptr %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = icmp ult i32 %43, 64
  %45 = add nsw i32 %43, -1
  %46 = tail call i32 @llvm.ctlz.i32(i32 %45, i1 false) #23, !range !9
  %47 = xor i32 %46, 31
  %48 = add nuw nsw i32 %47, 1
  %49 = select i1 %44, i32 6, i32 %48
  %50 = tail call i32 @llvm.umin.i32(i32 %26, i32 %49) #23
  %51 = icmp ugt i32 %38, 5
  %52 = sext i1 %51 to i32
  %53 = add i32 %28, %52
  %54 = add nuw nsw i32 %50, 1
  %55 = tail call i32 @llvm.umin.i32(i32 %30, i32 %54) #23
  %56 = tail call i32 @llvm.usub.sat.i32(i32 %53, i32 %50) #23
  %57 = sub i32 %28, %56
  br label %58

58:                                               ; preds = %40, %13
  %59 = phi i32 [ %50, %40 ], [ %26, %13 ]
  %60 = phi i32 [ %57, %40 ], [ %28, %13 ]
  %61 = phi i32 [ %55, %40 ], [ %30, %13 ]
  %62 = select i1 %7, i32 %12, i32 %36
  %63 = tail call i32 @llvm.umax.i32(i32 %59, i32 10) #23
  %64 = insertvalue [7 x i32] poison, i32 %63, 0
  %65 = insertvalue [7 x i32] %64, i32 %60, 1
  %66 = insertvalue [7 x i32] %65, i32 %61, 2
  %67 = insertvalue [7 x i32] %66, i32 %32, 3
  %68 = insertvalue [7 x i32] %67, i32 %34, 4
  %69 = insertvalue [7 x i32] %68, i32 %62, 5
  %70 = insertvalue [7 x i32] %69, i32 %38, 6
  %71 = tail call i32 @ZSTD_estimateCCtxSize_usingCParams([7 x i32] %70) #23
  %72 = icmp ugt i32 %71, %14
  br i1 %72, label %73, label %75

73:                                               ; preds = %58
  %74 = tail call i32 @ZSTD_estimateCCtxSize_usingCParams([7 x i32] %70) #23
  br label %75

75:                                               ; preds = %73, %58
  %76 = phi i32 [ %74, %73 ], [ %14, %58 ]
  %77 = add nuw nsw i32 %15, 1
  %78 = icmp eq i32 %77, 4
  br i1 %78, label %79, label %13

79:                                               ; preds = %75
  %80 = tail call i32 @llvm.umax.i32(i32 %76, i32 %4)
  %81 = add i32 %5, 1
  %82 = icmp sgt i32 %81, %0
  br i1 %82, label %83, label %3

83:                                               ; preds = %79
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_estimateCStreamSize_usingCCtxParams(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 4
  %3 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #23
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false), !annotation !8
  call void @ZSTD_getCParamsFromCCtxParams(ptr nonnull sret(%struct.ZSTD_compressionParameters) align 4 %2, ptr noundef %0, i64 noundef -1, i32 noundef 0, i32 noundef 0)
  %7 = load i32, ptr %2, align 4
  %8 = shl nuw i32 1, %7
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 131072)
  %10 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 15
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = add nuw i32 %9, %8
  %14 = select i1 %12, i32 %13, i32 0
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 16
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %6
  %19 = lshr i32 %9, 8
  %20 = icmp ult i32 %7, 17
  %21 = sub nuw nsw i32 131072, %9
  %22 = lshr i32 %21, 11
  %23 = select i1 %20, i32 %22, i32 0
  %24 = add nuw nsw i32 %9, 1
  %25 = add nuw nsw i32 %24, %19
  %26 = add nuw nsw i32 %25, %23
  br label %27

27:                                               ; preds = %18, %6
  %28 = phi i32 [ %26, %18 ], [ 0, %6 ]
  %29 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 13
  %30 = call fastcc i32 @ZSTD_estimateCCtxSize_usingCCtxParams_internal(ptr noundef nonnull %2, ptr noundef %29, i32 noundef 1, i32 noundef %14, i32 noundef %28, i64 noundef -1)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #23
  br label %31

31:                                               ; preds = %27, %1
  %32 = phi i32 [ %30, %27 ], [ -1, %1 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_estimateCStreamSize_usingCParams([7 x i32] %0) local_unnamed_addr #1 {
  %2 = alloca %struct.ZSTD_compressionParameters, align 4
  %3 = alloca %struct.ZSTD_compressionParameters, align 4
  %4 = alloca %struct.ZSTD_CCtx_params_s, align 4
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %4) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3)
  %5 = extractvalue [7 x i32] %0, 0
  store i32 %5, ptr %3, align 4, !noalias !25
  %6 = extractvalue [7 x i32] %0, 1
  %7 = getelementptr inbounds [7 x i32], ptr %3, i32 0, i32 1
  store i32 %6, ptr %7, align 4, !noalias !25
  %8 = extractvalue [7 x i32] %0, 2
  %9 = getelementptr inbounds [7 x i32], ptr %3, i32 0, i32 2
  store i32 %8, ptr %9, align 4, !noalias !25
  %10 = extractvalue [7 x i32] %0, 3
  %11 = getelementptr inbounds [7 x i32], ptr %3, i32 0, i32 3
  store i32 %10, ptr %11, align 4, !noalias !25
  %12 = extractvalue [7 x i32] %0, 4
  %13 = getelementptr inbounds [7 x i32], ptr %3, i32 0, i32 4
  store i32 %12, ptr %13, align 4, !noalias !25
  %14 = extractvalue [7 x i32] %0, 5
  %15 = getelementptr inbounds [7 x i32], ptr %3, i32 0, i32 5
  store i32 %14, ptr %15, align 4, !noalias !25
  %16 = extractvalue [7 x i32] %0, 6
  %17 = getelementptr inbounds [7 x i32], ptr %3, i32 0, i32 6
  store i32 %16, ptr %17, align 4, !noalias !25
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(140) %4, i8 0, i64 140, i1 false)
  store i32 3, ptr %18, align 4, !alias.scope !25
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 2
  store i32 1, ptr %19, align 4, !alias.scope !25
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %20, ptr noundef nonnull align 4 dereferenceable(28) %3, i32 28, i1 false) #23
  %21 = icmp ult i32 %16, 7
  %22 = icmp ult i32 %5, 27
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3)
  br label %30

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 13
  store i32 1, ptr %26, align 4, !alias.scope !25
  call void @ZSTD_ldm_adjustParameters(ptr noundef %26, ptr noundef nonnull %3) #23
  %27 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, 0
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3)
  br i1 %29, label %55, label %30

30:                                               ; preds = %25, %24
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #23
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false) #23, !annotation !8
  call void @ZSTD_getCParamsFromCCtxParams(ptr nonnull sret(%struct.ZSTD_compressionParameters) align 4 %2, ptr noundef nonnull %4, i64 noundef -1, i32 noundef 0, i32 noundef 0) #23
  %31 = load i32, ptr %2, align 4
  %32 = shl nuw i32 1, %31
  %33 = call i32 @llvm.umin.i32(i32 %32, i32 131072) #23
  %34 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 15
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  %37 = add nuw i32 %33, %32
  %38 = select i1 %36, i32 %37, i32 0
  %39 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 16
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %30
  %43 = lshr i32 %33, 8
  %44 = icmp ult i32 %31, 17
  %45 = sub nuw nsw i32 131072, %33
  %46 = lshr i32 %45, 11
  %47 = select i1 %44, i32 %46, i32 0
  %48 = add nuw nsw i32 %33, 1
  %49 = add nuw nsw i32 %48, %43
  %50 = add nuw nsw i32 %49, %47
  br label %51

51:                                               ; preds = %42, %30
  %52 = phi i32 [ %50, %42 ], [ 0, %30 ]
  %53 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 13
  %54 = call fastcc i32 @ZSTD_estimateCCtxSize_usingCCtxParams_internal(ptr noundef nonnull %2, ptr noundef %53, i32 noundef 1, i32 noundef %38, i32 noundef %52, i64 noundef -1) #23
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #23
  br label %55

55:                                               ; preds = %51, %25
  %56 = phi i32 [ %54, %51 ], [ -1, %25 ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %4) #23
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_estimateCStreamSize(i32 noundef %0) local_unnamed_addr #1 {
  %2 = tail call i32 @llvm.smin.i32(i32 %0, i32 1)
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i32 [ 0, %1 ], [ %37, %3 ]
  %5 = phi i32 [ %2, %1 ], [ %38, %3 ]
  %6 = icmp eq i32 %5, 0
  %7 = icmp slt i32 %5, 0
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 22) #23
  %9 = select i1 %7, i32 0, i32 %8
  %10 = select i1 %6, i32 3, i32 %9
  %11 = getelementptr [4 x [23 x %struct.ZSTD_compressionParameters]], ptr @ZSTD_defaultCParameters, i32 0, i32 0, i32 %10
  %12 = load i32, ptr %11, align 4, !noalias !28
  %13 = getelementptr inbounds i8, ptr %11, i32 4
  %14 = load i32, ptr %13, align 4, !noalias !28
  %15 = getelementptr inbounds i8, ptr %11, i32 8
  %16 = load i32, ptr %15, align 4, !noalias !28
  %17 = getelementptr inbounds i8, ptr %11, i32 12
  %18 = load i32, ptr %17, align 4, !noalias !28
  %19 = getelementptr inbounds i8, ptr %11, i32 16
  %20 = load i32, ptr %19, align 4, !noalias !28
  %21 = getelementptr inbounds i8, ptr %11, i32 20
  %22 = load i32, ptr %21, align 4, !noalias !28
  %23 = getelementptr inbounds i8, ptr %11, i32 24
  %24 = load i32, ptr %23, align 4, !noalias !28
  %25 = tail call i32 @llvm.umax.i32(i32 %5, i32 -131072) #23
  %26 = sub nsw i32 0, %25
  %27 = select i1 %7, i32 %26, i32 %22
  %28 = tail call i32 @llvm.umax.i32(i32 %12, i32 10) #23
  %29 = insertvalue [7 x i32] poison, i32 %28, 0
  %30 = insertvalue [7 x i32] %29, i32 %14, 1
  %31 = insertvalue [7 x i32] %30, i32 %16, 2
  %32 = insertvalue [7 x i32] %31, i32 %18, 3
  %33 = insertvalue [7 x i32] %32, i32 %20, 4
  %34 = insertvalue [7 x i32] %33, i32 %27, 5
  %35 = insertvalue [7 x i32] %34, i32 %24, 6
  %36 = tail call i32 @ZSTD_estimateCStreamSize_usingCParams([7 x i32] %35) #23
  %37 = tail call i32 @llvm.umax.i32(i32 %36, i32 %4)
  %38 = add i32 %5, 1
  %39 = icmp sgt i32 %38, %0
  br i1 %39, label %40, label %3

40:                                               ; preds = %3
  ret i32 %37
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ZSTD_getFrameProgression(ptr noalias nocapture writeonly sret(%struct.ZSTD_frameProgression) align 8 %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i32 0, i32 30
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i32 0, i32 29
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %8, %10
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ %11, %6 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i32 0, i32 10
  %15 = load i64, ptr %14, align 8
  %16 = zext i32 %13 to i64
  %17 = add i64 %15, %16
  store i64 %17, ptr %0, align 8
  %18 = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %0, i32 0, i32 1
  store i64 %15, ptr %18, align 8
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i32 0, i32 11
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %0, i32 0, i32 2
  store i64 %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %0, i32 0, i32 3
  store i64 %20, ptr %22, align 8
  %23 = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %0, i32 0, i32 4
  store i32 0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %0, i32 0, i32 5
  store i32 0, ptr %24, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_toFlushNow(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local void @ZSTD_reset_compressedBlockState(ptr nocapture noundef writeonly %0) local_unnamed_addr #12 {
  %2 = getelementptr i8, ptr %0, i32 4580
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i32 12, i1 false)
  %3 = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %0, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i32 0, i32 1, i32 3
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i32 0, i32 1, i32 4
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i32 0, i32 1, i32 5
  store i32 0, ptr %6, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ZSTD_invalidateRepCodes(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.ZSTD_compressedBlockState_t, ptr %3, i32 0, i32 1, i32 0
  store i32 0, ptr %4, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr %struct.ZSTD_compressedBlockState_t, ptr %5, i32 0, i32 1, i32 1
  store i32 0, ptr %6, align 4
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr %struct.ZSTD_compressedBlockState_t, ptr %7, i32 0, i32 1, i32 2
  store i32 0, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_copyCCtx(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.ZSTD_CCtx_params_s, align 4
  %5 = load i32, ptr %1, align 8
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %79

7:                                                ; preds = %3
  %8 = icmp eq i64 %2, 0
  %9 = select i1 %8, i64 -1, i64 %2
  %10 = icmp ne i64 %9, -1
  %11 = zext i1 %10 to i32
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i32 0, i32 26
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i32 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(12) %14, ptr noundef align 8 dereferenceable(12) %15, i32 12, i1 false) #23
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %4) #23
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(140) %4, ptr noundef align 4 dereferenceable(140) %16, i32 140, i1 false) #23
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 1
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i32 0, i32 4, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %17, ptr noundef align 4 dereferenceable(28) %18, i32 28, i1 false) #23
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 2
  store i32 %11, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 2, i32 1
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 2, i32 2
  store i32 0, ptr %21, align 4
  %22 = tail call fastcc i32 @ZSTD_resetCCtx_internal(ptr noundef %0, ptr noundef nonnull byval(%struct.ZSTD_CCtx_params_s) align 4 %4, i64 noundef %9, i32 noundef 1, i32 noundef %13) #23
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %4) #23
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 4
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i32 0, i32 4, i32 1, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %33, label %29

29:                                               ; preds = %7
  %30 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i32 0, i32 4, i32 1, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = shl i32 4, %31
  br label %33

33:                                               ; preds = %29, %7
  %34 = phi i32 [ %32, %29 ], [ 0, %7 ]
  %35 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i32 0, i32 4, i32 1, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i32 0, i32 24
  %38 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i32 0, i32 24, i32 2
  %39 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i32 0, i32 24, i32 2, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  %42 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24
  %43 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2
  %44 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i32 0, i32 24, i32 2, i32 4
  %47 = load ptr, ptr %46, align 4
  %48 = shl i32 4, %36
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %45, ptr align 4 %47, i32 %48, i1 false) #23
  %49 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 6
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i32 0, i32 24, i32 2, i32 6
  %52 = load ptr, ptr %51, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %50, ptr align 4 %52, i32 %34, i1 false) #23
  %53 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i32 0, i32 24, i32 2, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = shl i32 4, %40
  %58 = select i1 %41, i32 0, i32 %57
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %54, ptr align 4 %56, i32 %58, i1 false) #23
  %59 = load ptr, ptr %25, align 4
  %60 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = icmp ult ptr %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %33
  store ptr %61, ptr %25, align 4
  br label %64

64:                                               ; preds = %63, %33
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %43, ptr noundef align 4 dereferenceable(20) %38, i32 20, i1 false) #23
  %65 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i32 0, i32 24, i32 2, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 2
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i32 0, i32 24, i32 2, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 1
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 5
  store i32 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %1, i32 0, i32 6
  %75 = load i32, ptr %74, align 8
  %76 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 6
  store i32 %75, ptr %76, align 8
  %77 = load ptr, ptr %42, align 4
  %78 = load ptr, ptr %37, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(4592) %77, ptr noundef align 4 dereferenceable(4592) %78, i32 4592, i1 false) #23
  br label %79

79:                                               ; preds = %64, %3
  %80 = phi i32 [ 0, %64 ], [ -60, %3 ]
  ret i32 %80
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ZSTD_seqToCodes(ptr nocapture noundef readonly %0) local_unnamed_addr #14 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.seqStore_t, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.seqStore_t, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.seqStore_t, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.seqStore_t, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %2
  br i1 %11, label %58, label %12

12:                                               ; preds = %1
  %13 = ptrtoint ptr %10 to i32
  %14 = ptrtoint ptr %2 to i32
  %15 = sub i32 %13, %14
  %16 = ashr i32 %15, 3
  %17 = call i32 @llvm.umax.i32(i32 %16, i32 1)
  br label %18

18:                                               ; preds = %52, %12
  %19 = phi i32 [ %56, %52 ], [ 0, %12 ]
  %20 = getelementptr %struct.seqDef_s, ptr %2, i32 %19
  %21 = getelementptr %struct.seqDef_s, ptr %2, i32 %19, i32 1
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  %24 = getelementptr %struct.seqDef_s, ptr %2, i32 %19, i32 2
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp ugt i16 %22, 63
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = tail call i32 @llvm.ctlz.i32(i32 %23, i1 true) #23, !range !9
  %30 = sub nuw nsw i32 50, %29
  br label %35

31:                                               ; preds = %18
  %32 = getelementptr [64 x i8], ptr @ZSTD_LLcode.LL_Code, i32 0, i32 %23
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i32 [ %30, %28 ], [ %34, %31 ]
  %37 = trunc i32 %36 to i8
  %38 = getelementptr i8, ptr %4, i32 %19
  store i8 %37, ptr %38, align 1
  %39 = load i32, ptr %20, align 4
  %40 = tail call i32 @llvm.ctlz.i32(i32 %39, i1 false) #23, !range !9
  %41 = trunc i32 %40 to i8
  %42 = xor i8 %41, 31
  %43 = getelementptr i8, ptr %6, i32 %19
  store i8 %42, ptr %43, align 1
  %44 = icmp ugt i16 %25, 127
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = tail call i32 @llvm.ctlz.i32(i32 %26, i1 true) #23, !range !9
  %47 = sub nuw nsw i32 67, %46
  br label %52

48:                                               ; preds = %35
  %49 = getelementptr [128 x i8], ptr @ZSTD_MLcode.ML_Code, i32 0, i32 %26
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i32 [ %47, %45 ], [ %51, %48 ]
  %54 = trunc i32 %53 to i8
  %55 = getelementptr i8, ptr %8, i32 %19
  store i8 %54, ptr %55, align 1
  %56 = add nuw i32 %19, 1
  %57 = icmp eq i32 %56, %17
  br i1 %57, label %58, label %18

58:                                               ; preds = %52, %1
  %59 = getelementptr inbounds %struct.seqStore_t, ptr %0, i32 0, i32 9
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.seqStore_t, ptr %0, i32 0, i32 10
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr i8, ptr %4, i32 %64
  store i8 35, ptr %65, align 1
  %66 = load i32, ptr %59, align 4
  br label %67

67:                                               ; preds = %62, %58
  %68 = phi i32 [ %66, %62 ], [ %60, %58 ]
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.seqStore_t, ptr %0, i32 0, i32 10
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr i8, ptr %8, i32 %72
  store i8 52, ptr %73, align 1
  br label %74

74:                                               ; preds = %70, %67
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @ZSTD_selectBlockCompressor(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr [4 x [10 x ptr]], ptr @ZSTD_selectBlockCompressor.blockCompressor, i32 0, i32 %1, i32 %0
  %4 = load ptr, ptr %3, align 4
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_fast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_doubleFast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_greedy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_lazy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_lazy2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_btlazy2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_btopt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_btultra(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_btultra2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_fast_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_doubleFast_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_greedy_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_lazy_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_lazy2_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_btlazy2_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_btopt_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_btultra_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_fast_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_doubleFast_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_greedy_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_lazy_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_lazy2_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_btlazy2_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_btopt_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_btultra_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_greedy_dedicatedDictSearch(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_lazy_dedicatedDictSearch(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBlock_lazy2_dedicatedDictSearch(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ZSTD_resetSeqStore(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.seqStore_t, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.seqStore_t, ptr %0, i32 0, i32 3
  store ptr %3, ptr %4, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.seqStore_t, ptr %0, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.seqStore_t, ptr %0, i32 0, i32 9
  store i32 0, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_generateSequences(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = alloca %struct.ZSTD_outBuffer_s, align 4
  %7 = alloca %struct.ZSTD_inBuffer_s, align 4
  %8 = lshr i32 %4, 8
  %9 = add i32 %8, %4
  %10 = icmp ult i32 %4, 131072
  %11 = sub i32 131072, %4
  %12 = lshr i32 %11, 11
  %13 = select i1 %10, i32 %12, i32 0
  %14 = add i32 %9, %13
  %15 = tail call ptr @ZSTD_customMalloc(i32 noundef %14, [3 x i32] zeroinitializer) #23
  %16 = icmp eq ptr %15, null
  br i1 %16, label %34, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 16
  store i32 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 16, i32 1
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 16, i32 2
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 16, i32 3
  store i32 %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3, i32 15
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3, i32 16
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 36
  store i32 0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 9
  store i64 0, ptr %27, align 8
  store i32 1, ptr %22, align 4
  store i32 1, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  store ptr %15, ptr %6, align 4
  %28 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %6, i32 0, i32 1
  store i32 %14, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %6, i32 0, i32 2
  store i32 0, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  store ptr %3, ptr %7, align 4
  %30 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %7, i32 0, i32 1
  store i32 %4, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %7, i32 0, i32 2
  store i32 0, ptr %31, align 4
  %32 = call i32 @ZSTD_compressStream2(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 2) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  store i32 %23, ptr %22, align 4
  store i32 %25, ptr %24, align 4
  tail call void @ZSTD_customFree(ptr noundef nonnull %15, [3 x i32] zeroinitializer) #23
  %33 = load i32, ptr %20, align 4
  br label %34

34:                                               ; preds = %17, %5
  %35 = phi i32 [ %33, %17 ], [ -64, %5 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compress2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = alloca %struct.ZSTD_outBuffer_s, align 4
  %7 = alloca %struct.ZSTD_inBuffer_s, align 4
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3, i32 15
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3, i32 16
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 36
  store i32 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 9
  store i64 0, ptr %13, align 8
  store i32 1, ptr %8, align 4
  store i32 1, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  store ptr %1, ptr %6, align 4
  %14 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %6, i32 0, i32 1
  store i32 %2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %6, i32 0, i32 2
  store i32 0, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  store ptr %3, ptr %7, align 4
  %16 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %7, i32 0, i32 1
  store i32 %4, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %7, i32 0, i32 2
  store i32 0, ptr %17, align 4
  %18 = call i32 @ZSTD_compressStream2(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 2) #23
  %19 = load i32, ptr %15, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  store i32 %9, ptr %8, align 4
  store i32 %11, ptr %10, align 4
  %20 = icmp ult i32 %18, -119
  %21 = icmp eq i32 %18, 0
  %22 = select i1 %21, i32 %19, i32 -70
  %23 = select i1 %20, i32 %22, i32 %18
  ret i32 %23
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_mergeBlockDelimiters(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #15 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %32, label %4

4:                                                ; preds = %2
  %5 = add i32 %1, -1
  br label %6

6:                                                ; preds = %28, %4
  %7 = phi i32 [ 0, %4 ], [ %29, %28 ]
  %8 = phi i32 [ 0, %4 ], [ %30, %28 ]
  %9 = getelementptr %struct.ZSTD_Sequence, ptr %0, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %6
  %13 = getelementptr %struct.ZSTD_Sequence, ptr %0, i32 %8, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = icmp eq i32 %8, %5
  br i1 %17, label %28, label %18

18:                                               ; preds = %16
  %19 = getelementptr %struct.ZSTD_Sequence, ptr %0, i32 %8, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = add nuw i32 %8, 1
  %22 = getelementptr %struct.ZSTD_Sequence, ptr %0, i32 %21, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %20
  store i32 %24, ptr %22, align 4
  br label %28

25:                                               ; preds = %12, %6
  %26 = getelementptr %struct.ZSTD_Sequence, ptr %0, i32 %7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %26, ptr noundef align 4 dereferenceable(16) %9, i32 16, i1 false)
  %27 = add i32 %7, 1
  br label %28

28:                                               ; preds = %25, %18, %16
  %29 = phi i32 [ %7, %18 ], [ %7, %16 ], [ %27, %25 ]
  %30 = add nuw i32 %8, 1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %32, label %6

32:                                               ; preds = %28, %2
  %33 = phi i32 [ 0, %2 ], [ %29, %28 ]
  ret i32 %33
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_writeSkippableFrame(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #8 {
  %6 = add i32 %3, 8
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = icmp ugt i32 %4, 15
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = add nuw nsw i32 %4, 407710288
  store i32 %11, ptr %0, align 1
  %12 = getelementptr i8, ptr %0, i32 4
  store i32 %3, ptr %12, align 1
  %13 = getelementptr i8, ptr %0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %13, ptr align 1 %2, i32 %3, i1 false)
  br label %14

14:                                               ; preds = %10, %8, %5
  %15 = phi i32 [ %6, %10 ], [ -70, %5 ], [ -42, %8 ]
  ret i32 %15
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @ZSTD_writeLastEmptyBlock(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #16 {
  %3 = icmp ult i32 %1, 3
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  store i16 1, ptr %0, align 1
  %5 = getelementptr i8, ptr %0, i32 2
  store i8 0, ptr %5, align 1
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i32 [ 3, %4 ], [ -70, %2 ]
  ret i32 %7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_referenceExternalSequences(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 {
  %4 = load i32, ptr %0, align 8
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 13
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 23
  store ptr %1, ptr %11, align 8
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 23, i32 3
  store i32 %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 23, i32 4
  store i32 %2, ptr %13, align 8
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 23, i32 1
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 23, i32 2
  store i32 0, ptr %15, align 8
  br label %16

16:                                               ; preds = %10, %6, %3
  %17 = phi i32 [ 0, %10 ], [ -60, %3 ], [ -40, %6 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressContinue(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = tail call fastcc i32 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 1, i32 noundef 0)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #1 {
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2
  %9 = load i32, ptr %0, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %324, label %11

11:                                               ; preds = %7
  %12 = icmp eq i32 %5, 0
  %13 = xor i1 %12, true
  %14 = icmp eq i32 %9, 1
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 9
  %19 = load i64, ptr %18, align 8
  %20 = add i64 %19, -1
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = tail call fastcc i32 @ZSTD_writeFrameHeader(ptr noundef %1, i32 noundef %2, ptr noundef %17, i64 noundef %20, i32 noundef %22)
  %24 = icmp ult i32 %23, -119
  br i1 %24, label %25, label %324

25:                                               ; preds = %16
  %26 = sub i32 %2, %23
  %27 = getelementptr i8, ptr %1, i32 %23
  store i32 2, ptr %0, align 8
  br label %28

28:                                               ; preds = %25, %11
  %29 = phi i32 [ %26, %25 ], [ %2, %11 ]
  %30 = phi ptr [ %27, %25 ], [ %1, %11 ]
  %31 = phi i32 [ %23, %25 ], [ 0, %11 ]
  %32 = icmp eq i32 %4, 0
  br i1 %32, label %324, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %8, align 4
  %35 = icmp eq ptr %34, %3
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  br label %58

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = ptrtoint ptr %34 to i32
  %47 = ptrtoint ptr %45 to i32
  %48 = sub i32 %46, %47
  %49 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 0, i32 4
  store i32 %50, ptr %51, align 4
  store i32 %48, ptr %49, align 4
  %52 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 0, i32 2
  store ptr %45, ptr %52, align 4
  %53 = sub i32 0, %48
  %54 = getelementptr i8, ptr %3, i32 %53
  store ptr %54, ptr %44, align 4
  %55 = sub i32 %48, %50
  %56 = icmp ult i32 %55, 8
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  store i32 %48, ptr %51, align 4
  br label %58

58:                                               ; preds = %57, %43, %36
  %59 = phi i32 [ %42, %36 ], [ %48, %57 ], [ %48, %43 ]
  %60 = phi i32 [ %40, %36 ], [ %48, %57 ], [ %50, %43 ]
  %61 = phi ptr [ %38, %36 ], [ %45, %57 ], [ %45, %43 ]
  %62 = getelementptr i8, ptr %3, i32 %4
  store ptr %62, ptr %8, align 4
  %63 = getelementptr i8, ptr %61, i32 %60
  %64 = icmp ugt ptr %62, %63
  %65 = getelementptr i8, ptr %61, i32 %59
  %66 = icmp ugt ptr %65, %3
  %67 = and i1 %64, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 0, i32 4
  %70 = ptrtoint ptr %62 to i32
  %71 = ptrtoint ptr %61 to i32
  %72 = sub i32 %70, %71
  %73 = tail call i32 @llvm.smin.i32(i32 %72, i32 %59) #23
  store i32 %73, ptr %69, align 4
  br label %74

74:                                               ; preds = %68, %58
  br i1 %35, label %77, label %75

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 2
  store i32 %59, ptr %76, align 4
  br label %77

77:                                               ; preds = %75, %74
  %78 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4
  %79 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 13
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %123, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 20
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, %3
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 20, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 20, i32 0, i32 4
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 20, i32 0, i32 3
  %92 = load i32, ptr %91, align 4
  br label %108

93:                                               ; preds = %82
  %94 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 20, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = ptrtoint ptr %84 to i32
  %97 = ptrtoint ptr %95 to i32
  %98 = sub i32 %96, %97
  %99 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 20, i32 0, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 20, i32 0, i32 4
  store i32 %100, ptr %101, align 4
  store i32 %98, ptr %99, align 4
  %102 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 20, i32 0, i32 2
  store ptr %95, ptr %102, align 4
  %103 = sub i32 0, %98
  %104 = getelementptr i8, ptr %3, i32 %103
  store ptr %104, ptr %94, align 4
  %105 = sub i32 %98, %100
  %106 = icmp ult i32 %105, 8
  br i1 %106, label %107, label %108

107:                                              ; preds = %93
  store i32 %98, ptr %101, align 4
  br label %108

108:                                              ; preds = %107, %93, %86
  %109 = phi i32 [ %92, %86 ], [ %98, %107 ], [ %98, %93 ]
  %110 = phi i32 [ %90, %86 ], [ %98, %107 ], [ %100, %93 ]
  %111 = phi ptr [ %88, %86 ], [ %95, %107 ], [ %95, %93 ]
  store ptr %62, ptr %83, align 4
  %112 = getelementptr i8, ptr %111, i32 %110
  %113 = icmp ugt ptr %62, %112
  %114 = getelementptr i8, ptr %111, i32 %109
  %115 = icmp ugt ptr %114, %3
  %116 = and i1 %113, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %108
  %118 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 20, i32 0, i32 4
  %119 = ptrtoint ptr %62 to i32
  %120 = ptrtoint ptr %111 to i32
  %121 = sub i32 %119, %120
  %122 = tail call i32 @llvm.smin.i32(i32 %121, i32 %109) #23
  store i32 %122, ptr %118, align 4
  br label %123

123:                                              ; preds = %117, %108, %77
  br i1 %12, label %124, label %127

124:                                              ; preds = %123
  %125 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7
  tail call fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef %8, ptr noundef %125, ptr noundef %78, ptr noundef %3, ptr noundef %62)
  %126 = tail call fastcc i32 @ZSTD_compressBlock_internal(ptr noundef %0, ptr noundef %30, i32 noundef %29, ptr noundef %3, i32 noundef %4, i32 noundef 0)
  br label %304

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 8
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 1
  %131 = load i32, ptr %130, align 4
  %132 = shl nuw i32 1, %131
  %133 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 2, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %127
  %137 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 12
  %138 = tail call i32 @xxh64_update(ptr noundef %137, ptr noundef %3, i32 noundef %4) #23
  br label %139

139:                                              ; preds = %136, %127
  %140 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7
  %141 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 1
  %142 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 0, i32 1
  %143 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 9
  %144 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 2
  %145 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 0, i32 4
  %146 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 5
  %147 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 17
  %148 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19
  %149 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 1
  %150 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 3
  %151 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 2
  %152 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 1, i32 6
  %153 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24
  %154 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 1
  br label %155

155:                                              ; preds = %289, %139
  %156 = phi ptr [ %30, %139 ], [ %292, %289 ]
  %157 = phi ptr [ %3, %139 ], [ %167, %289 ]
  %158 = phi i32 [ %4, %139 ], [ %291, %289 ]
  %159 = phi i32 [ %129, %139 ], [ %166, %289 ]
  %160 = phi i32 [ %29, %139 ], [ %293, %289 ]
  %161 = icmp uge i32 %159, %158
  %162 = zext i1 %161 to i32
  %163 = and i32 %162, %6
  %164 = icmp ult i32 %160, 6
  br i1 %164, label %324, label %165

165:                                              ; preds = %155
  %166 = tail call i32 @llvm.umin.i32(i32 %158, i32 %159) #23
  %167 = getelementptr i8, ptr %157, i32 %166
  tail call fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef %8, ptr noundef %140, ptr noundef %78, ptr noundef %157, ptr noundef %167) #23
  %168 = load ptr, ptr %142, align 4
  %169 = ptrtoint ptr %167 to i32
  %170 = ptrtoint ptr %168 to i32
  %171 = sub i32 %169, %170
  %172 = load i32, ptr %141, align 4
  %173 = add i32 %172, %132
  %174 = icmp ugt i32 %171, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %165
  store i32 0, ptr %141, align 4
  store ptr null, ptr %143, align 4
  br label %176

176:                                              ; preds = %175, %165
  %177 = load i32, ptr %144, align 4
  %178 = load i32, ptr %145, align 4
  %179 = icmp ult i32 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  store i32 %178, ptr %144, align 4
  br label %181

181:                                              ; preds = %180, %176
  %182 = load i32, ptr %146, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %257, label %184

184:                                              ; preds = %181
  %185 = tail call fastcc i32 @ZSTD_buildSeqStore(ptr noundef %0, ptr noundef %157, i32 noundef %166) #23
  %186 = icmp ult i32 %185, -119
  br i1 %186, label %187, label %324

187:                                              ; preds = %184
  %188 = icmp eq i32 %185, 0
  br i1 %188, label %189, label %238

189:                                              ; preds = %187
  %190 = load i32, ptr %147, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %219

192:                                              ; preds = %189
  %193 = load ptr, ptr %149, align 4
  %194 = load ptr, ptr %148, align 4
  %195 = ptrtoint ptr %193 to i32
  %196 = ptrtoint ptr %194 to i32
  %197 = sub i32 %195, %196
  %198 = load ptr, ptr %150, align 4
  %199 = load ptr, ptr %151, align 4
  %200 = ptrtoint ptr %198 to i32
  %201 = ptrtoint ptr %199 to i32
  %202 = sub i32 %200, %201
  %203 = icmp ugt i32 %197, 31
  %204 = icmp ugt i32 %202, 9
  %205 = select i1 %203, i1 true, i1 %204
  br i1 %205, label %219, label %206

206:                                              ; preds = %192
  %207 = tail call fastcc i32 @ZSTD_isRLE(ptr noundef %157, i32 noundef %166) #23
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %219, label %209

209:                                              ; preds = %206
  %210 = load i8, ptr %157, align 1
  %211 = shl i32 %166, 3
  %212 = or i32 %163, %211
  %213 = trunc i32 %212 to i16
  %214 = or i16 %213, 2
  store i16 %214, ptr %156, align 1
  %215 = lshr i32 %211, 16
  %216 = trunc i32 %215 to i8
  %217 = getelementptr i8, ptr %156, i32 2
  store i8 %216, ptr %217, align 1
  %218 = getelementptr i8, ptr %156, i32 3
  store i8 %210, ptr %218, align 1
  br label %250

219:                                              ; preds = %206, %192, %189
  %220 = tail call i32 @ZSTD_compressSuperBlock(ptr noundef %0, ptr noundef %156, i32 noundef %160, ptr noundef %157, i32 noundef %166, i32 noundef %163) #23
  %221 = icmp eq i32 %220, -70
  br i1 %221, label %238, label %222

222:                                              ; preds = %219
  %223 = icmp ult i32 %220, -119
  br i1 %223, label %224, label %324

224:                                              ; preds = %222
  %225 = load i32, ptr %152, align 4
  %226 = icmp ugt i32 %225, 7
  %227 = add i32 %225, -1
  %228 = select i1 %226, i32 %227, i32 6
  %229 = lshr i32 %166, %228
  %230 = icmp ne i32 %220, 0
  %231 = add i32 %166, 1
  %232 = sub i32 %231, %229
  %233 = icmp ult i32 %220, %232
  %234 = select i1 %230, i1 %233, i1 false
  br i1 %234, label %235, label %238

235:                                              ; preds = %224
  %236 = load ptr, ptr %153, align 4
  %237 = load ptr, ptr %154, align 4
  store ptr %237, ptr %153, align 4
  store ptr %236, ptr %154, align 4
  br label %250

238:                                              ; preds = %224, %219, %187
  %239 = add i32 %166, 3
  %240 = icmp ugt i32 %239, %160
  br i1 %240, label %324, label %241

241:                                              ; preds = %238
  %242 = shl i32 %166, 3
  %243 = or i32 %163, %242
  %244 = trunc i32 %243 to i16
  store i16 %244, ptr %156, align 1
  %245 = lshr i32 %242, 16
  %246 = trunc i32 %245 to i8
  %247 = getelementptr i8, ptr %156, i32 2
  store i8 %246, ptr %247, align 1
  %248 = getelementptr i8, ptr %156, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %248, ptr align 1 %157, i32 %166, i1 false) #23
  %249 = icmp ult i32 %239, -119
  br i1 %249, label %250, label %324

250:                                              ; preds = %241, %235, %209
  %251 = phi i32 [ %239, %241 ], [ %220, %235 ], [ 4, %209 ]
  %252 = load ptr, ptr %153, align 4
  %253 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %252, i32 0, i32 1, i32 3
  %254 = load i32, ptr %253, align 4
  %255 = icmp eq i32 %254, 2
  br i1 %255, label %256, label %289

256:                                              ; preds = %250
  store i32 1, ptr %253, align 4
  br label %289

257:                                              ; preds = %181
  %258 = getelementptr i8, ptr %156, i32 3
  %259 = add i32 %160, -3
  %260 = tail call fastcc i32 @ZSTD_compressBlock_internal(ptr noundef %0, ptr noundef %258, i32 noundef %259, ptr noundef %157, i32 noundef %166, i32 noundef 1) #23
  %261 = icmp ult i32 %260, -119
  br i1 %261, label %262, label %324

262:                                              ; preds = %257
  switch i32 %260, label %276 [
    i32 0, label %263
    i32 1, label %274
  ]

263:                                              ; preds = %262
  %264 = add i32 %166, 3
  %265 = icmp ugt i32 %264, %160
  br i1 %265, label %324, label %266

266:                                              ; preds = %263
  %267 = shl i32 %166, 3
  %268 = or i32 %163, %267
  %269 = trunc i32 %268 to i16
  store i16 %269, ptr %156, align 1
  %270 = lshr i32 %267, 16
  %271 = trunc i32 %270 to i8
  %272 = getelementptr i8, ptr %156, i32 2
  store i8 %271, ptr %272, align 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %258, ptr align 1 %157, i32 %166, i1 false) #23
  %273 = icmp ult i32 %264, -119
  br i1 %273, label %289, label %324

274:                                              ; preds = %262
  %275 = shl i32 %166, 3
  br label %278

276:                                              ; preds = %262
  %277 = shl i32 %260, 3
  br label %278

278:                                              ; preds = %276, %274
  %279 = phi i32 [ %163, %276 ], [ %275, %274 ]
  %280 = phi i32 [ %277, %276 ], [ %163, %274 ]
  %281 = phi i32 [ 4, %276 ], [ 2, %274 ]
  %282 = or i32 %280, %279
  %283 = or i32 %282, %281
  %284 = trunc i32 %283 to i16
  store i16 %284, ptr %156, align 1
  %285 = lshr i32 %282, 16
  %286 = trunc i32 %285 to i8
  %287 = getelementptr i8, ptr %156, i32 2
  store i8 %286, ptr %287, align 1
  %288 = add nuw i32 %260, 3
  br label %289

289:                                              ; preds = %278, %266, %256, %250
  %290 = phi i32 [ %264, %266 ], [ %288, %278 ], [ %251, %250 ], [ %251, %256 ]
  %291 = sub i32 %158, %166
  %292 = getelementptr i8, ptr %156, i32 %290
  %293 = sub i32 %160, %290
  store i32 0, ptr %147, align 4
  %294 = icmp eq i32 %291, 0
  br i1 %294, label %295, label %155

295:                                              ; preds = %289
  %296 = icmp ne i32 %6, 0
  %297 = icmp ugt ptr %292, %30
  %298 = select i1 %296, i1 %297, i1 false
  br i1 %298, label %299, label %300

299:                                              ; preds = %295
  store i32 3, ptr %0, align 8
  br label %300

300:                                              ; preds = %299, %295
  %301 = ptrtoint ptr %292 to i32
  %302 = ptrtoint ptr %30 to i32
  %303 = sub i32 %301, %302
  br label %304

304:                                              ; preds = %300, %124
  %305 = phi i32 [ %126, %124 ], [ %303, %300 ]
  %306 = icmp ult i32 %305, -119
  br i1 %306, label %307, label %324

307:                                              ; preds = %304
  %308 = zext i32 %4 to i64
  %309 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 10
  %310 = load i64, ptr %309, align 8
  %311 = add i64 %310, %308
  store i64 %311, ptr %309, align 8
  %312 = add i32 %305, %31
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 11
  %315 = load i64, ptr %314, align 8
  %316 = add i64 %315, %313
  store i64 %316, ptr %314, align 8
  %317 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 9
  %318 = load i64, ptr %317, align 8
  %319 = icmp ne i64 %318, 0
  %320 = add i64 %311, 1
  %321 = icmp ugt i64 %320, %318
  %322 = select i1 %319, i1 %321, i1 false
  %323 = select i1 %322, i32 -72, i32 %312
  br label %324

324:                                              ; preds = %307, %304, %266, %263, %257, %241, %238, %222, %184, %155, %28, %16, %7
  %325 = phi i32 [ %23, %16 ], [ -60, %7 ], [ %31, %28 ], [ %305, %304 ], [ %323, %307 ], [ %239, %241 ], [ %185, %184 ], [ -70, %238 ], [ %220, %222 ], [ -70, %263 ], [ -70, %155 ], [ %264, %266 ], [ %260, %257 ]
  ret i32 %325
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_getBlockSize(ptr nocapture noundef readonly %0) local_unnamed_addr #17 {
  %2 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = shl nuw i32 1, %3
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 131072)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBlock(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = shl nuw i32 1, %7
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 131072) #23
  %10 = icmp ult i32 %9, %4
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = tail call fastcc i32 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 0)
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i32 [ -72, %5 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_loadCEntropy(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca [32 x i16], align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [53 x i16], align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [36 x i16], align 2
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #23
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  store i32 31, ptr %6, align 4
  %16 = getelementptr i8, ptr %2, i32 %3
  %17 = getelementptr i8, ptr %2, i32 8
  %18 = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %0, i32 0, i32 1
  store i32 1, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #23
  store i32 255, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #23
  store i32 1, ptr %8, align 4
  %19 = ptrtoint ptr %16 to i32
  %20 = add i32 %3, -8
  %21 = call i32 @HUF_readCTable(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %17, i32 noundef %20, ptr noundef nonnull %8) #23
  %22 = load i32, ptr %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 2, ptr %18, align 4
  br label %25

25:                                               ; preds = %24, %4
  %26 = icmp ugt i32 %21, -120
  %27 = load i32, ptr %7, align 4
  %28 = icmp ult i32 %27, 255
  %29 = select i1 %26, i1 true, i1 %28
  %30 = select i1 %29, i32 0, i32 %21
  %31 = getelementptr i8, ptr %17, i32 %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #23
  br i1 %29, label %150, label %32

32:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #23
  store i32 0, ptr %9, align 4, !annotation !8
  %33 = ptrtoint ptr %31 to i32
  %34 = sub i32 %19, %33
  %35 = call i32 @FSE_readNCount(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef %31, i32 noundef %34) #23
  %36 = icmp ult i32 %35, -119
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, ptr %9, align 4
  %39 = icmp ugt i32 %38, 8
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #23
  br label %150

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i32 0, i32 1
  %43 = call i32 @FSE_buildCTable_wksp(ptr noundef %42, ptr noundef nonnull %5, i32 noundef 31, i32 noundef %38, ptr noundef %1, i32 noundef 6400) #23
  %44 = icmp ult i32 %43, -119
  %45 = select i1 %44, i32 %35, i32 0
  %46 = getelementptr i8, ptr %31, i32 %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #23
  br i1 %44, label %47, label %150

47:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 106, ptr nonnull %10) #23
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(106) %10, i8 0, i32 106, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #23
  store i32 52, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #23
  store i32 0, ptr %12, align 4, !annotation !8
  %48 = ptrtoint ptr %46 to i32
  %49 = sub i32 %19, %48
  %50 = call i32 @FSE_readNCount(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef %46, i32 noundef %49) #23
  %51 = icmp ult i32 %50, -119
  br i1 %51, label %52, label %71

52:                                               ; preds = %47
  %53 = load i32, ptr %12, align 4
  %54 = icmp ugt i32 %53, 9
  br i1 %54, label %71, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i32 0, i32 1, i32 1
  %57 = load i32, ptr %11, align 4
  %58 = call i32 @FSE_buildCTable_wksp(ptr noundef %56, ptr noundef nonnull %10, i32 noundef %57, i32 noundef %53, ptr noundef %1, i32 noundef 6400) #23
  %59 = icmp ult i32 %58, -119
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load i32, ptr %11, align 4
  %62 = icmp ult i32 %61, 52
  br i1 %62, label %72, label %66

63:                                               ; preds = %66
  %64 = add nuw nsw i32 %67, 1
  %65 = icmp eq i32 %64, 53
  br i1 %65, label %72, label %66

66:                                               ; preds = %63, %60
  %67 = phi i32 [ %64, %63 ], [ 0, %60 ]
  %68 = getelementptr i16, ptr %10, i32 %67
  %69 = load i16, ptr %68, align 2
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %72, label %63

71:                                               ; preds = %55, %52, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %10) #23
  br label %150

72:                                               ; preds = %66, %63, %60
  %73 = phi i32 [ 1, %60 ], [ 1, %66 ], [ 2, %63 ]
  %74 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i32 0, i32 1, i32 4
  store i32 %73, ptr %74, align 4
  %75 = getelementptr i8, ptr %46, i32 %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %13) #23
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(72) %13, i8 0, i32 72, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #23
  store i32 35, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #23
  store i32 0, ptr %15, align 4, !annotation !8
  %76 = ptrtoint ptr %75 to i32
  %77 = sub i32 %19, %76
  %78 = call i32 @FSE_readNCount(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef %75, i32 noundef %77) #23
  %79 = icmp ult i32 %78, -119
  br i1 %79, label %80, label %99

80:                                               ; preds = %72
  %81 = load i32, ptr %15, align 4
  %82 = icmp ugt i32 %81, 9
  br i1 %82, label %99, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i32 0, i32 1, i32 2
  %85 = load i32, ptr %14, align 4
  %86 = call i32 @FSE_buildCTable_wksp(ptr noundef %84, ptr noundef nonnull %13, i32 noundef %85, i32 noundef %81, ptr noundef %1, i32 noundef 6400) #23
  %87 = icmp ult i32 %86, -119
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load i32, ptr %14, align 4
  %90 = icmp ult i32 %89, 35
  br i1 %90, label %100, label %94

91:                                               ; preds = %94
  %92 = add nuw nsw i32 %95, 1
  %93 = icmp eq i32 %92, 36
  br i1 %93, label %100, label %94

94:                                               ; preds = %91, %88
  %95 = phi i32 [ %92, %91 ], [ 0, %88 ]
  %96 = getelementptr i16, ptr %13, i32 %95
  %97 = load i16, ptr %96, align 2
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %100, label %91

99:                                               ; preds = %83, %80, %72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %13) #23
  br label %150

100:                                              ; preds = %94, %91, %88
  %101 = phi i32 [ 1, %88 ], [ 1, %94 ], [ 2, %91 ]
  %102 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i32 0, i32 1, i32 5
  store i32 %101, ptr %102, align 4
  %103 = getelementptr i8, ptr %75, i32 %78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %13) #23
  %104 = getelementptr i8, ptr %103, i32 12
  %105 = icmp ugt ptr %104, %16
  br i1 %105, label %150, label %106

106:                                              ; preds = %100
  %107 = load i32, ptr %103, align 1
  %108 = getelementptr %struct.ZSTD_compressedBlockState_t, ptr %0, i32 0, i32 1
  store i32 %107, ptr %108, align 4
  %109 = getelementptr i8, ptr %103, i32 4
  %110 = load i32, ptr %109, align 1
  %111 = getelementptr %struct.ZSTD_compressedBlockState_t, ptr %0, i32 0, i32 1, i32 1
  store i32 %110, ptr %111, align 4
  %112 = getelementptr i8, ptr %103, i32 8
  %113 = load i32, ptr %112, align 1
  %114 = getelementptr %struct.ZSTD_compressedBlockState_t, ptr %0, i32 0, i32 1, i32 2
  store i32 %113, ptr %114, align 4
  %115 = ptrtoint ptr %104 to i32
  %116 = sub i32 %19, %115
  %117 = icmp ult i32 %116, -131072
  %118 = add nuw i32 %116, 131072
  %119 = call i32 @llvm.ctlz.i32(i32 %118, i1 false) #23, !range !9
  %120 = xor i32 %119, 31
  %121 = load i32, ptr %6, align 4
  %122 = call i32 @llvm.umin.i32(i32 %120, i32 31)
  %123 = select i1 %117, i32 %122, i32 31
  %124 = icmp ult i32 %121, %123
  br i1 %124, label %133, label %128

125:                                              ; preds = %128
  %126 = add nuw nsw i32 %129, 1
  %127 = icmp eq i32 %129, %123
  br i1 %127, label %133, label %128

128:                                              ; preds = %125, %106
  %129 = phi i32 [ %126, %125 ], [ 0, %106 ]
  %130 = getelementptr i16, ptr %5, i32 %129
  %131 = load i16, ptr %130, align 2
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %133, label %125

133:                                              ; preds = %128, %125, %106
  %134 = phi i32 [ 1, %106 ], [ 1, %128 ], [ 2, %125 ]
  %135 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i32 0, i32 1, i32 3
  store i32 %134, ptr %135, align 4
  %136 = icmp eq i32 %107, 0
  %137 = icmp ugt i32 %107, %116
  %138 = select i1 %136, i1 true, i1 %137
  br i1 %138, label %150, label %139

139:                                              ; preds = %133
  %140 = icmp eq i32 %110, 0
  %141 = icmp ugt i32 %110, %116
  %142 = select i1 %140, i1 true, i1 %141
  br i1 %142, label %150, label %143

143:                                              ; preds = %139
  %144 = icmp eq i32 %113, 0
  %145 = icmp ugt i32 %113, %116
  %146 = select i1 %144, i1 true, i1 %145
  br i1 %146, label %150, label %147

147:                                              ; preds = %143
  %148 = ptrtoint ptr %2 to i32
  %149 = sub i32 %115, %148
  br label %150

150:                                              ; preds = %147, %143, %139, %133, %100, %99, %71, %41, %40, %25
  %151 = phi i32 [ %149, %147 ], [ -30, %41 ], [ -30, %25 ], [ -30, %100 ], [ -30, %40 ], [ -30, %71 ], [ -30, %99 ], [ -30, %143 ], [ -30, %139 ], [ -30, %133 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #23
  ret i32 %151
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_readCTable(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_readNCount(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBegin_advanced_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #1 {
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i32 0, i32 1, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i32 0, i32 1, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i32 0, i32 1, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i32 0, i32 1, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i32 0, i32 1, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %10, -31
  %24 = icmp ult i32 %23, -21
  %25 = add i32 %12, -30
  %26 = icmp ult i32 %25, -24
  %27 = select i1 %24, i1 true, i1 %26
  %28 = add i32 %14, -31
  %29 = icmp ult i32 %28, -25
  %30 = select i1 %27, i1 true, i1 %29
  %31 = add i32 %16, -30
  %32 = icmp ult i32 %31, -29
  %33 = select i1 %30, i1 true, i1 %32
  %34 = add i32 %18, -8
  %35 = icmp ult i32 %34, -5
  %36 = select i1 %33, i1 true, i1 %35
  %37 = icmp ugt i32 %20, 131072
  %38 = select i1 %36, i1 true, i1 %37
  %39 = add i32 %22, -10
  %40 = icmp ult i32 %39, -9
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %44, label %42

42:                                               ; preds = %8
  %43 = tail call fastcc i32 @ZSTD_compressBegin_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i32 noundef 0)
  br label %44

44:                                               ; preds = %42, %8
  %45 = phi i32 [ -42, %8 ], [ %43, %42 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_compressBegin_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i32 noundef %8) unnamed_addr #1 {
  %10 = alloca %struct.ZSTD_CCtx_params_s, align 4
  %11 = alloca %struct.ZSTD_CCtx_params_s, align 4
  %12 = icmp eq ptr %5, null
  br i1 %12, label %204, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %201, label %17

17:                                               ; preds = %13
  %18 = icmp ult i64 %7, 131072
  br i1 %18, label %29, label %19

19:                                               ; preds = %17
  %20 = zext i32 %15 to i64
  %21 = mul nuw nsw i64 %20, 6
  %22 = icmp ugt i64 %21, %7
  %23 = icmp eq i64 %7, -1
  %24 = or i1 %23, %22
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 9
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %201

29:                                               ; preds = %25, %19, %17
  %30 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %201, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 5, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  %37 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 5, i32 10, i32 6
  %38 = load i32, ptr %37, align 4
  br i1 %36, label %39, label %54

39:                                               ; preds = %33
  %40 = getelementptr [10 x i32], ptr @attachDictSizeCutoffs, i32 0, i32 %38
  %41 = load i32, ptr %40, align 4
  %42 = zext i32 %41 to i64
  %43 = icmp uge i64 %42, %7
  %44 = icmp eq i64 %7, -1
  %45 = or i1 %44, %43
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = icmp eq i32 %31, 1
  br i1 %47, label %50, label %141

48:                                               ; preds = %39
  %49 = icmp eq i32 %31, 2
  br i1 %49, label %141, label %50

50:                                               ; preds = %48, %46
  %51 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %141

54:                                               ; preds = %50, %33
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %11) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(140) %11, ptr noundef align 1 dereferenceable(140) %6, i64 140, i1 false) #23
  %55 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 5
  %56 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 5, i32 10
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 5, i32 10, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 5, i32 10, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 5, i32 10, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 5, i32 10, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 5, i32 10, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = icmp ne i32 %35, 0
  %69 = add i32 %38, -3
  %70 = icmp ult i32 %69, 3
  %71 = select i1 %68, i1 %70, i1 false
  %72 = add i32 %61, -2
  %73 = select i1 %71, i32 %72, i32 %61
  %74 = icmp ult i64 %7, 536870912
  br i1 %74, label %75, label %84

75:                                               ; preds = %54
  %76 = trunc i64 %7 to i32
  %77 = icmp ult i32 %76, 64
  %78 = add nsw i32 %76, -1
  %79 = tail call i32 @llvm.ctlz.i32(i32 %78, i1 false) #23, !range !9
  %80 = xor i32 %79, 31
  %81 = add nuw nsw i32 %80, 1
  %82 = select i1 %77, i32 6, i32 %81
  %83 = tail call i32 @llvm.umin.i32(i32 %57, i32 %82) #23
  br label %86

84:                                               ; preds = %54
  %85 = icmp eq i64 %7, -1
  br i1 %85, label %95, label %86

86:                                               ; preds = %84, %75
  %87 = phi i32 [ %83, %75 ], [ %57, %84 ]
  %88 = icmp ugt i32 %38, 5
  %89 = sext i1 %88 to i32
  %90 = add i32 %59, %89
  %91 = add i32 %87, 1
  %92 = tail call i32 @llvm.umin.i32(i32 %73, i32 %91) #23
  %93 = tail call i32 @llvm.usub.sat.i32(i32 %90, i32 %87) #23
  %94 = sub i32 %59, %93
  br label %95

95:                                               ; preds = %86, %84
  %96 = phi i32 [ %94, %86 ], [ %59, %84 ]
  %97 = phi i32 [ %92, %86 ], [ %73, %84 ]
  %98 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %11, i32 0, i32 1, i32 1
  store i32 %96, ptr %98, align 4
  %99 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %11, i32 0, i32 1, i32 2
  store i32 %97, ptr %99, align 4
  %100 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %11, i32 0, i32 1, i32 3
  store i32 %63, ptr %100, align 4
  %101 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %11, i32 0, i32 1, i32 4
  store i32 %65, ptr %101, align 4
  %102 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %11, i32 0, i32 1, i32 5
  store i32 %67, ptr %102, align 4
  %103 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %11, i32 0, i32 1, i32 6
  store i32 %38, ptr %103, align 4
  %104 = tail call fastcc i32 @ZSTD_resetCCtx_internal(ptr noundef %0, ptr noundef nonnull byval(%struct.ZSTD_CCtx_params_s) align 4 %11, i64 noundef %7, i32 noundef 0, i32 noundef %8) #23
  %105 = icmp ult i32 %104, -119
  br i1 %105, label %106, label %139

106:                                              ; preds = %95
  %107 = load ptr, ptr %55, align 4
  %108 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 5, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = ptrtoint ptr %107 to i32
  %111 = ptrtoint ptr %109 to i32
  %112 = sub i32 %110, %111
  %113 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 5, i32 0, i32 3
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %130, label %116

116:                                              ; preds = %106
  %117 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 9
  store ptr %55, ptr %117, align 4
  %118 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 0, i32 3
  %119 = load i32, ptr %118, align 4
  %120 = icmp ult i32 %119, %112
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2
  %123 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr i8, ptr %124, i32 %112
  store ptr %125, ptr %122, align 4
  %126 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 0, i32 4
  store i32 %112, ptr %126, align 4
  store i32 %112, ptr %118, align 4
  br label %127

127:                                              ; preds = %121, %116
  %128 = phi i32 [ %112, %121 ], [ %119, %116 ]
  %129 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 1
  store i32 %128, ptr %129, align 4
  br label %130

130:                                              ; preds = %127, %106
  %131 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 8
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 5
  store i32 %132, ptr %133, align 4
  %134 = load i32, ptr %14, align 4
  %135 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 6
  store i32 %134, ptr %135, align 8
  %136 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(4592) %137, ptr noundef align 4 dereferenceable(4592) %138, i32 4592, i1 false) #23
  br label %139

139:                                              ; preds = %130, %95
  %140 = phi i32 [ %104, %95 ], [ 0, %130 ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %11) #23
  br label %243

141:                                              ; preds = %50, %48, %46
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %10) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(140) %10, ptr noundef align 1 dereferenceable(140) %6, i64 140, i1 false) #23
  %142 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 5
  %143 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 5, i32 10
  %144 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %10, i32 0, i32 1
  %145 = load i32, ptr %144, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %144, ptr noundef align 4 dereferenceable(28) %143, i32 28, i1 false) #23
  store i32 %145, ptr %144, align 4
  %146 = tail call fastcc i32 @ZSTD_resetCCtx_internal(ptr noundef %0, ptr noundef nonnull byval(%struct.ZSTD_CCtx_params_s) align 4 %10, i64 noundef %7, i32 noundef 1, i32 noundef %8) #23
  %147 = icmp ult i32 %146, -119
  br i1 %147, label %148, label %199

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 2
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 4
  store ptr %150, ptr %151, align 4
  %152 = load i32, ptr %37, align 4
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %158, label %154

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 5, i32 10, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = shl i32 4, %156
  br label %158

158:                                              ; preds = %154, %148
  %159 = phi i32 [ %157, %154 ], [ 0, %148 ]
  %160 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 5, i32 10, i32 2
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24
  %163 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2
  %164 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 4
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 5, i32 4
  %167 = load ptr, ptr %166, align 4
  %168 = shl i32 4, %161
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %165, ptr align 4 %167, i32 %168, i1 false) #23
  %169 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 6
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 5, i32 6
  %172 = load ptr, ptr %171, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %170, ptr align 4 %172, i32 %159, i1 false) #23
  %173 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 3
  %174 = load i32, ptr %173, align 4
  %175 = icmp eq i32 %174, 0
  %176 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 5
  %177 = load ptr, ptr %176, align 4
  %178 = shl i32 4, %174
  %179 = select i1 %175, i32 0, i32 %178
  tail call void @llvm.memset.p0.i32(ptr align 4 %177, i8 0, i32 %179, i1 false) #23
  %180 = load ptr, ptr %151, align 4
  %181 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 3
  %182 = load ptr, ptr %181, align 4
  %183 = icmp ult ptr %180, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %158
  store ptr %182, ptr %151, align 4
  br label %185

185:                                              ; preds = %184, %158
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %163, ptr noundef align 4 dereferenceable(20) %142, i32 20, i1 false) #23
  %186 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 5, i32 2
  %187 = load i32, ptr %186, align 4
  %188 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 2
  store i32 %187, ptr %188, align 4
  %189 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 5, i32 1
  %190 = load i32, ptr %189, align 4
  %191 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 1
  store i32 %190, ptr %191, align 4
  %192 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 8
  %193 = load i32, ptr %192, align 4
  %194 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 5
  store i32 %193, ptr %194, align 4
  %195 = load i32, ptr %14, align 4
  %196 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 6
  store i32 %195, ptr %196, align 8
  %197 = load ptr, ptr %162, align 4
  %198 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(4592) %197, ptr noundef align 4 dereferenceable(4592) %198, i32 4592, i1 false) #23
  br label %199

199:                                              ; preds = %185, %141
  %200 = phi i32 [ 0, %185 ], [ %146, %141 ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %10) #23
  br label %243

201:                                              ; preds = %29, %25, %13
  %202 = tail call fastcc i32 @ZSTD_resetCCtx_internal(ptr noundef %0, ptr noundef byval(%struct.ZSTD_CCtx_params_s) align 4 %6, i64 noundef %7, i32 noundef 0, i32 noundef %8)
  %203 = icmp ult i32 %202, -119
  br i1 %203, label %207, label %243

204:                                              ; preds = %9
  %205 = tail call fastcc i32 @ZSTD_resetCCtx_internal(ptr noundef %0, ptr noundef byval(%struct.ZSTD_CCtx_params_s) align 4 %6, i64 noundef %7, i32 noundef 0, i32 noundef %8)
  %206 = icmp ult i32 %205, -119
  br i1 %206, label %208, label %243

207:                                              ; preds = %201
  br i1 %12, label %208, label %219

208:                                              ; preds = %207, %204
  %209 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24
  %210 = load ptr, ptr %209, align 4
  %211 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2
  %212 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 20
  %213 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7
  %214 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4
  %215 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 25
  %216 = load ptr, ptr %215, align 4
  %217 = tail call fastcc i32 @ZSTD_compress_insertDictionary(ptr noundef %210, ptr noundef %211, ptr noundef %212, ptr noundef %213, ptr noundef %214, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %216)
  %218 = icmp ult i32 %217, -119
  br i1 %218, label %235, label %243

219:                                              ; preds = %207
  %220 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24
  %221 = load ptr, ptr %220, align 4
  %222 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2
  %223 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 20
  %224 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7
  %225 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4
  %226 = load ptr, ptr %5, align 4
  %227 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 1
  %228 = load i32, ptr %227, align 4
  %229 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %5, i32 0, i32 2
  %230 = load i32, ptr %229, align 4
  %231 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 25
  %232 = load ptr, ptr %231, align 4
  %233 = tail call fastcc i32 @ZSTD_compress_insertDictionary(ptr noundef %221, ptr noundef %222, ptr noundef %223, ptr noundef %224, ptr noundef %225, ptr noundef %226, i32 noundef %228, i32 noundef %230, i32 noundef %4, ptr noundef %232)
  %234 = icmp ult i32 %233, -119
  br i1 %234, label %237, label %243

235:                                              ; preds = %208
  %236 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 5
  store i32 %217, ptr %236, align 4
  br label %240

237:                                              ; preds = %219
  %238 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 5
  store i32 %233, ptr %238, align 4
  %239 = load i32, ptr %227, align 4
  br label %240

240:                                              ; preds = %237, %235
  %241 = phi i32 [ %239, %237 ], [ %2, %235 ]
  %242 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 6
  store i32 %241, ptr %242, align 8
  br label %243

243:                                              ; preds = %240, %219, %208, %204, %201, %199, %139
  %244 = phi i32 [ %202, %201 ], [ %140, %139 ], [ %200, %199 ], [ %233, %219 ], [ %217, %208 ], [ 0, %240 ], [ %205, %204 ]
  ret i32 %244
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBegin_advanced(ptr noundef %0, ptr noundef %1, i32 noundef %2, [10 x i32] %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = alloca %struct.ZSTD_CCtx_params_s, align 4
  %7 = extractvalue [10 x i32] %3, 0
  %8 = extractvalue [10 x i32] %3, 1
  %9 = extractvalue [10 x i32] %3, 2
  %10 = extractvalue [10 x i32] %3, 3
  %11 = extractvalue [10 x i32] %3, 4
  %12 = extractvalue [10 x i32] %3, 5
  %13 = extractvalue [10 x i32] %3, 6
  %14 = extractvalue [10 x i32] %3, 7
  %15 = extractvalue [10 x i32] %3, 8
  %16 = extractvalue [10 x i32] %3, 9
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %6) #23
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(140) %6, i8 0, i64 140, i1 false)
  store i32 %7, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i32 0, i32 1, i32 1
  store i32 %8, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i32 0, i32 1, i32 2
  store i32 %9, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i32 0, i32 1, i32 3
  store i32 %10, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i32 0, i32 1, i32 4
  store i32 %11, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i32 0, i32 1, i32 5
  store i32 %12, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i32 0, i32 1, i32 6
  store i32 %13, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i32 0, i32 2
  store i32 %14, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i32 0, i32 2, i32 1
  store i32 %15, ptr %25, align 4
  %26 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i32 0, i32 2, i32 2
  store i32 %16, ptr %26, align 4
  %27 = add i32 %7, -31
  %28 = icmp ult i32 %27, -21
  %29 = add i32 %8, -30
  %30 = icmp ult i32 %29, -24
  %31 = select i1 %28, i1 true, i1 %30
  %32 = add i32 %9, -31
  %33 = icmp ult i32 %32, -25
  %34 = select i1 %31, i1 true, i1 %33
  %35 = add i32 %10, -30
  %36 = icmp ult i32 %35, -29
  %37 = select i1 %34, i1 true, i1 %36
  %38 = add i32 %11, -8
  %39 = icmp ult i32 %38, -5
  %40 = select i1 %37, i1 true, i1 %39
  %41 = icmp ugt i32 %12, 131072
  %42 = select i1 %40, i1 true, i1 %41
  %43 = add i32 %13, -10
  %44 = icmp ult i32 %43, -9
  %45 = select i1 %42, i1 true, i1 %44
  br i1 %45, label %92, label %46

46:                                               ; preds = %5
  %47 = tail call fastcc i32 @ZSTD_resetCCtx_internal(ptr noundef %0, ptr noundef nonnull byval(%struct.ZSTD_CCtx_params_s) align 4 %6, i64 noundef %4, i32 noundef 0, i32 noundef 0) #23
  %48 = icmp ult i32 %47, -119
  br i1 %48, label %49, label %92

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2
  %53 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 20
  %54 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7
  %55 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4
  %56 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 25
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %1, null
  %59 = icmp ult i32 %2, 8
  %60 = or i1 %58, %59
  br i1 %60, label %88, label %61

61:                                               ; preds = %49
  %62 = getelementptr i8, ptr %51, i32 4580
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %62, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i32 12, i1 false) #23
  %63 = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %51, i32 0, i32 1
  store i32 0, ptr %63, align 4
  %64 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %51, i32 0, i32 1, i32 3
  store i32 0, ptr %64, align 4
  %65 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %51, i32 0, i32 1, i32 4
  store i32 0, ptr %65, align 4
  %66 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %51, i32 0, i32 1, i32 5
  store i32 0, ptr %66, align 4
  %67 = load i32, ptr %1, align 1
  %68 = icmp eq i32 %67, -332356553
  br i1 %68, label %70, label %69

69:                                               ; preds = %61
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef %52, ptr noundef %53, ptr noundef %54, ptr noundef %55, ptr noundef nonnull %1, i32 noundef %2, i32 noundef 0) #23
  br label %88

70:                                               ; preds = %61
  %71 = getelementptr i8, ptr %1, i32 %2
  %72 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 2, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = getelementptr i8, ptr %1, i32 4
  %77 = load i32, ptr %76, align 1
  br label %78

78:                                               ; preds = %75, %70
  %79 = phi i32 [ %77, %75 ], [ 0, %70 ]
  %80 = tail call i32 @ZSTD_loadCEntropy(ptr noundef %51, ptr noundef %57, ptr noundef nonnull %1, i32 noundef %2) #23
  %81 = icmp ult i32 %80, -119
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = getelementptr i8, ptr %1, i32 %80
  %84 = ptrtoint ptr %71 to i32
  %85 = ptrtoint ptr %83 to i32
  %86 = sub i32 %84, %85
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef %52, ptr noundef null, ptr noundef %54, ptr noundef %55, ptr noundef %83, i32 noundef %86, i32 noundef 0) #23
  %87 = icmp ult i32 %79, -119
  br i1 %87, label %88, label %92

88:                                               ; preds = %82, %69, %49
  %89 = phi i32 [ %79, %82 ], [ 0, %69 ], [ 0, %49 ]
  %90 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 5
  store i32 %89, ptr %90, align 4
  %91 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 6
  store i32 %2, ptr %91, align 8
  br label %92

92:                                               ; preds = %88, %82, %78, %46, %5
  %93 = phi i32 [ -42, %5 ], [ %79, %82 ], [ 0, %88 ], [ %47, %46 ], [ %80, %78 ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %6) #23
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBegin_usingDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca %struct.ZSTD_CCtx_params_s, align 4
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %5) #23
  %6 = icmp eq i32 %2, 0
  %7 = zext i32 %2 to i64
  %8 = add nuw nsw i64 %7, 499
  %9 = select i1 %6, i64 -1, i64 %8
  %10 = icmp ult i64 %9, 262145
  %11 = zext i1 %10 to i32
  %12 = icmp ult i64 %9, 131073
  %13 = zext i1 %12 to i32
  %14 = add nuw nsw i32 %11, %13
  %15 = icmp ult i64 %9, 16385
  %16 = zext i1 %15 to i32
  %17 = add nuw nsw i32 %14, %16
  %18 = icmp eq i32 %3, 0
  %19 = icmp slt i32 %3, 0
  %20 = tail call i32 @llvm.umin.i32(i32 %3, i32 22) #23
  %21 = select i1 %19, i32 0, i32 %20
  %22 = select i1 %18, i32 3, i32 %21
  %23 = getelementptr [4 x [23 x %struct.ZSTD_compressionParameters]], ptr @ZSTD_defaultCParameters, i32 0, i32 %17, i32 %22
  %24 = load i32, ptr %23, align 4, !noalias !31
  %25 = getelementptr inbounds i8, ptr %23, i32 4
  %26 = load i32, ptr %25, align 4, !noalias !31
  %27 = getelementptr inbounds i8, ptr %23, i32 8
  %28 = load i32, ptr %27, align 4, !noalias !31
  %29 = getelementptr inbounds i8, ptr %23, i32 12
  %30 = load i32, ptr %29, align 4, !noalias !31
  %31 = getelementptr inbounds i8, ptr %23, i32 16
  %32 = load i32, ptr %31, align 4, !noalias !31
  %33 = getelementptr inbounds i8, ptr %23, i32 20
  %34 = load i32, ptr %33, align 4, !noalias !31
  %35 = getelementptr inbounds i8, ptr %23, i32 24
  %36 = load i32, ptr %35, align 4, !noalias !31
  %37 = tail call i32 @llvm.umax.i32(i32 %3, i32 -131072) #23
  %38 = sub nsw i32 0, %37
  %39 = select i1 %19, i32 %38, i32 %34
  %40 = tail call i32 @llvm.umax.i32(i32 %24, i32 10) #23
  %41 = select i1 %18, i32 3, i32 %3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(140) %5, i8 0, i32 140, i1 false) #23
  %42 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i32 0, i32 1
  store i32 %40, ptr %42, align 4
  %43 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i32 0, i32 1, i32 1
  store i32 %26, ptr %43, align 4
  %44 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i32 0, i32 1, i32 2
  store i32 %28, ptr %44, align 4
  %45 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i32 0, i32 1, i32 3
  store i32 %30, ptr %45, align 4
  %46 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i32 0, i32 1, i32 4
  store i32 %32, ptr %46, align 4
  %47 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i32 0, i32 1, i32 5
  store i32 %39, ptr %47, align 4
  %48 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i32 0, i32 1, i32 6
  store i32 %36, ptr %48, align 4
  %49 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i32 0, i32 2
  store i32 1, ptr %49, align 4
  %50 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i32 0, i32 3
  store i32 %41, ptr %50, align 4
  %51 = tail call fastcc i32 @ZSTD_resetCCtx_internal(ptr noundef %0, ptr noundef nonnull byval(%struct.ZSTD_CCtx_params_s) align 4 %5, i64 noundef -1, i32 noundef 0, i32 noundef 0) #23
  %52 = icmp ult i32 %51, -119
  br i1 %52, label %53, label %96

53:                                               ; preds = %4
  %54 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2
  %57 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 20
  %58 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7
  %59 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4
  %60 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 25
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %1, null
  %63 = icmp ult i32 %2, 8
  %64 = or i1 %62, %63
  br i1 %64, label %92, label %65

65:                                               ; preds = %53
  %66 = getelementptr i8, ptr %55, i32 4580
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %66, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i32 12, i1 false) #23
  %67 = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %55, i32 0, i32 1
  store i32 0, ptr %67, align 4
  %68 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %55, i32 0, i32 1, i32 3
  store i32 0, ptr %68, align 4
  %69 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %55, i32 0, i32 1, i32 4
  store i32 0, ptr %69, align 4
  %70 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %55, i32 0, i32 1, i32 5
  store i32 0, ptr %70, align 4
  %71 = load i32, ptr %1, align 1
  %72 = icmp eq i32 %71, -332356553
  br i1 %72, label %74, label %73

73:                                               ; preds = %65
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef %56, ptr noundef %57, ptr noundef %58, ptr noundef %59, ptr noundef nonnull %1, i32 noundef %2, i32 noundef 0) #23
  br label %92

74:                                               ; preds = %65
  %75 = getelementptr i8, ptr %1, i32 %2
  %76 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 2, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = getelementptr i8, ptr %1, i32 4
  %81 = load i32, ptr %80, align 1
  br label %82

82:                                               ; preds = %79, %74
  %83 = phi i32 [ %81, %79 ], [ 0, %74 ]
  %84 = tail call i32 @ZSTD_loadCEntropy(ptr noundef %55, ptr noundef %61, ptr noundef nonnull %1, i32 noundef %2) #23
  %85 = icmp ult i32 %84, -119
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = getelementptr i8, ptr %1, i32 %84
  %88 = ptrtoint ptr %75 to i32
  %89 = ptrtoint ptr %87 to i32
  %90 = sub i32 %88, %89
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef %56, ptr noundef null, ptr noundef %58, ptr noundef %59, ptr noundef %87, i32 noundef %90, i32 noundef 0) #23
  %91 = icmp ult i32 %83, -119
  br i1 %91, label %92, label %96

92:                                               ; preds = %86, %73, %53
  %93 = phi i32 [ %83, %86 ], [ 0, %73 ], [ 0, %53 ]
  %94 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 5
  store i32 %93, ptr %94, align 4
  %95 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 6
  store i32 %2, ptr %95, align 8
  br label %96

96:                                               ; preds = %92, %86, %82, %4
  %97 = phi i32 [ %83, %86 ], [ 0, %92 ], [ %51, %4 ], [ %84, %82 ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %5) #23
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBegin(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.ZSTD_CCtx_params_s, align 4
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %3) #23
  %4 = icmp eq i32 %1, 0
  %5 = icmp slt i32 %1, 0
  %6 = tail call i32 @llvm.umin.i32(i32 %1, i32 22) #23
  %7 = select i1 %5, i32 0, i32 %6
  %8 = select i1 %4, i32 3, i32 %7
  %9 = getelementptr [4 x [23 x %struct.ZSTD_compressionParameters]], ptr @ZSTD_defaultCParameters, i32 0, i32 0, i32 %8
  %10 = load i32, ptr %9, align 4, !noalias !36
  %11 = getelementptr inbounds i8, ptr %9, i32 4
  %12 = load i32, ptr %11, align 4, !noalias !36
  %13 = getelementptr inbounds i8, ptr %9, i32 8
  %14 = load i32, ptr %13, align 4, !noalias !36
  %15 = getelementptr inbounds i8, ptr %9, i32 12
  %16 = load i32, ptr %15, align 4, !noalias !36
  %17 = getelementptr inbounds i8, ptr %9, i32 16
  %18 = load i32, ptr %17, align 4, !noalias !36
  %19 = getelementptr inbounds i8, ptr %9, i32 20
  %20 = load i32, ptr %19, align 4, !noalias !36
  %21 = getelementptr inbounds i8, ptr %9, i32 24
  %22 = load i32, ptr %21, align 4, !noalias !36
  %23 = tail call i32 @llvm.umax.i32(i32 %1, i32 -131072) #23
  %24 = sub nsw i32 0, %23
  %25 = select i1 %5, i32 %24, i32 %20
  %26 = tail call i32 @llvm.umax.i32(i32 %10, i32 10) #23
  %27 = select i1 %4, i32 3, i32 %1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(140) %3, i8 0, i32 140, i1 false) #23
  %28 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i32 0, i32 1
  store i32 %26, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i32 0, i32 1, i32 1
  store i32 %12, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i32 0, i32 1, i32 2
  store i32 %14, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i32 0, i32 1, i32 3
  store i32 %16, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i32 0, i32 1, i32 4
  store i32 %18, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i32 0, i32 1, i32 5
  store i32 %25, ptr %33, align 4
  %34 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i32 0, i32 1, i32 6
  store i32 %22, ptr %34, align 4
  %35 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i32 0, i32 2
  store i32 1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i32 0, i32 3
  store i32 %27, ptr %36, align 4
  %37 = tail call fastcc i32 @ZSTD_resetCCtx_internal(ptr noundef %0, ptr noundef nonnull byval(%struct.ZSTD_CCtx_params_s) align 4 %3, i64 noundef -1, i32 noundef 0, i32 noundef 0) #23
  %38 = icmp ult i32 %37, -119
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 5
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 6
  store i32 0, ptr %41, align 8
  br label %42

42:                                               ; preds = %39, %2
  %43 = phi i32 [ 0, %39 ], [ %37, %2 ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %3) #23
  ret i32 %43
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @ZSTD_CCtx_trace(ptr nocapture %0, i32 %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressEnd(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = tail call fastcc i32 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 1, i32 noundef 1)
  %7 = icmp ult i32 %6, -119
  br i1 %7, label %8, label %79

8:                                                ; preds = %5
  %9 = getelementptr i8, ptr %1, i32 %6
  %10 = sub i32 %2, %6
  %11 = load i32, ptr %0, align 8
  switch i32 %11, label %42 [
    i32 0, label %79
    i32 1, label %12
    i32 3, label %49
  ]

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 2
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 2, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 0
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %13, align 4
  %20 = icmp eq i32 %19, 0
  %21 = trunc i32 %18 to i8
  %22 = shl i8 %21, 3
  %23 = add i8 %22, -80
  %24 = select i1 %16, i8 4, i8 0
  %25 = select i1 %20, i8 0, i8 32
  %26 = or i8 %25, %24
  %27 = icmp ult i32 %10, 18
  br i1 %27, label %79, label %28

28:                                               ; preds = %12
  %29 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 -47205080, ptr %9, align 1
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32 [ 4, %32 ], [ 0, %28 ]
  %35 = or i32 %34, 1
  %36 = getelementptr i8, ptr %9, i32 %34
  store i8 %26, ptr %36, align 1
  %37 = select i1 %20, i8 %23, i8 0
  %38 = getelementptr i8, ptr %9, i32 %35
  store i8 %37, ptr %38, align 1
  %39 = or i32 %34, 2
  %40 = sub i32 %10, %39
  %41 = getelementptr i8, ptr %9, i32 %39
  store i32 2, ptr %0, align 8
  br label %42

42:                                               ; preds = %33, %8
  %43 = phi ptr [ %41, %33 ], [ %9, %8 ]
  %44 = phi i32 [ %40, %33 ], [ %10, %8 ]
  %45 = icmp ult i32 %44, 4
  br i1 %45, label %79, label %46

46:                                               ; preds = %42
  store i32 1, ptr %43, align 1
  %47 = getelementptr i8, ptr %43, i32 3
  %48 = add i32 %44, -3
  br label %49

49:                                               ; preds = %46, %8
  %50 = phi i32 [ %48, %46 ], [ %10, %8 ]
  %51 = phi ptr [ %47, %46 ], [ %9, %8 ]
  %52 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 2, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 12
  %57 = tail call i64 @xxh64_digest(ptr noundef %56) #23
  %58 = icmp ult i32 %50, 4
  br i1 %58, label %79, label %59

59:                                               ; preds = %55
  %60 = trunc i64 %57 to i32
  store i32 %60, ptr %51, align 1
  %61 = getelementptr i8, ptr %51, i32 4
  br label %62

62:                                               ; preds = %59, %49
  %63 = phi ptr [ %61, %59 ], [ %51, %49 ]
  store i32 0, ptr %0, align 8
  %64 = ptrtoint ptr %63 to i32
  %65 = ptrtoint ptr %9 to i32
  %66 = sub i32 %64, %65
  %67 = icmp ult i32 %66, -119
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 9
  %70 = load i64, ptr %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 10
  %74 = load i64, ptr %73, align 8
  %75 = add i64 %74, 1
  %76 = icmp eq i64 %70, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %72, %68
  %78 = add i32 %66, %6
  br label %79

79:                                               ; preds = %77, %72, %62, %55, %42, %12, %8, %5
  %80 = phi i32 [ %78, %77 ], [ %66, %62 ], [ %6, %5 ], [ -72, %72 ], [ -70, %55 ], [ -70, %42 ], [ -70, %12 ], [ -60, %8 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compress_advanced(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, [10 x i32] %7) local_unnamed_addr #1 {
  %9 = alloca %struct.ZSTD_CCtx_params_s, align 4
  %10 = extractvalue [10 x i32] %7, 0
  %11 = extractvalue [10 x i32] %7, 1
  %12 = extractvalue [10 x i32] %7, 2
  %13 = extractvalue [10 x i32] %7, 3
  %14 = extractvalue [10 x i32] %7, 4
  %15 = extractvalue [10 x i32] %7, 5
  %16 = extractvalue [10 x i32] %7, 6
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %9) #23
  %17 = add i32 %10, -31
  %18 = icmp ult i32 %17, -21
  %19 = add i32 %11, -30
  %20 = icmp ult i32 %19, -24
  %21 = select i1 %18, i1 true, i1 %20
  %22 = add i32 %12, -31
  %23 = icmp ult i32 %22, -25
  %24 = select i1 %21, i1 true, i1 %23
  %25 = add i32 %13, -30
  %26 = icmp ult i32 %25, -29
  %27 = select i1 %24, i1 true, i1 %26
  %28 = add i32 %14, -8
  %29 = icmp ult i32 %28, -5
  %30 = select i1 %27, i1 true, i1 %29
  %31 = icmp ugt i32 %15, 131072
  %32 = select i1 %30, i1 true, i1 %31
  %33 = add i32 %16, -10
  %34 = icmp ult i32 %33, -9
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %51, label %36

36:                                               ; preds = %8
  %37 = extractvalue [10 x i32] %7, 9
  %38 = extractvalue [10 x i32] %7, 8
  %39 = extractvalue [10 x i32] %7, 7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(140) %9, i8 0, i32 140, i1 false) #23
  %40 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %9, i32 0, i32 1
  store i32 %10, ptr %40, align 4
  %41 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %9, i32 0, i32 1, i32 1
  store i32 %11, ptr %41, align 4
  %42 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %9, i32 0, i32 1, i32 2
  store i32 %12, ptr %42, align 4
  %43 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %9, i32 0, i32 1, i32 3
  store i32 %13, ptr %43, align 4
  %44 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %9, i32 0, i32 1, i32 4
  store i32 %14, ptr %44, align 4
  %45 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %9, i32 0, i32 1, i32 5
  store i32 %15, ptr %45, align 4
  %46 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %9, i32 0, i32 1, i32 6
  store i32 %16, ptr %46, align 4
  %47 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %9, i32 0, i32 2
  store i32 %39, ptr %47, align 4
  %48 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %9, i32 0, i32 2, i32 1
  store i32 %38, ptr %48, align 4
  %49 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %9, i32 0, i32 2, i32 2
  store i32 %37, ptr %49, align 4
  %50 = call i32 @ZSTD_compress_advanced_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef nonnull %9)
  br label %51

51:                                               ; preds = %36, %8
  %52 = phi i32 [ %50, %36 ], [ -42, %8 ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %9) #23
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compress_advanced_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #1 {
  %9 = zext i32 %4 to i64
  %10 = tail call fastcc i32 @ZSTD_resetCCtx_internal(ptr noundef %0, ptr noundef byval(%struct.ZSTD_CCtx_params_s) align 4 %7, i64 noundef %9, i32 noundef 0, i32 noundef 0) #23
  %11 = icmp ult i32 %10, -119
  br i1 %11, label %12, label %56

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 20
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 25
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %5, null
  %22 = icmp ult i32 %6, 8
  %23 = or i1 %21, %22
  br i1 %23, label %51, label %24

24:                                               ; preds = %12
  %25 = getelementptr i8, ptr %14, i32 4580
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %25, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i32 12, i1 false) #23
  %26 = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %14, i32 0, i32 1
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %14, i32 0, i32 1, i32 3
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %14, i32 0, i32 1, i32 4
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %14, i32 0, i32 1, i32 5
  store i32 0, ptr %29, align 4
  %30 = load i32, ptr %5, align 1
  %31 = icmp eq i32 %30, -332356553
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef nonnull %5, i32 noundef %6, i32 noundef 0) #23
  br label %51

33:                                               ; preds = %24
  %34 = getelementptr i8, ptr %5, i32 %6
  %35 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 2, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = getelementptr i8, ptr %5, i32 4
  %40 = load i32, ptr %39, align 1
  br label %41

41:                                               ; preds = %38, %33
  %42 = phi i32 [ %40, %38 ], [ 0, %33 ]
  %43 = tail call i32 @ZSTD_loadCEntropy(ptr noundef %14, ptr noundef %20, ptr noundef nonnull %5, i32 noundef %6) #23
  %44 = icmp ult i32 %43, -119
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = getelementptr i8, ptr %5, i32 %43
  %47 = ptrtoint ptr %34 to i32
  %48 = ptrtoint ptr %46 to i32
  %49 = sub i32 %47, %48
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef %15, ptr noundef null, ptr noundef %17, ptr noundef %18, ptr noundef %46, i32 noundef %49, i32 noundef 0) #23
  %50 = icmp ult i32 %42, -119
  br i1 %50, label %51, label %56

51:                                               ; preds = %45, %32, %12
  %52 = phi i32 [ %42, %45 ], [ 0, %32 ], [ 0, %12 ]
  %53 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 5
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 6
  store i32 %6, ptr %54, align 8
  %55 = tail call i32 @ZSTD_compressEnd(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %56

56:                                               ; preds = %51, %45, %41, %8
  %57 = phi i32 [ %55, %51 ], [ %10, %8 ], [ %42, %45 ], [ %43, %41 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compress_usingDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #1 {
  %9 = alloca %struct.ZSTD_compressionParameters, align 4
  %10 = alloca %struct.ZSTD_CCtx_params_s, align 4
  %11 = alloca %struct.ZSTD_compressionParameters, align 4
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %11)
  %12 = zext i32 %4 to i64
  %13 = icmp eq ptr %5, null
  %14 = select i1 %13, i32 0, i32 %6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #23, !noalias !41
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 28, i1 false) #23, !noalias !41, !annotation !8
  call fastcc void @ZSTD_getCParams_internal(ptr nonnull sret(%struct.ZSTD_compressionParameters) align 4 %9, i32 noundef %7, i64 noundef %12, i32 noundef %14, i32 noundef 0) #23, !noalias !41
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %11, ptr noundef nonnull align 4 dereferenceable(28) %9, i32 28, i1 false)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #23, !noalias !41
  %15 = icmp eq i32 %7, 0
  %16 = select i1 %15, i32 3, i32 %7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(140) %10, i8 0, i32 140, i1 false) #23
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %10, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %17, ptr noundef nonnull align 4 dereferenceable(28) %11, i32 28, i1 false)
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %10, i32 0, i32 2
  store i32 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %10, i32 0, i32 3
  store i32 %16, ptr %19, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %11)
  %20 = call i32 @ZSTD_compress_advanced_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef nonnull %10)
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %10) #23
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressCCtx(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = alloca %struct.ZSTD_CCtx_params_s, align 4
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %7) #23
  %8 = zext i32 %4 to i64
  %9 = icmp ult i32 %4, 262145
  %10 = zext i1 %9 to i32
  %11 = icmp ult i32 %4, 131073
  %12 = zext i1 %11 to i32
  %13 = add nuw nsw i32 %10, %12
  %14 = icmp ult i32 %4, 16385
  %15 = zext i1 %14 to i32
  %16 = add nuw nsw i32 %13, %15
  %17 = icmp eq i32 %5, 0
  %18 = icmp slt i32 %5, 0
  %19 = tail call i32 @llvm.umin.i32(i32 %5, i32 22) #23
  %20 = select i1 %18, i32 0, i32 %19
  %21 = select i1 %17, i32 3, i32 %20
  %22 = getelementptr [4 x [23 x %struct.ZSTD_compressionParameters]], ptr @ZSTD_defaultCParameters, i32 0, i32 %16, i32 %21
  %23 = load i32, ptr %22, align 4, !noalias !44
  %24 = getelementptr inbounds i8, ptr %22, i32 4
  %25 = load i32, ptr %24, align 4, !noalias !44
  %26 = getelementptr inbounds i8, ptr %22, i32 8
  %27 = load i32, ptr %26, align 4, !noalias !44
  %28 = getelementptr inbounds i8, ptr %22, i32 12
  %29 = load i32, ptr %28, align 4, !noalias !44
  %30 = getelementptr inbounds i8, ptr %22, i32 16
  %31 = load i32, ptr %30, align 4, !noalias !44
  %32 = getelementptr inbounds i8, ptr %22, i32 20
  %33 = load i32, ptr %32, align 4, !noalias !44
  %34 = getelementptr inbounds i8, ptr %22, i32 24
  %35 = load i32, ptr %34, align 4, !noalias !44
  %36 = icmp ult i32 %4, 536870912
  br i1 %36, label %37, label %45

37:                                               ; preds = %6
  %38 = icmp ult i32 %4, 64
  %39 = add nsw i32 %4, -1
  %40 = tail call i32 @llvm.ctlz.i32(i32 %39, i1 false) #23, !range !9
  %41 = xor i32 %40, 31
  %42 = add nuw nsw i32 %41, 1
  %43 = select i1 %38, i32 6, i32 %42
  %44 = tail call i32 @llvm.umin.i32(i32 %23, i32 %43) #23
  br label %45

45:                                               ; preds = %37, %6
  %46 = phi i32 [ %44, %37 ], [ %23, %6 ]
  %47 = icmp ugt i32 %35, 5
  %48 = sext i1 %47 to i32
  %49 = add i32 %25, %48
  %50 = add i32 %46, 1
  %51 = tail call i32 @llvm.umin.i32(i32 %27, i32 %50) #23
  %52 = tail call i32 @llvm.usub.sat.i32(i32 %49, i32 %46) #23
  %53 = sub i32 %25, %52
  %54 = tail call i32 @llvm.umax.i32(i32 %5, i32 -131072) #23
  %55 = sub nsw i32 0, %54
  %56 = select i1 %18, i32 %55, i32 %33
  %57 = tail call i32 @llvm.umax.i32(i32 %46, i32 10) #23
  %58 = select i1 %17, i32 3, i32 %5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(140) %7, i8 0, i32 140, i1 false) #23
  %59 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1
  store i32 %57, ptr %59, align 4
  %60 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1, i32 1
  store i32 %53, ptr %60, align 4
  %61 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1, i32 2
  store i32 %51, ptr %61, align 4
  %62 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1, i32 3
  store i32 %29, ptr %62, align 4
  %63 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1, i32 4
  store i32 %31, ptr %63, align 4
  %64 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1, i32 5
  store i32 %56, ptr %64, align 4
  %65 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1, i32 6
  store i32 %35, ptr %65, align 4
  %66 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 2
  store i32 1, ptr %66, align 4
  %67 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 3
  store i32 %58, ptr %67, align 4
  %68 = tail call fastcc i32 @ZSTD_resetCCtx_internal(ptr noundef %0, ptr noundef nonnull byval(%struct.ZSTD_CCtx_params_s) align 4 %7, i64 noundef %8, i32 noundef 0, i32 noundef 0) #23
  %69 = icmp ult i32 %68, -119
  br i1 %69, label %70, label %74

70:                                               ; preds = %45
  %71 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 5
  store i32 0, ptr %71, align 4
  %72 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 6
  store i32 0, ptr %72, align 8
  %73 = tail call i32 @ZSTD_compressEnd(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #23
  br label %74

74:                                               ; preds = %70, %45
  %75 = phi i32 [ %73, %70 ], [ %68, %45 ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %7) #23
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compress(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = tail call ptr @ZSTD_customMalloc(i32 noundef 2144, [3 x i32] zeroinitializer) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2144) %6, i8 0, i64 2144, i1 false) #23
  %9 = tail call i32 @ZSTD_CCtx_reset(ptr noundef nonnull %6, i32 noundef 2) #23
  %10 = tail call i32 @ZSTD_compressCCtx(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %11 = tail call i32 @ZSTD_freeCCtx(ptr noundef nonnull %6)
  br label %12

12:                                               ; preds = %8, %5
  %13 = phi i32 [ %10, %8 ], [ -64, %5 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_estimateCDictSize_advanced(i32 noundef %0, [7 x i32] %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = extractvalue [7 x i32] %1, 1
  %5 = extractvalue [7 x i32] %1, 2
  %6 = extractvalue [7 x i32] %1, 6
  %7 = icmp eq i32 %6, 1
  %8 = shl i32 4, %4
  %9 = select i1 %7, i32 0, i32 %8
  %10 = shl i32 4, %5
  %11 = icmp eq i32 %2, 1
  %12 = add i32 %0, 3
  %13 = and i32 %12, -4
  %14 = select i1 %11, i32 0, i32 %13
  %15 = add i32 %10, 11220
  %16 = add i32 %15, %9
  %17 = add i32 %16, %14
  ret i32 %17
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_estimateCDictSize(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = alloca %struct.ZSTD_compressionParameters, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #23
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %3, i8 0, i32 28, i1 false), !annotation !8
  call fastcc void @ZSTD_getCParams_internal(ptr nonnull sret(%struct.ZSTD_compressionParameters) align 4 %3, i32 noundef %1, i64 noundef -1, i32 noundef %0, i32 noundef 2)
  %4 = getelementptr inbounds [7 x i32], ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds [7 x i32], ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds [7 x i32], ptr %3, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  %11 = shl i32 4, %5
  %12 = select i1 %10, i32 0, i32 %11
  %13 = shl i32 4, %7
  %14 = add i32 %0, 11223
  %15 = and i32 %14, -4
  %16 = add i32 %15, %13
  %17 = add i32 %16, %12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #23
  ret i32 %17
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_sizeof_CDict(ptr noundef readonly %0) local_unnamed_addr #18 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %0
  %7 = select i1 %6, i32 0, i32 4820
  %8 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 4, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = ptrtoint ptr %5 to i32
  %12 = sub i32 %10, %11
  %13 = add i32 %12, %7
  br label %14

14:                                               ; preds = %3, %1
  %15 = phi i32 [ %13, %3 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ZSTD_createCDict_advanced(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, [7 x i32] %4, [3 x i32] %5) local_unnamed_addr #1 {
  %7 = alloca %struct.ZSTD_CCtx_params_s, align 4
  %8 = extractvalue [7 x i32] %4, 0
  %9 = extractvalue [7 x i32] %4, 1
  %10 = extractvalue [7 x i32] %4, 2
  %11 = extractvalue [7 x i32] %4, 3
  %12 = extractvalue [7 x i32] %4, 4
  %13 = extractvalue [7 x i32] %4, 5
  %14 = extractvalue [7 x i32] %4, 6
  %15 = extractvalue [3 x i32] %5, 0
  %16 = extractvalue [3 x i32] %5, 1
  %17 = extractvalue [3 x i32] %5, 2
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %7) #23
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %7, i8 0, i64 128, i1 false)
  store i32 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1
  store i32 %8, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1, i32 1
  store i32 %9, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1, i32 2
  store i32 %10, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1, i32 3
  store i32 %11, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1, i32 4
  store i32 %12, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1, i32 5
  store i32 %13, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1, i32 6
  store i32 %14, ptr %25, align 4
  %26 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 19
  store i32 %15, ptr %26, align 4
  %27 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 19, i32 1
  store i32 %16, ptr %27, align 4
  %28 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 19, i32 2
  store i32 %17, ptr %28, align 4
  %29 = call ptr @ZSTD_createCDict_advanced2(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %7, [3 x i32] %5)
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %7) #23
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ZSTD_createCDict_advanced2(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, [3 x i32] %5) local_unnamed_addr #1 {
  %7 = alloca %struct.ZSTD_CCtx_params_s, align 4
  %8 = alloca %struct.ZSTD_compressionParameters, align 4
  %9 = alloca %struct.ZSTD_compressionParameters, align 4
  %10 = alloca %struct.ZSTD_compressionParameters, align 4
  %11 = extractvalue [3 x i32] %5, 0
  %12 = extractvalue [3 x i32] %5, 1
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %7) #23
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(140) %7, ptr noundef align 4 dereferenceable(140) %4, i32 140, i1 false)
  %13 = icmp eq i32 %11, 0
  %14 = icmp eq i32 %12, 0
  %15 = xor i1 %13, %14
  br i1 %15, label %187, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 14
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %70, label %20

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #23
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, i8 0, i32 28, i1 false) #23, !alias.scope !49, !annotation !8
  call fastcc void @ZSTD_getCParams_internal(ptr nonnull sret(%struct.ZSTD_compressionParameters) align 4 %8, i32 noundef %22, i64 noundef 0, i32 noundef %1, i32 noundef 2) #23
  %23 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %8, i32 0, i32 6
  %24 = load i32, ptr %23, align 4, !alias.scope !49
  %25 = add i32 %24, -3
  %26 = icmp ult i32 %25, 3
  %27 = getelementptr inbounds i8, ptr %8, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %8, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 2
  %32 = select i1 %26, i32 %31, i32 %28
  %33 = load i32, ptr %8, align 4
  %34 = getelementptr inbounds i8, ptr %8, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds i8, ptr %8, i32 12
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds i8, ptr %8, i32 16
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds i8, ptr %8, i32 20
  %41 = load i32, ptr %40, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #23
  %42 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i32 %33, i32 %43
  %46 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 %32, i32 %47
  %50 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 %35, i32 %51
  %54 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 %37, i32 %55
  %58 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i32 %39, i32 %59
  %62 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, i32 %41, i32 %63
  %66 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, i32 %24, i32 %67
  br label %84

70:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #23
  call void @ZSTD_getCParamsFromCCtxParams(ptr nonnull sret(%struct.ZSTD_compressionParameters) align 4 %9, ptr noundef nonnull %7, i64 noundef -1, i32 noundef %1, i32 noundef 2)
  %71 = load i32, ptr %9, align 4
  %72 = getelementptr inbounds i8, ptr %9, i32 4
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds i8, ptr %9, i32 8
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds i8, ptr %9, i32 12
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds i8, ptr %9, i32 16
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds i8, ptr %9, i32 20
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds i8, ptr %9, i32 24
  %83 = load i32, ptr %82, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #23
  br label %84

84:                                               ; preds = %70, %20
  %85 = phi i32 [ %71, %70 ], [ %45, %20 ]
  %86 = phi i32 [ %73, %70 ], [ %53, %20 ]
  %87 = phi i32 [ %75, %70 ], [ %49, %20 ]
  %88 = phi i32 [ %77, %70 ], [ %57, %20 ]
  %89 = phi i32 [ %79, %70 ], [ %61, %20 ]
  %90 = phi i32 [ %81, %70 ], [ %65, %20 ]
  %91 = phi i32 [ %83, %70 ], [ %69, %20 ]
  %92 = add i32 %91, -6
  %93 = icmp ult i32 %92, -3
  %94 = icmp ult i32 %87, %86
  %95 = select i1 %93, i1 true, i1 %94
  %96 = icmp ugt i32 %86, 24
  %97 = select i1 %95, i1 true, i1 %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %84
  store i32 0, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #23
  call void @ZSTD_getCParamsFromCCtxParams(ptr nonnull sret(%struct.ZSTD_compressionParameters) align 4 %10, ptr noundef nonnull %7, i64 noundef -1, i32 noundef %1, i32 noundef 2)
  %99 = load i32, ptr %10, align 4
  %100 = getelementptr inbounds i8, ptr %10, i32 4
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr inbounds i8, ptr %10, i32 8
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds i8, ptr %10, i32 12
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds i8, ptr %10, i32 16
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr inbounds i8, ptr %10, i32 20
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr inbounds i8, ptr %10, i32 24
  %111 = load i32, ptr %110, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #23
  br label %112

112:                                              ; preds = %98, %84
  %113 = phi i32 [ %99, %98 ], [ %85, %84 ]
  %114 = phi i32 [ %101, %98 ], [ %86, %84 ]
  %115 = phi i32 [ %103, %98 ], [ %87, %84 ]
  %116 = phi i32 [ %105, %98 ], [ %88, %84 ]
  %117 = phi i32 [ %107, %98 ], [ %89, %84 ]
  %118 = phi i32 [ %109, %98 ], [ %90, %84 ]
  %119 = phi i32 [ %111, %98 ], [ %91, %84 ]
  %120 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1
  store i32 %113, ptr %120, align 4
  %121 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1, i32 1
  store i32 %114, ptr %121, align 4
  %122 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1, i32 2
  store i32 %115, ptr %122, align 4
  %123 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1, i32 3
  store i32 %116, ptr %123, align 4
  %124 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1, i32 4
  store i32 %117, ptr %124, align 4
  %125 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1, i32 5
  store i32 %118, ptr %125, align 4
  %126 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %7, i32 0, i32 1, i32 6
  store i32 %119, ptr %126, align 4
  %127 = icmp eq i32 %119, 1
  %128 = shl i32 4, %114
  %129 = select i1 %127, i32 0, i32 %128
  %130 = shl i32 4, %115
  %131 = icmp eq i32 %2, 1
  %132 = add i32 %1, 11223
  %133 = and i32 %132, -4
  %134 = select i1 %131, i32 11220, i32 %133
  %135 = add i32 %130, %134
  %136 = add i32 %135, %129
  %137 = tail call ptr @ZSTD_customMalloc(i32 noundef %136, [3 x i32] %5) #23
  %138 = icmp eq ptr %137, null
  br i1 %138, label %165, label %139

139:                                              ; preds = %112
  %140 = extractvalue [3 x i32] %5, 2
  %141 = inttoptr i32 %12 to ptr
  %142 = inttoptr i32 %11 to ptr
  %143 = getelementptr i8, ptr %137, i32 %136
  %144 = getelementptr i8, ptr %137, i32 4820
  %145 = icmp ugt ptr %144, %143
  %146 = select i1 %145, ptr %137, ptr %144
  %147 = zext i1 %145 to i8
  %148 = select i1 %145, ptr null, ptr %137
  %149 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %148, i32 0, i32 4
  store ptr %137, ptr %149, align 4
  %150 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %148, i32 0, i32 4, i32 1
  store ptr %143, ptr %150, align 4
  %151 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %148, i32 0, i32 4, i32 2
  store ptr %146, ptr %151, align 4
  %152 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %148, i32 0, i32 4, i32 3
  store ptr %146, ptr %152, align 4
  %153 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %148, i32 0, i32 4, i32 4
  store ptr %146, ptr %153, align 4
  %154 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %148, i32 0, i32 4, i32 5
  store ptr %143, ptr %154, align 4
  %155 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %148, i32 0, i32 4, i32 6
  store i8 %147, ptr %155, align 4
  %156 = getelementptr inbounds i8, ptr %149, i32 25
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(15) %156, i8 0, i64 15, i1 false) #23
  %157 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %148, i32 0, i32 7
  store ptr %142, ptr %157, align 4
  %158 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %148, i32 0, i32 7, i32 1
  store ptr %141, ptr %158, align 4
  %159 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %148, i32 0, i32 7, i32 2
  store i32 %140, ptr %159, align 4
  %160 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %148, i32 0, i32 9
  store i32 0, ptr %160, align 4
  %161 = tail call fastcc i32 @ZSTD_initCDict_internal(ptr noundef %148, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull byval(%struct.ZSTD_CCtx_params_s) align 4 %7)
  %162 = icmp ult i32 %161, -119
  %163 = select i1 %162, i1 true, i1 %145
  %164 = select i1 %162, ptr %148, ptr null
  br i1 %163, label %187, label %167

165:                                              ; preds = %112
  tail call void @ZSTD_customFree(ptr noundef null, [3 x i32] %5) #23
  %166 = tail call fastcc i32 @ZSTD_initCDict_internal(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull byval(%struct.ZSTD_CCtx_params_s) align 4 %7)
  br label %187

167:                                              ; preds = %139
  %168 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %148, i32 0, i32 7
  %169 = load i32, ptr %168, align 4
  %170 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %148, i32 0, i32 7, i32 1
  %171 = load i32, ptr %170, align 4
  %172 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %148, i32 0, i32 7, i32 2
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %148, i32 0, i32 4
  %175 = load ptr, ptr %174, align 4
  %176 = icmp ugt ptr %175, %148
  br i1 %176, label %181, label %177

177:                                              ; preds = %167
  %178 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %148, i32 0, i32 4, i32 1
  %179 = load ptr, ptr %178, align 4
  %180 = icmp ult ptr %179, %148
  br label %181

181:                                              ; preds = %177, %167
  %182 = phi i1 [ true, %167 ], [ %180, %177 ]
  %183 = insertvalue [3 x i32] poison, i32 %169, 0
  %184 = insertvalue [3 x i32] %183, i32 %171, 1
  %185 = insertvalue [3 x i32] %184, i32 %173, 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %174, i8 0, i32 40, i1 false) #23
  tail call void @ZSTD_customFree(ptr noundef %175, [3 x i32] %185) #23
  br i1 %182, label %186, label %187

186:                                              ; preds = %181
  tail call void @ZSTD_customFree(ptr noundef nonnull %148, [3 x i32] %185) #23
  br label %187

187:                                              ; preds = %186, %181, %165, %139, %6
  %188 = phi ptr [ null, %6 ], [ %164, %139 ], [ null, %181 ], [ null, %186 ], [ null, %165 ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %7) #23
  ret ptr %188
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_initCDict_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef byval(%struct.ZSTD_CCtx_params_s) align 4 %5) unnamed_addr #1 {
  %7 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 5
  %8 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 5, i32 10
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %8, ptr noundef align 4 dereferenceable(28) %9, i32 28, i1 false)
  %10 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i32 0, i32 14
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 5, i32 7
  %13 = icmp ne i32 %11, 0
  %14 = icmp ugt i32 %2, 1610612735
  %15 = and i1 %14, %13
  %16 = select i1 %15, i32 0, i32 %11
  store i32 %16, ptr %12, align 4
  %17 = icmp ne i32 %3, 1
  %18 = icmp ne ptr %1, null
  %19 = and i1 %18, %17
  %20 = icmp ne i32 %2, 0
  %21 = and i1 %20, %19
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  store ptr %1, ptr %0, align 4
  br label %43

23:                                               ; preds = %6
  %24 = add i32 %2, 3
  %25 = and i32 %24, -4
  %26 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 4, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %25
  %29 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 4, i32 8
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 4, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp ugt ptr %28, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %23
  %37 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 4, i32 6
  store i8 1, ptr %37, align 4
  br label %83

38:                                               ; preds = %32
  store ptr %28, ptr %26, align 4
  %39 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 4, i32 3
  store ptr %28, ptr %39, align 4
  %40 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 4, i32 4
  store ptr %28, ptr %40, align 4
  %41 = icmp eq ptr %27, null
  br i1 %41, label %83, label %42

42:                                               ; preds = %38
  store ptr %27, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %27, ptr nonnull align 1 %1, i32 %2, i1 false)
  br label %43

43:                                               ; preds = %42, %22
  %44 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 1
  store i32 %2, ptr %44, align 4
  %45 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 2
  store i32 %4, ptr %45, align 4
  %46 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 4
  %47 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 4, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 6400
  %50 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 4, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 4, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp ugt ptr %49, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53, %43
  %58 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 4, i32 6
  store i8 1, ptr %58, align 4
  br label %62

59:                                               ; preds = %53
  store ptr %49, ptr %47, align 4
  %60 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 4, i32 3
  store ptr %49, ptr %60, align 4
  %61 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 4, i32 4
  store ptr %49, ptr %61, align 4
  br label %62

62:                                               ; preds = %59, %57
  %63 = phi ptr [ null, %57 ], [ %48, %59 ]
  %64 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 3
  store ptr %63, ptr %64, align 4
  %65 = getelementptr %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 6, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %65, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i32 12, i1 false) #23
  %66 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 6, i32 0, i32 0, i32 1
  store i32 0, ptr %66, align 4
  %67 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 6, i32 0, i32 1, i32 3
  store i32 0, ptr %67, align 4
  %68 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 6, i32 0, i32 1, i32 4
  store i32 0, ptr %68, align 4
  %69 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 6, i32 0, i32 1, i32 5
  store i32 0, ptr %69, align 4
  %70 = call fastcc i32 @ZSTD_reset_matchState(ptr noundef %7, ptr noundef %46, ptr noundef %9, i32 noundef 0, i32 noundef 1, i32 noundef 0), !range !52
  %71 = icmp ult i32 %70, -119
  br i1 %71, label %72, label %83

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i32 0, i32 3
  store i32 3, ptr %74, align 4
  %75 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i32 0, i32 2
  store i32 1, ptr %75, align 4
  %76 = load ptr, ptr %0, align 4
  %77 = load i32, ptr %44, align 4
  %78 = load ptr, ptr %64, align 4
  %79 = call fastcc i32 @ZSTD_compress_insertDictionary(ptr noundef %73, ptr noundef %7, ptr noundef null, ptr noundef %46, ptr noundef %5, ptr noundef %76, i32 noundef %77, i32 noundef %4, i32 noundef 1, ptr noundef %78)
  %80 = icmp ult i32 %79, -119
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 8
  store i32 %79, ptr %82, align 4
  br label %83

83:                                               ; preds = %81, %72, %62, %38, %36
  %84 = phi i32 [ %70, %62 ], [ -64, %36 ], [ -64, %38 ], [ %79, %72 ], [ 0, %81 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_freeCDict(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 7, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 7, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ugt ptr %11, %0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 4, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ult ptr %15, %0
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi i1 [ true, %3 ], [ %16, %13 ]
  %19 = insertvalue [3 x i32] poison, i32 %5, 0
  %20 = insertvalue [3 x i32] %19, i32 %7, 1
  %21 = insertvalue [3 x i32] %20, i32 %9, 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %10, i8 0, i32 40, i1 false) #23
  tail call void @ZSTD_customFree(ptr noundef %11, [3 x i32] %21) #23
  br i1 %18, label %22, label %23

22:                                               ; preds = %17
  tail call void @ZSTD_customFree(ptr noundef nonnull %0, [3 x i32] %21) #23
  br label %23

23:                                               ; preds = %22, %17, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ZSTD_createCDict(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.ZSTD_CCtx_params_s, align 4
  %5 = alloca %struct.ZSTD_compressionParameters, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #23
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false), !annotation !8
  call fastcc void @ZSTD_getCParams_internal(ptr nonnull sret(%struct.ZSTD_compressionParameters) align 4 %5, i32 noundef %2, i64 noundef -1, i32 noundef %1, i32 noundef 2)
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds [7 x i32], ptr %5, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds [7 x i32], ptr %5, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds [7 x i32], ptr %5, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds [7 x i32], ptr %5, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds [7 x i32], ptr %5, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds [7 x i32], ptr %5, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %4) #23
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i64 128, i1 false) #23
  store i32 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 1
  store i32 %6, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 1, i32 1
  store i32 %8, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 1, i32 2
  store i32 %10, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 1, i32 3
  store i32 %12, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 1, i32 4
  store i32 %14, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 1, i32 5
  store i32 %16, ptr %25, align 4
  %26 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 1, i32 6
  store i32 %18, ptr %26, align 4
  %27 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 19
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 19, i32 1
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 19, i32 2
  store i32 0, ptr %29, align 4
  %30 = call ptr @ZSTD_createCDict_advanced2(ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, [3 x i32] zeroinitializer) #23
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %4) #23
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %3
  %33 = icmp eq i32 %2, 0
  %34 = select i1 %33, i32 3, i32 %2
  %35 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %30, i32 0, i32 9
  store i32 %34, ptr %35, align 4
  br label %36

36:                                               ; preds = %32, %3
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #23
  ret ptr %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ZSTD_createCDict_byReference(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.ZSTD_CCtx_params_s, align 4
  %5 = alloca %struct.ZSTD_compressionParameters, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #23
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false), !annotation !8
  call fastcc void @ZSTD_getCParams_internal(ptr nonnull sret(%struct.ZSTD_compressionParameters) align 4 %5, i32 noundef %2, i64 noundef -1, i32 noundef %1, i32 noundef 2)
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds [7 x i32], ptr %5, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds [7 x i32], ptr %5, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds [7 x i32], ptr %5, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds [7 x i32], ptr %5, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds [7 x i32], ptr %5, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds [7 x i32], ptr %5, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %4) #23
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i64 128, i1 false) #23
  store i32 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 1
  store i32 %6, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 1, i32 1
  store i32 %8, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 1, i32 2
  store i32 %10, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 1, i32 3
  store i32 %12, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 1, i32 4
  store i32 %14, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 1, i32 5
  store i32 %16, ptr %25, align 4
  %26 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 1, i32 6
  store i32 %18, ptr %26, align 4
  %27 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 19
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 19, i32 1
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 19, i32 2
  store i32 0, ptr %29, align 4
  %30 = call ptr @ZSTD_createCDict_advanced2(ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %4, [3 x i32] zeroinitializer) #23
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %4) #23
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %3
  %33 = icmp eq i32 %2, 0
  %34 = select i1 %33, i32 3, i32 %2
  %35 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %30, i32 0, i32 9
  store i32 %34, ptr %35, align 4
  br label %36

36:                                               ; preds = %32, %3
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #23
  ret ptr %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ZSTD_initStaticCDict(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, [7 x i32] %6) local_unnamed_addr #1 {
  %8 = alloca %struct.ZSTD_CCtx_params_s, align 4
  %9 = extractvalue [7 x i32] %6, 0
  %10 = extractvalue [7 x i32] %6, 1
  %11 = extractvalue [7 x i32] %6, 2
  %12 = extractvalue [7 x i32] %6, 3
  %13 = extractvalue [7 x i32] %6, 4
  %14 = extractvalue [7 x i32] %6, 5
  %15 = extractvalue [7 x i32] %6, 6
  %16 = icmp eq i32 %15, 1
  %17 = shl i32 4, %10
  %18 = select i1 %16, i32 0, i32 %17
  %19 = shl i32 4, %11
  %20 = icmp eq i32 %4, 1
  %21 = add i32 %3, 11223
  %22 = and i32 %21, -4
  %23 = select i1 %20, i32 11220, i32 %22
  %24 = add i32 %19, %23
  %25 = add i32 %24, %18
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %8) #23
  %26 = ptrtoint ptr %0 to i32
  %27 = and i32 %26, 7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %7
  %30 = getelementptr i8, ptr %0, i32 %1
  %31 = getelementptr i8, ptr %0, i32 4820
  %32 = icmp ugt ptr %31, %30
  %33 = icmp eq ptr %0, null
  %34 = or i1 %33, %32
  br i1 %34, label %57, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 4
  store ptr %0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 4, i32 1
  store ptr %30, ptr %37, align 4
  %38 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 4, i32 2
  store ptr %31, ptr %38, align 4
  %39 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 4, i32 3
  store ptr %31, ptr %39, align 4
  %40 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 4, i32 4
  store ptr %31, ptr %40, align 4
  %41 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 4, i32 5
  store ptr %30, ptr %41, align 4
  %42 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 4, i32 6
  %43 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 4, i32 9
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %42, i8 0, i64 12, i1 false)
  store i32 1, ptr %43, align 4
  %44 = icmp ugt i32 %25, %1
  br i1 %44, label %57, label %45

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %8, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(140) %8, i8 0, i64 140, i1 false)
  store i32 1, ptr %46, align 4
  %47 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %8, i32 0, i32 1
  store i32 %9, ptr %47, align 4
  %48 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %8, i32 0, i32 1, i32 1
  store i32 %10, ptr %48, align 4
  %49 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %8, i32 0, i32 1, i32 2
  store i32 %11, ptr %49, align 4
  %50 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %8, i32 0, i32 1, i32 3
  store i32 %12, ptr %50, align 4
  %51 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %8, i32 0, i32 1, i32 4
  store i32 %13, ptr %51, align 4
  %52 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %8, i32 0, i32 1, i32 5
  store i32 %14, ptr %52, align 4
  %53 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %8, i32 0, i32 1, i32 6
  store i32 %15, ptr %53, align 4
  %54 = tail call fastcc i32 @ZSTD_initCDict_internal(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull byval(%struct.ZSTD_CCtx_params_s) align 4 %8)
  %55 = icmp ult i32 %54, -119
  %56 = select i1 %55, ptr %0, ptr null
  br label %57

57:                                               ; preds = %45, %35, %29, %7
  %58 = phi ptr [ null, %7 ], [ null, %35 ], [ %56, %45 ], [ null, %29 ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %8) #23
  ret ptr %58
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ZSTD_getCParamsFromCDict(ptr noalias nocapture writeonly sret(%struct.ZSTD_compressionParameters) align 4 %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %1, i32 0, i32 5, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %0, ptr noundef align 4 dereferenceable(28) %3, i32 28, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_getDictID_fromCDict(ptr noundef readonly %0) local_unnamed_addr #18 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBegin_usingCDict_advanced(ptr noundef %0, ptr noundef %1, [3 x i32] %2, i64 noundef %3) local_unnamed_addr #1 {
  %5 = alloca %struct.ZSTD_CCtx_params_s, align 4
  %6 = alloca %struct.ZSTD_compressionParameters, align 4
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %5) #23
  %7 = icmp eq ptr %1, null
  br i1 %7, label %50, label %8

8:                                                ; preds = %4
  %9 = extractvalue [3 x i32] %2, 2
  %10 = extractvalue [3 x i32] %2, 1
  %11 = extractvalue [3 x i32] %2, 0
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 28, i1 false)
  %12 = icmp ult i64 %3, 131072
  br i1 %12, label %25, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = zext i32 %15 to i64
  %17 = mul nuw nsw i64 %16, 6
  %18 = icmp ugt i64 %17, %3
  %19 = icmp eq i64 %3, -1
  %20 = or i1 %19, %18
  br i1 %20, label %25, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %1, i32 0, i32 9
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %13, %8
  %26 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %1, i32 0, i32 5, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, ptr noundef align 4 dereferenceable(28) %26, i32 28, i1 false) #23
  br label %28

27:                                               ; preds = %21
  call fastcc void @ZSTD_getCParams_internal(ptr nonnull sret(%struct.ZSTD_compressionParameters) align 4 %6, i32 noundef %23, i64 noundef %3, i32 noundef %15, i32 noundef 3) #23
  br label %28

28:                                               ; preds = %27, %25
  %29 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %1, i32 0, i32 9
  %30 = load i32, ptr %29, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(140) %5, i8 0, i32 140, i1 false) #23
  %31 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %31, ptr noundef nonnull align 4 dereferenceable(28) %6, i32 28, i1 false)
  %32 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i32 0, i32 2
  store i32 %11, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i32 0, i32 2, i32 1
  store i32 %10, ptr %33, align 4
  %34 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i32 0, i32 2, i32 2
  store i32 %9, ptr %34, align 4
  %35 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i32 0, i32 3
  store i32 %30, ptr %35, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6)
  %36 = icmp eq i64 %3, -1
  br i1 %36, label %48, label %37

37:                                               ; preds = %28
  %38 = tail call i64 @llvm.umin.i64(i64 %3, i64 524288)
  %39 = trunc i64 %38 to i32
  %40 = icmp ugt i32 %39, 1
  %41 = add nsw i32 %39, -1
  %42 = tail call i32 @llvm.ctlz.i32(i32 %41, i1 false) #23, !range !9
  %43 = xor i32 %42, 31
  %44 = add nuw nsw i32 %43, 1
  %45 = select i1 %40, i32 %44, i32 1
  %46 = load i32, ptr %31, align 4
  %47 = tail call i32 @llvm.umax.i32(i32 %46, i32 %45)
  store i32 %47, ptr %31, align 4
  br label %48

48:                                               ; preds = %37, %28
  %49 = call fastcc i32 @ZSTD_compressBegin_internal(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %5, i64 noundef %3, i32 noundef 0)
  br label %50

50:                                               ; preds = %48, %4
  %51 = phi i32 [ %49, %48 ], [ -32, %4 ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %5) #23
  ret i32 %51
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ZSTD_getCParams(ptr noalias nocapture writeonly sret(%struct.ZSTD_compressionParameters) align 4 %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = icmp eq i64 %2, 0
  %6 = select i1 %5, i64 -1, i64 %2
  tail call fastcc void @ZSTD_getCParams_internal(ptr sret(%struct.ZSTD_compressionParameters) align 4 %0, i32 noundef %1, i64 noundef %6, i32 noundef %3, i32 noundef 3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressBegin_usingCDict(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.ZSTD_CCtx_params_s, align 4
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %3) #23
  %4 = icmp eq ptr %1, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %1, i32 0, i32 5, i32 10
  %7 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %1, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(140) %3, i8 0, i32 140, i1 false) #23
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %9, ptr noundef align 4 dereferenceable(28) %6, i32 28, i1 false)
  %10 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i32 0, i32 2, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i32 0, i32 3
  store i32 %8, ptr %11, align 4
  %12 = call fastcc i32 @ZSTD_compressBegin_internal(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %3, i64 noundef -1, i32 noundef 0) #23
  br label %13

13:                                               ; preds = %5, %2
  %14 = phi i32 [ %12, %5 ], [ -32, %2 ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %3) #23
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compress_usingCDict_advanced(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, [3 x i32] %6) local_unnamed_addr #1 {
  %8 = zext i32 %4 to i64
  %9 = tail call i32 @ZSTD_compressBegin_usingCDict_advanced(ptr noundef %0, ptr noundef %5, [3 x i32] %6, i64 noundef %8)
  %10 = icmp ult i32 %9, -119
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call i32 @ZSTD_compressEnd(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi i32 [ %9, %7 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compress_usingCDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #1 {
  %7 = zext i32 %4 to i64
  %8 = tail call i32 @ZSTD_compressBegin_usingCDict_advanced(ptr noundef %0, ptr noundef %5, [3 x i32] [i32 1, i32 0, i32 0], i64 noundef %7) #23
  %9 = icmp ult i32 %8, -119
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 @ZSTD_compressEnd(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #23
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %8, %6 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ZSTD_createCStream() local_unnamed_addr #1 {
  %1 = tail call ptr @ZSTD_customMalloc(i32 noundef 2144, [3 x i32] zeroinitializer) #23
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2144) %1, i8 0, i64 2144, i1 false)
  %4 = tail call i32 @ZSTD_CCtx_reset(ptr noundef nonnull %1, i32 noundef 2) #23
  br label %5

5:                                                ; preds = %3, %0
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ZSTD_createCStream_advanced([3 x i32] %0) local_unnamed_addr #1 {
  %2 = extractvalue [3 x i32] %0, 0
  %3 = extractvalue [3 x i32] %0, 1
  %4 = icmp eq i32 %2, 0
  %5 = icmp eq i32 %3, 0
  %6 = xor i1 %4, %5
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @ZSTD_customMalloc(i32 noundef 2144, [3 x i32] %0) #23
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = extractvalue [3 x i32] %0, 2
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(2144) %8, i8 0, i32 2144, i1 false) #23
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %8, i32 0, i32 13
  store i32 %2, ptr %12, align 8
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %8, i32 0, i32 13, i32 1
  store i32 %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %8, i32 0, i32 13, i32 2
  store i32 %11, ptr %14, align 8
  %15 = tail call i32 @ZSTD_CCtx_reset(ptr noundef nonnull %8, i32 noundef 2) #23
  br label %16

16:                                               ; preds = %10, %7, %1
  %17 = phi ptr [ null, %1 ], [ %8, %10 ], [ null, %7 ]
  ret ptr %17
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local ptr @ZSTD_initStaticCStream(ptr noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = icmp ugt i32 %1, 2144
  %4 = ptrtoint ptr %0 to i32
  %5 = and i32 %4, 7
  %6 = icmp eq i32 %5, 0
  %7 = and i1 %3, %6
  br i1 %7, label %8, label %51

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 %1
  %10 = getelementptr i8, ptr %0, i32 2144
  %11 = icmp ugt ptr %10, %9
  %12 = icmp eq ptr %0, null
  %13 = or i1 %12, %11
  br i1 %13, label %51, label %14

14:                                               ; preds = %8
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(2144) %0, i8 0, i32 2144, i1 false) #23
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7
  store ptr %0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 1
  store ptr %9, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 2
  store ptr %10, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 3
  store ptr %10, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 4
  store ptr %10, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 5
  store ptr %9, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 6
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %21, i8 0, i64 12, i1 false) #23
  store i32 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 15
  store i32 %1, ptr %23, align 8
  %24 = add i32 %1, -2144
  %25 = icmp ult i32 %24, 15800
  br i1 %25, label %51, label %26

26:                                               ; preds = %14
  %27 = getelementptr i8, ptr %0, i32 6736
  %28 = icmp ugt ptr %27, %9
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i8 1, ptr %21, align 4
  br label %31

30:                                               ; preds = %26
  store ptr %27, ptr %17, align 4
  store ptr %27, ptr %18, align 4
  store ptr %27, ptr %19, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = phi ptr [ %10, %29 ], [ %27, %30 ]
  %33 = phi ptr [ null, %29 ], [ %10, %30 ]
  %34 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24
  store ptr %33, ptr %34, align 4
  %35 = getelementptr i8, ptr %32, i32 4592
  %36 = icmp ugt ptr %35, %9
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i8 1, ptr %21, align 4
  br label %39

38:                                               ; preds = %31
  store ptr %35, ptr %17, align 4
  store ptr %35, ptr %18, align 4
  store ptr %35, ptr %19, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = phi ptr [ %32, %37 ], [ %35, %38 ]
  %41 = phi ptr [ null, %37 ], [ %32, %38 ]
  %42 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 1
  store ptr %41, ptr %42, align 4
  %43 = getelementptr i8, ptr %40, i32 6616
  %44 = icmp ugt ptr %43, %9
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i8 1, ptr %21, align 4
  br label %47

46:                                               ; preds = %39
  store ptr %43, ptr %17, align 4
  store ptr %43, ptr %18, align 4
  store ptr %43, ptr %19, align 4
  br label %47

47:                                               ; preds = %46, %45
  %48 = phi ptr [ null, %45 ], [ %40, %46 ]
  %49 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 25
  store ptr %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 2
  store i32 0, ptr %50, align 8
  br label %51

51:                                               ; preds = %47, %14, %8, %2
  %52 = phi ptr [ %0, %47 ], [ null, %2 ], [ null, %14 ], [ null, %8 ]
  ret ptr %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_freeCStream(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call i32 @ZSTD_freeCCtx(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_CStreamInSize() local_unnamed_addr #0 {
  ret i32 131072
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_CStreamOutSize() local_unnamed_addr #0 {
  ret i32 131591
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_resetCStream(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #10 {
  %3 = icmp eq i64 %1, 0
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 36
  store i32 0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 9
  %6 = add i64 %1, 1
  %7 = select i1 %3, i64 0, i64 %6
  store i64 %7, ptr %5, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_initCStream_internal(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #1 {
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 36
  store i32 0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 9
  %9 = add i64 %5, 1
  store i64 %9, ptr %8, align 8
  %10 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(140) %10, ptr noundef align 4 dereferenceable(140) %4, i32 140, i1 false)
  %11 = icmp eq ptr %1, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = tail call i32 @ZSTD_CCtx_loadDictionary_advanced(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef 0, i32 noundef 0) #23
  %14 = icmp ult i32 %13, -119
  br i1 %14, label %52, label %53

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13
  %19 = load i32, ptr %18, align 8
  %20 = insertvalue [3 x i32] undef, i32 %19, 0
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = insertvalue [3 x i32] %20, i32 %22, 1
  %24 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = insertvalue [3 x i32] %23, i32 %25, 2
  tail call void @ZSTD_customFree(ptr noundef %17, [3 x i32] %26) #23
  %27 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40, i32 4
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %50, label %30

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %28, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %28, i32 0, i32 7, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %28, i32 0, i32 7, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %28, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = icmp ugt ptr %38, %28
  br i1 %39, label %44, label %40

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %28, i32 0, i32 4, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp ult ptr %42, %28
  br label %44

44:                                               ; preds = %40, %30
  %45 = phi i1 [ true, %30 ], [ %43, %40 ]
  %46 = insertvalue [3 x i32] poison, i32 %32, 0
  %47 = insertvalue [3 x i32] %46, i32 %34, 1
  %48 = insertvalue [3 x i32] %47, i32 %36, 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %37, i8 0, i32 40, i1 false) #23
  tail call void @ZSTD_customFree(ptr noundef %38, [3 x i32] %48) #23
  br i1 %45, label %49, label %50

49:                                               ; preds = %44
  tail call void @ZSTD_customFree(ptr noundef nonnull %28, [3 x i32] %48) #23
  br label %50

50:                                               ; preds = %49, %44, %15
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(36) %16, i8 0, i64 36, i1 false) #23
  %51 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 41
  store ptr %3, ptr %51, align 4
  br label %52

52:                                               ; preds = %50, %12
  br label %53

53:                                               ; preds = %52, %12
  %54 = phi i32 [ %13, %12 ], [ 0, %52 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_initCStream_usingCDict_advanced(ptr nocapture noundef %0, ptr noundef %1, [3 x i32] %2, i64 noundef %3) local_unnamed_addr #1 {
  %5 = extractvalue [3 x i32] %2, 0
  %6 = extractvalue [3 x i32] %2, 1
  %7 = extractvalue [3 x i32] %2, 2
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 36
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 9
  %10 = add i64 %3, 1
  store i64 %10, ptr %9, align 8
  %11 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3, i32 2
  store i32 %5, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3, i32 2, i32 1
  store i32 %6, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3, i32 2, i32 2
  store i32 %7, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13
  %17 = load i32, ptr %16, align 8
  %18 = insertvalue [3 x i32] undef, i32 %17, 0
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = insertvalue [3 x i32] %18, i32 %20, 1
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = insertvalue [3 x i32] %21, i32 %23, 2
  tail call void @ZSTD_customFree(ptr noundef %15, [3 x i32] %24) #23
  %25 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40, i32 4
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %48, label %28

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %26, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %26, i32 0, i32 7, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %26, i32 0, i32 7, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %26, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = icmp ugt ptr %36, %26
  br i1 %37, label %42, label %38

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %26, i32 0, i32 4, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp ult ptr %40, %26
  br label %42

42:                                               ; preds = %38, %28
  %43 = phi i1 [ true, %28 ], [ %41, %38 ]
  %44 = insertvalue [3 x i32] poison, i32 %30, 0
  %45 = insertvalue [3 x i32] %44, i32 %32, 1
  %46 = insertvalue [3 x i32] %45, i32 %34, 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %35, i8 0, i32 40, i1 false) #23
  tail call void @ZSTD_customFree(ptr noundef %36, [3 x i32] %46) #23
  br i1 %43, label %47, label %48

47:                                               ; preds = %42
  tail call void @ZSTD_customFree(ptr noundef nonnull %26, [3 x i32] %46) #23
  br label %48

48:                                               ; preds = %47, %42, %4
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(36) %14, i8 0, i64 36, i1 false) #23
  %49 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 41
  store ptr %1, ptr %49, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_initCStream_usingCDict(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 36
  store i32 0, ptr %3, align 8
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 9
  store i64 0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13
  %8 = load i32, ptr %7, align 8
  %9 = insertvalue [3 x i32] undef, i32 %8, 0
  %10 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = insertvalue [3 x i32] %9, i32 %11, 1
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = insertvalue [3 x i32] %12, i32 %14, 2
  tail call void @ZSTD_customFree(ptr noundef %6, [3 x i32] %15) #23
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40, i32 4
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %39, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %17, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %17, i32 0, i32 7, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %17, i32 0, i32 7, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %17, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp ugt ptr %27, %17
  br i1 %28, label %33, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %17, i32 0, i32 4, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp ult ptr %31, %17
  br label %33

33:                                               ; preds = %29, %19
  %34 = phi i1 [ true, %19 ], [ %32, %29 ]
  %35 = insertvalue [3 x i32] poison, i32 %21, 0
  %36 = insertvalue [3 x i32] %35, i32 %23, 1
  %37 = insertvalue [3 x i32] %36, i32 %25, 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %26, i8 0, i32 40, i1 false) #23
  tail call void @ZSTD_customFree(ptr noundef %27, [3 x i32] %37) #23
  br i1 %34, label %38, label %39

38:                                               ; preds = %33
  tail call void @ZSTD_customFree(ptr noundef nonnull %17, [3 x i32] %37) #23
  br label %39

39:                                               ; preds = %38, %33, %2
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(36) %5, i8 0, i64 36, i1 false) #23
  %40 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 41
  store ptr %1, ptr %40, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_initCStream_advanced(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, [10 x i32] %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = extractvalue [10 x i32] %3, 0
  %7 = extractvalue [10 x i32] %3, 1
  %8 = extractvalue [10 x i32] %3, 2
  %9 = extractvalue [10 x i32] %3, 3
  %10 = extractvalue [10 x i32] %3, 4
  %11 = extractvalue [10 x i32] %3, 5
  %12 = extractvalue [10 x i32] %3, 6
  %13 = extractvalue [10 x i32] %3, 7
  %14 = icmp eq i64 %4, 0
  %15 = icmp eq i32 %13, 0
  %16 = select i1 %14, i1 %15, i1 false
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 36
  store i32 0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 9
  %19 = add i64 %4, 1
  %20 = select i1 %16, i64 0, i64 %19
  store i64 %20, ptr %18, align 8
  %21 = add i32 %6, -31
  %22 = icmp ult i32 %21, -21
  %23 = add i32 %7, -30
  %24 = icmp ult i32 %23, -24
  %25 = select i1 %22, i1 true, i1 %24
  %26 = add i32 %8, -31
  %27 = icmp ult i32 %26, -25
  %28 = select i1 %25, i1 true, i1 %27
  %29 = add i32 %9, -30
  %30 = icmp ult i32 %29, -29
  %31 = select i1 %28, i1 true, i1 %30
  %32 = add i32 %10, -8
  %33 = icmp ult i32 %32, -5
  %34 = select i1 %31, i1 true, i1 %33
  %35 = icmp ugt i32 %11, 131072
  %36 = select i1 %34, i1 true, i1 %35
  %37 = add i32 %12, -10
  %38 = icmp ult i32 %37, -9
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %57, label %40

40:                                               ; preds = %5
  %41 = extractvalue [10 x i32] %3, 9
  %42 = extractvalue [10 x i32] %3, 8
  %43 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3, i32 1
  store i32 %6, ptr %43, align 4
  %44 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3, i32 1, i32 1
  store i32 %7, ptr %44, align 4
  %45 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3, i32 1, i32 2
  store i32 %8, ptr %45, align 4
  %46 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3, i32 1, i32 3
  store i32 %9, ptr %46, align 4
  %47 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3, i32 1, i32 4
  store i32 %10, ptr %47, align 4
  %48 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3, i32 1, i32 5
  store i32 %11, ptr %48, align 4
  %49 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3, i32 1, i32 6
  store i32 %12, ptr %49, align 4
  %50 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3, i32 2
  store i32 %13, ptr %50, align 4
  %51 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3, i32 2, i32 1
  store i32 %42, ptr %51, align 4
  %52 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3, i32 2, i32 2
  store i32 %41, ptr %52, align 4
  %53 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3, i32 3
  store i32 0, ptr %53, align 4
  %54 = tail call i32 @ZSTD_CCtx_loadDictionary_advanced(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 0) #23
  %55 = icmp ult i32 %54, -119
  %56 = select i1 %55, i32 0, i32 %54
  br label %57

57:                                               ; preds = %40, %5
  %58 = phi i32 [ -42, %5 ], [ %56, %40 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_initCStream_usingDict(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 36
  store i32 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 9
  store i64 0, ptr %6, align 8
  %7 = icmp slt i32 %3, -131072
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = icmp sgt i32 %3, 22
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %10, %8, %4
  %13 = phi i32 [ %3, %10 ], [ -131072, %4 ], [ 22, %8 ]
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %13, %12 ], [ 3, %10 ]
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3, i32 3
  store i32 %15, ptr %16, align 4
  %17 = tail call i32 @ZSTD_CCtx_loadDictionary_advanced(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 0) #23
  %18 = icmp ult i32 %17, -119
  %19 = select i1 %18, i32 0, i32 %17
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_initCStream_srcSize(ptr nocapture noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq i64 %2, 0
  %5 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 36
  store i32 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 9
  store i64 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13
  %10 = load i32, ptr %9, align 8
  %11 = insertvalue [3 x i32] undef, i32 %10, 0
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = insertvalue [3 x i32] %11, i32 %13, 1
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = insertvalue [3 x i32] %14, i32 %16, 2
  tail call void @ZSTD_customFree(ptr noundef %8, [3 x i32] %17) #23
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40, i32 4
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %41, label %21

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %19, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %19, i32 0, i32 7, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %19, i32 0, i32 7, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %19, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp ugt ptr %29, %19
  br i1 %30, label %35, label %31

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %19, i32 0, i32 4, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp ult ptr %33, %19
  br label %35

35:                                               ; preds = %31, %21
  %36 = phi i1 [ true, %21 ], [ %34, %31 ]
  %37 = insertvalue [3 x i32] poison, i32 %23, 0
  %38 = insertvalue [3 x i32] %37, i32 %25, 1
  %39 = insertvalue [3 x i32] %38, i32 %27, 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %28, i8 0, i32 40, i1 false) #23
  tail call void @ZSTD_customFree(ptr noundef %29, [3 x i32] %39) #23
  br i1 %36, label %40, label %41

40:                                               ; preds = %35
  tail call void @ZSTD_customFree(ptr noundef nonnull %19, [3 x i32] %39) #23
  br label %41

41:                                               ; preds = %40, %35, %3
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(36) %7, i8 0, i64 36, i1 false)
  %42 = load i32, ptr %5, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 1
  store i32 1, ptr %45, align 4
  br label %46

46:                                               ; preds = %44, %41
  %47 = icmp slt i32 %1, -131072
  br i1 %47, label %52, label %48

48:                                               ; preds = %46
  %49 = icmp sgt i32 %1, 22
  br i1 %49, label %52, label %50

50:                                               ; preds = %48
  %51 = icmp eq i32 %1, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %50, %48, %46
  %53 = phi i32 [ %1, %50 ], [ -131072, %46 ], [ 22, %48 ]
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %53, %52 ], [ 3, %50 ]
  %56 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3, i32 3
  store i32 %55, ptr %56, align 4
  br i1 %43, label %57, label %60

57:                                               ; preds = %54
  %58 = add i64 %2, 1
  %59 = select i1 %4, i64 0, i64 %58
  store i64 %59, ptr %6, align 8
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi i32 [ 0, %57 ], [ -60, %54 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_initCStream(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 36
  store i32 0, ptr %3, align 8
  %4 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 9
  store i64 0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13
  %8 = load i32, ptr %7, align 8
  %9 = insertvalue [3 x i32] undef, i32 %8, 0
  %10 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = insertvalue [3 x i32] %9, i32 %11, 1
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = insertvalue [3 x i32] %12, i32 %14, 2
  tail call void @ZSTD_customFree(ptr noundef %6, [3 x i32] %15) #23
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40, i32 4
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %39, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %17, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %17, i32 0, i32 7, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %17, i32 0, i32 7, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %17, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp ugt ptr %27, %17
  br i1 %28, label %33, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %17, i32 0, i32 4, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp ult ptr %31, %17
  br label %33

33:                                               ; preds = %29, %19
  %34 = phi i1 [ true, %19 ], [ %32, %29 ]
  %35 = insertvalue [3 x i32] poison, i32 %21, 0
  %36 = insertvalue [3 x i32] %35, i32 %23, 1
  %37 = insertvalue [3 x i32] %36, i32 %25, 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %26, i8 0, i32 40, i1 false) #23
  tail call void @ZSTD_customFree(ptr noundef %27, [3 x i32] %37) #23
  br i1 %34, label %38, label %39

38:                                               ; preds = %33
  tail call void @ZSTD_customFree(ptr noundef nonnull %17, [3 x i32] %37) #23
  br label %39

39:                                               ; preds = %38, %33, %2
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(36) %5, i8 0, i64 36, i1 false)
  %40 = load i32, ptr %3, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 1
  store i32 1, ptr %43, align 4
  br label %44

44:                                               ; preds = %42, %39
  %45 = icmp slt i32 %1, -131072
  br i1 %45, label %50, label %46

46:                                               ; preds = %44
  %47 = icmp sgt i32 %1, 22
  br i1 %47, label %50, label %48

48:                                               ; preds = %46
  %49 = icmp eq i32 %1, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %48, %46, %44
  %51 = phi i32 [ %1, %48 ], [ -131072, %44 ], [ 22, %46 ]
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %51, %50 ], [ 3, %48 ]
  %54 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3, i32 3
  store i32 %53, ptr %54, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressStream(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  %4 = tail call i32 @ZSTD_compressStream2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  %5 = icmp ult i32 %4, -119
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 31
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 30
  %10 = load i32, ptr %9, align 8
  %11 = sub i32 %8, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %6, %3
  %17 = phi i32 [ %4, %3 ], [ %15, %13 ], [ %11, %6 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressStream2(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %307, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %2, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %2, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %12, %14
  br i1 %15, label %307, label %16

16:                                               ; preds = %10
  %17 = icmp ugt i32 %3, 2
  br i1 %17, label %307, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 36
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 15
  %24 = load i32, ptr %23, align 8
  br label %43

25:                                               ; preds = %18
  %26 = tail call fastcc i32 @ZSTD_CCtx_init_compressStream2(ptr noundef %0, i32 noundef %3, i32 noundef %14)
  %27 = icmp ult i32 %26, -119
  br i1 %27, label %28, label %307

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 15
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 38
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(12) %33, ptr noundef align 4 dereferenceable(12) %2, i32 12, i1 false) #23
  br label %34

34:                                               ; preds = %32, %28
  %35 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 16
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, ptr %7, align 4
  %40 = load i32, ptr %5, align 4
  %41 = sub i32 %39, %40
  %42 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 39
  store i32 %41, ptr %42, align 4
  br label %43

43:                                               ; preds = %38, %34, %22
  %44 = phi i32 [ %24, %22 ], [ %30, %38 ], [ %30, %34 ]
  %45 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 15
  %46 = icmp eq i32 %44, 1
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 38
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 38, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = load ptr, ptr %2, align 4
  %53 = icmp eq ptr %49, %52
  br i1 %53, label %54, label %307

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 38, i32 2
  %56 = load i32, ptr %55, align 8
  %57 = load i32, ptr %11, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %307

59:                                               ; preds = %54
  %60 = load i32, ptr %13, align 4
  %61 = icmp eq i32 %51, %60
  %62 = icmp eq i32 %3, 2
  %63 = and i1 %62, %61
  br i1 %63, label %64, label %307

64:                                               ; preds = %59, %43
  %65 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 16
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 1
  %68 = load i32, ptr %7, align 4
  %69 = load i32, ptr %5, align 4
  br i1 %67, label %70, label %75

70:                                               ; preds = %64
  %71 = sub i32 %68, %69
  %72 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 39
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, %71
  br i1 %74, label %75, label %307

75:                                               ; preds = %70, %64
  %76 = load ptr, ptr %2, align 4
  %77 = load i32, ptr %13, align 4
  %78 = getelementptr i8, ptr %76, i32 %77
  %79 = load i32, ptr %11, align 4
  %80 = getelementptr i8, ptr %76, i32 %79
  %81 = load ptr, ptr %1, align 4
  %82 = getelementptr i8, ptr %81, i32 %68
  %83 = getelementptr i8, ptr %81, i32 %69
  %84 = icmp eq i32 %3, 2
  %85 = ptrtoint ptr %82 to i32
  %86 = ptrtoint ptr %78 to i32
  %87 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 30
  %88 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 31
  %89 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 27
  %90 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 29
  %91 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 8
  %92 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 32
  %93 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 33
  %94 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 37
  %95 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 28
  %96 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 34
  %97 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 35
  %98 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 9
  br label %99

99:                                               ; preds = %263, %75
  %100 = phi ptr [ %83, %75 ], [ %264, %263 ]
  %101 = phi ptr [ %80, %75 ], [ %265, %263 ]
  %102 = load i32, ptr %19, align 8
  br label %103

103:                                              ; preds = %103, %99
  switch i32 %102, label %103 [
    i32 0, label %307
    i32 1, label %107
    i32 2, label %104
  ]

104:                                              ; preds = %103
  %105 = load i32, ptr %96, align 8
  %106 = load i32, ptr %97, align 4
  br label %241

107:                                              ; preds = %103
  br i1 %84, label %108, label %132

108:                                              ; preds = %107
  %109 = ptrtoint ptr %100 to i32
  %110 = sub i32 %85, %109
  %111 = ptrtoint ptr %101 to i32
  %112 = sub i32 %86, %111
  %113 = lshr i32 %112, 8
  %114 = add i32 %113, %112
  %115 = icmp ult i32 %112, 131072
  %116 = sub i32 131072, %112
  %117 = lshr i32 %116, 11
  %118 = select i1 %115, i32 %117, i32 0
  %119 = add i32 %114, %118
  %120 = icmp ult i32 %110, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %108
  %122 = load i32, ptr %65, align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %132

124:                                              ; preds = %121, %108
  %125 = load i32, ptr %87, align 8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = tail call i32 @ZSTD_compressEnd(ptr noundef %0, ptr noundef %100, i32 noundef %110, ptr noundef %101, i32 noundef %112) #23
  %129 = icmp ult i32 %128, -119
  br i1 %129, label %130, label %307

130:                                              ; preds = %127
  %131 = getelementptr i8, ptr %100, i32 %128
  store i32 1, ptr %94, align 4
  br label %266

132:                                              ; preds = %124, %121, %107
  %133 = load i32, ptr %45, align 8
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  %136 = ptrtoint ptr %100 to i32
  %137 = sub i32 %85, %136
  br label %168

138:                                              ; preds = %132
  %139 = load i32, ptr %88, align 4
  %140 = load i32, ptr %87, align 8
  %141 = sub i32 %139, %140
  %142 = ptrtoint ptr %101 to i32
  %143 = sub i32 %86, %142
  %144 = tail call i32 @llvm.umin.i32(i32 %141, i32 %143) #23
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %138
  %147 = load ptr, ptr %89, align 4
  %148 = getelementptr i8, ptr %147, i32 %140
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %148, ptr align 1 %101, i32 %144, i1 false) #23
  %149 = load i32, ptr %87, align 8
  br label %150

150:                                              ; preds = %146, %138
  %151 = phi i32 [ %140, %138 ], [ %149, %146 ]
  %152 = add i32 %151, %144
  store i32 %152, ptr %87, align 8
  %153 = getelementptr i8, ptr %101, i32 %144
  switch i32 %3, label %160 [
    i32 0, label %154
    i32 1, label %157
  ]

154:                                              ; preds = %150
  %155 = load i32, ptr %88, align 4
  %156 = icmp ult i32 %152, %155
  br i1 %156, label %269, label %160

157:                                              ; preds = %150
  %158 = load i32, ptr %90, align 4
  %159 = icmp eq i32 %152, %158
  br i1 %159, label %269, label %160

160:                                              ; preds = %157, %154, %150
  %161 = load i32, ptr %45, align 8
  %162 = icmp eq i32 %161, 0
  %163 = ptrtoint ptr %100 to i32
  %164 = sub i32 %85, %163
  br i1 %162, label %165, label %168

165:                                              ; preds = %160
  %166 = load i32, ptr %90, align 4
  %167 = sub i32 %152, %166
  br label %175

168:                                              ; preds = %160, %135
  %169 = phi i32 [ %137, %135 ], [ %164, %160 ]
  %170 = phi ptr [ %101, %135 ], [ %153, %160 ]
  %171 = ptrtoint ptr %170 to i32
  %172 = sub i32 %86, %171
  %173 = load i32, ptr %91, align 4
  %174 = tail call i32 @llvm.umin.i32(i32 %172, i32 %173) #23
  br label %175

175:                                              ; preds = %168, %165
  %176 = phi i32 [ %164, %165 ], [ %169, %168 ]
  %177 = phi i1 [ true, %165 ], [ false, %168 ]
  %178 = phi ptr [ %153, %165 ], [ %170, %168 ]
  %179 = phi i32 [ %167, %165 ], [ %174, %168 ]
  %180 = lshr i32 %179, 8
  %181 = add i32 %180, %179
  %182 = icmp ult i32 %179, 131072
  %183 = sub i32 131072, %179
  %184 = lshr i32 %183, 11
  %185 = select i1 %182, i32 %184, i32 0
  %186 = add i32 %181, %185
  %187 = icmp ult i32 %176, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %175
  %189 = load i32, ptr %65, align 4
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %194, label %191

191:                                              ; preds = %188
  %192 = load ptr, ptr %92, align 8
  %193 = load i32, ptr %93, align 4
  br label %194

194:                                              ; preds = %191, %188, %175
  %195 = phi ptr [ %192, %191 ], [ %100, %188 ], [ %100, %175 ]
  %196 = phi i32 [ %193, %191 ], [ %176, %188 ], [ %176, %175 ]
  br i1 %177, label %197, label %220

197:                                              ; preds = %194
  %198 = icmp eq ptr %178, %78
  %199 = select i1 %84, i1 %198, i1 false
  %200 = zext i1 %199 to i32
  %201 = load ptr, ptr %89, align 4
  %202 = load i32, ptr %90, align 4
  %203 = getelementptr i8, ptr %201, i32 %202
  br i1 %199, label %204, label %206

204:                                              ; preds = %197
  %205 = tail call i32 @ZSTD_compressEnd(ptr noundef %0, ptr noundef %195, i32 noundef %196, ptr noundef %203, i32 noundef %179) #23
  br label %208

206:                                              ; preds = %197
  %207 = tail call fastcc i32 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %195, i32 noundef %196, ptr noundef %203, i32 noundef %179, i32 noundef 1, i32 noundef 0) #23
  br label %208

208:                                              ; preds = %206, %204
  %209 = phi i32 [ %205, %204 ], [ %207, %206 ]
  %210 = icmp ult i32 %209, -119
  br i1 %210, label %211, label %307

211:                                              ; preds = %208
  store i32 %200, ptr %94, align 4
  %212 = load i32, ptr %87, align 8
  %213 = load i32, ptr %91, align 4
  %214 = add i32 %213, %212
  store i32 %214, ptr %88, align 4
  %215 = load i32, ptr %95, align 8
  %216 = icmp ugt i32 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %211
  store i32 0, ptr %87, align 8
  store i32 %213, ptr %88, align 4
  br label %218

218:                                              ; preds = %217, %211
  %219 = phi i32 [ 0, %217 ], [ %212, %211 ]
  store i32 %219, ptr %90, align 4
  br label %232

220:                                              ; preds = %194
  %221 = getelementptr i8, ptr %178, i32 %179
  %222 = icmp eq ptr %221, %78
  %223 = zext i1 %222 to i32
  br i1 %222, label %224, label %226

224:                                              ; preds = %220
  %225 = tail call i32 @ZSTD_compressEnd(ptr noundef %0, ptr noundef %195, i32 noundef %196, ptr noundef %178, i32 noundef %179) #23
  br label %228

226:                                              ; preds = %220
  %227 = tail call fastcc i32 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %195, i32 noundef %196, ptr noundef %178, i32 noundef %179, i32 noundef 1, i32 noundef 0) #23
  br label %228

228:                                              ; preds = %226, %224
  %229 = phi i32 [ %225, %224 ], [ %227, %226 ]
  %230 = icmp ult i32 %229, -119
  br i1 %230, label %231, label %307

231:                                              ; preds = %228
  store i32 %223, ptr %94, align 4
  br label %232

232:                                              ; preds = %231, %218
  %233 = phi i32 [ %200, %218 ], [ %223, %231 ]
  %234 = phi ptr [ %178, %218 ], [ %221, %231 ]
  %235 = phi i32 [ %209, %218 ], [ %229, %231 ]
  %236 = icmp eq ptr %195, %100
  br i1 %236, label %237, label %240

237:                                              ; preds = %232
  %238 = getelementptr i8, ptr %100, i32 %235
  %239 = icmp eq i32 %233, 0
  br i1 %239, label %263, label %266

240:                                              ; preds = %232
  store i32 %235, ptr %96, align 8
  store i32 0, ptr %97, align 4
  store i32 2, ptr %19, align 8
  br label %241

241:                                              ; preds = %240, %104
  %242 = phi i32 [ %106, %104 ], [ 0, %240 ]
  %243 = phi i32 [ %105, %104 ], [ %235, %240 ]
  %244 = phi ptr [ %101, %104 ], [ %234, %240 ]
  %245 = sub i32 %243, %242
  %246 = ptrtoint ptr %100 to i32
  %247 = sub i32 %85, %246
  %248 = tail call i32 @llvm.umin.i32(i32 %247, i32 %245) #23
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %254, label %250

250:                                              ; preds = %241
  %251 = load ptr, ptr %92, align 8
  %252 = getelementptr i8, ptr %251, i32 %242
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %100, ptr align 1 %252, i32 %248, i1 false) #23
  %253 = load i32, ptr %97, align 4
  br label %254

254:                                              ; preds = %250, %241
  %255 = phi i32 [ %242, %241 ], [ %253, %250 ]
  %256 = getelementptr i8, ptr %100, i32 %248
  %257 = add i32 %255, %248
  store i32 %257, ptr %97, align 4
  %258 = icmp ugt i32 %245, %247
  br i1 %258, label %269, label %259

259:                                              ; preds = %254
  store i32 0, ptr %97, align 4
  store i32 0, ptr %96, align 8
  %260 = load i32, ptr %94, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %259
  store i32 1, ptr %19, align 8
  br label %263

263:                                              ; preds = %262, %237
  %264 = phi ptr [ %238, %237 ], [ %256, %262 ]
  %265 = phi ptr [ %234, %237 ], [ %244, %262 ]
  br label %99

266:                                              ; preds = %259, %237, %130
  %267 = phi ptr [ %78, %130 ], [ %244, %259 ], [ %234, %237 ]
  %268 = phi ptr [ %131, %130 ], [ %256, %259 ], [ %238, %237 ]
  store i32 0, ptr %19, align 8
  store i64 0, ptr %98, align 8
  br label %269

269:                                              ; preds = %266, %254, %157, %154
  %270 = phi ptr [ %267, %266 ], [ %153, %157 ], [ %153, %154 ], [ %244, %254 ]
  %271 = phi ptr [ %268, %266 ], [ %100, %157 ], [ %100, %154 ], [ %256, %254 ]
  %272 = ptrtoint ptr %270 to i32
  %273 = ptrtoint ptr %76 to i32
  %274 = sub i32 %272, %273
  store i32 %274, ptr %11, align 4
  %275 = ptrtoint ptr %271 to i32
  %276 = ptrtoint ptr %81 to i32
  %277 = sub i32 %275, %276
  store i32 %277, ptr %5, align 4
  %278 = load i32, ptr %94, align 4
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %290

280:                                              ; preds = %269
  %281 = load i32, ptr %88, align 4
  %282 = load i32, ptr %87, align 8
  %283 = sub i32 %281, %282
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %280
  %286 = load i32, ptr %91, align 4
  br label %287

287:                                              ; preds = %285, %280
  %288 = phi i32 [ %286, %285 ], [ %283, %280 ]
  %289 = icmp ult i32 %288, -119
  br i1 %289, label %290, label %307

290:                                              ; preds = %287, %269
  %291 = load i32, ptr %45, align 8
  %292 = icmp eq i32 %291, 1
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 38
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(12) %294, ptr noundef align 4 dereferenceable(12) %2, i32 12, i1 false) #23
  br label %295

295:                                              ; preds = %293, %290
  %296 = load i32, ptr %65, align 4
  %297 = icmp eq i32 %296, 1
  br i1 %297, label %298, label %303

298:                                              ; preds = %295
  %299 = load i32, ptr %7, align 4
  %300 = load i32, ptr %5, align 4
  %301 = sub i32 %299, %300
  %302 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 39
  store i32 %301, ptr %302, align 4
  br label %303

303:                                              ; preds = %298, %295
  %304 = load i32, ptr %96, align 8
  %305 = load i32, ptr %97, align 4
  %306 = sub i32 %304, %305
  br label %307

307:                                              ; preds = %303, %287, %228, %208, %127, %103, %70, %59, %54, %47, %25, %16, %10, %4
  %308 = phi i32 [ %26, %25 ], [ %288, %287 ], [ %306, %303 ], [ -70, %4 ], [ -72, %10 ], [ -42, %16 ], [ -105, %59 ], [ -105, %54 ], [ -105, %47 ], [ -104, %70 ], [ %128, %127 ], [ -62, %103 ], [ %229, %228 ], [ %209, %208 ]
  ret i32 %308
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_CCtx_init_compressStream2(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = alloca %struct.ZSTD_CCtx_params_s, align 4
  %5 = alloca %struct.ZSTD_compressionParameters, align 4
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %4) #23
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(140) %4, ptr noundef align 4 dereferenceable(140) %6, i32 140, i1 false)
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 42
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 42, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 42, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %38, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 40, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13
  %26 = load i32, ptr %25, align 8
  %27 = insertvalue [3 x i32] undef, i32 %26, 0
  %28 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = insertvalue [3 x i32] %27, i32 %29, 1
  %31 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = insertvalue [3 x i32] %30, i32 %32, 2
  %34 = tail call ptr @ZSTD_createCDict_advanced2(ptr noundef nonnull %14, i32 noundef %22, i32 noundef 1, i32 noundef %24, ptr noundef %6, [3 x i32] %33) #23
  store ptr %34, ptr %17, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %139, label %36

36:                                               ; preds = %20
  %37 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 41
  store ptr %34, ptr %37, align 4
  br label %38

38:                                               ; preds = %36, %16, %3
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(12) %7, i8 0, i32 12, i1 false)
  %39 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 41
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %40, i32 0, i32 9
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 3
  store i32 %44, ptr %45, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = icmp eq i32 %1, 2
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  %49 = add i32 %2, 1
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 9
  store i64 %50, ptr %51, align 8
  br label %52

52:                                               ; preds = %48, %46
  %53 = icmp eq ptr %8, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %52
  br i1 %41, label %55, label %59

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 9
  %57 = load i64, ptr %56, align 8
  %58 = add i64 %57, -1
  br label %95

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %40, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 9
  %63 = load i64, ptr %62, align 8
  %64 = add i64 %63, -1
  br label %69

65:                                               ; preds = %52
  %66 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 9
  %67 = load i64, ptr %66, align 8
  %68 = add i64 %67, -1
  br i1 %41, label %95, label %69

69:                                               ; preds = %65, %59
  %70 = phi i64 [ %64, %59 ], [ %68, %65 ]
  %71 = phi ptr [ %62, %59 ], [ %66, %65 ]
  %72 = phi i32 [ %61, %59 ], [ %10, %65 ]
  %73 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %40, i32 0, i32 5, i32 7
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %40, i32 0, i32 5, i32 10, i32 6
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr [10 x i32], ptr @attachDictSizeCutoffs, i32 0, i32 %78
  %80 = load i32, ptr %79, align 4
  %81 = zext i32 %80 to i64
  %82 = icmp ule i64 %70, %81
  %83 = icmp eq i64 %70, -1
  %84 = or i1 %83, %82
  %85 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 7
  %86 = load i32, ptr %85, align 4
  br i1 %84, label %89, label %87

87:                                               ; preds = %76
  %88 = icmp eq i32 %86, 1
  br i1 %88, label %91, label %95

89:                                               ; preds = %76
  %90 = icmp eq i32 %86, 2
  br i1 %90, label %95, label %91

91:                                               ; preds = %89, %87
  %92 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 4
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %91, %89, %87, %65, %55
  %96 = phi i64 [ %58, %55 ], [ %70, %91 ], [ %70, %89 ], [ %70, %87 ], [ %68, %65 ]
  %97 = phi ptr [ %56, %55 ], [ %71, %91 ], [ %71, %89 ], [ %71, %87 ], [ %66, %65 ]
  %98 = phi i32 [ 0, %55 ], [ %72, %91 ], [ %72, %89 ], [ %72, %87 ], [ %10, %65 ]
  br label %99

99:                                               ; preds = %95, %91, %69
  %100 = phi i64 [ %96, %95 ], [ %70, %91 ], [ %70, %69 ]
  %101 = phi ptr [ %97, %95 ], [ %71, %91 ], [ %71, %69 ]
  %102 = phi i32 [ %98, %95 ], [ %72, %91 ], [ %72, %69 ]
  %103 = phi i32 [ 0, %95 ], [ 1, %91 ], [ 1, %69 ]
  %104 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #23
  call void @ZSTD_getCParamsFromCCtxParams(ptr nonnull sret(%struct.ZSTD_compressionParameters) align 4 %5, ptr noundef nonnull %4, i64 noundef %100, i32 noundef %102, i32 noundef %103)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %104, ptr noundef nonnull align 4 dereferenceable(28) %5, i32 28, i1 false)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #23
  %105 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 1, i32 6
  %106 = load i32, ptr %105, align 4
  %107 = icmp ult i32 %106, 7
  %108 = load i32, ptr %104, align 4
  %109 = icmp ult i32 %108, 27
  %110 = select i1 %107, i1 true, i1 %109
  br i1 %110, label %113, label %111

111:                                              ; preds = %99
  %112 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 13
  store i32 1, ptr %112, align 4
  br label %113

113:                                              ; preds = %111, %99
  %114 = load i64, ptr %101, align 8
  %115 = add i64 %114, -1
  %116 = load ptr, ptr %39, align 4
  %117 = call fastcc i32 @ZSTD_compressBegin_internal(ptr noundef %0, ptr noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef 0, ptr noundef %116, ptr noundef nonnull %4, i64 noundef %115, i32 noundef 1)
  %118 = icmp ult i32 %117, -119
  br i1 %118, label %119, label %139

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 29
  store i32 0, ptr %120, align 4
  %121 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 30
  store i32 0, ptr %121, align 8
  %122 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 15
  %123 = load i32, ptr %122, align 8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 8
  %127 = load i32, ptr %126, align 4
  %128 = zext i32 %127 to i64
  %129 = icmp eq i64 %115, %128
  %130 = zext i1 %129 to i32
  %131 = add i32 %127, %130
  br label %132

132:                                              ; preds = %125, %119
  %133 = phi i32 [ %131, %125 ], [ 0, %119 ]
  %134 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 31
  store i32 %133, ptr %134, align 4
  %135 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 35
  store i32 0, ptr %135, align 4
  %136 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 34
  store i32 0, ptr %136, align 8
  %137 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 36
  store i32 1, ptr %137, align 8
  %138 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 37
  store i32 0, ptr %138, align 4
  br label %139

139:                                              ; preds = %132, %113, %20
  %140 = phi i32 [ -64, %20 ], [ %117, %113 ], [ 0, %132 ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %4) #23
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressStream2_simpleArgs(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4, i32 noundef %5, ptr nocapture noundef %6, i32 noundef %7) local_unnamed_addr #1 {
  %9 = alloca %struct.ZSTD_outBuffer_s, align 4
  %10 = alloca %struct.ZSTD_inBuffer_s, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #23
  store ptr %1, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %9, i32 0, i32 1
  store i32 %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %9, i32 0, i32 2
  %13 = load i32, ptr %3, align 4
  store i32 %13, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #23
  store ptr %4, ptr %10, align 4
  %14 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %10, i32 0, i32 1
  store i32 %5, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %10, i32 0, i32 2
  %16 = load i32, ptr %6, align 4
  store i32 %16, ptr %15, align 4
  %17 = call i32 @ZSTD_compressStream2(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef %7)
  %18 = load i32, ptr %12, align 4
  store i32 %18, ptr %3, align 4
  %19 = load i32, ptr %15, align 4
  store i32 %19, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #23
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressSequences(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #1 {
  %8 = alloca %struct.ZSTD_sequencePosition, align 4
  %9 = tail call fastcc i32 @ZSTD_CCtx_init_compressStream2(ptr noundef %0, i32 noundef 2, i32 noundef %6)
  %10 = icmp ult i32 %9, -119
  br i1 %10, label %11, label %178

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = tail call fastcc i32 @ZSTD_writeFrameHeader(ptr noundef %1, i32 noundef %2, ptr noundef %12, i64 noundef %13, i32 noundef %15)
  %17 = getelementptr i8, ptr %1, i32 %16
  %18 = sub i32 %2, %16
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 2, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = icmp ne i32 %6, 0
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %27

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 12
  %26 = tail call i32 @xxh64_update(ptr noundef %25, ptr noundef %5, i32 noundef %6) #23
  br label %27

27:                                               ; preds = %24, %11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i32 12, i1 false) #23
  %28 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 17
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, ptr @ZSTD_copySequencesToSeqStoreNoBlockDelim, ptr null
  %32 = icmp eq i32 %29, 1
  %33 = select i1 %32, ptr @ZSTD_copySequencesToSeqStoreExplicitBlockDelim, ptr %31
  %34 = icmp eq i32 %6, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = icmp ult i32 %18, 4
  br i1 %36, label %159, label %37

37:                                               ; preds = %35
  store i32 1, ptr %17, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  br label %164

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 8
  %40 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24
  %41 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19
  %42 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 2
  %43 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 3
  %44 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 1
  %45 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 9
  %46 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 1
  %47 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 25
  %48 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 2
  %49 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 17
  br label %50

50:                                               ; preds = %151, %38
  %51 = phi ptr [ %17, %38 ], [ %154, %151 ]
  %52 = phi ptr [ %5, %38 ], [ %155, %151 ]
  %53 = phi i32 [ %6, %38 ], [ %156, %151 ]
  %54 = phi i32 [ 0, %38 ], [ %153, %151 ]
  %55 = phi i32 [ %18, %38 ], [ %157, %151 ]
  %56 = load i32, ptr %39, align 4
  %57 = icmp ule i32 %53, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @llvm.umin.i32(i32 %53, i32 %56) #23
  %60 = load ptr, ptr %42, align 4
  store ptr %60, ptr %43, align 4
  %61 = load ptr, ptr %41, align 4
  store ptr %61, ptr %44, align 4
  store i32 0, ptr %45, align 4
  %62 = call i32 %33(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %3, i32 noundef %4, ptr noundef %52, i32 noundef %59) #23, !callees !53
  %63 = icmp ult i32 %62, -119
  br i1 %63, label %64, label %159

64:                                               ; preds = %50
  %65 = sub i32 %59, %62
  %66 = icmp ult i32 %65, 7
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = add nuw nsw i32 %65, 3
  %69 = icmp ugt i32 %68, %55
  br i1 %69, label %159, label %70

70:                                               ; preds = %67
  %71 = shl nuw nsw i32 %65, 3
  %72 = or i32 %71, %58
  %73 = trunc i32 %72 to i16
  store i16 %73, ptr %51, align 1
  %74 = lshr i32 %65, 13
  %75 = trunc i32 %74 to i8
  %76 = getelementptr i8, ptr %51, i32 2
  store i8 %75, ptr %76, align 1
  %77 = getelementptr i8, ptr %51, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %77, ptr align 1 %52, i32 %65, i1 false) #23
  %78 = add i32 %68, %54
  br label %151

79:                                               ; preds = %64
  %80 = load ptr, ptr %40, align 4
  %81 = load ptr, ptr %46, align 4
  %82 = getelementptr i8, ptr %51, i32 3
  %83 = add i32 %55, -3
  %84 = load ptr, ptr %47, align 4
  %85 = load i32, ptr %48, align 8
  %86 = call fastcc i32 @ZSTD_entropyCompressSequences(ptr noundef %41, ptr noundef %80, ptr noundef %81, ptr noundef %12, ptr noundef %82, i32 noundef %83, i32 noundef %65, ptr noundef %84, i32 noundef %85) #23
  %87 = icmp ult i32 %86, -119
  br i1 %87, label %88, label %159

88:                                               ; preds = %79
  %89 = load i32, ptr %49, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %88
  %92 = load ptr, ptr %44, align 4
  %93 = load ptr, ptr %41, align 4
  %94 = ptrtoint ptr %92 to i32
  %95 = ptrtoint ptr %93 to i32
  %96 = sub i32 %94, %95
  %97 = load ptr, ptr %43, align 4
  %98 = load ptr, ptr %42, align 4
  %99 = ptrtoint ptr %97 to i32
  %100 = ptrtoint ptr %98 to i32
  %101 = sub i32 %99, %100
  %102 = icmp ugt i32 %96, 31
  %103 = icmp ugt i32 %101, 9
  %104 = select i1 %102, i1 true, i1 %103
  br i1 %104, label %108, label %105

105:                                              ; preds = %91
  %106 = call fastcc i32 @ZSTD_isRLE(ptr noundef %5, i32 noundef %6) #23
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %105, %91, %88
  switch i32 %86, label %131 [
    i32 0, label %109
    i32 1, label %120
  ]

109:                                              ; preds = %108
  %110 = add i32 %65, 3
  %111 = icmp ugt i32 %110, %55
  br i1 %111, label %159, label %112

112:                                              ; preds = %109
  %113 = shl i32 %65, 3
  %114 = or i32 %113, %58
  %115 = trunc i32 %114 to i16
  store i16 %115, ptr %51, align 1
  %116 = lshr i32 %113, 16
  %117 = trunc i32 %116 to i8
  %118 = getelementptr i8, ptr %51, i32 2
  store i8 %117, ptr %118, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %82, ptr align 1 %52, i32 %65, i1 false) #23
  %119 = icmp ult i32 %110, -119
  br i1 %119, label %147, label %159

120:                                              ; preds = %108, %105
  %121 = icmp ult i32 %55, 4
  br i1 %121, label %159, label %122

122:                                              ; preds = %120
  %123 = load i8, ptr %52, align 1
  %124 = select i1 %57, i32 3, i32 2
  %125 = shl i32 %65, 3
  %126 = or i32 %125, %124
  %127 = trunc i32 %126 to i16
  store i16 %127, ptr %51, align 1
  %128 = lshr i32 %125, 16
  %129 = trunc i32 %128 to i8
  %130 = getelementptr i8, ptr %51, i32 2
  store i8 %129, ptr %130, align 1
  store i8 %123, ptr %82, align 1
  br label %147

131:                                              ; preds = %108
  %132 = load ptr, ptr %40, align 4
  %133 = load ptr, ptr %46, align 4
  store ptr %133, ptr %40, align 4
  store ptr %132, ptr %46, align 4
  %134 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %133, i32 0, i32 1, i32 3
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %135, 2
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  store i32 1, ptr %134, align 4
  br label %138

138:                                              ; preds = %137, %131
  %139 = select i1 %57, i32 5, i32 4
  %140 = shl i32 %86, 3
  %141 = or i32 %140, %139
  %142 = trunc i32 %141 to i16
  store i16 %142, ptr %51, align 1
  %143 = lshr i32 %140, 16
  %144 = trunc i32 %143 to i8
  %145 = getelementptr i8, ptr %51, i32 2
  store i8 %144, ptr %145, align 1
  %146 = add nuw i32 %86, 3
  br label %147

147:                                              ; preds = %138, %122, %112
  %148 = phi i32 [ %110, %112 ], [ %146, %138 ], [ 4, %122 ]
  %149 = add i32 %148, %54
  br i1 %57, label %161, label %150

150:                                              ; preds = %147
  store i32 0, ptr %49, align 4
  br label %151

151:                                              ; preds = %150, %70
  %152 = phi i32 [ %68, %70 ], [ %148, %150 ]
  %153 = phi i32 [ %78, %70 ], [ %149, %150 ]
  %154 = getelementptr i8, ptr %51, i32 %152
  %155 = getelementptr i8, ptr %52, i32 %65
  %156 = sub i32 %53, %65
  %157 = sub i32 %55, %152
  %158 = icmp eq i32 %156, 0
  br i1 %158, label %161, label %50

159:                                              ; preds = %120, %112, %109, %79, %67, %50, %35
  %160 = phi i32 [ -70, %35 ], [ %110, %112 ], [ %86, %79 ], [ %62, %50 ], [ -70, %109 ], [ -70, %67 ], [ -70, %120 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  br label %178

161:                                              ; preds = %151, %147
  %162 = phi i32 [ %153, %151 ], [ %149, %147 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  %163 = icmp ult i32 %162, -119
  br i1 %163, label %164, label %178

164:                                              ; preds = %161, %37
  %165 = phi i32 [ 3, %37 ], [ %162, %161 ]
  %166 = add i32 %165, %16
  %167 = load i32, ptr %19, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %178, label %169

169:                                              ; preds = %164
  %170 = sub i32 %18, %165
  %171 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 12
  %172 = call i64 @xxh64_digest(ptr noundef %171) #23
  %173 = icmp ult i32 %170, 4
  br i1 %173, label %178, label %174

174:                                              ; preds = %169
  %175 = trunc i64 %172 to i32
  %176 = getelementptr i8, ptr %1, i32 %166
  store i32 %175, ptr %176, align 1
  %177 = add i32 %166, 4
  br label %178

178:                                              ; preds = %174, %169, %164, %161, %159, %7
  %179 = phi i32 [ %162, %161 ], [ %9, %7 ], [ %160, %159 ], [ %177, %174 ], [ %166, %164 ], [ -70, %169 ]
  ret i32 %179
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ZSTD_writeFrameHeader(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, i32 noundef %4) unnamed_addr #10 {
  %6 = icmp ne i32 %4, 0
  %7 = zext i1 %6 to i32
  %8 = icmp ugt i32 %4, 255
  %9 = zext i1 %8 to i32
  %10 = add nuw nsw i32 %7, %9
  %11 = icmp ugt i32 %4, 65535
  %12 = zext i1 %11 to i32
  %13 = add nuw nsw i32 %10, %12
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %2, i32 0, i32 2
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %2, i32 0, i32 2, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 %13, i32 0
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %2, i32 0, i32 2, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, 0
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %2, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = shl nuw i32 1, %23
  %25 = load i32, ptr %14, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i32 %24 to i64
  %28 = icmp uge i64 %27, %3
  %29 = select i1 %26, i1 %28, i1 false
  %30 = trunc i32 %23 to i8
  %31 = shl i8 %30, 3
  %32 = add i8 %31, -80
  br i1 %26, label %33, label %42

33:                                               ; preds = %5
  %34 = icmp ugt i64 %3, 255
  %35 = zext i1 %34 to i32
  %36 = icmp ugt i64 %3, 65791
  %37 = zext i1 %36 to i32
  %38 = add nuw nsw i32 %35, %37
  %39 = icmp ugt i64 %3, 4294967294
  %40 = zext i1 %39 to i32
  %41 = add nuw nsw i32 %38, %40
  br label %42

42:                                               ; preds = %33, %5
  %43 = phi i32 [ %41, %33 ], [ 0, %5 ]
  %44 = select i1 %21, i32 4, i32 0
  %45 = add nuw nsw i32 %44, %18
  %46 = select i1 %29, i32 32, i32 0
  %47 = or i32 %46, %45
  %48 = shl nuw nsw i32 %43, 6
  %49 = or i32 %48, %47
  %50 = trunc i32 %49 to i8
  %51 = icmp ult i32 %1, 18
  br i1 %51, label %95, label %52

52:                                               ; preds = %42
  %53 = load i32, ptr %2, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 -47205080, ptr %0, align 1
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i32 [ 4, %55 ], [ 0, %52 ]
  %58 = or i32 %57, 1
  %59 = getelementptr i8, ptr %0, i32 %57
  store i8 %50, ptr %59, align 1
  br i1 %29, label %63, label %60

60:                                               ; preds = %56
  %61 = or i32 %57, 2
  %62 = getelementptr i8, ptr %0, i32 %58
  store i8 %32, ptr %62, align 1
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi i32 [ %58, %56 ], [ %61, %60 ]
  switch i32 %18, label %76 [
    i32 3, label %73
    i32 1, label %65
    i32 2, label %69
  ]

65:                                               ; preds = %63
  %66 = trunc i32 %4 to i8
  %67 = getelementptr i8, ptr %0, i32 %64
  store i8 %66, ptr %67, align 1
  %68 = add nsw i32 %64, 1
  br label %76

69:                                               ; preds = %63
  %70 = getelementptr i8, ptr %0, i32 %64
  %71 = trunc i32 %4 to i16
  store i16 %71, ptr %70, align 1
  %72 = add nsw i32 %64, 2
  br label %76

73:                                               ; preds = %63
  %74 = getelementptr i8, ptr %0, i32 %64
  store i32 %4, ptr %74, align 1
  %75 = add nsw i32 %64, 4
  br label %76

76:                                               ; preds = %73, %69, %65, %63
  %77 = phi i32 [ %64, %63 ], [ %72, %69 ], [ %68, %65 ], [ %75, %73 ]
  switch i32 %43, label %78 [
    i32 3, label %92
    i32 1, label %83
    i32 2, label %88
  ]

78:                                               ; preds = %76
  br i1 %29, label %79, label %95

79:                                               ; preds = %78
  %80 = trunc i64 %3 to i8
  %81 = add nsw i32 %77, 1
  %82 = getelementptr i8, ptr %0, i32 %77
  store i8 %80, ptr %82, align 1
  br label %95

83:                                               ; preds = %76
  %84 = getelementptr i8, ptr %0, i32 %77
  %85 = trunc i64 %3 to i16
  %86 = add i16 %85, -256
  store i16 %86, ptr %84, align 1
  %87 = add nsw i32 %77, 2
  br label %95

88:                                               ; preds = %76
  %89 = getelementptr i8, ptr %0, i32 %77
  %90 = trunc i64 %3 to i32
  store i32 %90, ptr %89, align 1
  %91 = add nsw i32 %77, 4
  br label %95

92:                                               ; preds = %76
  %93 = getelementptr i8, ptr %0, i32 %77
  store i64 %3, ptr %93, align 1
  %94 = add nsw i32 %77, 8
  br label %95

95:                                               ; preds = %92, %88, %83, %79, %78, %42
  %96 = phi i32 [ -70, %42 ], [ %81, %79 ], [ %77, %78 ], [ %91, %88 ], [ %87, %83 ], [ %94, %92 ]
  ret i32 %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xxh64_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xxh64_digest(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_flushStream(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.ZSTD_inBuffer_s, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false)
  %4 = call i32 @ZSTD_compressStream2(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_endStream(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.ZSTD_inBuffer_s, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false)
  %4 = call i32 @ZSTD_compressStream2(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2)
  %5 = icmp ult i32 %4, -119
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 37
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 3, i32 0
  br i1 %13, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 2, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %17, 2
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i32 [ %18, %15 ], [ 0, %10 ]
  %21 = add nuw i32 %14, %4
  %22 = add i32 %21, %20
  br label %23

23:                                               ; preds = %19, %6, %2
  %24 = phi i32 [ %22, %19 ], [ %4, %2 ], [ %4, %6 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  ret i32 %24
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ZSTD_getParams(ptr noalias nocapture writeonly sret(%struct.ZSTD_parameters) align 4 %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = alloca %struct.ZSTD_compressionParameters, align 4
  %6 = icmp eq i64 %2, 0
  %7 = select i1 %6, i64 -1, i64 %2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #23, !noalias !54
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false) #23, !noalias !54, !annotation !8
  call fastcc void @ZSTD_getCParams_internal(ptr nonnull sret(%struct.ZSTD_compressionParameters) align 4 %5, i32 noundef %1, i64 noundef %7, i32 noundef %3, i32 noundef 3) #23, !noalias !54
  %8 = getelementptr i8, ptr %0, i32 32
  store i64 0, ptr %8, align 4, !alias.scope !54
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(28) %5, i32 28, i1 false) #23
  %9 = getelementptr inbounds %struct.ZSTD_parameters, ptr %0, i32 0, i32 1
  store i32 1, ptr %9, align 4, !alias.scope !54
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #23, !noalias !54
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ZSTD_customCalloc(i32 noundef, [3 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_ldm_getTableSize([6 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_ldm_getMaxNbSeq([6 x i32], i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_ldm_adjustParameters(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_resetCCtx_internal(ptr noundef %0, ptr noundef byval(%struct.ZSTD_CCtx_params_s) align 4 %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7
  %7 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 17
  store i32 1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 1
  call void @ZSTD_ldm_adjustParameters(ptr noundef %8, ptr noundef %12) #23
  br label %13

13:                                               ; preds = %11, %5
  %14 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = zext i32 %15 to i64
  %17 = shl nuw i64 1, %16
  %18 = call i64 @llvm.umin.i64(i64 %17, i64 %2)
  %19 = trunc i64 %18 to i32
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 1, i32 %19
  %22 = call i32 @llvm.umin.i32(i32 %21, i32 131072)
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 1, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 3
  %26 = select i1 %25, i32 3, i32 4
  %27 = udiv i32 %22, %26
  %28 = icmp eq i32 %4, 1
  %29 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 16
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %28, i1 %31, i1 false
  br i1 %32, label %33, label %42

33:                                               ; preds = %13
  %34 = lshr i32 %22, 8
  %35 = icmp ult i32 %21, 131072
  %36 = sub nuw nsw i32 131072, %22
  %37 = lshr i32 %36, 11
  %38 = select i1 %35, i32 %37, i32 0
  %39 = add nuw nsw i32 %22, 1
  %40 = add nuw nsw i32 %39, %34
  %41 = add nuw nsw i32 %40, %38
  br label %42

42:                                               ; preds = %33, %13
  %43 = phi i32 [ %41, %33 ], [ 0, %13 ]
  %44 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 15
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %28, i1 %46, i1 false
  %48 = add i32 %22, %21
  %49 = select i1 %47, i32 %48, i32 0
  %50 = load i32, ptr %8, align 4
  %51 = insertvalue [6 x i32] undef, i32 %50, 0
  %52 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 13, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = insertvalue [6 x i32] %51, i32 %53, 1
  %55 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 13, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = insertvalue [6 x i32] %54, i32 %56, 2
  %58 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 13, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = insertvalue [6 x i32] %57, i32 %59, 3
  %61 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 13, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = insertvalue [6 x i32] %60, i32 %62, 4
  %64 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %1, i32 0, i32 13, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = insertvalue [6 x i32] %63, i32 %65, 5
  %67 = call i32 @ZSTD_ldm_getMaxNbSeq([6 x i32] %66, i32 noundef %22) #23
  %68 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24
  %69 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = sub i32 %70, %72
  %74 = icmp ult i32 %73, -1627389951
  br i1 %74, label %75, label %79

75:                                               ; preds = %42
  %76 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 18
  %77 = load i32, ptr %76, align 8
  %78 = icmp ne i32 %77, 0
  br label %79

79:                                               ; preds = %75, %42
  %80 = phi i1 [ false, %42 ], [ %78, %75 ]
  %81 = xor i1 %80, true
  %82 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 15
  %83 = load i32, ptr %82, align 8
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call fastcc i32 @ZSTD_estimateCCtxSize_usingCCtxParams_internal(ptr noundef %14, ptr noundef %8, i32 noundef %85, i32 noundef %49, i32 noundef %43, i64 noundef %2)
  %87 = icmp ult i32 %86, -119
  br i1 %87, label %88, label %474

88:                                               ; preds = %79
  %89 = load i32, ptr %82, align 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 7
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, 1
  store i32 %94, ptr %92, align 4
  br label %95

95:                                               ; preds = %91, %88
  %96 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = load ptr, ptr %6, align 4
  %99 = ptrtoint ptr %97 to i32
  %100 = ptrtoint ptr %98 to i32
  %101 = sub i32 %99, %100
  %102 = icmp ult i32 %101, %86
  %103 = mul i32 %86, 3
  %104 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 5
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = ptrtoint ptr %105 to i32
  %109 = ptrtoint ptr %107 to i32
  %110 = sub i32 %108, %109
  %111 = icmp ult i32 %110, %103
  br i1 %111, label %117, label %112

112:                                              ; preds = %95
  %113 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 7
  %114 = load i32, ptr %113, align 4
  %115 = icmp sgt i32 %114, 128
  %116 = zext i1 %115 to i32
  br label %117

117:                                              ; preds = %112, %95
  %118 = phi i32 [ 0, %95 ], [ %116, %112 ]
  %119 = icmp ne i32 %118, 0
  %120 = select i1 %102, i1 true, i1 %119
  br i1 %120, label %121, label %169

121:                                              ; preds = %117
  br i1 %90, label %122, label %474

122:                                              ; preds = %121
  %123 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13
  %124 = load i32, ptr %123, align 8
  %125 = insertvalue [3 x i32] undef, i32 %124, 0
  %126 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13, i32 1
  %127 = load i32, ptr %126, align 4
  %128 = insertvalue [3 x i32] %125, i32 %127, 1
  %129 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 13, i32 2
  %130 = load i32, ptr %129, align 8
  %131 = insertvalue [3 x i32] %128, i32 %130, 2
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %6, i8 0, i32 40, i1 false) #23
  call void @ZSTD_customFree(ptr noundef %98, [3 x i32] %131) #23
  %132 = load i32, ptr %123, align 8
  %133 = insertvalue [3 x i32] undef, i32 %132, 0
  %134 = load i32, ptr %126, align 4
  %135 = insertvalue [3 x i32] %133, i32 %134, 1
  %136 = load i32, ptr %129, align 8
  %137 = insertvalue [3 x i32] %135, i32 %136, 2
  %138 = call ptr @ZSTD_customMalloc(i32 noundef %86, [3 x i32] %137) #23
  %139 = icmp eq ptr %138, null
  br i1 %139, label %474, label %140

140:                                              ; preds = %122
  store ptr %138, ptr %6, align 4
  %141 = getelementptr i8, ptr %138, i32 %86
  store ptr %141, ptr %96, align 4
  %142 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 2
  store ptr %138, ptr %142, align 4
  %143 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 4
  store ptr %138, ptr %143, align 4
  %144 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 8
  store i32 0, ptr %144, align 4
  %145 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 9
  store i32 0, ptr %145, align 4
  store ptr %138, ptr %106, align 4
  store ptr %141, ptr %104, align 4
  %146 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 6
  store i8 0, ptr %146, align 4
  %147 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 7
  store i32 0, ptr %147, align 4
  %148 = getelementptr i8, ptr %138, i32 4592
  %149 = icmp ugt ptr %148, %141
  br i1 %149, label %150, label %151

150:                                              ; preds = %140
  store i8 1, ptr %146, align 4
  store ptr null, ptr %68, align 4
  br label %474

151:                                              ; preds = %140
  store ptr %148, ptr %142, align 4
  store ptr %148, ptr %106, align 4
  store ptr %148, ptr %143, align 4
  store ptr %138, ptr %68, align 4
  %152 = getelementptr i8, ptr %138, i32 9184
  %153 = icmp ugt ptr %152, %141
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  store i8 1, ptr %146, align 4
  %155 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 1
  store ptr null, ptr %155, align 4
  br label %474

156:                                              ; preds = %151
  store ptr %152, ptr %142, align 4
  store ptr %152, ptr %106, align 4
  store ptr %152, ptr %143, align 4
  %157 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 1
  store ptr %148, ptr %157, align 4
  %158 = icmp eq ptr %148, null
  br i1 %158, label %474, label %159

159:                                              ; preds = %156
  %160 = getelementptr i8, ptr %138, i32 15800
  %161 = icmp ugt ptr %160, %141
  br i1 %161, label %163, label %162

162:                                              ; preds = %159
  store ptr %160, ptr %142, align 4
  store ptr %160, ptr %143, align 4
  br label %163

163:                                              ; preds = %162, %159
  %164 = phi ptr [ %160, %162 ], [ %152, %159 ]
  %165 = phi ptr [ %152, %162 ], [ null, %159 ]
  %166 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 25
  store ptr %165, ptr %166, align 4
  store ptr %164, ptr %106, align 4
  store ptr %141, ptr %104, align 4
  %167 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 6
  store i8 0, ptr %167, align 4
  %168 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 8
  br label %178

169:                                              ; preds = %117
  %170 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 2
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 8
  %173 = load i32, ptr %172, align 4
  store ptr %171, ptr %106, align 4
  store ptr %97, ptr %104, align 4
  %174 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 6
  store i8 0, ptr %174, align 4
  %175 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 8
  %176 = icmp ugt i32 %173, 1
  br i1 %176, label %177, label %178

177:                                              ; preds = %169
  store i32 1, ptr %175, align 4
  br label %178

178:                                              ; preds = %177, %169, %163
  %179 = phi ptr [ %168, %163 ], [ %175, %169 ], [ %175, %177 ]
  %180 = phi ptr [ %167, %163 ], [ %174, %169 ], [ %174, %177 ]
  %181 = phi i1 [ true, %163 ], [ %81, %169 ], [ %81, %177 ]
  %182 = zext i1 %181 to i32
  %183 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 2
  %184 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(140) %184, ptr noundef align 4 dereferenceable(140) %1, i32 140, i1 false)
  %185 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %185, ptr noundef align 4 dereferenceable(28) %14, i32 28, i1 false)
  %186 = add i64 %2, 1
  %187 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 9
  store i64 %186, ptr %187, align 8
  %188 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 10
  %189 = icmp eq i64 %2, -1
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %188, i8 0, i64 16, i1 false)
  br i1 %189, label %190, label %192

190:                                              ; preds = %178
  %191 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 2
  store i32 0, ptr %191, align 8
  br label %192

192:                                              ; preds = %190, %178
  %193 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 8
  store i32 %22, ptr %193, align 4
  %194 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 12
  call void @xxh64_reset(ptr noundef %194, i64 noundef 0) #23
  store i32 1, ptr %0, align 8
  %195 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 5
  store i32 0, ptr %195, align 4
  %196 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 6
  store i32 0, ptr %196, align 8
  %197 = load ptr, ptr %68, align 4
  %198 = getelementptr i8, ptr %197, i32 4580
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %198, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i32 12, i1 false) #23
  %199 = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %197, i32 0, i32 1
  store i32 0, ptr %199, align 4
  %200 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %197, i32 0, i32 1, i32 3
  store i32 0, ptr %200, align 4
  %201 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %197, i32 0, i32 1, i32 4
  store i32 0, ptr %201, align 4
  %202 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %197, i32 0, i32 1, i32 5
  store i32 0, ptr %202, align 4
  %203 = load ptr, ptr %106, align 4
  %204 = load i32, ptr %179, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %192
  %207 = load ptr, ptr %183, align 4
  %208 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 4
  store ptr %207, ptr %208, align 4
  store i32 1, ptr %179, align 4
  br label %209

209:                                              ; preds = %206, %192
  %210 = load ptr, ptr %104, align 4
  %211 = sub nuw nsw i32 -32, %22
  %212 = getelementptr i8, ptr %210, i32 %211
  %213 = icmp ult ptr %212, %203
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  store i8 1, ptr %180, align 4
  br label %221

215:                                              ; preds = %209
  %216 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 4
  %217 = load ptr, ptr %216, align 4
  %218 = icmp ult ptr %212, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  store ptr %212, ptr %216, align 4
  br label %220

220:                                              ; preds = %219, %215
  store ptr %212, ptr %104, align 4
  br label %221

221:                                              ; preds = %220, %214
  %222 = phi ptr [ %210, %214 ], [ %212, %220 ]
  %223 = phi ptr [ null, %214 ], [ %212, %220 ]
  %224 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19
  %225 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 2
  store ptr %223, ptr %225, align 4
  %226 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 8
  store i32 %22, ptr %226, align 4
  %227 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 26
  store i32 %4, ptr %227, align 8
  %228 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 28
  store i32 %49, ptr %228, align 8
  %229 = sub i32 0, %49
  %230 = getelementptr i8, ptr %222, i32 %229
  %231 = icmp eq i32 %49, 0
  br i1 %231, label %241, label %232

232:                                              ; preds = %221
  %233 = icmp ult ptr %230, %203
  br i1 %233, label %234, label %235

234:                                              ; preds = %232
  store i8 1, ptr %180, align 4
  br label %241

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 4
  %237 = load ptr, ptr %236, align 4
  %238 = icmp ult ptr %230, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %235
  store ptr %230, ptr %236, align 4
  br label %240

240:                                              ; preds = %239, %235
  store ptr %230, ptr %104, align 4
  br label %241

241:                                              ; preds = %240, %234, %221
  %242 = phi ptr [ %222, %234 ], [ %230, %240 ], [ %222, %221 ]
  %243 = phi ptr [ null, %234 ], [ %230, %240 ], [ null, %221 ]
  %244 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 27
  store ptr %243, ptr %244, align 4
  %245 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 33
  store i32 %43, ptr %245, align 4
  %246 = sub nsw i32 0, %43
  %247 = getelementptr i8, ptr %242, i32 %246
  %248 = icmp eq i32 %43, 0
  br i1 %248, label %258, label %249

249:                                              ; preds = %241
  %250 = icmp ult ptr %247, %203
  br i1 %250, label %251, label %252

251:                                              ; preds = %249
  store i8 1, ptr %180, align 4
  br label %258

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 4
  %254 = load ptr, ptr %253, align 4
  %255 = icmp ult ptr %247, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  store ptr %247, ptr %253, align 4
  br label %257

257:                                              ; preds = %256, %252
  store ptr %247, ptr %104, align 4
  br label %258

258:                                              ; preds = %257, %251, %241
  %259 = phi ptr [ %242, %251 ], [ %247, %257 ], [ %242, %241 ]
  %260 = phi ptr [ null, %251 ], [ %247, %257 ], [ null, %241 ]
  %261 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 32
  store ptr %260, ptr %261, align 8
  %262 = load i32, ptr %8, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %282, label %264

264:                                              ; preds = %258
  %265 = load i32, ptr %52, align 4
  %266 = load i32, ptr %55, align 4
  %267 = sub i32 %265, %266
  %268 = shl nuw i32 1, %267
  %269 = sub i32 0, %268
  %270 = getelementptr i8, ptr %259, i32 %269
  %271 = icmp ult ptr %270, %203
  br i1 %271, label %272, label %273

272:                                              ; preds = %264
  store i8 1, ptr %180, align 4
  br label %279

273:                                              ; preds = %264
  %274 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 4
  %275 = load ptr, ptr %274, align 4
  %276 = icmp ult ptr %270, %275
  br i1 %276, label %277, label %278

277:                                              ; preds = %273
  store ptr %270, ptr %274, align 4
  br label %278

278:                                              ; preds = %277, %273
  store ptr %270, ptr %104, align 4
  br label %279

279:                                              ; preds = %278, %272
  %280 = phi ptr [ null, %272 ], [ %270, %278 ]
  %281 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 20, i32 3
  store ptr %280, ptr %281, align 4
  call void @llvm.memset.p0.i32(ptr noundef align 1 %280, i8 0, i32 %268, i1 false)
  br label %282

282:                                              ; preds = %279, %258
  %283 = load i32, ptr %0, align 8
  %284 = icmp eq i32 %283, 1
  br i1 %284, label %285, label %291

285:                                              ; preds = %282
  %286 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 13
  %287 = load i32, ptr %286, align 4
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 23
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %290, i8 0, i64 20, i1 false)
  br label %291

291:                                              ; preds = %289, %285, %282
  %292 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 7
  store i32 %27, ptr %292, align 4
  %293 = load ptr, ptr %106, align 4
  %294 = load i32, ptr %179, align 4
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %291
  %297 = load ptr, ptr %183, align 4
  %298 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 4
  store ptr %297, ptr %298, align 4
  store i32 1, ptr %179, align 4
  br label %299

299:                                              ; preds = %296, %291
  %300 = phi i32 [ 1, %296 ], [ %294, %291 ]
  %301 = load ptr, ptr %104, align 4
  %302 = sub nsw i32 0, %27
  %303 = getelementptr i8, ptr %301, i32 %302
  %304 = icmp ugt i32 %26, %22
  br i1 %304, label %327, label %305

305:                                              ; preds = %299
  %306 = icmp ult ptr %303, %293
  br i1 %306, label %307, label %308

307:                                              ; preds = %305
  store i8 1, ptr %180, align 4
  br label %314

308:                                              ; preds = %305
  %309 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 4
  %310 = load ptr, ptr %309, align 4
  %311 = icmp ult ptr %303, %310
  br i1 %311, label %312, label %313

312:                                              ; preds = %308
  store ptr %303, ptr %309, align 4
  br label %313

313:                                              ; preds = %312, %308
  store ptr %303, ptr %104, align 4
  br label %314

314:                                              ; preds = %313, %307
  %315 = phi ptr [ %303, %313 ], [ %301, %307 ]
  %316 = phi ptr [ %303, %313 ], [ null, %307 ]
  %317 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 4
  store ptr %316, ptr %317, align 4
  %318 = getelementptr i8, ptr %315, i32 %302
  %319 = icmp ult ptr %318, %293
  br i1 %319, label %320, label %321

320:                                              ; preds = %314
  store i8 1, ptr %180, align 4
  br label %330

321:                                              ; preds = %314
  %322 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 4
  %323 = load ptr, ptr %322, align 4
  %324 = icmp ult ptr %318, %323
  br i1 %324, label %325, label %326

325:                                              ; preds = %321
  store ptr %318, ptr %322, align 4
  br label %326

326:                                              ; preds = %325, %321
  store ptr %318, ptr %104, align 4
  br label %330

327:                                              ; preds = %299
  %328 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 4
  store ptr null, ptr %328, align 4
  %329 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 5
  store ptr null, ptr %329, align 4
  br label %343

330:                                              ; preds = %326, %320
  %331 = phi ptr [ %318, %326 ], [ %315, %320 ]
  %332 = phi ptr [ %318, %326 ], [ null, %320 ]
  %333 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 5
  store ptr %332, ptr %333, align 4
  %334 = getelementptr i8, ptr %331, i32 %302
  %335 = icmp ult ptr %334, %293
  br i1 %335, label %336, label %337

336:                                              ; preds = %330
  store i8 1, ptr %180, align 4
  br label %343

337:                                              ; preds = %330
  %338 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 4
  %339 = load ptr, ptr %338, align 4
  %340 = icmp ult ptr %334, %339
  br i1 %340, label %341, label %342

341:                                              ; preds = %337
  store ptr %334, ptr %338, align 4
  br label %342

342:                                              ; preds = %341, %337
  store ptr %334, ptr %104, align 4
  br label %343

343:                                              ; preds = %342, %336, %327
  %344 = phi ptr [ %331, %336 ], [ %334, %342 ], [ %301, %327 ]
  %345 = phi ptr [ null, %336 ], [ %334, %342 ], [ null, %327 ]
  %346 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 6
  store ptr %345, ptr %346, align 4
  %347 = mul nsw i32 %27, -8
  %348 = icmp ult i32 %300, 2
  br i1 %348, label %349, label %360

349:                                              ; preds = %343
  %350 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 4
  %351 = load ptr, ptr %350, align 4
  %352 = ptrtoint ptr %344 to i32
  %353 = and i32 %352, 3
  %354 = sub nsw i32 0, %353
  %355 = getelementptr i8, ptr %344, i32 %354
  store ptr %355, ptr %104, align 4
  %356 = icmp ult ptr %355, %351
  br i1 %356, label %357, label %359

357:                                              ; preds = %349
  %358 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 4
  store ptr %355, ptr %358, align 4
  br label %359

359:                                              ; preds = %357, %349
  store i32 2, ptr %179, align 4
  br label %360

360:                                              ; preds = %359, %343
  %361 = phi ptr [ %355, %359 ], [ %344, %343 ]
  %362 = getelementptr i8, ptr %361, i32 %347
  br i1 %304, label %372, label %363

363:                                              ; preds = %360
  %364 = icmp ult ptr %362, %293
  br i1 %364, label %365, label %366

365:                                              ; preds = %363
  store i8 1, ptr %180, align 4
  br label %372

366:                                              ; preds = %363
  %367 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 4
  %368 = load ptr, ptr %367, align 4
  %369 = icmp ult ptr %362, %368
  br i1 %369, label %370, label %371

370:                                              ; preds = %366
  store ptr %362, ptr %367, align 4
  br label %371

371:                                              ; preds = %370, %366
  store ptr %362, ptr %104, align 4
  br label %372

372:                                              ; preds = %371, %365, %360
  %373 = phi ptr [ null, %365 ], [ %362, %371 ], [ null, %360 ]
  store ptr %373, ptr %224, align 4
  %374 = call fastcc i32 @ZSTD_reset_matchState(ptr noundef %69, ptr noundef %6, ptr noundef %14, i32 noundef %3, i32 noundef %182, i32 noundef 1), !range !52
  %375 = icmp ult i32 %374, -119
  br i1 %375, label %376, label %474

376:                                              ; preds = %372
  %377 = load i32, ptr %8, align 4
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %472, label %379

379:                                              ; preds = %376
  %380 = load i32, ptr %52, align 4
  %381 = shl i32 8, %380
  %382 = load ptr, ptr %106, align 4
  %383 = load i32, ptr %179, align 4
  %384 = icmp ult i32 %383, 2
  br i1 %384, label %387, label %385

385:                                              ; preds = %379
  %386 = load ptr, ptr %104, align 4
  br label %406

387:                                              ; preds = %379
  %388 = icmp eq i32 %383, 0
  br i1 %388, label %392, label %389

389:                                              ; preds = %387
  %390 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 4
  %391 = load ptr, ptr %390, align 4
  br label %395

392:                                              ; preds = %387
  %393 = load ptr, ptr %183, align 4
  %394 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 4
  store ptr %393, ptr %394, align 4
  br label %395

395:                                              ; preds = %392, %389
  %396 = phi ptr [ %391, %389 ], [ %393, %392 ]
  %397 = load ptr, ptr %104, align 4
  %398 = ptrtoint ptr %397 to i32
  %399 = and i32 %398, 3
  %400 = sub nsw i32 0, %399
  %401 = getelementptr i8, ptr %397, i32 %400
  store ptr %401, ptr %104, align 4
  %402 = icmp ult ptr %401, %396
  br i1 %402, label %403, label %405

403:                                              ; preds = %395
  %404 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 4
  store ptr %401, ptr %404, align 4
  br label %405

405:                                              ; preds = %403, %395
  store i32 2, ptr %179, align 4
  br label %406

406:                                              ; preds = %405, %385
  %407 = phi ptr [ %386, %385 ], [ %401, %405 ]
  %408 = sub i32 0, %381
  %409 = getelementptr i8, ptr %407, i32 %408
  %410 = icmp ugt i32 %380, 28
  br i1 %410, label %420, label %411

411:                                              ; preds = %406
  %412 = icmp ult ptr %409, %382
  br i1 %412, label %413, label %414

413:                                              ; preds = %411
  store i8 1, ptr %180, align 4
  br label %420

414:                                              ; preds = %411
  %415 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 4
  %416 = load ptr, ptr %415, align 4
  %417 = icmp ult ptr %409, %416
  br i1 %417, label %418, label %419

418:                                              ; preds = %414
  store ptr %409, ptr %415, align 4
  br label %419

419:                                              ; preds = %418, %414
  store ptr %409, ptr %104, align 4
  br label %420

420:                                              ; preds = %419, %413, %406
  %421 = phi ptr [ null, %413 ], [ %409, %419 ], [ null, %406 ]
  %422 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 20
  %423 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 20, i32 1
  store ptr %421, ptr %423, align 4
  call void @llvm.memset.p0.i32(ptr align 4 %421, i8 0, i32 %381, i1 false)
  %424 = mul i32 %67, 12
  %425 = load ptr, ptr %106, align 4
  %426 = load i32, ptr %179, align 4
  %427 = icmp ult i32 %426, 2
  br i1 %427, label %430, label %428

428:                                              ; preds = %420
  %429 = load ptr, ptr %104, align 4
  br label %449

430:                                              ; preds = %420
  %431 = icmp eq i32 %426, 0
  br i1 %431, label %435, label %432

432:                                              ; preds = %430
  %433 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 4
  %434 = load ptr, ptr %433, align 4
  br label %438

435:                                              ; preds = %430
  %436 = load ptr, ptr %183, align 4
  %437 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 4
  store ptr %436, ptr %437, align 4
  br label %438

438:                                              ; preds = %435, %432
  %439 = phi ptr [ %434, %432 ], [ %436, %435 ]
  %440 = load ptr, ptr %104, align 4
  %441 = ptrtoint ptr %440 to i32
  %442 = and i32 %441, 3
  %443 = sub nsw i32 0, %442
  %444 = getelementptr i8, ptr %440, i32 %443
  store ptr %444, ptr %104, align 4
  %445 = icmp ult ptr %444, %439
  br i1 %445, label %446, label %448

446:                                              ; preds = %438
  %447 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 4
  store ptr %444, ptr %447, align 4
  br label %448

448:                                              ; preds = %446, %438
  store i32 2, ptr %179, align 4
  br label %449

449:                                              ; preds = %448, %428
  %450 = phi ptr [ %429, %428 ], [ %444, %448 ]
  %451 = sub i32 0, %424
  %452 = getelementptr i8, ptr %450, i32 %451
  %453 = icmp eq i32 %424, 0
  br i1 %453, label %463, label %454

454:                                              ; preds = %449
  %455 = icmp ult ptr %452, %425
  br i1 %455, label %456, label %457

456:                                              ; preds = %454
  store i8 1, ptr %180, align 4
  br label %463

457:                                              ; preds = %454
  %458 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 7, i32 4
  %459 = load ptr, ptr %458, align 4
  %460 = icmp ult ptr %452, %459
  br i1 %460, label %461, label %462

461:                                              ; preds = %457
  store ptr %452, ptr %458, align 4
  br label %462

462:                                              ; preds = %461, %457
  store ptr %452, ptr %104, align 4
  br label %463

463:                                              ; preds = %462, %456, %449
  %464 = phi ptr [ null, %456 ], [ %452, %462 ], [ null, %449 ]
  %465 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 21
  store ptr %464, ptr %465, align 8
  %466 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 22
  store i32 %67, ptr %466, align 4
  %467 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 20, i32 0, i32 1
  store ptr @.str, ptr %467, align 4
  %468 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 20, i32 0, i32 2
  store ptr @.str, ptr %468, align 4
  %469 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 20, i32 0, i32 3
  %470 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 20, i32 0, i32 4
  store ptr getelementptr inbounds ([1 x i8], ptr @.str, i32 1, i32 0), ptr %422, align 4
  store i32 1, ptr %470, align 4
  store i32 1, ptr %469, align 4
  %471 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 20, i32 2
  store i32 0, ptr %471, align 8
  br label %472

472:                                              ; preds = %463, %376
  %473 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 18
  store i32 1, ptr %473, align 8
  br label %474

474:                                              ; preds = %472, %372, %156, %154, %150, %122, %121, %79
  %475 = phi i32 [ 0, %472 ], [ %374, %372 ], [ %86, %79 ], [ -64, %154 ], [ -64, %150 ], [ -64, %156 ], [ -64, %121 ], [ -64, %122 ]
  ret i32 %475
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xxh64_reset(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ZSTD_reset_matchState(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #4 {
  %7 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %2, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 4, %12
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i32 [ %13, %10 ], [ 0, %6 ]
  %16 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %2, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %5, 1
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %2, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, ptr %2, align 4
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 17)
  br label %26

26:                                               ; preds = %23, %19, %14
  %27 = phi i32 [ 0, %19 ], [ 0, %14 ], [ %25, %23 ]
  %28 = icmp eq i32 %27, 0
  %29 = icmp eq i32 %4, 1
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  store ptr @.str, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 2
  store ptr @.str, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  store i32 1, ptr %33, align 4
  %34 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 4
  store i32 1, ptr %34, align 4
  store ptr getelementptr inbounds ([1 x i8], ptr @.str, i32 1, i32 0), ptr %0, align 4
  %35 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  store ptr %36, ptr %37, align 4
  br label %38

38:                                               ; preds = %30, %26
  %39 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 3
  store i32 %27, ptr %39, align 4
  %40 = load ptr, ptr %0, align 4
  %41 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = ptrtoint ptr %40 to i32
  %44 = ptrtoint ptr %42 to i32
  %45 = sub i32 %43, %44
  %46 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 4
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  store i32 %45, ptr %47, align 4
  %48 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 2
  store i32 %45, ptr %48, align 4
  %49 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 1
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 7
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 9
  store ptr null, ptr %51, align 4
  %52 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 3
  store ptr %53, ptr %54, align 4
  %55 = shl i32 4, %17
  %56 = getelementptr i8, ptr %53, i32 %55
  %57 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 8
  %60 = load i32, ptr %59, align 4
  %61 = icmp ult i32 %60, 2
  br i1 %61, label %62, label %78

62:                                               ; preds = %38
  %63 = icmp eq i32 %60, 0
  %64 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  br i1 %63, label %67, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %64, align 4
  br label %68

67:                                               ; preds = %62
  store ptr %53, ptr %64, align 4
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi ptr [ %66, %65 ], [ %53, %67 ]
  %70 = ptrtoint ptr %58 to i32
  %71 = and i32 %70, 3
  %72 = sub nsw i32 0, %71
  %73 = getelementptr i8, ptr %58, i32 %72
  store ptr %73, ptr %57, align 4
  %74 = icmp ult ptr %73, %69
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  store ptr %73, ptr %76, align 4
  br label %77

77:                                               ; preds = %75, %68
  store i32 2, ptr %59, align 4
  br label %78

78:                                               ; preds = %77, %38
  %79 = icmp ugt ptr %56, %58
  br i1 %79, label %80, label %82

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 6
  store i8 1, ptr %81, align 4
  br label %83

82:                                               ; preds = %78
  store ptr %56, ptr %54, align 4
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi ptr [ null, %80 ], [ %53, %82 ]
  %85 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 4
  store ptr %84, ptr %85, align 4
  %86 = load ptr, ptr %54, align 4
  %87 = getelementptr i8, ptr %86, i32 %15
  %88 = load ptr, ptr %57, align 4
  %89 = load i32, ptr %59, align 4
  %90 = icmp ult i32 %89, 2
  br i1 %90, label %91, label %109

91:                                               ; preds = %83
  %92 = icmp eq i32 %89, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  %95 = load ptr, ptr %94, align 4
  br label %99

96:                                               ; preds = %91
  %97 = load ptr, ptr %52, align 4
  %98 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  store ptr %97, ptr %98, align 4
  br label %99

99:                                               ; preds = %96, %93
  %100 = phi ptr [ %95, %93 ], [ %97, %96 ]
  %101 = ptrtoint ptr %88 to i32
  %102 = and i32 %101, 3
  %103 = sub nsw i32 0, %102
  %104 = getelementptr i8, ptr %88, i32 %103
  store ptr %104, ptr %57, align 4
  %105 = icmp ult ptr %104, %100
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  store ptr %104, ptr %107, align 4
  br label %108

108:                                              ; preds = %106, %99
  store i32 2, ptr %59, align 4
  br label %109

109:                                              ; preds = %108, %83
  %110 = icmp ugt ptr %87, %88
  br i1 %110, label %111, label %113

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 6
  store i8 1, ptr %112, align 4
  br label %114

113:                                              ; preds = %109
  store ptr %87, ptr %54, align 4
  br label %114

114:                                              ; preds = %113, %111
  %115 = phi ptr [ null, %111 ], [ %86, %113 ]
  %116 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 6
  store ptr %115, ptr %116, align 4
  %117 = shl nuw nsw i32 4, %27
  %118 = select i1 %28, i32 0, i32 %117
  %119 = load ptr, ptr %54, align 4
  %120 = getelementptr i8, ptr %119, i32 %118
  %121 = load ptr, ptr %57, align 4
  %122 = load i32, ptr %59, align 4
  %123 = icmp ult i32 %122, 2
  br i1 %123, label %124, label %142

124:                                              ; preds = %114
  %125 = icmp eq i32 %122, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  %128 = load ptr, ptr %127, align 4
  br label %132

129:                                              ; preds = %124
  %130 = load ptr, ptr %52, align 4
  %131 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  store ptr %130, ptr %131, align 4
  br label %132

132:                                              ; preds = %129, %126
  %133 = phi ptr [ %128, %126 ], [ %130, %129 ]
  %134 = ptrtoint ptr %121 to i32
  %135 = and i32 %134, 3
  %136 = sub nsw i32 0, %135
  %137 = getelementptr i8, ptr %121, i32 %136
  store ptr %137, ptr %57, align 4
  %138 = icmp ult ptr %137, %133
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  store ptr %137, ptr %140, align 4
  br label %141

141:                                              ; preds = %139, %132
  store i32 2, ptr %59, align 4
  br label %142

142:                                              ; preds = %141, %114
  %143 = icmp ugt ptr %120, %121
  br i1 %143, label %144, label %146

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 6
  store i8 1, ptr %145, align 4
  br label %147

146:                                              ; preds = %142
  store ptr %120, ptr %54, align 4
  br label %147

147:                                              ; preds = %146, %144
  %148 = phi ptr [ null, %144 ], [ %119, %146 ]
  %149 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 5
  store ptr %148, ptr %149, align 4
  %150 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 6
  %151 = load i8, ptr %150, align 4
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %409

153:                                              ; preds = %147
  %154 = icmp eq i32 %3, 1
  br i1 %154, label %171, label %155

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  %157 = load ptr, ptr %156, align 4
  %158 = load ptr, ptr %54, align 4
  %159 = icmp ult ptr %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = ptrtoint ptr %158 to i32
  %162 = ptrtoint ptr %157 to i32
  %163 = sub i32 %161, %162
  tail call void @llvm.memset.p0.i32(ptr align 1 %157, i8 0, i32 %163, i1 false) #23
  %164 = load ptr, ptr %156, align 4
  %165 = load ptr, ptr %54, align 4
  br label %166

166:                                              ; preds = %160, %155
  %167 = phi ptr [ %165, %160 ], [ %158, %155 ]
  %168 = phi ptr [ %164, %160 ], [ %157, %155 ]
  %169 = icmp ult ptr %168, %167
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  store ptr %167, ptr %156, align 4
  br label %171

171:                                              ; preds = %170, %166, %153
  br i1 %18, label %172, label %404

172:                                              ; preds = %171
  %173 = load i32, ptr %7, align 4
  %174 = icmp ugt i32 %173, 6
  br i1 %174, label %175, label %404

175:                                              ; preds = %172
  %176 = load ptr, ptr %54, align 4
  %177 = load i32, ptr %59, align 4
  %178 = icmp ult i32 %177, 2
  br i1 %178, label %181, label %179

179:                                              ; preds = %175
  %180 = load ptr, ptr %57, align 4
  br label %200

181:                                              ; preds = %175
  %182 = icmp eq i32 %177, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %181
  %184 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  %185 = load ptr, ptr %184, align 4
  br label %189

186:                                              ; preds = %181
  %187 = load ptr, ptr %52, align 4
  %188 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  store ptr %187, ptr %188, align 4
  br label %189

189:                                              ; preds = %186, %183
  %190 = phi ptr [ %185, %183 ], [ %187, %186 ]
  %191 = load ptr, ptr %57, align 4
  %192 = ptrtoint ptr %191 to i32
  %193 = and i32 %192, 3
  %194 = sub nsw i32 0, %193
  %195 = getelementptr i8, ptr %191, i32 %194
  store ptr %195, ptr %57, align 4
  %196 = icmp ult ptr %195, %190
  br i1 %196, label %197, label %199

197:                                              ; preds = %189
  %198 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  store ptr %195, ptr %198, align 4
  br label %199

199:                                              ; preds = %197, %189
  store i32 2, ptr %59, align 4
  br label %200

200:                                              ; preds = %199, %179
  %201 = phi ptr [ %180, %179 ], [ %195, %199 ]
  %202 = getelementptr i8, ptr %201, i32 -1024
  %203 = icmp ult ptr %202, %176
  br i1 %203, label %204, label %205

204:                                              ; preds = %200
  store i8 1, ptr %150, align 4
  br label %211

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  %207 = load ptr, ptr %206, align 4
  %208 = icmp ult ptr %202, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %205
  store ptr %202, ptr %206, align 4
  br label %210

210:                                              ; preds = %209, %205
  store ptr %202, ptr %57, align 4
  br label %211

211:                                              ; preds = %210, %204
  %212 = phi ptr [ null, %204 ], [ %202, %210 ]
  %213 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8
  store ptr %212, ptr %213, align 4
  %214 = load ptr, ptr %54, align 4
  %215 = load i32, ptr %59, align 4
  %216 = icmp ult i32 %215, 2
  br i1 %216, label %219, label %217

217:                                              ; preds = %211
  %218 = load ptr, ptr %57, align 4
  br label %238

219:                                              ; preds = %211
  %220 = icmp eq i32 %215, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %219
  %222 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  %223 = load ptr, ptr %222, align 4
  br label %227

224:                                              ; preds = %219
  %225 = load ptr, ptr %52, align 4
  %226 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  store ptr %225, ptr %226, align 4
  br label %227

227:                                              ; preds = %224, %221
  %228 = phi ptr [ %223, %221 ], [ %225, %224 ]
  %229 = load ptr, ptr %57, align 4
  %230 = ptrtoint ptr %229 to i32
  %231 = and i32 %230, 3
  %232 = sub nsw i32 0, %231
  %233 = getelementptr i8, ptr %229, i32 %232
  store ptr %233, ptr %57, align 4
  %234 = icmp ult ptr %233, %228
  br i1 %234, label %235, label %237

235:                                              ; preds = %227
  %236 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  store ptr %233, ptr %236, align 4
  br label %237

237:                                              ; preds = %235, %227
  store i32 2, ptr %59, align 4
  br label %238

238:                                              ; preds = %237, %217
  %239 = phi ptr [ %218, %217 ], [ %233, %237 ]
  %240 = getelementptr i8, ptr %239, i32 -144
  %241 = icmp ult ptr %240, %214
  br i1 %241, label %242, label %243

242:                                              ; preds = %238
  store i8 1, ptr %150, align 4
  br label %249

243:                                              ; preds = %238
  %244 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  %245 = load ptr, ptr %244, align 4
  %246 = icmp ult ptr %240, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %243
  store ptr %240, ptr %244, align 4
  br label %248

248:                                              ; preds = %247, %243
  store ptr %240, ptr %57, align 4
  br label %249

249:                                              ; preds = %248, %242
  %250 = phi ptr [ null, %242 ], [ %240, %248 ]
  %251 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 1
  store ptr %250, ptr %251, align 4
  %252 = load ptr, ptr %54, align 4
  %253 = load i32, ptr %59, align 4
  %254 = icmp ult i32 %253, 2
  br i1 %254, label %257, label %255

255:                                              ; preds = %249
  %256 = load ptr, ptr %57, align 4
  br label %276

257:                                              ; preds = %249
  %258 = icmp eq i32 %253, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %257
  %260 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  %261 = load ptr, ptr %260, align 4
  br label %265

262:                                              ; preds = %257
  %263 = load ptr, ptr %52, align 4
  %264 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  store ptr %263, ptr %264, align 4
  br label %265

265:                                              ; preds = %262, %259
  %266 = phi ptr [ %261, %259 ], [ %263, %262 ]
  %267 = load ptr, ptr %57, align 4
  %268 = ptrtoint ptr %267 to i32
  %269 = and i32 %268, 3
  %270 = sub nsw i32 0, %269
  %271 = getelementptr i8, ptr %267, i32 %270
  store ptr %271, ptr %57, align 4
  %272 = icmp ult ptr %271, %266
  br i1 %272, label %273, label %275

273:                                              ; preds = %265
  %274 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  store ptr %271, ptr %274, align 4
  br label %275

275:                                              ; preds = %273, %265
  store i32 2, ptr %59, align 4
  br label %276

276:                                              ; preds = %275, %255
  %277 = phi ptr [ %256, %255 ], [ %271, %275 ]
  %278 = getelementptr i8, ptr %277, i32 -212
  %279 = icmp ult ptr %278, %252
  br i1 %279, label %280, label %281

280:                                              ; preds = %276
  store i8 1, ptr %150, align 4
  br label %287

281:                                              ; preds = %276
  %282 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  %283 = load ptr, ptr %282, align 4
  %284 = icmp ult ptr %278, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %281
  store ptr %278, ptr %282, align 4
  br label %286

286:                                              ; preds = %285, %281
  store ptr %278, ptr %57, align 4
  br label %287

287:                                              ; preds = %286, %280
  %288 = phi ptr [ null, %280 ], [ %278, %286 ]
  %289 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 2
  store ptr %288, ptr %289, align 4
  %290 = load ptr, ptr %54, align 4
  %291 = load i32, ptr %59, align 4
  %292 = icmp ult i32 %291, 2
  br i1 %292, label %295, label %293

293:                                              ; preds = %287
  %294 = load ptr, ptr %57, align 4
  br label %314

295:                                              ; preds = %287
  %296 = icmp eq i32 %291, 0
  br i1 %296, label %300, label %297

297:                                              ; preds = %295
  %298 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  %299 = load ptr, ptr %298, align 4
  br label %303

300:                                              ; preds = %295
  %301 = load ptr, ptr %52, align 4
  %302 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  store ptr %301, ptr %302, align 4
  br label %303

303:                                              ; preds = %300, %297
  %304 = phi ptr [ %299, %297 ], [ %301, %300 ]
  %305 = load ptr, ptr %57, align 4
  %306 = ptrtoint ptr %305 to i32
  %307 = and i32 %306, 3
  %308 = sub nsw i32 0, %307
  %309 = getelementptr i8, ptr %305, i32 %308
  store ptr %309, ptr %57, align 4
  %310 = icmp ult ptr %309, %304
  br i1 %310, label %311, label %313

311:                                              ; preds = %303
  %312 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  store ptr %309, ptr %312, align 4
  br label %313

313:                                              ; preds = %311, %303
  store i32 2, ptr %59, align 4
  br label %314

314:                                              ; preds = %313, %293
  %315 = phi ptr [ %294, %293 ], [ %309, %313 ]
  %316 = getelementptr i8, ptr %315, i32 -128
  %317 = icmp ult ptr %316, %290
  br i1 %317, label %318, label %319

318:                                              ; preds = %314
  store i8 1, ptr %150, align 4
  br label %325

319:                                              ; preds = %314
  %320 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  %321 = load ptr, ptr %320, align 4
  %322 = icmp ult ptr %316, %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %319
  store ptr %316, ptr %320, align 4
  br label %324

324:                                              ; preds = %323, %319
  store ptr %316, ptr %57, align 4
  br label %325

325:                                              ; preds = %324, %318
  %326 = phi ptr [ null, %318 ], [ %316, %324 ]
  %327 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 3
  store ptr %326, ptr %327, align 4
  %328 = load ptr, ptr %54, align 4
  %329 = load i32, ptr %59, align 4
  %330 = icmp ult i32 %329, 2
  br i1 %330, label %333, label %331

331:                                              ; preds = %325
  %332 = load ptr, ptr %57, align 4
  br label %352

333:                                              ; preds = %325
  %334 = icmp eq i32 %329, 0
  br i1 %334, label %338, label %335

335:                                              ; preds = %333
  %336 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  %337 = load ptr, ptr %336, align 4
  br label %341

338:                                              ; preds = %333
  %339 = load ptr, ptr %52, align 4
  %340 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  store ptr %339, ptr %340, align 4
  br label %341

341:                                              ; preds = %338, %335
  %342 = phi ptr [ %337, %335 ], [ %339, %338 ]
  %343 = load ptr, ptr %57, align 4
  %344 = ptrtoint ptr %343 to i32
  %345 = and i32 %344, 3
  %346 = sub nsw i32 0, %345
  %347 = getelementptr i8, ptr %343, i32 %346
  store ptr %347, ptr %57, align 4
  %348 = icmp ult ptr %347, %342
  br i1 %348, label %349, label %351

349:                                              ; preds = %341
  %350 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  store ptr %347, ptr %350, align 4
  br label %351

351:                                              ; preds = %349, %341
  store i32 2, ptr %59, align 4
  br label %352

352:                                              ; preds = %351, %331
  %353 = phi ptr [ %332, %331 ], [ %347, %351 ]
  %354 = getelementptr i8, ptr %353, i32 -32776
  %355 = icmp ult ptr %354, %328
  br i1 %355, label %356, label %357

356:                                              ; preds = %352
  store i8 1, ptr %150, align 4
  br label %363

357:                                              ; preds = %352
  %358 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  %359 = load ptr, ptr %358, align 4
  %360 = icmp ult ptr %354, %359
  br i1 %360, label %361, label %362

361:                                              ; preds = %357
  store ptr %354, ptr %358, align 4
  br label %362

362:                                              ; preds = %361, %357
  store ptr %354, ptr %57, align 4
  br label %363

363:                                              ; preds = %362, %356
  %364 = phi ptr [ null, %356 ], [ %354, %362 ]
  %365 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 4
  store ptr %364, ptr %365, align 4
  %366 = load ptr, ptr %54, align 4
  %367 = load i32, ptr %59, align 4
  %368 = icmp ult i32 %367, 2
  br i1 %368, label %371, label %369

369:                                              ; preds = %363
  %370 = load ptr, ptr %57, align 4
  br label %390

371:                                              ; preds = %363
  %372 = icmp eq i32 %367, 0
  br i1 %372, label %376, label %373

373:                                              ; preds = %371
  %374 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  %375 = load ptr, ptr %374, align 4
  br label %379

376:                                              ; preds = %371
  %377 = load ptr, ptr %52, align 4
  %378 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  store ptr %377, ptr %378, align 4
  br label %379

379:                                              ; preds = %376, %373
  %380 = phi ptr [ %375, %373 ], [ %377, %376 ]
  %381 = load ptr, ptr %57, align 4
  %382 = ptrtoint ptr %381 to i32
  %383 = and i32 %382, 3
  %384 = sub nsw i32 0, %383
  %385 = getelementptr i8, ptr %381, i32 %384
  store ptr %385, ptr %57, align 4
  %386 = icmp ult ptr %385, %380
  br i1 %386, label %387, label %389

387:                                              ; preds = %379
  %388 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  store ptr %385, ptr %388, align 4
  br label %389

389:                                              ; preds = %387, %379
  store i32 2, ptr %59, align 4
  br label %390

390:                                              ; preds = %389, %369
  %391 = phi ptr [ %370, %369 ], [ %385, %389 ]
  %392 = getelementptr i8, ptr %391, i32 -114716
  %393 = icmp ult ptr %392, %366
  br i1 %393, label %394, label %395

394:                                              ; preds = %390
  store i8 1, ptr %150, align 4
  br label %401

395:                                              ; preds = %390
  %396 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  %397 = load ptr, ptr %396, align 4
  %398 = icmp ult ptr %392, %397
  br i1 %398, label %399, label %400

399:                                              ; preds = %395
  store ptr %392, ptr %396, align 4
  br label %400

400:                                              ; preds = %399, %395
  store ptr %392, ptr %57, align 4
  br label %401

401:                                              ; preds = %400, %394
  %402 = phi ptr [ null, %394 ], [ %392, %400 ]
  %403 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 8, i32 5
  store ptr %402, ptr %403, align 4
  br label %404

404:                                              ; preds = %401, %172, %171
  %405 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %405, ptr noundef align 4 dereferenceable(28) %2, i32 28, i1 false)
  %406 = load i8, ptr %150, align 4
  %407 = icmp eq i8 %406, 0
  %408 = select i1 %407, i32 0, i32 -64
  br label %409

409:                                              ; preds = %404, %147
  %410 = phi i32 [ -64, %147 ], [ %408, %404 ]
  ret i32 %410
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #19

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ZSTD_overflowCorrectIfNeeded(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #14 {
  %6 = getelementptr inbounds [5 x i32], ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = ptrtoint ptr %4 to i32
  %9 = sub i32 %8, %7
  %10 = icmp ult i32 %9, -1610612735
  br i1 %10, label %203, label %11

11:                                               ; preds = %5
  %12 = inttoptr i32 %7 to ptr
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %2, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = shl nsw i32 -1, %14
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %2, i32 0, i32 1, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %2, i32 0, i32 1, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 5
  %21 = sext i1 %20 to i32
  %22 = add i32 %17, %21
  %23 = shl nuw i32 1, %22
  %24 = add i32 %23, -1
  %25 = ptrtoint ptr %3 to i32
  %26 = sub i32 %25, %7
  %27 = and i32 %24, %26
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 %23, i32 %27
  %30 = add i32 %26, %15
  %31 = sub i32 %30, %29
  %32 = getelementptr i8, ptr %12, i32 %31
  store ptr %32, ptr %6, align 4
  %33 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 %31
  store ptr %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = icmp ugt i32 %37, %31
  %39 = sub i32 %37, %31
  %40 = select i1 %38, i32 %39, i32 1
  store i32 %40, ptr %36, align 4
  %41 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = icmp ugt i32 %42, %31
  %44 = sub i32 %42, %31
  %45 = select i1 %43, i32 %44, i32 1
  store i32 %45, ptr %41, align 4
  %46 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 4
  store ptr %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %2, i32 0, i32 1, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = shl nuw i32 1, %50
  %52 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 4
  %53 = load ptr, ptr %52, align 4
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %53, i32 noundef %51, i32 noundef %31) #23
  %54 = load i32, ptr %18, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %183, label %56

56:                                               ; preds = %11
  %57 = load i32, ptr %16, align 4
  %58 = shl nuw i32 1, %57
  %59 = icmp eq i32 %54, 6
  %60 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 6
  %61 = load ptr, ptr %60, align 4
  br i1 %59, label %62, label %182

62:                                               ; preds = %56
  %63 = sdiv i32 %58, 16
  %64 = icmp sgt i32 %58, 15
  br i1 %64, label %65, label %183

65:                                               ; preds = %65, %62
  %66 = phi i32 [ %180, %65 ], [ 0, %62 ]
  %67 = phi i32 [ %68, %65 ], [ 0, %62 ]
  %68 = add i32 %67, 16
  %69 = getelementptr i32, ptr %61, i32 %67
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 1
  %72 = select i1 %71, i32 %31, i32 0
  %73 = add i32 %72, %70
  %74 = tail call i32 @llvm.usub.sat.i32(i32 %73, i32 %31) #23
  store i32 %74, ptr %69, align 4
  %75 = or i32 %67, 1
  %76 = getelementptr i32, ptr %61, i32 %75
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 1
  %79 = select i1 %78, i32 %31, i32 0
  %80 = add i32 %79, %77
  %81 = tail call i32 @llvm.usub.sat.i32(i32 %80, i32 %31) #23
  store i32 %81, ptr %76, align 4
  %82 = or i32 %67, 2
  %83 = getelementptr i32, ptr %61, i32 %82
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 1
  %86 = select i1 %85, i32 %31, i32 0
  %87 = add i32 %86, %84
  %88 = tail call i32 @llvm.usub.sat.i32(i32 %87, i32 %31) #23
  store i32 %88, ptr %83, align 4
  %89 = or i32 %67, 3
  %90 = getelementptr i32, ptr %61, i32 %89
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 1
  %93 = select i1 %92, i32 %31, i32 0
  %94 = add i32 %93, %91
  %95 = tail call i32 @llvm.usub.sat.i32(i32 %94, i32 %31) #23
  store i32 %95, ptr %90, align 4
  %96 = or i32 %67, 4
  %97 = getelementptr i32, ptr %61, i32 %96
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 1
  %100 = select i1 %99, i32 %31, i32 0
  %101 = add i32 %100, %98
  %102 = tail call i32 @llvm.usub.sat.i32(i32 %101, i32 %31) #23
  store i32 %102, ptr %97, align 4
  %103 = or i32 %67, 5
  %104 = getelementptr i32, ptr %61, i32 %103
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 1
  %107 = select i1 %106, i32 %31, i32 0
  %108 = add i32 %107, %105
  %109 = tail call i32 @llvm.usub.sat.i32(i32 %108, i32 %31) #23
  store i32 %109, ptr %104, align 4
  %110 = or i32 %67, 6
  %111 = getelementptr i32, ptr %61, i32 %110
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 1
  %114 = select i1 %113, i32 %31, i32 0
  %115 = add i32 %114, %112
  %116 = tail call i32 @llvm.usub.sat.i32(i32 %115, i32 %31) #23
  store i32 %116, ptr %111, align 4
  %117 = or i32 %67, 7
  %118 = getelementptr i32, ptr %61, i32 %117
  %119 = load i32, ptr %118, align 4
  %120 = icmp eq i32 %119, 1
  %121 = select i1 %120, i32 %31, i32 0
  %122 = add i32 %121, %119
  %123 = tail call i32 @llvm.usub.sat.i32(i32 %122, i32 %31) #23
  store i32 %123, ptr %118, align 4
  %124 = or i32 %67, 8
  %125 = getelementptr i32, ptr %61, i32 %124
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, 1
  %128 = select i1 %127, i32 %31, i32 0
  %129 = add i32 %128, %126
  %130 = tail call i32 @llvm.usub.sat.i32(i32 %129, i32 %31) #23
  store i32 %130, ptr %125, align 4
  %131 = or i32 %67, 9
  %132 = getelementptr i32, ptr %61, i32 %131
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %133, 1
  %135 = select i1 %134, i32 %31, i32 0
  %136 = add i32 %135, %133
  %137 = tail call i32 @llvm.usub.sat.i32(i32 %136, i32 %31) #23
  store i32 %137, ptr %132, align 4
  %138 = or i32 %67, 10
  %139 = getelementptr i32, ptr %61, i32 %138
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %140, 1
  %142 = select i1 %141, i32 %31, i32 0
  %143 = add i32 %142, %140
  %144 = tail call i32 @llvm.usub.sat.i32(i32 %143, i32 %31) #23
  store i32 %144, ptr %139, align 4
  %145 = or i32 %67, 11
  %146 = getelementptr i32, ptr %61, i32 %145
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 1
  %149 = select i1 %148, i32 %31, i32 0
  %150 = add i32 %149, %147
  %151 = tail call i32 @llvm.usub.sat.i32(i32 %150, i32 %31) #23
  store i32 %151, ptr %146, align 4
  %152 = or i32 %67, 12
  %153 = getelementptr i32, ptr %61, i32 %152
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %154, 1
  %156 = select i1 %155, i32 %31, i32 0
  %157 = add i32 %156, %154
  %158 = tail call i32 @llvm.usub.sat.i32(i32 %157, i32 %31) #23
  store i32 %158, ptr %153, align 4
  %159 = or i32 %67, 13
  %160 = getelementptr i32, ptr %61, i32 %159
  %161 = load i32, ptr %160, align 4
  %162 = icmp eq i32 %161, 1
  %163 = select i1 %162, i32 %31, i32 0
  %164 = add i32 %163, %161
  %165 = tail call i32 @llvm.usub.sat.i32(i32 %164, i32 %31) #23
  store i32 %165, ptr %160, align 4
  %166 = or i32 %67, 14
  %167 = getelementptr i32, ptr %61, i32 %166
  %168 = load i32, ptr %167, align 4
  %169 = icmp eq i32 %168, 1
  %170 = select i1 %169, i32 %31, i32 0
  %171 = add i32 %170, %168
  %172 = tail call i32 @llvm.usub.sat.i32(i32 %171, i32 %31) #23
  store i32 %172, ptr %167, align 4
  %173 = or i32 %67, 15
  %174 = getelementptr i32, ptr %61, i32 %173
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, 1
  %177 = select i1 %176, i32 %31, i32 0
  %178 = add i32 %177, %175
  %179 = tail call i32 @llvm.usub.sat.i32(i32 %178, i32 %31) #23
  store i32 %179, ptr %174, align 4
  %180 = add nuw nsw i32 %66, 1
  %181 = icmp eq i32 %180, %63
  br i1 %181, label %183, label %65

182:                                              ; preds = %56
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %61, i32 noundef %58, i32 noundef %31) #23
  br label %183

183:                                              ; preds = %182, %65, %62, %11
  %184 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 3
  %185 = load i32, ptr %184, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %183
  %188 = shl nuw i32 1, %185
  %189 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 5
  %190 = load ptr, ptr %189, align 4
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %190, i32 noundef %188, i32 noundef %31) #23
  br label %191

191:                                              ; preds = %187, %183
  %192 = load ptr, ptr %48, align 4
  %193 = getelementptr inbounds %struct.ZSTD_cwksp, ptr %1, i32 0, i32 3
  %194 = load ptr, ptr %193, align 4
  %195 = icmp ult ptr %192, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %191
  store ptr %194, ptr %48, align 4
  br label %197

197:                                              ; preds = %196, %191
  %198 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 2
  %199 = load i32, ptr %198, align 4
  %200 = tail call i32 @llvm.usub.sat.i32(i32 %199, i32 %31)
  store i32 %200, ptr %198, align 4
  %201 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 1
  store i32 0, ptr %201, align 4
  %202 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 9
  store ptr null, ptr %202, align 4
  br label %203

203:                                              ; preds = %197, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_compressBlock_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 {
  %7 = tail call fastcc i32 @ZSTD_buildSeqStore(ptr noundef %0, ptr noundef %3, i32 noundef %4)
  %8 = icmp ult i32 %7, -119
  %9 = icmp eq i32 %7, 1
  %10 = select i1 %9, i32 4, i32 0
  %11 = select i1 %8, i32 %10, i32 1
  switch i32 %11, label %63 [
    i32 0, label %12
    i32 4, label %55
  ]

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 16
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  tail call fastcc void @ZSTD_copyBlockSequences(ptr noundef %0)
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 1
  %20 = load ptr, ptr %19, align 4
  store ptr %20, ptr %17, align 4
  store ptr %18, ptr %19, align 4
  br label %63

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4
  %28 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 25
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = tail call fastcc i32 @ZSTD_entropyCompressSequences(ptr noundef %22, ptr noundef %24, ptr noundef %26, ptr noundef %27, ptr noundef %1, i32 noundef %2, i32 noundef %4, ptr noundef %29, i32 noundef %31)
  %33 = load i32, ptr %13, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %21
  tail call fastcc void @ZSTD_copyBlockSequences(ptr noundef %0)
  br label %63

36:                                               ; preds = %21
  %37 = icmp eq i32 %5, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 17
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  %42 = icmp ult i32 %32, 25
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = tail call fastcc i32 @ZSTD_isRLE(ptr noundef %3, i32 noundef %4)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load i8, ptr %3, align 1
  store i8 %48, ptr %1, align 1
  br label %55

49:                                               ; preds = %44, %38, %36
  %50 = add i32 %32, -2
  %51 = icmp ult i32 %50, -121
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load ptr, ptr %23, align 4
  %54 = load ptr, ptr %25, align 4
  store ptr %54, ptr %23, align 4
  store ptr %53, ptr %25, align 4
  br label %55

55:                                               ; preds = %52, %49, %47, %6
  %56 = phi i32 [ %32, %52 ], [ %32, %49 ], [ 1, %47 ], [ 0, %6 ]
  %57 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %58, i32 0, i32 1, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 1, ptr %59, align 4
  br label %63

63:                                               ; preds = %62, %55, %35, %16, %6
  %64 = phi i32 [ %7, %6 ], [ 0, %16 ], [ 0, %35 ], [ %56, %62 ], [ %56, %55 ]
  ret i32 %64
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ZSTD_reduceTable(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #15 {
  %4 = sdiv i32 %1, 16
  %5 = icmp sgt i32 %1, 15
  br i1 %5, label %6, label %75

6:                                                ; preds = %6, %3
  %7 = phi i32 [ %73, %6 ], [ 0, %3 ]
  %8 = phi i32 [ %9, %6 ], [ 0, %3 ]
  %9 = add i32 %8, 16
  %10 = getelementptr i32, ptr %0, i32 %8
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.usub.sat.i32(i32 %11, i32 %2) #23
  store i32 %12, ptr %10, align 4
  %13 = or i32 %8, 1
  %14 = getelementptr i32, ptr %0, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.usub.sat.i32(i32 %15, i32 %2) #23
  store i32 %16, ptr %14, align 4
  %17 = or i32 %8, 2
  %18 = getelementptr i32, ptr %0, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.usub.sat.i32(i32 %19, i32 %2) #23
  store i32 %20, ptr %18, align 4
  %21 = or i32 %8, 3
  %22 = getelementptr i32, ptr %0, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @llvm.usub.sat.i32(i32 %23, i32 %2) #23
  store i32 %24, ptr %22, align 4
  %25 = or i32 %8, 4
  %26 = getelementptr i32, ptr %0, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @llvm.usub.sat.i32(i32 %27, i32 %2) #23
  store i32 %28, ptr %26, align 4
  %29 = or i32 %8, 5
  %30 = getelementptr i32, ptr %0, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @llvm.usub.sat.i32(i32 %31, i32 %2) #23
  store i32 %32, ptr %30, align 4
  %33 = or i32 %8, 6
  %34 = getelementptr i32, ptr %0, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = tail call i32 @llvm.usub.sat.i32(i32 %35, i32 %2) #23
  store i32 %36, ptr %34, align 4
  %37 = or i32 %8, 7
  %38 = getelementptr i32, ptr %0, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = tail call i32 @llvm.usub.sat.i32(i32 %39, i32 %2) #23
  store i32 %40, ptr %38, align 4
  %41 = or i32 %8, 8
  %42 = getelementptr i32, ptr %0, i32 %41
  %43 = load i32, ptr %42, align 4
  %44 = tail call i32 @llvm.usub.sat.i32(i32 %43, i32 %2) #23
  store i32 %44, ptr %42, align 4
  %45 = or i32 %8, 9
  %46 = getelementptr i32, ptr %0, i32 %45
  %47 = load i32, ptr %46, align 4
  %48 = tail call i32 @llvm.usub.sat.i32(i32 %47, i32 %2) #23
  store i32 %48, ptr %46, align 4
  %49 = or i32 %8, 10
  %50 = getelementptr i32, ptr %0, i32 %49
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @llvm.usub.sat.i32(i32 %51, i32 %2) #23
  store i32 %52, ptr %50, align 4
  %53 = or i32 %8, 11
  %54 = getelementptr i32, ptr %0, i32 %53
  %55 = load i32, ptr %54, align 4
  %56 = tail call i32 @llvm.usub.sat.i32(i32 %55, i32 %2) #23
  store i32 %56, ptr %54, align 4
  %57 = or i32 %8, 12
  %58 = getelementptr i32, ptr %0, i32 %57
  %59 = load i32, ptr %58, align 4
  %60 = tail call i32 @llvm.usub.sat.i32(i32 %59, i32 %2) #23
  store i32 %60, ptr %58, align 4
  %61 = or i32 %8, 13
  %62 = getelementptr i32, ptr %0, i32 %61
  %63 = load i32, ptr %62, align 4
  %64 = tail call i32 @llvm.usub.sat.i32(i32 %63, i32 %2) #23
  store i32 %64, ptr %62, align 4
  %65 = or i32 %8, 14
  %66 = getelementptr i32, ptr %0, i32 %65
  %67 = load i32, ptr %66, align 4
  %68 = tail call i32 @llvm.usub.sat.i32(i32 %67, i32 %2) #23
  store i32 %68, ptr %66, align 4
  %69 = or i32 %8, 15
  %70 = getelementptr i32, ptr %0, i32 %69
  %71 = load i32, ptr %70, align 4
  %72 = tail call i32 @llvm.usub.sat.i32(i32 %71, i32 %2) #23
  store i32 %72, ptr %70, align 4
  %73 = add nuw nsw i32 %7, 1
  %74 = icmp eq i32 %73, %4
  br i1 %74, label %75, label %6

75:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_buildSeqStore(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = alloca %struct.rawSeqStore_t, align 4
  %5 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24
  %6 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2
  %7 = icmp ult i32 %2, 7
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 1, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, 6
  %12 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 23
  br i1 %11, label %13, label %14

13:                                               ; preds = %8
  tail call void @ZSTD_ldm_skipRawSeqStoreBytes(ptr noundef %12, i32 noundef %2) #23
  br label %122

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 1, i32 4
  %16 = load i32, ptr %15, align 4
  tail call void @ZSTD_ldm_skipSequences(ptr noundef %12, i32 noundef %2, i32 noundef %16) #23
  br label %122

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 3
  store ptr %20, ptr %21, align 4
  %22 = load ptr, ptr %18, align 4
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 1
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 9
  store i32 0, ptr %24, align 4
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 8, i32 15
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 8
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 8, i32 16
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = ptrtoint ptr %1 to i32
  %33 = ptrtoint ptr %31 to i32
  %34 = sub i32 %32, %33
  %35 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 384
  %38 = icmp ugt i32 %34, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %17
  %40 = sub i32 -384, %36
  %41 = add i32 %40, %34
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 192)
  %43 = sub i32 %34, %42
  store i32 %43, ptr %35, align 4
  br label %44

44:                                               ; preds = %39, %17
  %45 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = icmp ult i32 %48, %46
  br i1 %49, label %59, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 9
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %52, i32 0, i32 7
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i32 2, i32 3
  br label %59

59:                                               ; preds = %54, %50, %44
  %60 = phi i32 [ 1, %44 ], [ %58, %54 ], [ 0, %50 ]
  %61 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 1
  %62 = getelementptr %struct.ZSTD_compressedBlockState_t, ptr %25, i32 0, i32 1, i32 0
  %63 = load i32, ptr %62, align 4
  %64 = load ptr, ptr %61, align 4
  %65 = getelementptr %struct.ZSTD_compressedBlockState_t, ptr %64, i32 0, i32 1, i32 0
  store i32 %63, ptr %65, align 4
  %66 = load ptr, ptr %5, align 4
  %67 = getelementptr %struct.ZSTD_compressedBlockState_t, ptr %66, i32 0, i32 1, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = load ptr, ptr %61, align 4
  %70 = getelementptr %struct.ZSTD_compressedBlockState_t, ptr %69, i32 0, i32 1, i32 1
  store i32 %68, ptr %70, align 4
  %71 = load ptr, ptr %5, align 4
  %72 = getelementptr %struct.ZSTD_compressedBlockState_t, ptr %71, i32 0, i32 1, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = load ptr, ptr %61, align 4
  %75 = getelementptr %struct.ZSTD_compressedBlockState_t, ptr %74, i32 0, i32 1, i32 2
  store i32 %73, ptr %75, align 4
  %76 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 23, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 23, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = icmp ult i32 %77, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %59
  %82 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 23
  %83 = load ptr, ptr %61, align 4
  %84 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %83, i32 0, i32 1
  %85 = tail call i32 @ZSTD_ldm_blockCompress(ptr noundef %82, ptr noundef %6, ptr noundef %18, ptr noundef %84, ptr noundef %1, i32 noundef %2) #23
  br label %114

86:                                               ; preds = %59
  %87 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 13
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %104, label %90

90:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #23
  %91 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 21
  %92 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %92, i8 0, i64 12, i1 false)
  %93 = load ptr, ptr %91, align 8
  store ptr %93, ptr %4, align 4
  %94 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 22
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.rawSeqStore_t, ptr %4, i32 0, i32 4
  store i32 %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 20
  %98 = call i32 @ZSTD_ldm_generateSequences(ptr noundef %97, ptr noundef nonnull %4, ptr noundef %87, ptr noundef %1, i32 noundef %2) #23
  %99 = icmp ult i32 %98, -119
  br i1 %99, label %100, label %113

100:                                              ; preds = %90
  %101 = load ptr, ptr %61, align 4
  %102 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %101, i32 0, i32 1
  %103 = call i32 @ZSTD_ldm_blockCompress(ptr noundef nonnull %4, ptr noundef %6, ptr noundef %18, ptr noundef %102, ptr noundef %1, i32 noundef %2) #23
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #23
  br label %114

104:                                              ; preds = %86
  %105 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 1, i32 6
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr [4 x [10 x ptr]], ptr @ZSTD_selectBlockCompressor.blockCompressor, i32 0, i32 %60, i32 %106
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 2, i32 11
  store ptr null, ptr %109, align 4
  %110 = load ptr, ptr %61, align 4
  %111 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %110, i32 0, i32 1
  %112 = tail call i32 %108(ptr noundef %6, ptr noundef %18, ptr noundef %111, ptr noundef %1, i32 noundef %2) #23
  br label %114

113:                                              ; preds = %90
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #23
  br label %122

114:                                              ; preds = %104, %100, %81
  %115 = phi i32 [ %85, %81 ], [ %112, %104 ], [ %103, %100 ]
  %116 = getelementptr i8, ptr %1, i32 %2
  %117 = sub i32 0, %115
  %118 = getelementptr i8, ptr %116, i32 %117
  %119 = load ptr, ptr %21, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %119, ptr align 1 %118, i32 %115, i1 false) #23
  %120 = load ptr, ptr %21, align 4
  %121 = getelementptr i8, ptr %120, i32 %115
  store ptr %121, ptr %21, align 4
  br label %122

122:                                              ; preds = %114, %113, %14, %13
  %123 = phi i32 [ 1, %14 ], [ 1, %13 ], [ 0, %114 ], [ %98, %113 ]
  ret i32 %123
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_ldm_skipRawSeqStoreBytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_ldm_skipSequences(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_ldm_blockCompress(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_ldm_generateSequences(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_isRLE(ptr noundef %0, i32 noundef %1) unnamed_addr #20 {
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i32
  %5 = mul nuw i32 %4, 16843009
  %6 = and i32 %1, 15
  %7 = icmp eq i32 %1, 1
  br i1 %7, label %94, label %8

8:                                                ; preds = %2
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %72, label %10

10:                                               ; preds = %8
  %11 = getelementptr i8, ptr %0, i32 1
  %12 = getelementptr i8, ptr %0, i32 %6
  %13 = getelementptr i8, ptr %12, i32 -3
  %14 = icmp ugt ptr %13, %11
  br i1 %14, label %15, label %41

15:                                               ; preds = %10
  %16 = load i32, ptr %0, align 1
  %17 = load i32, ptr %11, align 1
  %18 = xor i32 %17, %16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = tail call i32 @llvm.cttz.i32(i32 %18, i1 true) #23, !range !9
  %22 = lshr i32 %21, 3
  br label %68

23:                                               ; preds = %29, %15
  %24 = phi ptr [ %27, %29 ], [ %11, %15 ]
  %25 = phi ptr [ %26, %29 ], [ %0, %15 ]
  %26 = getelementptr i8, ptr %25, i32 4
  %27 = getelementptr i8, ptr %24, i32 4
  %28 = icmp ult ptr %27, %13
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load i32, ptr %26, align 1
  %31 = load i32, ptr %27, align 1
  %32 = xor i32 %31, %30
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %23, label %34

34:                                               ; preds = %29
  %35 = tail call i32 @llvm.cttz.i32(i32 %32, i1 true) #23, !range !9
  %36 = lshr i32 %35, 3
  %37 = getelementptr i8, ptr %27, i32 %36
  %38 = ptrtoint ptr %37 to i32
  %39 = ptrtoint ptr %11 to i32
  %40 = sub i32 %38, %39
  br label %68

41:                                               ; preds = %23, %10
  %42 = phi ptr [ %11, %10 ], [ %27, %23 ]
  %43 = phi ptr [ %0, %10 ], [ %26, %23 ]
  %44 = getelementptr i8, ptr %12, i32 -1
  %45 = icmp ult ptr %42, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i16, ptr %43, align 1
  %48 = load i16, ptr %42, align 1
  %49 = icmp eq i16 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = getelementptr i8, ptr %42, i32 2
  %52 = getelementptr i8, ptr %43, i32 2
  br label %53

53:                                               ; preds = %50, %46, %41
  %54 = phi ptr [ %51, %50 ], [ %42, %46 ], [ %42, %41 ]
  %55 = phi ptr [ %52, %50 ], [ %43, %46 ], [ %43, %41 ]
  %56 = icmp ult ptr %54, %12
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i8, ptr %55, align 1
  %59 = load i8, ptr %54, align 1
  %60 = icmp eq i8 %58, %59
  %61 = zext i1 %60 to i32
  %62 = getelementptr i8, ptr %54, i32 %61
  br label %63

63:                                               ; preds = %57, %53
  %64 = phi ptr [ %54, %53 ], [ %62, %57 ]
  %65 = ptrtoint ptr %64 to i32
  %66 = ptrtoint ptr %11 to i32
  %67 = sub i32 %65, %66
  br label %68

68:                                               ; preds = %63, %34, %20
  %69 = phi i32 [ %67, %63 ], [ %22, %20 ], [ %40, %34 ]
  %70 = add nsw i32 %6, -1
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %94

72:                                               ; preds = %68, %8
  %73 = icmp ult i32 %1, 16
  br i1 %73, label %94, label %74

74:                                               ; preds = %91, %72
  %75 = phi i32 [ %92, %91 ], [ %6, %72 ]
  %76 = getelementptr i8, ptr %0, i32 %75
  %77 = load i32, ptr %76, align 1
  %78 = icmp eq i32 %77, %5
  br i1 %78, label %79, label %94

79:                                               ; preds = %74
  %80 = getelementptr i8, ptr %76, i32 4
  %81 = load i32, ptr %80, align 1
  %82 = icmp eq i32 %81, %5
  br i1 %82, label %83, label %94

83:                                               ; preds = %79
  %84 = getelementptr i8, ptr %76, i32 8
  %85 = load i32, ptr %84, align 1
  %86 = icmp eq i32 %85, %5
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = getelementptr i8, ptr %76, i32 12
  %89 = load i32, ptr %88, align 1
  %90 = icmp eq i32 %89, %5
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = add i32 %75, 16
  %93 = icmp eq i32 %92, %1
  br i1 %93, label %94, label %74

94:                                               ; preds = %91, %87, %83, %79, %74, %72, %68, %2
  %95 = phi i32 [ 1, %2 ], [ 0, %68 ], [ 1, %72 ], [ 1, %91 ], [ 0, %74 ], [ 0, %79 ], [ 0, %83 ], [ 0, %87 ]
  ret i32 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressSuperBlock(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #19

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ZSTD_copyBlockSequences(ptr nocapture noundef %0) unnamed_addr #14 {
  %2 = alloca %struct.repcodes_s, align 4
  %3 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = ptrtoint ptr %4 to i32
  %9 = sub i32 %7, %8
  %10 = ashr i32 %9, 3
  %11 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 16, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 16, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr %struct.ZSTD_Sequence, ptr %16, i32 %18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #23
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %21, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef align 4 dereferenceable(12) %22, i32 12, i1 false)
  %23 = icmp eq ptr %6, %4
  br i1 %23, label %112, label %24

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 10
  %26 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 9
  %27 = getelementptr inbounds i8, ptr %2, i32 4
  %28 = getelementptr inbounds i8, ptr %2, i32 8
  %29 = call i32 @llvm.umax.i32(i32 %10, i32 1)
  br label %30

30:                                               ; preds = %105, %24
  %31 = phi i32 [ 0, %24 ], [ %110, %105 ]
  %32 = phi i32 [ 0, %24 ], [ %109, %105 ]
  %33 = getelementptr %struct.seqDef_s, ptr %4, i32 %31
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, -3
  %36 = getelementptr %struct.seqDef_s, ptr %4, i32 %31, i32 1
  %37 = load i16, ptr %36, align 4
  %38 = zext i16 %37 to i32
  %39 = getelementptr %struct.ZSTD_Sequence, ptr %19, i32 %31
  %40 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %39, i32 0, i32 1
  store i32 %38, ptr %40, align 4
  %41 = getelementptr %struct.seqDef_s, ptr %4, i32 %31, i32 2
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  %44 = add nuw nsw i32 %43, 3
  %45 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %39, i32 0, i32 2
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %39, i32 0, i32 3
  store i32 0, ptr %46, align 4
  %47 = load i32, ptr %25, align 4
  %48 = icmp eq i32 %31, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %30
  %50 = load i32, ptr %26, align 4
  switch i32 %50, label %55 [
    i32 1, label %51
    i32 2, label %53
  ]

51:                                               ; preds = %49
  %52 = or i32 %38, 65536
  store i32 %52, ptr %40, align 4
  br label %55

53:                                               ; preds = %49
  %54 = add nuw nsw i32 %43, 65539
  store i32 %54, ptr %45, align 4
  br label %55

55:                                               ; preds = %53, %51, %49, %30
  %56 = phi i32 [ %38, %49 ], [ %52, %51 ], [ %38, %53 ], [ %38, %30 ]
  %57 = load i32, ptr %33, align 4
  %58 = icmp ult i32 %57, 4
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  store i32 %57, ptr %46, align 4
  %60 = icmp eq i32 %56, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %59
  %62 = add nsw i32 %57, -1
  %63 = getelementptr [3 x i32], ptr %2, i32 0, i32 %62
  %64 = load i32, ptr %63, align 4
  br label %73

65:                                               ; preds = %59
  %66 = icmp eq i32 %57, 3
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load i32, ptr %2, align 4
  %69 = add i32 %68, -1
  br label %73

70:                                               ; preds = %65
  %71 = getelementptr [3 x i32], ptr %2, i32 0, i32 %57
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %70, %67, %61, %55
  %74 = phi i32 [ %64, %61 ], [ %69, %67 ], [ %72, %70 ], [ %35, %55 ]
  store i32 %74, ptr %39, align 4
  %75 = load i32, ptr %33, align 4
  %76 = add i32 %75, -1
  %77 = icmp ugt i32 %76, 2
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, ptr %27, align 4, !noalias !57
  %80 = load i32, ptr %2, align 4, !noalias !57
  %81 = add i32 %75, -3
  br label %105

82:                                               ; preds = %73
  %83 = load i16, ptr %36, align 4
  %84 = icmp eq i16 %83, 0
  %85 = zext i1 %84 to i32
  %86 = add nuw nsw i32 %76, %85
  switch i32 %86, label %90 [
    i32 0, label %101
    i32 3, label %87
  ]

87:                                               ; preds = %82
  %88 = load i32, ptr %2, align 4, !noalias !57
  %89 = add i32 %88, -1
  br label %94

90:                                               ; preds = %82
  %91 = getelementptr i32, ptr %2, i32 %86
  %92 = load i32, ptr %91, align 4, !noalias !57
  %93 = load i32, ptr %2, align 4, !noalias !57
  br label %94

94:                                               ; preds = %90, %87
  %95 = phi i32 [ %88, %87 ], [ %93, %90 ]
  %96 = phi i32 [ %89, %87 ], [ %92, %90 ]
  %97 = icmp ugt i32 %86, 1
  %98 = select i1 %97, i32 1, i32 2
  %99 = getelementptr i32, ptr %2, i32 %98
  %100 = load i32, ptr %99, align 4, !noalias !57
  br label %105

101:                                              ; preds = %82
  %102 = load i32, ptr %2, align 4
  %103 = load i32, ptr %27, align 4
  %104 = load i32, ptr %28, align 4
  br label %105

105:                                              ; preds = %101, %94, %78
  %106 = phi i32 [ %81, %78 ], [ %96, %94 ], [ %102, %101 ]
  %107 = phi i32 [ %80, %78 ], [ %95, %94 ], [ %103, %101 ]
  %108 = phi i32 [ %79, %78 ], [ %100, %94 ], [ %104, %101 ]
  store i32 %106, ptr %2, align 4
  store i32 %107, ptr %27, align 4
  store i32 %108, ptr %28, align 4
  %109 = add i32 %56, %32
  %110 = add nuw i32 %31, 1
  %111 = icmp eq i32 %110, %29
  br i1 %111, label %112, label %30

112:                                              ; preds = %105, %1
  %113 = phi i32 [ 0, %1 ], [ %109, %105 ]
  %114 = phi i32 [ 0, %1 ], [ %29, %105 ]
  %115 = ptrtoint ptr %12 to i32
  %116 = ptrtoint ptr %14 to i32
  %117 = add i32 %113, %116
  %118 = sub i32 %115, %117
  %119 = getelementptr %struct.ZSTD_Sequence, ptr %19, i32 %114
  %120 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %119, i32 0, i32 1
  store i32 %118, ptr %120, align 4
  %121 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %119, i32 0, i32 3
  store i32 0, ptr %121, align 4
  store i32 0, ptr %119, align 4
  %122 = getelementptr inbounds %struct.ZSTD_Sequence, ptr %119, i32 0, i32 2
  store i32 0, ptr %122, align 4
  %123 = add nsw i32 %10, 1
  %124 = load i32, ptr %17, align 4
  %125 = add i32 %123, %124
  store i32 %125, ptr %17, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_entropyCompressSequences(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) unnamed_addr #21 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, 25
  %16 = zext i1 %15 to i32
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i32 0, i32 1, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %2, i32 0, i32 1
  %20 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %2, i32 0, i32 1, i32 2
  %21 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %2, i32 0, i32 1, i32 1
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.seqStore_t, ptr %0, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.seqStore_t, ptr %0, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.seqStore_t, ptr %0, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %4, i32 %5
  %30 = getelementptr inbounds %struct.seqStore_t, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = ptrtoint ptr %22 to i32
  %34 = sub i32 %32, %33
  %35 = ashr exact i32 %34, 3
  %36 = getelementptr i32, ptr %7, i32 53
  %37 = getelementptr inbounds %struct.seqStore_t, ptr %0, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.seqStore_t, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = ptrtoint ptr %40 to i32
  %42 = ptrtoint ptr %38 to i32
  %43 = sub i32 %41, %42
  %44 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i32 0, i32 8
  %45 = load i32, ptr %44, align 4
  switch i32 %45, label %47 [
    i32 1, label %54
    i32 2, label %46
  ]

46:                                               ; preds = %9
  br label %54

47:                                               ; preds = %9
  %48 = icmp eq i32 %18, 1
  br i1 %48, label %49, label %54

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i32 0, i32 1, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i32
  br label %54

54:                                               ; preds = %49, %47, %46, %9
  %55 = phi i32 [ 1, %46 ], [ 0, %9 ], [ 0, %47 ], [ %53, %49 ]
  %56 = tail call i32 @ZSTD_compressLiterals(ptr noundef %1, ptr noundef %2, i32 noundef %18, i32 noundef %55, ptr noundef %4, i32 noundef %5, ptr noundef %38, i32 noundef %43, ptr noundef %36, i32 noundef 6404, i32 noundef %8) #23
  %57 = icmp ult i32 %56, -119
  %58 = select i1 %57, i32 %56, i32 0
  %59 = getelementptr i8, ptr %4, i32 %58
  br i1 %57, label %60, label %236

60:                                               ; preds = %54
  %61 = ptrtoint ptr %29 to i32
  %62 = ptrtoint ptr %59 to i32
  %63 = sub i32 %61, %62
  %64 = icmp slt i32 %63, 4
  br i1 %64, label %241, label %65

65:                                               ; preds = %60
  %66 = icmp ult i32 %34, 1024
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = trunc i32 %35 to i8
  %69 = getelementptr i8, ptr %59, i32 1
  store i8 %68, ptr %59, align 1
  br label %84

70:                                               ; preds = %65
  %71 = icmp ult i32 %34, 260096
  br i1 %71, label %72, label %79

72:                                               ; preds = %70
  %73 = lshr i32 %35, 8
  %74 = trunc i32 %73 to i8
  %75 = xor i8 %74, -128
  store i8 %75, ptr %59, align 1
  %76 = trunc i32 %35 to i8
  %77 = getelementptr i8, ptr %59, i32 1
  store i8 %76, ptr %77, align 1
  %78 = getelementptr i8, ptr %59, i32 2
  br label %84

79:                                               ; preds = %70
  store i8 -1, ptr %59, align 1
  %80 = getelementptr i8, ptr %59, i32 1
  %81 = trunc i32 %35 to i16
  %82 = add i16 %81, -32512
  store i16 %82, ptr %80, align 1
  %83 = getelementptr i8, ptr %59, i32 3
  br label %84

84:                                               ; preds = %79, %72, %67
  %85 = phi ptr [ %69, %67 ], [ %78, %72 ], [ %83, %79 ]
  %86 = icmp eq ptr %31, %22
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(3552) %19, ptr noundef align 4 dereferenceable(3552) %88, i32 3552, i1 false) #23
  %89 = ptrtoint ptr %85 to i32
  br label %231

90:                                               ; preds = %84
  %91 = getelementptr i8, ptr %85, i32 1
  %92 = load ptr, ptr %0, align 4
  %93 = load ptr, ptr %25, align 4
  %94 = load ptr, ptr %23, align 4
  %95 = load ptr, ptr %27, align 4
  %96 = load ptr, ptr %30, align 4
  %97 = icmp eq ptr %96, %92
  br i1 %97, label %144, label %98

98:                                               ; preds = %90
  %99 = ptrtoint ptr %96 to i32
  %100 = ptrtoint ptr %92 to i32
  %101 = sub i32 %99, %100
  %102 = ashr i32 %101, 3
  %103 = tail call i32 @llvm.umax.i32(i32 %102, i32 1) #23
  br label %104

104:                                              ; preds = %138, %98
  %105 = phi i32 [ %142, %138 ], [ 0, %98 ]
  %106 = getelementptr %struct.seqDef_s, ptr %92, i32 %105
  %107 = getelementptr %struct.seqDef_s, ptr %92, i32 %105, i32 1
  %108 = load i16, ptr %107, align 4
  %109 = zext i16 %108 to i32
  %110 = getelementptr %struct.seqDef_s, ptr %92, i32 %105, i32 2
  %111 = load i16, ptr %110, align 2
  %112 = zext i16 %111 to i32
  %113 = icmp ugt i16 %108, 63
  br i1 %113, label %114, label %117

114:                                              ; preds = %104
  %115 = tail call i32 @llvm.ctlz.i32(i32 %109, i1 true) #23, !range !9
  %116 = sub nuw nsw i32 50, %115
  br label %121

117:                                              ; preds = %104
  %118 = getelementptr [64 x i8], ptr @ZSTD_LLcode.LL_Code, i32 0, i32 %109
  %119 = load i8, ptr %118, align 1
  %120 = zext i8 %119 to i32
  br label %121

121:                                              ; preds = %117, %114
  %122 = phi i32 [ %116, %114 ], [ %120, %117 ]
  %123 = trunc i32 %122 to i8
  %124 = getelementptr i8, ptr %93, i32 %105
  store i8 %123, ptr %124, align 1
  %125 = load i32, ptr %106, align 4
  %126 = tail call i32 @llvm.ctlz.i32(i32 %125, i1 false) #23, !range !9
  %127 = trunc i32 %126 to i8
  %128 = xor i8 %127, 31
  %129 = getelementptr i8, ptr %94, i32 %105
  store i8 %128, ptr %129, align 1
  %130 = icmp ugt i16 %111, 127
  br i1 %130, label %131, label %134

131:                                              ; preds = %121
  %132 = tail call i32 @llvm.ctlz.i32(i32 %112, i1 true) #23, !range !9
  %133 = sub nuw nsw i32 67, %132
  br label %138

134:                                              ; preds = %121
  %135 = getelementptr [128 x i8], ptr @ZSTD_MLcode.ML_Code, i32 0, i32 %112
  %136 = load i8, ptr %135, align 1
  %137 = zext i8 %136 to i32
  br label %138

138:                                              ; preds = %134, %131
  %139 = phi i32 [ %133, %131 ], [ %137, %134 ]
  %140 = trunc i32 %139 to i8
  %141 = getelementptr i8, ptr %95, i32 %105
  store i8 %140, ptr %141, align 1
  %142 = add nuw i32 %105, 1
  %143 = icmp eq i32 %142, %103
  br i1 %143, label %144, label %104

144:                                              ; preds = %138, %90
  %145 = getelementptr inbounds %struct.seqStore_t, ptr %0, i32 0, i32 9
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %153

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.seqStore_t, ptr %0, i32 0, i32 10
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr i8, ptr %93, i32 %150
  store i8 35, ptr %151, align 1
  %152 = load i32, ptr %145, align 4
  br label %153

153:                                              ; preds = %148, %144
  %154 = phi i32 [ %152, %148 ], [ %146, %144 ]
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.seqStore_t, ptr %0, i32 0, i32 10
  %158 = load i32, ptr %157, align 4
  %159 = getelementptr i8, ptr %95, i32 %158
  store i8 52, ptr %159, align 1
  br label %160

160:                                              ; preds = %156, %153
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #23
  store i32 35, ptr %10, align 4
  %161 = call i32 @HIST_countFast_wksp(ptr noundef %7, ptr noundef nonnull %10, ptr noundef %26, i32 noundef %35, ptr noundef %36, i32 noundef 6404) #23
  %162 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %1, i32 0, i32 1, i32 5
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %2, i32 0, i32 1, i32 5
  store i32 %163, ptr %164, align 4
  %165 = load i32, ptr %10, align 4
  %166 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %1, i32 0, i32 1, i32 2
  %167 = call i32 @ZSTD_selectEncodingType(ptr noundef %164, ptr noundef %7, i32 noundef %165, i32 noundef %161, i32 noundef %35, i32 noundef 9, ptr noundef %166, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef 1, i32 noundef %18) #23
  %168 = ptrtoint ptr %91 to i32
  %169 = sub i32 %61, %168
  %170 = load i32, ptr %10, align 4
  %171 = call i32 @ZSTD_buildCTable(ptr noundef %91, i32 noundef %169, ptr noundef %20, i32 noundef 9, i32 noundef %167, ptr noundef %7, i32 noundef %170, ptr noundef %26, i32 noundef %35, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef 35, ptr noundef %166, i32 noundef 1316, ptr noundef %36, i32 noundef 6404) #23
  %172 = icmp ult i32 %171, -119
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #23
  br i1 %172, label %173, label %236

173:                                              ; preds = %160
  %174 = getelementptr i8, ptr %91, i32 %171
  %175 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #23
  store i32 31, ptr %11, align 4
  %176 = call i32 @HIST_countFast_wksp(ptr noundef %7, ptr noundef nonnull %11, ptr noundef %24, i32 noundef %35, ptr noundef %36, i32 noundef 6404) #23
  %177 = load i32, ptr %11, align 4
  %178 = icmp ult i32 %177, 29
  %179 = zext i1 %178 to i32
  %180 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %1, i32 0, i32 1, i32 3
  %181 = load i32, ptr %180, align 4
  %182 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %2, i32 0, i32 1, i32 3
  store i32 %181, ptr %182, align 4
  %183 = call i32 @ZSTD_selectEncodingType(ptr noundef %182, ptr noundef %7, i32 noundef %177, i32 noundef %176, i32 noundef %35, i32 noundef 8, ptr noundef %175, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef %179, i32 noundef %18) #23
  %184 = ptrtoint ptr %174 to i32
  %185 = sub i32 %61, %184
  %186 = load i32, ptr %11, align 4
  %187 = call i32 @ZSTD_buildCTable(ptr noundef %174, i32 noundef %185, ptr noundef %19, i32 noundef 8, i32 noundef %183, ptr noundef %7, i32 noundef %186, ptr noundef %24, i32 noundef %35, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef 28, ptr noundef %175, i32 noundef 772, ptr noundef %36, i32 noundef 6404) #23
  %188 = icmp ult i32 %187, -119
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #23
  br i1 %188, label %189, label %236

189:                                              ; preds = %173
  %190 = icmp eq i32 %183, 2
  %191 = icmp eq i32 %167, 2
  %192 = select i1 %191, ptr %91, ptr null
  %193 = select i1 %190, ptr %174, ptr %192
  %194 = getelementptr i8, ptr %174, i32 %187
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #23
  store i32 52, ptr %12, align 4
  %195 = call i32 @HIST_countFast_wksp(ptr noundef %7, ptr noundef nonnull %12, ptr noundef %28, i32 noundef %35, ptr noundef %36, i32 noundef 6404) #23
  %196 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %1, i32 0, i32 1, i32 4
  %197 = load i32, ptr %196, align 4
  %198 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %2, i32 0, i32 1, i32 4
  store i32 %197, ptr %198, align 4
  %199 = load i32, ptr %12, align 4
  %200 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %1, i32 0, i32 1, i32 1
  %201 = call i32 @ZSTD_selectEncodingType(ptr noundef %198, ptr noundef %7, i32 noundef %199, i32 noundef %195, i32 noundef %35, i32 noundef 9, ptr noundef %200, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 1, i32 noundef %18) #23
  %202 = ptrtoint ptr %194 to i32
  %203 = sub i32 %61, %202
  %204 = load i32, ptr %12, align 4
  %205 = call i32 @ZSTD_buildCTable(ptr noundef %194, i32 noundef %203, ptr noundef %21, i32 noundef 9, i32 noundef %201, ptr noundef %7, i32 noundef %204, ptr noundef %28, i32 noundef %35, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 52, ptr noundef %200, i32 noundef 1452, ptr noundef %36, i32 noundef 6404) #23
  %206 = icmp ult i32 %205, -119
  %207 = icmp eq i32 %201, 2
  %208 = select i1 %206, i32 %205, i32 0
  %209 = getelementptr i8, ptr %194, i32 %208
  %210 = and i1 %207, %206
  %211 = select i1 %210, ptr %194, ptr %193
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #23
  br i1 %206, label %212, label %236

212:                                              ; preds = %189
  %213 = shl i32 %167, 6
  %214 = shl i32 %183, 4
  %215 = add i32 %214, %213
  %216 = shl i32 %201, 2
  %217 = add i32 %215, %216
  %218 = trunc i32 %217 to i8
  store i8 %218, ptr %85, align 1
  %219 = ptrtoint ptr %209 to i32
  %220 = sub i32 %61, %219
  %221 = call i32 @ZSTD_encodeSequences(ptr noundef %209, i32 noundef %220, ptr noundef %21, ptr noundef %28, ptr noundef %19, ptr noundef %24, ptr noundef %20, ptr noundef %26, ptr noundef %22, i32 noundef %35, i32 noundef %16, i32 noundef %8) #23
  %222 = icmp ult i32 %221, -119
  br i1 %222, label %223, label %236

223:                                              ; preds = %212
  %224 = getelementptr i8, ptr %209, i32 %221
  %225 = icmp ne ptr %211, null
  %226 = ptrtoint ptr %224 to i32
  %227 = ptrtoint ptr %211 to i32
  %228 = sub i32 %226, %227
  %229 = icmp slt i32 %228, 4
  %230 = select i1 %225, i1 %229, i1 false
  br i1 %230, label %256, label %231

231:                                              ; preds = %223, %87
  %232 = phi i32 [ %89, %87 ], [ %226, %223 ]
  %233 = ptrtoint ptr %4 to i32
  %234 = sub i32 %232, %233
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %256, label %236

236:                                              ; preds = %231, %212, %189, %173, %160, %54
  %237 = phi i32 [ %234, %231 ], [ %221, %212 ], [ %56, %54 ], [ %171, %160 ], [ %187, %173 ], [ %205, %189 ]
  %238 = icmp eq i32 %237, -70
  %239 = icmp ule i32 %6, %5
  %240 = and i1 %239, %238
  br i1 %240, label %256, label %244

241:                                              ; preds = %60
  %242 = icmp ugt i32 %6, %5
  %243 = select i1 %242, i32 -70, i32 0
  br label %256

244:                                              ; preds = %236
  %245 = icmp ult i32 %237, -119
  br i1 %245, label %246, label %256

246:                                              ; preds = %244
  %247 = load i32, ptr %17, align 4
  %248 = icmp ugt i32 %247, 7
  %249 = add i32 %247, -1
  %250 = select i1 %248, i32 %249, i32 6
  %251 = lshr i32 %6, %250
  %252 = add i32 %6, -2
  %253 = sub i32 %252, %251
  %254 = icmp ult i32 %237, %253
  %255 = select i1 %254, i32 %237, i32 0
  br label %256

256:                                              ; preds = %246, %244, %241, %236, %231, %223
  %257 = phi i32 [ %237, %244 ], [ 0, %231 ], [ 0, %236 ], [ %255, %246 ], [ 0, %223 ], [ %243, %241 ]
  ret i32 %257
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressLiterals(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HIST_countFast_wksp(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_selectEncodingType(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_buildCTable(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_encodeSequences(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_compress_insertDictionary(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9) unnamed_addr #1 {
  %11 = icmp eq ptr %5, null
  %12 = icmp ult i32 %6, 8
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = icmp eq i32 %7, 2
  %16 = select i1 %15, i32 -32, i32 0
  br label %47

17:                                               ; preds = %10
  %18 = getelementptr i8, ptr %0, i32 4580
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %18, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i32 12, i1 false) #23
  %19 = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %0, i32 0, i32 1
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i32 0, i32 1, i32 3
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i32 0, i32 1, i32 4
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %0, i32 0, i32 1, i32 5
  store i32 0, ptr %22, align 4
  %23 = icmp eq i32 %7, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef %6, i32 noundef %8)
  br label %47

25:                                               ; preds = %17
  %26 = load i32, ptr %5, align 1
  %27 = icmp eq i32 %26, -332356553
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  switch i32 %7, label %30 [
    i32 0, label %29
    i32 2, label %47
  ]

29:                                               ; preds = %28
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef %6, i32 noundef %8)
  br label %47

30:                                               ; preds = %28, %25
  %31 = getelementptr i8, ptr %5, i32 %6
  %32 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 2, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = getelementptr i8, ptr %5, i32 4
  %37 = load i32, ptr %36, align 1
  br label %38

38:                                               ; preds = %35, %30
  %39 = phi i32 [ %37, %35 ], [ 0, %30 ]
  %40 = tail call i32 @ZSTD_loadCEntropy(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %5, i32 noundef %6) #23
  %41 = icmp ult i32 %40, -119
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %5, i32 %40
  %44 = ptrtoint ptr %31 to i32
  %45 = ptrtoint ptr %43 to i32
  %46 = sub i32 %44, %45
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef %1, ptr noundef null, ptr noundef %3, ptr noundef %4, ptr noundef %43, i32 noundef %46, i32 noundef %8) #23
  br label %47

47:                                               ; preds = %42, %38, %29, %28, %24, %14
  %48 = phi i32 [ 0, %24 ], [ 0, %29 ], [ %16, %14 ], [ -32, %28 ], [ %40, %38 ], [ %39, %42 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ZSTD_loadDictionaryContent(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #1 {
  %8 = getelementptr i8, ptr %4, i32 %5
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %50, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 4
  %12 = icmp eq ptr %11, %4
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  br label %35

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = ptrtoint ptr %11 to i32
  %24 = ptrtoint ptr %22 to i32
  %25 = sub i32 %23, %24
  %26 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 4
  store i32 %27, ptr %28, align 4
  store i32 %25, ptr %26, align 4
  %29 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 2
  store ptr %22, ptr %29, align 4
  %30 = sub i32 0, %25
  %31 = getelementptr i8, ptr %4, i32 %30
  store ptr %31, ptr %21, align 4
  %32 = sub i32 %25, %27
  %33 = icmp ult i32 %32, 8
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store i32 %25, ptr %28, align 4
  br label %35

35:                                               ; preds = %34, %20, %13
  %36 = phi i32 [ %19, %13 ], [ %25, %34 ], [ %25, %20 ]
  %37 = phi i32 [ %17, %13 ], [ %25, %34 ], [ %27, %20 ]
  %38 = phi ptr [ %15, %13 ], [ %22, %34 ], [ %22, %20 ]
  store ptr %8, ptr %0, align 4
  %39 = getelementptr i8, ptr %38, i32 %37
  %40 = icmp ugt ptr %8, %39
  %41 = getelementptr i8, ptr %38, i32 %36
  %42 = icmp ugt ptr %41, %4
  %43 = and i1 %40, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 4
  %46 = ptrtoint ptr %8 to i32
  %47 = ptrtoint ptr %38 to i32
  %48 = sub i32 %46, %47
  %49 = tail call i32 @llvm.smin.i32(i32 %48, i32 %36) #23
  store i32 %49, ptr %45, align 4
  br label %50

50:                                               ; preds = %44, %35, %7
  %51 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = ptrtoint ptr %8 to i32
  %58 = ptrtoint ptr %56 to i32
  %59 = sub i32 %57, %58
  br label %60

60:                                               ; preds = %54, %50
  %61 = phi i32 [ %59, %54 ], [ 0, %50 ]
  %62 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 1
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i32 0, i32 13
  %64 = load i32, ptr %63, align 4
  %65 = icmp ne i32 %64, 0
  %66 = icmp ne ptr %1, null
  %67 = and i1 %66, %65
  br i1 %67, label %68, label %121

68:                                               ; preds = %60
  br i1 %9, label %109, label %69

69:                                               ; preds = %68
  %70 = load ptr, ptr %1, align 4
  %71 = icmp eq ptr %70, %4
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i32 0, i32 4
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  br label %94

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = ptrtoint ptr %70 to i32
  %83 = ptrtoint ptr %81 to i32
  %84 = sub i32 %82, %83
  %85 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i32 0, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i32 0, i32 4
  store i32 %86, ptr %87, align 4
  store i32 %84, ptr %85, align 4
  %88 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i32 0, i32 2
  store ptr %81, ptr %88, align 4
  %89 = sub i32 0, %84
  %90 = getelementptr i8, ptr %4, i32 %89
  store ptr %90, ptr %80, align 4
  %91 = sub i32 %84, %86
  %92 = icmp ult i32 %91, 8
  br i1 %92, label %93, label %94

93:                                               ; preds = %79
  store i32 %84, ptr %87, align 4
  br label %94

94:                                               ; preds = %93, %79, %72
  %95 = phi i32 [ %78, %72 ], [ %84, %93 ], [ %84, %79 ]
  %96 = phi i32 [ %76, %72 ], [ %84, %93 ], [ %86, %79 ]
  %97 = phi ptr [ %74, %72 ], [ %81, %93 ], [ %81, %79 ]
  store ptr %8, ptr %1, align 4
  %98 = getelementptr i8, ptr %97, i32 %96
  %99 = icmp ugt ptr %8, %98
  %100 = getelementptr i8, ptr %97, i32 %95
  %101 = icmp ugt ptr %100, %4
  %102 = and i1 %99, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %94
  %104 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i32 0, i32 4
  %105 = ptrtoint ptr %8 to i32
  %106 = ptrtoint ptr %97 to i32
  %107 = sub i32 %105, %106
  %108 = tail call i32 @llvm.smin.i32(i32 %107, i32 %95) #23
  store i32 %108, ptr %104, align 4
  br label %109

109:                                              ; preds = %103, %94, %68
  %110 = load i32, ptr %51, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = ptrtoint ptr %8 to i32
  %116 = ptrtoint ptr %114 to i32
  %117 = sub i32 %115, %116
  br label %118

118:                                              ; preds = %112, %109
  %119 = phi i32 [ %117, %112 ], [ 0, %109 ]
  %120 = getelementptr inbounds %struct.ldmState_t, ptr %1, i32 0, i32 2
  store i32 %119, ptr %120, align 4
  br label %121

121:                                              ; preds = %118, %60
  %122 = icmp ult i32 %5, 9
  br i1 %122, label %161, label %123

123:                                              ; preds = %121
  %124 = ptrtoint ptr %8 to i32
  %125 = icmp sgt i32 %5, 8
  br i1 %125, label %126, label %155

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %3, i32 0, i32 1, i32 6
  %128 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 7
  br label %129

129:                                              ; preds = %151, %126
  %130 = phi i32 [ %5, %126 ], [ %153, %151 ]
  %131 = phi ptr [ %4, %126 ], [ %133, %151 ]
  %132 = tail call i32 @llvm.umin.i32(i32 %130, i32 1610612735)
  %133 = getelementptr i8, ptr %131, i32 %132
  tail call fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %131, ptr noundef %133)
  %134 = load i32, ptr %63, align 4
  %135 = icmp ne i32 %134, 0
  %136 = and i1 %66, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  tail call void @ZSTD_ldm_fillHashTable(ptr noundef nonnull %1, ptr noundef %4, ptr noundef %8, ptr noundef %63) #23
  br label %138

138:                                              ; preds = %137, %129
  %139 = load i32, ptr %127, align 4
  switch i32 %139, label %151 [
    i32 1, label %140
    i32 2, label %141
    i32 3, label %142
    i32 4, label %142
    i32 5, label %142
    i32 6, label %149
    i32 7, label %149
    i32 8, label %149
    i32 9, label %149
  ]

140:                                              ; preds = %138
  tail call void @ZSTD_fillHashTable(ptr noundef %0, ptr noundef %133, i32 noundef %6) #23
  br label %151

141:                                              ; preds = %138
  tail call void @ZSTD_fillDoubleHashTable(ptr noundef %0, ptr noundef %133, i32 noundef %6) #23
  br label %151

142:                                              ; preds = %138, %138, %138
  %143 = load i32, ptr %128, align 4
  %144 = icmp eq i32 %143, 0
  %145 = getelementptr i8, ptr %133, i32 -8
  br i1 %144, label %147, label %146

146:                                              ; preds = %142
  tail call void @ZSTD_dedicatedDictSearch_lazy_loadDictionary(ptr noundef %0, ptr noundef %145) #23
  br label %151

147:                                              ; preds = %142
  %148 = tail call i32 @ZSTD_insertAndFindFirstIndex(ptr noundef %0, ptr noundef %145) #23
  br label %151

149:                                              ; preds = %138, %138, %138, %138
  %150 = getelementptr i8, ptr %133, i32 -8
  tail call void @ZSTD_updateTree(ptr noundef %0, ptr noundef %150, ptr noundef %133) #23
  br label %151

151:                                              ; preds = %149, %147, %146, %141, %140, %138
  %152 = ptrtoint ptr %133 to i32
  %153 = sub i32 %124, %152
  %154 = icmp sgt i32 %153, 8
  br i1 %154, label %129, label %155

155:                                              ; preds = %151, %123
  %156 = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 1
  %157 = load ptr, ptr %156, align 4
  %158 = ptrtoint ptr %157 to i32
  %159 = sub i32 %124, %158
  %160 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %0, i32 0, i32 2
  store i32 %159, ptr %160, align 4
  br label %161

161:                                              ; preds = %155, %121
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_ldm_fillHashTable(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_fillHashTable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_fillDoubleHashTable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_dedicatedDictSearch_lazy_loadDictionary(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_insertAndFindFirstIndex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_updateTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ZSTD_copySequencesToSeqStoreExplicitBlockDelim(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #14 {
  %7 = alloca %struct.repcodes_s, align 4
  %8 = load i32, ptr %1, align 4
  %9 = getelementptr i8, ptr %4, i32 %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  %10 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 41
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %11, i32 0, i32 1
  br label %21

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 42
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 42, i32 1
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi ptr [ %20, %19 ], [ %14, %13 ]
  %23 = load i32, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = phi i32 [ 0, %15 ], [ %23, %21 ]
  %26 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %27, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef align 4 dereferenceable(12) %28, i32 12, i1 false)
  %29 = getelementptr inbounds i32, ptr %7, i32 1
  %30 = getelementptr inbounds i32, ptr %7, i32 2
  %31 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 18
  %32 = getelementptr inbounds %struct.ZSTD_sequencePosition, ptr %1, i32 0, i32 2
  %33 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 1
  %34 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 1, i32 4
  %35 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 7
  %36 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19
  %37 = getelementptr i8, ptr %9, i32 -32
  %38 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 3
  %39 = ptrtoint ptr %37 to i32
  %40 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 9
  %41 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 1
  %42 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 10
  br label %43

43:                                               ; preds = %218, %24
  %44 = phi i32 [ %8, %24 ], [ %226, %218 ]
  %45 = phi ptr [ %4, %24 ], [ %225, %218 ]
  %46 = getelementptr %struct.ZSTD_Sequence, ptr %2, i32 %44
  %47 = getelementptr %struct.ZSTD_Sequence, ptr %2, i32 %44, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i32, ptr %46, align 4
  %52 = icmp ne i32 %51, 0
  %53 = icmp ult i32 %44, %3
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %59, label %227

55:                                               ; preds = %43
  %56 = icmp ult i32 %44, %3
  br i1 %56, label %57, label %227

57:                                               ; preds = %55
  %58 = load i32, ptr %46, align 4
  br label %59

59:                                               ; preds = %57, %50
  %60 = phi i32 [ %58, %57 ], [ %51, %50 ]
  %61 = getelementptr %struct.ZSTD_Sequence, ptr %2, i32 %44, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = add i32 %60, 2
  %66 = xor i1 %63, true
  %67 = load i32, ptr %7, align 4
  %68 = icmp eq i32 %67, %60
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %89, label %70

70:                                               ; preds = %59
  %71 = load i32, ptr %29, align 4
  %72 = icmp eq i32 %71, %60
  br i1 %72, label %80, label %73

73:                                               ; preds = %70
  %74 = load i32, ptr %30, align 4
  %75 = icmp eq i32 %74, %60
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = add i32 %67, -1
  %78 = icmp eq i32 %77, %60
  %79 = select i1 %63, i1 %78, i1 false
  br i1 %79, label %89, label %84

80:                                               ; preds = %73, %70
  %81 = phi i32 [ 2, %70 ], [ 3, %73 ]
  %82 = xor i32 %64, -1
  %83 = add nsw i32 %81, %82
  br label %84

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %83, %80 ], [ %65, %76 ]
  %86 = icmp ugt i32 %85, 2
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = add i32 %85, -2
  br label %106

89:                                               ; preds = %84, %76, %59
  %90 = phi i32 [ %85, %84 ], [ 0, %59 ], [ 2, %76 ]
  %91 = add nuw nsw i32 %90, %64
  switch i32 %91, label %94 [
    i32 0, label %103
    i32 3, label %92
  ]

92:                                               ; preds = %89
  %93 = add i32 %67, -1
  br label %97

94:                                               ; preds = %89
  %95 = getelementptr i32, ptr %7, i32 %91
  %96 = load i32, ptr %95, align 4, !noalias !60
  br label %97

97:                                               ; preds = %94, %92
  %98 = phi i32 [ %93, %92 ], [ %96, %94 ]
  %99 = icmp ugt i32 %91, 1
  %100 = select i1 %99, i32 1, i32 2
  %101 = getelementptr i32, ptr %7, i32 %100
  %102 = load i32, ptr %101, align 4, !noalias !60
  br label %106

103:                                              ; preds = %89
  %104 = load i32, ptr %29, align 4
  %105 = load i32, ptr %30, align 4
  br label %106

106:                                              ; preds = %103, %97, %87
  %107 = phi i32 [ %85, %87 ], [ %90, %97 ], [ %90, %103 ]
  %108 = phi i32 [ %88, %87 ], [ %98, %97 ], [ %67, %103 ]
  %109 = phi i32 [ %67, %87 ], [ %67, %97 ], [ %104, %103 ]
  %110 = phi i32 [ %71, %87 ], [ %102, %97 ], [ %105, %103 ]
  store i32 %108, ptr %7, align 4
  store i32 %109, ptr %29, align 4
  store i32 %110, ptr %30, align 4
  %111 = load i32, ptr %31, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %127, label %113

113:                                              ; preds = %106
  %114 = add i32 %62, %48
  %115 = load i32, ptr %32, align 4
  %116 = add i32 %114, %115
  store i32 %116, ptr %32, align 4
  %117 = load i32, ptr %33, align 4
  %118 = load i32, ptr %34, align 4
  %119 = shl nuw i32 1, %117
  %120 = icmp ult i32 %119, %116
  %121 = add i32 %116, %25
  %122 = select i1 %120, i32 %119, i32 %121
  %123 = add i32 %122, 2
  %124 = icmp ult i32 %123, %107
  %125 = icmp ult i32 %48, %118
  %126 = or i1 %125, %124
  br i1 %126, label %247, label %127

127:                                              ; preds = %113, %106
  %128 = load i32, ptr %1, align 4
  %129 = sub i32 %44, %128
  %130 = load i32, ptr %35, align 4
  %131 = icmp ugt i32 %129, %130
  br i1 %131, label %247, label %132

132:                                              ; preds = %127
  %133 = add i32 %48, -3
  %134 = getelementptr i8, ptr %45, i32 %62
  %135 = icmp ugt ptr %134, %37
  %136 = load ptr, ptr %38, align 4
  br i1 %135, label %158, label %137

137:                                              ; preds = %132
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %136, ptr noundef align 1 dereferenceable(16) %45, i32 16, i1 false) #23
  %138 = icmp ugt i32 %62, 16
  %139 = load ptr, ptr %38, align 4
  br i1 %138, label %142, label %140

140:                                              ; preds = %137
  %141 = getelementptr i8, ptr %139, i32 %62
  store ptr %141, ptr %38, align 4
  br label %202

142:                                              ; preds = %137
  %143 = getelementptr i8, ptr %139, i32 16
  %144 = getelementptr i8, ptr %45, i32 16
  %145 = add i32 %62, -16
  %146 = getelementptr i8, ptr %139, i32 %62
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %143, ptr noundef align 1 dereferenceable(16) %144, i32 16, i1 false) #23
  %147 = icmp slt i32 %145, 17
  br i1 %147, label %191, label %148

148:                                              ; preds = %142
  %149 = getelementptr i8, ptr %139, i32 32
  br label %150

150:                                              ; preds = %150, %148
  %151 = phi ptr [ %144, %148 ], [ %155, %150 ]
  %152 = phi ptr [ %149, %148 ], [ %156, %150 ]
  %153 = getelementptr i8, ptr %151, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %152, ptr noundef align 1 dereferenceable(16) %153, i32 16, i1 false) #23
  %154 = getelementptr i8, ptr %152, i32 16
  %155 = getelementptr i8, ptr %151, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %154, ptr noundef align 1 dereferenceable(16) %155, i32 16, i1 false) #23
  %156 = getelementptr i8, ptr %152, i32 32
  %157 = icmp ult ptr %156, %146
  br i1 %157, label %150, label %191

158:                                              ; preds = %132
  %159 = ptrtoint ptr %134 to i32
  %160 = icmp ult ptr %37, %45
  br i1 %160, label %176, label %161

161:                                              ; preds = %158
  %162 = ptrtoint ptr %45 to i32
  %163 = sub i32 %39, %162
  %164 = getelementptr i8, ptr %136, i32 %163
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %136, ptr noundef align 1 dereferenceable(16) %45, i32 16, i1 false) #23
  %165 = icmp slt i32 %163, 17
  br i1 %165, label %176, label %166

166:                                              ; preds = %161
  %167 = getelementptr i8, ptr %136, i32 16
  br label %168

168:                                              ; preds = %168, %166
  %169 = phi ptr [ %45, %166 ], [ %173, %168 ]
  %170 = phi ptr [ %167, %166 ], [ %174, %168 ]
  %171 = getelementptr i8, ptr %169, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %170, ptr noundef align 1 dereferenceable(16) %171, i32 16, i1 false) #23
  %172 = getelementptr i8, ptr %170, i32 16
  %173 = getelementptr i8, ptr %169, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %172, ptr noundef align 1 dereferenceable(16) %173, i32 16, i1 false) #23
  %174 = getelementptr i8, ptr %170, i32 32
  %175 = icmp ult ptr %174, %164
  br i1 %175, label %168, label %176

176:                                              ; preds = %168, %161, %158
  %177 = phi ptr [ %37, %161 ], [ %45, %158 ], [ %37, %168 ]
  %178 = phi ptr [ %164, %161 ], [ %136, %158 ], [ %164, %168 ]
  %179 = icmp ult ptr %177, %134
  br i1 %179, label %180, label %191

180:                                              ; preds = %176
  %181 = ptrtoint ptr %177 to i32
  %182 = sub i32 %159, %181
  %183 = getelementptr i8, ptr %177, i32 %182
  br label %184

184:                                              ; preds = %184, %180
  %185 = phi ptr [ %189, %184 ], [ %178, %180 ]
  %186 = phi ptr [ %187, %184 ], [ %177, %180 ]
  %187 = getelementptr i8, ptr %186, i32 1
  %188 = load i8, ptr %186, align 1
  %189 = getelementptr i8, ptr %185, i32 1
  store i8 %188, ptr %185, align 1
  %190 = icmp eq ptr %187, %183
  br i1 %190, label %191, label %184

191:                                              ; preds = %184, %176, %150, %142
  %192 = load ptr, ptr %38, align 4
  %193 = getelementptr i8, ptr %192, i32 %62
  store ptr %193, ptr %38, align 4
  %194 = icmp ugt i32 %62, 65535
  br i1 %194, label %195, label %202

195:                                              ; preds = %191
  store i32 1, ptr %40, align 4
  %196 = load ptr, ptr %41, align 4
  %197 = load ptr, ptr %36, align 4
  %198 = ptrtoint ptr %196 to i32
  %199 = ptrtoint ptr %197 to i32
  %200 = sub i32 %198, %199
  %201 = ashr exact i32 %200, 3
  store i32 %201, ptr %42, align 4
  br label %202

202:                                              ; preds = %195, %191, %140
  %203 = trunc i32 %62 to i16
  %204 = load ptr, ptr %41, align 4
  %205 = getelementptr inbounds %struct.seqDef_s, ptr %204, i32 0, i32 1
  store i16 %203, ptr %205, align 4
  %206 = add i32 %107, 1
  %207 = load ptr, ptr %41, align 4
  store i32 %206, ptr %207, align 4
  %208 = icmp ugt i32 %133, 65535
  br i1 %208, label %211, label %209

209:                                              ; preds = %202
  %210 = load ptr, ptr %41, align 4
  br label %218

211:                                              ; preds = %202
  store i32 2, ptr %40, align 4
  %212 = load ptr, ptr %41, align 4
  %213 = load ptr, ptr %36, align 4
  %214 = ptrtoint ptr %212 to i32
  %215 = ptrtoint ptr %213 to i32
  %216 = sub i32 %214, %215
  %217 = ashr exact i32 %216, 3
  store i32 %217, ptr %42, align 4
  br label %218

218:                                              ; preds = %211, %209
  %219 = phi ptr [ %210, %209 ], [ %212, %211 ]
  %220 = trunc i32 %133 to i16
  %221 = getelementptr inbounds %struct.seqDef_s, ptr %219, i32 0, i32 2
  store i16 %220, ptr %221, align 2
  %222 = load ptr, ptr %41, align 4
  %223 = getelementptr %struct.seqDef_s, ptr %222, i32 1
  store ptr %223, ptr %41, align 4
  %224 = add i32 %62, %48
  %225 = getelementptr i8, ptr %45, i32 %224
  %226 = add i32 %44, 1
  br label %43

227:                                              ; preds = %55, %50
  %228 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 1
  %229 = load ptr, ptr %228, align 4
  %230 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %229, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %230, ptr noundef nonnull align 4 dereferenceable(12) %7, i32 12, i1 false)
  %231 = getelementptr %struct.ZSTD_Sequence, ptr %2, i32 %44, i32 1
  %232 = load i32, ptr %231, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %242, label %234

234:                                              ; preds = %227
  %235 = load ptr, ptr %38, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %235, ptr align 1 %45, i32 %232, i1 false) #23
  %236 = load ptr, ptr %38, align 4
  %237 = getelementptr i8, ptr %236, i32 %232
  store ptr %237, ptr %38, align 4
  %238 = load i32, ptr %231, align 4
  %239 = getelementptr i8, ptr %45, i32 %238
  %240 = load i32, ptr %32, align 4
  %241 = add i32 %240, %238
  store i32 %241, ptr %32, align 4
  br label %242

242:                                              ; preds = %234, %227
  %243 = phi ptr [ %239, %234 ], [ %45, %227 ]
  %244 = icmp eq ptr %243, %9
  br i1 %244, label %245, label %247

245:                                              ; preds = %242
  %246 = add i32 %44, 1
  store i32 %246, ptr %1, align 4
  br label %247

247:                                              ; preds = %245, %242, %127, %113
  %248 = phi i32 [ 0, %245 ], [ -20, %242 ], [ -64, %127 ], [ -20, %113 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  ret i32 %248
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ZSTD_copySequencesToSeqStoreNoBlockDelim(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #14 {
  %7 = alloca %struct.repcodes_s, align 4
  %8 = load i32, ptr %1, align 4
  %9 = getelementptr inbounds %struct.ZSTD_sequencePosition, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %5
  %12 = getelementptr i8, ptr %4, i32 %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #23
  %13 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 41
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.ZSTD_CDict_s, ptr %14, i32 0, i32 1
  br label %24

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 42
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 42, i32 1
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %23, %22 ], [ %17, %16 ]
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %18
  %28 = phi i32 [ 0, %18 ], [ %26, %24 ]
  %29 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %30, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef align 4 dereferenceable(12) %31, i32 12, i1 false)
  %32 = icmp eq i32 %11, 0
  br i1 %32, label %264, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 1, i32 4
  %35 = getelementptr inbounds i32, ptr %7, i32 1
  %36 = getelementptr inbounds i32, ptr %7, i32 2
  %37 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 18
  %38 = getelementptr inbounds %struct.ZSTD_sequencePosition, ptr %1, i32 0, i32 2
  %39 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 1
  %40 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 7
  %41 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19
  %42 = getelementptr i8, ptr %12, i32 -32
  %43 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 3
  %44 = ptrtoint ptr %42 to i32
  %45 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 9
  %46 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 1
  %47 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 10
  br label %48

48:                                               ; preds = %255, %33
  %49 = phi i32 [ %8, %33 ], [ %98, %255 ]
  %50 = phi i32 [ 0, %33 ], [ %95, %255 ]
  %51 = phi i32 [ 0, %33 ], [ %94, %255 ]
  %52 = phi ptr [ %4, %33 ], [ %262, %255 ]
  %53 = phi i32 [ %11, %33 ], [ %99, %255 ]
  %54 = phi i32 [ %10, %33 ], [ %92, %255 ]
  %55 = icmp ult i32 %49, %3
  %56 = icmp eq i32 %50, 0
  %57 = and i1 %56, %55
  br i1 %57, label %58, label %264

58:                                               ; preds = %48
  %59 = getelementptr %struct.ZSTD_Sequence, ptr %2, i32 %49
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds i8, ptr %59, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds i8, ptr %59, i32 8
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, %62
  %66 = icmp ugt i32 %65, %53
  br i1 %66, label %72, label %67

67:                                               ; preds = %58
  %68 = tail call i32 @llvm.usub.sat.i32(i32 %62, i32 %54)
  %69 = tail call i32 @llvm.usub.sat.i32(i32 %54, i32 %62)
  %70 = sub i32 %64, %69
  %71 = add nuw i32 %49, 1
  br label %91

72:                                               ; preds = %58
  %73 = icmp ugt i32 %53, %62
  br i1 %73, label %74, label %264

74:                                               ; preds = %72
  %75 = tail call i32 @llvm.usub.sat.i32(i32 %62, i32 %54)
  %76 = add i32 %54, %75
  %77 = sub i32 %53, %76
  %78 = icmp ugt i32 %64, %5
  br i1 %78, label %79, label %89

79:                                               ; preds = %74
  %80 = load i32, ptr %34, align 4
  %81 = icmp ult i32 %77, %80
  br i1 %81, label %89, label %82

82:                                               ; preds = %79
  %83 = sub i32 %65, %53
  %84 = icmp ugt i32 %80, %83
  %85 = sub i32 %80, %83
  %86 = tail call i32 @llvm.usub.sat.i32(i32 %80, i32 %83)
  %87 = select i1 %84, i32 %85, i32 %51
  %88 = sub i32 %77, %86
  br label %91

89:                                               ; preds = %79, %74
  %90 = sub i32 %53, %62
  br label %264

91:                                               ; preds = %82, %67
  %92 = phi i32 [ 0, %67 ], [ %54, %82 ]
  %93 = phi i32 [ %65, %67 ], [ %86, %82 ]
  %94 = phi i32 [ %51, %67 ], [ %87, %82 ]
  %95 = phi i32 [ 0, %67 ], [ 1, %82 ]
  %96 = phi i32 [ %68, %67 ], [ %75, %82 ]
  %97 = phi i32 [ %70, %67 ], [ %88, %82 ]
  %98 = phi i32 [ %71, %67 ], [ %49, %82 ]
  %99 = sub i32 %53, %93
  %100 = icmp eq i32 %96, 0
  %101 = zext i1 %100 to i32
  %102 = add i32 %60, 2
  %103 = xor i1 %100, true
  %104 = load i32, ptr %7, align 4
  %105 = icmp eq i32 %104, %60
  %106 = select i1 %103, i1 %105, i1 false
  br i1 %106, label %126, label %107

107:                                              ; preds = %91
  %108 = load i32, ptr %35, align 4
  %109 = icmp eq i32 %108, %60
  br i1 %109, label %117, label %110

110:                                              ; preds = %107
  %111 = load i32, ptr %36, align 4
  %112 = icmp eq i32 %111, %60
  br i1 %112, label %117, label %113

113:                                              ; preds = %110
  %114 = add i32 %104, -1
  %115 = icmp eq i32 %114, %60
  %116 = select i1 %100, i1 %115, i1 false
  br i1 %116, label %126, label %121

117:                                              ; preds = %110, %107
  %118 = phi i32 [ 2, %107 ], [ 3, %110 ]
  %119 = xor i32 %101, -1
  %120 = add nsw i32 %118, %119
  br label %121

121:                                              ; preds = %117, %113
  %122 = phi i32 [ %120, %117 ], [ %102, %113 ]
  %123 = icmp ugt i32 %122, 2
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = add i32 %122, -2
  br label %143

126:                                              ; preds = %121, %113, %91
  %127 = phi i32 [ %122, %121 ], [ 0, %91 ], [ 2, %113 ]
  %128 = add nuw nsw i32 %127, %101
  switch i32 %128, label %131 [
    i32 0, label %140
    i32 3, label %129
  ]

129:                                              ; preds = %126
  %130 = add i32 %104, -1
  br label %134

131:                                              ; preds = %126
  %132 = getelementptr i32, ptr %7, i32 %128
  %133 = load i32, ptr %132, align 4, !noalias !63
  br label %134

134:                                              ; preds = %131, %129
  %135 = phi i32 [ %130, %129 ], [ %133, %131 ]
  %136 = icmp ugt i32 %128, 1
  %137 = select i1 %136, i32 1, i32 2
  %138 = getelementptr i32, ptr %7, i32 %137
  %139 = load i32, ptr %138, align 4, !noalias !63
  br label %143

140:                                              ; preds = %126
  %141 = load i32, ptr %35, align 4
  %142 = load i32, ptr %36, align 4
  br label %143

143:                                              ; preds = %140, %134, %124
  %144 = phi i32 [ %122, %124 ], [ %127, %134 ], [ %127, %140 ]
  %145 = phi i32 [ %125, %124 ], [ %135, %134 ], [ %104, %140 ]
  %146 = phi i32 [ %104, %124 ], [ %104, %134 ], [ %141, %140 ]
  %147 = phi i32 [ %108, %124 ], [ %139, %134 ], [ %142, %140 ]
  store i32 %145, ptr %7, align 4
  store i32 %146, ptr %35, align 4
  store i32 %147, ptr %36, align 4
  %148 = load i32, ptr %37, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %164, label %150

150:                                              ; preds = %143
  %151 = add i32 %97, %96
  %152 = load i32, ptr %38, align 4
  %153 = add i32 %151, %152
  store i32 %153, ptr %38, align 4
  %154 = load i32, ptr %39, align 4
  %155 = load i32, ptr %34, align 4
  %156 = shl nuw i32 1, %154
  %157 = icmp ult i32 %156, %153
  %158 = add i32 %153, %28
  %159 = select i1 %157, i32 %156, i32 %158
  %160 = add i32 %159, 2
  %161 = icmp ult i32 %160, %144
  %162 = icmp ult i32 %97, %155
  %163 = or i1 %162, %161
  br i1 %163, label %286, label %164

164:                                              ; preds = %150, %143
  %165 = load i32, ptr %1, align 4
  %166 = sub i32 %98, %165
  %167 = load i32, ptr %40, align 4
  %168 = icmp ugt i32 %166, %167
  br i1 %168, label %286, label %169

169:                                              ; preds = %164
  %170 = add i32 %97, -3
  %171 = getelementptr i8, ptr %52, i32 %96
  %172 = icmp ugt ptr %171, %42
  %173 = load ptr, ptr %43, align 4
  br i1 %172, label %195, label %174

174:                                              ; preds = %169
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %173, ptr noundef align 1 dereferenceable(16) %52, i32 16, i1 false) #23
  %175 = icmp ugt i32 %96, 16
  %176 = load ptr, ptr %43, align 4
  br i1 %175, label %179, label %177

177:                                              ; preds = %174
  %178 = getelementptr i8, ptr %176, i32 %96
  store ptr %178, ptr %43, align 4
  br label %239

179:                                              ; preds = %174
  %180 = getelementptr i8, ptr %176, i32 16
  %181 = getelementptr i8, ptr %52, i32 16
  %182 = add i32 %96, -16
  %183 = getelementptr i8, ptr %176, i32 %96
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %180, ptr noundef align 1 dereferenceable(16) %181, i32 16, i1 false) #23
  %184 = icmp slt i32 %182, 17
  br i1 %184, label %228, label %185

185:                                              ; preds = %179
  %186 = getelementptr i8, ptr %176, i32 32
  br label %187

187:                                              ; preds = %187, %185
  %188 = phi ptr [ %181, %185 ], [ %192, %187 ]
  %189 = phi ptr [ %186, %185 ], [ %193, %187 ]
  %190 = getelementptr i8, ptr %188, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %189, ptr noundef align 1 dereferenceable(16) %190, i32 16, i1 false) #23
  %191 = getelementptr i8, ptr %189, i32 16
  %192 = getelementptr i8, ptr %188, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %191, ptr noundef align 1 dereferenceable(16) %192, i32 16, i1 false) #23
  %193 = getelementptr i8, ptr %189, i32 32
  %194 = icmp ult ptr %193, %183
  br i1 %194, label %187, label %228

195:                                              ; preds = %169
  %196 = ptrtoint ptr %171 to i32
  %197 = icmp ult ptr %42, %52
  br i1 %197, label %213, label %198

198:                                              ; preds = %195
  %199 = ptrtoint ptr %52 to i32
  %200 = sub i32 %44, %199
  %201 = getelementptr i8, ptr %173, i32 %200
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %173, ptr noundef align 1 dereferenceable(16) %52, i32 16, i1 false) #23
  %202 = icmp slt i32 %200, 17
  br i1 %202, label %213, label %203

203:                                              ; preds = %198
  %204 = getelementptr i8, ptr %173, i32 16
  br label %205

205:                                              ; preds = %205, %203
  %206 = phi ptr [ %52, %203 ], [ %210, %205 ]
  %207 = phi ptr [ %204, %203 ], [ %211, %205 ]
  %208 = getelementptr i8, ptr %206, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %207, ptr noundef align 1 dereferenceable(16) %208, i32 16, i1 false) #23
  %209 = getelementptr i8, ptr %207, i32 16
  %210 = getelementptr i8, ptr %206, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %209, ptr noundef align 1 dereferenceable(16) %210, i32 16, i1 false) #23
  %211 = getelementptr i8, ptr %207, i32 32
  %212 = icmp ult ptr %211, %201
  br i1 %212, label %205, label %213

213:                                              ; preds = %205, %198, %195
  %214 = phi ptr [ %42, %198 ], [ %52, %195 ], [ %42, %205 ]
  %215 = phi ptr [ %201, %198 ], [ %173, %195 ], [ %201, %205 ]
  %216 = icmp ult ptr %214, %171
  br i1 %216, label %217, label %228

217:                                              ; preds = %213
  %218 = ptrtoint ptr %214 to i32
  %219 = sub i32 %196, %218
  %220 = getelementptr i8, ptr %214, i32 %219
  br label %221

221:                                              ; preds = %221, %217
  %222 = phi ptr [ %226, %221 ], [ %215, %217 ]
  %223 = phi ptr [ %224, %221 ], [ %214, %217 ]
  %224 = getelementptr i8, ptr %223, i32 1
  %225 = load i8, ptr %223, align 1
  %226 = getelementptr i8, ptr %222, i32 1
  store i8 %225, ptr %222, align 1
  %227 = icmp eq ptr %224, %220
  br i1 %227, label %228, label %221

228:                                              ; preds = %221, %213, %187, %179
  %229 = load ptr, ptr %43, align 4
  %230 = getelementptr i8, ptr %229, i32 %96
  store ptr %230, ptr %43, align 4
  %231 = icmp ugt i32 %96, 65535
  br i1 %231, label %232, label %239

232:                                              ; preds = %228
  store i32 1, ptr %45, align 4
  %233 = load ptr, ptr %46, align 4
  %234 = load ptr, ptr %41, align 4
  %235 = ptrtoint ptr %233 to i32
  %236 = ptrtoint ptr %234 to i32
  %237 = sub i32 %235, %236
  %238 = ashr exact i32 %237, 3
  store i32 %238, ptr %47, align 4
  br label %239

239:                                              ; preds = %232, %228, %177
  %240 = trunc i32 %96 to i16
  %241 = load ptr, ptr %46, align 4
  %242 = getelementptr inbounds %struct.seqDef_s, ptr %241, i32 0, i32 1
  store i16 %240, ptr %242, align 4
  %243 = add i32 %144, 1
  %244 = load ptr, ptr %46, align 4
  store i32 %243, ptr %244, align 4
  %245 = icmp ugt i32 %170, 65535
  br i1 %245, label %248, label %246

246:                                              ; preds = %239
  %247 = load ptr, ptr %46, align 4
  br label %255

248:                                              ; preds = %239
  store i32 2, ptr %45, align 4
  %249 = load ptr, ptr %46, align 4
  %250 = load ptr, ptr %41, align 4
  %251 = ptrtoint ptr %249 to i32
  %252 = ptrtoint ptr %250 to i32
  %253 = sub i32 %251, %252
  %254 = ashr exact i32 %253, 3
  store i32 %254, ptr %47, align 4
  br label %255

255:                                              ; preds = %248, %246
  %256 = phi ptr [ %247, %246 ], [ %249, %248 ]
  %257 = trunc i32 %170 to i16
  %258 = getelementptr inbounds %struct.seqDef_s, ptr %256, i32 0, i32 2
  store i16 %257, ptr %258, align 2
  %259 = load ptr, ptr %46, align 4
  %260 = getelementptr %struct.seqDef_s, ptr %259, i32 1
  store ptr %260, ptr %46, align 4
  %261 = add i32 %97, %96
  %262 = getelementptr i8, ptr %52, i32 %261
  %263 = icmp eq i32 %99, 0
  br i1 %263, label %264, label %48

264:                                              ; preds = %255, %89, %72, %48, %27
  %265 = phi ptr [ %52, %89 ], [ %4, %27 ], [ %52, %48 ], [ %262, %255 ], [ %52, %72 ]
  %266 = phi i32 [ %49, %89 ], [ %8, %27 ], [ %49, %48 ], [ %98, %255 ], [ %49, %72 ]
  %267 = phi i32 [ %62, %89 ], [ 0, %27 ], [ %53, %48 ], [ 0, %255 ], [ %53, %72 ]
  %268 = phi i32 [ %90, %89 ], [ 0, %27 ], [ %51, %48 ], [ %94, %255 ], [ %51, %72 ]
  store i32 %266, ptr %1, align 4
  store i32 %267, ptr %9, align 4
  %269 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 1
  %270 = load ptr, ptr %269, align 4
  %271 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %270, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %271, ptr noundef nonnull align 4 dereferenceable(12) %7, i32 12, i1 false)
  %272 = sub i32 0, %268
  %273 = getelementptr i8, ptr %12, i32 %272
  %274 = icmp eq ptr %265, %273
  br i1 %274, label %286, label %275

275:                                              ; preds = %264
  %276 = ptrtoint ptr %273 to i32
  %277 = ptrtoint ptr %265 to i32
  %278 = sub i32 %276, %277
  %279 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 3
  %280 = load ptr, ptr %279, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %280, ptr align 1 %265, i32 %278, i1 false) #23
  %281 = load ptr, ptr %279, align 4
  %282 = getelementptr i8, ptr %281, i32 %278
  store ptr %282, ptr %279, align 4
  %283 = getelementptr inbounds %struct.ZSTD_sequencePosition, ptr %1, i32 0, i32 2
  %284 = load i32, ptr %283, align 4
  %285 = add i32 %284, %278
  store i32 %285, ptr %283, align 4
  br label %286

286:                                              ; preds = %275, %264, %164, %150
  %287 = phi i32 [ %268, %275 ], [ %268, %264 ], [ -64, %164 ], [ -20, %150 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #23
  ret i32 %287
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #19

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #20 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #21 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #22 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #23 = { nounwind }

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
!8 = !{!"auto-init"}
!9 = !{i32 0, i32 33}
!10 = !{!11}
!11 = distinct !{!11, !12, !"ZSTD_adjustCParams_internal: argument 0"}
!12 = distinct !{!12, !"ZSTD_adjustCParams_internal"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"ZSTD_adjustCParams_internal: argument 0"}
!15 = distinct !{!15, !"ZSTD_adjustCParams_internal"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"ZSTD_adjustCParams_internal: argument 0"}
!18 = distinct !{!18, !"ZSTD_adjustCParams_internal"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"ZSTD_makeCCtxParamsFromCParams: argument 0"}
!21 = distinct !{!21, !"ZSTD_makeCCtxParamsFromCParams"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"ZSTD_getCParams_internal: argument 0"}
!24 = distinct !{!24, !"ZSTD_getCParams_internal"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"ZSTD_makeCCtxParamsFromCParams: argument 0"}
!27 = distinct !{!27, !"ZSTD_makeCCtxParamsFromCParams"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"ZSTD_getCParams_internal: argument 0"}
!30 = distinct !{!30, !"ZSTD_getCParams_internal"}
!31 = !{!32, !34}
!32 = distinct !{!32, !33, !"ZSTD_getCParams_internal: argument 0"}
!33 = distinct !{!33, !"ZSTD_getCParams_internal"}
!34 = distinct !{!34, !35, !"ZSTD_getParams_internal: argument 0"}
!35 = distinct !{!35, !"ZSTD_getParams_internal"}
!36 = !{!37, !39}
!37 = distinct !{!37, !38, !"ZSTD_getCParams_internal: argument 0"}
!38 = distinct !{!38, !"ZSTD_getCParams_internal"}
!39 = distinct !{!39, !40, !"ZSTD_getParams_internal: argument 0"}
!40 = distinct !{!40, !"ZSTD_getParams_internal"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"ZSTD_getParams_internal: argument 0"}
!43 = distinct !{!43, !"ZSTD_getParams_internal"}
!44 = !{!45, !47}
!45 = distinct !{!45, !46, !"ZSTD_getCParams_internal: argument 0"}
!46 = distinct !{!46, !"ZSTD_getCParams_internal"}
!47 = distinct !{!47, !48, !"ZSTD_getParams_internal: argument 0"}
!48 = distinct !{!48, !"ZSTD_getParams_internal"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"ZSTD_dedicatedDictSearch_getCParams: argument 0"}
!51 = distinct !{!51, !"ZSTD_dedicatedDictSearch_getCParams"}
!52 = !{i32 -64, i32 1}
!53 = !{ptr @ZSTD_copySequencesToSeqStoreExplicitBlockDelim, ptr @ZSTD_copySequencesToSeqStoreNoBlockDelim}
!54 = !{!55}
!55 = distinct !{!55, !56, !"ZSTD_getParams_internal: argument 0"}
!56 = distinct !{!56, !"ZSTD_getParams_internal"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"ZSTD_updateRep: argument 0"}
!59 = distinct !{!59, !"ZSTD_updateRep"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"ZSTD_updateRep: argument 0"}
!62 = distinct !{!62, !"ZSTD_updateRep"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"ZSTD_updateRep: argument 0"}
!65 = distinct !{!65, !"ZSTD_updateRep"}
