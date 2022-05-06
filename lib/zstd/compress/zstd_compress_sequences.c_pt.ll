; ModuleID = '/llk/IR/lib/zstd/compress/zstd_compress_sequences.c_pt.bc'
source_filename = "../lib/zstd/compress/zstd_compress_sequences.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.FSE_symbolCompressionTransform = type { i32, i32 }
%struct.ZSTD_BuildCTableWksp = type { [53 x i16], [182 x i32] }
%struct.seqDef_s = type { i32, i16, i16 }

@kInverseProbabilityLog256 = internal unnamed_addr constant [256 x i32] [i32 0, i32 2048, i32 1792, i32 1642, i32 1536, i32 1453, i32 1386, i32 1329, i32 1280, i32 1236, i32 1197, i32 1162, i32 1130, i32 1100, i32 1073, i32 1047, i32 1024, i32 1001, i32 980, i32 960, i32 941, i32 923, i32 906, i32 889, i32 874, i32 859, i32 844, i32 830, i32 817, i32 804, i32 791, i32 779, i32 768, i32 756, i32 745, i32 734, i32 724, i32 714, i32 704, i32 694, i32 685, i32 676, i32 667, i32 658, i32 650, i32 642, i32 633, i32 626, i32 618, i32 610, i32 603, i32 595, i32 588, i32 581, i32 574, i32 567, i32 561, i32 554, i32 548, i32 542, i32 535, i32 529, i32 523, i32 517, i32 512, i32 506, i32 500, i32 495, i32 489, i32 484, i32 478, i32 473, i32 468, i32 463, i32 458, i32 453, i32 448, i32 443, i32 438, i32 434, i32 429, i32 424, i32 420, i32 415, i32 411, i32 407, i32 402, i32 398, i32 394, i32 390, i32 386, i32 382, i32 377, i32 373, i32 370, i32 366, i32 362, i32 358, i32 354, i32 350, i32 347, i32 343, i32 339, i32 336, i32 332, i32 329, i32 325, i32 322, i32 318, i32 315, i32 311, i32 308, i32 305, i32 302, i32 298, i32 295, i32 292, i32 289, i32 286, i32 282, i32 279, i32 276, i32 273, i32 270, i32 267, i32 264, i32 261, i32 258, i32 256, i32 253, i32 250, i32 247, i32 244, i32 241, i32 239, i32 236, i32 233, i32 230, i32 228, i32 225, i32 222, i32 220, i32 217, i32 215, i32 212, i32 209, i32 207, i32 204, i32 202, i32 199, i32 197, i32 194, i32 192, i32 190, i32 187, i32 185, i32 182, i32 180, i32 178, i32 175, i32 173, i32 171, i32 168, i32 166, i32 164, i32 162, i32 159, i32 157, i32 155, i32 153, i32 151, i32 149, i32 146, i32 144, i32 142, i32 140, i32 138, i32 136, i32 134, i32 132, i32 130, i32 128, i32 126, i32 123, i32 121, i32 119, i32 117, i32 115, i32 114, i32 112, i32 110, i32 108, i32 106, i32 104, i32 102, i32 100, i32 98, i32 96, i32 94, i32 93, i32 91, i32 89, i32 87, i32 85, i32 83, i32 82, i32 80, i32 78, i32 76, i32 74, i32 73, i32 71, i32 69, i32 67, i32 66, i32 64, i32 62, i32 61, i32 59, i32 57, i32 55, i32 54, i32 52, i32 50, i32 49, i32 47, i32 46, i32 44, i32 42, i32 41, i32 39, i32 37, i32 36, i32 34, i32 33, i32 31, i32 30, i32 28, i32 26, i32 25, i32 23, i32 22, i32 20, i32 19, i32 17, i32 16, i32 14, i32 13, i32 11, i32 10, i32 8, i32 7, i32 5, i32 4, i32 2, i32 1], align 4
@LL_bits = internal unnamed_addr constant [36 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], align 4
@ML_bits = internal unnamed_addr constant [53 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], align 4
@BIT_mask = internal unnamed_addr constant [32 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535, i32 131071, i32 262143, i32 524287, i32 1048575, i32 2097151, i32 4194303, i32 8388607, i32 16777215, i32 33554431, i32 67108863, i32 134217727, i32 268435455, i32 536870911, i32 1073741823, i32 2147483647], align 4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ZSTD_fseBitCost(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i16, ptr %0, align 1
  %5 = zext i16 %4 to i32
  %6 = getelementptr i16, ptr %0, i32 2
  %7 = icmp eq i16 %4, 0
  %8 = add nsw i32 %5, -1
  %9 = shl nuw i32 1, %8
  %10 = select i1 %7, i32 1, i32 %9
  %11 = getelementptr i32, ptr %6, i32 %10
  %12 = getelementptr i16, ptr %0, i32 1
  %13 = load i16, ptr %12, align 1
  %14 = zext i16 %13 to i32
  %15 = icmp ult i32 %14, %2
  br i1 %15, label %48, label %16

16:                                               ; preds = %3
  %17 = shl nsw i32 -1, %5
  %18 = shl nuw nsw i32 %5, 8
  %19 = add nuw nsw i32 %18, 256
  br label %20

20:                                               ; preds = %42, %16
  %21 = phi i32 [ 0, %16 ], [ %44, %42 ]
  %22 = phi i32 [ 0, %16 ], [ %43, %42 ]
  %23 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %11, i32 %21, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = lshr i32 %24, 16
  %26 = add nuw nsw i32 %25, 1
  %27 = shl i32 %26, 16
  %28 = sub i32 %17, %24
  %29 = add i32 %28, %27
  %30 = shl i32 %29, 8
  %31 = lshr i32 %30, %5
  %32 = shl nuw nsw i32 %26, 8
  %33 = sub i32 %32, %31
  %34 = getelementptr i32, ptr %1, i32 %21
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %20
  %38 = icmp ult i32 %33, %19
  br i1 %38, label %39, label %48

39:                                               ; preds = %37
  %40 = mul i32 %33, %35
  %41 = add i32 %40, %22
  br label %42

42:                                               ; preds = %39, %20
  %43 = phi i32 [ %22, %20 ], [ %41, %39 ]
  %44 = add i32 %21, 1
  %45 = icmp ugt i32 %44, %2
  br i1 %45, label %46, label %20

46:                                               ; preds = %42
  %47 = lshr i32 %43, 8
  br label %48

48:                                               ; preds = %46, %37, %3
  %49 = phi i32 [ %47, %46 ], [ -1, %3 ], [ -1, %37 ]
  ret i32 %49
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ZSTD_crossEntropyCost(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = sub i32 8, %1
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i32 [ 0, %4 ], [ %21, %6 ]
  %8 = phi i32 [ 0, %4 ], [ %20, %6 ]
  %9 = getelementptr i16, ptr %0, i32 %7
  %10 = load i16, ptr %9, align 2
  %11 = icmp eq i16 %10, -1
  %12 = select i1 %11, i16 1, i16 %10
  %13 = sext i16 %12 to i32
  %14 = shl i32 %13, %5
  %15 = getelementptr i32, ptr %2, i32 %7
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr [256 x i32], ptr @kInverseProbabilityLog256, i32 0, i32 %14
  %18 = load i32, ptr %17, align 4
  %19 = mul i32 %18, %16
  %20 = add i32 %19, %8
  %21 = add i32 %7, 1
  %22 = icmp ugt i32 %21, %3
  br i1 %22, label %23, label %6

23:                                               ; preds = %6
  %24 = lshr i32 %20, 8
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_selectEncodingType(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #4 {
  %12 = alloca [512 x i8], align 1
  %13 = alloca [53 x i16], align 2
  %14 = icmp eq i32 %3, %4
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  store i32 0, ptr %0, align 4
  %16 = icmp eq i32 %9, 0
  %17 = icmp ugt i32 %3, 2
  %18 = or i1 %17, %16
  %19 = zext i1 %18 to i32
  br label %149

20:                                               ; preds = %11
  %21 = icmp ult i32 %10, 4
  %22 = icmp eq i32 %9, 0
  br i1 %21, label %23, label %39

23:                                               ; preds = %20
  br i1 %22, label %148, label %24

24:                                               ; preds = %23
  %25 = load i32, ptr %0, align 4
  %26 = icmp eq i32 %25, 2
  %27 = icmp ult i32 %4, 1000
  %28 = and i1 %27, %26
  br i1 %28, label %149, label %29

29:                                               ; preds = %24
  %30 = sub nuw nsw i32 10, %10
  %31 = shl i32 %30, %8
  %32 = lshr i32 %31, 3
  %33 = icmp ugt i32 %32, %4
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = add i32 %8, -1
  %36 = lshr i32 %4, %35
  %37 = icmp ugt i32 %36, %3
  br i1 %37, label %38, label %148

38:                                               ; preds = %34, %29
  store i32 0, ptr %0, align 4
  br label %149

39:                                               ; preds = %20
  br i1 %22, label %61, label %40

40:                                               ; preds = %39
  %41 = sub i32 8, %8
  br label %42

42:                                               ; preds = %42, %40
  %43 = phi i32 [ 0, %40 ], [ %57, %42 ]
  %44 = phi i32 [ 0, %40 ], [ %56, %42 ]
  %45 = getelementptr i16, ptr %7, i32 %43
  %46 = load i16, ptr %45, align 2
  %47 = icmp eq i16 %46, -1
  %48 = select i1 %47, i16 1, i16 %46
  %49 = sext i16 %48 to i32
  %50 = shl i32 %49, %41
  %51 = getelementptr i32, ptr %1, i32 %43
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr [256 x i32], ptr @kInverseProbabilityLog256, i32 0, i32 %50
  %54 = load i32, ptr %53, align 4
  %55 = mul i32 %54, %52
  %56 = add i32 %55, %44
  %57 = add i32 %43, 1
  %58 = icmp ugt i32 %57, %2
  br i1 %58, label %59, label %42

59:                                               ; preds = %42
  %60 = lshr i32 %56, 8
  br label %61

61:                                               ; preds = %59, %39
  %62 = phi i32 [ %60, %59 ], [ -1, %39 ]
  %63 = load i32, ptr %0, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %110, label %65

65:                                               ; preds = %61
  %66 = load i16, ptr %6, align 1
  %67 = zext i16 %66 to i32
  %68 = getelementptr i16, ptr %6, i32 2
  %69 = icmp eq i16 %66, 0
  %70 = add nsw i32 %67, -1
  %71 = shl nuw i32 1, %70
  %72 = select i1 %69, i32 1, i32 %71
  %73 = getelementptr i32, ptr %68, i32 %72
  %74 = getelementptr i16, ptr %6, i32 1
  %75 = load i16, ptr %74, align 1
  %76 = zext i16 %75 to i32
  %77 = icmp ult i32 %76, %2
  br i1 %77, label %110, label %78

78:                                               ; preds = %65
  %79 = shl nsw i32 -1, %67
  %80 = shl nuw nsw i32 %67, 8
  %81 = add nuw nsw i32 %80, 256
  br label %82

82:                                               ; preds = %104, %78
  %83 = phi i32 [ 0, %78 ], [ %106, %104 ]
  %84 = phi i32 [ 0, %78 ], [ %105, %104 ]
  %85 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %73, i32 %83, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = lshr i32 %86, 16
  %88 = add nuw nsw i32 %87, 1
  %89 = shl i32 %88, 16
  %90 = sub i32 %79, %86
  %91 = add i32 %90, %89
  %92 = shl i32 %91, 8
  %93 = lshr i32 %92, %67
  %94 = shl nuw nsw i32 %88, 8
  %95 = sub i32 %94, %93
  %96 = getelementptr i32, ptr %1, i32 %83
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %82
  %100 = icmp ult i32 %95, %81
  br i1 %100, label %101, label %110

101:                                              ; preds = %99
  %102 = mul i32 %95, %97
  %103 = add i32 %102, %84
  br label %104

104:                                              ; preds = %101, %82
  %105 = phi i32 [ %84, %82 ], [ %103, %101 ]
  %106 = add i32 %83, 1
  %107 = icmp ugt i32 %106, %2
  br i1 %107, label %108, label %82

108:                                              ; preds = %104
  %109 = lshr i32 %105, 8
  br label %110

110:                                              ; preds = %108, %99, %65, %61
  %111 = phi i32 [ -1, %61 ], [ %109, %108 ], [ -1, %65 ], [ -1, %99 ]
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %12) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(512) %12, i8 0, i32 512, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 106, ptr nonnull %13) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(106) %13, i8 0, i32 106, i1 false) #8, !annotation !8
  %112 = tail call i32 @FSE_optimalTableLog(i32 noundef %5, i32 noundef %4, i32 noundef %2) #8
  %113 = icmp ugt i32 %4, 2047
  %114 = zext i1 %113 to i32
  %115 = call i32 @FSE_normalizeCount(ptr noundef nonnull %13, i32 noundef %112, ptr noundef %1, i32 noundef %4, i32 noundef %2, i32 noundef %114) #8
  %116 = icmp ult i32 %115, -119
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = call i32 @FSE_writeNCount(ptr noundef nonnull %12, i32 noundef 512, ptr noundef nonnull %13, i32 noundef %2, i32 noundef %112) #8
  br label %119

