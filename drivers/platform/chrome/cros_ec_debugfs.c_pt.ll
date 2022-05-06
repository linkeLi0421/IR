; ModuleID = '/llk/IR/drivers/platform/chrome/cros_ec_debugfs.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_ec_debugfs.c"
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
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.anon.65 = type { %struct.cros_ec_command, %struct.ec_response_uptime_info }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.ec_response_uptime_info = type { i32, i32, i32, [4 x %struct.ap_reset_log_entry] }
%struct.ap_reset_log_entry = type { i16, i16, i32 }
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
%struct.cros_ec_debugfs = type { ptr, ptr, %struct.circ_buf, ptr, %struct.mutex, %struct.wait_queue_head, %struct.delayed_work, %struct.debugfs_blob_wrapper }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, ptr, %struct.address_space, %struct.list_head, %union.anon.61, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.59 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.60 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.61 = type { ptr }
%struct.anon.63 = type <{ %struct.cros_ec_command, %union.anon.64 }>
%union.anon.64 = type { %struct.ec_response_usb_pd_control_v1 }
%struct.ec_response_usb_pd_control_v1 = type { i8, i8, i8, [32 x i8] }
%struct.ec_params_usb_pd_control = type { i8, i8, i8, i8 }
%struct.anon.66 = type { %struct.cros_ec_command, %struct.ec_response_uptime_info }

@__UNIQUE_ID_license212 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description213 = internal constant [39 x i8] c"description=Debug logs for ChromeOS EC\00", section ".modinfo", align 1
@__UNIQUE_ID_alias214 = internal constant [31 x i8] c"alias=platform:cros-ec-debugfs\00", section ".modinfo", align 1
@cros_ec_debugfs_driver = internal global %struct.platform_driver { ptr @cros_ec_debugfs_probe, ptr @cros_ec_debugfs_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_debugfs_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [16 x i8] c"cros-ec-debugfs\00", align 1
@cros_ec_debugfs_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @cros_ec_debugfs_suspend, ptr @cros_ec_debugfs_resume, ptr @cros_ec_debugfs_suspend, ptr @cros_ec_debugfs_resume, ptr @cros_ec_debugfs_suspend, ptr @cros_ec_debugfs_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"pdinfo\00", align 1
@cros_ec_pdinfo_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @default_llseek, ptr @cros_ec_pdinfo_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"uptime\00", align 1
@cros_ec_uptime_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @default_llseek, ptr @cros_ec_uptime_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"last_resume_result\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"panicinfo\00", align 1
@cros_ec_create_console_log.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"&debug_info->log_mutex\00", align 1
@cros_ec_create_console_log.__key.6 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"&debug_info->log_wq\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"console_log\00", align 1
@cros_ec_console_log_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @cros_ec_console_log_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_console_log_poll, ptr null, ptr null, ptr null, i32 0, ptr @cros_ec_console_log_open, ptr null, ptr @cros_ec_console_log_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@cros_ec_console_log_work.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Some logs may have been dropped...\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = private unnamed_addr constant [36 x i8] c"p%d: %s en:%.2x role:%.2x pol:%.2x\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias214, ptr @__UNIQUE_ID_description213, ptr @__UNIQUE_ID_license212], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_ec_debugfs_driver, ptr noundef nonnull @__this_module) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_ec_debugfs_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_debugfs_probe(ptr nocapture noundef %0) #2 {
  %2 = alloca %struct.anon.65, align 1
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.cros_ec_dev, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 108, i32 noundef 3520) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %128, label %14

14:                                               ; preds = %1
  store ptr %6, ptr %12, align 4
  %15 = tail call ptr @debugfs_create_dir(ptr noundef %11, ptr noundef null) #10
  %16 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %12, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr inbounds %struct.cros_ec_dev, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.cros_ec_device, ptr %19, i32 0, i32 6
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = getelementptr inbounds %struct.cros_ec_dev, ptr %17, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = add nuw nsw i32 %22, 20
  %26 = tail call noalias ptr @devm_kmalloc(ptr noundef %24, i32 noundef %25, i32 noundef 3520) #10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %126, label %28

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.cros_ec_command, ptr %26, i32 0, i32 1
  store i32 211, ptr %29, align 4
  %30 = getelementptr inbounds %struct.cros_ec_command, ptr %26, i32 0, i32 3
  store i32 %22, ptr %30, align 4
  %31 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %19, ptr noundef nonnull %26) #10
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.cros_ec_command, ptr %26, i32 0, i32 5
  %35 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %12, i32 0, i32 7
  store ptr %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %12, i32 0, i32 7, i32 1
  store i32 %31, ptr %36, align 4
  %37 = load ptr, ptr %16, align 4
  %38 = tail call ptr @debugfs_create_blob(ptr noundef nonnull @.str.4, i16 noundef zeroext -32476, ptr noundef %37, ptr noundef %35) #10
  br label %43

