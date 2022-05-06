; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/aux.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/aux.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_i2c_aux = type { ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.i2c_adapter, i8, i32 }
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
%struct.nvkm_i2c_aux_func = type { i8, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@.str = private unnamed_addr constant [27 x i8] c"%s: aux %04x: monitor: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%s: aux %04x: release\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"%s: aux %04x: acquire\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"%s: aux %04x: address-only transaction dropped\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/i2c/aux.c\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"%s: aux %04x: dtor\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"%s: aux %04x: init\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"%s: aux %04x: fini\0A\00", align 1
@nvkm_i2c_aux_ctor.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"&aux->mutex\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"%s: aux %04x: ctor\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"nvkm-%s-aux-%04x\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@nvkm_i2c_aux_i2c_algo = internal constant %struct.i2c_algorithm { ptr @nvkm_i2c_aux_i2c_xfer, ptr null, ptr null, ptr null, ptr @nvkm_i2c_aux_i2c_func, ptr null, ptr null }, align 4
@.str.13 = private unnamed_addr constant [40 x i8] c"%s: aux %04x: no data after 32 retries\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_i2c_aux_monitor(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_i2c, ptr %6, i32 0, i32 1, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 4
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.nvkm_i2c, ptr %6, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_i2c, ptr %6, i32 0, i32 1, i32 4
  %16 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = select i1 %1, ptr @.str.1, ptr @.str.2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef %15, i32 noundef %17, ptr noundef nonnull %18) #8
  br label %19

19:                                               ; preds = %10, %2
  %20 = select i1 %1, i32 2, i32 0
  tail call void @nvkm_i2c_pad_mode(ptr noundef %4, i32 noundef %20) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_pad_mode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_i2c_aux_release(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 1
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
  %15 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef %14, i32 noundef %16) #8
  br label %17

17:                                               ; preds = %9, %1
  tail call void @nvkm_i2c_pad_release(ptr noundef %3) #9
  %18 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %18) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_pad_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_i2c_aux_acquire(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 1
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
  %15 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef %14, i32 noundef %16) #8
  br label %17

17:                                               ; preds = %9, %1
  %18 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %18) #9
  %19 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 6
  %20 = load i8, ptr %19, align 8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @nvkm_i2c_pad_acquire(ptr noundef %3, i32 noundef 2) #9
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
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_pad_acquire(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_i2c_aux_xfer(ptr noundef %0, i1 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = load i8, ptr %5, align 1
  %8 = icmp eq i8 %7, 0
  %9 = load ptr, ptr %0, align 8
  br i1 %8, label %10, label %29

10:                                               ; preds = %6
  %11 = load i8, ptr %9, align 4, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_i2c, ptr %17, i32 0, i32 1, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.nvkm_i2c, ptr %17, i32 0, i32 1, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.nvkm_i2c, ptr %17, i32 0, i32 1, i32 4
  %27 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.5, ptr noundef %26, i32 noundef %28) #8
  br label %33

29:                                               ; preds = %10, %6
  %30 = getelementptr inbounds %struct.nvkm_i2c_aux_func, ptr %9, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef %0, i1 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #9
  br label %33

33:                                               ; preds = %29, %21, %13
  %34 = phi i32 [ %32, %29 ], [ -38, %21 ], [ -38, %13 ]
  ret i32 %34
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_i2c_aux_lnk_ctl(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.nvkm_i2c_aux_func, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call i32 %7(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #9
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi i32 [ %10, %9 ], [ -19, %4 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_i2c_aux_del(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 155, i32 noundef 9, ptr noundef null) #9
  br label %32

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %2, i32 0, i32 1
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
  %22 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %2, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.7, ptr noundef %21, i32 noundef %23) #8
  br label %24

24:                                               ; preds = %16, %8
  %25 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %2, i32 0, i32 4
  %26 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %2, i32 0, i32 4, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %25, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %26, align 4
  %30 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %2, i32 0, i32 5
  tail call void @i2c_del_adapter(ptr noundef %30) #9
  %31 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %31) #9
  store ptr null, ptr %0, align 4
  br label %32

32:                                               ; preds = %24, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_i2c_aux_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 1
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
  %15 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.8, ptr noundef %14, i32 noundef %16) #8
  br label %17

17:                                               ; preds = %9, %1
  %18 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %18) #9
  %19 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 6
  store i8 1, ptr %19, align 8
  tail call void @mutex_unlock(ptr noundef %18) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_i2c_aux_fini(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 1
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
  %15 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.9, ptr noundef %14, i32 noundef %16) #8
  br label %17

