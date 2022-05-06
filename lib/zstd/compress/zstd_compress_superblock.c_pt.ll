; ModuleID = '/llk/IR/lib/zstd/compress/zstd_compress_superblock.c_pt.bc'
source_filename = "../lib/zstd/compress/zstd_compress_superblock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.repcodes_s = type { [3 x i32] }
%struct.ZSTD_entropyCTablesMetadata_t = type { %struct.ZSTD_hufCTablesMetadata_t, %struct.ZSTD_fseCTablesMetadata_t }
%struct.ZSTD_hufCTablesMetadata_t = type { i32, [128 x i8], i32 }
%struct.ZSTD_fseCTablesMetadata_t = type { i32, i32, i32, [133 x i8], i32, i32 }
%struct.ZSTD_CCtx_s = type { i32, i32, i32, %struct.ZSTD_CCtx_params_s, %struct.ZSTD_CCtx_params_s, i32, i32, %struct.ZSTD_cwksp, i32, i64, i64, i64, %struct.xxh64_state, %struct.ZSTD_customMem, ptr, i32, %struct.SeqCollector, i32, i32, %struct.seqStore_t, %struct.ldmState_t, ptr, i32, %struct.rawSeqStore_t, %struct.ZSTD_blockState_t, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.ZSTD_inBuffer_s, i32, %struct.ZSTD_localDict, ptr, %struct.ZSTD_prefixDict_s }
%struct.ZSTD_CCtx_params_s = type { i32, %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ldmParams_t, i32, i32, i32, i32, i32, %struct.ZSTD_customMem }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.ZSTD_hufCTables_t = type { [256 x %struct.HUF_CElt_s], i32 }
%struct.HUF_CElt_s = type { i16, i8 }
%struct.ZSTD_entropyCTables_t = type { %struct.ZSTD_hufCTables_t, %struct.ZSTD_fseCTables_t }
%struct.ZSTD_fseCTables_t = type { [193 x i32], [363 x i32], [329 x i32], i32, i32, i32 }
%struct.seqDef_s = type { i32, i16, i16 }
%struct.ZSTD_compressedBlockState_t = type { %struct.ZSTD_entropyCTables_t, [3 x i32] }

@LL_defaultNorm = internal constant [36 x i16] [i16 4, i16 3, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 3, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1, i16 -1, i16 -1, i16 -1], align 2
@OF_defaultNorm = internal constant [29 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], align 2
@ML_defaultNorm = internal constant [53 x i16] [i16 1, i16 4, i16 3, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], align 2
@LL_bits = internal unnamed_addr constant [36 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], align 4
@ML_bits = internal unnamed_addr constant [53 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressSuperBlock(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.repcodes_s, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ZSTD_entropyCTablesMetadata_t, align 4
  call void @llvm.lifetime.start.p0(i64 292, ptr nonnull %16) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(292) %16, i8 0, i32 292, i1 false), !annotation !8
  %17 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19
  %18 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 24, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 25
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = ptrtoint ptr %25 to i32
  %29 = ptrtoint ptr %27 to i32
  %30 = sub i32 %28, %29
  %31 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 8
  %32 = load i32, ptr %31, align 4
  switch i32 %32, label %34 [
    i32 1, label %38
    i32 2, label %33
  ]

33:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(1028) %21, ptr noundef align 4 dereferenceable(1028) %19, i32 1028, i1 false) #5
  br label %100

34:                                               ; preds = %6
  %35 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 1, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %34, %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #5
  store i32 255, ptr %15, align 4
  %39 = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %19, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(1028) %21, ptr noundef align 4 dereferenceable(1028) %19, i32 1028, i1 false) #5
  br label %47

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 1, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #5
  store i32 255, ptr %15, align 4
  %45 = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %19, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(1028) %21, ptr noundef align 4 dereferenceable(1028) %19, i32 1028, i1 false) #5
  br i1 %44, label %47, label %100

47:                                               ; preds = %41, %38
  %48 = phi i32 [ %40, %38 ], [ %46, %41 ]
  %49 = phi ptr [ %39, %38 ], [ %45, %41 ]
  %50 = getelementptr i8, ptr %23, i32 1024
  %51 = load i32, ptr %49, align 4
  %52 = icmp eq i32 %51, 2
  %53 = select i1 %52, i32 6, i32 63
  %54 = icmp ult i32 %53, %30
  br i1 %54, label %55, label %100

55:                                               ; preds = %47
  %56 = call i32 @HIST_count_wksp(ptr noundef %23, ptr noundef nonnull %15, ptr noundef %27, i32 noundef %30, ptr noundef %23, i32 noundef 6616) #5
  %57 = icmp ult i32 %56, -119
  br i1 %57, label %58, label %103

58:                                               ; preds = %55
  %59 = icmp eq i32 %56, %30
  br i1 %59, label %100, label %60

60:                                               ; preds = %58
  %61 = lshr i32 %30, 7
  %62 = add nuw nsw i32 %61, 4
  %63 = icmp ugt i32 %56, %62
  br i1 %63, label %64, label %100

64:                                               ; preds = %60
  %65 = icmp eq i32 %48, 1
  br i1 %65, label %66, label %71

66:                                               ; preds = %64
  %67 = load i32, ptr %15, align 4
  %68 = call i32 @HUF_validateCTable(ptr noundef %19, ptr noundef %23, i32 noundef %67) #5
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i32
  br label %71

71:                                               ; preds = %66, %64
  %72 = phi i32 [ %48, %64 ], [ %70, %66 ]
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(1024) %21, i8 0, i32 1024, i1 false) #5
  %73 = load i32, ptr %15, align 4
  %74 = call i32 @HUF_optimalTableLog(i32 noundef 11, i32 noundef %30, i32 noundef %73) #5
  %75 = load i32, ptr %15, align 4
  %76 = call i32 @HUF_buildCTable_wksp(ptr noundef %21, ptr noundef %23, i32 noundef %75, i32 noundef %74, ptr noundef %50, i32 noundef 5592) #5
  %77 = icmp ult i32 %76, -119
  br i1 %77, label %78, label %103

78:                                               ; preds = %71
  %79 = load i32, ptr %15, align 4
  %80 = call i32 @HUF_estimateCompressedSize(ptr noundef %21, ptr noundef %23, i32 noundef %79) #5
  %81 = getelementptr inbounds %struct.ZSTD_hufCTablesMetadata_t, ptr %16, i32 0, i32 1
  %82 = load i32, ptr %15, align 4
  %83 = call i32 @HUF_writeCTable_wksp(ptr noundef %81, i32 noundef 128, ptr noundef %21, i32 noundef %82, i32 noundef %76, ptr noundef %50, i32 noundef 5592) #5
  %84 = icmp eq i32 %72, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %78
  %86 = load i32, ptr %15, align 4
  %87 = call i32 @HUF_estimateCompressedSize(ptr noundef %19, ptr noundef %23, i32 noundef %86) #5
  %88 = icmp ult i32 %87, %30
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = add i32 %83, %80
  %91 = icmp ugt i32 %87, %90
  %92 = add i32 %83, 12
  %93 = icmp ult i32 %92, %30
  %94 = and i1 %93, %91
  br i1 %94, label %96, label %95

