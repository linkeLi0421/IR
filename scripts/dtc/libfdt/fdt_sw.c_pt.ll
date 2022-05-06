; ModuleID = '/llk/IR/scripts/dtc/libfdt/fdt_sw.c_pt.bc'
source_filename = "../scripts/dtc/libfdt/fdt_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fdt_reserve_entry = type { i64, i64 }
%struct.fdt_node_header = type { i32, [0 x i8] }
%struct.fdt_property = type { i32, i32, i32, [0 x i8] }

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define dso_local i32 @fdt_create_with_flags(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %1, 48
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = icmp ult i32 %2, 2
  br i1 %6, label %7, label %14

7:                                                ; preds = %5
  %8 = zext i32 %1 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %8, i1 false)
  store i32 302117423, ptr %0, align 4, !tbaa !5
  %9 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  %10 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 6
  store i32 %9, ptr %10, align 4, !tbaa !10
  %11 = tail call i32 @llvm.bswap.i32(i32 %1) #12
  %12 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 1
  store i32 %11, ptr %12, align 4, !tbaa !11
  %13 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 2
  store <4 x i32> <i32 805306368, i32 0, i32 805306368, i32 285212672>, ptr %13, align 4, !tbaa !12
  br label %14

14:                                               ; preds = %7, %5, %3
  %15 = phi i32 [ 0, %7 ], [ -3, %3 ], [ -18, %5 ]
  ret i32 %15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn writeonly uwtable
define dso_local i32 @fdt_create(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp slt i32 %1, 48
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %5, i1 false) #12
  store i32 302117423, ptr %0, align 4, !tbaa !5
  %6 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 6
  store i32 0, ptr %6, align 4, !tbaa !10
  %7 = tail call i32 @llvm.bswap.i32(i32 %1) #12
  %8 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 1
  store i32 %7, ptr %8, align 4, !tbaa !11
  %9 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 2
  store <4 x i32> <i32 805306368, i32 0, i32 805306368, i32 285212672>, ptr %9, align 4, !tbaa !12
  br label %10

10:                                               ; preds = %4, %2
  %11 = phi i32 [ 0, %4 ], [ -3, %2 ]
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define dso_local i32 @fdt_resize(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i8, ptr %0, align 1, !tbaa !13
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 %5, 24
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !13
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 16
  %11 = or i32 %10, %6
  %12 = getelementptr inbounds i8, ptr %0, i64 2
  %13 = load i8, ptr %12, align 1, !tbaa !13
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or i32 %11, %15
  %17 = getelementptr inbounds i8, ptr %0, i64 3
  %18 = load i8, ptr %17, align 1, !tbaa !13
  %19 = zext i8 %18 to i32
  %20 = or i32 %16, %19
  %21 = icmp eq i32 %20, -804389139
  %22 = icmp eq i32 %20, 804389138
  %23 = select i1 %22, i32 0, i32 -9
  %24 = select i1 %21, i32 -7, i32 %23
  br i1 %22, label %25, label %139

25:                                               ; preds = %3
  %26 = icmp slt i32 %2, 0
  br i1 %26, label %139, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 2
  %29 = load i8, ptr %28, align 1, !tbaa !13
  %30 = zext i8 %29 to i64
  %31 = shl nuw nsw i64 %30, 24
  %32 = getelementptr inbounds i8, ptr %28, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !13
  %34 = zext i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 16
  %36 = or i64 %35, %31
  %37 = getelementptr inbounds i8, ptr %28, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !13
  %39 = zext i8 %38 to i64
  %40 = shl nuw nsw i64 %39, 8
  %41 = or i64 %36, %40
  %42 = getelementptr inbounds i8, ptr %28, i64 3
  %43 = load i8, ptr %42, align 1, !tbaa !13
  %44 = zext i8 %43 to i64
  %45 = or i64 %41, %44
  %46 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 9
  %47 = load i8, ptr %46, align 1, !tbaa !13
  %48 = zext i8 %47 to i64
  %49 = shl nuw nsw i64 %48, 24
  %50 = getelementptr inbounds i8, ptr %46, i64 1
  %51 = load i8, ptr %50, align 1, !tbaa !13
  %52 = zext i8 %51 to i64
  %53 = shl nuw nsw i64 %52, 16
  %54 = or i64 %53, %49
  %55 = getelementptr inbounds i8, ptr %46, i64 2
  %56 = load i8, ptr %55, align 1, !tbaa !13
  %57 = zext i8 %56 to i64
  %58 = shl nuw nsw i64 %57, 8
  %59 = or i64 %54, %58
  %60 = getelementptr inbounds i8, ptr %46, i64 3
  %61 = load i8, ptr %60, align 1, !tbaa !13
  %62 = zext i8 %61 to i64
  %63 = or i64 %59, %62
  %64 = add nuw nsw i64 %63, %45
  %65 = and i64 %64, 4294967295
  %66 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 8
  %67 = load i8, ptr %66, align 1, !tbaa !13
  %68 = zext i8 %67 to i64
  %69 = shl nuw nsw i64 %68, 24
  %70 = getelementptr inbounds i8, ptr %66, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !13
  %72 = zext i8 %71 to i64
  %73 = shl nuw nsw i64 %72, 16
  %74 = or i64 %73, %69
  %75 = getelementptr inbounds i8, ptr %66, i64 2
  %76 = load i8, ptr %75, align 1, !tbaa !13
  %77 = zext i8 %76 to i64
  %78 = shl nuw nsw i64 %77, 8
  %79 = or i64 %74, %78
  %80 = getelementptr inbounds i8, ptr %66, i64 3
  %81 = load i8, ptr %80, align 1, !tbaa !13
  %82 = zext i8 %81 to i64
  %83 = or i64 %79, %82
  %84 = add nuw nsw i64 %83, %65
  %85 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 1
  %86 = load i8, ptr %85, align 1, !tbaa !13
  %87 = zext i8 %86 to i64
  %88 = shl nuw nsw i64 %87, 24
  %89 = getelementptr inbounds i8, ptr %85, i64 1
  %90 = load i8, ptr %89, align 1, !tbaa !13
  %91 = zext i8 %90 to i64
  %92 = shl nuw nsw i64 %91, 16
  %93 = or i64 %92, %88
  %94 = getelementptr inbounds i8, ptr %85, i64 2
  %95 = load i8, ptr %94, align 1, !tbaa !13
  %96 = zext i8 %95 to i64
  %97 = shl nuw nsw i64 %96, 8
  %98 = or i64 %93, %97
  %99 = getelementptr inbounds i8, ptr %85, i64 3
  %100 = load i8, ptr %99, align 1, !tbaa !13
  %101 = zext i8 %100 to i64
  %102 = or i64 %98, %101
  %103 = icmp ugt i64 %84, %102
  br i1 %103, label %139, label %104

104:                                              ; preds = %27
  %105 = zext i32 %2 to i64
  %106 = icmp ugt i64 %84, %105
  br i1 %106, label %139, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds i8, ptr %0, i64 %102
  %109 = sub nsw i64 0, %83
  %110 = getelementptr inbounds i8, ptr %108, i64 %109
  %111 = getelementptr inbounds i8, ptr %1, i64 %105
  %112 = getelementptr inbounds i8, ptr %111, i64 %109
  %113 = icmp ugt ptr %1, %0
  br i1 %113, label %115, label %114

114:                                              ; preds = %107
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %0, i64 %65, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %112, ptr nonnull align 1 %110, i64 %83, i1 false)
  br label %116