17:                                               ; preds = %9, %1
  %18 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %18) #9
  %19 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 6
  store i8 0, ptr %19, align 8
  tail call void @mutex_unlock(ptr noundef %18) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_i2c_aux_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_i2c, ptr %6, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  store ptr %0, ptr %3, align 8
  %9 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %3, i32 0, i32 1
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %3, i32 0, i32 2
  store i32 %2, ptr %10, align 8
  %11 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %3, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %11, ptr noundef nonnull @.str.10, ptr noundef nonnull @nvkm_i2c_aux_ctor.__key) #9
  %12 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %3, i32 0, i32 4
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.nvkm_i2c, ptr %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.nvkm_i2c, ptr %13, i32 0, i32 4, i32 1
  %16 = load ptr, ptr %15, align 4
  store ptr %12, ptr %15, align 4
  store ptr %14, ptr %12, align 4
  %17 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %3, i32 0, i32 4, i32 1
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
  %32 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load ptr, ptr %33, align 4
  br label %39

39:                                               ; preds = %37, %31
  %40 = phi ptr [ %38, %37 ], [ %35, %31 ]
  %41 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %3, i32 0, i32 5, i32 12
  %42 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %3, i32 0, i32 5
  %43 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %41, i32 noundef 48, ptr noundef nonnull @.str.12, ptr noundef %40, i32 noundef %2)
  store ptr @__this_module, ptr %42, align 8
  %44 = load ptr, ptr %32, align 8
  %45 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %3, i32 0, i32 5, i32 9, i32 1
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %3, i32 0, i32 5, i32 2
  store ptr @nvkm_i2c_aux_i2c_algo, ptr %46, align 8
  %47 = tail call i32 @i2c_add_adapter(ptr noundef %42) #9
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_i2c_aux_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 704) #10
  store ptr %6, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @nvkm_i2c_aux_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %6)
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %9, %8 ], [ -12, %4 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_i2c_aux_i2c_xfer(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = getelementptr i8, ptr %0, i32 -40
  %6 = getelementptr i8, ptr %0, i32 -36
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_i2c, ptr %9, i32 0, i32 1, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 4
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.nvkm_i2c, ptr %9, i32 0, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nvkm_i2c, ptr %9, i32 0, i32 1, i32 4
  %19 = getelementptr i8, ptr %0, i32 -32
  %20 = load i32, ptr %19, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.4, ptr noundef %18, i32 noundef %20) #8
  br label %21

21:                                               ; preds = %13, %3
  %22 = getelementptr i8, ptr %0, i32 -28
  tail call void @mutex_lock(ptr noundef %22) #9
  %23 = getelementptr i8, ptr %0, i32 656
  %24 = load i8, ptr %23, align 8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = tail call i32 @nvkm_i2c_pad_acquire(ptr noundef %7, i32 noundef 2) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = icmp eq i32 %2, 0
  br i1 %30, label %98, label %33

31:                                               ; preds = %26, %21
  %32 = phi i32 [ %27, %26 ], [ -5, %21 ]
  tail call void @mutex_unlock(ptr noundef %22) #9
  br label %115

33:                                               ; preds = %95, %29
  %34 = phi i32 [ %36, %95 ], [ %2, %29 ]
  %35 = phi ptr [ %96, %95 ], [ %1, %29 ]
  %36 = add i32 %34, -1
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 2
  %38 = load i16, ptr %37, align 4
  %39 = trunc i16 %38 to i8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %95, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  %45 = icmp ne i32 %36, 0
  br label %46

46:                                               ; preds = %90, %41
  %47 = phi ptr [ %43, %41 ], [ %92, %90 ]
  %48 = phi i8 [ %39, %41 ], [ %93, %90 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  %49 = load i16, ptr %44, align 2
  %50 = trunc i16 %49 to i8
  %51 = and i8 %50, 1
  %52 = icmp ugt i8 %48, 16
  %53 = select i1 %45, i1 true, i1 %52
  %54 = or i8 %51, 4
  %55 = select i1 %53, i8 %54, i8 %51
  %56 = call i8 @llvm.umin.i8(i8 %48, i8 16)
  br label %57

57:                                               ; preds = %66, %46
  %58 = phi i8 [ 0, %46 ], [ %67, %66 ]
  store i8 %56, ptr %4, align 1
  %59 = load ptr, ptr %5, align 8
  %60 = getelementptr inbounds %struct.nvkm_i2c_aux_func, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = load i16, ptr %35, align 4
  %63 = zext i16 %62 to i32
  %64 = call i32 %61(ptr noundef %5, i1 noundef zeroext true, i8 noundef zeroext %55, i32 noundef %63, ptr noundef %47, ptr noundef nonnull %4) #9
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %88, label %66

66:                                               ; preds = %57
  %67 = add nuw nsw i8 %58, 1
  %68 = load i8, ptr %4, align 1
  %69 = icmp ult i8 %58, 31
  %70 = icmp eq i8 %68, 0
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %57, label %72

72:                                               ; preds = %66
  br i1 %70, label %73, label %90

73:                                               ; preds = %72
  %74 = load ptr, ptr %6, align 4
  %75 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %74, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.nvkm_i2c, ptr %76, i32 0, i32 1, i32 5
  %78 = load i32, ptr %77, align 4
  %79 = icmp ugt i32 %78, 4
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.nvkm_i2c, ptr %76, i32 0, i32 1, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.nvkm_device, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.nvkm_i2c, ptr %76, i32 0, i32 1, i32 4
  %86 = getelementptr i8, ptr %0, i32 -32
  %87 = load i32, ptr %86, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %84, ptr noundef nonnull @.str.13, ptr noundef %85, i32 noundef %87) #8
  br label %88

88:                                               ; preds = %80, %73, %57
  %89 = phi i32 [ -5, %73 ], [ -5, %80 ], [ %64, %57 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  br label %98

90:                                               ; preds = %72
  %91 = zext i8 %68 to i32
  %92 = getelementptr i8, ptr %47, i32 %91
  %93 = sub i8 %48, %68
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %46

95:                                               ; preds = %90, %33
  %96 = getelementptr %struct.i2c_msg, ptr %35, i32 1
  %97 = icmp eq i32 %36, 0
  br i1 %97, label %98, label %33

98:                                               ; preds = %95, %88, %29
  %99 = phi i32 [ %89, %88 ], [ 0, %29 ], [ %2, %95 ]
  %100 = load ptr, ptr %6, align 4
  %101 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %100, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.nvkm_i2c, ptr %102, i32 0, i32 1, i32 5
  %104 = load i32, ptr %103, align 4
  %105 = icmp ugt i32 %104, 4
  br i1 %105, label %106, label %114

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.nvkm_i2c, ptr %102, i32 0, i32 1, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.nvkm_device, ptr %108, i32 0, i32 2
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr inbounds %struct.nvkm_i2c, ptr %102, i32 0, i32 1, i32 4
  %112 = getelementptr i8, ptr %0, i32 -32
  %113 = load i32, ptr %112, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %110, ptr noundef nonnull @.str.3, ptr noundef %111, i32 noundef %113) #8
  br label %114

114:                                              ; preds = %106, %98
  call void @nvkm_i2c_pad_release(ptr noundef %100) #9
  call void @mutex_unlock(ptr noundef %22) #9
  br label %115

115:                                              ; preds = %114, %31
  %116 = phi i32 [ %99, %114 ], [ %32, %31 ]
  ret i32 %116
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_i2c_aux_i2c_func(ptr nocapture noundef readnone %0) #5 {
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
