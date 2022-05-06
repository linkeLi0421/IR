; ModuleID = '/llk/IR/scripts/dtc/libfdt/fdt_rw.c_pt.bc'
source_filename = "../scripts/dtc/libfdt/fdt_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fdt_reserve_entry = type { i64, i64 }
%struct.fdt_property = type { i32, i32, i32, [0 x i8] }
%struct.fdt_node_header = type { i32, [0 x i8] }

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_add_mem_rsv(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #9
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %79

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
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
  %25 = icmp ult i32 %24, 17
  br i1 %25, label %79, label %26

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 9
  %28 = load i8, ptr %27, align 1, !tbaa !5
  %29 = zext i8 %28 to i32
  %30 = shl nuw i32 %29, 24
  %31 = getelementptr inbounds i8, ptr %27, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !5
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 16
  %35 = or i32 %34, %30
  %36 = getelementptr inbounds i8, ptr %27, i64 2
  %37 = load i8, ptr %36, align 1, !tbaa !5
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 8
  %40 = or i32 %35, %39
  %41 = getelementptr inbounds i8, ptr %27, i64 3
  %42 = load i8, ptr %41, align 1, !tbaa !5
  %43 = zext i8 %42 to i32
  %44 = or i32 %40, %43
  %45 = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef nonnull %0, i32 noundef 16, i32 noundef %44) #9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %79

47:                                               ; preds = %26
  %48 = icmp ugt i32 %24, 17
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  store i32 285212672, ptr %7, align 4, !tbaa !8
  br label %50

50:                                               ; preds = %49, %47
  %51 = tail call i32 @fdt_num_mem_rsv(ptr noundef nonnull %0) #9
  %52 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 4
  %53 = load i8, ptr %52, align 1, !tbaa !5
  %54 = zext i8 %53 to i64
  %55 = shl nuw nsw i64 %54, 24
  %56 = getelementptr inbounds i8, ptr %52, i64 1
  %57 = load i8, ptr %56, align 1, !tbaa !5
  %58 = zext i8 %57 to i64
  %59 = shl nuw nsw i64 %58, 16
  %60 = or i64 %59, %55
  %61 = getelementptr inbounds i8, ptr %52, i64 2
  %62 = load i8, ptr %61, align 1, !tbaa !5
  %63 = zext i8 %62 to i64
  %64 = shl nuw nsw i64 %63, 8
  %65 = or i64 %60, %64
  %66 = getelementptr inbounds i8, ptr %52, i64 3
  %67 = load i8, ptr %66, align 1, !tbaa !5
  %68 = zext i8 %67 to i64
  %69 = or i64 %65, %68
  %70 = getelementptr inbounds i8, ptr %0, i64 %69
  %71 = sext i32 %51 to i64
  %72 = getelementptr inbounds %struct.fdt_reserve_entry, ptr %70, i64 %71
  %73 = tail call fastcc i32 @fdt_splice_mem_rsv_(ptr noundef nonnull %0, ptr noundef %72, i32 noundef 0, i32 noundef 1)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %50
  %76 = tail call i64 @llvm.bswap.i64(i64 %1) #9
  store i64 %76, ptr %72, align 8, !tbaa !11
  %77 = tail call i64 @llvm.bswap.i64(i64 %2) #9
  %78 = getelementptr inbounds %struct.fdt_reserve_entry, ptr %72, i64 0, i32 1
  store i64 %77, ptr %78, align 8, !tbaa !14
  br label %79

79:                                               ; preds = %75, %50, %26, %6, %3
  %80 = phi i32 [ 0, %75 ], [ %73, %50 ], [ -12, %26 ], [ -10, %6 ], [ %4, %3 ]
  ret i32 %80
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @fdt_num_mem_rsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define internal fastcc i32 @fdt_splice_mem_rsv_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 {
  %5 = shl i32 %2, 4
  %6 = shl i32 %3, 4
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
  %25 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 8
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
  %43 = add i32 %42, %24
  %44 = icmp slt i32 %5, 0
  br i1 %44, label %128, label %45

45:                                               ; preds = %4
  %46 = ptrtoint ptr %1 to i64
  %47 = ptrtoint ptr %0 to i64
  %48 = sub i64 %46, %47
  %49 = zext i32 %5 to i64
  %50 = add i64 %48, %49
  %51 = icmp ult i64 %50, %48
  br i1 %51, label %128, label %52

52:                                               ; preds = %45
  %53 = zext i32 %43 to i64
  %54 = icmp ugt i64 %50, %53
  br i1 %54, label %128, label %55

55:                                               ; preds = %52
  %56 = icmp ult ptr %1, %0
  %57 = add i32 %43, %6
  %58 = icmp ult i32 %57, %5
  %59 = select i1 %56, i1 true, i1 %58
  br i1 %59, label %128, label %60

60:                                               ; preds = %55
  %61 = sub i32 %6, %5
  %62 = add i32 %61, %43
  %63 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 1
  %64 = load i8, ptr %63, align 1, !tbaa !5
  %65 = zext i8 %64 to i32
  %66 = shl nuw i32 %65, 24
  %67 = getelementptr inbounds i8, ptr %63, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !5
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, 16
  %71 = or i32 %70, %66
  %72 = getelementptr inbounds i8, ptr %63, i64 2
  %73 = load i8, ptr %72, align 1, !tbaa !5
  %74 = zext i8 %73 to i32
  %75 = shl nuw nsw i32 %74, 8
  %76 = or i32 %71, %75
  %77 = getelementptr inbounds i8, ptr %63, i64 3
  %78 = load i8, ptr %77, align 1, !tbaa !5
  %79 = zext i8 %78 to i32
  %80 = or i32 %76, %79
  %81 = icmp ugt i32 %62, %80
  br i1 %81, label %128, label %82

82:                                               ; preds = %60
  %83 = sext i32 %6 to i64
  %84 = getelementptr inbounds i8, ptr %1, i64 %83
  %85 = getelementptr inbounds i8, ptr %1, i64 %49
  %86 = getelementptr inbounds i8, ptr %0, i64 %53
  %87 = ptrtoint ptr %86 to i64
  %88 = ptrtoint ptr %85 to i64
  %89 = sub i64 %87, %88
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %84, ptr align 1 %85, i64 %89, i1 false) #9
  %90 = sub nsw i32 %3, %2
  %91 = shl i32 %90, 4
  %92 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 2
  %93 = load i8, ptr %92, align 1, !tbaa !5
  %94 = zext i8 %93 to i32
  %95 = shl nuw i32 %94, 24
  %96 = getelementptr inbounds i8, ptr %92, i64 1
  %97 = load i8, ptr %96, align 1, !tbaa !5
  %98 = zext i8 %97 to i32
  %99 = shl nuw nsw i32 %98, 16
  %100 = or i32 %99, %95
  %101 = getelementptr inbounds i8, ptr %92, i64 2
  %102 = load i8, ptr %101, align 1, !tbaa !5
  %103 = zext i8 %102 to i32
  %104 = shl nuw nsw i32 %103, 8
  %105 = or i32 %100, %104
  %106 = getelementptr inbounds i8, ptr %92, i64 3
  %107 = load i8, ptr %106, align 1, !tbaa !5
  %108 = zext i8 %107 to i32
  %109 = or i32 %105, %108
  %110 = add i32 %109, %91
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #9
  store i32 %111, ptr %92, align 4, !tbaa !15
  %112 = load i8, ptr %7, align 1, !tbaa !5
  %113 = zext i8 %112 to i32
  %114 = shl nuw i32 %113, 24
  %115 = load i8, ptr %11, align 1, !tbaa !5
  %116 = zext i8 %115 to i32
  %117 = shl nuw nsw i32 %116, 16
  %118 = or i32 %117, %114
  %119 = load i8, ptr %16, align 1, !tbaa !5
  %120 = zext i8 %119 to i32
  %121 = shl nuw nsw i32 %120, 8
  %122 = or i32 %118, %121
  %123 = load i8, ptr %21, align 1, !tbaa !5
  %124 = zext i8 %123 to i32
  %125 = or i32 %122, %124
  %126 = add i32 %125, %91
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #9
  store i32 %127, ptr %7, align 4, !tbaa !16
  br label %128

