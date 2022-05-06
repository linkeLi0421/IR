; ModuleID = '/llk/IR/lib/zstd/compress/huf_compress.c_pt.bc'
source_filename = "../lib/zstd/compress/huf_compress.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.HUF_WriteCTableWksp = type { %struct.HUF_CompressWeightsWksp, [13 x i8], [255 x i8] }
%struct.HUF_CompressWeightsWksp = type { [59 x i32], [30 x i32], [13 x i32], [13 x i16] }
%struct.HUF_CElt_s = type { i16, i8 }
%struct.nodeElt_s = type { i32, i16, i8, i8 }
%struct.HUF_buildCTable_wksp_tables = type { [512 x %struct.nodeElt_s], [32 x %struct.rankPos] }
%struct.rankPos = type { i32, i32 }
%struct.HUF_compress_tables_t = type { [256 x i32], [256 x %struct.HUF_CElt_s], %union.anon }
%union.anon = type { %struct.HUF_buildCTable_wksp_tables }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_optimalTableLog(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @FSE_optimalTableLog_internal(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 1) #11
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_optimalTableLog_internal(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_writeCTable_wksp(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = icmp ult i32 %6, 704
  br i1 %9, label %116, label %10

10:                                               ; preds = %7
  %11 = icmp ugt i32 %3, 255
  br i1 %11, label %116, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %5, i32 0, i32 1
  store i8 0, ptr %13, align 4
  %14 = add i32 %4, 1
  %15 = icmp ugt i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %19, %12
  %17 = icmp eq i32 %3, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  br label %77

19:                                               ; preds = %19, %12
  %20 = phi i32 [ %24, %19 ], [ 1, %12 ]
  %21 = sub i32 %14, %20
  %22 = trunc i32 %21 to i8
  %23 = getelementptr %struct.HUF_WriteCTableWksp, ptr %5, i32 0, i32 1, i32 %20
  store i8 %22, ptr %23, align 1
  %24 = add nuw i32 %20, 1
  %25 = icmp eq i32 %20, %4
  br i1 %25, label %16, label %19

26:                                               ; preds = %26, %16
  %27 = phi i32 [ %34, %26 ], [ 0, %16 ]
  %28 = getelementptr %struct.HUF_CElt_s, ptr %2, i32 %27, i32 1
  %29 = load i8, ptr %28, align 2
  %30 = zext i8 %29 to i32
  %31 = getelementptr %struct.HUF_WriteCTableWksp, ptr %5, i32 0, i32 1, i32 %30
  %32 = load i8, ptr %31, align 1
  %33 = getelementptr %struct.HUF_WriteCTableWksp, ptr %5, i32 0, i32 2, i32 %27
  store i8 %32, ptr %33, align 1
  %34 = add nuw i32 %27, 1
  %35 = icmp eq i32 %34, %3
  br i1 %35, label %36, label %26

36:                                               ; preds = %26
  %37 = getelementptr i8, ptr %0, i32 1
  %38 = add i32 %1, -1
  %39 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %5, i32 0, i32 2
  %40 = getelementptr i8, ptr %0, i32 %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 12, ptr %8, align 4
  %41 = icmp ult i32 %3, 2
  br i1 %41, label %77, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.HUF_CompressWeightsWksp, ptr %5, i32 0, i32 2
  %44 = call i32 @HIST_count_simple(ptr noundef %43, ptr noundef nonnull %8, ptr noundef %39, i32 noundef %3) #11
  %45 = icmp eq i32 %44, %3
  %46 = icmp eq i32 %44, 1
  %47 = or i1 %45, %46
  br i1 %47, label %77, label %48

48:                                               ; preds = %42
  %49 = load i32, ptr %8, align 4
  %50 = call i32 @FSE_optimalTableLog(i32 noundef 6, i32 noundef %3, i32 noundef %49) #11
  %51 = getelementptr inbounds %struct.HUF_CompressWeightsWksp, ptr %5, i32 0, i32 3
  %52 = load i32, ptr %8, align 4
  %53 = call i32 @FSE_normalizeCount(ptr noundef %51, i32 noundef %50, ptr noundef %43, i32 noundef %3, i32 noundef %52, i32 noundef 0) #11
  %54 = icmp ult i32 %53, -119
  br i1 %54, label %55, label %75

55:                                               ; preds = %48
  %56 = ptrtoint ptr %40 to i32
  %57 = ptrtoint ptr %37 to i32
  %58 = load i32, ptr %8, align 4
  %59 = call i32 @FSE_writeNCount(ptr noundef %37, i32 noundef %38, ptr noundef %51, i32 noundef %58, i32 noundef %50) #11
  %60 = icmp ult i32 %59, -119
  %61 = select i1 %60, i32 %59, i32 0
  %62 = getelementptr i8, ptr %37, i32 %61
  br i1 %60, label %63, label %75

63:                                               ; preds = %55
  %64 = load i32, ptr %8, align 4
  %65 = getelementptr inbounds %struct.HUF_CompressWeightsWksp, ptr %5, i32 0, i32 1
  %66 = call i32 @FSE_buildCTable_wksp(ptr noundef %5, ptr noundef %51, i32 noundef %64, i32 noundef %50, ptr noundef %65, i32 noundef 120) #11
  %67 = icmp ult i32 %66, -119
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = ptrtoint ptr %62 to i32
  %70 = sub i32 %56, %69
  %71 = call i32 @FSE_compress_usingCTable(ptr noundef %62, i32 noundef %70, ptr noundef %39, i32 noundef %3, ptr noundef %5) #11
  %72 = icmp ult i32 %71, -119
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = icmp eq i32 %71, 0
  br i1 %74, label %77, label %78

75:                                               ; preds = %68, %63, %55, %48
  %76 = phi i32 [ %71, %68 ], [ %53, %48 ], [ %59, %55 ], [ %66, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  br label %116

77:                                               ; preds = %73, %42, %36, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  br label %91

78:                                               ; preds = %73
  %79 = getelementptr i8, ptr %62, i32 %71
  %80 = ptrtoint ptr %79 to i32
  %81 = sub i32 %80, %57
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  %82 = icmp ult i32 %81, -119
  br i1 %82, label %83, label %116

83:                                               ; preds = %78
  %84 = icmp ugt i32 %81, 1
  %85 = lshr i32 %3, 1
  %86 = icmp ult i32 %81, %85
  %87 = and i1 %84, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = trunc i32 %81 to i8
  store i8 %89, ptr %0, align 1
  %90 = add nuw i32 %81, 1
  br label %116

91:                                               ; preds = %83, %77
  %92 = icmp ugt i32 %3, 128
  br i1 %92, label %116, label %93

93:                                               ; preds = %91
  %94 = add nuw nsw i32 %3, 1
  %95 = lshr i32 %94, 1
  %96 = add nuw nsw i32 %95, 1
  %97 = icmp ult i32 %95, %1
  br i1 %97, label %98, label %116

98:                                               ; preds = %93
  %99 = trunc i32 %3 to i8
  %100 = add nuw i8 %99, 127
  store i8 %100, ptr %0, align 1
  %101 = getelementptr %struct.HUF_WriteCTableWksp, ptr %5, i32 0, i32 2, i32 %3
  store i8 0, ptr %101, align 1
  br i1 %17, label %116, label %102

102:                                              ; preds = %102, %98
  %103 = phi i32 [ %114, %102 ], [ 0, %98 ]
  %104 = getelementptr %struct.HUF_WriteCTableWksp, ptr %5, i32 0, i32 2, i32 %103
  %105 = load i8, ptr %104, align 1
  %106 = shl i8 %105, 4
  %107 = or i32 %103, 1
  %108 = getelementptr %struct.HUF_WriteCTableWksp, ptr %5, i32 0, i32 2, i32 %107
  %109 = load i8, ptr %108, align 1
  %110 = add i8 %106, %109
  %111 = lshr exact i32 %103, 1
  %112 = add nuw i32 %111, 1
  %113 = getelementptr i8, ptr %0, i32 %112
  store i8 %110, ptr %113, align 1
  %114 = add i32 %103, 2
  %115 = icmp ult i32 %114, %3
  br i1 %115, label %102, label %116

116:                                              ; preds = %102, %98, %93, %91, %88, %78, %75, %10, %7
  %117 = phi i32 [ -1, %7 ], [ -46, %10 ], [ -1, %91 ], [ -70, %93 ], [ %76, %75 ], [ %81, %78 ], [ %90, %88 ], [ %96, %98 ], [ %96, %102 ]
  ret i32 %117
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_writeCTable(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.HUF_WriteCTableWksp, align 4
  call void @llvm.lifetime.start.p0(i64 704, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(704) %6, i8 0, i32 704, i1 false), !annotation !8
  %7 = call i32 @HUF_writeCTable_wksp(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %6, i32 noundef 704)
  call void @llvm.lifetime.end.p0(i64 704, ptr nonnull %6) #11
  ret i32 %7
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_readCTable(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca [256 x i8], align 1
  %7 = alloca [16 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [14 x i16], align 2
  %11 = alloca [14 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %6, i8 0, i32 256, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %7, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 0, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  store i32 0, ptr %9, align 4
  %12 = call i32 @HUF_readStats(ptr noundef nonnull %6, i32 noundef 256, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef %2, i32 noundef %3) #11
  %13 = icmp ult i32 %12, -119
  br i1 %13, label %14, label %91

14:                                               ; preds = %5
  %15 = load i32, ptr %7, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, ptr %4, align 4
  %18 = load i32, ptr %8, align 4
  %19 = icmp ugt i32 %18, 12
  br i1 %19, label %91, label %20

20:                                               ; preds = %14
  %21 = load i32, ptr %9, align 4
  %22 = load i32, ptr %1, align 4
  %23 = add i32 %22, 1
  %24 = icmp ugt i32 %21, %23
  br i1 %24, label %91, label %25

25:                                               ; preds = %20
  %26 = icmp eq i32 %18, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %33, %25
  %28 = icmp eq i32 %21, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(28) %10, i8 0, i32 28, i1 false)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %11) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(28) %11, i8 0, i32 28, i1 false)
  br label %64

30:                                               ; preds = %27
  %31 = trunc i32 %18 to i8
  %32 = add i8 %31, 1
  br label %43

33:                                               ; preds = %33, %25
  %34 = phi i32 [ %40, %33 ], [ 0, %25 ]
  %35 = phi i32 [ %41, %33 ], [ 1, %25 ]
  %36 = getelementptr [16 x i32], ptr %7, i32 0, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %35, -1
  %39 = shl i32 %37, %38
  %40 = add i32 %39, %34
  store i32 %34, ptr %36, align 4
  %41 = add i32 %35, 1
  %42 = icmp ugt i32 %41, %18
  br i1 %42, label %27, label %33

43:                                               ; preds = %43, %30
  %44 = phi i32 [ 0, %30 ], [ %51, %43 ]
  %45 = getelementptr [256 x i8], ptr %6, i32 0, i32 %44
  %46 = load i8, ptr %45, align 1
  %47 = sub i8 %32, %46
  %48 = icmp eq i8 %46, 0
  %49 = select i1 %48, i8 0, i8 %47
  %50 = getelementptr %struct.HUF_CElt_s, ptr %0, i32 %44, i32 1
  store i8 %49, ptr %50, align 2
  %51 = add nuw i32 %44, 1
  %52 = icmp eq i32 %51, %21
  br i1 %52, label %53, label %43

53:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(28) %10, i8 0, i32 28, i1 false)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %11) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(28) %11, i8 0, i32 28, i1 false)
  br i1 %28, label %64, label %54

54:                                               ; preds = %54, %53
  %55 = phi i32 [ %62, %54 ], [ 0, %53 ]
  %56 = getelementptr %struct.HUF_CElt_s, ptr %0, i32 %55, i32 1
  %57 = load i8, ptr %56, align 2
  %58 = zext i8 %57 to i32
  %59 = getelementptr [14 x i16], ptr %10, i32 0, i32 %58
  %60 = load i16, ptr %59, align 2
  %61 = add i16 %60, 1
  store i16 %61, ptr %59, align 2
  %62 = add nuw i32 %55, 1
  %63 = icmp eq i32 %62, %21
  br i1 %63, label %64, label %54

64:                                               ; preds = %54, %53, %29
  %65 = add i32 %18, 1
  %66 = getelementptr [14 x i16], ptr %11, i32 0, i32 %65
  store i16 0, ptr %66, align 2
  br i1 %26, label %67, label %68

67:                                               ; preds = %68, %64
  br i1 %28, label %89, label %78

68:                                               ; preds = %68, %64
  %69 = phi i32 [ %76, %68 ], [ %18, %64 ]
  %70 = phi i16 [ %75, %68 ], [ 0, %64 ]
  %71 = getelementptr [14 x i16], ptr %11, i32 0, i32 %69
  store i16 %70, ptr %71, align 2
  %72 = getelementptr [14 x i16], ptr %10, i32 0, i32 %69
  %73 = load i16, ptr %72, align 2
  %74 = add i16 %73, %70
  %75 = lshr i16 %74, 1
  %76 = add i32 %69, -1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %67, label %68

78:                                               ; preds = %78, %67
  %79 = phi i32 [ %87, %78 ], [ 0, %67 ]
  %80 = getelementptr %struct.HUF_CElt_s, ptr %0, i32 %79
  %81 = getelementptr %struct.HUF_CElt_s, ptr %0, i32 %79, i32 1
  %82 = load i8, ptr %81, align 2
  %83 = zext i8 %82 to i32
  %84 = getelementptr [14 x i16], ptr %11, i32 0, i32 %83
  %85 = load i16, ptr %84, align 2
  %86 = add i16 %85, 1
  store i16 %86, ptr %84, align 2
  store i16 %85, ptr %80, align 2
  %87 = add nuw i32 %79, 1
  %88 = icmp eq i32 %87, %21
  br i1 %88, label %89, label %78

89:                                               ; preds = %78, %67
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #11
  %90 = add i32 %21, -1
  store i32 %90, ptr %1, align 4
  br label %91

91:                                               ; preds = %89, %20, %14, %5
  %92 = phi i32 [ %12, %89 ], [ %12, %5 ], [ -44, %14 ], [ -48, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #11
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_readStats(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @HUF_getNbBits(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr %struct.HUF_CElt_s, ptr %0, i32 %1, i32 1
  %4 = load i8, ptr %3, align 2
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_buildCTable_wksp(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #5 {
  %7 = alloca [13 x i16], align 2
  %8 = alloca [13 x i16], align 2
  %9 = alloca [14 x i32], align 4
  %10 = getelementptr %struct.nodeElt_s, ptr %4, i32 1
  %11 = ptrtoint ptr %4 to i32
  %12 = and i32 %11, 3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %372

14:                                               ; preds = %6
  %15 = icmp ult i32 %5, 4352
  br i1 %15, label %372, label %16

16:                                               ; preds = %14
  %17 = icmp ugt i32 %2, 255
  br i1 %17, label %372, label %18

18:                                               ; preds = %16
  %19 = icmp eq i32 %3, 0
  %20 = getelementptr inbounds %struct.HUF_buildCTable_wksp_tables, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(4352) %4, i8 0, i64 4352, i1 false)
  br label %24

21:                                               ; preds = %24
  %22 = getelementptr %struct.HUF_buildCTable_wksp_tables, ptr %4, i32 0, i32 1, i32 31
  %23 = load i32, ptr %22, align 4
  br label %36

24:                                               ; preds = %24, %18
  %25 = phi i32 [ %34, %24 ], [ 0, %18 ]
  %26 = getelementptr i32, ptr %1, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  %29 = tail call i32 @llvm.ctlz.i32(i32 %28, i1 false) #11, !range !9
  %30 = xor i32 %29, 31
  %31 = getelementptr %struct.rankPos, ptr %20, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 4
  %34 = add nuw nsw i32 %25, 1
  %35 = icmp eq i32 %25, %2
  br i1 %35, label %21, label %24

36:                                               ; preds = %36, %21
  %37 = phi i32 [ %23, %21 ], [ %42, %36 ]
  %38 = phi i32 [ 31, %21 ], [ %39, %36 ]
  %39 = add nsw i32 %38, -1
  %40 = getelementptr %struct.rankPos, ptr %20, i32 %39
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %37
  store i32 %42, ptr %40, align 4
  %43 = getelementptr %struct.rankPos, ptr %20, i32 %39, i32 1
  store i32 %42, ptr %43, align 4
  %44 = icmp ugt i32 %38, 1
  br i1 %44, label %36, label %45

45:                                               ; preds = %70, %36
  %46 = phi i32 [ %75, %70 ], [ 0, %36 ]
  %47 = getelementptr i32, ptr %1, i32 %46
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, 1
  %50 = tail call i32 @llvm.ctlz.i32(i32 %49, i1 false) #11, !range !9
  %51 = xor i32 %50, 31
  %52 = add nuw nsw i32 %51, 1
  %53 = getelementptr %struct.rankPos, ptr %20, i32 %52
  %54 = getelementptr %struct.rankPos, ptr %20, i32 %52, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 4
  %57 = load i32, ptr %53, align 4
  %58 = icmp ugt i32 %55, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %64, %45
  %60 = phi i32 [ %65, %64 ], [ %55, %45 ]
  %61 = getelementptr %struct.nodeElt_s, ptr %4, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = icmp ugt i32 %48, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = add i32 %60, -1
  %66 = getelementptr %struct.nodeElt_s, ptr %10, i32 %60
  %67 = load i64, ptr %61, align 4
  store i64 %67, ptr %66, align 4
  %68 = load i32, ptr %53, align 4
  %69 = icmp ugt i32 %65, %68
  br i1 %69, label %59, label %70

70:                                               ; preds = %64, %59, %45
  %71 = phi i32 [ %55, %45 ], [ %60, %59 ], [ %65, %64 ]
  %72 = getelementptr %struct.nodeElt_s, ptr %10, i32 %71
  store i32 %48, ptr %72, align 4
  %73 = trunc i32 %46 to i8
  %74 = getelementptr %struct.nodeElt_s, ptr %10, i32 %71, i32 2
  store i8 %73, ptr %74, align 2
  %75 = add nuw nsw i32 %46, 1
  %76 = icmp eq i32 %46, %2
  br i1 %76, label %77, label %45

77:                                               ; preds = %77, %70
  %78 = phi i32 [ %82, %77 ], [ %2, %70 ]
  %79 = getelementptr %struct.nodeElt_s, ptr %10, i32 %78
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  %82 = add i32 %78, -1
  br i1 %81, label %77, label %83

83:                                               ; preds = %77
  %84 = select i1 %19, i32 11, i32 %3
  %85 = add i32 %78, 255
  %86 = getelementptr %struct.nodeElt_s, ptr %4, i32 %78
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, %80
  %89 = getelementptr %struct.nodeElt_s, ptr %4, i32 257
  store i32 %88, ptr %89, align 4
  %90 = getelementptr %struct.nodeElt_s, ptr %4, i32 %78, i32 1
  store i16 256, ptr %90, align 4
  %91 = getelementptr %struct.nodeElt_s, ptr %10, i32 %78, i32 1
  store i16 256, ptr %91, align 4
  %92 = add i32 %78, -2
  %93 = icmp slt i32 %85, 257
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  store i32 -2147483648, ptr %4, align 4
  br label %138

95:                                               ; preds = %95, %83
  %96 = phi i32 [ %98, %95 ], [ 257, %83 ]
  %97 = getelementptr %struct.nodeElt_s, ptr %10, i32 %96
  store i32 1073741824, ptr %97, align 4
  %98 = add i32 %96, 1
  %99 = icmp sgt i32 %98, %85
  br i1 %99, label %100, label %95

100:                                              ; preds = %95
  store i32 -2147483648, ptr %4, align 4
  br label %101

101:                                              ; preds = %101, %100
  %102 = phi i32 [ %136, %101 ], [ 257, %100 ]
  %103 = phi i32 [ %125, %101 ], [ 256, %100 ]
  %104 = phi i32 [ %122, %101 ], [ %92, %100 ]
  %105 = getelementptr %struct.nodeElt_s, ptr %10, i32 %104
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr %struct.nodeElt_s, ptr %10, i32 %103
  %108 = load i32, ptr %107, align 4
  %109 = icmp ult i32 %106, %108
  %110 = sext i1 %109 to i32
  %111 = add i32 %104, %110
  %112 = xor i1 %109, true
  %113 = zext i1 %112 to i32
  %114 = add i32 %103, %113
  %115 = select i1 %109, i32 %104, i32 %103
  %116 = getelementptr %struct.nodeElt_s, ptr %10, i32 %111
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr %struct.nodeElt_s, ptr %10, i32 %114
  %119 = load i32, ptr %118, align 4
  %120 = icmp ult i32 %117, %119
  %121 = sext i1 %120 to i32
  %122 = add i32 %111, %121
  %123 = xor i1 %120, true
  %124 = zext i1 %123 to i32
  %125 = add i32 %114, %124
  %126 = select i1 %120, i32 %111, i32 %114
  %127 = getelementptr %struct.nodeElt_s, ptr %10, i32 %115
  %128 = load i32, ptr %127, align 4
  %129 = getelementptr %struct.nodeElt_s, ptr %10, i32 %126
  %130 = load i32, ptr %129, align 4
  %131 = add i32 %130, %128
  %132 = getelementptr %struct.nodeElt_s, ptr %10, i32 %102
  store i32 %131, ptr %132, align 4
  %133 = trunc i32 %102 to i16
  %134 = getelementptr %struct.nodeElt_s, ptr %10, i32 %126, i32 1
  store i16 %133, ptr %134, align 4
  %135 = getelementptr %struct.nodeElt_s, ptr %10, i32 %115, i32 1
  store i16 %133, ptr %135, align 4
  %136 = add i32 %102, 1
  %137 = icmp sgt i32 %136, %85
  br i1 %137, label %138, label %101

138:                                              ; preds = %101, %94
  %139 = getelementptr %struct.nodeElt_s, ptr %10, i32 %85, i32 3
  store i8 0, ptr %139, align 1
  %140 = add i32 %78, 254
  %141 = icmp sgt i32 %140, 255
  br i1 %141, label %144, label %142

142:                                              ; preds = %144, %138
  %143 = icmp slt i32 %78, 0
  br i1 %143, label %166, label %155

144:                                              ; preds = %144, %138
  %145 = phi i32 [ %153, %144 ], [ %140, %138 ]
  %146 = getelementptr %struct.nodeElt_s, ptr %10, i32 %145, i32 1
  %147 = load i16, ptr %146, align 4
  %148 = zext i16 %147 to i32
  %149 = getelementptr %struct.nodeElt_s, ptr %10, i32 %148, i32 3
  %150 = load i8, ptr %149, align 1
  %151 = add i8 %150, 1
  %152 = getelementptr %struct.nodeElt_s, ptr %10, i32 %145, i32 3
  store i8 %151, ptr %152, align 1
  %153 = add nsw i32 %145, -1
  %154 = icmp ugt i32 %145, 256
  br i1 %154, label %144, label %142

155:                                              ; preds = %155, %142
  %156 = phi i32 [ %164, %155 ], [ 0, %142 ]
  %157 = getelementptr %struct.nodeElt_s, ptr %10, i32 %156, i32 1
  %158 = load i16, ptr %157, align 4
  %159 = zext i16 %158 to i32
  %160 = getelementptr %struct.nodeElt_s, ptr %10, i32 %159, i32 3
  %161 = load i8, ptr %160, align 1
  %162 = add i8 %161, 1
  %163 = getelementptr %struct.nodeElt_s, ptr %10, i32 %156, i32 3
  store i8 %162, ptr %163, align 1
  %164 = add i32 %156, 1
  %165 = icmp sgt i32 %164, %78
  br i1 %165, label %166, label %155

166:                                              ; preds = %155, %142
  %167 = getelementptr %struct.nodeElt_s, ptr %10, i32 %78, i32 3
  %168 = load i8, ptr %167, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp ult i32 %84, %169
  br i1 %170, label %171, label %323

171:                                              ; preds = %166
  %172 = sub i32 %169, %84
  %173 = shl nuw i32 1, %172
  %174 = trunc i32 %84 to i8
  br label %175

175:                                              ; preds = %175, %171
  %176 = phi i32 [ %169, %171 ], [ %187, %175 ]
  %177 = phi ptr [ %167, %171 ], [ %185, %175 ]
  %178 = phi i32 [ %78, %171 ], [ %184, %175 ]
  %179 = phi i32 [ 0, %171 ], [ %183, %175 ]
  %180 = sub nsw i32 %169, %176
  %181 = shl nsw i32 -1, %180
  %182 = add i32 %181, %173
  %183 = add i32 %182, %179
  store i8 %174, ptr %177, align 1
  %184 = add i32 %178, -1
  %185 = getelementptr %struct.nodeElt_s, ptr %4, i32 %178, i32 3
  %186 = load i8, ptr %185, align 1
  %187 = zext i8 %186 to i32
  %188 = icmp ult i32 %84, %187
  br i1 %188, label %175, label %189

189:                                              ; preds = %189, %175
  %190 = phi i32 [ %195, %189 ], [ %184, %175 ]
  %191 = getelementptr %struct.nodeElt_s, ptr %10, i32 %190, i32 3
  %192 = load i8, ptr %191, align 1
  %193 = zext i8 %192 to i32
  %194 = icmp eq i32 %84, %193
  %195 = add i32 %190, -1
  br i1 %194, label %189, label %196

196:                                              ; preds = %189
  %197 = ashr i32 %183, %172
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %9, i8 -16, i32 56, i1 false) #11
  %198 = icmp sgt i32 %190, -1
  br i1 %198, label %201, label %199

199:                                              ; preds = %210, %196
  %200 = icmp sgt i32 %197, 0
  br i1 %200, label %223, label %217

201:                                              ; preds = %213, %196
  %202 = phi i8 [ %216, %213 ], [ %192, %196 ]
  %203 = phi i32 [ %214, %213 ], [ %190, %196 ]
  %204 = phi i32 [ %211, %213 ], [ %84, %196 ]
  %205 = zext i8 %202 to i32
  %206 = icmp ugt i32 %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %201
  %208 = sub i32 %84, %205
  %209 = getelementptr [14 x i32], ptr %9, i32 0, i32 %208
  store i32 %203, ptr %209, align 4
  br label %210

210:                                              ; preds = %207, %201
  %211 = phi i32 [ %204, %201 ], [ %205, %207 ]
  %212 = icmp sgt i32 %203, 0
  br i1 %212, label %213, label %199

213:                                              ; preds = %210
  %214 = add nsw i32 %203, -1
  %215 = getelementptr %struct.nodeElt_s, ptr %4, i32 %203, i32 3
  %216 = load i8, ptr %215, align 1
  br label %201

217:                                              ; preds = %289, %199
  %218 = phi i32 [ %197, %199 ], [ %271, %289 ]
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %322

220:                                              ; preds = %217
  %221 = getelementptr inbounds [14 x i32], ptr %9, i32 0, i32 1
  %222 = load i32, ptr %221, align 4
  br label %310

223:                                              ; preds = %289, %199
  %224 = phi i32 [ %271, %289 ], [ %197, %199 ]
  %225 = tail call i32 @llvm.ctlz.i32(i32 %224, i1 true) #11, !range !9
  %226 = icmp eq i32 %225, 31
  br i1 %226, label %251, label %227

227:                                              ; preds = %223
  %228 = sub nuw nsw i32 32, %225
  %229 = getelementptr [14 x i32], ptr %9, i32 0, i32 %228
  %230 = load i32, ptr %229, align 4
  br label %231

231:                                              ; preds = %247, %227
  %232 = phi i32 [ %236, %247 ], [ %230, %227 ]
  %233 = phi i32 [ %234, %247 ], [ %228, %227 ]
  %234 = add i32 %233, -1
  %235 = getelementptr [14 x i32], ptr %9, i32 0, i32 %234
  %236 = load i32, ptr %235, align 4
  %237 = icmp eq i32 %232, -252645136
  br i1 %237, label %247, label %238

238:                                              ; preds = %231
  %239 = icmp eq i32 %236, -252645136
  br i1 %239, label %249, label %240

240:                                              ; preds = %238
  %241 = getelementptr %struct.nodeElt_s, ptr %10, i32 %232
  %242 = load i32, ptr %241, align 4
  %243 = getelementptr %struct.nodeElt_s, ptr %10, i32 %236
  %244 = load i32, ptr %243, align 4
  %245 = shl i32 %244, 1
  %246 = icmp ugt i32 %242, %245
  br i1 %246, label %247, label %249

247:                                              ; preds = %240, %231
  %248 = icmp ugt i32 %234, 1
  br i1 %248, label %231, label %251

249:                                              ; preds = %240, %238
  %250 = icmp ult i32 %233, 13
  br i1 %250, label %251, label %266

251:                                              ; preds = %249, %247, %223
  %252 = phi i32 [ 1, %223 ], [ %233, %249 ], [ 1, %247 ]
  br label %253

253:                                              ; preds = %258, %251
  %254 = phi i32 [ %259, %258 ], [ %252, %251 ]
  %255 = getelementptr [14 x i32], ptr %9, i32 0, i32 %254
  %256 = load i32, ptr %255, align 4
  %257 = icmp eq i32 %256, -252645136
  br i1 %257, label %258, label %261

258:                                              ; preds = %253
  %259 = add nsw i32 %254, 1
  %260 = icmp eq i32 %259, 13
  br i1 %260, label %261, label %253

261:                                              ; preds = %258, %253
  %262 = phi i32 [ 13, %258 ], [ %254, %253 ]
  %263 = add nsw i32 %262, -1
  %264 = getelementptr [14 x i32], ptr %9, i32 0, i32 %263
  %265 = load i32, ptr %264, align 4
  br label %266

266:                                              ; preds = %261, %249
  %267 = phi i32 [ %265, %261 ], [ %236, %249 ]
  %268 = phi i32 [ %263, %261 ], [ %234, %249 ]
  %269 = phi i32 [ %262, %261 ], [ %233, %249 ]
  %270 = shl nsw i32 -1, %268
  %271 = add i32 %270, %224
  %272 = getelementptr [14 x i32], ptr %9, i32 0, i32 %269
  %273 = load i32, ptr %272, align 4
  %274 = getelementptr %struct.nodeElt_s, ptr %10, i32 %273, i32 3
  %275 = load i8, ptr %274, align 1
  %276 = add i8 %275, 1
  store i8 %276, ptr %274, align 1
  %277 = getelementptr [14 x i32], ptr %9, i32 0, i32 %268
  %278 = icmp eq i32 %267, -252645136
  %279 = select i1 %278, i32 %273, i32 %267
  store i32 %279, ptr %277, align 4
  %280 = icmp eq i32 %273, 0
  br i1 %280, label %289, label %281

281:                                              ; preds = %266
  %282 = add i32 %273, -1
  %283 = getelementptr %struct.nodeElt_s, ptr %4, i32 %273, i32 3
  %284 = load i8, ptr %283, align 1
  %285 = zext i8 %284 to i32
  %286 = sub i32 %84, %269
  %287 = icmp eq i32 %286, %285
  %288 = select i1 %287, i32 %282, i32 -252645136
  br label %289

289:                                              ; preds = %281, %266
  %290 = phi i32 [ %288, %281 ], [ -252645136, %266 ]
  store i32 %290, ptr %272, align 4
  %291 = icmp sgt i32 %271, 0
  br i1 %291, label %223, label %217

292:                                              ; preds = %315, %310
  %293 = phi i32 [ %311, %310 ], [ %316, %315 ]
  %294 = phi i32 [ %313, %310 ], [ %320, %315 ]
  %295 = icmp eq i32 %293, -252645136
  br i1 %295, label %296, label %315

296:                                              ; preds = %296, %292
  %297 = phi i32 [ %302, %296 ], [ %312, %292 ]
  %298 = getelementptr %struct.nodeElt_s, ptr %10, i32 %297, i32 3
  %299 = load i8, ptr %298, align 1
  %300 = zext i8 %299 to i32
  %301 = icmp eq i32 %84, %300
  %302 = add i32 %297, -1
  br i1 %301, label %296, label %303

303:                                              ; preds = %296
  %304 = add i32 %297, 1
  %305 = getelementptr %struct.nodeElt_s, ptr %10, i32 %304, i32 3
  %306 = load i8, ptr %305, align 1
  %307 = add i8 %306, -1
  store i8 %307, ptr %305, align 1
  %308 = add i32 %294, 1
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %310, label %322

310:                                              ; preds = %303, %220
  %311 = phi i32 [ %222, %220 ], [ %304, %303 ]
  %312 = phi i32 [ %190, %220 ], [ %297, %303 ]
  %313 = phi i32 [ %218, %220 ], [ %308, %303 ]
  %314 = tail call i32 @llvm.smax.i32(i32 %313, i32 -1) #11
  br label %292

315:                                              ; preds = %292
  %316 = add i32 %293, 1
  %317 = getelementptr %struct.nodeElt_s, ptr %10, i32 %316, i32 3
  %318 = load i8, ptr %317, align 1
  %319 = add i8 %318, -1
  store i8 %319, ptr %317, align 1
  %320 = add i32 %294, 1
  %321 = icmp eq i32 %294, %314
  br i1 %321, label %322, label %292

322:                                              ; preds = %315, %303, %217
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #11
  br label %323

323:                                              ; preds = %322, %166
  %324 = phi i32 [ %84, %322 ], [ %169, %166 ]
  %325 = icmp ugt i32 %324, 12
  br i1 %325, label %372, label %326

326:                                              ; preds = %323
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %7) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(26) %7, i8 0, i32 26, i1 false) #11
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %8) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(26) %8, i8 0, i32 26, i1 false) #11
  br i1 %143, label %327, label %329

