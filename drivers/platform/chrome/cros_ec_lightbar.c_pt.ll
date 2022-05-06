; ModuleID = '/llk/IR/drivers/platform/chrome/cros_ec_lightbar.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_ec_lightbar.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cros_ec_dev = type { %struct.device, ptr, ptr, ptr, i8, i16, %struct.ec_response_get_features }
%struct.ec_response_get_features = type { [2 x i32] }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.ec_params_lightbar = type { i8, %union.anon.63 }
%union.anon.63 = type <{ %struct.lightbar_params_v1, [65 x i8] }>
%struct.lightbar_params_v1 = type { i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [3 x i8], [2 x [4 x i8]], [2 x [4 x i8]], i8, [8 x %struct.rgb_s] }
%struct.rgb_s = type { i8, i8, i8 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.46, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%struct.llist_node = type { ptr }
%union.anon.17 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.46 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.66 = type { i8, i8, i8, i8 }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.lightbar_program = type { i8, [192 x i8] }

@__UNIQUE_ID_license211 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [64 x i8] c"description=Expose the Chromebook Pixel's lightbar to userspace\00", section ".modinfo", align 1
@__UNIQUE_ID_alias213 = internal constant [32 x i8] c"alias=platform:cros-ec-lightbar\00", section ".modinfo", align 1
@cros_ec_lightbar_driver = internal global %struct.platform_driver { ptr @cros_ec_lightbar_probe, ptr @cros_ec_lightbar_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_lightbar_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [17 x i8] c"cros-ec-lightbar\00", align 1
@cros_ec_lightbar_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @cros_ec_lightbar_suspend, ptr @cros_ec_lightbar_resume, ptr @cros_ec_lightbar_suspend, ptr @cros_ec_lightbar_resume, ptr @cros_ec_lightbar_suspend, ptr @cros_ec_lightbar_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"cros_ec\00", align 1
@cros_ec_lightbar_attr_group = internal constant %struct.attribute_group { ptr @.str.3, ptr null, ptr null, ptr @__lb_cmds_attrs, ptr null }, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to create %s attributes. err=%d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@lb_throttle.last_access = internal unnamed_addr global i32 0, align 4
@lb_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @lb_mutex, i64 12), ptr getelementptr (i8, ptr @lb_mutex, i64 12) } }, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@lb_interval_jiffies = internal unnamed_addr global i32 5, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"lightbar\00", align 1
@__lb_cmds_attrs = internal global [8 x ptr] [ptr @dev_attr_interval_msec, ptr @dev_attr_version, ptr @dev_attr_brightness, ptr @dev_attr_led_rgb, ptr @dev_attr_sequence, ptr @dev_attr_program, ptr @dev_attr_userspace_control, ptr null], align 4
@dev_attr_interval_msec = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 420 }, ptr @interval_msec_show, ptr @interval_msec_store }, align 4
@dev_attr_version = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @version_show, ptr null }, align 4
@dev_attr_brightness = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 128 }, ptr null, ptr @brightness_store }, align 4
@dev_attr_led_rgb = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 128 }, ptr null, ptr @led_rgb_store }, align 4
@dev_attr_sequence = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420 }, ptr @sequence_show, ptr @sequence_store }, align 4
@dev_attr_program = internal global %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 128 }, ptr null, ptr @program_store }, align 4
@dev_attr_userspace_control = internal global %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420 }, ptr @userspace_control_show, ptr @userspace_control_store }, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"interval_msec\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"led_rgb\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"XFER / EC ERROR %d / %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@seqname = internal unnamed_addr constant [13 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"S5\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"S3\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"S0\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"S5S3\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"S3S0\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"S0S3\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"S3S5\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"STOP\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"RUN\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"KONAMI\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"TAP\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"PROGRAM\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"program\00", align 1
@.str.29 = private unnamed_addr constant [48 x i8] c"Program is %u bytes, too long to send (max: %u)\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"Copying %zu byte program to EC\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"userspace_control\00", align 1
@userspace_control = internal unnamed_addr global i8 0, align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias213, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_license211], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_ec_lightbar_driver, ptr noundef nonnull @__this_module) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_ec_lightbar_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_lightbar_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.cros_ec_dev, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(8) @.str.1)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %1
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 214) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %14
  store i32 0, ptr %16, align 8
  %19 = getelementptr inbounds %struct.cros_ec_dev, ptr %6, i32 0, i32 5
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = add nuw nsw i32 %21, 40
  %23 = getelementptr inbounds %struct.cros_ec_command, ptr %16, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.cros_ec_command, ptr %16, i32 0, i32 2
  %25 = getelementptr inbounds %struct.cros_ec_command, ptr %16, i32 0, i32 3
  store i32 128, ptr %25, align 4
  %26 = getelementptr inbounds %struct.cros_ec_command, ptr %16, i32 0, i32 5
  store i8 12, ptr %26, align 4
  store i32 1, ptr %24, align 8
  %27 = getelementptr inbounds %struct.cros_ec_command, ptr %16, i32 0, i32 4
  store i32 8, ptr %27, align 8
  %28 = getelementptr inbounds %struct.cros_ec_dev, ptr %6, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %29, ptr noundef nonnull %16) #13
  %31 = icmp slt i32 %30, 0
  %32 = icmp ne i32 %30, -22
  %33 = and i1 %31, %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %18
  %35 = load i32, ptr %27, align 8
  switch i32 %35, label %36 [
    i32 3, label %37
    i32 0, label %37
  ]