39:                                               ; preds = %28
  %40 = load ptr, ptr %12, align 4
  %41 = getelementptr inbounds %struct.cros_ec_dev, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  tail call void @devm_kfree(ptr noundef %42, ptr noundef nonnull %26) #10
  br label %43

43:                                               ; preds = %39, %33
  %44 = load ptr, ptr %12, align 4
  %45 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %46 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3520, i32 noundef 24) #11
  %47 = icmp eq ptr %46, null
  br i1 %47, label %104, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.cros_ec_dev, ptr %44, i32 0, i32 5
  %50 = load i16, ptr %49, align 2
  %51 = zext i16 %50 to i32
  %52 = add nuw nsw i32 %51, 8
  %53 = getelementptr inbounds %struct.cros_ec_command, ptr %46, i32 0, i32 1
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.cros_ec_command, ptr %46, i32 0, i32 2
  store i32 2, ptr %54, align 8
  %55 = getelementptr inbounds %struct.cros_ec_command, ptr %46, i32 0, i32 3
  store i32 4, ptr %55, align 4
  %56 = getelementptr inbounds %struct.cros_ec_command, ptr %46, i32 0, i32 5
  store i16 152, ptr %56, align 4
  %57 = getelementptr inbounds %struct.cros_ec_dev, ptr %44, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8
  %59 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %58, ptr noundef nonnull %46) #10
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %62, label %61

61:                                               ; preds = %48
  tail call void @kfree(ptr noundef nonnull %46) #10
  br label %104

62:                                               ; preds = %48
  %63 = load i32, ptr %56, align 4
  tail call void @kfree(ptr noundef nonnull %46) #10
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %104, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.cros_ec_dev, ptr %44, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = tail call noalias ptr @devm_kmalloc(ptr noundef %68, i32 noundef 16384, i32 noundef 3520) #10
  %70 = icmp eq ptr %69, null
  br i1 %70, label %126, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr %57, align 8
  %73 = getelementptr inbounds %struct.cros_ec_device, ptr %72, i32 0, i32 6
  %74 = load i16, ptr %73, align 2
  %75 = zext i16 %74 to i32
  %76 = load ptr, ptr %67, align 4
  %77 = icmp eq i16 %74, 0
  %78 = add nuw nsw i32 %75, 20
  %79 = select i1 %77, i32 21, i32 %78
  %80 = tail call noalias ptr @devm_kmalloc(ptr noundef %76, i32 noundef %79, i32 noundef 3520) #10
  %81 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %12, i32 0, i32 3
  store ptr %80, ptr %81, align 4
  %82 = icmp eq ptr %80, null
  br i1 %82, label %126, label %83

83:                                               ; preds = %71
  store i32 1, ptr %80, align 4
  %84 = load i16, ptr %49, align 2
  %85 = zext i16 %84 to i32
  %86 = add nuw nsw i32 %85, 152
  %87 = getelementptr inbounds %struct.cros_ec_command, ptr %80, i32 0, i32 1
  store i32 %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.cros_ec_command, ptr %80, i32 0, i32 2
  store i32 1, ptr %88, align 4
  %89 = getelementptr inbounds %struct.cros_ec_command, ptr %80, i32 0, i32 3
  store i32 %75, ptr %89, align 4
  %90 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %12, i32 0, i32 2
  store ptr %69, ptr %90, align 4
  %91 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %12, i32 0, i32 2, i32 1
  store i32 0, ptr %91, align 4
  %92 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %12, i32 0, i32 2, i32 2
  store i32 0, ptr %92, align 4
  %93 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %12, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %93, ptr noundef nonnull @.str.5, ptr noundef nonnull @cros_ec_create_console_log.__key) #10
  %94 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %12, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %94, ptr noundef nonnull @.str.7, ptr noundef nonnull @cros_ec_create_console_log.__key.6) #10
  %95 = load ptr, ptr %16, align 4
  %96 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext -32476, ptr noundef %95, ptr noundef nonnull %12, ptr noundef nonnull @cros_ec_console_log_fops) #10
  %97 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %12, i32 0, i32 6
  store i32 -32, ptr %97, align 4
  %98 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %12, i32 0, i32 6, i32 0, i32 1
  store volatile ptr %98, ptr %98, align 4
  %99 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %12, i32 0, i32 6, i32 0, i32 1, i32 1
  store ptr %98, ptr %99, align 4
  %100 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %12, i32 0, i32 6, i32 0, i32 2
  store ptr @cros_ec_console_log_work, ptr %100, align 4
  %101 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %12, i32 0, i32 6, i32 1
  tail call void @init_timer_key(ptr noundef %101, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #10
  %102 = load ptr, ptr @system_wq, align 4
  %103 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %102, ptr noundef %97, i32 noundef 0) #10
  br label %104

