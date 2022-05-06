; ModuleID = '/llk/IR/scripts/dtc/libfdt/fdt.c_pt.bc'
source_filename = "../scripts/dtc/libfdt/fdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @fdt_ro_probe_(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 %4, 24
  %6 = getelementptr inbounds i8, ptr %2, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 16
  %10 = or i32 %9, %5
  %11 = getelementptr inbounds i8, ptr %2, i64 2
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = or i32 %10, %14
  %16 = getelementptr inbounds i8, ptr %2, i64 3
  %17 = load i8, ptr %16, align 1, !tbaa !5
  %18 = zext i8 %17 to i32
  %19 = or i32 %15, %18
  %20 = ptrtoint ptr %0 to i64
  %21 = and i64 %20, 7
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %104

23:                                               ; preds = %1
  %24 = load i8, ptr %0, align 1, !tbaa !5
  %25 = zext i8 %24 to i32
  %26 = shl nuw i32 %25, 24
  %27 = getelementptr inbounds i8, ptr %0, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !5
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 16
  %31 = or i32 %30, %26
  %32 = getelementptr inbounds i8, ptr %0, i64 2
  %33 = load i8, ptr %32, align 1, !tbaa !5
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  %36 = or i32 %31, %35
  %37 = getelementptr inbounds i8, ptr %0, i64 3
  %38 = load i8, ptr %37, align 1, !tbaa !5
  %39 = zext i8 %38 to i32
  %40 = or i32 %36, %39
  switch i32 %40, label %104 [
    i32 -804389139, label %41
    i32 804389138, label %81
  ]

41:                                               ; preds = %23
  %42 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
  %43 = load i8, ptr %42, align 1, !tbaa !5
  %44 = zext i8 %43 to i32
  %45 = shl nuw i32 %44, 24
  %46 = getelementptr inbounds i8, ptr %42, i64 1
  %47 = load i8, ptr %46, align 1, !tbaa !5
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 16
  %50 = or i32 %49, %45
  %51 = getelementptr inbounds i8, ptr %42, i64 2
  %52 = load i8, ptr %51, align 1, !tbaa !5
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %53, 8
  %55 = or i32 %50, %54
  %56 = getelementptr inbounds i8, ptr %42, i64 3
  %57 = load i8, ptr %56, align 1, !tbaa !5
  %58 = zext i8 %57 to i32
  %59 = or i32 %55, %58
  %60 = icmp ult i32 %59, 2
  br i1 %60, label %104, label %61

61:                                               ; preds = %41
  %62 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 6
  %63 = load i8, ptr %62, align 1, !tbaa !5
  %64 = zext i8 %63 to i32
  %65 = shl nuw i32 %64, 24
  %66 = getelementptr inbounds i8, ptr %62, i64 1
  %67 = load i8, ptr %66, align 1, !tbaa !5
  %68 = zext i8 %67 to i32
  %69 = shl nuw nsw i32 %68, 16
  %70 = or i32 %69, %65
  %71 = getelementptr inbounds i8, ptr %62, i64 2
  %72 = load i8, ptr %71, align 1, !tbaa !5
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 8
  %75 = or i32 %70, %74
  %76 = getelementptr inbounds i8, ptr %62, i64 3
  %77 = load i8, ptr %76, align 1, !tbaa !5
  %78 = zext i8 %77 to i32
  %79 = or i32 %75, %78
  %80 = icmp ugt i32 %79, 17
  br i1 %80, label %104, label %101

81:                                               ; preds = %23
  %82 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 9
  %83 = load i8, ptr %82, align 1, !tbaa !5
  %84 = zext i8 %83 to i32
  %85 = shl nuw i32 %84, 24
  %86 = getelementptr inbounds i8, ptr %82, i64 1
  %87 = load i8, ptr %86, align 1, !tbaa !5
  %88 = zext i8 %87 to i32
  %89 = shl nuw nsw i32 %88, 16
  %90 = or i32 %89, %85
  %91 = getelementptr inbounds i8, ptr %82, i64 2
  %92 = load i8, ptr %91, align 1, !tbaa !5
  %93 = zext i8 %92 to i32
  %94 = shl nuw nsw i32 %93, 8
  %95 = or i32 %90, %94
  %96 = getelementptr inbounds i8, ptr %82, i64 3
  %97 = load i8, ptr %96, align 1, !tbaa !5
  %98 = zext i8 %97 to i32
  %99 = or i32 %95, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %81, %61
  %102 = icmp ult i32 %19, 2147483647
  %103 = select i1 %102, i32 %19, i32 -8
  br label %104

