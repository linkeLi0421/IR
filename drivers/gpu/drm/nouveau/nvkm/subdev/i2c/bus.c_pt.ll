; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/bus.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/bus.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nvkm_i2c_bus = type { ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.i2c_adapter, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nvkm_i2c_pad = type { ptr, ptr, i32, i32, %struct.mutex, %struct.list_head }
%struct.nvkm_i2c = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.nvkm_i2c_bus_probe = type { %struct.i2c_board_info, i8 }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.nvkm_i2c_bus_func = type { ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [20 x i8] c"%s: bus %04x: init\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: bus %04x: fini\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: bus %04x: release\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%s: bus %04x: acquire\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: bus %04x: probing %ss\0A\00", align 1
@i2c_bit_algo = external dso_local constant %struct.i2c_algorithm, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"%s: bus %04x: %dms delay instead of %dms\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"%s: bus %04x: detected %s: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"%s: bus %04x: no devices found.\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/i2c/bus.c\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"%s: bus %04x: dtor\0A\00", align 1
@nvkm_i2c_bus_ctor.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"&bus->mutex\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"%s: bus %04x: ctor\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"nvkm-%s-bus-%04x\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.13 = private unnamed_addr constant [6 x i8] c"NvI2C\00", align 1
@nvkm_i2c_bus_algo = internal constant %struct.i2c_algorithm { ptr @nvkm_i2c_bus_xfer, ptr null, ptr null, ptr null, ptr @nvkm_i2c_bus_func, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_i2c_bus_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_i2c, ptr %5, i32 0, i32 1, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 4
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.nvkm_i2c, ptr %5, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_i2c, ptr %5, i32 0, i32 1, i32 4
  %15 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef %14, i32 noundef %16) #8
  br label %17

17:                                               ; preds = %9, %1
  %18 = load ptr, ptr %0, align 8
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void %19(ptr noundef %0) #9
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %23) #9
  %24 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 6
  store i8 1, ptr %24, align 8
  tail call void @mutex_unlock(ptr noundef %23) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_i2c_bus_fini(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_i2c, ptr %5, i32 0, i32 1, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 4
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.nvkm_i2c, ptr %5, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_i2c, ptr %5, i32 0, i32 1, i32 4
  %15 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef %14, i32 noundef %16) #8
  br label %17

17:                                               ; preds = %9, %1
  %18 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %18) #9
  %19 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 6
  store i8 0, ptr %19, align 8
  tail call void @mutex_unlock(ptr noundef %18) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_i2c_bus_release(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_i2c, ptr %5, i32 0, i32 1, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 4
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.nvkm_i2c, ptr %5, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_i2c, ptr %5, i32 0, i32 1, i32 4
  %15 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.2, ptr noundef %14, i32 noundef %16) #8
  br label %17

17:                                               ; preds = %9, %1
  tail call void @nvkm_i2c_pad_release(ptr noundef %3) #9
  %18 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %18) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_pad_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_i2c_bus_acquire(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_i2c, ptr %5, i32 0, i32 1, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 4
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.nvkm_i2c, ptr %5, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_i2c, ptr %5, i32 0, i32 1, i32 4
  %15 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef %14, i32 noundef %16) #8
  br label %17

