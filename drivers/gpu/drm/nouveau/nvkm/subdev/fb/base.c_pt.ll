; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/fb/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.nvkm_fb_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i8, ptr }
%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { i32, ptr, ptr, ptr, ptr }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.139, %struct.anon.140, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.139 = type { %struct.mutex, %struct.nvkm_mm }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.140 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.127, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.127 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.103 }
%struct.anon.103 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvbios_M0203E = type { i8, i8, i8 }

@.str = private unnamed_addr constant [22 x i8] c"%s: M0203E type %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: M0203E not matched!\0A\00", align 1
@nvkm_fb = internal constant %struct.nvkm_subdev_func { ptr @nvkm_fb_dtor, ptr null, ptr @nvkm_fb_oneinit, ptr null, ptr @nvkm_fb_init, ptr null, ptr @nvkm_fb_intr }, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"NvFbBigPage\00", align 1
@nvkm_fb_ctor.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"&fb->tags.mutex\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: vram setup failed, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"%s: %d comptags\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/fb/base.c\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"%s: VPR locked, running scrubber binary\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"%s: VPR locked, but no scrubber binary!\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"%s: VPR scrubber binary failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"%s: VPR still locked after scrub!\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"%s: VPR scrubber binary successful\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@switch.table.nvkm_fb_bios_memtype = private unnamed_addr constant [10 x i32] [i32 5, i32 6, i32 8, i32 10, i32 5, i32 5, i32 13, i32 5, i32 11, i32 12], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_fb_tile_fini(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.nvkm_fb_func, ptr %4, i32 0, i32 9, i32 3
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %0, i32 noundef %1, ptr noundef %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_fb_tile_init(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.nvkm_fb_func, ptr %8, i32 0, i32 9, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_fb_tile_prog(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_fb, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.nvkm_fb_func, ptr %6, i32 0, i32 9, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  tail call void %8(ptr noundef %0, i32 noundef %1, ptr noundef %2) #6
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 53
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.nvkm_gr, ptr %12, i32 0, i32 1
  tail call void @nvkm_engine_tile(ptr noundef %15, i32 noundef %1) #6
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 56
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @nvkm_engine_tile(ptr noundef nonnull %18, i32 noundef %1) #6
  br label %21

21:                                               ; preds = %20, %16, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_engine_tile(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_fb_bios_memtype(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.nvbios_M0203E, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 1052672
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %11 = trunc i32 %10 to i8
  %12 = lshr i8 %11, 2
  %13 = and i8 %12, 15
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %2, i8 0, i32 3, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 0, ptr %3, align 1, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  store i8 0, ptr %4, align 1, !annotation !10
  %14 = call i32 @nvbios_M0203Em(ptr noundef %0, i8 noundef zeroext %13, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %2) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %1
  %17 = load i8, ptr %2, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp ult i8 %17, 10
  br i1 %19, label %38, label %20

20:                                               ; preds = %38, %16
  %21 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, 1
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %27, ptr noundef nonnull @.str, ptr noundef %28, i32 noundef %18) #7
  br label %47

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = icmp ugt i32 %31, 1
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load ptr, ptr %5, align 4
  %35 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %36, ptr noundef nonnull @.str.1, ptr noundef %37) #7
  br label %47

38:                                               ; preds = %16
  %39 = zext i8 %17 to i16
  %40 = lshr i16 847, %39
  %41 = and i16 %40, 1
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %20, label %43

43:                                               ; preds = %38
  %44 = sext i8 %17 to i32
  %45 = getelementptr inbounds [10 x i32], ptr @switch.table.nvkm_fb_bios_memtype, i32 0, i32 %44
  %46 = load i32, ptr %45, align 4
  br label %47

47:                                               ; preds = %43, %33, %29, %24, %20
  %48 = phi i32 [ 0, %24 ], [ 0, %20 ], [ 0, %33 ], [ 0, %29 ], [ %46, %43 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #6
  ret i32 %48
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_M0203Em(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_fb_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nvkm_fb, ptr %4, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_fb, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %6) #6
  store ptr %0, ptr %4, align 4
  %7 = getelementptr inbounds %struct.nvkm_fb_func, ptr %0, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_fb, ptr %4, i32 0, i32 5, i32 1
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_fb_func, ptr %0, i32 0, i32 11
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = tail call i32 @nvkm_longopt(ptr noundef %11, ptr noundef nonnull @.str.2, i32 noundef %14) #6
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds %struct.nvkm_fb, ptr %4, i32 0, i32 6
  store i8 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nvkm_fb, ptr %4, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %18, ptr noundef nonnull @.str.3, ptr noundef nonnull @nvkm_fb_ctor.__key) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_longopt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_fb_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 448) #8
  store ptr %7, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nvkm_fb, ptr %7, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_fb, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %10) #6
  store ptr %0, ptr %7, align 8
  %11 = getelementptr inbounds %struct.nvkm_fb_func, ptr %0, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_fb, ptr %7, i32 0, i32 5, i32 1
  store i32 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_fb_func, ptr %0, i32 0, i32 11
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = tail call i32 @nvkm_longopt(ptr noundef %15, ptr noundef nonnull @.str.2, i32 noundef %18) #6
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.nvkm_fb, ptr %7, i32 0, i32 6
  store i8 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nvkm_fb, ptr %7, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %22, ptr noundef nonnull @.str.3, ptr noundef nonnull @nvkm_fb_ctor.__key) #6
  br label %23