104:                                              ; preds = %101, %81, %61, %41, %23, %1
  %105 = phi i32 [ -19, %1 ], [ -10, %41 ], [ -10, %61 ], [ -7, %81 ], [ %103, %101 ], [ -9, %23 ]
  ret i32 %105
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i64 @fdt_header_size_(i32 noundef %0) local_unnamed_addr #2 {
  %2 = icmp ult i32 %0, 2
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 2
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = icmp ult i32 %0, 4
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = icmp ult i32 %0, 17
  %9 = select i1 %8, i64 36, i64 40
  br label %10

10:                                               ; preds = %7, %5, %3, %1
  %11 = phi i64 [ 28, %1 ], [ 32, %3 ], [ 36, %5 ], [ %9, %7 ]
  ret i64 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i64 @fdt_header_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 %4, 24
  %6 = getelementptr inbounds i8, ptr %2, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 16
  %10 = or i32 %9, %5
  %11 = getelementptr inbounds i8, ptr %2, i64 2
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = or i32 %10, %14
  %16 = getelementptr inbounds i8, ptr %2, i64 3
  %17 = load i8, ptr %16, align 1, !tbaa !5
  %18 = zext i8 %17 to i32
  %19 = or i32 %15, %18
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = icmp eq i32 %19, 2
  br i1 %22, label %28, label %23

23:                                               ; preds = %21
  %24 = icmp ult i32 %19, 4
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  %26 = icmp ult i32 %19, 17
  %27 = select i1 %26, i64 36, i64 40
  br label %28

28:                                               ; preds = %25, %23, %21, %1
  %29 = phi i64 [ 28, %1 ], [ 32, %21 ], [ 36, %23 ], [ %27, %25 ]
  ret i64 %29
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @fdt_check_header(ptr noundef %0) local_unnamed_addr #0 {
  %2 = ptrtoint ptr %0 to i64
  %3 = and i64 %2, 7
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %218

5:                                                ; preds = %1
  %6 = load i8, ptr %0, align 1, !tbaa !5
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 %7, 24
  %9 = getelementptr inbounds i8, ptr %0, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !5
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 16
  %13 = or i32 %12, %8
  %14 = getelementptr inbounds i8, ptr %0, i64 2
  %15 = load i8, ptr %14, align 1, !tbaa !5
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = or i32 %13, %17
  %19 = getelementptr inbounds i8, ptr %0, i64 3
  %20 = load i8, ptr %19, align 1, !tbaa !5
  %21 = zext i8 %20 to i32
  %22 = or i32 %18, %21
  %23 = icmp eq i32 %22, -804389139
  br i1 %23, label %24, label %218

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
  %26 = load i8, ptr %25, align 1, !tbaa !5
  %27 = zext i8 %26 to i32
  %28 = shl nuw i32 %27, 24
  %29 = getelementptr inbounds i8, ptr %25, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !5
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 16
  %33 = or i32 %32, %28
  %34 = getelementptr inbounds i8, ptr %25, i64 2
  %35 = load i8, ptr %34, align 1, !tbaa !5
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 8
  %38 = or i32 %33, %37
  %39 = getelementptr inbounds i8, ptr %25, i64 3
  %40 = load i8, ptr %39, align 1, !tbaa !5
  %41 = zext i8 %40 to i32
  %42 = or i32 %38, %41
  %43 = icmp ult i32 %42, 2
  br i1 %43, label %218, label %44