104:                                              ; preds = %83, %62, %61, %43
  %105 = load ptr, ptr %16, align 4
  %106 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %105, ptr noundef nonnull %12, ptr noundef nonnull @cros_ec_pdinfo_fops) #10
  %107 = getelementptr inbounds %struct.cros_ec_dev, ptr %6, i32 0, i32 1
  %108 = load ptr, ptr %107, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %2, i8 0, i32 64, i1 false) #10
  %109 = getelementptr inbounds %struct.cros_ec_command, ptr %2, i32 0, i32 1
  store i32 289, ptr %109, align 1
  %110 = getelementptr inbounds %struct.cros_ec_command, ptr %2, i32 0, i32 3
  store i32 44, ptr %110, align 1
  %111 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %108, ptr noundef nonnull %2) #10
  %112 = icmp ne i32 %111, -71
  %113 = getelementptr inbounds %struct.cros_ec_command, ptr %2, i32 0, i32 4
  %114 = load i32, ptr %113, align 1
  %115 = icmp ne i32 %114, 1
  %116 = select i1 %112, i1 true, i1 %115
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #10
  br i1 %116, label %117, label %120

117:                                              ; preds = %104
  %118 = load ptr, ptr %16, align 4
  %119 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %118, ptr noundef nonnull %12, ptr noundef nonnull @cros_ec_uptime_fops) #10
  br label %120

120:                                              ; preds = %117, %104
  %121 = load ptr, ptr %16, align 4
  %122 = load ptr, ptr %107, align 8
  %123 = getelementptr inbounds %struct.cros_ec_device, ptr %122, i32 0, i32 26
  call void @debugfs_create_x32(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %121, ptr noundef %123) #10
  %124 = getelementptr inbounds %struct.cros_ec_dev, ptr %6, i32 0, i32 3
  store ptr %12, ptr %124, align 8
  %125 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %125, align 8
  br label %128

126:                                              ; preds = %71, %66, %14
  %127 = load ptr, ptr %16, align 4
  tail call void @debugfs_remove(ptr noundef %127) #10
  br label %128

128:                                              ; preds = %126, %120, %1
  %129 = phi i32 [ -12, %126 ], [ 0, %120 ], [ -12, %1 ]
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_debugfs_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cros_ec_dev, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @debugfs_remove(ptr noundef %9) #10
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %10, i32 0, i32 6
  %16 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %15) #10
  br label %17

17:                                               ; preds = %14, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_blob(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cros_ec_console_log_work(ptr noundef %0) #2 {
  %2 = alloca %struct.cros_ec_command, align 4
  %3 = getelementptr i8, ptr %0, i32 -56
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -48
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #10
  %6 = getelementptr inbounds %struct.cros_ec_command, ptr %2, i32 0, i32 1
  %7 = getelementptr inbounds %struct.cros_ec_dev, ptr %4, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = add nuw nsw i32 %9, 151
  store i32 %10, ptr %6, align 4
  %11 = getelementptr i8, ptr %0, i32 -36
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.cros_ec_command, ptr %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.cros_ec_dev, ptr %4, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %15, ptr noundef nonnull %2) #10
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %70, label %18