119:                                              ; preds = %117, %110
  %120 = phi i32 [ %118, %117 ], [ %115, %110 ]
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %12) #8
  br label %121

121:                                              ; preds = %121, %119
  %122 = phi i32 [ 0, %119 ], [ %135, %121 ]
  %123 = phi i32 [ 0, %119 ], [ %136, %121 ]
  %124 = getelementptr i32, ptr %1, i32 %123
  %125 = load i32, ptr %124, align 4
  %126 = shl i32 %125, 8
  %127 = udiv i32 %126, %4
  %128 = icmp ne i32 %125, 0
  %129 = icmp ult i32 %126, %4
  %130 = and i1 %128, %129
  %131 = select i1 %130, i32 1, i32 %127
  %132 = getelementptr [256 x i32], ptr @kInverseProbabilityLog256, i32 0, i32 %131
  %133 = load i32, ptr %132, align 4
  %134 = mul i32 %133, %125
  %135 = add i32 %134, %122
  %136 = add i32 %123, 1
  %137 = icmp ugt i32 %136, %2
  br i1 %137, label %138, label %121

138:                                              ; preds = %121
  %139 = shl i32 %120, 3
  %140 = lshr i32 %135, 8
  %141 = add i32 %140, %139
  %142 = icmp ugt i32 %62, %111
  %143 = icmp ugt i32 %62, %141
  %144 = select i1 %142, i1 true, i1 %143
  br i1 %144, label %146, label %145

