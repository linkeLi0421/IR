; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/mxms.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/mxms.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_mxm = type { %struct.nvkm_subdev, i32, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mxms_odev = type { i8, i8, i8, i8 }

@.str = private unnamed_addr constant [27 x i8] c"%s: unknown version %d.%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: checksum invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: signature invalid\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%s: unknown descriptor type %d\0A\00", align 1
@mxms_foreach.mxms_desc = internal unnamed_addr constant [8 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"ODS\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"SCCS\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"TS\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"IPS\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"GSD\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"VSS\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"BCS\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"FCS\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"%s: %4s: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"%s:       %s\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @mxms_version(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_mxm, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 4
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 8
  %8 = getelementptr i8, ptr %3, i32 5
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = or i32 %7, %10
  %12 = trunc i32 %11 to i16
  switch i16 %12, label %13 [
    i16 512, label %23
    i16 513, label %23
    i16 768, label %23
  ]

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 3
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef %22, i32 noundef %6, i32 noundef %10) #7
  br label %23

23:                                               ; preds = %17, %13, %1, %1, %1
  %24 = phi i16 [ 0, %17 ], [ 0, %13 ], [ %12, %1 ], [ %12, %1 ], [ %12, %1 ]
  ret i16 %24
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @mxms_headerlen(ptr nocapture readnone %0) local_unnamed_addr #3 {
  ret i16 8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @mxms_structlen(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.nvkm_mxm, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 6
  %5 = load i16, ptr %4, align 2
  ret i16 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @mxms_checksum(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_mxm, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 6
  %5 = load i16, ptr %4, align 2
  %6 = add i16 %5, 8
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %8, %1
  %9 = phi i8 [ %15, %8 ], [ 0, %1 ]
  %10 = phi ptr [ %13, %8 ], [ %3, %1 ]
  %11 = phi i16 [ %12, %8 ], [ %6, %1 ]
  %12 = add i16 %11, -1
  %13 = getelementptr i8, ptr %10, i32 1
  %14 = load i8, ptr %10, align 1
  %15 = add i8 %14, %9
  %16 = icmp eq i16 %12, 0
  br i1 %16, label %17, label %8

17:                                               ; preds = %8
  %18 = icmp eq i8 %15, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, 3
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.1, ptr noundef %28) #7
  br label %29

29:                                               ; preds = %23, %19, %17, %1
  %30 = phi i1 [ true, %17 ], [ false, %19 ], [ false, %23 ], [ true, %1 ]
  ret i1 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @mxms_valid(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_mxm, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1598904397
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 3
  br i1 %9, label %10, label %64

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef %15) #7
  br label %64

16:                                               ; preds = %1
  %17 = getelementptr i8, ptr %3, i32 4
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = getelementptr i8, ptr %3, i32 5
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %20, %23
  %25 = trunc i32 %24 to i16
  switch i16 %25, label %26 [
    i16 512, label %36
    i16 513, label %36
    i16 768, label %36
  ]

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, 3
  br i1 %29, label %30, label %64

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str, ptr noundef %35, i32 noundef %19, i32 noundef %23) #7
  br label %64

36:                                               ; preds = %16, %16, %16
  %37 = getelementptr i8, ptr %3, i32 6
  %38 = load i16, ptr %37, align 2
  %39 = icmp eq i16 %38, -8
  br i1 %39, label %64, label %40

40:                                               ; preds = %36
  %41 = add i16 %38, 7
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %43, %40
  %44 = phi i16 [ %50, %43 ], [ %41, %40 ]
  %45 = phi i8 [ %49, %43 ], [ 77, %40 ]
  %46 = phi ptr [ %47, %43 ], [ %3, %40 ]
  %47 = getelementptr i8, ptr %46, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = add i8 %48, %45
  %50 = add i16 %44, -1
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %43

52:                                               ; preds = %43
  %53 = icmp eq i8 %49, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %52, %40
  %55 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = icmp ugt i32 %56, 3
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nvkm_device, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %62, ptr noundef nonnull @.str.1, ptr noundef %63) #7
  br label %64

64:                                               ; preds = %58, %54, %52, %36, %30, %26, %10, %6
  %65 = phi i1 [ false, %10 ], [ false, %6 ], [ true, %52 ], [ false, %54 ], [ false, %58 ], [ true, %36 ], [ false, %30 ], [ false, %26 ]
  ret i1 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @mxms_foreach(ptr noundef %0, i8 noundef zeroext %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [32 x i8], align 1
  %6 = getelementptr inbounds %struct.nvkm_mxm, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = getelementptr i8, ptr %7, i32 6
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = getelementptr i8, ptr %12, i32 -1
  %14 = icmp ult ptr %8, %13
  br i1 %14, label %15, label %200

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %17 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %18 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  %19 = icmp eq ptr %2, null
  %20 = zext i8 %1 to i32
  br label %21

21:                                               ; preds = %194, %15
  %22 = phi ptr [ %8, %15 ], [ %198, %194 ]
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, 15
  %25 = zext i8 %24 to i32
  switch i32 %25, label %81 [
    i32 0, label %26
    i32 1, label %88
    i32 2, label %88
    i32 3, label %88
    i32 4, label %47
    i32 5, label %52
    i32 6, label %53
    i32 7, label %77
  ]

26:                                               ; preds = %21
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr i8, ptr %27, i32 4
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 8
  %32 = getelementptr i8, ptr %27, i32 5
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %31, %34
  %36 = trunc i32 %35 to i16
  switch i16 %36, label %37 [
    i16 512, label %44
    i16 513, label %44
    i16 768, label %44
  ]

37:                                               ; preds = %26
  %38 = load i32, ptr %16, align 4
  %39 = icmp ugt i32 %38, 3
  br i1 %39, label %40, label %88

40:                                               ; preds = %37
  %41 = load ptr, ptr %17, align 4
  %42 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str, ptr noundef %18, i32 noundef %30, i32 noundef %34) #7
  br label %88

44:                                               ; preds = %26, %26, %26
  %45 = icmp ugt i16 %36, 767
  %46 = select i1 %45, i32 8, i32 6
  br label %88

47:                                               ; preds = %21
  %48 = load i32, ptr %22, align 1
  %49 = lshr i32 %48, 20
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 31
  br label %88

52:                                               ; preds = %21
  br label %88

53:                                               ; preds = %21
  %54 = load ptr, ptr %6, align 4
  %55 = getelementptr i8, ptr %54, i32 4
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 8
  %59 = getelementptr i8, ptr %54, i32 5
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %58, %61
  %63 = trunc i32 %62 to i16
  switch i16 %63, label %64 [
    i16 512, label %71
    i16 513, label %71
    i16 768, label %71
  ]

64:                                               ; preds = %53
  %65 = load i32, ptr %16, align 4
  %66 = icmp ugt i32 %65, 3
  br i1 %66, label %67, label %88

67:                                               ; preds = %64
  %68 = load ptr, ptr %17, align 4
  %69 = getelementptr inbounds %struct.nvkm_device, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %70, ptr noundef nonnull @.str, ptr noundef %18, i32 noundef %57, i32 noundef %61) #7
  br label %88