18:                                               ; preds = %1
  %19 = getelementptr i8, ptr %0, i32 -32
  call void @mutex_lock(ptr noundef %19) #10
  %20 = getelementptr i8, ptr %0, i32 -40
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %0, i32 -44
  %23 = load i32, ptr %22, align 4
  %24 = xor i32 %23, -1
  %25 = add i32 %21, %24
  %26 = and i32 %25, 16383
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %18
  %29 = getelementptr i8, ptr %0, i32 -12
  br label %35

30:                                               ; preds = %66, %18
  %31 = load i1, ptr @cros_ec_console_log_work.__print_once, align 1
  br i1 %31, label %69, label %32

32:                                               ; preds = %30
  store i1 true, ptr @cros_ec_console_log_work.__print_once, align 1
  %33 = getelementptr inbounds %struct.cros_ec_dev, ptr %4, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.11) #12
  br label %69

35:                                               ; preds = %66, %28
  %36 = phi i32 [ %26, %28 ], [ %67, %66 ]
  store i8 1, ptr %13, align 1
  %37 = load ptr, ptr %14, align 8
  %38 = load ptr, ptr %11, align 4
  %39 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %37, ptr noundef %38) #10
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %69, label %41

41:                                               ; preds = %35
  %42 = load i8, ptr %13, align 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %69, label %44

44:                                               ; preds = %41
  %45 = sub i32 %36, %39
  %46 = icmp sgt i32 %36, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %59, %44
  %48 = phi i32 [ %57, %59 ], [ 0, %44 ]
  %49 = phi i32 [ %60, %59 ], [ %36, %44 ]
  %50 = phi i8 [ %62, %59 ], [ %42, %44 ]
  %51 = load ptr, ptr %5, align 4
  %52 = load i32, ptr %22, align 4
  %53 = getelementptr i8, ptr %51, i32 %52
  store i8 %50, ptr %53, align 1
  %54 = load i32, ptr %22, align 4
  %55 = add i32 %54, 1
  %56 = and i32 %55, 16383
  store i32 %56, ptr %22, align 4
  %57 = add nuw nsw i32 %48, 1
  %58 = icmp eq i32 %57, %39
  br i1 %58, label %66, label %59

59:                                               ; preds = %47
  %60 = add nsw i32 %49, -1
  %61 = getelementptr i8, ptr %13, i32 %57
  %62 = load i8, ptr %61, align 1
  %63 = icmp ne i8 %62, 0
  %64 = icmp sgt i32 %49, 1
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %47, label %66

66:                                               ; preds = %59, %47, %44
  %67 = phi i32 [ %36, %44 ], [ %45, %47 ], [ %60, %59 ]
  call void @__wake_up(ptr noundef %29, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %30, label %35

69:                                               ; preds = %41, %35, %32, %30
  call void @mutex_unlock(ptr noundef %19) #10
  br label %70

70:                                               ; preds = %69, %1
  %71 = load ptr, ptr @system_wq, align 4
  %72 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %71, ptr noundef %0, i32 noundef 1000) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_console_log_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #2 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %7, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %9) #10
  %10 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %7, i32 0, i32 2, i32 1
  %11 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %7, i32 0, i32 2, i32 2
  %12 = load i32, ptr %10, align 4
  %13 = load i32, ptr %11, align 4
  %14 = sub i32 %12, %13
  %15 = and i32 %14, 16383
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %56

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %19 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %7, i32 0, i32 5
  br label %20

20:                                               ; preds = %50, %17
  %21 = load i32, ptr %18, align 4
  %22 = and i32 %21, 2048
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %90

