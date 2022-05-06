; ModuleID = '/llk/IR/drivers/platform/chrome/cros_ec_chardev.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_ec_chardev.c"
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
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
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
%struct.chardev_data = type { ptr, %struct.miscdevice }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.chardev_priv = type { ptr, %struct.notifier_block, %struct.wait_queue_head, i32, %struct.list_head, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ec_event = type { %struct.list_head, i32, i8, [0 x i8] }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.cros_ec_readmem = type { i32, i32, [255 x i8] }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }

@__UNIQUE_ID_alias213 = internal constant [31 x i8] c"alias=platform:cros-ec-chardev\00", section ".modinfo", align 1
@__UNIQUE_ID_author214 = internal constant [61 x i8] c"author=Enric Balletbo i Serra <enric.balletbo@collabora.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description215 = internal constant [55 x i8] c"description=ChromeOS EC Miscellaneous Character Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license216 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@cros_ec_chardev_driver = internal global %struct.platform_driver { ptr @cros_ec_chardev_probe, ptr @cros_ec_chardev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [16 x i8] c"cros-ec-chardev\00", align 1
@chardev_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr @cros_ec_chardev_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_chardev_poll, ptr @cros_ec_chardev_ioctl, ptr null, ptr null, i32 0, ptr @cros_ec_chardev_open, ptr null, ptr @cros_ec_chardev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@ec_get_version.current_image_name = internal unnamed_addr constant [4 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"read-write\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Unknown EC version, returned error: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"%s\0A%s\0A%s\0A%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"1.0.0\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@cros_ec_chardev_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"&priv->wait_event\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"failed to register event notifier\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias213, ptr @__UNIQUE_ID_author214, ptr @__UNIQUE_ID_description215, ptr @__UNIQUE_ID_license216], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_ec_chardev_driver, ptr noundef nonnull @__this_module) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_ec_chardev_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_chardev_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.cros_ec_dev, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 44, i32 noundef 3520) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %1
  store ptr %6, ptr %11, align 4
  %14 = getelementptr inbounds %struct.chardev_data, ptr %11, i32 0, i32 1
  store i32 255, ptr %14, align 4
  %15 = getelementptr inbounds %struct.chardev_data, ptr %11, i32 0, i32 1, i32 2
  store ptr @chardev_fops, ptr %15, align 4
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr inbounds %struct.chardev_data, ptr %11, i32 0, i32 1, i32 1
  store ptr %16, ptr %17, align 4
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.chardev_data, ptr %11, i32 0, i32 1, i32 4
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %11, ptr %20, align 8
  %21 = tail call i32 @misc_register(ptr noundef %14) #13
  br label %22

22:                                               ; preds = %13, %1
  %23 = phi i32 [ %21, %13 ], [ -12, %1 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_chardev_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.chardev_data, ptr %3, i32 0, i32 1
  tail call void @misc_deregister(ptr noundef %4) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_chardev_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #2 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = alloca [106 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 106, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(106) %6, i8 0, i32 106, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.chardev_priv, ptr %8, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %104, label %13

13:                                               ; preds = %4
  %14 = icmp eq i32 %2, 0
  %15 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 2048
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.chardev_priv, ptr %8, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %19) #13
  br i1 %18, label %26, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.chardev_priv, ptr %8, i32 0, i32 4
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  %24 = or i1 %14, %23
  %25 = select i1 %23, ptr inttoptr (i32 -11 to ptr), ptr null
  br i1 %24, label %67, label %27

26:                                               ; preds = %13
  br i1 %14, label %67, label %27

27:                                               ; preds = %26, %20
  %28 = getelementptr inbounds %struct.chardev_priv, ptr %8, i32 0, i32 4
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #13
  %32 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 1
  %33 = tail call ptr @llvm.thread.pointer() #13
  store i32 0, ptr %5, align 4
  store ptr %33, ptr %32, align 4
  %34 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %34, align 4
  %35 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3
  store ptr %35, ptr %35, align 4
  %36 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3, i32 1
  store ptr %35, ptr %36, align 4
  br label %37

37:                                               ; preds = %40, %31
  %38 = call i32 @do_wait_intr(ptr noundef %19, ptr noundef nonnull %5) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load volatile ptr, ptr %28, align 4
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %37, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %36, align 4
  %45 = load ptr, ptr %35, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %44, ptr %46, align 4
  store volatile ptr %45, ptr %44, align 4
  %47 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 1
  store volatile i32 0, ptr %47, align 8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #13
  %48 = load ptr, ptr %28, align 4
  br label %55

49:                                               ; preds = %37
  %50 = load ptr, ptr %36, align 4
  %51 = load ptr, ptr %35, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %50, ptr %52, align 4
  store volatile ptr %51, ptr %50, align 4
  %53 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 1
  store volatile i32 0, ptr %53, align 8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #13
  %54 = inttoptr i32 %38 to ptr
  br label %67

55:                                               ; preds = %43, %27
  %56 = phi ptr [ %48, %43 ], [ %29, %27 ]
  %57 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %56, align 4
  %60 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  store ptr %58, ptr %60, align 4
  store volatile ptr %59, ptr %58, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %56, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %57, align 4
  %61 = getelementptr inbounds %struct.ec_event, ptr %56, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.chardev_priv, ptr %8, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  %65 = sub i32 -16, %62
  %66 = add i32 %65, %64
  store i32 %66, ptr %63, align 4
  br label %67

67:                                               ; preds = %55, %49, %26, %20
  %68 = phi ptr [ %54, %49 ], [ %56, %55 ], [ null, %26 ], [ %25, %20 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %69 = load i16, ptr %19, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %19, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %71 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = ptrtoint ptr %68 to i32
  br label %158

74:                                               ; preds = %67
  br i1 %14, label %158, label %75

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.ec_event, ptr %68, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, 1
  %79 = call i32 @llvm.umin.i32(i32 %78, i32 %2)
  %80 = getelementptr inbounds %struct.ec_event, ptr %68, i32 0, i32 2
  %81 = icmp slt i32 %79, 0
  %82 = load i1, ptr @check_copy_size.__already_done, align 1
  %83 = xor i1 %82, true
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %85, label %86, !prof !13

85:                                               ; preds = %75
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %86

86:                                               ; preds = %85, %75
  br i1 %81, label %98, label %87, !prof !13

87:                                               ; preds = %86
  %88 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %79, i32 -1090519040) #14, !srcloc !14
  %89 = extractvalue { i32, i32 } %88, 0
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = tail call ptr @llvm.thread.pointer() #13
  %93 = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 3
  %94 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %93) #15, !srcloc !15
  %95 = and i32 %94, -13
  %96 = or i32 %95, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %96) #13, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !17
  %97 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %80, i32 noundef %79) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %94) #13, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !17
  br label %99

