; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mdp_kms_funcs = type { %struct.msm_kms_funcs, ptr }
%struct.msm_kms_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type {}
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.mdp4_kms = type { %struct.mdp_kms, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mdp_irq, i8, ptr, i64 }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.80, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.80 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.83, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.83 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.msm_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.msm_gem_address_space = type { ptr, %struct.drm_mm, %struct.spinlock, ptr, %struct.kref, ptr }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"*ERROR* failed to allocate kms\0A\00", align 1
@kms_funcs = internal constant %struct.mdp_kms_funcs { %struct.msm_kms_funcs { ptr @mdp4_hw_init, ptr @mdp4_irq_preinstall, ptr @mdp4_irq_postinstall, ptr @mdp4_irq_uninstall, ptr @mdp4_irq, ptr @mdp4_enable_vblank, ptr @mdp4_disable_vblank, ptr @mdp4_enable_commit, ptr @mdp4_disable_commit, ptr null, ptr @mdp4_prepare_commit, ptr @mdp4_flush_commit, ptr @mdp4_wait_flush, ptr @mdp4_complete_commit, ptr @mdp_get_format, ptr null, ptr @mdp4_round_pixclk, ptr null, ptr @mdp4_destroy, ptr null, ptr null }, ptr @mdp4_set_irqmask }, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"*ERROR* failed to init kms\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"MDP4\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"*ERROR* failed to get irq: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"*ERROR* failed to enable regulator vdd: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"core_clk\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"*ERROR* failed to get core_clk\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"iface_clk\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"bus_clk\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"*ERROR* failed to get axi_clk\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"*ERROR* unexpected MDP version: v%d.%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"lut_clk\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"*ERROR* failed to get lut_clk\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"mdp4\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"no iommu, fallback to phys contig buffers for scanout\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"*ERROR* modeset_init failed: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"*ERROR* could not allocate blank-cursor bo: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"*ERROR* could not pin blank-cursor bo: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@msm_kms_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"&kms->commit_lock[i]\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"fetch config: dmap=%02x, vg=%02x\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"MDP4 version v%d.%d\00", align 1
@modeset_init.mdp4_crtc_names = internal unnamed_addr constant [2 x ptr] [ptr @.str.25, ptr @.str.26], align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"DMA_P\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"DMA_E\00", align 1
@modeset_init.mdp4_intfs = internal unnamed_addr constant [3 x i32] [i32 3, i32 6, i32 2], align 4
@.str.27 = private unnamed_addr constant [44 x i8] c"*ERROR* failed to construct plane for VG%d\0A\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"*ERROR* failed to construct plane for RGB%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"*ERROR* failed to construct crtc for %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"*ERROR* failed to initialize intf: %d, %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"*ERROR* failed to construct LCDC encoder\0A\00", align 1
@.str.32 = private unnamed_addr constant [45 x i8] c"*ERROR* failed to initialize LVDS connector\0A\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"*ERROR* failed to construct DTV encoder\0A\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"*ERROR* failed to initialize HDMI: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [45 x i8] c"*ERROR* failed to construct DSI encoder: %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"*ERROR* failed to initialize DSI: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"*ERROR* Invalid or unsupported interface\0A\00", align 1
@mdp4_get_config.config.0 = internal unnamed_addr global ptr null, align 4
@mdp4_get_config.config.1 = internal unnamed_addr global i1 false, align 4
@platform_bus_type = external dso_local global %struct.bus_type, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp4_disable(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #5
  %2 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  %4 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  %6 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 8
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  %8 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  tail call void @clk_unprepare(ptr noundef %9) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp4_enable(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #5
  %2 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call i32 @clk_enable(ptr noundef %3) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %10

10:                                               ; preds = %9, %6, %1
  %11 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_prepare(ptr noundef %12) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = tail call i32 @clk_enable(ptr noundef %12) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @clk_unprepare(ptr noundef %12) #5
  br label %19

19:                                               ; preds = %18, %15, %10
  %20 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 7
  %21 = load ptr, ptr %20, align 8
  %22 = tail call i32 @clk_prepare(ptr noundef %21) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = tail call i32 @clk_enable(ptr noundef %21) #5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void @clk_unprepare(ptr noundef %21) #5
  br label %28

28:                                               ; preds = %27, %24, %19
  %29 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @clk_prepare(ptr noundef %30) #5
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = tail call i32 @clk_enable(ptr noundef %30) #5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @clk_unprepare(ptr noundef %30) #5
  br label %37

37:                                               ; preds = %36, %33, %28
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mdp4_kms_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -16
  store i1 true, ptr @mdp4_get_config.config.1, align 4
  %7 = tail call ptr @iommu_domain_alloc(ptr noundef nonnull @platform_bus_type) #5
  store ptr %7, ptr @mdp4_get_config.config.0, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 1024) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %14, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #5
  br label %205

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.mdp_kms, ptr %11, i32 0, i32 1
  store ptr @kms_funcs, ptr %16, align 8
  %17 = getelementptr inbounds %struct.mdp_kms, ptr %11, i32 0, i32 3
  store volatile ptr %17, ptr %17, align 8
  %18 = getelementptr inbounds %struct.mdp_kms, ptr %11, i32 0, i32 3, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr %struct.msm_kms, ptr %11, i32 0, i32 7, i32 0
  tail call void @__mutex_init(ptr noundef %19, ptr noundef nonnull @.str.22, ptr noundef nonnull @msm_kms_init.__key) #5
  %20 = getelementptr %struct.msm_kms, ptr %11, i32 0, i32 7, i32 1
  tail call void @__mutex_init(ptr noundef %20, ptr noundef nonnull @.str.22, ptr noundef nonnull @msm_kms_init.__key) #5
  %21 = getelementptr %struct.msm_kms, ptr %11, i32 0, i32 7, i32 2
  tail call void @__mutex_init(ptr noundef %21, ptr noundef nonnull @.str.22, ptr noundef nonnull @msm_kms_init.__key) #5
  %22 = getelementptr %struct.msm_kms, ptr %11, i32 0, i32 7, i32 3
  tail call void @__mutex_init(ptr noundef %22, ptr noundef nonnull @.str.22, ptr noundef nonnull @msm_kms_init.__key) #5
  %23 = getelementptr %struct.msm_kms, ptr %11, i32 0, i32 7, i32 4
  tail call void @__mutex_init(ptr noundef %23, ptr noundef nonnull @.str.22, ptr noundef nonnull @msm_kms_init.__key) #5
  %24 = getelementptr %struct.msm_kms, ptr %11, i32 0, i32 7, i32 5
  tail call void @__mutex_init(ptr noundef %24, ptr noundef nonnull @.str.22, ptr noundef nonnull @msm_kms_init.__key) #5
  %25 = getelementptr %struct.msm_kms, ptr %11, i32 0, i32 7, i32 6
  tail call void @__mutex_init(ptr noundef %25, ptr noundef nonnull @.str.22, ptr noundef nonnull @msm_kms_init.__key) #5
  %26 = getelementptr %struct.msm_kms, ptr %11, i32 0, i32 7, i32 7
  tail call void @__mutex_init(ptr noundef %26, ptr noundef nonnull @.str.22, ptr noundef nonnull @msm_kms_init.__key) #5
  store ptr @kms_funcs, ptr %11, align 8
  %27 = getelementptr %struct.msm_kms, ptr %11, i32 0, i32 9, i32 0
  %28 = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %27, ptr noundef nonnull %11, i32 noundef 0) #5
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %15
  %31 = getelementptr %struct.msm_kms, ptr %11, i32 0, i32 9, i32 1
  %32 = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %31, ptr noundef nonnull %11, i32 noundef 1) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %30
  %35 = getelementptr %struct.msm_kms, ptr %11, i32 0, i32 9, i32 2
  %36 = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %35, ptr noundef nonnull %11, i32 noundef 2) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = getelementptr %struct.msm_kms, ptr %11, i32 0, i32 9, i32 3
  %40 = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %39, ptr noundef nonnull %11, i32 noundef 3) #5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = getelementptr %struct.msm_kms, ptr %11, i32 0, i32 9, i32 4
  %44 = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %43, ptr noundef nonnull %11, i32 noundef 4) #5
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = getelementptr %struct.msm_kms, ptr %11, i32 0, i32 9, i32 5
  %48 = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %47, ptr noundef nonnull %11, i32 noundef 5) #5
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = getelementptr %struct.msm_kms, ptr %11, i32 0, i32 9, i32 6
  %52 = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %51, ptr noundef nonnull %11, i32 noundef 6) #5
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = getelementptr %struct.msm_kms, ptr %11, i32 0, i32 9, i32 7
  %56 = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %55, ptr noundef nonnull %11, i32 noundef 7) #5
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54, %50, %46, %42, %38, %34, %30, %15
  %59 = phi i32 [ %56, %54 ], [ %52, %50 ], [ %48, %46 ], [ %44, %42 ], [ %40, %38 ], [ %36, %34 ], [ %32, %30 ], [ %28, %15 ]
  %60 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %60, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #5
  br label %205

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.msm_drm_private, ptr %9, i32 0, i32 1
  store ptr %11, ptr %62, align 4
  %63 = getelementptr inbounds %struct.mdp4_kms, ptr %11, i32 0, i32 1
  store ptr %0, ptr %63, align 8
  %64 = tail call ptr @msm_ioremap(ptr noundef %6, ptr noundef null, ptr noundef nonnull @.str.4) #5
  %65 = getelementptr inbounds %struct.mdp4_kms, ptr %11, i32 0, i32 3
  store ptr %64, ptr %65, align 8
  %66 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = ptrtoint ptr %64 to i32
  br label %203