95:                                               ; preds = %89
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(1028) %21, ptr noundef align 4 dereferenceable(1028) %19, i32 1028, i1 false) #5
  br label %100

96:                                               ; preds = %89, %85, %78
  %97 = add i32 %83, %80
  %98 = icmp ult i32 %97, %30
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(1028) %21, ptr noundef align 4 dereferenceable(1028) %19, i32 1028, i1 false) #5
  br label %100

100:                                              ; preds = %99, %95, %60, %58, %47, %41, %33
  %101 = phi i32 [ 0, %99 ], [ 3, %95 ], [ 0, %33 ], [ 0, %41 ], [ 0, %47 ], [ 1, %58 ], [ 0, %60 ]
  store i32 %101, ptr %16, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #5
  %102 = getelementptr inbounds %struct.ZSTD_hufCTablesMetadata_t, ptr %16, i32 0, i32 2
  store i32 0, ptr %102, align 4
  br label %109

103:                                              ; preds = %71, %55
  %104 = phi i32 [ %56, %55 ], [ %76, %71 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #5
  br label %758

105:                                              ; preds = %96
  store i32 2, ptr %16, align 4
  %106 = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %21, i32 0, i32 1
  store i32 1, ptr %106, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #5
  %107 = getelementptr inbounds %struct.ZSTD_hufCTablesMetadata_t, ptr %16, i32 0, i32 2
  store i32 %83, ptr %107, align 4
  %108 = icmp ult i32 %83, -119
  br i1 %108, label %109, label %758

109:                                              ; preds = %105, %100
  %110 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %19, i32 0, i32 1
  %111 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %21, i32 0, i32 1
  %112 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %16, i32 0, i32 1
  %113 = getelementptr i8, ptr %23, i32 212
  %114 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 1, i32 6
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %21, i32 0, i32 1, i32 2
  %117 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %21, i32 0, i32 1, i32 1
  %118 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 6
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 4
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 5
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = load ptr, ptr %17, align 4
  %127 = ptrtoint ptr %125 to i32
  %128 = ptrtoint ptr %126 to i32
  %129 = sub i32 %127, %128
  %130 = ashr exact i32 %129, 3
  %131 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %16, i32 0, i32 1, i32 3
  %132 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %16, i32 0, i32 1, i32 3, i32 133
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6616) %23, i8 0, i32 6616, i1 false) #5
  %133 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %16, i32 0, i32 1, i32 5
  store i32 0, ptr %133, align 4
  call void @ZSTD_seqToCodes(ptr noundef %17) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #5
  store i32 35, ptr %12, align 4
  %134 = call i32 @HIST_countFast_wksp(ptr noundef %23, ptr noundef nonnull %12, ptr noundef %121, i32 noundef %130, ptr noundef %23, i32 noundef 6616) #5
  %135 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %19, i32 0, i32 1, i32 5
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %21, i32 0, i32 1, i32 5
  store i32 %136, ptr %137, align 4
  %138 = load i32, ptr %12, align 4
  %139 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %19, i32 0, i32 1, i32 2
  %140 = call i32 @ZSTD_selectEncodingType(ptr noundef %137, ptr noundef %23, i32 noundef %138, i32 noundef %134, i32 noundef %130, i32 noundef 9, ptr noundef %139, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef 1, i32 noundef %115) #5
  %141 = ptrtoint ptr %132 to i32
  %142 = ptrtoint ptr %131 to i32
  %143 = load i32, ptr %12, align 4
  %144 = call i32 @ZSTD_buildCTable(ptr noundef %131, i32 noundef 133, ptr noundef %116, i32 noundef 9, i32 noundef %140, ptr noundef %23, i32 noundef %143, ptr noundef %121, i32 noundef %130, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef 35, ptr noundef %139, i32 noundef 1316, ptr noundef %113, i32 noundef 6404) #5
  %145 = icmp ult i32 %144, -119
  br i1 %145, label %146, label %149

146:                                              ; preds = %109
  %147 = icmp eq i32 %140, 2
  br i1 %147, label %148, label %150

148:                                              ; preds = %146
  store i32 %144, ptr %133, align 4
  br label %150

149:                                              ; preds = %109
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #5
  br label %758

150:                                              ; preds = %148, %146
  %151 = getelementptr i8, ptr %131, i32 %144
  store i32 %140, ptr %112, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #5
  store i32 31, ptr %13, align 4
  %152 = call i32 @HIST_countFast_wksp(ptr noundef %23, ptr noundef nonnull %13, ptr noundef %119, i32 noundef %130, ptr noundef %23, i32 noundef 6616) #5
  %153 = load i32, ptr %13, align 4
  %154 = icmp ult i32 %153, 29
  %155 = zext i1 %154 to i32
  %156 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %19, i32 0, i32 1, i32 3
  %157 = load i32, ptr %156, align 4
  %158 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %21, i32 0, i32 1, i32 3
  store i32 %157, ptr %158, align 4
  %159 = call i32 @ZSTD_selectEncodingType(ptr noundef %158, ptr noundef %23, i32 noundef %153, i32 noundef %152, i32 noundef %130, i32 noundef 8, ptr noundef %110, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef %155, i32 noundef %115) #5
  %160 = ptrtoint ptr %151 to i32
  %161 = sub i32 %141, %160
  %162 = load i32, ptr %13, align 4
  %163 = call i32 @ZSTD_buildCTable(ptr noundef %151, i32 noundef %161, ptr noundef %111, i32 noundef 8, i32 noundef %159, ptr noundef %23, i32 noundef %162, ptr noundef %119, i32 noundef %130, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef 28, ptr noundef %110, i32 noundef 772, ptr noundef %113, i32 noundef 6404) #5
  %164 = icmp ult i32 %163, -119
  br i1 %164, label %165, label %168

165:                                              ; preds = %150
  %166 = icmp eq i32 %159, 2
  br i1 %166, label %167, label %169

167:                                              ; preds = %165
  store i32 %163, ptr %133, align 4
  br label %169

168:                                              ; preds = %150
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #5
  br label %758