71:                                               ; preds = %53, %53, %53
  %72 = icmp ugt i16 %63, 767
  br i1 %72, label %73, label %88

73:                                               ; preds = %71
  %74 = getelementptr i8, ptr %22, i32 1
  %75 = load i8, ptr %74, align 1
  %76 = lshr i8 %75, 4
  br label %88

77:                                               ; preds = %21
  %78 = getelementptr i8, ptr %22, i32 1
  %79 = load i8, ptr %78, align 1
  %80 = and i8 %79, 7
  br label %88

81:                                               ; preds = %21
  %82 = load i32, ptr %16, align 4
  %83 = icmp ugt i32 %82, 3
  br i1 %83, label %84, label %200

84:                                               ; preds = %81
  %85 = load ptr, ptr %17, align 4
  %86 = getelementptr inbounds %struct.nvkm_device, ptr %85, i32 0, i32 2
  %87 = load ptr, ptr %86, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %87, ptr noundef nonnull @.str.3, ptr noundef %18, i32 noundef %25) #7
  br label %200

88:                                               ; preds = %77, %73, %71, %67, %64, %52, %47, %44, %40, %37, %21, %21, %21
  %89 = phi i32 [ 8, %77 ], [ 4, %73 ], [ 8, %52 ], [ 4, %47 ], [ 4, %21 ], [ 4, %21 ], [ 4, %21 ], [ 8, %71 ], [ 6, %40 ], [ 6, %37 ], [ 8, %67 ], [ 8, %64 ], [ %46, %44 ]
  %90 = phi i1 [ true, %77 ], [ true, %73 ], [ false, %52 ], [ true, %47 ], [ false, %21 ], [ false, %21 ], [ false, %21 ], [ false, %71 ], [ false, %40 ], [ false, %37 ], [ false, %67 ], [ false, %64 ], [ false, %44 ]
  %91 = phi i1 [ true, %77 ], [ true, %73 ], [ false, %52 ], [ false, %47 ], [ false, %21 ], [ false, %21 ], [ false, %21 ], [ false, %71 ], [ false, %40 ], [ false, %37 ], [ false, %67 ], [ false, %64 ], [ false, %44 ]
  %92 = phi i1 [ false, %77 ], [ true, %73 ], [ false, %52 ], [ false, %47 ], [ false, %21 ], [ false, %21 ], [ false, %21 ], [ false, %71 ], [ false, %40 ], [ false, %37 ], [ false, %67 ], [ false, %64 ], [ false, %44 ]
  %93 = phi i32 [ 4, %77 ], [ 8, %73 ], [ 0, %52 ], [ 2, %47 ], [ 0, %21 ], [ 0, %21 ], [ 0, %21 ], [ 0, %71 ], [ 0, %40 ], [ 0, %37 ], [ 0, %67 ], [ 0, %64 ], [ 0, %44 ]
  %94 = phi i8 [ %80, %77 ], [ %76, %73 ], [ 0, %52 ], [ %51, %47 ], [ 0, %21 ], [ 0, %21 ], [ 0, %21 ], [ 0, %71 ], [ 0, %40 ], [ 0, %37 ], [ 0, %67 ], [ 0, %64 ], [ 0, %44 ]
  %95 = load i32, ptr %16, align 4
  %96 = icmp ugt i32 %95, 3
  %97 = and i1 %19, %96
  br i1 %97, label %98, label %188

98:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !8
  br label %99

99:                                               ; preds = %99, %98
  %100 = phi i32 [ %102, %99 ], [ %89, %98 ]
  %101 = phi ptr [ %107, %99 ], [ %5, %98 ]
  %102 = add nsw i32 %100, -1
  %103 = getelementptr i8, ptr %22, i32 %102
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  %106 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %101, ptr noundef nonnull @.str.12, i32 noundef %105)
  %107 = getelementptr i8, ptr %101, i32 %106
  %108 = icmp ugt i32 %100, 1
  br i1 %108, label %99, label %109

109:                                              ; preds = %99
  %110 = load i32, ptr %16, align 4
  %111 = getelementptr i8, ptr %22, i32 %89
  %112 = icmp ugt i32 %110, 3
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load ptr, ptr %17, align 4
  %115 = getelementptr inbounds %struct.nvkm_device, ptr %114, i32 0, i32 2
  %116 = load ptr, ptr %115, align 8
  %117 = getelementptr [8 x ptr], ptr @mxms_foreach.mxms_desc, i32 0, i32 %25
  %118 = load ptr, ptr %117, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %116, ptr noundef nonnull @.str.13, ptr noundef %18, ptr noundef %118, ptr noundef nonnull %5) #7
  br label %119

119:                                              ; preds = %113, %109
  %120 = zext i8 %94 to i32
  %121 = icmp eq i8 %94, 0
  br i1 %121, label %187, label %122

122:                                              ; preds = %119
  %123 = add nsw i32 %93, -1
  %124 = add nsw i32 %93, -2
  %125 = add nsw i32 %93, -3
  %126 = add nsw i32 %93, -4
  %127 = add nsw i32 %93, -5
  %128 = add nsw i32 %93, -6
  %129 = add nsw i32 %93, -7
  %130 = add nsw i32 %93, -8
  br label %131

131:                                              ; preds = %183, %122
  %132 = phi i32 [ %184, %183 ], [ 0, %122 ]
  %133 = phi ptr [ %185, %183 ], [ %111, %122 ]
  br i1 %90, label %134, label %176

134:                                              ; preds = %131
  %135 = getelementptr i8, ptr %133, i32 %123
  %136 = load i8, ptr %135, align 1
  %137 = zext i8 %136 to i32
  %138 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.12, i32 noundef %137)
  %139 = getelementptr i8, ptr %5, i32 %138
  %140 = getelementptr i8, ptr %133, i32 %124
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %139, ptr noundef nonnull @.str.12, i32 noundef %142)
  br i1 %91, label %144, label %176

144:                                              ; preds = %134
  %145 = getelementptr i8, ptr %139, i32 %143
  %146 = getelementptr i8, ptr %133, i32 %125
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i32
  %149 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %145, ptr noundef nonnull @.str.12, i32 noundef %148)
  %150 = getelementptr i8, ptr %145, i32 %149
  %151 = getelementptr i8, ptr %133, i32 %126
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i32
  %154 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %150, ptr noundef nonnull @.str.12, i32 noundef %153)
  br i1 %92, label %155, label %176