69:                                               ; preds = %61
  %70 = tail call i32 @platform_get_irq(ptr noundef %6, i32 noundef 0) #5
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %73, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef %70) #5
  br label %203

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.msm_kms, ptr %11, i32 0, i32 2
  store i32 %70, ptr %75, align 8
  %76 = tail call ptr @devm_regulator_get_exclusive(ptr noundef %5, ptr noundef nonnull @.str.6) #5
  %77 = getelementptr inbounds %struct.mdp4_kms, ptr %11, i32 0, i32 4
  store ptr %76, ptr %77, align 4
  %78 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store ptr null, ptr %77, align 4
  br label %87

80:                                               ; preds = %74
  %81 = icmp eq ptr %76, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %80
  %83 = tail call i32 @regulator_enable(ptr noundef nonnull %76) #5
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %86, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7, i32 noundef %83) #5
  br label %203

87:                                               ; preds = %82, %80, %79
  %88 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.8) #5
  %89 = getelementptr inbounds %struct.mdp4_kms, ptr %11, i32 0, i32 5
  store ptr %88, ptr %89, align 8
  %90 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %92, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9) #5
  %93 = load ptr, ptr %89, align 8
  %94 = ptrtoint ptr %93 to i32
  br label %203

95:                                               ; preds = %87
  %96 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.10) #5
  %97 = getelementptr inbounds %struct.mdp4_kms, ptr %11, i32 0, i32 6
  %98 = icmp ugt ptr %96, inttoptr (i32 -4096 to ptr)
  %99 = select i1 %98, ptr null, ptr %96
  store ptr %99, ptr %97, align 4
  %100 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.11) #5
  %101 = getelementptr inbounds %struct.mdp4_kms, ptr %11, i32 0, i32 8
  store ptr %100, ptr %101, align 4
  %102 = icmp ugt ptr %100, inttoptr (i32 -4096 to ptr)
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %104, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #5
  %105 = load ptr, ptr %101, align 4
  %106 = ptrtoint ptr %105 to i32
  br label %203

