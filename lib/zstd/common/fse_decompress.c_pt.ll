; ModuleID = '/llk/IR/lib/zstd/common/fse_decompress.c_pt.bc'
source_filename = "../lib/zstd/common/fse_decompress.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.FSE_decode_t = type { i16, i8, i8 }
%struct.FSE_DTableHeader = type { i16, i16 }
%struct.FSE_DecompressWksp = type { [256 x i16], [1 x i32] }

@BIT_mask = internal unnamed_addr constant [32 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535, i32 131071, i32 262143, i32 524287, i32 1048575, i32 2097151, i32 4194303, i32 8388607, i32 16777215, i32 33554431, i32 67108863, i32 134217727, i32 268435455, i32 536870911, i32 1073741823, i32 2147483647], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local noalias ptr @FSE_createDTable(i32 noundef %0) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @FSE_freeDTable(ptr nocapture noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @FSE_buildDTable_wksp(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = tail call fastcc i32 @FSE_buildDTable_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5)
  ret i32 %7
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @FSE_buildDTable_internal(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, i32 noundef %5) unnamed_addr #1 {
  %7 = getelementptr i32, ptr %0, i32 1
  %8 = getelementptr i16, ptr %4, i32 %2
  %9 = getelementptr i16, ptr %8, i32 1
  %10 = shl nuw i32 1, %3
  %11 = add i32 %10, -1
  %12 = shl i32 %2, 1
  %13 = add i32 %12, 2
  %14 = zext i32 %13 to i64
  %15 = zext i32 %3 to i64
  %16 = shl nuw i64 1, %15
  %17 = add nuw nsw i64 %14, 8
  %18 = add nuw i64 %17, %16
  %19 = zext i32 %5 to i64
  %20 = icmp ugt i64 %18, %19
  %21 = icmp ugt i32 %2, 255
  %22 = or i1 %21, %20
  br i1 %22, label %157, label %23

23:                                               ; preds = %6
  %24 = icmp ugt i32 %3, 12
  br i1 %24, label %157, label %25

25:                                               ; preds = %23
  %26 = trunc i32 %3 to i16
  %27 = shl nuw i32 32768, %3
  %28 = ashr exact i32 %27, 16
  br label %29

29:                                               ; preds = %45, %25
  %30 = phi i32 [ 0, %25 ], [ %50, %45 ]
  %31 = phi i16 [ 1, %25 ], [ %48, %45 ]
  %32 = phi i32 [ %11, %25 ], [ %47, %45 ]
  %33 = getelementptr i16, ptr %1, i32 %30
  %34 = load i16, ptr %33, align 2
  %35 = icmp eq i16 %34, -1
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = trunc i32 %30 to i8
  %38 = add i32 %32, -1
  %39 = getelementptr %struct.FSE_decode_t, ptr %7, i32 %32
  %40 = getelementptr inbounds %struct.FSE_decode_t, ptr %39, i32 0, i32 1
  store i8 %37, ptr %40, align 2
  br label %45

41:                                               ; preds = %29
  %42 = sext i16 %34 to i32
  %43 = icmp sgt i32 %28, %42
  %44 = select i1 %43, i16 %31, i16 0
  br label %45

45:                                               ; preds = %41, %36
  %46 = phi i16 [ 1, %36 ], [ %34, %41 ]
  %47 = phi i32 [ %38, %36 ], [ %32, %41 ]
  %48 = phi i16 [ %31, %36 ], [ %44, %41 ]
  %49 = getelementptr i16, ptr %4, i32 %30
  store i16 %46, ptr %49, align 2
  %50 = add nuw i32 %30, 1
  %51 = icmp eq i32 %30, %2
  br i1 %51, label %52, label %29

52:                                               ; preds = %45
  store i16 %26, ptr %0, align 4
  %53 = getelementptr inbounds i8, ptr %0, i32 2
  store i16 %48, ptr %53, align 2
  %54 = icmp eq i32 %47, %11
  br i1 %54, label %55, label %100

55:                                               ; preds = %52
  %56 = lshr i32 %10, 1
  %57 = lshr i32 %10, 3
  %58 = add nuw nsw i32 %57, 3
  %59 = add nuw i32 %58, %56
  br label %62

60:                                               ; preds = %76
  %61 = shl i32 %59, 1
  br label %81

62:                                               ; preds = %76, %55
  %63 = phi i32 [ %78, %76 ], [ 0, %55 ]
  %64 = phi i64 [ %79, %76 ], [ 0, %55 ]
  %65 = phi i32 [ %77, %76 ], [ 0, %55 ]
  %66 = getelementptr i16, ptr %1, i32 %63
  %67 = load i16, ptr %66, align 2
  %68 = sext i16 %67 to i32
  %69 = getelementptr i8, ptr %9, i32 %65
  store i64 %64, ptr %69, align 1
  %70 = icmp sgt i16 %67, 8
  br i1 %70, label %71, label %76

71:                                               ; preds = %71, %62
  %72 = phi i32 [ %74, %71 ], [ 8, %62 ]
  %73 = getelementptr i8, ptr %69, i32 %72
  store i64 %64, ptr %73, align 1
  %74 = add nuw nsw i32 %72, 8
  %75 = icmp slt i32 %74, %68
  br i1 %75, label %71, label %76

76:                                               ; preds = %71, %62
  %77 = add i32 %65, %68
  %78 = add nuw i32 %63, 1
  %79 = add i64 %64, 72340172838076673
  %80 = icmp eq i32 %63, %2
  br i1 %80, label %60, label %62

81:                                               ; preds = %81, %60
  %82 = phi i32 [ 0, %60 ], [ %98, %81 ]
  %83 = phi i32 [ 0, %60 ], [ %97, %81 ]
  %84 = and i32 %83, %11
  %85 = getelementptr i8, ptr %9, i32 %82
  %86 = load i8, ptr %85, align 1
  %87 = getelementptr %struct.FSE_decode_t, ptr %7, i32 %84
  %88 = getelementptr inbounds %struct.FSE_decode_t, ptr %87, i32 0, i32 1
  store i8 %86, ptr %88, align 2
  %89 = add i32 %59, %83
  %90 = and i32 %89, %11
  %91 = or i32 %82, 1
  %92 = getelementptr i8, ptr %9, i32 %91
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr %struct.FSE_decode_t, ptr %7, i32 %90
  %95 = getelementptr inbounds %struct.FSE_decode_t, ptr %94, i32 0, i32 1
  store i8 %93, ptr %95, align 2
  %96 = add i32 %83, %61
  %97 = and i32 %96, %11
  %98 = add i32 %82, 2
  %99 = icmp ult i32 %98, %10
  br i1 %99, label %81, label %134

100:                                              ; preds = %52
  %101 = lshr i32 %10, 3
  %102 = lshr i32 %10, 1
  %103 = add nuw nsw i32 %101, 3
  %104 = add nuw i32 %103, %102
  br label %105

105:                                              ; preds = %128, %100
  %106 = phi i32 [ 0, %100 ], [ %129, %128 ]
  %107 = phi i32 [ 0, %100 ], [ %130, %128 ]
  %108 = getelementptr i16, ptr %1, i32 %107
  %109 = load i16, ptr %108, align 2
  %110 = icmp sgt i16 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %105
  %112 = trunc i32 %107 to i8
  br label %113

113:                                              ; preds = %123, %111
  %114 = phi i32 [ 0, %111 ], [ %124, %123 ]
  %115 = phi i32 [ %106, %111 ], [ %121, %123 ]
  %116 = getelementptr %struct.FSE_decode_t, ptr %7, i32 %115
  %117 = getelementptr inbounds %struct.FSE_decode_t, ptr %116, i32 0, i32 1
  store i8 %112, ptr %117, align 2
  br label %118

118:                                              ; preds = %118, %113
  %119 = phi i32 [ %115, %113 ], [ %121, %118 ]
  %120 = add i32 %104, %119
  %121 = and i32 %120, %11
  %122 = icmp ugt i32 %121, %47
  br i1 %122, label %118, label %123

123:                                              ; preds = %118
  %124 = add nuw nsw i32 %114, 1
  %125 = load i16, ptr %108, align 2
  %126 = sext i16 %125 to i32
  %127 = icmp slt i32 %124, %126
  br i1 %127, label %113, label %128

128:                                              ; preds = %123, %105
  %129 = phi i32 [ %106, %105 ], [ %121, %123 ]
  %130 = add nuw i32 %107, 1
  %131 = icmp eq i32 %107, %2
  br i1 %131, label %132, label %105

132:                                              ; preds = %128
  %133 = icmp eq i32 %129, 0
  br i1 %133, label %134, label %157

134:                                              ; preds = %132, %81
  %135 = add i32 %3, 1
  br label %136

136:                                              ; preds = %136, %134
  %137 = phi i32 [ 0, %134 ], [ %155, %136 ]
  %138 = getelementptr %struct.FSE_decode_t, ptr %7, i32 %137
  %139 = getelementptr inbounds %struct.FSE_decode_t, ptr %138, i32 0, i32 1
  %140 = load i8, ptr %139, align 2
  %141 = zext i8 %140 to i32
  %142 = getelementptr i16, ptr %4, i32 %141
  %143 = load i16, ptr %142, align 2
  %144 = add i16 %143, 1
  store i16 %144, ptr %142, align 2
  %145 = zext i16 %143 to i32
  %146 = tail call i32 @llvm.ctlz.i32(i32 %145, i1 false) #9, !range !8
  %147 = xor i32 %146, -32
  %148 = add i32 %135, %147
  %149 = trunc i32 %148 to i8
  %150 = getelementptr inbounds %struct.FSE_decode_t, ptr %138, i32 0, i32 2
  store i8 %149, ptr %150, align 1
  %151 = and i32 %148, 255
  %152 = shl i32 %145, %151
  %153 = sub i32 %152, %10
  %154 = trunc i32 %153 to i16
  store i16 %154, ptr %138, align 2
  %155 = add nuw i32 %137, 1
  %156 = icmp eq i32 %155, %10
  br i1 %156, label %157, label %136

157:                                              ; preds = %136, %132, %23, %6
  %158 = phi i32 [ -1, %132 ], [ -46, %6 ], [ -44, %23 ], [ 0, %136 ]
  ret i32 %158
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @FSE_buildDTable_rle(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = getelementptr i32, ptr %0, i32 1
  store i16 0, ptr %0, align 2
  %4 = getelementptr inbounds %struct.FSE_DTableHeader, ptr %0, i32 0, i32 1
  store i16 0, ptr %4, align 2
  store i16 0, ptr %3, align 2
  %5 = getelementptr inbounds %struct.FSE_decode_t, ptr %3, i32 0, i32 1
  store i8 %1, ptr %5, align 2
  %6 = getelementptr inbounds %struct.FSE_decode_t, ptr %3, i32 0, i32 2
  store i8 0, ptr %6, align 1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local i32 @FSE_buildDTable_raw(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr i32, ptr %0, i32 1
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = trunc i32 %1 to i16
  store i16 %6, ptr %0, align 2
  %7 = getelementptr inbounds %struct.FSE_DTableHeader, ptr %0, i32 0, i32 1
  store i16 1, ptr %7, align 2
  %8 = trunc i32 %1 to i8
  br label %9

9:                                                ; preds = %9, %5
  %10 = phi i32 [ 0, %5 ], [ %15, %9 ]
  %11 = getelementptr %struct.FSE_decode_t, ptr %3, i32 %10
  store i16 0, ptr %11, align 2
  %12 = trunc i32 %10 to i8
  %13 = getelementptr inbounds %struct.FSE_decode_t, ptr %11, i32 0, i32 1
  store i8 %12, ptr %13, align 2
  %14 = getelementptr inbounds %struct.FSE_decode_t, ptr %11, i32 0, i32 2
  store i8 %8, ptr %14, align 1
  %15 = add i32 %10, 1
  %16 = lshr i32 %15, %1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %9, label %18

18:                                               ; preds = %9, %2
  %19 = phi i32 [ -1, %2 ], [ 0, %9 ]
  ret i32 %19
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @FSE_decompress_usingDTable(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.FSE_DTableHeader, ptr %4, i32 0, i32 1
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, 0
  %9 = getelementptr i8, ptr %0, i32 %1
  %10 = getelementptr i8, ptr %9, i32 -3
  %11 = icmp eq i32 %3, 0
  br i1 %8, label %389, label %12

12:                                               ; preds = %5
  br i1 %11, label %772, label %13

13:                                               ; preds = %12
  %14 = getelementptr i8, ptr %2, i32 4
  %15 = icmp ugt i32 %3, 3
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = add i32 %3, -1
  %18 = getelementptr i8, ptr %2, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %772, label %49

21:                                               ; preds = %13
  %22 = load i8, ptr %2, align 1
  %23 = zext i8 %22 to i32
  switch i32 %3, label %37 [
    i32 2, label %30
    i32 3, label %24
  ]

24:                                               ; preds = %21
  %25 = getelementptr i8, ptr %2, i32 2
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 16
  %29 = or i32 %28, %23
  br label %30

30:                                               ; preds = %24, %21
  %31 = phi i32 [ %23, %21 ], [ %29, %24 ]
  %32 = getelementptr i8, ptr %2, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  %36 = add nsw i32 %35, %31
  br label %37

37:                                               ; preds = %30, %21
  %38 = phi i32 [ %23, %21 ], [ %36, %30 ]
  %39 = add nsw i32 %3, -1
  %40 = getelementptr i8, ptr %2, i32 %39
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %772, label %43

43:                                               ; preds = %37
  %44 = zext i8 %41 to i32
  %45 = tail call i32 @llvm.ctlz.i32(i32 %44, i1 true) #9, !range !8
  %46 = mul nsw i32 %3, -8
  %47 = add nsw i32 %46, 9
  %48 = add nsw i32 %47, %45
  br label %57

49:                                               ; preds = %16
  %50 = getelementptr i8, ptr %2, i32 %3
  %51 = getelementptr i8, ptr %50, i32 -4
  %52 = load i32, ptr %51, align 1
  %53 = zext i8 %19 to i32
  %54 = tail call i32 @llvm.ctlz.i32(i32 %53, i1 true) #9, !range !8
  %55 = add nsw i32 %54, -23
  %56 = icmp ult i32 %3, -119
  br i1 %56, label %57, label %772

57:                                               ; preds = %49, %43
  %58 = phi ptr [ %2, %43 ], [ %51, %49 ]
  %59 = phi i32 [ %48, %43 ], [ %55, %49 ]
  %60 = phi i32 [ %38, %43 ], [ %52, %49 ]
  %61 = load i16, ptr %4, align 2
  %62 = zext i16 %61 to i32
  %63 = add nsw i32 %59, %62
  %64 = sub nsw i32 0, %63
  %65 = and i32 %64, 31
  %66 = lshr i32 %60, %65
  %67 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %62
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %66, %68
  %70 = icmp ugt i32 %63, 32
  br i1 %70, label %95, label %71

71:                                               ; preds = %57
  %72 = icmp ult ptr %58, %14
  br i1 %72, label %76, label %73

73:                                               ; preds = %71
  %74 = lshr i32 %63, 3
  %75 = and i32 %63, 7
  br label %89

76:                                               ; preds = %71
  %77 = icmp eq ptr %58, %2
  br i1 %77, label %95, label %78

78:                                               ; preds = %76
  %79 = lshr i32 %63, 3
  %80 = sub nsw i32 0, %79
  %81 = getelementptr i8, ptr %58, i32 %80
  %82 = icmp ult ptr %81, %2
  %83 = ptrtoint ptr %58 to i32
  %84 = ptrtoint ptr %2 to i32
  %85 = sub i32 %83, %84
  %86 = select i1 %82, i32 %85, i32 %79
  %87 = mul i32 %86, -8
  %88 = add i32 %87, %63
  br label %89

89:                                               ; preds = %78, %73
  %90 = phi i32 [ %86, %78 ], [ %74, %73 ]
  %91 = phi i32 [ %88, %78 ], [ %75, %73 ]
  %92 = sub i32 0, %90
  %93 = getelementptr i8, ptr %58, i32 %92
  %94 = load i32, ptr %93, align 1
  br label %95

95:                                               ; preds = %89, %76, %57
  %96 = phi i32 [ %60, %57 ], [ %60, %76 ], [ %94, %89 ]
  %97 = phi i32 [ %63, %57 ], [ %63, %76 ], [ %91, %89 ]
  %98 = phi ptr [ %58, %57 ], [ %2, %76 ], [ %93, %89 ]
  %99 = getelementptr i32, ptr %4, i32 1
  %100 = add i32 %97, %62
  %101 = sub i32 0, %100
  %102 = and i32 %101, 31
  %103 = lshr i32 %96, %102
  %104 = and i32 %103, %68
  %105 = icmp ugt i32 %100, 32
  br i1 %105, label %269, label %106

106:                                              ; preds = %95
  %107 = icmp ult ptr %98, %14
  br i1 %107, label %114, label %108

108:                                              ; preds = %106
  %109 = lshr i32 %100, 3
  %110 = and i32 %100, 7
  %111 = sub nsw i32 0, %109
  %112 = getelementptr i8, ptr %98, i32 %111
  %113 = load i32, ptr %112, align 1
  br label %131

114:                                              ; preds = %106
  %115 = icmp eq ptr %98, %2
  br i1 %115, label %131, label %116

116:                                              ; preds = %114
  %117 = lshr i32 %100, 3
  %118 = sub nsw i32 0, %117
  %119 = getelementptr i8, ptr %98, i32 %118
  %120 = icmp ult ptr %119, %2
  %121 = ptrtoint ptr %98 to i32
  %122 = ptrtoint ptr %2 to i32
  %123 = sub i32 %121, %122
  %124 = select i1 %120, i32 %123, i32 %117
  %125 = mul i32 %124, -8
  %126 = add i32 %125, %100
  %127 = sub i32 0, %124
  %128 = getelementptr i8, ptr %98, i32 %127
  %129 = load i32, ptr %128, align 1
  %130 = icmp ugt i32 %126, 32
  br i1 %130, label %269, label %131

131:                                              ; preds = %116, %114, %108
  %132 = phi ptr [ %128, %116 ], [ %112, %108 ], [ %2, %114 ]
  %133 = phi i32 [ %126, %116 ], [ %110, %108 ], [ %100, %114 ]
  %134 = phi i32 [ %129, %116 ], [ %113, %108 ], [ %96, %114 ]
  %135 = ptrtoint ptr %2 to i32
  br label %136

136:                                              ; preds = %231, %131
  %137 = phi ptr [ %0, %131 ], [ %267, %231 ]
  %138 = phi i32 [ %104, %131 ], [ %263, %231 ]
  %139 = phi i32 [ %69, %131 ], [ %249, %231 ]
  %140 = phi ptr [ %132, %131 ], [ %232, %231 ]
  %141 = phi i32 [ %133, %131 ], [ %260, %231 ]
  %142 = phi i32 [ %134, %131 ], [ %234, %231 ]
  %143 = icmp ult ptr %140, %14
  br i1 %143, label %147, label %144

144:                                              ; preds = %136
  %145 = lshr i32 %141, 3
  %146 = and i32 %141, 7
  br label %160

147:                                              ; preds = %136
  %148 = icmp eq ptr %140, %2
  br i1 %148, label %269, label %149

149:                                              ; preds = %147
  %150 = lshr i32 %141, 3
  %151 = sub nsw i32 0, %150
  %152 = getelementptr i8, ptr %140, i32 %151
  %153 = icmp ult ptr %152, %2
  %154 = ptrtoint ptr %140 to i32
  %155 = sub i32 %154, %135
  %156 = select i1 %153, i32 %155, i32 %150
  %157 = zext i1 %153 to i32
  %158 = mul i32 %156, -8
  %159 = add i32 %158, %141
  br label %160

160:                                              ; preds = %149, %144
  %161 = phi i32 [ %159, %149 ], [ %146, %144 ]
  %162 = phi i32 [ %156, %149 ], [ %145, %144 ]
  %163 = phi i32 [ %157, %149 ], [ 0, %144 ]
  %164 = sub i32 0, %162
  %165 = getelementptr i8, ptr %140, i32 %164
  %166 = load i32, ptr %165, align 1
  %167 = icmp eq i32 %163, 0
  %168 = icmp ult ptr %137, %10
  %169 = and i1 %168, %167
  br i1 %169, label %170, label %269

170:                                              ; preds = %160
  %171 = getelementptr %struct.FSE_decode_t, ptr %99, i32 %139
  %172 = load i16, ptr %171, align 2
  %173 = getelementptr inbounds i8, ptr %171, i32 2
  %174 = load i8, ptr %173, align 2
  %175 = getelementptr inbounds i8, ptr %171, i32 3
  %176 = load i8, ptr %175, align 1
  %177 = zext i8 %176 to i32
  %178 = and i32 %161, 31
  %179 = shl i32 %166, %178
  %180 = sub nsw i32 0, %177
  %181 = and i32 %180, 31
  %182 = lshr i32 %179, %181
  %183 = add i32 %161, %177
  %184 = zext i16 %172 to i32
  %185 = add i32 %182, %184
  store i8 %174, ptr %137, align 1
  %186 = getelementptr %struct.FSE_decode_t, ptr %99, i32 %138
  %187 = getelementptr inbounds i8, ptr %186, i32 3
  %188 = load i8, ptr %187, align 1
  %189 = zext i8 %188 to i32
  %190 = and i32 %183, 31
  %191 = shl i32 %166, %190
  %192 = sub nsw i32 0, %189
  %193 = and i32 %192, 31
  %194 = lshr i32 %191, %193
  %195 = add i32 %183, %189
  %196 = load i16, ptr %186, align 2
  %197 = zext i16 %196 to i32
  %198 = add i32 %194, %197
  %199 = getelementptr inbounds i8, ptr %186, i32 2
  %200 = load i8, ptr %199, align 2
  %201 = getelementptr i8, ptr %137, i32 1
  store i8 %200, ptr %201, align 1
  %202 = icmp ugt i32 %195, 32
  br i1 %202, label %226, label %203

203:                                              ; preds = %170
  %204 = icmp ult ptr %165, %14
  br i1 %204, label %211, label %205

205:                                              ; preds = %203
  %206 = lshr i32 %195, 3
  %207 = sub nsw i32 0, %206
  %208 = getelementptr i8, ptr %165, i32 %207
  %209 = and i32 %195, 7
  %210 = load i32, ptr %208, align 1
  br label %231

211:                                              ; preds = %203
  %212 = icmp eq ptr %165, %2
  br i1 %212, label %226, label %213

213:                                              ; preds = %211
  %214 = lshr i32 %195, 3
  %215 = sub nsw i32 0, %214
  %216 = getelementptr i8, ptr %165, i32 %215
  %217 = icmp ult ptr %216, %2
  %218 = ptrtoint ptr %165 to i32
  %219 = sub i32 %218, %135
  %220 = select i1 %217, i32 %219, i32 %214
  %221 = sub i32 0, %220
  %222 = getelementptr i8, ptr %165, i32 %221
  %223 = mul i32 %220, -8
  %224 = add i32 %223, %195
  %225 = load i32, ptr %222, align 1
  br i1 %217, label %226, label %231

226:                                              ; preds = %213, %211, %170
  %227 = phi ptr [ %222, %213 ], [ %165, %170 ], [ %2, %211 ]
  %228 = phi i32 [ %224, %213 ], [ %195, %170 ], [ %195, %211 ]
  %229 = phi i32 [ %225, %213 ], [ %166, %170 ], [ %166, %211 ]
  %230 = getelementptr i8, ptr %137, i32 2
  br label %269

231:                                              ; preds = %213, %205
  %232 = phi ptr [ %208, %205 ], [ %222, %213 ]
  %233 = phi i32 [ %209, %205 ], [ %224, %213 ]
  %234 = phi i32 [ %210, %205 ], [ %225, %213 ]
  %235 = getelementptr %struct.FSE_decode_t, ptr %99, i32 %185
  %236 = load i16, ptr %235, align 2
  %237 = getelementptr inbounds i8, ptr %235, i32 2
  %238 = load i8, ptr %237, align 2
  %239 = getelementptr inbounds i8, ptr %235, i32 3
  %240 = load i8, ptr %239, align 1
  %241 = zext i8 %240 to i32
  %242 = and i32 %233, 31
  %243 = shl i32 %234, %242
  %244 = sub nsw i32 0, %241
  %245 = and i32 %244, 31
  %246 = lshr i32 %243, %245
  %247 = add i32 %233, %241
  %248 = zext i16 %236 to i32
  %249 = add i32 %246, %248
  %250 = getelementptr i8, ptr %137, i32 2
  store i8 %238, ptr %250, align 1
  %251 = getelementptr %struct.FSE_decode_t, ptr %99, i32 %198
  %252 = getelementptr inbounds i8, ptr %251, i32 3
  %253 = load i8, ptr %252, align 1
  %254 = zext i8 %253 to i32
  %255 = and i32 %247, 31
  %256 = shl i32 %234, %255
  %257 = sub nsw i32 0, %254
  %258 = and i32 %257, 31
  %259 = lshr i32 %256, %258
  %260 = add i32 %247, %254
  %261 = load i16, ptr %251, align 2
  %262 = zext i16 %261 to i32
  %263 = add i32 %259, %262
  %264 = getelementptr inbounds i8, ptr %251, i32 2
  %265 = load i8, ptr %264, align 2
  %266 = getelementptr i8, ptr %137, i32 3
  store i8 %265, ptr %266, align 1
  %267 = getelementptr i8, ptr %137, i32 4
  %268 = icmp ugt i32 %260, 32
  br i1 %268, label %269, label %136

269:                                              ; preds = %231, %226, %160, %147, %116, %95
  %270 = phi i32 [ %229, %226 ], [ %129, %116 ], [ %96, %95 ], [ %142, %147 ], [ %234, %231 ], [ %166, %160 ]
  %271 = phi i32 [ %228, %226 ], [ %126, %116 ], [ %100, %95 ], [ %141, %147 ], [ %260, %231 ], [ %161, %160 ]
  %272 = phi ptr [ %227, %226 ], [ %128, %116 ], [ %98, %95 ], [ %2, %147 ], [ %232, %231 ], [ %165, %160 ]
  %273 = phi i32 [ %185, %226 ], [ %69, %116 ], [ %69, %95 ], [ %139, %147 ], [ %249, %231 ], [ %139, %160 ]
  %274 = phi i32 [ %198, %226 ], [ %104, %116 ], [ %104, %95 ], [ %138, %147 ], [ %263, %231 ], [ %138, %160 ]
  %275 = phi ptr [ %230, %226 ], [ %0, %116 ], [ %0, %95 ], [ %137, %147 ], [ %267, %231 ], [ %137, %160 ]
  %276 = getelementptr i8, ptr %9, i32 -2
  %277 = icmp ugt ptr %275, %276
  br i1 %277, label %772, label %278

278:                                              ; preds = %269
  %279 = ptrtoint ptr %2 to i32
  br label %280

280:                                              ; preds = %373, %278
  %281 = phi ptr [ %275, %278 ], [ %348, %373 ]
  %282 = phi i32 [ %274, %278 ], [ %347, %373 ]
  %283 = phi i32 [ %273, %278 ], [ %301, %373 ]
  %284 = phi ptr [ %272, %278 ], [ %376, %373 ]
  %285 = phi i32 [ %271, %278 ], [ %375, %373 ]
  %286 = phi i32 [ %270, %278 ], [ %374, %373 ]
  %287 = getelementptr %struct.FSE_decode_t, ptr %99, i32 %283
  %288 = load i16, ptr %287, align 2
  %289 = getelementptr inbounds i8, ptr %287, i32 2
  %290 = load i8, ptr %289, align 2
  %291 = getelementptr inbounds i8, ptr %287, i32 3
  %292 = load i8, ptr %291, align 1
  %293 = zext i8 %292 to i32
  %294 = and i32 %285, 31
  %295 = shl i32 %286, %294
  %296 = sub nsw i32 0, %293
  %297 = and i32 %296, 31
  %298 = lshr i32 %295, %297
  %299 = add i32 %285, %293
  %300 = zext i16 %288 to i32
  %301 = add i32 %298, %300
  %302 = getelementptr i8, ptr %281, i32 1
  store i8 %290, ptr %281, align 1
  %303 = icmp ugt i32 %299, 32
  br i1 %303, label %378, label %304

304:                                              ; preds = %280
  %305 = icmp ult ptr %284, %14
  br i1 %305, label %309, label %306

306:                                              ; preds = %304
  %307 = lshr i32 %299, 3
  %308 = and i32 %299, 7
  br label %321

309:                                              ; preds = %304
  %310 = icmp eq ptr %284, %2
  br i1 %310, label %327, label %311

311:                                              ; preds = %309
  %312 = lshr i32 %299, 3
  %313 = sub nsw i32 0, %312
  %314 = getelementptr i8, ptr %284, i32 %313
  %315 = icmp ult ptr %314, %2
  %316 = ptrtoint ptr %284 to i32
  %317 = sub i32 %316, %279
  %318 = select i1 %315, i32 %317, i32 %312
  %319 = mul i32 %318, -8
  %320 = add i32 %319, %299
  br label %321

321:                                              ; preds = %311, %306
  %322 = phi i32 [ %307, %306 ], [ %318, %311 ]
  %323 = phi i32 [ %308, %306 ], [ %320, %311 ]
  %324 = sub i32 0, %322
  %325 = getelementptr i8, ptr %284, i32 %324
  %326 = load i32, ptr %325, align 1
  br label %327

327:                                              ; preds = %321, %309
  %328 = phi i32 [ %286, %309 ], [ %326, %321 ]
  %329 = phi i32 [ %299, %309 ], [ %323, %321 ]
  %330 = phi ptr [ %2, %309 ], [ %325, %321 ]
  %331 = icmp ugt ptr %302, %276
  br i1 %331, label %772, label %332

332:                                              ; preds = %327
  %333 = getelementptr %struct.FSE_decode_t, ptr %99, i32 %282
  %334 = load i16, ptr %333, align 2
  %335 = getelementptr inbounds i8, ptr %333, i32 2
  %336 = load i8, ptr %335, align 2
  %337 = getelementptr inbounds i8, ptr %333, i32 3
  %338 = load i8, ptr %337, align 1
  %339 = zext i8 %338 to i32
  %340 = and i32 %329, 31
  %341 = shl i32 %328, %340
  %342 = sub nsw i32 0, %339
  %343 = and i32 %342, 31
  %344 = lshr i32 %341, %343
  %345 = add i32 %329, %339
  %346 = zext i16 %334 to i32
  %347 = add i32 %344, %346
  %348 = getelementptr i8, ptr %281, i32 2
  store i8 %336, ptr %302, align 1
  %349 = icmp ugt i32 %345, 32
  br i1 %349, label %378, label %350

350:                                              ; preds = %332
  %351 = icmp ult ptr %330, %14
  br i1 %351, label %355, label %352

352:                                              ; preds = %350
  %353 = lshr i32 %345, 3
  %354 = and i32 %345, 7
  br label %367

355:                                              ; preds = %350
  %356 = icmp eq ptr %330, %2
  br i1 %356, label %373, label %357

357:                                              ; preds = %355
  %358 = lshr i32 %345, 3
  %359 = sub nsw i32 0, %358
  %360 = getelementptr i8, ptr %330, i32 %359
  %361 = icmp ult ptr %360, %2
  %362 = ptrtoint ptr %330 to i32
  %363 = sub i32 %362, %279
  %364 = select i1 %361, i32 %363, i32 %358
  %365 = mul i32 %364, -8
  %366 = add i32 %365, %345
  br label %367

367:                                              ; preds = %357, %352
  %368 = phi i32 [ %353, %352 ], [ %364, %357 ]
  %369 = phi i32 [ %354, %352 ], [ %366, %357 ]
  %370 = sub i32 0, %368
  %371 = getelementptr i8, ptr %330, i32 %370
  %372 = load i32, ptr %371, align 1
  br label %373

373:                                              ; preds = %367, %355
  %374 = phi i32 [ %328, %355 ], [ %372, %367 ]
  %375 = phi i32 [ %345, %355 ], [ %369, %367 ]
  %376 = phi ptr [ %2, %355 ], [ %371, %367 ]
  %377 = icmp ugt ptr %348, %276
  br i1 %377, label %772, label %280

378:                                              ; preds = %332, %280
  %379 = phi i32 [ %282, %280 ], [ %301, %332 ]
  %380 = phi i32 [ 2, %280 ], [ 3, %332 ]
  %381 = phi ptr [ %302, %280 ], [ %348, %332 ]
  %382 = getelementptr %struct.FSE_decode_t, ptr %99, i32 %379
  %383 = getelementptr inbounds i8, ptr %382, i32 2
  %384 = load i8, ptr %383, align 2
  %385 = getelementptr i8, ptr %281, i32 %380
  store i8 %384, ptr %381, align 1
  %386 = ptrtoint ptr %385 to i32
  %387 = ptrtoint ptr %0 to i32
  %388 = sub i32 %386, %387
  br label %772

389:                                              ; preds = %5
  br i1 %11, label %772, label %390

390:                                              ; preds = %389
  %391 = getelementptr i8, ptr %2, i32 4
  %392 = icmp ugt i32 %3, 3
  br i1 %392, label %393, label %398

393:                                              ; preds = %390
  %394 = add i32 %3, -1
  %395 = getelementptr i8, ptr %2, i32 %394
  %396 = load i8, ptr %395, align 1
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %772, label %426

398:                                              ; preds = %390
  %399 = load i8, ptr %2, align 1
  %400 = zext i8 %399 to i32
  switch i32 %3, label %414 [
    i32 2, label %407
    i32 3, label %401
  ]

401:                                              ; preds = %398
  %402 = getelementptr i8, ptr %2, i32 2
  %403 = load i8, ptr %402, align 1
  %404 = zext i8 %403 to i32
  %405 = shl nuw nsw i32 %404, 16
  %406 = or i32 %405, %400
  br label %407

407:                                              ; preds = %401, %398
  %408 = phi i32 [ %400, %398 ], [ %406, %401 ]
  %409 = getelementptr i8, ptr %2, i32 1
  %410 = load i8, ptr %409, align 1
  %411 = zext i8 %410 to i32
  %412 = shl nuw nsw i32 %411, 8
  %413 = add nsw i32 %412, %408
  br label %414

414:                                              ; preds = %407, %398
  %415 = phi i32 [ %400, %398 ], [ %413, %407 ]
  %416 = add nsw i32 %3, -1
  %417 = getelementptr i8, ptr %2, i32 %416
  %418 = load i8, ptr %417, align 1
  %419 = icmp eq i8 %418, 0
  br i1 %419, label %772, label %420

420:                                              ; preds = %414
  %421 = zext i8 %418 to i32
  %422 = tail call i32 @llvm.ctlz.i32(i32 %421, i1 true) #9, !range !8
  %423 = mul nsw i32 %3, -8
  %424 = add nsw i32 %423, 9
  %425 = add nsw i32 %424, %422
  br label %434

426:                                              ; preds = %393
  %427 = getelementptr i8, ptr %2, i32 %3
  %428 = getelementptr i8, ptr %427, i32 -4
  %429 = load i32, ptr %428, align 1
  %430 = zext i8 %396 to i32
  %431 = tail call i32 @llvm.ctlz.i32(i32 %430, i1 true) #9, !range !8
  %432 = add nsw i32 %431, -23
  %433 = icmp ult i32 %3, -119
  br i1 %433, label %434, label %772

434:                                              ; preds = %426, %420
  %435 = phi ptr [ %2, %420 ], [ %428, %426 ]
  %436 = phi i32 [ %425, %420 ], [ %432, %426 ]
  %437 = phi i32 [ %415, %420 ], [ %429, %426 ]
  %438 = load i16, ptr %4, align 2
  %439 = zext i16 %438 to i32
  %440 = add nsw i32 %436, %439
  %441 = sub nsw i32 0, %440
  %442 = and i32 %441, 31
  %443 = lshr i32 %437, %442
  %444 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %439
  %445 = load i32, ptr %444, align 4
  %446 = and i32 %443, %445
  %447 = icmp ugt i32 %440, 32
  br i1 %447, label %472, label %448

448:                                              ; preds = %434
  %449 = icmp ult ptr %435, %391
  br i1 %449, label %453, label %450

450:                                              ; preds = %448
  %451 = lshr i32 %440, 3
  %452 = and i32 %440, 7
  br label %466

453:                                              ; preds = %448
  %454 = icmp eq ptr %435, %2
  br i1 %454, label %472, label %455

455:                                              ; preds = %453
  %456 = lshr i32 %440, 3
  %457 = sub nsw i32 0, %456
  %458 = getelementptr i8, ptr %435, i32 %457
  %459 = icmp ult ptr %458, %2
  %460 = ptrtoint ptr %435 to i32
  %461 = ptrtoint ptr %2 to i32
  %462 = sub i32 %460, %461
  %463 = select i1 %459, i32 %462, i32 %456
  %464 = mul i32 %463, -8
  %465 = add i32 %464, %440
  br label %466

466:                                              ; preds = %455, %450
  %467 = phi i32 [ %463, %455 ], [ %451, %450 ]
  %468 = phi i32 [ %465, %455 ], [ %452, %450 ]
  %469 = sub i32 0, %467
  %470 = getelementptr i8, ptr %435, i32 %469
  %471 = load i32, ptr %470, align 1
  br label %472

472:                                              ; preds = %466, %453, %434
  %473 = phi i32 [ %437, %434 ], [ %437, %453 ], [ %471, %466 ]
  %474 = phi i32 [ %440, %434 ], [ %440, %453 ], [ %468, %466 ]
  %475 = phi ptr [ %435, %434 ], [ %2, %453 ], [ %470, %466 ]
  %476 = getelementptr i32, ptr %4, i32 1
  %477 = add i32 %474, %439
  %478 = sub i32 0, %477
  %479 = and i32 %478, 31
  %480 = lshr i32 %473, %479
  %481 = and i32 %480, %445
  %482 = icmp ugt i32 %477, 32
  br i1 %482, label %650, label %483

483:                                              ; preds = %472
  %484 = icmp ult ptr %475, %391
  br i1 %484, label %491, label %485

485:                                              ; preds = %483
  %486 = lshr i32 %477, 3
  %487 = and i32 %477, 7
  %488 = sub nsw i32 0, %486
  %489 = getelementptr i8, ptr %475, i32 %488
  %490 = load i32, ptr %489, align 1
  br label %508

491:                                              ; preds = %483
  %492 = icmp eq ptr %475, %2
  br i1 %492, label %508, label %493

493:                                              ; preds = %491
  %494 = lshr i32 %477, 3
  %495 = sub nsw i32 0, %494
  %496 = getelementptr i8, ptr %475, i32 %495
  %497 = icmp ult ptr %496, %2
  %498 = ptrtoint ptr %475 to i32
  %499 = ptrtoint ptr %2 to i32
  %500 = sub i32 %498, %499
  %501 = select i1 %497, i32 %500, i32 %494
  %502 = mul i32 %501, -8
  %503 = add i32 %502, %477
  %504 = sub i32 0, %501
  %505 = getelementptr i8, ptr %475, i32 %504
  %506 = load i32, ptr %505, align 1
  %507 = icmp ugt i32 %503, 32
  br i1 %507, label %650, label %508

508:                                              ; preds = %493, %491, %485
  %509 = phi ptr [ %505, %493 ], [ %489, %485 ], [ %2, %491 ]
  %510 = phi i32 [ %503, %493 ], [ %487, %485 ], [ %477, %491 ]
  %511 = phi i32 [ %506, %493 ], [ %490, %485 ], [ %473, %491 ]
  %512 = ptrtoint ptr %2 to i32
  br label %513

513:                                              ; preds = %610, %508
  %514 = phi ptr [ %0, %508 ], [ %648, %610 ]
  %515 = phi i32 [ %481, %508 ], [ %644, %610 ]
  %516 = phi i32 [ %446, %508 ], [ %629, %610 ]
  %517 = phi ptr [ %509, %508 ], [ %611, %610 ]
  %518 = phi i32 [ %510, %508 ], [ %635, %610 ]
  %519 = phi i32 [ %511, %508 ], [ %613, %610 ]
  %520 = icmp ult ptr %517, %391
  br i1 %520, label %524, label %521

521:                                              ; preds = %513
  %522 = lshr i32 %518, 3
  %523 = and i32 %518, 7
  br label %537

524:                                              ; preds = %513
  %525 = icmp eq ptr %517, %2
  br i1 %525, label %650, label %526

526:                                              ; preds = %524
  %527 = lshr i32 %518, 3
  %528 = sub nsw i32 0, %527
  %529 = getelementptr i8, ptr %517, i32 %528
  %530 = icmp ult ptr %529, %2
  %531 = ptrtoint ptr %517 to i32
  %532 = sub i32 %531, %512
  %533 = select i1 %530, i32 %532, i32 %527
  %534 = zext i1 %530 to i32
  %535 = mul i32 %533, -8
  %536 = add i32 %535, %518
  br label %537

537:                                              ; preds = %526, %521
  %538 = phi i32 [ %536, %526 ], [ %523, %521 ]
  %539 = phi i32 [ %533, %526 ], [ %522, %521 ]
  %540 = phi i32 [ %534, %526 ], [ 0, %521 ]
  %541 = sub i32 0, %539
  %542 = getelementptr i8, ptr %517, i32 %541
  %543 = load i32, ptr %542, align 1
  %544 = icmp eq i32 %540, 0
  %545 = icmp ult ptr %514, %10
  %546 = and i1 %545, %544
  br i1 %546, label %547, label %650

547:                                              ; preds = %537
  %548 = getelementptr %struct.FSE_decode_t, ptr %476, i32 %516
  %549 = load i16, ptr %548, align 2
  %550 = getelementptr inbounds i8, ptr %548, i32 2
  %551 = load i8, ptr %550, align 2
  %552 = getelementptr inbounds i8, ptr %548, i32 3
  %553 = load i8, ptr %552, align 1
  %554 = zext i8 %553 to i32
  %555 = add i32 %538, %554
  %556 = sub i32 0, %555
  %557 = and i32 %556, 31
  %558 = lshr i32 %543, %557
  %559 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %554
  %560 = load i32, ptr %559, align 4
  %561 = and i32 %558, %560
  %562 = zext i16 %549 to i32
  %563 = add i32 %561, %562
  store i8 %551, ptr %514, align 1
  %564 = getelementptr %struct.FSE_decode_t, ptr %476, i32 %515
  %565 = getelementptr inbounds i8, ptr %564, i32 3
  %566 = load i8, ptr %565, align 1
  %567 = zext i8 %566 to i32
  %568 = add i32 %555, %567
  %569 = sub i32 0, %568
  %570 = and i32 %569, 31
  %571 = lshr i32 %543, %570
  %572 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %567
  %573 = load i32, ptr %572, align 4
  %574 = and i32 %571, %573
  %575 = load i16, ptr %564, align 2
  %576 = zext i16 %575 to i32
  %577 = add i32 %574, %576
  %578 = getelementptr inbounds i8, ptr %564, i32 2
  %579 = load i8, ptr %578, align 2
  %580 = getelementptr i8, ptr %514, i32 1
  store i8 %579, ptr %580, align 1
  %581 = icmp ugt i32 %568, 32
  br i1 %581, label %605, label %582

582:                                              ; preds = %547
  %583 = icmp ult ptr %542, %391
  br i1 %583, label %590, label %584

584:                                              ; preds = %582
  %585 = lshr i32 %568, 3
  %586 = sub nsw i32 0, %585
  %587 = getelementptr i8, ptr %542, i32 %586
  %588 = and i32 %568, 7
  %589 = load i32, ptr %587, align 1
  br label %610

590:                                              ; preds = %582
  %591 = icmp eq ptr %542, %2
  br i1 %591, label %605, label %592

592:                                              ; preds = %590
  %593 = lshr i32 %568, 3
  %594 = sub nsw i32 0, %593
  %595 = getelementptr i8, ptr %542, i32 %594
  %596 = icmp ult ptr %595, %2
  %597 = ptrtoint ptr %542 to i32
  %598 = sub i32 %597, %512
  %599 = select i1 %596, i32 %598, i32 %593
  %600 = sub i32 0, %599
  %601 = getelementptr i8, ptr %542, i32 %600
  %602 = mul i32 %599, -8
  %603 = add i32 %602, %568
  %604 = load i32, ptr %601, align 1
  br i1 %596, label %605, label %610

605:                                              ; preds = %592, %590, %547
  %606 = phi ptr [ %601, %592 ], [ %542, %547 ], [ %2, %590 ]
  %607 = phi i32 [ %603, %592 ], [ %568, %547 ], [ %568, %590 ]
  %608 = phi i32 [ %604, %592 ], [ %543, %547 ], [ %543, %590 ]
  %609 = getelementptr i8, ptr %514, i32 2
  br label %650

610:                                              ; preds = %592, %584
  %611 = phi ptr [ %587, %584 ], [ %601, %592 ]
  %612 = phi i32 [ %588, %584 ], [ %603, %592 ]
  %613 = phi i32 [ %589, %584 ], [ %604, %592 ]
  %614 = getelementptr %struct.FSE_decode_t, ptr %476, i32 %563
  %615 = load i16, ptr %614, align 2
  %616 = getelementptr inbounds i8, ptr %614, i32 2
  %617 = load i8, ptr %616, align 2
  %618 = getelementptr inbounds i8, ptr %614, i32 3
  %619 = load i8, ptr %618, align 1
  %620 = zext i8 %619 to i32
  %621 = add i32 %612, %620
  %622 = sub i32 0, %621
  %623 = and i32 %622, 31
  %624 = lshr i32 %613, %623
  %625 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %620
  %626 = load i32, ptr %625, align 4
  %627 = and i32 %624, %626
  %628 = zext i16 %615 to i32
  %629 = add i32 %627, %628
  %630 = getelementptr i8, ptr %514, i32 2
  store i8 %617, ptr %630, align 1
  %631 = getelementptr %struct.FSE_decode_t, ptr %476, i32 %577
  %632 = getelementptr inbounds i8, ptr %631, i32 3
  %633 = load i8, ptr %632, align 1
  %634 = zext i8 %633 to i32
  %635 = add i32 %621, %634
  %636 = sub i32 0, %635
  %637 = and i32 %636, 31
  %638 = lshr i32 %613, %637
  %639 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %634
  %640 = load i32, ptr %639, align 4
  %641 = and i32 %638, %640
  %642 = load i16, ptr %631, align 2
  %643 = zext i16 %642 to i32
  %644 = add i32 %641, %643
  %645 = getelementptr inbounds i8, ptr %631, i32 2
  %646 = load i8, ptr %645, align 2
  %647 = getelementptr i8, ptr %514, i32 3
  store i8 %646, ptr %647, align 1
  %648 = getelementptr i8, ptr %514, i32 4
  %649 = icmp ugt i32 %635, 32
  br i1 %649, label %650, label %513

650:                                              ; preds = %610, %605, %537, %524, %493, %472
  %651 = phi i32 [ %608, %605 ], [ %506, %493 ], [ %473, %472 ], [ %519, %524 ], [ %613, %610 ], [ %543, %537 ]
  %652 = phi i32 [ %607, %605 ], [ %503, %493 ], [ %477, %472 ], [ %518, %524 ], [ %635, %610 ], [ %538, %537 ]
  %653 = phi ptr [ %606, %605 ], [ %505, %493 ], [ %475, %472 ], [ %2, %524 ], [ %611, %610 ], [ %542, %537 ]
  %654 = phi i32 [ %563, %605 ], [ %446, %493 ], [ %446, %472 ], [ %516, %524 ], [ %629, %610 ], [ %516, %537 ]
  %655 = phi i32 [ %577, %605 ], [ %481, %493 ], [ %481, %472 ], [ %515, %524 ], [ %644, %610 ], [ %515, %537 ]
  %656 = phi ptr [ %609, %605 ], [ %0, %493 ], [ %0, %472 ], [ %514, %524 ], [ %648, %610 ], [ %514, %537 ]
  %657 = getelementptr i8, ptr %9, i32 -2
  %658 = icmp ugt ptr %656, %657
  br i1 %658, label %772, label %659

659:                                              ; preds = %650
  %660 = ptrtoint ptr %2 to i32
  br label %661

661:                                              ; preds = %756, %659
  %662 = phi ptr [ %656, %659 ], [ %731, %756 ]
  %663 = phi i32 [ %655, %659 ], [ %730, %756 ]
  %664 = phi i32 [ %654, %659 ], [ %683, %756 ]
  %665 = phi ptr [ %653, %659 ], [ %759, %756 ]
  %666 = phi i32 [ %652, %659 ], [ %758, %756 ]
  %667 = phi i32 [ %651, %659 ], [ %757, %756 ]
  %668 = getelementptr %struct.FSE_decode_t, ptr %476, i32 %664
  %669 = load i16, ptr %668, align 2
  %670 = getelementptr inbounds i8, ptr %668, i32 2
  %671 = load i8, ptr %670, align 2
  %672 = getelementptr inbounds i8, ptr %668, i32 3
  %673 = load i8, ptr %672, align 1
  %674 = zext i8 %673 to i32
  %675 = add i32 %666, %674
  %676 = sub i32 0, %675
  %677 = and i32 %676, 31
  %678 = lshr i32 %667, %677
  %679 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %674
  %680 = load i32, ptr %679, align 4
  %681 = and i32 %678, %680
  %682 = zext i16 %669 to i32
  %683 = add i32 %681, %682
  %684 = getelementptr i8, ptr %662, i32 1
  store i8 %671, ptr %662, align 1
  %685 = icmp ugt i32 %675, 32
  br i1 %685, label %761, label %686

686:                                              ; preds = %661
  %687 = icmp ult ptr %665, %391
  br i1 %687, label %691, label %688

688:                                              ; preds = %686
  %689 = lshr i32 %675, 3
  %690 = and i32 %675, 7
  br label %703

691:                                              ; preds = %686
  %692 = icmp eq ptr %665, %2
  br i1 %692, label %709, label %693

693:                                              ; preds = %691
  %694 = lshr i32 %675, 3
  %695 = sub nsw i32 0, %694
  %696 = getelementptr i8, ptr %665, i32 %695
  %697 = icmp ult ptr %696, %2
  %698 = ptrtoint ptr %665 to i32
  %699 = sub i32 %698, %660
  %700 = select i1 %697, i32 %699, i32 %694
  %701 = mul i32 %700, -8
  %702 = add i32 %701, %675
  br label %703

703:                                              ; preds = %693, %688
  %704 = phi i32 [ %689, %688 ], [ %700, %693 ]
  %705 = phi i32 [ %690, %688 ], [ %702, %693 ]
  %706 = sub i32 0, %704
  %707 = getelementptr i8, ptr %665, i32 %706
  %708 = load i32, ptr %707, align 1
  br label %709

709:                                              ; preds = %703, %691
  %710 = phi i32 [ %667, %691 ], [ %708, %703 ]
  %711 = phi i32 [ %675, %691 ], [ %705, %703 ]
  %712 = phi ptr [ %2, %691 ], [ %707, %703 ]
  %713 = icmp ugt ptr %684, %657
  br i1 %713, label %772, label %714

714:                                              ; preds = %709
  %715 = getelementptr %struct.FSE_decode_t, ptr %476, i32 %663
  %716 = load i16, ptr %715, align 2
  %717 = getelementptr inbounds i8, ptr %715, i32 2
  %718 = load i8, ptr %717, align 2
  %719 = getelementptr inbounds i8, ptr %715, i32 3
  %720 = load i8, ptr %719, align 1
  %721 = zext i8 %720 to i32
  %722 = add i32 %711, %721
  %723 = sub i32 0, %722
  %724 = and i32 %723, 31
  %725 = lshr i32 %710, %724
  %726 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %721
  %727 = load i32, ptr %726, align 4
  %728 = and i32 %725, %727
  %729 = zext i16 %716 to i32
  %730 = add i32 %728, %729
  %731 = getelementptr i8, ptr %662, i32 2
  store i8 %718, ptr %684, align 1
  %732 = icmp ugt i32 %722, 32
  br i1 %732, label %761, label %733

733:                                              ; preds = %714
  %734 = icmp ult ptr %712, %391
  br i1 %734, label %738, label %735

735:                                              ; preds = %733
  %736 = lshr i32 %722, 3
  %737 = and i32 %722, 7
  br label %750

738:                                              ; preds = %733
  %739 = icmp eq ptr %712, %2
  br i1 %739, label %756, label %740

740:                                              ; preds = %738
  %741 = lshr i32 %722, 3
  %742 = sub nsw i32 0, %741
  %743 = getelementptr i8, ptr %712, i32 %742
  %744 = icmp ult ptr %743, %2
  %745 = ptrtoint ptr %712 to i32
  %746 = sub i32 %745, %660
  %747 = select i1 %744, i32 %746, i32 %741
  %748 = mul i32 %747, -8
  %749 = add i32 %748, %722
  br label %750

750:                                              ; preds = %740, %735
  %751 = phi i32 [ %736, %735 ], [ %747, %740 ]
  %752 = phi i32 [ %737, %735 ], [ %749, %740 ]
  %753 = sub i32 0, %751
  %754 = getelementptr i8, ptr %712, i32 %753
  %755 = load i32, ptr %754, align 1
  br label %756

756:                                              ; preds = %750, %738
  %757 = phi i32 [ %710, %738 ], [ %755, %750 ]
  %758 = phi i32 [ %722, %738 ], [ %752, %750 ]
  %759 = phi ptr [ %2, %738 ], [ %754, %750 ]
  %760 = icmp ugt ptr %731, %657
  br i1 %760, label %772, label %661

761:                                              ; preds = %714, %661
  %762 = phi i32 [ %663, %661 ], [ %683, %714 ]
  %763 = phi i32 [ 2, %661 ], [ 3, %714 ]
  %764 = phi ptr [ %684, %661 ], [ %731, %714 ]
  %765 = getelementptr %struct.FSE_decode_t, ptr %476, i32 %762
  %766 = getelementptr inbounds i8, ptr %765, i32 2
  %767 = load i8, ptr %766, align 2
  %768 = getelementptr i8, ptr %662, i32 %763
  store i8 %767, ptr %764, align 1
  %769 = ptrtoint ptr %768 to i32
  %770 = ptrtoint ptr %0 to i32
  %771 = sub i32 %769, %770
  br label %772

772:                                              ; preds = %761, %756, %709, %650, %426, %414, %393, %389, %378, %373, %327, %269, %49, %37, %16, %12
  %773 = phi i32 [ %388, %378 ], [ %3, %49 ], [ -20, %37 ], [ -1, %16 ], [ -72, %12 ], [ -70, %269 ], [ %771, %761 ], [ %3, %426 ], [ -20, %414 ], [ -1, %393 ], [ -72, %389 ], [ -70, %650 ], [ -70, %709 ], [ -70, %756 ], [ -70, %327 ], [ -70, %373 ]
  ret i32 %773
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @FSE_decompress_wksp(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #6 {
  %8 = tail call i32 @FSE_decompress_wksp_bmi2(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 undef)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @FSE_decompress_wksp_bmi2(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 %7) local_unnamed_addr #6 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store i32 0, ptr %9, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  store i32 255, ptr %10, align 4
  %11 = icmp ult i32 %6, 516
  br i1 %11, label %812, label %12

12:                                               ; preds = %8
  %13 = call i32 @FSE_readNCount_bmi2(ptr noundef %5, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef %2, i32 noundef %3, i32 noundef 0) #9
  %14 = icmp ult i32 %13, -119
  br i1 %14, label %15, label %812

15:                                               ; preds = %12
  %16 = load i32, ptr %9, align 4
  %17 = icmp ugt i32 %16, %4
  br i1 %17, label %812, label %18

18:                                               ; preds = %15
  %19 = getelementptr i8, ptr %2, i32 %13
  %20 = sub i32 %3, %13
  %21 = shl nuw i32 1, %16
  %22 = add nuw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = load i32, ptr %10, align 4
  %25 = shl i32 %24, 1
  %26 = add i32 %25, 2
  %27 = zext i32 %26 to i64
  %28 = zext i32 %16 to i64
  %29 = shl nuw i64 1, %28
  %30 = shl nsw i64 %23, 2
  %31 = add nuw i64 %29, 527
  %32 = add i64 %31, %30
  %33 = add i64 %32, %27
  %34 = and i64 %33, -4
  %35 = zext i32 %6 to i64
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %812, label %37

37:                                               ; preds = %18
  %38 = getelementptr inbounds %struct.FSE_DecompressWksp, ptr %5, i32 0, i32 1
  %39 = getelementptr i32, ptr %38, i32 %22
  %40 = mul i32 %22, -4
  %41 = add i32 %6, -516
  %42 = add i32 %41, %40
  %43 = call fastcc i32 @FSE_buildDTable_internal(ptr noundef %38, ptr noundef %5, i32 noundef %24, i32 noundef %16, ptr noundef %39, i32 noundef %42) #9, !range !10
  %44 = icmp ult i32 %43, -119
  br i1 %44, label %45, label %812

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.FSE_DTableHeader, ptr %38, i32 0, i32 1
  %47 = load i16, ptr %46, align 2
  %48 = icmp eq i16 %47, 0
  %49 = getelementptr i8, ptr %0, i32 %1
  %50 = getelementptr i8, ptr %49, i32 -3
  %51 = icmp eq i32 %20, 0
  br i1 %48, label %429, label %52

52:                                               ; preds = %45
  br i1 %51, label %812, label %53

53:                                               ; preds = %52
  %54 = getelementptr i8, ptr %19, i32 4
  %55 = icmp ugt i32 %20, 3
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = add i32 %20, -1
  %58 = getelementptr i8, ptr %19, i32 %57
  %59 = load i8, ptr %58, align 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %812, label %89

61:                                               ; preds = %53
  %62 = load i8, ptr %19, align 1
  %63 = zext i8 %62 to i32
  switch i32 %20, label %77 [
    i32 2, label %70
    i32 3, label %64
  ]

64:                                               ; preds = %61
  %65 = getelementptr i8, ptr %19, i32 2
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 16
  %69 = or i32 %68, %63
  br label %70

70:                                               ; preds = %64, %61
  %71 = phi i32 [ %63, %61 ], [ %69, %64 ]
  %72 = getelementptr i8, ptr %19, i32 1
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = shl nuw nsw i32 %74, 8
  %76 = add nsw i32 %75, %71
  br label %77

77:                                               ; preds = %70, %61
  %78 = phi i32 [ %63, %61 ], [ %76, %70 ]
  %79 = add nsw i32 %20, -1
  %80 = getelementptr i8, ptr %19, i32 %79
  %81 = load i8, ptr %80, align 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %812, label %83

83:                                               ; preds = %77
  %84 = zext i8 %81 to i32
  %85 = call i32 @llvm.ctlz.i32(i32 %84, i1 true) #9, !range !8
  %86 = mul nsw i32 %20, -8
  %87 = add nsw i32 %86, 9
  %88 = add nsw i32 %87, %85
  br label %97

89:                                               ; preds = %56
  %90 = getelementptr i8, ptr %2, i32 %3
  %91 = getelementptr i8, ptr %90, i32 -4
  %92 = load i32, ptr %91, align 1
  %93 = zext i8 %59 to i32
  %94 = call i32 @llvm.ctlz.i32(i32 %93, i1 true) #9, !range !8
  %95 = add nsw i32 %94, -23
  %96 = icmp ult i32 %20, -119
  br i1 %96, label %97, label %812

97:                                               ; preds = %89, %83
  %98 = phi ptr [ %19, %83 ], [ %91, %89 ]
  %99 = phi i32 [ %88, %83 ], [ %95, %89 ]
  %100 = phi i32 [ %78, %83 ], [ %92, %89 ]
  %101 = load i16, ptr %38, align 2
  %102 = zext i16 %101 to i32
  %103 = add nsw i32 %99, %102
  %104 = sub nsw i32 0, %103
  %105 = and i32 %104, 31
  %106 = lshr i32 %100, %105
  %107 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %102
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %106, %108
  %110 = icmp ugt i32 %103, 32
  br i1 %110, label %135, label %111

111:                                              ; preds = %97
  %112 = icmp ult ptr %98, %54
  br i1 %112, label %116, label %113

113:                                              ; preds = %111
  %114 = lshr i32 %103, 3
  %115 = and i32 %103, 7
  br label %129

116:                                              ; preds = %111
  %117 = icmp eq ptr %98, %19
  br i1 %117, label %135, label %118

118:                                              ; preds = %116
  %119 = lshr i32 %103, 3
  %120 = sub nsw i32 0, %119
  %121 = getelementptr i8, ptr %98, i32 %120
  %122 = icmp ult ptr %121, %19
  %123 = ptrtoint ptr %98 to i32
  %124 = ptrtoint ptr %19 to i32
  %125 = sub i32 %123, %124
  %126 = select i1 %122, i32 %125, i32 %119
  %127 = mul i32 %126, -8
  %128 = add i32 %127, %103
  br label %129

129:                                              ; preds = %118, %113
  %130 = phi i32 [ %126, %118 ], [ %114, %113 ]
  %131 = phi i32 [ %128, %118 ], [ %115, %113 ]
  %132 = sub i32 0, %130
  %133 = getelementptr i8, ptr %98, i32 %132
  %134 = load i32, ptr %133, align 1
  br label %135

135:                                              ; preds = %129, %116, %97
  %136 = phi i32 [ %100, %97 ], [ %100, %116 ], [ %134, %129 ]
  %137 = phi i32 [ %103, %97 ], [ %103, %116 ], [ %131, %129 ]
  %138 = phi ptr [ %98, %97 ], [ %19, %116 ], [ %133, %129 ]
  %139 = getelementptr %struct.FSE_DecompressWksp, ptr %5, i32 1
  %140 = add i32 %137, %102
  %141 = sub i32 0, %140
  %142 = and i32 %141, 31
  %143 = lshr i32 %136, %142
  %144 = and i32 %143, %108
  %145 = icmp ugt i32 %140, 32
  br i1 %145, label %309, label %146

146:                                              ; preds = %135
  %147 = icmp ult ptr %138, %54
  br i1 %147, label %154, label %148

148:                                              ; preds = %146
  %149 = lshr i32 %140, 3
  %150 = and i32 %140, 7
  %151 = sub nsw i32 0, %149
  %152 = getelementptr i8, ptr %138, i32 %151
  %153 = load i32, ptr %152, align 1
  br label %171

154:                                              ; preds = %146
  %155 = icmp eq ptr %138, %19
  br i1 %155, label %171, label %156

156:                                              ; preds = %154
  %157 = lshr i32 %140, 3
  %158 = sub nsw i32 0, %157
  %159 = getelementptr i8, ptr %138, i32 %158
  %160 = icmp ult ptr %159, %19
  %161 = ptrtoint ptr %138 to i32
  %162 = ptrtoint ptr %19 to i32
  %163 = sub i32 %161, %162
  %164 = select i1 %160, i32 %163, i32 %157
  %165 = mul i32 %164, -8
  %166 = add i32 %165, %140
  %167 = sub i32 0, %164
  %168 = getelementptr i8, ptr %138, i32 %167
  %169 = load i32, ptr %168, align 1
  %170 = icmp ugt i32 %166, 32
  br i1 %170, label %309, label %171

171:                                              ; preds = %156, %154, %148
  %172 = phi ptr [ %168, %156 ], [ %152, %148 ], [ %19, %154 ]
  %173 = phi i32 [ %166, %156 ], [ %150, %148 ], [ %140, %154 ]
  %174 = phi i32 [ %169, %156 ], [ %153, %148 ], [ %136, %154 ]
  %175 = ptrtoint ptr %19 to i32
  br label %176

176:                                              ; preds = %271, %171
  %177 = phi ptr [ %0, %171 ], [ %307, %271 ]
  %178 = phi i32 [ %144, %171 ], [ %303, %271 ]
  %179 = phi i32 [ %109, %171 ], [ %289, %271 ]
  %180 = phi ptr [ %172, %171 ], [ %272, %271 ]
  %181 = phi i32 [ %173, %171 ], [ %300, %271 ]
  %182 = phi i32 [ %174, %171 ], [ %274, %271 ]
  %183 = icmp ult ptr %180, %54
  br i1 %183, label %187, label %184

184:                                              ; preds = %176
  %185 = lshr i32 %181, 3
  %186 = and i32 %181, 7
  br label %200

187:                                              ; preds = %176
  %188 = icmp eq ptr %180, %19
  br i1 %188, label %309, label %189

189:                                              ; preds = %187
  %190 = lshr i32 %181, 3
  %191 = sub nsw i32 0, %190
  %192 = getelementptr i8, ptr %180, i32 %191
  %193 = icmp ult ptr %192, %19
  %194 = ptrtoint ptr %180 to i32
  %195 = sub i32 %194, %175
  %196 = select i1 %193, i32 %195, i32 %190
  %197 = zext i1 %193 to i32
  %198 = mul i32 %196, -8
  %199 = add i32 %198, %181
  br label %200

200:                                              ; preds = %189, %184
  %201 = phi i32 [ %199, %189 ], [ %186, %184 ]
  %202 = phi i32 [ %196, %189 ], [ %185, %184 ]
  %203 = phi i32 [ %197, %189 ], [ 0, %184 ]
  %204 = sub i32 0, %202
  %205 = getelementptr i8, ptr %180, i32 %204
  %206 = load i32, ptr %205, align 1
  %207 = icmp eq i32 %203, 0
  %208 = icmp ult ptr %177, %50
  %209 = and i1 %208, %207
  br i1 %209, label %210, label %309

210:                                              ; preds = %200
  %211 = getelementptr %struct.FSE_decode_t, ptr %139, i32 %179
  %212 = load i16, ptr %211, align 2
  %213 = getelementptr inbounds i8, ptr %211, i32 2
  %214 = load i8, ptr %213, align 2
  %215 = getelementptr inbounds i8, ptr %211, i32 3
  %216 = load i8, ptr %215, align 1
  %217 = zext i8 %216 to i32
  %218 = and i32 %201, 31
  %219 = shl i32 %206, %218
  %220 = sub nsw i32 0, %217
  %221 = and i32 %220, 31
  %222 = lshr i32 %219, %221
  %223 = add i32 %201, %217
  %224 = zext i16 %212 to i32
  %225 = add i32 %222, %224
  store i8 %214, ptr %177, align 1
  %226 = getelementptr %struct.FSE_decode_t, ptr %139, i32 %178
  %227 = getelementptr inbounds i8, ptr %226, i32 3
  %228 = load i8, ptr %227, align 1
  %229 = zext i8 %228 to i32
  %230 = and i32 %223, 31
  %231 = shl i32 %206, %230
  %232 = sub nsw i32 0, %229
  %233 = and i32 %232, 31
  %234 = lshr i32 %231, %233
  %235 = add i32 %223, %229
  %236 = load i16, ptr %226, align 2
  %237 = zext i16 %236 to i32
  %238 = add i32 %234, %237
  %239 = getelementptr inbounds i8, ptr %226, i32 2
  %240 = load i8, ptr %239, align 2
  %241 = getelementptr i8, ptr %177, i32 1
  store i8 %240, ptr %241, align 1
  %242 = icmp ugt i32 %235, 32
  br i1 %242, label %266, label %243

243:                                              ; preds = %210
  %244 = icmp ult ptr %205, %54
  br i1 %244, label %251, label %245

245:                                              ; preds = %243
  %246 = lshr i32 %235, 3
  %247 = sub nsw i32 0, %246
  %248 = getelementptr i8, ptr %205, i32 %247
  %249 = and i32 %235, 7
  %250 = load i32, ptr %248, align 1
  br label %271

251:                                              ; preds = %243
  %252 = icmp eq ptr %205, %19
  br i1 %252, label %266, label %253

253:                                              ; preds = %251
  %254 = lshr i32 %235, 3
  %255 = sub nsw i32 0, %254
  %256 = getelementptr i8, ptr %205, i32 %255
  %257 = icmp ult ptr %256, %19
  %258 = ptrtoint ptr %205 to i32
  %259 = sub i32 %258, %175
  %260 = select i1 %257, i32 %259, i32 %254
  %261 = sub i32 0, %260
  %262 = getelementptr i8, ptr %205, i32 %261
  %263 = mul i32 %260, -8
  %264 = add i32 %263, %235
  %265 = load i32, ptr %262, align 1
  br i1 %257, label %266, label %271

266:                                              ; preds = %253, %251, %210
  %267 = phi ptr [ %262, %253 ], [ %205, %210 ], [ %19, %251 ]
  %268 = phi i32 [ %264, %253 ], [ %235, %210 ], [ %235, %251 ]
  %269 = phi i32 [ %265, %253 ], [ %206, %210 ], [ %206, %251 ]
  %270 = getelementptr i8, ptr %177, i32 2
  br label %309

271:                                              ; preds = %253, %245
  %272 = phi ptr [ %248, %245 ], [ %262, %253 ]
  %273 = phi i32 [ %249, %245 ], [ %264, %253 ]
  %274 = phi i32 [ %250, %245 ], [ %265, %253 ]
  %275 = getelementptr %struct.FSE_decode_t, ptr %139, i32 %225
  %276 = load i16, ptr %275, align 2
  %277 = getelementptr inbounds i8, ptr %275, i32 2
  %278 = load i8, ptr %277, align 2
  %279 = getelementptr inbounds i8, ptr %275, i32 3
  %280 = load i8, ptr %279, align 1
  %281 = zext i8 %280 to i32
  %282 = and i32 %273, 31
  %283 = shl i32 %274, %282
  %284 = sub nsw i32 0, %281
  %285 = and i32 %284, 31
  %286 = lshr i32 %283, %285
  %287 = add i32 %273, %281
  %288 = zext i16 %276 to i32
  %289 = add i32 %286, %288
  %290 = getelementptr i8, ptr %177, i32 2
  store i8 %278, ptr %290, align 1
  %291 = getelementptr %struct.FSE_decode_t, ptr %139, i32 %238
  %292 = getelementptr inbounds i8, ptr %291, i32 3
  %293 = load i8, ptr %292, align 1
  %294 = zext i8 %293 to i32
  %295 = and i32 %287, 31
  %296 = shl i32 %274, %295
  %297 = sub nsw i32 0, %294
  %298 = and i32 %297, 31
  %299 = lshr i32 %296, %298
  %300 = add i32 %287, %294
  %301 = load i16, ptr %291, align 2
  %302 = zext i16 %301 to i32
  %303 = add i32 %299, %302
  %304 = getelementptr inbounds i8, ptr %291, i32 2
  %305 = load i8, ptr %304, align 2
  %306 = getelementptr i8, ptr %177, i32 3
  store i8 %305, ptr %306, align 1
  %307 = getelementptr i8, ptr %177, i32 4
  %308 = icmp ugt i32 %300, 32
  br i1 %308, label %309, label %176

309:                                              ; preds = %271, %266, %200, %187, %156, %135
  %310 = phi i32 [ %269, %266 ], [ %169, %156 ], [ %136, %135 ], [ %182, %187 ], [ %274, %271 ], [ %206, %200 ]
  %311 = phi i32 [ %268, %266 ], [ %166, %156 ], [ %140, %135 ], [ %181, %187 ], [ %300, %271 ], [ %201, %200 ]
  %312 = phi ptr [ %267, %266 ], [ %168, %156 ], [ %138, %135 ], [ %19, %187 ], [ %272, %271 ], [ %205, %200 ]
  %313 = phi i32 [ %225, %266 ], [ %109, %156 ], [ %109, %135 ], [ %179, %187 ], [ %289, %271 ], [ %179, %200 ]
  %314 = phi i32 [ %238, %266 ], [ %144, %156 ], [ %144, %135 ], [ %178, %187 ], [ %303, %271 ], [ %178, %200 ]
  %315 = phi ptr [ %270, %266 ], [ %0, %156 ], [ %0, %135 ], [ %177, %187 ], [ %307, %271 ], [ %177, %200 ]
  %316 = getelementptr i8, ptr %49, i32 -2
  %317 = icmp ugt ptr %315, %316
  br i1 %317, label %812, label %318

318:                                              ; preds = %309
  %319 = ptrtoint ptr %19 to i32
  br label %320

320:                                              ; preds = %413, %318
  %321 = phi ptr [ %315, %318 ], [ %388, %413 ]
  %322 = phi i32 [ %314, %318 ], [ %387, %413 ]
  %323 = phi i32 [ %313, %318 ], [ %341, %413 ]
  %324 = phi ptr [ %312, %318 ], [ %416, %413 ]
  %325 = phi i32 [ %311, %318 ], [ %415, %413 ]
  %326 = phi i32 [ %310, %318 ], [ %414, %413 ]
  %327 = getelementptr %struct.FSE_decode_t, ptr %139, i32 %323
  %328 = load i16, ptr %327, align 2
  %329 = getelementptr inbounds i8, ptr %327, i32 2
  %330 = load i8, ptr %329, align 2
  %331 = getelementptr inbounds i8, ptr %327, i32 3
  %332 = load i8, ptr %331, align 1
  %333 = zext i8 %332 to i32
  %334 = and i32 %325, 31
  %335 = shl i32 %326, %334
  %336 = sub nsw i32 0, %333
  %337 = and i32 %336, 31
  %338 = lshr i32 %335, %337
  %339 = add i32 %325, %333
  %340 = zext i16 %328 to i32
  %341 = add i32 %338, %340
  %342 = getelementptr i8, ptr %321, i32 1
  store i8 %330, ptr %321, align 1
  %343 = icmp ugt i32 %339, 32
  br i1 %343, label %418, label %344

344:                                              ; preds = %320
  %345 = icmp ult ptr %324, %54
  br i1 %345, label %349, label %346

346:                                              ; preds = %344
  %347 = lshr i32 %339, 3
  %348 = and i32 %339, 7
  br label %361

349:                                              ; preds = %344
  %350 = icmp eq ptr %324, %19
  br i1 %350, label %367, label %351

351:                                              ; preds = %349
  %352 = lshr i32 %339, 3
  %353 = sub nsw i32 0, %352
  %354 = getelementptr i8, ptr %324, i32 %353
  %355 = icmp ult ptr %354, %19
  %356 = ptrtoint ptr %324 to i32
  %357 = sub i32 %356, %319
  %358 = select i1 %355, i32 %357, i32 %352
  %359 = mul i32 %358, -8
  %360 = add i32 %359, %339
  br label %361

361:                                              ; preds = %351, %346
  %362 = phi i32 [ %347, %346 ], [ %358, %351 ]
  %363 = phi i32 [ %348, %346 ], [ %360, %351 ]
  %364 = sub i32 0, %362
  %365 = getelementptr i8, ptr %324, i32 %364
  %366 = load i32, ptr %365, align 1
  br label %367

367:                                              ; preds = %361, %349
  %368 = phi i32 [ %326, %349 ], [ %366, %361 ]
  %369 = phi i32 [ %339, %349 ], [ %363, %361 ]
  %370 = phi ptr [ %19, %349 ], [ %365, %361 ]
  %371 = icmp ugt ptr %342, %316
  br i1 %371, label %812, label %372

372:                                              ; preds = %367
  %373 = getelementptr %struct.FSE_decode_t, ptr %139, i32 %322
  %374 = load i16, ptr %373, align 2
  %375 = getelementptr inbounds i8, ptr %373, i32 2
  %376 = load i8, ptr %375, align 2
  %377 = getelementptr inbounds i8, ptr %373, i32 3
  %378 = load i8, ptr %377, align 1
  %379 = zext i8 %378 to i32
  %380 = and i32 %369, 31
  %381 = shl i32 %368, %380
  %382 = sub nsw i32 0, %379
  %383 = and i32 %382, 31
  %384 = lshr i32 %381, %383
  %385 = add i32 %369, %379
  %386 = zext i16 %374 to i32
  %387 = add i32 %384, %386
  %388 = getelementptr i8, ptr %321, i32 2
  store i8 %376, ptr %342, align 1
  %389 = icmp ugt i32 %385, 32
  br i1 %389, label %418, label %390

390:                                              ; preds = %372
  %391 = icmp ult ptr %370, %54
  br i1 %391, label %395, label %392

392:                                              ; preds = %390
  %393 = lshr i32 %385, 3
  %394 = and i32 %385, 7
  br label %407

395:                                              ; preds = %390
  %396 = icmp eq ptr %370, %19
  br i1 %396, label %413, label %397

397:                                              ; preds = %395
  %398 = lshr i32 %385, 3
  %399 = sub nsw i32 0, %398
  %400 = getelementptr i8, ptr %370, i32 %399
  %401 = icmp ult ptr %400, %19
  %402 = ptrtoint ptr %370 to i32
  %403 = sub i32 %402, %319
  %404 = select i1 %401, i32 %403, i32 %398
  %405 = mul i32 %404, -8
  %406 = add i32 %405, %385
  br label %407

407:                                              ; preds = %397, %392
  %408 = phi i32 [ %393, %392 ], [ %404, %397 ]
  %409 = phi i32 [ %394, %392 ], [ %406, %397 ]
  %410 = sub i32 0, %408
  %411 = getelementptr i8, ptr %370, i32 %410
  %412 = load i32, ptr %411, align 1
  br label %413

413:                                              ; preds = %407, %395
  %414 = phi i32 [ %368, %395 ], [ %412, %407 ]
  %415 = phi i32 [ %385, %395 ], [ %409, %407 ]
  %416 = phi ptr [ %19, %395 ], [ %411, %407 ]
  %417 = icmp ugt ptr %388, %316
  br i1 %417, label %812, label %320

418:                                              ; preds = %372, %320
  %419 = phi i32 [ %322, %320 ], [ %341, %372 ]
  %420 = phi i32 [ 2, %320 ], [ 3, %372 ]
  %421 = phi ptr [ %342, %320 ], [ %388, %372 ]
  %422 = getelementptr %struct.FSE_decode_t, ptr %139, i32 %419
  %423 = getelementptr inbounds i8, ptr %422, i32 2
  %424 = load i8, ptr %423, align 2
  %425 = getelementptr i8, ptr %321, i32 %420
  store i8 %424, ptr %421, align 1
  %426 = ptrtoint ptr %425 to i32
  %427 = ptrtoint ptr %0 to i32
  %428 = sub i32 %426, %427
  br label %812

429:                                              ; preds = %45
  br i1 %51, label %812, label %430

430:                                              ; preds = %429
  %431 = getelementptr i8, ptr %19, i32 4
  %432 = icmp ugt i32 %20, 3
  br i1 %432, label %433, label %438

433:                                              ; preds = %430
  %434 = add i32 %20, -1
  %435 = getelementptr i8, ptr %19, i32 %434
  %436 = load i8, ptr %435, align 1
  %437 = icmp eq i8 %436, 0
  br i1 %437, label %812, label %466

438:                                              ; preds = %430
  %439 = load i8, ptr %19, align 1
  %440 = zext i8 %439 to i32
  switch i32 %20, label %454 [
    i32 2, label %447
    i32 3, label %441
  ]

441:                                              ; preds = %438
  %442 = getelementptr i8, ptr %19, i32 2
  %443 = load i8, ptr %442, align 1
  %444 = zext i8 %443 to i32
  %445 = shl nuw nsw i32 %444, 16
  %446 = or i32 %445, %440
  br label %447

447:                                              ; preds = %441, %438
  %448 = phi i32 [ %440, %438 ], [ %446, %441 ]
  %449 = getelementptr i8, ptr %19, i32 1
  %450 = load i8, ptr %449, align 1
  %451 = zext i8 %450 to i32
  %452 = shl nuw nsw i32 %451, 8
  %453 = add nsw i32 %452, %448
  br label %454

454:                                              ; preds = %447, %438
  %455 = phi i32 [ %440, %438 ], [ %453, %447 ]
  %456 = add nsw i32 %20, -1
  %457 = getelementptr i8, ptr %19, i32 %456
  %458 = load i8, ptr %457, align 1
  %459 = icmp eq i8 %458, 0
  br i1 %459, label %812, label %460

460:                                              ; preds = %454
  %461 = zext i8 %458 to i32
  %462 = call i32 @llvm.ctlz.i32(i32 %461, i1 true) #9, !range !8
  %463 = mul nsw i32 %20, -8
  %464 = add nsw i32 %463, 9
  %465 = add nsw i32 %464, %462
  br label %474

466:                                              ; preds = %433
  %467 = getelementptr i8, ptr %2, i32 %3
  %468 = getelementptr i8, ptr %467, i32 -4
  %469 = load i32, ptr %468, align 1
  %470 = zext i8 %436 to i32
  %471 = call i32 @llvm.ctlz.i32(i32 %470, i1 true) #9, !range !8
  %472 = add nsw i32 %471, -23
  %473 = icmp ult i32 %20, -119
  br i1 %473, label %474, label %812

474:                                              ; preds = %466, %460
  %475 = phi ptr [ %19, %460 ], [ %468, %466 ]
  %476 = phi i32 [ %465, %460 ], [ %472, %466 ]
  %477 = phi i32 [ %455, %460 ], [ %469, %466 ]
  %478 = load i16, ptr %38, align 2
  %479 = zext i16 %478 to i32
  %480 = add nsw i32 %476, %479
  %481 = sub nsw i32 0, %480
  %482 = and i32 %481, 31
  %483 = lshr i32 %477, %482
  %484 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %479
  %485 = load i32, ptr %484, align 4
  %486 = and i32 %483, %485
  %487 = icmp ugt i32 %480, 32
  br i1 %487, label %512, label %488

488:                                              ; preds = %474
  %489 = icmp ult ptr %475, %431
  br i1 %489, label %493, label %490

490:                                              ; preds = %488
  %491 = lshr i32 %480, 3
  %492 = and i32 %480, 7
  br label %506

493:                                              ; preds = %488
  %494 = icmp eq ptr %475, %19
  br i1 %494, label %512, label %495

495:                                              ; preds = %493
  %496 = lshr i32 %480, 3
  %497 = sub nsw i32 0, %496
  %498 = getelementptr i8, ptr %475, i32 %497
  %499 = icmp ult ptr %498, %19
  %500 = ptrtoint ptr %475 to i32
  %501 = ptrtoint ptr %19 to i32
  %502 = sub i32 %500, %501
  %503 = select i1 %499, i32 %502, i32 %496
  %504 = mul i32 %503, -8
  %505 = add i32 %504, %480
  br label %506

506:                                              ; preds = %495, %490
  %507 = phi i32 [ %503, %495 ], [ %491, %490 ]
  %508 = phi i32 [ %505, %495 ], [ %492, %490 ]
  %509 = sub i32 0, %507
  %510 = getelementptr i8, ptr %475, i32 %509
  %511 = load i32, ptr %510, align 1
  br label %512

512:                                              ; preds = %506, %493, %474
  %513 = phi i32 [ %477, %474 ], [ %477, %493 ], [ %511, %506 ]
  %514 = phi i32 [ %480, %474 ], [ %480, %493 ], [ %508, %506 ]
  %515 = phi ptr [ %475, %474 ], [ %19, %493 ], [ %510, %506 ]
  %516 = getelementptr %struct.FSE_DecompressWksp, ptr %5, i32 1
  %517 = add i32 %514, %479
  %518 = sub i32 0, %517
  %519 = and i32 %518, 31
  %520 = lshr i32 %513, %519
  %521 = and i32 %520, %485
  %522 = icmp ugt i32 %517, 32
  br i1 %522, label %690, label %523

523:                                              ; preds = %512
  %524 = icmp ult ptr %515, %431
  br i1 %524, label %531, label %525

525:                                              ; preds = %523
  %526 = lshr i32 %517, 3
  %527 = and i32 %517, 7
  %528 = sub nsw i32 0, %526
  %529 = getelementptr i8, ptr %515, i32 %528
  %530 = load i32, ptr %529, align 1
  br label %548

531:                                              ; preds = %523
  %532 = icmp eq ptr %515, %19
  br i1 %532, label %548, label %533

533:                                              ; preds = %531
  %534 = lshr i32 %517, 3
  %535 = sub nsw i32 0, %534
  %536 = getelementptr i8, ptr %515, i32 %535
  %537 = icmp ult ptr %536, %19
  %538 = ptrtoint ptr %515 to i32
  %539 = ptrtoint ptr %19 to i32
  %540 = sub i32 %538, %539
  %541 = select i1 %537, i32 %540, i32 %534
  %542 = mul i32 %541, -8
  %543 = add i32 %542, %517
  %544 = sub i32 0, %541
  %545 = getelementptr i8, ptr %515, i32 %544
  %546 = load i32, ptr %545, align 1
  %547 = icmp ugt i32 %543, 32
  br i1 %547, label %690, label %548

548:                                              ; preds = %533, %531, %525
  %549 = phi ptr [ %545, %533 ], [ %529, %525 ], [ %19, %531 ]
  %550 = phi i32 [ %543, %533 ], [ %527, %525 ], [ %517, %531 ]
  %551 = phi i32 [ %546, %533 ], [ %530, %525 ], [ %513, %531 ]
  %552 = ptrtoint ptr %19 to i32
  br label %553

553:                                              ; preds = %650, %548
  %554 = phi ptr [ %0, %548 ], [ %688, %650 ]
  %555 = phi i32 [ %521, %548 ], [ %684, %650 ]
  %556 = phi i32 [ %486, %548 ], [ %669, %650 ]
  %557 = phi ptr [ %549, %548 ], [ %651, %650 ]
  %558 = phi i32 [ %550, %548 ], [ %675, %650 ]
  %559 = phi i32 [ %551, %548 ], [ %653, %650 ]
  %560 = icmp ult ptr %557, %431
  br i1 %560, label %564, label %561

561:                                              ; preds = %553
  %562 = lshr i32 %558, 3
  %563 = and i32 %558, 7
  br label %577

564:                                              ; preds = %553
  %565 = icmp eq ptr %557, %19
  br i1 %565, label %690, label %566

566:                                              ; preds = %564
  %567 = lshr i32 %558, 3
  %568 = sub nsw i32 0, %567
  %569 = getelementptr i8, ptr %557, i32 %568
  %570 = icmp ult ptr %569, %19
  %571 = ptrtoint ptr %557 to i32
  %572 = sub i32 %571, %552
  %573 = select i1 %570, i32 %572, i32 %567
  %574 = zext i1 %570 to i32
  %575 = mul i32 %573, -8
  %576 = add i32 %575, %558
  br label %577

577:                                              ; preds = %566, %561
  %578 = phi i32 [ %576, %566 ], [ %563, %561 ]
  %579 = phi i32 [ %573, %566 ], [ %562, %561 ]
  %580 = phi i32 [ %574, %566 ], [ 0, %561 ]
  %581 = sub i32 0, %579
  %582 = getelementptr i8, ptr %557, i32 %581
  %583 = load i32, ptr %582, align 1
  %584 = icmp eq i32 %580, 0
  %585 = icmp ult ptr %554, %50
  %586 = and i1 %585, %584
  br i1 %586, label %587, label %690

587:                                              ; preds = %577
  %588 = getelementptr %struct.FSE_decode_t, ptr %516, i32 %556
  %589 = load i16, ptr %588, align 2
  %590 = getelementptr inbounds i8, ptr %588, i32 2
  %591 = load i8, ptr %590, align 2
  %592 = getelementptr inbounds i8, ptr %588, i32 3
  %593 = load i8, ptr %592, align 1
  %594 = zext i8 %593 to i32
  %595 = add i32 %578, %594
  %596 = sub i32 0, %595
  %597 = and i32 %596, 31
  %598 = lshr i32 %583, %597
  %599 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %594
  %600 = load i32, ptr %599, align 4
  %601 = and i32 %598, %600
  %602 = zext i16 %589 to i32
  %603 = add i32 %601, %602
  store i8 %591, ptr %554, align 1
  %604 = getelementptr %struct.FSE_decode_t, ptr %516, i32 %555
  %605 = getelementptr inbounds i8, ptr %604, i32 3
  %606 = load i8, ptr %605, align 1
  %607 = zext i8 %606 to i32
  %608 = add i32 %595, %607
  %609 = sub i32 0, %608
  %610 = and i32 %609, 31
  %611 = lshr i32 %583, %610
  %612 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %607
  %613 = load i32, ptr %612, align 4
  %614 = and i32 %611, %613
  %615 = load i16, ptr %604, align 2
  %616 = zext i16 %615 to i32
  %617 = add i32 %614, %616
  %618 = getelementptr inbounds i8, ptr %604, i32 2
  %619 = load i8, ptr %618, align 2
  %620 = getelementptr i8, ptr %554, i32 1
  store i8 %619, ptr %620, align 1
  %621 = icmp ugt i32 %608, 32
  br i1 %621, label %645, label %622

622:                                              ; preds = %587
  %623 = icmp ult ptr %582, %431
  br i1 %623, label %630, label %624

624:                                              ; preds = %622
  %625 = lshr i32 %608, 3
  %626 = sub nsw i32 0, %625
  %627 = getelementptr i8, ptr %582, i32 %626
  %628 = and i32 %608, 7
  %629 = load i32, ptr %627, align 1
  br label %650

630:                                              ; preds = %622
  %631 = icmp eq ptr %582, %19
  br i1 %631, label %645, label %632

632:                                              ; preds = %630
  %633 = lshr i32 %608, 3
  %634 = sub nsw i32 0, %633
  %635 = getelementptr i8, ptr %582, i32 %634
  %636 = icmp ult ptr %635, %19
  %637 = ptrtoint ptr %582 to i32
  %638 = sub i32 %637, %552
  %639 = select i1 %636, i32 %638, i32 %633
  %640 = sub i32 0, %639
  %641 = getelementptr i8, ptr %582, i32 %640
  %642 = mul i32 %639, -8
  %643 = add i32 %642, %608
  %644 = load i32, ptr %641, align 1
  br i1 %636, label %645, label %650

645:                                              ; preds = %632, %630, %587
  %646 = phi ptr [ %641, %632 ], [ %582, %587 ], [ %19, %630 ]
  %647 = phi i32 [ %643, %632 ], [ %608, %587 ], [ %608, %630 ]
  %648 = phi i32 [ %644, %632 ], [ %583, %587 ], [ %583, %630 ]
  %649 = getelementptr i8, ptr %554, i32 2
  br label %690

650:                                              ; preds = %632, %624
  %651 = phi ptr [ %627, %624 ], [ %641, %632 ]
  %652 = phi i32 [ %628, %624 ], [ %643, %632 ]
  %653 = phi i32 [ %629, %624 ], [ %644, %632 ]
  %654 = getelementptr %struct.FSE_decode_t, ptr %516, i32 %603
  %655 = load i16, ptr %654, align 2
  %656 = getelementptr inbounds i8, ptr %654, i32 2
  %657 = load i8, ptr %656, align 2
  %658 = getelementptr inbounds i8, ptr %654, i32 3
  %659 = load i8, ptr %658, align 1
  %660 = zext i8 %659 to i32
  %661 = add i32 %652, %660
  %662 = sub i32 0, %661
  %663 = and i32 %662, 31
  %664 = lshr i32 %653, %663
  %665 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %660
  %666 = load i32, ptr %665, align 4
  %667 = and i32 %664, %666
  %668 = zext i16 %655 to i32
  %669 = add i32 %667, %668
  %670 = getelementptr i8, ptr %554, i32 2
  store i8 %657, ptr %670, align 1
  %671 = getelementptr %struct.FSE_decode_t, ptr %516, i32 %617
  %672 = getelementptr inbounds i8, ptr %671, i32 3
  %673 = load i8, ptr %672, align 1
  %674 = zext i8 %673 to i32
  %675 = add i32 %661, %674
  %676 = sub i32 0, %675
  %677 = and i32 %676, 31
  %678 = lshr i32 %653, %677
  %679 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %674
  %680 = load i32, ptr %679, align 4
  %681 = and i32 %678, %680
  %682 = load i16, ptr %671, align 2
  %683 = zext i16 %682 to i32
  %684 = add i32 %681, %683
  %685 = getelementptr inbounds i8, ptr %671, i32 2
  %686 = load i8, ptr %685, align 2
  %687 = getelementptr i8, ptr %554, i32 3
  store i8 %686, ptr %687, align 1
  %688 = getelementptr i8, ptr %554, i32 4
  %689 = icmp ugt i32 %675, 32
  br i1 %689, label %690, label %553

690:                                              ; preds = %650, %645, %577, %564, %533, %512
  %691 = phi i32 [ %648, %645 ], [ %546, %533 ], [ %513, %512 ], [ %559, %564 ], [ %653, %650 ], [ %583, %577 ]
  %692 = phi i32 [ %647, %645 ], [ %543, %533 ], [ %517, %512 ], [ %558, %564 ], [ %675, %650 ], [ %578, %577 ]
  %693 = phi ptr [ %646, %645 ], [ %545, %533 ], [ %515, %512 ], [ %19, %564 ], [ %651, %650 ], [ %582, %577 ]
  %694 = phi i32 [ %603, %645 ], [ %486, %533 ], [ %486, %512 ], [ %556, %564 ], [ %669, %650 ], [ %556, %577 ]
  %695 = phi i32 [ %617, %645 ], [ %521, %533 ], [ %521, %512 ], [ %555, %564 ], [ %684, %650 ], [ %555, %577 ]
  %696 = phi ptr [ %649, %645 ], [ %0, %533 ], [ %0, %512 ], [ %554, %564 ], [ %688, %650 ], [ %554, %577 ]
  %697 = getelementptr i8, ptr %49, i32 -2
  %698 = icmp ugt ptr %696, %697
  br i1 %698, label %812, label %699

699:                                              ; preds = %690
  %700 = ptrtoint ptr %19 to i32
  br label %701

701:                                              ; preds = %796, %699
  %702 = phi ptr [ %696, %699 ], [ %771, %796 ]
  %703 = phi i32 [ %695, %699 ], [ %770, %796 ]
  %704 = phi i32 [ %694, %699 ], [ %723, %796 ]
  %705 = phi ptr [ %693, %699 ], [ %799, %796 ]
  %706 = phi i32 [ %692, %699 ], [ %798, %796 ]
  %707 = phi i32 [ %691, %699 ], [ %797, %796 ]
  %708 = getelementptr %struct.FSE_decode_t, ptr %516, i32 %704
  %709 = load i16, ptr %708, align 2
  %710 = getelementptr inbounds i8, ptr %708, i32 2
  %711 = load i8, ptr %710, align 2
  %712 = getelementptr inbounds i8, ptr %708, i32 3
  %713 = load i8, ptr %712, align 1
  %714 = zext i8 %713 to i32
  %715 = add i32 %706, %714
  %716 = sub i32 0, %715
  %717 = and i32 %716, 31
  %718 = lshr i32 %707, %717
  %719 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %714
  %720 = load i32, ptr %719, align 4
  %721 = and i32 %718, %720
  %722 = zext i16 %709 to i32
  %723 = add i32 %721, %722
  %724 = getelementptr i8, ptr %702, i32 1
  store i8 %711, ptr %702, align 1
  %725 = icmp ugt i32 %715, 32
  br i1 %725, label %801, label %726

726:                                              ; preds = %701
  %727 = icmp ult ptr %705, %431
  br i1 %727, label %731, label %728

728:                                              ; preds = %726
  %729 = lshr i32 %715, 3
  %730 = and i32 %715, 7
  br label %743

731:                                              ; preds = %726
  %732 = icmp eq ptr %705, %19
  br i1 %732, label %749, label %733

733:                                              ; preds = %731
  %734 = lshr i32 %715, 3
  %735 = sub nsw i32 0, %734
  %736 = getelementptr i8, ptr %705, i32 %735
  %737 = icmp ult ptr %736, %19
  %738 = ptrtoint ptr %705 to i32
  %739 = sub i32 %738, %700
  %740 = select i1 %737, i32 %739, i32 %734
  %741 = mul i32 %740, -8
  %742 = add i32 %741, %715
  br label %743

743:                                              ; preds = %733, %728
  %744 = phi i32 [ %729, %728 ], [ %740, %733 ]
  %745 = phi i32 [ %730, %728 ], [ %742, %733 ]
  %746 = sub i32 0, %744
  %747 = getelementptr i8, ptr %705, i32 %746
  %748 = load i32, ptr %747, align 1
  br label %749

749:                                              ; preds = %743, %731
  %750 = phi i32 [ %707, %731 ], [ %748, %743 ]
  %751 = phi i32 [ %715, %731 ], [ %745, %743 ]
  %752 = phi ptr [ %19, %731 ], [ %747, %743 ]
  %753 = icmp ugt ptr %724, %697
  br i1 %753, label %812, label %754

754:                                              ; preds = %749
  %755 = getelementptr %struct.FSE_decode_t, ptr %516, i32 %703
  %756 = load i16, ptr %755, align 2
  %757 = getelementptr inbounds i8, ptr %755, i32 2
  %758 = load i8, ptr %757, align 2
  %759 = getelementptr inbounds i8, ptr %755, i32 3
  %760 = load i8, ptr %759, align 1
  %761 = zext i8 %760 to i32
  %762 = add i32 %751, %761
  %763 = sub i32 0, %762
  %764 = and i32 %763, 31
  %765 = lshr i32 %750, %764
  %766 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %761
  %767 = load i32, ptr %766, align 4
  %768 = and i32 %765, %767
  %769 = zext i16 %756 to i32
  %770 = add i32 %768, %769
  %771 = getelementptr i8, ptr %702, i32 2
  store i8 %758, ptr %724, align 1
  %772 = icmp ugt i32 %762, 32
  br i1 %772, label %801, label %773

773:                                              ; preds = %754
  %774 = icmp ult ptr %752, %431
  br i1 %774, label %778, label %775

775:                                              ; preds = %773
  %776 = lshr i32 %762, 3
  %777 = and i32 %762, 7
  br label %790

778:                                              ; preds = %773
  %779 = icmp eq ptr %752, %19
  br i1 %779, label %796, label %780

780:                                              ; preds = %778
  %781 = lshr i32 %762, 3
  %782 = sub nsw i32 0, %781
  %783 = getelementptr i8, ptr %752, i32 %782
  %784 = icmp ult ptr %783, %19
  %785 = ptrtoint ptr %752 to i32
  %786 = sub i32 %785, %700
  %787 = select i1 %784, i32 %786, i32 %781
  %788 = mul i32 %787, -8
  %789 = add i32 %788, %762
  br label %790

790:                                              ; preds = %780, %775
  %791 = phi i32 [ %776, %775 ], [ %787, %780 ]
  %792 = phi i32 [ %777, %775 ], [ %789, %780 ]
  %793 = sub i32 0, %791
  %794 = getelementptr i8, ptr %752, i32 %793
  %795 = load i32, ptr %794, align 1
  br label %796

796:                                              ; preds = %790, %778
  %797 = phi i32 [ %750, %778 ], [ %795, %790 ]
  %798 = phi i32 [ %762, %778 ], [ %792, %790 ]
  %799 = phi ptr [ %19, %778 ], [ %794, %790 ]
  %800 = icmp ugt ptr %771, %697
  br i1 %800, label %812, label %701

801:                                              ; preds = %754, %701
  %802 = phi i32 [ %703, %701 ], [ %723, %754 ]
  %803 = phi i32 [ 2, %701 ], [ 3, %754 ]
  %804 = phi ptr [ %724, %701 ], [ %771, %754 ]
  %805 = getelementptr %struct.FSE_decode_t, ptr %516, i32 %802
  %806 = getelementptr inbounds i8, ptr %805, i32 2
  %807 = load i8, ptr %806, align 2
  %808 = getelementptr i8, ptr %702, i32 %803
  store i8 %807, ptr %804, align 1
  %809 = ptrtoint ptr %808 to i32
  %810 = ptrtoint ptr %0 to i32
  %811 = sub i32 %809, %810
  br label %812

812:                                              ; preds = %801, %796, %749, %690, %466, %454, %433, %429, %418, %413, %367, %309, %89, %77, %56, %52, %37, %18, %15, %12, %8
  %813 = phi i32 [ %43, %37 ], [ -1, %8 ], [ -44, %18 ], [ %428, %418 ], [ %20, %89 ], [ -20, %77 ], [ -1, %56 ], [ -72, %52 ], [ -70, %309 ], [ %811, %801 ], [ %20, %466 ], [ -20, %454 ], [ -1, %433 ], [ -72, %429 ], [ -70, %690 ], [ -44, %15 ], [ %13, %12 ], [ -70, %796 ], [ -70, %749 ], [ -70, %413 ], [ -70, %367 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  ret i32 %813
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_readNCount_bmi2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i32 0, i32 33}
!9 = !{!"auto-init"}
!10 = !{i32 -46, i32 1}