98:                                               ; preds = %86
  call void @kfree(ptr noundef %68) #13
  br label %158

99:                                               ; preds = %91, %87
  %100 = phi i32 [ %97, %91 ], [ %79, %87 ]
  call void @kfree(ptr noundef %68) #13
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %158

102:                                              ; preds = %99
  %103 = zext i32 %79 to i64
  store i64 %103, ptr %3, align 8
  br label %158

104:                                              ; preds = %4
  %105 = load i64, ptr %3, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %158

107:                                              ; preds = %104
  %108 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %109 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %108, i32 noundef 3520, i32 noundef 120) #16
  %110 = icmp eq ptr %109, null
  br i1 %110, label %158, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.cros_ec_dev, ptr %9, i32 0, i32 5
  %113 = load i16, ptr %112, align 2
  %114 = zext i16 %113 to i32
  %115 = add nuw nsw i32 %114, 2
  %116 = getelementptr inbounds %struct.cros_ec_command, ptr %109, i32 0, i32 1
  store i32 %115, ptr %116, align 4
  %117 = getelementptr inbounds %struct.cros_ec_command, ptr %109, i32 0, i32 3
  store i32 100, ptr %117, align 4
  %118 = getelementptr inbounds %struct.cros_ec_dev, ptr %9, i32 0, i32 1
  %119 = load ptr, ptr %118, align 8
  %120 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %119, ptr noundef nonnull %109) #13
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %111
  %123 = getelementptr inbounds %struct.cros_ec_command, ptr %109, i32 0, i32 5
  %124 = getelementptr inbounds %struct.cros_ec_command, ptr %109, i32 5, i32 4
  %125 = load i32, ptr %124, align 4
  %126 = icmp ugt i32 %125, 3
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  store i32 3, ptr %124, align 4
  br label %132