107:                                              ; preds = %95
  %108 = load ptr, ptr %89, align 8
  %109 = load i1, ptr @mdp4_get_config.config.1, align 4
  %110 = select i1 %109, i32 266667000, i32 0
  %111 = tail call i32 @clk_set_rate(ptr noundef %108, i32 noundef %110) #5
  call fastcc void @read_mdp_hw_revision(ptr noundef nonnull %11, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %112 = load i32, ptr %2, align 4
  %113 = icmp eq i32 %112, 4
  br i1 %113, label %117, label %114

114:                                              ; preds = %107
  %115 = load ptr, ptr %4, align 4
  %116 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %115, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13, i32 noundef %112, i32 noundef %116) #5
  br label %203

117:                                              ; preds = %107
  %118 = load i32, ptr %3, align 4
  %119 = getelementptr inbounds %struct.mdp4_kms, ptr %11, i32 0, i32 2
  store i32 %118, ptr %119, align 4
  %120 = icmp sgt i32 %118, 1
  br i1 %120, label %121, label %133

121:                                              ; preds = %117
  %122 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.14) #5
  %123 = getelementptr inbounds %struct.mdp4_kms, ptr %11, i32 0, i32 7
  store ptr %122, ptr %123, align 8
  %124 = icmp ugt ptr %122, inttoptr (i32 -4096 to ptr)
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %126, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.15) #5
  %127 = load ptr, ptr %123, align 8
  %128 = ptrtoint ptr %127 to i32
  br label %203

129:                                              ; preds = %121
  %130 = load i1, ptr @mdp4_get_config.config.1, align 4
  %131 = select i1 %130, i32 266667000, i32 0
  %132 = tail call i32 @clk_set_rate(ptr noundef %122, i32 noundef %131) #5
  br label %133

133:                                              ; preds = %129, %117
  %134 = load ptr, ptr %4, align 4
  tail call void @pm_runtime_enable(ptr noundef %134) #5
  %135 = getelementptr inbounds %struct.mdp4_kms, ptr %11, i32 0, i32 10
  store i8 1, ptr %135, align 4
  %136 = tail call i32 @mdp4_enable(ptr noundef nonnull %11)
  %137 = load ptr, ptr %65, align 8
  %138 = getelementptr i8, ptr %137, i32 851968
  tail call void @msm_writel(i32 noundef 0, ptr noundef %138) #5
  %139 = load ptr, ptr %65, align 8
  %140 = getelementptr i8, ptr %139, i32 786432
  tail call void @msm_writel(i32 noundef 0, ptr noundef %140) #5
  %141 = load ptr, ptr %65, align 8
  %142 = getelementptr i8, ptr %141, i32 917504
  tail call void @msm_writel(i32 noundef 0, ptr noundef %142) #5
  %143 = tail call i32 @mdp4_disable(ptr noundef nonnull %11)
  %144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %144(i32 noundef 214748000) #5
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %145(i32 noundef 214748000) #5
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %146(i32 noundef 214748000) #5
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %147(i32 noundef 214748000) #5
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %148(i32 noundef 214748000) #5
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %149(i32 noundef 214748000) #5
  %150 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %150(i32 noundef 214748000) #5
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %151(i32 noundef 214748000) #5
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %152(i32 noundef 214748000) #5
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %153(i32 noundef 214748000) #5
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %154(i32 noundef 214748000) #5
  %155 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %155(i32 noundef 214748000) #5
  %156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %156(i32 noundef 214748000) #5
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %157(i32 noundef 214748000) #5
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %158(i32 noundef 214748000) #5
  %159 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %159(i32 noundef 214748000) #5
  %160 = load ptr, ptr @mdp4_get_config.config.0, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %176, label %162

