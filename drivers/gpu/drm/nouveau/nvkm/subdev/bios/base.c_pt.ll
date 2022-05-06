; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.120 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.120 = type { i8, i8, i8, i8, i8 }
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
%struct.nvbios_image = type { i32, i32, i8, i8 }
%struct.bit_entry = type { i8, i8, i16, i16 }

@nvkm_bios = internal constant %struct.nvkm_subdev_func { ptr @nvkm_bios_dtor, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: BMP version %x.%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: BIT signature found\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%s: version %02x.%02x.%02x.%02x.%02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"%s: OOB %d %08x %08x\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = sub i32 %1, %4
  %12 = add i32 %11, %8
  br label %13

13:                                               ; preds = %10, %6, %2
  %14 = phi i32 [ %1, %6 ], [ %12, %10 ], [ %1, %2 ]
  %15 = add i32 %14, 1
  %16 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %15, %17
  br i1 %18, label %19, label %29, !prof !8

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.5, ptr noundef %28, i32 noundef 1, i32 noundef %1, i32 noundef %14) #11
  br label %34

29:                                               ; preds = %13
  %30 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 %14
  %33 = load i8, ptr %32, align 1
  br label %34

34:                                               ; preds = %29, %23, %19
  %35 = phi i8 [ %33, %29 ], [ 0, %19 ], [ 0, %23 ]
  ret i8 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = sub i32 %1, %4
  %12 = add i32 %11, %8
  br label %13

13:                                               ; preds = %10, %6, %2
  %14 = phi i32 [ %1, %6 ], [ %12, %10 ], [ %1, %2 ]
  %15 = add i32 %14, 2
  %16 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %15, %17
  br i1 %18, label %19, label %29, !prof !8

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.5, ptr noundef %28, i32 noundef 2, i32 noundef %1, i32 noundef %14) #11
  br label %34

29:                                               ; preds = %13
  %30 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 %14
  %33 = load i16, ptr %32, align 1
  br label %34

34:                                               ; preds = %29, %23, %19
  %35 = phi i16 [ %33, %29 ], [ 0, %19 ], [ 0, %23 ]
  ret i16 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_rd32(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = sub i32 %1, %4
  %12 = add i32 %11, %8
  br label %13

13:                                               ; preds = %10, %6, %2
  %14 = phi i32 [ %1, %6 ], [ %12, %10 ], [ %1, %2 ]
  %15 = add i32 %14, 4
  %16 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %15, %17
  br i1 %18, label %19, label %29, !prof !8

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.5, ptr noundef %28, i32 noundef 4, i32 noundef %1, i32 noundef %14) #11
  br label %34

29:                                               ; preds = %13
  %30 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 %14
  %33 = load i32, ptr %32, align 1
  br label %34