17:                                               ; preds = %9, %1
  %18 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %18) #9
  %19 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 6
  %20 = load i8, ptr %19, align 8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @nvkm_i2c_pad_acquire(ptr noundef %3, i32 noundef 1) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22, %17
  %26 = phi i32 [ %23, %22 ], [ -5, %17 ]
  tail call void @mutex_unlock(ptr noundef %18) #9
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi i32 [ %26, %25 ], [ 0, %22 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_pad_acquire(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_i2c_bus_probe(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_i2c, ptr %12, i32 0, i32 1, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, 3
  br i1 %15, label %16, label %24

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.nvkm_i2c, ptr %12, i32 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nvkm_i2c, ptr %12, i32 0, i32 1, i32 4
  %22 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.4, ptr noundef %21, i32 noundef %23, ptr noundef %1) #8
  br label %24

24:                                               ; preds = %16, %5
  %25 = getelementptr inbounds %struct.i2c_board_info, ptr %2, i32 0, i32 2
  %26 = load i16, ptr %25, align 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %113, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 5
  %30 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 5, i32 2
  %31 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 5, i32 3
  %32 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 2
  %33 = getelementptr inbounds i8, ptr %8, i32 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  %40 = icmp eq ptr %3, null
  br label %41

41:                                               ; preds = %107, %28
  %42 = phi i16 [ %26, %28 ], [ %111, %107 ]
  %43 = phi ptr [ %25, %28 ], [ %110, %107 ]
  %44 = phi ptr [ %2, %28 ], [ %109, %107 ]
  %45 = phi i32 [ 0, %28 ], [ %108, %107 ]
  %46 = load ptr, ptr %30, align 8
  %47 = icmp eq ptr %46, @i2c_bit_algo
  br i1 %47, label %48, label %78

48:                                               ; preds = %41
  %49 = getelementptr %struct.nvkm_i2c_bus_probe, ptr %2, i32 %45, i32 1
  %50 = load i8, ptr %49, align 4
  %51 = zext i8 %50 to i32
  %52 = icmp eq i8 %50, 0
  br i1 %52, label %78, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr %31, align 4
  %55 = load ptr, ptr %9, align 4
  %56 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.nvkm_i2c, ptr %57, i32 0, i32 1, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = icmp ugt i32 %59, 3
  br i1 %60, label %61, label %72

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.nvkm_i2c, ptr %57, i32 0, i32 1, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.nvkm_device, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.nvkm_i2c, ptr %57, i32 0, i32 1, i32 4
  %67 = load i32, ptr %32, align 8
  %68 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %54, i32 0, i32 7
  %69 = load i32, ptr %68, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %65, ptr noundef nonnull @.str.5, ptr noundef %66, i32 noundef %67, i32 noundef %51, i32 noundef %69) #8
  %70 = load i8, ptr %49, align 4
  %71 = zext i8 %70 to i32
  br label %72

72:                                               ; preds = %61, %53
  %73 = phi i32 [ %71, %61 ], [ %51, %53 ]
  %74 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %54, i32 0, i32 7
  %75 = load i32, ptr %74, align 4
  %76 = trunc i32 %75 to i8
  store i32 %73, ptr %74, align 4
  %77 = load i16, ptr %43, align 2
  br label %78

78:                                               ; preds = %72, %48, %41
  %79 = phi i16 [ %77, %72 ], [ %42, %48 ], [ %42, %41 ]
  %80 = phi i8 [ %76, %72 ], [ 0, %48 ], [ 0, %41 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %33, i8 0, i32 16, i1 false) #9, !annotation !8
  %81 = and i16 %79, 255
  store i16 %81, ptr %8, align 4
  store i16 0, ptr %34, align 2
  store i16 1, ptr %33, align 4
  store ptr %6, ptr %35, align 4
  store i16 %81, ptr %36, align 4
  store i16 1, ptr %37, align 2
  store i16 1, ptr %38, align 4
  store ptr %7, ptr %39, align 4
  %82 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %8, i32 noundef 2) #9
  %83 = icmp eq i32 %82, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  br i1 %83, label %84, label %101

84:                                               ; preds = %78
  br i1 %40, label %87, label %85

85:                                               ; preds = %84
  %86 = call zeroext i1 %3(ptr noundef %0, ptr noundef %44, ptr noundef %4) #9
  br i1 %86, label %87, label %101

87:                                               ; preds = %85, %84
  %88 = load ptr, ptr %9, align 4
  %89 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %88, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.nvkm_i2c, ptr %90, i32 0, i32 1, i32 5
  %92 = load i32, ptr %91, align 4
  %93 = icmp ugt i32 %92, 3
  br i1 %93, label %94, label %128

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.nvkm_i2c, ptr %90, i32 0, i32 1, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.nvkm_device, ptr %96, i32 0, i32 2
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr inbounds %struct.nvkm_i2c, ptr %90, i32 0, i32 1, i32 4
  %100 = load i32, ptr %32, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %98, ptr noundef nonnull @.str.6, ptr noundef %99, i32 noundef %100, ptr noundef %1, ptr noundef %44) #8
  br label %128

101:                                              ; preds = %85, %78
  %102 = icmp eq i8 %80, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %101
  %104 = load ptr, ptr %31, align 4
  %105 = zext i8 %80 to i32
  %106 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %104, i32 0, i32 7
  store i32 %105, ptr %106, align 4
  br label %107

107:                                              ; preds = %103, %101
  %108 = add i32 %45, 1
  %109 = getelementptr %struct.nvkm_i2c_bus_probe, ptr %2, i32 %108
  %110 = getelementptr inbounds %struct.i2c_board_info, ptr %109, i32 0, i32 2
  %111 = load i16, ptr %110, align 2
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %113, label %41

113:                                              ; preds = %107, %24
  %114 = load ptr, ptr %9, align 4
  %115 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %114, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.nvkm_i2c, ptr %116, i32 0, i32 1, i32 5
  %118 = load i32, ptr %117, align 4
  %119 = icmp ugt i32 %118, 3
  br i1 %119, label %120, label %128

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.nvkm_i2c, ptr %116, i32 0, i32 1, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.nvkm_device, ptr %122, i32 0, i32 2
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr inbounds %struct.nvkm_i2c, ptr %116, i32 0, i32 1, i32 4
  %126 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %0, i32 0, i32 2
  %127 = load i32, ptr %126, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %124, ptr noundef nonnull @.str.7, ptr noundef %125, i32 noundef %127) #8
  br label %128