162:                                              ; preds = %133
  %163 = tail call ptr @msm_iommu_new(ptr noundef %5, ptr noundef nonnull %160) #5
  %164 = tail call ptr @msm_gem_address_space_create(ptr noundef %163, ptr noundef nonnull @.str.16, i64 noundef 4096, i64 noundef 4294963200) #5
  %165 = icmp ugt ptr %164, inttoptr (i32 -4096 to ptr)
  br i1 %165, label %166, label %172

166:                                              ; preds = %162
  %167 = icmp ugt ptr %163, inttoptr (i32 -4096 to ptr)
  br i1 %167, label %174, label %168

168:                                              ; preds = %166
  %169 = load ptr, ptr %163, align 4
  %170 = getelementptr inbounds %struct.msm_mmu_funcs, ptr %169, i32 0, i32 3
  %171 = load ptr, ptr %170, align 4
  tail call void %171(ptr noundef %163) #5
  br label %174

172:                                              ; preds = %162
  %173 = getelementptr inbounds %struct.msm_kms, ptr %11, i32 0, i32 3
  store ptr %164, ptr %173, align 4
  br label %178

174:                                              ; preds = %168, %166
  %175 = ptrtoint ptr %164 to i32
  br label %203

176:                                              ; preds = %133
  %177 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %177, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #5
  br label %178

178:                                              ; preds = %176, %172
  %179 = tail call fastcc i32 @modeset_init(ptr noundef nonnull %11)
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %178
  %182 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %182, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19, i32 noundef %179) #5
  br label %203

183:                                              ; preds = %178
  %184 = tail call ptr @msm_gem_new(ptr noundef %0, i32 noundef 16384, i32 noundef 131073) #5
  %185 = getelementptr inbounds %struct.mdp4_kms, ptr %11, i32 0, i32 11
  store ptr %184, ptr %185, align 8
  %186 = icmp ugt ptr %184, inttoptr (i32 -4096 to ptr)
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  %188 = ptrtoint ptr %184 to i32
  %189 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %189, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, i32 noundef %188) #5
  store ptr null, ptr %185, align 8
  br label %203

190:                                              ; preds = %183
  %191 = getelementptr inbounds %struct.msm_kms, ptr %11, i32 0, i32 3
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr inbounds %struct.mdp4_kms, ptr %11, i32 0, i32 12
  %194 = tail call i32 @msm_gem_get_and_pin_iova(ptr noundef %184, ptr noundef %192, ptr noundef %193) #5
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %190
  %197 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %197, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, i32 noundef %194) #5
  br label %203

198:                                              ; preds = %190
  %199 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 23
  store i32 0, ptr %199, align 4
  %200 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 24
  store i32 0, ptr %200, align 4
  %201 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 25
  store i32 2048, ptr %201, align 4
  %202 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 26
  store i32 2048, ptr %202, align 4
  br label %208

203:                                              ; preds = %196, %187, %181, %174, %125, %114, %103, %91, %85, %72, %67
  %204 = phi i32 [ %128, %125 ], [ -6, %114 ], [ %106, %103 ], [ %94, %91 ], [ %83, %85 ], [ %70, %72 ], [ %68, %67 ], [ %175, %174 ], [ %179, %181 ], [ %188, %187 ], [ %194, %196 ]
  tail call void @mdp4_destroy(ptr noundef nonnull %11)
  br label %205

205:                                              ; preds = %203, %58, %13
  %206 = phi i32 [ %204, %203 ], [ -12, %13 ], [ %59, %58 ]
  %207 = inttoptr i32 %206 to ptr
  br label %208

