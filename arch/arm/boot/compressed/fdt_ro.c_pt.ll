; ModuleID = '/llk/IR/arch/arm/boot/compressed/fdt_ro.c_pt.bc'
source_filename = "../arch/arm/boot/compressed/fdt_ro.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fdt_property = type { i32, i32, i32, [0 x i8] }
%struct.fdt_reserve_entry = type { i64, i64 }
%struct.fdt_node_header = type { i32, [0 x i8] }

@.str = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/aliases\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_get_string(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #5
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
  %119 = tail call ptr @memchr(ptr noundef %118, i32 noundef 0, i32 noundef %117) #5
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

; Function Attrs: null_pointer_is_valid
declare i32 @strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_ro_probe_(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_string(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @fdt_get_string(ptr noundef %0, i32 noundef %1, ptr noundef null) #6
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_find_max_phandle(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @fdt_next_node(ptr noundef %0, i32 noundef -1, ptr noundef null) #5
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
  %12 = tail call i32 @fdt_get_phandle(ptr noundef %0, i32 noundef %10) #6
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 %11)
  %14 = tail call i32 @fdt_next_node(ptr noundef %0, i32 noundef %10, ptr noundef null) #5
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

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_next_node(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_get_phandle(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = tail call i32 @strlen(ptr noundef nonnull @.str) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !9
  %7 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str, i32 noundef %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %50

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
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
  %29 = icmp ult i32 %28, 16
  br i1 %29, label %30, label %42

30:                                               ; preds = %10
  %31 = load i32, ptr %4, align 4
  %32 = add i32 %31, 4
  %33 = and i32 %32, 7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.fdt_property, ptr %7, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37) #7
  %39 = icmp ugt i32 %38, 7
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = getelementptr %struct.fdt_property, ptr %7, i32 1, i32 1
  br label %44

42:                                               ; preds = %35, %30, %10
  %43 = getelementptr inbounds %struct.fdt_property, ptr %7, i32 0, i32 3
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi ptr [ %43, %42 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %46 = icmp eq ptr %45, null
  %47 = load i32, ptr %5, align 4
  %48 = icmp ne i32 %47, 4
  %49 = select i1 %46, i1 true, i1 %48
  br i1 %49, label %50, label %95

50:                                               ; preds = %44, %9
  %51 = call i32 @strlen(ptr noundef nonnull @.str.1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !9
  %52 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.1, i32 noundef %51, ptr noundef nonnull %5, ptr noundef nonnull %3) #5
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %99

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl nuw i32 %58, 24
  %60 = getelementptr i8, ptr %56, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 16
  %64 = or i32 %63, %59
  %65 = getelementptr i8, ptr %56, i32 2
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 8
  %69 = or i32 %64, %68
  %70 = getelementptr i8, ptr %56, i32 3
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = or i32 %69, %72
  %74 = icmp ult i32 %73, 16
  br i1 %74, label %75, label %87

75:                                               ; preds = %55
  %76 = load i32, ptr %3, align 4
  %77 = add i32 %76, 4
  %78 = and i32 %77, 7
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.fdt_property, ptr %52, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = call i32 @llvm.bswap.i32(i32 %82) #7
  %84 = icmp ugt i32 %83, 7
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = getelementptr %struct.fdt_property, ptr %52, i32 1, i32 1
  br label %89

87:                                               ; preds = %80, %75, %55
  %88 = getelementptr inbounds %struct.fdt_property, ptr %52, i32 0, i32 3
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi ptr [ %88, %87 ], [ %86, %85 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %91 = icmp eq ptr %90, null
  %92 = load i32, ptr %5, align 4
  %93 = icmp ne i32 %92, 4
  %94 = select i1 %91, i1 true, i1 %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %89, %44
  %96 = phi ptr [ %90, %89 ], [ %45, %44 ]
  %97 = load i32, ptr %96, align 4
  %98 = call i32 @llvm.bswap.i32(i32 %97) #7
  br label %99

99:                                               ; preds = %95, %89, %54
  %100 = phi i32 [ %98, %95 ], [ 0, %89 ], [ 0, %54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_generate_phandle(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @fdt_next_node(ptr noundef %0, i32 noundef -1, ptr noundef null) #5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %7, label %9

5:                                                ; preds = %9
  %6 = icmp eq i32 %14, -1
  br i1 %6, label %16, label %23

7:                                                ; preds = %2
  %8 = icmp eq i32 %3, -1
  br i1 %8, label %18, label %23

9:                                                ; preds = %9, %2
  %10 = phi i32 [ %14, %9 ], [ %3, %2 ]
  %11 = phi i32 [ %13, %9 ], [ 0, %2 ]
  %12 = tail call i32 @fdt_get_phandle(ptr noundef %0, i32 noundef %10) #5
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 %11) #7
  %14 = tail call i32 @fdt_next_node(ptr noundef %0, i32 noundef %10, ptr noundef null) #5
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %5, label %9

16:                                               ; preds = %5
  %17 = icmp eq i32 %13, -2
  br i1 %17, label %23, label %18

18:                                               ; preds = %16, %7
  %19 = phi i32 [ %13, %16 ], [ 0, %7 ]
  %20 = icmp eq ptr %1, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = add i32 %19, 1
  store i32 %22, ptr %1, align 4
  br label %23

23:                                               ; preds = %21, %18, %16, %7, %5
  %24 = phi i32 [ -17, %16 ], [ 0, %21 ], [ 0, %18 ], [ %3, %7 ], [ %14, %5 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_get_mem_rsv(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #5
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %60, label %7

7:                                                ; preds = %4
  %8 = shl i32 %1, 4
  %9 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 4
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
  %27 = add i32 %26, %8
  %28 = icmp ult i32 %27, %26
  br i1 %28, label %60, label %29

29:                                               ; preds = %7
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
  %48 = add i32 %47, -16
  %49 = icmp ugt i32 %27, %48
  br i1 %49, label %60, label %50

50:                                               ; preds = %29
  %51 = getelementptr i8, ptr %0, i32 %26
  %52 = getelementptr %struct.fdt_reserve_entry, ptr %51, i32 %1
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load i64, ptr %52, align 8
  %56 = tail call i64 @llvm.bswap.i64(i64 %55) #7
  store i64 %56, ptr %2, align 8
  %57 = getelementptr inbounds %struct.fdt_reserve_entry, ptr %52, i32 0, i32 1
  %58 = load i64, ptr %57, align 8
  %59 = tail call i64 @llvm.bswap.i64(i64 %58) #7
  store i64 %59, ptr %3, align 8
  br label %60

60:                                               ; preds = %54, %50, %29, %7, %4
  %61 = phi i32 [ 0, %54 ], [ %5, %4 ], [ -4, %50 ], [ -4, %7 ], [ -4, %29 ]
  ret i32 %61
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly uwtable(sync)
define i32 @fdt_num_mem_rsv(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 4
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
  %21 = load i8, ptr %2, align 1
  %22 = zext i8 %21 to i32
  %23 = shl nuw i32 %22, 24
  %24 = getelementptr i8, ptr %2, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 16
  %28 = or i32 %27, %23
  %29 = getelementptr i8, ptr %2, i32 2
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 8
  %33 = or i32 %28, %32
  %34 = getelementptr i8, ptr %2, i32 3
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %33, %36
  %38 = add i32 %37, -16
  %39 = getelementptr i8, ptr %0, i32 %20
  br label %40

40:                                               ; preds = %51, %1
  %41 = phi i32 [ %20, %1 ], [ %54, %51 ]
  %42 = phi i32 [ 0, %1 ], [ %52, %51 ]
  %43 = icmp ugt i32 %41, %38
  br i1 %43, label %56, label %44

44:                                               ; preds = %40
  %45 = getelementptr %struct.fdt_reserve_entry, ptr %39, i32 %42
  %46 = icmp eq ptr %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.fdt_reserve_entry, ptr %45, i32 0, i32 1
  %49 = load i64, ptr %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = add i32 %42, 1
  %53 = shl i32 %52, 4
  %54 = add i32 %20, %53
  %55 = icmp ult i32 %54, %20
  br i1 %55, label %56, label %40

56:                                               ; preds = %51, %47, %44, %40
  %57 = phi i32 [ %42, %47 ], [ -8, %44 ], [ -8, %51 ], [ -8, %40 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_subnode_offset_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  %7 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #5
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !9
  %16 = call ptr @fdt_get_name(ptr noundef %0, i32 noundef %12, ptr noundef nonnull %5) #5
  %17 = icmp eq ptr %16, null
  %18 = load i32, ptr %5, align 4
  %19 = icmp slt i32 %18, %3
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %34, label %21

21:                                               ; preds = %15
  %22 = call i32 @memcmp(ptr noundef nonnull %16, ptr noundef %2, i32 noundef %3) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = getelementptr i8, ptr %16, i32 %3
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = call ptr @memchr(ptr noundef %2, i32 noundef 64, i32 noundef %3) #5
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i8, ptr %25, align 1
  %33 = icmp eq i8 %32, 64
  br i1 %33, label %35, label %34

34:                                               ; preds = %31, %28, %21, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %36

35:                                               ; preds = %31, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %45

36:                                               ; preds = %34, %11
  %37 = call i32 @fdt_next_node(ptr noundef %0, i32 noundef %12, ptr noundef nonnull %6) #5
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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_subnode_offset(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @strlen(ptr noundef %2) #5
  %5 = tail call i32 @fdt_subnode_offset_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %4) #6
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_path_offset_namelen(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %1, i32 %2
  %6 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %90, label %8

8:                                                ; preds = %3
  %9 = load i8, ptr %1, align 1
  %10 = icmp eq i8 %9, 47
  br i1 %10, label %65, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @memchr(ptr noundef %1, i32 noundef 47, i32 noundef %2) #5
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr %5, ptr %12
  %15 = tail call i32 @strlen(ptr noundef nonnull @.str.2) #5
  %16 = tail call i32 @fdt_path_offset_namelen(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %15) #5
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %90, label %18

18:                                               ; preds = %11
  %19 = ptrtoint ptr %14 to i32
  %20 = ptrtoint ptr %1 to i32
  %21 = sub i32 %19, %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !9
  %22 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %16, ptr noundef %1, i32 noundef %21, ptr noundef null, ptr noundef nonnull %4) #5
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %90

25:                                               ; preds = %18
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
  br i1 %44, label %45, label %57

45:                                               ; preds = %25
  %46 = load i32, ptr %4, align 4
  %47 = add i32 %46, 4
  %48 = and i32 %47, 7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.fdt_property, ptr %22, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52) #7
  %54 = icmp ugt i32 %53, 7
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = getelementptr %struct.fdt_property, ptr %22, i32 1, i32 1
  br label %59

57:                                               ; preds = %50, %45, %25
  %58 = getelementptr inbounds %struct.fdt_property, ptr %22, i32 0, i32 3
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi ptr [ %58, %57 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %61 = icmp eq ptr %60, null
  br i1 %61, label %90, label %62

62:                                               ; preds = %59
  %63 = call i32 @strlen(ptr noundef nonnull %60) #5
  %64 = call i32 @fdt_path_offset_namelen(ptr noundef %0, ptr noundef nonnull %60, i32 noundef %63) #5
  br label %65

65:                                               ; preds = %62, %8
  %66 = phi ptr [ %14, %62 ], [ %1, %8 ]
  %67 = phi i32 [ %64, %62 ], [ 0, %8 ]
  %68 = ptrtoint ptr %5 to i32
  br label %69

69:                                               ; preds = %80, %65
  %70 = phi ptr [ %66, %65 ], [ %85, %80 ]
  %71 = phi i32 [ %67, %65 ], [ %88, %80 ]
  %72 = icmp ult ptr %70, %5
  br i1 %72, label %73, label %90

73:                                               ; preds = %77, %69
  %74 = phi ptr [ %78, %77 ], [ %70, %69 ]
  %75 = load i8, ptr %74, align 1
  %76 = icmp eq i8 %75, 47
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = getelementptr i8, ptr %74, i32 1
  %79 = icmp eq ptr %78, %5
  br i1 %79, label %90, label %73

80:                                               ; preds = %73
  %81 = ptrtoint ptr %74 to i32
  %82 = sub i32 %68, %81
  %83 = call ptr @memchr(ptr noundef %74, i32 noundef 47, i32 noundef %82) #5
  %84 = icmp eq ptr %83, null
  %85 = select i1 %84, ptr %5, ptr %83
  %86 = ptrtoint ptr %85 to i32
  %87 = sub i32 %86, %81
  %88 = call i32 @fdt_subnode_offset_namelen(ptr noundef %0, i32 noundef %71, ptr noundef %74, i32 noundef %87) #6
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %69

90:                                               ; preds = %80, %77, %69, %59, %24, %11, %3
  %91 = phi i32 [ %6, %3 ], [ -5, %59 ], [ -5, %24 ], [ -5, %11 ], [ %71, %77 ], [ %71, %69 ], [ %88, %80 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_get_alias_namelen(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = tail call i32 @strlen(ptr noundef nonnull @.str.2) #5
  %6 = tail call i32 @fdt_path_offset_namelen(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %5) #5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %47, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !9
  %9 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %6, ptr noundef %1, i32 noundef %2, ptr noundef null, ptr noundef nonnull %4) #5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %45, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw i32 %14, 24
  %16 = getelementptr i8, ptr %12, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 16
  %20 = or i32 %19, %15
  %21 = getelementptr i8, ptr %12, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 8
  %25 = or i32 %20, %24
  %26 = getelementptr i8, ptr %12, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %25, %28
  %30 = icmp ult i32 %29, 16
  br i1 %30, label %31, label %43

31:                                               ; preds = %11
  %32 = load i32, ptr %4, align 4
  %33 = add i32 %32, 4
  %34 = and i32 %33, 7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.fdt_property, ptr %9, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38) #7
  %40 = icmp ugt i32 %39, 7
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = getelementptr %struct.fdt_property, ptr %9, i32 1, i32 1
  br label %45

43:                                               ; preds = %36, %31, %11
  %44 = getelementptr inbounds %struct.fdt_property, ptr %9, i32 0, i32 3
  br label %45

45:                                               ; preds = %43, %41, %8
  %46 = phi ptr [ %44, %43 ], [ %42, %41 ], [ null, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %47

47:                                               ; preds = %45, %3
  %48 = phi ptr [ %46, %45 ], [ null, %3 ]
  ret ptr %48
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_path_offset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @strlen(ptr noundef %1) #5
  %4 = tail call i32 @fdt_path_offset_namelen(ptr noundef %0, ptr noundef %1, i32 noundef %3) #6
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_get_name(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
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
  %24 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #5
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %59, label %26

26:                                               ; preds = %3
  %27 = tail call i32 @fdt_check_node_offset_(ptr noundef %0, i32 noundef %1) #5
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
  %51 = tail call ptr @strrchr(ptr noundef %30, i32 noundef 47) #5
  %52 = icmp eq ptr %51, null
  %53 = getelementptr i8, ptr %51, i32 1
  br i1 %52, label %59, label %54

54:                                               ; preds = %50, %29
  %55 = phi ptr [ %53, %50 ], [ %30, %29 ]
  %56 = icmp eq ptr %2, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  %58 = tail call i32 @strlen(ptr noundef %55) #5
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

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_check_node_offset_(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_first_property_offset(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = tail call i32 @fdt_check_node_offset_(ptr noundef %0, i32 noundef %1) #5
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !9
  br label %7

7:                                                ; preds = %14, %6
  %8 = phi i32 [ %4, %6 ], [ %15, %14 ]
  %9 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %8, ptr noundef nonnull %3) #5
  switch i32 %9, label %14 [
    i32 9, label %10
    i32 3, label %17
  ]

10:                                               ; preds = %7
  %11 = load i32, ptr %3, align 4
  %12 = icmp sgt i32 %11, -1
  %13 = select i1 %12, i32 -11, i32 %11
  br label %17

14:                                               ; preds = %7
  %15 = load i32, ptr %3, align 4
  %16 = icmp eq i32 %9, 4
  br i1 %16, label %7, label %17

17:                                               ; preds = %14, %10, %7
  %18 = phi i32 [ %13, %10 ], [ %8, %7 ], [ -1, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %19

19:                                               ; preds = %17, %2
  %20 = phi i32 [ %18, %17 ], [ %4, %2 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_next_property_offset(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = tail call i32 @fdt_check_prop_offset_(ptr noundef %0, i32 noundef %1) #5
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !9
  br label %7

7:                                                ; preds = %14, %6
  %8 = phi i32 [ %4, %6 ], [ %15, %14 ]
  %9 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %8, ptr noundef nonnull %3) #5
  switch i32 %9, label %14 [
    i32 9, label %10
    i32 3, label %17
  ]

10:                                               ; preds = %7
  %11 = load i32, ptr %3, align 4
  %12 = icmp sgt i32 %11, -1
  %13 = select i1 %12, i32 -11, i32 %11
  br label %17

14:                                               ; preds = %7
  %15 = load i32, ptr %3, align 4
  %16 = icmp eq i32 %9, 4
  br i1 %16, label %7, label %17

17:                                               ; preds = %14, %10, %7
  %18 = phi i32 [ %13, %10 ], [ %8, %7 ], [ -1, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %19

19:                                               ; preds = %17, %2
  %20 = phi i32 [ %18, %17 ], [ %4, %2 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_check_prop_offset_(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_get_property_by_offset(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
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
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = icmp eq ptr %2, null
  br i1 %24, label %59, label %56

25:                                               ; preds = %3
  %26 = tail call i32 @fdt_check_prop_offset_(ptr noundef %0, i32 noundef %1) #5
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = icmp eq ptr %2, null
  br i1 %29, label %59, label %56

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
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
  %49 = getelementptr i8, ptr %0, i32 %48
  %50 = getelementptr i8, ptr %49, i32 %1
  %51 = icmp eq ptr %2, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %30
  %53 = getelementptr inbounds %struct.fdt_property, ptr %50, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  br label %56

56:                                               ; preds = %52, %28, %23
  %57 = phi i32 [ -10, %23 ], [ %55, %52 ], [ %26, %28 ]
  %58 = phi ptr [ null, %23 ], [ %50, %52 ], [ null, %28 ]
  store i32 %57, ptr %2, align 4
  br label %59

59:                                               ; preds = %56, %30, %28, %23
  %60 = phi ptr [ null, %23 ], [ null, %28 ], [ %50, %30 ], [ %58, %56 ]
  ret ptr %60
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_get_property_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
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
  %29 = tail call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef null) #6
  br label %30

30:                                               ; preds = %28, %27, %25
  %31 = phi ptr [ %29, %28 ], [ null, %27 ], [ null, %25 ]
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef writeonly %4, ptr noundef writeonly %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = tail call i32 @fdt_check_node_offset_(ptr noundef %0, i32 noundef %1) #5
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %99, label %12

12:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  store i32 0, ptr %9, align 4, !annotation !9
  br label %13

13:                                               ; preds = %20, %12
  %14 = phi i32 [ %10, %12 ], [ %21, %20 ]
  %15 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %14, ptr noundef nonnull %9) #5
  switch i32 %15, label %20 [
    i32 9, label %16
    i32 3, label %25
  ]

16:                                               ; preds = %13
  %17 = load i32, ptr %9, align 4
  %18 = icmp sgt i32 %17, -1
  %19 = select i1 %18, i32 -11, i32 %17
  br label %23

20:                                               ; preds = %13
  %21 = load i32, ptr %9, align 4
  %22 = icmp eq i32 %15, 4
  br i1 %22, label %13, label %23

23:                                               ; preds = %20, %16
  %24 = phi i32 [ %19, %16 ], [ -1, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  br label %99

25:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  %26 = icmp sgt i32 %14, -1
  br i1 %26, label %27, label %99

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
  %29 = getelementptr i8, ptr %28, i32 1
  %30 = getelementptr i8, ptr %28, i32 2
  %31 = getelementptr i8, ptr %28, i32 3
  %32 = icmp eq ptr %4, null
  br label %33

33:                                               ; preds = %97, %27
  %34 = phi i32 [ %14, %27 ], [ %86, %97 ]
  %35 = call i32 @fdt_check_prop_offset_(ptr noundef %0, i32 noundef %34) #5
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br i1 %32, label %103, label %59

38:                                               ; preds = %33
  %39 = load i8, ptr %28, align 1
  %40 = zext i8 %39 to i32
  %41 = shl nuw i32 %40, 24
  %42 = load i8, ptr %29, align 1
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 16
  %45 = or i32 %44, %41
  %46 = load i8, ptr %30, align 1
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 8
  %49 = or i32 %45, %48
  %50 = load i8, ptr %31, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %49, %51
  %53 = getelementptr i8, ptr %0, i32 %52
  %54 = getelementptr i8, ptr %53, i32 %34
  br i1 %32, label %62, label %55

55:                                               ; preds = %38
  %56 = getelementptr inbounds %struct.fdt_property, ptr %54, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = call i32 @llvm.bswap.i32(i32 %57) #7
  br label %59

59:                                               ; preds = %55, %37
  %60 = phi i32 [ %58, %55 ], [ %35, %37 ]
  %61 = phi ptr [ %54, %55 ], [ null, %37 ]
  store i32 %60, ptr %4, align 4
  br label %62

62:                                               ; preds = %59, %38
  %63 = phi ptr [ %54, %38 ], [ %61, %59 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %99, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.fdt_property, ptr %63, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = call i32 @llvm.bswap.i32(i32 %67) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 0, ptr %8, align 4, !annotation !9
  %69 = call ptr @fdt_get_string(ptr noundef %0, i32 noundef %68, ptr noundef nonnull %8) #5
  %70 = icmp ne ptr %69, null
  %71 = load i32, ptr %8, align 4
  %72 = icmp eq i32 %71, %3
  %73 = select i1 %70, i1 %72, i1 false
  br i1 %73, label %75, label %74

74:                                               ; preds = %65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  br label %81

75:                                               ; preds = %65
  %76 = call i32 @memcmp(ptr noundef nonnull %69, ptr noundef %2, i32 noundef %3) #5
  %77 = icmp eq i32 %76, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = icmp eq ptr %5, null
  br i1 %79, label %103, label %80

80:                                               ; preds = %78
  store i32 %34, ptr %5, align 4
  br label %103

81:                                               ; preds = %75, %74
  %82 = call i32 @fdt_check_prop_offset_(ptr noundef %0, i32 noundef %34) #5
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %99, label %84

84:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !9
  br label %85

85:                                               ; preds = %92, %84
  %86 = phi i32 [ %82, %84 ], [ %93, %92 ]
  %87 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %86, ptr noundef nonnull %7) #5
  switch i32 %87, label %92 [
    i32 9, label %88
    i32 3, label %97
  ]

88:                                               ; preds = %85
  %89 = load i32, ptr %7, align 4
  %90 = icmp sgt i32 %89, -1
  %91 = select i1 %90, i32 -11, i32 %89
  br label %95

92:                                               ; preds = %85
  %93 = load i32, ptr %7, align 4
  %94 = icmp eq i32 %87, 4
  br i1 %94, label %85, label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ %91, %88 ], [ -1, %92 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  br label %99

97:                                               ; preds = %85
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  %98 = icmp sgt i32 %86, -1
  br i1 %98, label %33, label %99

99:                                               ; preds = %97, %95, %81, %62, %25, %23, %6
  %100 = phi i32 [ %14, %25 ], [ %24, %23 ], [ %96, %95 ], [ %10, %6 ], [ %82, %81 ], [ -13, %62 ], [ %86, %97 ]
  %101 = icmp eq ptr %4, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  store i32 %100, ptr %4, align 4
  br label %103

103:                                              ; preds = %102, %99, %80, %78, %37
  %104 = phi ptr [ null, %102 ], [ null, %99 ], [ %63, %80 ], [ %63, %78 ], [ null, %37 ]
  ret ptr %104
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_get_property(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @strlen(ptr noundef %2) #5
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

25:                                               ; preds = %4
  %26 = icmp eq ptr %3, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  store i32 -10, ptr %3, align 4
  br label %30

28:                                               ; preds = %4
  %29 = tail call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %5, ptr noundef %3, ptr noundef null) #5
  br label %30

30:                                               ; preds = %28, %27, %25
  %31 = phi ptr [ %29, %28 ], [ null, %27 ], [ null, %25 ]
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_getprop_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #6
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
  %37 = call i32 @llvm.bswap.i32(i32 %36) #7
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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  ret ptr %44
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_getprop_by_offset(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = tail call i32 @fdt_check_prop_offset_(ptr noundef %0, i32 noundef %1) #5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = icmp eq ptr %3, null
  br i1 %9, label %89, label %36

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 2
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
  %29 = getelementptr i8, ptr %0, i32 %28
  %30 = getelementptr i8, ptr %29, i32 %1
  %31 = icmp eq ptr %3, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %10
  %33 = getelementptr inbounds %struct.fdt_property, ptr %30, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  br label %36

36:                                               ; preds = %32, %8
  %37 = phi i32 [ %35, %32 ], [ %6, %8 ]
  %38 = phi ptr [ %30, %32 ], [ null, %8 ]
  store i32 %37, ptr %3, align 4
  br label %39

39:                                               ; preds = %36, %10
  %40 = phi ptr [ %30, %10 ], [ %38, %36 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %89, label %42

42:                                               ; preds = %39
  %43 = icmp eq ptr %2, null
  br i1 %43, label %55, label %44

44:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !9
  %45 = getelementptr inbounds %struct.fdt_property, ptr %40, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #7
  %48 = call ptr @fdt_get_string(ptr noundef %0, i32 noundef %47, ptr noundef nonnull %5) #6
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = icmp eq ptr %3, null
  br i1 %51, label %88, label %52

52:                                               ; preds = %50
  %53 = load i32, ptr %5, align 4
  store i32 %53, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %89

54:                                               ; preds = %44
  store ptr %48, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %55

55:                                               ; preds = %54, %42
  %56 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl nuw i32 %58, 24
  %60 = getelementptr i8, ptr %56, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 16
  %64 = or i32 %63, %59
  %65 = getelementptr i8, ptr %56, i32 2
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 8
  %69 = or i32 %64, %68
  %70 = getelementptr i8, ptr %56, i32 3
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = or i32 %69, %72
  %74 = icmp ult i32 %73, 16
  br i1 %74, label %75, label %86

75:                                               ; preds = %55
  %76 = add i32 %1, 4
  %77 = and i32 %76, 7
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.fdt_property, ptr %40, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = call i32 @llvm.bswap.i32(i32 %81) #7
  %83 = icmp ugt i32 %82, 7
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = getelementptr %struct.fdt_property, ptr %40, i32 1, i32 1
  br label %89

86:                                               ; preds = %79, %75, %55
  %87 = getelementptr inbounds %struct.fdt_property, ptr %40, i32 0, i32 3
  br label %89

88:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %89

89:                                               ; preds = %88, %86, %84, %52, %39, %8
  %90 = phi ptr [ %87, %86 ], [ %85, %84 ], [ null, %39 ], [ null, %88 ], [ null, %52 ], [ null, %8 ]
  ret ptr %90
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_getprop(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = tail call i32 @strlen(ptr noundef %2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !9
  %7 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %6, ptr noundef %3, ptr noundef nonnull %5) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %43, label %9

9:                                                ; preds = %4
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
  %30 = load i32, ptr %5, align 4
  %31 = add i32 %30, 4
  %32 = and i32 %31, 7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.fdt_property, ptr %7, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36) #7
  %38 = icmp ugt i32 %37, 7
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = getelementptr %struct.fdt_property, ptr %7, i32 1, i32 1
  br label %43

41:                                               ; preds = %34, %29, %9
  %42 = getelementptr inbounds %struct.fdt_property, ptr %7, i32 0, i32 3
  br label %43

43:                                               ; preds = %41, %39, %4
  %44 = phi ptr [ %42, %41 ], [ %40, %39 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret ptr %44
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_get_alias(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @strlen(ptr noundef %1) #5
  %4 = tail call ptr @fdt_get_alias_namelen(ptr noundef %0, ptr noundef %1, i32 noundef %3) #6
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_get_path(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #5
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
  %37 = call ptr @fdt_get_name(ptr noundef %0, i32 noundef %15, ptr noundef nonnull %6) #6
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
  %46 = call ptr @memcpy(ptr noundef %45, ptr noundef nonnull %37, i32 noundef %39) #5
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
  %66 = call i32 @fdt_next_node(ptr noundef %0, i32 noundef %15, ptr noundef nonnull %5) #5
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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_supernode_atdepth_offset(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %6 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #5
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
  %27 = call i32 @fdt_next_node(ptr noundef %0, i32 noundef %26, ptr noundef nonnull %5) #5
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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_node_depth(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %4 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #5
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  store i32 0, ptr %3, align 4
  %7 = icmp sgt i32 %1, -1
  br i1 %7, label %8, label %30

8:                                                ; preds = %6
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %38

11:                                               ; preds = %20
  %12 = icmp slt i32 %21, 0
  br i1 %12, label %30, label %32

13:                                               ; preds = %20, %8
  %14 = phi i32 [ %23, %20 ], [ 0, %8 ]
  %15 = phi i32 [ %16, %20 ], [ 0, %8 ]
  %16 = call i32 @fdt_next_node(ptr noundef %0, i32 noundef %15, ptr noundef nonnull %3) #5
  %17 = icmp sgt i32 %16, -1
  %18 = icmp sle i32 %16, %1
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load i32, ptr %3, align 4
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 %16, i32 %14
  %24 = icmp eq i32 %16, %1
  br i1 %24, label %11, label %13

25:                                               ; preds = %13
  %26 = icmp sgt i32 %16, -2
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  %28 = icmp eq i32 %16, -4
  %29 = select i1 %28, i32 -11, i32 %16
  br label %30

30:                                               ; preds = %27, %25, %11, %6, %2
  %31 = phi i32 [ -4, %6 ], [ %29, %27 ], [ -4, %25 ], [ %4, %2 ], [ -1, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %34

32:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %33 = icmp eq i32 %23, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %23, %32 ]
  %36 = icmp slt i32 %35, 0
  %37 = select i1 %36, i32 %35, i32 -13
  br label %38

38:                                               ; preds = %34, %32, %10
  %39 = phi i32 [ %37, %34 ], [ %21, %32 ], [ 0, %10 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_parent_offset(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  %5 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #5
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  store i32 0, ptr %4, align 4
  %8 = icmp sgt i32 %1, -1
  br i1 %8, label %9, label %31

9:                                                ; preds = %7
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %39

12:                                               ; preds = %21
  %13 = icmp slt i32 %22, 0
  br i1 %13, label %31, label %33

14:                                               ; preds = %21, %9
  %15 = phi i32 [ %24, %21 ], [ 0, %9 ]
  %16 = phi i32 [ %17, %21 ], [ 0, %9 ]
  %17 = call i32 @fdt_next_node(ptr noundef %0, i32 noundef %16, ptr noundef nonnull %4) #5
  %18 = icmp sgt i32 %17, -1
  %19 = icmp sle i32 %17, %1
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load i32, ptr %4, align 4
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 %17, i32 %15
  %25 = icmp eq i32 %17, %1
  br i1 %25, label %12, label %14

26:                                               ; preds = %14
  %27 = icmp sgt i32 %17, -2
  br i1 %27, label %31, label %28

28:                                               ; preds = %26
  %29 = icmp eq i32 %17, -4
  %30 = select i1 %29, i32 -11, i32 %17
  br label %31

31:                                               ; preds = %28, %26, %12, %7, %2
  %32 = phi i32 [ -4, %7 ], [ %30, %28 ], [ -4, %26 ], [ %5, %2 ], [ -1, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %37

33:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %34 = icmp eq i32 %24, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %33
  %36 = icmp slt i32 %24, 0
  br i1 %36, label %37, label %73

37:                                               ; preds = %35, %31
  %38 = phi i32 [ %32, %31 ], [ %24, %35 ]
  br label %73

39:                                               ; preds = %33, %11
  %40 = phi i32 [ %22, %33 ], [ 0, %11 ]
  %41 = add nsw i32 %40, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %42 = call i32 @fdt_ro_probe_(ptr noundef %0) #5
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %71, label %44

44:                                               ; preds = %39
  %45 = icmp eq i32 %40, 0
  br i1 %45, label %71, label %46

46:                                               ; preds = %44
  store i32 0, ptr %3, align 4
  %47 = icmp eq i32 %41, 0
  %48 = select i1 %47, i32 0, i32 -13
  br i1 %10, label %49, label %54

49:                                               ; preds = %61, %46
  %50 = phi i32 [ 0, %46 ], [ %62, %61 ]
  %51 = phi i32 [ %48, %46 ], [ %64, %61 ]
  %52 = icmp slt i32 %50, %41
  %53 = select i1 %52, i32 -1, i32 %51
  br label %71

54:                                               ; preds = %61, %46
  %55 = phi i32 [ %64, %61 ], [ %48, %46 ]
  %56 = phi i32 [ %57, %61 ], [ 0, %46 ]
  %57 = call i32 @fdt_next_node(ptr noundef %0, i32 noundef %56, ptr noundef nonnull %3) #5
  %58 = icmp sgt i32 %57, -1
  %59 = icmp sle i32 %57, %1
  %60 = and i1 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i32, ptr %3, align 4
  %63 = icmp eq i32 %62, %41
  %64 = select i1 %63, i32 %57, i32 %55
  %65 = icmp eq i32 %57, %1
  br i1 %65, label %49, label %54

66:                                               ; preds = %54
  %67 = icmp sgt i32 %57, -2
  br i1 %67, label %71, label %68

68:                                               ; preds = %66
  %69 = icmp eq i32 %57, -4
  %70 = select i1 %69, i32 -11, i32 %57
  br label %71

71:                                               ; preds = %68, %66, %49, %44, %39
  %72 = phi i32 [ %42, %39 ], [ -1, %44 ], [ %53, %49 ], [ -4, %66 ], [ %70, %68 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %73

73:                                               ; preds = %71, %37, %35
  %74 = phi i32 [ %72, %71 ], [ %38, %37 ], [ -13, %35 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_node_offset_by_prop_value(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #5
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %66, label %10

10:                                               ; preds = %5
  %11 = tail call i32 @fdt_next_node(ptr noundef %0, i32 noundef %1, ptr noundef null) #5
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %66

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %15 = getelementptr i8, ptr %14, i32 1
  %16 = getelementptr i8, ptr %14, i32 2
  %17 = getelementptr i8, ptr %14, i32 3
  br label %18

18:                                               ; preds = %63, %13
  %19 = phi i32 [ %11, %13 ], [ %64, %63 ]
  %20 = call i32 @strlen(ptr noundef %2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !9
  %21 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %19, ptr noundef %2, i32 noundef %20, ptr noundef nonnull %7, ptr noundef nonnull %6) #5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %63

24:                                               ; preds = %18
  %25 = load i8, ptr %14, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 %26, 24
  %28 = load i8, ptr %15, align 1
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 16
  %31 = or i32 %30, %27
  %32 = load i8, ptr %16, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = or i32 %31, %34
  %36 = load i8, ptr %17, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %35, %37
  %39 = icmp ult i32 %38, 16
  br i1 %39, label %40, label %52

40:                                               ; preds = %24
  %41 = load i32, ptr %6, align 4
  %42 = add i32 %41, 4
  %43 = and i32 %42, 7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.fdt_property, ptr %21, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = call i32 @llvm.bswap.i32(i32 %47) #7
  %49 = icmp ugt i32 %48, 7
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = getelementptr %struct.fdt_property, ptr %21, i32 1, i32 1
  br label %54

52:                                               ; preds = %45, %40, %24
  %53 = getelementptr inbounds %struct.fdt_property, ptr %21, i32 0, i32 3
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi ptr [ %53, %52 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  %56 = icmp ne ptr %55, null
  %57 = load i32, ptr %7, align 4
  %58 = icmp eq i32 %57, %4
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = call i32 @memcmp(ptr noundef nonnull %55, ptr noundef %3, i32 noundef %4) #5
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60, %54, %23
  %64 = call i32 @fdt_next_node(ptr noundef %0, i32 noundef %19, ptr noundef null) #5
  %65 = icmp sgt i32 %64, -1
  br i1 %65, label %18, label %66

66:                                               ; preds = %63, %60, %10, %5
  %67 = phi i32 [ %8, %5 ], [ %11, %10 ], [ %19, %60 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare i32 @memcmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_node_offset_by_phandle(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, 1
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @fdt_next_node(ptr noundef %0, i32 noundef -1, ptr noundef null) #5
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %18

11:                                               ; preds = %15, %8
  %12 = phi i32 [ %16, %15 ], [ %9, %8 ]
  %13 = tail call i32 @fdt_get_phandle(ptr noundef %0, i32 noundef %12) #6
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @fdt_next_node(ptr noundef %0, i32 noundef %12, ptr noundef null) #5
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %11, label %18

18:                                               ; preds = %15, %11, %8, %5, %2
  %19 = phi i32 [ %6, %5 ], [ -6, %2 ], [ %9, %8 ], [ %12, %11 ], [ %16, %15 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_stringlist_contains(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @strlen(ptr noundef %2) #5
  %5 = add i32 %4, 1
  %6 = icmp sgt i32 %4, %1
  br i1 %6, label %23, label %7

7:                                                ; preds = %15, %3
  %8 = phi i32 [ %20, %15 ], [ %1, %3 ]
  %9 = phi ptr [ %21, %15 ], [ %0, %3 ]
  %10 = tail call i32 @memcmp(ptr noundef %2, ptr noundef %9, i32 noundef %5) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %7
  %13 = tail call ptr @memchr(ptr noundef %9, i32 noundef 0, i32 noundef %8) #5
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

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_stringlist_count(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = tail call i32 @strlen(ptr noundef %2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !9
  %7 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %47

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
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
  %29 = icmp ult i32 %28, 16
  br i1 %29, label %30, label %42

30:                                               ; preds = %10
  %31 = load i32, ptr %4, align 4
  %32 = add i32 %31, 4
  %33 = and i32 %32, 7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.fdt_property, ptr %7, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37) #7
  %39 = icmp ugt i32 %38, 7
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = getelementptr %struct.fdt_property, ptr %7, i32 1, i32 1
  br label %44

42:                                               ; preds = %35, %30, %10
  %43 = getelementptr inbounds %struct.fdt_property, ptr %7, i32 0, i32 3
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi ptr [ %43, %42 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44, %9
  %48 = load i32, ptr %5, align 4
  br label %66

49:                                               ; preds = %44
  %50 = load i32, ptr %5, align 4
  %51 = getelementptr i8, ptr %45, i32 %50
  %52 = ptrtoint ptr %51 to i32
  %53 = icmp ult ptr %45, %51
  br i1 %53, label %54, label %66

54:                                               ; preds = %63, %49
  %55 = phi i32 [ %64, %63 ], [ 0, %49 ]
  %56 = phi ptr [ %61, %63 ], [ %45, %49 ]
  %57 = ptrtoint ptr %56 to i32
  %58 = sub i32 %52, %57
  %59 = call i32 @strnlen(ptr noundef %56, i32 noundef %58) #5
  %60 = add i32 %59, 1
  store i32 %60, ptr %5, align 4
  %61 = getelementptr i8, ptr %56, i32 %60
  %62 = icmp ugt ptr %61, %51
  br i1 %62, label %66, label %63

63:                                               ; preds = %54
  %64 = add i32 %55, 1
  %65 = icmp ult ptr %61, %51
  br i1 %65, label %54, label %66

66:                                               ; preds = %63, %54, %49, %47
  %67 = phi i32 [ %48, %47 ], [ 0, %49 ], [ -15, %54 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare i32 @strnlen(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_stringlist_search(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = tail call i32 @strlen(ptr noundef %2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !9
  %8 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %7, ptr noundef nonnull %6, ptr noundef nonnull %5) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %48

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw i32 %14, 24
  %16 = getelementptr i8, ptr %12, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 16
  %20 = or i32 %19, %15
  %21 = getelementptr i8, ptr %12, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 8
  %25 = or i32 %20, %24
  %26 = getelementptr i8, ptr %12, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %25, %28
  %30 = icmp ult i32 %29, 16
  br i1 %30, label %31, label %43

31:                                               ; preds = %11
  %32 = load i32, ptr %5, align 4
  %33 = add i32 %32, 4
  %34 = and i32 %33, 7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.fdt_property, ptr %8, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38) #7
  %40 = icmp ugt i32 %39, 7
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = getelementptr %struct.fdt_property, ptr %8, i32 1, i32 1
  br label %45

43:                                               ; preds = %36, %31, %11
  %44 = getelementptr inbounds %struct.fdt_property, ptr %8, i32 0, i32 3
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi ptr [ %44, %43 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45, %10
  %49 = load i32, ptr %6, align 4
  br label %77

50:                                               ; preds = %45
  %51 = call i32 @strlen(ptr noundef %3) #5
  %52 = load i32, ptr %6, align 4
  %53 = getelementptr i8, ptr %46, i32 %52
  %54 = ptrtoint ptr %53 to i32
  %55 = icmp ult ptr %46, %53
  br i1 %55, label %56, label %77

56:                                               ; preds = %72, %50
  %57 = phi ptr [ %74, %72 ], [ %46, %50 ]
  %58 = phi i32 [ %75, %72 ], [ 0, %50 ]
  %59 = ptrtoint ptr %57 to i32
  %60 = sub i32 %54, %59
  %61 = call i32 @strnlen(ptr noundef %57, i32 noundef %60) #5
  %62 = add i32 %61, 1
  store i32 %62, ptr %6, align 4
  %63 = getelementptr i8, ptr %57, i32 %62
  %64 = icmp ugt ptr %63, %53
  br i1 %64, label %77, label %65

65:                                               ; preds = %56
  %66 = icmp eq i32 %61, %51
  br i1 %66, label %67, label %72

67:                                               ; preds = %65
  %68 = call i32 @memcmp(ptr noundef %57, ptr noundef %3, i32 noundef %62) #5
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %67
  %71 = load i32, ptr %6, align 4
  br label %72

72:                                               ; preds = %70, %65
  %73 = phi i32 [ %71, %70 ], [ %62, %65 ]
  %74 = getelementptr i8, ptr %57, i32 %73
  %75 = add i32 %58, 1
  %76 = icmp ult ptr %74, %53
  br i1 %76, label %56, label %77

77:                                               ; preds = %72, %67, %56, %50, %48
  %78 = phi i32 [ %49, %48 ], [ -1, %50 ], [ -15, %56 ], [ %58, %67 ], [ -1, %72 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define ptr @fdt_stringlist_get(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = tail call i32 @strlen(ptr noundef %2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !9
  %9 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %8, ptr noundef nonnull %7, ptr noundef nonnull %6) #5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %49

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw i32 %15, 24
  %17 = getelementptr i8, ptr %13, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 16
  %21 = or i32 %20, %16
  %22 = getelementptr i8, ptr %13, i32 2
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 8
  %26 = or i32 %21, %25
  %27 = getelementptr i8, ptr %13, i32 3
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %26, %29
  %31 = icmp ult i32 %30, 16
  br i1 %31, label %32, label %44

32:                                               ; preds = %12
  %33 = load i32, ptr %6, align 4
  %34 = add i32 %33, 4
  %35 = and i32 %34, 7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.fdt_property, ptr %9, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39) #7
  %41 = icmp ugt i32 %40, 7
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = getelementptr %struct.fdt_property, ptr %9, i32 1, i32 1
  br label %46

44:                                               ; preds = %37, %32, %12
  %45 = getelementptr inbounds %struct.fdt_property, ptr %9, i32 0, i32 3
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi ptr [ %45, %44 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46, %11
  %50 = icmp eq ptr %4, null
  br i1 %50, label %82, label %51

51:                                               ; preds = %49
  %52 = load i32, ptr %7, align 4
  br label %79

53:                                               ; preds = %46
  %54 = load i32, ptr %7, align 4
  %55 = getelementptr i8, ptr %47, i32 %54
  %56 = icmp ult ptr %47, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %53
  %58 = ptrtoint ptr %55 to i32
  br label %62

59:                                               ; preds = %73
  %60 = add i32 %64, -1
  %61 = icmp ult ptr %69, %55
  br i1 %61, label %62, label %77

62:                                               ; preds = %59, %57
  %63 = phi ptr [ %47, %57 ], [ %69, %59 ]
  %64 = phi i32 [ %3, %57 ], [ %60, %59 ]
  %65 = ptrtoint ptr %63 to i32
  %66 = sub i32 %58, %65
  %67 = call i32 @strnlen(ptr noundef %63, i32 noundef %66) #5
  %68 = add i32 %67, 1
  store i32 %68, ptr %7, align 4
  %69 = getelementptr i8, ptr %63, i32 %68
  %70 = icmp ugt ptr %69, %55
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = icmp eq ptr %4, null
  br i1 %72, label %82, label %79

73:                                               ; preds = %62
  %74 = icmp eq i32 %64, 0
  br i1 %74, label %75, label %59

75:                                               ; preds = %73
  %76 = icmp eq ptr %4, null
  br i1 %76, label %82, label %79

77:                                               ; preds = %59, %53
  %78 = icmp eq ptr %4, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %77, %75, %71, %51
  %80 = phi i32 [ %52, %51 ], [ -15, %71 ], [ %67, %75 ], [ -1, %77 ]
  %81 = phi ptr [ null, %51 ], [ null, %71 ], [ %63, %75 ], [ null, %77 ]
  store i32 %80, ptr %4, align 4
  br label %82

82:                                               ; preds = %79, %77, %75, %71, %49
  %83 = phi ptr [ null, %49 ], [ null, %71 ], [ %63, %75 ], [ null, %77 ], [ %81, %79 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  ret ptr %83
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_node_check_compatible(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = tail call i32 @strlen(ptr noundef nonnull @.str.3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !9
  %7 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.3, i32 noundef %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %47

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 5
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
  %29 = icmp ult i32 %28, 16
  br i1 %29, label %30, label %42

30:                                               ; preds = %10
  %31 = load i32, ptr %4, align 4
  %32 = add i32 %31, 4
  %33 = and i32 %32, 7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.fdt_property, ptr %7, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37) #7
  %39 = icmp ugt i32 %38, 7
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = getelementptr %struct.fdt_property, ptr %7, i32 1, i32 1
  br label %44

42:                                               ; preds = %35, %30, %10
  %43 = getelementptr inbounds %struct.fdt_property, ptr %7, i32 0, i32 3
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi ptr [ %43, %42 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44, %9
  %48 = load i32, ptr %5, align 4
  br label %70

49:                                               ; preds = %44
  %50 = load i32, ptr %5, align 4
  %51 = call i32 @strlen(ptr noundef %2) #5
  %52 = add i32 %51, 1
  %53 = icmp sgt i32 %51, %50
  br i1 %53, label %70, label %54

54:                                               ; preds = %62, %49
  %55 = phi i32 [ %67, %62 ], [ %50, %49 ]
  %56 = phi ptr [ %68, %62 ], [ %45, %49 ]
  %57 = call i32 @memcmp(ptr noundef %2, ptr noundef %56, i32 noundef %52) #5
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %54
  %60 = call ptr @memchr(ptr noundef %56, i32 noundef 0, i32 noundef %55) #5
  %61 = icmp eq ptr %60, null
  br i1 %61, label %70, label %62

62:                                               ; preds = %59
  %63 = ptrtoint ptr %60 to i32
  %64 = ptrtoint ptr %56 to i32
  %65 = xor i32 %63, -1
  %66 = add i32 %55, %64
  %67 = add i32 %66, %65
  %68 = getelementptr i8, ptr %60, i32 1
  %69 = icmp slt i32 %67, %51
  br i1 %69, label %70, label %54

70:                                               ; preds = %62, %59, %54, %49, %47
  %71 = phi i32 [ %48, %47 ], [ 1, %49 ], [ 1, %62 ], [ 1, %59 ], [ 0, %54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @fdt_node_offset_by_compatible(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #5
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @fdt_next_node(ptr noundef %0, i32 noundef %1, ptr noundef null) #5
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %18

9:                                                ; preds = %15, %6
  %10 = phi i32 [ %16, %15 ], [ %7, %6 ]
  %11 = tail call i32 @fdt_node_check_compatible(ptr noundef %0, i32 noundef %10, ptr noundef %2) #6
  %12 = icmp slt i32 %11, -1
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = tail call i32 @fdt_next_node(ptr noundef %0, i32 noundef %10, ptr noundef null) #5
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %9, label %18

18:                                               ; preds = %15, %13, %9, %6, %3
  %19 = phi i32 [ %4, %3 ], [ %7, %6 ], [ %11, %9 ], [ %10, %13 ], [ %16, %15 ]
  ret i32 %19
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_next_tag(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid readonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

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