24:                                               ; preds = %20
  call void @mutex_unlock(ptr noundef %9) #10
  %25 = load i32, ptr %10, align 4
  %26 = load i32, ptr %11, align 4
  %27 = sub i32 %25, %26
  %28 = and i32 %27, 16383
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #10
  %31 = call i32 @prepare_to_wait_event(ptr noundef %19, ptr noundef nonnull %5, i32 noundef 1) #10
  %32 = load i32, ptr %10, align 4
  %33 = load i32, ptr %11, align 4
  %34 = sub i32 %32, %33
  %35 = and i32 %34, 16383
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %40, %30
  %38 = phi i32 [ %41, %40 ], [ %31, %30 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  call void @schedule() #10
  %41 = call i32 @prepare_to_wait_event(ptr noundef %19, ptr noundef nonnull %5, i32 noundef 1) #10
  %42 = load i32, ptr %10, align 4
  %43 = load i32, ptr %11, align 4
  %44 = sub i32 %42, %43
  %45 = and i32 %44, 16383
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %37, label %47

47:                                               ; preds = %40, %30
  call void @finish_wait(ptr noundef %19, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #10
  br label %50

48:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #10
  %49 = icmp slt i32 %38, 0
  br i1 %49, label %92, label %50

50:                                               ; preds = %48, %47, %24
  call void @mutex_lock(ptr noundef %9) #10
  %51 = load i32, ptr %10, align 4
  %52 = load i32, ptr %11, align 4
  %53 = sub i32 %51, %52
  %54 = and i32 %53, 16383
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %20, label %56

56:                                               ; preds = %50, %4
  %57 = phi i32 [ %12, %4 ], [ %51, %50 ]
  %58 = phi i32 [ %13, %4 ], [ %52, %50 ]
  %59 = sub i32 16384, %58
  %60 = add i32 %59, %57
  %61 = and i32 %60, 16383
  %62 = call i32 @llvm.smin.i32(i32 %61, i32 %59)
  %63 = call i32 @llvm.umin.i32(i32 %62, i32 %2)
  %64 = load ptr, ptr %8, align 4
  %65 = getelementptr i8, ptr %64, i32 %58
  %66 = icmp slt i32 %63, 0
  %67 = load i1, ptr @check_copy_size.__already_done, align 1
  %68 = xor i1 %67, true
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %70, label %71, !prof !9

70:                                               ; preds = %56
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %71

71:                                               ; preds = %70, %56
  br i1 %66, label %90, label %72, !prof !9

72:                                               ; preds = %71
  %73 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %63, i32 -1090519040) #13, !srcloc !10
  %74 = extractvalue { i32, i32 } %73, 0
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = tail call ptr @llvm.thread.pointer() #10
  %78 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 3
  %79 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %78) #14, !srcloc !11
  %80 = and i32 %79, -13
  %81 = or i32 %80, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #10, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  %82 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %65, i32 noundef %63) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %79) #10, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !13
  br label %83

83:                                               ; preds = %76, %72
  %84 = phi i32 [ %82, %76 ], [ %63, %72 ]
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, ptr %11, align 4
  %88 = add i32 %87, %63
  %89 = and i32 %88, 16383
  store i32 %89, ptr %11, align 4
  br label %90

90:                                               ; preds = %86, %83, %71, %20
  %91 = phi i32 [ %63, %86 ], [ -14, %83 ], [ -14, %71 ], [ -11, %20 ]
  call void @mutex_unlock(ptr noundef %9) #10
  br label %92

92:                                               ; preds = %90, %48
  %93 = phi i32 [ %91, %90 ], [ %38, %48 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_console_log_poll(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %4, i32 0, i32 5
  %6 = icmp eq ptr %1, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %5, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1) #10
  br label %13

13:                                               ; preds = %12, %7, %2
  %14 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %4, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %14) #10
  %15 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %4, i32 0, i32 2, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %4, i32 0, i32 2, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %16, %18
  %20 = and i32 %19, 16383
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 0, i32 65
  tail call void @mutex_unlock(ptr noundef %14) #10
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_console_log_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %4, ptr %5, align 8
  %6 = tail call i32 @stream_open(ptr noundef %0, ptr noundef %1) #10
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @cros_ec_console_log_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_pdinfo_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = alloca [320 x i8], align 1
  %6 = alloca %struct.anon.63, align 4
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(320) %5, i8 0, i32 320, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.cros_ec_dev, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 55, ptr nonnull %6) #10
  %12 = getelementptr inbounds i8, ptr %6, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(55) %12, i8 0, i32 39, i1 false), !annotation !8
  %13 = getelementptr inbounds %struct.cros_ec_command, ptr %6, i32 0, i32 5
  %14 = getelementptr inbounds %struct.cros_ec_command, ptr %6, i32 0, i32 1
  store i32 257, ptr %14, align 4
  store i32 1, ptr %6, align 4
  %15 = getelementptr inbounds %struct.cros_ec_command, ptr %6, i32 0, i32 3
  store i32 35, ptr %15, align 4
  %16 = getelementptr inbounds %struct.cros_ec_command, ptr %6, i32 0, i32 2
  store i32 4, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ec_params_usb_pd_control, ptr %13, i32 0, i32 1
  %18 = getelementptr inbounds %struct.ec_params_usb_pd_control, ptr %13, i32 0, i32 2
  %19 = getelementptr inbounds %struct.ec_params_usb_pd_control, ptr %13, i32 0, i32 3
  %20 = getelementptr inbounds i8, ptr %5, i32 320
  %21 = ptrtoint ptr %20 to i32
  store i32 0, ptr %13, align 4
  %22 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %11, ptr noundef nonnull %6) #10
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %123, label %24