128:                                              ; preds = %111
  %129 = getelementptr inbounds %struct.cros_ec_command, ptr %109, i32 0, i32 4
  %130 = load i32, ptr %129, align 8
  %131 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 106, ptr noundef nonnull @.str.7, i32 noundef %130) #13
  tail call void @kfree(ptr noundef nonnull %109) #13
  br label %158

132:                                              ; preds = %127, %122
  %133 = phi i32 [ 3, %127 ], [ %125, %122 ]
  %134 = getelementptr inbounds %struct.cros_ec_command, ptr %109, i32 2, i32 3
  %135 = getelementptr [4 x ptr], ptr @ec_get_version.current_image_name, i32 0, i32 %133
  %136 = load ptr, ptr %135, align 4
  %137 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 106, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %123, ptr noundef %134, ptr noundef %136) #13
  tail call void @kfree(ptr noundef nonnull %109) #13
  %138 = call i32 @strlen(ptr noundef nonnull %6)
  %139 = tail call i32 @llvm.umin.i32(i32 %138, i32 %2)
  %140 = icmp ugt i32 %139, 106
  br i1 %140, label %141, label %142, !prof !13

141:                                              ; preds = %132
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef 106, i32 noundef %139) #13
  br label %158

142:                                              ; preds = %132
  %143 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %139, i32 -1090519040) #14, !srcloc !14
  %144 = extractvalue { i32, i32 } %143, 0
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %142
  %147 = tail call ptr @llvm.thread.pointer() #13
  %148 = getelementptr inbounds %struct.thread_info, ptr %147, i32 0, i32 3
  %149 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %148) #15, !srcloc !15
  %150 = and i32 %149, -13
  %151 = or i32 %150, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %151) #13, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !17
  %152 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %6, i32 noundef %139) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %149) #13, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !17
  br label %153

153:                                              ; preds = %146, %142
  %154 = phi i32 [ %152, %146 ], [ %139, %142 ]
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = zext i32 %139 to i64
  store i64 %157, ptr %3, align 8
  br label %158

158:                                              ; preds = %156, %153, %141, %128, %107, %104, %102, %99, %98, %74, %72
  %159 = phi i32 [ %139, %156 ], [ %73, %72 ], [ %79, %102 ], [ 0, %74 ], [ -14, %99 ], [ 0, %104 ], [ %120, %128 ], [ -14, %153 ], [ -14, %98 ], [ -12, %107 ], [ -14, %141 ]
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %6) #13
  ret i32 %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_chardev_poll(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.chardev_priv, ptr %4, i32 0, i32 2
  %6 = icmp eq ptr %1, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %5, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1) #13
  br label %13

13:                                               ; preds = %12, %7, %2
  %14 = getelementptr inbounds %struct.chardev_priv, ptr %4, i32 0, i32 4
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  %17 = select i1 %16, i32 0, i32 65
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_chardev_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.cros_ec_readmem, align 4
  %5 = alloca %struct.cros_ec_command, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = and i32 %1, 65280
  %10 = icmp eq i32 %9, 60416
  br i1 %10, label %11, label %155

11:                                               ; preds = %3
  switch i32 %1, label %155 [
    i32 -1072370688, label %12
    i32 -1056379903, label %113
    i32 60418, label %153
  ]

12:                                               ; preds = %11
  %13 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false) #13, !annotation !8
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 20, i32 -1090519040) #14, !srcloc !18
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25, !prof !19

17:                                               ; preds = %12
  %18 = tail call ptr @llvm.thread.pointer() #13
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #15, !srcloc !15
  %21 = and i32 %20, -13
  %22 = or i32 %21, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #13, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !17
  %23 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %13, i32 noundef 20) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #13, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25, !prof !19

25:                                               ; preds = %17, %12
  %26 = phi i32 [ %23, %17 ], [ 20, %12 ]
  %27 = sub i32 20, %26
  %28 = getelementptr i8, ptr %5, i32 %27
  call void @llvm.memset.p0.i32(ptr align 1 %28, i8 0, i32 %26, i1 false) #13
  br label %111

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp ugt i32 %31, 65536
  %33 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = icmp ugt i32 %34, 65536
  %36 = select i1 %32, i1 true, i1 %35
  br i1 %36, label %111, label %37