34:                                               ; preds = %29, %23, %19
  %35 = phi i32 [ %33, %29 ], [ 0, %19 ], [ 0, %23 ]
  ret i32 %35
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i8 @nvbios_checksum(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %4, %2
  %5 = phi i8 [ %11, %4 ], [ 0, %2 ]
  %6 = phi i32 [ %8, %4 ], [ %1, %2 ]
  %7 = phi ptr [ %9, %4 ], [ %0, %2 ]
  %8 = add i32 %6, -1
  %9 = getelementptr i8, ptr %7, i32 1
  %10 = load i8, ptr %7, align 1
  %11 = add i8 %10, %5
  %12 = icmp eq i32 %8, 0
  br i1 %12, label %13, label %4

13:                                               ; preds = %4, %2
  %14 = phi i8 [ 0, %2 ], [ %11, %4 ]
  ret i8 %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_findstr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = sub i32 %1, %3
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %4
  %8 = icmp sgt i32 %3, 0
  br label %9

9:                                                ; preds = %27, %7
  %10 = phi i32 [ 0, %7 ], [ %28, %27 ]
  br i1 %8, label %11, label %22

11:                                               ; preds = %19, %9
  %12 = phi i32 [ %20, %19 ], [ 0, %9 ]
  %13 = add i32 %12, %10
  %14 = getelementptr i8, ptr %0, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr i8, ptr %2, i32 %12
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = add nuw nsw i32 %12, 1
  %21 = icmp eq i32 %20, %3
  br i1 %21, label %25, label %11

22:                                               ; preds = %11, %9
  %23 = phi i32 [ 0, %9 ], [ %12, %11 ]
  %24 = icmp eq i32 %23, %3
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %19
  %26 = trunc i32 %10 to i16
  br label %30

27:                                               ; preds = %22
  %28 = add i32 %10, 1
  %29 = icmp sgt i32 %28, %5
  br i1 %29, label %30, label %9

30:                                               ; preds = %27, %25, %4
  %31 = phi i16 [ %26, %25 ], [ 0, %4 ], [ 0, %27 ]
  ret i16 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_memcmp(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 2
  %9 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %10 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  br label %12

12:                                               ; preds = %45, %4
  %13 = phi i32 [ %1, %4 ], [ %19, %45 ]
  %14 = phi ptr [ %2, %4 ], [ %47, %45 ]
  %15 = phi i32 [ %3, %4 ], [ %18, %45 ]
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %54, label %17

17:                                               ; preds = %12
  %18 = add i32 %15, -1
  %19 = add i32 %13, 1
  %20 = load i32, ptr %5, align 4
  %21 = icmp ugt i32 %13, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i32, ptr %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = sub i32 %13, %20
  %27 = add i32 %26, %23
  %28 = add i32 %27, 1
  br label %29

29:                                               ; preds = %25, %22, %17
  %30 = phi i32 [ %28, %25 ], [ %19, %22 ], [ %19, %17 ]
  %31 = phi i32 [ %27, %25 ], [ %13, %22 ], [ %13, %17 ]
  %32 = load i32, ptr %7, align 4
  %33 = icmp ugt i32 %30, %32
  br i1 %33, label %34, label %41, !prof !8

34:                                               ; preds = %29
  %35 = load i32, ptr %9, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %10, align 4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.5, ptr noundef %11, i32 noundef 1, i32 noundef %13, i32 noundef %31) #11
  br label %45

41:                                               ; preds = %29
  %42 = load ptr, ptr %8, align 4
  %43 = getelementptr i8, ptr %42, i32 %31
  %44 = load i8, ptr %43, align 1
  br label %45

45:                                               ; preds = %41, %37, %34
  %46 = phi i8 [ %44, %41 ], [ 0, %34 ], [ 0, %37 ]
  %47 = getelementptr i8, ptr %14, i32 1
  %48 = load i8, ptr %14, align 1
  %49 = icmp eq i8 %46, %48
  br i1 %49, label %12, label %50

50:                                               ; preds = %45
  %51 = zext i8 %48 to i32
  %52 = zext i8 %46 to i32
  %53 = sub nsw i32 %52, %51
  br label %54

54:                                               ; preds = %50, %12
  %55 = phi i32 [ %53, %50 ], [ 0, %12 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_extend(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %1, i32 noundef 3264) #12
  store ptr %9, ptr %7, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store ptr %8, ptr %7, align 4
  br label %14

12:                                               ; preds = %6
  %13 = load i32, ptr %3, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %9, ptr align 1 %8, i32 %13, i1 false)
  store i32 %1, ptr %3, align 4
  tail call void @kfree(ptr noundef %8) #13
  br label %14

14:                                               ; preds = %12, %11, %2
  %15 = phi i32 [ 1, %12 ], [ -12, %11 ], [ 0, %2 ]
  ret i32 %15
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_bios_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.nvbios_image, align 4
  %6 = alloca %struct.bit_entry, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %6, i8 0, i32 6, i1 false), !annotation !9
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 84) #14
  store ptr %8, ptr %3, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %496, label %10

10:                                               ; preds = %4
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_bios, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %8) #13
  %11 = tail call i32 @nvbios_shadow(ptr noundef nonnull %8) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %496

13:                                               ; preds = %10
  %14 = call zeroext i1 @nvbios_image(ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull %5) #13
  br i1 %14, label %15, label %30

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.nvbios_image, ptr %5, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 3
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nvbios_image, ptr %5, i32 0, i32 2
  br label %20

20:                                               ; preds = %23, %15
  %21 = phi i32 [ 1, %15 ], [ %24, %23 ]
  %22 = call zeroext i1 @nvbios_image(ptr noundef nonnull %8, i32 noundef %21, ptr noundef nonnull %5) #13
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = add i32 %21, 1
  %25 = load i8, ptr %19, align 4
  %26 = icmp eq i8 %25, -32
  br i1 %26, label %27, label %20

27:                                               ; preds = %23
  %28 = load i32, ptr %5, align 4
  %29 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 4
  store i32 %28, ptr %29, align 8
  br label %30

30:                                               ; preds = %27, %20, %13
  %31 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, -5
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %62, %30
  %38 = phi i32 [ %63, %62 ], [ 0, %30 ]
  %39 = getelementptr i8, ptr %32, i32 %38
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, -1
  br i1 %41, label %42, label %62