169:                                              ; preds = %167, %165
  %170 = getelementptr i8, ptr %151, i32 %163
  %171 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %16, i32 0, i32 1, i32 1
  store i32 %159, ptr %171, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #5
  store i32 52, ptr %14, align 4
  %172 = call i32 @HIST_countFast_wksp(ptr noundef %23, ptr noundef nonnull %14, ptr noundef %123, i32 noundef %130, ptr noundef %23, i32 noundef 6616) #5
  %173 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %19, i32 0, i32 1, i32 4
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %21, i32 0, i32 1, i32 4
  store i32 %174, ptr %175, align 4
  %176 = load i32, ptr %14, align 4
  %177 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %19, i32 0, i32 1, i32 1
  %178 = call i32 @ZSTD_selectEncodingType(ptr noundef %175, ptr noundef %23, i32 noundef %176, i32 noundef %172, i32 noundef %130, i32 noundef 9, ptr noundef %177, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 1, i32 noundef %115) #5
  %179 = ptrtoint ptr %170 to i32
  %180 = sub i32 %141, %179
  %181 = load i32, ptr %14, align 4
  %182 = call i32 @ZSTD_buildCTable(ptr noundef %170, i32 noundef %180, ptr noundef %117, i32 noundef 9, i32 noundef %178, ptr noundef %23, i32 noundef %181, ptr noundef %123, i32 noundef %130, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 52, ptr noundef %177, i32 noundef 1452, ptr noundef %113, i32 noundef 6404) #5
  %183 = icmp ult i32 %182, -119
  br i1 %183, label %184, label %187

184:                                              ; preds = %169
  %185 = icmp eq i32 %178, 2
  br i1 %185, label %186, label %188

186:                                              ; preds = %184
  store i32 %182, ptr %133, align 4
  br label %188

187:                                              ; preds = %169
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #5
  br label %758

188:                                              ; preds = %186, %184
  %189 = getelementptr i8, ptr %170, i32 %182
  %190 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %16, i32 0, i32 1, i32 2
  store i32 %178, ptr %190, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #5
  %191 = ptrtoint ptr %189 to i32
  %192 = sub i32 %191, %142
  %193 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %16, i32 0, i32 1, i32 4
  store i32 %192, ptr %193, align 4
  %194 = icmp ult i32 %192, -119
  br i1 %194, label %195, label %758

195:                                              ; preds = %188
  %196 = load ptr, ptr %18, align 4
  %197 = load ptr, ptr %20, align 4
  %198 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 2
  %199 = load i32, ptr %198, align 8
  %200 = load ptr, ptr %22, align 4
  %201 = load ptr, ptr %17, align 4
  %202 = load ptr, ptr %124, align 4
  %203 = load ptr, ptr %26, align 4
  %204 = load ptr, ptr %24, align 4
  %205 = getelementptr i8, ptr %3, i32 %4
  %206 = getelementptr i8, ptr %1, i32 %2
  %207 = load ptr, ptr %120, align 4
  %208 = load ptr, ptr %122, align 4
  %209 = load ptr, ptr %118, align 4
  %210 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 5
  %211 = load i32, ptr %210, align 4
  %212 = load i32, ptr %16, align 4
  %213 = icmp eq i32 %212, 2
  %214 = zext i1 %213 to i32
  %215 = icmp eq ptr %201, %202
  %216 = ptrtoint ptr %204 to i32
  %217 = getelementptr %struct.seqDef_s, ptr %202, i32 -1
  %218 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 10
  %219 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 19, i32 9
  %220 = getelementptr inbounds %struct.ZSTD_hufCTablesMetadata_t, ptr %16, i32 0, i32 2
  %221 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %197, i32 0, i32 1
  %222 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %16, i32 0, i32 1, i32 1
  %223 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %197, i32 0, i32 1, i32 2
  %224 = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %16, i32 0, i32 1, i32 2
  %225 = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %197, i32 0, i32 1, i32 1
  %226 = ptrtoint ptr %206 to i32
  %227 = icmp ne i32 %5, 0
  %228 = getelementptr inbounds %struct.ZSTD_hufCTablesMetadata_t, ptr %16, i32 0, i32 1
  %229 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %0, i32 0, i32 4, i32 1
  br label %230

230:                                              ; preds = %640, %195
  %231 = phi ptr [ %201, %195 ], [ %641, %640 ]
  %232 = phi ptr [ %203, %195 ], [ %642, %640 ]
  %233 = phi ptr [ %3, %195 ], [ %643, %640 ]
  %234 = phi ptr [ %1, %195 ], [ %644, %640 ]
  %235 = phi ptr [ %207, %195 ], [ %645, %640 ]
  %236 = phi ptr [ %208, %195 ], [ %646, %640 ]
  %237 = phi ptr [ %209, %195 ], [ %647, %640 ]
  %238 = phi i32 [ 0, %195 ], [ %648, %640 ]
  %239 = phi i32 [ 0, %195 ], [ %649, %640 ]
  %240 = phi i32 [ %214, %195 ], [ %650, %640 ]
  %241 = phi i32 [ 1, %195 ], [ %651, %640 ]
  br i1 %215, label %265, label %242

242:                                              ; preds = %230
  %243 = getelementptr %struct.seqDef_s, ptr %231, i32 %239
  %244 = icmp eq ptr %243, %217
  %245 = zext i1 %244 to i32
  %246 = getelementptr %struct.seqDef_s, ptr %231, i32 %239, i32 1
  %247 = load i16, ptr %246, align 4, !noalias !9
  %248 = zext i16 %247 to i32
  %249 = load i32, ptr %218, align 4, !noalias !9
  %250 = load ptr, ptr %17, align 4, !noalias !9
  %251 = ptrtoint ptr %243 to i32
  %252 = ptrtoint ptr %250 to i32
  %253 = sub i32 %251, %252
  %254 = ashr exact i32 %253, 3
  %255 = icmp eq i32 %249, %254
  br i1 %255, label %256, label %261

256:                                              ; preds = %242
  %257 = load i32, ptr %219, align 4, !noalias !9
  %258 = icmp eq i32 %257, 1
  %259 = add nuw nsw i32 %248, 65535
  %260 = select i1 %258, i32 %259, i32 %248
  br label %261

261:                                              ; preds = %256, %242
  %262 = phi i32 [ %248, %242 ], [ %260, %256 ]
  %263 = add i32 %262, %238
  %264 = add i32 %239, 1
  br label %265

265:                                              ; preds = %261, %230
  %266 = phi i32 [ %263, %261 ], [ %238, %230 ]
  %267 = phi i32 [ %264, %261 ], [ %239, %230 ]
  %268 = phi i32 [ %245, %261 ], [ 1, %230 ]
  %269 = icmp ne i32 %268, 0
  %270 = ptrtoint ptr %232 to i32
  %271 = sub i32 %216, %270
  %272 = select i1 %269, i32 %271, i32 %266
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #5
  store i32 255, ptr %10, align 4
  %273 = load i32, ptr %16, align 4
  switch i32 %273, label %286 [
    i32 0, label %287
    i32 1, label %274
    i32 2, label %275
    i32 3, label %275
  ]

274:                                              ; preds = %265
  br label %287

275:                                              ; preds = %265, %265
  %276 = call i32 @HIST_count_wksp(ptr noundef %200, ptr noundef nonnull %10, ptr noundef %232, i32 noundef %272, ptr noundef %200, i32 noundef 6616) #5
  %277 = icmp ult i32 %276, -119
  br i1 %277, label %278, label %287