145:                                              ; preds = %138
  store i32 0, ptr %0, align 4
  br label %149

146:                                              ; preds = %138
  %147 = icmp ugt i32 %111, %141
  br i1 %147, label %148, label %149

148:                                              ; preds = %146, %34, %23
  store i32 1, ptr %0, align 4
  br label %149

149:                                              ; preds = %148, %146, %145, %38, %24, %15
  %150 = phi i32 [ 2, %148 ], [ %19, %15 ], [ 3, %24 ], [ 0, %38 ], [ 3, %146 ], [ 0, %145 ]
  ret i32 %150
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_buildCTable(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr nocapture noundef readonly %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr nocapture noundef readonly %12, i32 noundef %13, ptr noundef %14, i32 noundef %15) local_unnamed_addr #4 {
  switch i32 %4, label %55 [
    i32 1, label %17
    i32 3, label %25
    i32 0, label %26
    i32 2, label %30
  ]

17:                                               ; preds = %16
  %18 = trunc i32 %6 to i8
  %19 = tail call i32 @FSE_buildCTable_rle(ptr noundef %2, i8 noundef zeroext %18) #8
  %20 = icmp ult i32 %19, -119
  br i1 %20, label %21, label %55

21:                                               ; preds = %17
  %22 = icmp eq i32 %1, 0
  br i1 %22, label %55, label %23