36:                                               ; preds = %34, %18
  tail call void @kfree(ptr noundef nonnull %16) #13
  br label %41

37:                                               ; preds = %34, %34
  tail call void @kfree(ptr noundef nonnull %16) #13
  tail call fastcc void @lb_manual_suspend_ctrl(ptr noundef %6, i8 noundef zeroext 1)
  %38 = tail call i32 @sysfs_create_group(ptr noundef %6, ptr noundef nonnull @cros_ec_lightbar_attr_group) #13
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %38) #15
  br label %41

41:                                               ; preds = %40, %37, %36, %14, %1
  %42 = phi i32 [ -19, %1 ], [ %38, %40 ], [ %38, %37 ], [ -19, %36 ], [ -19, %14 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_lightbar_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void @sysfs_remove_group(ptr noundef %5, ptr noundef nonnull @cros_ec_lightbar_attr_group) #13
  tail call fastcc void @lb_manual_suspend_ctrl(ptr noundef %5, i8 noundef zeroext 0)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lb_manual_suspend_ctrl(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #2 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 214) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %37, label %6

6:                                                ; preds = %2
  store i32 0, ptr %4, align 8
  %7 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 5
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = add nuw nsw i32 %9, 40
  %11 = getelementptr inbounds %struct.cros_ec_command, ptr %4, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cros_ec_command, ptr %4, i32 0, i32 2
  store i32 194, ptr %12, align 8
  %13 = getelementptr inbounds %struct.cros_ec_command, ptr %4, i32 0, i32 3
  store i32 128, ptr %13, align 4
  %14 = getelementptr inbounds %struct.cros_ec_command, ptr %4, i32 0, i32 5
  store i8 19, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ec_params_lightbar, ptr %14, i32 0, i32 1
  store i8 %1, ptr %15, align 1
  tail call void @mutex_lock(ptr noundef nonnull @lb_mutex) #13
  %16 = load volatile i32, ptr @jiffies, align 64
  %17 = load i32, ptr @lb_throttle.last_access, align 4
  %18 = load i32, ptr @lb_interval_jiffies, align 4
  %19 = add i32 %18, %17
  %20 = sub i32 %16, %19
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %6
  %23 = sub i32 %19, %16
  %24 = tail call ptr @llvm.thread.pointer() #13
  %25 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 1
  store volatile i32 1, ptr %25, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %26 = tail call i32 @schedule_timeout(i32 noundef %23) #13
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = load volatile i32, ptr @jiffies, align 64
  br label %31

30:                                               ; preds = %22
  tail call void @mutex_unlock(ptr noundef nonnull @lb_mutex) #13
  br label %36

31:                                               ; preds = %28, %6
  %32 = phi i32 [ %29, %28 ], [ %16, %6 ]
  store i32 %32, ptr @lb_throttle.last_access, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @lb_mutex) #13
  %33 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %34, ptr noundef nonnull %4) #13
  br label %36

36:                                               ; preds = %31, %30
  tail call void @kfree(ptr noundef nonnull %4) #13
  br label %37