208:                                              ; preds = %205, %198
  %209 = phi ptr [ %207, %205 ], [ %11, %198 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret ptr %209
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_exclusive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @read_mdp_hw_revision(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @mdp4_enable(ptr noundef %0)
  %7 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @msm_readl(ptr noundef %8) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #5
  %10 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 8
  tail call void @clk_disable(ptr noundef %11) #5
  tail call void @clk_unprepare(ptr noundef %11) #5
  %12 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #5
  tail call void @clk_unprepare(ptr noundef %13) #5
  %14 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 8
  tail call void @clk_disable(ptr noundef %15) #5
  tail call void @clk_unprepare(ptr noundef %15) #5
  %16 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %17) #5
  tail call void @clk_unprepare(ptr noundef %17) #5
  %18 = lshr i32 %9, 24
  store i32 %18, ptr %1, align 4
  %19 = lshr i32 %9, 16
  %20 = and i32 %19, 255
  store i32 %20, ptr %2, align 4
  %21 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %22, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.24, i32 noundef %23, i32 noundef %20) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_iommu_new(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_address_space_create(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @modeset_init(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 23
  %7 = tail call ptr @mdp4_plane_init(ptr noundef %3, i32 noundef 0, i1 noundef zeroext false) #5
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %15

9:                                                ; preds = %15, %1
  %10 = phi i32 [ 1, %1 ], [ 2, %15 ]
  %11 = phi ptr [ %7, %1 ], [ %19, %15 ]
  %12 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.27, i32 noundef %10) #5
  %14 = ptrtoint ptr %11 to i32
  br label %154

15:                                               ; preds = %1
  %16 = load i32, ptr %6, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %6, align 4
  %18 = getelementptr %struct.msm_drm_private, ptr %5, i32 0, i32 24, i32 %16
  store ptr %7, ptr %18, align 4
  %19 = tail call ptr @mdp4_plane_init(ptr noundef %3, i32 noundef 1, i1 noundef zeroext false) #5
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %9, label %21

21:                                               ; preds = %15
  %22 = load i32, ptr %6, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %6, align 4
  %24 = getelementptr %struct.msm_drm_private, ptr %5, i32 0, i32 24, i32 %22
  store ptr %19, ptr %24, align 4
  %25 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 25
  %26 = tail call ptr @mdp4_plane_init(ptr noundef %3, i32 noundef 2, i1 noundef zeroext true) #5
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %34

28:                                               ; preds = %46, %21
  %29 = phi i32 [ 1, %21 ], [ 2, %46 ]
  %30 = phi ptr [ %26, %21 ], [ %50, %46 ]
  %31 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.28, i32 noundef %29) #5
  %33 = ptrtoint ptr %30 to i32
  br label %154

34:                                               ; preds = %21
  %35 = load i32, ptr %25, align 8
  %36 = tail call ptr @mdp4_crtc_init(ptr noundef %3, ptr noundef %26, i32 noundef %35, i32 noundef 0, i32 noundef 0) #5
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %46

38:                                               ; preds = %52, %34
  %39 = phi ptr [ %36, %34 ], [ %54, %52 ]
  %40 = phi i32 [ 0, %34 ], [ 1, %52 ]
  %41 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr [2 x ptr], ptr @modeset_init.mdp4_crtc_names, i32 0, i32 %40
  %44 = load ptr, ptr %43, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %42, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.29, ptr noundef %44) #5
  %45 = ptrtoint ptr %39 to i32
  br label %154

46:                                               ; preds = %34
  %47 = load i32, ptr %25, align 8
  %48 = add i32 %47, 1
  store i32 %48, ptr %25, align 8
  %49 = getelementptr %struct.msm_drm_private, ptr %5, i32 0, i32 26, i32 %47
  store ptr %36, ptr %49, align 4
  %50 = tail call ptr @mdp4_plane_init(ptr noundef %3, i32 noundef 3, i1 noundef zeroext true) #5
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %28, label %52

52:                                               ; preds = %46
  %53 = load i32, ptr %25, align 8
  %54 = tail call ptr @mdp4_crtc_init(ptr noundef %3, ptr noundef %50, i32 noundef %53, i32 noundef 1, i32 noundef 2) #5
  %55 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %38, label %56

56:                                               ; preds = %52
  %57 = load i32, ptr %25, align 8
  %58 = add i32 %57, 1
  store i32 %58, ptr %25, align 8
  %59 = getelementptr %struct.msm_drm_private, ptr %5, i32 0, i32 26, i32 %57
  store ptr %54, ptr %59, align 4
  br label %60

60:                                               ; preds = %151, %56
  %61 = phi i32 [ %152, %151 ], [ 0, %56 ]
  %62 = getelementptr [3 x i32], ptr @modeset_init.mdp4_intfs, i32 0, i32 %61
  %63 = load i32, ptr %62, align 4
  %64 = load ptr, ptr %2, align 8
  %65 = getelementptr inbounds %struct.drm_device, ptr %64, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  switch i32 %63, label %144 [
    i32 3, label %67
    i32 2, label %98
    i32 6, label %121
  ]

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.drm_device, ptr %64, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.device, ptr %69, i32 0, i32 25
  %71 = load ptr, ptr %70, align 8
  %72 = tail call ptr @of_graph_get_remote_node(ptr noundef %71, i32 noundef 0, i32 noundef 0) #5
  %73 = icmp eq ptr %72, null
  br i1 %73, label %151, label %74