44:                                               ; preds = %24
  %45 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 6
  %46 = load i8, ptr %45, align 1, !tbaa !5
  %47 = zext i8 %46 to i32
  %48 = shl nuw i32 %47, 24
  %49 = getelementptr inbounds i8, ptr %45, i64 1
  %50 = load i8, ptr %49, align 1, !tbaa !5
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 16
  %53 = or i32 %52, %48
  %54 = getelementptr inbounds i8, ptr %45, i64 2
  %55 = load i8, ptr %54, align 1, !tbaa !5
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 8
  %58 = or i32 %53, %57
  %59 = getelementptr inbounds i8, ptr %45, i64 3
  %60 = load i8, ptr %59, align 1, !tbaa !5
  %61 = zext i8 %60 to i32
  %62 = or i32 %58, %61
  %63 = icmp ugt i32 %62, 17
  %64 = icmp ult i32 %42, %62
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %218, label %66

66:                                               ; preds = %44
  %67 = icmp eq i32 %42, 2
  br i1 %67, label %73, label %68

68:                                               ; preds = %66
  %69 = icmp ult i32 %42, 4
  br i1 %69, label %73, label %70

70:                                               ; preds = %68
  %71 = icmp ult i32 %42, 17
  %72 = select i1 %71, i64 36, i64 40
  br label %73

73:                                               ; preds = %70, %68, %66
  %74 = phi i64 [ 32, %66 ], [ 36, %68 ], [ %72, %70 ]
  %75 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 1
  %76 = load i8, ptr %75, align 1, !tbaa !5
  %77 = zext i8 %76 to i32
  %78 = shl nuw i32 %77, 24
  %79 = getelementptr inbounds i8, ptr %75, i64 1
  %80 = load i8, ptr %79, align 1, !tbaa !5
  %81 = zext i8 %80 to i32
  %82 = shl nuw nsw i32 %81, 16
  %83 = or i32 %82, %78
  %84 = getelementptr inbounds i8, ptr %75, i64 2
  %85 = load i8, ptr %84, align 1, !tbaa !5
  %86 = zext i8 %85 to i32
  %87 = shl nuw nsw i32 %86, 8
  %88 = or i32 %83, %87
  %89 = getelementptr inbounds i8, ptr %75, i64 3
  %90 = load i8, ptr %89, align 1, !tbaa !5
  %91 = zext i8 %90 to i32
  %92 = or i32 %88, %91
  %93 = zext i32 %92 to i64
  %94 = icmp ugt i64 %74, %93
  %95 = icmp slt i32 %92, 0
  %96 = or i1 %95, %94
  br i1 %96, label %218, label %97

97:                                               ; preds = %73
  %98 = trunc i64 %74 to i32
  %99 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 4
  %100 = load i8, ptr %99, align 1, !tbaa !5
  %101 = zext i8 %100 to i32
  %102 = shl nuw i32 %101, 24
  %103 = getelementptr inbounds i8, ptr %99, i64 1
  %104 = load i8, ptr %103, align 1, !tbaa !5
  %105 = zext i8 %104 to i32
  %106 = shl nuw nsw i32 %105, 16
  %107 = or i32 %106, %102
  %108 = getelementptr inbounds i8, ptr %99, i64 2
  %109 = load i8, ptr %108, align 1, !tbaa !5
  %110 = zext i8 %109 to i32
  %111 = shl nuw nsw i32 %110, 8
  %112 = or i32 %107, %111
  %113 = getelementptr inbounds i8, ptr %99, i64 3
  %114 = load i8, ptr %113, align 1, !tbaa !5
  %115 = zext i8 %114 to i32
  %116 = or i32 %112, %115
  %117 = icmp ult i32 %116, %98
  %118 = icmp ugt i32 %116, %92
  %119 = or i1 %117, %118
  br i1 %119, label %218, label %120

120:                                              ; preds = %97
  %121 = icmp ult i32 %42, 17
  %122 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 2
  %123 = load i8, ptr %122, align 1, !tbaa !5
  %124 = zext i8 %123 to i32
  %125 = shl nuw i32 %124, 24
  %126 = getelementptr inbounds i8, ptr %122, i64 1
  %127 = load i8, ptr %126, align 1, !tbaa !5
  %128 = zext i8 %127 to i32
  %129 = shl nuw nsw i32 %128, 16
  %130 = or i32 %129, %125
  %131 = getelementptr inbounds i8, ptr %122, i64 2
  %132 = load i8, ptr %131, align 1, !tbaa !5
  %133 = zext i8 %132 to i32
  %134 = shl nuw nsw i32 %133, 8
  %135 = or i32 %130, %134
  %136 = getelementptr inbounds i8, ptr %122, i64 3
  %137 = load i8, ptr %136, align 1, !tbaa !5
  %138 = zext i8 %137 to i32
  %139 = or i32 %135, %138
  %140 = icmp ult i32 %139, %98
  %141 = icmp ugt i32 %139, %92
  %142 = or i1 %140, %141
  br i1 %121, label %143, label %144