37:                                               ; preds = %36, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @interval_msec_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = load i32, ptr @lb_interval_jiffies, align 4
  %5 = mul i32 %4, 1000
  %6 = udiv i32 %5, 100
  %7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.5, i32 noundef %6) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @interval_msec_store(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4
  %10 = mul i32 %9, 100
  %11 = udiv i32 %10, 1000
  store i32 %11, ptr @lb_interval_jiffies, align 4
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %3, %8 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @version_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  tail call void @mutex_lock(ptr noundef nonnull @lb_mutex) #13
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = load i32, ptr @lb_throttle.last_access, align 4
  %6 = load i32, ptr @lb_interval_jiffies, align 4
  %7 = add i32 %6, %5
  %8 = sub i32 %4, %7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = sub i32 %7, %4
  %12 = tail call ptr @llvm.thread.pointer() #13
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 1
  store volatile i32 1, ptr %13, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %14 = tail call i32 @schedule_timeout(i32 noundef %11) #13
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = load volatile i32, ptr @jiffies, align 64
  br label %19

18:                                               ; preds = %10
  tail call void @mutex_unlock(ptr noundef nonnull @lb_mutex) #13
  br label %51

19:                                               ; preds = %16, %3
  %20 = phi i32 [ %17, %16 ], [ %4, %3 ]
  store i32 %20, ptr @lb_throttle.last_access, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @lb_mutex) #13
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 214) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %51, label %24

24:                                               ; preds = %19
  store i32 0, ptr %22, align 8
  %25 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 5
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = add nuw nsw i32 %27, 40
  %29 = getelementptr inbounds %struct.cros_ec_command, ptr %22, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.cros_ec_command, ptr %22, i32 0, i32 2
  %31 = getelementptr inbounds %struct.cros_ec_command, ptr %22, i32 0, i32 3
  store i32 128, ptr %31, align 4
  %32 = getelementptr inbounds %struct.cros_ec_command, ptr %22, i32 0, i32 5
  store i8 12, ptr %32, align 4
  store i32 1, ptr %30, align 8
  %33 = getelementptr inbounds %struct.cros_ec_command, ptr %22, i32 0, i32 4
  store i32 8, ptr %33, align 8
  %34 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8
  %36 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %35, ptr noundef nonnull %22) #13
  %37 = icmp slt i32 %36, 0
  %38 = icmp ne i32 %36, -22
  %39 = and i1 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %24
  %41 = load i32, ptr %33, align 8
  switch i32 %41, label %46 [
    i32 3, label %47
    i32 0, label %42
  ]

42:                                               ; preds = %40
  %43 = load i32, ptr %32, align 4
  %44 = getelementptr inbounds %struct.cros_ec_command, ptr %22, i32 1, i32 1
  %45 = load i32, ptr %44, align 8
  br label %47

46:                                               ; preds = %40, %24
  tail call void @kfree(ptr noundef nonnull %22) #13
  br label %51

47:                                               ; preds = %42, %40
  %48 = phi i32 [ %43, %42 ], [ 0, %40 ]
  %49 = phi i32 [ %45, %42 ], [ 0, %40 ]
  tail call void @kfree(ptr noundef nonnull %22) #13
  %50 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.7, i32 noundef %48, i32 noundef %49) #13
  br label %51

51:                                               ; preds = %47, %46, %19, %18
  %52 = phi i32 [ %50, %47 ], [ -4, %18 ], [ -5, %46 ], [ -5, %19 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brightness_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %48

8:                                                ; preds = %4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %10 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 214) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %48, label %12

