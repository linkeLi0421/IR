; ModuleID = '/llk/IR/lib/zstd/decompress/zstd_decompress.c_pt.bc'
source_filename = "../lib/zstd/decompress/zstd_decompress.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.ZSTD_DCtx_s = type { ptr, ptr, ptr, ptr, %struct.ZSTD_entropyDTables_t, [640 x i32], ptr, ptr, ptr, ptr, i32, %struct.ZSTD_frameHeader, i64, i64, i32, i32, i32, i32, %struct.xxh64_state, i32, i32, i32, i32, ptr, %struct.ZSTD_customMem, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.ZSTD_outBuffer_s, [131104 x i8], [18 x i8], i32 }
%struct.ZSTD_entropyDTables_t = type { [513 x %struct.ZSTD_seqSymbol], [257 x %struct.ZSTD_seqSymbol], [513 x %struct.ZSTD_seqSymbol], [4097 x i32], [3 x i32], [157 x i32] }
%struct.ZSTD_seqSymbol = type { i16, i8, i8, i32 }
%struct.ZSTD_frameHeader = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.xxh64_state = type { i64, i64, i64, i64, i64, [4 x i64], i32 }
%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.ZSTD_outBuffer_s = type { ptr, i32, i32 }
%struct.ZSTD_frameSizeInfo = type { i32, i64 }
%struct.blockProperties_t = type { i32, i32, i32 }
%struct.ZSTD_DDictHashSet = type { ptr, i32, i32 }
%struct.ZSTD_bounds = type { i32, i32, i32 }
%struct.ZSTD_inBuffer_s = type { ptr, i32, i32 }