42:                                               ; preds = %37
  %43 = add i32 %38, 1
  %44 = getelementptr i8, ptr %32, i32 %43
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 127
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = add i32 %38, 2
  %49 = getelementptr i8, ptr %32, i32 %48
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, 78
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = add i32 %38, 3
  %54 = getelementptr i8, ptr %32, i32 %53
  %55 = load i8, ptr %54, align 1
  %56 = icmp eq i8 %55, 86
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = add i32 %38, 4
  %59 = getelementptr i8, ptr %32, i32 %58
  %60 = load i8, ptr %59, align 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57, %52, %47, %42, %37
  %63 = add i32 %38, 1
  %64 = icmp sgt i32 %63, %35
  br i1 %64, label %65, label %37

65:                                               ; preds = %62, %30
  %66 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 5
  store i32 0, ptr %66, align 4
  br label %91

67:                                               ; preds = %57
  %68 = trunc i32 %38 to i16
  %69 = and i32 %38, 65535
  %70 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 5
  store i32 %69, ptr %70, align 4
  %71 = icmp eq i16 %68, 0
  br i1 %71, label %91, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 5
  %74 = load i32, ptr %73, align 8
  %75 = icmp ugt i32 %74, 3
  br i1 %75, label %76, label %91

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.nvkm_device, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 4
  %82 = call fastcc zeroext i16 @bmp_version(ptr noundef nonnull %8)
  %83 = lshr i16 %82, 8
  %84 = zext i16 %83 to i32
  %85 = call fastcc zeroext i16 @bmp_version(ptr noundef nonnull %8)
  %86 = and i16 %85, 255
  %87 = zext i16 %86 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.1, ptr noundef %81, i32 noundef %84, i32 noundef %87) #11
  %88 = load ptr, ptr %31, align 8
  %89 = load i32, ptr %33, align 4
  %90 = add i32 %89, -5
  br label %91

91:                                               ; preds = %76, %72, %67, %65
  %92 = phi i32 [ %35, %65 ], [ %35, %72 ], [ %90, %76 ], [ %35, %67 ]
  %93 = phi ptr [ %32, %65 ], [ %32, %72 ], [ %88, %76 ], [ %32, %67 ]
  %94 = phi ptr [ %66, %65 ], [ %70, %72 ], [ %70, %76 ], [ %70, %67 ]
  %95 = icmp slt i32 %92, 0
  br i1 %95, label %124, label %96

96:                                               ; preds = %121, %91
  %97 = phi i32 [ %122, %121 ], [ 0, %91 ]
  %98 = getelementptr i8, ptr %93, i32 %97
  %99 = load i8, ptr %98, align 1
  %100 = icmp eq i8 %99, -1
  br i1 %100, label %101, label %121

101:                                              ; preds = %96
  %102 = add i32 %97, 1
  %103 = getelementptr i8, ptr %93, i32 %102
  %104 = load i8, ptr %103, align 1
  %105 = icmp eq i8 %104, -72
  br i1 %105, label %106, label %121

106:                                              ; preds = %101
  %107 = add i32 %97, 2
  %108 = getelementptr i8, ptr %93, i32 %107
  %109 = load i8, ptr %108, align 1
  %110 = icmp eq i8 %109, 66
  br i1 %110, label %111, label %121

111:                                              ; preds = %106
  %112 = add i32 %97, 3
  %113 = getelementptr i8, ptr %93, i32 %112
  %114 = load i8, ptr %113, align 1
  %115 = icmp eq i8 %114, 73
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = add i32 %97, 4
  %118 = getelementptr i8, ptr %93, i32 %117
  %119 = load i8, ptr %118, align 1
  %120 = icmp eq i8 %119, 84
  br i1 %120, label %126, label %121

121:                                              ; preds = %116, %111, %106, %101, %96
  %122 = add i32 %97, 1
  %123 = icmp sgt i32 %122, %92
  br i1 %123, label %124, label %96

124:                                              ; preds = %121, %91
  %125 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 6
  store i32 0, ptr %125, align 8
  br label %141

126:                                              ; preds = %116
  %127 = trunc i32 %97 to i16
  %128 = and i32 %97, 65535
  %129 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 6
  store i32 %128, ptr %129, align 8
  %130 = icmp eq i16 %127, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 5
  %133 = load i32, ptr %132, align 8
  %134 = icmp ugt i32 %133, 3
  br i1 %134, label %135, label %141

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.nvkm_device, ptr %137, i32 0, i32 2
  %139 = load ptr, ptr %138, align 8
  %140 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %139, ptr noundef nonnull @.str.3, ptr noundef %140) #11
  br label %141