12:                                               ; preds = %8
  store i32 0, ptr %10, align 8
  %13 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 5
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = add nuw nsw i32 %15, 40
  %17 = getelementptr inbounds %struct.cros_ec_command, ptr %10, i32 0, i32 1
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.cros_ec_command, ptr %10, i32 0, i32 2
  store i32 194, ptr %18, align 8
  %19 = getelementptr inbounds %struct.cros_ec_command, ptr %10, i32 0, i32 3
  store i32 128, ptr %19, align 4
  %20 = getelementptr inbounds %struct.cros_ec_command, ptr %10, i32 0, i32 5
  store i8 4, ptr %20, align 4
  %21 = load i32, ptr %5, align 4
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.ec_params_lightbar, ptr %20, i32 0, i32 1
  store i8 %22, ptr %23, align 1
  call void @mutex_lock(ptr noundef nonnull @lb_mutex) #13
  %24 = load volatile i32, ptr @jiffies, align 64
  %25 = load i32, ptr @lb_throttle.last_access, align 4
  %26 = load i32, ptr @lb_interval_jiffies, align 4
  %27 = add i32 %26, %25
  %28 = sub i32 %24, %27
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %12
  %31 = sub i32 %27, %24
  %32 = tail call ptr @llvm.thread.pointer() #13
  %33 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 1
  store volatile i32 1, ptr %33, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %34 = call i32 @schedule_timeout(i32 noundef %31) #13
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = load volatile i32, ptr @jiffies, align 64
  br label %39

38:                                               ; preds = %30
  call void @mutex_unlock(ptr noundef nonnull @lb_mutex) #13
  br label %46

39:                                               ; preds = %36, %12
  %40 = phi i32 [ %37, %36 ], [ %24, %12 ]
  store i32 %40, ptr @lb_throttle.last_access, align 4
  call void @mutex_unlock(ptr noundef nonnull @lb_mutex) #13
  %41 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8
  %43 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %42, ptr noundef nonnull %10) #13
  %44 = icmp slt i32 %43, 0
  %45 = select i1 %44, i32 %43, i32 %3
  br label %46

46:                                               ; preds = %39, %38
  %47 = phi i32 [ -4, %38 ], [ %45, %39 ]
  call void @kfree(ptr noundef nonnull %10) #13
  br label %48

48:                                               ; preds = %46, %8, %4
  %49 = phi i32 [ %47, %46 ], [ -22, %4 ], [ -12, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @led_rgb_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = alloca [4 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !9
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 214) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %113, label %9

9:                                                ; preds = %4
  store i32 0, ptr %7, align 8
  %10 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 5
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = add nuw nsw i32 %12, 40
  %14 = getelementptr inbounds %struct.cros_ec_command, ptr %7, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.cros_ec_command, ptr %7, i32 0, i32 2
  store i32 194, ptr %15, align 8
  %16 = getelementptr inbounds %struct.cros_ec_command, ptr %7, i32 0, i32 3
  store i32 128, ptr %16, align 4
  %17 = load i8, ptr %2, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %106, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.cros_ec_command, ptr %7, i32 0, i32 5
  %21 = getelementptr inbounds %struct.ec_params_lightbar, ptr %20, i32 0, i32 1
  %22 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 1
  %23 = getelementptr inbounds %struct.anon.66, ptr %21, i32 0, i32 1
  %24 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 2
  %25 = getelementptr inbounds %struct.anon.66, ptr %21, i32 0, i32 2
  %26 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 3
  %27 = getelementptr inbounds %struct.anon.66, ptr %21, i32 0, i32 3
  %28 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 1
  br label %29

29:                                               ; preds = %94, %19
  %30 = phi i8 [ %17, %19 ], [ %95, %94 ]
  %31 = phi i32 [ 0, %19 ], [ %91, %94 ]
  %32 = phi i32 [ 0, %19 ], [ %90, %94 ]
  %33 = phi i32 [ 0, %19 ], [ %89, %94 ]
  %34 = phi ptr [ %2, %19 ], [ %96, %94 ]
  br label %35

35:                                               ; preds = %43, %29
  %36 = phi i8 [ %30, %29 ], [ %45, %43 ]
  %37 = phi ptr [ %34, %29 ], [ %44, %43 ]
  %38 = zext i8 %36 to i32
  %39 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %38
  %40 = load i8, ptr %39, align 1
  %41 = and i8 %40, 32
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %35
  %44 = getelementptr i8, ptr %37, i32 1
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %106, label %35

47:                                               ; preds = %35
  %48 = add i32 %33, 1
  %49 = getelementptr [4 x i32], ptr %5, i32 0, i32 %33
  %50 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %37, ptr noundef nonnull @.str.10, ptr noundef %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %106, label %52

52:                                               ; preds = %47
  %53 = icmp eq i32 %48, 4
  br i1 %53, label %54, label %88

54:                                               ; preds = %52
  store i8 7, ptr %20, align 4
  %55 = load i32, ptr %5, align 4
  %56 = trunc i32 %55 to i8
  store i8 %56, ptr %21, align 1
  %57 = load i32, ptr %22, align 4
  %58 = trunc i32 %57 to i8
  store i8 %58, ptr %23, align 2
  %59 = load i32, ptr %24, align 4
  %60 = trunc i32 %59 to i8
  store i8 %60, ptr %25, align 1
  %61 = load i32, ptr %26, align 4
  %62 = trunc i32 %61 to i8
  store i8 %62, ptr %27, align 8
  %63 = add i32 %32, 1
  %64 = and i32 %32, 3
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %54
  call void @mutex_lock(ptr noundef nonnull @lb_mutex) #13
  %67 = load volatile i32, ptr @jiffies, align 64
  %68 = load i32, ptr @lb_throttle.last_access, align 4
  %69 = load i32, ptr @lb_interval_jiffies, align 4
  %70 = add i32 %69, %68
  %71 = sub i32 %67, %70
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = sub i32 %70, %67
  %75 = tail call ptr @llvm.thread.pointer() #13
  %76 = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 1
  store volatile i32 1, ptr %76, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %77 = call i32 @schedule_timeout(i32 noundef %74) #13
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %73
  %80 = load volatile i32, ptr @jiffies, align 64
  br label %81

81:                                               ; preds = %79, %66
  %82 = phi i32 [ %80, %79 ], [ %67, %66 ]
  store i32 %82, ptr @lb_throttle.last_access, align 4
  call void @mutex_unlock(ptr noundef nonnull @lb_mutex) #13
  br label %84

83:                                               ; preds = %73
  call void @mutex_unlock(ptr noundef nonnull @lb_mutex) #13
  br label %106

84:                                               ; preds = %81, %54
  %85 = load ptr, ptr %28, align 8
  %86 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %85, ptr noundef nonnull %7) #13
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %106, label %88

