; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.140, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.140 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.96, %struct.anon.97, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.96 = type { %struct.mutex, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.97 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.85, i32, i32, i32, i32, i32, i32, %union.anon.89, i32, i32, [11 x i32], %union.anon.93 }>
%union.anon.85 = type { %struct.anon.88 }
%struct.anon.88 = type { i64 }
%union.anon.89 = type { %struct.anon.92 }
%struct.anon.92 = type { i32, i32, i8 }
%union.anon.93 = type <{ %struct.anon.95, [12 x i8] }>
%struct.anon.95 = type { i48 }
%struct.nvkm_vram = type { %struct.nvkm_memory, ptr, i8, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }
%struct.nvkm_ram_func = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_vmm_map = type { ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i64 }

@nvkm_vram = internal constant %struct.nvkm_memory_func { ptr @nvkm_vram_dtor, ptr @nvkm_vram_target, ptr @nvkm_vram_page, ptr null, ptr @nvkm_vram_addr, ptr @nvkm_vram_size, ptr null, ptr null, ptr null, ptr @nvkm_vram_map }, align 4
@.str = private unnamed_addr constant [45 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c\00", align 1
@nvkm_ram_ctor.name = internal unnamed_addr constant [14 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"of unknown memory type\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"stolen system memory\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"SGRAM\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"SDRAM\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"DDR1\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"DDR2\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"DDR3\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"GDDR2\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"GDDR3\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"GDDR4\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"GDDR5\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"GDDR5X\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"GDDR6\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"HBM2\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"%s: %d MiB %s\0A\00", align 1
@nvkm_ram_ctor.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"&ram->mutex\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_ram_get(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i64 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  store ptr null, ptr %9, align 4, !annotation !8
  %10 = tail call i8 @llvm.umax.i8(i8 %3, i8 12)
  %11 = zext i8 %10 to i32
  %12 = shl nuw i32 1, %11
  %13 = ashr i32 %12, 12
  %14 = sext i32 %12 to i64
  %15 = add i64 %4, 17592186044415
  %16 = add i64 %15, %14
  %17 = sub nsw i64 0, %14
  %18 = and i64 %16, %17
  %19 = lshr i64 %18, 12
  %20 = trunc i64 %19 to i32
  %21 = select i1 %5, i32 %20, i32 %13
  %22 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 33
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %58, label %25

25:                                               ; preds = %8
  %26 = getelementptr inbounds %struct.nvkm_fb, ptr %23, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %58, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.nvkm_ram, ptr %27, i32 0, i32 4
  %31 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %32 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 28) #11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %58, label %34

34:                                               ; preds = %29
  tail call void @nvkm_memory_ctor(ptr noundef nonnull @nvkm_vram, ptr noundef nonnull %32) #10
  %35 = getelementptr inbounds %struct.nvkm_vram, ptr %32, i32 0, i32 1
  store ptr %27, ptr %35, align 8
  %36 = getelementptr inbounds %struct.nvkm_vram, ptr %32, i32 0, i32 2
  store i8 %10, ptr %36, align 4
  store ptr %32, ptr %7, align 4
  %37 = getelementptr inbounds %struct.nvkm_ram, ptr %27, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %37) #10
  %38 = getelementptr inbounds %struct.nvkm_vram, ptr %32, i32 0, i32 3
  br label %39

39:                                               ; preds = %50, %34
  %40 = phi ptr [ %38, %34 ], [ %52, %50 ]
  %41 = phi i32 [ %20, %34 ], [ %55, %50 ]
  br i1 %6, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 @nvkm_mm_tail(ptr noundef %30, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %41, i32 noundef %21, i32 noundef %13, ptr noundef nonnull %9) #10
  br label %46

44:                                               ; preds = %39
  %45 = call i32 @nvkm_mm_head(ptr noundef %30, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %41, i32 noundef %21, i32 noundef %13, ptr noundef nonnull %9) #10
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  call void @mutex_unlock(ptr noundef %37) #10
  call void @nvkm_memory_unref(ptr noundef %7) #10
  br label %58

50:                                               ; preds = %46
  %51 = load ptr, ptr %9, align 4
  store ptr %51, ptr %40, align 4
  %52 = getelementptr inbounds %struct.nvkm_mm_node, ptr %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.nvkm_mm_node, ptr %51, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = sub i32 %41, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %39

57:                                               ; preds = %50
  call void @mutex_unlock(ptr noundef %37) #10
  br label %58