141:                                              ; preds = %135, %131, %126, %124
  %142 = call i32 @bit_entry(ptr noundef nonnull %8, i8 noundef zeroext 105, ptr noundef nonnull %6) #13
  %143 = icmp eq i32 %142, 0
  %144 = getelementptr inbounds %struct.bit_entry, ptr %6, i32 0, i32 2
  %145 = load i16, ptr %144, align 2
  %146 = icmp ugt i16 %145, 3
  %147 = select i1 %143, i1 %146, i1 false
  br i1 %147, label %148, label %328

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.bit_entry, ptr %6, i32 0, i32 3
  %150 = load i16, ptr %149, align 2
  %151 = zext i16 %150 to i32
  %152 = add nuw nsw i32 %151, 3
  %153 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 3
  %154 = load i32, ptr %153, align 4
  %155 = icmp ugt i32 %152, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %148
  %157 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 4
  %158 = load i32, ptr %157, align 8
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %156
  %161 = sub i32 %152, %154
  %162 = add i32 %161, %158
  br label %163

163:                                              ; preds = %160, %156, %148
  %164 = phi i32 [ %152, %156 ], [ %162, %160 ], [ %152, %148 ]
  %165 = add i32 %164, 1
  %166 = load i32, ptr %33, align 4
  %167 = icmp ugt i32 %165, %166
  br i1 %167, label %168, label %181, !prof !8

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 5
  %170 = load i32, ptr %169, align 8
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %185, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 1
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.nvkm_device, ptr %174, i32 0, i32 2
  %176 = load ptr, ptr %175, align 8
  %177 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %176, ptr noundef nonnull @.str.5, ptr noundef %177, i32 noundef 1, i32 noundef %152, i32 noundef %164) #11
  %178 = load i16, ptr %149, align 2
  %179 = load i32, ptr %153, align 4
  %180 = zext i16 %178 to i32
  br label %185

181:                                              ; preds = %163
  %182 = load ptr, ptr %31, align 8
  %183 = getelementptr i8, ptr %182, i32 %164
  %184 = load i8, ptr %183, align 1
  br label %185

185:                                              ; preds = %181, %172, %168
  %186 = phi i32 [ %151, %168 ], [ %180, %172 ], [ %151, %181 ]
  %187 = phi i32 [ %154, %168 ], [ %179, %172 ], [ %154, %181 ]
  %188 = phi i8 [ 0, %168 ], [ 0, %172 ], [ %184, %181 ]
  %189 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 7
  store i8 %188, ptr %189, align 4
  %190 = add nuw nsw i32 %186, 2
  %191 = icmp ugt i32 %190, %187
  br i1 %191, label %192, label %199

192:                                              ; preds = %185
  %193 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 4
  %194 = load i32, ptr %193, align 8
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %192
  %197 = sub i32 %190, %187
  %198 = add i32 %197, %194
  br label %199

199:                                              ; preds = %196, %192, %185
  %200 = phi i32 [ %190, %192 ], [ %198, %196 ], [ %190, %185 ]
  %201 = add i32 %200, 1
  %202 = load i32, ptr %33, align 4
  %203 = icmp ugt i32 %201, %202
  br i1 %203, label %204, label %217, !prof !8

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 5
  %206 = load i32, ptr %205, align 8
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %221, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 1
  %210 = load ptr, ptr %209, align 4
  %211 = getelementptr inbounds %struct.nvkm_device, ptr %210, i32 0, i32 2
  %212 = load ptr, ptr %211, align 8
  %213 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %212, ptr noundef nonnull @.str.5, ptr noundef %213, i32 noundef 1, i32 noundef %190, i32 noundef %200) #11
  %214 = load i16, ptr %149, align 2
  %215 = load i32, ptr %153, align 4
  %216 = zext i16 %214 to i32
  br label %221

217:                                              ; preds = %199
  %218 = load ptr, ptr %31, align 8
  %219 = getelementptr i8, ptr %218, i32 %200
  %220 = load i8, ptr %219, align 1
  br label %221