327:                                              ; preds = %329, %326
  %328 = icmp sgt i32 %324, 0
  br i1 %328, label %339, label %349

329:                                              ; preds = %329, %326
  %330 = phi i32 [ %337, %329 ], [ 0, %326 ]
  %331 = getelementptr %struct.nodeElt_s, ptr %10, i32 %330, i32 3
  %332 = load i8, ptr %331, align 1
  %333 = zext i8 %332 to i32
  %334 = getelementptr [13 x i16], ptr %7, i32 0, i32 %333
  %335 = load i16, ptr %334, align 2
  %336 = add i16 %335, 1
  store i16 %336, ptr %334, align 2
  %337 = add i32 %330, 1
  %338 = icmp sgt i32 %337, %78
  br i1 %338, label %327, label %329

339:                                              ; preds = %339, %327
  %340 = phi i16 [ %346, %339 ], [ 0, %327 ]
  %341 = phi i32 [ %347, %339 ], [ %324, %327 ]
  %342 = getelementptr [13 x i16], ptr %8, i32 0, i32 %341
  store i16 %340, ptr %342, align 2
  %343 = getelementptr [13 x i16], ptr %7, i32 0, i32 %341
  %344 = load i16, ptr %343, align 2
  %345 = add i16 %344, %340
  %346 = lshr i16 %345, 1
  %347 = add nsw i32 %341, -1
  %348 = icmp ugt i32 %341, 1
  br i1 %348, label %339, label %349