88:                                               ; preds = %84, %52
  %89 = phi i32 [ %48, %52 ], [ 0, %84 ]
  %90 = phi i32 [ %32, %52 ], [ %63, %84 ]
  %91 = phi i32 [ %31, %52 ], [ 1, %84 ]
  %92 = load i8, ptr %37, align 1
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %102, %88
  %95 = phi i8 [ %104, %102 ], [ %92, %88 ]
  %96 = phi ptr [ %103, %102 ], [ %37, %88 ]
  %97 = zext i8 %95 to i32
  %98 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %97
  %99 = load i8, ptr %98, align 1
  %100 = and i8 %99, 32
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %29

102:                                              ; preds = %94
  %103 = getelementptr i8, ptr %96, i32 1
  %104 = load i8, ptr %103, align 1
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %94

106:                                              ; preds = %102, %88, %84, %83, %47, %43, %9
  %107 = phi i32 [ 4, %83 ], [ 0, %9 ], [ %89, %102 ], [ %33, %43 ], [ %89, %88 ], [ 4, %84 ], [ %48, %47 ]
  %108 = phi i32 [ %31, %83 ], [ 0, %9 ], [ %91, %102 ], [ %31, %43 ], [ %91, %88 ], [ %31, %84 ], [ %31, %47 ]
  call void @kfree(ptr noundef nonnull %7) #13
  %109 = icmp ne i32 %108, 0
  %110 = icmp eq i32 %107, 0
  %111 = select i1 %109, i1 %110, i1 false
  %112 = select i1 %111, i32 %3, i32 -22
  br label %113

113:                                              ; preds = %106, %4
  %114 = phi i32 [ %112, %106 ], [ -12, %4 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  ret i32 %114
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sequence_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 214) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %53, label %7

7:                                                ; preds = %3
  store i32 0, ptr %5, align 8
  %8 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 5
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = add nuw nsw i32 %10, 40
  %12 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 2
  store i32 194, ptr %13, align 8
  %14 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 3
  store i32 128, ptr %14, align 4
  %15 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 5
  store i8 8, ptr %15, align 4
  tail call void @mutex_lock(ptr noundef nonnull @lb_mutex) #13
  %16 = load volatile i32, ptr @jiffies, align 64
  %17 = load i32, ptr @lb_throttle.last_access, align 4
  %18 = load i32, ptr @lb_interval_jiffies, align 4
  %19 = add i32 %18, %17
  %20 = sub i32 %16, %19
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %7
  %23 = sub i32 %19, %16
  %24 = tail call ptr @llvm.thread.pointer() #13
  %25 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 1
  store volatile i32 1, ptr %25, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %26 = tail call i32 @schedule_timeout(i32 noundef %23) #13
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = load volatile i32, ptr @jiffies, align 64
  br label %31