143:                                              ; preds = %120
  br i1 %142, label %218, label %170

144:                                              ; preds = %120
  br i1 %142, label %218, label %145

145:                                              ; preds = %144
  %146 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 9
  %147 = getelementptr inbounds i8, ptr %146, i64 1
  %148 = load i8, ptr %147, align 1, !tbaa !5
  %149 = zext i8 %148 to i32
  %150 = shl nuw nsw i32 %149, 16
  %151 = load i8, ptr %146, align 1, !tbaa !5
  %152 = zext i8 %151 to i32
  %153 = shl nuw i32 %152, 24
  %154 = or i32 %153, %150
  %155 = getelementptr inbounds i8, ptr %146, i64 2
  %156 = load i8, ptr %155, align 1, !tbaa !5
  %157 = zext i8 %156 to i32
  %158 = shl nuw nsw i32 %157, 8
  %159 = or i32 %154, %158
  %160 = getelementptr inbounds i8, ptr %146, i64 3
  %161 = load i8, ptr %160, align 1, !tbaa !5
  %162 = zext i8 %161 to i32
  %163 = or i32 %159, %162
  %164 = add i32 %163, %139
  %165 = icmp ult i32 %164, %139
  br i1 %165, label %218, label %166

166:                                              ; preds = %145
  %167 = icmp ult i32 %164, %98
  %168 = icmp ugt i32 %164, %92
  %169 = or i1 %167, %168
  br i1 %169, label %218, label %170

170:                                              ; preds = %166, %143
  %171 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 3
  %172 = load i8, ptr %171, align 1, !tbaa !5
  %173 = zext i8 %172 to i32
  %174 = shl nuw i32 %173, 24
  %175 = getelementptr inbounds i8, ptr %171, i64 1
  %176 = load i8, ptr %175, align 1, !tbaa !5
  %177 = zext i8 %176 to i32
  %178 = shl nuw nsw i32 %177, 16
  %179 = or i32 %178, %174
  %180 = getelementptr inbounds i8, ptr %171, i64 2
  %181 = load i8, ptr %180, align 1, !tbaa !5
  %182 = zext i8 %181 to i32
  %183 = shl nuw nsw i32 %182, 8
  %184 = or i32 %179, %183
  %185 = getelementptr inbounds i8, ptr %171, i64 3
  %186 = load i8, ptr %185, align 1, !tbaa !5
  %187 = zext i8 %186 to i32
  %188 = or i32 %184, %187
  %189 = icmp ult i32 %188, %98
  %190 = icmp ugt i32 %188, %92
  %191 = or i1 %189, %190
  br i1 %191, label %217, label %192

192:                                              ; preds = %170
  %193 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 8
  %194 = getelementptr inbounds i8, ptr %193, i64 1
  %195 = load i8, ptr %194, align 1, !tbaa !5
  %196 = zext i8 %195 to i32
  %197 = shl nuw nsw i32 %196, 16
  %198 = load i8, ptr %193, align 1, !tbaa !5
  %199 = zext i8 %198 to i32
  %200 = shl nuw i32 %199, 24
  %201 = or i32 %200, %197
  %202 = getelementptr inbounds i8, ptr %193, i64 2
  %203 = load i8, ptr %202, align 1, !tbaa !5
  %204 = zext i8 %203 to i32
  %205 = shl nuw nsw i32 %204, 8
  %206 = or i32 %201, %205
  %207 = getelementptr inbounds i8, ptr %193, i64 3
  %208 = load i8, ptr %207, align 1, !tbaa !5
  %209 = zext i8 %208 to i32
  %210 = or i32 %206, %209
  %211 = add i32 %210, %188
  %212 = icmp ult i32 %211, %188
  br i1 %212, label %217, label %213