155:                                              ; preds = %144
  %156 = getelementptr i8, ptr %150, i32 %154
  %157 = getelementptr i8, ptr %133, i32 %127
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i32
  %160 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %156, ptr noundef nonnull @.str.12, i32 noundef %159)
  %161 = getelementptr i8, ptr %156, i32 %160
  %162 = getelementptr i8, ptr %133, i32 %128
  %163 = load i8, ptr %162, align 1
  %164 = zext i8 %163 to i32
  %165 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %161, ptr noundef nonnull @.str.12, i32 noundef %164)
  %166 = getelementptr i8, ptr %161, i32 %165
  %167 = getelementptr i8, ptr %133, i32 %129
  %168 = load i8, ptr %167, align 1
  %169 = zext i8 %168 to i32
  %170 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %166, ptr noundef nonnull @.str.12, i32 noundef %169)
  %171 = getelementptr i8, ptr %166, i32 %170
  %172 = getelementptr i8, ptr %133, i32 %130
  %173 = load i8, ptr %172, align 1
  %174 = zext i8 %173 to i32
  %175 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %171, ptr noundef nonnull @.str.12, i32 noundef %174)
  br label %176

176:                                              ; preds = %155, %144, %134, %131
  %177 = load i32, ptr %16, align 4
  %178 = icmp ugt i32 %177, 3
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load ptr, ptr %17, align 4
  %181 = getelementptr inbounds %struct.nvkm_device, ptr %180, i32 0, i32 2
  %182 = load ptr, ptr %181, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %182, ptr noundef nonnull @.str.14, ptr noundef %18, ptr noundef nonnull %5) #7
  br label %183

183:                                              ; preds = %179, %176
  %184 = add nuw nsw i32 %132, 1
  %185 = getelementptr i8, ptr %133, i32 %93
  %186 = icmp eq i32 %184, %120
  br i1 %186, label %187, label %131

187:                                              ; preds = %183, %119
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  br label %188

188:                                              ; preds = %187, %88
  %189 = shl nuw i32 1, %25
  %190 = and i32 %189, %20
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %188
  %193 = call zeroext i1 %2(ptr noundef %0, ptr noundef %22, ptr noundef %3) #8
  br i1 %193, label %194, label %200

194:                                              ; preds = %192, %188
  %195 = zext i8 %94 to i32
  %196 = mul nuw nsw i32 %93, %195
  %197 = add nuw nsw i32 %196, %89
  %198 = getelementptr i8, ptr %22, i32 %197
  %199 = icmp ult ptr %198, %13
  br i1 %199, label %21, label %200

200:                                              ; preds = %194, %192, %84, %81, %4
  %201 = phi i1 [ false, %81 ], [ false, %84 ], [ true, %4 ], [ true, %194 ], [ false, %192 ]
  ret i1 %201
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mxms_output_device(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 1
  %5 = getelementptr inbounds %struct.nvkm_mxm, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 4
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %11 = getelementptr i8, ptr %6, i32 5
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = or i32 %10, %13
  %15 = trunc i32 %14 to i16
  switch i16 %15, label %16 [
    i16 512, label %26
    i16 513, label %26
    i16 768, label %26
  ]

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %18, 3
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str, ptr noundef %25, i32 noundef %9, i32 noundef %13) #7
  br label %26

26:                                               ; preds = %20, %16, %3, %3, %3
  %27 = zext i32 %4 to i64
  %28 = lshr i64 %27, 8
  %29 = trunc i64 %28 to i8
  %30 = lshr i64 %27, 12
  %31 = trunc i64 %30 to i8
  %32 = lshr i64 %27, 19
  %33 = trunc i64 %32 to i8
  %34 = trunc i32 %4 to i8
  %35 = lshr i8 %34, 4
  store i8 %35, ptr %2, align 1
  %36 = and i8 %29, 15
  %37 = getelementptr inbounds %struct.mxms_odev, ptr %2, i32 0, i32 2
  store i8 %36, ptr %37, align 1
  %38 = and i8 %31, 31
  %39 = getelementptr inbounds %struct.mxms_odev, ptr %2, i32 0, i32 1
  store i8 %38, ptr %39, align 1
  %40 = and i8 %33, 15
  %41 = getelementptr inbounds %struct.mxms_odev, ptr %2, i32 0, i32 3
  store i8 %40, ptr %41, align 1
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind }
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
!8 = !{!"auto-init"}