30:                                               ; preds = %22
  tail call void @mutex_unlock(ptr noundef nonnull @lb_mutex) #13
  br label %51

31:                                               ; preds = %28, %7
  %32 = phi i32 [ %29, %28 ], [ %16, %7 ]
  store i32 %32, ptr @lb_throttle.last_access, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @lb_mutex) #13
  %33 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %34, ptr noundef nonnull %5) #13
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.12, i32 noundef %35, i32 noundef %39) #13
  br label %51

41:                                               ; preds = %31
  %42 = load i8, ptr %15, align 4
  %43 = zext i8 %42 to i32
  %44 = icmp ugt i8 %42, 12
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.13, i32 noundef %43) #13
  br label %51

47:                                               ; preds = %41
  %48 = getelementptr [13 x ptr], ptr @seqname, i32 0, i32 %43
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef %49) #13
  br label %51

51:                                               ; preds = %47, %45, %37, %30
  %52 = phi i32 [ -4, %30 ], [ %40, %37 ], [ %46, %45 ], [ %50, %47 ]
  tail call void @kfree(ptr noundef nonnull %5) #13
  br label %53

53:                                               ; preds = %51, %3
  %54 = phi i32 [ %52, %51 ], [ -12, %3 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sequence_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %16, %4
  %8 = phi i32 [ %17, %16 ], [ 0, %4 ]
  %9 = getelementptr i8, ptr %2, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 7
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %7
  %17 = add nuw i32 %8, 1
  %18 = icmp eq i32 %17, %3
  br i1 %18, label %19, label %7

19:                                               ; preds = %16, %7, %4
  %20 = phi i32 [ 0, %4 ], [ %8, %7 ], [ %3, %16 ]
  %21 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.15, ptr noundef %2, i32 noundef %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %62, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.16, ptr noundef %2, i32 noundef %20)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %62, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.17, ptr noundef %2, i32 noundef %20)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %62, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.18, ptr noundef %2, i32 noundef %20)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %62, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.19, ptr noundef %2, i32 noundef %20)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %62, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.20, ptr noundef %2, i32 noundef %20)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %62, label %38

38:                                               ; preds = %35
  %39 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.21, ptr noundef %2, i32 noundef %20)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %62, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.22, ptr noundef %2, i32 noundef %20)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %41
  %45 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.23, ptr noundef %2, i32 noundef %20)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.24, ptr noundef %2, i32 noundef %20)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %47
  %51 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.25, ptr noundef %2, i32 noundef %20)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %50
  %54 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.26, ptr noundef %2, i32 noundef %20)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = tail call i32 @strncasecmp(ptr noundef nonnull @.str.27, ptr noundef %2, i32 noundef %20)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  store i32 13, ptr %5, align 4
  %60 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %104

62:                                               ; preds = %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %19
  %63 = phi i32 [ 0, %19 ], [ 1, %23 ], [ 2, %26 ], [ 3, %29 ], [ 4, %32 ], [ 5, %35 ], [ 6, %38 ], [ 7, %41 ], [ 8, %44 ], [ 9, %47 ], [ 10, %50 ], [ 11, %53 ], [ 12, %56 ]
  store i32 %63, ptr %5, align 4
  br label %64

64:                                               ; preds = %62, %59
  %65 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %66 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3264, i32 noundef 214) #14
  %67 = icmp eq ptr %66, null
  br i1 %67, label %104, label %68

