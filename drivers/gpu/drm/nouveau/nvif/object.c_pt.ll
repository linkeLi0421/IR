; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvif/object.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvif/object.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.4 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_unmap }
%struct.nvif_ioctl_v0 = type { i8, i8, [4 x i8], i8, i8, i64, i64, [0 x i8] }
%struct.nvif_ioctl_unmap = type {}
%struct.anon.6 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_del }
%struct.nvif_ioctl_del = type {}
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.anon.0 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_sclass_v0 }
%struct.nvif_ioctl_sclass_v0 = type { i8, i8, [6 x i8], [0 x %struct.nvif_ioctl_sclass_oclass_v0] }
%struct.nvif_ioctl_sclass_oclass_v0 = type { i32, i16, i16 }
%struct.nvif_sclass = type { i32, i32, i32 }
%struct.anon.1 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_rd_v0 }
%struct.nvif_ioctl_rd_v0 = type { i8, i8, [2 x i8], i32, i64 }
%struct.anon.2 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_wr_v0 }
%struct.nvif_ioctl_wr_v0 = type { i8, i8, [2 x i8], i32, i64 }
%struct.anon.3 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_mthd_v0 }
%struct.nvif_ioctl_mthd_v0 = type { i8, i8, [6 x i8], [0 x i8] }
%struct.anon.5 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_map_v0 }
%struct.nvif_ioctl_map_v0 = type { i8, i8, [6 x i8], i64, i64, [0 x i8] }
%struct.anon.7 = type { %struct.nvif_ioctl_v0, %struct.nvif_ioctl_new_v0 }
%struct.nvif_ioctl_new_v0 = type { i8, [6 x i8], i8, i64, i64, i32, i32, [0 x i8] }

@__const.nvif_object_unmap_handle.args = private unnamed_addr constant %struct.anon.4 { %struct.nvif_ioctl_v0 { i8 0, i8 8, [4 x i8] zeroinitializer, i8 0, i8 0, i64 0, i64 0, [0 x i8] zeroinitializer }, %struct.nvif_ioctl_unmap zeroinitializer }, align 8
@__const.nvif_object_dtor.args = private unnamed_addr constant %struct.anon.6 { %struct.nvif_ioctl_v0 { i8 0, i8 3, [4 x i8] zeroinitializer, i8 0, i8 0, i64 0, i64 0, [0 x i8] zeroinitializer }, %struct.nvif_ioctl_del zeroinitializer }, align 8
@.str = private unnamed_addr constant [11 x i8] c"nvifObject\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_object_ioctl(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nvif_object, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt i32 %2, 23
  br i1 %7, label %8, label %25

8:                                                ; preds = %4
  %9 = load i8, ptr %1, align 8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = icmp eq ptr %6, %0
  %13 = ptrtoint ptr %0 to i32
  %14 = zext i32 %13 to i64
  %15 = select i1 %12, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %1, i32 0, i32 6
  store i64 %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %1, i32 0, i32 3
  store i8 -1, ptr %17, align 2
  %18 = getelementptr inbounds %struct.nvif_client, ptr %6, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nvif_driver, ptr %19, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nvif_object, ptr %6, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %21(ptr noundef %23, ptr noundef %1, i32 noundef %2, ptr noundef %3) #6
  br label %25

25:                                               ; preds = %11, %8, %4
  %26 = phi i32 [ %24, %11 ], [ -38, %8 ], [ -38, %4 ]
  ret i32 %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvif_object_sclass_put(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %2) #6
  store ptr null, ptr %0, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_object_sclass_get(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvif_object, ptr %0, i32 0, i32 1
  %4 = ptrtoint ptr %0 to i32
  %5 = zext i32 %4 to i64
  br label %6

6:                                                ; preds = %34, %2
  %7 = phi i32 [ 0, %2 ], [ %32, %34 ]
  %8 = shl nuw nsw i32 %7, 3
  %9 = add nuw nsw i32 %8, 32
  %10 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %9, i32 noundef 3264) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %83, label %12