@OF_base = internal constant [32 x i32] [i32 0, i32 1, i32 1, i32 5, i32 13, i32 29, i32 61, i32 125, i32 253, i32 509, i32 1021, i32 2045, i32 4093, i32 8189, i32 16381, i32 32765, i32 65533, i32 131069, i32 262141, i32 524285, i32 1048573, i32 2097149, i32 4194301, i32 8388605, i32 16777213, i32 33554429, i32 67108861, i32 134217725, i32 268435453, i32 536870909, i32 1073741821, i32 2147483645], align 4
@OF_bits = internal constant [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31], align 4
@ML_base = internal constant [53 x i32] [i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 37, i32 39, i32 41, i32 43, i32 47, i32 51, i32 59, i32 67, i32 83, i32 99, i32 131, i32 259, i32 515, i32 1027, i32 2051, i32 4099, i32 8195, i32 16387, i32 32771, i32 65539], align 4
@ML_bits = internal constant [53 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], align 4
@LL_base = internal constant [36 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 18, i32 20, i32 22, i32 24, i32 28, i32 32, i32 40, i32 48, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768, i32 65536], align 4
@LL_bits = internal constant [36 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], align 4
@repStartValue = internal unnamed_addr constant [3 x i32] [i32 1, i32 4, i32 8], align 4
@ZSTD_did_fieldSize = internal unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 2, i32 4], align 4
@ZSTD_fcs_fieldSize = internal unnamed_addr constant [4 x i32] [i32 0, i32 2, i32 4, i32 8], align 4
@switch.table.ZSTD_nextInputType = private unnamed_addr constant [6 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 5], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_sizeof_DCtx(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 29
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @ZSTD_sizeof_DDict(ptr noundef %5) #13
  %7 = add i32 %6, 161320
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 38
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %7, %9
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 42
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %10, %12
  br label %14

14:                                               ; preds = %3, %1
  %15 = phi i32 [ %13, %3 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_sizeof_DDict(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_estimateDCtxSize() local_unnamed_addr #2 {
  ret i32 161320
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local ptr @ZSTD_initStaticDCtx(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %0 to i32
  %4 = and i32 %3, 7
  %5 = icmp ne i32 %4, 0
  %6 = icmp ult i32 %1, 161320
  %7 = or i1 %6, %5
  br i1 %7, label %28, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 27
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 9
  store ptr null, ptr %10, align 8
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 32
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 33
  store i32 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 37
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 38
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 42
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 36
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 46
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 47
  store i32 0, ptr %18, align 8
  %19 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 50
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 55
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 34
  store ptr null, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 20
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 40
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false) #13
  store i32 134217729, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 51
  store i32 0, ptr %24, align 8
  %25 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 21
  store i32 0, ptr %25, align 8
  %26 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 35
  store i32 0, ptr %26, align 8
  store i32 %1, ptr %9, align 8
  %27 = getelementptr %struct.ZSTD_DCtx_s, ptr %0, i32 1
  store ptr %27, ptr %13, align 8
  br label %28

28:                                               ; preds = %8, %2
  %29 = phi ptr [ %0, %8 ], [ null, %2 ]
  ret ptr %29
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ZSTD_createDCtx_advanced([3 x i32] %0) local_unnamed_addr #0 {
  %2 = extractvalue [3 x i32] %0, 0
  %3 = inttoptr i32 %2 to ptr
  %4 = extractvalue [3 x i32] %0, 1
  %5 = inttoptr i32 %4 to ptr
  %6 = extractvalue [3 x i32] %0, 2
  %7 = icmp eq i32 %2, 0
  %8 = icmp eq i32 %4, 0
  %9 = xor i1 %7, %8
  br i1 %9, label %35, label %10

10:                                               ; preds = %1
  %11 = tail call ptr @ZSTD_customMalloc(i32 noundef 161320, [3 x i32] %0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 24
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 24, i32 1
  store ptr %5, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 24, i32 2
  store i32 %6, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 27
  %18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 9
  store ptr null, ptr %18, align 8
  %19 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 32
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 33
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 37
  store ptr null, ptr %21, align 8
  %22 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 38
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 42
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 36
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 46
  store ptr null, ptr %25, align 4
  %26 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 47
  store i32 0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 50
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 55
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 34
  store ptr null, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 20
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 40
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false) #13
  store i32 134217729, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 51
  store i32 0, ptr %32, align 8
  %33 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 21
  store i32 0, ptr %33, align 8
  %34 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 35
  store i32 0, ptr %34, align 8
  br label %35

35:                                               ; preds = %13, %10, %1
  %36 = phi ptr [ null, %1 ], [ %11, %13 ], [ null, %10 ]
  ret ptr %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ZSTD_customMalloc(i32 noundef, [3 x i32]) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ZSTD_createDCtx() local_unnamed_addr #0 {
  %1 = tail call ptr @ZSTD_customMalloc(i32 noundef 161320, [3 x i32] zeroinitializer) #13
  %2 = icmp eq ptr %1, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 24
  store ptr null, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 24, i32 1
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 24, i32 2
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 27
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 9
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 32
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 33
  store i32 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 37
  store ptr null, ptr %11, align 8
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 38
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 42
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 36
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 46
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 47
  store i32 0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 50
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 55
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 34
  store ptr null, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 20
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 40
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false) #13
  store i32 134217729, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 51
  store i32 0, ptr %22, align 8
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 21
  store i32 0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 35
  store i32 0, ptr %24, align 8
  br label %25

25:                                               ; preds = %3, %0
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_freeDCtx(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %33, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 27
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 29
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @ZSTD_freeDDict(ptr noundef %15) #13
  store ptr null, ptr %14, align 8
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 30
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 33
  store i32 0, ptr %18, align 8
  %19 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 37
  %20 = load ptr, ptr %19, align 8
  %21 = insertvalue [3 x i32] poison, i32 %9, 0
  %22 = insertvalue [3 x i32] %21, i32 %11, 1
  %23 = insertvalue [3 x i32] %22, i32 %13, 2
  tail call void @ZSTD_customFree(ptr noundef %20, [3 x i32] %23) #13
  store ptr null, ptr %19, align 8
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 34
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %7
  %28 = load ptr, ptr %25, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @ZSTD_customFree(ptr noundef nonnull %28, [3 x i32] %23) #13
  br label %31

31:                                               ; preds = %30, %27
  tail call void @ZSTD_customFree(ptr noundef nonnull %25, [3 x i32] %23) #13
  store ptr null, ptr %24, align 4
  br label %32

32:                                               ; preds = %31, %7
  tail call void @ZSTD_customFree(ptr noundef nonnull %0, [3 x i32] %23) #13
  br label %33

33:                                               ; preds = %32, %3, %1
  %34 = phi i32 [ 0, %32 ], [ 0, %1 ], [ -64, %3 ]
  ret i32 %34
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_customFree(ptr noundef, [3 x i32]) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ZSTD_copyDCtx(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(30120) %0, ptr noundef align 8 dereferenceable(30120) %1, i32 30120, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_isFrame(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = icmp ult i32 %1, 4
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 1
  %6 = icmp eq i32 %5, -47205080
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = and i32 %5, -16
  %9 = icmp eq i32 %8, 407710288
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %7, %4, %2
  %12 = phi i32 [ 0, %2 ], [ 1, %4 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_frameHeaderSize(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = icmp ult i32 %1, 5
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 4
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = and i32 %7, 3
  %9 = lshr i32 %7, 6
  %10 = and i32 %7, 32
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = getelementptr [4 x i32], ptr @ZSTD_did_fieldSize, i32 0, i32 %8
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr [4 x i32], ptr @ZSTD_fcs_fieldSize, i32 0, i32 %9
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i8 %6, 64
  %19 = select i1 %11, i1 %18, i1 false
  %20 = zext i1 %19 to i32
  %21 = add i32 %15, 5
  %22 = add i32 %21, %17
  %23 = add i32 %22, %13
  %24 = add i32 %23, %20
  br label %25

25:                                               ; preds = %4, %2
  %26 = phi i32 [ %24, %4 ], [ -72, %2 ]
  ret i32 %26
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_getFrameHeader_advanced(ptr nocapture noundef writeonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
  %5 = icmp eq i32 %3, 0
  %6 = select i1 %5, i32 5, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(40) %0, i8 0, i32 40, i1 false)
  %7 = icmp ugt i32 %6, %2
  br i1 %7, label %125, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, null
  br i1 %9, label %125, label %10

10:                                               ; preds = %8
  %11 = icmp eq i32 %3, 1
  br i1 %11, label %25, label %12

12:                                               ; preds = %10
  %13 = load i32, ptr %1, align 1
  %14 = icmp eq i32 %13, -47205080
  br i1 %14, label %25, label %15

15:                                               ; preds = %12
  %16 = and i32 %13, -16
  %17 = icmp eq i32 %16, 407710288
  br i1 %17, label %18, label %125

18:                                               ; preds = %15
  %19 = icmp ult i32 %2, 8
  br i1 %19, label %125, label %20

20:                                               ; preds = %18
  %21 = getelementptr i8, ptr %1, i32 4
  %22 = load i32, ptr %21, align 1
  %23 = zext i32 %22 to i64
  store i64 %23, ptr %0, align 8
  %24 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %0, i32 0, i32 3
  store i32 1, ptr %24, align 4
  br label %125

25:                                               ; preds = %12, %10
  %26 = add nsw i32 %6, -1
  %27 = getelementptr i8, ptr %1, i32 %26
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 3
  %31 = lshr i32 %29, 6
  %32 = and i32 %29, 32
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = getelementptr [4 x i32], ptr @ZSTD_did_fieldSize, i32 0, i32 %30
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr [4 x i32], ptr @ZSTD_fcs_fieldSize, i32 0, i32 %31
  %39 = load i32, ptr %38, align 4
  %40 = icmp ult i8 %28, 64
  %41 = select i1 %33, i1 %40, i1 false
  %42 = zext i1 %41 to i32
  %43 = add i32 %37, %6
  %44 = add i32 %43, %39
  %45 = add i32 %44, %35
  %46 = add i32 %45, %42
  %47 = icmp ugt i32 %46, %2
  br i1 %47, label %125, label %48

48:                                               ; preds = %25
  %49 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %0, i32 0, i32 4
  store i32 %46, ptr %49, align 8
  %50 = load i8, ptr %27, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 3
  %53 = lshr i32 %51, 2
  %54 = and i32 %53, 1
  %55 = lshr i32 %51, 6
  %56 = and i32 %51, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %125

58:                                               ; preds = %48
  %59 = and i32 %51, 32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %58
  %62 = getelementptr i8, ptr %1, i32 %6
  %63 = load i8, ptr %62, align 1
  %64 = icmp ugt i8 %63, -89
  br i1 %64, label %125, label %65

65:                                               ; preds = %61
  %66 = add nuw nsw i32 %6, 1
  %67 = zext i8 %63 to i32
  %68 = lshr i32 %67, 3
  %69 = add nuw nsw i32 %68, 10
  %70 = zext i32 %69 to i64
  %71 = shl nuw nsw i64 1, %70
  %72 = lshr i64 %71, 3
  %73 = and i32 %67, 7
  %74 = zext i32 %73 to i64
  %75 = mul nuw nsw i64 %72, %74
  %76 = add nuw nsw i64 %75, %71
  br label %77

77:                                               ; preds = %65, %58
  %78 = phi i32 [ %6, %58 ], [ %66, %65 ]
  %79 = phi i64 [ 0, %58 ], [ %76, %65 ]
  switch i32 %52, label %94 [
    i32 3, label %90
    i32 1, label %80
    i32 2, label %85
  ]

80:                                               ; preds = %77
  %81 = getelementptr i8, ptr %1, i32 %78
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = add nuw nsw i32 %78, 1
  br label %94

85:                                               ; preds = %77
  %86 = getelementptr i8, ptr %1, i32 %78
  %87 = load i16, ptr %86, align 1
  %88 = zext i16 %87 to i32
  %89 = add nuw nsw i32 %78, 2
  br label %94

90:                                               ; preds = %77
  %91 = getelementptr i8, ptr %1, i32 %78
  %92 = load i32, ptr %91, align 1
  %93 = add nuw nsw i32 %78, 4
  br label %94

94:                                               ; preds = %90, %85, %80, %77
  %95 = phi i32 [ %78, %77 ], [ %89, %85 ], [ %84, %80 ], [ %93, %90 ]
  %96 = phi i32 [ 0, %77 ], [ %88, %85 ], [ %83, %80 ], [ %92, %90 ]
  switch i32 %55, label %97 [
    i32 3, label %112
    i32 1, label %102
    i32 2, label %108
  ]

97:                                               ; preds = %94
  br i1 %60, label %115, label %98

98:                                               ; preds = %97
  %99 = getelementptr i8, ptr %1, i32 %95
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i64
  br label %115

102:                                              ; preds = %94
  %103 = getelementptr i8, ptr %1, i32 %95
  %104 = load i16, ptr %103, align 1
  %105 = zext i16 %104 to i32
  %106 = add nuw nsw i32 %105, 256
  %107 = zext i32 %106 to i64
  br label %115

108:                                              ; preds = %94
  %109 = getelementptr i8, ptr %1, i32 %95
  %110 = load i32, ptr %109, align 1
  %111 = zext i32 %110 to i64
  br label %115

112:                                              ; preds = %94
  %113 = getelementptr i8, ptr %1, i32 %95
  %114 = load i64, ptr %113, align 1
  br label %115

115:                                              ; preds = %112, %108, %102, %98, %97
  %116 = phi i64 [ %101, %98 ], [ -1, %97 ], [ %111, %108 ], [ %107, %102 ], [ %114, %112 ]
  %117 = select i1 %60, i64 %79, i64 %116
  %118 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %0, i32 0, i32 3
  store i32 0, ptr %118, align 4
  store i64 %116, ptr %0, align 8
  %119 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %0, i32 0, i32 1
  store i64 %117, ptr %119, align 8
  %120 = tail call i64 @llvm.umin.i64(i64 %117, i64 131072)
  %121 = trunc i64 %120 to i32
  %122 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %0, i32 0, i32 2
  store i32 %121, ptr %122, align 8
  %123 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %0, i32 0, i32 5
  store i32 %96, ptr %123, align 4
  %124 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %0, i32 0, i32 6
  store i32 %54, ptr %124, align 8
  br label %125

125:                                              ; preds = %115, %61, %48, %25, %20, %18, %15, %8, %4
  %126 = phi i32 [ 0, %20 ], [ %6, %4 ], [ -1, %8 ], [ 8, %18 ], [ -10, %15 ], [ %46, %25 ], [ 0, %115 ], [ -14, %48 ], [ -16, %61 ]
  ret i32 %126
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_getFrameHeader(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = tail call i32 @ZSTD_getFrameHeader_advanced(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0)
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i64 @ZSTD_getFrameContentSize(ptr noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = alloca %struct.ZSTD_frameHeader, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !8
  %4 = call i32 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %1, i32 noundef 0) #13
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %3, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  %9 = load i64, ptr %3, align 8
  %10 = select i1 %8, i64 0, i64 %9
  %11 = select i1 %5, i64 %10, i64 -2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #13
  ret i64 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ZSTD_findDecompressedSize(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ZSTD_frameSizeInfo, align 8
  %4 = alloca %struct.ZSTD_frameHeader, align 8
  %5 = icmp ult i32 %1, 5
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %4, i32 0, i32 3
  br label %8

8:                                                ; preds = %41, %6
  %9 = phi i64 [ 0, %6 ], [ %43, %41 ]
  %10 = phi i32 [ %1, %6 ], [ %44, %41 ]
  %11 = phi ptr [ %0, %6 ], [ %45, %41 ]
  %12 = load i32, ptr %11, align 1
  %13 = and i32 %12, -16
  %14 = icmp eq i32 %13, 407710288
  br i1 %14, label %15, label %26

15:                                               ; preds = %8
  %16 = icmp ult i32 %10, 8
  br i1 %16, label %52, label %17

17:                                               ; preds = %15
  %18 = getelementptr i8, ptr %11, i32 4
  %19 = load i32, ptr %18, align 1
  %20 = icmp ugt i32 %19, -9
  br i1 %20, label %52, label %21

21:                                               ; preds = %17
  %22 = add nuw i32 %19, 8
  %23 = icmp ule i32 %22, %10
  %24 = icmp ult i32 %19, -127
  %25 = and i1 %23, %24
  br i1 %25, label %41, label %52

26:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false) #13, !annotation !8
  %27 = call i32 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %4, ptr noundef %11, i32 noundef %10, i32 noundef 0) #13
  %28 = icmp eq i32 %27, 0
  %29 = load i32, ptr %7, align 4
  %30 = icmp eq i32 %29, 1
  %31 = load i64, ptr %4, align 8
  %32 = select i1 %30, i64 0, i64 %31
  %33 = select i1 %28, i64 %32, i64 -2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #13
  %34 = icmp ugt i64 %33, -3
  br i1 %34, label %52, label %35

35:                                               ; preds = %26
  %36 = add i64 %33, %9
  %37 = icmp ult i64 %36, %9
  br i1 %37, label %52, label %38

38:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #13, !annotation !8
  call fastcc void @ZSTD_findFrameSizeInfo(ptr nonnull sret(%struct.ZSTD_frameSizeInfo) align 8 %3, ptr noundef %11, i32 noundef %10) #13
  %39 = load i32, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  %40 = icmp ult i32 %39, -119
  br i1 %40, label %41, label %52

41:                                               ; preds = %38, %21
  %42 = phi i32 [ %22, %21 ], [ %39, %38 ]
  %43 = phi i64 [ %9, %21 ], [ %36, %38 ]
  %44 = sub i32 %10, %42
  %45 = getelementptr i8, ptr %11, i32 %42
  %46 = icmp ult i32 %44, 5
  br i1 %46, label %47, label %8

47:                                               ; preds = %41, %2
  %48 = phi i32 [ %1, %2 ], [ %44, %41 ]
  %49 = phi i64 [ 0, %2 ], [ %43, %41 ]
  %50 = icmp eq i32 %48, 0
  %51 = select i1 %50, i64 %49, i64 -2
  br label %52

52:                                               ; preds = %47, %38, %35, %26, %21, %17, %15
  %53 = phi i64 [ %51, %47 ], [ %33, %26 ], [ -2, %17 ], [ -2, %15 ], [ -2, %35 ], [ -2, %21 ], [ -2, %38 ]
  ret i64 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_findFrameCompressedSize(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ZSTD_frameSizeInfo, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  call fastcc void @ZSTD_findFrameSizeInfo(ptr nonnull sret(%struct.ZSTD_frameSizeInfo) align 8 %3, ptr noundef %0, i32 noundef %1)
  %4 = load i32, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i64 @ZSTD_getDecompressedSize(ptr noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = alloca %struct.ZSTD_frameHeader, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false) #13, !annotation !8
  %4 = call i32 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %1, i32 noundef 0) #13
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %3, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  %9 = load i64, ptr %3, align 8
  %10 = select i1 %8, i64 0, i64 %9
  %11 = select i1 %5, i64 %10, i64 -2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #13
  %12 = icmp ugt i64 %11, -3
  %13 = select i1 %12, i64 0, i64 %11
  ret i64 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ZSTD_findFrameSizeInfo(ptr noalias writeonly sret(%struct.ZSTD_frameSizeInfo) align 8 %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ZSTD_frameHeader, align 8
  %5 = alloca %struct.blockProperties_t, align 4
  %6 = icmp ugt i32 %2, 7
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = load i32, ptr %1, align 1
  %9 = and i32 %8, -16
  %10 = icmp eq i32 %9, 407710288
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %1, i32 4
  %13 = load i32, ptr %12, align 1
  %14 = icmp ugt i32 %13, -9
  %15 = add nuw i32 %13, 8
  %16 = icmp ugt i32 %15, %2
  %17 = select i1 %16, i32 -72, i32 %15
  %18 = select i1 %14, i32 -14, i32 %17
  store i32 %18, ptr %0, align 8
  %19 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 0, ptr %20, align 8
  br label %85

21:                                               ; preds = %7, %3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !8
  %22 = call i32 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %2, i32 noundef 0) #13
  %23 = icmp ult i32 %22, -119
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  store i64 0, ptr %0, align 8, !alias.scope !9, !annotation !8
  store i32 %22, ptr %0, align 8, !alias.scope !9
  %25 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %0, i32 0, i32 1
  store i64 -2, ptr %25, align 8, !alias.scope !9
  br label %84

26:                                               ; preds = %21
  %27 = icmp eq i32 %22, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  store i64 4294967224, ptr %0, align 8, !alias.scope !12, !annotation !8
  %29 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %0, i32 0, i32 1
  store i64 -2, ptr %29, align 8, !alias.scope !12
  br label %84

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %4, i32 0, i32 4
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr i8, ptr %1, i32 %32
  %34 = sub i32 %2, %32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false), !annotation !8
  %35 = call i32 @ZSTD_getcBlockSize(ptr noundef %33, i32 noundef %34, ptr noundef nonnull %5) #13
  %36 = icmp ult i32 %35, -119
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.blockProperties_t, ptr %5, i32 0, i32 1
  br label %41

39:                                               ; preds = %57, %30
  %40 = phi i32 [ %35, %30 ], [ %58, %57 ]
  store i64 0, ptr %0, align 8, !alias.scope !15, !annotation !8
  store i32 %40, ptr %0, align 8, !alias.scope !15
  br label %55

41:                                               ; preds = %57, %37
  %42 = phi i32 [ %35, %37 ], [ %58, %57 ]
  %43 = phi i32 [ 0, %37 ], [ %52, %57 ]
  %44 = phi i32 [ %34, %37 ], [ %51, %57 ]
  %45 = phi ptr [ %33, %37 ], [ %50, %57 ]
  %46 = add nuw i32 %42, 3
  %47 = icmp ult i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i64 4294967224, ptr %0, align 8, !alias.scope !18, !annotation !8
  br label %55

49:                                               ; preds = %41
  %50 = getelementptr i8, ptr %45, i32 %46
  %51 = sub i32 %44, %46
  %52 = add i32 %43, 1
  %53 = load i32, ptr %38, align 4
  %54 = icmp eq i32 %53, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  br i1 %54, label %57, label %60

55:                                               ; preds = %48, %39
  %56 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %0, i32 0, i32 1
  store i64 -2, ptr %56, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  br label %84

57:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false), !annotation !8
  %58 = call i32 @ZSTD_getcBlockSize(ptr noundef %50, i32 noundef %51, ptr noundef nonnull %5) #13
  %59 = icmp ult i32 %58, -119
  br i1 %59, label %41, label %39

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %4, i32 0, i32 6
  %62 = load i32, ptr %61, align 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %60
  %65 = icmp ult i32 %51, 4
  br i1 %65, label %66, label %68

66:                                               ; preds = %64
  store i64 4294967224, ptr %0, align 8, !alias.scope !21, !annotation !8
  %67 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %0, i32 0, i32 1
  store i64 -2, ptr %67, align 8, !alias.scope !21
  br label %84

68:                                               ; preds = %64
  %69 = getelementptr i8, ptr %50, i32 4
  br label %70

70:                                               ; preds = %68, %60
  %71 = phi ptr [ %69, %68 ], [ %50, %60 ]
  %72 = ptrtoint ptr %71 to i32
  %73 = ptrtoint ptr %1 to i32
  %74 = sub i32 %72, %73
  %75 = load i64, ptr %4, align 8
  %76 = icmp eq i64 %75, -1
  %77 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %4, i32 0, i32 2
  %78 = load i32, ptr %77, align 8
  %79 = mul i32 %78, %52
  %80 = zext i32 %79 to i64
  %81 = select i1 %76, i64 %80, i64 %75
  store i32 %74, ptr %0, align 8
  %82 = getelementptr inbounds i8, ptr %0, i32 4
  store i32 0, ptr %82, align 4
  %83 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %81, ptr %83, align 8
  br label %84

84:                                               ; preds = %70, %66, %55, %28, %24
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #13
  br label %85

85:                                               ; preds = %84, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ZSTD_decompressBound(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ZSTD_frameSizeInfo, align 8
  %4 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %3, i32 0, i32 1
  br label %5

5:                                                ; preds = %10, %2
  %6 = phi ptr [ %0, %2 ], [ %16, %10 ]
  %7 = phi i32 [ %1, %2 ], [ %17, %10 ]
  %8 = phi i64 [ 0, %2 ], [ %18, %10 ]
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  call fastcc void @ZSTD_findFrameSizeInfo(ptr nonnull sret(%struct.ZSTD_frameSizeInfo) align 8 %3, ptr noundef %6, i32 noundef %7)
  %11 = load i32, ptr %3, align 8
  %12 = load i64, ptr %4, align 8
  %13 = icmp ugt i32 %11, -120
  %14 = icmp eq i64 %12, -2
  %15 = select i1 %13, i1 true, i1 %14
  %16 = getelementptr i8, ptr %6, i32 %11
  %17 = sub i32 %7, %11
  %18 = add i64 %12, %8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  br i1 %15, label %19, label %5

19:                                               ; preds = %10, %5
  %20 = phi i64 [ -2, %10 ], [ %8, %5 ]
  ret i64 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_insertBlock(ptr noundef %0, ptr noundef %1, i32 noundef returned %2) local_unnamed_addr #0 {
  tail call void @ZSTD_checkContinuity(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  %4 = getelementptr i8, ptr %1, i32 %2
  %5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 6
  store ptr %4, ptr %5, align 4
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_checkContinuity(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decompress_usingDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = tail call fastcc i32 @ZSTD_decompressMultiFrame(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef null)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_decompressMultiFrame(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = alloca %struct.blockProperties_t, align 4
  %10 = icmp eq ptr %7, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %7) #13
  %13 = tail call i32 @ZSTD_DDict_dictSize(ptr noundef nonnull %7) #13
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi ptr [ %12, %11 ], [ %5, %8 ]
  %16 = phi i32 [ %13, %11 ], [ %6, %8 ]
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 20
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 5, i32 1
  %21 = icmp ugt i32 %20, %4
  br i1 %21, label %259, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 9
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 32
  %25 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 10
  %26 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 15
  %27 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 12
  %28 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 6
  %29 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4
  %30 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 3
  %31 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 17
  %32 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 16
  %33 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 31
  %34 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 14
  %35 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 4
  %36 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 2
  %37 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 1
  %38 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 1
  %39 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 2
  %40 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 3
  %41 = icmp ne ptr %15, null
  %42 = icmp ne i32 %16, 0
  %43 = and i1 %41, %42
  %44 = icmp ult i32 %16, 8
  %45 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 7
  %46 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 8
  %47 = getelementptr i8, ptr %15, i32 4
  %48 = getelementptr i8, ptr %15, i32 %16
  %49 = getelementptr inbounds %struct.blockProperties_t, ptr %9, i32 0, i32 2
  %50 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 22
  %51 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 18
  %52 = getelementptr inbounds %struct.blockProperties_t, ptr %9, i32 0, i32 1
  %53 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 11
  %54 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 11, i32 6
  %55 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 21
  br label %56

56:                                               ; preds = %252, %22
  %57 = phi i32 [ %20, %22 ], [ %257, %252 ]
  %58 = phi i1 [ false, %22 ], [ true, %252 ]
  %59 = phi ptr [ %1, %22 ], [ %253, %252 ]
  %60 = phi i32 [ %2, %22 ], [ %254, %252 ]
  %61 = phi i32 [ %4, %22 ], [ %245, %252 ]
  %62 = phi ptr [ %3, %22 ], [ %244, %252 ]
  br label %63

63:                                               ; preds = %80, %56
  %64 = phi i32 [ %61, %56 ], [ %82, %80 ]
  %65 = phi ptr [ %62, %56 ], [ %81, %80 ]
  %66 = load i32, ptr %65, align 1
  %67 = and i32 %66, -16
  %68 = icmp eq i32 %67, 407710288
  br i1 %68, label %69, label %84

69:                                               ; preds = %63
  %70 = icmp ult i32 %64, 8
  br i1 %70, label %267, label %71

71:                                               ; preds = %69
  %72 = getelementptr i8, ptr %65, i32 4
  %73 = load i32, ptr %72, align 1
  %74 = icmp ugt i32 %73, -9
  br i1 %74, label %267, label %75

75:                                               ; preds = %71
  %76 = add nuw i32 %73, 8
  %77 = icmp ugt i32 %76, %64
  %78 = select i1 %77, i32 -72, i32 %76
  %79 = icmp ult i32 %78, -119
  br i1 %79, label %80, label %267

80:                                               ; preds = %75
  %81 = getelementptr i8, ptr %65, i32 %78
  %82 = sub i32 %64, %78
  %83 = icmp ult i32 %82, %57
  br i1 %83, label %259, label %63

84:                                               ; preds = %63
  br i1 %10, label %95, label %85

85:                                               ; preds = %84
  %86 = call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %7) #13
  %87 = call i32 @ZSTD_DDict_dictSize(ptr noundef nonnull %7) #13
  %88 = getelementptr i8, ptr %86, i32 %87
  %89 = load ptr, ptr %23, align 8
  %90 = icmp ne ptr %89, %88
  %91 = zext i1 %90 to i32
  store i32 %91, ptr %24, align 4
  %92 = load i32, ptr %17, align 4
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, i32 5, i32 1
  store i32 %94, ptr %25, align 4
  store i32 0, ptr %26, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %28, i8 0, i64 16, i1 false) #13
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false) #13
  store i32 201326604, ptr %30, align 8
  store i32 0, ptr %31, align 4
  store i32 0, ptr %32, align 8
  store i32 0, ptr %33, align 8
  store i32 3, ptr %34, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %35, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i32 12, i1 false) #13
  store ptr %29, ptr %0, align 8
  store ptr %36, ptr %37, align 4
  store ptr %38, ptr %39, align 8
  store ptr %30, ptr %40, align 4
  call void @ZSTD_copyDDictParameters(ptr noundef %0, ptr noundef nonnull %7) #13
  br label %115

95:                                               ; preds = %84
  store i32 %57, ptr %25, align 4
  store i32 0, ptr %26, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %28, i8 0, i64 16, i1 false) #13
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false) #13
  store i32 201326604, ptr %30, align 8
  store i32 0, ptr %31, align 4
  store i32 0, ptr %32, align 8
  store i32 0, ptr %33, align 8
  store i32 3, ptr %34, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %35, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i32 12, i1 false) #13
  store ptr %29, ptr %0, align 8
  store ptr %36, ptr %37, align 4
  store ptr %38, ptr %39, align 8
  store ptr %30, ptr %40, align 4
  br i1 %43, label %96, label %115

96:                                               ; preds = %95
  br i1 %44, label %112, label %97

97:                                               ; preds = %96
  %98 = load i32, ptr %15, align 1
  %99 = icmp eq i32 %98, -332356553
  br i1 %99, label %100, label %112

100:                                              ; preds = %97
  %101 = load i32, ptr %47, align 1
  store i32 %101, ptr %33, align 8
  %102 = call i32 @ZSTD_loadDEntropy(ptr noundef %29, ptr noundef nonnull %15, i32 noundef %16) #13
  %103 = icmp ult i32 %102, -119
  br i1 %103, label %104, label %267

104:                                              ; preds = %100
  %105 = getelementptr i8, ptr %15, i32 %102
  store i32 1, ptr %31, align 4
  store i32 1, ptr %32, align 8
  %106 = load ptr, ptr %28, align 4
  store ptr %106, ptr %23, align 8
  %107 = load ptr, ptr %45, align 8
  %108 = ptrtoint ptr %106 to i32
  %109 = ptrtoint ptr %107 to i32
  %110 = sub i32 %109, %108
  %111 = getelementptr i8, ptr %105, i32 %110
  br label %112

112:                                              ; preds = %104, %97, %96
  %113 = phi ptr [ %111, %104 ], [ %15, %96 ], [ %15, %97 ]
  %114 = phi ptr [ %105, %104 ], [ %15, %96 ], [ %15, %97 ]
  store ptr %113, ptr %46, align 4
  store ptr %114, ptr %45, align 8
  store ptr %48, ptr %28, align 4
  br label %115

115:                                              ; preds = %112, %95, %85
  call void @ZSTD_checkContinuity(ptr noundef %0, ptr noundef %59, i32 noundef %60) #13
  %116 = getelementptr i8, ptr %59, i32 %60
  %117 = load i32, ptr %17, align 4
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %118, i32 9, i32 5
  %120 = icmp ult i32 %64, %119
  br i1 %120, label %243, label %121

121:                                              ; preds = %115
  %122 = select i1 %118, i32 5, i32 1
  %123 = add nsw i32 %122, -1
  %124 = getelementptr i8, ptr %65, i32 %123
  %125 = load i8, ptr %124, align 1
  %126 = zext i8 %125 to i32
  %127 = and i32 %126, 3
  %128 = lshr i32 %126, 6
  %129 = and i32 %126, 32
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = getelementptr [4 x i32], ptr @ZSTD_did_fieldSize, i32 0, i32 %127
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr [4 x i32], ptr @ZSTD_fcs_fieldSize, i32 0, i32 %128
  %136 = load i32, ptr %135, align 4
  %137 = icmp ult i8 %125, 64
  %138 = select i1 %130, i1 %137, i1 false
  %139 = zext i1 %138 to i32
  %140 = add i32 %134, %122
  %141 = add i32 %140, %136
  %142 = add i32 %141, %132
  %143 = add i32 %142, %139
  %144 = icmp ult i32 %143, -119
  br i1 %144, label %145, label %243

145:                                              ; preds = %121
  %146 = add nuw i32 %143, 3
  %147 = icmp ult i32 %64, %146
  br i1 %147, label %243, label %148

148:                                              ; preds = %145
  %149 = call fastcc i32 @ZSTD_decodeFrameHeader(ptr noundef %0, ptr noundef %65, i32 noundef %143) #13
  %150 = icmp ult i32 %149, -119
  br i1 %150, label %151, label %243

151:                                              ; preds = %148
  %152 = getelementptr i8, ptr %65, i32 %143
  %153 = sub i32 %64, %143
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i32 12, i1 false) #13, !annotation !8
  %154 = call i32 @ZSTD_getcBlockSize(ptr noundef %152, i32 noundef %153, ptr noundef nonnull %9) #13
  %155 = icmp ult i32 %154, -119
  br i1 %155, label %156, label %207