24:                                               ; preds = %4
  %25 = load i8, ptr %13, align 4
  %26 = zext i8 %25 to i32
  %27 = load i8, ptr %17, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, ptr %18, align 2
  %30 = zext i8 %29 to i32
  %31 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %5, i32 noundef 320, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef %19, i32 noundef %26, i32 noundef %28, i32 noundef %30) #10
  %32 = getelementptr i8, ptr %5, i32 %31
  store i8 1, ptr %13, align 4
  store i8 0, ptr %17, align 1
  store i8 0, ptr %18, align 2
  store i8 0, ptr %19, align 1
  %33 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %11, ptr noundef nonnull %6) #10
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %123, label %35

35:                                               ; preds = %24
  %36 = sub i32 320, %31
  %37 = load i8, ptr %13, align 4
  %38 = zext i8 %37 to i32
  %39 = load i8, ptr %17, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, ptr %18, align 2
  %42 = zext i8 %41 to i32
  %43 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %32, i32 noundef %36, ptr noundef nonnull @.str.12, i32 noundef 1, ptr noundef %19, i32 noundef %38, i32 noundef %40, i32 noundef %42) #10
  %44 = getelementptr i8, ptr %32, i32 %43
  store i8 2, ptr %13, align 4
  store i8 0, ptr %17, align 1
  store i8 0, ptr %18, align 2
  store i8 0, ptr %19, align 1
  %45 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %11, ptr noundef nonnull %6) #10
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %123, label %47

47:                                               ; preds = %35
  %48 = ptrtoint ptr %44 to i32
  %49 = sub i32 %21, %48
  %50 = load i8, ptr %13, align 4
  %51 = zext i8 %50 to i32
  %52 = load i8, ptr %17, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, ptr %18, align 2
  %55 = zext i8 %54 to i32
  %56 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %44, i32 noundef %49, ptr noundef nonnull @.str.12, i32 noundef 2, ptr noundef %19, i32 noundef %51, i32 noundef %53, i32 noundef %55) #10
  %57 = getelementptr i8, ptr %44, i32 %56
  store i8 3, ptr %13, align 4
  store i8 0, ptr %17, align 1
  store i8 0, ptr %18, align 2
  store i8 0, ptr %19, align 1
  %58 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %11, ptr noundef nonnull %6) #10
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %123, label %60

60:                                               ; preds = %47
  %61 = ptrtoint ptr %57 to i32
  %62 = sub i32 %21, %61
  %63 = load i8, ptr %13, align 4
  %64 = zext i8 %63 to i32
  %65 = load i8, ptr %17, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, ptr %18, align 2
  %68 = zext i8 %67 to i32
  %69 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %57, i32 noundef %62, ptr noundef nonnull @.str.12, i32 noundef 3, ptr noundef %19, i32 noundef %64, i32 noundef %66, i32 noundef %68) #10
  %70 = getelementptr i8, ptr %57, i32 %69
  store i8 4, ptr %13, align 4
  store i8 0, ptr %17, align 1
  store i8 0, ptr %18, align 2
  store i8 0, ptr %19, align 1
  %71 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %11, ptr noundef nonnull %6) #10
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %123, label %73

73:                                               ; preds = %60
  %74 = ptrtoint ptr %70 to i32
  %75 = sub i32 %21, %74
  %76 = load i8, ptr %13, align 4
  %77 = zext i8 %76 to i32
  %78 = load i8, ptr %17, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8, ptr %18, align 2
  %81 = zext i8 %80 to i32
  %82 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %70, i32 noundef %75, ptr noundef nonnull @.str.12, i32 noundef 4, ptr noundef %19, i32 noundef %77, i32 noundef %79, i32 noundef %81) #10
  %83 = getelementptr i8, ptr %70, i32 %82
  store i8 5, ptr %13, align 4
  store i8 0, ptr %17, align 1
  store i8 0, ptr %18, align 2
  store i8 0, ptr %19, align 1
  %84 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %11, ptr noundef nonnull %6) #10
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %123, label %86