37:                                               ; preds = %29
  %38 = call i32 @llvm.umax.i32(i32 %31, i32 %34) #13
  %39 = add nuw nsw i32 %38, 20
  %40 = call noalias align 64 ptr @__kmalloc(i32 noundef %39, i32 noundef 3264) #17
  %41 = icmp eq ptr %40, null
  br i1 %41, label %111, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %30, align 4
  %44 = add i32 %43, 20
  %45 = icmp slt i32 %44, 0
  %46 = load i1, ptr @check_copy_size.__already_done, align 1
  %47 = xor i1 %46, true
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %50, !prof !13

49:                                               ; preds = %42
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %50

50:                                               ; preds = %49, %42
  br i1 %45, label %109, label %51, !prof !13

51:                                               ; preds = %50
  %52 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 %44, i32 -1090519040) #14, !srcloc !18
  %53 = extractvalue { i32, i32 } %52, 0
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60, !prof !19

55:                                               ; preds = %51
  %56 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #15, !srcloc !15
  %57 = and i32 %56, -13
  %58 = or i32 %57, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #13, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !17
  %59 = call i32 @arm_copy_from_user(ptr noundef nonnull %40, ptr noundef %13, i32 noundef %44) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #13, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !17
  br label %60

60:                                               ; preds = %55, %51
  %61 = phi i32 [ %59, %55 ], [ %44, %51 ]
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63, !prof !19

63:                                               ; preds = %60
  %64 = sub i32 %44, %61
  %65 = getelementptr i8, ptr %40, i32 %64
  call void @llvm.memset.p0.i32(ptr align 1 %65, i8 0, i32 %61, i1 false) #13
  br label %109

66:                                               ; preds = %60
  %67 = load i32, ptr %30, align 4
  %68 = getelementptr inbounds %struct.cros_ec_command, ptr %40, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %109

71:                                               ; preds = %66
  %72 = load i32, ptr %33, align 4
  %73 = getelementptr inbounds %struct.cros_ec_command, ptr %40, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %109

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.cros_ec_dev, ptr %8, i32 0, i32 5
  %78 = load i16, ptr %77, align 2
  %79 = zext i16 %78 to i32
  %80 = getelementptr inbounds %struct.cros_ec_command, ptr %40, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, %79
  store i32 %82, ptr %80, align 4
  %83 = getelementptr inbounds %struct.cros_ec_dev, ptr %8, i32 0, i32 1
  %84 = load ptr, ptr %83, align 8
  %85 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %84, ptr noundef nonnull %40) #13
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %109, label %87

87:                                               ; preds = %76
  %88 = load i32, ptr %73, align 4
  %89 = add i32 %88, 20
  %90 = icmp slt i32 %89, 0
  %91 = load i1, ptr @check_copy_size.__already_done, align 1
  %92 = xor i1 %91, true
  %93 = select i1 %90, i1 %92, i1 false
  br i1 %93, label %94, label %95, !prof !13

94:                                               ; preds = %87
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %95

95:                                               ; preds = %94, %87
  br i1 %90, label %109, label %96, !prof !13

96:                                               ; preds = %95
  %97 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 %89, i32 -1090519040) #14, !srcloc !14
  %98 = extractvalue { i32, i32 } %97, 0
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #15, !srcloc !15
  %102 = and i32 %101, -13
  %103 = or i32 %102, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %103) #13, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !17
  %104 = call i32 @arm_copy_to_user(ptr noundef %13, ptr noundef nonnull %40, i32 noundef %89) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %101) #13, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !17
  br label %105

105:                                              ; preds = %100, %96
  %106 = phi i32 [ %104, %100 ], [ %89, %96 ]
  %107 = icmp eq i32 %106, 0
  %108 = select i1 %107, i32 %85, i32 -14
  br label %109

109:                                              ; preds = %105, %95, %76, %71, %66, %63, %50
  %110 = phi i32 [ %85, %76 ], [ -22, %71 ], [ -22, %66 ], [ -14, %50 ], [ -14, %63 ], [ -14, %95 ], [ %108, %105 ]
  call void @kfree(ptr noundef nonnull %40) #13
  br label %111