349:                                              ; preds = %339, %327
  br label %350

350:                                              ; preds = %350, %349
  %351 = phi i32 [ %358, %350 ], [ 0, %349 ]
  %352 = getelementptr %struct.nodeElt_s, ptr %10, i32 %351, i32 3
  %353 = load i8, ptr %352, align 1
  %354 = getelementptr %struct.nodeElt_s, ptr %10, i32 %351, i32 2
  %355 = load i8, ptr %354, align 2
  %356 = zext i8 %355 to i32
  %357 = getelementptr %struct.HUF_CElt_s, ptr %0, i32 %356, i32 1
  store i8 %353, ptr %357, align 2
  %358 = add nuw nsw i32 %351, 1
  %359 = icmp eq i32 %351, %2
  br i1 %359, label %360, label %350

360:                                              ; preds = %360, %350
  %361 = phi i32 [ %369, %360 ], [ 0, %350 ]
  %362 = getelementptr %struct.HUF_CElt_s, ptr %0, i32 %361
  %363 = getelementptr %struct.HUF_CElt_s, ptr %0, i32 %361, i32 1
  %364 = load i8, ptr %363, align 2
  %365 = zext i8 %364 to i32
  %366 = getelementptr [13 x i16], ptr %8, i32 0, i32 %365
  %367 = load i16, ptr %366, align 2
  %368 = add i16 %367, 1
  store i16 %368, ptr %366, align 2
  store i16 %367, ptr %362, align 2
  %369 = add nuw nsw i32 %361, 1
  %370 = icmp eq i32 %361, %2
  br i1 %370, label %371, label %360