221:                                              ; preds = %217, %208, %204
  %222 = phi i32 [ %186, %204 ], [ %216, %208 ], [ %186, %217 ]
  %223 = phi i32 [ %187, %204 ], [ %215, %208 ], [ %187, %217 ]
  %224 = phi i8 [ 0, %204 ], [ 0, %208 ], [ %220, %217 ]
  %225 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 7, i32 1
  store i8 %224, ptr %225, align 1
  %226 = add nuw nsw i32 %222, 1
  %227 = icmp ugt i32 %223, %222
  br i1 %227, label %235, label %228

228:                                              ; preds = %221
  %229 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 4
  %230 = load i32, ptr %229, align 8
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %228
  %233 = sub i32 %226, %223
  %234 = add i32 %233, %230
  br label %235

235:                                              ; preds = %232, %228, %221
  %236 = phi i32 [ %226, %228 ], [ %234, %232 ], [ %226, %221 ]
  %237 = add i32 %236, 1
  %238 = load i32, ptr %33, align 4
  %239 = icmp ugt i32 %237, %238
  br i1 %239, label %240, label %253, !prof !8

240:                                              ; preds = %235
  %241 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 5
  %242 = load i32, ptr %241, align 8
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %257, label %244

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 1
  %246 = load ptr, ptr %245, align 4
  %247 = getelementptr inbounds %struct.nvkm_device, ptr %246, i32 0, i32 2
  %248 = load ptr, ptr %247, align 8
  %249 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %248, ptr noundef nonnull @.str.5, ptr noundef %249, i32 noundef 1, i32 noundef %226, i32 noundef %236) #11
  %250 = load i16, ptr %149, align 2
  %251 = load i32, ptr %153, align 4
  %252 = zext i16 %250 to i32
  br label %257

253:                                              ; preds = %235
  %254 = load ptr, ptr %31, align 8
  %255 = getelementptr i8, ptr %254, i32 %236
  %256 = load i8, ptr %255, align 1
  br label %257

257:                                              ; preds = %253, %244, %240
  %258 = phi i32 [ %222, %240 ], [ %252, %244 ], [ %222, %253 ]
  %259 = phi i32 [ %223, %240 ], [ %251, %244 ], [ %223, %253 ]
  %260 = phi i8 [ 0, %240 ], [ 0, %244 ], [ %256, %253 ]
  %261 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 7, i32 2
  store i8 %260, ptr %261, align 2
  %262 = icmp ugt i32 %258, %259
  br i1 %262, label %263, label %270

263:                                              ; preds = %257
  %264 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 4
  %265 = load i32, ptr %264, align 8
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %270, label %267

267:                                              ; preds = %263
  %268 = sub i32 %258, %259
  %269 = add i32 %268, %265
  br label %270

270:                                              ; preds = %267, %263, %257
  %271 = phi i32 [ %258, %263 ], [ %269, %267 ], [ %258, %257 ]
  %272 = add i32 %271, 1
  %273 = load i32, ptr %33, align 4
  %274 = icmp ugt i32 %272, %273
  br i1 %274, label %275, label %288, !prof !8

275:                                              ; preds = %270
  %276 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 5
  %277 = load i32, ptr %276, align 8
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %292, label %279

279:                                              ; preds = %275
  %280 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 1
  %281 = load ptr, ptr %280, align 4
  %282 = getelementptr inbounds %struct.nvkm_device, ptr %281, i32 0, i32 2
  %283 = load ptr, ptr %282, align 8
  %284 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %283, ptr noundef nonnull @.str.5, ptr noundef %284, i32 noundef 1, i32 noundef %258, i32 noundef %271) #11
  %285 = load i16, ptr %149, align 2
  %286 = load i32, ptr %153, align 4
  %287 = zext i16 %285 to i32
  br label %292

288:                                              ; preds = %270
  %289 = load ptr, ptr %31, align 8
  %290 = getelementptr i8, ptr %289, i32 %271
  %291 = load i8, ptr %290, align 1
  br label %292

292:                                              ; preds = %288, %279, %275
  %293 = phi i32 [ %258, %275 ], [ %287, %279 ], [ %258, %288 ]
  %294 = phi i32 [ %259, %275 ], [ %286, %279 ], [ %259, %288 ]
  %295 = phi i8 [ 0, %275 ], [ 0, %279 ], [ %291, %288 ]
  %296 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 7, i32 3
  store i8 %295, ptr %296, align 1
  %297 = add nuw nsw i32 %293, 4
  %298 = icmp ugt i32 %297, %294
  br i1 %298, label %299, label %306

299:                                              ; preds = %292
  %300 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 4
  %301 = load i32, ptr %300, align 8
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %299
  %304 = sub i32 %297, %294
  %305 = add i32 %304, %301
  br label %306