115:                                              ; preds = %107
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %112, ptr nonnull align 1 %110, i64 %83, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %0, i64 %65, i1 false)
  br label %116

116:                                              ; preds = %115, %114
  %117 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  %118 = getelementptr inbounds %struct.fdt_header, ptr %1, i64 0, i32 1
  store i32 %117, ptr %118, align 4, !tbaa !11
  %119 = getelementptr inbounds %struct.fdt_header, ptr %1, i64 0, i32 3
  %120 = load i8, ptr %119, align 1, !tbaa !13
  %121 = zext i8 %120 to i32
  %122 = shl nuw i32 %121, 24
  %123 = getelementptr inbounds i8, ptr %119, i64 1
  %124 = load i8, ptr %123, align 1, !tbaa !13
  %125 = zext i8 %124 to i32
  %126 = shl nuw nsw i32 %125, 16
  %127 = or i32 %126, %122
  %128 = getelementptr inbounds i8, ptr %119, i64 2
  %129 = load i8, ptr %128, align 1, !tbaa !13
  %130 = zext i8 %129 to i32
  %131 = shl nuw nsw i32 %130, 8
  %132 = or i32 %127, %131
  %133 = getelementptr inbounds i8, ptr %119, i64 3
  %134 = load i8, ptr %133, align 1, !tbaa !13
  %135 = zext i8 %134 to i32
  %136 = or i32 %132, %135
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %116
  store i32 %117, ptr %119, align 4, !tbaa !14
  br label %139