371:                                              ; preds = %360
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %7) #11
  br label %372

372:                                              ; preds = %371, %323, %16, %14, %6
  %373 = phi i32 [ %324, %371 ], [ -1, %6 ], [ -66, %14 ], [ -46, %16 ], [ -1, %323 ]
  ret i32 %373
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @HUF_estimateCompressedSize(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %5, %3
  %6 = phi i32 [ %15, %5 ], [ 0, %3 ]
  %7 = phi i32 [ %14, %5 ], [ 0, %3 ]
  %8 = getelementptr %struct.HUF_CElt_s, ptr %0, i32 %6, i32 1
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = getelementptr i32, ptr %1, i32 %6
  %12 = load i32, ptr %11, align 4
  %13 = mul i32 %12, %10
  %14 = add i32 %13, %7
  %15 = add i32 %6, 1
  %16 = icmp sgt i32 %15, %2
  br i1 %16, label %17, label %5

17:                                               ; preds = %5
  %18 = lshr i32 %14, 3
  br label %19

19:                                               ; preds = %17, %3
  %20 = phi i32 [ 0, %3 ], [ %18, %17 ]
  ret i32 %20
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @HUF_validateCTable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %5, %3
  %6 = phi i32 [ %17, %5 ], [ 0, %3 ]
  %7 = phi i32 [ %16, %5 ], [ 0, %3 ]
  %8 = getelementptr i32, ptr %1, i32 %6
  %9 = load i32, ptr %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = getelementptr %struct.HUF_CElt_s, ptr %0, i32 %6, i32 1
  %12 = load i8, ptr %11, align 2
  %13 = icmp eq i8 %12, 0
  %14 = and i1 %10, %13
  %15 = zext i1 %14 to i32
  %16 = or i32 %7, %15
  %17 = add i32 %6, 1
  %18 = icmp sgt i32 %17, %2
  br i1 %18, label %19, label %5

19:                                               ; preds = %5
  %20 = icmp eq i32 %16, 0
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %19, %3
  %23 = phi i32 [ 1, %3 ], [ %21, %19 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @HUF_compressBound(i32 noundef %0) local_unnamed_addr #7 {
  %2 = lshr i32 %0, 8
  %3 = add i32 %0, 137
  %4 = add i32 %3, %2
  ret i32 %4
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_compress1X_usingCTable(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #8 {
  %6 = tail call fastcc i32 @HUF_compress1X_usingCTable_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
  ret i32 %6
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @HUF_compress1X_usingCTable_internal(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #8 {
  %6 = icmp ult i32 %1, 8
  br i1 %6, label %166, label %7

7:                                                ; preds = %5
  %8 = getelementptr i8, ptr %0, i32 %1
  %9 = getelementptr i8, ptr %8, i32 -4
  %10 = and i32 %3, -4
  %11 = and i32 %3, 3
  switch i32 %11, label %70 [
    i32 3, label %12
    i32 2, label %30
    i32 1, label %47
    i32 0, label %71
  ]

12:                                               ; preds = %7
  %13 = or i32 %10, 2
  %14 = getelementptr i8, ptr %2, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr %struct.HUF_CElt_s, ptr %4, i32 %16
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = getelementptr %struct.HUF_CElt_s, ptr %4, i32 %16, i32 1
  %21 = load i8, ptr %20, align 2
  %22 = zext i8 %21 to i32
  %23 = lshr i32 %22, 3
  store i32 %19, ptr %0, align 1
  %24 = getelementptr i8, ptr %0, i32 %23
  %25 = icmp ugt ptr %24, %9
  %26 = select i1 %25, ptr %9, ptr %24
  %27 = and i32 %22, 7
  %28 = and i32 %22, 248
  %29 = lshr i32 %19, %28
  br label %30

30:                                               ; preds = %12, %7
  %31 = phi i32 [ 0, %7 ], [ %29, %12 ]
  %32 = phi i32 [ 0, %7 ], [ %27, %12 ]
  %33 = phi ptr [ %0, %7 ], [ %26, %12 ]
  %34 = or i32 %10, 1
  %35 = getelementptr i8, ptr %2, i32 %34
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = getelementptr %struct.HUF_CElt_s, ptr %4, i32 %37
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  %41 = getelementptr %struct.HUF_CElt_s, ptr %4, i32 %37, i32 1
  %42 = load i8, ptr %41, align 2
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %40, %32
  %45 = or i32 %44, %31
  %46 = add nuw nsw i32 %32, %43
  br label %47

47:                                               ; preds = %30, %7
  %48 = phi i32 [ 0, %7 ], [ %45, %30 ]
  %49 = phi i32 [ 0, %7 ], [ %46, %30 ]
  %50 = phi ptr [ %0, %7 ], [ %33, %30 ]
  %51 = getelementptr i8, ptr %2, i32 %10
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = getelementptr %struct.HUF_CElt_s, ptr %4, i32 %53
  %55 = load i16, ptr %54, align 2
  %56 = zext i16 %55 to i32
  %57 = getelementptr %struct.HUF_CElt_s, ptr %4, i32 %53, i32 1
  %58 = load i8, ptr %57, align 2
  %59 = zext i8 %58 to i32
  %60 = shl i32 %56, %49
  %61 = or i32 %60, %48
  %62 = add nuw nsw i32 %49, %59
  %63 = lshr i32 %62, 3
  store i32 %61, ptr %50, align 1
  %64 = getelementptr i8, ptr %50, i32 %63
  %65 = icmp ugt ptr %64, %9
  %66 = select i1 %65, ptr %9, ptr %64
  %67 = and i32 %62, 7
  %68 = and i32 %62, -8
  %69 = lshr i32 %61, %68
  br label %71

70:                                               ; preds = %7
  unreachable

71:                                               ; preds = %47, %7
  %72 = phi i32 [ %11, %7 ], [ %69, %47 ]
  %73 = phi i32 [ %11, %7 ], [ %67, %47 ]
  %74 = phi ptr [ %0, %7 ], [ %66, %47 ]
  %75 = icmp eq i32 %10, 0
  br i1 %75, label %148, label %76

76:                                               ; preds = %76, %71
  %77 = phi i32 [ %127, %76 ], [ %10, %71 ]
  %78 = phi ptr [ %143, %76 ], [ %74, %71 ]
  %79 = phi i32 [ %144, %76 ], [ %73, %71 ]
  %80 = phi i32 [ %146, %76 ], [ %72, %71 ]
  %81 = add i32 %77, -1
  %82 = getelementptr i8, ptr %2, i32 %81
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = getelementptr %struct.HUF_CElt_s, ptr %4, i32 %84
  %86 = load i16, ptr %85, align 2
  %87 = zext i16 %86 to i32
  %88 = getelementptr %struct.HUF_CElt_s, ptr %4, i32 %84, i32 1
  %89 = load i8, ptr %88, align 2
  %90 = zext i8 %89 to i32
  %91 = shl nuw nsw i32 %87, %79
  %92 = or i32 %91, %80
  %93 = add nuw nsw i32 %79, %90
  %94 = add i32 %77, -2
  %95 = getelementptr i8, ptr %2, i32 %94
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  %98 = getelementptr %struct.HUF_CElt_s, ptr %4, i32 %97
  %99 = load i16, ptr %98, align 2
  %100 = zext i16 %99 to i32
  %101 = getelementptr %struct.HUF_CElt_s, ptr %4, i32 %97, i32 1
  %102 = load i8, ptr %101, align 2
  %103 = zext i8 %102 to i32
  %104 = shl i32 %100, %93
  %105 = or i32 %92, %104
  %106 = add nuw nsw i32 %93, %103
  %107 = lshr i32 %106, 3
  store i32 %105, ptr %78, align 1
  %108 = getelementptr i8, ptr %78, i32 %107
  %109 = icmp ugt ptr %108, %9
  %110 = select i1 %109, ptr %9, ptr %108
  %111 = and i32 %106, 7
  %112 = and i32 %106, -8
  %113 = lshr i32 %105, %112
  %114 = add i32 %77, -3
  %115 = getelementptr i8, ptr %2, i32 %114
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = getelementptr %struct.HUF_CElt_s, ptr %4, i32 %117
  %119 = load i16, ptr %118, align 2
  %120 = zext i16 %119 to i32
  %121 = getelementptr %struct.HUF_CElt_s, ptr %4, i32 %117, i32 1
  %122 = load i8, ptr %121, align 2
  %123 = zext i8 %122 to i32
  %124 = shl nuw nsw i32 %120, %111
  %125 = or i32 %124, %113
  %126 = add nuw nsw i32 %111, %123
  %127 = add i32 %77, -4
  %128 = getelementptr i8, ptr %2, i32 %127
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i32
  %131 = getelementptr %struct.HUF_CElt_s, ptr %4, i32 %130
  %132 = load i16, ptr %131, align 2
  %133 = zext i16 %132 to i32
  %134 = getelementptr %struct.HUF_CElt_s, ptr %4, i32 %130, i32 1
  %135 = load i8, ptr %134, align 2
  %136 = zext i8 %135 to i32
  %137 = shl i32 %133, %126
  %138 = or i32 %125, %137
  %139 = add nuw nsw i32 %126, %136
  %140 = lshr i32 %139, 3
  store i32 %138, ptr %110, align 1
  %141 = getelementptr i8, ptr %110, i32 %140
  %142 = icmp ugt ptr %141, %9
  %143 = select i1 %142, ptr %9, ptr %141
  %144 = and i32 %139, 7
  %145 = and i32 %139, 1016
  %146 = lshr i32 %138, %145
  %147 = icmp eq i32 %127, 0
  br i1 %147, label %148, label %76

148:                                              ; preds = %76, %71
  %149 = phi i32 [ %72, %71 ], [ %146, %76 ]
  %150 = phi i32 [ %73, %71 ], [ %144, %76 ]
  %151 = phi ptr [ %74, %71 ], [ %143, %76 ]
  %152 = shl nuw nsw i32 1, %150
  %153 = or i32 %152, %149
  %154 = add nuw nsw i32 %150, 1
  %155 = lshr i32 %154, 3
  store i32 %153, ptr %151, align 1
  %156 = getelementptr i8, ptr %151, i32 %155
  %157 = icmp ugt ptr %9, %156
  br i1 %157, label %158, label %166

158:                                              ; preds = %148
  %159 = and i32 %154, 7
  %160 = ptrtoint ptr %156 to i32
  %161 = ptrtoint ptr %0 to i32
  %162 = icmp ne i32 %159, 0
  %163 = zext i1 %162 to i32
  %164 = sub i32 %160, %161
  %165 = add i32 %164, %163
  br label %166

166:                                              ; preds = %158, %148, %5
  %167 = phi i32 [ 0, %5 ], [ %165, %158 ], [ 0, %148 ]
  ret i32 %167
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_compress4X_usingCTable(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #8 {
  %6 = tail call fastcc i32 @HUF_compress4X_usingCTable_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
  ret i32 %6
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @HUF_compress4X_usingCTable_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #8 {
  %6 = add i32 %3, 3
  %7 = lshr i32 %6, 2
  %8 = getelementptr i8, ptr %2, i32 %3
  %9 = icmp ult i32 %1, 17
  %10 = icmp ult i32 %3, 12
  %11 = or i1 %9, %10
  br i1 %11, label %61, label %12

12:                                               ; preds = %5
  %13 = getelementptr i8, ptr %0, i32 %1
  %14 = getelementptr i8, ptr %0, i32 6
  %15 = ptrtoint ptr %13 to i32
  %16 = add i32 %1, -6
  %17 = tail call fastcc i32 @HUF_compress1X_usingCTable_internal(ptr noundef %14, i32 noundef %16, ptr noundef %2, i32 noundef %7, ptr noundef %4)
  %18 = icmp ult i32 %17, -119
  br i1 %18, label %19, label %61

19:                                               ; preds = %12
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %61, label %21

21:                                               ; preds = %19
  %22 = trunc i32 %17 to i16
  store i16 %22, ptr %0, align 1
  %23 = getelementptr i8, ptr %14, i32 %17
  %24 = getelementptr i8, ptr %2, i32 %7
  %25 = ptrtoint ptr %23 to i32
  %26 = sub i32 %15, %25
  %27 = tail call fastcc i32 @HUF_compress1X_usingCTable_internal(ptr noundef %23, i32 noundef %26, ptr noundef %24, i32 noundef %7, ptr noundef %4)
  %28 = icmp ult i32 %27, -119
  br i1 %28, label %29, label %61

29:                                               ; preds = %21
  %30 = icmp eq i32 %27, 0
  br i1 %30, label %61, label %31

31:                                               ; preds = %29
  %32 = getelementptr i8, ptr %0, i32 2
  %33 = trunc i32 %27 to i16
  store i16 %33, ptr %32, align 1
  %34 = getelementptr i8, ptr %23, i32 %27
  %35 = getelementptr i8, ptr %24, i32 %7
  %36 = ptrtoint ptr %34 to i32
  %37 = sub i32 %15, %36
  %38 = tail call fastcc i32 @HUF_compress1X_usingCTable_internal(ptr noundef %34, i32 noundef %37, ptr noundef %35, i32 noundef %7, ptr noundef %4)
  %39 = icmp ult i32 %38, -119
  br i1 %39, label %40, label %61

40:                                               ; preds = %31
  %41 = icmp eq i32 %38, 0
  br i1 %41, label %61, label %42

42:                                               ; preds = %40
  %43 = getelementptr i8, ptr %0, i32 4
  %44 = trunc i32 %38 to i16
  store i16 %44, ptr %43, align 1
  %45 = getelementptr i8, ptr %34, i32 %38
  %46 = getelementptr i8, ptr %35, i32 %7
  %47 = ptrtoint ptr %45 to i32
  %48 = sub i32 %15, %47
  %49 = ptrtoint ptr %8 to i32
  %50 = ptrtoint ptr %46 to i32
  %51 = sub i32 %49, %50
  %52 = tail call fastcc i32 @HUF_compress1X_usingCTable_internal(ptr noundef %45, i32 noundef %48, ptr noundef %46, i32 noundef %51, ptr noundef %4)
  %53 = icmp ult i32 %52, -119
  br i1 %53, label %54, label %61

54:                                               ; preds = %42
  %55 = icmp eq i32 %52, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %54
  %57 = getelementptr i8, ptr %45, i32 %52
  %58 = ptrtoint ptr %57 to i32
  %59 = ptrtoint ptr %0 to i32
  %60 = sub i32 %58, %59
  br label %61

61:                                               ; preds = %56, %54, %42, %40, %31, %29, %21, %19, %12, %5
  %62 = phi i32 [ %60, %56 ], [ 0, %5 ], [ 0, %19 ], [ %17, %12 ], [ 0, %29 ], [ %27, %21 ], [ 0, %40 ], [ %38, %31 ], [ 0, %54 ], [ %52, %42 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_compress1X_wksp(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = tail call fastcc i32 @HUF_compress_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 0, ptr noundef %6, i32 noundef %7, ptr noundef null, ptr noundef null, i32 noundef 0)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @HUF_compress_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %11) unnamed_addr #0 {
  %13 = alloca i32, align 4
  store i32 %4, ptr %13, align 4
  %14 = getelementptr i8, ptr %0, i32 %1
  %15 = icmp ult i32 %8, 6400
  br i1 %15, label %153, label %16

16:                                               ; preds = %12
  %17 = icmp eq i32 %3, 0
  %18 = icmp eq i32 %1, 0
  %19 = or i1 %18, %17
  br i1 %19, label %153, label %20

20:                                               ; preds = %16
  %21 = icmp ugt i32 %3, 131072
  br i1 %21, label %153, label %22

22:                                               ; preds = %20
  %23 = icmp ugt i32 %5, 12
  br i1 %23, label %153, label %24

24:                                               ; preds = %22
  %25 = icmp ugt i32 %4, 255
  br i1 %25, label %153, label %26

26:                                               ; preds = %24
  %27 = icmp eq i32 %4, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  store i32 255, ptr %13, align 4
  br label %29

29:                                               ; preds = %28, %26
  %30 = icmp eq i32 %5, 0
  %31 = select i1 %30, i32 11, i32 %5
  %32 = icmp ne i32 %11, 0
  %33 = icmp ne ptr %10, null
  %34 = and i1 %33, %32
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i32, ptr %10, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = tail call fastcc i32 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %0, ptr noundef %14, ptr noundef %2, i32 noundef %3, i32 noundef %6, ptr noundef %9)
  br label %153

40:                                               ; preds = %35, %29
  %41 = call i32 @HIST_count_wksp(ptr noundef %7, ptr noundef nonnull %13, ptr noundef %2, i32 noundef %3, ptr noundef %7, i32 noundef %8) #11
  %42 = icmp ult i32 %41, -119
  br i1 %42, label %43, label %153

43:                                               ; preds = %40
  %44 = icmp eq i32 %41, %3
  br i1 %44, label %45, label %47

45:                                               ; preds = %43
  %46 = load i8, ptr %2, align 1
  store i8 %46, ptr %0, align 1
  br label %153

47:                                               ; preds = %43
  %48 = lshr i32 %3, 7
  %49 = add nuw nsw i32 %48, 4
  %50 = icmp ugt i32 %41, %49
  br i1 %50, label %51, label %153

51:                                               ; preds = %47
  br i1 %33, label %52, label %82

52:                                               ; preds = %51
  %53 = load i32, ptr %10, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %74

55:                                               ; preds = %52
  %56 = load i32, ptr %13, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %74, label %58

58:                                               ; preds = %58, %55
  %59 = phi i32 [ %70, %58 ], [ 0, %55 ]
  %60 = phi i32 [ %69, %58 ], [ 0, %55 ]
  %61 = getelementptr i32, ptr %7, i32 %59
  %62 = load i32, ptr %61, align 4
  %63 = icmp ne i32 %62, 0
  %64 = getelementptr %struct.HUF_CElt_s, ptr %9, i32 %59, i32 1
  %65 = load i8, ptr %64, align 2
  %66 = icmp eq i8 %65, 0
  %67 = and i1 %63, %66
  %68 = zext i1 %67 to i32
  %69 = or i32 %60, %68
  %70 = add i32 %59, 1
  %71 = icmp sgt i32 %70, %56
  br i1 %71, label %72, label %58

72:                                               ; preds = %58
  %73 = icmp eq i32 %69, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %72, %55, %52
  %75 = phi i32 [ 1, %55 ], [ 1, %72 ], [ %53, %52 ]
  %76 = xor i1 %34, true
  %77 = icmp eq i32 %75, 0
  %78 = select i1 %76, i1 true, i1 %77
  br i1 %78, label %82, label %80

79:                                               ; preds = %72
  store i32 0, ptr %10, align 4
  br label %82

80:                                               ; preds = %74
  %81 = call fastcc i32 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %0, ptr noundef %14, ptr noundef %2, i32 noundef %3, i32 noundef %6, ptr noundef %9)
  br label %153

82:                                               ; preds = %79, %74, %51
  %83 = load i32, ptr %13, align 4
  %84 = call i32 @FSE_optimalTableLog_internal(i32 noundef %31, i32 noundef %3, i32 noundef %83, i32 noundef 1) #11
  %85 = getelementptr inbounds %struct.HUF_compress_tables_t, ptr %7, i32 0, i32 1
  %86 = load i32, ptr %13, align 4
  %87 = getelementptr inbounds %struct.HUF_compress_tables_t, ptr %7, i32 0, i32 2
  %88 = call i32 @HUF_buildCTable_wksp(ptr noundef %85, ptr noundef %7, i32 noundef %86, i32 noundef %84, ptr noundef %87, i32 noundef 4352)
  %89 = icmp ult i32 %88, -119
  br i1 %89, label %90, label %153

90:                                               ; preds = %82
  %91 = load i32, ptr %13, align 4
  %92 = add i32 %91, 1
  %93 = getelementptr %struct.HUF_CElt_s, ptr %85, i32 %92
  %94 = mul i32 %92, -4
  %95 = add i32 %94, 1024
  call void @llvm.memset.p0.i32(ptr align 2 %93, i8 0, i32 %95, i1 false)
  %96 = call i32 @HUF_writeCTable_wksp(ptr noundef %0, i32 noundef %1, ptr noundef %85, i32 noundef %91, i32 noundef %88, ptr noundef %87, i32 noundef 704)
  %97 = icmp ult i32 %96, -119
  br i1 %97, label %98, label %153

98:                                               ; preds = %90
  br i1 %33, label %99, label %143

99:                                               ; preds = %98
  %100 = load i32, ptr %10, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %140, label %102

102:                                              ; preds = %99
  %103 = load i32, ptr %13, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %138, label %105

105:                                              ; preds = %105, %102
  %106 = phi i32 [ %115, %105 ], [ 0, %102 ]
  %107 = phi i32 [ %114, %105 ], [ 0, %102 ]
  %108 = getelementptr %struct.HUF_CElt_s, ptr %9, i32 %106, i32 1
  %109 = load i8, ptr %108, align 2
  %110 = zext i8 %109 to i32
  %111 = getelementptr i32, ptr %7, i32 %106
  %112 = load i32, ptr %111, align 4
  %113 = mul i32 %112, %110
  %114 = add i32 %113, %107
  %115 = add i32 %106, 1
  %116 = icmp sgt i32 %115, %103
  br i1 %116, label %117, label %105

117:                                              ; preds = %105
  %118 = lshr i32 %114, 3
  br label %119

119:                                              ; preds = %119, %117
  %120 = phi i32 [ %129, %119 ], [ 0, %117 ]
  %121 = phi i32 [ %128, %119 ], [ 0, %117 ]
  %122 = getelementptr %struct.HUF_CElt_s, ptr %85, i32 %120, i32 1
  %123 = load i8, ptr %122, align 2
  %124 = zext i8 %123 to i32
  %125 = getelementptr i32, ptr %7, i32 %120
  %126 = load i32, ptr %125, align 4
  %127 = mul i32 %126, %124
  %128 = add i32 %127, %121
  %129 = add i32 %120, 1
  %130 = icmp sgt i32 %129, %103
  br i1 %130, label %131, label %119

131:                                              ; preds = %119
  %132 = lshr i32 %128, 3
  %133 = add i32 %132, %96
  %134 = icmp ugt i32 %118, %133
  %135 = add i32 %96, 12
  %136 = icmp ult i32 %135, %3
  %137 = and i1 %136, %134
  br i1 %137, label %146, label %138

138:                                              ; preds = %131, %102
  %139 = call fastcc i32 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %0, ptr noundef %14, ptr noundef %2, i32 noundef %3, i32 noundef %6, ptr noundef %9)
  br label %153

140:                                              ; preds = %99
  %141 = add nuw i32 %96, 12
  %142 = icmp ult i32 %141, %3
  br i1 %142, label %146, label %153

143:                                              ; preds = %98
  %144 = add nuw i32 %96, 12
  %145 = icmp ult i32 %144, %3
  br i1 %145, label %147, label %153

146:                                              ; preds = %140, %131
  store i32 0, ptr %10, align 4
  br label %147

147:                                              ; preds = %146, %143
  %148 = getelementptr i8, ptr %0, i32 %96
  %149 = icmp eq ptr %9, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %147
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(1024) %9, ptr noundef align 4 dereferenceable(1024) %85, i32 1024, i1 false)
  br label %151

151:                                              ; preds = %150, %147
  %152 = call fastcc i32 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %148, ptr noundef %14, ptr noundef %2, i32 noundef %3, i32 noundef %6, ptr noundef %85)
  br label %153