306:                                              ; preds = %303, %299, %292
  %307 = phi i32 [ %297, %299 ], [ %305, %303 ], [ %297, %292 ]
  %308 = add i32 %307, 1
  %309 = load i32, ptr %33, align 4
  %310 = icmp ugt i32 %308, %309
  br i1 %310, label %311, label %321, !prof !8

311:                                              ; preds = %306
  %312 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 5
  %313 = load i32, ptr %312, align 8
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %325, label %315

315:                                              ; preds = %311
  %316 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 1
  %317 = load ptr, ptr %316, align 4
  %318 = getelementptr inbounds %struct.nvkm_device, ptr %317, i32 0, i32 2
  %319 = load ptr, ptr %318, align 8
  %320 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %319, ptr noundef nonnull @.str.5, ptr noundef %320, i32 noundef 1, i32 noundef %297, i32 noundef %307) #11
  br label %325

321:                                              ; preds = %306
  %322 = load ptr, ptr %31, align 8
  %323 = getelementptr i8, ptr %322, i32 %307
  %324 = load i8, ptr %323, align 1
  br label %325

325:                                              ; preds = %321, %315, %311
  %326 = phi i8 [ %324, %321 ], [ 0, %311 ], [ 0, %315 ]
  %327 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 7, i32 4
  store i8 %326, ptr %327, align 8
  br label %471

328:                                              ; preds = %141
  %329 = call fastcc zeroext i16 @bmp_version(ptr noundef nonnull %8)
  %330 = icmp eq i16 %329, 0
  br i1 %330, label %471, label %331

331:                                              ; preds = %328
  %332 = load i32, ptr %94, align 4
  %333 = add i32 %332, 13
  %334 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 3
  %335 = load i32, ptr %334, align 4
  %336 = icmp ugt i32 %333, %335
  br i1 %336, label %337, label %344

337:                                              ; preds = %331
  %338 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 4
  %339 = load i32, ptr %338, align 8
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %344, label %341

341:                                              ; preds = %337
  %342 = sub i32 %333, %335
  %343 = add i32 %342, %339
  br label %344

344:                                              ; preds = %341, %337, %331
  %345 = phi i32 [ %333, %337 ], [ %343, %341 ], [ %333, %331 ]
  %346 = add i32 %345, 1
  %347 = load i32, ptr %33, align 4
  %348 = icmp ugt i32 %346, %347
  br i1 %348, label %349, label %361, !prof !8

349:                                              ; preds = %344
  %350 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 5
  %351 = load i32, ptr %350, align 8
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %365, label %353

353:                                              ; preds = %349
  %354 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 1
  %355 = load ptr, ptr %354, align 4
  %356 = getelementptr inbounds %struct.nvkm_device, ptr %355, i32 0, i32 2
  %357 = load ptr, ptr %356, align 8
  %358 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %357, ptr noundef nonnull @.str.5, ptr noundef %358, i32 noundef 1, i32 noundef %333, i32 noundef %345) #11
  %359 = load i32, ptr %94, align 4
  %360 = load i32, ptr %334, align 4
  br label %365

361:                                              ; preds = %344
  %362 = load ptr, ptr %31, align 8
  %363 = getelementptr i8, ptr %362, i32 %345
  %364 = load i8, ptr %363, align 1
  br label %365

365:                                              ; preds = %361, %353, %349
  %366 = phi i32 [ %335, %361 ], [ %335, %349 ], [ %360, %353 ]
  %367 = phi i32 [ %332, %361 ], [ %332, %349 ], [ %359, %353 ]
  %368 = phi i8 [ %364, %361 ], [ 0, %349 ], [ 0, %353 ]
  %369 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 7
  store i8 %368, ptr %369, align 4
  %370 = add i32 %367, 12
  %371 = icmp ugt i32 %370, %366
  br i1 %371, label %372, label %379

372:                                              ; preds = %365
  %373 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 4
  %374 = load i32, ptr %373, align 8
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %379, label %376

376:                                              ; preds = %372
  %377 = sub i32 %370, %366
  %378 = add i32 %377, %374
  br label %379

379:                                              ; preds = %376, %372, %365
  %380 = phi i32 [ %370, %372 ], [ %378, %376 ], [ %370, %365 ]
  %381 = add i32 %380, 1
  %382 = load i32, ptr %33, align 4
  %383 = icmp ugt i32 %381, %382
  br i1 %383, label %384, label %396, !prof !8