23:                                               ; preds = %9, %5
  %24 = phi i32 [ 0, %9 ], [ -12, %5 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_fb_dtor(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 440
  tail call void @nvkm_memory_unref(ptr noundef %3) #6
  %4 = getelementptr i8, ptr %0, i32 436
  tail call void @nvkm_memory_unref(ptr noundef %4) #6
  %5 = getelementptr i8, ptr %0, i32 428
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 108
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ 0, %8 ], [ %16, %10 ]
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.nvkm_fb_func, ptr %12, i32 0, i32 9, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr [16 x %struct.nvkm_fb_tile], ptr %9, i32 0, i32 %11
  tail call void %14(ptr noundef %2, i32 noundef %11, ptr noundef %15) #6
  %16 = add nuw nsw i32 %11, 1
  %17 = load i32, ptr %5, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %10, label %19

19:                                               ; preds = %10, %1
  %20 = getelementptr i8, ptr %0, i32 84
  %21 = tail call i32 @nvkm_mm_fini(ptr noundef %20) #6
  %22 = getelementptr i8, ptr %0, i32 60
  tail call void @nvkm_ram_del(ptr noundef %22) #6
  %23 = getelementptr i8, ptr %0, i32 52
  %24 = load ptr, ptr %23, align 4
  tail call void @kfree(ptr noundef %24) #6
  store ptr null, ptr %23, align 4
  %25 = getelementptr i8, ptr %0, i32 56
  store i32 0, ptr %25, align 4
  %26 = load ptr, ptr %2, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %19
  %30 = tail call ptr %27(ptr noundef %2) #6
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi ptr [ %30, %29 ], [ %2, %19 ]
  ret ptr %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_fb_oneinit(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_fb_func, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 60
  %9 = tail call i32 %5(ptr noundef %2, ptr noundef %8) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load ptr, ptr %2, align 4
  br label %23

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %53, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.4, ptr noundef %22, i32 noundef %9) #7
  br label %53

23:                                               ; preds = %11, %1
  %24 = phi ptr [ %12, %11 ], [ %3, %1 ]
  %25 = getelementptr inbounds %struct.nvkm_fb_func, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = tail call i32 %26(ptr noundef %2) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  %32 = load ptr, ptr %2, align 4
  br label %33

33:                                               ; preds = %31, %23
  %34 = phi ptr [ %32, %31 ], [ %24, %23 ]
  %35 = getelementptr inbounds %struct.nvkm_fb_func, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %33
  %39 = tail call i32 %36(ptr noundef %2) #6
  %40 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = icmp ugt i32 %41, 3
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %47, ptr noundef nonnull @.str.5, ptr noundef %48, i32 noundef %39) #7
  br label %49

49:                                               ; preds = %43, %38, %33
  %50 = phi i32 [ 0, %33 ], [ %39, %43 ], [ %39, %38 ]
  %51 = getelementptr i8, ptr %0, i32 84
  %52 = tail call i32 @nvkm_mm_init(ptr noundef %51, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %50, i32 noundef 1) #6
  br label %53

