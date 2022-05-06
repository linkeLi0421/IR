; ModuleID = '/llk/IR/lib/fdt_ro.c_pt.bc'
source_filename = "../lib/fdt_ro.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fdt_reserve_entry = type { i64, i64 }
%struct.fdt_node_header = type { i32, [0 x i8] }
%struct.fdt_property = type { i32, i32, i32, [0 x i8] }

@.str = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/aliases\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden ptr @fdt_get_string(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #6
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %127, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 3
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 %9, 24
  %11 = getelementptr i8, ptr %7, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or i32 %14, %10
  %16 = getelementptr i8, ptr %7, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 8
  %20 = or i32 %15, %19
  %21 = getelementptr i8, ptr %7, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %20, %23
  %25 = add i32 %24, %1
  %26 = icmp ugt i32 %4, %25
  br i1 %26, label %27, label %127

27:                                               ; preds = %6
  %28 = sub i32 %4, %25
  %29 = load i8, ptr %0, align 1
  %30 = zext i8 %29 to i32
  %31 = shl nuw i32 %30, 24
  %32 = getelementptr i8, ptr %0, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 16
  %36 = or i32 %35, %31
  %37 = getelementptr i8, ptr %0, i32 2
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 8
  %41 = or i32 %36, %40
  %42 = getelementptr i8, ptr %0, i32 3
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %41, %44
  switch i32 %45, label %127 [
    i32 -804389139, label %46
    i32 804389138, label %91
  ]

46:                                               ; preds = %27
  %47 = icmp slt i32 %1, 0
  br i1 %47, label %127, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl nuw i32 %51, 24
  %53 = getelementptr i8, ptr %49, i32 1
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = shl nuw nsw i32 %55, 16
  %57 = or i32 %56, %52
  %58 = getelementptr i8, ptr %49, i32 2
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, 8
  %62 = or i32 %57, %61
  %63 = getelementptr i8, ptr %49, i32 3
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %62, %65
  %67 = icmp ugt i32 %66, 16
  br i1 %67, label %68, label %116

68:                                               ; preds = %48
  %69 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 8
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = shl nuw i32 %71, 24
  %73 = getelementptr i8, ptr %69, i32 1
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = shl nuw nsw i32 %75, 16
  %77 = or i32 %76, %72
  %78 = getelementptr i8, ptr %69, i32 2
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  %81 = shl nuw nsw i32 %80, 8
  %82 = or i32 %77, %81
  %83 = getelementptr i8, ptr %69, i32 3
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i32
  %86 = or i32 %82, %85
  %87 = icmp ugt i32 %86, %1
  br i1 %87, label %88, label %127

88:                                               ; preds = %68
  %89 = sub i32 %86, %1
  %90 = tail call i32 @llvm.umin.i32(i32 %89, i32 %28)
  br label %116

91:                                               ; preds = %27
  %92 = sub i32 0, %1
  %93 = icmp sgt i32 %1, -1
  br i1 %93, label %127, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 8
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  %98 = shl nuw i32 %97, 24
  %99 = getelementptr i8, ptr %95, i32 1
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i32
  %102 = shl nuw nsw i32 %101, 16
  %103 = or i32 %102, %98
  %104 = getelementptr i8, ptr %95, i32 2
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = shl nuw nsw i32 %106, 8
  %108 = or i32 %103, %107
  %109 = getelementptr i8, ptr %95, i32 3
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = or i32 %108, %111
  %113 = icmp ult i32 %112, %92
  br i1 %113, label %127, label %114

114:                                              ; preds = %94
  %115 = tail call i32 @llvm.umin.i32(i32 %28, i32 %92)
  br label %116

116:                                              ; preds = %114, %88, %48
  %117 = phi i32 [ %28, %48 ], [ %115, %114 ], [ %90, %88 ]
  %118 = getelementptr i8, ptr %0, i32 %25
  %119 = tail call ptr @memchr(ptr noundef %118, i32 noundef 0, i32 noundef %117) #6
  %120 = icmp eq ptr %119, null
  br i1 %120, label %127, label %121

121:                                              ; preds = %116
  %122 = icmp eq ptr %2, null
  br i1 %122, label %133, label %123

123:                                              ; preds = %121
  %124 = ptrtoint ptr %119 to i32
  %125 = ptrtoint ptr %118 to i32
  %126 = sub i32 %124, %125
  br label %130

127:                                              ; preds = %116, %94, %91, %68, %46, %27, %6, %3
  %128 = phi i32 [ %4, %3 ], [ -4, %6 ], [ -4, %46 ], [ -4, %68 ], [ -8, %116 ], [ -4, %94 ], [ -4, %91 ], [ -13, %27 ]
  %129 = icmp eq ptr %2, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %127, %123
  %131 = phi i32 [ %126, %123 ], [ %128, %127 ]
  %132 = phi ptr [ %118, %123 ], [ null, %127 ]
  store i32 %131, ptr %2, align 4
  br label %133

133:                                              ; preds = %130, %127, %121
  %134 = phi ptr [ %118, %121 ], [ null, %127 ], [ %132, %130 ]
  ret ptr %134
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_ro_probe_(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden ptr @fdt_string(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @fdt_get_string(ptr noundef %0, i32 noundef %1, ptr noundef null) #7
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_find_max_phandle(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @fdt_next_node(ptr noundef %0, i32 noundef -1, ptr noundef null) #6
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %9, %2
  %6 = phi i32 [ 0, %2 ], [ %13, %9 ]
  %7 = phi i32 [ %3, %2 ], [ %14, %9 ]
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %16, label %19

9:                                                ; preds = %9, %2
  %10 = phi i32 [ %14, %9 ], [ %3, %2 ]
  %11 = phi i32 [ %13, %9 ], [ 0, %2 ]
  %12 = tail call i32 @fdt_get_phandle(ptr noundef %0, i32 noundef %10) #7
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 %11)
  %14 = tail call i32 @fdt_next_node(ptr noundef %0, i32 noundef %10, ptr noundef null) #6
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %5, label %9

16:                                               ; preds = %5
  %17 = icmp eq ptr %1, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  store i32 %6, ptr %1, align 4
  br label %19

19:                                               ; preds = %18, %16, %5
  %20 = phi i32 [ 0, %18 ], [ 0, %16 ], [ %7, %5 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_next_node(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_get_phandle(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = tail call i32 @strlen(ptr noundef nonnull @.str) #6
  %5 = call ptr @fdt_getprop_namelen(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str, i32 noundef %4, ptr noundef nonnull %3) #6
  %6 = icmp eq ptr %5, null
  %7 = load i32, ptr %3, align 4
  %8 = icmp ne i32 %7, 4
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = call i32 @strlen(ptr noundef nonnull @.str.1) #6
  %12 = call ptr @fdt_getprop_namelen(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.1, i32 noundef %11, ptr noundef nonnull %3) #6
  %13 = icmp eq ptr %12, null
  %14 = load i32, ptr %3, align 4
  %15 = icmp ne i32 %14, 4
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %10, %2
  %18 = phi ptr [ %12, %10 ], [ %5, %2 ]
  %19 = load i32, ptr %18, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19) #8
  br label %21

21:                                               ; preds = %17, %10
  %22 = phi i32 [ %20, %17 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_generate_phandle(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = call i32 @fdt_find_max_phandle(ptr noundef %0, ptr noundef nonnull %3) #7
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %3, align 4
  %8 = icmp eq i32 %7, -2
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = icmp eq ptr %1, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  %12 = add i32 %7, 1
  store i32 %12, ptr %1, align 4
  br label %13

13:                                               ; preds = %11, %9, %6, %2
  %14 = phi i32 [ %4, %2 ], [ -17, %6 ], [ 0, %11 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_get_mem_rsv(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #6
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @fdt_mem_rsv(ptr noundef %0, i32 noundef %1) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load i64, ptr %8, align 8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11) #8
  store i64 %12, ptr %2, align 8
  %13 = getelementptr inbounds %struct.fdt_reserve_entry, ptr %8, i32 0, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = tail call i64 @llvm.bswap.i64(i64 %14) #8
  store i64 %15, ptr %3, align 8
  br label %16

16:                                               ; preds = %10, %7, %4
  %17 = phi i32 [ 0, %10 ], [ %5, %4 ], [ -4, %7 ]
  ret i32 %17
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly willreturn uwtable(sync)
define internal fastcc ptr @fdt_mem_rsv(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = shl i32 %1, 4
  %4 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 4
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
  %22 = add i32 %21, %3
  %23 = icmp ult i32 %22, %21
  br i1 %23, label %48, label %24

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
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
  %43 = add i32 %42, -16
  %44 = icmp ugt i32 %22, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %24
  %46 = getelementptr i8, ptr %0, i32 %21
  %47 = getelementptr %struct.fdt_reserve_entry, ptr %46, i32 %1
  br label %48

48:                                               ; preds = %45, %24, %2
  %49 = phi ptr [ %47, %45 ], [ null, %2 ], [ null, %24 ]
  ret ptr %49
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid optsize readonly uwtable(sync)
define hidden i32 @fdt_num_mem_rsv(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = tail call fastcc ptr @fdt_mem_rsv(ptr noundef %0, i32 noundef 0) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %10, %1
  %5 = phi ptr [ %12, %10 ], [ %2, %1 ]
  %6 = phi i32 [ %11, %10 ], [ 0, %1 ]
  %7 = getelementptr inbounds %struct.fdt_reserve_entry, ptr %5, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = add i32 %6, 1
  %12 = tail call fastcc ptr @fdt_mem_rsv(ptr noundef %0, i32 noundef %11) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4

14:                                               ; preds = %10, %4, %1
  %15 = phi i32 [ -8, %1 ], [ -8, %10 ], [ %6, %4 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_subnode_offset_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  %7 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %4
  store i32 0, ptr %6, align 4
  %10 = icmp sgt i32 %1, -1
  br i1 %10, label %11, label %45

11:                                               ; preds = %36, %9
  %12 = phi i32 [ %37, %36 ], [ %1, %9 ]
  %13 = phi i32 [ %38, %36 ], [ 0, %9 ]
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !9
  %16 = call ptr @fdt_get_name(ptr noundef %0, i32 noundef %12, ptr noundef nonnull %5) #6
  %17 = icmp eq ptr %16, null
  %18 = load i32, ptr %5, align 4
  %19 = icmp slt i32 %18, %3
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %34, label %21

21:                                               ; preds = %15
  %22 = call i32 @memcmp(ptr noundef nonnull %16, ptr noundef %2, i32 noundef %3) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = getelementptr i8, ptr %16, i32 %3
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = call ptr @memchr(ptr noundef %2, i32 noundef 64, i32 noundef %3) #6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i8, ptr %25, align 1
  %33 = icmp eq i8 %32, 64
  br i1 %33, label %35, label %34

34:                                               ; preds = %31, %28, %21, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %36

35:                                               ; preds = %31, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %45

36:                                               ; preds = %34, %11
  %37 = call i32 @fdt_next_node(ptr noundef %0, i32 noundef %12, ptr noundef nonnull %6) #6
  %38 = load i32, ptr %6, align 4
  %39 = icmp sgt i32 %37, -1
  %40 = icmp sgt i32 %38, -1
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %11, label %42

42:                                               ; preds = %36
  %43 = icmp sgt i32 %38, -1
  %44 = select i1 %43, i32 %37, i32 -1
  br label %45

45:                                               ; preds = %42, %35, %9, %4
  %46 = phi i32 [ %7, %4 ], [ %12, %35 ], [ %1, %9 ], [ %44, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_subnode_offset(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @strlen(ptr noundef %2) #6
  %5 = tail call i32 @fdt_subnode_offset_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %4) #7
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_path_offset_namelen(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %1, i32 %2
  %5 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #6
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %47, label %7

7:                                                ; preds = %3
  %8 = load i8, ptr %1, align 1
  %9 = icmp eq i8 %8, 47
  br i1 %9, label %22, label %10

10:                                               ; preds = %7
  %11 = ptrtoint ptr %1 to i32
  %12 = tail call ptr @memchr(ptr noundef %1, i32 noundef 47, i32 noundef %2) #6
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr %4, ptr %12
  %15 = ptrtoint ptr %14 to i32
  %16 = sub i32 %15, %11
  %17 = tail call ptr @fdt_get_alias_namelen(ptr noundef %0, ptr noundef %1, i32 noundef %16) #7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %47, label %19

19:                                               ; preds = %10
  %20 = tail call i32 @strlen(ptr noundef nonnull %17) #6
  %21 = tail call i32 @fdt_path_offset_namelen(ptr noundef %0, ptr noundef nonnull %17, i32 noundef %20) #6
  br label %22

22:                                               ; preds = %19, %7
  %23 = phi ptr [ %14, %19 ], [ %1, %7 ]
  %24 = phi i32 [ %21, %19 ], [ 0, %7 ]
  %25 = ptrtoint ptr %4 to i32
  br label %26

26:                                               ; preds = %37, %22
  %27 = phi ptr [ %23, %22 ], [ %42, %37 ]
  %28 = phi i32 [ %24, %22 ], [ %45, %37 ]
  %29 = icmp ult ptr %27, %4
  br i1 %29, label %30, label %47

30:                                               ; preds = %34, %26
  %31 = phi ptr [ %35, %34 ], [ %27, %26 ]
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 47
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %31, i32 1
  %36 = icmp eq ptr %35, %4
  br i1 %36, label %47, label %30

37:                                               ; preds = %30
  %38 = ptrtoint ptr %31 to i32
  %39 = sub i32 %25, %38
  %40 = tail call ptr @memchr(ptr noundef %31, i32 noundef 47, i32 noundef %39) #6
  %41 = icmp eq ptr %40, null
  %42 = select i1 %41, ptr %4, ptr %40
  %43 = ptrtoint ptr %42 to i32
  %44 = sub i32 %43, %38
  %45 = tail call i32 @fdt_subnode_offset_namelen(ptr noundef %0, i32 noundef %28, ptr noundef %31, i32 noundef %44) #7
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %26

47:                                               ; preds = %37, %34, %26, %10, %3
  %48 = phi i32 [ %5, %3 ], [ -5, %10 ], [ %28, %34 ], [ %28, %26 ], [ %45, %37 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden ptr @fdt_get_alias_namelen(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @strlen(ptr noundef nonnull @.str.2) #6
  %5 = tail call i32 @fdt_path_offset_namelen(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %4) #6
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @fdt_getprop_namelen(ptr noundef %0, i32 noundef %5, ptr noundef %1, i32 noundef %2, ptr noundef null) #7
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_path_offset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @strlen(ptr noundef %1) #6
  %4 = tail call i32 @fdt_path_offset_namelen(ptr noundef %0, ptr noundef %1, i32 noundef %3) #7
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden ptr @fdt_get_name(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
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
  %22 = getelementptr i8, ptr %0, i32 %21
  %23 = getelementptr i8, ptr %22, i32 %1
  %24 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #6
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %59, label %26

26:                                               ; preds = %3
  %27 = tail call i32 @fdt_check_node_offset_(ptr noundef %0, i32 noundef %1) #6
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %59, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.fdt_node_header, ptr %23, i32 0, i32 1
  %31 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw i32 %33, 24
  %35 = getelementptr i8, ptr %31, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 16
  %39 = or i32 %38, %34
  %40 = getelementptr i8, ptr %31, i32 2
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 8
  %44 = or i32 %39, %43
  %45 = getelementptr i8, ptr %31, i32 3
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %44, %47
  %49 = icmp ult i32 %48, 16
  br i1 %49, label %50, label %54

50:                                               ; preds = %29
  %51 = tail call ptr @strrchr(ptr noundef %30, i32 noundef 47) #6
  %52 = icmp eq ptr %51, null
  %53 = getelementptr i8, ptr %51, i32 1
  br i1 %52, label %59, label %54

54:                                               ; preds = %50, %29
  %55 = phi ptr [ %53, %50 ], [ %30, %29 ]
  %56 = icmp eq ptr %2, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  %58 = tail call i32 @strlen(ptr noundef %55) #6
  br label %62

59:                                               ; preds = %50, %26, %3
  %60 = phi i32 [ %24, %3 ], [ %27, %26 ], [ -11, %50 ]
  %61 = icmp eq ptr %2, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %59, %57
  %63 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %64 = phi ptr [ %55, %57 ], [ null, %59 ]
  store i32 %63, ptr %2, align 4
  br label %65

65:                                               ; preds = %62, %59, %54
  %66 = phi ptr [ %55, %54 ], [ null, %59 ], [ %64, %62 ]
  ret ptr %66
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_check_node_offset_(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_first_property_offset(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @fdt_check_node_offset_(ptr noundef %0, i32 noundef %1) #6
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @nextprop_(ptr noundef %0, i32 noundef %3) #7
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ %3, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define internal fastcc i32 @nextprop_(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !9
  br label %4

4:                                                ; preds = %11, %2
  %5 = phi i32 [ %1, %2 ], [ %12, %11 ]
  %6 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %5, ptr noundef nonnull %3) #6
  switch i32 %6, label %11 [
    i32 9, label %7
    i32 3, label %14
  ]

7:                                                ; preds = %4
  %8 = load i32, ptr %3, align 4
  %9 = icmp sgt i32 %8, -1
  %10 = select i1 %9, i32 -11, i32 %8
  br label %14

11:                                               ; preds = %4
  %12 = load i32, ptr %3, align 4
  %13 = icmp eq i32 %6, 4
  br i1 %13, label %4, label %14

14:                                               ; preds = %11, %7, %4
  %15 = phi i32 [ %10, %7 ], [ -1, %11 ], [ %5, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_next_property_offset(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @fdt_check_prop_offset_(ptr noundef %0, i32 noundef %1) #6
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @nextprop_(ptr noundef %0, i32 noundef %3) #7
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ %3, %2 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_check_prop_offset_(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden ptr @fdt_get_property_by_offset(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
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
  %22 = icmp ult i32 %21, 16
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = icmp eq ptr %2, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  store i32 -10, ptr %2, align 4
  br label %28

26:                                               ; preds = %3
  %27 = tail call fastcc ptr @fdt_get_property_by_offset_(ptr noundef %0, i32 noundef %1, ptr noundef %2) #7
  br label %28

28:                                               ; preds = %26, %25, %23
  %29 = phi ptr [ %27, %26 ], [ null, %25 ], [ null, %23 ]
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define internal fastcc ptr @fdt_get_property_by_offset_(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call i32 @fdt_check_prop_offset_(ptr noundef %0, i32 noundef %1) #6
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = icmp eq ptr %2, null
  br i1 %7, label %37, label %34

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
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
  %27 = getelementptr i8, ptr %0, i32 %26
  %28 = getelementptr i8, ptr %27, i32 %1
  %29 = icmp eq ptr %2, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %8
  %31 = getelementptr inbounds %struct.fdt_property, ptr %28, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  br label %34

34:                                               ; preds = %30, %6
  %35 = phi i32 [ %33, %30 ], [ %4, %6 ]
  %36 = phi ptr [ %28, %30 ], [ null, %6 ]
  store i32 %35, ptr %2, align 4
  br label %37

37:                                               ; preds = %34, %8, %6
  %38 = phi ptr [ null, %6 ], [ %28, %8 ], [ %36, %34 ]
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden ptr @fdt_get_property_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 %8, 24
  %10 = getelementptr i8, ptr %6, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 16
  %14 = or i32 %13, %9
  %15 = getelementptr i8, ptr %6, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 8
  %19 = or i32 %14, %18
  %20 = getelementptr i8, ptr %6, i32 3
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %19, %22
  %24 = icmp ult i32 %23, 16
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = icmp eq ptr %4, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  store i32 -10, ptr %4, align 4
  br label %30

28:                                               ; preds = %5
  %29 = tail call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef null) #7
  br label %30

30:                                               ; preds = %28, %27, %25
  %31 = phi ptr [ %29, %28 ], [ null, %27 ], [ null, %25 ]
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define internal fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef writeonly %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = tail call i32 @fdt_first_property_offset(ptr noundef %0, i32 noundef %1) #7
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %33

10:                                               ; preds = %30, %6
  %11 = phi i32 [ %31, %30 ], [ %8, %6 ]
  %12 = call fastcc ptr @fdt_get_property_by_offset_(ptr noundef %0, i32 noundef %11, ptr noundef %4) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.fdt_property, ptr %12, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !9
  %18 = call ptr @fdt_get_string(ptr noundef %0, i32 noundef %17, ptr noundef nonnull %7) #6
  %19 = icmp ne ptr %18, null
  %20 = load i32, ptr %7, align 4
  %21 = icmp eq i32 %20, %3
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  br label %30

24:                                               ; preds = %14
  %25 = call i32 @memcmp(ptr noundef nonnull %18, ptr noundef %2, i32 noundef %3) #6
  %26 = icmp eq i32 %25, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = icmp eq ptr %5, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %27
  store i32 %11, ptr %5, align 4
  br label %37

30:                                               ; preds = %24, %23
  %31 = call i32 @fdt_next_property_offset(ptr noundef %0, i32 noundef %11) #7
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %10, label %33

33:                                               ; preds = %30, %10, %6
  %34 = phi i32 [ %8, %6 ], [ -13, %10 ], [ %31, %30 ]
  %35 = icmp eq ptr %4, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 %34, ptr %4, align 4
  br label %37

37:                                               ; preds = %36, %33, %29, %27
  %38 = phi ptr [ null, %36 ], [ null, %33 ], [ %12, %29 ], [ %12, %27 ]
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden ptr @fdt_get_property(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @strlen(ptr noundef %2) #6
  %6 = tail call ptr @fdt_get_property_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %5, ptr noundef %3) #7
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden ptr @fdt_getprop_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %43, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw i32 %12, 24
  %14 = getelementptr i8, ptr %10, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 16
  %18 = or i32 %17, %13
  %19 = getelementptr i8, ptr %10, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 8
  %23 = or i32 %18, %22
  %24 = getelementptr i8, ptr %10, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %23, %26
  %28 = icmp ult i32 %27, 16
  br i1 %28, label %29, label %41

29:                                               ; preds = %9
  %30 = load i32, ptr %6, align 4
  %31 = add i32 %30, 4
  %32 = and i32 %31, 7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.fdt_property, ptr %7, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36) #8
  %38 = icmp ugt i32 %37, 7
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = getelementptr %struct.fdt_property, ptr %7, i32 1, i32 1
  br label %43

41:                                               ; preds = %34, %29, %9
  %42 = getelementptr inbounds %struct.fdt_property, ptr %7, i32 0, i32 3
  br label %43

43:                                               ; preds = %41, %39, %5
  %44 = phi ptr [ %42, %41 ], [ %40, %39 ], [ null, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  ret ptr %44
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden ptr @fdt_getprop_by_offset(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = tail call fastcc ptr @fdt_get_property_by_offset_(ptr noundef %0, i32 noundef %1, ptr noundef %3) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %55, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %2, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !9
  %11 = getelementptr inbounds %struct.fdt_property, ptr %6, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  %14 = call ptr @fdt_get_string(ptr noundef %0, i32 noundef %13, ptr noundef nonnull %5) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = icmp eq ptr %3, null
  br i1 %17, label %54, label %18

18:                                               ; preds = %16
  %19 = load i32, ptr %5, align 4
  store i32 %19, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %55

20:                                               ; preds = %10
  store ptr %14, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %21

21:                                               ; preds = %20, %8
  %22 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = shl nuw i32 %24, 24
  %26 = getelementptr i8, ptr %22, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 16
  %30 = or i32 %29, %25
  %31 = getelementptr i8, ptr %22, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = or i32 %30, %34
  %36 = getelementptr i8, ptr %22, i32 3
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %35, %38
  %40 = icmp ult i32 %39, 16
  br i1 %40, label %41, label %52

41:                                               ; preds = %21
  %42 = add i32 %1, 4
  %43 = and i32 %42, 7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.fdt_property, ptr %6, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = call i32 @llvm.bswap.i32(i32 %47) #8
  %49 = icmp ugt i32 %48, 7
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = getelementptr %struct.fdt_property, ptr %6, i32 1, i32 1
  br label %55

52:                                               ; preds = %45, %41, %21
  %53 = getelementptr inbounds %struct.fdt_property, ptr %6, i32 0, i32 3
  br label %55

54:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %55

55:                                               ; preds = %54, %52, %50, %18, %4
  %56 = phi ptr [ %53, %52 ], [ %51, %50 ], [ null, %4 ], [ null, %54 ], [ null, %18 ]
  ret ptr %56
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden ptr @fdt_getprop(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @strlen(ptr noundef %2) #6
  %6 = tail call ptr @fdt_getprop_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %5, ptr noundef %3) #7
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden ptr @fdt_get_alias(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @strlen(ptr noundef %1) #6
  %4 = tail call ptr @fdt_get_alias_namelen(ptr noundef %0, ptr noundef %1, i32 noundef %3) #7
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_get_path(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %77, label %9

9:                                                ; preds = %4
  %10 = icmp slt i32 %3, 2
  br i1 %10, label %77, label %11

11:                                               ; preds = %9
  store i32 0, ptr %5, align 4
  %12 = icmp sgt i32 %1, -1
  br i1 %12, label %13, label %77

13:                                               ; preds = %70, %11
  %14 = phi i32 [ %71, %70 ], [ 0, %11 ]
  %15 = phi i32 [ %66, %70 ], [ 0, %11 ]
  %16 = phi i32 [ %54, %70 ], [ 0, %11 ]
  %17 = phi i32 [ %53, %70 ], [ 0, %11 ]
  %18 = icmp sgt i32 %17, %14
  br i1 %18, label %19, label %32

19:                                               ; preds = %29, %13
  %20 = phi i32 [ %24, %29 ], [ %16, %13 ]
  %21 = phi i32 [ %30, %29 ], [ %17, %13 ]
  br label %22

22:                                               ; preds = %22, %19
  %23 = phi i32 [ %24, %22 ], [ %20, %19 ]
  %24 = add i32 %23, -1
  %25 = add i32 %23, -2
  %26 = getelementptr i8, ptr %2, i32 %25
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 47
  br i1 %28, label %29, label %22

29:                                               ; preds = %22
  %30 = add nsw i32 %21, -1
  %31 = icmp sgt i32 %30, %14
  br i1 %31, label %19, label %34

32:                                               ; preds = %13
  %33 = icmp slt i32 %17, %14
  br i1 %33, label %52, label %34

34:                                               ; preds = %32, %29
  %35 = phi i32 [ %16, %32 ], [ %24, %29 ]
  %36 = phi i32 [ %17, %32 ], [ %14, %29 ]
  %37 = call ptr @fdt_get_name(ptr noundef %0, i32 noundef %15, ptr noundef nonnull %6) #7
  %38 = icmp eq ptr %37, null
  %39 = load i32, ptr %6, align 4
  br i1 %38, label %77, label %40

40:                                               ; preds = %34
  %41 = add i32 %35, 1
  %42 = add i32 %41, %39
  %43 = icmp sgt i32 %42, %3
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %2, i32 %35
  %46 = call ptr @memcpy(ptr noundef %45, ptr noundef nonnull %37, i32 noundef %39) #6
  %47 = load i32, ptr %6, align 4
  %48 = add i32 %47, %35
  %49 = add i32 %48, 1
  %50 = getelementptr i8, ptr %2, i32 %48
  store i8 47, ptr %50, align 1
  %51 = add i32 %36, 1
  br label %52

52:                                               ; preds = %44, %40, %32
  %53 = phi i32 [ %51, %44 ], [ %36, %40 ], [ %17, %32 ]
  %54 = phi i32 [ %49, %44 ], [ %35, %40 ], [ %16, %32 ]
  %55 = icmp eq i32 %15, %1
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i32, ptr %5, align 4
  %58 = add i32 %57, 1
  %59 = icmp slt i32 %53, %58
  br i1 %59, label %77, label %60

60:                                               ; preds = %56
  %61 = icmp sgt i32 %54, 1
  %62 = sext i1 %61 to i32
  %63 = add i32 %54, %62
  %64 = getelementptr i8, ptr %2, i32 %63
  store i8 0, ptr %64, align 1
  br label %77

65:                                               ; preds = %52
  %66 = call i32 @fdt_next_node(ptr noundef %0, i32 noundef %15, ptr noundef nonnull %5) #6
  %67 = icmp sgt i32 %66, -1
  %68 = icmp sle i32 %66, %1
  %69 = and i1 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, ptr %5, align 4
  br label %13

72:                                               ; preds = %65
  %73 = icmp sgt i32 %66, -2
  br i1 %73, label %77, label %74

74:                                               ; preds = %72
  %75 = icmp eq i32 %66, -4
  %76 = select i1 %75, i32 -11, i32 %66
  br label %77

77:                                               ; preds = %74, %72, %60, %56, %34, %11, %9, %4
  %78 = phi i32 [ 0, %60 ], [ %7, %4 ], [ -3, %9 ], [ -3, %56 ], [ -4, %72 ], [ %76, %74 ], [ -4, %11 ], [ %39, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_supernode_atdepth_offset(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %6 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #6
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %4
  %9 = icmp slt i32 %2, 0
  br i1 %9, label %41, label %10

10:                                               ; preds = %8
  store i32 0, ptr %5, align 4
  %11 = icmp sgt i32 %1, -1
  br i1 %11, label %12, label %41

12:                                               ; preds = %10
  %13 = icmp eq i32 %2, 0
  %14 = select i1 %13, i32 0, i32 -13
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %31, %12
  %17 = phi i32 [ 0, %12 ], [ %32, %31 ]
  %18 = phi i32 [ %14, %12 ], [ %34, %31 ]
  %19 = icmp eq ptr %3, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 %17, ptr %3, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = icmp slt i32 %17, %2
  %23 = select i1 %22, i32 -1, i32 %18
  br label %41

24:                                               ; preds = %31, %12
  %25 = phi i32 [ %34, %31 ], [ %14, %12 ]
  %26 = phi i32 [ %27, %31 ], [ 0, %12 ]
  %27 = call i32 @fdt_next_node(ptr noundef %0, i32 noundef %26, ptr noundef nonnull %5) #6
  %28 = icmp sgt i32 %27, -1
  %29 = icmp sle i32 %27, %1
  %30 = and i1 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32, ptr %5, align 4
  %33 = icmp eq i32 %32, %2
  %34 = select i1 %33, i32 %27, i32 %25
  %35 = icmp eq i32 %27, %1
  br i1 %35, label %16, label %24

36:                                               ; preds = %24
  %37 = icmp sgt i32 %27, -2
  br i1 %37, label %41, label %38

38:                                               ; preds = %36
  %39 = icmp eq i32 %27, -4
  %40 = select i1 %39, i32 -11, i32 %27
  br label %41

41:                                               ; preds = %38, %36, %21, %10, %8, %4
  %42 = phi i32 [ %6, %4 ], [ -1, %8 ], [ %23, %21 ], [ -4, %36 ], [ %40, %38 ], [ -4, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_node_depth(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = call i32 @fdt_supernode_atdepth_offset(ptr noundef %0, i32 noundef %1, i32 noundef 0, ptr noundef nonnull %3) #7
  %5 = icmp eq i32 %4, 0
  %6 = icmp slt i32 %4, 0
  %7 = select i1 %6, i32 %4, i32 -13
  %8 = load i32, ptr %3, align 4
  %9 = select i1 %5, i32 %8, i32 %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_parent_offset(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = call i32 @fdt_supernode_atdepth_offset(ptr noundef %0, i32 noundef %1, i32 noundef 0, ptr noundef nonnull %3) #6
  %5 = icmp eq i32 %4, 0
  %6 = icmp slt i32 %4, 0
  %7 = select i1 %6, i32 %4, i32 -13
  %8 = load i32, ptr %3, align 4
  %9 = select i1 %5, i32 %8, i32 %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = add nsw i32 %9, -1
  %13 = call i32 @fdt_supernode_atdepth_offset(ptr noundef %0, i32 noundef %1, i32 noundef %12, ptr noundef null) #7
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i32 [ %13, %11 ], [ %9, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_node_offset_by_prop_value(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @fdt_next_node(ptr noundef %0, i32 noundef %1, ptr noundef null) #6
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %26

12:                                               ; preds = %23, %9
  %13 = phi i32 [ %24, %23 ], [ %10, %9 ]
  %14 = call i32 @strlen(ptr noundef %2) #6
  %15 = call ptr @fdt_getprop_namelen(ptr noundef %0, i32 noundef %13, ptr noundef %2, i32 noundef %14, ptr noundef nonnull %6) #6
  %16 = icmp ne ptr %15, null
  %17 = load i32, ptr %6, align 4
  %18 = icmp eq i32 %17, %4
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = call i32 @memcmp(ptr noundef nonnull %15, ptr noundef %3, i32 noundef %4) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20, %12
  %24 = call i32 @fdt_next_node(ptr noundef %0, i32 noundef %13, ptr noundef null) #6
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %12, label %26

26:                                               ; preds = %23, %20, %9, %5
  %27 = phi i32 [ %7, %5 ], [ %10, %9 ], [ %13, %20 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @memcmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_node_offset_by_phandle(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, 1
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #6
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @fdt_next_node(ptr noundef %0, i32 noundef -1, ptr noundef null) #6
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %18

11:                                               ; preds = %15, %8
  %12 = phi i32 [ %16, %15 ], [ %9, %8 ]
  %13 = tail call i32 @fdt_get_phandle(ptr noundef %0, i32 noundef %12) #7
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @fdt_next_node(ptr noundef %0, i32 noundef %12, ptr noundef null) #6
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %11, label %18

18:                                               ; preds = %15, %11, %8, %5, %2
  %19 = phi i32 [ %6, %5 ], [ -6, %2 ], [ %9, %8 ], [ %12, %11 ], [ %16, %15 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_stringlist_contains(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @strlen(ptr noundef %2) #6
  %5 = add i32 %4, 1
  %6 = icmp sgt i32 %4, %1
  br i1 %6, label %23, label %7

7:                                                ; preds = %15, %3
  %8 = phi i32 [ %20, %15 ], [ %1, %3 ]
  %9 = phi ptr [ %21, %15 ], [ %0, %3 ]
  %10 = tail call i32 @memcmp(ptr noundef %2, ptr noundef %9, i32 noundef %5) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %7
  %13 = tail call ptr @memchr(ptr noundef %9, i32 noundef 0, i32 noundef %8) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = ptrtoint ptr %13 to i32
  %17 = ptrtoint ptr %9 to i32
  %18 = xor i32 %16, -1
  %19 = add i32 %8, %17
  %20 = add i32 %19, %18
  %21 = getelementptr i8, ptr %13, i32 1
  %22 = icmp slt i32 %20, %4
  br i1 %22, label %23, label %7

23:                                               ; preds = %15, %12, %7, %3
  %24 = phi i32 [ 0, %3 ], [ 0, %15 ], [ 0, %12 ], [ 1, %7 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_stringlist_count(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = tail call i32 @strlen(ptr noundef %2) #6
  %6 = call ptr @fdt_getprop_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %5, ptr noundef nonnull %4) #6
  %7 = icmp eq ptr %6, null
  %8 = load i32, ptr %4, align 4
  br i1 %7, label %25, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %6, i32 %8
  %11 = ptrtoint ptr %10 to i32
  %12 = icmp ult ptr %6, %10
  br i1 %12, label %13, label %25

13:                                               ; preds = %22, %9
  %14 = phi i32 [ %23, %22 ], [ 0, %9 ]
  %15 = phi ptr [ %20, %22 ], [ %6, %9 ]
  %16 = ptrtoint ptr %15 to i32
  %17 = sub i32 %11, %16
  %18 = call i32 @strnlen(ptr noundef %15, i32 noundef %17) #6
  %19 = add i32 %18, 1
  store i32 %19, ptr %4, align 4
  %20 = getelementptr i8, ptr %15, i32 %19
  %21 = icmp ugt ptr %20, %10
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = add i32 %14, 1
  %24 = icmp ult ptr %20, %10
  br i1 %24, label %13, label %25

25:                                               ; preds = %22, %13, %9, %3
  %26 = phi i32 [ 0, %9 ], [ %8, %3 ], [ -15, %13 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @strnlen(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_stringlist_search(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = tail call i32 @strlen(ptr noundef %2) #6
  %7 = call ptr @fdt_getprop_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %6, ptr noundef nonnull %5) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = load i32, ptr %5, align 4
  br label %38

11:                                               ; preds = %4
  %12 = call i32 @strlen(ptr noundef %3) #6
  %13 = load i32, ptr %5, align 4
  %14 = getelementptr i8, ptr %7, i32 %13
  %15 = ptrtoint ptr %14 to i32
  %16 = icmp ult ptr %7, %14
  br i1 %16, label %17, label %38

17:                                               ; preds = %33, %11
  %18 = phi ptr [ %35, %33 ], [ %7, %11 ]
  %19 = phi i32 [ %36, %33 ], [ 0, %11 ]
  %20 = ptrtoint ptr %18 to i32
  %21 = sub i32 %15, %20
  %22 = call i32 @strnlen(ptr noundef %18, i32 noundef %21) #6
  %23 = add i32 %22, 1
  store i32 %23, ptr %5, align 4
  %24 = getelementptr i8, ptr %18, i32 %23
  %25 = icmp ugt ptr %24, %14
  br i1 %25, label %38, label %26

26:                                               ; preds = %17
  %27 = icmp eq i32 %22, %12
  br i1 %27, label %28, label %33

28:                                               ; preds = %26
  %29 = call i32 @memcmp(ptr noundef %18, ptr noundef %3, i32 noundef %23) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = load i32, ptr %5, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = phi i32 [ %32, %31 ], [ %23, %26 ]
  %35 = getelementptr i8, ptr %18, i32 %34
  %36 = add i32 %19, 1
  %37 = icmp ult ptr %35, %14
  br i1 %37, label %17, label %38

38:                                               ; preds = %33, %28, %17, %11, %9
  %39 = phi i32 [ %10, %9 ], [ -1, %11 ], [ -15, %17 ], [ %19, %28 ], [ -1, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden ptr @fdt_stringlist_get(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = tail call i32 @strlen(ptr noundef %2) #6
  %8 = call ptr @fdt_getprop_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %7, ptr noundef nonnull %6) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = icmp eq ptr %4, null
  br i1 %11, label %43, label %12

12:                                               ; preds = %10
  %13 = load i32, ptr %6, align 4
  br label %40

14:                                               ; preds = %5
  %15 = load i32, ptr %6, align 4
  %16 = getelementptr i8, ptr %8, i32 %15
  %17 = icmp ult ptr %8, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = ptrtoint ptr %16 to i32
  br label %23

20:                                               ; preds = %34
  %21 = add i32 %25, -1
  %22 = icmp ult ptr %30, %16
  br i1 %22, label %23, label %38

23:                                               ; preds = %20, %18
  %24 = phi ptr [ %8, %18 ], [ %30, %20 ]
  %25 = phi i32 [ %3, %18 ], [ %21, %20 ]
  %26 = ptrtoint ptr %24 to i32
  %27 = sub i32 %19, %26
  %28 = call i32 @strnlen(ptr noundef %24, i32 noundef %27) #6
  %29 = add i32 %28, 1
  store i32 %29, ptr %6, align 4
  %30 = getelementptr i8, ptr %24, i32 %29
  %31 = icmp ugt ptr %30, %16
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = icmp eq ptr %4, null
  br i1 %33, label %43, label %40

34:                                               ; preds = %23
  %35 = icmp eq i32 %25, 0
  br i1 %35, label %36, label %20

36:                                               ; preds = %34
  %37 = icmp eq ptr %4, null
  br i1 %37, label %43, label %40

38:                                               ; preds = %20, %14
  %39 = icmp eq ptr %4, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %38, %36, %32, %12
  %41 = phi i32 [ %13, %12 ], [ -15, %32 ], [ %28, %36 ], [ -1, %38 ]
  %42 = phi ptr [ null, %12 ], [ null, %32 ], [ %24, %36 ], [ null, %38 ]
  store i32 %41, ptr %4, align 4
  br label %43

43:                                               ; preds = %40, %38, %36, %32, %10
  %44 = phi ptr [ null, %10 ], [ null, %32 ], [ %24, %36 ], [ null, %38 ], [ %42, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  ret ptr %44
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_node_check_compatible(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = tail call i32 @strlen(ptr noundef nonnull @.str.3) #6
  %6 = call ptr @fdt_getprop_namelen(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.3, i32 noundef %5, ptr noundef nonnull %4) #6
  %7 = icmp eq ptr %6, null
  %8 = load i32, ptr %4, align 4
  br i1 %7, label %13, label %9

9:                                                ; preds = %3
  %10 = call i32 @fdt_stringlist_contains(ptr noundef nonnull %6, i32 noundef %8, ptr noundef %2) #7
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi i32 [ %12, %9 ], [ %8, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_node_offset_by_compatible(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #6
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @fdt_next_node(ptr noundef %0, i32 noundef %1, ptr noundef null) #6
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %18

9:                                                ; preds = %15, %6
  %10 = phi i32 [ %16, %15 ], [ %7, %6 ]
  %11 = tail call i32 @fdt_node_check_compatible(ptr noundef %0, i32 noundef %10, ptr noundef %2) #7
  %12 = icmp slt i32 %11, -1
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = tail call i32 @fdt_next_node(ptr noundef %0, i32 noundef %10, ptr noundef null) #6
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %9, label %18

18:                                               ; preds = %15, %13, %9, %6, %3
  %19 = phi i32 [ %4, %3 ], [ %7, %6 ], [ %11, %9 ], [ %10, %13 ], [ %16, %15 ]
  ret i32 %19
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_next_tag(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid optsize "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid optsize readonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nobuiltin nounwind optsize "no-builtins" }
attributes #7 = { nobuiltin optsize "no-builtins" }
attributes #8 = { nounwind }

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
