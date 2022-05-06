; ModuleID = '/llk/IR/lib/zstd/decompress/zstd_ddict.c_pt.bc'
source_filename = "../lib/zstd/decompress/zstd_ddict.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.ZSTD_DDict_s = type { ptr, ptr, i32, %struct.ZSTD_entropyDTables_t, i32, i32, %struct.ZSTD_customMem }
%struct.ZSTD_entropyDTables_t = type { [513 x %struct.ZSTD_seqSymbol], [257 x %struct.ZSTD_seqSymbol], [513 x %struct.ZSTD_seqSymbol], [4097 x i32], [3 x i32], [157 x i32] }
%struct.ZSTD_seqSymbol = type { i16, i8, i8, i32 }
%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.ZSTD_DCtx_s = type { ptr, ptr, ptr, ptr, %struct.ZSTD_entropyDTables_t, [640 x i32], ptr, ptr, ptr, ptr, i32, %struct.ZSTD_frameHeader, i64, i64, i32, i32, i32, i32, %struct.xxh64_state, i32, i32, i32, i32, ptr, %struct.ZSTD_customMem, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.ZSTD_outBuffer_s, [131104 x i8], [18 x i8], i32 }
%struct.ZSTD_frameHeader = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.xxh64_state = type { i64, i64, i64, i64, i64, [4 x i64], i32 }
%struct.ZSTD_outBuffer_s = type { ptr, i32, i32 }

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @ZSTD_DDict_dictContent(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_DDict_dictSize(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ZSTD_copyDDictParameters(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 31
  store i32 %4, ptr %5, align 8
  %6 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 7
  store ptr %7, ptr %8, align 8
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 8
  store ptr %9, ptr %10, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 9
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 6
  store ptr %14, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 16
  br i1 %19, label %39, label %21

21:                                               ; preds = %2
  store i32 1, ptr %20, align 8
  %22 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 17
  store i32 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %1, i32 0, i32 3
  store ptr %23, ptr %0, align 8
  %24 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %1, i32 0, i32 3, i32 2
  %25 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %1, i32 0, i32 3, i32 1
  %27 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 2
  store ptr %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %1, i32 0, i32 3, i32 3
  %29 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 3
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %1, i32 0, i32 3, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 4
  store i32 %31, ptr %32, align 4
  %33 = getelementptr %struct.ZSTD_DDict_s, ptr %1, i32 0, i32 3, i32 4, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 4, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr %struct.ZSTD_DDict_s, ptr %1, i32 0, i32 3, i32 4, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 4, i32 4, i32 2
  store i32 %37, ptr %38, align 4
  br label %41

39:                                               ; preds = %2
  store i32 0, ptr %20, align 8
  %40 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %0, i32 0, i32 17
  store i32 0, ptr %40, align 4
  br label %41

41:                                               ; preds = %39, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ZSTD_createDDict_advanced(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, [3 x i32] %4) local_unnamed_addr #2 {
  %6 = extractvalue [3 x i32] %4, 0
  %7 = inttoptr i32 %6 to ptr
  %8 = extractvalue [3 x i32] %4, 1
  %9 = inttoptr i32 %8 to ptr
  %10 = extractvalue [3 x i32] %4, 2
  %11 = icmp eq i32 %6, 0
  %12 = icmp eq i32 %8, 0
  %13 = xor i1 %11, %12
  br i1 %13, label %31, label %14

14:                                               ; preds = %5
  %15 = tail call ptr @ZSTD_customMalloc(i32 noundef 27324, [3 x i32] %4) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %15, i32 0, i32 6
  store ptr %7, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %15, i32 0, i32 6, i32 1
  store ptr %9, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %15, i32 0, i32 6, i32 2
  store i32 %10, ptr %20, align 4
  %21 = tail call fastcc i32 @ZSTD_initDDict_internal(ptr noundef nonnull %15, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  %22 = icmp ult i32 %21, -119
  br i1 %22, label %31, label %23

23:                                               ; preds = %17
  %24 = load i32, ptr %18, align 4
  %25 = load i32, ptr %19, align 4
  %26 = load i32, ptr %20, align 4
  %27 = load ptr, ptr %15, align 4
  %28 = insertvalue [3 x i32] poison, i32 %24, 0
  %29 = insertvalue [3 x i32] %28, i32 %25, 1
  %30 = insertvalue [3 x i32] %29, i32 %26, 2
  tail call void @ZSTD_customFree(ptr noundef %27, [3 x i32] %30) #6
  tail call void @ZSTD_customFree(ptr noundef nonnull %15, [3 x i32] %30) #6
  br label %31

31:                                               ; preds = %23, %17, %14, %5
  %32 = phi ptr [ null, %5 ], [ null, %14 ], [ %15, %17 ], [ null, %23 ]
  ret ptr %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ZSTD_customMalloc(i32 noundef, [3 x i32]) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_initDDict_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = icmp ne i32 %3, 1
  %7 = icmp ne ptr %1, null
  %8 = and i1 %7, %6
  %9 = icmp ne i32 %2, 0
  %10 = and i1 %9, %8
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  store ptr null, ptr %0, align 4
  %12 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 1
  store ptr %1, ptr %12, align 4
  %13 = select i1 %7, i32 %2, i32 0
  br label %28

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = insertvalue [3 x i32] undef, i32 %16, 0
  %18 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 6, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = insertvalue [3 x i32] %17, i32 %19, 1
  %21 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 6, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = insertvalue [3 x i32] %20, i32 %22, 2
  %24 = tail call ptr @ZSTD_customMalloc(i32 noundef %2, [3 x i32] %23) #6
  store ptr %24, ptr %0, align 4
  %25 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  br i1 %26, label %55, label %27

27:                                               ; preds = %14
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %24, ptr nonnull align 1 %1, i32 %2, i1 false)
  br label %28

28:                                               ; preds = %27, %11
  %29 = phi i32 [ %13, %11 ], [ %2, %27 ]
  %30 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 2
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 3, i32 3
  store i32 201326604, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 4
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 5
  store i32 0, ptr %33, align 4
  %34 = icmp eq i32 %4, 1
  br i1 %34, label %54, label %35

35:                                               ; preds = %28
  %36 = icmp ult i32 %29, 8
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = icmp eq i32 %4, 2
  br i1 %38, label %55, label %54

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = load i32, ptr %41, align 1
  %43 = icmp eq i32 %42, -332356553
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = getelementptr i8, ptr %41, i32 4
  %46 = load i32, ptr %45, align 1
  store i32 %46, ptr %32, align 4
  %47 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 3
  %48 = tail call i32 @ZSTD_loadDEntropy(ptr noundef %47, ptr noundef %41, i32 noundef %29) #6
  %49 = icmp ult i32 %48, -119
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  store i32 1, ptr %33, align 4
  br label %54

51:                                               ; preds = %39
  %52 = icmp eq i32 %4, 2
  %53 = select i1 %52, i32 -30, i32 0
  br i1 %52, label %55, label %54

54:                                               ; preds = %51, %50, %37, %28
  br label %55

55:                                               ; preds = %54, %51, %44, %37, %14
  %56 = phi i32 [ -64, %14 ], [ 0, %54 ], [ %53, %51 ], [ -30, %44 ], [ -30, %37 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_freeDDict(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 6, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 6, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %0, align 4
  %11 = insertvalue [3 x i32] poison, i32 %5, 0
  %12 = insertvalue [3 x i32] %11, i32 %7, 1
  %13 = insertvalue [3 x i32] %12, i32 %9, 2
  tail call void @ZSTD_customFree(ptr noundef %10, [3 x i32] %13) #6
  tail call void @ZSTD_customFree(ptr noundef nonnull %0, [3 x i32] %13) #6
  br label %14

14:                                               ; preds = %3, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ZSTD_createDDict(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @ZSTD_customMalloc(i32 noundef 27324, [3 x i32] zeroinitializer) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 6
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 6, i32 1
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 6, i32 2
  store i32 0, ptr %8, align 4
  %9 = icmp ne ptr %0, null
  %10 = icmp ne i32 %1, 0
  %11 = and i1 %9, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  store ptr null, ptr %3, align 4
  %13 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 1
  store ptr %0, ptr %13, align 4
  %14 = select i1 %9, i32 %1, i32 0
  br label %20

15:                                               ; preds = %5
  %16 = tail call ptr @ZSTD_customMalloc(i32 noundef %1, [3 x i32] zeroinitializer) #6
  store ptr %16, ptr %3, align 4
  %17 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %15
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %16, ptr nonnull align 1 %0, i32 %1, i1 false) #6
  br label %20

20:                                               ; preds = %19, %12
  %21 = phi i32 [ %1, %19 ], [ %14, %12 ]
  %22 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 3, i32 3
  store i32 201326604, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 4
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 5
  store i32 0, ptr %25, align 4
  %26 = icmp ult i32 %21, 8
  br i1 %26, label %49, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %29, align 1
  %31 = icmp eq i32 %30, -332356553
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = getelementptr i8, ptr %29, i32 4
  %34 = load i32, ptr %33, align 1
  store i32 %34, ptr %24, align 4
  %35 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 3
  %36 = tail call i32 @ZSTD_loadDEntropy(ptr noundef %35, ptr noundef %29, i32 noundef %21) #6
  %37 = icmp ult i32 %36, -119
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %3, align 4
  br label %41

40:                                               ; preds = %32
  store i32 1, ptr %25, align 4
  br label %49

41:                                               ; preds = %38, %15
  %42 = phi ptr [ %39, %38 ], [ null, %15 ]
  %43 = load i32, ptr %6, align 4
  %44 = load i32, ptr %7, align 4
  %45 = load i32, ptr %8, align 4
  %46 = insertvalue [3 x i32] poison, i32 %43, 0
  %47 = insertvalue [3 x i32] %46, i32 %44, 1
  %48 = insertvalue [3 x i32] %47, i32 %45, 2
  tail call void @ZSTD_customFree(ptr noundef %42, [3 x i32] %48) #6
  tail call void @ZSTD_customFree(ptr noundef nonnull %3, [3 x i32] %48) #6
  br label %49

49:                                               ; preds = %41, %40, %27, %20, %2
  %50 = phi ptr [ null, %2 ], [ null, %41 ], [ %3, %27 ], [ %3, %20 ], [ %3, %40 ]
  ret ptr %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ZSTD_createDDict_byReference(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @ZSTD_customMalloc(i32 noundef 27324, [3 x i32] zeroinitializer) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 6
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 6, i32 1
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 6, i32 2
  store i32 0, ptr %8, align 4
  %9 = icmp eq ptr %0, null
  store ptr null, ptr %3, align 4
  %10 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 1
  store ptr %0, ptr %10, align 4
  %11 = select i1 %9, i32 0, i32 %1
  %12 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 2
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 3, i32 3
  store i32 201326604, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 4
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 5
  store i32 0, ptr %15, align 4
  %16 = icmp ult i32 %11, 8
  br i1 %16, label %35, label %17

17:                                               ; preds = %5
  %18 = load i32, ptr %0, align 1
  %19 = icmp eq i32 %18, -332356553
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = getelementptr i8, ptr %0, i32 4
  %22 = load i32, ptr %21, align 1
  store i32 %22, ptr %14, align 4
  %23 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %3, i32 0, i32 3
  %24 = tail call i32 @ZSTD_loadDEntropy(ptr noundef %23, ptr noundef %0, i32 noundef %11) #6
  %25 = icmp ult i32 %24, -119
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 1, ptr %15, align 4
  br label %35

27:                                               ; preds = %20
  %28 = load i32, ptr %6, align 4
  %29 = load i32, ptr %7, align 4
  %30 = load i32, ptr %8, align 4
  %31 = load ptr, ptr %3, align 4
  %32 = insertvalue [3 x i32] poison, i32 %28, 0
  %33 = insertvalue [3 x i32] %32, i32 %29, 1
  %34 = insertvalue [3 x i32] %33, i32 %30, 2
  tail call void @ZSTD_customFree(ptr noundef %31, [3 x i32] %34) #6
  tail call void @ZSTD_customFree(ptr noundef nonnull %3, [3 x i32] %34) #6
  br label %35

35:                                               ; preds = %27, %26, %17, %5, %2
  %36 = phi ptr [ null, %2 ], [ null, %27 ], [ %3, %17 ], [ %3, %5 ], [ %3, %26 ]
  ret ptr %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ZSTD_initStaticDDict(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = ptrtoint ptr %0 to i32
  %8 = and i32 %7, 7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %46

10:                                               ; preds = %6
  %11 = icmp eq i32 %4, 1
  %12 = add i32 %3, 27324
  %13 = select i1 %11, i32 27324, i32 %12
  %14 = icmp ugt i32 %13, %1
  br i1 %14, label %46, label %15

15:                                               ; preds = %10
  %16 = icmp eq i32 %4, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = getelementptr %struct.ZSTD_DDict_s, ptr %0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %18, ptr align 1 %2, i32 %3, i1 false)
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %18, %17 ], [ %2, %15 ]
  %21 = icmp eq ptr %20, null
  store ptr null, ptr %0, align 4
  %22 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  %23 = select i1 %21, i32 0, i32 %3
  %24 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 3, i32 3
  store i32 201326604, ptr %25, align 4
  %26 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 4
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 5
  store i32 0, ptr %27, align 4
  %28 = icmp eq i32 %5, 1
  br i1 %28, label %45, label %29

29:                                               ; preds = %19
  %30 = icmp ult i32 %23, 8
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = icmp eq i32 %5, 2
  br i1 %32, label %46, label %45

33:                                               ; preds = %29
  %34 = load i32, ptr %20, align 1
  %35 = icmp eq i32 %34, -332356553
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = getelementptr i8, ptr %20, i32 4
  %38 = load i32, ptr %37, align 1
  store i32 %38, ptr %26, align 4
  %39 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 3
  %40 = tail call i32 @ZSTD_loadDEntropy(ptr noundef %39, ptr noundef %20, i32 noundef %23) #6
  %41 = icmp ult i32 %40, -119
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  store i32 1, ptr %27, align 4
  br label %45

43:                                               ; preds = %33
  %44 = icmp eq i32 %5, 2
  br i1 %44, label %46, label %45

45:                                               ; preds = %43, %42, %31, %19
  br label %46

46:                                               ; preds = %45, %43, %36, %31, %10, %6
  %47 = phi ptr [ null, %6 ], [ null, %10 ], [ null, %31 ], [ null, %36 ], [ null, %43 ], [ %0, %45 ]
  ret ptr %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_customFree(ptr noundef, [3 x i32]) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_estimateDDictSize(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq i32 %1, 1
  %4 = add i32 %0, 27324
  %5 = select i1 %3, i32 27324, i32 %4
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_sizeof_DDict(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 27324
  br label %10

10:                                               ; preds = %6, %3, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %6 ], [ 27324, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_getDictID_fromDDict(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @ZSTD_getDictID_fromDict(ptr noundef %5, i32 noundef %7) #6
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_getDictID_fromDict(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_loadDEntropy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }

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
