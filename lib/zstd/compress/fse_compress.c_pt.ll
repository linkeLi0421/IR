; ModuleID = '/llk/IR/lib/zstd/compress/fse_compress.c_pt.bc'
source_filename = "../lib/zstd/compress/fse_compress.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.FSE_symbolCompressionTransform = type { i32, i32 }

@FSE_normalizeCount.rtbTable = internal unnamed_addr constant [8 x i32] [i32 0, i32 473195, i32 504333, i32 520860, i32 550000, i32 700000, i32 750000, i32 830000], align 4
@BIT_mask = internal unnamed_addr constant [32 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535, i32 131071, i32 262143, i32 524287, i32 1048575, i32 2097151, i32 4194303, i32 8388607, i32 16777215, i32 33554431, i32 67108863, i32 134217727, i32 268435455, i32 536870911, i32 1073741823, i32 2147483647], align 4

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @FSE_buildCTable_wksp(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = shl nuw i32 1, %3
  %8 = add i32 %7, -1
  %9 = getelementptr i16, ptr %0, i32 2
  %10 = icmp eq i32 %3, 0
  %11 = lshr i32 %7, 1
  %12 = select i1 %10, i32 1, i32 %11
  %13 = getelementptr i32, ptr %9, i32 %12
  %14 = lshr i32 %7, 3
  %15 = add i32 %2, 2
  %16 = getelementptr i32, ptr %4, i32 %15
  %17 = ptrtoint ptr %4 to i32
  %18 = and i32 %17, 3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %144

20:                                               ; preds = %6
  %21 = zext i32 %15 to i64
  %22 = add i32 %3, -2
  %23 = zext i32 %22 to i64
  %24 = shl nuw i64 1, %23
  %25 = add nuw i64 %24, %21
  %26 = shl i64 %25, 2
  %27 = zext i32 %5 to i64
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %144, label %29

29:                                               ; preds = %20
  %30 = trunc i32 %3 to i16
  store i16 %30, ptr %0, align 2
  %31 = trunc i32 %2 to i16
  %32 = getelementptr i16, ptr %0, i32 1
  store i16 %31, ptr %32, align 2
  store i32 0, ptr %4, align 4
  %33 = add i32 %2, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %60, label %35

35:                                               ; preds = %56, %29
  %36 = phi i32 [ %58, %56 ], [ 1, %29 ]
  %37 = phi i32 [ %57, %56 ], [ %8, %29 ]
  %38 = add i32 %36, -1
  %39 = getelementptr i16, ptr %1, i32 %38
  %40 = load i16, ptr %39, align 2
  %41 = icmp eq i16 %40, -1
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = getelementptr i32, ptr %4, i32 %38
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 1
  %46 = getelementptr i32, ptr %4, i32 %36
  store i32 %45, ptr %46, align 4
  %47 = trunc i32 %38 to i8
  %48 = add i32 %37, -1
  %49 = getelementptr i8, ptr %16, i32 %37
  store i8 %47, ptr %49, align 1
  br label %56

50:                                               ; preds = %35
  %51 = sext i16 %40 to i32
  %52 = getelementptr i32, ptr %4, i32 %38
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, %51
  %55 = getelementptr i32, ptr %4, i32 %36
  store i32 %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %50, %42
  %57 = phi i32 [ %48, %42 ], [ %37, %50 ]
  %58 = add i32 %36, 1
  %59 = icmp ugt i32 %58, %33
  br i1 %59, label %60, label %35

60:                                               ; preds = %56, %29
  %61 = phi i32 [ %8, %29 ], [ %57, %56 ]
  %62 = add nuw i32 %7, 1
  %63 = getelementptr i32, ptr %4, i32 %33
  store i32 %62, ptr %63, align 4
  %64 = add nuw nsw i32 %14, 3
  %65 = add nuw i32 %64, %11
  br label %66

66:                                               ; preds = %87, %60
  %67 = phi i32 [ 0, %60 ], [ %89, %87 ]
  %68 = phi i32 [ 0, %60 ], [ %88, %87 ]
  %69 = getelementptr i16, ptr %1, i32 %67
  %70 = load i16, ptr %69, align 2
  %71 = sext i16 %70 to i32
  %72 = icmp sgt i16 %70, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %66
  %74 = trunc i32 %67 to i8
  br label %75

75:                                               ; preds = %84, %73
  %76 = phi i32 [ 0, %73 ], [ %85, %84 ]
  %77 = phi i32 [ %68, %73 ], [ %82, %84 ]
  %78 = getelementptr i8, ptr %16, i32 %77
  store i8 %74, ptr %78, align 1
  br label %79

79:                                               ; preds = %79, %75
  %80 = phi i32 [ %77, %75 ], [ %82, %79 ]
  %81 = add i32 %65, %80
  %82 = and i32 %81, %8
  %83 = icmp ugt i32 %82, %61
  br i1 %83, label %79, label %84

84:                                               ; preds = %79
  %85 = add nuw nsw i32 %76, 1
  %86 = icmp eq i32 %85, %71
  br i1 %86, label %87, label %75

87:                                               ; preds = %84, %66
  %88 = phi i32 [ %68, %66 ], [ %82, %84 ]
  %89 = add i32 %67, 1
  %90 = icmp ugt i32 %89, %2
  br i1 %90, label %97, label %66

91:                                               ; preds = %97
  %92 = shl i32 %3, 16
  %93 = sub i32 %92, %7
  %94 = add i32 %92, 65536
  %95 = sub i32 %94, %7
  %96 = add i32 %3, 1
  br label %110

97:                                               ; preds = %97, %87
  %98 = phi i32 [ %108, %97 ], [ 0, %87 ]
  %99 = getelementptr i8, ptr %16, i32 %98
  %100 = load i8, ptr %99, align 1
  %101 = add i32 %98, %7
  %102 = trunc i32 %101 to i16
  %103 = zext i8 %100 to i32
  %104 = getelementptr i32, ptr %4, i32 %103
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %105, 1
  store i32 %106, ptr %104, align 4
  %107 = getelementptr i16, ptr %9, i32 %105
  store i16 %102, ptr %107, align 2
  %108 = add nuw i32 %98, 1
  %109 = icmp eq i32 %108, %7
  br i1 %109, label %91, label %97

110:                                              ; preds = %140, %91
  %111 = phi i32 [ 0, %91 ], [ %142, %140 ]
  %112 = phi i32 [ 0, %91 ], [ %141, %140 ]
  %113 = getelementptr i16, ptr %1, i32 %111
  %114 = load i16, ptr %113, align 2
  %115 = sext i16 %114 to i32
  switch i32 %115, label %124 [
    i32 0, label %116
    i32 -1, label %119
    i32 1, label %119
  ]

116:                                              ; preds = %110
  %117 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %13, i32 %111
  %118 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %117, i32 0, i32 1
  store i32 %95, ptr %118, align 4
  br label %140

119:                                              ; preds = %110, %110
  %120 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %13, i32 %111
  %121 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %120, i32 0, i32 1
  store i32 %93, ptr %121, align 4
  %122 = add i32 %112, -1
  store i32 %122, ptr %120, align 4
  %123 = add i32 %112, 1
  br label %140

124:                                              ; preds = %110
  %125 = add nsw i32 %115, -1
  %126 = tail call i32 @llvm.ctlz.i32(i32 %125, i1 false) #8, !range !8
  %127 = xor i32 %126, -32
  %128 = add i32 %96, %127
  %129 = shl i32 %115, %128
  %130 = shl i32 %128, 16
  %131 = sub i32 %130, %129
  %132 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %13, i32 %111
  %133 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %132, i32 0, i32 1
  store i32 %131, ptr %133, align 4
  %134 = load i16, ptr %113, align 2
  %135 = sext i16 %134 to i32
  %136 = sub i32 %112, %135
  store i32 %136, ptr %132, align 4
  %137 = load i16, ptr %113, align 2
  %138 = sext i16 %137 to i32
  %139 = add i32 %112, %138
  br label %140

140:                                              ; preds = %124, %119, %116
  %141 = phi i32 [ %139, %124 ], [ %123, %119 ], [ %112, %116 ]
  %142 = add i32 %111, 1
  %143 = icmp ugt i32 %142, %2
  br i1 %143, label %144, label %110

144:                                              ; preds = %140, %20, %6
  %145 = phi i32 [ -1, %6 ], [ -44, %20 ], [ 0, %140 ]
  ret i32 %145
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @FSE_NCountWriteBound(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %0, 1
  %4 = mul i32 %3, %1
  %5 = lshr i32 %4, 3
  %6 = add nuw nsw i32 %5, 3
  %7 = icmp eq i32 %0, 0
  %8 = select i1 %7, i32 512, i32 %6
  ret i32 %8
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @FSE_writeNCount(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = icmp ugt i32 %4, 12
  br i1 %6, label %19, label %7

7:                                                ; preds = %5
  %8 = icmp ult i32 %4, 5
  br i1 %8, label %19, label %9

9:                                                ; preds = %7
  %10 = add i32 %3, 1
  %11 = mul i32 %10, %4
  %12 = lshr i32 %11, 3
  %13 = add nuw nsw i32 %12, 3
  %14 = icmp eq i32 %3, 0
  %15 = select i1 %14, i32 512, i32 %13
  %16 = icmp ule i32 %15, %1
  %17 = zext i1 %16 to i32
  %18 = tail call fastcc i32 @FSE_writeNCount_generic(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %17)
  br label %19

19:                                               ; preds = %9, %7, %5
  %20 = phi i32 [ -44, %5 ], [ -1, %7 ], [ %18, %9 ]
  ret i32 %20
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @FSE_writeNCount_generic(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #2 {
  %7 = getelementptr i8, ptr %0, i32 %1
  %8 = shl nuw i32 1, %4
  %9 = add i32 %3, 1
  %10 = add nuw i32 %8, 1
  %11 = icmp ne i32 %9, 0
  %12 = icmp sgt i32 %10, 1
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %177

14:                                               ; preds = %6
  %15 = add i32 %4, -5
  %16 = add i32 %4, 1
  %17 = icmp eq i32 %5, 0
  %18 = getelementptr i8, ptr %7, i32 -2
  br label %19

19:                                               ; preds = %148, %14
  %20 = phi i32 [ 0, %14 ], [ %123, %148 ]
  %21 = phi i32 [ 0, %14 ], [ %103, %148 ]
  %22 = phi i32 [ 4, %14 ], [ %151, %148 ]
  %23 = phi i32 [ %15, %14 ], [ %150, %148 ]
  %24 = phi i32 [ %8, %14 ], [ %135, %148 ]
  %25 = phi i32 [ %10, %14 ], [ %111, %148 ]
  %26 = phi i32 [ %16, %14 ], [ %134, %148 ]
  %27 = phi ptr [ %0, %14 ], [ %149, %148 ]
  %28 = icmp eq i32 %20, 0
  br i1 %28, label %98, label %29

29:                                               ; preds = %19
  %30 = icmp ult i32 %21, %9
  br i1 %30, label %31, label %39

31:                                               ; preds = %36, %29
  %32 = phi i32 [ %37, %36 ], [ %21, %29 ]
  %33 = getelementptr i16, ptr %2, i32 %32
  %34 = load i16, ptr %33, align 2
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = add i32 %32, 1
  %38 = icmp eq i32 %32, %3
  br i1 %38, label %155, label %31

39:                                               ; preds = %31, %29
  %40 = phi i32 [ %21, %29 ], [ %32, %31 ]
  %41 = icmp eq i32 %40, %9
  br i1 %41, label %155, label %42

42:                                               ; preds = %39
  %43 = add i32 %21, 24
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = shl i32 65535, %22
  br label %53

47:                                               ; preds = %59, %42
  %48 = phi ptr [ %27, %42 ], [ %65, %59 ]
  %49 = phi i32 [ %23, %42 ], [ %66, %59 ]
  %50 = phi i32 [ %21, %42 ], [ %54, %59 ]
  %51 = add i32 %50, 3
  %52 = icmp ult i32 %40, %51
  br i1 %52, label %78, label %69

53:                                               ; preds = %59, %45
  %54 = phi i32 [ %43, %45 ], [ %67, %59 ]
  %55 = phi i32 [ %23, %45 ], [ %66, %59 ]
  %56 = phi ptr [ %27, %45 ], [ %65, %59 ]
  %57 = icmp ugt ptr %56, %18
  %58 = select i1 %17, i1 %57, i1 false
  br i1 %58, label %177, label %59

59:                                               ; preds = %53
  %60 = add i32 %55, %46
  %61 = trunc i32 %60 to i8
  store i8 %61, ptr %56, align 1
  %62 = lshr i32 %60, 8
  %63 = trunc i32 %62 to i8
  %64 = getelementptr i8, ptr %56, i32 1
  store i8 %63, ptr %64, align 1
  %65 = getelementptr i8, ptr %56, i32 2
  %66 = lshr i32 %60, 16
  %67 = add i32 %54, 24
  %68 = icmp ult i32 %40, %67
  br i1 %68, label %47, label %53

69:                                               ; preds = %69, %47
  %70 = phi i32 [ %76, %69 ], [ %51, %47 ]
  %71 = phi i32 [ %75, %69 ], [ %22, %47 ]
  %72 = phi i32 [ %74, %69 ], [ %49, %47 ]
  %73 = shl i32 3, %71
  %74 = add i32 %73, %72
  %75 = add i32 %71, 2
  %76 = add i32 %70, 3
  %77 = icmp ult i32 %40, %76
  br i1 %77, label %78, label %69

78:                                               ; preds = %69, %47
  %79 = phi i32 [ %49, %47 ], [ %74, %69 ]
  %80 = phi i32 [ %22, %47 ], [ %75, %69 ]
  %81 = phi i32 [ %50, %47 ], [ %70, %69 ]
  %82 = sub i32 %40, %81
  %83 = shl i32 %82, %80
  %84 = add i32 %83, %79
  %85 = add i32 %80, 2
  %86 = icmp sgt i32 %85, 16
  br i1 %86, label %87, label %98

87:                                               ; preds = %78
  %88 = icmp ugt ptr %48, %18
  %89 = select i1 %17, i1 %88, i1 false
  br i1 %89, label %177, label %90

90:                                               ; preds = %87
  %91 = trunc i32 %84 to i8
  store i8 %91, ptr %48, align 1
  %92 = lshr i32 %84, 8
  %93 = trunc i32 %92 to i8
  %94 = getelementptr i8, ptr %48, i32 1
  store i8 %93, ptr %94, align 1
  %95 = getelementptr i8, ptr %48, i32 2
  %96 = lshr i32 %84, 16
  %97 = add nsw i32 %80, -14
  br label %98

98:                                               ; preds = %90, %78, %19
  %99 = phi ptr [ %27, %19 ], [ %48, %78 ], [ %95, %90 ]
  %100 = phi i32 [ %23, %19 ], [ %84, %78 ], [ %96, %90 ]
  %101 = phi i32 [ %22, %19 ], [ %85, %78 ], [ %97, %90 ]
  %102 = phi i32 [ %21, %19 ], [ %40, %78 ], [ %40, %90 ]
  %103 = add nuw i32 %102, 1
  %104 = getelementptr i16, ptr %2, i32 %102
  %105 = load i16, ptr %104, align 2
  %106 = sext i16 %105 to i32
  %107 = shl i32 %24, 1
  %108 = xor i32 %25, -1
  %109 = add i32 %107, %108
  %110 = tail call i32 @llvm.abs.i32(i32 %106, i1 true)
  %111 = sub i32 %25, %110
  %112 = add nsw i32 %106, 1
  %113 = icmp slt i32 %112, %24
  %114 = select i1 %113, i32 0, i32 %109
  %115 = add i32 %114, %112
  %116 = shl i32 %115, %101
  %117 = add i32 %116, %100
  %118 = add i32 %101, %26
  %119 = icmp slt i32 %115, %109
  %120 = sext i1 %119 to i32
  %121 = add i32 %118, %120
  %122 = icmp eq i32 %115, 1
  %123 = zext i1 %122 to i32
  %124 = icmp slt i32 %111, 1
  br i1 %124, label %177, label %125

125:                                              ; preds = %98
  %126 = icmp slt i32 %111, %24
  br i1 %126, label %127, label %133

127:                                              ; preds = %127, %125
  %128 = phi i32 [ %131, %127 ], [ %24, %125 ]
  %129 = phi i32 [ %130, %127 ], [ %26, %125 ]
  %130 = add i32 %129, -1
  %131 = ashr i32 %128, 1
  %132 = icmp slt i32 %111, %131
  br i1 %132, label %127, label %133

133:                                              ; preds = %127, %125
  %134 = phi i32 [ %26, %125 ], [ %130, %127 ]
  %135 = phi i32 [ %24, %125 ], [ %131, %127 ]
  %136 = icmp sgt i32 %121, 16
  br i1 %136, label %137, label %148

137:                                              ; preds = %133
  %138 = icmp ugt ptr %99, %18
  %139 = select i1 %17, i1 %138, i1 false
  br i1 %139, label %177, label %140

140:                                              ; preds = %137
  %141 = trunc i32 %117 to i8
  store i8 %141, ptr %99, align 1
  %142 = lshr i32 %117, 8
  %143 = trunc i32 %142 to i8
  %144 = getelementptr i8, ptr %99, i32 1
  store i8 %143, ptr %144, align 1
  %145 = getelementptr i8, ptr %99, i32 2
  %146 = lshr i32 %117, 16
  %147 = add nsw i32 %121, -16
  br label %148

148:                                              ; preds = %140, %133
  %149 = phi ptr [ %145, %140 ], [ %99, %133 ]
  %150 = phi i32 [ %146, %140 ], [ %117, %133 ]
  %151 = phi i32 [ %147, %140 ], [ %121, %133 ]
  %152 = icmp ult i32 %103, %9
  %153 = icmp sgt i32 %111, 1
  %154 = select i1 %152, i1 %153, i1 false
  br i1 %154, label %19, label %155

155:                                              ; preds = %148, %39, %36
  %156 = phi ptr [ %27, %36 ], [ %27, %39 ], [ %149, %148 ]
  %157 = phi i32 [ %25, %36 ], [ %25, %39 ], [ %111, %148 ]
  %158 = phi i32 [ %23, %36 ], [ %23, %39 ], [ %150, %148 ]
  %159 = phi i32 [ %22, %36 ], [ %22, %39 ], [ %151, %148 ]
  %160 = icmp eq i32 %157, 1
  br i1 %160, label %161, label %177

161:                                              ; preds = %155
  %162 = icmp eq i32 %5, 0
  %163 = getelementptr i8, ptr %7, i32 -2
  %164 = icmp ugt ptr %156, %163
  %165 = select i1 %162, i1 %164, i1 false
  br i1 %165, label %177, label %166

166:                                              ; preds = %161
  %167 = trunc i32 %158 to i8
  store i8 %167, ptr %156, align 1
  %168 = lshr i32 %158, 8
  %169 = trunc i32 %168 to i8
  %170 = getelementptr i8, ptr %156, i32 1
  store i8 %169, ptr %170, align 1
  %171 = add i32 %159, 7
  %172 = sdiv i32 %171, 8
  %173 = getelementptr i8, ptr %156, i32 %172
  %174 = ptrtoint ptr %173 to i32
  %175 = ptrtoint ptr %0 to i32
  %176 = sub i32 %174, %175
  br label %177

177:                                              ; preds = %166, %161, %155, %137, %98, %87, %53, %6
  %178 = phi i32 [ %176, %166 ], [ -1, %155 ], [ -70, %161 ], [ -1, %6 ], [ -70, %53 ], [ -70, %137 ], [ -70, %87 ], [ -1, %98 ]
  ret i32 %178
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local noalias ptr @FSE_createCTable(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @FSE_freeCTable(ptr nocapture noundef %0) local_unnamed_addr #1 {
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @FSE_optimalTableLog_internal(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = add i32 %1, -1
  %6 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 false) #8, !range !8
  %7 = xor i32 %6, 31
  %8 = sub i32 %7, %3
  %9 = tail call i32 @llvm.ctlz.i32(i32 %1, i1 false) #8, !range !8
  %10 = xor i32 %9, 31
  %11 = add nuw nsw i32 %10, 1
  %12 = tail call i32 @llvm.ctlz.i32(i32 %2, i1 false) #8, !range !8
  %13 = xor i32 %12, 31
  %14 = add nuw nsw i32 %13, 2
  %15 = tail call i32 @llvm.umin.i32(i32 %11, i32 %14) #8
  %16 = icmp eq i32 %0, 0
  %17 = select i1 %16, i32 11, i32 %0
  %18 = tail call i32 @llvm.umin.i32(i32 %8, i32 %17)
  %19 = tail call i32 @llvm.umax.i32(i32 %15, i32 %18)
  %20 = tail call i32 @llvm.umax.i32(i32 %19, i32 5)
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 12)
  ret i32 %21
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @FSE_optimalTableLog(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = add i32 %1, -1
  %5 = tail call i32 @llvm.ctlz.i32(i32 %4, i1 false) #8, !range !8
  %6 = xor i32 %5, 31
  %7 = add nsw i32 %6, -2
  %8 = tail call i32 @llvm.ctlz.i32(i32 %1, i1 false) #8, !range !8
  %9 = xor i32 %8, 31
  %10 = add nuw nsw i32 %9, 1
  %11 = tail call i32 @llvm.ctlz.i32(i32 %2, i1 false) #8, !range !8
  %12 = xor i32 %11, 31
  %13 = add nuw nsw i32 %12, 2
  %14 = tail call i32 @llvm.umin.i32(i32 %10, i32 %13) #8
  %15 = icmp eq i32 %0, 0
  %16 = select i1 %15, i32 11, i32 %0
  %17 = tail call i32 @llvm.umin.i32(i32 %7, i32 %16) #8
  %18 = tail call i32 @llvm.umax.i32(i32 %14, i32 %17) #8
  %19 = tail call i32 @llvm.umax.i32(i32 %18, i32 5) #8
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 12) #8
  ret i32 %20
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @FSE_normalizeCount(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #4 {
  %7 = icmp eq i32 %1, 0
  %8 = select i1 %7, i32 11, i32 %1
  %9 = icmp ult i32 %8, 5
  br i1 %9, label %239, label %10

10:                                               ; preds = %6
  %11 = icmp ugt i32 %8, 12
  br i1 %11, label %239, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @llvm.ctlz.i32(i32 %3, i1 false) #8, !range !8
  %14 = xor i32 %13, 31
  %15 = add nuw nsw i32 %14, 1
  %16 = tail call i32 @llvm.ctlz.i32(i32 %4, i1 false) #8, !range !8
  %17 = xor i32 %16, 31
  %18 = add nuw nsw i32 %17, 2
  %19 = tail call i32 @llvm.umin.i32(i32 %15, i32 %18) #8
  %20 = icmp ult i32 %8, %19
  br i1 %20, label %239, label %21

21:                                               ; preds = %12
  %22 = icmp eq i32 %5, 0
  %23 = select i1 %22, i16 1, i16 -1
  %24 = sub nuw nsw i32 62, %8
  %25 = zext i32 %24 to i64
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 4611686018427387904) #9, !srcloc !9
  %27 = extractvalue { i64, i64 } %26, 1
  %28 = add nsw i64 %25, -20
  %29 = shl nuw nsw i32 1, %8
  %30 = lshr i32 %3, %8
  br label %31

31:                                               ; preds = %76, %21
  %32 = phi i16 [ 0, %21 ], [ %79, %76 ]
  %33 = phi i32 [ 0, %21 ], [ %78, %76 ]
  %34 = phi i32 [ 0, %21 ], [ %80, %76 ]
  %35 = phi i32 [ %29, %21 ], [ %77, %76 ]
  %36 = getelementptr i32, ptr %2, i32 %34
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, %3
  br i1 %38, label %239, label %39

39:                                               ; preds = %31
  %40 = icmp eq i32 %37, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = getelementptr i16, ptr %0, i32 %34
  store i16 0, ptr %42, align 2
  br label %76

43:                                               ; preds = %39
  %44 = icmp ugt i32 %37, %30
  br i1 %44, label %48, label %45

45:                                               ; preds = %43
  %46 = getelementptr i16, ptr %0, i32 %34
  store i16 %23, ptr %46, align 2
  %47 = add i32 %35, -1
  br label %76

48:                                               ; preds = %43
  %49 = zext i32 %37 to i64
  %50 = mul i64 %27, %49
  %51 = lshr i64 %50, %25
  %52 = trunc i64 %51 to i16
  %53 = trunc i64 %51 to i32
  %54 = and i32 %53, 65535
  %55 = icmp ult i32 %54, 8
  br i1 %55, label %56, label %68

56:                                               ; preds = %48
  %57 = getelementptr [8 x i32], ptr @FSE_normalizeCount.rtbTable, i32 0, i32 %54
  %58 = load i32, ptr %57, align 4
  %59 = zext i32 %58 to i64
  %60 = shl i64 %59, %28
  %61 = and i64 %51, 65535
  %62 = shl i64 %61, %25
  %63 = sub i64 %50, %62
  %64 = icmp ugt i64 %63, %60
  %65 = zext i1 %64 to i32
  %66 = add i32 %65, %53
  %67 = trunc i32 %66 to i16
  br label %68

68:                                               ; preds = %56, %48
  %69 = phi i16 [ %67, %56 ], [ %52, %48 ]
  %70 = sext i16 %69 to i32
  %71 = icmp sgt i16 %69, %32
  %72 = select i1 %71, i32 %34, i32 %33
  %73 = tail call i16 @llvm.smax.i16(i16 %69, i16 %32)
  %74 = getelementptr i16, ptr %0, i32 %34
  store i16 %69, ptr %74, align 2
  %75 = sub i32 %35, %70
  br label %76

76:                                               ; preds = %68, %45, %41
  %77 = phi i32 [ %35, %41 ], [ %47, %45 ], [ %75, %68 ]
  %78 = phi i32 [ %33, %41 ], [ %33, %45 ], [ %72, %68 ]
  %79 = phi i16 [ %32, %41 ], [ %32, %45 ], [ %73, %68 ]
  %80 = add i32 %34, 1
  %81 = icmp ugt i32 %80, %4
  br i1 %81, label %82, label %31

82:                                               ; preds = %76
  %83 = sub i32 0, %77
  %84 = getelementptr i16, ptr %0, i32 %78
  %85 = load i16, ptr %84, align 2
  %86 = ashr i16 %85, 1
  %87 = sext i16 %86 to i32
  %88 = icmp sgt i32 %87, %83
  br i1 %88, label %233, label %89

89:                                               ; preds = %82
  %90 = mul i32 %3, 3
  %91 = add i32 %8, 1
  %92 = lshr i32 %90, %91
  br label %93

93:                                               ; preds = %117, %89
  %94 = phi i32 [ %3, %89 ], [ %119, %117 ]
  %95 = phi i32 [ 0, %89 ], [ %120, %117 ]
  %96 = phi i32 [ 0, %89 ], [ %118, %117 ]
  %97 = getelementptr i32, ptr %2, i32 %95
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = getelementptr i16, ptr %0, i32 %95
  store i16 0, ptr %101, align 2
  br label %117

102:                                              ; preds = %93
  %103 = icmp ugt i32 %98, %30
  br i1 %103, label %109, label %104

104:                                              ; preds = %102
  %105 = getelementptr i16, ptr %0, i32 %95
  store i16 %23, ptr %105, align 2
  %106 = add i32 %96, 1
  %107 = load i32, ptr %97, align 4
  %108 = sub i32 %94, %107
  br label %117

109:                                              ; preds = %102
  %110 = icmp ugt i32 %98, %92
  %111 = getelementptr i16, ptr %0, i32 %95
  br i1 %110, label %116, label %112

112:                                              ; preds = %109
  store i16 1, ptr %111, align 2
  %113 = add i32 %96, 1
  %114 = load i32, ptr %97, align 4
  %115 = sub i32 %94, %114
  br label %117

116:                                              ; preds = %109
  store i16 -2, ptr %111, align 2
  br label %117

117:                                              ; preds = %116, %112, %104, %100
  %118 = phi i32 [ %96, %100 ], [ %106, %104 ], [ %113, %112 ], [ %96, %116 ]
  %119 = phi i32 [ %94, %100 ], [ %108, %104 ], [ %115, %112 ], [ %94, %116 ]
  %120 = add i32 %95, 1
  %121 = icmp ugt i32 %120, %4
  br i1 %121, label %122, label %93

122:                                              ; preds = %117
  %123 = sub i32 %29, %118
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %239, label %125

125:                                              ; preds = %122
  %126 = udiv i32 %119, %123
  %127 = icmp ugt i32 %126, %92
  br i1 %127, label %128, label %154

128:                                              ; preds = %125
  %129 = mul i32 %119, 3
  %130 = shl i32 %123, 1
  %131 = udiv i32 %129, %130
  br label %132

132:                                              ; preds = %147, %128
  %133 = phi i32 [ %119, %128 ], [ %149, %147 ]
  %134 = phi i32 [ 0, %128 ], [ %150, %147 ]
  %135 = phi i32 [ %118, %128 ], [ %148, %147 ]
  %136 = getelementptr i16, ptr %0, i32 %134
  %137 = load i16, ptr %136, align 2
  %138 = icmp eq i16 %137, -2
  br i1 %138, label %139, label %147

139:                                              ; preds = %132
  %140 = getelementptr i32, ptr %2, i32 %134
  %141 = load i32, ptr %140, align 4
  %142 = icmp ugt i32 %141, %131
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  store i16 1, ptr %136, align 2
  %144 = add i32 %135, 1
  %145 = load i32, ptr %140, align 4
  %146 = sub i32 %133, %145
  br label %147

147:                                              ; preds = %143, %139, %132
  %148 = phi i32 [ %144, %143 ], [ %135, %139 ], [ %135, %132 ]
  %149 = phi i32 [ %146, %143 ], [ %133, %139 ], [ %133, %132 ]
  %150 = add i32 %134, 1
  %151 = icmp ugt i32 %150, %4
  br i1 %151, label %152, label %132

152:                                              ; preds = %147
  %153 = sub i32 %29, %148
  br label %154

154:                                              ; preds = %152, %125
  %155 = phi i32 [ %148, %152 ], [ %118, %125 ]
  %156 = phi i32 [ %153, %152 ], [ %123, %125 ]
  %157 = phi i32 [ %149, %152 ], [ %119, %125 ]
  %158 = add nuw i32 %4, 1
  %159 = icmp eq i32 %155, %158
  br i1 %159, label %160, label %174

160:                                              ; preds = %160, %154
  %161 = phi i32 [ %169, %160 ], [ 0, %154 ]
  %162 = phi i32 [ %168, %160 ], [ 0, %154 ]
  %163 = phi i32 [ %167, %160 ], [ 0, %154 ]
  %164 = getelementptr i32, ptr %2, i32 %161
  %165 = load i32, ptr %164, align 4
  %166 = icmp ugt i32 %165, %162
  %167 = select i1 %166, i32 %161, i32 %163
  %168 = tail call i32 @llvm.umax.i32(i32 %165, i32 %162) #8
  %169 = add i32 %161, 1
  %170 = icmp ugt i32 %169, %4
  br i1 %170, label %171, label %160

171:                                              ; preds = %160
  %172 = getelementptr i16, ptr %0, i32 %167
  %173 = load i16, ptr %172, align 2
  br label %233

174:                                              ; preds = %154
  %175 = icmp eq i32 %157, 0
  br i1 %175, label %176, label %192

176:                                              ; preds = %174
  %177 = icmp eq i32 %156, 0
  br i1 %177, label %239, label %178

178:                                              ; preds = %187, %176
  %179 = phi i32 [ %190, %187 ], [ 0, %176 ]
  %180 = phi i32 [ %188, %187 ], [ %156, %176 ]
  %181 = getelementptr i16, ptr %0, i32 %179
  %182 = load i16, ptr %181, align 2
  %183 = icmp sgt i16 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %178
  %185 = add i32 %180, -1
  %186 = add nuw i16 %182, 1
  store i16 %186, ptr %181, align 2
  br label %187

187:                                              ; preds = %184, %178
  %188 = phi i32 [ %185, %184 ], [ %180, %178 ]
  %189 = add i32 %179, 1
  %190 = urem i32 %189, %158
  %191 = icmp eq i32 %188, 0
  br i1 %191, label %239, label %178

192:                                              ; preds = %174
  %193 = add nsw i64 %25, -1
  %194 = shl nsw i64 -1, %193
  %195 = xor i64 %194, -1
  %196 = zext i32 %156 to i64
  %197 = shl i64 %196, %25
  %198 = add i64 %197, %195
  %199 = icmp ult i64 %198, 4294967296
  br i1 %199, label %200, label %204, !prof !10

200:                                              ; preds = %192
  %201 = trunc i64 %198 to i32
  %202 = udiv i32 %201, %157
  %203 = zext i32 %202 to i64
  br label %207

204:                                              ; preds = %192
  %205 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %157, i64 %198) #9, !srcloc !9
  %206 = extractvalue { i64, i64 } %205, 1
  br label %207

207:                                              ; preds = %204, %200
  %208 = phi i64 [ %203, %200 ], [ %206, %204 ]
  br label %209

209:                                              ; preds = %229, %207
  %210 = phi i64 [ %195, %207 ], [ %230, %229 ]
  %211 = phi i32 [ 0, %207 ], [ %231, %229 ]
  %212 = getelementptr i16, ptr %0, i32 %211
  %213 = load i16, ptr %212, align 2
  %214 = icmp eq i16 %213, -2
  br i1 %214, label %215, label %229

215:                                              ; preds = %209
  %216 = getelementptr i32, ptr %2, i32 %211
  %217 = load i32, ptr %216, align 4
  %218 = zext i32 %217 to i64
  %219 = mul i64 %208, %218
  %220 = add i64 %219, %210
  %221 = lshr i64 %210, %25
  %222 = trunc i64 %221 to i32
  %223 = lshr i64 %220, %25
  %224 = trunc i64 %223 to i32
  %225 = icmp eq i32 %224, %222
  br i1 %225, label %239, label %226

226:                                              ; preds = %215
  %227 = sub i32 %224, %222
  %228 = trunc i32 %227 to i16
  store i16 %228, ptr %212, align 2
  br label %229

229:                                              ; preds = %226, %209
  %230 = phi i64 [ %220, %226 ], [ %210, %209 ]
  %231 = add i32 %211, 1
  %232 = icmp ugt i32 %231, %4
  br i1 %232, label %239, label %209

233:                                              ; preds = %171, %82
  %234 = phi i32 [ %156, %171 ], [ %77, %82 ]
  %235 = phi i16 [ %173, %171 ], [ %85, %82 ]
  %236 = phi ptr [ %172, %171 ], [ %84, %82 ]
  %237 = trunc i32 %234 to i16
  %238 = add i16 %235, %237
  store i16 %238, ptr %236, align 2
  br label %239

239:                                              ; preds = %233, %229, %215, %187, %176, %122, %31, %12, %10, %6
  %240 = phi i32 [ -1, %6 ], [ -44, %10 ], [ -1, %12 ], [ %8, %122 ], [ %8, %176 ], [ %8, %233 ], [ %8, %187 ], [ -1, %215 ], [ %8, %229 ], [ 0, %31 ]
  ret i32 %240
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local i32 @FSE_buildCTable_raw(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = shl nuw i32 1, %1
  %4 = add i32 %3, -1
  %5 = getelementptr i16, ptr %0, i32 2
  %6 = lshr i32 %3, 1
  %7 = getelementptr i32, ptr %5, i32 %6
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %2
  %10 = trunc i32 %1 to i16
  store i16 %10, ptr %0, align 2
  %11 = trunc i32 %4 to i16
  %12 = getelementptr i16, ptr %0, i32 1
  store i16 %11, ptr %12, align 2
  br label %13

13:                                               ; preds = %13, %9
  %14 = phi i32 [ 0, %9 ], [ %18, %13 ]
  %15 = add i32 %14, %3
  %16 = trunc i32 %15 to i16
  %17 = getelementptr i16, ptr %5, i32 %14
  store i16 %16, ptr %17, align 2
  %18 = add nuw i32 %14, 1
  %19 = icmp eq i32 %18, %3
  br i1 %19, label %20, label %13

20:                                               ; preds = %13
  %21 = shl i32 %1, 16
  %22 = sub i32 %21, %3
  br label %23

23:                                               ; preds = %23, %20
  %24 = phi i32 [ 0, %20 ], [ %28, %23 ]
  %25 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %7, i32 %24
  %26 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %25, i32 0, i32 1
  store i32 %22, ptr %26, align 4
  %27 = add i32 %24, -1
  store i32 %27, ptr %25, align 4
  %28 = add i32 %24, 1
  %29 = icmp ugt i32 %28, %4
  br i1 %29, label %30, label %23

30:                                               ; preds = %23, %2
  %31 = phi i32 [ -1, %2 ], [ 0, %23 ]
  ret i32 %31
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @FSE_buildCTable_rle(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #6 {
  %3 = getelementptr i16, ptr %0, i32 2
  %4 = getelementptr i32, ptr %0, i32 2
  store i16 0, ptr %0, align 2
  %5 = zext i8 %1 to i16
  %6 = getelementptr i16, ptr %0, i32 1
  store i16 %5, ptr %6, align 2
  store i16 0, ptr %3, align 2
  %7 = getelementptr i16, ptr %0, i32 3
  store i16 0, ptr %7, align 2
  %8 = zext i8 %1 to i32
  %9 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %4, i32 %8
  %10 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %9, i32 0, i32 1
  store i32 0, ptr %10, align 4
  store i32 0, ptr %9, align 4
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @FSE_compress_usingCTable(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = lshr i32 %3, 7
  %7 = add i32 %3, 8
  %8 = add i32 %7, %6
  %9 = icmp ule i32 %8, %1
  %10 = zext i1 %9 to i32
  %11 = tail call fastcc i32 @FSE_compress_usingCTable_generic(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %10)
  ret i32 %11
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @FSE_compress_usingCTable_generic(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #2 {
  %7 = getelementptr i8, ptr %2, i32 %3
  %8 = icmp ult i32 %3, 3
  br i1 %8, label %217, label %9

9:                                                ; preds = %6
  %10 = getelementptr i8, ptr %0, i32 %1
  %11 = getelementptr i8, ptr %10, i32 -4
  %12 = icmp ugt i32 %1, 4
  br i1 %12, label %13, label %217

13:                                               ; preds = %9
  %14 = and i32 %3, 1
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr i8, ptr %7, i32 -1
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = load i16, ptr %4, align 1
  %20 = zext i16 %19 to i32
  %21 = getelementptr i16, ptr %4, i32 2
  %22 = icmp eq i16 %19, 0
  %23 = add nsw i32 %20, -1
  %24 = shl nuw i32 1, %23
  %25 = select i1 %22, i32 1, i32 %24
  %26 = getelementptr i32, ptr %21, i32 %25
  %27 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %26, i32 %18
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds i8, ptr %27, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 32768
  %32 = lshr i32 %31, 16
  %33 = and i32 %31, -65536
  %34 = sub i32 %33, %30
  %35 = ashr i32 %34, %32
  %36 = add i32 %35, %28
  %37 = getelementptr i16, ptr %21, i32 %36
  %38 = load i16, ptr %37, align 2
  br i1 %15, label %85, label %39

39:                                               ; preds = %13
  %40 = zext i16 %38 to i32
  %41 = getelementptr i8, ptr %16, i32 -1
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %26, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds i8, ptr %44, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 32768
  %49 = lshr i32 %48, 16
  %50 = and i32 %48, -65536
  %51 = sub i32 %50, %47
  %52 = ashr i32 %51, %49
  %53 = add i32 %52, %45
  %54 = getelementptr i16, ptr %21, i32 %53
  %55 = load i16, ptr %54, align 2
  %56 = getelementptr i8, ptr %41, i32 -1
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %26, i32 %58
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds i8, ptr %59, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, %40
  %64 = lshr i32 %63, 16
  %65 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %64
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, %40
  %68 = lshr i32 %40, %64
  %69 = add i32 %68, %60
  %70 = getelementptr i16, ptr %21, i32 %69
  %71 = load i16, ptr %70, align 2
  %72 = icmp eq i32 %5, 0
  %73 = lshr i32 %63, 19
  store i32 %67, ptr %0, align 1
  %74 = getelementptr i8, ptr %0, i32 %73
  br i1 %72, label %79, label %75

75:                                               ; preds = %39
  %76 = and i32 %64, 7
  %77 = and i32 %64, 65528
  %78 = lshr i32 %67, %77
  br label %101

79:                                               ; preds = %39
  %80 = icmp ugt ptr %74, %11
  %81 = select i1 %80, ptr %11, ptr %74
  %82 = and i32 %64, 7
  %83 = and i32 %64, 65528
  %84 = lshr i32 %67, %83
  br label %101

85:                                               ; preds = %13
  %86 = getelementptr i8, ptr %16, i32 -1
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %26, i32 %88
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds i8, ptr %89, i32 4
  %92 = load i32, ptr %91, align 4
  %93 = add i32 %92, 32768
  %94 = lshr i32 %93, 16
  %95 = and i32 %93, -65536
  %96 = sub i32 %95, %92
  %97 = ashr i32 %96, %94
  %98 = add i32 %97, %90
  %99 = getelementptr i16, ptr %21, i32 %98
  %100 = load i16, ptr %99, align 2
  br label %101

101:                                              ; preds = %85, %79, %75
  %102 = phi i32 [ 0, %85 ], [ %84, %79 ], [ %78, %75 ]
  %103 = phi i32 [ 0, %85 ], [ %82, %79 ], [ %76, %75 ]
  %104 = phi ptr [ %0, %85 ], [ %81, %79 ], [ %74, %75 ]
  %105 = phi i16 [ %100, %85 ], [ %71, %79 ], [ %71, %75 ]
  %106 = phi i16 [ %38, %85 ], [ %55, %79 ], [ %55, %75 ]
  %107 = phi ptr [ %86, %85 ], [ %56, %79 ], [ %56, %75 ]
  %108 = zext i16 %106 to i32
  %109 = zext i16 %105 to i32
  %110 = icmp ugt ptr %107, %2
  br i1 %110, label %111, label %173

111:                                              ; preds = %101
  %112 = getelementptr i16, ptr %4, i32 2
  %113 = icmp eq i32 %5, 0
  br label %114

114:                                              ; preds = %114, %111
  %115 = phi i32 [ %109, %111 ], [ %168, %114 ]
  %116 = phi i32 [ %108, %111 ], [ %167, %114 ]
  %117 = phi ptr [ %107, %111 ], [ %140, %114 ]
  %118 = phi ptr [ %104, %111 ], [ %163, %114 ]
  %119 = phi i32 [ %103, %111 ], [ %164, %114 ]
  %120 = phi i32 [ %102, %111 ], [ %166, %114 ]
  %121 = getelementptr i8, ptr %117, i32 -1
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i32
  %124 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %26, i32 %123
  %125 = load i32, ptr %124, align 4
  %126 = getelementptr inbounds i8, ptr %124, i32 4
  %127 = load i32, ptr %126, align 4
  %128 = add i32 %127, %116
  %129 = lshr i32 %128, 16
  %130 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %129
  %131 = load i32, ptr %130, align 4
  %132 = and i32 %131, %116
  %133 = shl nuw nsw i32 %132, %119
  %134 = or i32 %133, %120
  %135 = add nuw nsw i32 %129, %119
  %136 = lshr i32 %116, %129
  %137 = add i32 %136, %125
  %138 = getelementptr i16, ptr %112, i32 %137
  %139 = load i16, ptr %138, align 2
  %140 = getelementptr i8, ptr %117, i32 -2
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %26, i32 %142
  %144 = load i32, ptr %143, align 4
  %145 = getelementptr inbounds i8, ptr %143, i32 4
  %146 = load i32, ptr %145, align 4
  %147 = add i32 %146, %115
  %148 = lshr i32 %147, 16
  %149 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %148
  %150 = load i32, ptr %149, align 4
  %151 = and i32 %150, %115
  %152 = shl i32 %151, %135
  %153 = or i32 %134, %152
  %154 = add nuw nsw i32 %148, %135
  %155 = lshr i32 %115, %148
  %156 = add i32 %155, %144
  %157 = getelementptr i16, ptr %112, i32 %156
  %158 = load i16, ptr %157, align 2
  %159 = lshr i32 %154, 3
  store i32 %153, ptr %118, align 1
  %160 = getelementptr i8, ptr %118, i32 %159
  %161 = icmp ugt ptr %160, %11
  %162 = select i1 %113, i1 %161, i1 false
  %163 = select i1 %162, ptr %11, ptr %160
  %164 = and i32 %154, 7
  %165 = and i32 %154, -8
  %166 = lshr i32 %153, %165
  %167 = zext i16 %139 to i32
  %168 = zext i16 %158 to i32
  %169 = icmp ugt ptr %140, %2
  br i1 %169, label %114, label %170

170:                                              ; preds = %114
  %171 = zext i16 %139 to i32
  %172 = zext i16 %158 to i32
  br label %173

173:                                              ; preds = %170, %101
  %174 = phi i32 [ %102, %101 ], [ %166, %170 ]
  %175 = phi i32 [ %103, %101 ], [ %164, %170 ]
  %176 = phi ptr [ %104, %101 ], [ %163, %170 ]
  %177 = phi i32 [ %108, %101 ], [ %171, %170 ]
  %178 = phi i32 [ %109, %101 ], [ %172, %170 ]
  %179 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %20
  %180 = load i32, ptr %179, align 4
  %181 = and i32 %180, %177
  %182 = shl nuw nsw i32 %181, %175
  %183 = or i32 %182, %174
  %184 = add nsw i32 %175, %20
  %185 = lshr i32 %184, 3
  store i32 %183, ptr %176, align 1
  %186 = getelementptr i8, ptr %176, i32 %185
  %187 = icmp ugt ptr %186, %11
  %188 = select i1 %187, ptr %11, ptr %186
  %189 = and i32 %184, 7
  %190 = and i32 %184, -8
  %191 = lshr i32 %183, %190
  %192 = and i32 %180, %178
  %193 = shl nuw nsw i32 %192, %189
  %194 = or i32 %191, %193
  %195 = add nuw nsw i32 %189, %20
  %196 = lshr i32 %195, 3
  store i32 %194, ptr %188, align 1
  %197 = getelementptr i8, ptr %188, i32 %196
  %198 = icmp ugt ptr %197, %11
  %199 = select i1 %198, ptr %11, ptr %197
  %200 = and i32 %195, 7
  %201 = and i32 %195, 131064
  %202 = lshr i32 %194, %201
  %203 = shl nuw nsw i32 1, %200
  %204 = or i32 %202, %203
  %205 = add nuw nsw i32 %200, 1
  %206 = lshr i32 %205, 3
  store i32 %204, ptr %199, align 1
  %207 = getelementptr i8, ptr %199, i32 %206
  %208 = icmp ugt ptr %11, %207
  br i1 %208, label %209, label %217

209:                                              ; preds = %173
  %210 = and i32 %205, 7
  %211 = ptrtoint ptr %207 to i32
  %212 = ptrtoint ptr %0 to i32
  %213 = icmp ne i32 %210, 0
  %214 = zext i1 %213 to i32
  %215 = sub i32 %214, %212
  %216 = add i32 %215, %211
  br label %217

217:                                              ; preds = %209, %173, %9, %6
  %218 = phi i32 [ 0, %9 ], [ 0, %6 ], [ %216, %209 ], [ 0, %173 ]
  ret i32 %218
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @FSE_compressBound(i32 noundef %0) local_unnamed_addr #1 {
  %2 = lshr i32 %0, 7
  %3 = add i32 %0, 520
  %4 = add i32 %3, %2
  ret i32 %4
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #7

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }

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
!9 = !{i64 2147904666, i64 2147904946, i64 2147905280, i64 2147905614}
!10 = !{!"branch_weights", i32 2000, i32 1}