153:                                              ; preds = %151, %143, %140, %138, %90, %82, %80, %47, %45, %40, %38, %24, %22, %20, %16, %12
  %154 = phi i32 [ %39, %38 ], [ %81, %80 ], [ %152, %151 ], [ 0, %47 ], [ -66, %12 ], [ 0, %16 ], [ -72, %20 ], [ -44, %22 ], [ -46, %24 ], [ %88, %82 ], [ %41, %40 ], [ 1, %45 ], [ 0, %140 ], [ 0, %143 ], [ %96, %90 ], [ %139, %138 ]
  ret i32 %154
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_compress1X_repeat(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #0 {
  %13 = tail call fastcc i32 @HUF_compress_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 0, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10)
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_compress4X_wksp(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = tail call fastcc i32 @HUF_compress_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 1, ptr noundef %6, i32 noundef %7, ptr noundef null, ptr noundef null, i32 noundef 0)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_compress4X_repeat(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #0 {
  %13 = tail call fastcc i32 @HUF_compress_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 1, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10)
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HIST_count_simple(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_optimalTableLog(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_normalizeCount(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_writeNCount(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_compress_usingCTable(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6) unnamed_addr #8 {
  %8 = icmp eq i32 %5, 0
  %9 = ptrtoint ptr %2 to i32
  %10 = ptrtoint ptr %1 to i32
  %11 = sub i32 %9, %10
  br i1 %8, label %12, label %14

12:                                               ; preds = %7
  %13 = tail call fastcc i32 @HUF_compress1X_usingCTable_internal(ptr noundef %1, i32 noundef %11, ptr noundef %3, i32 noundef %4, ptr noundef %6)
  br label %16

14:                                               ; preds = %7
  %15 = tail call fastcc i32 @HUF_compress4X_usingCTable_internal(ptr noundef %1, i32 noundef %11, ptr noundef %3, i32 noundef %4, ptr noundef %6)
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = icmp ult i32 %17, -119
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %19
  %22 = getelementptr i8, ptr %1, i32 %17
  %23 = ptrtoint ptr %22 to i32
  %24 = ptrtoint ptr %0 to i32
  %25 = sub i32 %23, %24
  %26 = add i32 %4, -1
  %27 = icmp ult i32 %25, %26
  %28 = select i1 %27, i32 %25, i32 0
  br label %29

29:                                               ; preds = %21, %19, %16
  %30 = phi i32 [ %17, %16 ], [ 0, %19 ], [ %28, %21 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HIST_count_wksp(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"auto-init"}
!9 = !{i32 0, i32 33}