12:                                               ; preds = %6
  store i8 0, ptr %10, align 64
  %13 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %10, i32 0, i32 1
  store i8 1, ptr %13, align 1
  %14 = getelementptr inbounds %struct.anon.0, ptr %10, i32 0, i32 1
  store i8 0, ptr %14, align 8
  %15 = trunc i32 %7 to i8
  %16 = getelementptr inbounds %struct.anon.0, ptr %10, i32 0, i32 1, i32 1
  store i8 %15, ptr %16, align 1
  %17 = load ptr, ptr %3, align 4
  %18 = icmp eq ptr %17, %0
  %19 = select i1 %18, i64 0, i64 %5
  %20 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %10, i32 0, i32 6
  store i64 %19, ptr %20, align 16
  %21 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %10, i32 0, i32 3
  store i8 -1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.nvif_client, ptr %17, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.nvif_driver, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nvif_object, ptr %17, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %25(ptr noundef %27, ptr noundef nonnull %10, i32 noundef %9, ptr noundef null) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %81

30:                                               ; preds = %12
  %31 = load i8, ptr %16, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp ult i32 %7, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void @kfree(ptr noundef nonnull %10) #6
  br label %6

35:                                               ; preds = %30
  %36 = zext i8 %31 to i32
  %37 = mul nuw nsw i32 %36, 12
  %38 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %37, i32 noundef 3520) #7
  store ptr %38, ptr %1, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %81, label %40

40:                                               ; preds = %35
  %41 = load i8, ptr %16, align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %81, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.anon.0, ptr %10, i32 1
  %45 = load i32, ptr %44, align 32
  store i32 %45, ptr %38, align 64
  %46 = getelementptr inbounds %struct.anon.0, ptr %10, i32 1, i32 0, i32 2, i32 2
  %47 = load i16, ptr %46, align 4
  %48 = sext i16 %47 to i32
  %49 = load ptr, ptr %1, align 4
  %50 = getelementptr %struct.nvif_sclass, ptr %49, i32 0, i32 1
  store i32 %48, ptr %50, align 4
  %51 = getelementptr inbounds %struct.anon.0, ptr %10, i32 1, i32 0, i32 3
  %52 = load i16, ptr %51, align 2
  %53 = sext i16 %52 to i32
  %54 = load ptr, ptr %1, align 4
  %55 = getelementptr %struct.nvif_sclass, ptr %54, i32 0, i32 2
  store i32 %53, ptr %55, align 4
  %56 = load i8, ptr %16, align 1
  %57 = icmp ugt i8 %56, 1
  br i1 %57, label %58, label %78

58:                                               ; preds = %58, %43
  %59 = phi i32 [ %74, %58 ], [ 1, %43 ]
  %60 = load ptr, ptr %1, align 4
  %61 = getelementptr [0 x %struct.nvif_ioctl_sclass_oclass_v0], ptr %44, i32 0, i32 %59
  %62 = load i32, ptr %61, align 8
  %63 = getelementptr %struct.nvif_sclass, ptr %60, i32 %59
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.nvif_ioctl_sclass_oclass_v0, ptr %61, i32 0, i32 1
  %65 = load i16, ptr %64, align 4
  %66 = sext i16 %65 to i32
  %67 = load ptr, ptr %1, align 4
  %68 = getelementptr %struct.nvif_sclass, ptr %67, i32 %59, i32 1
  store i32 %66, ptr %68, align 4
  %69 = getelementptr inbounds %struct.nvif_ioctl_sclass_oclass_v0, ptr %61, i32 0, i32 2
  %70 = load i16, ptr %69, align 2
  %71 = sext i16 %70 to i32
  %72 = load ptr, ptr %1, align 4
  %73 = getelementptr %struct.nvif_sclass, ptr %72, i32 %59, i32 2
  store i32 %71, ptr %73, align 4
  %74 = add nuw nsw i32 %59, 1
  %75 = load i8, ptr %16, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp ult i32 %74, %76
  br i1 %77, label %58, label %78

78:                                               ; preds = %58, %43
  %79 = phi i8 [ %56, %43 ], [ %75, %58 ]
  %80 = zext i8 %79 to i32
  br label %81