74:                                               ; preds = %67
  %75 = tail call ptr @mdp4_lcdc_encoder_init(ptr noundef %64, ptr noundef nonnull %72) #5
  %76 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.drm_device, ptr %64, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %79, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.31) #5
  %80 = ptrtoint ptr %75 to i32
  br label %147

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.drm_encoder, ptr %75, i32 0, i32 6
  store i32 1, ptr %82, align 4
  %83 = tail call ptr @mdp4_lvds_connector_init(ptr noundef %64, ptr noundef nonnull %72, ptr noundef %75) #5
  %84 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.drm_device, ptr %64, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %87, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.32) #5
  %88 = ptrtoint ptr %83 to i32
  br label %147

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.msm_drm_private, ptr %66, i32 0, i32 28
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, 1
  store i32 %92, ptr %90, align 4
  %93 = getelementptr %struct.msm_drm_private, ptr %66, i32 0, i32 29, i32 %91
  store ptr %75, ptr %93, align 4
  %94 = getelementptr inbounds %struct.msm_drm_private, ptr %66, i32 0, i32 32
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, 1
  store i32 %96, ptr %94, align 4
  %97 = getelementptr %struct.msm_drm_private, ptr %66, i32 0, i32 33, i32 %95
  store ptr %83, ptr %97, align 4
  br label %151

98:                                               ; preds = %60
  %99 = tail call ptr @mdp4_dtv_encoder_init(ptr noundef %64) #5
  %100 = icmp ugt ptr %99, inttoptr (i32 -4096 to ptr)
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.drm_device, ptr %64, i32 0, i32 2
  %103 = load ptr, ptr %102, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %103, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.33) #5
  %104 = ptrtoint ptr %99 to i32
  br label %147

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.drm_encoder, ptr %99, i32 0, i32 6
  store i32 2, ptr %106, align 4
  %107 = getelementptr inbounds %struct.msm_drm_private, ptr %66, i32 0, i32 4
  %108 = load ptr, ptr %107, align 8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %105
  %111 = tail call i32 @msm_hdmi_modeset_init(ptr noundef nonnull %108, ptr noundef %64, ptr noundef %99) #5
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.drm_device, ptr %64, i32 0, i32 2
  %115 = load ptr, ptr %114, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %115, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.34, i32 noundef %111) #5
  br label %147

116:                                              ; preds = %110, %105
  %117 = getelementptr inbounds %struct.msm_drm_private, ptr %66, i32 0, i32 28
  %118 = load i32, ptr %117, align 4
  %119 = add i32 %118, 1
  store i32 %119, ptr %117, align 4
  %120 = getelementptr %struct.msm_drm_private, ptr %66, i32 0, i32 29, i32 %118
  store ptr %99, ptr %120, align 4
  br label %151

121:                                              ; preds = %60
  %122 = getelementptr inbounds %struct.msm_drm_private, ptr %66, i32 0, i32 5
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %151, label %125

125:                                              ; preds = %121
  %126 = tail call ptr @mdp4_dsi_encoder_init(ptr noundef %64) #5
  %127 = icmp ugt ptr %126, inttoptr (i32 -4096 to ptr)
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = ptrtoint ptr %126 to i32
  %130 = getelementptr inbounds %struct.drm_device, ptr %64, i32 0, i32 2
  %131 = load ptr, ptr %130, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %131, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.35, i32 noundef %129) #5
  br label %147

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.drm_encoder, ptr %126, i32 0, i32 6
  store i32 1, ptr %133, align 4
  %134 = getelementptr inbounds %struct.msm_drm_private, ptr %66, i32 0, i32 28
  %135 = load i32, ptr %134, align 4
  %136 = add i32 %135, 1
  store i32 %136, ptr %134, align 4
  %137 = getelementptr %struct.msm_drm_private, ptr %66, i32 0, i32 29, i32 %135
  store ptr %126, ptr %137, align 4
  %138 = load ptr, ptr %122, align 4
  %139 = tail call i32 @msm_dsi_modeset_init(ptr noundef %138, ptr noundef %64, ptr noundef %126) #5
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %151, label %141

141:                                              ; preds = %132
  %142 = getelementptr inbounds %struct.drm_device, ptr %64, i32 0, i32 2
  %143 = load ptr, ptr %142, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %143, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.36, i32 noundef %139) #5
  br label %147

144:                                              ; preds = %60
  %145 = getelementptr inbounds %struct.drm_device, ptr %64, i32 0, i32 2
  %146 = load ptr, ptr %145, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %146, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.37) #5
  br label %147

147:                                              ; preds = %144, %141, %128, %113, %101, %85, %77
  %148 = phi i32 [ %111, %113 ], [ %139, %141 ], [ -22, %144 ], [ %129, %128 ], [ %104, %101 ], [ %80, %77 ], [ %88, %85 ]
  %149 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %150 = load ptr, ptr %149, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %150, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.30, i32 noundef %61, i32 noundef %148) #5
  br label %154