128:                                              ; preds = %82, %60, %55, %52, %45, %4
  %129 = phi i32 [ 0, %82 ], [ -3, %60 ], [ -4, %55 ], [ -4, %4 ], [ -4, %45 ], [ -4, %52 ]
  ret i32 %129
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_del_mem_rsv(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 4
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = zext i8 %4 to i64
  %6 = shl nuw nsw i64 %5, 24
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = zext i8 %8 to i64
  %10 = shl nuw nsw i64 %9, 16
  %11 = or i64 %10, %6
  %12 = getelementptr inbounds i8, ptr %3, i64 2
  %13 = load i8, ptr %12, align 1, !tbaa !5
  %14 = zext i8 %13 to i64
  %15 = shl nuw nsw i64 %14, 8
  %16 = or i64 %11, %15
  %17 = getelementptr inbounds i8, ptr %3, i64 3
  %18 = load i8, ptr %17, align 1, !tbaa !5
  %19 = zext i8 %18 to i64
  %20 = or i64 %16, %19
  %21 = getelementptr inbounds i8, ptr %0, i64 %20
  %22 = sext i32 %1 to i64
  %23 = getelementptr inbounds %struct.fdt_reserve_entry, ptr %21, i64 %22
  %24 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #9
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %75

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
  %28 = load i8, ptr %27, align 1, !tbaa !5
  %29 = zext i8 %28 to i32
  %30 = shl nuw i32 %29, 24
  %31 = getelementptr inbounds i8, ptr %27, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !5
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 16
  %35 = or i32 %34, %30
  %36 = getelementptr inbounds i8, ptr %27, i64 2
  %37 = load i8, ptr %36, align 1, !tbaa !5
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 8
  %40 = or i32 %35, %39
  %41 = getelementptr inbounds i8, ptr %27, i64 3
  %42 = load i8, ptr %41, align 1, !tbaa !5
  %43 = zext i8 %42 to i32
  %44 = or i32 %40, %43
  %45 = icmp ult i32 %44, 17
  br i1 %45, label %75, label %46

46:                                               ; preds = %26
  %47 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 9
  %48 = load i8, ptr %47, align 1, !tbaa !5
  %49 = zext i8 %48 to i32
  %50 = shl nuw i32 %49, 24
  %51 = getelementptr inbounds i8, ptr %47, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !5
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %53, 16
  %55 = or i32 %54, %50
  %56 = getelementptr inbounds i8, ptr %47, i64 2
  %57 = load i8, ptr %56, align 1, !tbaa !5
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 8
  %60 = or i32 %55, %59
  %61 = getelementptr inbounds i8, ptr %47, i64 3
  %62 = load i8, ptr %61, align 1, !tbaa !5
  %63 = zext i8 %62 to i32
  %64 = or i32 %60, %63
  %65 = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef nonnull %0, i32 noundef 16, i32 noundef %64) #9
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %46
  %68 = icmp ugt i32 %44, 17
  br i1 %68, label %69, label %70

69:                                               ; preds = %67
  store i32 285212672, ptr %27, align 4, !tbaa !8
  br label %70

70:                                               ; preds = %69, %67
  %71 = tail call i32 @fdt_num_mem_rsv(ptr noundef nonnull %0) #9
  %72 = icmp sgt i32 %71, %1
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = tail call fastcc i32 @fdt_splice_mem_rsv_(ptr noundef nonnull %0, ptr noundef nonnull %23, i32 noundef 1, i32 noundef 0)
  br label %75

75:                                               ; preds = %73, %70, %46, %26, %2
  %76 = phi i32 [ %74, %73 ], [ -1, %70 ], [ -12, %46 ], [ -10, %26 ], [ %24, %2 ]
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_set_name(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %5 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #9
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %70

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 %10, 24
  %12 = getelementptr inbounds i8, ptr %8, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !5
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or i32 %15, %11
  %17 = getelementptr inbounds i8, ptr %8, i64 2
  %18 = load i8, ptr %17, align 1, !tbaa !5
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = or i32 %16, %20
  %22 = getelementptr inbounds i8, ptr %8, i64 3
  %23 = load i8, ptr %22, align 1, !tbaa !5
  %24 = zext i8 %23 to i32
  %25 = or i32 %21, %24
  %26 = icmp ult i32 %25, 17
  br i1 %26, label %70, label %27

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 9
  %29 = load i8, ptr %28, align 1, !tbaa !5
  %30 = zext i8 %29 to i32
  %31 = shl nuw i32 %30, 24
  %32 = getelementptr inbounds i8, ptr %28, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !5
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 16
  %36 = or i32 %35, %31
  %37 = getelementptr inbounds i8, ptr %28, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !5
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 8
  %41 = or i32 %36, %40
  %42 = getelementptr inbounds i8, ptr %28, i64 3
  %43 = load i8, ptr %42, align 1, !tbaa !5
  %44 = zext i8 %43 to i32
  %45 = or i32 %41, %44
  %46 = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef nonnull %0, i32 noundef 16, i32 noundef %45) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %27
  %49 = icmp ugt i32 %25, 17
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  store i32 285212672, ptr %8, align 4, !tbaa !8
  br label %51

51:                                               ; preds = %50, %48
  %52 = call ptr @fdt_get_name(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %4) #9
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, ptr %4, align 4, !tbaa !17
  br label %70

56:                                               ; preds = %51
  %57 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #10
  %58 = load i32, ptr %4, align 4, !tbaa !17
  %59 = add i32 %58, 4
  %60 = and i32 %59, -4
  %61 = shl i64 %57, 32
  %62 = add i64 %61, 4294967296
  %63 = ashr exact i64 %62, 32
  %64 = trunc i64 %63 to i32
  %65 = add i32 %64, 3
  %66 = and i32 %65, -4
  %67 = call fastcc i32 @fdt_splice_struct_(ptr noundef nonnull %0, ptr noundef nonnull %52, i32 noundef %60, i32 noundef %66)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %52, ptr align 1 %2, i64 %63, i1 false)
  br label %70

70:                                               ; preds = %69, %56, %54, %27, %7, %3
  %71 = phi i32 [ 0, %69 ], [ %55, %54 ], [ %67, %56 ], [ -12, %27 ], [ -10, %7 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %71
}

declare ptr @fdt_get_name(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define internal fastcc i32 @fdt_splice_struct_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 3
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
  %23 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 8
  %24 = load i8, ptr %23, align 1, !tbaa !5
  %25 = zext i8 %24 to i32
  %26 = shl nuw i32 %25, 24
  %27 = getelementptr inbounds i8, ptr %23, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !5
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 16
  %31 = or i32 %30, %26
  %32 = getelementptr inbounds i8, ptr %23, i64 2
  %33 = load i8, ptr %32, align 1, !tbaa !5
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  %36 = or i32 %31, %35
  %37 = getelementptr inbounds i8, ptr %23, i64 3
  %38 = load i8, ptr %37, align 1, !tbaa !5
  %39 = zext i8 %38 to i32
  %40 = or i32 %36, %39
  %41 = add i32 %40, %22
  %42 = icmp slt i32 %2, 0
  br i1 %42, label %124, label %43

43:                                               ; preds = %4
  %44 = ptrtoint ptr %1 to i64
  %45 = ptrtoint ptr %0 to i64
  %46 = sub i64 %44, %45
  %47 = zext i32 %2 to i64
  %48 = add i64 %46, %47
  %49 = icmp ult i64 %48, %46
  br i1 %49, label %124, label %50

50:                                               ; preds = %43
  %51 = zext i32 %41 to i64
  %52 = icmp ugt i64 %48, %51
  br i1 %52, label %124, label %53

53:                                               ; preds = %50
  %54 = icmp ult ptr %1, %0
  %55 = add i32 %41, %3
  %56 = icmp ult i32 %55, %2
  %57 = select i1 %54, i1 true, i1 %56
  br i1 %57, label %124, label %58

58:                                               ; preds = %53
  %59 = sub i32 %3, %2
  %60 = add i32 %59, %41
  %61 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 1
  %62 = load i8, ptr %61, align 1, !tbaa !5
  %63 = zext i8 %62 to i32
  %64 = shl nuw i32 %63, 24
  %65 = getelementptr inbounds i8, ptr %61, i64 1
  %66 = load i8, ptr %65, align 1, !tbaa !5
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 16
  %69 = or i32 %68, %64
  %70 = getelementptr inbounds i8, ptr %61, i64 2
  %71 = load i8, ptr %70, align 1, !tbaa !5
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 8
  %74 = or i32 %69, %73
  %75 = getelementptr inbounds i8, ptr %61, i64 3
  %76 = load i8, ptr %75, align 1, !tbaa !5
  %77 = zext i8 %76 to i32
  %78 = or i32 %74, %77
  %79 = icmp ugt i32 %60, %78
  br i1 %79, label %124, label %80

80:                                               ; preds = %58
  %81 = sext i32 %3 to i64
  %82 = getelementptr inbounds i8, ptr %1, i64 %81
  %83 = getelementptr inbounds i8, ptr %1, i64 %47
  %84 = getelementptr inbounds i8, ptr %0, i64 %51
  %85 = ptrtoint ptr %84 to i64
  %86 = ptrtoint ptr %83 to i64
  %87 = sub i64 %85, %86
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %82, ptr align 1 %83, i64 %87, i1 false) #9
  %88 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 9
  %89 = load i8, ptr %88, align 1, !tbaa !5
  %90 = zext i8 %89 to i32
  %91 = shl nuw i32 %90, 24
  %92 = getelementptr inbounds i8, ptr %88, i64 1
  %93 = load i8, ptr %92, align 1, !tbaa !5
  %94 = zext i8 %93 to i32
  %95 = shl nuw nsw i32 %94, 16
  %96 = or i32 %95, %91
  %97 = getelementptr inbounds i8, ptr %88, i64 2
  %98 = load i8, ptr %97, align 1, !tbaa !5
  %99 = zext i8 %98 to i32
  %100 = shl nuw nsw i32 %99, 8
  %101 = or i32 %96, %100
  %102 = getelementptr inbounds i8, ptr %88, i64 3
  %103 = load i8, ptr %102, align 1, !tbaa !5
  %104 = zext i8 %103 to i32
  %105 = or i32 %101, %104
  %106 = add i32 %105, %59
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #9
  store i32 %107, ptr %88, align 4, !tbaa !18
  %108 = load i8, ptr %5, align 1, !tbaa !5
  %109 = zext i8 %108 to i32
  %110 = shl nuw i32 %109, 24
  %111 = load i8, ptr %9, align 1, !tbaa !5
  %112 = zext i8 %111 to i32
  %113 = shl nuw nsw i32 %112, 16
  %114 = or i32 %113, %110
  %115 = load i8, ptr %14, align 1, !tbaa !5
  %116 = zext i8 %115 to i32
  %117 = shl nuw nsw i32 %116, 8
  %118 = or i32 %114, %117
  %119 = load i8, ptr %19, align 1, !tbaa !5
  %120 = zext i8 %119 to i32
  %121 = or i32 %118, %120
  %122 = add i32 %121, %59
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #9
  store i32 %123, ptr %5, align 4, !tbaa !16
  br label %124