81:                                               ; preds = %78, %40, %35, %12
  %82 = phi i32 [ %80, %78 ], [ 0, %40 ], [ -12, %35 ], [ %28, %12 ]
  tail call void @kfree(ptr noundef nonnull %10) #6
  br label %83

83:                                               ; preds = %81, %6
  %84 = phi i32 [ %82, %81 ], [ -12, %6 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_object_rd(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.anon.1, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  store i8 5, ptr %5, align 1
  %6 = getelementptr inbounds %struct.anon.1, ptr %4, i32 0, i32 1, i32 1
  %7 = trunc i32 %1 to i8
  store i8 %7, ptr %6, align 1
  %8 = getelementptr inbounds %struct.anon.1, ptr %4, i32 0, i32 1, i32 4
  store i64 %2, ptr %8, align 8
  %9 = getelementptr inbounds %struct.nvif_object, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  %12 = ptrtoint ptr %0 to i32
  %13 = zext i32 %12 to i64
  %14 = select i1 %11, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %4, i32 0, i32 6
  store i64 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %4, i32 0, i32 3
  store i8 -1, ptr %16, align 2
  %17 = getelementptr inbounds %struct.nvif_client, ptr %10, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.nvif_driver, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvif_object, ptr %10, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 %20(ptr noundef %22, ptr noundef nonnull %4, i32 noundef 40, ptr noundef null) #6
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.anon.1, ptr %4, i32 0, i32 1, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = select i1 %24, i32 %26, i32 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #6
  ret i32 %27
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvif_object_wr(ptr noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.anon.2, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #6
  %6 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i8 6, ptr %6, align 1
  %7 = getelementptr inbounds %struct.anon.2, ptr %5, i32 0, i32 1
  store i8 0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.anon.2, ptr %5, i32 0, i32 1, i32 1
  %9 = trunc i32 %1 to i8
  store i8 %9, ptr %8, align 1
  %10 = getelementptr inbounds %struct.anon.2, ptr %5, i32 0, i32 1, i32 2
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.anon.2, ptr %5, i32 0, i32 1, i32 3
  store i32 %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.anon.2, ptr %5, i32 0, i32 1, i32 4
  store i64 %2, ptr %12, align 8
  %13 = getelementptr inbounds %struct.nvif_object, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %0
  %16 = ptrtoint ptr %0 to i32
  %17 = zext i32 %16 to i64
  %18 = select i1 %15, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %5, i32 0, i32 6
  store i64 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %5, i32 0, i32 3
  store i8 -1, ptr %20, align 2
  %21 = getelementptr inbounds %struct.nvif_client, ptr %14, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvif_driver, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvif_object, ptr %14, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 %24(ptr noundef %26, ptr noundef nonnull %5, i32 noundef 40, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_object_mthd(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %5, i8 0, i32 128, i1 false), !annotation !8
  %6 = add i32 %3, 32
  %7 = icmp ugt i32 %6, 128
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %6, i32 noundef 3264) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %39, label %11

11:                                               ; preds = %8, %4
  %12 = phi ptr [ %9, %8 ], [ %5, %4 ]
  store i8 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %12, i32 0, i32 1
  store i8 4, ptr %13, align 1
  %14 = getelementptr inbounds %struct.anon.3, ptr %12, i32 0, i32 1
  store i8 0, ptr %14, align 8
  %15 = trunc i32 %1 to i8
  %16 = getelementptr inbounds %struct.anon.3, ptr %12, i32 0, i32 1, i32 1
  store i8 %15, ptr %16, align 1
  %17 = getelementptr inbounds %struct.anon.3, ptr %12, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %17, ptr align 1 %2, i32 %3, i1 false)
  %18 = icmp ugt i32 %6, 23
  br i1 %18, label %19, label %35

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.nvif_object, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %0
  %23 = ptrtoint ptr %0 to i32
  %24 = zext i32 %23 to i64
  %25 = select i1 %22, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %12, i32 0, i32 6
  store i64 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %12, i32 0, i32 3
  store i8 -1, ptr %27, align 2
  %28 = getelementptr inbounds %struct.nvif_client, ptr %21, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.nvif_driver, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nvif_object, ptr %21, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = call i32 %31(ptr noundef %33, ptr noundef nonnull %12, i32 noundef %6, ptr noundef null) #6
  br label %35

35:                                               ; preds = %19, %11
  %36 = phi i32 [ %34, %19 ], [ -38, %11 ]
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 8 %17, i32 %3, i1 false)
  %37 = icmp eq ptr %12, %5
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  call void @kfree(ptr noundef nonnull %12) #6
  br label %39

39:                                               ; preds = %38, %35, %8
  %40 = phi i32 [ -12, %8 ], [ %36, %38 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #6
  ret i32 %40
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvif_object_unmap_handle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.anon.4, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.nvif_object_unmap_handle.args, i32 16, i1 false)
  %3 = getelementptr inbounds %struct.nvif_object, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %0
  %6 = ptrtoint ptr %0 to i32
  %7 = zext i32 %6 to i64
  %8 = select i1 %5, i64 0, i64 %7
  %9 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %2, i32 0, i32 6
  store i64 %8, ptr %9, align 8
  %10 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %2, i32 0, i32 3
  store i8 -1, ptr %10, align 2
  %11 = getelementptr inbounds %struct.nvif_client, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nvif_driver, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvif_object, ptr %4, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 %14(ptr noundef %16, ptr noundef nonnull %2, i32 noundef 24, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_object_map_handle(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = add i32 %2, 48
  %7 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %44, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %7, i32 0, i32 1
  store i8 7, ptr %10, align 1
  %11 = getelementptr inbounds %struct.anon.5, ptr %7, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 16 %11, ptr align 1 %1, i32 %2, i1 false)
  %12 = getelementptr inbounds %struct.nvif_object, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp ugt i32 %6, 23
  br i1 %14, label %15, label %32

15:                                               ; preds = %9
  %16 = load i8, ptr %7, align 64
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = icmp eq ptr %13, %0
  %20 = ptrtoint ptr %0 to i32
  %21 = zext i32 %20 to i64
  %22 = select i1 %19, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %7, i32 0, i32 6
  store i64 %22, ptr %23, align 16
  %24 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %7, i32 0, i32 3
  store i8 -1, ptr %24, align 2
  %25 = getelementptr inbounds %struct.nvif_client, ptr %13, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nvif_driver, ptr %26, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nvif_object, ptr %13, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %28(ptr noundef %30, ptr noundef nonnull %7, i32 noundef %6, ptr noundef null) #6
  br label %32

32:                                               ; preds = %18, %15, %9
  %33 = phi i32 [ %31, %18 ], [ -38, %15 ], [ -38, %9 ]
  %34 = getelementptr inbounds %struct.anon.5, ptr %7, i32 0, i32 1, i32 3
  %35 = load i64, ptr %34, align 32
  store i64 %35, ptr %3, align 8
  %36 = getelementptr inbounds %struct.anon.5, ptr %7, i32 0, i32 1, i32 4
  %37 = load i64, ptr %36, align 8
  store i64 %37, ptr %4, align 8
  %38 = getelementptr inbounds %struct.anon.5, ptr %7, i32 0, i32 1, i32 1
  %39 = load i8, ptr %38, align 1
  tail call void @kfree(ptr noundef nonnull %7) #6
  %40 = icmp eq i32 %33, 0
  %41 = icmp eq i8 %39, 0
  %42 = zext i1 %41 to i32
  %43 = select i1 %40, i32 %42, i32 %33
  br label %44

44:                                               ; preds = %32, %5
  %45 = phi i32 [ -12, %5 ], [ %43, %32 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvif_object_unmap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.anon.4, align 8
  %3 = getelementptr inbounds %struct.nvif_object, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvif_object, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nvif_object, ptr %0, i32 0, i32 6, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nvif_client, ptr %4, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvif_driver, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = trunc i64 %10 to i32
  tail call void %16(ptr noundef %4, ptr noundef nonnull %6, i32 noundef %17) #6
  store i64 0, ptr %9, align 8
  %18 = load ptr, ptr %3, align 4
  br label %19

19:                                               ; preds = %12, %8
  %20 = phi ptr [ %18, %12 ], [ %4, %8 ]
  store ptr null, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.nvif_object_unmap_handle.args, i32 16, i1 false) #6
  %21 = icmp eq ptr %20, %0
  %22 = ptrtoint ptr %0 to i32
  %23 = zext i32 %22 to i64
  %24 = select i1 %21, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %2, i32 0, i32 6
  store i64 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %2, i32 0, i32 3
  store i8 -1, ptr %26, align 2
  %27 = getelementptr inbounds %struct.nvif_client, ptr %20, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nvif_driver, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nvif_object, ptr %20, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 %30(ptr noundef %32, ptr noundef nonnull %2, i32 noundef 24, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  br label %34

34:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_object_map(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.anon.4, align 8
  %5 = getelementptr inbounds %struct.nvif_object, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = add i32 %2, 48
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %75, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %8, i32 0, i32 1
  store i8 7, ptr %11, align 1
  %12 = getelementptr inbounds %struct.anon.5, ptr %8, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 16 %12, ptr align 1 %1, i32 %2, i1 false) #6
  %13 = load ptr, ptr %5, align 4
  %14 = icmp ugt i32 %7, 23
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = load i8, ptr %8, align 64
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = icmp eq ptr %13, %0
  %20 = ptrtoint ptr %0 to i32
  %21 = zext i32 %20 to i64
  %22 = select i1 %19, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %8, i32 0, i32 6
  store i64 %22, ptr %23, align 16
  %24 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %8, i32 0, i32 3
  store i8 -1, ptr %24, align 2
  %25 = getelementptr inbounds %struct.nvif_client, ptr %13, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nvif_driver, ptr %26, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nvif_object, ptr %13, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %28(ptr noundef %30, ptr noundef nonnull %8, i32 noundef %7, ptr noundef null) #6
  br label %32

32:                                               ; preds = %18, %15, %10
  %33 = phi i32 [ %31, %18 ], [ -38, %15 ], [ -38, %10 ]
  %34 = getelementptr inbounds %struct.anon.5, ptr %8, i32 0, i32 1, i32 3
  %35 = load i64, ptr %34, align 32
  %36 = getelementptr inbounds %struct.anon.5, ptr %8, i32 0, i32 1, i32 4
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds %struct.anon.5, ptr %8, i32 0, i32 1, i32 1
  %39 = load i8, ptr %38, align 1
  tail call void @kfree(ptr noundef nonnull %8) #6
  %40 = icmp eq i32 %33, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %32
  %42 = icmp sgt i32 %33, -1
  br i1 %42, label %45, label %75

43:                                               ; preds = %32
  %44 = icmp eq i8 %39, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %43, %41
  %46 = getelementptr inbounds %struct.nvif_client, ptr %6, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.nvif_driver, ptr %47, i32 0, i32 6
  %49 = load ptr, ptr %48, align 4
  %50 = trunc i64 %37 to i32
  %51 = tail call ptr %49(ptr noundef %6, i64 noundef %35, i32 noundef %50) #6
  %52 = getelementptr inbounds %struct.nvif_object, ptr %0, i32 0, i32 6
  store ptr %51, ptr %52, align 8
  %53 = icmp eq ptr %51, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.nvif_object, ptr %0, i32 0, i32 6, i32 1
  store i64 %37, ptr %55, align 8
  br label %75

56:                                               ; preds = %43
  %57 = trunc i64 %35 to i32
  %58 = inttoptr i32 %57 to ptr
  %59 = getelementptr inbounds %struct.nvif_object, ptr %0, i32 0, i32 6
  store ptr %58, ptr %59, align 8
  br label %75

60:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.nvif_object_unmap_handle.args, i32 16, i1 false) #6
  %61 = load ptr, ptr %5, align 4
  %62 = icmp eq ptr %61, %0
  %63 = ptrtoint ptr %0 to i32
  %64 = zext i32 %63 to i64
  %65 = select i1 %62, i64 0, i64 %64
  %66 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %4, i32 0, i32 6
  store i64 %65, ptr %66, align 8
  %67 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %4, i32 0, i32 3
  store i8 -1, ptr %67, align 2
  %68 = getelementptr inbounds %struct.nvif_client, ptr %61, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.nvif_driver, ptr %69, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.nvif_object, ptr %61, i32 0, i32 5
  %73 = load ptr, ptr %72, align 4
  %74 = call i32 %71(ptr noundef %73, ptr noundef nonnull %4, i32 noundef 24, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  br label %75

75:                                               ; preds = %60, %56, %54, %41, %3
  %76 = phi i32 [ 0, %54 ], [ 0, %56 ], [ -12, %60 ], [ %33, %41 ], [ -12, %3 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvif_object_dtor(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.anon.4, align 8
  %3 = alloca %struct.anon.6, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.nvif_object_dtor.args, i32 16, i1 false)
  %4 = getelementptr inbounds %struct.nvif_object, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %52, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nvif_object, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.nvif_object, ptr %0, i32 0, i32 6, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.nvif_client, ptr %5, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nvif_driver, ptr %17, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = trunc i64 %13 to i32
  tail call void %19(ptr noundef nonnull %5, ptr noundef nonnull %9, i32 noundef %20) #6
  store i64 0, ptr %12, align 8
  %21 = load ptr, ptr %4, align 4
  br label %22

22:                                               ; preds = %15, %11
  %23 = phi ptr [ %21, %15 ], [ %5, %11 ]
  store ptr null, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.nvif_object_unmap_handle.args, i32 16, i1 false) #6
  %24 = icmp eq ptr %23, %0
  %25 = ptrtoint ptr %0 to i32
  %26 = zext i32 %25 to i64
  %27 = select i1 %24, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %2, i32 0, i32 6
  store i64 %27, ptr %28, align 8
  %29 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %2, i32 0, i32 3
  store i8 -1, ptr %29, align 2
  %30 = getelementptr inbounds %struct.nvif_client, ptr %23, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.nvif_driver, ptr %31, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nvif_object, ptr %23, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 %33(ptr noundef %35, ptr noundef nonnull %2, i32 noundef 24, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  br label %37

37:                                               ; preds = %22, %7
  %38 = load ptr, ptr %4, align 4
  %39 = icmp eq ptr %38, %0
  %40 = ptrtoint ptr %0 to i32
  %41 = zext i32 %40 to i64
  %42 = select i1 %39, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %3, i32 0, i32 6
  store i64 %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %3, i32 0, i32 3
  store i8 -1, ptr %44, align 2
  %45 = getelementptr inbounds %struct.nvif_client, ptr %38, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.nvif_driver, ptr %46, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.nvif_object, ptr %38, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  %51 = call i32 %48(ptr noundef %50, ptr noundef nonnull %3, i32 noundef 24, ptr noundef null) #6
  store ptr null, ptr %4, align 4
  br label %52

52:                                               ; preds = %37, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvif_object_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.anon.4, align 8
  %9 = alloca %struct.anon.6, align 8
  %10 = alloca %struct.anon.4, align 8
  %11 = alloca %struct.anon.6, align 8
  %12 = getelementptr inbounds %struct.nvif_object, ptr %6, i32 0, i32 1
  store ptr null, ptr %12, align 4
  %13 = icmp eq ptr %1, null
  %14 = select i1 %13, ptr @.str, ptr %1
  %15 = getelementptr inbounds %struct.nvif_object, ptr %6, i32 0, i32 2
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.nvif_object, ptr %6, i32 0, i32 3
  store i32 %2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.nvif_object, ptr %6, i32 0, i32 4
  store i32 %3, ptr %17, align 8
  %18 = getelementptr inbounds %struct.nvif_object, ptr %6, i32 0, i32 6
  store ptr null, ptr %18, align 8
  %19 = getelementptr inbounds %struct.nvif_object, ptr %6, i32 0, i32 6, i32 1
  store i64 0, ptr %19, align 8
  %20 = icmp eq ptr %0, null
  br i1 %20, label %157, label %21

21:                                               ; preds = %7
  %22 = add i32 %5, 56
  %23 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %22, i32 noundef 3264) #7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %75

25:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) @__const.nvif_object_dtor.args, i32 16, i1 false) #6
  %26 = load ptr, ptr %12, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %74, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %18, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = ptrtoint ptr %6 to i32
  %33 = zext i32 %32 to i64
  br label %60

34:                                               ; preds = %28
  %35 = load i64, ptr %19, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.nvif_client, ptr %26, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.nvif_driver, ptr %39, i32 0, i32 7
  %41 = load ptr, ptr %40, align 4
  %42 = trunc i64 %35 to i32
  tail call void %41(ptr noundef nonnull %26, ptr noundef nonnull %29, i32 noundef %42) #6
  store i64 0, ptr %19, align 8
  %43 = load ptr, ptr %12, align 4
  br label %44

44:                                               ; preds = %37, %34
  %45 = phi ptr [ %43, %37 ], [ %26, %34 ]
  store ptr null, ptr %18, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) @__const.nvif_object_unmap_handle.args, i32 16, i1 false) #6
  %46 = icmp eq ptr %45, %6
  %47 = ptrtoint ptr %6 to i32
  %48 = zext i32 %47 to i64
  %49 = select i1 %46, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %10, i32 0, i32 6
  store i64 %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %10, i32 0, i32 3
  store i8 -1, ptr %51, align 2
  %52 = getelementptr inbounds %struct.nvif_client, ptr %45, i32 0, i32 1
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.nvif_driver, ptr %53, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nvif_object, ptr %45, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 %55(ptr noundef %57, ptr noundef nonnull %10, i32 noundef 24, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #6
  %59 = load ptr, ptr %12, align 4
  br label %60

60:                                               ; preds = %44, %31
  %61 = phi i64 [ %33, %31 ], [ %48, %44 ]
  %62 = phi ptr [ %26, %31 ], [ %59, %44 ]
  %63 = icmp eq ptr %62, %6
  %64 = select i1 %63, i64 0, i64 %61
  %65 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %11, i32 0, i32 6
  store i64 %64, ptr %65, align 8
  %66 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %11, i32 0, i32 3
  store i8 -1, ptr %66, align 2
  %67 = getelementptr inbounds %struct.nvif_client, ptr %62, i32 0, i32 1
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.nvif_driver, ptr %68, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.nvif_object, ptr %62, i32 0, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = call i32 %70(ptr noundef %72, ptr noundef nonnull %11, i32 noundef 24, ptr noundef null) #6
  store ptr null, ptr %12, align 4
  br label %74

74:                                               ; preds = %60, %25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #6
  br label %157

75:                                               ; preds = %21
  %76 = load ptr, ptr %0, align 8
  store ptr %76, ptr %6, align 8
  store i8 0, ptr %23, align 64
  %77 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %23, i32 0, i32 1
  store i8 2, ptr %77, align 1
  %78 = getelementptr inbounds %struct.anon.7, ptr %23, i32 0, i32 1
  store i8 0, ptr %78, align 8
  %79 = getelementptr inbounds %struct.nvif_object, ptr %0, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.nvif_client, ptr %80, i32 0, i32 3
  %82 = load i8, ptr %81, align 8
  %83 = getelementptr inbounds %struct.anon.7, ptr %23, i32 0, i32 1, i32 2
  store i8 %82, ptr %83, align 1
  %84 = ptrtoint ptr %6 to i32
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.anon.7, ptr %23, i32 0, i32 1, i32 3
  store i64 %85, ptr %86, align 32
  %87 = getelementptr inbounds %struct.anon.7, ptr %23, i32 0, i32 1, i32 4
  store i64 %85, ptr %87, align 8
  %88 = getelementptr inbounds %struct.anon.7, ptr %23, i32 0, i32 1, i32 5
  store i32 %2, ptr %88, align 16
  %89 = getelementptr inbounds %struct.anon.7, ptr %23, i32 0, i32 1, i32 6
  store i32 %3, ptr %89, align 4
  %90 = getelementptr inbounds %struct.anon.7, ptr %23, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %90, ptr align 1 %4, i32 %5, i1 false)
  %91 = icmp ugt i32 %22, 23
  br i1 %91, label %92, label %108