384:                                              ; preds = %379
  %385 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 5
  %386 = load i32, ptr %385, align 8
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %400, label %388

388:                                              ; preds = %384
  %389 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 1
  %390 = load ptr, ptr %389, align 4
  %391 = getelementptr inbounds %struct.nvkm_device, ptr %390, i32 0, i32 2
  %392 = load ptr, ptr %391, align 8
  %393 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %392, ptr noundef nonnull @.str.5, ptr noundef %393, i32 noundef 1, i32 noundef %370, i32 noundef %380) #11
  %394 = load i32, ptr %94, align 4
  %395 = load i32, ptr %334, align 4
  br label %400

396:                                              ; preds = %379
  %397 = load ptr, ptr %31, align 8
  %398 = getelementptr i8, ptr %397, i32 %380
  %399 = load i8, ptr %398, align 1
  br label %400

400:                                              ; preds = %396, %388, %384
  %401 = phi i32 [ %366, %396 ], [ %366, %384 ], [ %395, %388 ]
  %402 = phi i32 [ %367, %396 ], [ %367, %384 ], [ %394, %388 ]
  %403 = phi i8 [ %399, %396 ], [ 0, %384 ], [ 0, %388 ]
  %404 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 7, i32 1
  store i8 %403, ptr %404, align 1
  %405 = add i32 %402, 11
  %406 = icmp ugt i32 %405, %401
  br i1 %406, label %407, label %414

407:                                              ; preds = %400
  %408 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 4
  %409 = load i32, ptr %408, align 8
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %414, label %411

411:                                              ; preds = %407
  %412 = sub i32 %405, %401
  %413 = add i32 %412, %409
  br label %414

414:                                              ; preds = %411, %407, %400
  %415 = phi i32 [ %405, %407 ], [ %413, %411 ], [ %405, %400 ]
  %416 = add i32 %415, 1
  %417 = load i32, ptr %33, align 4
  %418 = icmp ugt i32 %416, %417
  br i1 %418, label %419, label %431, !prof !8

419:                                              ; preds = %414
  %420 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 5
  %421 = load i32, ptr %420, align 8
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %435, label %423

423:                                              ; preds = %419
  %424 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 1
  %425 = load ptr, ptr %424, align 4
  %426 = getelementptr inbounds %struct.nvkm_device, ptr %425, i32 0, i32 2
  %427 = load ptr, ptr %426, align 8
  %428 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %427, ptr noundef nonnull @.str.5, ptr noundef %428, i32 noundef 1, i32 noundef %405, i32 noundef %415) #11
  %429 = load i32, ptr %94, align 4
  %430 = load i32, ptr %334, align 4
  br label %435

431:                                              ; preds = %414
  %432 = load ptr, ptr %31, align 8
  %433 = getelementptr i8, ptr %432, i32 %415
  %434 = load i8, ptr %433, align 1
  br label %435

435:                                              ; preds = %431, %423, %419
  %436 = phi i32 [ %401, %431 ], [ %401, %419 ], [ %430, %423 ]
  %437 = phi i32 [ %402, %431 ], [ %402, %419 ], [ %429, %423 ]
  %438 = phi i8 [ %434, %431 ], [ 0, %419 ], [ 0, %423 ]
  %439 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 7, i32 2
  store i8 %438, ptr %439, align 2
  %440 = add i32 %437, 10
  %441 = icmp ugt i32 %440, %436
  br i1 %441, label %442, label %449

442:                                              ; preds = %435
  %443 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 4
  %444 = load i32, ptr %443, align 8
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %449, label %446

446:                                              ; preds = %442
  %447 = sub i32 %440, %436
  %448 = add i32 %447, %444
  br label %449

449:                                              ; preds = %446, %442, %435
  %450 = phi i32 [ %440, %442 ], [ %448, %446 ], [ %440, %435 ]
  %451 = add i32 %450, 1
  %452 = load i32, ptr %33, align 4
  %453 = icmp ugt i32 %451, %452
  br i1 %453, label %454, label %464, !prof !8

454:                                              ; preds = %449
  %455 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 5
  %456 = load i32, ptr %455, align 8
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %468, label %458

458:                                              ; preds = %454
  %459 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 1
  %460 = load ptr, ptr %459, align 4
  %461 = getelementptr inbounds %struct.nvkm_device, ptr %460, i32 0, i32 2
  %462 = load ptr, ptr %461, align 8
  %463 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %462, ptr noundef nonnull @.str.5, ptr noundef %463, i32 noundef 1, i32 noundef %440, i32 noundef %450) #11
  br label %468