213:                                              ; preds = %192
  %214 = icmp ult i32 %211, %98
  %215 = icmp ugt i32 %211, %92
  %216 = or i1 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %213, %192, %170
  br label %218

218:                                              ; preds = %217, %213, %166, %145, %144, %143, %97, %73, %44, %24, %5, %1
  %219 = phi i32 [ -19, %1 ], [ -9, %5 ], [ -10, %44 ], [ -10, %24 ], [ -8, %73 ], [ -8, %97 ], [ -8, %143 ], [ -8, %166 ], [ -8, %217 ], [ 0, %213 ], [ -8, %144 ], [ -8, %145 ]
  ret i32 %219
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local ptr @fdt_offset_ptr(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 2
  %5 = load i8, ptr %4, align 1, !tbaa !5
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 %6, 24
  %8 = getelementptr inbounds i8, ptr %4, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = or i32 %11, %7
  %13 = getelementptr inbounds i8, ptr %4, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = or i32 %12, %16
  %18 = getelementptr inbounds i8, ptr %4, i64 3
  %19 = load i8, ptr %18, align 1, !tbaa !5
  %20 = zext i8 %19 to i32
  %21 = or i32 %17, %20
  %22 = add i32 %21, %1
  %23 = icmp slt i32 %1, 0
  %24 = icmp ult i32 %22, %1
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %106, label %26

26:                                               ; preds = %3
  %27 = add i32 %22, %2
  %28 = icmp ult i32 %27, %22
  br i1 %28, label %106, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 1
  %31 = load i8, ptr %30, align 1, !tbaa !5
  %32 = zext i8 %31 to i32
  %33 = shl nuw i32 %32, 24
  %34 = getelementptr inbounds i8, ptr %30, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !5
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 16
  %38 = or i32 %37, %33
  %39 = getelementptr inbounds i8, ptr %30, i64 2
  %40 = load i8, ptr %39, align 1, !tbaa !5
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = or i32 %38, %42
  %44 = getelementptr inbounds i8, ptr %30, i64 3
  %45 = load i8, ptr %44, align 1, !tbaa !5
  %46 = zext i8 %45 to i32
  %47 = or i32 %43, %46
  %48 = icmp ugt i32 %27, %47
  br i1 %48, label %106, label %49

49:                                               ; preds = %29
  %50 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
  %51 = load i8, ptr %50, align 1, !tbaa !5
  %52 = zext i8 %51 to i32
  %53 = shl nuw i32 %52, 24
  %54 = getelementptr inbounds i8, ptr %50, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !5
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 16
  %58 = or i32 %57, %53
  %59 = getelementptr inbounds i8, ptr %50, i64 2
  %60 = load i8, ptr %59, align 1, !tbaa !5
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 8
  %63 = or i32 %58, %62
  %64 = getelementptr inbounds i8, ptr %50, i64 3
  %65 = load i8, ptr %64, align 1, !tbaa !5
  %66 = zext i8 %65 to i32
  %67 = or i32 %63, %66
  %68 = icmp ugt i32 %67, 16
  br i1 %68, label %69, label %92

69:                                               ; preds = %49
  %70 = add i32 %2, %1
  %71 = icmp ult i32 %70, %1
  br i1 %71, label %106, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 9
  %74 = load i8, ptr %73, align 1, !tbaa !5
  %75 = zext i8 %74 to i32
  %76 = shl nuw i32 %75, 24
  %77 = getelementptr inbounds i8, ptr %73, i64 1
  %78 = load i8, ptr %77, align 1, !tbaa !5
  %79 = zext i8 %78 to i32
  %80 = shl nuw nsw i32 %79, 16
  %81 = or i32 %80, %76
  %82 = getelementptr inbounds i8, ptr %73, i64 2
  %83 = load i8, ptr %82, align 1, !tbaa !5
  %84 = zext i8 %83 to i32
  %85 = shl nuw nsw i32 %84, 8
  %86 = or i32 %81, %85
  %87 = getelementptr inbounds i8, ptr %73, i64 3
  %88 = load i8, ptr %87, align 1, !tbaa !5
  %89 = zext i8 %88 to i32
  %90 = or i32 %86, %89
  %91 = icmp ugt i32 %70, %90
  br i1 %91, label %106, label %92

92:                                               ; preds = %72, %49
  %93 = zext i8 %5 to i64
  %94 = shl nuw nsw i64 %93, 24
  %95 = zext i8 %9 to i64
  %96 = shl nuw nsw i64 %95, 16
  %97 = or i64 %96, %94
  %98 = zext i8 %14 to i64
  %99 = shl nuw nsw i64 %98, 8
  %100 = or i64 %97, %99
  %101 = zext i8 %19 to i64
  %102 = or i64 %100, %101
  %103 = getelementptr inbounds i8, ptr %0, i64 %102
  %104 = zext i32 %1 to i64
  %105 = getelementptr inbounds i8, ptr %103, i64 %104
  br label %106

106:                                              ; preds = %92, %72, %69, %29, %26, %3
  %107 = phi ptr [ %105, %92 ], [ null, %3 ], [ null, %29 ], [ null, %26 ], [ null, %72 ], [ null, %69 ]
  ret ptr %107
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @fdt_next_tag(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 {
  store i32 -8, ptr %2, align 4, !tbaa !8
  %4 = tail call ptr @fdt_offset_ptr(ptr noundef %0, i32 noundef %1, i32 noundef 4)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %60, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4, !tbaa !8
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  %9 = add i32 %1, 4
  store i32 -11, ptr %2, align 4, !tbaa !8
  switch i32 %8, label %60 [
    i32 1, label %10
    i32 3, label %18
    i32 9, label %52
    i32 2, label %52
    i32 4, label %52
  ]

10:                                               ; preds = %14, %6
  %11 = phi i32 [ %15, %14 ], [ %9, %6 ]
  %12 = tail call ptr @fdt_offset_ptr(ptr noundef %0, i32 noundef %11, i32 noundef 1)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %60, label %14

14:                                               ; preds = %10
  %15 = add nsw i32 %11, 1
  %16 = load i8, ptr %12, align 1, !tbaa !5
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %52, label %10

18:                                               ; preds = %6
  %19 = tail call ptr @fdt_offset_ptr(ptr noundef %0, i32 noundef %9, i32 noundef 4)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %60, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr %19, align 4, !tbaa !8
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  %24 = add i32 %1, 12
  %25 = add i32 %24, %23
  %26 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
  %27 = load i8, ptr %26, align 1, !tbaa !5
  %28 = zext i8 %27 to i32
  %29 = shl nuw i32 %28, 24
  %30 = getelementptr inbounds i8, ptr %26, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !5
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 16
  %34 = or i32 %33, %29
  %35 = getelementptr inbounds i8, ptr %26, i64 2
  %36 = load i8, ptr %35, align 1, !tbaa !5
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 8
  %39 = or i32 %34, %38
  %40 = getelementptr inbounds i8, ptr %26, i64 3
  %41 = load i8, ptr %40, align 1, !tbaa !5
  %42 = zext i8 %41 to i32
  %43 = or i32 %39, %42
  %44 = icmp ult i32 %43, 16
  %45 = icmp ugt i32 %23, 7
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %52

47:                                               ; preds = %21
  %48 = and i32 %24, 7
  %49 = icmp eq i32 %48, 0
  %50 = add nsw i32 %25, 4
  %51 = select i1 %49, i32 %25, i32 %50
  br label %52

52:                                               ; preds = %47, %21, %14, %6, %6, %6
  %53 = phi i32 [ %9, %6 ], [ %9, %6 ], [ %9, %6 ], [ %25, %21 ], [ %51, %47 ], [ %15, %14 ]
  %54 = sub nsw i32 %53, %1
  %55 = tail call ptr @fdt_offset_ptr(ptr noundef %0, i32 noundef %1, i32 noundef %54)
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = add i32 %53, 3
  %59 = and i32 %58, -4
  store i32 %59, ptr %2, align 4, !tbaa !8
  br label %60

60:                                               ; preds = %57, %52, %18, %10, %6, %3
  %61 = phi i32 [ %8, %57 ], [ 9, %3 ], [ 9, %18 ], [ 9, %6 ], [ 9, %52 ], [ 9, %10 ]
  ret i32 %61
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @fdt_check_node_offset_(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4, !tbaa !8
  %4 = and i32 %1, -2147483645
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3)
  %8 = icmp eq i32 %7, 1
  %9 = load i32, ptr %3, align 4
  %10 = select i1 %8, i32 %9, i32 -4
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ -4, %2 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @fdt_check_prop_offset_(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4, !tbaa !8
  %4 = and i32 %1, -2147483645
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3)
  %8 = icmp eq i32 %7, 3
  %9 = load i32, ptr %3, align 4
  %10 = select i1 %8, i32 %9, i32 -4
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ -4, %2 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @fdt_next_node(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !tbaa !8
  %6 = icmp sgt i32 %1, -1
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %1, ptr %4, align 4, !tbaa !8
  %8 = and i32 %1, -2147483645
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #10
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %44

14:                                               ; preds = %10
  %15 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  store i32 %15, ptr %5, align 4, !tbaa !8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %14, %3
  %18 = phi i32 [ %15, %14 ], [ 0, %3 ]
  %19 = icmp eq ptr %2, null
  br label %20

20:                                               ; preds = %23, %17
  %21 = phi i32 [ %24, %23 ], [ %18, %17 ]
  %22 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %5)
  switch i32 %22, label %23 [
    i32 9, label %36
    i32 2, label %29
    i32 1, label %25
  ]

23:                                               ; preds = %30, %29, %20
  %24 = load i32, ptr %5, align 4, !tbaa !8
  br label %20

25:                                               ; preds = %20
  br i1 %19, label %44, label %26

26:                                               ; preds = %25
  %27 = load i32, ptr %2, align 4, !tbaa !8
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %2, align 4, !tbaa !8
  br label %44

29:                                               ; preds = %20
  br i1 %19, label %23, label %30

30:                                               ; preds = %29
  %31 = load i32, ptr %2, align 4, !tbaa !8
  %32 = add nsw i32 %31, -1
  store i32 %32, ptr %2, align 4, !tbaa !8
  %33 = icmp slt i32 %31, 1
  br i1 %33, label %34, label %23

34:                                               ; preds = %30
  %35 = load i32, ptr %5, align 4, !tbaa !8
  br label %44

36:                                               ; preds = %20
  %37 = load i32, ptr %5, align 4, !tbaa !8
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = icmp ne i32 %37, -8
  %41 = icmp ne ptr %2, null
  %42 = or i1 %41, %40
  %43 = select i1 %42, i32 %37, i32 -1
  br label %44

44:                                               ; preds = %39, %36, %34, %26, %25, %14, %13
  %45 = phi i32 [ %35, %34 ], [ %15, %14 ], [ -1, %36 ], [ %43, %39 ], [ -4, %13 ], [ %21, %26 ], [ %21, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %45
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @fdt_first_subnode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !tbaa !8
  %5 = icmp sgt i32 %1, -1
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 %1, ptr %3, align 4, !tbaa !8
  %7 = and i32 %1, -2147483645
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3) #10
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %28

13:                                               ; preds = %9
  %14 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  store i32 %14, ptr %4, align 4, !tbaa !8
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %13, %2
  %17 = phi i32 [ 0, %2 ], [ %14, %13 ]
  br label %18

18:                                               ; preds = %21, %16
  %19 = phi i32 [ %22, %21 ], [ %17, %16 ]
  %20 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %19, ptr noundef nonnull %4) #10
  switch i32 %20, label %21 [
    i32 9, label %25
    i32 2, label %23
    i32 1, label %28
  ]

21:                                               ; preds = %18
  %22 = load i32, ptr %4, align 4, !tbaa !8
  br label %18

23:                                               ; preds = %18
  %24 = load i32, ptr %4, align 4, !tbaa !8
  br label %28

25:                                               ; preds = %18
  %26 = load i32, ptr %4, align 4, !tbaa !8
  %27 = tail call i32 @llvm.smin.i32(i32 %26, i32 -1)
  br label %28

28:                                               ; preds = %25, %23, %18, %13, %12
  %29 = phi i1 [ true, %25 ], [ true, %12 ], [ true, %13 ], [ true, %23 ], [ false, %18 ]
  %30 = phi i32 [ %27, %25 ], [ -4, %12 ], [ %14, %13 ], [ %24, %23 ], [ %19, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %31 = icmp slt i32 %30, 0
  %32 = or i1 %31, %29
  %33 = select i1 %32, i32 -1, i32 %30
  ret i32 %33
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @fdt_next_subnode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %36, %2
  %6 = phi i32 [ 1, %2 ], [ %37, %36 ]
  %7 = phi i32 [ %1, %2 ], [ %23, %36 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !tbaa !8
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 %7, ptr %3, align 4, !tbaa !8
  %10 = and i32 %7, -2147483645
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %7, ptr noundef nonnull %3) #10
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %31

16:                                               ; preds = %12
  %17 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  store i32 %17, ptr %4, align 4, !tbaa !8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %16, %5
  %20 = phi i32 [ 0, %5 ], [ %17, %16 ]
  br label %21

21:                                               ; preds = %25, %19
  %22 = phi i32 [ %26, %25 ], [ %6, %19 ]
  %23 = phi i32 [ %27, %25 ], [ %20, %19 ]
  %24 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %23, ptr noundef nonnull %4) #10
  switch i32 %24, label %25 [
    i32 9, label %31
    i32 2, label %28
    i32 1, label %32
  ]

25:                                               ; preds = %28, %21
  %26 = phi i32 [ %22, %21 ], [ %29, %28 ]
  %27 = load i32, ptr %4, align 4, !tbaa !8
  br label %21

28:                                               ; preds = %21
  %29 = add nsw i32 %22, -1
  %30 = icmp slt i32 %22, 1
  br i1 %30, label %31, label %25

31:                                               ; preds = %28, %21, %16, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %39

32:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %33 = icmp slt i32 %23, 0
  %34 = icmp slt i32 %22, 0
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = add nuw nsw i32 %22, 1
  %38 = icmp eq i32 %22, 0
  br i1 %38, label %39, label %5

39:                                               ; preds = %36, %32, %31
  %40 = phi i32 [ -1, %31 ], [ %23, %36 ], [ -1, %32 ]
  ret i32 %40
}

; Function Attrs: nofree nounwind readonly uwtable
define dso_local ptr @fdt_find_string_(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #11
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = shl i64 %4, 32
  %8 = add i64 %7, 4294967296
  %9 = ashr exact i64 %8, 32
  %10 = sub nsw i64 0, %9
  %11 = getelementptr inbounds i8, ptr %6, i64 %10
  %12 = icmp ult ptr %11, %0
  br i1 %12, label %20, label %13

13:                                               ; preds = %17, %3
  %14 = phi ptr [ %18, %17 ], [ %0, %3 ]
  %15 = tail call i32 @bcmp(ptr %14, ptr %2, i64 %9)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %14, i64 1
  %19 = icmp ugt ptr %18, %11
  br i1 %19, label %20, label %13

20:                                               ; preds = %17, %13, %3
  %21 = phi ptr [ null, %3 ], [ null, %17 ], [ %14, %13 ]
  ret ptr %21
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define dso_local i32 @fdt_move(ptr noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @fdt_ro_probe_(ptr noundef %0)
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %30

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 1
  %10 = load i8, ptr %9, align 1, !tbaa !5
  %11 = zext i8 %10 to i32
  %12 = shl nuw i32 %11, 24
  %13 = getelementptr inbounds i8, ptr %9, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 16
  %17 = or i32 %16, %12
  %18 = getelementptr inbounds i8, ptr %9, i64 2
  %19 = load i8, ptr %18, align 1, !tbaa !5
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 8
  %22 = or i32 %17, %21
  %23 = getelementptr inbounds i8, ptr %9, i64 3
  %24 = load i8, ptr %23, align 1, !tbaa !5
  %25 = zext i8 %24 to i32
  %26 = or i32 %22, %25
  %27 = icmp ugt i32 %26, %2
  br i1 %27, label %30, label %28

28:                                               ; preds = %8
  %29 = zext i32 %26 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %0, i64 %29, i1 false)
  br label %30

30:                                               ; preds = %28, %8, %5, %3
  %31 = phi i32 [ %6, %5 ], [ 0, %28 ], [ -3, %3 ], [ -3, %8 ]
  ret i32 %31
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
