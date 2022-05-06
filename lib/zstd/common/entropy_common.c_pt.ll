; ModuleID = '/llk/IR/lib/zstd/common/entropy_common.c_pt.bc'
source_filename = "../lib/zstd/common/entropy_common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @FSE_versionNumber() local_unnamed_addr #0 {
  ret i32 900
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @FSE_isError(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i32 %0, -120
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @FSE_getErrorName(i32 noundef %0) local_unnamed_addr #1 {
  %2 = icmp ult i32 %0, -119
  %3 = sub i32 0, %0
  %4 = select i1 %2, i32 0, i32 %3
  %5 = tail call ptr @ERR_getErrorString(i32 noundef %4) #8
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @HUF_isError(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i32 %0, -120
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @HUF_getErrorName(i32 noundef %0) local_unnamed_addr #1 {
  %2 = icmp ult i32 %0, -119
  %3 = sub i32 0, %0
  %4 = select i1 %2, i32 0, i32 %3
  %5 = tail call ptr @ERR_getErrorString(i32 noundef %4) #8
  ret ptr %5
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @FSE_readNCount_bmi2(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, i32 noundef %4, i32 %5) local_unnamed_addr #2 {
  %7 = tail call fastcc i32 @FSE_readNCount_body_default(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  ret i32 %7
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @FSE_readNCount_body_default(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = alloca [8 x i8], align 8
  %7 = getelementptr i8, ptr %3, i32 %4
  %8 = load i32, ptr %1, align 4
  %9 = add i32 %8, 1
  %10 = icmp ult i32 %4, 8
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store i64 0, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %6, ptr align 1 %3, i32 %4, i1 false) #8
  %12 = call fastcc i32 @FSE_readNCount_body_default(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6, i32 noundef 8) #8
  %13 = icmp ult i32 %12, -119
  %14 = icmp ugt i32 %12, %4
  %15 = and i1 %13, %14
  %16 = select i1 %15, i32 -20, i32 %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  br label %188

17:                                               ; preds = %5
  %18 = shl i32 %9, 1
  tail call void @llvm.memset.p0.i32(ptr align 2 %0, i8 0, i32 %18, i1 false) #8
  %19 = load i32, ptr %3, align 1
  %20 = and i32 %19, 15
  %21 = icmp ugt i32 %20, 10
  br i1 %21, label %188, label %22

22:                                               ; preds = %17
  %23 = add nuw nsw i32 %20, 5
  %24 = lshr i32 %19, 4
  store i32 %23, ptr %2, align 4
  %25 = shl nuw nsw i32 32, %20
  %26 = or i32 %25, 1
  %27 = add nuw nsw i32 %20, 6
  %28 = getelementptr i8, ptr %7, i32 -7
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr i8, ptr %7, i32 -4
  %31 = ptrtoint ptr %30 to i32
  br label %32

32:                                               ; preds = %165, %22
  %33 = phi ptr [ %3, %22 ], [ %166, %165 ]
  %34 = phi i32 [ %27, %22 ], [ %147, %165 ]
  %35 = phi i32 [ %26, %22 ], [ %132, %165 ]
  %36 = phi i32 [ %25, %22 ], [ %148, %165 ]
  %37 = phi i32 [ %24, %22 ], [ %169, %165 ]
  %38 = phi i32 [ 4, %22 ], [ %167, %165 ]
  %39 = phi i32 [ 0, %22 ], [ %134, %165 ]
  %40 = phi i32 [ 0, %22 ], [ %137, %165 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %106, label %42

42:                                               ; preds = %32
  %43 = xor i32 %37, -1
  %44 = or i32 %43, -2147483648
  %45 = tail call i32 @llvm.cttz.i32(i32 %44, i1 true) #8, !range !8
  %46 = icmp ugt i32 %45, 23
  br i1 %46, label %47, label %70

47:                                               ; preds = %61, %42
  %48 = phi i32 [ %51, %61 ], [ %39, %42 ]
  %49 = phi i32 [ %63, %61 ], [ %38, %42 ]
  %50 = phi ptr [ %62, %61 ], [ %33, %42 ]
  %51 = add i32 %48, 36
  %52 = icmp ugt ptr %50, %28
  br i1 %52, label %55, label %53, !prof !9

53:                                               ; preds = %47
  %54 = getelementptr i8, ptr %50, i32 3
  br label %61

55:                                               ; preds = %47
  %56 = ptrtoint ptr %50 to i32
  %57 = sub i32 %56, %29
  %58 = shl i32 %57, 3
  %59 = add i32 %58, %49
  %60 = and i32 %59, 31
  br label %61

61:                                               ; preds = %55, %53
  %62 = phi ptr [ %54, %53 ], [ %30, %55 ]
  %63 = phi i32 [ %49, %53 ], [ %60, %55 ]
  %64 = load i32, ptr %62, align 1
  %65 = lshr i32 %64, %63
  %66 = xor i32 %65, -1
  %67 = or i32 %66, -2147483648
  %68 = tail call i32 @llvm.cttz.i32(i32 %67, i1 true) #8, !range !8
  %69 = icmp ugt i32 %68, 23
  br i1 %69, label %47, label %70

70:                                               ; preds = %61, %42
  %71 = phi ptr [ %33, %42 ], [ %62, %61 ]
  %72 = phi i32 [ %37, %42 ], [ %65, %61 ]
  %73 = phi i32 [ %38, %42 ], [ %63, %61 ]
  %74 = phi i32 [ %39, %42 ], [ %51, %61 ]
  %75 = phi i32 [ %45, %42 ], [ %68, %61 ]
  %76 = lshr i32 %75, 1
  %77 = mul nuw nsw i32 %76, 3
  %78 = add i32 %77, %74
  %79 = and i32 %75, 30
  %80 = lshr i32 %72, %79
  %81 = and i32 %80, 3
  %82 = add i32 %78, %81
  %83 = add i32 %73, 2
  %84 = add i32 %83, %79
  %85 = icmp ult i32 %82, %9
  br i1 %85, label %86, label %170

86:                                               ; preds = %70
  %87 = icmp ugt ptr %71, %28
  %88 = ashr i32 %84, 3
  br i1 %87, label %89, label %92, !prof !9

89:                                               ; preds = %86
  %90 = getelementptr i8, ptr %71, i32 %88
  %91 = icmp ugt ptr %90, %30
  br i1 %91, label %95, label %92

92:                                               ; preds = %89, %86
  %93 = getelementptr i8, ptr %71, i32 %88
  %94 = and i32 %84, 7
  br label %101

95:                                               ; preds = %89
  %96 = ptrtoint ptr %71 to i32
  %97 = sub i32 %96, %31
  %98 = shl i32 %97, 3
  %99 = add i32 %84, %98
  %100 = and i32 %99, 31
  br label %101

101:                                              ; preds = %95, %92
  %102 = phi ptr [ %93, %92 ], [ %30, %95 ]
  %103 = phi i32 [ %94, %92 ], [ %100, %95 ]
  %104 = load i32, ptr %102, align 1
  %105 = lshr i32 %104, %103
  br label %106

106:                                              ; preds = %101, %32
  %107 = phi ptr [ %33, %32 ], [ %102, %101 ]
  %108 = phi i32 [ %37, %32 ], [ %105, %101 ]
  %109 = phi i32 [ %38, %32 ], [ %103, %101 ]
  %110 = phi i32 [ %39, %32 ], [ %82, %101 ]
  %111 = shl i32 %36, 1
  %112 = add i32 %111, -1
  %113 = sub i32 %112, %35
  %114 = add i32 %36, -1
  %115 = and i32 %108, %114
  %116 = icmp ult i32 %115, %113
  br i1 %116, label %117, label %119

117:                                              ; preds = %106
  %118 = add i32 %34, -1
  br label %124

119:                                              ; preds = %106
  %120 = and i32 %108, %112
  %121 = icmp slt i32 %120, %36
  %122 = select i1 %121, i32 0, i32 %113
  %123 = sub i32 %120, %122
  br label %124

124:                                              ; preds = %119, %117
  %125 = phi i32 [ %118, %117 ], [ %34, %119 ]
  %126 = phi i32 [ %115, %117 ], [ %123, %119 ]
  %127 = add i32 %125, %109
  %128 = add i32 %126, -1
  %129 = icmp slt i32 %128, 0
  %130 = sub i32 1, %126
  %131 = select i1 %129, i32 %128, i32 %130
  %132 = add i32 %131, %35
  %133 = trunc i32 %128 to i16
  %134 = add i32 %110, 1
  %135 = getelementptr i16, ptr %0, i32 %110
  store i16 %133, ptr %135, align 2
  %136 = icmp eq i32 %128, 0
  %137 = zext i1 %136 to i32
  %138 = icmp slt i32 %132, %36
  br i1 %138, label %139, label %146

139:                                              ; preds = %124
  %140 = icmp slt i32 %132, 2
  br i1 %140, label %170, label %141

141:                                              ; preds = %139
  %142 = tail call i32 @llvm.ctlz.i32(i32 %132, i1 true) #8, !range !8
  %143 = xor i32 %142, 31
  %144 = sub nuw nsw i32 32, %142
  %145 = shl nuw i32 1, %143
  br label %146

146:                                              ; preds = %141, %124
  %147 = phi i32 [ %144, %141 ], [ %34, %124 ]
  %148 = phi i32 [ %145, %141 ], [ %36, %124 ]
  %149 = icmp ult i32 %134, %9
  br i1 %149, label %150, label %170

150:                                              ; preds = %146
  %151 = icmp ugt ptr %107, %28
  %152 = ashr i32 %127, 3
  br i1 %151, label %153, label %156, !prof !9

153:                                              ; preds = %150
  %154 = getelementptr i8, ptr %107, i32 %152
  %155 = icmp ugt ptr %154, %30
  br i1 %155, label %159, label %156

156:                                              ; preds = %153, %150
  %157 = getelementptr i8, ptr %107, i32 %152
  %158 = and i32 %127, 7
  br label %165

159:                                              ; preds = %153
  %160 = ptrtoint ptr %107 to i32
  %161 = sub i32 %160, %31
  %162 = shl i32 %161, 3
  %163 = add i32 %127, %162
  %164 = and i32 %163, 31
  br label %165

165:                                              ; preds = %159, %156
  %166 = phi ptr [ %157, %156 ], [ %30, %159 ]
  %167 = phi i32 [ %158, %156 ], [ %164, %159 ]
  %168 = load i32, ptr %166, align 1
  %169 = lshr i32 %168, %167
  br label %32

170:                                              ; preds = %146, %139, %70
  %171 = phi ptr [ %71, %70 ], [ %107, %139 ], [ %107, %146 ]
  %172 = phi i32 [ %35, %70 ], [ %132, %139 ], [ %132, %146 ]
  %173 = phi i32 [ %84, %70 ], [ %127, %139 ], [ %127, %146 ]
  %174 = phi i32 [ %82, %70 ], [ %134, %139 ], [ %134, %146 ]
  %175 = icmp eq i32 %172, 1
  br i1 %175, label %176, label %188

176:                                              ; preds = %170
  %177 = icmp ugt i32 %174, %9
  br i1 %177, label %188, label %178

178:                                              ; preds = %176
  %179 = icmp sgt i32 %173, 32
  br i1 %179, label %188, label %180

180:                                              ; preds = %178
  %181 = add i32 %174, -1
  store i32 %181, ptr %1, align 4
  %182 = add nsw i32 %173, 7
  %183 = ashr i32 %182, 3
  %184 = getelementptr i8, ptr %171, i32 %183
  %185 = ptrtoint ptr %184 to i32
  %186 = ptrtoint ptr %3 to i32
  %187 = sub i32 %185, %186
  br label %188

188:                                              ; preds = %180, %178, %176, %170, %17, %11
  %189 = phi i32 [ %16, %11 ], [ %187, %180 ], [ -44, %17 ], [ -20, %170 ], [ -48, %176 ], [ -20, %178 ]
  ret i32 %189
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @FSE_readNCount(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = tail call fastcc i32 @FSE_readNCount_body_default(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_readStats(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #1 {
  %8 = alloca [218 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 872, ptr nonnull %8) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(872) %8, i8 0, i32 872, i1 false), !annotation !10
  %9 = call i32 @HUF_readStats_wksp(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef nonnull %8, i32 noundef 872, i32 undef)
  call void @llvm.lifetime.end.p0(i64 872, ptr nonnull %8) #8
  ret i32 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @HUF_readStats_wksp(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 %9) local_unnamed_addr #1 {
  %11 = icmp eq i32 %6, 0
  br i1 %11, label %97, label %12

12:                                               ; preds = %10
  %13 = load i8, ptr %5, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp slt i8 %13, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = add nsw i32 %14, -127
  %18 = add nsw i32 %14, -126
  %19 = lshr i32 %18, 1
  %20 = icmp ult i32 %19, %6
  br i1 %20, label %21, label %97

21:                                               ; preds = %16
  %22 = icmp ult i32 %17, %1
  br i1 %22, label %23, label %97

23:                                               ; preds = %21
  %24 = getelementptr i8, ptr %5, i32 1
  %25 = icmp eq i32 %17, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(52) %2, i8 0, i32 52, i1 false) #8
  br label %97

27:                                               ; preds = %27, %23
  %28 = phi i32 [ %38, %27 ], [ 0, %23 ]
  %29 = lshr exact i32 %28, 1
  %30 = getelementptr i8, ptr %24, i32 %29
  %31 = load i8, ptr %30, align 1
  %32 = lshr i8 %31, 4
  %33 = getelementptr i8, ptr %0, i32 %28
  store i8 %32, ptr %33, align 1
  %34 = load i8, ptr %30, align 1
  %35 = and i8 %34, 15
  %36 = or i32 %28, 1
  %37 = getelementptr i8, ptr %0, i32 %36
  store i8 %35, ptr %37, align 1
  %38 = add i32 %28, 2
  %39 = icmp ult i32 %38, %17
  br i1 %39, label %27, label %47

40:                                               ; preds = %12
  %41 = icmp ult i32 %14, %6
  br i1 %41, label %42, label %97

42:                                               ; preds = %40
  %43 = add i32 %1, -1
  %44 = getelementptr i8, ptr %5, i32 1
  %45 = tail call i32 @FSE_decompress_wksp_bmi2(ptr noundef %0, i32 noundef %43, ptr noundef %44, i32 noundef %14, i32 noundef 6, ptr noundef %7, i32 noundef %8, i32 noundef 0) #8
  %46 = icmp ult i32 %45, -119
  br i1 %46, label %47, label %97

47:                                               ; preds = %42, %27
  %48 = phi i32 [ %14, %42 ], [ %19, %27 ]
  %49 = phi i32 [ %45, %42 ], [ %17, %27 ]
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(52) %2, i8 0, i32 52, i1 false) #8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %97, label %51

51:                                               ; preds = %57, %47
  %52 = phi i32 [ %66, %57 ], [ 0, %47 ]
  %53 = phi i32 [ %67, %57 ], [ 0, %47 ]
  %54 = getelementptr i8, ptr %0, i32 %53
  %55 = load i8, ptr %54, align 1
  %56 = icmp ugt i8 %55, 11
  br i1 %56, label %97, label %57

57:                                               ; preds = %51
  %58 = zext i8 %55 to i32
  %59 = getelementptr i32, ptr %2, i32 %58
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %59, align 4
  %62 = load i8, ptr %54, align 1
  %63 = zext i8 %62 to i32
  %64 = shl nuw i32 1, %63
  %65 = ashr i32 %64, 1
  %66 = add i32 %65, %52
  %67 = add nuw i32 %53, 1
  %68 = icmp eq i32 %67, %49
  br i1 %68, label %69, label %51

69:                                               ; preds = %57
  %70 = add i32 %66, -4096
  %71 = icmp ult i32 %70, -4095
  br i1 %71, label %97, label %72

72:                                               ; preds = %69
  %73 = tail call i32 @llvm.ctlz.i32(i32 %66, i1 true) #8, !range !8
  %74 = sub nuw nsw i32 32, %73
  store i32 %74, ptr %4, align 4
  %75 = shl nuw nsw i32 1, %74
  %76 = sub i32 %75, %66
  %77 = tail call i32 @llvm.ctlz.i32(i32 %76, i1 false) #8, !range !8
  %78 = xor i32 %77, 31
  %79 = shl nuw i32 1, %78
  %80 = icmp eq i32 %79, %76
  br i1 %80, label %81, label %97

81:                                               ; preds = %72
  %82 = add nuw nsw i32 %78, 1
  %83 = trunc i32 %82 to i8
  %84 = getelementptr i8, ptr %0, i32 %49
  store i8 %83, ptr %84, align 1
  %85 = getelementptr i32, ptr %2, i32 %82
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, 1
  store i32 %87, ptr %85, align 4
  %88 = getelementptr i32, ptr %2, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = icmp ugt i32 %89, 1
  %91 = and i32 %89, 1
  %92 = icmp eq i32 %91, 0
  %93 = and i1 %90, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %81
  %95 = add i32 %49, 1
  store i32 %95, ptr %3, align 4
  %96 = add nuw i32 %48, 1
  br label %97

97:                                               ; preds = %94, %81, %72, %69, %51, %47, %42, %40, %26, %21, %16, %10
  %98 = phi i32 [ %96, %94 ], [ -72, %10 ], [ -72, %16 ], [ -20, %21 ], [ -72, %40 ], [ %45, %42 ], [ -20, %69 ], [ -20, %81 ], [ -20, %72 ], [ -20, %47 ], [ -20, %26 ], [ -20, %51 ]
  ret i32 %98
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ERR_getErrorString(i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_decompress_wksp_bmi2(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i32 0, i32 33}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"auto-init"}