151:                                              ; preds = %132, %121, %116, %89, %67
  %152 = add nuw nsw i32 %61, 1
  %153 = icmp eq i32 %152, 3
  br i1 %153, label %154, label %60

154:                                              ; preds = %151, %147, %38, %28, %9
  %155 = phi i32 [ %14, %9 ], [ %33, %28 ], [ %45, %38 ], [ %148, %147 ], [ 0, %151 ]
  ret i32 %155
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_new(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_get_and_pin_iova(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_kms, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 12
  %9 = load i64, ptr %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 11
  %13 = load ptr, ptr %12, align 8
  tail call void @msm_gem_unpin_iova(ptr noundef %13, ptr noundef %7) #5
  br label %14

14:                                               ; preds = %11, %1
  %15 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 11
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %16) #5, !srcloc !10
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %16, ptr nonnull %16, i32 1, ptr nonnull elementtype(i32) %16) #5, !srcloc !11
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = icmp sgt i32 %20, 0
  br i1 %23, label %26, label %24, !prof !12

24:                                               ; preds = %22
  tail call void @refcount_warn_saturate(ptr noundef nonnull %16, i32 noundef 3) #5
  br label %26

25:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  tail call void @drm_gem_object_free(ptr noundef nonnull %16) #5
  br label %26

26:                                               ; preds = %25, %24, %22, %14
  %27 = icmp eq ptr %7, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.msm_gem_address_space, ptr %7, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef %30) #5
  tail call void @msm_gem_address_space_put(ptr noundef nonnull %7) #5
  br label %33

33:                                               ; preds = %28, %26
  %34 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 10
  %35 = load i8, ptr %34, align 4, !range !14
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #5
  br label %38