278:                                              ; preds = %275
  %279 = load i32, ptr %10, align 4
  %280 = call i32 @HUF_estimateCompressedSize(ptr noundef %197, ptr noundef %200, i32 noundef %279) #5
  %281 = icmp eq i32 %240, 0
  %282 = load i32, ptr %220, align 4
  %283 = select i1 %281, i32 0, i32 %282
  %284 = add i32 %280, 3
  %285 = add i32 %284, %283
  br label %287

286:                                              ; preds = %265
  br label %287

287:                                              ; preds = %286, %278, %275, %274, %265
  %288 = phi i32 [ 1, %274 ], [ 0, %286 ], [ %272, %265 ], [ %285, %278 ], [ %272, %275 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #5
  %289 = load i32, ptr %222, align 4
  %290 = getelementptr i8, ptr %237, i32 %267
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #5
  store i32 31, ptr %9, align 4
  %291 = call i32 @HIST_countFast_wksp(ptr noundef %200, ptr noundef nonnull %9, ptr noundef %237, i32 noundef %267, ptr noundef %200, i32 noundef 6616) #5
  switch i32 %289, label %297 [
    i32 0, label %292
    i32 1, label %306
  ]

292:                                              ; preds = %287
  %293 = load i32, ptr %9, align 4
  %294 = icmp ugt i32 %293, 28
  br i1 %294, label %309, label %295

295:                                              ; preds = %292
  %296 = call i32 @ZSTD_crossEntropyCost(ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, ptr noundef %200, i32 noundef %293) #5
  br label %303

297:                                              ; preds = %287
  %298 = and i32 %289, -2
  %299 = icmp eq i32 %298, 2
  br i1 %299, label %300, label %306

300:                                              ; preds = %297
  %301 = load i32, ptr %9, align 4
  %302 = call i32 @ZSTD_fseBitCost(ptr noundef %221, ptr noundef %200, i32 noundef %301) #5
  br label %303

303:                                              ; preds = %300, %295
  %304 = phi i32 [ %302, %300 ], [ %296, %295 ]
  %305 = icmp ult i32 %304, -119
  br i1 %305, label %306, label %309

306:                                              ; preds = %303, %297, %287
  %307 = phi i32 [ %304, %303 ], [ 0, %297 ], [ 0, %287 ]
  %308 = icmp ugt ptr %290, %237
  br i1 %308, label %311, label %319

309:                                              ; preds = %303, %292
  %310 = mul i32 %267, 10
  br label %322

311:                                              ; preds = %311, %306
  %312 = phi i32 [ %316, %311 ], [ %307, %306 ]
  %313 = phi ptr [ %317, %311 ], [ %237, %306 ]
  %314 = load i8, ptr %313, align 1
  %315 = zext i8 %314 to i32
  %316 = add i32 %312, %315
  %317 = getelementptr i8, ptr %313, i32 1
  %318 = icmp eq ptr %317, %290
  br i1 %318, label %319, label %311

319:                                              ; preds = %311, %306
  %320 = phi i32 [ %307, %306 ], [ %316, %311 ]
  %321 = lshr i32 %320, 3
  br label %322

322:                                              ; preds = %319, %309
  %323 = phi i32 [ %310, %309 ], [ %321, %319 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #5
  %324 = load i32, ptr %112, align 4
  %325 = getelementptr i8, ptr %235, i32 %267
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #5
  store i32 35, ptr %8, align 4
  %326 = call i32 @HIST_countFast_wksp(ptr noundef %200, ptr noundef nonnull %8, ptr noundef %235, i32 noundef %267, ptr noundef %200, i32 noundef 6616) #5
  switch i32 %324, label %332 [
    i32 0, label %327
    i32 1, label %341
  ]

327:                                              ; preds = %322
  %328 = load i32, ptr %8, align 4
  %329 = icmp ugt i32 %328, 35
  br i1 %329, label %344, label %330

330:                                              ; preds = %327
  %331 = call i32 @ZSTD_crossEntropyCost(ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, ptr noundef %200, i32 noundef %328) #5
  br label %338

332:                                              ; preds = %322
  %333 = and i32 %324, -2
  %334 = icmp eq i32 %333, 2
  br i1 %334, label %335, label %341

335:                                              ; preds = %332
  %336 = load i32, ptr %8, align 4
  %337 = call i32 @ZSTD_fseBitCost(ptr noundef %223, ptr noundef %200, i32 noundef %336) #5
  br label %338

338:                                              ; preds = %335, %330
  %339 = phi i32 [ %337, %335 ], [ %331, %330 ]
  %340 = icmp ult i32 %339, -119
  br i1 %340, label %341, label %344

341:                                              ; preds = %338, %332, %322
  %342 = phi i32 [ %339, %338 ], [ 0, %332 ], [ 0, %322 ]
  %343 = icmp ugt ptr %325, %235
  br i1 %343, label %346, label %356

344:                                              ; preds = %338, %327
  %345 = mul i32 %267, 10
  br label %359

346:                                              ; preds = %346, %341
  %347 = phi i32 [ %353, %346 ], [ %342, %341 ]
  %348 = phi ptr [ %354, %346 ], [ %235, %341 ]
  %349 = load i8, ptr %348, align 1
  %350 = zext i8 %349 to i32
  %351 = getelementptr i32, ptr @LL_bits, i32 %350
  %352 = load i32, ptr %351, align 4
  %353 = add i32 %352, %347
  %354 = getelementptr i8, ptr %348, i32 1
  %355 = icmp eq ptr %354, %325
  br i1 %355, label %356, label %346

356:                                              ; preds = %346, %341
  %357 = phi i32 [ %342, %341 ], [ %353, %346 ]
  %358 = lshr i32 %357, 3
  br label %359

359:                                              ; preds = %356, %344
  %360 = phi i32 [ %345, %344 ], [ %358, %356 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #5
  %361 = load i32, ptr %224, align 4
  %362 = getelementptr i8, ptr %236, i32 %267
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  store i32 52, ptr %7, align 4
  %363 = call i32 @HIST_countFast_wksp(ptr noundef %200, ptr noundef nonnull %7, ptr noundef %236, i32 noundef %267, ptr noundef %200, i32 noundef 6616) #5
  switch i32 %361, label %369 [
    i32 0, label %364
    i32 1, label %378
  ]

364:                                              ; preds = %359
  %365 = load i32, ptr %7, align 4
  %366 = icmp ugt i32 %365, 52
  br i1 %366, label %381, label %367

367:                                              ; preds = %364
  %368 = call i32 @ZSTD_crossEntropyCost(ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, ptr noundef %200, i32 noundef %365) #5
  br label %375

369:                                              ; preds = %359
  %370 = and i32 %361, -2
  %371 = icmp eq i32 %370, 2
  br i1 %371, label %372, label %378

372:                                              ; preds = %369
  %373 = load i32, ptr %7, align 4
  %374 = call i32 @ZSTD_fseBitCost(ptr noundef %225, ptr noundef %200, i32 noundef %373) #5
  br label %375

375:                                              ; preds = %372, %367
  %376 = phi i32 [ %374, %372 ], [ %368, %367 ]
  %377 = icmp ult i32 %376, -119
  br i1 %377, label %378, label %381

378:                                              ; preds = %375, %369, %359
  %379 = phi i32 [ %376, %375 ], [ 0, %369 ], [ 0, %359 ]
  %380 = icmp ugt ptr %362, %236
  br i1 %380, label %383, label %393

381:                                              ; preds = %375, %364
  %382 = mul i32 %267, 10
  br label %396

383:                                              ; preds = %383, %378
  %384 = phi i32 [ %390, %383 ], [ %379, %378 ]
  %385 = phi ptr [ %391, %383 ], [ %236, %378 ]
  %386 = load i8, ptr %385, align 1
  %387 = zext i8 %386 to i32
  %388 = getelementptr i32, ptr @ML_bits, i32 %387
  %389 = load i32, ptr %388, align 4
  %390 = add i32 %389, %384
  %391 = getelementptr i8, ptr %385, i32 1
  %392 = icmp eq ptr %391, %362
  br i1 %392, label %393, label %383

393:                                              ; preds = %383, %378
  %394 = phi i32 [ %379, %378 ], [ %390, %383 ]
  %395 = lshr i32 %394, 3
  br label %396

396:                                              ; preds = %393, %381
  %397 = phi i32 [ %382, %381 ], [ %395, %393 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  %398 = icmp eq i32 %241, 0
  %399 = load i32, ptr %193, align 4
  %400 = select i1 %398, i32 0, i32 %399
  %401 = add i32 %288, 6
  %402 = add i32 %401, %323
  %403 = add i32 %402, %360
  %404 = add i32 %403, %397
  %405 = add i32 %404, %400
  %406 = icmp ugt i32 %405, %211
  %407 = select i1 %406, i1 true, i1 %269
  br i1 %407, label %408, label %640

408:                                              ; preds = %396
  %409 = getelementptr %struct.seqDef_s, ptr %231, i32 %267
  %410 = ptrtoint ptr %409 to i32
  %411 = shl i32 %267, 3
  %412 = icmp sgt i32 %411, 0
  br i1 %412, label %413, label %441

413:                                              ; preds = %408
  %414 = ptrtoint ptr %231 to i32
  %415 = load i32, ptr %218, align 4, !noalias !12
  %416 = load ptr, ptr %17, align 4, !noalias !12
  %417 = ptrtoint ptr %416 to i32
  br label %418

418:                                              ; preds = %434, %413
  %419 = phi i32 [ %414, %413 ], [ %438, %434 ]
  %420 = phi i32 [ 0, %413 ], [ %436, %434 ]
  %421 = phi ptr [ %231, %413 ], [ %437, %434 ]
  %422 = getelementptr inbounds %struct.seqDef_s, ptr %421, i32 0, i32 2
  %423 = load i16, ptr %422, align 2, !noalias !12
  %424 = zext i16 %423 to i32
  %425 = add nuw nsw i32 %424, 3
  %426 = sub i32 %419, %417
  %427 = ashr exact i32 %426, 3
  %428 = icmp eq i32 %415, %427
  br i1 %428, label %429, label %434

429:                                              ; preds = %418
  %430 = load i32, ptr %219, align 4, !noalias !12
  %431 = icmp eq i32 %430, 2
  %432 = add nuw nsw i32 %424, 65538
  %433 = select i1 %431, i32 %432, i32 %425
  br label %434

434:                                              ; preds = %429, %418
  %435 = phi i32 [ %425, %418 ], [ %433, %429 ]
  %436 = add i32 %435, %420
  %437 = getelementptr %struct.seqDef_s, ptr %421, i32 1
  %438 = ptrtoint ptr %437 to i32
  %439 = sub i32 %410, %438
  %440 = icmp sgt i32 %439, 0
  br i1 %440, label %418, label %441

441:                                              ; preds = %434, %408
  %442 = phi i32 [ 0, %408 ], [ %436, %434 ]
  %443 = add i32 %442, %272
  %444 = ptrtoint ptr %234 to i32
  %445 = sub i32 %226, %444
  %446 = select i1 %227, i1 %269, i1 false
  %447 = getelementptr i8, ptr %234, i32 %445
  %448 = getelementptr i8, ptr %234, i32 3
  %449 = ptrtoint ptr %447 to i32
  %450 = add i32 %445, -3
  %451 = icmp eq i32 %240, 0
  %452 = select i1 %451, i32 0, i32 200
  %453 = sub nuw nsw i32 1024, %452
  %454 = icmp ugt i32 %453, %272
  %455 = select i1 %454, i32 3, i32 4
  %456 = sub nuw nsw i32 16384, %452
  %457 = icmp ule i32 %456, %272
  %458 = zext i1 %457 to i32
  %459 = add nuw nsw i32 %455, %458
  %460 = getelementptr i8, ptr %448, i32 %459
  %461 = icmp eq i32 %459, 3
  %462 = load i32, ptr %16, align 4
  %463 = select i1 %451, i32 3, i32 %462
  %464 = icmp eq i32 %272, 0
  br i1 %464, label %466, label %465

465:                                              ; preds = %441
  switch i32 %462, label %470 [
    i32 0, label %466
    i32 1, label %468
  ]

466:                                              ; preds = %465, %441
  %467 = call i32 @ZSTD_noCompressLiterals(ptr noundef %448, i32 noundef %450, ptr noundef %232, i32 noundef %272) #5
  br label %538

468:                                              ; preds = %465
  %469 = call i32 @ZSTD_compressRleLiteralsBlock(ptr noundef %448, i32 noundef %450, ptr noundef %232, i32 noundef %272) #5
  br label %538

470:                                              ; preds = %465
  %471 = xor i1 %451, true
  %472 = icmp eq i32 %462, 2
  %473 = select i1 %471, i1 %472, i1 false
  br i1 %473, label %474, label %478

474:                                              ; preds = %470
  %475 = load i32, ptr %220, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %460, ptr align 4 %228, i32 %475, i1 false) #5
  %476 = load i32, ptr %220, align 4
  %477 = getelementptr i8, ptr %460, i32 %476
  br label %478

478:                                              ; preds = %474, %470
  %479 = phi ptr [ %477, %474 ], [ %460, %470 ]
  %480 = phi i32 [ %476, %474 ], [ 0, %470 ]
  %481 = ptrtoint ptr %479 to i32
  %482 = sub i32 %449, %481
  br i1 %461, label %483, label %485

483:                                              ; preds = %478
  %484 = call i32 @HUF_compress1X_usingCTable(ptr noundef %479, i32 noundef %482, ptr noundef %232, i32 noundef %272, ptr noundef %197) #5
  br label %487

485:                                              ; preds = %478
  %486 = call i32 @HUF_compress4X_usingCTable(ptr noundef %479, i32 noundef %482, ptr noundef %232, i32 noundef %272, ptr noundef %197) #5
  br label %487

487:                                              ; preds = %485, %483
  %488 = phi i32 [ %484, %483 ], [ %486, %485 ]
  %489 = getelementptr i8, ptr %479, i32 %488
  %490 = add i32 %488, %480
  %491 = add i32 %488, -1
  %492 = icmp ult i32 %491, -120
  br i1 %492, label %493, label %640

493:                                              ; preds = %487
  %494 = icmp ult i32 %490, %272
  %495 = select i1 %471, i1 true, i1 %494
  br i1 %495, label %498, label %496

496:                                              ; preds = %493
  %497 = call i32 @ZSTD_noCompressLiterals(ptr noundef %448, i32 noundef %450, ptr noundef %232, i32 noundef %272) #5
  br label %538

498:                                              ; preds = %493
  %499 = icmp ugt i32 %490, 1023
  %500 = select i1 %499, i32 4, i32 3
  %501 = icmp ugt i32 %490, 16383
  %502 = zext i1 %501 to i32
  %503 = add nuw nsw i32 %500, %502
  %504 = icmp ult i32 %459, %503
  br i1 %504, label %505, label %507

505:                                              ; preds = %498
  %506 = call i32 @ZSTD_noCompressLiterals(ptr noundef %448, i32 noundef %450, ptr noundef %232, i32 noundef %272) #5
  br label %538

507:                                              ; preds = %498
  switch i32 %459, label %534 [
    i32 3, label %508
    i32 4, label %519
    i32 5, label %525
  ]

508:                                              ; preds = %507
  %509 = select i1 %461, i32 0, i32 4
  %510 = shl i32 %272, 4
  %511 = shl i32 %490, 14
  %512 = or i32 %509, %510
  %513 = add i32 %512, %463
  %514 = add i32 %513, %511
  %515 = trunc i32 %514 to i16
  store i16 %515, ptr %448, align 1
  %516 = lshr i32 %514, 16
  %517 = trunc i32 %516 to i8
  %518 = getelementptr i8, ptr %234, i32 5
  store i8 %517, ptr %518, align 1
  br label %534

519:                                              ; preds = %507
  %520 = shl i32 %272, 4
  %521 = shl i32 %490, 18
  %522 = or i32 %520, 8
  %523 = add i32 %522, %463
  %524 = add i32 %523, %521
  store i32 %524, ptr %448, align 1
  br label %534

525:                                              ; preds = %507
  %526 = shl i32 %272, 4
  %527 = shl i32 %490, 22
  %528 = or i32 %526, 12
  %529 = add i32 %528, %463
  %530 = add i32 %529, %527
  store i32 %530, ptr %448, align 1
  %531 = lshr i32 %490, 10
  %532 = trunc i32 %531 to i8
  %533 = getelementptr i8, ptr %234, i32 7
  store i8 %532, ptr %533, align 1
  br label %534

534:                                              ; preds = %525, %519, %508, %507
  %535 = ptrtoint ptr %489 to i32
  %536 = ptrtoint ptr %448 to i32
  %537 = sub i32 %535, %536
  br label %538

538:                                              ; preds = %534, %505, %496, %468, %466
  %539 = phi i1 [ false, %534 ], [ true, %505 ], [ true, %496 ], [ true, %468 ], [ true, %466 ]
  %540 = phi i32 [ %537, %534 ], [ %506, %505 ], [ %497, %496 ], [ %469, %468 ], [ %467, %466 ]
  %541 = icmp ult i32 %540, -119
  br i1 %541, label %542, label %758

542:                                              ; preds = %538
  %543 = icmp eq i32 %540, 0
  br i1 %543, label %640, label %544

544:                                              ; preds = %542
  %545 = getelementptr i8, ptr %448, i32 %540
  %546 = ptrtoint ptr %545 to i32
  %547 = sub i32 %449, %546
  %548 = load i32, ptr %229, align 4
  %549 = icmp ugt i32 %548, 25
  %550 = zext i1 %549 to i32
  %551 = icmp slt i32 %547, 4
  br i1 %551, label %758, label %552

552:                                              ; preds = %544
  %553 = icmp ult i32 %267, 127
  br i1 %553, label %568, label %554

554:                                              ; preds = %552
  %555 = icmp ult i32 %267, 32512
  br i1 %555, label %556, label %563

556:                                              ; preds = %554
  %557 = lshr i32 %267, 8
  %558 = trunc i32 %557 to i8
  %559 = xor i8 %558, -128
  store i8 %559, ptr %545, align 1
  %560 = trunc i32 %267 to i8
  %561 = getelementptr i8, ptr %545, i32 1
  store i8 %560, ptr %561, align 1
  %562 = getelementptr i8, ptr %545, i32 2
  br label %572

563:                                              ; preds = %554
  store i8 -1, ptr %545, align 1
  %564 = getelementptr i8, ptr %545, i32 1
  %565 = trunc i32 %267 to i16
  %566 = add i16 %565, -32512
  store i16 %566, ptr %564, align 1
  %567 = getelementptr i8, ptr %545, i32 3
  br label %572

568:                                              ; preds = %552
  %569 = trunc i32 %267 to i8
  %570 = getelementptr i8, ptr %545, i32 1
  store i8 %569, ptr %545, align 1
  %571 = icmp eq i32 %267, 0
  br i1 %571, label %617, label %572

572:                                              ; preds = %568, %563, %556
  %573 = phi ptr [ %570, %568 ], [ %567, %563 ], [ %562, %556 ]
  %574 = getelementptr i8, ptr %573, i32 1
  br i1 %398, label %575, label %580

575:                                              ; preds = %572
  store i8 -4, ptr %573, align 1
  %576 = ptrtoint ptr %574 to i32
  %577 = sub i32 %449, %576
  %578 = call i32 @ZSTD_encodeSequences(ptr noundef %574, i32 noundef %577, ptr noundef %225, ptr noundef %236, ptr noundef %221, ptr noundef %237, ptr noundef %223, ptr noundef %235, ptr noundef %231, i32 noundef %267, i32 noundef %550, i32 noundef %199) #5
  %579 = icmp ult i32 %578, -119
  br i1 %579, label %597, label %758

580:                                              ; preds = %572
  %581 = load i32, ptr %112, align 4
  %582 = load i32, ptr %222, align 4
  %583 = load i32, ptr %224, align 4
  %584 = shl i32 %581, 6
  %585 = shl i32 %582, 4
  %586 = add i32 %585, %584
  %587 = shl i32 %583, 2
  %588 = add i32 %586, %587
  %589 = trunc i32 %588 to i8
  store i8 %589, ptr %573, align 1
  %590 = load i32, ptr %193, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %574, ptr align 4 %131, i32 %590, i1 false) #5
  %591 = load i32, ptr %193, align 4
  %592 = getelementptr i8, ptr %574, i32 %591
  %593 = ptrtoint ptr %592 to i32
  %594 = sub i32 %449, %593
  %595 = call i32 @ZSTD_encodeSequences(ptr noundef %592, i32 noundef %594, ptr noundef %225, ptr noundef %236, ptr noundef %221, ptr noundef %237, ptr noundef %223, ptr noundef %235, ptr noundef %231, i32 noundef %267, i32 noundef %550, i32 noundef %199) #5
  %596 = icmp ult i32 %595, -119
  br i1 %596, label %599, label %758

597:                                              ; preds = %575
  %598 = getelementptr i8, ptr %574, i32 %578
  br label %606

599:                                              ; preds = %580
  %600 = getelementptr i8, ptr %592, i32 %595
  %601 = load i32, ptr %133, align 4
  %602 = icmp ne i32 %601, 0
  %603 = add i32 %601, %595
  %604 = icmp ult i32 %603, 4
  %605 = and i1 %602, %604
  br i1 %605, label %640, label %606

606:                                              ; preds = %599, %597
  %607 = phi ptr [ %600, %599 ], [ %598, %597 ]
  %608 = ptrtoint ptr %607 to i32
  %609 = ptrtoint ptr %573 to i32
  %610 = sub i32 %608, %609
  %611 = icmp slt i32 %610, 4
  br i1 %611, label %640, label %612

612:                                              ; preds = %606
  %613 = sub i32 %608, %546
  %614 = icmp ult i32 %613, -119
  br i1 %614, label %615, label %758

615:                                              ; preds = %612
  %616 = icmp eq i32 %613, 0
  br i1 %616, label %640, label %617

617:                                              ; preds = %615, %568
  %618 = phi i1 [ true, %568 ], [ false, %615 ]
  %619 = phi i32 [ 1, %568 ], [ %613, %615 ]
  %620 = getelementptr i8, ptr %545, i32 %619
  %621 = ptrtoint ptr %620 to i32
  %622 = sub i32 %621, %444
  %623 = shl i32 %622, 3
  %624 = select i1 %446, i32 -19, i32 -20
  %625 = add i32 %623, %624
  %626 = trunc i32 %625 to i16
  store i16 %626, ptr %234, align 1
  %627 = lshr i32 %625, 16
  %628 = trunc i32 %627 to i8
  %629 = getelementptr i8, ptr %234, i32 2
  store i8 %628, ptr %629, align 1
  %630 = icmp ult i32 %622, -119
  br i1 %630, label %631, label %758

631:                                              ; preds = %617
  %632 = icmp ne i32 %622, 0
  %633 = icmp ult i32 %622, %443
  %634 = select i1 %632, i1 %633, i1 false
  br i1 %634, label %635, label %640

635:                                              ; preds = %631
  %636 = getelementptr i8, ptr %233, i32 %443
  %637 = getelementptr i8, ptr %232, i32 %272
  %638 = select i1 %539, i32 %240, i32 0
  %639 = select i1 %618, i32 %241, i32 0
  br label %640

640:                                              ; preds = %635, %631, %615, %606, %599, %542, %487, %396
  %641 = phi ptr [ %231, %396 ], [ %409, %635 ], [ %231, %631 ], [ %231, %606 ], [ %231, %599 ], [ %231, %615 ], [ %231, %487 ], [ %231, %542 ]
  %642 = phi ptr [ %232, %396 ], [ %637, %635 ], [ %232, %631 ], [ %232, %606 ], [ %232, %599 ], [ %232, %615 ], [ %232, %487 ], [ %232, %542 ]
  %643 = phi ptr [ %233, %396 ], [ %636, %635 ], [ %233, %631 ], [ %233, %606 ], [ %233, %599 ], [ %233, %615 ], [ %233, %487 ], [ %233, %542 ]
  %644 = phi ptr [ %234, %396 ], [ %620, %635 ], [ %234, %631 ], [ %234, %606 ], [ %234, %599 ], [ %234, %615 ], [ %234, %487 ], [ %234, %542 ]
  %645 = phi ptr [ %235, %396 ], [ %325, %635 ], [ %235, %631 ], [ %235, %606 ], [ %235, %599 ], [ %235, %615 ], [ %235, %487 ], [ %235, %542 ]
  %646 = phi ptr [ %236, %396 ], [ %362, %635 ], [ %236, %631 ], [ %236, %606 ], [ %236, %599 ], [ %236, %615 ], [ %236, %487 ], [ %236, %542 ]
  %647 = phi ptr [ %237, %396 ], [ %290, %635 ], [ %237, %631 ], [ %237, %606 ], [ %237, %599 ], [ %237, %615 ], [ %237, %487 ], [ %237, %542 ]
  %648 = phi i32 [ %272, %396 ], [ 0, %635 ], [ %272, %631 ], [ %272, %606 ], [ %272, %599 ], [ %272, %615 ], [ %272, %487 ], [ %272, %542 ]
  %649 = phi i32 [ %267, %396 ], [ 0, %635 ], [ %267, %631 ], [ %267, %606 ], [ %267, %599 ], [ %267, %615 ], [ %267, %487 ], [ %267, %542 ]
  %650 = phi i32 [ %240, %396 ], [ %638, %635 ], [ %240, %631 ], [ %240, %606 ], [ %240, %599 ], [ %240, %615 ], [ %240, %487 ], [ %240, %542 ]
  %651 = phi i32 [ %241, %396 ], [ %639, %635 ], [ %241, %631 ], [ %241, %606 ], [ %241, %599 ], [ %241, %615 ], [ %241, %487 ], [ %241, %542 ]
  br i1 %269, label %652, label %230

652:                                              ; preds = %640
  %653 = icmp eq i32 %650, 0
  br i1 %653, label %655, label %654

654:                                              ; preds = %652
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(1028) %197, ptr noundef align 4 dereferenceable(1028) %196, i32 1028, i1 false) #5
  br label %655

655:                                              ; preds = %654, %652
  %656 = icmp eq i32 %651, 0
  br i1 %656, label %669, label %657

657:                                              ; preds = %655
  %658 = load i32, ptr %112, align 4
  %659 = add i32 %658, -1
  %660 = icmp ult i32 %659, 2
  br i1 %660, label %758, label %661

661:                                              ; preds = %657
  %662 = load i32, ptr %224, align 4
  %663 = add i32 %662, -1
  %664 = icmp ult i32 %663, 2
  br i1 %664, label %758, label %665

665:                                              ; preds = %661
  %666 = load i32, ptr %222, align 4
  %667 = add i32 %666, -3
  %668 = icmp ult i32 %667, -2
  br i1 %668, label %669, label %758

669:                                              ; preds = %665, %655
  %670 = icmp ult ptr %643, %205
  br i1 %670, label %671, label %753

671:                                              ; preds = %669
  %672 = ptrtoint ptr %644 to i32
  %673 = sub i32 %226, %672
  %674 = ptrtoint ptr %205 to i32
  %675 = ptrtoint ptr %643 to i32
  %676 = sub i32 %674, %675
  %677 = add i32 %676, 3
  %678 = icmp ugt i32 %677, %673
  br i1 %678, label %758, label %679

679:                                              ; preds = %671
  %680 = shl i32 %676, 3
  %681 = add i32 %680, %5
  %682 = trunc i32 %681 to i16
  store i16 %682, ptr %644, align 1
  %683 = lshr i32 %681, 16
  %684 = trunc i32 %683 to i8
  %685 = getelementptr i8, ptr %644, i32 2
  store i8 %684, ptr %685, align 1
  %686 = getelementptr i8, ptr %644, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %686, ptr align 1 %643, i32 %676, i1 false) #5
  %687 = icmp ult i32 %677, -119
  br i1 %687, label %688, label %758