128:                                              ; preds = %120, %113, %94, %87
  %129 = phi i32 [ -19, %120 ], [ -19, %113 ], [ %45, %94 ], [ %45, %87 ]
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_i2c_bus_del(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 197, i32 noundef 9, ptr noundef null) #9
  br label %34

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %2, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_i2c, ptr %12, i32 0, i32 1, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, 4
  br i1 %15, label %16, label %24

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.nvkm_i2c, ptr %12, i32 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nvkm_i2c, ptr %12, i32 0, i32 1, i32 4
  %22 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %2, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.9, ptr noundef %21, i32 noundef %23) #8
  br label %24

24:                                               ; preds = %16, %8
  %25 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %2, i32 0, i32 4
  %26 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %2, i32 0, i32 4, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %25, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %26, align 4
  %30 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %2, i32 0, i32 5
  tail call void @i2c_del_adapter(ptr noundef %30) #9
  %31 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %2, i32 0, i32 5, i32 3
  %32 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %32) #9
  %33 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %33) #9
  store ptr null, ptr %0, align 4
  br label %34

34:                                               ; preds = %24, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_i2c_bus_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_i2c, ptr %6, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  store ptr %0, ptr %3, align 8
  %9 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %3, i32 0, i32 1
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %3, i32 0, i32 2
  store i32 %2, ptr %10, align 8
  %11 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %3, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %11, ptr noundef nonnull @.str.10, ptr noundef nonnull @nvkm_i2c_bus_ctor.__key) #9
  %12 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %3, i32 0, i32 4
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.nvkm_i2c, ptr %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.nvkm_i2c, ptr %13, i32 0, i32 3, i32 1
  %16 = load ptr, ptr %15, align 4
  store ptr %12, ptr %15, align 4
  store ptr %14, ptr %12, align 4
  %17 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %3, i32 0, i32 4, i32 1
  store ptr %16, ptr %17, align 4
  store volatile ptr %12, ptr %16, align 4
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_i2c, ptr %20, i32 0, i32 1, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, 4
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.nvkm_i2c, ptr %20, i32 0, i32 1, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nvkm_i2c, ptr %20, i32 0, i32 1, i32 4
  %30 = load i32, ptr %10, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.11, ptr noundef %29, i32 noundef %30) #8
  br label %31

31:                                               ; preds = %24, %4
  %32 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %3, i32 0, i32 5
  %33 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %3, i32 0, i32 5, i32 12
  %34 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load ptr, ptr %35, align 4
  br label %41

41:                                               ; preds = %39, %31
  %42 = phi ptr [ %40, %39 ], [ %37, %31 ]
  %43 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %33, i32 noundef 48, ptr noundef nonnull @.str.12, ptr noundef %42, i32 noundef %2)
  store ptr @__this_module, ptr %32, align 8
  %44 = load ptr, ptr %34, align 8
  %45 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %3, i32 0, i32 5, i32 9, i32 1
  store ptr %44, ptr %45, align 4
  %46 = load ptr, ptr %3, align 8
  %47 = getelementptr inbounds %struct.nvkm_i2c_bus_func, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %72, label %50

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 6
  %52 = load ptr, ptr %51, align 4
  %53 = tail call zeroext i1 @nvkm_boolopt(ptr noundef %52, ptr noundef nonnull @.str.13, i1 noundef zeroext false) #9
  br i1 %53, label %72, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %56 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3520, i32 noundef 40) #10
  %57 = icmp eq ptr %56, null
  br i1 %57, label %75, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %56, i32 0, i32 7
  store i32 10, ptr %59, align 4
  %60 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #9
  %61 = icmp ult i32 %60, 2200
  %62 = select i1 %61, i32 1073741822, i32 1
  %63 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %56, i32 0, i32 8
  store i32 %62, ptr %63, align 8
  store ptr %3, ptr %56, align 8
  %64 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %56, i32 0, i32 5
  store ptr @nvkm_i2c_bus_pre_xfer, ptr %64, align 4
  %65 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %56, i32 0, i32 6
  store ptr @nvkm_i2c_bus_post_xfer, ptr %65, align 8
  %66 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %56, i32 0, i32 2
  store ptr @nvkm_i2c_bus_setscl, ptr %66, align 8
  %67 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %56, i32 0, i32 1
  store ptr @nvkm_i2c_bus_setsda, ptr %67, align 4
  %68 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %56, i32 0, i32 4
  store ptr @nvkm_i2c_bus_getscl, ptr %68, align 8
  %69 = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %56, i32 0, i32 3
  store ptr @nvkm_i2c_bus_getsda, ptr %69, align 4
  %70 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %3, i32 0, i32 5, i32 3
  store ptr %56, ptr %70, align 4
  %71 = tail call i32 @i2c_bit_add_bus(ptr noundef %32) #9
  br label %75