23:                                               ; preds = %21
  %24 = load i8, ptr %7, align 1
  store i8 %24, ptr %0, align 1
  br label %55

25:                                               ; preds = %16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %2, ptr align 4 %12, i32 %13, i1 false)
  br label %55

26:                                               ; preds = %16
  %27 = tail call i32 @FSE_buildCTable_wksp(ptr noundef %2, ptr noundef %9, i32 noundef %11, i32 noundef %10, ptr noundef %14, i32 noundef %15) #8
  %28 = icmp ult i32 %27, -119
  %29 = select i1 %28, i32 0, i32 %27
  br label %55

30:                                               ; preds = %16
  %31 = tail call i32 @FSE_optimalTableLog(i32 noundef %3, i32 noundef %8, i32 noundef %6) #8
  %32 = add i32 %8, -1
  %33 = getelementptr i8, ptr %7, i32 %32
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = getelementptr i32, ptr %5, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = icmp ugt i32 %37, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = add i32 %37, -1
  store i32 %40, ptr %36, align 4
  br label %41

41:                                               ; preds = %39, %30
  %42 = phi i32 [ %32, %39 ], [ %8, %30 ]
  %43 = icmp ugt i32 %42, 2047
  %44 = zext i1 %43 to i32
  %45 = tail call i32 @FSE_normalizeCount(ptr noundef %14, i32 noundef %31, ptr noundef %5, i32 noundef %42, i32 noundef %6, i32 noundef %44) #8
  %46 = icmp ult i32 %45, -119
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = tail call i32 @FSE_writeNCount(ptr noundef %0, i32 noundef %1, ptr noundef %14, i32 noundef %6, i32 noundef %31) #8
  %49 = icmp ult i32 %48, -119
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.ZSTD_BuildCTableWksp, ptr %14, i32 0, i32 1
  %52 = tail call i32 @FSE_buildCTable_wksp(ptr noundef %2, ptr noundef %14, i32 noundef %6, i32 noundef %31, ptr noundef %51, i32 noundef 728) #8
  %53 = icmp ult i32 %52, -119
  %54 = select i1 %53, i32 %48, i32 %52
  br label %55