688:                                              ; preds = %679
  %689 = getelementptr i8, ptr %644, i32 %677
  %690 = icmp ult ptr %641, %202
  br i1 %690, label %691, label %753

691:                                              ; preds = %688
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #5
  %692 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %196, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef align 4 dereferenceable(12) %692, i32 12, i1 false) #5
  %693 = icmp ult ptr %201, %641
  br i1 %693, label %694, label %751

694:                                              ; preds = %691
  %695 = load i32, ptr %218, align 4, !noalias !15
  %696 = load ptr, ptr %17, align 4, !noalias !15
  %697 = ptrtoint ptr %696 to i32
  %698 = getelementptr inbounds i8, ptr %11, i32 4
  %699 = getelementptr inbounds i8, ptr %11, i32 8
  br label %700

700:                                              ; preds = %745, %694
  %701 = phi ptr [ %201, %694 ], [ %749, %745 ]
  %702 = load i32, ptr %701, align 4
  %703 = add i32 %702, -1
  %704 = getelementptr inbounds %struct.seqDef_s, ptr %701, i32 0, i32 1
  %705 = load i16, ptr %704, align 4, !noalias !15
  %706 = zext i16 %705 to i32
  %707 = ptrtoint ptr %701 to i32
  %708 = sub i32 %707, %697
  %709 = ashr exact i32 %708, 3
  %710 = icmp eq i32 %695, %709
  br i1 %710, label %711, label %716