38:                                               ; preds = %37, %33
  %39 = getelementptr %struct.msm_kms, ptr %0, i32 0, i32 9, i32 0
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %39) #5
  %40 = getelementptr %struct.msm_kms, ptr %0, i32 0, i32 9, i32 1
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %40) #5
  %41 = getelementptr %struct.msm_kms, ptr %0, i32 0, i32 9, i32 2
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %41) #5
  %42 = getelementptr %struct.msm_kms, ptr %0, i32 0, i32 9, i32 3
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %42) #5
  %43 = getelementptr %struct.msm_kms, ptr %0, i32 0, i32 9, i32 4
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %43) #5
  %44 = getelementptr %struct.msm_kms, ptr %0, i32 0, i32 9, i32 5
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %44) #5
  %45 = getelementptr %struct.msm_kms, ptr %0, i32 0, i32 9, i32 6
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %45) #5
  %46 = getelementptr %struct.msm_kms, ptr %0, i32 0, i32 9, i32 7
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %46) #5
  tail call void @kfree(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_atomic_init_pending_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdp4_hw_init(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #5
  %7 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr i8, ptr %12, i32 192
  tail call void @msm_writel(i32 noundef 117964799, ptr noundef %13) #5
  %14 = load ptr, ptr %11, align 8
  %15 = getelementptr i8, ptr %14, i32 196
  tail call void @msm_writel(i32 noundef 50806591, ptr noundef %15) #5
  br label %16

16:                                               ; preds = %10, %1
  %17 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %18, i32 112
  tail call void @msm_writel(i32 noundef 3, ptr noundef %19) #5
  %20 = load ptr, ptr %17, align 8
  %21 = getelementptr i8, ptr %20, i32 76
  tail call void @msm_writel(i32 noundef 8738, ptr noundef %21) #5
  %22 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 5
  %23 = load ptr, ptr %22, align 8
  %24 = tail call i32 @clk_get_rate(ptr noundef %23) #5
  %25 = load i32, ptr %7, align 4
  %26 = icmp sgt i32 %25, 0
  %27 = icmp ugt i32 %24, 89999999
  %28 = select i1 %26, i1 true, i1 %27
  %29 = select i1 %28, i32 71, i32 39
  %30 = select i1 %28, i32 71, i32 67
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %29, i32 noundef %30) #5
  %31 = load ptr, ptr %17, align 8
  %32 = getelementptr i8, ptr %31, i32 593924
  tail call void @msm_writel(i32 noundef %29, ptr noundef %32) #5
  %33 = load ptr, ptr %17, align 8
  %34 = getelementptr i8, ptr %33, i32 724996
  tail call void @msm_writel(i32 noundef %29, ptr noundef %34) #5
  %35 = load ptr, ptr %17, align 8
  %36 = getelementptr i8, ptr %35, i32 135172
  tail call void @msm_writel(i32 noundef %30, ptr noundef %36) #5
  %37 = load ptr, ptr %17, align 8
  %38 = getelementptr i8, ptr %37, i32 200708
  tail call void @msm_writel(i32 noundef %30, ptr noundef %38) #5
  %39 = load ptr, ptr %17, align 8
  %40 = getelementptr i8, ptr %39, i32 266244
  tail call void @msm_writel(i32 noundef %30, ptr noundef %40) #5
  %41 = load ptr, ptr %17, align 8
  %42 = getelementptr i8, ptr %41, i32 331780
  tail call void @msm_writel(i32 noundef %30, ptr noundef %42) #5
  %43 = load i32, ptr %7, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %16
  %46 = load ptr, ptr %17, align 8
  %47 = getelementptr i8, ptr %46, i32 65788
  tail call void @msm_writel(i32 noundef 1, ptr noundef %47) #5
  br label %48

48:                                               ; preds = %45, %16
  %49 = load ptr, ptr %17, align 8
  %50 = getelementptr i8, ptr %49, i32 65792
  tail call void @msm_writel(i32 noundef 0, ptr noundef %50) #5
  %51 = load ptr, ptr %17, align 8
  %52 = getelementptr i8, ptr %51, i32 131160
  tail call void @msm_writel(i32 noundef 0, ptr noundef %52) #5
  %53 = load ptr, ptr %17, align 8
  %54 = getelementptr i8, ptr %53, i32 196696
  tail call void @msm_writel(i32 noundef 0, ptr noundef %54) #5
  %55 = load ptr, ptr %17, align 8
  %56 = getelementptr i8, ptr %55, i32 589936
  tail call void @msm_writel(i32 noundef 0, ptr noundef %56) #5
  %57 = load ptr, ptr %17, align 8
  %58 = getelementptr i8, ptr %57, i32 655400
  tail call void @msm_writel(i32 noundef 0, ptr noundef %58) #5
  %59 = load ptr, ptr %17, align 8
  %60 = getelementptr i8, ptr %59, i32 98816
  tail call void @msm_writel(i32 noundef 0, ptr noundef %60) #5
  %61 = load ptr, ptr %17, align 8
  %62 = getelementptr i8, ptr %61, i32 557568
  tail call void @msm_writel(i32 noundef 0, ptr noundef %62) #5
  %63 = load i32, ptr %7, align 4
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %68

65:                                               ; preds = %48
  %66 = load ptr, ptr %17, align 8
  %67 = getelementptr i8, ptr %66, i32 60
  tail call void @msm_writel(i32 noundef 1, ptr noundef %67) #5
  br label %68

68:                                               ; preds = %65, %48
  %69 = load ptr, ptr %4, align 4
  %70 = tail call i32 @__pm_runtime_idle(ptr noundef %69, i32 noundef 4) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp4_irq_preinstall(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp4_irq_postinstall(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp4_irq_uninstall(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp4_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp4_enable_vblank(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp4_disable_vblank(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_enable_commit(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call i32 @mdp4_enable(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_disable_commit(ptr nocapture noundef readonly %0) #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #5
  %2 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  %4 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  %6 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 8
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  %8 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  tail call void @clk_unprepare(ptr noundef %9) #5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @mdp4_prepare_commit(ptr nocapture noundef %0, ptr nocapture noundef %1) #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @mdp4_flush_commit(ptr nocapture noundef %0, i32 noundef %1) #4 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_wait_flush(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %24, label %8

8:                                                ; preds = %19, %2
  %9 = phi ptr [ %20, %19 ], [ %4, %2 ]
  %10 = phi ptr [ %21, %19 ], [ %6, %2 ]
  %11 = getelementptr i8, ptr %10, i32 72
  %12 = load i32, ptr %11, align 8
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %8
  %17 = getelementptr i8, ptr %10, i32 -8
  tail call void @mdp4_crtc_wait_for_commit_done(ptr noundef %17) #5
  %18 = load ptr, ptr %3, align 8
  br label %19

19:                                               ; preds = %16, %8
  %20 = phi ptr [ %18, %16 ], [ %9, %8 ]
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 20
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %8

24:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @mdp4_complete_commit(ptr nocapture noundef %0, i32 noundef %1) #4 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp_get_format(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdp4_round_pixclk(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_encoder, ptr %2, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 @mdp4_dtv_round_pixclk(ptr noundef %2, i32 noundef %1) #5
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ %1, %3 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp4_set_irqmask(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp4_crtc_wait_for_commit_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp4_dtv_round_pixclk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp4_plane_init(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp4_crtc_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp4_lcdc_encoder_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp4_lvds_connector_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp4_dtv_encoder_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_hdmi_modeset_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp4_dsi_encoder_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_modeset_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_unpin_iova(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_address_space_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_atomic_destroy_pending_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
!9 = !{i64 2148005997}
!10 = !{i64 402158, i64 2147892129, i64 2147892155, i64 2147892202, i64 2147892224, i64 2147892252, i64 2147892272}
!11 = !{i64 2147908156, i64 2147908188, i64 2147908217, i64 2147908251, i64 2147908282, i64 2147908305}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149253515}
!14 = !{i8 0, i8 2}