68:                                               ; preds = %64
  store i32 0, ptr %66, align 8
  %69 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 5
  %70 = load i16, ptr %69, align 2
  %71 = zext i16 %70 to i32
  %72 = add nuw nsw i32 %71, 40
  %73 = getelementptr inbounds %struct.cros_ec_command, ptr %66, i32 0, i32 1
  store i32 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.cros_ec_command, ptr %66, i32 0, i32 2
  store i32 194, ptr %74, align 8
  %75 = getelementptr inbounds %struct.cros_ec_command, ptr %66, i32 0, i32 3
  store i32 128, ptr %75, align 4
  %76 = getelementptr inbounds %struct.cros_ec_command, ptr %66, i32 0, i32 5
  store i8 5, ptr %76, align 4
  %77 = load i32, ptr %5, align 4
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds %struct.ec_params_lightbar, ptr %76, i32 0, i32 1
  store i8 %78, ptr %79, align 1
  call void @mutex_lock(ptr noundef nonnull @lb_mutex) #13
  %80 = load volatile i32, ptr @jiffies, align 64
  %81 = load i32, ptr @lb_throttle.last_access, align 4
  %82 = load i32, ptr @lb_interval_jiffies, align 4
  %83 = add i32 %82, %81
  %84 = sub i32 %80, %83
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %68
  %87 = sub i32 %83, %80
  %88 = tail call ptr @llvm.thread.pointer() #13
  %89 = getelementptr inbounds %struct.task_struct, ptr %88, i32 0, i32 1
  store volatile i32 1, ptr %89, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %90 = call i32 @schedule_timeout(i32 noundef %87) #13
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %86
  %93 = load volatile i32, ptr @jiffies, align 64
  br label %95

94:                                               ; preds = %86
  call void @mutex_unlock(ptr noundef nonnull @lb_mutex) #13
  br label %102

95:                                               ; preds = %92, %68
  %96 = phi i32 [ %93, %92 ], [ %80, %68 ]
  store i32 %96, ptr @lb_throttle.last_access, align 4
  call void @mutex_unlock(ptr noundef nonnull @lb_mutex) #13
  %97 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 1
  %98 = load ptr, ptr %97, align 8
  %99 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %98, ptr noundef nonnull %66) #13
  %100 = icmp slt i32 %99, 0
  %101 = select i1 %100, i32 %99, i32 %3
  br label %102

102:                                              ; preds = %95, %94
  %103 = phi i32 [ -4, %94 ], [ %101, %95 ]
  call void @kfree(ptr noundef nonnull %66) #13
  br label %104

104:                                              ; preds = %102, %64, %59
  %105 = phi i32 [ %103, %102 ], [ %60, %59 ], [ -12, %64 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %105
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @program_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.cros_ec_device, ptr %6, i32 0, i32 5
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 194)
  %11 = add nsw i32 %10, -2
  %12 = icmp ult i32 %11, %3
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %3, i32 noundef %11) #15
  br label %54

14:                                               ; preds = %4
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 214) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %54, label %18

18:                                               ; preds = %14
  store i32 0, ptr %16, align 8
  %19 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 5
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = add nuw nsw i32 %21, 40
  %23 = getelementptr inbounds %struct.cros_ec_command, ptr %16, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.cros_ec_command, ptr %16, i32 0, i32 2
  store i32 194, ptr %24, align 8
  %25 = getelementptr inbounds %struct.cros_ec_command, ptr %16, i32 0, i32 3
  store i32 128, ptr %25, align 4
  tail call void @mutex_lock(ptr noundef nonnull @lb_mutex) #13
  %26 = load volatile i32, ptr @jiffies, align 64
  %27 = load i32, ptr @lb_throttle.last_access, align 4
  %28 = load i32, ptr @lb_interval_jiffies, align 4
  %29 = add i32 %28, %27
  %30 = sub i32 %26, %29
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %18
  %33 = sub i32 %29, %26
  %34 = tail call ptr @llvm.thread.pointer() #13
  %35 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 1
  store volatile i32 1, ptr %35, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %36 = tail call i32 @schedule_timeout(i32 noundef %33) #13
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load volatile i32, ptr @jiffies, align 64
  br label %41

40:                                               ; preds = %32
  tail call void @mutex_unlock(ptr noundef nonnull @lb_mutex) #13
  br label %52