711:                                              ; preds = %700
  %712 = load i32, ptr %219, align 4, !noalias !15
  %713 = icmp eq i32 %712, 1
  %714 = add nuw nsw i32 %706, 65535
  %715 = select i1 %713, i32 %714, i32 %706
  br label %716

716:                                              ; preds = %711, %700
  %717 = phi i32 [ %706, %700 ], [ %715, %711 ]
  %718 = icmp ugt i32 %703, 2
  br i1 %718, label %719, label %723

719:                                              ; preds = %716
  %720 = load i32, ptr %698, align 4, !noalias !18
  %721 = load i32, ptr %11, align 4, !noalias !18
  %722 = add i32 %702, -3
  br label %745

723:                                              ; preds = %716
  %724 = icmp eq i32 %717, 0
  %725 = zext i1 %724 to i32
  %726 = add nuw nsw i32 %703, %725
  switch i32 %726, label %730 [
    i32 0, label %741
    i32 3, label %727
  ]

727:                                              ; preds = %723
  %728 = load i32, ptr %11, align 4, !noalias !18
  %729 = add i32 %728, -1
  br label %734

730:                                              ; preds = %723
  %731 = getelementptr i32, ptr %11, i32 %726
  %732 = load i32, ptr %731, align 4, !noalias !18
  %733 = load i32, ptr %11, align 4, !noalias !18
  br label %734