124:                                              ; preds = %80, %58, %53, %50, %43, %4
  %125 = phi i32 [ 0, %80 ], [ -3, %58 ], [ -4, %53 ], [ -4, %4 ], [ -4, %43 ], [ -4, %50 ]
  ret i32 %125
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_setprop_placeholder(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  %8 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #9
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %84

10:                                               ; preds = %5
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
  %29 = icmp ult i32 %28, 17
  br i1 %29, label %84, label %30

30:                                               ; preds = %10
  %31 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 9
  %32 = load i8, ptr %31, align 1, !tbaa !5
  %33 = zext i8 %32 to i32
  %34 = shl nuw i32 %33, 24
  %35 = getelementptr inbounds i8, ptr %31, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !5
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 16
  %39 = or i32 %38, %34
  %40 = getelementptr inbounds i8, ptr %31, i64 2
  %41 = load i8, ptr %40, align 1, !tbaa !5
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 8
  %44 = or i32 %39, %43
  %45 = getelementptr inbounds i8, ptr %31, i64 3
  %46 = load i8, ptr %45, align 1, !tbaa !5
  %47 = zext i8 %46 to i32
  %48 = or i32 %44, %47
  %49 = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef nonnull %0, i32 noundef 16, i32 noundef %48) #9
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %84

51:                                               ; preds = %30
  %52 = icmp ugt i32 %28, 17
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  store i32 285212672, ptr %11, align 4, !tbaa !8
  br label %54

54:                                               ; preds = %53, %51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  %55 = call ptr @fdt_get_property(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %6) #9
  store ptr %55, ptr %7, align 8, !tbaa !19
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, ptr %6, align 4, !tbaa !17
  br label %71

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.fdt_property, ptr %55, i64 0, i32 3
  %61 = load i32, ptr %6, align 4, !tbaa !17
  %62 = add i32 %61, 3
  %63 = and i32 %62, -4
  %64 = add i32 %3, 3
  %65 = and i32 %64, -4
  %66 = call fastcc i32 @fdt_splice_struct_(ptr noundef nonnull %0, ptr noundef nonnull %60, i32 noundef %63, i32 noundef %65) #9
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = call i32 @llvm.bswap.i32(i32 %3) #9
  %70 = getelementptr inbounds %struct.fdt_property, ptr %55, i64 0, i32 1
  store i32 %69, ptr %70, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  br label %81

71:                                               ; preds = %59, %57
  %72 = phi i32 [ %58, %57 ], [ %66, %59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call fastcc i32 @fdt_add_property_(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %7)
  br label %76

76:                                               ; preds = %74, %71
  %77 = phi i32 [ %75, %74 ], [ %72, %71 ]
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load ptr, ptr %7, align 8, !tbaa !19
  br label %81

81:                                               ; preds = %79, %68
  %82 = phi ptr [ %80, %79 ], [ %55, %68 ]
  %83 = getelementptr inbounds %struct.fdt_property, ptr %82, i64 0, i32 3
  store ptr %83, ptr %4, align 8, !tbaa !19
  br label %84

84:                                               ; preds = %81, %76, %30, %10, %5
  %85 = phi i32 [ 0, %81 ], [ %77, %76 ], [ -12, %30 ], [ -10, %10 ], [ %8, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  ret i32 %85
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fdt_add_property_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = tail call i32 @fdt_check_node_offset_(ptr noundef %0, i32 noundef %1) #9
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %197, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 3
  %10 = load i8, ptr %9, align 1, !tbaa !5
  %11 = zext i8 %10 to i64
  %12 = shl nuw nsw i64 %11, 24
  %13 = getelementptr inbounds i8, ptr %9, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = or i64 %16, %12
  %18 = getelementptr inbounds i8, ptr %9, i64 2
  %19 = load i8, ptr %18, align 1, !tbaa !5
  %20 = zext i8 %19 to i64
  %21 = shl nuw nsw i64 %20, 8
  %22 = or i64 %17, %21
  %23 = getelementptr inbounds i8, ptr %9, i64 3
  %24 = load i8, ptr %23, align 1, !tbaa !5
  %25 = zext i8 %24 to i64
  %26 = or i64 %22, %25
  %27 = getelementptr inbounds i8, ptr %0, i64 %26
  %28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #10
  %29 = trunc i64 %28 to i32
  %30 = add i32 %29, 1
  %31 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 8
  %32 = load i8, ptr %31, align 1, !tbaa !5
  %33 = zext i8 %32 to i32
  %34 = shl nuw i32 %33, 24
  %35 = getelementptr inbounds i8, ptr %31, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !5
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 16
  %39 = or i32 %38, %34
  %40 = getelementptr inbounds i8, ptr %31, i64 2
  %41 = load i8, ptr %40, align 1, !tbaa !5
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 8
  %44 = or i32 %39, %43
  %45 = getelementptr inbounds i8, ptr %31, i64 3
  %46 = load i8, ptr %45, align 1, !tbaa !5
  %47 = zext i8 %46 to i32
  %48 = or i32 %44, %47
  %49 = tail call ptr @fdt_find_string_(ptr noundef %27, i32 noundef %48, ptr noundef %2) #9
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %8
  %52 = ptrtoint ptr %49 to i64
  %53 = ptrtoint ptr %27 to i64
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  br label %141

56:                                               ; preds = %8
  %57 = load i8, ptr %31, align 1, !tbaa !5
  %58 = zext i8 %57 to i32
  %59 = shl nuw i32 %58, 24
  %60 = load i8, ptr %35, align 1, !tbaa !5
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 16
  %63 = or i32 %62, %59
  %64 = load i8, ptr %40, align 1, !tbaa !5
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 %65, 8
  %67 = or i32 %63, %66
  %68 = load i8, ptr %45, align 1, !tbaa !5
  %69 = zext i8 %68 to i32
  %70 = or i32 %67, %69
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %27, i64 %71
  %73 = load i8, ptr %9, align 1, !tbaa !5
  %74 = zext i8 %73 to i32
  %75 = shl nuw i32 %74, 24
  %76 = load i8, ptr %13, align 1, !tbaa !5
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 16
  %79 = or i32 %78, %75
  %80 = load i8, ptr %18, align 1, !tbaa !5
  %81 = zext i8 %80 to i32
  %82 = shl nuw nsw i32 %81, 8
  %83 = or i32 %79, %82
  %84 = load i8, ptr %23, align 1, !tbaa !5
  %85 = zext i8 %84 to i32
  %86 = or i32 %83, %85
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i8, ptr %0, i64 %87
  %89 = getelementptr inbounds i8, ptr %88, i64 %71
  %90 = add i32 %86, %70
  %91 = ptrtoint ptr %89 to i64
  %92 = ptrtoint ptr %0 to i64
  %93 = sub i64 %91, %92
  %94 = zext i32 %90 to i64
  %95 = icmp ugt i64 %93, %94
  %96 = icmp ult ptr %89, %0
  %97 = select i1 %95, i1 true, i1 %96
  br i1 %97, label %197, label %98

98:                                               ; preds = %56
  %99 = add i32 %90, %30
  %100 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 1
  %101 = load i8, ptr %100, align 1, !tbaa !5
  %102 = zext i8 %101 to i32
  %103 = shl nuw i32 %102, 24
  %104 = getelementptr inbounds i8, ptr %100, i64 1
  %105 = load i8, ptr %104, align 1, !tbaa !5
  %106 = zext i8 %105 to i32
  %107 = shl nuw nsw i32 %106, 16
  %108 = or i32 %107, %103
  %109 = getelementptr inbounds i8, ptr %100, i64 2
  %110 = load i8, ptr %109, align 1, !tbaa !5
  %111 = zext i8 %110 to i32
  %112 = shl nuw nsw i32 %111, 8
  %113 = or i32 %108, %112
  %114 = getelementptr inbounds i8, ptr %100, i64 3
  %115 = load i8, ptr %114, align 1, !tbaa !5
  %116 = zext i8 %115 to i32
  %117 = or i32 %113, %116
  %118 = icmp ugt i32 %99, %117
  br i1 %118, label %197, label %119

119:                                              ; preds = %98
  %120 = sext i32 %30 to i64
  %121 = getelementptr inbounds i8, ptr %89, i64 %120
  %122 = getelementptr inbounds i8, ptr %0, i64 %94
  %123 = ptrtoint ptr %122 to i64
  %124 = sub i64 %123, %91
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %121, ptr nonnull align 1 %89, i64 %124, i1 false) #9
  %125 = load i8, ptr %31, align 1, !tbaa !5
  %126 = zext i8 %125 to i32
  %127 = shl nuw i32 %126, 24
  %128 = load i8, ptr %35, align 1, !tbaa !5
  %129 = zext i8 %128 to i32
  %130 = shl nuw nsw i32 %129, 16
  %131 = or i32 %130, %127
  %132 = load i8, ptr %40, align 1, !tbaa !5
  %133 = zext i8 %132 to i32
  %134 = shl nuw nsw i32 %133, 8
  %135 = or i32 %131, %134
  %136 = load i8, ptr %45, align 1, !tbaa !5
  %137 = zext i8 %136 to i32
  %138 = or i32 %135, %137
  %139 = add i32 %138, %30
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #9
  store i32 %140, ptr %31, align 4, !tbaa !23
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %72, ptr align 1 %2, i64 %120, i1 false) #9
  br label %141