156:                                              ; preds = %151
  %157 = ptrtoint ptr %116 to i32
  br label %158

158:                                              ; preds = %209, %156
  %159 = phi i32 [ %154, %156 ], [ %210, %209 ]
  %160 = phi i32 [ %153, %156 ], [ %204, %209 ]
  %161 = phi ptr [ %59, %156 ], [ %202, %209 ]
  %162 = phi ptr [ %152, %156 ], [ %203, %209 ]
  %163 = getelementptr i8, ptr %162, i32 3
  %164 = add i32 %160, -3
  %165 = icmp ult i32 %164, %159
  br i1 %165, label %207, label %166

166:                                              ; preds = %158
  %167 = load i32, ptr %9, align 4
  switch i32 %167, label %207 [
    i32 2, label %168
    i32 0, label %172
    i32 1, label %181
  ]

168:                                              ; preds = %166
  %169 = ptrtoint ptr %161 to i32
  %170 = sub i32 %157, %169
  %171 = call i32 @ZSTD_decompressBlock_internal(ptr noundef %0, ptr noundef %161, i32 noundef %170, ptr noundef %163, i32 noundef %159, i32 noundef 1) #13
  br label %192

172:                                              ; preds = %166
  %173 = ptrtoint ptr %161 to i32
  %174 = sub i32 %157, %173
  %175 = icmp ugt i32 %159, %174
  br i1 %175, label %207, label %176

176:                                              ; preds = %172
  %177 = icmp eq ptr %161, null
  br i1 %177, label %178, label %180

178:                                              ; preds = %176
  %179 = icmp eq i32 %159, 0
  br i1 %179, label %195, label %207

180:                                              ; preds = %176
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %161, ptr align 1 %163, i32 %159, i1 false) #13
  br label %195

181:                                              ; preds = %166
  %182 = ptrtoint ptr %161 to i32
  %183 = sub i32 %157, %182
  %184 = load i8, ptr %163, align 1
  %185 = load i32, ptr %49, align 4
  %186 = icmp ugt i32 %185, %183
  br i1 %186, label %207, label %187

187:                                              ; preds = %181
  %188 = icmp eq ptr %161, null
  br i1 %188, label %189, label %191

189:                                              ; preds = %187
  %190 = icmp eq i32 %185, 0
  br i1 %190, label %195, label %207

191:                                              ; preds = %187
  call void @llvm.memset.p0.i32(ptr nonnull align 1 %161, i8 %184, i32 %185, i1 false) #13
  br label %192

192:                                              ; preds = %191, %168
  %193 = phi i32 [ %171, %168 ], [ %185, %191 ]
  %194 = icmp ult i32 %193, -119
  br i1 %194, label %195, label %207

195:                                              ; preds = %192, %189, %180, %178
  %196 = phi i32 [ %193, %192 ], [ %159, %180 ], [ 0, %178 ], [ 0, %189 ]
  %197 = load i32, ptr %50, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %195
  %200 = call i32 @xxh64_update(ptr noundef %51, ptr noundef %161, i32 noundef %196) #13
  br label %201

201:                                              ; preds = %199, %195
  %202 = getelementptr i8, ptr %161, i32 %196
  %203 = getelementptr i8, ptr %163, i32 %159
  %204 = sub i32 %164, %159
  %205 = load i32, ptr %52, align 4
  %206 = icmp eq i32 %205, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  br i1 %206, label %209, label %212

207:                                              ; preds = %209, %192, %189, %181, %178, %172, %166, %158, %151
  %208 = phi i32 [ %154, %151 ], [ -70, %181 ], [ -70, %172 ], [ %193, %192 ], [ -20, %166 ], [ -72, %158 ], [ %210, %209 ], [ -74, %178 ], [ -74, %189 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  br label %243

209:                                              ; preds = %201
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i32 12, i1 false) #13, !annotation !8
  %210 = call i32 @ZSTD_getcBlockSize(ptr noundef %203, i32 noundef %204, ptr noundef nonnull %9) #13
  %211 = icmp ult i32 %210, -119
  br i1 %211, label %158, label %207

212:                                              ; preds = %201
  %213 = load i64, ptr %53, align 8
  %214 = icmp eq i64 %213, -1
  br i1 %214, label %221, label %215

215:                                              ; preds = %212
  %216 = ptrtoint ptr %202 to i32
  %217 = ptrtoint ptr %59 to i32
  %218 = sub i32 %216, %217
  %219 = sext i32 %218 to i64
  %220 = icmp eq i64 %213, %219
  br i1 %220, label %221, label %243

221:                                              ; preds = %215, %212
  %222 = load i32, ptr %54, align 8
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %237, label %224

224:                                              ; preds = %221
  %225 = icmp ult i32 %204, 4
  br i1 %225, label %243, label %226

226:                                              ; preds = %224
  %227 = load i32, ptr %55, align 8
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %226
  %230 = call i64 @xxh64_digest(ptr noundef %51) #13
  %231 = trunc i64 %230 to i32
  %232 = load i32, ptr %203, align 1
  %233 = icmp eq i32 %232, %231
  br i1 %233, label %234, label %243

234:                                              ; preds = %229, %226
  %235 = getelementptr i8, ptr %203, i32 4
  %236 = add i32 %204, -4
  br label %237

237:                                              ; preds = %234, %221
  %238 = phi ptr [ %235, %234 ], [ %203, %221 ]
  %239 = phi i32 [ %236, %234 ], [ %204, %221 ]
  %240 = ptrtoint ptr %202 to i32
  %241 = ptrtoint ptr %59 to i32
  %242 = sub i32 %240, %241
  br label %243

243:                                              ; preds = %237, %229, %224, %215, %207, %148, %145, %121, %115
  %244 = phi ptr [ %65, %115 ], [ %65, %145 ], [ %65, %207 ], [ %238, %237 ], [ %65, %224 ], [ %65, %229 ], [ %65, %215 ], [ %65, %148 ], [ %65, %121 ]
  %245 = phi i32 [ %64, %115 ], [ %64, %145 ], [ %64, %207 ], [ %239, %237 ], [ %64, %224 ], [ %64, %229 ], [ %64, %215 ], [ %64, %148 ], [ %64, %121 ]
  %246 = phi i32 [ -72, %115 ], [ -72, %145 ], [ %208, %207 ], [ %242, %237 ], [ -22, %224 ], [ -22, %229 ], [ -20, %215 ], [ %149, %148 ], [ %143, %121 ]
  %247 = call i32 @ZSTD_getErrorCode(i32 noundef %246) #13
  %248 = icmp eq i32 %247, 10
  %249 = and i1 %248, %58
  br i1 %249, label %267, label %250

250:                                              ; preds = %243
  %251 = icmp ult i32 %246, -119
  br i1 %251, label %252, label %267

252:                                              ; preds = %250
  %253 = getelementptr i8, ptr %59, i32 %246
  %254 = sub i32 %60, %246
  %255 = load i32, ptr %17, align 4
  %256 = icmp eq i32 %255, 0
  %257 = select i1 %256, i32 5, i32 1
  %258 = icmp ult i32 %245, %257
  br i1 %258, label %259, label %56

259:                                              ; preds = %252, %80, %14
  %260 = phi ptr [ %1, %14 ], [ %59, %80 ], [ %253, %252 ]
  %261 = phi i32 [ %4, %14 ], [ %82, %80 ], [ %245, %252 ]
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %259
  %264 = ptrtoint ptr %260 to i32
  %265 = ptrtoint ptr %1 to i32
  %266 = sub i32 %264, %265
  br label %267