55:                                               ; preds = %50, %47, %41, %26, %25, %23, %21, %17, %16
  %56 = phi i32 [ 0, %25 ], [ 1, %23 ], [ %19, %17 ], [ -70, %21 ], [ %45, %41 ], [ %48, %47 ], [ -1, %16 ], [ %29, %26 ], [ %54, %50 ]
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_buildCTable_rle(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_optimalTableLog(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_normalizeCount(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_writeNCount(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_encodeSequences(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef readonly %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #7 {
  %13 = getelementptr i8, ptr %0, i32 %1
  %14 = getelementptr i8, ptr %13, i32 -4
  %15 = icmp ugt i32 %1, 4
  br i1 %15, label %16, label %434

16:                                               ; preds = %12
  %17 = add i32 %9, -1
  %18 = getelementptr i8, ptr %3, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = load i16, ptr %2, align 1
  %22 = zext i16 %21 to i32
  %23 = getelementptr i16, ptr %2, i32 2
  %24 = icmp eq i16 %21, 0
  %25 = add nsw i32 %22, -1
  %26 = shl nuw i32 1, %25
  %27 = select i1 %24, i32 1, i32 %26
  %28 = getelementptr i32, ptr %23, i32 %27
  %29 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %28, i32 %20
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds i8, ptr %29, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 32768
  %34 = lshr i32 %33, 16
  %35 = and i32 %33, -65536
  %36 = sub i32 %35, %32
  %37 = ashr i32 %36, %34
  %38 = add i32 %37, %30
  %39 = getelementptr i16, ptr %23, i32 %38
  %40 = load i16, ptr %39, align 2
  %41 = getelementptr i8, ptr %5, i32 %17
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load i16, ptr %4, align 1
  %45 = zext i16 %44 to i32
  %46 = getelementptr i16, ptr %4, i32 2
  %47 = icmp eq i16 %44, 0
  %48 = add nsw i32 %45, -1
  %49 = shl nuw i32 1, %48
  %50 = select i1 %47, i32 1, i32 %49
  %51 = getelementptr i32, ptr %46, i32 %50
  %52 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %51, i32 %43
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds i8, ptr %52, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 32768
  %57 = lshr i32 %56, 16
  %58 = and i32 %56, -65536
  %59 = sub i32 %58, %55
  %60 = ashr i32 %59, %57
  %61 = add i32 %60, %53
  %62 = getelementptr i16, ptr %46, i32 %61
  %63 = load i16, ptr %62, align 2
  %64 = getelementptr i8, ptr %7, i32 %17
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load i16, ptr %6, align 1
  %68 = zext i16 %67 to i32
  %69 = getelementptr i16, ptr %6, i32 2
  %70 = icmp eq i16 %67, 0
  %71 = add nsw i32 %68, -1
  %72 = shl nuw i32 1, %71
  %73 = select i1 %70, i32 1, i32 %72
  %74 = getelementptr i32, ptr %69, i32 %73
  %75 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %74, i32 %66
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds i8, ptr %75, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, 32768
  %80 = lshr i32 %79, 16
  %81 = and i32 %79, -65536
  %82 = sub i32 %81, %78
  %83 = ashr i32 %82, %80
  %84 = add i32 %83, %76
  %85 = getelementptr i16, ptr %69, i32 %84
  %86 = load i16, ptr %85, align 2
  %87 = getelementptr %struct.seqDef_s, ptr %8, i32 %17
  %88 = getelementptr %struct.seqDef_s, ptr %8, i32 %17, i32 1
  %89 = load i16, ptr %88, align 4
  %90 = zext i16 %89 to i32
  %91 = getelementptr [36 x i32], ptr @LL_bits, i32 0, i32 %66
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %92
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, %90
  %96 = lshr i32 %92, 3
  store i32 %95, ptr %0, align 1
  %97 = getelementptr i8, ptr %0, i32 %96
  %98 = icmp ugt ptr %97, %14
  %99 = select i1 %98, ptr %14, ptr %97
  %100 = and i32 %92, 7
  %101 = and i32 %92, -8
  %102 = lshr i32 %95, %101
  %103 = getelementptr %struct.seqDef_s, ptr %8, i32 %17, i32 2
  %104 = load i16, ptr %103, align 2
  %105 = zext i16 %104 to i32
  %106 = load i8, ptr %18, align 1
  %107 = zext i8 %106 to i32
  %108 = getelementptr [53 x i32], ptr @ML_bits, i32 0, i32 %107
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %109
  %111 = load i32, ptr %110, align 4
  %112 = and i32 %111, %105
  %113 = shl nuw nsw i32 %112, %100
  %114 = or i32 %113, %102
  %115 = add i32 %109, %100
  %116 = lshr i32 %115, 3
  store i32 %114, ptr %99, align 1
  %117 = getelementptr i8, ptr %99, i32 %116
  %118 = icmp ugt ptr %117, %14
  %119 = select i1 %118, ptr %14, ptr %117
  %120 = and i32 %115, 7
  %121 = and i32 %115, -8
  %122 = lshr i32 %114, %121
  %123 = icmp eq i32 %10, 0
  br i1 %123, label %160, label %124

124:                                              ; preds = %16
  %125 = load i8, ptr %41, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp ult i8 %125, 24
  br i1 %127, label %146, label %128

128:                                              ; preds = %124
  %129 = icmp eq i8 %125, 24
  br i1 %129, label %146, label %130

130:                                              ; preds = %128
  %131 = add nsw i32 %126, -24
  %132 = load i32, ptr %87, align 4
  %133 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %131
  %134 = load i32, ptr %133, align 4
  %135 = and i32 %134, %132
  %136 = shl i32 %135, %120
  %137 = or i32 %136, %122
  %138 = add nsw i32 %131, %120
  %139 = lshr i32 %138, 3
  store i32 %137, ptr %119, align 1
  %140 = getelementptr i8, ptr %119, i32 %139
  %141 = icmp ugt ptr %140, %14
  %142 = select i1 %141, ptr %14, ptr %140
  %143 = and i32 %138, 7
  %144 = and i32 %138, -8
  %145 = lshr i32 %137, %144
  br label %146

146:                                              ; preds = %130, %128, %124
  %147 = phi i32 [ 0, %128 ], [ %131, %130 ], [ 0, %124 ]
  %148 = phi i32 [ 24, %128 ], [ 24, %130 ], [ %126, %124 ]
  %149 = phi i32 [ %122, %128 ], [ %145, %130 ], [ %122, %124 ]
  %150 = phi i32 [ %120, %128 ], [ %143, %130 ], [ %120, %124 ]
  %151 = phi ptr [ %119, %128 ], [ %142, %130 ], [ %119, %124 ]
  %152 = load i32, ptr %87, align 4
  %153 = lshr i32 %152, %147
  %154 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %148
  %155 = load i32, ptr %154, align 4
  %156 = and i32 %155, %153
  %157 = shl i32 %156, %150
  %158 = or i32 %157, %149
  %159 = add nuw nsw i32 %150, %148
  br label %170

160:                                              ; preds = %16
  %161 = load i32, ptr %87, align 4
  %162 = load i8, ptr %41, align 1
  %163 = zext i8 %162 to i32
  %164 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %163
  %165 = load i32, ptr %164, align 4
  %166 = and i32 %165, %161
  %167 = shl i32 %166, %120
  %168 = or i32 %167, %122
  %169 = add nuw nsw i32 %120, %163
  br label %170

170:                                              ; preds = %160, %146
  %171 = phi i32 [ %168, %160 ], [ %158, %146 ]
  %172 = phi i32 [ %169, %160 ], [ %159, %146 ]
  %173 = phi ptr [ %119, %160 ], [ %151, %146 ]
  %174 = lshr i32 %172, 3
  store i32 %171, ptr %173, align 1
  %175 = getelementptr i8, ptr %173, i32 %174
  %176 = icmp ugt ptr %175, %14
  %177 = select i1 %176, ptr %14, ptr %175
  %178 = and i32 %172, -8
  %179 = lshr i32 %171, %178
  %180 = zext i16 %86 to i32
  %181 = zext i16 %63 to i32
  %182 = zext i16 %40 to i32
  %183 = and i32 %172, 7
  %184 = icmp ugt i32 %9, 1
  br i1 %184, label %185, label %372

185:                                              ; preds = %170
  %186 = add i32 %9, -2
  br label %187

187:                                              ; preds = %352, %185
  %188 = phi i32 [ %366, %352 ], [ %183, %185 ]
  %189 = phi i32 [ %365, %352 ], [ %182, %185 ]
  %190 = phi i32 [ %364, %352 ], [ %181, %185 ]
  %191 = phi i32 [ %363, %352 ], [ %180, %185 ]
  %192 = phi i32 [ %362, %352 ], [ %186, %185 ]
  %193 = phi ptr [ %359, %352 ], [ %177, %185 ]
  %194 = phi i32 [ %361, %352 ], [ %179, %185 ]
  %195 = getelementptr i8, ptr %7, i32 %192
  %196 = load i8, ptr %195, align 1
  %197 = getelementptr i8, ptr %5, i32 %192
  %198 = load i8, ptr %197, align 1
  %199 = getelementptr i8, ptr %3, i32 %192
  %200 = load i8, ptr %199, align 1
  %201 = zext i8 %196 to i32
  %202 = getelementptr [36 x i32], ptr @LL_bits, i32 0, i32 %201
  %203 = load i32, ptr %202, align 4
  %204 = zext i8 %198 to i32
  %205 = zext i8 %200 to i32
  %206 = getelementptr [53 x i32], ptr @ML_bits, i32 0, i32 %205
  %207 = load i32, ptr %206, align 4
  %208 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %51, i32 %204
  %209 = load i32, ptr %208, align 4
  %210 = getelementptr inbounds i8, ptr %208, i32 4
  %211 = load i32, ptr %210, align 4
  %212 = add i32 %211, %190
  %213 = lshr i32 %212, 16
  %214 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %213
  %215 = load i32, ptr %214, align 4
  %216 = and i32 %215, %190
  %217 = shl nuw nsw i32 %216, %188
  %218 = or i32 %217, %194
  %219 = add nuw nsw i32 %213, %188
  %220 = lshr i32 %190, %213
  %221 = add i32 %220, %209
  %222 = getelementptr i16, ptr %46, i32 %221
  %223 = load i16, ptr %222, align 2
  %224 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %28, i32 %205
  %225 = load i32, ptr %224, align 4
  %226 = getelementptr inbounds i8, ptr %224, i32 4
  %227 = load i32, ptr %226, align 4
  %228 = add i32 %227, %189
  %229 = lshr i32 %228, 16
  %230 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %229
  %231 = load i32, ptr %230, align 4
  %232 = and i32 %231, %189
  %233 = shl i32 %232, %219
  %234 = or i32 %218, %233
  %235 = add nuw nsw i32 %229, %219
  %236 = lshr i32 %189, %229
  %237 = add i32 %236, %225
  %238 = getelementptr i16, ptr %23, i32 %237
  %239 = load i16, ptr %238, align 2
  %240 = lshr i32 %235, 3
  store i32 %234, ptr %193, align 1
  %241 = getelementptr i8, ptr %193, i32 %240
  %242 = icmp ugt ptr %241, %14
  %243 = select i1 %242, ptr %14, ptr %241
  %244 = and i32 %235, 7
  %245 = and i32 %235, 262136
  %246 = lshr i32 %234, %245
  %247 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %74, i32 %201
  %248 = load i32, ptr %247, align 4
  %249 = getelementptr inbounds i8, ptr %247, i32 4
  %250 = load i32, ptr %249, align 4
  %251 = add i32 %250, %191
  %252 = lshr i32 %251, 16
  %253 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %252
  %254 = load i32, ptr %253, align 4
  %255 = and i32 %254, %191
  %256 = shl nuw nsw i32 %255, %244
  %257 = or i32 %256, %246
  %258 = add nuw nsw i32 %252, %244
  %259 = lshr i32 %191, %252
  %260 = add i32 %259, %248
  %261 = getelementptr i16, ptr %69, i32 %260
  %262 = load i16, ptr %261, align 2
  %263 = lshr i32 %258, 3
  store i32 %257, ptr %243, align 1
  %264 = getelementptr i8, ptr %243, i32 %263
  %265 = icmp ugt ptr %264, %14
  %266 = select i1 %265, ptr %14, ptr %264
  %267 = and i32 %258, 7
  %268 = and i32 %258, 131064
  %269 = lshr i32 %257, %268
  %270 = getelementptr %struct.seqDef_s, ptr %8, i32 %192
  %271 = getelementptr %struct.seqDef_s, ptr %8, i32 %192, i32 1
  %272 = load i16, ptr %271, align 4
  %273 = zext i16 %272 to i32
  %274 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %203
  %275 = load i32, ptr %274, align 4
  %276 = and i32 %275, %273
  %277 = shl nuw nsw i32 %276, %267
  %278 = or i32 %277, %269
  %279 = add i32 %267, %203
  %280 = add i32 %207, %203
  %281 = icmp ugt i32 %280, 24
  br i1 %281, label %282, label %290

282:                                              ; preds = %187
  %283 = lshr i32 %279, 3
  store i32 %278, ptr %266, align 1
  %284 = getelementptr i8, ptr %266, i32 %283
  %285 = icmp ugt ptr %284, %14
  %286 = select i1 %285, ptr %14, ptr %284
  %287 = and i32 %279, 7
  %288 = and i32 %279, -8
  %289 = lshr i32 %278, %288
  br label %290

290:                                              ; preds = %282, %187
  %291 = phi i32 [ %289, %282 ], [ %278, %187 ]
  %292 = phi i32 [ %287, %282 ], [ %279, %187 ]
  %293 = phi ptr [ %286, %282 ], [ %266, %187 ]
  %294 = getelementptr %struct.seqDef_s, ptr %8, i32 %192, i32 2
  %295 = load i16, ptr %294, align 2
  %296 = zext i16 %295 to i32
  %297 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %207
  %298 = load i32, ptr %297, align 4
  %299 = and i32 %298, %296
  %300 = shl i32 %299, %292
  %301 = or i32 %300, %291
  %302 = add i32 %292, %207
  %303 = lshr i32 %302, 3
  store i32 %301, ptr %293, align 1
  %304 = getelementptr i8, ptr %293, i32 %303
  %305 = icmp ugt ptr %304, %14
  %306 = select i1 %305, ptr %14, ptr %304
  %307 = and i32 %302, 7
  %308 = and i32 %302, -8
  %309 = lshr i32 %301, %308
  br i1 %123, label %344, label %310

310:                                              ; preds = %290
  %311 = icmp ult i8 %198, 24
  br i1 %311, label %330, label %312

312:                                              ; preds = %310
  %313 = icmp eq i8 %198, 24
  br i1 %313, label %330, label %314

314:                                              ; preds = %312
  %315 = add nsw i32 %204, -24
  %316 = load i32, ptr %270, align 4
  %317 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %315
  %318 = load i32, ptr %317, align 4
  %319 = and i32 %318, %316
  %320 = shl i32 %319, %307
  %321 = or i32 %320, %309
  %322 = add nsw i32 %307, %315
  %323 = lshr i32 %322, 3
  store i32 %321, ptr %306, align 1
  %324 = getelementptr i8, ptr %306, i32 %323
  %325 = icmp ugt ptr %324, %14
  %326 = select i1 %325, ptr %14, ptr %324
  %327 = and i32 %322, 7
  %328 = and i32 %322, -8
  %329 = lshr i32 %321, %328
  br label %330

330:                                              ; preds = %314, %312, %310
  %331 = phi i32 [ 0, %312 ], [ %315, %314 ], [ 0, %310 ]
  %332 = phi i32 [ 24, %312 ], [ 24, %314 ], [ %204, %310 ]
  %333 = phi i32 [ %309, %312 ], [ %329, %314 ], [ %309, %310 ]
  %334 = phi i32 [ %307, %312 ], [ %327, %314 ], [ %307, %310 ]
  %335 = phi ptr [ %306, %312 ], [ %326, %314 ], [ %306, %310 ]
  %336 = load i32, ptr %270, align 4
  %337 = lshr i32 %336, %331
  %338 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %332
  %339 = load i32, ptr %338, align 4
  %340 = and i32 %339, %337
  %341 = shl i32 %340, %334
  %342 = or i32 %341, %333
  %343 = add nuw nsw i32 %334, %332
  br label %352

344:                                              ; preds = %290
  %345 = load i32, ptr %270, align 4
  %346 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %204
  %347 = load i32, ptr %346, align 4
  %348 = and i32 %347, %345
  %349 = shl i32 %348, %307
  %350 = or i32 %349, %309
  %351 = add nuw nsw i32 %307, %204
  br label %352

352:                                              ; preds = %344, %330
  %353 = phi i32 [ %350, %344 ], [ %342, %330 ]
  %354 = phi i32 [ %351, %344 ], [ %343, %330 ]
  %355 = phi ptr [ %306, %344 ], [ %335, %330 ]
  %356 = lshr i32 %354, 3
  store i32 %353, ptr %355, align 1
  %357 = getelementptr i8, ptr %355, i32 %356
  %358 = icmp ugt ptr %357, %14
  %359 = select i1 %358, ptr %14, ptr %357
  %360 = and i32 %354, -8
  %361 = lshr i32 %353, %360
  %362 = add i32 %192, -1
  %363 = zext i16 %262 to i32
  %364 = zext i16 %223 to i32
  %365 = zext i16 %239 to i32
  %366 = and i32 %354, 7
  %367 = icmp ult i32 %362, %9
  br i1 %367, label %187, label %368

368:                                              ; preds = %352
  %369 = zext i16 %262 to i32
  %370 = zext i16 %223 to i32
  %371 = zext i16 %239 to i32
  br label %372

372:                                              ; preds = %368, %170
  %373 = phi i32 [ %179, %170 ], [ %361, %368 ]
  %374 = phi ptr [ %177, %170 ], [ %359, %368 ]
  %375 = phi i32 [ %180, %170 ], [ %369, %368 ]
  %376 = phi i32 [ %181, %170 ], [ %370, %368 ]
  %377 = phi i32 [ %182, %170 ], [ %371, %368 ]
  %378 = phi i32 [ %183, %170 ], [ %366, %368 ]
  %379 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %22
  %380 = load i32, ptr %379, align 4
  %381 = and i32 %380, %377
  %382 = shl nuw nsw i32 %381, %378
  %383 = or i32 %382, %373
  %384 = add nuw nsw i32 %378, %22
  %385 = lshr i32 %384, 3
  store i32 %383, ptr %374, align 1
  %386 = getelementptr i8, ptr %374, i32 %385
  %387 = icmp ugt ptr %386, %14
  %388 = select i1 %387, ptr %14, ptr %386
  %389 = and i32 %384, 7
  %390 = and i32 %384, 131064
  %391 = lshr i32 %383, %390
  %392 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %45
  %393 = load i32, ptr %392, align 4
  %394 = and i32 %393, %376
  %395 = shl nuw nsw i32 %394, %389
  %396 = or i32 %391, %395
  %397 = add nuw nsw i32 %389, %45
  %398 = lshr i32 %397, 3
  store i32 %396, ptr %388, align 1
  %399 = getelementptr i8, ptr %388, i32 %398
  %400 = icmp ugt ptr %399, %14
  %401 = select i1 %400, ptr %14, ptr %399
  %402 = and i32 %397, 7
  %403 = and i32 %397, 131064
  %404 = lshr i32 %396, %403
  %405 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %68
  %406 = load i32, ptr %405, align 4
  %407 = and i32 %406, %375
  %408 = shl nuw nsw i32 %407, %402
  %409 = or i32 %404, %408
  %410 = add nuw nsw i32 %402, %68
  %411 = lshr i32 %410, 3
  store i32 %409, ptr %401, align 1
  %412 = getelementptr i8, ptr %401, i32 %411
  %413 = icmp ugt ptr %412, %14
  %414 = select i1 %413, ptr %14, ptr %412
  %415 = and i32 %410, 7
  %416 = and i32 %410, 131064
  %417 = lshr i32 %409, %416
  %418 = shl nuw nsw i32 1, %415
  %419 = or i32 %417, %418
  %420 = add nuw nsw i32 %415, 1
  %421 = lshr i32 %420, 3
  store i32 %419, ptr %414, align 1
  %422 = getelementptr i8, ptr %414, i32 %421
  %423 = icmp ugt ptr %14, %422
  br i1 %423, label %424, label %433

424:                                              ; preds = %372
  %425 = and i32 %420, 7
  %426 = ptrtoint ptr %422 to i32
  %427 = ptrtoint ptr %0 to i32
  %428 = icmp ne i32 %425, 0
  %429 = zext i1 %428 to i32
  %430 = sub i32 %429, %427
  %431 = add i32 %430, %426
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %434

433:                                              ; preds = %424, %372
  br label %434

434:                                              ; preds = %433, %424, %12
  %435 = phi i32 [ -70, %12 ], [ -70, %433 ], [ %431, %424 ]
  ret i32 %435
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }

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