41:                                               ; preds = %38, %18
  %42 = phi i32 [ %39, %38 ], [ %26, %18 ]
  store i32 %42, ptr @lb_throttle.last_access, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @lb_mutex) #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %3) #15
  %43 = getelementptr inbounds %struct.cros_ec_command, ptr %16, i32 0, i32 5
  store i8 18, ptr %43, align 4
  %44 = trunc i32 %3 to i8
  %45 = getelementptr inbounds %struct.ec_params_lightbar, ptr %43, i32 0, i32 1
  store i8 %44, ptr %45, align 1
  %46 = getelementptr inbounds %struct.lightbar_program, ptr %45, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %46, ptr align 1 %2, i32 %3, i1 false)
  %47 = add i32 %3, 2
  store i32 %47, ptr %24, align 8
  %48 = load ptr, ptr %5, align 8
  %49 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %48, ptr noundef nonnull %16) #13
  %50 = icmp slt i32 %49, 0
  %51 = select i1 %50, i32 %49, i32 %3
  br label %52

52:                                               ; preds = %41, %40
  %53 = phi i32 [ -4, %40 ], [ %51, %41 ]
  tail call void @kfree(ptr noundef nonnull %16) #13
  br label %54

54:                                               ; preds = %52, %14, %13
  %55 = phi i32 [ -22, %13 ], [ %53, %52 ], [ -12, %14 ]
  ret i32 %55
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @userspace_control_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = load i8, ptr @userspace_control, align 1, !range !10
  %5 = zext i8 %4 to i32
  %6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.13, i32 noundef %5) #13
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @userspace_control_store(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  store i8 0, ptr %5, align 1, !annotation !9
  %6 = call i32 @kstrtobool(ptr noundef %2, ptr noundef nonnull %5) #13
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load i8, ptr %5, align 1, !range !10
  store i8 %9, ptr @userspace_control, align 1
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %3, %8 ], [ %6, %4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_lightbar_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = load i8, ptr @userspace_control, align 1, !range !10
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call fastcc i32 @lb_send_empty_cmd(ptr noundef %8, i8 noundef zeroext 20)
  br label %10

10:                                               ; preds = %4, %1
  %11 = phi i32 [ %9, %4 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_lightbar_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = load i8, ptr @userspace_control, align 1, !range !10
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call fastcc i32 @lb_send_empty_cmd(ptr noundef %8, i8 noundef zeroext 21)
  br label %10

10:                                               ; preds = %4, %1
  %11 = phi i32 [ %9, %4 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lb_send_empty_cmd(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #2 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 214) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  store i32 0, ptr %4, align 8
  %7 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 5
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = add nuw nsw i32 %9, 40
  %11 = getelementptr inbounds %struct.cros_ec_command, ptr %4, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cros_ec_command, ptr %4, i32 0, i32 2
  store i32 194, ptr %12, align 8
  %13 = getelementptr inbounds %struct.cros_ec_command, ptr %4, i32 0, i32 3
  store i32 128, ptr %13, align 4
  %14 = getelementptr inbounds %struct.cros_ec_command, ptr %4, i32 0, i32 5
  store i8 %1, ptr %14, align 4
  tail call void @mutex_lock(ptr noundef nonnull @lb_mutex) #13
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = load i32, ptr @lb_throttle.last_access, align 4
  %17 = load i32, ptr @lb_interval_jiffies, align 4
  %18 = add i32 %17, %16
  %19 = sub i32 %15, %18
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %6
  %22 = sub i32 %18, %15
  %23 = tail call ptr @llvm.thread.pointer() #13
  %24 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 1
  store volatile i32 1, ptr %24, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %25 = tail call i32 @schedule_timeout(i32 noundef %22) #13
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load volatile i32, ptr @jiffies, align 64
  br label %30

29:                                               ; preds = %21
  tail call void @mutex_unlock(ptr noundef nonnull @lb_mutex) #13
  br label %36

30:                                               ; preds = %27, %6
  %31 = phi i32 [ %28, %27 ], [ %15, %6 ]
  store i32 %31, ptr @lb_throttle.last_access, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @lb_mutex) #13
  %32 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %33, ptr noundef nonnull %4) #13
  %35 = tail call i32 @llvm.smin.i32(i32 %34, i32 0)
  br label %36

36:                                               ; preds = %30, %29
  %37 = phi i32 [ -4, %29 ], [ %35, %30 ]
  tail call void @kfree(ptr noundef nonnull %4) #13
  br label %38

38:                                               ; preds = %36, %2
  %39 = phi i32 [ %37, %36 ], [ -12, %2 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

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
!8 = !{i64 2152143137}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