141:                                              ; preds = %119, %51
  %142 = phi i32 [ %70, %119 ], [ %55, %51 ]
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %197, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 2
  %146 = load i8, ptr %145, align 1, !tbaa !5
  %147 = zext i8 %146 to i64
  %148 = shl nuw nsw i64 %147, 24
  %149 = getelementptr inbounds i8, ptr %145, i64 1
  %150 = load i8, ptr %149, align 1, !tbaa !5
  %151 = zext i8 %150 to i64
  %152 = shl nuw nsw i64 %151, 16
  %153 = or i64 %152, %148
  %154 = getelementptr inbounds i8, ptr %145, i64 2
  %155 = load i8, ptr %154, align 1, !tbaa !5
  %156 = zext i8 %155 to i64
  %157 = shl nuw nsw i64 %156, 8
  %158 = or i64 %153, %157
  %159 = getelementptr inbounds i8, ptr %145, i64 3
  %160 = load i8, ptr %159, align 1, !tbaa !5
  %161 = zext i8 %160 to i64
  %162 = or i64 %158, %161
  %163 = getelementptr inbounds i8, ptr %0, i64 %162
  %164 = zext i32 %6 to i64
  %165 = getelementptr inbounds i8, ptr %163, i64 %164
  store ptr %165, ptr %4, align 8, !tbaa !19
  %166 = add i32 %3, 15
  %167 = and i32 %166, -4
  %168 = tail call fastcc i32 @fdt_splice_struct_(ptr noundef nonnull %0, ptr noundef %165, i32 noundef 0, i32 noundef %167)
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %191, label %170

170:                                              ; preds = %144
  br i1 %50, label %171, label %197

171:                                              ; preds = %170
  %172 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #10
  %173 = trunc i64 %172 to i32
  %174 = xor i32 %173, -1
  %175 = load i8, ptr %31, align 1, !tbaa !5
  %176 = zext i8 %175 to i32
  %177 = shl nuw i32 %176, 24
  %178 = load i8, ptr %35, align 1, !tbaa !5
  %179 = zext i8 %178 to i32
  %180 = shl nuw nsw i32 %179, 16
  %181 = or i32 %180, %177
  %182 = load i8, ptr %40, align 1, !tbaa !5
  %183 = zext i8 %182 to i32
  %184 = shl nuw nsw i32 %183, 8
  %185 = or i32 %181, %184
  %186 = load i8, ptr %45, align 1, !tbaa !5
  %187 = zext i8 %186 to i32
  %188 = or i32 %185, %187
  %189 = add i32 %188, %174
  %190 = tail call i32 @llvm.bswap.i32(i32 %189) #9
  store i32 %190, ptr %31, align 4, !tbaa !23
  br label %197

191:                                              ; preds = %144
  %192 = load ptr, ptr %4, align 8, !tbaa !19
  store i32 50331648, ptr %192, align 4, !tbaa !24
  %193 = tail call i32 @llvm.bswap.i32(i32 %142) #9
  %194 = getelementptr inbounds %struct.fdt_property, ptr %192, i64 0, i32 2
  store i32 %193, ptr %194, align 4, !tbaa !25
  %195 = tail call i32 @llvm.bswap.i32(i32 %3) #9
  %196 = getelementptr inbounds %struct.fdt_property, ptr %192, i64 0, i32 1
  store i32 %195, ptr %196, align 4, !tbaa !21
  br label %197

197:                                              ; preds = %191, %171, %170, %141, %98, %56, %5
  %198 = phi i32 [ 0, %191 ], [ %6, %5 ], [ %142, %141 ], [ %168, %171 ], [ %168, %170 ], [ -3, %98 ], [ -4, %56 ]
  ret i32 %198
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_setprop(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %7 = call i32 @fdt_setprop_placeholder(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %4, ptr noundef nonnull %6)
  %8 = icmp ne i32 %7, 0
  %9 = icmp eq i32 %4, 0
  %10 = or i1 %9, %8
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %6, align 8, !tbaa !19
  %13 = sext i32 %4 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %3, i64 %13, i1 false)
  br label %14

14:                                               ; preds = %11, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_appendprop(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  %8 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #9
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %81

10:                                               ; preds = %5
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
  %29 = icmp ult i32 %28, 17
  br i1 %29, label %81, label %30

30:                                               ; preds = %10
  %31 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 9
  %32 = load i8, ptr %31, align 1, !tbaa !5
  %33 = zext i8 %32 to i32
  %34 = shl nuw i32 %33, 24
  %35 = getelementptr inbounds i8, ptr %31, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !5
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 16
  %39 = or i32 %38, %34
  %40 = getelementptr inbounds i8, ptr %31, i64 2
  %41 = load i8, ptr %40, align 1, !tbaa !5
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 8
  %44 = or i32 %39, %43
  %45 = getelementptr inbounds i8, ptr %31, i64 3
  %46 = load i8, ptr %45, align 1, !tbaa !5
  %47 = zext i8 %46 to i32
  %48 = or i32 %44, %47
  %49 = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef nonnull %0, i32 noundef 16, i32 noundef %48) #9
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %81

51:                                               ; preds = %30
  %52 = icmp ugt i32 %28, 17
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  store i32 285212672, ptr %11, align 4, !tbaa !8
  br label %54

54:                                               ; preds = %53, %51
  %55 = call ptr @fdt_get_property(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %7) #9
  store ptr %55, ptr %6, align 8, !tbaa !19
  %56 = icmp eq ptr %55, null
  br i1 %56, label %74, label %57