111:                                              ; preds = %109, %37, %29, %25
  %112 = phi i32 [ %110, %109 ], [ -22, %29 ], [ -12, %37 ], [ -14, %25 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #13
  br label %155

113:                                              ; preds = %11
  %114 = inttoptr i32 %2 to ptr
  %115 = getelementptr inbounds %struct.cros_ec_dev, ptr %8, i32 0, i32 1
  %116 = load ptr, ptr %115, align 8
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(264) %4, i8 0, i32 264, i1 false) #13
  %117 = getelementptr inbounds %struct.cros_ec_device, ptr %116, i32 0, i32 4
  %118 = load ptr, ptr %117, align 8
  %119 = icmp eq ptr %118, null
  br i1 %119, label %151, label %120

120:                                              ; preds = %113
  %121 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %114, i32 264, i32 -1090519040) #14
  %122 = extractvalue { i32, i32 } %121, 0
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %132, !prof !19

124:                                              ; preds = %120
  %125 = tail call ptr @llvm.thread.pointer() #13
  %126 = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 3
  %127 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %126) #15, !srcloc !15
  %128 = and i32 %127, -13
  %129 = or i32 %128, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %129) #13, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !17
  %130 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %114, i32 noundef 264) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %127) #13, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !17
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %136, label %132, !prof !19

132:                                              ; preds = %124, %120
  %133 = phi i32 [ %130, %124 ], [ 264, %120 ]
  %134 = sub i32 264, %133
  %135 = getelementptr i8, ptr %4, i32 %134
  call void @llvm.memset.p0.i32(ptr align 1 %135, i8 0, i32 %133, i1 false) #13
  br label %151

136:                                              ; preds = %124
  %137 = load ptr, ptr %117, align 8
  %138 = load i32, ptr %4, align 4
  %139 = getelementptr inbounds %struct.cros_ec_readmem, ptr %4, i32 0, i32 1
  %140 = load i32, ptr %139, align 4
  %141 = getelementptr inbounds %struct.cros_ec_readmem, ptr %4, i32 0, i32 2
  %142 = call i32 %137(ptr noundef %116, i32 noundef %138, i32 noundef %140, ptr noundef %141) #13
  %143 = icmp slt i32 %142, 1
  br i1 %143, label %151, label %144

144:                                              ; preds = %136
  %145 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %126) #15, !srcloc !15
  %146 = and i32 %145, -13
  %147 = or i32 %146, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %147) #13, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !17
  %148 = call i32 @arm_copy_to_user(ptr noundef %114, ptr noundef nonnull %4, i32 noundef 264) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %145) #13, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !17
  %149 = icmp eq i32 %148, 0
  %150 = select i1 %149, i32 %142, i32 -14
  br label %151

151:                                              ; preds = %144, %136, %132, %113
  %152 = phi i32 [ -25, %113 ], [ %142, %136 ], [ -14, %132 ], [ %150, %144 ]
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %4) #13
  br label %155

153:                                              ; preds = %11
  %154 = getelementptr inbounds %struct.chardev_priv, ptr %7, i32 0, i32 3
  store i32 %2, ptr %154, align 4
  br label %155

155:                                              ; preds = %153, %151, %111, %11, %3
  %156 = phi i32 [ 0, %153 ], [ %152, %151 ], [ %112, %111 ], [ -25, %3 ], [ -25, %11 ]
  ret i32 %156
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_chardev_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.miscdevice, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 44) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %2
  store ptr %8, ptr %10, align 8
  store ptr %10, ptr %3, align 8
  %13 = getelementptr inbounds %struct.chardev_priv, ptr %10, i32 0, i32 4
  store volatile ptr %13, ptr %13, align 8
  %14 = getelementptr inbounds %struct.chardev_priv, ptr %10, i32 0, i32 4, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.chardev_priv, ptr %10, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %15, ptr noundef nonnull @.str.10, ptr noundef nonnull @cros_ec_chardev_open.__key) #13
  %16 = tail call i32 @nonseekable_open(ptr noundef %0, ptr noundef %1) #13
  %17 = getelementptr inbounds %struct.chardev_priv, ptr %10, i32 0, i32 1
  store ptr @cros_ec_chardev_mkbp_event, ptr %17, align 4
  %18 = getelementptr inbounds %struct.cros_ec_dev, ptr %8, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.cros_ec_device, ptr %19, i32 0, i32 22
  %21 = tail call i32 @blocking_notifier_chain_register(ptr noundef %20, ptr noundef %17) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.cros_ec_dev, ptr %8, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.11) #18
  tail call void @kfree(ptr noundef nonnull %10) #13
  br label %26