92:                                               ; preds = %75
  %93 = load ptr, ptr %79, align 4
  %94 = getelementptr inbounds %struct.nvif_object, ptr %6, i32 0, i32 5
  %95 = icmp eq ptr %93, %0
  %96 = ptrtoint ptr %0 to i32
  %97 = zext i32 %96 to i64
  %98 = select i1 %95, i64 0, i64 %97
  %99 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %23, i32 0, i32 6
  store i64 %98, ptr %99, align 16
  %100 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %23, i32 0, i32 3
  store i8 -1, ptr %100, align 2
  %101 = getelementptr inbounds %struct.nvif_client, ptr %93, i32 0, i32 1
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.nvif_driver, ptr %102, i32 0, i32 5
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.nvif_object, ptr %93, i32 0, i32 5
  %106 = load ptr, ptr %105, align 4
  %107 = tail call i32 %104(ptr noundef %106, ptr noundef nonnull %23, i32 noundef %22, ptr noundef %94) #6
  br label %108

108:                                              ; preds = %92, %75
  %109 = phi i32 [ %107, %92 ], [ -38, %75 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %4, ptr align 8 %90, i32 %5, i1 false)
  tail call void @kfree(ptr noundef nonnull %23) #6
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load ptr, ptr %79, align 4
  store ptr %112, ptr %12, align 4
  br label %157

113:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) @__const.nvif_object_dtor.args, i32 16, i1 false) #6
  %114 = load ptr, ptr %12, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %156, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr %18, align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %143, label %119

119:                                              ; preds = %116
  %120 = load i64, ptr %19, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.nvif_client, ptr %114, i32 0, i32 1
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr inbounds %struct.nvif_driver, ptr %124, i32 0, i32 7
  %126 = load ptr, ptr %125, align 4
  %127 = trunc i64 %120 to i32
  tail call void %126(ptr noundef nonnull %114, ptr noundef nonnull %117, i32 noundef %127) #6
  store i64 0, ptr %19, align 8
  %128 = load ptr, ptr %12, align 4
  br label %129

129:                                              ; preds = %122, %119
  %130 = phi ptr [ %128, %122 ], [ %114, %119 ]
  store ptr null, ptr %18, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) @__const.nvif_object_unmap_handle.args, i32 16, i1 false) #6
  %131 = icmp eq ptr %130, %6
  %132 = select i1 %131, i64 0, i64 %85
  %133 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %8, i32 0, i32 6
  store i64 %132, ptr %133, align 8
  %134 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %8, i32 0, i32 3
  store i8 -1, ptr %134, align 2
  %135 = getelementptr inbounds %struct.nvif_client, ptr %130, i32 0, i32 1
  %136 = load ptr, ptr %135, align 8
  %137 = getelementptr inbounds %struct.nvif_driver, ptr %136, i32 0, i32 5
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.nvif_object, ptr %130, i32 0, i32 5
  %140 = load ptr, ptr %139, align 4
  %141 = call i32 %138(ptr noundef %140, ptr noundef nonnull %8, i32 noundef 24, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #6
  %142 = load ptr, ptr %12, align 4
  br label %143

143:                                              ; preds = %129, %116
  %144 = phi ptr [ %142, %129 ], [ %114, %116 ]
  %145 = icmp eq ptr %144, %6
  %146 = select i1 %145, i64 0, i64 %85
  %147 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %9, i32 0, i32 6
  store i64 %146, ptr %147, align 8
  %148 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %9, i32 0, i32 3
  store i8 -1, ptr %148, align 2
  %149 = getelementptr inbounds %struct.nvif_client, ptr %144, i32 0, i32 1
  %150 = load ptr, ptr %149, align 8
  %151 = getelementptr inbounds %struct.nvif_driver, ptr %150, i32 0, i32 5
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.nvif_object, ptr %144, i32 0, i32 5
  %154 = load ptr, ptr %153, align 4
  %155 = call i32 %152(ptr noundef %154, ptr noundef nonnull %9, i32 noundef 24, ptr noundef null) #6
  store ptr null, ptr %12, align 4
  br label %156

156:                                              ; preds = %143, %113
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #6
  br label %157

157:                                              ; preds = %156, %111, %74, %7
  %158 = phi i32 [ -12, %74 ], [ %109, %156 ], [ 0, %111 ], [ 0, %7 ]
  ret i32 %158
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
!8 = !{!"auto-init"}
