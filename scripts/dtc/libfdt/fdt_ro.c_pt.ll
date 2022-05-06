; ModuleID = '/llk/IR/scripts/dtc/libfdt/fdt_ro.c_pt.bc'
source_filename = "../scripts/dtc/libfdt/fdt_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fdt_property = type { i32, i32, i32, [0 x i8] }
%struct.fdt_reserve_entry = type { i64, i64 }
%struct.fdt_node_header = type { i32, [0 x i8] }

@.str = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/aliases\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @fdt_get_string(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #9
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %130, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 3
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 %9, 24
  %11 = getelementptr inbounds i8, ptr %7, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or i32 %14, %10
  %16 = getelementptr inbounds i8, ptr %7, i64 2
  %17 = load i8, ptr %16, align 1, !tbaa !5
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 8
  %20 = or i32 %15, %19
  %21 = getelementptr inbounds i8, ptr %7, i64 3
  %22 = load i8, ptr %21, align 1, !tbaa !5
  %23 = zext i8 %22 to i32
  %24 = or i32 %20, %23
  %25 = add i32 %24, %1
  %26 = icmp ugt i32 %4, %25
  br i1 %26, label %27, label %130

27:                                               ; preds = %6
  %28 = sub i32 %4, %25
  %29 = load i8, ptr %0, align 1, !tbaa !5
  %30 = zext i8 %29 to i32
  %31 = shl nuw i32 %30, 24
  %32 = getelementptr inbounds i8, ptr %0, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !5
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 16
  %36 = or i32 %35, %31
  %37 = getelementptr inbounds i8, ptr %0, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !5
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 8
  %41 = or i32 %36, %40
  %42 = getelementptr inbounds i8, ptr %0, i64 3
  %43 = load i8, ptr %42, align 1, !tbaa !5
  %44 = zext i8 %43 to i32
  %45 = or i32 %41, %44
  switch i32 %45, label %130 [
    i32 -804389139, label %46
    i32 804389138, label %91
  ]

46:                                               ; preds = %27
  %47 = icmp slt i32 %1, 0
  br i1 %47, label %130, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
  %50 = load i8, ptr %49, align 1, !tbaa !5
  %51 = zext i8 %50 to i32
  %52 = shl nuw i32 %51, 24
  %53 = getelementptr inbounds i8, ptr %49, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !5
  %55 = zext i8 %54 to i32
  %56 = shl nuw nsw i32 %55, 16
  %57 = or i32 %56, %52
  %58 = getelementptr inbounds i8, ptr %49, i64 2
  %59 = load i8, ptr %58, align 1, !tbaa !5
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, 8
  %62 = or i32 %57, %61
  %63 = getelementptr inbounds i8, ptr %49, i64 3
  %64 = load i8, ptr %63, align 1, !tbaa !5
  %65 = zext i8 %64 to i32
  %66 = or i32 %62, %65
  %67 = icmp ugt i32 %66, 16
  br i1 %67, label %68, label %116

68:                                               ; preds = %48
  %69 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 8
  %70 = load i8, ptr %69, align 1, !tbaa !5
  %71 = zext i8 %70 to i32
  %72 = shl nuw i32 %71, 24
  %73 = getelementptr inbounds i8, ptr %69, i64 1
  %74 = load i8, ptr %73, align 1, !tbaa !5
  %75 = zext i8 %74 to i32
  %76 = shl nuw nsw i32 %75, 16
  %77 = or i32 %76, %72
  %78 = getelementptr inbounds i8, ptr %69, i64 2
  %79 = load i8, ptr %78, align 1, !tbaa !5
  %80 = zext i8 %79 to i32
  %81 = shl nuw nsw i32 %80, 8
  %82 = or i32 %77, %81
  %83 = getelementptr inbounds i8, ptr %69, i64 3
  %84 = load i8, ptr %83, align 1, !tbaa !5
  %85 = zext i8 %84 to i32
  %86 = or i32 %82, %85
  %87 = icmp ugt i32 %86, %1
  br i1 %87, label %88, label %130

88:                                               ; preds = %68
  %89 = sub i32 %86, %1
  %90 = tail call i32 @llvm.umin.i32(i32 %89, i32 %28)
  br label %116

91:                                               ; preds = %27
  %92 = sub nsw i32 0, %1
  %93 = icmp sgt i32 %1, -1
  br i1 %93, label %130, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 8
  %96 = load i8, ptr %95, align 1, !tbaa !5
  %97 = zext i8 %96 to i32
  %98 = shl nuw i32 %97, 24
  %99 = getelementptr inbounds i8, ptr %95, i64 1
  %100 = load i8, ptr %99, align 1, !tbaa !5
  %101 = zext i8 %100 to i32
  %102 = shl nuw nsw i32 %101, 16
  %103 = or i32 %102, %98
  %104 = getelementptr inbounds i8, ptr %95, i64 2
  %105 = load i8, ptr %104, align 1, !tbaa !5
  %106 = zext i8 %105 to i32
  %107 = shl nuw nsw i32 %106, 8
  %108 = or i32 %103, %107
  %109 = getelementptr inbounds i8, ptr %95, i64 3
  %110 = load i8, ptr %109, align 1, !tbaa !5
  %111 = zext i8 %110 to i32
  %112 = or i32 %108, %111
  %113 = icmp ult i32 %112, %92
  br i1 %113, label %130, label %114

114:                                              ; preds = %94
  %115 = tail call i32 @llvm.umin.i32(i32 %28, i32 %92)
  br label %116

116:                                              ; preds = %114, %88, %48
  %117 = phi i32 [ %28, %48 ], [ %115, %114 ], [ %90, %88 ]
  %118 = zext i32 %117 to i64
  %119 = zext i32 %25 to i64
  %120 = getelementptr inbounds i8, ptr %0, i64 %119
  %121 = tail call ptr @memchr(ptr noundef nonnull %120, i32 noundef 0, i64 noundef %118) #10
  %122 = icmp eq ptr %121, null
  br i1 %122, label %130, label %123

123:                                              ; preds = %116
  %124 = icmp eq ptr %2, null
  br i1 %124, label %136, label %125

125:                                              ; preds = %123
  %126 = ptrtoint ptr %121 to i64
  %127 = ptrtoint ptr %120 to i64
  %128 = sub i64 %126, %127
  %129 = trunc i64 %128 to i32
  br label %133

130:                                              ; preds = %116, %94, %91, %68, %46, %27, %6, %3
  %131 = phi i32 [ %4, %3 ], [ -4, %6 ], [ -4, %46 ], [ -4, %68 ], [ -8, %116 ], [ -4, %94 ], [ -4, %91 ], [ -13, %27 ]
  %132 = icmp eq ptr %2, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %130, %125
  %134 = phi i32 [ %129, %125 ], [ %131, %130 ]
  %135 = phi ptr [ %120, %125 ], [ null, %130 ]
  store i32 %134, ptr %2, align 4, !tbaa !8
  br label %136

136:                                              ; preds = %133, %130, %123
  %137 = phi ptr [ %120, %123 ], [ null, %130 ], [ %135, %133 ]
  ret ptr %137
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

declare i32 @fdt_ro_probe_(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @fdt_string(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @fdt_get_string(ptr noundef %0, i32 noundef %1, ptr noundef null)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_find_max_phandle(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @fdt_next_node(ptr noundef %0, i32 noundef -1, ptr noundef null) #9
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
  %12 = tail call i32 @fdt_get_phandle(ptr noundef %0, i32 noundef %10)
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 %11)
  %14 = tail call i32 @fdt_next_node(ptr noundef %0, i32 noundef %10, ptr noundef null) #9
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %5, label %9

16:                                               ; preds = %5
  %17 = icmp eq ptr %1, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  store i32 %6, ptr %1, align 4, !tbaa !8
  br label %19

19:                                               ; preds = %18, %16, %5
  %20 = phi i32 [ 0, %18 ], [ 0, %16 ], [ %7, %5 ]
  ret i32 %20
}

declare i32 @fdt_next_node(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_get_phandle(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %6 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str, i32 noundef 7, ptr noundef nonnull %5, ptr noundef nonnull %4) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %47

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
  %11 = load i8, ptr %10, align 1, !tbaa !5
  %12 = zext i8 %11 to i32
  %13 = shl nuw i32 %12, 24
  %14 = getelementptr inbounds i8, ptr %10, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !5
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 16
  %18 = or i32 %17, %13
  %19 = getelementptr inbounds i8, ptr %10, i64 2
  %20 = load i8, ptr %19, align 1, !tbaa !5
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 8
  %23 = or i32 %18, %22
  %24 = getelementptr inbounds i8, ptr %10, i64 3
  %25 = load i8, ptr %24, align 1, !tbaa !5
  %26 = zext i8 %25 to i32
  %27 = or i32 %23, %26
  %28 = icmp ult i32 %27, 16
  br i1 %28, label %29, label %41

29:                                               ; preds = %9
  %30 = load i32, ptr %4, align 4, !tbaa !8
  %31 = add i32 %30, 4
  %32 = and i32 %31, 7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.fdt_property, ptr %6, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !8
  %37 = call i32 @llvm.bswap.i32(i32 %36) #9
  %38 = icmp ugt i32 %37, 7
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.fdt_property, ptr %6, i64 1, i32 1
  br label %43

41:                                               ; preds = %34, %29, %9
  %42 = getelementptr inbounds %struct.fdt_property, ptr %6, i64 0, i32 3
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi ptr [ %42, %41 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %45 = load i32, ptr %5, align 4
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %89, label %47

47:                                               ; preds = %43, %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %48 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.1, i32 noundef 13, ptr noundef nonnull %5, ptr noundef nonnull %3) #9
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %93

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
  %53 = load i8, ptr %52, align 1, !tbaa !5
  %54 = zext i8 %53 to i32
  %55 = shl nuw i32 %54, 24
  %56 = getelementptr inbounds i8, ptr %52, i64 1
  %57 = load i8, ptr %56, align 1, !tbaa !5
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 16
  %60 = or i32 %59, %55
  %61 = getelementptr inbounds i8, ptr %52, i64 2
  %62 = load i8, ptr %61, align 1, !tbaa !5
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 8
  %65 = or i32 %60, %64
  %66 = getelementptr inbounds i8, ptr %52, i64 3
  %67 = load i8, ptr %66, align 1, !tbaa !5
  %68 = zext i8 %67 to i32
  %69 = or i32 %65, %68
  %70 = icmp ult i32 %69, 16
  br i1 %70, label %71, label %83

71:                                               ; preds = %51
  %72 = load i32, ptr %3, align 4, !tbaa !8
  %73 = add i32 %72, 4
  %74 = and i32 %73, 7
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.fdt_property, ptr %48, i64 0, i32 1
  %78 = load i32, ptr %77, align 4, !tbaa !8
  %79 = call i32 @llvm.bswap.i32(i32 %78) #9
  %80 = icmp ugt i32 %79, 7
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.fdt_property, ptr %48, i64 1, i32 1
  br label %85

83:                                               ; preds = %76, %71, %51
  %84 = getelementptr inbounds %struct.fdt_property, ptr %48, i64 0, i32 3
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi ptr [ %84, %83 ], [ %82, %81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %87 = load i32, ptr %5, align 4
  %88 = icmp eq i32 %87, 4
  br i1 %88, label %89, label %93

89:                                               ; preds = %85, %43
  %90 = phi ptr [ %86, %85 ], [ %44, %43 ]
  %91 = load i32, ptr %90, align 4, !tbaa !8
  %92 = call i32 @llvm.bswap.i32(i32 %91) #9
  br label %93

93:                                               ; preds = %89, %85, %50
  %94 = phi i32 [ %92, %89 ], [ 0, %85 ], [ 0, %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %94
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_generate_phandle(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @fdt_next_node(ptr noundef %0, i32 noundef -1, ptr noundef null) #9
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
  %12 = tail call i32 @fdt_get_phandle(ptr noundef %0, i32 noundef %10) #9
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 %11) #9
  %14 = tail call i32 @fdt_next_node(ptr noundef %0, i32 noundef %10, ptr noundef null) #9
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
  store i32 %22, ptr %1, align 4, !tbaa !8
  br label %23

23:                                               ; preds = %21, %18, %16, %7, %5
  %24 = phi i32 [ -17, %16 ], [ 0, %21 ], [ 0, %18 ], [ %3, %7 ], [ %14, %5 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_get_mem_rsv(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #9
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %70, label %7

7:                                                ; preds = %4
  %8 = shl i32 %1, 4
  %9 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 4
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
  %27 = add i32 %26, %8
  %28 = icmp ult i32 %27, %26
  br i1 %28, label %70, label %29

29:                                               ; preds = %7
  %30 = zext i32 %27 to i64
  %31 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 1
  %32 = load i8, ptr %31, align 1, !tbaa !5
  %33 = zext i8 %32 to i64
  %34 = shl nuw nsw i64 %33, 24
  %35 = getelementptr inbounds i8, ptr %31, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !5
  %37 = zext i8 %36 to i64
  %38 = shl nuw nsw i64 %37, 16
  %39 = or i64 %38, %34
  %40 = getelementptr inbounds i8, ptr %31, i64 2
  %41 = load i8, ptr %40, align 1, !tbaa !5
  %42 = zext i8 %41 to i64
  %43 = shl nuw nsw i64 %42, 8
  %44 = or i64 %39, %43
  %45 = getelementptr inbounds i8, ptr %31, i64 3
  %46 = load i8, ptr %45, align 1, !tbaa !5
  %47 = zext i8 %46 to i64
  %48 = or i64 %44, %47
  %49 = add nsw i64 %48, -16
  %50 = icmp ult i64 %49, %30
  br i1 %50, label %70, label %51

51:                                               ; preds = %29
  %52 = zext i8 %14 to i64
  %53 = shl nuw nsw i64 %52, 16
  %54 = zext i8 %10 to i64
  %55 = shl nuw nsw i64 %54, 24
  %56 = or i64 %53, %55
  %57 = zext i8 %19 to i64
  %58 = shl nuw nsw i64 %57, 8
  %59 = or i64 %56, %58
  %60 = zext i8 %24 to i64
  %61 = or i64 %59, %60
  %62 = getelementptr inbounds i8, ptr %0, i64 %61
  %63 = sext i32 %1 to i64
  %64 = getelementptr inbounds %struct.fdt_reserve_entry, ptr %62, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !10
  %66 = tail call i64 @llvm.bswap.i64(i64 %65) #9
  store i64 %66, ptr %2, align 8, !tbaa !10
  %67 = getelementptr inbounds %struct.fdt_reserve_entry, ptr %64, i64 0, i32 1
  %68 = load i64, ptr %67, align 8, !tbaa !10
  %69 = tail call i64 @llvm.bswap.i64(i64 %68) #9
  store i64 %69, ptr %3, align 8, !tbaa !10
  br label %70

70:                                               ; preds = %51, %29, %7, %4
  %71 = phi i32 [ 0, %51 ], [ %5, %4 ], [ -4, %7 ], [ -4, %29 ]
  ret i32 %71
}

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @fdt_num_mem_rsv(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 4
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
  %20 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 1
  %21 = load i8, ptr %20, align 1, !tbaa !5
  %22 = zext i8 %21 to i64
  %23 = shl nuw nsw i64 %22, 24
  %24 = getelementptr inbounds i8, ptr %20, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !5
  %26 = zext i8 %25 to i64
  %27 = shl nuw nsw i64 %26, 16
  %28 = or i64 %27, %23
  %29 = getelementptr inbounds i8, ptr %20, i64 2
  %30 = load i8, ptr %29, align 1, !tbaa !5
  %31 = zext i8 %30 to i64
  %32 = shl nuw nsw i64 %31, 8
  %33 = or i64 %28, %32
  %34 = getelementptr inbounds i8, ptr %20, i64 3
  %35 = load i8, ptr %34, align 1, !tbaa !5
  %36 = zext i8 %35 to i64
  %37 = or i64 %33, %36
  %38 = add nsw i64 %37, -16
  %39 = zext i8 %7 to i64
  %40 = shl nuw nsw i64 %39, 16
  %41 = zext i8 %3 to i64
  %42 = shl nuw nsw i64 %41, 24
  %43 = or i64 %40, %42
  %44 = zext i8 %12 to i64
  %45 = shl nuw nsw i64 %44, 8
  %46 = or i64 %43, %45
  %47 = zext i8 %17 to i64
  %48 = or i64 %46, %47
  %49 = getelementptr inbounds i8, ptr %0, i64 %48
  br label %50

50:                                               ; preds = %60, %1
  %51 = phi i64 [ 0, %1 ], [ %61, %60 ]
  %52 = phi i32 [ %19, %1 ], [ %64, %60 ]
  %53 = zext i32 %52 to i64
  %54 = icmp ult i64 %38, %53
  br i1 %54, label %68, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.fdt_reserve_entry, ptr %49, i64 %51
  %57 = getelementptr inbounds %struct.fdt_reserve_entry, ptr %56, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !10
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = add nuw i64 %51, 1
  %62 = trunc i64 %61 to i32
  %63 = shl i32 %62, 4
  %64 = add i32 %19, %63
  %65 = icmp ult i32 %64, %19
  br i1 %65, label %68, label %50

66:                                               ; preds = %55
  %67 = trunc i64 %51 to i32
  br label %68

68:                                               ; preds = %66, %60, %50
  %69 = phi i32 [ %67, %66 ], [ -8, %60 ], [ -8, %50 ]
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_subnode_offset_namelen(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  %7 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %4
  store i32 0, ptr %6, align 4, !tbaa !8
  %10 = icmp sgt i32 %1, -1
  br i1 %10, label %11, label %46

11:                                               ; preds = %9
  %12 = sext i32 %3 to i64
  br label %13

13:                                               ; preds = %37, %11
  %14 = phi i32 [ %1, %11 ], [ %38, %37 ]
  %15 = phi i32 [ 0, %11 ], [ %39, %37 ]
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %18 = call ptr @fdt_get_name(ptr noundef %0, i32 noundef %14, ptr noundef nonnull %5) #9
  %19 = icmp eq ptr %18, null
  %20 = load i32, ptr %5, align 4
  %21 = icmp slt i32 %20, %3
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %17
  %24 = call i32 @bcmp(ptr nonnull %18, ptr %2, i64 %12) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = getelementptr inbounds i8, ptr %18, i64 %12
  %28 = load i8, ptr %27, align 1, !tbaa !5
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %46

31:                                               ; preds = %23, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %37

32:                                               ; preds = %26
  %33 = call ptr @memchr(ptr noundef %2, i32 noundef 64, i64 noundef %12) #10
  %34 = icmp ne ptr %33, null
  %35 = icmp ne i8 %28, 64
  %36 = select i1 %34, i1 true, i1 %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br i1 %36, label %37, label %46

37:                                               ; preds = %32, %31, %13
  %38 = call i32 @fdt_next_node(ptr noundef %0, i32 noundef %14, ptr noundef nonnull %6) #9
  %39 = load i32, ptr %6, align 4
  %40 = icmp sgt i32 %38, -1
  %41 = icmp sgt i32 %39, -1
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %13, label %43

43:                                               ; preds = %37
  %44 = icmp sgt i32 %39, -1
  %45 = select i1 %44, i32 %38, i32 -1
  br label %46

46:                                               ; preds = %43, %32, %30, %9, %4
  %47 = phi i32 [ %7, %4 ], [ %14, %30 ], [ %1, %9 ], [ %45, %43 ], [ %14, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_subnode_offset(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #10
  %5 = trunc i64 %4 to i32
  %6 = tail call i32 @fdt_subnode_offset_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_path_offset_namelen(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  %7 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %91, label %9

9:                                                ; preds = %3
  %10 = load i8, ptr %1, align 1, !tbaa !5
  %11 = icmp eq i8 %10, 47
  br i1 %11, label %65, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @memchr(ptr noundef nonnull %1, i32 noundef 47, i64 noundef %5) #10
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr %6, ptr %13
  %16 = tail call i32 @fdt_path_offset_namelen(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef 8) #9
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %91, label %18

18:                                               ; preds = %12
  %19 = ptrtoint ptr %15 to i64
  %20 = ptrtoint ptr %1 to i64
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %23 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %16, ptr noundef nonnull %1, i32 noundef %22, ptr noundef null, ptr noundef nonnull %4) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %59, label %25

25:                                               ; preds = %18
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
  br i1 %44, label %45, label %57

45:                                               ; preds = %25
  %46 = load i32, ptr %4, align 4, !tbaa !8
  %47 = add i32 %46, 4
  %48 = and i32 %47, 7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.fdt_property, ptr %23, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !8
  %53 = call i32 @llvm.bswap.i32(i32 %52) #9
  %54 = icmp ugt i32 %53, 7
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.fdt_property, ptr %23, i64 1, i32 1
  br label %60

57:                                               ; preds = %50, %45, %25
  %58 = getelementptr inbounds %struct.fdt_property, ptr %23, i64 0, i32 3
  br label %60

59:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %91

60:                                               ; preds = %57, %55
  %61 = phi ptr [ %56, %55 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %62 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %61) #10
  %63 = trunc i64 %62 to i32
  %64 = call i32 @fdt_path_offset_namelen(ptr noundef nonnull %0, ptr noundef nonnull %61, i32 noundef %63) #9
  br label %65

65:                                               ; preds = %60, %9
  %66 = phi ptr [ %15, %60 ], [ %1, %9 ]
  %67 = phi i32 [ %64, %60 ], [ 0, %9 ]
  %68 = ptrtoint ptr %6 to i64
  br label %69

69:                                               ; preds = %80, %65
  %70 = phi ptr [ %66, %65 ], [ %85, %80 ]
  %71 = phi i32 [ %67, %65 ], [ %89, %80 ]
  %72 = icmp ult ptr %70, %6
  br i1 %72, label %73, label %91

73:                                               ; preds = %77, %69
  %74 = phi ptr [ %78, %77 ], [ %70, %69 ]
  %75 = load i8, ptr %74, align 1, !tbaa !5
  %76 = icmp eq i8 %75, 47
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = getelementptr inbounds i8, ptr %74, i64 1
  %79 = icmp eq ptr %78, %6
  br i1 %79, label %91, label %73

80:                                               ; preds = %73
  %81 = ptrtoint ptr %74 to i64
  %82 = sub i64 %68, %81
  %83 = call ptr @memchr(ptr noundef nonnull %74, i32 noundef 47, i64 noundef %82) #10
  %84 = icmp eq ptr %83, null
  %85 = select i1 %84, ptr %6, ptr %83
  %86 = ptrtoint ptr %85 to i64
  %87 = sub i64 %86, %81
  %88 = trunc i64 %87 to i32
  %89 = call i32 @fdt_subnode_offset_namelen(ptr noundef %0, i32 noundef %71, ptr noundef nonnull %74, i32 noundef %88)
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %69

91:                                               ; preds = %80, %77, %69, %59, %12, %3
  %92 = phi i32 [ %7, %3 ], [ -5, %59 ], [ -5, %12 ], [ %71, %77 ], [ %71, %69 ], [ %89, %80 ]
  ret i32 %92
}

; Function Attrs: nounwind uwtable
define dso_local ptr @fdt_get_alias_namelen(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = tail call i32 @fdt_path_offset_namelen(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef 8) #9
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %46, label %7

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %8 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %5, ptr noundef %1, i32 noundef %2, ptr noundef null, ptr noundef nonnull %4) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %44, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = zext i8 %12 to i32
  %14 = shl nuw i32 %13, 24
  %15 = getelementptr inbounds i8, ptr %11, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !5
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 16
  %19 = or i32 %18, %14
  %20 = getelementptr inbounds i8, ptr %11, i64 2
  %21 = load i8, ptr %20, align 1, !tbaa !5
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 8
  %24 = or i32 %19, %23
  %25 = getelementptr inbounds i8, ptr %11, i64 3
  %26 = load i8, ptr %25, align 1, !tbaa !5
  %27 = zext i8 %26 to i32
  %28 = or i32 %24, %27
  %29 = icmp ult i32 %28, 16
  br i1 %29, label %30, label %42

30:                                               ; preds = %10
  %31 = load i32, ptr %4, align 4, !tbaa !8
  %32 = add i32 %31, 4
  %33 = and i32 %32, 7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.fdt_property, ptr %8, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !8
  %38 = call i32 @llvm.bswap.i32(i32 %37) #9
  %39 = icmp ugt i32 %38, 7
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.fdt_property, ptr %8, i64 1, i32 1
  br label %44

42:                                               ; preds = %35, %30, %10
  %43 = getelementptr inbounds %struct.fdt_property, ptr %8, i64 0, i32 3
  br label %44

44:                                               ; preds = %42, %40, %7
  %45 = phi ptr [ %43, %42 ], [ %41, %40 ], [ null, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %46

46:                                               ; preds = %44, %3
  %47 = phi ptr [ %45, %44 ], [ null, %3 ]
  ret ptr %47
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_path_offset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  %4 = trunc i64 %3 to i32
  %5 = tail call i32 @fdt_path_offset_namelen(ptr noundef %0, ptr noundef %1, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @fdt_get_name(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 2
  %5 = load i8, ptr %4, align 1, !tbaa !5
  %6 = zext i8 %5 to i64
  %7 = shl nuw nsw i64 %6, 24
  %8 = getelementptr inbounds i8, ptr %4, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = zext i8 %9 to i64
  %11 = shl nuw nsw i64 %10, 16
  %12 = or i64 %11, %7
  %13 = getelementptr inbounds i8, ptr %4, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 8
  %17 = or i64 %12, %16
  %18 = getelementptr inbounds i8, ptr %4, i64 3
  %19 = load i8, ptr %18, align 1, !tbaa !5
  %20 = zext i8 %19 to i64
  %21 = or i64 %17, %20
  %22 = getelementptr inbounds i8, ptr %0, i64 %21
  %23 = sext i32 %1 to i64
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  %25 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #9
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %61, label %27

27:                                               ; preds = %3
  %28 = tail call i32 @fdt_check_node_offset_(ptr noundef nonnull %0, i32 noundef %1) #9
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %61, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.fdt_node_header, ptr %24, i64 0, i32 1
  %32 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
  %33 = load i8, ptr %32, align 1, !tbaa !5
  %34 = zext i8 %33 to i32
  %35 = shl nuw i32 %34, 24
  %36 = getelementptr inbounds i8, ptr %32, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !5
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 16
  %40 = or i32 %39, %35
  %41 = getelementptr inbounds i8, ptr %32, i64 2
  %42 = load i8, ptr %41, align 1, !tbaa !5
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 8
  %45 = or i32 %40, %44
  %46 = getelementptr inbounds i8, ptr %32, i64 3
  %47 = load i8, ptr %46, align 1, !tbaa !5
  %48 = zext i8 %47 to i32
  %49 = or i32 %45, %48
  %50 = icmp ult i32 %49, 16
  br i1 %50, label %51, label %55

51:                                               ; preds = %30
  %52 = tail call ptr @strrchr(ptr noundef nonnull %31, i32 noundef 47) #10
  %53 = icmp eq ptr %52, null
  %54 = getelementptr inbounds i8, ptr %52, i64 1
  br i1 %53, label %61, label %55

55:                                               ; preds = %51, %30
  %56 = phi ptr [ %54, %51 ], [ %31, %30 ]
  %57 = icmp eq ptr %2, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %55
  %59 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %56) #10
  %60 = trunc i64 %59 to i32
  br label %64

61:                                               ; preds = %51, %27, %3
  %62 = phi i32 [ %25, %3 ], [ %28, %27 ], [ -11, %51 ]
  %63 = icmp eq ptr %2, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %61, %58
  %65 = phi i32 [ %60, %58 ], [ %62, %61 ]
  %66 = phi ptr [ %56, %58 ], [ null, %61 ]
  store i32 %65, ptr %2, align 4, !tbaa !8
  br label %67

67:                                               ; preds = %64, %61, %55
  %68 = phi ptr [ %56, %55 ], [ null, %61 ], [ %66, %64 ]
  ret ptr %68
}

declare i32 @fdt_check_node_offset_(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_first_property_offset(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = tail call i32 @fdt_check_node_offset_(ptr noundef %0, i32 noundef %1) #9
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  br label %7

7:                                                ; preds = %14, %6
  %8 = phi i32 [ %4, %6 ], [ %15, %14 ]
  %9 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %8, ptr noundef nonnull %3) #9
  switch i32 %9, label %14 [
    i32 9, label %10
    i32 3, label %17
  ]

10:                                               ; preds = %7
  %11 = load i32, ptr %3, align 4, !tbaa !8
  %12 = icmp sgt i32 %11, -1
  %13 = select i1 %12, i32 -11, i32 %11
  br label %17

14:                                               ; preds = %7
  %15 = load i32, ptr %3, align 4, !tbaa !8
  %16 = icmp eq i32 %9, 4
  br i1 %16, label %7, label %17

17:                                               ; preds = %14, %10, %7
  %18 = phi i32 [ %13, %10 ], [ %8, %7 ], [ -1, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %19

19:                                               ; preds = %17, %2
  %20 = phi i32 [ %18, %17 ], [ %4, %2 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_next_property_offset(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = tail call i32 @fdt_check_prop_offset_(ptr noundef %0, i32 noundef %1) #9
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  br label %7

7:                                                ; preds = %14, %6
  %8 = phi i32 [ %4, %6 ], [ %15, %14 ]
  %9 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %8, ptr noundef nonnull %3) #9
  switch i32 %9, label %14 [
    i32 9, label %10
    i32 3, label %17
  ]

10:                                               ; preds = %7
  %11 = load i32, ptr %3, align 4, !tbaa !8
  %12 = icmp sgt i32 %11, -1
  %13 = select i1 %12, i32 -11, i32 %11
  br label %17

14:                                               ; preds = %7
  %15 = load i32, ptr %3, align 4, !tbaa !8
  %16 = icmp eq i32 %9, 4
  br i1 %16, label %7, label %17

17:                                               ; preds = %14, %10, %7
  %18 = phi i32 [ %13, %10 ], [ %8, %7 ], [ -1, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %19

19:                                               ; preds = %17, %2
  %20 = phi i32 [ %18, %17 ], [ %4, %2 ]
  ret i32 %20
}

declare i32 @fdt_check_prop_offset_(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @fdt_get_property_by_offset(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
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
  %22 = icmp ult i32 %21, 16
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = icmp eq ptr %2, null
  br i1 %24, label %60, label %57

25:                                               ; preds = %3
  %26 = tail call i32 @fdt_check_prop_offset_(ptr noundef nonnull %0, i32 noundef %1) #9
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = icmp eq ptr %2, null
  br i1 %29, label %60, label %57

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 2
  %32 = load i8, ptr %31, align 1, !tbaa !5
  %33 = zext i8 %32 to i64
  %34 = shl nuw nsw i64 %33, 24
  %35 = getelementptr inbounds i8, ptr %31, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !5
  %37 = zext i8 %36 to i64
  %38 = shl nuw nsw i64 %37, 16
  %39 = or i64 %38, %34
  %40 = getelementptr inbounds i8, ptr %31, i64 2
  %41 = load i8, ptr %40, align 1, !tbaa !5
  %42 = zext i8 %41 to i64
  %43 = shl nuw nsw i64 %42, 8
  %44 = or i64 %39, %43
  %45 = getelementptr inbounds i8, ptr %31, i64 3
  %46 = load i8, ptr %45, align 1, !tbaa !5
  %47 = zext i8 %46 to i64
  %48 = or i64 %44, %47
  %49 = getelementptr inbounds i8, ptr %0, i64 %48
  %50 = sext i32 %1 to i64
  %51 = getelementptr inbounds i8, ptr %49, i64 %50
  %52 = icmp eq ptr %2, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %30
  %54 = getelementptr inbounds %struct.fdt_property, ptr %51, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !8
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #9
  br label %57

57:                                               ; preds = %53, %28, %23
  %58 = phi i32 [ -10, %23 ], [ %56, %53 ], [ %26, %28 ]
  %59 = phi ptr [ null, %23 ], [ %51, %53 ], [ null, %28 ]
  store i32 %58, ptr %2, align 4, !tbaa !8
  br label %60

60:                                               ; preds = %57, %30, %28, %23
  %61 = phi ptr [ null, %23 ], [ null, %28 ], [ %51, %30 ], [ %59, %57 ]
  ret ptr %61
}

; Function Attrs: nounwind uwtable
define dso_local ptr @fdt_get_property_namelen(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 %8, 24
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !5
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 16
  %14 = or i32 %13, %9
  %15 = getelementptr inbounds i8, ptr %6, i64 2
  %16 = load i8, ptr %15, align 1, !tbaa !5
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 8
  %19 = or i32 %14, %18
  %20 = getelementptr inbounds i8, ptr %6, i64 3
  %21 = load i8, ptr %20, align 1, !tbaa !5
  %22 = zext i8 %21 to i32
  %23 = or i32 %19, %22
  %24 = icmp ult i32 %23, 16
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = icmp eq ptr %4, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  store i32 -10, ptr %4, align 4, !tbaa !8
  br label %30

28:                                               ; preds = %5
  %29 = tail call fastcc ptr @fdt_get_property_namelen_(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef null)
  br label %30

30:                                               ; preds = %28, %27, %25
  %31 = phi ptr [ %29, %28 ], [ null, %27 ], [ null, %25 ]
  ret ptr %31
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef writeonly %4, ptr noundef writeonly %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = tail call i32 @fdt_check_node_offset_(ptr noundef %0, i32 noundef %1) #9
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %95, label %12

12:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  br label %13

13:                                               ; preds = %20, %12
  %14 = phi i32 [ %10, %12 ], [ %21, %20 ]
  %15 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %14, ptr noundef nonnull %9) #9
  switch i32 %15, label %20 [
    i32 9, label %16
    i32 3, label %25
  ]

16:                                               ; preds = %13
  %17 = load i32, ptr %9, align 4, !tbaa !8
  %18 = icmp sgt i32 %17, -1
  %19 = select i1 %18, i32 -11, i32 %17
  br label %23

20:                                               ; preds = %13
  %21 = load i32, ptr %9, align 4, !tbaa !8
  %22 = icmp eq i32 %15, 4
  br i1 %22, label %13, label %23

23:                                               ; preds = %20, %16
  %24 = phi i32 [ %19, %16 ], [ -1, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  br label %95

25:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  %26 = icmp sgt i32 %14, -1
  br i1 %26, label %27, label %95

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 2
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  %30 = getelementptr inbounds i8, ptr %28, i64 2
  %31 = getelementptr inbounds i8, ptr %28, i64 3
  %32 = icmp eq ptr %4, null
  %33 = sext i32 %3 to i64
  br label %34

34:                                               ; preds = %93, %27
  %35 = phi i32 [ %14, %27 ], [ %82, %93 ]
  %36 = call i32 @fdt_check_prop_offset_(ptr noundef %0, i32 noundef %35) #9
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br i1 %32, label %100, label %98

39:                                               ; preds = %34
  %40 = load i8, ptr %28, align 1, !tbaa !5
  %41 = zext i8 %40 to i64
  %42 = shl nuw nsw i64 %41, 24
  %43 = load i8, ptr %29, align 1, !tbaa !5
  %44 = zext i8 %43 to i64
  %45 = shl nuw nsw i64 %44, 16
  %46 = or i64 %45, %42
  %47 = load i8, ptr %30, align 1, !tbaa !5
  %48 = zext i8 %47 to i64
  %49 = shl nuw nsw i64 %48, 8
  %50 = or i64 %46, %49
  %51 = load i8, ptr %31, align 1, !tbaa !5
  %52 = zext i8 %51 to i64
  %53 = or i64 %50, %52
  %54 = getelementptr inbounds i8, ptr %0, i64 %53
  %55 = zext i32 %35 to i64
  %56 = getelementptr inbounds i8, ptr %54, i64 %55
  br i1 %32, label %61, label %57

57:                                               ; preds = %39
  %58 = getelementptr inbounds %struct.fdt_property, ptr %56, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !8
  %60 = call i32 @llvm.bswap.i32(i32 %59) #9
  store i32 %60, ptr %4, align 4, !tbaa !8
  br label %61

61:                                               ; preds = %57, %39
  %62 = getelementptr inbounds %struct.fdt_property, ptr %56, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !8
  %64 = call i32 @llvm.bswap.i32(i32 %63) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  %65 = call ptr @fdt_get_string(ptr noundef nonnull %0, i32 noundef %64, ptr noundef nonnull %8) #9
  %66 = icmp ne ptr %65, null
  %67 = load i32, ptr %8, align 4
  %68 = icmp eq i32 %67, %3
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  br label %77

71:                                               ; preds = %61
  %72 = call i32 @bcmp(ptr nonnull %65, ptr %2, i64 %33) #9
  %73 = icmp eq i32 %72, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = icmp eq ptr %5, null
  br i1 %75, label %100, label %76

76:                                               ; preds = %74
  store i32 %35, ptr %5, align 4, !tbaa !8
  br label %100

77:                                               ; preds = %71, %70
  %78 = call i32 @fdt_check_prop_offset_(ptr noundef nonnull %0, i32 noundef %35) #9
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %95, label %80

80:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  br label %81

81:                                               ; preds = %88, %80
  %82 = phi i32 [ %78, %80 ], [ %89, %88 ]
  %83 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %82, ptr noundef nonnull %7) #9
  switch i32 %83, label %88 [
    i32 9, label %84
    i32 3, label %93
  ]

84:                                               ; preds = %81
  %85 = load i32, ptr %7, align 4, !tbaa !8
  %86 = icmp sgt i32 %85, -1
  %87 = select i1 %86, i32 -11, i32 %85
  br label %91

88:                                               ; preds = %81
  %89 = load i32, ptr %7, align 4, !tbaa !8
  %90 = icmp eq i32 %83, 4
  br i1 %90, label %81, label %91

91:                                               ; preds = %88, %84
  %92 = phi i32 [ %87, %84 ], [ -1, %88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  br label %95

93:                                               ; preds = %81
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  %94 = icmp sgt i32 %82, -1
  br i1 %94, label %34, label %95

95:                                               ; preds = %93, %91, %77, %25, %23, %6
  %96 = phi i32 [ %14, %25 ], [ %24, %23 ], [ %92, %91 ], [ %10, %6 ], [ %78, %77 ], [ %82, %93 ]
  %97 = icmp eq ptr %4, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %95, %38
  %99 = phi i32 [ %96, %95 ], [ -13, %38 ]
  store i32 %99, ptr %4, align 4, !tbaa !8
  br label %100

100:                                              ; preds = %98, %95, %76, %74, %38
  %101 = phi ptr [ null, %98 ], [ null, %95 ], [ %56, %76 ], [ %56, %74 ], [ null, %38 ]
  ret ptr %101
}

; Function Attrs: nounwind uwtable
define dso_local ptr @fdt_get_property(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
  %6 = load i8, ptr %5, align 1, !tbaa !5
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 %7, 24
  %9 = getelementptr inbounds i8, ptr %5, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !5
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 16
  %13 = or i32 %12, %8
  %14 = getelementptr inbounds i8, ptr %5, i64 2
  %15 = load i8, ptr %14, align 1, !tbaa !5
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = or i32 %13, %17
  %19 = getelementptr inbounds i8, ptr %5, i64 3
  %20 = load i8, ptr %19, align 1, !tbaa !5
  %21 = zext i8 %20 to i32
  %22 = or i32 %18, %21
  %23 = icmp ult i32 %22, 16
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = icmp eq ptr %3, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %24
  store i32 -10, ptr %3, align 4, !tbaa !8
  br label %31

27:                                               ; preds = %4
  %28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #10
  %29 = trunc i64 %28 to i32
  %30 = tail call fastcc ptr @fdt_get_property_namelen_(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %29, ptr noundef %3, ptr noundef null) #9
  br label %31

31:                                               ; preds = %27, %26, %24
  %32 = phi ptr [ %30, %27 ], [ null, %26 ], [ null, %24 ]
  ret ptr %32
}

; Function Attrs: nounwind uwtable
define dso_local ptr @fdt_getprop_namelen(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  %7 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %43, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
  %11 = load i8, ptr %10, align 1, !tbaa !5
  %12 = zext i8 %11 to i32
  %13 = shl nuw i32 %12, 24
  %14 = getelementptr inbounds i8, ptr %10, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !5
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 16
  %18 = or i32 %17, %13
  %19 = getelementptr inbounds i8, ptr %10, i64 2
  %20 = load i8, ptr %19, align 1, !tbaa !5
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 8
  %23 = or i32 %18, %22
  %24 = getelementptr inbounds i8, ptr %10, i64 3
  %25 = load i8, ptr %24, align 1, !tbaa !5
  %26 = zext i8 %25 to i32
  %27 = or i32 %23, %26
  %28 = icmp ult i32 %27, 16
  br i1 %28, label %29, label %41

29:                                               ; preds = %9
  %30 = load i32, ptr %6, align 4, !tbaa !8
  %31 = add i32 %30, 4
  %32 = and i32 %31, 7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.fdt_property, ptr %7, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !8
  %37 = call i32 @llvm.bswap.i32(i32 %36) #9
  %38 = icmp ugt i32 %37, 7
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.fdt_property, ptr %7, i64 1, i32 1
  br label %43

41:                                               ; preds = %34, %29, %9
  %42 = getelementptr inbounds %struct.fdt_property, ptr %7, i64 0, i32 3
  br label %43

43:                                               ; preds = %41, %39, %5
  %44 = phi ptr [ %42, %41 ], [ %40, %39 ], [ null, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  ret ptr %44
}

; Function Attrs: nounwind uwtable
define dso_local ptr @fdt_getprop_by_offset(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = tail call i32 @fdt_check_prop_offset_(ptr noundef %0, i32 noundef %1) #9
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = icmp eq ptr %3, null
  br i1 %9, label %84, label %10

10:                                               ; preds = %8
  store i32 %6, ptr %3, align 4, !tbaa !8
  br label %84

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 2
  %13 = load i8, ptr %12, align 1, !tbaa !5
  %14 = zext i8 %13 to i64
  %15 = shl nuw nsw i64 %14, 24
  %16 = getelementptr inbounds i8, ptr %12, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !5
  %18 = zext i8 %17 to i64
  %19 = shl nuw nsw i64 %18, 16
  %20 = or i64 %19, %15
  %21 = getelementptr inbounds i8, ptr %12, i64 2
  %22 = load i8, ptr %21, align 1, !tbaa !5
  %23 = zext i8 %22 to i64
  %24 = shl nuw nsw i64 %23, 8
  %25 = or i64 %20, %24
  %26 = getelementptr inbounds i8, ptr %12, i64 3
  %27 = load i8, ptr %26, align 1, !tbaa !5
  %28 = zext i8 %27 to i64
  %29 = or i64 %25, %28
  %30 = getelementptr inbounds i8, ptr %0, i64 %29
  %31 = sext i32 %1 to i64
  %32 = getelementptr inbounds i8, ptr %30, i64 %31
  %33 = icmp eq ptr %3, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %11
  %35 = getelementptr inbounds %struct.fdt_property, ptr %32, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !8
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #9
  store i32 %37, ptr %3, align 4, !tbaa !8
  br label %38

38:                                               ; preds = %34, %11
  %39 = icmp eq ptr %2, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %41 = getelementptr inbounds %struct.fdt_property, ptr %32, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !8
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  %44 = call ptr @fdt_get_string(ptr noundef nonnull %0, i32 noundef %43, ptr noundef nonnull %5)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  br i1 %33, label %83, label %47

47:                                               ; preds = %46
  %48 = load i32, ptr %5, align 4, !tbaa !8
  store i32 %48, ptr %3, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %84

49:                                               ; preds = %40
  store ptr %44, ptr %2, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %50

50:                                               ; preds = %49, %38
  %51 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
  %52 = load i8, ptr %51, align 1, !tbaa !5
  %53 = zext i8 %52 to i32
  %54 = shl nuw i32 %53, 24
  %55 = getelementptr inbounds i8, ptr %51, i64 1
  %56 = load i8, ptr %55, align 1, !tbaa !5
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 16
  %59 = or i32 %58, %54
  %60 = getelementptr inbounds i8, ptr %51, i64 2
  %61 = load i8, ptr %60, align 1, !tbaa !5
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 8
  %64 = or i32 %59, %63
  %65 = getelementptr inbounds i8, ptr %51, i64 3
  %66 = load i8, ptr %65, align 1, !tbaa !5
  %67 = zext i8 %66 to i32
  %68 = or i32 %64, %67
  %69 = icmp ult i32 %68, 16
  br i1 %69, label %70, label %81

70:                                               ; preds = %50
  %71 = add i32 %1, 4
  %72 = and i32 %71, 7
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.fdt_property, ptr %32, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !8
  %77 = call i32 @llvm.bswap.i32(i32 %76) #9
  %78 = icmp ugt i32 %77, 7
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.fdt_property, ptr %32, i64 1, i32 1
  br label %84

81:                                               ; preds = %74, %70, %50
  %82 = getelementptr inbounds %struct.fdt_property, ptr %32, i64 0, i32 3
  br label %84

83:                                               ; preds = %46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %84

84:                                               ; preds = %83, %81, %79, %47, %10, %8
  %85 = phi ptr [ %82, %81 ], [ %80, %79 ], [ null, %83 ], [ null, %47 ], [ null, %10 ], [ null, %8 ]
  ret ptr %85
}

; Function Attrs: nounwind uwtable
define dso_local ptr @fdt_getprop(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #10
  %7 = trunc i64 %6 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %8 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %7, ptr noundef %3, ptr noundef nonnull %5) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %44, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = zext i8 %12 to i32
  %14 = shl nuw i32 %13, 24
  %15 = getelementptr inbounds i8, ptr %11, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !5
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 16
  %19 = or i32 %18, %14
  %20 = getelementptr inbounds i8, ptr %11, i64 2
  %21 = load i8, ptr %20, align 1, !tbaa !5
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 8
  %24 = or i32 %19, %23
  %25 = getelementptr inbounds i8, ptr %11, i64 3
  %26 = load i8, ptr %25, align 1, !tbaa !5
  %27 = zext i8 %26 to i32
  %28 = or i32 %24, %27
  %29 = icmp ult i32 %28, 16
  br i1 %29, label %30, label %42

30:                                               ; preds = %10
  %31 = load i32, ptr %5, align 4, !tbaa !8
  %32 = add i32 %31, 4
  %33 = and i32 %32, 7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.fdt_property, ptr %8, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !8
  %38 = call i32 @llvm.bswap.i32(i32 %37) #9
  %39 = icmp ugt i32 %38, 7
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.fdt_property, ptr %8, i64 1, i32 1
  br label %44

42:                                               ; preds = %35, %30, %10
  %43 = getelementptr inbounds %struct.fdt_property, ptr %8, i64 0, i32 3
  br label %44

44:                                               ; preds = %42, %40, %4
  %45 = phi ptr [ %43, %42 ], [ %41, %40 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret ptr %45
}

; Function Attrs: nounwind uwtable
define dso_local ptr @fdt_get_alias(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  %5 = tail call i32 @fdt_path_offset_namelen(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef 8) #9
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %47, label %7

7:                                                ; preds = %2
  %8 = trunc i64 %4 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %9 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %5, ptr noundef %1, i32 noundef %8, ptr noundef null, ptr noundef nonnull %3) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %45, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
  %13 = load i8, ptr %12, align 1, !tbaa !5
  %14 = zext i8 %13 to i32
  %15 = shl nuw i32 %14, 24
  %16 = getelementptr inbounds i8, ptr %12, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !5
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 16
  %20 = or i32 %19, %15
  %21 = getelementptr inbounds i8, ptr %12, i64 2
  %22 = load i8, ptr %21, align 1, !tbaa !5
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 8
  %25 = or i32 %20, %24
  %26 = getelementptr inbounds i8, ptr %12, i64 3
  %27 = load i8, ptr %26, align 1, !tbaa !5
  %28 = zext i8 %27 to i32
  %29 = or i32 %25, %28
  %30 = icmp ult i32 %29, 16
  br i1 %30, label %31, label %43

31:                                               ; preds = %11
  %32 = load i32, ptr %3, align 4, !tbaa !8
  %33 = add i32 %32, 4
  %34 = and i32 %33, 7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.fdt_property, ptr %9, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !8
  %39 = call i32 @llvm.bswap.i32(i32 %38) #9
  %40 = icmp ugt i32 %39, 7
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.fdt_property, ptr %9, i64 1, i32 1
  br label %45

43:                                               ; preds = %36, %31, %11
  %44 = getelementptr inbounds %struct.fdt_property, ptr %9, i64 0, i32 3
  br label %45

45:                                               ; preds = %43, %41, %7
  %46 = phi ptr [ %44, %43 ], [ %42, %41 ], [ null, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %47

47:                                               ; preds = %45, %2
  %48 = phi ptr [ %46, %45 ], [ null, %2 ]
  ret ptr %48
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_get_path(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  %7 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %113, label %9

9:                                                ; preds = %4
  %10 = icmp slt i32 %3, 2
  br i1 %10, label %113, label %11

11:                                               ; preds = %9
  store i32 0, ptr %5, align 4, !tbaa !8
  %12 = icmp sgt i32 %1, -1
  br i1 %12, label %13, label %113

13:                                               ; preds = %106, %11
  %14 = phi i32 [ %107, %106 ], [ 0, %11 ]
  %15 = phi i32 [ %90, %106 ], [ 0, %11 ]
  %16 = phi i32 [ %102, %106 ], [ 0, %11 ]
  %17 = phi i32 [ %89, %106 ], [ 0, %11 ]
  %18 = icmp sgt i32 %15, %14
  br i1 %18, label %19, label %66

19:                                               ; preds = %13
  %20 = sub i32 %15, %14
  %21 = add i32 %14, 1
  %22 = and i32 %20, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %19
  %25 = sext i32 %17 to i64
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi i64 [ %25, %24 ], [ %28, %26 ]
  %28 = add i64 %27, -1
  %29 = add nsw i64 %27, -2
  %30 = getelementptr inbounds i8, ptr %2, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !5
  %32 = icmp eq i8 %31, 47
  br i1 %32, label %33, label %26

33:                                               ; preds = %26
  %34 = trunc i64 %28 to i32
  %35 = add nsw i32 %15, -1
  br label %36

36:                                               ; preds = %33, %19
  %37 = phi i32 [ %15, %19 ], [ %35, %33 ]
  %38 = phi i32 [ %17, %19 ], [ %34, %33 ]
  %39 = phi i64 [ undef, %19 ], [ %28, %33 ]
  %40 = icmp eq i32 %15, %21
  br i1 %40, label %68, label %41

41:                                               ; preds = %62, %36
  %42 = phi i32 [ %64, %62 ], [ %37, %36 ]
  %43 = phi i32 [ %63, %62 ], [ %38, %36 ]
  %44 = sext i32 %43 to i64
  br label %45

45:                                               ; preds = %45, %41
  %46 = phi i64 [ %44, %41 ], [ %47, %45 ]
  %47 = add i64 %46, -1
  %48 = add nsw i64 %46, -2
  %49 = getelementptr inbounds i8, ptr %2, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !5
  %51 = icmp eq i8 %50, 47
  br i1 %51, label %52, label %45

52:                                               ; preds = %45
  %53 = shl i64 %47, 32
  %54 = ashr exact i64 %53, 32
  br label %55

55:                                               ; preds = %55, %52
  %56 = phi i64 [ %54, %52 ], [ %57, %55 ]
  %57 = add i64 %56, -1
  %58 = add nsw i64 %56, -2
  %59 = getelementptr inbounds i8, ptr %2, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !5
  %61 = icmp eq i8 %60, 47
  br i1 %61, label %62, label %55

62:                                               ; preds = %55
  %63 = trunc i64 %57 to i32
  %64 = add nsw i32 %42, -2
  %65 = icmp sgt i32 %64, %14
  br i1 %65, label %41, label %68

66:                                               ; preds = %13
  %67 = icmp slt i32 %15, %14
  br i1 %67, label %88, label %71

68:                                               ; preds = %62, %36
  %69 = phi i64 [ %39, %36 ], [ %57, %62 ]
  %70 = trunc i64 %69 to i32
  br label %71

71:                                               ; preds = %68, %66
  %72 = phi i32 [ %15, %66 ], [ %14, %68 ]
  %73 = phi i32 [ %17, %66 ], [ %70, %68 ]
  %74 = call ptr @fdt_get_name(ptr noundef %0, i32 noundef %16, ptr noundef nonnull %6)
  %75 = icmp eq ptr %74, null
  %76 = load i32, ptr %6, align 4, !tbaa !8
  br i1 %75, label %113, label %77

77:                                               ; preds = %71
  %78 = add nsw i32 %76, %73
  %79 = icmp slt i32 %78, %3
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = sext i32 %73 to i64
  %82 = getelementptr inbounds i8, ptr %2, i64 %81
  %83 = sext i32 %76 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %82, ptr nonnull align 1 %74, i64 %83, i1 false)
  %84 = add nsw i32 %78, 1
  %85 = sext i32 %78 to i64
  %86 = getelementptr inbounds i8, ptr %2, i64 %85
  store i8 47, ptr %86, align 1, !tbaa !5
  %87 = add nsw i32 %72, 1
  br label %88

88:                                               ; preds = %80, %77, %66
  %89 = phi i32 [ %84, %80 ], [ %73, %77 ], [ %17, %66 ]
  %90 = phi i32 [ %87, %80 ], [ %72, %77 ], [ %15, %66 ]
  %91 = icmp eq i32 %16, %1
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load i32, ptr %5, align 4, !tbaa !8
  %94 = icmp sgt i32 %90, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %92
  %96 = icmp sgt i32 %89, 1
  %97 = sext i1 %96 to i32
  %98 = add nsw i32 %89, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, ptr %2, i64 %99
  store i8 0, ptr %100, align 1, !tbaa !5
  br label %113

101:                                              ; preds = %88
  %102 = call i32 @fdt_next_node(ptr noundef %0, i32 noundef %16, ptr noundef nonnull %5) #9
  %103 = icmp sgt i32 %102, -1
  %104 = icmp sle i32 %102, %1
  %105 = and i1 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, ptr %5, align 4, !tbaa !8
  br label %13

108:                                              ; preds = %101
  %109 = icmp sgt i32 %102, -2
  br i1 %109, label %113, label %110

110:                                              ; preds = %108
  %111 = icmp eq i32 %102, -4
  %112 = select i1 %111, i32 -11, i32 %102
  br label %113

113:                                              ; preds = %110, %108, %95, %92, %71, %11, %9, %4
  %114 = phi i32 [ 0, %95 ], [ %7, %4 ], [ -3, %9 ], [ -3, %92 ], [ -4, %108 ], [ %112, %110 ], [ -4, %11 ], [ %76, %71 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %114
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_supernode_atdepth_offset(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %6 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #9
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %4
  %9 = icmp slt i32 %2, 0
  br i1 %9, label %41, label %10

10:                                               ; preds = %8
  store i32 0, ptr %5, align 4, !tbaa !8
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
  store i32 %17, ptr %3, align 4, !tbaa !8
  br label %21

21:                                               ; preds = %20, %16
  %22 = icmp slt i32 %17, %2
  %23 = select i1 %22, i32 -1, i32 %18
  br label %41

24:                                               ; preds = %31, %12
  %25 = phi i32 [ %34, %31 ], [ %14, %12 ]
  %26 = phi i32 [ %27, %31 ], [ 0, %12 ]
  %27 = call i32 @fdt_next_node(ptr noundef %0, i32 noundef %26, ptr noundef nonnull %5) #9
  %28 = icmp sgt i32 %27, -1
  %29 = icmp sle i32 %27, %1
  %30 = and i1 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32, ptr %5, align 4, !tbaa !8
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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_node_depth(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %4 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #9
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  store i32 0, ptr %3, align 4, !tbaa !8
  %7 = icmp sgt i32 %1, -1
  br i1 %7, label %8, label %30

8:                                                ; preds = %6
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %38

11:                                               ; preds = %20
  %12 = icmp slt i32 %21, 0
  br i1 %12, label %30, label %32

13:                                               ; preds = %20, %8
  %14 = phi i32 [ %23, %20 ], [ 0, %8 ]
  %15 = phi i32 [ %16, %20 ], [ 0, %8 ]
  %16 = call i32 @fdt_next_node(ptr noundef %0, i32 noundef %15, ptr noundef nonnull %3) #9
  %17 = icmp sgt i32 %16, -1
  %18 = icmp sle i32 %16, %1
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load i32, ptr %3, align 4, !tbaa !8
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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %34

32:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
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

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_parent_offset(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %5 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #9
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  store i32 0, ptr %4, align 4, !tbaa !8
  %8 = icmp sgt i32 %1, -1
  br i1 %8, label %9, label %31

9:                                                ; preds = %7
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %39

12:                                               ; preds = %21
  %13 = icmp slt i32 %22, 0
  br i1 %13, label %31, label %33

14:                                               ; preds = %21, %9
  %15 = phi i32 [ %24, %21 ], [ 0, %9 ]
  %16 = phi i32 [ %17, %21 ], [ 0, %9 ]
  %17 = call i32 @fdt_next_node(ptr noundef %0, i32 noundef %16, ptr noundef nonnull %4) #9
  %18 = icmp sgt i32 %17, -1
  %19 = icmp sle i32 %17, %1
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load i32, ptr %4, align 4, !tbaa !8
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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %37

33:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %42 = call i32 @fdt_ro_probe_(ptr noundef %0) #9
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %71, label %44

44:                                               ; preds = %39
  %45 = icmp eq i32 %40, 0
  br i1 %45, label %71, label %46

46:                                               ; preds = %44
  store i32 0, ptr %3, align 4, !tbaa !8
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
  %57 = call i32 @fdt_next_node(ptr noundef %0, i32 noundef %56, ptr noundef nonnull %3) #9
  %58 = icmp sgt i32 %57, -1
  %59 = icmp sle i32 %57, %1
  %60 = and i1 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i32, ptr %3, align 4, !tbaa !8
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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %73

73:                                               ; preds = %71, %37, %35
  %74 = phi i32 [ %72, %71 ], [ %38, %37 ], [ -13, %35 ]
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_node_offset_by_prop_value(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  %8 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %66, label %10

10:                                               ; preds = %5
  %11 = tail call i32 @fdt_next_node(ptr noundef %0, i32 noundef %1, ptr noundef null) #9
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %66

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
  %15 = getelementptr inbounds i8, ptr %14, i64 1
  %16 = getelementptr inbounds i8, ptr %14, i64 2
  %17 = getelementptr inbounds i8, ptr %14, i64 3
  %18 = sext i32 %4 to i64
  br label %19

19:                                               ; preds = %63, %13
  %20 = phi i32 [ %11, %13 ], [ %64, %63 ]
  %21 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #10
  %22 = trunc i64 %21 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  %23 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %20, ptr noundef %2, i32 noundef %22, ptr noundef nonnull %7, ptr noundef nonnull %6) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %55, label %25

25:                                               ; preds = %19
  %26 = load i8, ptr %14, align 1, !tbaa !5
  %27 = zext i8 %26 to i32
  %28 = shl nuw i32 %27, 24
  %29 = load i8, ptr %15, align 1, !tbaa !5
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 16
  %32 = or i32 %31, %28
  %33 = load i8, ptr %16, align 1, !tbaa !5
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  %36 = or i32 %32, %35
  %37 = load i8, ptr %17, align 1, !tbaa !5
  %38 = zext i8 %37 to i32
  %39 = or i32 %36, %38
  %40 = icmp ult i32 %39, 16
  br i1 %40, label %41, label %53

41:                                               ; preds = %25
  %42 = load i32, ptr %6, align 4, !tbaa !8
  %43 = add i32 %42, 4
  %44 = and i32 %43, 7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.fdt_property, ptr %23, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !8
  %49 = call i32 @llvm.bswap.i32(i32 %48) #9
  %50 = icmp ugt i32 %49, 7
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.fdt_property, ptr %23, i64 1, i32 1
  br label %56

53:                                               ; preds = %46, %41, %25
  %54 = getelementptr inbounds %struct.fdt_property, ptr %23, i64 0, i32 3
  br label %56

55:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  br label %63

56:                                               ; preds = %53, %51
  %57 = phi ptr [ %52, %51 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  %58 = load i32, ptr %7, align 4, !tbaa !8
  %59 = icmp eq i32 %58, %4
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = call i32 @bcmp(ptr nonnull %57, ptr %3, i64 %18)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60, %56, %55
  %64 = call i32 @fdt_next_node(ptr noundef %0, i32 noundef %20, ptr noundef null) #9
  %65 = icmp sgt i32 %64, -1
  br i1 %65, label %19, label %66

66:                                               ; preds = %63, %60, %10, %5
  %67 = phi i32 [ %8, %5 ], [ %11, %10 ], [ %20, %60 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_node_offset_by_phandle(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, 1
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #9
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @fdt_next_node(ptr noundef %0, i32 noundef -1, ptr noundef null) #9
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %18

11:                                               ; preds = %15, %8
  %12 = phi i32 [ %16, %15 ], [ %9, %8 ]
  %13 = tail call i32 @fdt_get_phandle(ptr noundef %0, i32 noundef %12)
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @fdt_next_node(ptr noundef %0, i32 noundef %12, ptr noundef null) #9
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %11, label %18

18:                                               ; preds = %15, %11, %8, %5, %2
  %19 = phi i32 [ %6, %5 ], [ -6, %2 ], [ %9, %8 ], [ %12, %11 ], [ %16, %15 ]
  ret i32 %19
}

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @fdt_stringlist_contains(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #10
  %5 = trunc i64 %4 to i32
  %6 = shl i64 %4, 32
  %7 = add i64 %6, 4294967296
  %8 = ashr exact i64 %7, 32
  %9 = icmp sgt i32 %5, %1
  br i1 %9, label %28, label %10

10:                                               ; preds = %19, %3
  %11 = phi ptr [ %26, %19 ], [ %0, %3 ]
  %12 = phi i32 [ %25, %19 ], [ %1, %3 ]
  %13 = tail call i32 @bcmp(ptr %2, ptr %11, i64 %8)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  %16 = sext i32 %12 to i64
  %17 = tail call ptr @memchr(ptr noundef %11, i32 noundef 0, i64 noundef %16) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %11 to i64
  %22 = xor i64 %20, -1
  %23 = add i64 %22, %21
  %24 = trunc i64 %23 to i32
  %25 = add i32 %12, %24
  %26 = getelementptr inbounds i8, ptr %17, i64 1
  %27 = icmp slt i32 %25, %5
  br i1 %27, label %28, label %10

28:                                               ; preds = %19, %15, %10, %3
  %29 = phi i32 [ 0, %3 ], [ 0, %19 ], [ 0, %15 ], [ 1, %10 ]
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_stringlist_count(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #10
  %7 = trunc i64 %6 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %8 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %7, ptr noundef nonnull %5, ptr noundef nonnull %4) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %44, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = zext i8 %12 to i32
  %14 = shl nuw i32 %13, 24
  %15 = getelementptr inbounds i8, ptr %11, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !5
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 16
  %19 = or i32 %18, %14
  %20 = getelementptr inbounds i8, ptr %11, i64 2
  %21 = load i8, ptr %20, align 1, !tbaa !5
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 8
  %24 = or i32 %19, %23
  %25 = getelementptr inbounds i8, ptr %11, i64 3
  %26 = load i8, ptr %25, align 1, !tbaa !5
  %27 = zext i8 %26 to i32
  %28 = or i32 %24, %27
  %29 = icmp ult i32 %28, 16
  br i1 %29, label %30, label %42

30:                                               ; preds = %10
  %31 = load i32, ptr %4, align 4, !tbaa !8
  %32 = add i32 %31, 4
  %33 = and i32 %32, 7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.fdt_property, ptr %8, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !8
  %38 = call i32 @llvm.bswap.i32(i32 %37) #9
  %39 = icmp ugt i32 %38, 7
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.fdt_property, ptr %8, i64 1, i32 1
  br label %46

42:                                               ; preds = %35, %30, %10
  %43 = getelementptr inbounds %struct.fdt_property, ptr %8, i64 0, i32 3
  br label %46

44:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %45 = load i32, ptr %5, align 4, !tbaa !8
  br label %67

46:                                               ; preds = %42, %40
  %47 = phi ptr [ %41, %40 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %48 = load i32, ptr %5, align 4, !tbaa !8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, ptr %47, i64 %49
  %51 = ptrtoint ptr %50 to i64
  %52 = icmp sgt i32 %48, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %64, %46
  %54 = phi i32 [ %65, %64 ], [ 0, %46 ]
  %55 = phi ptr [ %62, %64 ], [ %47, %46 ]
  %56 = ptrtoint ptr %55 to i64
  %57 = sub i64 %51, %56
  %58 = call i64 @strnlen(ptr noundef %55, i64 noundef %57) #10
  %59 = trunc i64 %58 to i32
  %60 = add i32 %59, 1
  store i32 %60, ptr %5, align 4, !tbaa !8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, ptr %55, i64 %61
  %63 = icmp ugt ptr %62, %50
  br i1 %63, label %67, label %64

64:                                               ; preds = %53
  %65 = add nuw nsw i32 %54, 1
  %66 = icmp ult ptr %62, %50
  br i1 %66, label %53, label %67

67:                                               ; preds = %64, %53, %46, %44
  %68 = phi i32 [ %45, %44 ], [ 0, %46 ], [ -15, %53 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %68
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strnlen(ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_stringlist_search(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #10
  %8 = trunc i64 %7 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %9 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %8, ptr noundef nonnull %6, ptr noundef nonnull %5) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %45, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
  %13 = load i8, ptr %12, align 1, !tbaa !5
  %14 = zext i8 %13 to i32
  %15 = shl nuw i32 %14, 24
  %16 = getelementptr inbounds i8, ptr %12, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !5
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 16
  %20 = or i32 %19, %15
  %21 = getelementptr inbounds i8, ptr %12, i64 2
  %22 = load i8, ptr %21, align 1, !tbaa !5
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 8
  %25 = or i32 %20, %24
  %26 = getelementptr inbounds i8, ptr %12, i64 3
  %27 = load i8, ptr %26, align 1, !tbaa !5
  %28 = zext i8 %27 to i32
  %29 = or i32 %25, %28
  %30 = icmp ult i32 %29, 16
  br i1 %30, label %31, label %43

31:                                               ; preds = %11
  %32 = load i32, ptr %5, align 4, !tbaa !8
  %33 = add i32 %32, 4
  %34 = and i32 %33, 7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.fdt_property, ptr %9, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !8
  %39 = call i32 @llvm.bswap.i32(i32 %38) #9
  %40 = icmp ugt i32 %39, 7
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.fdt_property, ptr %9, i64 1, i32 1
  br label %47

43:                                               ; preds = %36, %31, %11
  %44 = getelementptr inbounds %struct.fdt_property, ptr %9, i64 0, i32 3
  br label %47

45:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  %46 = load i32, ptr %6, align 4, !tbaa !8
  br label %75

47:                                               ; preds = %43, %41
  %48 = phi ptr [ %42, %41 ], [ %44, %43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  %49 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #10
  %50 = trunc i64 %49 to i32
  %51 = load i32, ptr %6, align 4, !tbaa !8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %48, i64 %52
  %54 = ptrtoint ptr %53 to i64
  %55 = icmp sgt i32 %51, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %72, %47
  %57 = phi ptr [ %65, %72 ], [ %48, %47 ]
  %58 = phi i32 [ %73, %72 ], [ 0, %47 ]
  %59 = ptrtoint ptr %57 to i64
  %60 = sub i64 %54, %59
  %61 = call i64 @strnlen(ptr noundef %57, i64 noundef %60) #10
  %62 = trunc i64 %61 to i32
  %63 = add i32 %62, 1
  store i32 %63, ptr %6, align 4, !tbaa !8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, ptr %57, i64 %64
  %66 = icmp ugt ptr %65, %53
  br i1 %66, label %75, label %67

67:                                               ; preds = %56
  %68 = icmp eq i32 %62, %50
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = call i32 @bcmp(ptr %57, ptr %3, i64 %64)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69, %67
  %73 = add nuw nsw i32 %58, 1
  %74 = icmp ult ptr %65, %53
  br i1 %74, label %56, label %75

75:                                               ; preds = %72, %69, %56, %47, %45
  %76 = phi i32 [ %46, %45 ], [ -1, %47 ], [ -15, %56 ], [ %58, %69 ], [ -1, %72 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define dso_local ptr @fdt_stringlist_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #10
  %9 = trunc i64 %8 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  %10 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %9, ptr noundef nonnull %7, ptr noundef nonnull %6) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %46, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = zext i8 %14 to i32
  %16 = shl nuw i32 %15, 24
  %17 = getelementptr inbounds i8, ptr %13, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !5
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 16
  %21 = or i32 %20, %16
  %22 = getelementptr inbounds i8, ptr %13, i64 2
  %23 = load i8, ptr %22, align 1, !tbaa !5
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 8
  %26 = or i32 %21, %25
  %27 = getelementptr inbounds i8, ptr %13, i64 3
  %28 = load i8, ptr %27, align 1, !tbaa !5
  %29 = zext i8 %28 to i32
  %30 = or i32 %26, %29
  %31 = icmp ult i32 %30, 16
  br i1 %31, label %32, label %44

32:                                               ; preds = %12
  %33 = load i32, ptr %6, align 4, !tbaa !8
  %34 = add i32 %33, 4
  %35 = and i32 %34, 7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.fdt_property, ptr %10, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !8
  %40 = call i32 @llvm.bswap.i32(i32 %39) #9
  %41 = icmp ugt i32 %40, 7
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.fdt_property, ptr %10, i64 1, i32 1
  br label %50

44:                                               ; preds = %37, %32, %12
  %45 = getelementptr inbounds %struct.fdt_property, ptr %10, i64 0, i32 3
  br label %50

46:                                               ; preds = %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  %47 = icmp eq ptr %4, null
  br i1 %47, label %84, label %48

48:                                               ; preds = %46
  %49 = load i32, ptr %7, align 4, !tbaa !8
  br label %81

50:                                               ; preds = %44, %42
  %51 = phi ptr [ %43, %42 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  %52 = load i32, ptr %7, align 4, !tbaa !8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %51, i64 %53
  %55 = icmp sgt i32 %52, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %50
  %57 = ptrtoint ptr %54 to i64
  br label %61

58:                                               ; preds = %74
  %59 = add nsw i32 %63, -1
  %60 = icmp ult ptr %70, %54
  br i1 %60, label %61, label %79

61:                                               ; preds = %58, %56
  %62 = phi ptr [ %51, %56 ], [ %70, %58 ]
  %63 = phi i32 [ %3, %56 ], [ %59, %58 ]
  %64 = ptrtoint ptr %62 to i64
  %65 = sub i64 %57, %64
  %66 = call i64 @strnlen(ptr noundef %62, i64 noundef %65) #10
  %67 = trunc i64 %66 to i32
  %68 = add i32 %67, 1
  store i32 %68, ptr %7, align 4, !tbaa !8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %62, i64 %69
  %71 = icmp ugt ptr %70, %54
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = icmp eq ptr %4, null
  br i1 %73, label %84, label %81

74:                                               ; preds = %61
  %75 = icmp eq i32 %63, 0
  br i1 %75, label %76, label %58

76:                                               ; preds = %74
  %77 = trunc i64 %66 to i32
  %78 = icmp eq ptr %4, null
  br i1 %78, label %84, label %81

79:                                               ; preds = %58, %50
  %80 = icmp eq ptr %4, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %79, %76, %72, %48
  %82 = phi i32 [ %49, %48 ], [ -15, %72 ], [ %77, %76 ], [ -1, %79 ]
  %83 = phi ptr [ null, %48 ], [ null, %72 ], [ %62, %76 ], [ null, %79 ]
  store i32 %82, ptr %4, align 4, !tbaa !8
  br label %84

84:                                               ; preds = %81, %79, %76, %72, %46
  %85 = phi ptr [ null, %46 ], [ null, %72 ], [ %62, %76 ], [ null, %79 ], [ %83, %81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  ret ptr %85
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_node_check_compatible(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %6 = call fastcc ptr @fdt_get_property_namelen_(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.3, i32 noundef 10, ptr noundef nonnull %5, ptr noundef nonnull %4) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %42, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
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
  %27 = icmp ult i32 %26, 16
  br i1 %27, label %28, label %40

28:                                               ; preds = %8
  %29 = load i32, ptr %4, align 4, !tbaa !8
  %30 = add i32 %29, 4
  %31 = and i32 %30, 7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.fdt_property, ptr %6, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !8
  %36 = call i32 @llvm.bswap.i32(i32 %35) #9
  %37 = icmp ugt i32 %36, 7
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.fdt_property, ptr %6, i64 1, i32 1
  br label %44

40:                                               ; preds = %33, %28, %8
  %41 = getelementptr inbounds %struct.fdt_property, ptr %6, i64 0, i32 3
  br label %44

42:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %43 = load i32, ptr %5, align 4, !tbaa !8
  br label %71

44:                                               ; preds = %40, %38
  %45 = phi ptr [ %39, %38 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %46 = load i32, ptr %5, align 4, !tbaa !8
  %47 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #10
  %48 = trunc i64 %47 to i32
  %49 = shl i64 %47, 32
  %50 = add i64 %49, 4294967296
  %51 = ashr exact i64 %50, 32
  %52 = icmp slt i32 %46, %48
  br i1 %52, label %71, label %53

53:                                               ; preds = %62, %44
  %54 = phi ptr [ %69, %62 ], [ %45, %44 ]
  %55 = phi i32 [ %68, %62 ], [ %46, %44 ]
  %56 = call i32 @bcmp(ptr %2, ptr nonnull %54, i64 %51) #9
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %53
  %59 = sext i32 %55 to i64
  %60 = call ptr @memchr(ptr noundef nonnull %54, i32 noundef 0, i64 noundef %59) #10
  %61 = icmp eq ptr %60, null
  br i1 %61, label %71, label %62

62:                                               ; preds = %58
  %63 = ptrtoint ptr %60 to i64
  %64 = ptrtoint ptr %54 to i64
  %65 = xor i64 %63, -1
  %66 = add i64 %65, %64
  %67 = trunc i64 %66 to i32
  %68 = add i32 %55, %67
  %69 = getelementptr inbounds i8, ptr %60, i64 1
  %70 = icmp slt i32 %68, %48
  br i1 %70, label %71, label %53

71:                                               ; preds = %62, %58, %53, %44, %42
  %72 = phi i32 [ %43, %42 ], [ 1, %44 ], [ 1, %62 ], [ 1, %58 ], [ 0, %53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_node_offset_by_compatible(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #9
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @fdt_next_node(ptr noundef %0, i32 noundef %1, ptr noundef null) #9
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %18

9:                                                ; preds = %15, %6
  %10 = phi i32 [ %16, %15 ], [ %7, %6 ]
  %11 = tail call i32 @fdt_node_check_compatible(ptr noundef %0, i32 noundef %10, ptr noundef %2)
  %12 = icmp slt i32 %11, -1
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = tail call i32 @fdt_next_node(ptr noundef %0, i32 noundef %10, ptr noundef null) #9
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %9, label %18

18:                                               ; preds = %15, %13, %9, %6, %3
  %19 = phi i32 [ %4, %3 ], [ %7, %6 ], [ %11, %9 ], [ %10, %13 ], [ %16, %15 ]
  ret i32 %19
}

declare i32 @fdt_next_tag(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