26:                                               ; preds = %23, %12, %2
  %27 = phi i32 [ -12, %2 ], [ %21, %23 ], [ 0, %12 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_chardev_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cros_ec_dev, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.cros_ec_device, ptr %7, i32 0, i32 22
  %9 = getelementptr inbounds %struct.chardev_priv, ptr %4, i32 0, i32 1
  %10 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %8, ptr noundef %9) #13
  %11 = getelementptr inbounds %struct.chardev_priv, ptr %4, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %21, label %14

14:                                               ; preds = %14, %2
  %15 = phi ptr [ %16, %14 ], [ %12, %2 ]
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  store volatile ptr %16, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  tail call void @kfree(ptr noundef %15) #13
  %20 = icmp eq ptr %16, %11
  br i1 %20, label %21, label %14

21:                                               ; preds = %14, %2
  tail call void @kfree(ptr noundef %4) #13
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_wait_intr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_chardev_mkbp_event(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cros_ec_dev, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.cros_ec_device, ptr %7, i32 0, i32 23
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 1, %10
  %12 = getelementptr inbounds %struct.cros_ec_device, ptr %7, i32 0, i32 24
  %13 = load i32, ptr %12, align 8
  %14 = add i32 %13, 16
  %15 = getelementptr i8, ptr %0, i32 24
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %11, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %44, label %19

19:                                               ; preds = %3
  %20 = getelementptr i8, ptr %0, i32 36
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %14
  %23 = icmp ugt i32 %22, 4096
  br i1 %23, label %44, label %24

24:                                               ; preds = %19
  %25 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #17
  %26 = icmp eq ptr %25, null
  br i1 %26, label %44, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %12, align 8
  %29 = getelementptr inbounds %struct.ec_event, ptr %25, i32 0, i32 1
  store i32 %28, ptr %29, align 8
  %30 = load i8, ptr %8, align 4
  %31 = getelementptr inbounds %struct.ec_event, ptr %25, i32 0, i32 2
  store i8 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ec_event, ptr %25, i32 0, i32 3
  %33 = getelementptr inbounds %struct.cros_ec_device, ptr %7, i32 0, i32 23, i32 1
  %34 = load i32, ptr %12, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %32, ptr align 1 %33, i32 %34, i1 false)
  %35 = getelementptr i8, ptr %0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %35) #13
  %36 = getelementptr i8, ptr %0, i32 28
  %37 = getelementptr i8, ptr %0, i32 32
  %38 = load ptr, ptr %37, align 4
  store ptr %25, ptr %37, align 4
  store ptr %36, ptr %25, align 64
  %39 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  store volatile ptr %25, ptr %38, align 4
  %40 = load i32, ptr %20, align 4
  %41 = add i32 %40, %14
  store i32 %41, ptr %20, align 4
  tail call void @__wake_up_locked(ptr noundef %35, i32 noundef 3, i32 noundef 1) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %42 = load i16, ptr %35, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %35, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  br label %44

44:                                               ; preds = %27, %24, %19, %3
  %45 = phi i32 [ 1, %27 ], [ 0, %19 ], [ 0, %3 ], [ 0, %24 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind readonly }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }

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
!9 = !{i64 2149217494}
!10 = !{i64 2149213318}
!11 = !{i64 2149213393, i64 2149213420, i64 2149213467, i64 2149213489, i64 2149213517, i64 2149213537}
!12 = !{i64 2149240497}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2151473451, i64 2151473476}
!15 = !{i64 3968985}
!16 = !{i64 3969182}
!17 = !{i64 2151454461}
!18 = !{i64 2151472873, i64 2151472898}
!19 = !{!"branch_weights", i32 2000, i32 1}