267:                                              ; preds = %263, %259, %250, %243, %100, %75, %71, %69
  %268 = phi i32 [ %266, %263 ], [ -72, %259 ], [ %78, %75 ], [ -14, %71 ], [ -72, %69 ], [ %246, %250 ], [ -72, %243 ], [ -30, %100 ]
  ret i32 %268
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decompressDCtx(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 33
  %7 = load i32, ptr %6, align 8
  switch i32 %7, label %8 [
    i32 1, label %16
    i32 -1, label %13
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 29
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @ZSTD_freeDDict(ptr noundef %10) #13
  store ptr null, ptr %9, align 8
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 30
  store ptr null, ptr %12, align 4
  store i32 0, ptr %6, align 8
  br label %19

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 30
  %15 = load ptr, ptr %14, align 4
  br label %19

16:                                               ; preds = %5
  store i32 0, ptr %6, align 8
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 30
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %13, %8
  %20 = phi ptr [ null, %8 ], [ %15, %13 ], [ %18, %16 ]
  %21 = tail call fastcc i32 @ZSTD_decompressMultiFrame(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef null, i32 noundef 0, ptr noundef %20) #13
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decompress_usingDDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call fastcc i32 @ZSTD_decompressMultiFrame(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef null, i32 noundef 0, ptr noundef %5)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ZSTD_getDDict(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 33
  %3 = load i32, ptr %2, align 8
  switch i32 %3, label %4 [
    i32 1, label %12
    i32 -1, label %9
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 29
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @ZSTD_freeDDict(ptr noundef %6) #13
  store ptr null, ptr %5, align 8
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 30
  store ptr null, ptr %8, align 4
  store i32 0, ptr %2, align 8
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 30
  %11 = load ptr, ptr %10, align 4
  br label %15

12:                                               ; preds = %1
  store i32 0, ptr %2, align 8
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 30
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %9, %4
  %16 = phi ptr [ null, %4 ], [ %11, %9 ], [ %14, %12 ]
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decompress(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @ZSTD_customMalloc(i32 noundef 161320, [3 x i32] zeroinitializer) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 24
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 24, i32 1
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 24, i32 2
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 27
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 9
  store ptr null, ptr %12, align 8
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 32
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 33
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 37
  store ptr null, ptr %15, align 8
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 38
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 42
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 36
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 46
  store ptr null, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 47
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 50
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 55
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 34
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 20
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 40
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false) #13
  store i32 134217729, ptr %25, align 4
  %26 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 51
  store i32 0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 21
  store i32 0, ptr %27, align 8
  %28 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 35
  store i32 0, ptr %28, align 8
  %29 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 29
  %30 = tail call i32 @ZSTD_freeDDict(ptr noundef null) #13
  store ptr null, ptr %29, align 8
  %31 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %5, i32 0, i32 30
  store ptr null, ptr %31, align 4
  store i32 0, ptr %14, align 8
  %32 = tail call fastcc i32 @ZSTD_decompressMultiFrame(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef null) #13
  %33 = tail call i32 @ZSTD_freeDCtx(ptr noundef nonnull %5)
  br label %34

34:                                               ; preds = %7, %4
  %35 = phi i32 [ %32, %7 ], [ -64, %4 ]
  ret i32 %35
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_nextSrcSizeToDecompress(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_nextInputType(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 15
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -2
  %5 = icmp ult i32 %4, 6
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds [6 x i32], ptr @switch.table.ZSTD_nextInputType, i32 0, i32 %4
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ 0, %1 ], [ %8, %6 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decompressContinue(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.blockProperties_t, align 4
  %7 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 15
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  br label %26

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 14
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 10
  %20 = load i32, ptr %19, align 4
  br label %26

21:                                               ; preds = %14
  %22 = tail call i32 @llvm.umax.i32(i32 %4, i32 1) #13
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 10
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @llvm.umin.i32(i32 %22, i32 %24) #13
  br label %26

26:                                               ; preds = %21, %18, %11
  %27 = phi i32 [ %20, %18 ], [ %25, %21 ], [ %13, %11 ]
  %28 = icmp eq i32 %27, %4
  br i1 %28, label %29, label %218

29:                                               ; preds = %26
  tail call void @ZSTD_checkContinuity(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  %30 = zext i32 %4 to i64
  %31 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 12
  %32 = load i64, ptr %31, align 8
  %33 = add i64 %32, %30
  store i64 %33, ptr %31, align 8
  %34 = load i32, ptr %7, align 4
  switch i32 %34, label %218 [
    i32 0, label %35
    i32 1, label %80
    i32 2, label %91
    i32 4, label %123
    i32 3, label %123
    i32 5, label %197
    i32 6, label %209
    i32 7, label %216
  ]

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 20
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i32, ptr %3, align 1
  %41 = and i32 %40, -16
  %42 = icmp eq i32 %41, 407710288
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 54
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %44, ptr align 1 %3, i32 %4, i1 false)
  %45 = sub i32 8, %4
  %46 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 10
  store i32 %45, ptr %46, align 4
  store i32 6, ptr %7, align 4
  br label %218

47:                                               ; preds = %39, %35
  %48 = phi i32 [ 5, %39 ], [ 1, %35 ]
  %49 = icmp ugt i32 %48, %4
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 19
  store i32 -72, ptr %51, align 8
  br label %218

52:                                               ; preds = %47
  %53 = add nsw i32 %48, -1
  %54 = getelementptr i8, ptr %3, i32 %53
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 3
  %58 = lshr i32 %56, 6
  %59 = and i32 %56, 32
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = getelementptr [4 x i32], ptr @ZSTD_did_fieldSize, i32 0, i32 %57
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr [4 x i32], ptr @ZSTD_fcs_fieldSize, i32 0, i32 %58
  %66 = load i32, ptr %65, align 4
  %67 = icmp ult i8 %55, 64
  %68 = select i1 %60, i1 %67, i1 false
  %69 = zext i1 %68 to i32
  %70 = add i32 %64, %48
  %71 = add i32 %70, %66
  %72 = add i32 %71, %62
  %73 = add i32 %72, %69
  %74 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 19
  store i32 %73, ptr %74, align 8
  %75 = icmp ult i32 %73, -119
  br i1 %75, label %76, label %218

76:                                               ; preds = %52
  %77 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 54
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %77, ptr align 1 %3, i32 %4, i1 false)
  %78 = sub i32 %73, %4
  %79 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 10
  store i32 %78, ptr %79, align 4
  store i32 1, ptr %7, align 4
  br label %218

80:                                               ; preds = %29
  %81 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 54
  %82 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 19
  %83 = load i32, ptr %82, align 8
  %84 = sub i32 %83, %4
  %85 = getelementptr i8, ptr %81, i32 %84
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %85, ptr align 1 %3, i32 %4, i1 false)
  %86 = load i32, ptr %82, align 8
  %87 = tail call fastcc i32 @ZSTD_decodeFrameHeader(ptr noundef %0, ptr noundef %81, i32 noundef %86)
  %88 = icmp ult i32 %87, -119
  br i1 %88, label %89, label %218

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 10
  store i32 3, ptr %90, align 4
  store i32 2, ptr %7, align 4
  br label %218

91:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i32 12, i1 false), !annotation !8
  %92 = call i32 @ZSTD_getcBlockSize(ptr noundef %3, i32 noundef 3, ptr noundef nonnull %6) #13
  %93 = icmp ult i32 %92, -119
  br i1 %93, label %94, label %121

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 11, i32 2
  %96 = load i32, ptr %95, align 8
  %97 = icmp ugt i32 %92, %96
  br i1 %97, label %121, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 10
  store i32 %92, ptr %99, align 4
  %100 = load i32, ptr %6, align 4
  %101 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 14
  store i32 %100, ptr %101, align 8
  %102 = getelementptr inbounds %struct.blockProperties_t, ptr %6, i32 0, i32 2
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 26
  store i32 %103, ptr %104, align 4
  %105 = icmp eq i32 %92, 0
  %106 = getelementptr inbounds %struct.blockProperties_t, ptr %6, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %105, label %111, label %109

109:                                              ; preds = %98
  %110 = select i1 %108, i32 3, i32 4
  br label %119

111:                                              ; preds = %98
  br i1 %108, label %118, label %112

112:                                              ; preds = %111
  %113 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 11, i32 6
  %114 = load i32, ptr %113, align 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  store i32 4, ptr %99, align 4
  br label %119

117:                                              ; preds = %112
  store i32 0, ptr %99, align 4
  br label %119

118:                                              ; preds = %111
  store i32 3, ptr %99, align 4
  br label %119

119:                                              ; preds = %118, %117, %116, %109
  %120 = phi i32 [ 2, %118 ], [ 0, %117 ], [ 5, %116 ], [ %110, %109 ]
  store i32 %120, ptr %7, align 4
  br label %121

121:                                              ; preds = %119, %94, %91
  %122 = phi i32 [ %92, %91 ], [ -20, %94 ], [ 0, %119 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  br label %218

123:                                              ; preds = %29, %29
  %124 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 14
  %125 = load i32, ptr %124, align 8
  switch i32 %125, label %218 [
    i32 2, label %126
    i32 0, label %128
    i32 1, label %140
  ]

126:                                              ; preds = %123
  %127 = tail call i32 @ZSTD_decompressBlock_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 1) #13
  br label %151

128:                                              ; preds = %123
  %129 = icmp ugt i32 %4, %2
  br i1 %129, label %218, label %130

130:                                              ; preds = %128
  %131 = icmp eq ptr %1, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %130
  %133 = icmp eq i32 %4, 0
  br i1 %133, label %136, label %218

134:                                              ; preds = %130
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %1, ptr align 1 %3, i32 %4, i1 false) #13
  %135 = icmp ult i32 %4, -119
  br i1 %135, label %136, label %218

136:                                              ; preds = %134, %132
  %137 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 10
  %138 = load i32, ptr %137, align 4
  %139 = sub i32 %138, %4
  store i32 %139, ptr %137, align 4
  br label %155

140:                                              ; preds = %123
  %141 = load i8, ptr %3, align 1
  %142 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 26
  %143 = load i32, ptr %142, align 4
  %144 = icmp ugt i32 %143, %2
  br i1 %144, label %151, label %145

145:                                              ; preds = %140
  %146 = icmp eq ptr %1, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %145
  %148 = icmp eq i32 %143, 0
  %149 = select i1 %148, i32 0, i32 -74
  br label %151

150:                                              ; preds = %145
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %1, i8 %141, i32 %143, i1 false) #13
  br label %151

151:                                              ; preds = %150, %147, %140, %126
  %152 = phi i32 [ %127, %126 ], [ %143, %150 ], [ -70, %140 ], [ %149, %147 ]
  %153 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 10
  store i32 0, ptr %153, align 4
  %154 = icmp ult i32 %152, -119
  br i1 %154, label %155, label %218

155:                                              ; preds = %151, %136
  %156 = phi i32 [ %4, %136 ], [ %152, %151 ]
  %157 = phi i32 [ %139, %136 ], [ 0, %151 ]
  %158 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 11
  %159 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 11, i32 2
  %160 = load i32, ptr %159, align 8
  %161 = icmp ugt i32 %156, %160
  br i1 %161, label %218, label %162

162:                                              ; preds = %155
  %163 = zext i32 %156 to i64
  %164 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 13
  %165 = load i64, ptr %164, align 8
  %166 = add i64 %165, %163
  store i64 %166, ptr %164, align 8
  %167 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 22
  %168 = load i32, ptr %167, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %162
  %171 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 18
  %172 = tail call i32 @xxh64_update(ptr noundef %171, ptr noundef %1, i32 noundef %156) #13
  %173 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 10
  %174 = load i32, ptr %173, align 4
  br label %175

175:                                              ; preds = %170, %162
  %176 = phi i32 [ %174, %170 ], [ %157, %162 ]
  %177 = getelementptr i8, ptr %1, i32 %156
  %178 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 6
  store ptr %177, ptr %178, align 4
  %179 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 10
  %180 = icmp eq i32 %176, 0
  br i1 %180, label %181, label %218

181:                                              ; preds = %175
  %182 = load i32, ptr %7, align 4
  %183 = icmp eq i32 %182, 4
  br i1 %183, label %184, label %196

184:                                              ; preds = %181
  %185 = load i64, ptr %158, align 8
  %186 = icmp eq i64 %185, -1
  br i1 %186, label %190, label %187

187:                                              ; preds = %184
  %188 = load i64, ptr %164, align 8
  %189 = icmp eq i64 %188, %185
  br i1 %189, label %190, label %218

190:                                              ; preds = %187, %184
  %191 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 11, i32 6
  %192 = load i32, ptr %191, align 8
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %190
  store i32 4, ptr %179, align 4
  store i32 5, ptr %7, align 4
  br label %218

195:                                              ; preds = %190
  store i32 0, ptr %179, align 4
  store i32 0, ptr %7, align 4
  br label %218

196:                                              ; preds = %181
  store i32 2, ptr %7, align 4
  store i32 3, ptr %179, align 4
  br label %218

197:                                              ; preds = %29
  %198 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 22
  %199 = load i32, ptr %198, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %207, label %201

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 18
  %203 = tail call i64 @xxh64_digest(ptr noundef %202) #13
  %204 = trunc i64 %203 to i32
  %205 = load i32, ptr %3, align 1
  %206 = icmp eq i32 %205, %204
  br i1 %206, label %207, label %218

207:                                              ; preds = %201, %197
  %208 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 10
  store i32 0, ptr %208, align 4
  store i32 0, ptr %7, align 4
  br label %218

209:                                              ; preds = %29
  %210 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 54
  %211 = sub i32 8, %4
  %212 = getelementptr i8, ptr %210, i32 %211
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %212, ptr align 1 %3, i32 %4, i1 false)
  %213 = getelementptr %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 54, i32 4
  %214 = load i32, ptr %213, align 1
  %215 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 10
  store i32 %214, ptr %215, align 4
  store i32 7, ptr %7, align 4
  br label %218

216:                                              ; preds = %29
  %217 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 10
  store i32 0, ptr %217, align 4
  store i32 0, ptr %7, align 4
  br label %218

218:                                              ; preds = %216, %209, %207, %201, %196, %195, %194, %187, %175, %155, %151, %134, %132, %128, %123, %121, %89, %80, %76, %52, %50, %43, %29, %26
  %219 = phi i32 [ 0, %216 ], [ 0, %209 ], [ -22, %201 ], [ 0, %207 ], [ %122, %121 ], [ %87, %80 ], [ 0, %89 ], [ 0, %43 ], [ 0, %76 ], [ -72, %26 ], [ %152, %151 ], [ %4, %134 ], [ -20, %123 ], [ -20, %155 ], [ %156, %175 ], [ -20, %187 ], [ %156, %194 ], [ %156, %195 ], [ %156, %196 ], [ -1, %29 ], [ -72, %50 ], [ %73, %52 ], [ -70, %128 ], [ -74, %132 ]
  ret i32 %219
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_decodeFrameHeader(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 11
  %6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @ZSTD_getFrameHeader_advanced(ptr noundef %5, ptr noundef %1, i32 noundef %2, i32 noundef %7)
  %9 = icmp ult i32 %8, -119
  br i1 %9, label %10, label %83

10:                                               ; preds = %3
  %11 = icmp eq i32 %8, 0
  br i1 %11, label %12, label %83

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 35
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %56

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 34
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %56, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 30
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %56, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 11, i32 5
  %26 = load i32, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 %26, ptr %4, align 4
  %27 = call i64 @xxh64(ptr noundef nonnull %4, i32 noundef 4, i64 noundef 0) #13
  %28 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %18, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, -1
  %31 = trunc i64 %27 to i32
  %32 = and i32 %30, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %33

33:                                               ; preds = %33, %24
  %34 = phi i32 [ %32, %24 ], [ %43, %33 ]
  %35 = load ptr, ptr %18, align 4
  %36 = getelementptr ptr, ptr %35, i32 %34
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 @ZSTD_getDictID_fromDDict(ptr noundef %37) #13
  %39 = icmp eq i32 %38, %26
  %40 = icmp eq i32 %38, 0
  %41 = or i1 %39, %40
  %42 = and i32 %34, %30
  %43 = add i32 %42, 1
  br i1 %41, label %44, label %33

44:                                               ; preds = %33
  %45 = load ptr, ptr %18, align 4
  %46 = getelementptr ptr, ptr %45, i32 %34
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 29
  %51 = load ptr, ptr %50, align 8
  %52 = call i32 @ZSTD_freeDDict(ptr noundef %51) #13
  store ptr null, ptr %50, align 8
  %53 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 33
  %54 = load i32, ptr %25, align 4
  %55 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 31
  store i32 %54, ptr %55, align 8
  store ptr %47, ptr %21, align 4
  store i32 -1, ptr %53, align 8
  br label %56

56:                                               ; preds = %49, %44, %20, %16, %12
  %57 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 11, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 31
  %62 = load i32, ptr %61, align 8
  %63 = icmp eq i32 %62, %58
  br i1 %63, label %64, label %83

64:                                               ; preds = %60, %56
  %65 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 11, i32 6
  %66 = load i32, ptr %65, align 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 21
  %70 = load i32, ptr %69, align 8
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 22
  store i32 %72, ptr %73, align 4
  br i1 %71, label %74, label %78

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 18
  call void @xxh64_reset(ptr noundef %75, i64 noundef 0) #13
  br label %78

76:                                               ; preds = %64
  %77 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 22
  store i32 0, ptr %77, align 4
  br label %78

78:                                               ; preds = %76, %74, %68
  %79 = zext i32 %2 to i64
  %80 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 12
  %81 = load i64, ptr %80, align 8
  %82 = add i64 %81, %79
  store i64 %82, ptr %80, align 8
  br label %83

83:                                               ; preds = %78, %60, %10, %3
  %84 = phi i32 [ 0, %78 ], [ %8, %3 ], [ -72, %10 ], [ -32, %60 ]
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_getcBlockSize(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_decompressBlock_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xxh64_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xxh64_digest(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_loadDEntropy(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [32 x i16], align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [53 x i16], align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [36 x i16], align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr i8, ptr %1, i32 %2
  %14 = icmp ult i32 %2, 9
  br i1 %14, label %96, label %15

15:                                               ; preds = %3
  %16 = getelementptr i8, ptr %1, i32 8
  %17 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %0, i32 0, i32 3
  %18 = ptrtoint ptr %13 to i32
  %19 = add i32 %2, -8
  %20 = tail call i32 @HUF_readDTableX2_wksp(ptr noundef %17, ptr noundef %16, i32 noundef %19, ptr noundef %0, i32 noundef 10264) #13
  %21 = icmp ult i32 %20, -119
  %22 = select i1 %21, i32 %20, i32 0
  %23 = getelementptr i8, ptr %16, i32 %22
  br i1 %21, label %24, label %96

24:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 31, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !8
  %25 = ptrtoint ptr %23 to i32
  %26 = sub i32 %18, %25
  %27 = call i32 @FSE_readNCount(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %23, i32 noundef %26) #13
  %28 = icmp ult i32 %27, -119
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, ptr %5, align 4
  %31 = icmp ugt i32 %30, 31
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr %6, align 4
  %34 = icmp ugt i32 %33, 8
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %29, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  br label %96

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %0, i32 0, i32 1
  %38 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %0, i32 0, i32 5
  call void @ZSTD_buildFSETable(ptr noundef %37, ptr noundef nonnull %4, i32 noundef %30, ptr noundef nonnull @OF_base, ptr noundef nonnull @OF_bits, i32 noundef %33, ptr noundef %38, i32 noundef 628, i32 noundef 0) #13
  %39 = getelementptr i8, ptr %23, i32 %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 106, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(106) %7, i8 0, i32 106, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 52, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store i32 0, ptr %9, align 4, !annotation !8
  %40 = ptrtoint ptr %39 to i32
  %41 = sub i32 %18, %40
  %42 = call i32 @FSE_readNCount(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %39, i32 noundef %41) #13
  %43 = icmp ult i32 %42, -119
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i32, ptr %8, align 4
  %46 = icmp ugt i32 %45, 52
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, ptr %9, align 4
  %49 = icmp ugt i32 %48, 9
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %44, %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %7) #13
  br label %96

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %0, i32 0, i32 2
  call void @ZSTD_buildFSETable(ptr noundef %52, ptr noundef nonnull %7, i32 noundef %45, ptr noundef nonnull @ML_base, ptr noundef nonnull @ML_bits, i32 noundef %48, ptr noundef %38, i32 noundef 628, i32 noundef 0) #13
  %53 = getelementptr i8, ptr %39, i32 %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %10) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(72) %10, i8 0, i32 72, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  store i32 35, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #13
  store i32 0, ptr %12, align 4, !annotation !8
  %54 = ptrtoint ptr %53 to i32
  %55 = sub i32 %18, %54
  %56 = call i32 @FSE_readNCount(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef %53, i32 noundef %55) #13
  %57 = icmp ult i32 %56, -119
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load i32, ptr %11, align 4
  %60 = icmp ugt i32 %59, 35
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, ptr %12, align 4
  %63 = icmp ugt i32 %62, 9
  br i1 %63, label %64, label %65

64:                                               ; preds = %61, %58, %51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %10) #13
  br label %96

65:                                               ; preds = %61
  call void @ZSTD_buildFSETable(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %59, ptr noundef nonnull @LL_base, ptr noundef nonnull @LL_bits, i32 noundef %62, ptr noundef %38, i32 noundef 628, i32 noundef 0) #13
  %66 = getelementptr i8, ptr %53, i32 %56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %10) #13
  %67 = getelementptr i8, ptr %66, i32 12
  %68 = icmp ugt ptr %67, %13
  br i1 %68, label %96, label %69

69:                                               ; preds = %65
  %70 = ptrtoint ptr %67 to i32
  %71 = sub i32 %18, %70
  %72 = load i32, ptr %66, align 1
  %73 = icmp eq i32 %72, 0
  %74 = icmp ugt i32 %72, %71
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %96, label %76

76:                                               ; preds = %69
  %77 = getelementptr i8, ptr %66, i32 4
  %78 = getelementptr %struct.ZSTD_entropyDTables_t, ptr %0, i32 0, i32 4, i32 0
  store i32 %72, ptr %78, align 4
  %79 = load i32, ptr %77, align 1
  %80 = icmp eq i32 %79, 0
  %81 = icmp ugt i32 %79, %71
  %82 = select i1 %80, i1 true, i1 %81
  br i1 %82, label %96, label %83

83:                                               ; preds = %76
  %84 = getelementptr i8, ptr %77, i32 4
  %85 = getelementptr %struct.ZSTD_entropyDTables_t, ptr %0, i32 0, i32 4, i32 1
  store i32 %79, ptr %85, align 4
  %86 = load i32, ptr %84, align 1
  %87 = icmp eq i32 %86, 0
  %88 = icmp ugt i32 %86, %71
  %89 = select i1 %87, i1 true, i1 %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %83
  %91 = getelementptr i8, ptr %84, i32 4
  %92 = getelementptr %struct.ZSTD_entropyDTables_t, ptr %0, i32 0, i32 4, i32 2
  store i32 %86, ptr %92, align 4
  %93 = ptrtoint ptr %91 to i32
  %94 = ptrtoint ptr %1 to i32
  %95 = sub i32 %93, %94
  br label %96

96:                                               ; preds = %90, %83, %76, %69, %65, %64, %50, %35, %15, %3
  %97 = phi i32 [ %95, %90 ], [ -30, %15 ], [ -30, %3 ], [ -30, %65 ], [ -30, %35 ], [ -30, %50 ], [ -30, %64 ], [ -30, %83 ], [ -30, %76 ], [ -30, %69 ]
  ret i32 %97
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_readDTableX2_wksp(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_readNCount(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_buildFSETable(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_decompressBegin(ptr noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 20
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 5, i32 1
  %6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 10
  store i32 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 15
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 12
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store i32 201326604, ptr %11, align 8
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 17
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 16
  store i32 0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 31
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 14
  store i32 3, ptr %15, align 8
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %16, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i32 12, i1 false)
  store ptr %10, ptr %0, align 8
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 2
  %18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 1
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 2
  store ptr %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 3
  store ptr %11, ptr %21, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decompressBegin_usingDict(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 20
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 5, i32 1
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 10
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 15
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 12
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 6
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %11, i8 0, i64 16, i1 false) #13
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false) #13
  store i32 201326604, ptr %13, align 8
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 17
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 16
  store i32 0, ptr %15, align 8
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 31
  store i32 0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 14
  store i32 3, ptr %17, align 8
  %18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %18, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i32 12, i1 false) #13
  store ptr %12, ptr %0, align 8
  %19 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 2
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 1
  %22 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 2
  store ptr %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 3
  store ptr %13, ptr %23, align 4
  %24 = icmp ne ptr %1, null
  %25 = icmp ne i32 %2, 0
  %26 = and i1 %24, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %3
  %28 = icmp ult i32 %2, 8
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 7
  %31 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 8
  store ptr %1, ptr %31, align 4
  store ptr %1, ptr %30, align 8
  br label %54

32:                                               ; preds = %27
  %33 = load i32, ptr %1, align 1
  %34 = icmp eq i32 %33, -332356553
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 7
  %37 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 8
  store ptr %1, ptr %37, align 4
  store ptr %1, ptr %36, align 8
  br label %54

38:                                               ; preds = %32
  %39 = getelementptr i8, ptr %1, i32 4
  %40 = load i32, ptr %39, align 1
  store i32 %40, ptr %16, align 8
  %41 = tail call i32 @ZSTD_loadDEntropy(ptr noundef %12, ptr noundef nonnull %1, i32 noundef %2) #13
  %42 = icmp ult i32 %41, -119
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = getelementptr i8, ptr %1, i32 %41
  store i32 1, ptr %14, align 4
  store i32 1, ptr %15, align 8
  %45 = load ptr, ptr %11, align 4
  %46 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 9
  store ptr %45, ptr %46, align 8
  %47 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 7
  %48 = load ptr, ptr %47, align 8
  %49 = ptrtoint ptr %45 to i32
  %50 = ptrtoint ptr %48 to i32
  %51 = sub i32 %50, %49
  %52 = getelementptr i8, ptr %44, i32 %51
  %53 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 8
  store ptr %52, ptr %53, align 4
  store ptr %44, ptr %47, align 8
  br label %54

54:                                               ; preds = %43, %35, %29
  %55 = getelementptr i8, ptr %1, i32 %2
  store ptr %55, ptr %11, align 4
  br label %56

56:                                               ; preds = %54, %38, %3
  %57 = phi i32 [ 0, %54 ], [ 0, %3 ], [ -30, %38 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decompressBegin_usingDDict(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %1) #13
  %6 = tail call i32 @ZSTD_DDict_dictSize(ptr noundef nonnull %1) #13
  %7 = getelementptr i8, ptr %5, i32 %6
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 8
  %10 = icmp ne ptr %9, %7
  %11 = zext i1 %10 to i32
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 32
  store i32 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %4, %2
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 20
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 5, i32 1
  %18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 10
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 15
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 12
  %21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %21, i8 0, i64 16, i1 false) #13
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false) #13
  store i32 201326604, ptr %23, align 8
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 17
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 16
  store i32 0, ptr %25, align 8
  %26 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 31
  store i32 0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 14
  store i32 3, ptr %27, align 8
  %28 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %28, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i32 12, i1 false) #13
  store ptr %22, ptr %0, align 8
  %29 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 2
  %30 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 1
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 1
  %32 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 2
  store ptr %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 3
  store ptr %23, ptr %33, align 4
  br i1 %3, label %35, label %34