139:                                              ; preds = %138, %116, %104, %27, %25, %3
  %140 = phi i32 [ %24, %3 ], [ -3, %25 ], [ -13, %27 ], [ -3, %104 ], [ 0, %138 ], [ 0, %116 ]
  ret i32 %140
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define dso_local i32 @fdt_add_reservemap_entry(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = load i8, ptr %0, align 1, !tbaa !13
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 %5, 24
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !13
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 16
  %11 = or i32 %10, %6
  %12 = getelementptr inbounds i8, ptr %0, i64 2
  %13 = load i8, ptr %12, align 1, !tbaa !13
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or i32 %11, %15
  %17 = getelementptr inbounds i8, ptr %0, i64 3
  %18 = load i8, ptr %17, align 1, !tbaa !13
  %19 = zext i8 %18 to i32
  %20 = or i32 %16, %19
  %21 = icmp eq i32 %20, 804389138
  br i1 %21, label %22, label %42

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 3
  %24 = load i8, ptr %23, align 1, !tbaa !13
  %25 = zext i8 %24 to i32
  %26 = shl nuw i32 %25, 24
  %27 = getelementptr inbounds i8, ptr %23, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !13
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 16
  %31 = or i32 %30, %26
  %32 = getelementptr inbounds i8, ptr %23, i64 2
  %33 = load i8, ptr %32, align 1, !tbaa !13
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  %36 = or i32 %31, %35
  %37 = getelementptr inbounds i8, ptr %23, i64 3
  %38 = load i8, ptr %37, align 1, !tbaa !13
  %39 = zext i8 %38 to i32
  %40 = or i32 %36, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %92

42:                                               ; preds = %3
  %43 = icmp eq i32 %20, -804389139
  %44 = select i1 %43, i32 -7, i32 -9
  br label %92

45:                                               ; preds = %22
  %46 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 2
  %47 = load i8, ptr %46, align 1, !tbaa !13
  %48 = zext i8 %47 to i32
  %49 = shl nuw i32 %48, 24
  %50 = getelementptr inbounds i8, ptr %46, i64 1
  %51 = load i8, ptr %50, align 1, !tbaa !13
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 16
  %54 = or i32 %53, %49
  %55 = getelementptr inbounds i8, ptr %46, i64 2
  %56 = load i8, ptr %55, align 1, !tbaa !13
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 8
  %59 = or i32 %54, %58
  %60 = getelementptr inbounds i8, ptr %46, i64 3
  %61 = load i8, ptr %60, align 1, !tbaa !13
  %62 = zext i8 %61 to i32
  %63 = or i32 %59, %62
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, 16
  %66 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 1
  %67 = load i8, ptr %66, align 1, !tbaa !13
  %68 = zext i8 %67 to i64
  %69 = shl nuw nsw i64 %68, 24
  %70 = getelementptr inbounds i8, ptr %66, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !13
  %72 = zext i8 %71 to i64
  %73 = shl nuw nsw i64 %72, 16
  %74 = or i64 %73, %69
  %75 = getelementptr inbounds i8, ptr %66, i64 2
  %76 = load i8, ptr %75, align 1, !tbaa !13
  %77 = zext i8 %76 to i64
  %78 = shl nuw nsw i64 %77, 8
  %79 = or i64 %74, %78
  %80 = getelementptr inbounds i8, ptr %66, i64 3
  %81 = load i8, ptr %80, align 1, !tbaa !13
  %82 = zext i8 %81 to i64
  %83 = or i64 %79, %82
  %84 = icmp ugt i64 %65, %83
  br i1 %84, label %92, label %85

85:                                               ; preds = %45
  %86 = getelementptr inbounds i8, ptr %0, i64 %64
  %87 = tail call i64 @llvm.bswap.i64(i64 %1) #12
  store i64 %87, ptr %86, align 8, !tbaa !15
  %88 = tail call i64 @llvm.bswap.i64(i64 %2) #12
  %89 = getelementptr inbounds %struct.fdt_reserve_entry, ptr %86, i64 0, i32 1
  store i64 %88, ptr %89, align 8, !tbaa !18
  %90 = trunc i64 %65 to i32
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #12
  store i32 %91, ptr %46, align 4, !tbaa !19
  br label %92

92:                                               ; preds = %85, %45, %42, %22
  %93 = phi i32 [ 0, %85 ], [ %44, %42 ], [ -3, %45 ], [ -7, %22 ]
  ret i32 %93
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define dso_local i32 @fdt_finish_reservemap(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @fdt_add_reservemap_entry(ptr noundef %0, i64 noundef 0, i64 noundef 0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %25

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 1, !tbaa !13
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 %7, 24
  %9 = getelementptr inbounds i8, ptr %5, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !13
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 16
  %13 = or i32 %12, %8
  %14 = getelementptr inbounds i8, ptr %5, i64 2
  %15 = load i8, ptr %14, align 1, !tbaa !13
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = or i32 %13, %17
  %19 = getelementptr inbounds i8, ptr %5, i64 3
  %20 = load i8, ptr %19, align 1, !tbaa !13
  %21 = zext i8 %20 to i32
  %22 = or i32 %18, %21
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  %24 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 3
  store i32 %23, ptr %24, align 4, !tbaa !14
  br label %25

25:                                               ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @fdt_begin_node(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = load i8, ptr %0, align 1, !tbaa !13
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 %4, 24
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !13
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 16
  %10 = or i32 %9, %5
  %11 = getelementptr inbounds i8, ptr %0, i64 2
  %12 = load i8, ptr %11, align 1, !tbaa !13
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = or i32 %10, %14
  %16 = getelementptr inbounds i8, ptr %0, i64 3
  %17 = load i8, ptr %16, align 1, !tbaa !13
  %18 = zext i8 %17 to i32
  %19 = or i32 %15, %18
  %20 = icmp eq i32 %19, 804389138
  br i1 %20, label %21, label %59

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 3
  %23 = load i8, ptr %22, align 1, !tbaa !13
  %24 = zext i8 %23 to i32
  %25 = shl nuw i32 %24, 24
  %26 = getelementptr inbounds i8, ptr %22, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !13
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 16
  %30 = or i32 %29, %25
  %31 = getelementptr inbounds i8, ptr %22, i64 2
  %32 = load i8, ptr %31, align 1, !tbaa !13
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = or i32 %30, %34
  %36 = getelementptr inbounds i8, ptr %22, i64 3
  %37 = load i8, ptr %36, align 1, !tbaa !13
  %38 = zext i8 %37 to i32
  %39 = or i32 %35, %38
  %40 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 1
  %41 = load i8, ptr %40, align 1, !tbaa !13
  %42 = zext i8 %41 to i32
  %43 = shl nuw i32 %42, 24
  %44 = getelementptr inbounds i8, ptr %40, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !13
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 16
  %48 = or i32 %47, %43
  %49 = getelementptr inbounds i8, ptr %40, i64 2
  %50 = load i8, ptr %49, align 1, !tbaa !13
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 8
  %53 = or i32 %48, %52
  %54 = getelementptr inbounds i8, ptr %40, i64 3
  %55 = load i8, ptr %54, align 1, !tbaa !13
  %56 = zext i8 %55 to i32
  %57 = or i32 %53, %56
  %58 = icmp eq i32 %39, %57
  br i1 %58, label %62, label %73

59:                                               ; preds = %2
  %60 = icmp eq i32 %19, -804389139
  %61 = select i1 %60, i32 -7, i32 -9
  br label %73

62:                                               ; preds = %21
  %63 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  %64 = shl i64 %63, 32
  %65 = add i64 %64, 4294967296
  %66 = ashr exact i64 %65, 32
  %67 = add nsw i64 %66, 7
  %68 = and i64 %67, -4
  %69 = tail call fastcc ptr @fdt_grab_space_(ptr noundef nonnull %0, i64 noundef %68)
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %62
  store i32 16777216, ptr %69, align 4, !tbaa !20
  %72 = getelementptr inbounds %struct.fdt_node_header, ptr %69, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %72, ptr align 1 %1, i64 %66, i1 false)
  br label %73

73:                                               ; preds = %71, %62, %59, %21
  %74 = phi i32 [ 0, %71 ], [ %61, %59 ], [ -3, %62 ], [ -7, %21 ]
  ret i32 %74
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define internal fastcc ptr @fdt_grab_space_(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 9
  %4 = load i8, ptr %3, align 1, !tbaa !13
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 %5, 24
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !13
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 16
  %11 = or i32 %10, %6
  %12 = getelementptr inbounds i8, ptr %3, i64 2
  %13 = load i8, ptr %12, align 1, !tbaa !13
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or i32 %11, %15
  %17 = getelementptr inbounds i8, ptr %3, i64 3
  %18 = load i8, ptr %17, align 1, !tbaa !13
  %19 = zext i8 %18 to i32
  %20 = or i32 %16, %19
  %21 = zext i32 %20 to i64
  %22 = add i64 %21, %1
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %95, label %24

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 2
  %26 = getelementptr inbounds i8, ptr %25, i64 3
  %27 = load i8, ptr %26, align 1, !tbaa !13
  %28 = getelementptr inbounds i8, ptr %25, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !13
  %30 = getelementptr inbounds i8, ptr %25, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !13
  %32 = load i8, ptr %25, align 1, !tbaa !13
  %33 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 8
  %34 = getelementptr inbounds i8, ptr %33, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !13
  %36 = zext i8 %35 to i64
  %37 = mul nsw i64 %36, -65536
  %38 = load i8, ptr %33, align 1, !tbaa !13
  %39 = zext i8 %38 to i64
  %40 = mul nsw i64 %39, -16777216
  %41 = add nsw i64 %40, %37
  %42 = getelementptr inbounds i8, ptr %33, i64 2
  %43 = load i8, ptr %42, align 1, !tbaa !13
  %44 = zext i8 %43 to i64
  %45 = mul nuw nsw i64 %44, 4294967040
  %46 = add nsw i64 %41, %45
  %47 = getelementptr inbounds i8, ptr %33, i64 3
  %48 = load i8, ptr %47, align 1, !tbaa !13
  %49 = zext i8 %48 to i64
  %50 = sub nsw i64 %46, %49
  %51 = zext i8 %31 to i64
  %52 = mul nsw i64 %51, -65536
  %53 = zext i8 %32 to i64
  %54 = mul nsw i64 %53, -16777216
  %55 = add nsw i64 %52, %54
  %56 = zext i8 %29 to i64
  %57 = mul nuw nsw i64 %56, 4294967040
  %58 = add nsw i64 %55, %57
  %59 = zext i8 %27 to i64
  %60 = sub nsw i64 %58, %59
  %61 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 1
  %62 = getelementptr inbounds i8, ptr %61, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !13
  %64 = zext i8 %63 to i64
  %65 = shl nuw nsw i64 %64, 16
  %66 = load i8, ptr %61, align 1, !tbaa !13
  %67 = zext i8 %66 to i64
  %68 = shl nuw nsw i64 %67, 24
  %69 = or i64 %68, %65
  %70 = getelementptr inbounds i8, ptr %61, i64 2
  %71 = load i8, ptr %70, align 1, !tbaa !13
  %72 = zext i8 %71 to i64
  %73 = shl nuw nsw i64 %72, 8
  %74 = or i64 %69, %73
  %75 = getelementptr inbounds i8, ptr %61, i64 3
  %76 = load i8, ptr %75, align 1, !tbaa !13
  %77 = zext i8 %76 to i64
  %78 = or i64 %74, %77
  %79 = add nsw i64 %50, %60
  %80 = add nsw i64 %79, %78
  %81 = and i64 %80, 4294967295
  %82 = icmp ugt i64 %22, %81
  br i1 %82, label %95, label %83

83:                                               ; preds = %24
  %84 = trunc i64 %22 to i32
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #12
  store i32 %85, ptr %3, align 4, !tbaa !22
  %86 = shl nuw nsw i64 %53, 24
  %87 = shl nuw nsw i64 %51, 16
  %88 = or i64 %87, %86
  %89 = shl nuw nsw i64 %56, 8
  %90 = or i64 %88, %89
  %91 = or i64 %90, %59
  %92 = getelementptr inbounds i8, ptr %0, i64 %91
  %93 = sext i32 %20 to i64
  %94 = getelementptr inbounds i8, ptr %92, i64 %93
  br label %95

95:                                               ; preds = %83, %24, %2
  %96 = phi ptr [ %94, %83 ], [ null, %24 ], [ null, %2 ]
  ret ptr %96
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn uwtable
define dso_local i32 @fdt_end_node(ptr noundef %0) local_unnamed_addr #7 {
  %2 = load i8, ptr %0, align 1, !tbaa !13
  %3 = zext i8 %2 to i32
  %4 = shl nuw i32 %3, 24
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !13
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 16
  %9 = or i32 %8, %4
  %10 = getelementptr inbounds i8, ptr %0, i64 2
  %11 = load i8, ptr %10, align 1, !tbaa !13
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = or i32 %9, %13
  %15 = getelementptr inbounds i8, ptr %0, i64 3
  %16 = load i8, ptr %15, align 1, !tbaa !13
  %17 = zext i8 %16 to i32
  %18 = or i32 %14, %17
  %19 = icmp eq i32 %18, 804389138
  br i1 %19, label %20, label %58

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 3
  %22 = load i8, ptr %21, align 1, !tbaa !13
  %23 = zext i8 %22 to i32
  %24 = shl nuw i32 %23, 24
  %25 = getelementptr inbounds i8, ptr %21, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !13
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 16
  %29 = or i32 %28, %24
  %30 = getelementptr inbounds i8, ptr %21, i64 2
  %31 = load i8, ptr %30, align 1, !tbaa !13
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 8
  %34 = or i32 %29, %33
  %35 = getelementptr inbounds i8, ptr %21, i64 3
  %36 = load i8, ptr %35, align 1, !tbaa !13
  %37 = zext i8 %36 to i32
  %38 = or i32 %34, %37
  %39 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 1
  %40 = load i8, ptr %39, align 1, !tbaa !13
  %41 = zext i8 %40 to i32
  %42 = shl nuw i32 %41, 24
  %43 = getelementptr inbounds i8, ptr %39, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !13
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 16
  %47 = or i32 %46, %42
  %48 = getelementptr inbounds i8, ptr %39, i64 2
  %49 = load i8, ptr %48, align 1, !tbaa !13
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 8
  %52 = or i32 %47, %51
  %53 = getelementptr inbounds i8, ptr %39, i64 3
  %54 = load i8, ptr %53, align 1, !tbaa !13
  %55 = zext i8 %54 to i32
  %56 = or i32 %52, %55
  %57 = icmp eq i32 %38, %56
  br i1 %57, label %61, label %65

58:                                               ; preds = %1
  %59 = icmp eq i32 %18, -804389139
  %60 = select i1 %59, i32 -7, i32 -9
  br label %65

61:                                               ; preds = %20
  %62 = tail call fastcc ptr @fdt_grab_space_(ptr noundef nonnull %0, i64 noundef 4)
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  store i32 33554432, ptr %62, align 4, !tbaa !12
  br label %65

65:                                               ; preds = %64, %61, %58, %20
  %66 = phi i32 [ 0, %64 ], [ %60, %58 ], [ -3, %61 ], [ -7, %20 ]
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_property_placeholder(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #8 {
  %5 = load i8, ptr %0, align 1, !tbaa !13
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 %6, 24
  %8 = getelementptr inbounds i8, ptr %0, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !13
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = or i32 %11, %7
  %13 = getelementptr inbounds i8, ptr %0, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !13
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = or i32 %12, %16
  %18 = getelementptr inbounds i8, ptr %0, i64 3
  %19 = load i8, ptr %18, align 1, !tbaa !13
  %20 = zext i8 %19 to i32
  %21 = or i32 %17, %20
  %22 = icmp eq i32 %21, 804389138
  br i1 %22, label %23, label %61

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 3
  %25 = load i8, ptr %24, align 1, !tbaa !13
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 %26, 24
  %28 = getelementptr inbounds i8, ptr %24, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !13
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 16
  %32 = or i32 %31, %27
  %33 = getelementptr inbounds i8, ptr %24, i64 2
  %34 = load i8, ptr %33, align 1, !tbaa !13
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 8
  %37 = or i32 %32, %36
  %38 = getelementptr inbounds i8, ptr %24, i64 3
  %39 = load i8, ptr %38, align 1, !tbaa !13
  %40 = zext i8 %39 to i32
  %41 = or i32 %37, %40
  %42 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 1
  %43 = load i8, ptr %42, align 1, !tbaa !13
  %44 = zext i8 %43 to i32
  %45 = shl nuw i32 %44, 24
  %46 = getelementptr inbounds i8, ptr %42, i64 1
  %47 = load i8, ptr %46, align 1, !tbaa !13
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 16
  %50 = or i32 %49, %45
  %51 = getelementptr inbounds i8, ptr %42, i64 2
  %52 = load i8, ptr %51, align 1, !tbaa !13
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %53, 8
  %55 = or i32 %50, %54
  %56 = getelementptr inbounds i8, ptr %42, i64 3
  %57 = load i8, ptr %56, align 1, !tbaa !13
  %58 = zext i8 %57 to i32
  %59 = or i32 %55, %58
  %60 = icmp eq i32 %41, %59
  br i1 %60, label %64, label %155

61:                                               ; preds = %4
  %62 = icmp eq i32 %21, -804389139
  %63 = select i1 %62, i32 -7, i32 -9
  br label %155

64:                                               ; preds = %23
  %65 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 6
  %66 = getelementptr inbounds i8, ptr %65, i64 3
  %67 = load i8, ptr %66, align 1, !tbaa !13
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %64
  %71 = tail call fastcc i32 @fdt_add_string_(ptr noundef nonnull %0, ptr noundef %1)
  br label %114

72:                                               ; preds = %64
  %73 = zext i8 %43 to i64
  %74 = shl nuw nsw i64 %73, 24
  %75 = zext i8 %47 to i64
  %76 = shl nuw nsw i64 %75, 16
  %77 = or i64 %76, %74
  %78 = zext i8 %52 to i64
  %79 = shl nuw nsw i64 %78, 8
  %80 = or i64 %77, %79
  %81 = zext i8 %57 to i64
  %82 = or i64 %80, %81
  %83 = getelementptr inbounds i8, ptr %0, i64 %82
  %84 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 8
  %85 = load i8, ptr %84, align 1, !tbaa !13
  %86 = zext i8 %85 to i32
  %87 = shl nuw i32 %86, 24
  %88 = getelementptr inbounds i8, ptr %84, i64 1
  %89 = load i8, ptr %88, align 1, !tbaa !13
  %90 = zext i8 %89 to i32
  %91 = shl nuw nsw i32 %90, 16
  %92 = or i32 %91, %87
  %93 = getelementptr inbounds i8, ptr %84, i64 2
  %94 = load i8, ptr %93, align 1, !tbaa !13
  %95 = zext i8 %94 to i32
  %96 = shl nuw nsw i32 %95, 8
  %97 = or i32 %92, %96
  %98 = getelementptr inbounds i8, ptr %84, i64 3
  %99 = load i8, ptr %98, align 1, !tbaa !13
  %100 = zext i8 %99 to i32
  %101 = or i32 %97, %100
  %102 = sext i32 %101 to i64
  %103 = sub nsw i64 0, %102
  %104 = getelementptr inbounds i8, ptr %83, i64 %103
  %105 = tail call ptr @fdt_find_string_(ptr noundef nonnull %104, i32 noundef %101, ptr noundef %1) #12
  %106 = icmp eq ptr %105, null
  br i1 %106, label %112, label %107

107:                                              ; preds = %72
  %108 = ptrtoint ptr %105 to i64
  %109 = ptrtoint ptr %83 to i64
  %110 = sub i64 %108, %109
  %111 = trunc i64 %110 to i32
  br label %114

112:                                              ; preds = %72
  %113 = tail call fastcc i32 @fdt_add_string_(ptr noundef nonnull %0, ptr noundef %1) #12
  br label %114

114:                                              ; preds = %112, %107, %70
  %115 = phi i1 [ false, %112 ], [ true, %107 ], [ false, %70 ]
  %116 = phi i32 [ %113, %112 ], [ %111, %107 ], [ %71, %70 ]
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %155, label %118

118:                                              ; preds = %114
  %119 = sext i32 %2 to i64
  %120 = add nsw i64 %119, 15
  %121 = and i64 %120, -4
  %122 = tail call fastcc ptr @fdt_grab_space_(ptr noundef nonnull %0, i64 noundef %121)
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %149

124:                                              ; preds = %118
  br i1 %115, label %155, label %125

125:                                              ; preds = %124
  %126 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 8
  %127 = load i8, ptr %126, align 1, !tbaa !13
  %128 = zext i8 %127 to i32
  %129 = shl nuw i32 %128, 24
  %130 = getelementptr inbounds i8, ptr %126, i64 1
  %131 = load i8, ptr %130, align 1, !tbaa !13
  %132 = zext i8 %131 to i32
  %133 = shl nuw nsw i32 %132, 16
  %134 = or i32 %133, %129
  %135 = getelementptr inbounds i8, ptr %126, i64 2
  %136 = load i8, ptr %135, align 1, !tbaa !13
  %137 = zext i8 %136 to i32
  %138 = shl nuw nsw i32 %137, 8
  %139 = or i32 %134, %138
  %140 = getelementptr inbounds i8, ptr %126, i64 3
  %141 = load i8, ptr %140, align 1, !tbaa !13
  %142 = zext i8 %141 to i32
  %143 = or i32 %139, %142
  %144 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  %145 = trunc i64 %144 to i32
  %146 = xor i32 %145, -1
  %147 = add i32 %143, %146
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #12
  store i32 %148, ptr %126, align 4, !tbaa !23
  br label %155

149:                                              ; preds = %118
  store i32 50331648, ptr %122, align 4, !tbaa !24
  %150 = tail call i32 @llvm.bswap.i32(i32 %116) #12
  %151 = getelementptr inbounds %struct.fdt_property, ptr %122, i64 0, i32 2
  store i32 %150, ptr %151, align 4, !tbaa !26
  %152 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  %153 = getelementptr inbounds %struct.fdt_property, ptr %122, i64 0, i32 1
  store i32 %152, ptr %153, align 4, !tbaa !27
  %154 = getelementptr inbounds %struct.fdt_property, ptr %122, i64 0, i32 3
  store ptr %154, ptr %3, align 8, !tbaa !28
  br label %155

155:                                              ; preds = %149, %125, %124, %114, %61, %23
  %156 = phi i32 [ 0, %149 ], [ %63, %61 ], [ -3, %114 ], [ -3, %125 ], [ -3, %124 ], [ -7, %23 ]
  ret i32 %156
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn uwtable
define internal fastcc i32 @fdt_add_string_(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 1, !tbaa !13
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 %5, 24
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !13
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 16
  %11 = or i32 %10, %6
  %12 = getelementptr inbounds i8, ptr %3, i64 2
  %13 = load i8, ptr %12, align 1, !tbaa !13
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or i32 %11, %15
  %17 = getelementptr inbounds i8, ptr %3, i64 3
  %18 = load i8, ptr %17, align 1, !tbaa !13
  %19 = zext i8 %18 to i32
  %20 = or i32 %16, %19
  %21 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 8
  %22 = load i8, ptr %21, align 1, !tbaa !13
  %23 = zext i8 %22 to i32
  %24 = shl nuw i32 %23, 24
  %25 = getelementptr inbounds i8, ptr %21, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !13
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 16
  %29 = or i32 %28, %24
  %30 = getelementptr inbounds i8, ptr %21, i64 2
  %31 = load i8, ptr %30, align 1, !tbaa !13
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 8
  %34 = or i32 %29, %33
  %35 = getelementptr inbounds i8, ptr %21, i64 3
  %36 = load i8, ptr %35, align 1, !tbaa !13
  %37 = zext i8 %36 to i32
  %38 = or i32 %34, %37
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  %40 = trunc i64 %39 to i32
  %41 = add i32 %40, 1
  %42 = add i32 %38, %41
  %43 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 2
  %44 = load i8, ptr %43, align 1, !tbaa !13
  %45 = zext i8 %44 to i32
  %46 = shl nuw i32 %45, 24
  %47 = getelementptr inbounds i8, ptr %43, i64 1
  %48 = load i8, ptr %47, align 1, !tbaa !13
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 16
  %51 = or i32 %50, %46
  %52 = getelementptr inbounds i8, ptr %43, i64 2
  %53 = load i8, ptr %52, align 1, !tbaa !13
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 8
  %56 = or i32 %51, %55
  %57 = getelementptr inbounds i8, ptr %43, i64 3
  %58 = load i8, ptr %57, align 1, !tbaa !13
  %59 = zext i8 %58 to i32
  %60 = or i32 %56, %59
  %61 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 9
  %62 = load i8, ptr %61, align 1, !tbaa !13
  %63 = zext i8 %62 to i32
  %64 = shl nuw i32 %63, 24
  %65 = getelementptr inbounds i8, ptr %61, i64 1
  %66 = load i8, ptr %65, align 1, !tbaa !13
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 16
  %69 = or i32 %68, %64
  %70 = getelementptr inbounds i8, ptr %61, i64 2
  %71 = load i8, ptr %70, align 1, !tbaa !13
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 8
  %74 = or i32 %69, %73
  %75 = getelementptr inbounds i8, ptr %61, i64 3
  %76 = load i8, ptr %75, align 1, !tbaa !13
  %77 = zext i8 %76 to i32
  %78 = or i32 %74, %77
  %79 = add i32 %78, %60
  %80 = sub i32 %20, %42
  %81 = icmp ult i32 %80, %79
  br i1 %81, label %91, label %82

82:                                               ; preds = %2
  %83 = zext i32 %20 to i64
  %84 = getelementptr inbounds i8, ptr %0, i64 %83
  %85 = zext i32 %42 to i64
  %86 = sub nsw i64 0, %85
  %87 = getelementptr inbounds i8, ptr %84, i64 %86
  %88 = zext i32 %41 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %87, ptr align 1 %1, i64 %88, i1 false)
  %89 = tail call i32 @llvm.bswap.i32(i32 %42) #12
  store i32 %89, ptr %21, align 4, !tbaa !23
  %90 = sub i32 0, %42
  br label %91

91:                                               ; preds = %82, %2
  %92 = phi i32 [ %90, %82 ], [ 0, %2 ]
  ret i32 %92
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_property(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #8 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %6 = call i32 @fdt_property_placeholder(ptr noundef %0, ptr noundef %1, i32 noundef %3, ptr noundef nonnull %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load ptr, ptr %5, align 8, !tbaa !28
  %10 = sext i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %2, i64 %10, i1 false)
  br label %11

11:                                               ; preds = %8, %4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_finish(ptr noundef %0) local_unnamed_addr #8 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  %3 = load i8, ptr %0, align 1, !tbaa !13
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 %4, 24
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !13
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 16
  %10 = or i32 %9, %5
  %11 = getelementptr inbounds i8, ptr %0, i64 2
  %12 = load i8, ptr %11, align 1, !tbaa !13
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = or i32 %10, %14
  %16 = getelementptr inbounds i8, ptr %0, i64 3
  %17 = load i8, ptr %16, align 1, !tbaa !13
  %18 = zext i8 %17 to i32
  %19 = or i32 %15, %18
  %20 = icmp eq i32 %19, 804389138
  br i1 %20, label %21, label %59

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 3
  %23 = load i8, ptr %22, align 1, !tbaa !13
  %24 = zext i8 %23 to i32
  %25 = shl nuw i32 %24, 24
  %26 = getelementptr inbounds i8, ptr %22, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !13
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 16
  %30 = or i32 %29, %25
  %31 = getelementptr inbounds i8, ptr %22, i64 2
  %32 = load i8, ptr %31, align 1, !tbaa !13
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = or i32 %30, %34
  %36 = getelementptr inbounds i8, ptr %22, i64 3
  %37 = load i8, ptr %36, align 1, !tbaa !13
  %38 = zext i8 %37 to i32
  %39 = or i32 %35, %38
  %40 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 1
  %41 = load i8, ptr %40, align 1, !tbaa !13
  %42 = zext i8 %41 to i32
  %43 = shl nuw i32 %42, 24
  %44 = getelementptr inbounds i8, ptr %40, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !13
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 16
  %48 = or i32 %47, %43
  %49 = getelementptr inbounds i8, ptr %40, i64 2
  %50 = load i8, ptr %49, align 1, !tbaa !13
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 8
  %53 = or i32 %48, %52
  %54 = getelementptr inbounds i8, ptr %40, i64 3
  %55 = load i8, ptr %54, align 1, !tbaa !13
  %56 = zext i8 %55 to i32
  %57 = or i32 %53, %56
  %58 = icmp eq i32 %39, %57
  br i1 %58, label %62, label %205

59:                                               ; preds = %1
  %60 = icmp eq i32 %19, -804389139
  %61 = select i1 %60, i32 -7, i32 -9
  br label %205

62:                                               ; preds = %21
  %63 = tail call fastcc ptr @fdt_grab_space_(ptr noundef nonnull %0, i64 noundef 4)
  %64 = icmp eq ptr %63, null
  br i1 %64, label %205, label %65

65:                                               ; preds = %62
  store i32 150994944, ptr %63, align 4, !tbaa !12
  %66 = load i8, ptr %40, align 1, !tbaa !13
  %67 = zext i8 %66 to i32
  %68 = shl nuw i32 %67, 24
  %69 = load i8, ptr %44, align 1, !tbaa !13
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 16
  %72 = or i32 %71, %68
  %73 = load i8, ptr %49, align 1, !tbaa !13
  %74 = zext i8 %73 to i32
  %75 = shl nuw nsw i32 %74, 8
  %76 = or i32 %72, %75
  %77 = load i8, ptr %54, align 1, !tbaa !13
  %78 = zext i8 %77 to i32
  %79 = or i32 %76, %78
  %80 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 8
  %81 = load i8, ptr %80, align 1, !tbaa !13
  %82 = zext i8 %81 to i32
  %83 = shl nuw i32 %82, 24
  %84 = getelementptr inbounds i8, ptr %80, i64 1
  %85 = load i8, ptr %84, align 1, !tbaa !13
  %86 = zext i8 %85 to i32
  %87 = shl nuw nsw i32 %86, 16
  %88 = or i32 %87, %83
  %89 = getelementptr inbounds i8, ptr %80, i64 2
  %90 = load i8, ptr %89, align 1, !tbaa !13
  %91 = zext i8 %90 to i32
  %92 = shl nuw nsw i32 %91, 8
  %93 = or i32 %88, %92
  %94 = getelementptr inbounds i8, ptr %80, i64 3
  %95 = load i8, ptr %94, align 1, !tbaa !13
  %96 = zext i8 %95 to i32
  %97 = or i32 %93, %96
  %98 = sub i32 %79, %97
  %99 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 2
  %100 = load i8, ptr %99, align 1, !tbaa !13
  %101 = zext i8 %100 to i32
  %102 = shl nuw i32 %101, 24
  %103 = getelementptr inbounds i8, ptr %99, i64 1
  %104 = load i8, ptr %103, align 1, !tbaa !13
  %105 = zext i8 %104 to i32
  %106 = shl nuw nsw i32 %105, 16
  %107 = or i32 %106, %102
  %108 = getelementptr inbounds i8, ptr %99, i64 2
  %109 = load i8, ptr %108, align 1, !tbaa !13
  %110 = zext i8 %109 to i32
  %111 = shl nuw nsw i32 %110, 8
  %112 = or i32 %107, %111
  %113 = getelementptr inbounds i8, ptr %99, i64 3
  %114 = load i8, ptr %113, align 1, !tbaa !13
  %115 = zext i8 %114 to i32
  %116 = or i32 %112, %115
  %117 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 9
  %118 = load i8, ptr %117, align 1, !tbaa !13
  %119 = zext i8 %118 to i32
  %120 = shl nuw i32 %119, 24
  %121 = getelementptr inbounds i8, ptr %117, i64 1
  %122 = load i8, ptr %121, align 1, !tbaa !13
  %123 = zext i8 %122 to i32
  %124 = shl nuw nsw i32 %123, 16
  %125 = or i32 %124, %120
  %126 = getelementptr inbounds i8, ptr %117, i64 2
  %127 = load i8, ptr %126, align 1, !tbaa !13
  %128 = zext i8 %127 to i32
  %129 = shl nuw nsw i32 %128, 8
  %130 = or i32 %125, %129
  %131 = getelementptr inbounds i8, ptr %117, i64 3
  %132 = load i8, ptr %131, align 1, !tbaa !13
  %133 = zext i8 %132 to i32
  %134 = or i32 %130, %133
  %135 = add i32 %134, %116
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, ptr %0, i64 %136
  %138 = sext i32 %98 to i64
  %139 = getelementptr inbounds i8, ptr %0, i64 %138
  %140 = zext i32 %97 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %137, ptr nonnull align 1 %139, i64 %140, i1 false)
  %141 = tail call i32 @llvm.bswap.i32(i32 %135) #12
  store i32 %141, ptr %22, align 4, !tbaa !14
  br label %142

142:                                              ; preds = %182, %65
  %143 = phi i32 [ 0, %65 ], [ %183, %182 ]
  %144 = call i32 @fdt_next_tag(ptr noundef nonnull %0, i32 noundef %143, ptr noundef nonnull %2) #12
  switch i32 %144, label %182 [
    i32 9, label %184
    i32 3, label %145
  ]

145:                                              ; preds = %142
  %146 = load i8, ptr %99, align 1, !tbaa !13
  %147 = zext i8 %146 to i64
  %148 = shl nuw nsw i64 %147, 24
  %149 = load i8, ptr %103, align 1, !tbaa !13
  %150 = zext i8 %149 to i64
  %151 = shl nuw nsw i64 %150, 16
  %152 = or i64 %151, %148
  %153 = load i8, ptr %108, align 1, !tbaa !13
  %154 = zext i8 %153 to i64
  %155 = shl nuw nsw i64 %154, 8
  %156 = or i64 %152, %155
  %157 = load i8, ptr %113, align 1, !tbaa !13
  %158 = zext i8 %157 to i64
  %159 = or i64 %156, %158
  %160 = getelementptr inbounds i8, ptr %0, i64 %159
  %161 = sext i32 %143 to i64
  %162 = getelementptr inbounds i8, ptr %160, i64 %161
  %163 = getelementptr inbounds %struct.fdt_property, ptr %162, i64 0, i32 2
  %164 = load i32, ptr %163, align 4, !tbaa !26
  %165 = call i32 @llvm.bswap.i32(i32 %164) #12
  %166 = load i8, ptr %80, align 1, !tbaa !13
  %167 = zext i8 %166 to i32
  %168 = shl nuw i32 %167, 24
  %169 = load i8, ptr %84, align 1, !tbaa !13
  %170 = zext i8 %169 to i32
  %171 = shl nuw nsw i32 %170, 16
  %172 = or i32 %171, %168
  %173 = load i8, ptr %89, align 1, !tbaa !13
  %174 = zext i8 %173 to i32
  %175 = shl nuw nsw i32 %174, 8
  %176 = or i32 %172, %175
  %177 = load i8, ptr %94, align 1, !tbaa !13
  %178 = zext i8 %177 to i32
  %179 = or i32 %176, %178
  %180 = add i32 %179, %165
  %181 = call i32 @llvm.bswap.i32(i32 %180) #12
  store i32 %181, ptr %163, align 4, !tbaa !26
  br label %182

182:                                              ; preds = %145, %142
  %183 = load i32, ptr %2, align 4, !tbaa !12
  br label %142

184:                                              ; preds = %142
  %185 = load i32, ptr %2, align 4, !tbaa !12
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %205, label %187

187:                                              ; preds = %184
  %188 = load i8, ptr %80, align 1, !tbaa !13
  %189 = zext i8 %188 to i32
  %190 = shl nuw i32 %189, 24
  %191 = load i8, ptr %84, align 1, !tbaa !13
  %192 = zext i8 %191 to i32
  %193 = shl nuw nsw i32 %192, 16
  %194 = or i32 %193, %190
  %195 = load i8, ptr %89, align 1, !tbaa !13
  %196 = zext i8 %195 to i32
  %197 = shl nuw nsw i32 %196, 8
  %198 = or i32 %194, %197
  %199 = load i8, ptr %94, align 1, !tbaa !13
  %200 = zext i8 %199 to i32
  %201 = or i32 %198, %200
  %202 = add i32 %201, %135
  %203 = call i32 @llvm.bswap.i32(i32 %202) #12
  store i32 %203, ptr %40, align 4, !tbaa !11
  %204 = getelementptr inbounds %struct.fdt_header, ptr %0, i64 0, i32 6
  store i32 268435456, ptr %204, align 4, !tbaa !10
  store i32 -302117424, ptr %0, align 4, !tbaa !5
  br label %205

205:                                              ; preds = %187, %184, %62, %59, %21
  %206 = phi i32 [ 0, %187 ], [ %61, %59 ], [ -3, %62 ], [ %185, %184 ], [ -7, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %206
}

declare i32 @fdt_next_tag(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

declare ptr @fdt_find_string_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

attributes #0 = { argmemonly mustprogress nofree nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"fdt_header", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 24}
!11 = !{!6, !7, i64 4}
!12 = !{!7, !7, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!6, !7, i64 12}
!15 = !{!16, !17, i64 0}
!16 = !{!"fdt_reserve_entry", !17, i64 0, !17, i64 8}
!17 = !{!"long", !8, i64 0}
!18 = !{!16, !17, i64 8}
!19 = !{!6, !7, i64 8}
!20 = !{!21, !7, i64 0}
!21 = !{!"fdt_node_header", !7, i64 0, !8, i64 4}
!22 = !{!6, !7, i64 36}
!23 = !{!6, !7, i64 32}
!24 = !{!25, !7, i64 0}
!25 = !{!"fdt_property", !7, i64 0, !7, i64 4, !7, i64 8, !8, i64 12}
!26 = !{!25, !7, i64 8}
!27 = !{!25, !7, i64 4}
!28 = !{!29, !29, i64 0}
!29 = !{!"any pointer", !8, i64 0}
