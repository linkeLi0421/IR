; ModuleID = '/llk/IR/lib/fdt_sw.c_pt.bc'
source_filename = "../lib/fdt_sw.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fdt_reserve_entry = type { i64, i64 }
%struct.fdt_node_header = type { i32, [0 x i8] }
%struct.fdt_property = type { i32, i32, i32, [0 x i8] }

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_create_with_flags(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %1, 48
  br i1 %4, label %17, label %5

5:                                                ; preds = %3
  %6 = icmp ult i32 %2, 2
  br i1 %6, label %7, label %17

7:                                                ; preds = %5
  %8 = tail call ptr @memset(ptr noundef %0, i32 noundef 0, i32 noundef %1) #7
  store i32 302117423, ptr %0, align 4
  %9 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  store i32 285212672, ptr %9, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  %11 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 6
  store i32 %10, ptr %11, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  %13 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 4
  store i32 805306368, ptr %14, align 4
  %15 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
  store i32 805306368, ptr %15, align 4
  %16 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  store i32 0, ptr %16, align 4
  br label %17

17:                                               ; preds = %7, %5, %3
  %18 = phi i32 [ 0, %7 ], [ -3, %3 ], [ -18, %5 ]
  ret i32 %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_create(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @fdt_create_with_flags(ptr noundef %0, i32 noundef %1, i32 noundef 0) #9
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_resize(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 %5, 24
  %7 = getelementptr i8, ptr %0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 16
  %11 = or i32 %10, %6
  %12 = getelementptr i8, ptr %0, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or i32 %11, %15
  %17 = getelementptr i8, ptr %0, i32 3
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %16, %19
  %21 = icmp eq i32 %20, -804389139
  %22 = icmp eq i32 %20, 804389138
  %23 = select i1 %22, i32 0, i32 -9
  %24 = select i1 %21, i32 -7, i32 %23
  br i1 %22, label %25, label %141

25:                                               ; preds = %3
  %26 = icmp slt i32 %2, 0
  br i1 %26, label %141, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl nuw i32 %30, 24
  %32 = getelementptr i8, ptr %28, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 16
  %36 = or i32 %35, %31
  %37 = getelementptr i8, ptr %28, i32 2
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 8
  %41 = or i32 %36, %40
  %42 = getelementptr i8, ptr %28, i32 3
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %41, %44
  %46 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 9
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl nuw i32 %48, 24
  %50 = getelementptr i8, ptr %46, i32 1
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 16
  %54 = or i32 %53, %49
  %55 = getelementptr i8, ptr %46, i32 2
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 8
  %59 = or i32 %54, %58
  %60 = getelementptr i8, ptr %46, i32 3
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %59, %62
  %64 = add i32 %63, %45
  %65 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 8
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl nuw i32 %67, 24
  %69 = getelementptr i8, ptr %65, i32 1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = shl nuw nsw i32 %71, 16
  %73 = or i32 %72, %68
  %74 = getelementptr i8, ptr %65, i32 2
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = shl nuw nsw i32 %76, 8
  %78 = or i32 %73, %77
  %79 = getelementptr i8, ptr %65, i32 3
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i32
  %82 = or i32 %78, %81
  %83 = add i32 %82, %64
  %84 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  %87 = shl nuw i32 %86, 24
  %88 = getelementptr i8, ptr %84, i32 1
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = shl nuw nsw i32 %90, 16
  %92 = or i32 %91, %87
  %93 = getelementptr i8, ptr %84, i32 2
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  %96 = shl nuw nsw i32 %95, 8
  %97 = or i32 %92, %96
  %98 = getelementptr i8, ptr %84, i32 3
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = or i32 %97, %100
  %102 = icmp ugt i32 %83, %101
  br i1 %102, label %141, label %103

103:                                              ; preds = %27
  %104 = icmp ugt i32 %83, %2
  br i1 %104, label %141, label %105

105:                                              ; preds = %103
  %106 = getelementptr i8, ptr %0, i32 %101
  %107 = sub i32 0, %82
  %108 = getelementptr i8, ptr %106, i32 %107
  %109 = getelementptr i8, ptr %1, i32 %2
  %110 = getelementptr i8, ptr %109, i32 %107
  %111 = icmp ugt ptr %1, %0
  br i1 %111, label %115, label %112

112:                                              ; preds = %105
  %113 = tail call ptr @memmove(ptr noundef %1, ptr noundef %0, i32 noundef %64) #7
  %114 = tail call ptr @memmove(ptr noundef %110, ptr noundef %108, i32 noundef %82) #7
  br label %118

115:                                              ; preds = %105
  %116 = tail call ptr @memmove(ptr noundef %110, ptr noundef %108, i32 noundef %82) #7
  %117 = tail call ptr @memmove(ptr noundef nonnull %1, ptr noundef %0, i32 noundef %64) #7
  br label %118

118:                                              ; preds = %115, %112
  %119 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  %120 = getelementptr inbounds %struct.fdt_header, ptr %1, i32 0, i32 1
  store i32 %119, ptr %120, align 4
  %121 = getelementptr inbounds %struct.fdt_header, ptr %1, i32 0, i32 3
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i32
  %124 = shl nuw i32 %123, 24
  %125 = getelementptr i8, ptr %121, i32 1
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i32
  %128 = shl nuw nsw i32 %127, 16
  %129 = or i32 %128, %124
  %130 = getelementptr i8, ptr %121, i32 2
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i32
  %133 = shl nuw nsw i32 %132, 8
  %134 = or i32 %129, %133
  %135 = getelementptr i8, ptr %121, i32 3
  %136 = load i8, ptr %135, align 1
  %137 = zext i8 %136 to i32
  %138 = or i32 %134, %137
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %118
  store i32 %119, ptr %121, align 4
  br label %141

141:                                              ; preds = %140, %118, %103, %27, %25, %3
  %142 = phi i32 [ %24, %3 ], [ -3, %25 ], [ -13, %27 ], [ -3, %103 ], [ 0, %140 ], [ 0, %118 ]
  ret i32 %142
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @memmove(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid optsize willreturn uwtable(sync)
define hidden i32 @fdt_add_reservemap_entry(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 %5, 24
  %7 = getelementptr i8, ptr %0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 16
  %11 = or i32 %10, %6
  %12 = getelementptr i8, ptr %0, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or i32 %11, %15
  %17 = getelementptr i8, ptr %0, i32 3
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %16, %19
  %21 = icmp eq i32 %20, 804389138
  br i1 %21, label %22, label %42

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw i32 %25, 24
  %27 = getelementptr i8, ptr %23, i32 1
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 16
  %31 = or i32 %30, %26
  %32 = getelementptr i8, ptr %23, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  %36 = or i32 %31, %35
  %37 = getelementptr i8, ptr %23, i32 3
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %36, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %90

42:                                               ; preds = %3
  %43 = icmp eq i32 %20, -804389139
  %44 = select i1 %43, i32 -7, i32 -9
  br label %90

45:                                               ; preds = %22
  %46 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl nuw i32 %48, 24
  %50 = getelementptr i8, ptr %46, i32 1
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 16
  %54 = or i32 %53, %49
  %55 = getelementptr i8, ptr %46, i32 2
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 8
  %59 = or i32 %54, %58
  %60 = getelementptr i8, ptr %46, i32 3
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %59, %62
  %64 = add i32 %63, 16
  %65 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl nuw i32 %67, 24
  %69 = getelementptr i8, ptr %65, i32 1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = shl nuw nsw i32 %71, 16
  %73 = or i32 %72, %68
  %74 = getelementptr i8, ptr %65, i32 2
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = shl nuw nsw i32 %76, 8
  %78 = or i32 %73, %77
  %79 = getelementptr i8, ptr %65, i32 3
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i32
  %82 = or i32 %78, %81
  %83 = icmp ugt i32 %64, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %45
  %85 = getelementptr i8, ptr %0, i32 %63
  %86 = tail call i64 @llvm.bswap.i64(i64 %1)
  store i64 %86, ptr %85, align 8
  %87 = tail call i64 @llvm.bswap.i64(i64 %2)
  %88 = getelementptr inbounds %struct.fdt_reserve_entry, ptr %85, i32 0, i32 1
  store i64 %87, ptr %88, align 8
  %89 = tail call i32 @llvm.bswap.i32(i32 %64) #8
  store i32 %89, ptr %46, align 4
  br label %90

90:                                               ; preds = %84, %45, %42, %22
  %91 = phi i32 [ 0, %84 ], [ %44, %42 ], [ -3, %45 ], [ -7, %22 ]
  ret i32 %91
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid optsize willreturn uwtable(sync)
define hidden i32 @fdt_finish_reservemap(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = tail call i32 @fdt_add_reservemap_entry(ptr noundef %0, i64 noundef 0, i64 noundef 0) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %25

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 %7, 24
  %9 = getelementptr i8, ptr %5, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 16
  %13 = or i32 %12, %8
  %14 = getelementptr i8, ptr %5, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = or i32 %13, %17
  %19 = getelementptr i8, ptr %5, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %18, %21
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  %24 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  store i32 %23, ptr %24, align 4
  br label %25

25:                                               ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_begin_node(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @fdt_sw_probe_struct_(ptr noundef %0) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  %6 = tail call i32 @strlen(ptr noundef %1) #7
  %7 = add i32 %6, 8
  %8 = and i32 %7, -4
  %9 = tail call fastcc ptr @fdt_grab_space_(ptr noundef %0, i32 noundef %8) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = add i32 %6, 1
  store i32 16777216, ptr %9, align 4
  %13 = getelementptr inbounds %struct.fdt_node_header, ptr %9, i32 0, i32 1
  %14 = tail call ptr @memcpy(ptr noundef %13, ptr noundef %1, i32 noundef %12) #7
  br label %15

15:                                               ; preds = %11, %5, %2
  %16 = phi i32 [ 0, %11 ], [ %3, %2 ], [ -3, %5 ]
  ret i32 %16
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly willreturn uwtable(sync)
define internal fastcc i32 @fdt_sw_probe_struct_(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = shl nuw i32 %3, 24
  %5 = getelementptr i8, ptr %0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 16
  %9 = or i32 %8, %4
  %10 = getelementptr i8, ptr %0, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = or i32 %9, %13
  %15 = getelementptr i8, ptr %0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %14, %17
  %19 = icmp eq i32 %18, -804389139
  %20 = icmp eq i32 %18, 804389138
  %21 = select i1 %20, i32 0, i32 -9
  %22 = select i1 %19, i32 -7, i32 %21
  br i1 %20, label %23, label %62

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 %26, 24
  %28 = getelementptr i8, ptr %24, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 16
  %32 = or i32 %31, %27
  %33 = getelementptr i8, ptr %24, i32 2
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 8
  %37 = or i32 %32, %36
  %38 = getelementptr i8, ptr %24, i32 3
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %37, %40
  %42 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
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
  %60 = icmp eq i32 %41, %59
  %61 = select i1 %60, i32 0, i32 -7
  br label %62

62:                                               ; preds = %23, %1
  %63 = phi i32 [ %22, %1 ], [ %61, %23 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid optsize willreturn uwtable(sync)
define internal fastcc ptr @fdt_grab_space_(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 9
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 %5, 24
  %7 = getelementptr i8, ptr %3, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 16
  %11 = or i32 %10, %6
  %12 = getelementptr i8, ptr %3, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or i32 %11, %15
  %17 = getelementptr i8, ptr %3, i32 3
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %16, %19
  %21 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw i32 %23, 24
  %25 = getelementptr i8, ptr %21, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 16
  %29 = or i32 %28, %24
  %30 = getelementptr i8, ptr %21, i32 2
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 8
  %34 = or i32 %29, %33
  %35 = getelementptr i8, ptr %21, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %34, %37
  %39 = add i32 %20, %1
  %40 = icmp ult i32 %39, %20
  br i1 %40, label %85, label %41

41:                                               ; preds = %2
  %42 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 8
  %43 = getelementptr i8, ptr %42, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = mul nsw i32 %45, -65536
  %47 = load i8, ptr %42, align 1
  %48 = zext i8 %47 to i32
  %49 = mul i32 %48, -16777216
  %50 = add i32 %49, %46
  %51 = getelementptr i8, ptr %42, i32 2
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = mul nsw i32 %53, -256
  %55 = add i32 %50, %54
  %56 = getelementptr i8, ptr %42, i32 3
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %60 = getelementptr i8, ptr %59, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 16
  %64 = load i8, ptr %59, align 1
  %65 = zext i8 %64 to i32
  %66 = shl nuw i32 %65, 24
  %67 = or i32 %66, %63
  %68 = getelementptr i8, ptr %59, i32 2
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 8
  %72 = or i32 %67, %71
  %73 = getelementptr i8, ptr %59, i32 3
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = or i32 %72, %75
  %77 = add i32 %38, %58
  %78 = sub i32 %55, %77
  %79 = add i32 %78, %76
  %80 = icmp ugt i32 %39, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %41
  %82 = tail call i32 @llvm.bswap.i32(i32 %39) #8
  store i32 %82, ptr %3, align 4
  %83 = getelementptr i8, ptr %0, i32 %38
  %84 = getelementptr i8, ptr %83, i32 %20
  br label %85

85:                                               ; preds = %81, %41, %2
  %86 = phi ptr [ %84, %81 ], [ null, %41 ], [ null, %2 ]
  ret ptr %86
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid optsize willreturn uwtable(sync)
define hidden i32 @fdt_end_node(ptr noundef %0) local_unnamed_addr #6 {
  %2 = tail call fastcc i32 @fdt_sw_probe_struct_(ptr noundef %0) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @fdt_grab_space_(ptr noundef %0, i32 noundef 4) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  store i32 33554432, ptr %5, align 4
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ 0, %7 ], [ %2, %1 ], [ -3, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_property_placeholder(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call fastcc i32 @fdt_sw_probe_struct_(ptr noundef %0) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %102

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 6
  %9 = getelementptr i8, ptr %8, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @fdt_add_string_(ptr noundef %0, ptr noundef %1) #9
  br label %63

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 %18, 24
  %20 = getelementptr i8, ptr %16, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 16
  %24 = or i32 %23, %19
  %25 = getelementptr i8, ptr %16, i32 2
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 8
  %29 = or i32 %24, %28
  %30 = getelementptr i8, ptr %16, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %29, %32
  %34 = getelementptr i8, ptr %0, i32 %33
  %35 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 8
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nuw i32 %37, 24
  %39 = getelementptr i8, ptr %35, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 16
  %43 = or i32 %42, %38
  %44 = getelementptr i8, ptr %35, i32 2
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 8
  %48 = or i32 %43, %47
  %49 = getelementptr i8, ptr %35, i32 3
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %48, %51
  %53 = sub i32 0, %52
  %54 = getelementptr i8, ptr %34, i32 %53
  %55 = tail call ptr @fdt_find_string_(ptr noundef %54, i32 noundef %52, ptr noundef %1) #7
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %15
  %58 = ptrtoint ptr %55 to i32
  %59 = ptrtoint ptr %34 to i32
  %60 = sub i32 %58, %59
  br label %63

61:                                               ; preds = %15
  %62 = tail call fastcc i32 @fdt_add_string_(ptr noundef %0, ptr noundef %1) #7
  br label %63

63:                                               ; preds = %61, %57, %13
  %64 = phi i1 [ false, %61 ], [ true, %57 ], [ false, %13 ]
  %65 = phi i32 [ %62, %61 ], [ %60, %57 ], [ %14, %13 ]
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %102, label %67

67:                                               ; preds = %63
  %68 = add i32 %2, 15
  %69 = and i32 %68, -4
  %70 = tail call fastcc ptr @fdt_grab_space_(ptr noundef %0, i32 noundef %69) #9
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %96

72:                                               ; preds = %67
  br i1 %64, label %102, label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 8
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = shl nuw i32 %76, 24
  %78 = getelementptr i8, ptr %74, i32 1
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  %81 = shl nuw nsw i32 %80, 16
  %82 = or i32 %81, %77
  %83 = getelementptr i8, ptr %74, i32 2
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i32
  %86 = shl nuw nsw i32 %85, 8
  %87 = or i32 %82, %86
  %88 = getelementptr i8, ptr %74, i32 3
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = or i32 %87, %90
  %92 = tail call i32 @strlen(ptr noundef %1) #7
  %93 = xor i32 %92, -1
  %94 = add i32 %91, %93
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #8
  store i32 %95, ptr %74, align 4
  br label %102

96:                                               ; preds = %67
  store i32 50331648, ptr %70, align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %65)
  %98 = getelementptr inbounds %struct.fdt_property, ptr %70, i32 0, i32 2
  store i32 %97, ptr %98, align 4
  %99 = tail call i32 @llvm.bswap.i32(i32 %2)
  %100 = getelementptr inbounds %struct.fdt_property, ptr %70, i32 0, i32 1
  store i32 %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.fdt_property, ptr %70, i32 0, i32 3
  store ptr %101, ptr %3, align 4
  br label %102

102:                                              ; preds = %96, %73, %72, %63, %4
  %103 = phi i32 [ 0, %96 ], [ %5, %4 ], [ -3, %63 ], [ -3, %73 ], [ -3, %72 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define internal fastcc i32 @fdt_add_string_(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = getelementptr i8, ptr %3, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr i8, ptr %3, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr i8, ptr %3, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 8
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw i32 %13, 24
  %15 = getelementptr i8, ptr %11, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 16
  %19 = or i32 %18, %14
  %20 = getelementptr i8, ptr %11, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 8
  %24 = or i32 %19, %23
  %25 = getelementptr i8, ptr %11, i32 3
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %24, %27
  %29 = tail call i32 @strlen(ptr noundef %1) #7
  %30 = add i32 %29, 1
  %31 = add i32 %28, %30
  %32 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw i32 %34, 24
  %36 = getelementptr i8, ptr %32, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 16
  %40 = or i32 %39, %35
  %41 = getelementptr i8, ptr %32, i32 2
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 8
  %45 = or i32 %40, %44
  %46 = getelementptr i8, ptr %32, i32 3
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = or i32 %45, %48
  %50 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 9
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
  %68 = add i32 %67, %49
  %69 = load i8, ptr %3, align 1
  %70 = zext i8 %69 to i32
  %71 = shl nuw i32 %70, 24
  %72 = load i8, ptr %5, align 1
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 16
  %75 = or i32 %74, %71
  %76 = load i8, ptr %7, align 1
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 8
  %79 = or i32 %75, %78
  %80 = load i8, ptr %9, align 1
  %81 = zext i8 %80 to i32
  %82 = or i32 %79, %81
  %83 = sub i32 %82, %31
  %84 = icmp ult i32 %83, %68
  br i1 %84, label %101, label %85

85:                                               ; preds = %2
  %86 = zext i8 %6 to i32
  %87 = shl nuw nsw i32 %86, 16
  %88 = zext i8 %4 to i32
  %89 = shl nuw i32 %88, 24
  %90 = or i32 %87, %89
  %91 = zext i8 %8 to i32
  %92 = shl nuw nsw i32 %91, 8
  %93 = or i32 %90, %92
  %94 = zext i8 %10 to i32
  %95 = or i32 %93, %94
  %96 = getelementptr i8, ptr %0, i32 %95
  %97 = sub i32 0, %31
  %98 = getelementptr i8, ptr %96, i32 %97
  %99 = tail call ptr @memcpy(ptr noundef %98, ptr noundef %1, i32 noundef %30) #7
  %100 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  store i32 %100, ptr %11, align 4
  br label %101

101:                                              ; preds = %85, %2
  %102 = phi i32 [ %97, %85 ], [ 0, %2 ]
  ret i32 %102
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_property(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store ptr null, ptr %5, align 4, !annotation !9
  %6 = call i32 @fdt_property_placeholder(ptr noundef %0, ptr noundef %1, i32 noundef %3, ptr noundef nonnull %5) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load ptr, ptr %5, align 4
  %10 = tail call ptr @memcpy(ptr noundef %9, ptr noundef %2, i32 noundef %3) #7
  br label %11

11:                                               ; preds = %8, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_finish(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = tail call fastcc i32 @fdt_sw_probe_struct_(ptr noundef %0) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %150

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @fdt_grab_space_(ptr noundef %0, i32 noundef 4) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %150, label %8

8:                                                ; preds = %5
  store i32 150994944, ptr %6, align 4
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
  %27 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 8
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl nuw i32 %29, 24
  %31 = getelementptr i8, ptr %27, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 16
  %35 = or i32 %34, %30
  %36 = getelementptr i8, ptr %27, i32 2
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 8
  %40 = or i32 %35, %39
  %41 = getelementptr i8, ptr %27, i32 3
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %40, %43
  %45 = sub i32 %26, %44
  %46 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl nuw i32 %48, 24
  %50 = getelementptr i8, ptr %46, i32 1
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 16
  %54 = or i32 %53, %49
  %55 = getelementptr i8, ptr %46, i32 2
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 8
  %59 = or i32 %54, %58
  %60 = getelementptr i8, ptr %46, i32 3
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %59, %62
  %64 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 9
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = shl nuw i32 %66, 24
  %68 = getelementptr i8, ptr %64, i32 1
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 16
  %72 = or i32 %71, %67
  %73 = getelementptr i8, ptr %64, i32 2
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = shl nuw nsw i32 %75, 8
  %77 = or i32 %72, %76
  %78 = getelementptr i8, ptr %64, i32 3
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  %81 = or i32 %77, %80
  %82 = add i32 %81, %63
  %83 = getelementptr i8, ptr %0, i32 %82
  %84 = getelementptr i8, ptr %0, i32 %45
  %85 = tail call ptr @memmove(ptr noundef %83, ptr noundef %84, i32 noundef %44) #7
  %86 = tail call i32 @llvm.bswap.i32(i32 %82) #8
  %87 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  store i32 %86, ptr %87, align 4
  br label %88

88:                                               ; preds = %127, %8
  %89 = phi i32 [ 0, %8 ], [ %128, %127 ]
  %90 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %89, ptr noundef nonnull %2) #7
  switch i32 %90, label %127 [
    i32 9, label %129
    i32 3, label %91
  ]

91:                                               ; preds = %88
  %92 = load i8, ptr %46, align 1
  %93 = zext i8 %92 to i32
  %94 = shl nuw i32 %93, 24
  %95 = load i8, ptr %50, align 1
  %96 = zext i8 %95 to i32
  %97 = shl nuw nsw i32 %96, 16
  %98 = or i32 %97, %94
  %99 = load i8, ptr %55, align 1
  %100 = zext i8 %99 to i32
  %101 = shl nuw nsw i32 %100, 8
  %102 = or i32 %98, %101
  %103 = load i8, ptr %60, align 1
  %104 = zext i8 %103 to i32
  %105 = or i32 %102, %104
  %106 = getelementptr i8, ptr %0, i32 %105
  %107 = getelementptr i8, ptr %106, i32 %89
  %108 = getelementptr inbounds %struct.fdt_property, ptr %107, i32 0, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = call i32 @llvm.bswap.i32(i32 %109)
  %111 = load i8, ptr %27, align 1
  %112 = zext i8 %111 to i32
  %113 = shl nuw i32 %112, 24
  %114 = load i8, ptr %31, align 1
  %115 = zext i8 %114 to i32
  %116 = shl nuw nsw i32 %115, 16
  %117 = or i32 %116, %113
  %118 = load i8, ptr %36, align 1
  %119 = zext i8 %118 to i32
  %120 = shl nuw nsw i32 %119, 8
  %121 = or i32 %117, %120
  %122 = load i8, ptr %41, align 1
  %123 = zext i8 %122 to i32
  %124 = or i32 %121, %123
  %125 = add i32 %124, %110
  %126 = call i32 @llvm.bswap.i32(i32 %125)
  store i32 %126, ptr %108, align 4
  br label %127

127:                                              ; preds = %91, %88
  %128 = load i32, ptr %2, align 4
  br label %88

129:                                              ; preds = %88
  %130 = load i32, ptr %2, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %150, label %132

132:                                              ; preds = %129
  %133 = load i8, ptr %27, align 1
  %134 = zext i8 %133 to i32
  %135 = shl nuw i32 %134, 24
  %136 = load i8, ptr %31, align 1
  %137 = zext i8 %136 to i32
  %138 = shl nuw nsw i32 %137, 16
  %139 = or i32 %138, %135
  %140 = load i8, ptr %36, align 1
  %141 = zext i8 %140 to i32
  %142 = shl nuw nsw i32 %141, 8
  %143 = or i32 %139, %142
  %144 = load i8, ptr %41, align 1
  %145 = zext i8 %144 to i32
  %146 = or i32 %143, %145
  %147 = add i32 %146, %82
  %148 = call i32 @llvm.bswap.i32(i32 %147) #8
  store i32 %148, ptr %9, align 4
  %149 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 6
  store i32 268435456, ptr %149, align 4
  store i32 -302117424, ptr %0, align 4
  br label %150

150:                                              ; preds = %132, %129, %5, %1
  %151 = phi i32 [ 0, %132 ], [ %3, %1 ], [ -3, %5 ], [ %130, %129 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %151
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_next_tag(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @fdt_find_string_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid optsize "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid optsize willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid optsize willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nobuiltin nounwind optsize "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin optsize "no-builtins" }

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
!9 = !{!"auto-init"}