34:                                               ; preds = %13
  tail call void @ZSTD_copyDDictParameters(ptr noundef %0, ptr noundef nonnull %1) #13
  br label %35

35:                                               ; preds = %34, %13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ZSTD_DDict_dictContent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_DDict_dictSize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_copyDDictParameters(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_getDictID_fromDict(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = icmp ult i32 %1, 8
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 1
  %6 = icmp eq i32 %5, -332356553
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %0, i32 4
  %9 = load i32, ptr %8, align 1
  br label %10

10:                                               ; preds = %7, %4, %2
  %11 = phi i32 [ %9, %7 ], [ 0, %2 ], [ 0, %4 ]
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_getDictID_fromFrame(ptr noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = alloca %struct.ZSTD_frameHeader, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false)
  %4 = call i32 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %1, i32 noundef 0) #13
  %5 = icmp ult i32 %4, -119
  %6 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %3, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = select i1 %5, i32 %7, i32 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #13
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ZSTD_createDStream() local_unnamed_addr #0 {
  %1 = tail call ptr @ZSTD_customMalloc(i32 noundef 161320, [3 x i32] zeroinitializer) #13
  %2 = icmp eq ptr %1, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 24
  store ptr null, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 24, i32 1
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 24, i32 2
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 27
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 9
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 32
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 33
  store i32 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 37
  store ptr null, ptr %11, align 8
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 38
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 42
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 36
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 46
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 47
  store i32 0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 50
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 55
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 34
  store ptr null, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 20
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 40
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false) #13
  store i32 134217729, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 51
  store i32 0, ptr %22, align 8
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 21
  store i32 0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %1, i32 0, i32 35
  store i32 0, ptr %24, align 8
  br label %25

25:                                               ; preds = %3, %0
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ZSTD_createDStream_advanced([3 x i32] %0) local_unnamed_addr #0 {
  %2 = extractvalue [3 x i32] %0, 0
  %3 = inttoptr i32 %2 to ptr
  %4 = extractvalue [3 x i32] %0, 1
  %5 = inttoptr i32 %4 to ptr
  %6 = extractvalue [3 x i32] %0, 2
  %7 = icmp eq i32 %2, 0
  %8 = icmp eq i32 %4, 0
  %9 = xor i1 %7, %8
  br i1 %9, label %35, label %10

10:                                               ; preds = %1
  %11 = tail call ptr @ZSTD_customMalloc(i32 noundef 161320, [3 x i32] %0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 24
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 24, i32 1
  store ptr %5, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 24, i32 2
  store i32 %6, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 27
  %18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 9
  store ptr null, ptr %18, align 8
  %19 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 32
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 33
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 37
  store ptr null, ptr %21, align 8
  %22 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 38
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 42
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 36
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 46
  store ptr null, ptr %25, align 4
  %26 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 47
  store i32 0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 50
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 55
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 34
  store ptr null, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 20
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 40
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false) #13
  store i32 134217729, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 51
  store i32 0, ptr %32, align 8
  %33 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 21
  store i32 0, ptr %33, align 8
  %34 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %11, i32 0, i32 35
  store i32 0, ptr %34, align 8
  br label %35

35:                                               ; preds = %13, %10, %1
  %36 = phi ptr [ null, %1 ], [ %11, %13 ], [ null, %10 ]
  ret ptr %36
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local ptr @ZSTD_initStaticDStream(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %0 to i32
  %4 = and i32 %3, 7
  %5 = icmp ne i32 %4, 0
  %6 = icmp ult i32 %1, 161320
  %7 = or i1 %6, %5
  br i1 %7, label %28, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 27
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 9
  store ptr null, ptr %10, align 8
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 32
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 33
  store i32 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 37
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 38
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 42
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 36
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 46
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 47
  store i32 0, ptr %18, align 8
  %19 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 50
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 55
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 34
  store ptr null, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 20
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 40
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false) #13
  store i32 134217729, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 51
  store i32 0, ptr %24, align 8
  %25 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 21
  store i32 0, ptr %25, align 8
  %26 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 35
  store i32 0, ptr %26, align 8
  store i32 %1, ptr %9, align 8
  %27 = getelementptr %struct.ZSTD_DCtx_s, ptr %0, i32 1
  store ptr %27, ptr %13, align 8
  br label %28