72:                                               ; preds = %50, %41
  %73 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %3, i32 0, i32 5, i32 2
  store ptr @nvkm_i2c_bus_algo, ptr %73, align 8
  %74 = tail call i32 @i2c_add_adapter(ptr noundef %32) #9
  br label %75

75:                                               ; preds = %72, %58, %54
  %76 = phi i32 [ -12, %54 ], [ %74, %72 ], [ %71, %58 ]
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_i2c_bus_pre_xfer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -36
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_i2c, ptr %5, i32 0, i32 1, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 4
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.nvkm_i2c, ptr %5, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_i2c, ptr %5, i32 0, i32 1, i32 4
  %15 = getelementptr i8, ptr %0, i32 -32
  %16 = load i32, ptr %15, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef %14, i32 noundef %16) #8
  br label %17

17:                                               ; preds = %9, %1
  %18 = getelementptr i8, ptr %0, i32 -28
  tail call void @mutex_lock(ptr noundef %18) #9
  %19 = getelementptr i8, ptr %0, i32 656
  %20 = load i8, ptr %19, align 8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @nvkm_i2c_pad_acquire(ptr noundef %3, i32 noundef 1) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22, %17
  %26 = phi i32 [ %23, %22 ], [ -5, %17 ]
  tail call void @mutex_unlock(ptr noundef %18) #9
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi i32 [ %26, %25 ], [ 0, %22 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_i2c_bus_post_xfer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -36
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_i2c, ptr %5, i32 0, i32 1, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 4
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.nvkm_i2c, ptr %5, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_i2c, ptr %5, i32 0, i32 1, i32 4
  %15 = getelementptr i8, ptr %0, i32 -32
  %16 = load i32, ptr %15, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.2, ptr noundef %14, i32 noundef %16) #8
  br label %17

17:                                               ; preds = %9, %1
  tail call void @nvkm_i2c_pad_release(ptr noundef %3) #9
  %18 = getelementptr i8, ptr %0, i32 -28
  tail call void @mutex_unlock(ptr noundef %18) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_i2c_bus_setscl(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.nvkm_i2c_bus_func, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0, i32 noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_i2c_bus_setsda(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.nvkm_i2c_bus_func, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0, i32 noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_i2c_bus_getscl(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.nvkm_i2c_bus_func, ptr %2, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %0) #9
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_i2c_bus_getsda(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.nvkm_i2c_bus_func, ptr %2, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %0) #9
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_i2c_bus_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 704) #10
  store ptr %6, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @nvkm_i2c_bus_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %6)
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %9, %8 ], [ -12, %4 ]
  ret i32 %11
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_i2c_bus_xfer(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -40
  %5 = getelementptr i8, ptr %0, i32 -36
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_i2c, ptr %8, i32 0, i32 1, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, 4
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.nvkm_i2c, ptr %8, i32 0, i32 1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nvkm_i2c, ptr %8, i32 0, i32 1, i32 4
  %18 = getelementptr i8, ptr %0, i32 -32
  %19 = load i32, ptr %18, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.3, ptr noundef %17, i32 noundef %19) #8
  br label %20

20:                                               ; preds = %12, %3
  %21 = getelementptr i8, ptr %0, i32 -28
  tail call void @mutex_lock(ptr noundef %21) #9
  %22 = getelementptr i8, ptr %0, i32 656
  %23 = load i8, ptr %22, align 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %48, label %25

25:                                               ; preds = %20
  %26 = tail call i32 @nvkm_i2c_pad_acquire(ptr noundef %6, i32 noundef 1) #9
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds %struct.nvkm_i2c_bus_func, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef %4, ptr noundef %1, i32 noundef %2) #9
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvkm_i2c, ptr %35, i32 0, i32 1, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = icmp ugt i32 %37, 4
  br i1 %38, label %39, label %47

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.nvkm_i2c, ptr %35, i32 0, i32 1, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.nvkm_i2c, ptr %35, i32 0, i32 1, i32 4
  %45 = getelementptr i8, ptr %0, i32 -32
  %46 = load i32, ptr %45, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.2, ptr noundef %44, i32 noundef %46) #8
  br label %47

47:                                               ; preds = %39, %28
  tail call void @nvkm_i2c_pad_release(ptr noundef %33) #9
  br label %48

48:                                               ; preds = %47, %25, %20
  %49 = phi i32 [ %32, %47 ], [ %26, %25 ], [ -5, %20 ]
  tail call void @mutex_unlock(ptr noundef %21) #9
  ret i32 %49
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_i2c_bus_func(ptr nocapture noundef readnone %0) #7 {
  ret i32 251592713
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }

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