57:                                               ; preds = %54
  %58 = load i32, ptr %7, align 4, !tbaa !17
  %59 = add nsw i32 %58, %4
  %60 = getelementptr inbounds %struct.fdt_property, ptr %55, i64 0, i32 3
  %61 = add i32 %58, 3
  %62 = and i32 %61, -4
  %63 = add i32 %59, 3
  %64 = and i32 %63, -4
  %65 = call fastcc i32 @fdt_splice_struct_(ptr noundef nonnull %0, ptr noundef nonnull %60, i32 noundef %62, i32 noundef %64)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %57
  %68 = call i32 @llvm.bswap.i32(i32 %59) #9
  %69 = getelementptr inbounds %struct.fdt_property, ptr %55, i64 0, i32 1
  store i32 %68, ptr %69, align 4, !tbaa !21
  %70 = load i32, ptr %7, align 4, !tbaa !17
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %60, i64 %71
  %73 = sext i32 %4 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %72, ptr align 1 %3, i64 %73, i1 false)
  br label %81

74:                                               ; preds = %54
  %75 = call fastcc i32 @fdt_add_property_(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %4, ptr noundef nonnull %6)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load ptr, ptr %6, align 8, !tbaa !19
  %79 = getelementptr inbounds %struct.fdt_property, ptr %78, i64 0, i32 3
  %80 = sext i32 %4 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %79, ptr align 1 %3, i64 %80, i1 false)
  br label %81