28:                                               ; preds = %8, %2
  %29 = phi ptr [ %0, %8 ], [ null, %2 ]
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_freeDStream(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @ZSTD_freeDCtx(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_DStreamInSize() local_unnamed_addr #2 {
  ret i32 131075
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_DStreamOutSize() local_unnamed_addr #2 {
  ret i32 131072
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_DCtx_loadDictionary_advanced(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 36
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 29
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @ZSTD_freeDDict(ptr noundef %11) #13
  store ptr null, ptr %10, align 8
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 30
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 33
  store i32 0, ptr %14, align 8
  %15 = icmp ne ptr %1, null
  %16 = icmp ne i32 %2, 0
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24
  %20 = load i32, ptr %19, align 4
  %21 = insertvalue [3 x i32] undef, i32 %20, 0
  %22 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = insertvalue [3 x i32] %21, i32 %23, 1
  %25 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = insertvalue [3 x i32] %24, i32 %26, 2
  %28 = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, [3 x i32] %27) #13
  store ptr %28, ptr %10, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %18
  store ptr %28, ptr %13, align 4
  store i32 -1, ptr %14, align 8
  br label %31

31:                                               ; preds = %30, %18, %9, %5
  %32 = phi i32 [ -60, %5 ], [ -64, %18 ], [ 0, %30 ], [ 0, %9 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ZSTD_createDDict_advanced(ptr noundef, i32 noundef, i32 noundef, i32 noundef, [3 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_DCtx_loadDictionary_byReference(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 36
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 29
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @ZSTD_freeDDict(ptr noundef %9) #13
  store ptr null, ptr %8, align 8
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 30
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 33
  store i32 0, ptr %12, align 8
  %13 = icmp ne ptr %1, null
  %14 = icmp ne i32 %2, 0
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24
  %18 = load i32, ptr %17, align 4
  %19 = insertvalue [3 x i32] undef, i32 %18, 0
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = insertvalue [3 x i32] %19, i32 %21, 1
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = insertvalue [3 x i32] %22, i32 %24, 2
  %26 = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %1, i32 noundef %2, i32 noundef 1, i32 noundef 0, [3 x i32] %25) #13
  store ptr %26, ptr %8, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %16
  store ptr %26, ptr %11, align 4
  store i32 -1, ptr %12, align 8
  br label %29

29:                                               ; preds = %28, %16, %7, %3
  %30 = phi i32 [ -60, %3 ], [ -64, %16 ], [ 0, %28 ], [ 0, %7 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_DCtx_loadDictionary(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 36
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 29
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @ZSTD_freeDDict(ptr noundef %9) #13
  store ptr null, ptr %8, align 8
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 30
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 33
  store i32 0, ptr %12, align 8
  %13 = icmp ne ptr %1, null
  %14 = icmp ne i32 %2, 0
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24
  %18 = load i32, ptr %17, align 4
  %19 = insertvalue [3 x i32] undef, i32 %18, 0
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = insertvalue [3 x i32] %19, i32 %21, 1
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = insertvalue [3 x i32] %22, i32 %24, 2
  %26 = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %1, i32 noundef %2, i32 noundef 0, i32 noundef 0, [3 x i32] %25) #13
  store ptr %26, ptr %8, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %16
  store ptr %26, ptr %11, align 4
  store i32 -1, ptr %12, align 8
  br label %29

29:                                               ; preds = %28, %16, %7, %3
  %30 = phi i32 [ -60, %3 ], [ -64, %16 ], [ 0, %28 ], [ 0, %7 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_DCtx_refPrefix_advanced(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 36
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 29
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @ZSTD_freeDDict(ptr noundef %10) #13
  store ptr null, ptr %9, align 8
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 30
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 33
  store i32 0, ptr %13, align 8
  %14 = icmp ne ptr %1, null
  %15 = icmp ne i32 %2, 0
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24
  %19 = load i32, ptr %18, align 4
  %20 = insertvalue [3 x i32] undef, i32 %19, 0
  %21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = insertvalue [3 x i32] %20, i32 %22, 1
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = insertvalue [3 x i32] %23, i32 %25, 2
  %27 = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %1, i32 noundef %2, i32 noundef 1, i32 noundef %3, [3 x i32] %26) #13
  store ptr %27, ptr %9, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %17
  store ptr %27, ptr %12, align 4
  br label %30

30:                                               ; preds = %29, %8
  store i32 1, ptr %13, align 8
  br label %31

31:                                               ; preds = %30, %17, %4
  %32 = phi i32 [ 0, %30 ], [ -60, %4 ], [ -64, %17 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_DCtx_refPrefix(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 36
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 29
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @ZSTD_freeDDict(ptr noundef %9) #13
  store ptr null, ptr %8, align 8
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 30
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 33
  store i32 0, ptr %12, align 8
  %13 = icmp ne ptr %1, null
  %14 = icmp ne i32 %2, 0
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24
  %18 = load i32, ptr %17, align 4
  %19 = insertvalue [3 x i32] undef, i32 %18, 0
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = insertvalue [3 x i32] %19, i32 %21, 1
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = insertvalue [3 x i32] %22, i32 %24, 2
  %26 = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %1, i32 noundef %2, i32 noundef 1, i32 noundef 1, [3 x i32] %25) #13
  store ptr %26, ptr %8, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %16
  store ptr %26, ptr %11, align 4
  br label %29

29:                                               ; preds = %28, %7
  store i32 1, ptr %12, align 8
  br label %30

30:                                               ; preds = %29, %16, %3
  %31 = phi i32 [ 0, %29 ], [ -60, %3 ], [ -64, %16 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_initDStream_usingDict(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 36
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 50
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 29
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @ZSTD_freeDDict(ptr noundef %7) #13
  store ptr null, ptr %6, align 8
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 30
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 33
  store i32 0, ptr %10, align 8
  %11 = icmp ne ptr %1, null
  %12 = icmp ne i32 %2, 0
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24
  %16 = load i32, ptr %15, align 4
  %17 = insertvalue [3 x i32] undef, i32 %16, 0
  %18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = insertvalue [3 x i32] %17, i32 %19, 1
  %21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = insertvalue [3 x i32] %20, i32 %22, 2
  %24 = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %1, i32 noundef %2, i32 noundef 0, i32 noundef 0, [3 x i32] %23) #13
  store ptr %24, ptr %6, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %14
  store ptr %24, ptr %9, align 4
  store i32 -1, ptr %10, align 8
  br label %27

27:                                               ; preds = %26, %3
  %28 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 20
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 5, i32 1
  br label %32

32:                                               ; preds = %27, %14
  %33 = phi i32 [ %31, %27 ], [ -64, %14 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_DCtx_reset(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, -3
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 36
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 50
  store i32 0, ptr %7, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = and i32 %1, -2
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 36
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 29
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i32 @ZSTD_freeDDict(ptr noundef %17) #13
  store ptr null, ptr %16, align 8
  %19 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 30
  store ptr null, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 33
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 20
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 40
  store i32 134217729, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 51
  store i32 0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 21
  store i32 0, ptr %24, align 8
  %25 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 35
  store i32 0, ptr %25, align 8
  br label %26

26:                                               ; preds = %15, %11, %8
  %27 = phi i32 [ -60, %11 ], [ 0, %8 ], [ 0, %15 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_initDStream(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 36
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 50
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 29
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @ZSTD_freeDDict(ptr noundef %5) #13
  store ptr null, ptr %4, align 8
  %7 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 30
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 33
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 20
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 5, i32 1
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_initDStream_usingDDict(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 36
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 50
  store i32 0, ptr %4, align 4
  %5 = tail call i32 @ZSTD_DCtx_refDDict(ptr noundef %0, ptr noundef %1)
  %6 = icmp ult i32 %5, -119
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 20
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 5, i32 1
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i32 [ %5, %2 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_DCtx_refDDict(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 36
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %150

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 29
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @ZSTD_freeDDict(ptr noundef %10) #13
  store ptr null, ptr %9, align 8
  %12 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 30
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 33
  store i32 0, ptr %13, align 8
  %14 = icmp eq ptr %1, null
  br i1 %14, label %150, label %15

15:                                               ; preds = %8
  store ptr %1, ptr %12, align 4
  store i32 -1, ptr %13, align 8
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 35
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %150

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 34
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24
  %25 = load i32, ptr %24, align 4
  %26 = insertvalue [3 x i32] undef, i32 %25, 0
  %27 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = insertvalue [3 x i32] %26, i32 %28, 1
  %30 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = insertvalue [3 x i32] %29, i32 %31, 2
  %33 = tail call ptr @ZSTD_customMalloc(i32 noundef 12, [3 x i32] %32) #13
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %23
  %36 = tail call ptr @ZSTD_customCalloc(i32 noundef 256, [3 x i32] %32) #13
  store ptr %36, ptr %33, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  tail call void @ZSTD_customFree(ptr noundef nonnull %33, [3 x i32] %32) #13
  br label %39

39:                                               ; preds = %38, %23
  store ptr null, ptr %20, align 4
  br label %150

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %33, i32 0, i32 1
  store i32 64, ptr %41, align 4
  %42 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %33, i32 0, i32 2
  store i32 0, ptr %42, align 4
  store ptr %33, ptr %20, align 4
  br label %43

43:                                               ; preds = %40, %19
  %44 = phi ptr [ %33, %40 ], [ %21, %19 ]
  %45 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24
  %46 = load i32, ptr %45, align 4
  %47 = insertvalue [3 x i32] undef, i32 %46, 0
  %48 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = insertvalue [3 x i32] %47, i32 %49, 1
  %51 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = insertvalue [3 x i32] %50, i32 %52, 2
  %54 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %44, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = shl i32 %55, 2
  %57 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %44, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = udiv i32 %56, %58
  %60 = mul i32 %59, 3
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %115, label %62

62:                                               ; preds = %43
  %63 = shl i32 %58, 3
  %64 = tail call ptr @ZSTD_customCalloc(i32 noundef %63, [3 x i32] %53) #13
  %65 = load ptr, ptr %44, align 4
  %66 = load i32, ptr %57, align 4
  %67 = icmp eq ptr %64, null
  br i1 %67, label %150, label %68

68:                                               ; preds = %62
  %69 = shl i32 %58, 1
  store ptr %64, ptr %44, align 4
  store i32 %69, ptr %57, align 4
  store i32 0, ptr %54, align 4
  %70 = icmp eq i32 %66, 0
  br i1 %70, label %114, label %71

71:                                               ; preds = %111, %68
  %72 = phi i32 [ %112, %111 ], [ 0, %68 ]
  %73 = getelementptr ptr, ptr %65, i32 %72
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %111, label %76

76:                                               ; preds = %71
  %77 = call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %74) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 %77, ptr %4, align 4
  %78 = call i64 @xxh64(ptr noundef nonnull %4, i32 noundef 4, i64 noundef 0) #13
  %79 = load i32, ptr %57, align 4
  %80 = add i32 %79, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  %81 = load i32, ptr %54, align 4
  %82 = icmp eq i32 %81, %79
  br i1 %82, label %150, label %83

83:                                               ; preds = %76
  %84 = trunc i64 %78 to i32
  %85 = and i32 %80, %84
  %86 = load ptr, ptr %44, align 4
  %87 = getelementptr ptr, ptr %86, i32 %85
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %105, label %90

90:                                               ; preds = %98, %83
  %91 = phi ptr [ %103, %98 ], [ %88, %83 ]
  %92 = phi i32 [ %100, %98 ], [ %85, %83 ]
  %93 = call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %91) #13
  %94 = icmp eq i32 %93, %77
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load ptr, ptr %44, align 4
  %97 = getelementptr ptr, ptr %96, i32 %92
  store ptr %74, ptr %97, align 4
  br label %111

98:                                               ; preds = %90
  %99 = and i32 %92, %80
  %100 = add i32 %99, 1
  %101 = load ptr, ptr %44, align 4
  %102 = getelementptr ptr, ptr %101, i32 %100
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %90

105:                                              ; preds = %98, %83
  %106 = phi i32 [ %85, %83 ], [ %100, %98 ]
  %107 = phi ptr [ %86, %83 ], [ %101, %98 ]
  %108 = getelementptr ptr, ptr %107, i32 %106
  store ptr %74, ptr %108, align 4
  %109 = load i32, ptr %54, align 4
  %110 = add i32 %109, 1
  store i32 %110, ptr %54, align 4
  br label %111

111:                                              ; preds = %105, %95, %71
  %112 = add nuw i32 %72, 1
  %113 = icmp eq i32 %112, %66
  br i1 %113, label %114, label %71

114:                                              ; preds = %111, %68
  call void @ZSTD_customFree(ptr noundef %65, [3 x i32] %53) #13
  br label %115

115:                                              ; preds = %114, %43
  %116 = call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %1) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 %116, ptr %3, align 4
  %117 = call i64 @xxh64(ptr noundef nonnull %3, i32 noundef 4, i64 noundef 0) #13
  %118 = load i32, ptr %57, align 4
  %119 = add i32 %118, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  %120 = load i32, ptr %54, align 4
  %121 = icmp eq i32 %120, %118
  br i1 %121, label %150, label %122

122:                                              ; preds = %115
  %123 = trunc i64 %117 to i32
  %124 = and i32 %119, %123
  %125 = load ptr, ptr %44, align 4
  %126 = getelementptr ptr, ptr %125, i32 %124
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %144, label %129

129:                                              ; preds = %137, %122
  %130 = phi ptr [ %142, %137 ], [ %127, %122 ]
  %131 = phi i32 [ %139, %137 ], [ %124, %122 ]
  %132 = call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %130) #13
  %133 = icmp eq i32 %132, %116
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load ptr, ptr %44, align 4
  %136 = getelementptr ptr, ptr %135, i32 %131
  store ptr %1, ptr %136, align 4
  br label %150

137:                                              ; preds = %129
  %138 = and i32 %131, %119
  %139 = add i32 %138, 1
  %140 = load ptr, ptr %44, align 4
  %141 = getelementptr ptr, ptr %140, i32 %139
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %129

144:                                              ; preds = %137, %122
  %145 = phi i32 [ %124, %122 ], [ %139, %137 ]
  %146 = phi ptr [ %125, %122 ], [ %140, %137 ]
  %147 = getelementptr ptr, ptr %146, i32 %145
  store ptr %1, ptr %147, align 4
  %148 = load i32, ptr %54, align 4
  %149 = add i32 %148, 1
  store i32 %149, ptr %54, align 4
  br label %150

150:                                              ; preds = %144, %134, %115, %76, %62, %39, %15, %8, %2
  %151 = phi i32 [ -60, %2 ], [ -64, %39 ], [ 0, %15 ], [ 0, %8 ], [ -1, %115 ], [ -64, %62 ], [ 0, %134 ], [ 0, %144 ], [ -1, %76 ]
  ret i32 %151
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_resetDStream(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 36
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 50
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 20
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 5, i32 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_DCtx_setMaxWindowSize(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 36
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = add i32 %1, -1073741825
  %8 = icmp ult i32 %7, -1073740801
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 40
  store i32 %1, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %6, %2
  %12 = phi i32 [ 0, %9 ], [ -60, %2 ], [ -42, %6 ]
  ret i32 %12
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ZSTD_dParam_getBounds(ptr noalias nocapture writeonly sret(%struct.ZSTD_bounds) align 4 %0, i32 noundef %1) local_unnamed_addr #3 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %0, i8 0, i32 12, i1 false)
  switch i32 %1, label %14 [
    i32 100, label %3
    i32 1000, label %6
    i32 1001, label %8
    i32 1002, label %10
    i32 1003, label %12
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 1
  store i32 10, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 30, ptr %5, align 4
  br label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 1, ptr %7, align 4
  br label %15

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 1, ptr %9, align 4
  br label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 1, ptr %11, align 4
  br label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.ZSTD_bounds, ptr %0, i32 0, i32 2
  store i32 1, ptr %13, align 4
  br label %15

14:                                               ; preds = %2
  store i32 -40, ptr %0, align 4
  br label %15

15:                                               ; preds = %14, %12, %10, %8, %6, %3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_DCtx_setFormat(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 36
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = icmp ugt i32 %1, 1
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 20
  store i32 %1, ptr %9, align 4
  br label %10

10:                                               ; preds = %8, %6, %2
  %11 = phi i32 [ 0, %8 ], [ -60, %2 ], [ -42, %6 ]
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_DCtx_setParameter(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 36
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %36

7:                                                ; preds = %3
  switch i32 %1, label %36 [
    i32 100, label %8
    i32 1000, label %16
    i32 1001, label %20
    i32 1002, label %24
    i32 1003, label %28
  ]

8:                                                ; preds = %7
  %9 = icmp eq i32 %2, 0
  %10 = select i1 %9, i32 27, i32 %2
  %11 = add i32 %10, -31
  %12 = icmp ult i32 %11, -21
  br i1 %12, label %36, label %13

13:                                               ; preds = %8
  %14 = shl nuw nsw i32 1, %10
  %15 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 40
  store i32 %14, ptr %15, align 4
  br label %36

16:                                               ; preds = %7
  %17 = icmp ugt i32 %2, 1
  br i1 %17, label %36, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 20
  store i32 %2, ptr %19, align 4
  br label %36

20:                                               ; preds = %7
  %21 = icmp ugt i32 %2, 1
  br i1 %21, label %36, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 51
  store i32 %2, ptr %23, align 8
  br label %36

24:                                               ; preds = %7
  %25 = icmp ugt i32 %2, 1
  br i1 %25, label %36, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 21
  store i32 %2, ptr %27, align 8
  br label %36

28:                                               ; preds = %7
  %29 = icmp ugt i32 %2, 1
  br i1 %29, label %36, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 27
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 35
  store i32 %2, ptr %35, align 8
  br label %36

36:                                               ; preds = %34, %30, %28, %26, %24, %22, %20, %18, %16, %13, %8, %7, %3
  %37 = phi i32 [ 0, %34 ], [ 0, %26 ], [ 0, %22 ], [ 0, %18 ], [ 0, %13 ], [ -60, %3 ], [ -42, %8 ], [ -42, %16 ], [ -42, %20 ], [ -42, %24 ], [ -42, %28 ], [ -40, %30 ], [ -40, %7 ]
  ret i32 %37
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_DCtx_getParameter(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #7 {
  switch i32 %1, label %23 [
    i32 100, label %4
    i32 1000, label %9
    i32 1001, label %12
    i32 1002, label %15
    i32 1003, label %18
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 40
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @llvm.ctlz.i32(i32 %6, i1 false) #13, !range !24
  %8 = xor i32 %7, 31
  br label %21

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 20
  %11 = load i32, ptr %10, align 4
  br label %21

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 51
  %14 = load i32, ptr %13, align 8
  br label %21

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 21
  %17 = load i32, ptr %16, align 8
  br label %21

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 35
  %20 = load i32, ptr %19, align 8
  br label %21

21:                                               ; preds = %18, %15, %12, %9, %4
  %22 = phi i32 [ %8, %4 ], [ %11, %9 ], [ %14, %12 ], [ %17, %15 ], [ %20, %18 ]
  store i32 %22, ptr %2, align 4
  br label %23

23:                                               ; preds = %21, %3
  %24 = phi i32 [ -40, %3 ], [ 0, %21 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_sizeof_DStream(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 29
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @ZSTD_sizeof_DDict(ptr noundef %5) #13
  %7 = add i32 %6, 161320
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 38
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %7, %9
  %11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 42
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %10, %12
  br label %14

14:                                               ; preds = %3, %1
  %15 = phi i32 [ %13, %3 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_decodingBufferSize_min(i64 noundef %0, i64 noundef %1) local_unnamed_addr #11 {
  %3 = tail call i64 @llvm.umin.i64(i64 %0, i64 131072)
  %4 = add i64 %0, 64
  %5 = add i64 %4, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %5, i64 %1)
  %7 = icmp ult i64 %6, 4294967296
  %8 = trunc i64 %6 to i32
  %9 = select i1 %7, i32 %8, i32 -16
  ret i32 %9
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_estimateDStreamSize(i32 noundef %0) local_unnamed_addr #11 {
  %2 = tail call i32 @llvm.umin.i32(i32 %0, i32 131072)
  %3 = zext i32 %0 to i64
  %4 = tail call i64 @llvm.umin.i64(i64 %3, i64 131072) #13
  %5 = add nuw nsw i64 %3, 64
  %6 = add nuw nsw i64 %5, %4
  %7 = icmp ult i64 %6, 4294967296
  %8 = trunc i64 %6 to i32
  %9 = select i1 %7, i32 %8, i32 -16
  %10 = add nuw nsw i32 %2, 161320
  %11 = add i32 %10, %9
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_estimateDStreamSize_fromFrame(ptr noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = alloca %struct.ZSTD_frameHeader, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !8
  %4 = call i32 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %1, i32 noundef 0) #13
  %5 = icmp ult i32 %4, -119
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %3, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = icmp ugt i64 %10, 1073741824
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = trunc i64 %10 to i32
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 131072) #13
  %15 = tail call i64 @llvm.umin.i64(i64 %10, i64 131072) #13
  %16 = add nuw nsw i64 %10, 64
  %17 = add nuw nsw i64 %16, %15
  %18 = trunc i64 %17 to i32
  %19 = add nuw nsw i32 %14, 161320
  %20 = add nuw nsw i32 %19, %18
  br label %21

21:                                               ; preds = %12, %8, %6, %2
  %22 = phi i32 [ %20, %12 ], [ %4, %2 ], [ -72, %6 ], [ -16, %8 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #13
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decompressStream(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ZSTD_frameSizeInfo, align 8
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %6, i32 %11
  %13 = load ptr, ptr %1, align 4
  %14 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %13, i32 %18
  %20 = icmp ugt i32 %8, %11
  br i1 %20, label %526, label %21

21:                                               ; preds = %3
  %22 = icmp ugt i32 %15, %18
  br i1 %22, label %526, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 52
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 52, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 52, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 51
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %43

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 36
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = icmp eq ptr %25, %13
  %39 = icmp eq i32 %29, %15
  %40 = select i1 %38, i1 %39, i1 false
  %41 = icmp eq i32 %27, %18
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %526

43:                                               ; preds = %37, %33, %23
  %44 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 36
  %45 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 44
  %46 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 43
  %47 = ptrtoint ptr %19 to i32
  %48 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 41
  %49 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 42
  %50 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 11
  %51 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 11, i32 2
  %52 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 39
  %53 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 45
  %54 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 48
  %55 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 49
  %56 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 54
  %57 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 20
  %58 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 35
  %59 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 34
  %60 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 30
  %61 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 11, i32 5
  %62 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 29
  %63 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 33
  %64 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 31
  %65 = ptrtoint ptr %12 to i32
  %66 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 11, i32 3
  %67 = ptrtoint ptr %9 to i32
  %68 = sub i32 %65, %67
  %69 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 10
  %70 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 9
  %71 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 32
  %72 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 15
  %73 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 12
  %74 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 6
  %75 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4
  %76 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 3
  %77 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 17
  %78 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 16
  %79 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 14
  %80 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 4
  %81 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 2
  %82 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 1
  %83 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 1
  %84 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 2
  %85 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 3
  %86 = getelementptr %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 54, i32 4
  %87 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 11, i32 1
  %88 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 40
  %89 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 38
  %90 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 55
  %91 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 27
  %92 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 37
  %93 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24
  %94 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24, i32 1
  %95 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 24, i32 2
  br label %96

96:                                               ; preds = %440, %43
  %97 = phi ptr [ %9, %43 ], [ %441, %440 ]
  %98 = phi ptr [ %16, %43 ], [ %442, %440 ]
  br label %99

99:                                               ; preds = %465, %96
  %100 = phi ptr [ %98, %96 ], [ %457, %465 ]
  %101 = load i32, ptr %44, align 4
  switch i32 %101, label %526 [
    i32 0, label %107
    i32 1, label %105
    i32 2, label %312
    i32 3, label %102
    i32 4, label %443
  ]

102:                                              ; preds = %99
  %103 = load i32, ptr %69, align 4
  %104 = load i32, ptr %72, align 4
  br label %374

105:                                              ; preds = %99
  %106 = load i32, ptr %53, align 8
  br label %108

107:                                              ; preds = %99
  store i32 1, ptr %44, align 4
  store i32 0, ptr %45, align 4
  store i32 0, ptr %46, align 8
  store i32 0, ptr %52, align 8
  store i32 0, ptr %53, align 8
  store i32 0, ptr %54, align 4
  store i32 0, ptr %55, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %24, ptr noundef align 4 dereferenceable(12) %1, i32 12, i1 false)
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi i32 [ %106, %105 ], [ 0, %107 ]
  %110 = load i32, ptr %57, align 4
  %111 = call i32 @ZSTD_getFrameHeader_advanced(ptr noundef %50, ptr noundef %56, i32 noundef %109, i32 noundef %110)
  %112 = load i32, ptr %58, align 8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %148, label %114

114:                                              ; preds = %108
  %115 = load ptr, ptr %59, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %148, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr %60, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %148, label %120

120:                                              ; preds = %117
  %121 = load i32, ptr %61, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 %121, ptr %5, align 4
  %122 = call i64 @xxh64(ptr noundef nonnull %5, i32 noundef 4, i64 noundef 0) #13
  %123 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %115, i32 0, i32 1
  %124 = load i32, ptr %123, align 4
  %125 = add i32 %124, -1
  %126 = trunc i64 %122 to i32
  %127 = and i32 %125, %126
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %128

128:                                              ; preds = %128, %120
  %129 = phi i32 [ %127, %120 ], [ %138, %128 ]
  %130 = load ptr, ptr %115, align 4
  %131 = getelementptr ptr, ptr %130, i32 %129
  %132 = load ptr, ptr %131, align 4
  %133 = call i32 @ZSTD_getDictID_fromDDict(ptr noundef %132) #13
  %134 = icmp eq i32 %133, %121
  %135 = icmp eq i32 %133, 0
  %136 = or i1 %134, %135
  %137 = and i32 %129, %125
  %138 = add i32 %137, 1
  br i1 %136, label %139, label %128

139:                                              ; preds = %128
  %140 = load ptr, ptr %115, align 4
  %141 = getelementptr ptr, ptr %140, i32 %129
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %148, label %144

144:                                              ; preds = %139
  %145 = load ptr, ptr %62, align 8
  %146 = call i32 @ZSTD_freeDDict(ptr noundef %145) #13
  store ptr null, ptr %62, align 8
  %147 = load i32, ptr %61, align 4
  store i32 %147, ptr %64, align 8
  store ptr %142, ptr %60, align 4
  store i32 -1, ptr %63, align 8
  br label %148

148:                                              ; preds = %144, %139, %117, %114, %108
  %149 = icmp ult i32 %111, -119
  br i1 %149, label %150, label %526

150:                                              ; preds = %148
  %151 = icmp eq i32 %111, 0
  br i1 %151, label %176, label %152

152:                                              ; preds = %150
  %153 = load i32, ptr %53, align 8
  %154 = sub i32 %111, %153
  %155 = ptrtoint ptr %97 to i32
  %156 = sub i32 %65, %155
  %157 = icmp ugt i32 %154, %156
  br i1 %157, label %158, label %173

158:                                              ; preds = %152
  %159 = icmp eq ptr %12, %97
  br i1 %159, label %164, label %160

160:                                              ; preds = %158
  %161 = getelementptr i8, ptr %56, i32 %153
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %161, ptr align 1 %97, i32 %156, i1 false)
  %162 = load i32, ptr %53, align 8
  %163 = add i32 %162, %156
  store i32 %163, ptr %53, align 8
  br label %164

164:                                              ; preds = %160, %158
  %165 = load i32, ptr %10, align 4
  store i32 %165, ptr %7, align 4
  %166 = load i32, ptr %57, align 4
  %167 = icmp eq i32 %166, 0
  %168 = select i1 %167, i32 6, i32 2
  %169 = call i32 @llvm.umax.i32(i32 %168, i32 %111)
  %170 = load i32, ptr %53, align 8
  %171 = sub i32 3, %170
  %172 = add i32 %171, %169
  br label %526

173:                                              ; preds = %152
  %174 = getelementptr i8, ptr %56, i32 %153
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %174, ptr align 1 %97, i32 %154, i1 false)
  store i32 %111, ptr %53, align 8
  %175 = getelementptr i8, ptr %97, i32 %154
  br label %440

176:                                              ; preds = %150
  %177 = load i64, ptr %50, align 8
  %178 = icmp eq i64 %177, -1
  br i1 %178, label %197, label %179

179:                                              ; preds = %176
  %180 = load i32, ptr %66, align 4
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %197, label %182

182:                                              ; preds = %179
  %183 = ptrtoint ptr %100 to i32
  %184 = sub i32 %47, %183
  %185 = zext i32 %184 to i64
  %186 = icmp ugt i64 %177, %185
  br i1 %186, label %197, label %187

187:                                              ; preds = %182
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false) #13, !annotation !8
  call fastcc void @ZSTD_findFrameSizeInfo(ptr nonnull sret(%struct.ZSTD_frameSizeInfo) align 8 %4, ptr noundef %9, i32 noundef %68) #13
  %188 = load i32, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  %189 = icmp ugt i32 %188, %68
  br i1 %189, label %197, label %190

190:                                              ; preds = %187
  %191 = call fastcc ptr @ZSTD_getDDict(ptr noundef %0)
  %192 = call fastcc i32 @ZSTD_decompressMultiFrame(ptr noundef %0, ptr noundef %100, i32 noundef %184, ptr noundef %9, i32 noundef %188, ptr noundef null, i32 noundef 0, ptr noundef %191) #13
  %193 = icmp ult i32 %192, -119
  br i1 %193, label %194, label %526

194:                                              ; preds = %190
  %195 = getelementptr i8, ptr %9, i32 %188
  %196 = getelementptr i8, ptr %100, i32 %192
  store i32 0, ptr %69, align 4
  br label %471

197:                                              ; preds = %187, %182, %179, %176
  %198 = load i32, ptr %30, align 8
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %211

200:                                              ; preds = %197
  %201 = load i32, ptr %66, align 4
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %211, label %203

203:                                              ; preds = %200
  %204 = load i64, ptr %50, align 8
  %205 = icmp eq i64 %204, -1
  br i1 %205, label %211, label %206

206:                                              ; preds = %203
  %207 = ptrtoint ptr %100 to i32
  %208 = sub i32 %47, %207
  %209 = zext i32 %208 to i64
  %210 = icmp ugt i64 %204, %209
  br i1 %210, label %526, label %211

211:                                              ; preds = %206, %203, %200, %197
  %212 = load i32, ptr %63, align 8
  switch i32 %212, label %213 [
    i32 1, label %216
    i32 -1, label %217
  ]

213:                                              ; preds = %211
  %214 = load ptr, ptr %62, align 8
  %215 = call i32 @ZSTD_freeDDict(ptr noundef %214) #13
  store ptr null, ptr %62, align 8
  store ptr null, ptr %60, align 4
  store i32 0, ptr %63, align 8
  br label %227

216:                                              ; preds = %211
  store i32 0, ptr %63, align 8
  br label %217

217:                                              ; preds = %216, %211
  %218 = load ptr, ptr %60, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %227, label %220

220:                                              ; preds = %217
  %221 = call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %218) #13
  %222 = call i32 @ZSTD_DDict_dictSize(ptr noundef nonnull %218) #13
  %223 = getelementptr i8, ptr %221, i32 %222
  %224 = load ptr, ptr %70, align 8
  %225 = icmp ne ptr %224, %223
  %226 = zext i1 %225 to i32
  store i32 %226, ptr %71, align 4
  br label %227

227:                                              ; preds = %220, %217, %213
  %228 = phi i1 [ true, %213 ], [ false, %220 ], [ true, %217 ]
  %229 = phi ptr [ null, %213 ], [ %218, %220 ], [ null, %217 ]
  %230 = load i32, ptr %57, align 4
  %231 = icmp eq i32 %230, 0
  %232 = select i1 %231, i32 5, i32 1
  store i32 %232, ptr %69, align 4
  store i32 0, ptr %72, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %74, i8 0, i64 16, i1 false) #13
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %73, i8 0, i64 16, i1 false) #13
  store i32 201326604, ptr %76, align 8
  store i32 0, ptr %77, align 4
  store i32 0, ptr %78, align 8
  store i32 0, ptr %64, align 8
  store i32 3, ptr %79, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %80, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i32 12, i1 false) #13
  store ptr %75, ptr %0, align 8
  store ptr %81, ptr %82, align 4
  store ptr %83, ptr %84, align 8
  store ptr %76, ptr %85, align 4
  br i1 %228, label %234, label %233

233:                                              ; preds = %227
  call void @ZSTD_copyDDictParameters(ptr noundef %0, ptr noundef nonnull %229) #13
  br label %234

234:                                              ; preds = %233, %227
  %235 = load i32, ptr %56, align 1
  %236 = and i32 %235, -16
  %237 = icmp eq i32 %236, 407710288
  br i1 %237, label %238, label %240

238:                                              ; preds = %234
  %239 = load i32, ptr %86, align 1
  br label %244

240:                                              ; preds = %234
  %241 = load i32, ptr %53, align 8
  %242 = call fastcc i32 @ZSTD_decodeFrameHeader(ptr noundef %0, ptr noundef %56, i32 noundef %241)
  %243 = icmp ult i32 %242, -119
  br i1 %243, label %244, label %526

244:                                              ; preds = %240, %238
  %245 = phi i32 [ %239, %238 ], [ 3, %240 ]
  %246 = phi i32 [ 7, %238 ], [ 2, %240 ]
  store i32 %245, ptr %69, align 4
  store i32 %246, ptr %72, align 4
  %247 = load i64, ptr %87, align 8
  %248 = call i64 @llvm.umax.i64(i64 %247, i64 1024)
  store i64 %248, ptr %87, align 8
  %249 = load i32, ptr %88, align 4
  %250 = zext i32 %249 to i64
  %251 = icmp ugt i64 %248, %250
  br i1 %251, label %526, label %252

252:                                              ; preds = %244
  %253 = load i32, ptr %51, align 8
  %254 = call i32 @llvm.umax.i32(i32 %253, i32 4)
  %255 = load i32, ptr %30, align 8
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %266

257:                                              ; preds = %252
  %258 = load i64, ptr %50, align 8
  %259 = call i64 @llvm.umin.i64(i64 %248, i64 131072) #13
  %260 = add i64 %248, 64
  %261 = add i64 %260, %259
  %262 = call i64 @llvm.umin.i64(i64 %261, i64 %258) #13
  %263 = icmp ult i64 %262, 4294967296
  %264 = trunc i64 %262 to i32
  %265 = select i1 %263, i32 %264, i32 -16
  br label %266

266:                                              ; preds = %257, %252
  %267 = phi i32 [ %265, %257 ], [ 0, %252 ]
  %268 = load i32, ptr %89, align 4
  %269 = load i32, ptr %49, align 4
  %270 = add i32 %269, %268
  %271 = add i32 %267, %254
  %272 = mul i32 %271, 3
  %273 = icmp ult i32 %270, %272
  br i1 %273, label %277, label %274

274:                                              ; preds = %266
  %275 = load i32, ptr %90, align 4
  %276 = add i32 %275, 1
  br label %277

277:                                              ; preds = %274, %266
  %278 = phi i32 [ %276, %274 ], [ 0, %266 ]
  store i32 %278, ptr %90, align 4
  %279 = icmp ult i32 %268, %254
  br i1 %279, label %284, label %280

280:                                              ; preds = %277
  %281 = icmp ult i32 %269, %267
  %282 = icmp ugt i32 %278, 127
  %283 = select i1 %281, i1 true, i1 %282
  br i1 %283, label %284, label %311

284:                                              ; preds = %280, %277
  %285 = load i32, ptr %91, align 8
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %292, label %287

287:                                              ; preds = %284
  %288 = add i32 %285, -161320
  %289 = icmp ugt i32 %271, %288
  br i1 %289, label %526, label %290

290:                                              ; preds = %287
  %291 = load ptr, ptr %92, align 8
  br label %308

292:                                              ; preds = %284
  %293 = load ptr, ptr %92, align 8
  %294 = load i32, ptr %93, align 4
  %295 = insertvalue [3 x i32] undef, i32 %294, 0
  %296 = load i32, ptr %94, align 4
  %297 = insertvalue [3 x i32] %295, i32 %296, 1
  %298 = load i32, ptr %95, align 4
  %299 = insertvalue [3 x i32] %297, i32 %298, 2
  call void @ZSTD_customFree(ptr noundef %293, [3 x i32] %299) #13
  store i32 0, ptr %89, align 4
  store i32 0, ptr %49, align 4
  %300 = load i32, ptr %93, align 4
  %301 = insertvalue [3 x i32] undef, i32 %300, 0
  %302 = load i32, ptr %94, align 4
  %303 = insertvalue [3 x i32] %301, i32 %302, 1
  %304 = load i32, ptr %95, align 4
  %305 = insertvalue [3 x i32] %303, i32 %304, 2
  %306 = call ptr @ZSTD_customMalloc(i32 noundef %271, [3 x i32] %305) #13
  store ptr %306, ptr %92, align 8
  %307 = icmp eq ptr %306, null
  br i1 %307, label %526, label %308

308:                                              ; preds = %292, %290
  %309 = phi ptr [ %291, %290 ], [ %306, %292 ]
  store i32 %254, ptr %89, align 4
  %310 = getelementptr i8, ptr %309, i32 %254
  store ptr %310, ptr %48, align 8
  store i32 %267, ptr %49, align 4
  br label %311

311:                                              ; preds = %308, %280
  store i32 2, ptr %44, align 4
  br label %312

312:                                              ; preds = %311, %99
  %313 = ptrtoint ptr %97 to i32
  %314 = sub i32 %65, %313
  %315 = load i32, ptr %72, align 4
  %316 = add i32 %315, -3
  %317 = icmp ult i32 %316, 2
  br i1 %317, label %320, label %318

318:                                              ; preds = %312
  %319 = load i32, ptr %69, align 4
  br label %329

320:                                              ; preds = %312
  %321 = load i32, ptr %79, align 8
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %325, label %323

323:                                              ; preds = %320
  %324 = load i32, ptr %69, align 4
  br label %329

325:                                              ; preds = %320
  %326 = call i32 @llvm.umax.i32(i32 %314, i32 1) #13
  %327 = load i32, ptr %69, align 4
  %328 = call i32 @llvm.umin.i32(i32 %326, i32 %327) #13
  br label %329

329:                                              ; preds = %325, %323, %318
  %330 = phi i32 [ %324, %323 ], [ %327, %325 ], [ %319, %318 ]
  %331 = phi i32 [ %324, %323 ], [ %328, %325 ], [ %319, %318 ]
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %471, label %333

333:                                              ; preds = %329
  %334 = icmp ult i32 %314, %331
  br i1 %334, label %371, label %335

335:                                              ; preds = %333
  %336 = icmp eq i32 %315, 7
  %337 = load i32, ptr %30, align 8
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %359

339:                                              ; preds = %335
  br i1 %336, label %340, label %342

340:                                              ; preds = %339
  %341 = load i32, ptr %46, align 8
  br label %346

342:                                              ; preds = %339
  %343 = load i32, ptr %49, align 4
  %344 = load i32, ptr %46, align 8
  %345 = sub i32 %343, %344
  br label %346

346:                                              ; preds = %342, %340
  %347 = phi i32 [ %344, %342 ], [ %341, %340 ]
  %348 = phi i32 [ %345, %342 ], [ 0, %340 ]
  %349 = load ptr, ptr %48, align 8
  %350 = getelementptr i8, ptr %349, i32 %347
  %351 = call i32 @ZSTD_decompressContinue(ptr noundef %0, ptr noundef %350, i32 noundef %348, ptr noundef %97, i32 noundef %331) #13
  %352 = icmp ult i32 %351, -119
  br i1 %352, label %353, label %526

353:                                              ; preds = %346
  %354 = icmp ne i32 %351, 0
  %355 = select i1 %354, i1 true, i1 %336
  br i1 %355, label %356, label %367

356:                                              ; preds = %353
  %357 = load i32, ptr %46, align 8
  %358 = add i32 %357, %351
  store i32 %358, ptr %45, align 4
  br label %367

359:                                              ; preds = %335
  %360 = ptrtoint ptr %100 to i32
  %361 = sub i32 %47, %360
  %362 = select i1 %336, i32 0, i32 %361
  %363 = call i32 @ZSTD_decompressContinue(ptr noundef %0, ptr noundef %100, i32 noundef %362, ptr noundef %97, i32 noundef %331) #13
  %364 = icmp ult i32 %363, -119
  br i1 %364, label %365, label %526

365:                                              ; preds = %359
  %366 = getelementptr i8, ptr %100, i32 %363
  br label %367

367:                                              ; preds = %365, %356, %353
  %368 = phi ptr [ %100, %356 ], [ %100, %353 ], [ %366, %365 ]
  %369 = phi i32 [ 4, %356 ], [ 2, %353 ], [ 2, %365 ]
  store i32 %369, ptr %44, align 4
  %370 = getelementptr i8, ptr %97, i32 %331
  br label %440

371:                                              ; preds = %333
  %372 = icmp eq ptr %97, %12
  br i1 %372, label %474, label %373

373:                                              ; preds = %371
  store i32 3, ptr %44, align 4
  br label %374

374:                                              ; preds = %373, %102
  %375 = phi i32 [ %104, %102 ], [ %315, %373 ]
  %376 = phi i32 [ %103, %102 ], [ %330, %373 ]
  %377 = load i32, ptr %52, align 8
  %378 = sub i32 %376, %377
  %379 = icmp eq i32 %375, 7
  br i1 %379, label %380, label %384

380:                                              ; preds = %374
  %381 = ptrtoint ptr %97 to i32
  %382 = sub i32 %65, %381
  %383 = call i32 @llvm.umin.i32(i32 %378, i32 %382)
  br label %397

384:                                              ; preds = %374
  %385 = load i32, ptr %89, align 4
  %386 = sub i32 %385, %377
  %387 = icmp ugt i32 %378, %386
  br i1 %387, label %526, label %388

388:                                              ; preds = %384
  %389 = ptrtoint ptr %97 to i32
  %390 = sub i32 %65, %389
  %391 = call i32 @llvm.umin.i32(i32 %378, i32 %390) #13
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %397, label %393

393:                                              ; preds = %388
  %394 = load ptr, ptr %92, align 8
  %395 = getelementptr i8, ptr %394, i32 %377
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %395, ptr align 1 %97, i32 %391, i1 false) #13
  %396 = load i32, ptr %52, align 8
  br label %397

397:                                              ; preds = %393, %388, %380
  %398 = phi i32 [ %377, %380 ], [ %377, %388 ], [ %396, %393 ]
  %399 = phi i32 [ %383, %380 ], [ 0, %388 ], [ %391, %393 ]
  %400 = getelementptr i8, ptr %97, i32 %399
  %401 = add i32 %398, %399
  store i32 %401, ptr %52, align 8
  %402 = icmp ult i32 %399, %378
  br i1 %402, label %474, label %403

403:                                              ; preds = %397
  store i32 0, ptr %52, align 8
  %404 = load ptr, ptr %92, align 8
  %405 = load i32, ptr %72, align 4
  %406 = icmp eq i32 %405, 7
  %407 = load i32, ptr %30, align 8
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %429

409:                                              ; preds = %403
  br i1 %406, label %410, label %412

410:                                              ; preds = %409
  %411 = load i32, ptr %46, align 8
  br label %416

412:                                              ; preds = %409
  %413 = load i32, ptr %49, align 4
  %414 = load i32, ptr %46, align 8
  %415 = sub i32 %413, %414
  br label %416

416:                                              ; preds = %412, %410
  %417 = phi i32 [ %414, %412 ], [ %411, %410 ]
  %418 = phi i32 [ %415, %412 ], [ 0, %410 ]
  %419 = load ptr, ptr %48, align 8
  %420 = getelementptr i8, ptr %419, i32 %417
  %421 = call i32 @ZSTD_decompressContinue(ptr noundef %0, ptr noundef %420, i32 noundef %418, ptr noundef %404, i32 noundef %376) #13
  %422 = icmp ult i32 %421, -119
  br i1 %422, label %423, label %526

423:                                              ; preds = %416
  %424 = icmp ne i32 %421, 0
  %425 = select i1 %424, i1 true, i1 %406
  br i1 %425, label %426, label %437

426:                                              ; preds = %423
  %427 = load i32, ptr %46, align 8
  %428 = add i32 %427, %421
  store i32 %428, ptr %45, align 4
  br label %437

429:                                              ; preds = %403
  %430 = ptrtoint ptr %100 to i32
  %431 = sub i32 %47, %430
  %432 = select i1 %406, i32 0, i32 %431
  %433 = call i32 @ZSTD_decompressContinue(ptr noundef %0, ptr noundef %100, i32 noundef %432, ptr noundef %404, i32 noundef %376) #13
  %434 = icmp ult i32 %433, -119
  br i1 %434, label %435, label %526

435:                                              ; preds = %429
  %436 = getelementptr i8, ptr %100, i32 %433
  br label %437

437:                                              ; preds = %435, %426, %423
  %438 = phi ptr [ %100, %426 ], [ %100, %423 ], [ %436, %435 ]
  %439 = phi i32 [ 4, %426 ], [ 2, %423 ], [ 2, %435 ]
  store i32 %439, ptr %44, align 4
  br label %440

440:                                              ; preds = %437, %367, %173
  %441 = phi ptr [ %370, %367 ], [ %175, %173 ], [ %400, %437 ]
  %442 = phi ptr [ %368, %367 ], [ %100, %173 ], [ %438, %437 ]
  br label %96

443:                                              ; preds = %99
  %444 = load i32, ptr %45, align 4
  %445 = load i32, ptr %46, align 8
  %446 = sub i32 %444, %445
  %447 = ptrtoint ptr %100 to i32
  %448 = sub i32 %47, %447
  %449 = call i32 @llvm.umin.i32(i32 %448, i32 %446) #13
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %455, label %451

451:                                              ; preds = %443
  %452 = load ptr, ptr %48, align 8
  %453 = getelementptr i8, ptr %452, i32 %445
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %100, ptr align 1 %453, i32 %449, i1 false) #13
  %454 = load i32, ptr %46, align 8
  br label %455

455:                                              ; preds = %451, %443
  %456 = phi i32 [ %445, %443 ], [ %454, %451 ]
  %457 = getelementptr i8, ptr %100, i32 %449
  %458 = add i32 %456, %449
  store i32 %458, ptr %46, align 8
  %459 = icmp ugt i32 %446, %448
  br i1 %459, label %474, label %460

460:                                              ; preds = %455
  store i32 2, ptr %44, align 4
  %461 = load i32, ptr %49, align 4
  %462 = zext i32 %461 to i64
  %463 = load i64, ptr %50, align 8
  %464 = icmp ugt i64 %463, %462
  br i1 %464, label %466, label %465

465:                                              ; preds = %470, %466, %460
  br label %99

466:                                              ; preds = %460
  %467 = load i32, ptr %51, align 8
  %468 = add i32 %467, %458
  %469 = icmp ugt i32 %468, %461
  br i1 %469, label %470, label %465

470:                                              ; preds = %466
  store i32 0, ptr %45, align 4
  store i32 0, ptr %46, align 8
  br label %465

471:                                              ; preds = %329, %194
  %472 = phi ptr [ %196, %194 ], [ %100, %329 ]
  %473 = phi ptr [ %195, %194 ], [ %97, %329 ]
  store i32 0, ptr %44, align 4
  br label %474

474:                                              ; preds = %471, %455, %397, %371
  %475 = phi ptr [ %472, %471 ], [ %457, %455 ], [ %100, %371 ], [ %100, %397 ]
  %476 = phi ptr [ %473, %471 ], [ %97, %455 ], [ %400, %397 ], [ %12, %371 ]
  %477 = load ptr, ptr %2, align 4
  %478 = ptrtoint ptr %476 to i32
  %479 = ptrtoint ptr %477 to i32
  %480 = sub i32 %478, %479
  store i32 %480, ptr %7, align 4
  %481 = load ptr, ptr %1, align 4
  %482 = ptrtoint ptr %475 to i32
  %483 = ptrtoint ptr %481 to i32
  %484 = sub i32 %482, %483
  store i32 %484, ptr %14, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %24, ptr noundef align 4 dereferenceable(12) %1, i32 12, i1 false)
  %485 = icmp eq ptr %476, %9
  %486 = icmp eq ptr %475, %16
  %487 = select i1 %485, i1 %486, i1 false
  %488 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 50
  br i1 %487, label %489, label %497

489:                                              ; preds = %474
  %490 = load i32, ptr %488, align 4
  %491 = add i32 %490, 1
  store i32 %491, ptr %488, align 4
  %492 = icmp sgt i32 %491, 15
  br i1 %492, label %493, label %498

493:                                              ; preds = %489
  %494 = icmp eq ptr %16, %19
  br i1 %494, label %526, label %495

495:                                              ; preds = %493
  %496 = icmp eq ptr %9, %12
  br i1 %496, label %526, label %498

497:                                              ; preds = %474
  store i32 0, ptr %488, align 4
  br label %498

498:                                              ; preds = %497, %495, %489
  %499 = load i32, ptr %69, align 4
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %501, label %519

501:                                              ; preds = %498
  %502 = load i32, ptr %45, align 4
  %503 = load i32, ptr %46, align 8
  %504 = icmp eq i32 %502, %503
  %505 = load i32, ptr %55, align 8
  %506 = icmp eq i32 %505, 0
  br i1 %504, label %507, label %515

507:                                              ; preds = %501
  br i1 %506, label %526, label %508

508:                                              ; preds = %507
  %509 = load i32, ptr %7, align 4
  %510 = load i32, ptr %10, align 4
  %511 = icmp ult i32 %509, %510
  br i1 %511, label %513, label %512

512:                                              ; preds = %508
  store i32 2, ptr %44, align 4
  br label %526

513:                                              ; preds = %508
  %514 = add nuw i32 %509, 1
  store i32 %514, ptr %7, align 4
  br label %526

515:                                              ; preds = %501
  br i1 %506, label %516, label %526

516:                                              ; preds = %515
  %517 = load i32, ptr %7, align 4
  %518 = add i32 %517, -1
  store i32 %518, ptr %7, align 4
  store i32 1, ptr %55, align 8
  br label %526

519:                                              ; preds = %498
  %520 = load i32, ptr %72, align 4
  %521 = icmp eq i32 %520, 3
  %522 = select i1 %521, i32 3, i32 0
  %523 = load i32, ptr %52, align 8
  %524 = sub i32 %499, %523
  %525 = add i32 %524, %522
  br label %526

526:                                              ; preds = %519, %516, %515, %513, %512, %507, %495, %493, %429, %416, %384, %359, %346, %292, %287, %244, %240, %206, %190, %164, %148, %99, %37, %21, %3
  %527 = phi i32 [ -72, %3 ], [ -70, %21 ], [ -70, %493 ], [ -72, %495 ], [ %525, %519 ], [ 1, %512 ], [ 0, %513 ], [ 0, %507 ], [ 1, %516 ], [ 1, %515 ], [ -104, %37 ], [ %172, %164 ], [ %192, %190 ], [ -1, %99 ], [ %242, %240 ], [ -70, %206 ], [ -16, %244 ], [ -64, %287 ], [ -64, %292 ], [ %111, %148 ], [ -20, %384 ], [ %363, %359 ], [ %351, %346 ], [ %433, %429 ], [ %421, %416 ]
  ret i32 %527
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decompressStream_simpleArgs(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4, i32 noundef %5, ptr nocapture noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.ZSTD_outBuffer_s, align 4
  %9 = alloca %struct.ZSTD_inBuffer_s, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  store ptr %1, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %8, i32 0, i32 1
  store i32 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %8, i32 0, i32 2
  %12 = load i32, ptr %3, align 4
  store i32 %12, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  store ptr %4, ptr %9, align 4
  %13 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %9, i32 0, i32 1
  store i32 %5, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %9, i32 0, i32 2
  %15 = load i32, ptr %6, align 4
  store i32 %15, ptr %14, align 4
  %16 = call i32 @ZSTD_decompressStream(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %17 = load i32, ptr %11, align 4
  store i32 %17, ptr %3, align 4
  %18 = load i32, ptr %14, align 4
  store i32 %18, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_freeDDict(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_getErrorCode(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xxh64_reset(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ZSTD_customCalloc(i32 noundef, [3 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_getDictID_fromDDict(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xxh64(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }

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
!10 = distinct !{!10, !11, !"ZSTD_errorFrameSizeInfo: argument 0"}
!11 = distinct !{!11, !"ZSTD_errorFrameSizeInfo"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"ZSTD_errorFrameSizeInfo: argument 0"}
!14 = distinct !{!14, !"ZSTD_errorFrameSizeInfo"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"ZSTD_errorFrameSizeInfo: argument 0"}
!17 = distinct !{!17, !"ZSTD_errorFrameSizeInfo"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"ZSTD_errorFrameSizeInfo: argument 0"}
!20 = distinct !{!20, !"ZSTD_errorFrameSizeInfo"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"ZSTD_errorFrameSizeInfo: argument 0"}
!23 = distinct !{!23, !"ZSTD_errorFrameSizeInfo"}
!24 = !{i32 0, i32 33}