86:                                               ; preds = %73
  %87 = ptrtoint ptr %83 to i32
  %88 = sub i32 %21, %87
  %89 = load i8, ptr %13, align 4
  %90 = zext i8 %89 to i32
  %91 = load i8, ptr %17, align 1
  %92 = zext i8 %91 to i32
  %93 = load i8, ptr %18, align 2
  %94 = zext i8 %93 to i32
  %95 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %83, i32 noundef %88, ptr noundef nonnull @.str.12, i32 noundef 5, ptr noundef %19, i32 noundef %90, i32 noundef %92, i32 noundef %94) #10
  %96 = getelementptr i8, ptr %83, i32 %95
  store i8 6, ptr %13, align 4
  store i8 0, ptr %17, align 1
  store i8 0, ptr %18, align 2
  store i8 0, ptr %19, align 1
  %97 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %11, ptr noundef nonnull %6) #10
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %123, label %99

99:                                               ; preds = %86
  %100 = ptrtoint ptr %96 to i32
  %101 = sub i32 %21, %100
  %102 = load i8, ptr %13, align 4
  %103 = zext i8 %102 to i32
  %104 = load i8, ptr %17, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8, ptr %18, align 2
  %107 = zext i8 %106 to i32
  %108 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %96, i32 noundef %101, ptr noundef nonnull @.str.12, i32 noundef 6, ptr noundef %19, i32 noundef %103, i32 noundef %105, i32 noundef %107) #10
  %109 = getelementptr i8, ptr %96, i32 %108
  store i8 7, ptr %13, align 4
  store i8 0, ptr %17, align 1
  store i8 0, ptr %18, align 2
  store i8 0, ptr %19, align 1
  %110 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %11, ptr noundef nonnull %6) #10
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %123, label %112

112:                                              ; preds = %99
  %113 = ptrtoint ptr %109 to i32
  %114 = sub i32 %21, %113
  %115 = load i8, ptr %13, align 4
  %116 = zext i8 %115 to i32
  %117 = load i8, ptr %17, align 1
  %118 = zext i8 %117 to i32
  %119 = load i8, ptr %18, align 2
  %120 = zext i8 %119 to i32
  %121 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %109, i32 noundef %114, ptr noundef nonnull @.str.12, i32 noundef 7, ptr noundef %19, i32 noundef %116, i32 noundef %118, i32 noundef %120) #10
  %122 = getelementptr i8, ptr %109, i32 %121
  br label %123

123:                                              ; preds = %112, %99, %86, %73, %60, %47, %35, %24, %4
  %124 = phi ptr [ %5, %4 ], [ %32, %24 ], [ %44, %35 ], [ %57, %47 ], [ %70, %60 ], [ %83, %73 ], [ %96, %86 ], [ %109, %99 ], [ %122, %112 ]
  %125 = ptrtoint ptr %124 to i32
  %126 = ptrtoint ptr %5 to i32
  %127 = sub i32 %125, %126
  %128 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %127) #10
  call void @llvm.lifetime.end.p0(i64 55, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %5) #10
  ret i32 %128
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_uptime_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = alloca %struct.anon.66, align 1
  %6 = alloca [32 x i8], align 1
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.cros_ec_dev, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !8
  %12 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 1
  store i32 289, ptr %12, align 1
  %13 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 3
  store i32 44, ptr %13, align 1
  %14 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %11, ptr noundef nonnull %5) #10
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.anon.66, ptr %5, i32 0, i32 1
  %18 = load i32, ptr %17, align 1
  %19 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef %18) #10
  %20 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %6, i32 noundef %19) #10
  br label %21

21:                                               ; preds = %16, %4
  %22 = phi i32 [ %20, %16 ], [ %14, %4 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_debugfs_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %5, i32 0, i32 6
  %11 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %10) #10
  br label %12

12:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_debugfs_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.cros_ec_debugfs, ptr %5, i32 0, i32 6
  %11 = load ptr, ptr @system_wq, align 4
  %12 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %11, ptr noundef %10, i32 noundef 0) #10
  br label %13

13:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind readonly }

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
!10 = !{i64 2150985602, i64 2150985627}
!11 = !{i64 3481136}
!12 = !{i64 3481333}
!13 = !{i64 2150966612}