53:                                               ; preds = %49, %28, %17, %13
  %54 = phi i32 [ %52, %49 ], [ %29, %28 ], [ %9, %17 ], [ %9, %13 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_fb_init(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 60
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @nvkm_ram_init(ptr noundef nonnull %4) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %123

9:                                                ; preds = %6, %1
  %10 = getelementptr i8, ptr %0, i32 428
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 108
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i32 [ 0, %13 ], [ %21, %15 ]
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.nvkm_fb_func, ptr %17, i32 0, i32 9, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr [16 x %struct.nvkm_fb_tile], ptr %14, i32 0, i32 %16
  tail call void %19(ptr noundef %2, i32 noundef %16, ptr noundef %20) #6
  %21 = add nuw nsw i32 %16, 1
  %22 = load i32, ptr %10, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %15, label %24

24:                                               ; preds = %15, %9
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr inbounds %struct.nvkm_fb_func, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  tail call void %27(ptr noundef %2) #6
  %30 = load ptr, ptr %2, align 4
  br label %31

31:                                               ; preds = %29, %24
  %32 = phi ptr [ %30, %29 ], [ %25, %24 ]
  %33 = getelementptr inbounds %struct.nvkm_fb_func, ptr %32, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  tail call void %34(ptr noundef %2) #6
  %37 = load ptr, ptr %2, align 4
  br label %38

38:                                               ; preds = %36, %31
  %39 = phi ptr [ %37, %36 ], [ %32, %31 ]
  %40 = getelementptr inbounds %struct.nvkm_fb_func, ptr %39, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  %44 = tail call i32 %41(ptr noundef %2) #6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48, !prof !11

46:                                               ; preds = %43
  %47 = load ptr, ptr %2, align 4
  br label %49

48:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 179, i32 noundef 9, ptr noundef null) #6
  br label %123

49:                                               ; preds = %46, %38
  %50 = phi ptr [ %47, %46 ], [ %39, %38 ]
  %51 = getelementptr inbounds %struct.nvkm_fb_func, ptr %50, i32 0, i32 6
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  tail call void %52(ptr noundef %2) #6
  %55 = load ptr, ptr %2, align 4
  br label %56

56:                                               ; preds = %54, %49
  %57 = phi ptr [ %55, %54 ], [ %50, %49 ]
  %58 = getelementptr inbounds %struct.nvkm_fb_func, ptr %57, i32 0, i32 8
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %123, label %61

61:                                               ; preds = %56
  %62 = tail call zeroext i1 %59(ptr noundef %2) #6
  br i1 %62, label %63, label %123

63:                                               ; preds = %61
  %64 = getelementptr i8, ptr %0, i32 32
  %65 = load i32, ptr %64, align 4
  %66 = icmp ugt i32 %65, 3
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = getelementptr i8, ptr %0, i32 4
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.nvkm_device, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr i8, ptr %0, i32 16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %71, ptr noundef nonnull @.str.7, ptr noundef %72) #7
  br label %73

73:                                               ; preds = %67, %63
  %74 = getelementptr i8, ptr %0, i32 56
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load i32, ptr %64, align 4
  %79 = icmp ugt i32 %78, 1
  br i1 %79, label %80, label %123

80:                                               ; preds = %77
  %81 = getelementptr i8, ptr %0, i32 4
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.nvkm_device, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr i8, ptr %0, i32 16
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %84, ptr noundef nonnull @.str.8, ptr noundef %85) #7
  br label %123

86:                                               ; preds = %73
  %87 = load ptr, ptr %2, align 4
  %88 = getelementptr inbounds %struct.nvkm_fb_func, ptr %87, i32 0, i32 8, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = tail call i32 %89(ptr noundef %2) #6
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %86
  %93 = load i32, ptr %64, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %123, label %95

95:                                               ; preds = %92
  %96 = getelementptr i8, ptr %0, i32 4
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.nvkm_device, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8
  %100 = getelementptr i8, ptr %0, i32 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.9, ptr noundef %100) #7
  br label %123

101:                                              ; preds = %86
  %102 = load ptr, ptr %2, align 4
  %103 = getelementptr inbounds %struct.nvkm_fb_func, ptr %102, i32 0, i32 8
  %104 = load ptr, ptr %103, align 4
  %105 = tail call zeroext i1 %104(ptr noundef %2) #6
  %106 = load i32, ptr %64, align 4
  br i1 %105, label %107, label %115

107:                                              ; preds = %101
  %108 = icmp eq i32 %106, 0
  br i1 %108, label %123, label %109

109:                                              ; preds = %107
  %110 = getelementptr i8, ptr %0, i32 4
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.nvkm_device, ptr %111, i32 0, i32 2
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr i8, ptr %0, i32 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.10, ptr noundef %114) #7
  br label %123

115:                                              ; preds = %101
  %116 = icmp ugt i32 %106, 3
  br i1 %116, label %117, label %123

117:                                              ; preds = %115
  %118 = getelementptr i8, ptr %0, i32 4
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.nvkm_device, ptr %119, i32 0, i32 2
  %121 = load ptr, ptr %120, align 8
  %122 = getelementptr i8, ptr %0, i32 16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %121, ptr noundef nonnull @.str.11, ptr noundef %122) #7
  br label %123

123:                                              ; preds = %117, %115, %109, %107, %95, %92, %80, %77, %61, %56, %48, %6
  %124 = phi i32 [ %44, %48 ], [ %7, %6 ], [ %90, %95 ], [ %90, %92 ], [ -5, %109 ], [ -5, %107 ], [ 0, %61 ], [ 0, %56 ], [ 0, %80 ], [ 0, %77 ], [ 0, %117 ], [ 0, %115 ]
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_fb_intr(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_fb_func, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %2) #6
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_ram_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_init(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ram_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!8 = !{i64 3951341}
!9 = !{i64 2151490794}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