81:                                               ; preds = %77, %74, %67, %57, %30, %10, %5
  %82 = phi i32 [ %65, %57 ], [ %75, %74 ], [ 0, %77 ], [ 0, %67 ], [ -12, %30 ], [ -10, %10 ], [ %8, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret i32 %82
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_delprop(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %5 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #9
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %59

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 %10, 24
  %12 = getelementptr inbounds i8, ptr %8, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !5
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or i32 %15, %11
  %17 = getelementptr inbounds i8, ptr %8, i64 2
  %18 = load i8, ptr %17, align 1, !tbaa !5
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = or i32 %16, %20
  %22 = getelementptr inbounds i8, ptr %8, i64 3
  %23 = load i8, ptr %22, align 1, !tbaa !5
  %24 = zext i8 %23 to i32
  %25 = or i32 %21, %24
  %26 = icmp ult i32 %25, 17
  br i1 %26, label %59, label %27

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 9
  %29 = load i8, ptr %28, align 1, !tbaa !5
  %30 = zext i8 %29 to i32
  %31 = shl nuw i32 %30, 24
  %32 = getelementptr inbounds i8, ptr %28, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !5
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 16
  %36 = or i32 %35, %31
  %37 = getelementptr inbounds i8, ptr %28, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !5
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 8
  %41 = or i32 %36, %40
  %42 = getelementptr inbounds i8, ptr %28, i64 3
  %43 = load i8, ptr %42, align 1, !tbaa !5
  %44 = zext i8 %43 to i32
  %45 = or i32 %41, %44
  %46 = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef nonnull %0, i32 noundef 16, i32 noundef %45) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %27
  %49 = icmp ugt i32 %25, 17
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  store i32 285212672, ptr %8, align 4, !tbaa !8
  br label %51

51:                                               ; preds = %50, %48
  %52 = call ptr @fdt_get_property(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #9
  %53 = icmp eq ptr %52, null
  %54 = load i32, ptr %4, align 4, !tbaa !17
  br i1 %53, label %59, label %55

55:                                               ; preds = %51
  %56 = add i32 %54, 15
  %57 = and i32 %56, -4
  %58 = call fastcc i32 @fdt_splice_struct_(ptr noundef nonnull %0, ptr noundef nonnull %52, i32 noundef %57, i32 noundef 0)
  br label %59

59:                                               ; preds = %55, %51, %27, %7, %3
  %60 = phi i32 [ %58, %55 ], [ -12, %27 ], [ -10, %7 ], [ %5, %3 ], [ %54, %51 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_add_subnode_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %6 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #9
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %99

8:                                                ; preds = %4
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
  %27 = icmp ult i32 %26, 17
  br i1 %27, label %99, label %28

28:                                               ; preds = %8
  %29 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 9
  %30 = load i8, ptr %29, align 1, !tbaa !5
  %31 = zext i8 %30 to i32
  %32 = shl nuw i32 %31, 24
  %33 = getelementptr inbounds i8, ptr %29, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !5
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 16
  %37 = or i32 %36, %32
  %38 = getelementptr inbounds i8, ptr %29, i64 2
  %39 = load i8, ptr %38, align 1, !tbaa !5
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 8
  %42 = or i32 %37, %41
  %43 = getelementptr inbounds i8, ptr %29, i64 3
  %44 = load i8, ptr %43, align 1, !tbaa !5
  %45 = zext i8 %44 to i32
  %46 = or i32 %42, %45
  %47 = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef nonnull %0, i32 noundef 16, i32 noundef %46) #9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %99

49:                                               ; preds = %28
  %50 = icmp ugt i32 %26, 17
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  store i32 285212672, ptr %9, align 4, !tbaa !8
  br label %52

52:                                               ; preds = %51, %49
  %53 = tail call i32 @fdt_subnode_offset_namelen(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #9
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %99, label %55

55:                                               ; preds = %52
  %56 = icmp eq i32 %53, -1
  br i1 %56, label %57, label %99

57:                                               ; preds = %55
  %58 = call i32 @fdt_next_tag(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %5) #9
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %99

60:                                               ; preds = %60, %57
  %61 = load i32, ptr %5, align 4, !tbaa !17
  %62 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %61, ptr noundef nonnull %5) #9
  %63 = add i32 %62, -3
  %64 = icmp ult i32 %63, 2
  br i1 %64, label %60, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 2
  %67 = load i8, ptr %66, align 1, !tbaa !5
  %68 = zext i8 %67 to i64
  %69 = shl nuw nsw i64 %68, 24
  %70 = getelementptr inbounds i8, ptr %66, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !5
  %72 = zext i8 %71 to i64
  %73 = shl nuw nsw i64 %72, 16
  %74 = or i64 %73, %69
  %75 = getelementptr inbounds i8, ptr %66, i64 2
  %76 = load i8, ptr %75, align 1, !tbaa !5
  %77 = zext i8 %76 to i64
  %78 = shl nuw nsw i64 %77, 8
  %79 = or i64 %74, %78
  %80 = getelementptr inbounds i8, ptr %66, i64 3
  %81 = load i8, ptr %80, align 1, !tbaa !5
  %82 = zext i8 %81 to i64
  %83 = or i64 %79, %82
  %84 = getelementptr inbounds i8, ptr %0, i64 %83
  %85 = sext i32 %61 to i64
  %86 = getelementptr inbounds i8, ptr %84, i64 %85
  %87 = sext i32 %3 to i64
  %88 = add nsw i64 %87, 4
  %89 = and i64 %88, -4
  %90 = trunc i64 %89 to i32
  %91 = add i32 %90, 8
  %92 = call fastcc i32 @fdt_splice_struct_(ptr noundef %0, ptr noundef %86, i32 noundef 0, i32 noundef %91)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %65
  store i32 16777216, ptr %86, align 4, !tbaa !26
  %95 = getelementptr inbounds %struct.fdt_node_header, ptr %86, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %95, i8 0, i64 %89, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %95, ptr align 1 %2, i64 %87, i1 false)
  %96 = sext i32 %91 to i64
  %97 = getelementptr inbounds i8, ptr %86, i64 %96
  %98 = getelementptr inbounds i8, ptr %97, i64 -4
  store i32 33554432, ptr %98, align 4, !tbaa !17
  br label %99

99:                                               ; preds = %94, %65, %57, %55, %52, %28, %8, %4
  %100 = phi i32 [ %61, %94 ], [ -2, %52 ], [ %53, %55 ], [ -13, %57 ], [ %92, %65 ], [ -12, %28 ], [ -10, %8 ], [ %6, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %100
}

declare i32 @fdt_subnode_offset_namelen(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @fdt_next_tag(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_add_subnode(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #10
  %5 = trunc i64 %4 to i32
  %6 = tail call i32 @fdt_add_subnode_namelen(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_del_node(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #9
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %76

5:                                                ; preds = %2
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
  %24 = icmp ult i32 %23, 17
  br i1 %24, label %76, label %25

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 9
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
  %44 = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef nonnull %0, i32 noundef 16, i32 noundef %43) #9
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %76

46:                                               ; preds = %25
  %47 = icmp ugt i32 %23, 17
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  store i32 285212672, ptr %6, align 4, !tbaa !8
  br label %49

49:                                               ; preds = %48, %46
  %50 = tail call i32 @fdt_node_end_offset_(ptr noundef nonnull %0, i32 noundef %1) #9
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %76, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 2
  %54 = load i8, ptr %53, align 1, !tbaa !5
  %55 = zext i8 %54 to i64
  %56 = shl nuw nsw i64 %55, 24
  %57 = getelementptr inbounds i8, ptr %53, i64 1
  %58 = load i8, ptr %57, align 1, !tbaa !5
  %59 = zext i8 %58 to i64
  %60 = shl nuw nsw i64 %59, 16
  %61 = or i64 %60, %56
  %62 = getelementptr inbounds i8, ptr %53, i64 2
  %63 = load i8, ptr %62, align 1, !tbaa !5
  %64 = zext i8 %63 to i64
  %65 = shl nuw nsw i64 %64, 8
  %66 = or i64 %61, %65
  %67 = getelementptr inbounds i8, ptr %53, i64 3
  %68 = load i8, ptr %67, align 1, !tbaa !5
  %69 = zext i8 %68 to i64
  %70 = or i64 %66, %69
  %71 = getelementptr inbounds i8, ptr %0, i64 %70
  %72 = sext i32 %1 to i64
  %73 = getelementptr inbounds i8, ptr %71, i64 %72
  %74 = sub nsw i32 %50, %1
  %75 = tail call fastcc i32 @fdt_splice_struct_(ptr noundef nonnull %0, ptr noundef %73, i32 noundef %74, i32 noundef 0)
  br label %76

76:                                               ; preds = %52, %49, %25, %5, %2
  %77 = phi i32 [ %75, %52 ], [ %50, %49 ], [ -12, %25 ], [ -10, %5 ], [ %3, %2 ]
  ret i32 %77
}

declare i32 @fdt_node_end_offset_(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_open_into(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 1, !tbaa !5
  %7 = zext i8 %6 to i64
  %8 = shl nuw nsw i64 %7, 24
  %9 = getelementptr inbounds i8, ptr %5, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !5
  %11 = zext i8 %10 to i64
  %12 = shl nuw nsw i64 %11, 16
  %13 = or i64 %12, %8
  %14 = getelementptr inbounds i8, ptr %5, i64 2
  %15 = load i8, ptr %14, align 1, !tbaa !5
  %16 = zext i8 %15 to i64
  %17 = shl nuw nsw i64 %16, 8
  %18 = or i64 %13, %17
  %19 = getelementptr inbounds i8, ptr %5, i64 3
  %20 = load i8, ptr %19, align 1, !tbaa !5
  %21 = zext i8 %20 to i64
  %22 = or i64 %18, %21
  %23 = getelementptr inbounds i8, ptr %0, i64 %22
  %24 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #9
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %240, label %26

26:                                               ; preds = %3
  %27 = tail call i32 @fdt_num_mem_rsv(ptr noundef nonnull %0) #9
  %28 = shl i32 %27, 4
  %29 = add i32 %28, 16
  %30 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 5
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
  %48 = icmp ugt i32 %47, 16
  br i1 %48, label %49, label %68

49:                                               ; preds = %26
  %50 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 9
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
  store i32 %67, ptr %4, align 4, !tbaa !17
  br label %78

68:                                               ; preds = %26
  %69 = icmp eq i32 %47, 16
  br i1 %69, label %70, label %240

70:                                               ; preds = %68
  store i32 0, ptr %4, align 4, !tbaa !17
  br label %71

71:                                               ; preds = %71, %70
  %72 = phi i32 [ 0, %70 ], [ %75, %71 ]
  %73 = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %72, ptr noundef nonnull %4) #9
  %74 = icmp eq i32 %73, 9
  %75 = load i32, ptr %4, align 4, !tbaa !17
  br i1 %74, label %76, label %71

76:                                               ; preds = %71
  %77 = icmp slt i32 %75, 0
  br i1 %77, label %240, label %78

78:                                               ; preds = %76, %49
  %79 = phi i32 [ %75, %76 ], [ %67, %49 ]
  %80 = call fastcc i32 @fdt_blocks_misordered_(ptr noundef %0, i32 noundef %29, i32 noundef %79)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = call i32 @fdt_move(ptr noundef %0, ptr noundef %1, i32 noundef %2) #9
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %240

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.fdt_header, ptr %1, i64 0, i32 5
  store i32 285212672, ptr %86, align 4, !tbaa !8
  %87 = load i32, ptr %4, align 4, !tbaa !17
  %88 = call i32 @llvm.bswap.i32(i32 %87) #9
  %89 = getelementptr inbounds %struct.fdt_header, ptr %1, i64 0, i32 9
  store i32 %88, ptr %89, align 4, !tbaa !18
  %90 = call i32 @llvm.bswap.i32(i32 %2) #9
  %91 = getelementptr inbounds %struct.fdt_header, ptr %1, i64 0, i32 1
  store i32 %90, ptr %91, align 4, !tbaa !28
  br label %240

92:                                               ; preds = %78
  %93 = add i32 %28, 56
  %94 = add i32 %93, %79
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
  %113 = add i32 %94, %112
  %114 = icmp sgt i32 %113, %2
  br i1 %114, label %240, label %115

115:                                              ; preds = %92
  %116 = sext i32 %113 to i64
  %117 = getelementptr inbounds i8, ptr %1, i64 %116
  %118 = icmp ugt ptr %117, %0
  %119 = icmp ugt ptr %23, %1
  %120 = select i1 %118, i1 %119, i1 false
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = getelementptr inbounds i8, ptr %23, i64 %116
  %123 = sext i32 %2 to i64
  %124 = getelementptr inbounds i8, ptr %1, i64 %123
  %125 = icmp ugt ptr %122, %124
  br i1 %125, label %240, label %126

126:                                              ; preds = %121, %115
  %127 = phi ptr [ %23, %121 ], [ %1, %115 ]
  %128 = getelementptr inbounds i8, ptr %127, i64 40
  %129 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 4
  %130 = load i8, ptr %129, align 1, !tbaa !5
  %131 = zext i8 %130 to i64
  %132 = shl nuw nsw i64 %131, 24
  %133 = getelementptr inbounds i8, ptr %129, i64 1
  %134 = load i8, ptr %133, align 1, !tbaa !5
  %135 = zext i8 %134 to i64
  %136 = shl nuw nsw i64 %135, 16
  %137 = or i64 %136, %132
  %138 = getelementptr inbounds i8, ptr %129, i64 2
  %139 = load i8, ptr %138, align 1, !tbaa !5
  %140 = zext i8 %139 to i64
  %141 = shl nuw nsw i64 %140, 8
  %142 = or i64 %137, %141
  %143 = getelementptr inbounds i8, ptr %129, i64 3
  %144 = load i8, ptr %143, align 1, !tbaa !5
  %145 = zext i8 %144 to i64
  %146 = or i64 %142, %145
  %147 = getelementptr inbounds i8, ptr %0, i64 %146
  %148 = sext i32 %29 to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %128, ptr align 1 %147, i64 %148, i1 false) #9
  %149 = getelementptr inbounds %struct.fdt_header, ptr %127, i64 0, i32 4
  store i32 671088640, ptr %149, align 4, !tbaa !29
  %150 = sext i32 %93 to i64
  %151 = getelementptr inbounds i8, ptr %127, i64 %150
  %152 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 2
  %153 = load i8, ptr %152, align 1, !tbaa !5
  %154 = zext i8 %153 to i64
  %155 = shl nuw nsw i64 %154, 24
  %156 = getelementptr inbounds i8, ptr %152, i64 1
  %157 = load i8, ptr %156, align 1, !tbaa !5
  %158 = zext i8 %157 to i64
  %159 = shl nuw nsw i64 %158, 16
  %160 = or i64 %159, %155
  %161 = getelementptr inbounds i8, ptr %152, i64 2
  %162 = load i8, ptr %161, align 1, !tbaa !5
  %163 = zext i8 %162 to i64
  %164 = shl nuw nsw i64 %163, 8
  %165 = or i64 %160, %164
  %166 = getelementptr inbounds i8, ptr %152, i64 3
  %167 = load i8, ptr %166, align 1, !tbaa !5
  %168 = zext i8 %167 to i64
  %169 = or i64 %165, %168
  %170 = getelementptr inbounds i8, ptr %0, i64 %169
  %171 = sext i32 %79 to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %151, ptr align 1 %170, i64 %171, i1 false) #9
  %172 = call i32 @llvm.bswap.i32(i32 %93) #9
  %173 = getelementptr inbounds %struct.fdt_header, ptr %127, i64 0, i32 2
  store i32 %172, ptr %173, align 4, !tbaa !15
  %174 = call i32 @llvm.bswap.i32(i32 %79) #9
  %175 = getelementptr inbounds %struct.fdt_header, ptr %127, i64 0, i32 9
  store i32 %174, ptr %175, align 4, !tbaa !18
  %176 = sext i32 %94 to i64
  %177 = getelementptr inbounds i8, ptr %127, i64 %176
  %178 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 3
  %179 = load i8, ptr %178, align 1, !tbaa !5
  %180 = zext i8 %179 to i64
  %181 = shl nuw nsw i64 %180, 24
  %182 = getelementptr inbounds i8, ptr %178, i64 1
  %183 = load i8, ptr %182, align 1, !tbaa !5
  %184 = zext i8 %183 to i64
  %185 = shl nuw nsw i64 %184, 16
  %186 = or i64 %185, %181
  %187 = getelementptr inbounds i8, ptr %178, i64 2
  %188 = load i8, ptr %187, align 1, !tbaa !5
  %189 = zext i8 %188 to i64
  %190 = shl nuw nsw i64 %189, 8
  %191 = or i64 %186, %190
  %192 = getelementptr inbounds i8, ptr %178, i64 3
  %193 = load i8, ptr %192, align 1, !tbaa !5
  %194 = zext i8 %193 to i64
  %195 = or i64 %191, %194
  %196 = getelementptr inbounds i8, ptr %0, i64 %195
  %197 = sext i32 %112 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %177, ptr align 1 %196, i64 %197, i1 false) #9
  %198 = call i32 @llvm.bswap.i32(i32 %94) #9
  %199 = getelementptr inbounds %struct.fdt_header, ptr %127, i64 0, i32 3
  store i32 %198, ptr %199, align 4, !tbaa !16
  %200 = load i8, ptr %95, align 1, !tbaa !5
  %201 = zext i8 %200 to i32
  %202 = shl nuw i32 %201, 24
  %203 = load i8, ptr %99, align 1, !tbaa !5
  %204 = zext i8 %203 to i32
  %205 = shl nuw nsw i32 %204, 16
  %206 = or i32 %205, %202
  %207 = load i8, ptr %104, align 1, !tbaa !5
  %208 = zext i8 %207 to i32
  %209 = shl nuw nsw i32 %208, 8
  %210 = or i32 %206, %209
  %211 = load i8, ptr %109, align 1, !tbaa !5
  %212 = zext i8 %211 to i32
  %213 = or i32 %210, %212
  %214 = call i32 @llvm.bswap.i32(i32 %213) #9
  %215 = getelementptr inbounds %struct.fdt_header, ptr %127, i64 0, i32 8
  store i32 %214, ptr %215, align 4, !tbaa !23
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %127, i64 %116, i1 false)
  store i32 -302117424, ptr %1, align 4, !tbaa !30
  %216 = call i32 @llvm.bswap.i32(i32 %2) #9
  %217 = getelementptr inbounds %struct.fdt_header, ptr %1, i64 0, i32 1
  store i32 %216, ptr %217, align 4, !tbaa !28
  %218 = getelementptr inbounds %struct.fdt_header, ptr %1, i64 0, i32 5
  store i32 285212672, ptr %218, align 4, !tbaa !8
  %219 = getelementptr inbounds %struct.fdt_header, ptr %1, i64 0, i32 6
  store i32 268435456, ptr %219, align 4, !tbaa !31
  %220 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 7
  %221 = load i8, ptr %220, align 1, !tbaa !5
  %222 = zext i8 %221 to i32
  %223 = shl nuw i32 %222, 24
  %224 = getelementptr inbounds i8, ptr %220, i64 1
  %225 = load i8, ptr %224, align 1, !tbaa !5
  %226 = zext i8 %225 to i32
  %227 = shl nuw nsw i32 %226, 16
  %228 = or i32 %227, %223
  %229 = getelementptr inbounds i8, ptr %220, i64 2
  %230 = load i8, ptr %229, align 1, !tbaa !5
  %231 = zext i8 %230 to i32
  %232 = shl nuw nsw i32 %231, 8
  %233 = or i32 %228, %232
  %234 = getelementptr inbounds i8, ptr %220, i64 3
  %235 = load i8, ptr %234, align 1, !tbaa !5
  %236 = zext i8 %235 to i32
  %237 = or i32 %233, %236
  %238 = call i32 @llvm.bswap.i32(i32 %237) #9
  %239 = getelementptr inbounds %struct.fdt_header, ptr %1, i64 0, i32 7
  store i32 %238, ptr %239, align 4, !tbaa !32
  br label %240

240:                                              ; preds = %126, %121, %92, %85, %82, %76, %68, %3
  %241 = phi i32 [ 0, %85 ], [ 0, %126 ], [ %24, %3 ], [ %75, %76 ], [ -10, %68 ], [ %83, %82 ], [ -3, %92 ], [ -3, %121 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %241
}

declare i32 @fdt_ro_probe_(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define internal fastcc i32 @fdt_blocks_misordered_(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 4
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
  %22 = icmp ult i32 %21, 40
  br i1 %22, label %105, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 2
  %25 = load i8, ptr %24, align 1, !tbaa !5
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 %26, 24
  %28 = getelementptr inbounds i8, ptr %24, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !5
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 16
  %32 = or i32 %31, %27
  %33 = getelementptr inbounds i8, ptr %24, i64 2
  %34 = load i8, ptr %33, align 1, !tbaa !5
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 8
  %37 = or i32 %32, %36
  %38 = getelementptr inbounds i8, ptr %24, i64 3
  %39 = load i8, ptr %38, align 1, !tbaa !5
  %40 = zext i8 %39 to i32
  %41 = or i32 %37, %40
  %42 = add i32 %21, %1
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %105, label %44

44:                                               ; preds = %23
  %45 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 3
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
  %63 = add i32 %41, %2
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %105, label %65

65:                                               ; preds = %44
  %66 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 1
  %67 = load i8, ptr %66, align 1, !tbaa !5
  %68 = zext i8 %67 to i32
  %69 = shl nuw i32 %68, 24
  %70 = getelementptr inbounds i8, ptr %66, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !5
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 16
  %74 = or i32 %73, %69
  %75 = getelementptr inbounds i8, ptr %66, i64 2
  %76 = load i8, ptr %75, align 1, !tbaa !5
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 8
  %79 = or i32 %74, %78
  %80 = getelementptr inbounds i8, ptr %66, i64 3
  %81 = load i8, ptr %80, align 1, !tbaa !5
  %82 = zext i8 %81 to i32
  %83 = or i32 %79, %82
  %84 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 8
  %85 = load i8, ptr %84, align 1, !tbaa !5
  %86 = zext i8 %85 to i32
  %87 = shl nuw i32 %86, 24
  %88 = getelementptr inbounds i8, ptr %84, i64 1
  %89 = load i8, ptr %88, align 1, !tbaa !5
  %90 = zext i8 %89 to i32
  %91 = shl nuw nsw i32 %90, 16
  %92 = or i32 %91, %87
  %93 = getelementptr inbounds i8, ptr %84, i64 2
  %94 = load i8, ptr %93, align 1, !tbaa !5
  %95 = zext i8 %94 to i32
  %96 = shl nuw nsw i32 %95, 8
  %97 = or i32 %92, %96
  %98 = getelementptr inbounds i8, ptr %84, i64 3
  %99 = load i8, ptr %98, align 1, !tbaa !5
  %100 = zext i8 %99 to i32
  %101 = or i32 %97, %100
  %102 = add i32 %101, %62
  %103 = icmp ult i32 %83, %102
  %104 = zext i1 %103 to i32
  br label %105

105:                                              ; preds = %65, %44, %23, %3
  %106 = phi i32 [ 1, %44 ], [ 1, %23 ], [ 1, %3 ], [ %104, %65 ]
  ret i32 %106
}

declare i32 @fdt_move(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_pack(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @fdt_ro_probe_(ptr noundef %0) #9
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %4, label %190

4:                                                ; preds = %1
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
  %23 = icmp ult i32 %22, 17
  br i1 %23, label %190, label %24

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 9
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
  %43 = tail call fastcc i32 @fdt_blocks_misordered_(ptr noundef nonnull %0, i32 noundef 16, i32 noundef %42) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %190

45:                                               ; preds = %24
  %46 = icmp ugt i32 %22, 17
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  store i32 285212672, ptr %5, align 4, !tbaa !8
  br label %48

48:                                               ; preds = %47, %45
  %49 = tail call i32 @fdt_num_mem_rsv(ptr noundef nonnull %0) #9
  %50 = shl i32 %49, 4
  %51 = add i32 %50, 16
  %52 = load i8, ptr %25, align 1, !tbaa !5
  %53 = zext i8 %52 to i32
  %54 = shl nuw i32 %53, 24
  %55 = load i8, ptr %29, align 1, !tbaa !5
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 16
  %58 = or i32 %57, %54
  %59 = load i8, ptr %34, align 1, !tbaa !5
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, 8
  %62 = or i32 %58, %61
  %63 = load i8, ptr %39, align 1, !tbaa !5
  %64 = zext i8 %63 to i32
  %65 = or i32 %62, %64
  %66 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 8
  %67 = load i8, ptr %66, align 1, !tbaa !5
  %68 = zext i8 %67 to i32
  %69 = shl nuw i32 %68, 24
  %70 = getelementptr inbounds i8, ptr %66, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !5
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 16
  %74 = or i32 %73, %69
  %75 = getelementptr inbounds i8, ptr %66, i64 2
  %76 = load i8, ptr %75, align 1, !tbaa !5
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 8
  %79 = or i32 %74, %78
  %80 = getelementptr inbounds i8, ptr %66, i64 3
  %81 = load i8, ptr %80, align 1, !tbaa !5
  %82 = zext i8 %81 to i32
  %83 = or i32 %79, %82
  %84 = add i32 %50, 56
  %85 = add nsw i32 %65, %84
  %86 = getelementptr inbounds i8, ptr %0, i64 40
  %87 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 4
  %88 = load i8, ptr %87, align 1, !tbaa !5
  %89 = zext i8 %88 to i64
  %90 = shl nuw nsw i64 %89, 24
  %91 = getelementptr inbounds i8, ptr %87, i64 1
  %92 = load i8, ptr %91, align 1, !tbaa !5
  %93 = zext i8 %92 to i64
  %94 = shl nuw nsw i64 %93, 16
  %95 = or i64 %94, %90
  %96 = getelementptr inbounds i8, ptr %87, i64 2
  %97 = load i8, ptr %96, align 1, !tbaa !5
  %98 = zext i8 %97 to i64
  %99 = shl nuw nsw i64 %98, 8
  %100 = or i64 %95, %99
  %101 = getelementptr inbounds i8, ptr %87, i64 3
  %102 = load i8, ptr %101, align 1, !tbaa !5
  %103 = zext i8 %102 to i64
  %104 = or i64 %100, %103
  %105 = getelementptr inbounds i8, ptr %0, i64 %104
  %106 = sext i32 %51 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %86, ptr align 1 %105, i64 %106, i1 false) #9
  store i32 671088640, ptr %87, align 4, !tbaa !29
  %107 = sext i32 %84 to i64
  %108 = getelementptr inbounds i8, ptr %0, i64 %107
  %109 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 2
  %110 = load i8, ptr %109, align 1, !tbaa !5
  %111 = zext i8 %110 to i64
  %112 = shl nuw nsw i64 %111, 24
  %113 = getelementptr inbounds i8, ptr %109, i64 1
  %114 = load i8, ptr %113, align 1, !tbaa !5
  %115 = zext i8 %114 to i64
  %116 = shl nuw nsw i64 %115, 16
  %117 = or i64 %116, %112
  %118 = getelementptr inbounds i8, ptr %109, i64 2
  %119 = load i8, ptr %118, align 1, !tbaa !5
  %120 = zext i8 %119 to i64
  %121 = shl nuw nsw i64 %120, 8
  %122 = or i64 %117, %121
  %123 = getelementptr inbounds i8, ptr %109, i64 3
  %124 = load i8, ptr %123, align 1, !tbaa !5
  %125 = zext i8 %124 to i64
  %126 = or i64 %122, %125
  %127 = getelementptr inbounds i8, ptr %0, i64 %126
  %128 = sext i32 %65 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %108, ptr align 1 %127, i64 %128, i1 false) #9
  %129 = tail call i32 @llvm.bswap.i32(i32 %84) #9
  store i32 %129, ptr %109, align 4, !tbaa !15
  %130 = tail call i32 @llvm.bswap.i32(i32 %65) #9
  store i32 %130, ptr %25, align 4, !tbaa !18
  %131 = sext i32 %85 to i64
  %132 = getelementptr inbounds i8, ptr %0, i64 %131
  %133 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 3
  %134 = load i8, ptr %133, align 1, !tbaa !5
  %135 = zext i8 %134 to i64
  %136 = shl nuw nsw i64 %135, 24
  %137 = getelementptr inbounds i8, ptr %133, i64 1
  %138 = load i8, ptr %137, align 1, !tbaa !5
  %139 = zext i8 %138 to i64
  %140 = shl nuw nsw i64 %139, 16
  %141 = or i64 %140, %136
  %142 = getelementptr inbounds i8, ptr %133, i64 2
  %143 = load i8, ptr %142, align 1, !tbaa !5
  %144 = zext i8 %143 to i64
  %145 = shl nuw nsw i64 %144, 8
  %146 = or i64 %141, %145
  %147 = getelementptr inbounds i8, ptr %133, i64 3
  %148 = load i8, ptr %147, align 1, !tbaa !5
  %149 = zext i8 %148 to i64
  %150 = or i64 %146, %149
  %151 = getelementptr inbounds i8, ptr %0, i64 %150
  %152 = sext i32 %83 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %132, ptr align 1 %151, i64 %152, i1 false) #9
  %153 = tail call i32 @llvm.bswap.i32(i32 %85) #9
  store i32 %153, ptr %133, align 4, !tbaa !16
  %154 = load i8, ptr %66, align 1, !tbaa !5
  %155 = zext i8 %154 to i32
  %156 = shl nuw i32 %155, 24
  %157 = load i8, ptr %70, align 1, !tbaa !5
  %158 = zext i8 %157 to i32
  %159 = shl nuw nsw i32 %158, 16
  %160 = or i32 %159, %156
  %161 = load i8, ptr %75, align 1, !tbaa !5
  %162 = zext i8 %161 to i32
  %163 = shl nuw nsw i32 %162, 8
  %164 = or i32 %160, %163
  %165 = load i8, ptr %80, align 1, !tbaa !5
  %166 = zext i8 %165 to i32
  %167 = or i32 %164, %166
  %168 = tail call i32 @llvm.bswap.i32(i32 %167) #9
  store i32 %168, ptr %66, align 4, !tbaa !23
  %169 = shl i32 %153, 24
  %170 = shl i32 %153, 8
  %171 = and i32 %170, 16711680
  %172 = or i32 %171, %169
  %173 = lshr i32 %153, 8
  %174 = and i32 %173, 65280
  %175 = or i32 %172, %174
  %176 = lshr i32 %153, 24
  %177 = or i32 %175, %176
  %178 = shl i32 %168, 24
  %179 = shl i32 %168, 8
  %180 = and i32 %179, 16711680
  %181 = or i32 %180, %178
  %182 = lshr i32 %168, 8
  %183 = and i32 %182, 65280
  %184 = or i32 %181, %183
  %185 = lshr i32 %168, 24
  %186 = or i32 %184, %185
  %187 = add i32 %186, %177
  %188 = tail call i32 @llvm.bswap.i32(i32 %187) #9
  %189 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 1
  store i32 %188, ptr %189, align 4, !tbaa !28
  br label %190

190:                                              ; preds = %48, %24, %4, %1
  %191 = phi i32 [ 0, %48 ], [ -12, %24 ], [ -10, %4 ], [ %2, %1 ]
  ret i32 %191
}

declare i32 @fdt_check_node_offset_(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @fdt_find_string_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @fdt_get_property(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !10, i64 20}
!9 = !{!"fdt_header", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36}
!10 = !{!"int", !6, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"fdt_reserve_entry", !13, i64 0, !13, i64 8}
!13 = !{!"long", !6, i64 0}
!14 = !{!12, !13, i64 8}
!15 = !{!9, !10, i64 8}
!16 = !{!9, !10, i64 12}
!17 = !{!10, !10, i64 0}
!18 = !{!9, !10, i64 36}
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !6, i64 0}
!21 = !{!22, !10, i64 4}
!22 = !{!"fdt_property", !10, i64 0, !10, i64 4, !10, i64 8, !6, i64 12}
!23 = !{!9, !10, i64 32}
!24 = !{!22, !10, i64 0}
!25 = !{!22, !10, i64 8}
!26 = !{!27, !10, i64 0}
!27 = !{!"fdt_node_header", !10, i64 0, !6, i64 4}
!28 = !{!9, !10, i64 4}
!29 = !{!9, !10, i64 16}
!30 = !{!9, !10, i64 0}
!31 = !{!9, !10, i64 24}
!32 = !{!9, !10, i64 28}