734:                                              ; preds = %730, %727
  %735 = phi i32 [ %728, %727 ], [ %733, %730 ]
  %736 = phi i32 [ %729, %727 ], [ %732, %730 ]
  %737 = icmp ugt i32 %726, 1
  %738 = select i1 %737, i32 1, i32 2
  %739 = getelementptr i32, ptr %11, i32 %738
  %740 = load i32, ptr %739, align 4, !noalias !18
  br label %745

741:                                              ; preds = %723
  %742 = load i32, ptr %11, align 4
  %743 = load i32, ptr %698, align 4
  %744 = load i32, ptr %699, align 4
  br label %745

745:                                              ; preds = %741, %734, %719
  %746 = phi i32 [ %722, %719 ], [ %736, %734 ], [ %742, %741 ]
  %747 = phi i32 [ %721, %719 ], [ %735, %734 ], [ %743, %741 ]
  %748 = phi i32 [ %720, %719 ], [ %740, %734 ], [ %744, %741 ]
  store i32 %746, ptr %11, align 4
  store i32 %747, ptr %698, align 4
  store i32 %748, ptr %699, align 4
  %749 = getelementptr %struct.seqDef_s, ptr %701, i32 1
  %750 = icmp ult ptr %749, %641
  br i1 %750, label %700, label %751