58:                                               ; preds = %57, %49, %29, %25, %8
  %59 = phi i32 [ %47, %49 ], [ 0, %57 ], [ -19, %25 ], [ -19, %8 ], [ -12, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  ret i32 %59
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_ctor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_tail(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_head(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_ram_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.nvkm_ram_func, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 %4(ptr noundef %0) #10
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_ram_del(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 162, i32 noundef 9, ptr noundef null) #10
  br label %18

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nvkm_ram_func, ptr %5, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr %10(ptr noundef nonnull %2) #10
  store ptr %13, ptr %0, align 4
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.nvkm_ram, ptr %2, i32 0, i32 4
  %16 = tail call i32 @nvkm_mm_fini(ptr noundef %15) #10
  %17 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %17) #10
  store ptr null, ptr %0, align 4
  br label %18

18:                                               ; preds = %14, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_ram_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 2
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  %15 = lshr i64 %3, 20
  %16 = trunc i64 %15 to i32
  %17 = getelementptr [14 x ptr], ptr @nvkm_ram_ctor.name, i32 0, i32 %2
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.15, ptr noundef %14, i32 noundef %16, ptr noundef %18) #12
  br label %19

19:                                               ; preds = %9, %5
  store ptr %0, ptr %4, align 8
  %20 = getelementptr inbounds %struct.nvkm_ram, ptr %4, i32 0, i32 1
  store ptr %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.nvkm_ram, ptr %4, i32 0, i32 2
  store i32 %2, ptr %21, align 8
  %22 = getelementptr inbounds %struct.nvkm_ram, ptr %4, i32 0, i32 3
  store i64 %3, ptr %22, align 8
  %23 = getelementptr inbounds %struct.nvkm_ram, ptr %4, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %23, ptr noundef nonnull @.str.16, ptr noundef nonnull @nvkm_ram_ctor.__key) #10
  %24 = getelementptr inbounds %struct.nvkm_ram, ptr %4, i32 0, i32 4, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.nvkm_ram, ptr %4, i32 0, i32 4
  %29 = lshr i64 %3, 12
  %30 = trunc i64 %29 to i32
  %31 = tail call i32 @nvkm_mm_init(ptr noundef %28, i8 noundef zeroext 1, i32 noundef 0, i32 noundef %30, i32 noundef 1) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %19
  br label %34

34:                                               ; preds = %33, %27
  %35 = phi i32 [ 0, %33 ], [ %31, %27 ]
  ret i32 %35
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_init(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_ram_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 600) #11
  store ptr %7, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 2
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  %19 = lshr i64 %3, 20
  %20 = trunc i64 %19 to i32
  %21 = getelementptr [14 x ptr], ptr @nvkm_ram_ctor.name, i32 0, i32 %2
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.15, ptr noundef %18, i32 noundef %20, ptr noundef %22) #12
  br label %23

23:                                               ; preds = %13, %9
  store ptr %0, ptr %7, align 8
  %24 = getelementptr inbounds %struct.nvkm_ram, ptr %7, i32 0, i32 1
  store ptr %1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nvkm_ram, ptr %7, i32 0, i32 2
  store i32 %2, ptr %25, align 8
  %26 = getelementptr inbounds %struct.nvkm_ram, ptr %7, i32 0, i32 3
  store i64 %3, ptr %26, align 8
  %27 = getelementptr inbounds %struct.nvkm_ram, ptr %7, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %27, ptr noundef nonnull @.str.16, ptr noundef nonnull @nvkm_ram_ctor.__key) #10
  %28 = getelementptr inbounds %struct.nvkm_ram, ptr %7, i32 0, i32 4, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.nvkm_ram, ptr %7, i32 0, i32 4
  %33 = lshr i64 %3, 12
  %34 = trunc i64 %33 to i32
  %35 = tail call i32 @nvkm_mm_init(ptr noundef %32, i8 noundef zeroext 1, i32 noundef 0, i32 noundef %34, i32 noundef 1) #10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %23
  br label %38

38:                                               ; preds = %37, %31, %5
  %39 = phi i32 [ -12, %5 ], [ 0, %37 ], [ %35, %31 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_vram_dtor(ptr noundef readonly returned %0) #0 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.nvkm_vram, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  %5 = getelementptr inbounds %struct.nvkm_vram, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_ram, ptr %6, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %7) #10
  store ptr %4, ptr %2, align 4
  %8 = icmp eq ptr %4, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %9, %1
  %10 = phi ptr [ %12, %9 ], [ %4, %1 ]
  %11 = getelementptr inbounds %struct.nvkm_mm_node, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.nvkm_ram, ptr %13, i32 0, i32 4
  call void @nvkm_mm_free(ptr noundef %14, ptr noundef nonnull %2) #10
  store ptr %12, ptr %2, align 4
  %15 = icmp eq ptr %12, null
  br i1 %15, label %16, label %9

16:                                               ; preds = %9, %1
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr inbounds %struct.nvkm_ram, ptr %17, i32 0, i32 6
  call void @mutex_unlock(ptr noundef %18) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_vram_target(ptr nocapture noundef readnone %0) #5 {
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i8 @nvkm_vram_page(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.nvkm_vram, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 4
  ret i8 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @nvkm_vram_addr(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_vram, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_mm_node, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nvkm_mm_node, ptr %3, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 12
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i64 [ %11, %7 ], [ -1, %1 ]
  ret i64 %13
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i64 @nvkm_vram_size(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.nvkm_vram, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %3, %1 ], [ %11, %4 ]
  %6 = phi i32 [ 0, %1 ], [ %9, %4 ]
  %7 = getelementptr inbounds %struct.nvkm_mm_node, ptr %5, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %6
  %10 = getelementptr inbounds %struct.nvkm_mm_node, ptr %5, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4

13:                                               ; preds = %4
  %14 = zext i32 %9 to i64
  %15 = shl nuw nsw i64 %14, 12
  ret i64 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_vram_map(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.nvkm_vmm_map, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 72, i1 false)
  store ptr %0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %7, i32 0, i32 1
  store i64 %1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %7, i32 0, i32 2
  %10 = getelementptr inbounds %struct.nvkm_vram, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %9, align 8
  %12 = call i32 @nvkm_vmm_map(ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #10
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mm_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