464:                                              ; preds = %449
  %465 = load ptr, ptr %31, align 8
  %466 = getelementptr i8, ptr %465, i32 %450
  %467 = load i8, ptr %466, align 1
  br label %468

468:                                              ; preds = %464, %458, %454
  %469 = phi i8 [ %467, %464 ], [ 0, %454 ], [ 0, %458 ]
  %470 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 7, i32 3
  store i8 %469, ptr %470, align 1
  br label %471

471:                                              ; preds = %468, %328, %325
  %472 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 5
  %473 = load i32, ptr %472, align 8
  %474 = icmp ugt i32 %473, 2
  br i1 %474, label %475, label %496

475:                                              ; preds = %471
  %476 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 1
  %477 = load ptr, ptr %476, align 4
  %478 = getelementptr inbounds %struct.nvkm_device, ptr %477, i32 0, i32 2
  %479 = load ptr, ptr %478, align 8
  %480 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 4
  %481 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 7
  %482 = load i8, ptr %481, align 4
  %483 = zext i8 %482 to i32
  %484 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 7, i32 1
  %485 = load i8, ptr %484, align 1
  %486 = zext i8 %485 to i32
  %487 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 7, i32 2
  %488 = load i8, ptr %487, align 2
  %489 = zext i8 %488 to i32
  %490 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 7, i32 3
  %491 = load i8, ptr %490, align 1
  %492 = zext i8 %491 to i32
  %493 = getelementptr inbounds %struct.nvkm_bios, ptr %8, i32 0, i32 7, i32 4
  %494 = load i8, ptr %493, align 8
  %495 = zext i8 %494 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %479, ptr noundef nonnull @.str.4, ptr noundef %480, i32 noundef %483, i32 noundef %486, i32 noundef %489, i32 noundef %492, i32 noundef %495) #11
  br label %496

496:                                              ; preds = %475, %471, %10, %4
  %497 = phi i32 [ -12, %4 ], [ %11, %10 ], [ 0, %475 ], [ 0, %471 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  ret i32 %497
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_shadow(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvbios_image(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @bmp_version(ptr noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %79, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, 5
  %7 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = sub i32 %6, %8
  %16 = add i32 %15, %12
  br label %17

17:                                               ; preds = %14, %10, %5
  %18 = phi i32 [ %6, %10 ], [ %16, %14 ], [ %6, %5 ]
  %19 = add i32 %18, 1
  %20 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %19, %21
  br i1 %22, label %23, label %35, !prof !8

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.5, ptr noundef %32, i32 noundef 1, i32 noundef %6, i32 noundef %18) #11
  %33 = load i32, ptr %2, align 4
  %34 = load i32, ptr %7, align 4
  br label %40

35:                                               ; preds = %17
  %36 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 %18
  %39 = load i8, ptr %38, align 1
  br label %40

40:                                               ; preds = %35, %27, %23
  %41 = phi i32 [ %8, %35 ], [ %8, %23 ], [ %34, %27 ]
  %42 = phi i32 [ %3, %35 ], [ %3, %23 ], [ %33, %27 ]
  %43 = phi i8 [ %39, %35 ], [ 0, %23 ], [ 0, %27 ]
  %44 = zext i8 %43 to i16
  %45 = shl nuw i16 %44, 8
  %46 = add i32 %42, 6
  %47 = icmp ugt i32 %46, %41
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = sub i32 %46, %41
  %54 = add i32 %53, %50
  br label %55

55:                                               ; preds = %52, %48, %40
  %56 = phi i32 [ %46, %48 ], [ %54, %52 ], [ %46, %40 ]
  %57 = add i32 %56, 1
  %58 = load i32, ptr %20, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %70, !prof !8

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.nvkm_device, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.5, ptr noundef %69, i32 noundef 1, i32 noundef %46, i32 noundef %56) #11
  br label %75

70:                                               ; preds = %55
  %71 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr i8, ptr %72, i32 %56
  %74 = load i8, ptr %73, align 1
  br label %75

75:                                               ; preds = %70, %64, %60
  %76 = phi i8 [ %74, %70 ], [ 0, %60 ], [ 0, %64 ]
  %77 = zext i8 %76 to i16
  %78 = or i16 %45, %77
  br label %79

79:                                               ; preds = %75, %1
  %80 = phi i16 [ %78, %75 ], [ 0, %1 ]
  ret i16 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_bios_dtor(ptr noundef readonly returned %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #13
  ret ptr %0
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