751:                                              ; preds = %745, %691
  %752 = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %197, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %752, ptr noundef nonnull align 4 dereferenceable(12) %11, i32 12, i1 false) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #5
  br label %753

753:                                              ; preds = %751, %688, %669
  %754 = phi ptr [ %689, %751 ], [ %644, %669 ], [ %689, %688 ]
  %755 = ptrtoint ptr %754 to i32
  %756 = ptrtoint ptr %1 to i32
  %757 = sub i32 %755, %756
  br label %758

758:                                              ; preds = %753, %679, %671, %665, %661, %657, %617, %612, %580, %575, %544, %538, %188, %187, %168, %149, %105, %103
  %759 = phi i32 [ %192, %188 ], [ %757, %753 ], [ 0, %665 ], [ 0, %657 ], [ 0, %661 ], [ %677, %679 ], [ -70, %671 ], [ %104, %103 ], [ %83, %105 ], [ %144, %149 ], [ %163, %168 ], [ %182, %187 ], [ %622, %617 ], [ %595, %580 ], [ -70, %544 ], [ %578, %575 ], [ %613, %612 ], [ %540, %538 ]
  call void @llvm.lifetime.end.p0(i64 292, ptr nonnull %16) #5
  ret i32 %759
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HIST_count_wksp(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_validateCTable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_optimalTableLog(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_estimateCompressedSize(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_writeCTable_wksp(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_seqToCodes(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HIST_countFast_wksp(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_selectEncodingType(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_buildCTable(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_crossEntropyCost(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_fseBitCost(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_noCompressLiterals(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressRleLiteralsBlock(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_compress1X_usingCTable(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_compress4X_usingCTable(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_encodeSequences(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }

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
!9 = !{!10}
!10 = distinct !{!10, !11, !"ZSTD_getSequenceLength: argument 0"}
!11 = distinct !{!11, !"ZSTD_getSequenceLength"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"ZSTD_getSequenceLength: argument 0"}
!14 = distinct !{!14, !"ZSTD_getSequenceLength"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"ZSTD_getSequenceLength: argument 0"}
!17 = distinct !{!17, !"ZSTD_getSequenceLength"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"ZSTD_updateRep: argument 0"}
!20 = distinct !{!20, !"ZSTD_updateRep"}
