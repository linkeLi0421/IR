; ModuleID = '/llk/IR/arch/arm/boot/compressed/fdt.c_pt.bc'
source_filename = "../arch/arm/boot/compressed/fdt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly willreturn uwtable(sync)
define i32 @fdt_ro_probe_(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 %4, 24
  %6 = getelementptr i8, ptr %2, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 16
  %10 = or i32 %9, %5
  %11 = getelementptr i8, ptr %2, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = or i32 %10, %14
  %16 = getelementptr i8, ptr %2, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %15, %18
  %20 = ptrtoint ptr %0 to i32
  %21 = and i32 %20, 7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %104

23:                                               ; preds = %1
  %24 = load i8, ptr %0, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw i32 %25, 24
  %27 = getelementptr i8, ptr %0, i32 1
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 16
  %31 = or i32 %30, %26
  %32 = getelementptr i8, ptr %0, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  %36 = or i32 %31, %35
  %37 = getelementptr i8, ptr %0, i32 3
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %36, %39
  switch i32 %40, label %104 [
    i32 -804389139, label %41
    i32 804389138, label %81
  ]

41:                                               ; preds = %23
  %42 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw i32 %44, 24
  %46 = getelementptr i8, ptr %42, i32 1
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 16
  %50 = or i32 %49, %45
  %51 = getelementptr i8, ptr %42, i32 2
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %53, 8
  %55 = or i32 %50, %54
  %56 = getelementptr i8, ptr %42, i32 3
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = or i32 %55, %58
  %60 = icmp ult i32 %59, 2
  br i1 %60, label %104, label %61

61:                                               ; preds = %41
  %62 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 6
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = shl nuw i32 %64, 24
  %66 = getelementptr i8, ptr %62, i32 1
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl nuw nsw i32 %68, 16
  %70 = or i32 %69, %65
  %71 = getelementptr i8, ptr %62, i32 2
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 8
  %75 = or i32 %70, %74
  %76 = getelementptr i8, ptr %62, i32 3
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = or i32 %75, %78
  %80 = icmp ugt i32 %79, 17
  br i1 %80, label %104, label %101

81:                                               ; preds = %23
  %82 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 9
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = shl nuw i32 %84, 24
  %86 = getelementptr i8, ptr %82, i32 1
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = shl nuw nsw i32 %88, 16
  %90 = or i32 %89, %85
  %91 = getelementptr i8, ptr %82, i32 2
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = shl nuw nsw i32 %93, 8
  %95 = or i32 %90, %94
  %96 = getelementptr i8, ptr %82, i32 3
  %97 = load i8, ptr %96, align 1
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone willreturn uwtable(sync)
define i32 @fdt_header_size_(i32 noundef %0) local_unnamed_addr #2 {
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
  %9 = select i1 %8, i32 36, i32 40
  br label %10

10:                                               ; preds = %7, %5, %3, %1
  %11 = phi i32 [ 28, %1 ], [ 32, %3 ], [ 36, %5 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly willreturn uwtable(sync)
define i32 @fdt_header_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 %4, 24
  %6 = getelementptr i8, ptr %2, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 16
  %10 = or i32 %9, %5
  %11 = getelementptr i8, ptr %2, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = or i32 %10, %14
  %16 = getelementptr i8, ptr %2, i32 3
  %17 = load i8, ptr %16, align 1
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
  %27 = select i1 %26, i32 36, i32 40
  br label %28

28:                                               ; preds = %25, %23, %21, %1
  %29 = phi i32 [ 28, %1 ], [ 32, %21 ], [ 36, %23 ], [ %27, %25 ]
  ret i32 %29
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly willreturn uwtable(sync)
define i32 @fdt_check_header(ptr noundef %0) local_unnamed_addr #0 {
  %2 = ptrtoint ptr %0 to i32
  %3 = and i32 %2, 7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %216

5:                                                ; preds = %1
  %6 = load i8, ptr %0, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 %7, 24
  %9 = getelementptr i8, ptr %0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 16
  %13 = or i32 %12, %8
  %14 = getelementptr i8, ptr %0, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = or i32 %13, %17
  %19 = getelementptr i8, ptr %0, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %18, %21
  %23 = icmp eq i32 %22, -804389139
  br i1 %23, label %24, label %216

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl nuw i32 %27, 24
  %29 = getelementptr i8, ptr %25, i32 1
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 16
  %33 = or i32 %32, %28
  %34 = getelementptr i8, ptr %25, i32 2
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 8
  %38 = or i32 %33, %37
  %39 = getelementptr i8, ptr %25, i32 3
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %38, %41
  %43 = icmp ult i32 %42, 2
  br i1 %43, label %216, label %44

44:                                               ; preds = %24
  %45 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 6
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl nuw i32 %47, 24
  %49 = getelementptr i8, ptr %45, i32 1
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 16
  %53 = or i32 %52, %48
  %54 = getelementptr i8, ptr %45, i32 2
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 8
  %58 = or i32 %53, %57
  %59 = getelementptr i8, ptr %45, i32 3
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %58, %61
  %63 = icmp ugt i32 %62, 17
  %64 = icmp ult i32 %42, %62
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %216, label %66

66:                                               ; preds = %44
  %67 = icmp eq i32 %42, 2
  br i1 %67, label %73, label %68

68:                                               ; preds = %66
  %69 = icmp ult i32 %42, 4
  br i1 %69, label %73, label %70

70:                                               ; preds = %68
  %71 = icmp ult i32 %42, 17
  %72 = select i1 %71, i32 36, i32 40
  br label %73

73:                                               ; preds = %70, %68, %66
  %74 = phi i32 [ 32, %66 ], [ 36, %68 ], [ %72, %70 ]
  %75 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl nuw i32 %77, 24
  %79 = getelementptr i8, ptr %75, i32 1
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i32
  %82 = shl nuw nsw i32 %81, 16
  %83 = or i32 %82, %78
  %84 = getelementptr i8, ptr %75, i32 2
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  %87 = shl nuw nsw i32 %86, 8
  %88 = or i32 %83, %87
  %89 = getelementptr i8, ptr %75, i32 3
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  %92 = or i32 %88, %91
  %93 = icmp ult i32 %92, %74
  %94 = icmp slt i32 %92, 0
  %95 = or i1 %93, %94
  br i1 %95, label %216, label %96

96:                                               ; preds = %73
  %97 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 4
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = shl nuw i32 %99, 24
  %101 = getelementptr i8, ptr %97, i32 1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = shl nuw nsw i32 %103, 16
  %105 = or i32 %104, %100
  %106 = getelementptr i8, ptr %97, i32 2
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  %109 = shl nuw nsw i32 %108, 8
  %110 = or i32 %105, %109
  %111 = getelementptr i8, ptr %97, i32 3
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  %114 = or i32 %110, %113
  %115 = icmp ult i32 %114, %74
  %116 = icmp ugt i32 %114, %92
  %117 = or i1 %115, %116
  br i1 %117, label %216, label %118

118:                                              ; preds = %96
  %119 = icmp ult i32 %42, 17
  %120 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i32
  %123 = shl nuw i32 %122, 24
  %124 = getelementptr i8, ptr %120, i32 1
  %125 = load i8, ptr %124, align 1
  %126 = zext i8 %125 to i32
  %127 = shl nuw nsw i32 %126, 16
  %128 = or i32 %127, %123
  %129 = getelementptr i8, ptr %120, i32 2
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i32
  %132 = shl nuw nsw i32 %131, 8
  %133 = or i32 %128, %132
  %134 = getelementptr i8, ptr %120, i32 3
  %135 = load i8, ptr %134, align 1
  %136 = zext i8 %135 to i32
  %137 = or i32 %133, %136
  %138 = icmp ult i32 %137, %74
  %139 = icmp ugt i32 %137, %92
  %140 = or i1 %138, %139
  br i1 %119, label %141, label %142

141:                                              ; preds = %118
  br i1 %140, label %216, label %168

142:                                              ; preds = %118
  br i1 %140, label %216, label %143

143:                                              ; preds = %142
  %144 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 9
  %145 = getelementptr i8, ptr %144, i32 1
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i32
  %148 = shl nuw nsw i32 %147, 16
  %149 = load i8, ptr %144, align 1
  %150 = zext i8 %149 to i32
  %151 = shl nuw i32 %150, 24
  %152 = or i32 %151, %148
  %153 = getelementptr i8, ptr %144, i32 2
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i32
  %156 = shl nuw nsw i32 %155, 8
  %157 = or i32 %152, %156
  %158 = getelementptr i8, ptr %144, i32 3
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i32
  %161 = or i32 %157, %160
  %162 = add i32 %161, %137
  %163 = icmp ult i32 %162, %137
  br i1 %163, label %216, label %164

164:                                              ; preds = %143
  %165 = icmp ult i32 %162, %74
  %166 = icmp ugt i32 %162, %92
  %167 = or i1 %165, %166
  br i1 %167, label %216, label %168

168:                                              ; preds = %164, %141
  %169 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  %170 = load i8, ptr %169, align 1
  %171 = zext i8 %170 to i32
  %172 = shl nuw i32 %171, 24
  %173 = getelementptr i8, ptr %169, i32 1
  %174 = load i8, ptr %173, align 1
  %175 = zext i8 %174 to i32
  %176 = shl nuw nsw i32 %175, 16
  %177 = or i32 %176, %172
  %178 = getelementptr i8, ptr %169, i32 2
  %179 = load i8, ptr %178, align 1
  %180 = zext i8 %179 to i32
  %181 = shl nuw nsw i32 %180, 8
  %182 = or i32 %177, %181
  %183 = getelementptr i8, ptr %169, i32 3
  %184 = load i8, ptr %183, align 1
  %185 = zext i8 %184 to i32
  %186 = or i32 %182, %185
  %187 = icmp ult i32 %186, %74
  %188 = icmp ugt i32 %186, %92
  %189 = or i1 %187, %188
  br i1 %189, label %215, label %190

190:                                              ; preds = %168
  %191 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 8
  %192 = getelementptr i8, ptr %191, i32 1
  %193 = load i8, ptr %192, align 1
  %194 = zext i8 %193 to i32
  %195 = shl nuw nsw i32 %194, 16
  %196 = load i8, ptr %191, align 1
  %197 = zext i8 %196 to i32
  %198 = shl nuw i32 %197, 24
  %199 = or i32 %198, %195
  %200 = getelementptr i8, ptr %191, i32 2
  %201 = load i8, ptr %200, align 1
  %202 = zext i8 %201 to i32
  %203 = shl nuw nsw i32 %202, 8
  %204 = or i32 %199, %203
  %205 = getelementptr i8, ptr %191, i32 3
  %206 = load i8, ptr %205, align 1
  %207 = zext i8 %206 to i32
  %208 = or i32 %204, %207
  %209 = add i32 %208, %186
  %210 = icmp ult i32 %209, %186
  br i1 %210, label %215, label %211

211:                                              ; preds = %190
  %212 = icmp ult i32 %209, %74
  %213 = icmp ugt i32 %209, %92
  %214 = or i1 %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %211, %190, %168
  br label %216

216:                                              ; preds = %215, %211, %164, %143, %142, %141, %96, %73, %44, %24, %5, %1
  %217 = phi i32 [ -19, %1 ], [ -9, %5 ], [ -10, %44 ], [ -10, %24 ], [ -8, %73 ], [ -8, %96 ], [ -8, %141 ], [ -8, %164 ], [ -8, %215 ], [ 0, %211 ], [ -8, %142 ], [ -8, %143 ]
  ret i32 %217
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly willreturn uwtable(sync)
define ptr @fdt_offset_ptr(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 %6, 24
  %8 = getelementptr i8, ptr %4, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = or i32 %11, %7
  %13 = getelementptr i8, ptr %4, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = or i32 %12, %16
  %18 = getelementptr i8, ptr %4, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %17, %20
  %22 = add i32 %21, %1
  %23 = icmp slt i32 %1, 0
  %24 = icmp ult i32 %22, %1
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %95, label %26

26:                                               ; preds = %3
  %27 = add i32 %22, %2
  %28 = icmp ult i32 %27, %22
  br i1 %28, label %95, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw i32 %32, 24
  %34 = getelementptr i8, ptr %30, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 16
  %38 = or i32 %37, %33
  %39 = getelementptr i8, ptr %30, i32 2
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = or i32 %38, %42
  %44 = getelementptr i8, ptr %30, i32 3
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = or i32 %43, %46
  %48 = icmp ugt i32 %27, %47
  br i1 %48, label %95, label %49

49:                                               ; preds = %29
  %50 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl nuw i32 %52, 24
  %54 = getelementptr i8, ptr %50, i32 1
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 16
  %58 = or i32 %57, %53
  %59 = getelementptr i8, ptr %50, i32 2
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 8
  %63 = or i32 %58, %62
  %64 = getelementptr i8, ptr %50, i32 3
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = or i32 %63, %66
  %68 = icmp ugt i32 %67, 16
  br i1 %68, label %69, label %92

69:                                               ; preds = %49
  %70 = add i32 %2, %1
  %71 = icmp ult i32 %70, %1
  br i1 %71, label %95, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 9
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = shl nuw i32 %75, 24
  %77 = getelementptr i8, ptr %73, i32 1
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl nuw nsw i32 %79, 16
  %81 = or i32 %80, %76
  %82 = getelementptr i8, ptr %73, i32 2
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = shl nuw nsw i32 %84, 8
  %86 = or i32 %81, %85
  %87 = getelementptr i8, ptr %73, i32 3
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = or i32 %86, %89
  %91 = icmp ugt i32 %70, %90
  br i1 %91, label %95, label %92

92:                                               ; preds = %72, %49
  %93 = getelementptr i8, ptr %0, i32 %21
  %94 = getelementptr i8, ptr %93, i32 %1
  br label %95

95:                                               ; preds = %92, %72, %69, %29, %26, %3
  %96 = phi ptr [ %94, %92 ], [ null, %3 ], [ null, %29 ], [ null, %26 ], [ null, %72 ], [ null, %69 ]
  ret ptr %96
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_next_tag(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 {
  store i32 -8, ptr %2, align 4
  %4 = tail call ptr @fdt_offset_ptr(ptr noundef %0, i32 noundef %1, i32 noundef 4) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %60, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = add i32 %1, 4
  store i32 -11, ptr %2, align 4
  switch i32 %8, label %60 [
    i32 1, label %10
    i32 3, label %18
    i32 9, label %52
    i32 2, label %52
    i32 4, label %52
  ]

10:                                               ; preds = %14, %6
  %11 = phi i32 [ %15, %14 ], [ %9, %6 ]
  %12 = tail call ptr @fdt_offset_ptr(ptr noundef %0, i32 noundef %11, i32 noundef 1) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %60, label %14

14:                                               ; preds = %10
  %15 = add i32 %11, 1
  %16 = load i8, ptr %12, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %52, label %10

18:                                               ; preds = %6
  %19 = tail call ptr @fdt_offset_ptr(ptr noundef %0, i32 noundef %9, i32 noundef 4) #7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %60, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr %19, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = add i32 %1, 12
  %25 = add i32 %24, %23
  %26 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw i32 %28, 24
  %30 = getelementptr i8, ptr %26, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 16
  %34 = or i32 %33, %29
  %35 = getelementptr i8, ptr %26, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 8
  %39 = or i32 %34, %38
  %40 = getelementptr i8, ptr %26, i32 3
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %39, %42
  %44 = icmp ult i32 %43, 16
  %45 = icmp ugt i32 %23, 7
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %52

47:                                               ; preds = %21
  %48 = and i32 %24, 7
  %49 = icmp eq i32 %48, 0
  %50 = add i32 %25, 4
  %51 = select i1 %49, i32 %25, i32 %50
  br label %52

52:                                               ; preds = %47, %21, %14, %6, %6, %6
  %53 = phi i32 [ %9, %6 ], [ %9, %6 ], [ %9, %6 ], [ %25, %21 ], [ %51, %47 ], [ %15, %14 ]
  %54 = sub i32 %53, %1
  %55 = tail call ptr @fdt_offset_ptr(ptr noundef %0, i32 noundef %1, i32 noundef %54) #7
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = add i32 %53, 3
  %59 = and i32 %58, -4
  store i32 %59, ptr %2, align 4
  br label %60

60:                                               ; preds = %57, %52, %18, %10, %6, %3
  %61 = phi i32 [ %8, %57 ], [ 9, %3 ], [ 9, %18 ], [ 9, %6 ], [ 9, %52 ], [ 9, %10 ]
  ret i32 %61
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_check_node_offset_(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  %4 = and i32 %1, -2147483645
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3) #7
  %8 = icmp eq i32 %7, 1
  %9 = load i32, ptr %3, align 4
  %10 = select i1 %8, i32 %9, i32 -4
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ -4, %2 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_check_prop_offset_(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  %4 = and i32 %1, -2147483645
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3) #7
  %8 = icmp eq i32 %7, 3
  %9 = load i32, ptr %3, align 4
  %10 = select i1 %8, i32 %9, i32 -4
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ -4, %2 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_next_node(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4
  %6 = icmp sgt i32 %1, -1
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %1, ptr %4, align 4
  %8 = and i32 %1, -2147483645
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #9
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %44

14:                                               ; preds = %10
  %15 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  store i32 %15, ptr %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %14, %3
  %18 = phi i32 [ %15, %14 ], [ 0, %3 ]
  %19 = icmp eq ptr %2, null
  br label %20

20:                                               ; preds = %23, %17
  %21 = phi i32 [ %24, %23 ], [ %18, %17 ]
  %22 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %5) #7
  switch i32 %22, label %23 [
    i32 9, label %36
    i32 2, label %29
    i32 1, label %25
  ]

23:                                               ; preds = %30, %29, %20
  %24 = load i32, ptr %5, align 4
  br label %20

25:                                               ; preds = %20
  br i1 %19, label %44, label %26

26:                                               ; preds = %25
  %27 = load i32, ptr %2, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %2, align 4
  br label %44

29:                                               ; preds = %20
  br i1 %19, label %23, label %30

30:                                               ; preds = %29
  %31 = load i32, ptr %2, align 4
  %32 = add i32 %31, -1
  store i32 %32, ptr %2, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %23

34:                                               ; preds = %30
  %35 = load i32, ptr %5, align 4
  br label %44

36:                                               ; preds = %20
  %37 = load i32, ptr %5, align 4
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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %45
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_first_subnode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4
  %5 = icmp sgt i32 %1, -1
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 %1, ptr %3, align 4
  %7 = and i32 %1, -2147483645
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3) #9
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %28

13:                                               ; preds = %9
  %14 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  store i32 %14, ptr %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %13, %2
  %17 = phi i32 [ 0, %2 ], [ %14, %13 ]
  br label %18

18:                                               ; preds = %21, %16
  %19 = phi i32 [ %22, %21 ], [ %17, %16 ]
  %20 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %19, ptr noundef nonnull %4) #9
  switch i32 %20, label %21 [
    i32 9, label %25
    i32 2, label %23
    i32 1, label %28
  ]

21:                                               ; preds = %18
  %22 = load i32, ptr %4, align 4
  br label %18

23:                                               ; preds = %18
  %24 = load i32, ptr %4, align 4
  br label %28

25:                                               ; preds = %18
  %26 = load i32, ptr %4, align 4
  %27 = tail call i32 @llvm.smin.i32(i32 %26, i32 -1)
  br label %28

28:                                               ; preds = %25, %23, %18, %13, %12
  %29 = phi i1 [ true, %25 ], [ true, %12 ], [ true, %13 ], [ true, %23 ], [ false, %18 ]
  %30 = phi i32 [ %27, %25 ], [ -4, %12 ], [ %14, %13 ], [ %24, %23 ], [ %19, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %31 = icmp slt i32 %30, 0
  %32 = or i1 %31, %29
  %33 = select i1 %32, i32 -1, i32 %30
  ret i32 %33
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_next_subnode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %36, %2
  %6 = phi i32 [ 1, %2 ], [ %37, %36 ]
  %7 = phi i32 [ %1, %2 ], [ %23, %36 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 %7, ptr %3, align 4
  %10 = and i32 %7, -2147483645
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %7, ptr noundef nonnull %3) #9
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %31

16:                                               ; preds = %12
  %17 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  store i32 %17, ptr %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %16, %5
  %20 = phi i32 [ 0, %5 ], [ %17, %16 ]
  br label %21

21:                                               ; preds = %25, %19
  %22 = phi i32 [ %26, %25 ], [ %6, %19 ]
  %23 = phi i32 [ %27, %25 ], [ %20, %19 ]
  %24 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %23, ptr noundef nonnull %4) #9
  switch i32 %24, label %25 [
    i32 9, label %31
    i32 2, label %28
    i32 1, label %32
  ]

25:                                               ; preds = %28, %21
  %26 = phi i32 [ %22, %21 ], [ %29, %28 ]
  %27 = load i32, ptr %4, align 4
  br label %21

28:                                               ; preds = %21
  %29 = add i32 %22, -1
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %25

31:                                               ; preds = %28, %21, %16, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %39

32:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %33 = icmp slt i32 %23, 0
  %34 = icmp ugt i32 %22, 2147483646
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

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_find_string_(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = tail call i32 @strlen(ptr noundef %2) #9
  %5 = add i32 %4, 1
  %6 = getelementptr i8, ptr %0, i32 %1
  %7 = xor i32 %4, -1
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = icmp ult ptr %8, %0
  br i1 %9, label %17, label %10

10:                                               ; preds = %14, %3
  %11 = phi ptr [ %15, %14 ], [ %0, %3 ]
  %12 = tail call i32 @memcmp(ptr noundef %11, ptr noundef %2, i32 noundef %5) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %11, i32 1
  %16 = icmp ugt ptr %15, %8
  br i1 %16, label %17, label %10

17:                                               ; preds = %14, %10, %3
  %18 = phi ptr [ null, %3 ], [ null, %14 ], [ %11, %10 ]
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare i32 @strlen(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare i32 @memcmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_move(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #7
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %30

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw i32 %11, 24
  %13 = getelementptr i8, ptr %9, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 16
  %17 = or i32 %16, %12
  %18 = getelementptr i8, ptr %9, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 8
  %22 = or i32 %17, %21
  %23 = getelementptr i8, ptr %9, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %22, %25
  %27 = icmp ugt i32 %26, %2
  br i1 %27, label %30, label %28

28:                                               ; preds = %8
  %29 = tail call ptr @memmove(ptr noundef %1, ptr noundef %0, i32 noundef %26) #9
  br label %30

30:                                               ; preds = %28, %8, %5, %3
  %31 = phi i32 [ %6, %5 ], [ 0, %28 ], [ -3, %3 ], [ -3, %8 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare ptr @memmove(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 1}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
