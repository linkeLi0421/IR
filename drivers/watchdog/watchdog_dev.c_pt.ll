; ModuleID = '/llk/IR/drivers/watchdog/watchdog_dev.c_pt.bc'
source_filename = "../drivers/watchdog/watchdog_dev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_watchdog_set_last_hw_keepalive:\09\09\09\09\09"
module asm "\09.asciz \09\22watchdog_set_last_hw_keepalive\22\09\09\09\09\09"
module asm "__kstrtabns_watchdog_set_last_hw_keepalive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.57 }
%union.anon.57 = type { ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_core_data = type { %struct.device, %struct.cdev, ptr, %struct.mutex, i64, i64, i64, %struct.hrtimer, %struct.kthread_work, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
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
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.59 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.60 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.61 = type { ptr }

@handle_boot_enabled = internal global i8 1, align 1
@__kstrtab_watchdog_set_last_hw_keepalive = external dso_local constant [0 x i8], align 1
@__kstrtabns_watchdog_set_last_hw_keepalive = external dso_local constant [0 x i8], align 1
@__ksymtab_watchdog_set_last_hw_keepalive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @watchdog_set_last_hw_keepalive to i32), ptr @__kstrtab_watchdog_set_last_hw_keepalive, ptr @__kstrtabns_watchdog_set_last_hw_keepalive }, section "___ksymtab_gpl+watchdog_set_last_hw_keepalive", align 4
@.str = private unnamed_addr constant [10 x i8] c"watchdogd\00", align 1
@watchdog_kworker = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"\013watchdog: Failed to create watchdog kworker\0A\00", align 1
@watchdog_dev_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@watchdog_class = internal global %struct.class { ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"\013watchdog: couldn't register class\0A\00", align 1
@watchdog_devt = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"\013watchdog: watchdog: unable to allocate char dev region\0A\00", align 1
@__param_str_handle_boot_enabled = internal constant [29 x i8] c"watchdog.handle_boot_enabled\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_handle_boot_enabled = internal constant %struct.kernel_param { ptr @__param_str_handle_boot_enabled, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.57 { ptr @handle_boot_enabled } }, section "__param", align 4
@__UNIQUE_ID_handle_boot_enabledtype208 = internal constant [43 x i8] c"watchdog.parmtype=handle_boot_enabled:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_handle_boot_enabled209 = internal constant [124 x i8] c"watchdog.parm=handle_boot_enabled:Watchdog core auto-updates boot enabled watchdogs before userspace takes over (default=1)\00", section ".modinfo", align 1
@__param_str_open_timeout = internal constant [22 x i8] c"watchdog.open_timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@open_timeout = internal global i32 0, align 4
@__param_open_timeout = internal constant %struct.kernel_param { ptr @__param_str_open_timeout, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.57 { ptr @open_timeout } }, section "__param", align 4
@__UNIQUE_ID_open_timeouttype210 = internal constant [36 x i8] c"watchdog.parmtype=open_timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_open_timeout211 = internal constant [129 x i8] c"watchdog.parm=open_timeout:Maximum time (in seconds, 0 means infinity) for userspace to take over a running watchdog (default=0)\00", section ".modinfo", align 1
@watchdog_cdev_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"&wd_data->lock\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"watchdog%d\00", align 1
@old_wd_data = internal unnamed_addr global ptr null, align 4
@watchdog_miscdev = internal global %struct.miscdevice { i32 130, ptr @.str.3, ptr @watchdog_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, align 4
@.str.7 = private unnamed_addr constant [63 x i8] c"\013watchdog: %s: cannot register miscdev on minor=%d (err=%d).\0A\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"\013watchdog: %s: a legacy watchdog module is probably present.\0A\00", align 1
@watchdog_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr null, ptr @watchdog_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @watchdog_ioctl, ptr null, ptr null, i32 0, ptr @watchdog_open, ptr null, ptr @watchdog_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [51 x i8] c"\013watchdog: watchdog%d unable to add device %d:%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [80 x i8] c"\016watchdog: watchdog%d running and kernel based pre-userspace handler disabled\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.13 = private unnamed_addr constant [67 x i8] c"\016watchdog: watchdog%d: nowayout prevents watchdog being stopped!\0A\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"\012watchdog: watchdog%d: watchdog did not stop!\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_handle_boot_enabled209, ptr @__UNIQUE_ID_handle_boot_enabledtype208, ptr @__UNIQUE_ID_open_timeout211, ptr @__UNIQUE_ID_open_timeouttype210, ptr @__ksymtab_watchdog_set_last_hw_keepalive, ptr @__param_handle_boot_enabled, ptr @__param_open_timeout, ptr @watchdog_dev_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @watchdog_dev_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 656) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %97, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %6, ptr noundef nonnull @.str.5, ptr noundef nonnull @watchdog_cdev_register.__key) #9
  %7 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 2
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 17
  store ptr %3, ptr %8, align 4
  %9 = load ptr, ptr @watchdog_kworker, align 4
  %10 = icmp eq ptr %9, null
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #9
  br label %97

14:                                               ; preds = %5
  tail call void @device_initialize(ptr noundef nonnull %3) #9
  %15 = load i32, ptr @watchdog_devt, align 4
  %16 = and i32 %15, -1048576
  %17 = load i32, ptr %0, align 4
  %18 = or i32 %16, %17
  %19 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  store i32 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 31
  store ptr @watchdog_class, ptr %20, align 4
  %21 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 32
  store ptr %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 33
  store ptr @watchdog_core_data_release, ptr %27, align 4
  %28 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  store ptr %0, ptr %28, align 8
  %29 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %3, ptr noundef nonnull @.str.6, i32 noundef %17) #9
  %30 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 8
  %31 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 8, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(20) %31, i8 0, i32 12, i1 false) #9
  store volatile ptr %30, ptr %30, align 8
  %32 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 8, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store ptr @watchdog_ping_work, ptr %31, align 8
  %33 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 7
  tail call void @hrtimer_init(ptr noundef %33, i32 noundef 1, i32 noundef 9) #9
  %34 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 7, i32 2
  store ptr @watchdog_timer_expired, ptr %34, align 8
  %35 = load i32, ptr %0, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %14
  store ptr %3, ptr @old_wd_data, align 4
  %38 = load ptr, ptr %21, align 4
  store ptr %38, ptr getelementptr inbounds (%struct.miscdevice, ptr @watchdog_miscdev, i32 0, i32 4), align 4
  %39 = tail call i32 @misc_register(ptr noundef nonnull @watchdog_miscdev) #9
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.watchdog_info, ptr %43, i32 0, i32 2
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %44, i32 noundef 130, i32 noundef %39) #10
  %46 = icmp eq i32 %39, -16
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load ptr, ptr %42, align 4
  %49 = getelementptr inbounds %struct.watchdog_info, ptr %48, i32 0, i32 2
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %49) #10
  br label %51

51:                                               ; preds = %47, %41
  store ptr null, ptr @old_wd_data, align 4
  tail call void @put_device(ptr noundef nonnull %3) #9
  br label %97

52:                                               ; preds = %37, %14
  %53 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 1
  tail call void @cdev_init(ptr noundef %53, ptr noundef nonnull @watchdog_fops) #9
  %54 = tail call i32 @cdev_device_add(ptr noundef %53, ptr noundef nonnull %3) #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load i32, ptr %0, align 4
  %58 = load i32, ptr @watchdog_devt, align 4
  %59 = lshr i32 %58, 20
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %57, i32 noundef %59, i32 noundef %57) #10
  %61 = load i32, ptr %0, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %97

63:                                               ; preds = %56
  tail call void @misc_deregister(ptr noundef nonnull @watchdog_miscdev) #9
  store ptr null, ptr @old_wd_data, align 4
  tail call void @put_device(ptr noundef nonnull %3) #9
  br label %97

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 4
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 1, i32 1
  store ptr %67, ptr %68, align 4
  %69 = tail call i64 @ktime_get() #9
  %70 = add i64 %69, -1
  %71 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 5
  store i64 %70, ptr %71, align 8
  %72 = load i32, ptr @open_timeout, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %64
  %75 = tail call i64 @ktime_get() #9
  %76 = load i32, ptr @open_timeout, align 4
  %77 = zext i32 %76 to i64
  %78 = mul nuw nsw i64 %77, 1000000000
  %79 = add i64 %78, %75
  br label %80

80:                                               ; preds = %74, %64
  %81 = phi i64 [ %79, %74 ], [ 9223372036854775807, %64 ]
  %82 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 6
  store i64 %81, ptr %82, align 8
  %83 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 18
  %84 = load volatile i32, ptr %83, align 4
  %85 = and i32 %84, 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %80
  %88 = load ptr, ptr %65, align 4
  %89 = load ptr, ptr %88, align 4
  tail call void @__module_get(ptr noundef %89) #9
  %90 = tail call ptr @get_device(ptr noundef nonnull %3) #9
  %91 = load i8, ptr @handle_boot_enabled, align 1, !range !8
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  tail call void @hrtimer_start_range_ns(ptr noundef %33, i64 noundef 0, i64 noundef 0, i32 noundef 9) #9
  br label %97

94:                                               ; preds = %87
  %95 = load i32, ptr %0, align 4
  %96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %95) #10
  br label %97

97:                                               ; preds = %94, %93, %80, %63, %56, %51, %13, %1
  %98 = phi i32 [ 0, %94 ], [ 0, %93 ], [ 0, %80 ], [ %54, %56 ], [ %54, %63 ], [ -12, %1 ], [ %39, %51 ], [ -19, %13 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @watchdog_dev_unregister(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 1
  tail call void @cdev_device_del(ptr noundef %4, ptr noundef %3) #9
  %5 = load i32, ptr %0, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @misc_deregister(ptr noundef nonnull @watchdog_miscdev) #9
  store ptr null, ptr @old_wd_data, align 4
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 18
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = load volatile i32, ptr %9, align 4
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call fastcc i32 @watchdog_stop(ptr noundef %0) #9
  br label %19

19:                                               ; preds = %17, %13, %8
  %20 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %20) #9
  %21 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 2
  store ptr null, ptr %21, align 4
  store ptr null, ptr %2, align 4
  tail call void @mutex_unlock(ptr noundef %20) #9
  %22 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 7
  %23 = tail call i32 @hrtimer_cancel(ptr noundef %22) #9
  %24 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 8
  %25 = tail call zeroext i1 @kthread_cancel_work_sync(ptr noundef %24) #9
  tail call void @put_device(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @watchdog_set_last_hw_keepalive(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i64 @ktime_get() #9
  %8 = zext i32 %1 to i64
  %9 = mul nsw i64 %8, -1000000
  %10 = add i64 %7, %9
  %11 = getelementptr inbounds %struct.watchdog_core_data, ptr %6, i32 0, i32 5
  store i64 %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 18
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  %16 = load i8, ptr @handle_boot_enabled, align 1
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = tail call fastcc i32 @__watchdog_ping(ptr noundef nonnull %0)
  br label %21

21:                                               ; preds = %19, %4, %2
  %22 = phi i32 [ %20, %19 ], [ -22, %2 ], [ 0, %4 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__watchdog_ping(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 5
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = zext i32 %7 to i64
  %9 = mul nuw nsw i64 %8, 1000000
  %10 = add i64 %9, %5
  %11 = tail call i64 @ktime_get() #9
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 7
  %15 = sub i64 %10, %11
  tail call void @hrtimer_start_range_ns(ptr noundef %14, i64 noundef %15, i64 noundef 0, i32 noundef 9) #9
  br label %86

16:                                               ; preds = %1
  store i64 %11, ptr %4, align 8
  %17 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.watchdog_ops, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.watchdog_ops, ptr %18, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %16
  %26 = phi ptr [ %24, %22 ], [ %20, %16 ]
  %27 = tail call i32 %26(ptr noundef %0) #9
  %28 = load ptr, ptr %2, align 4
  %29 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 12
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = mul i32 %32, 1000
  %34 = icmp eq i32 %30, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 18
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  %40 = icmp ugt i32 %33, %30
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %53, label %42

42:                                               ; preds = %35, %25
  %43 = icmp eq i32 %33, 0
  br i1 %43, label %83, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 18
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %83

49:                                               ; preds = %44
  %50 = load volatile i32, ptr %45, align 4
  %51 = and i32 %50, 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %83, label %53

53:                                               ; preds = %49, %35
  %54 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 18
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.watchdog_core_data, ptr %28, i32 0, i32 4
  %60 = load i64, ptr %59, align 8
  %61 = zext i32 %33 to i64
  %62 = mul nuw nsw i64 %61, 1000000
  %63 = add i64 %60, %62
  br label %67

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.watchdog_core_data, ptr %28, i32 0, i32 6
  %66 = load i64, ptr %65, align 8
  br label %67

67:                                               ; preds = %64, %58
  %68 = phi i64 [ %63, %58 ], [ %66, %64 ]
  %69 = tail call i32 @llvm.umin.i32(i32 %33, i32 %30) #9
  %70 = select i1 %34, i32 %33, i32 %69
  %71 = lshr i32 %70, 1
  %72 = zext i32 %71 to i64
  %73 = mul nuw nsw i64 %72, 1000000
  %74 = zext i32 %70 to i64
  %75 = tail call i64 @ktime_get() #9
  %76 = mul nsw i64 %74, -1000000
  %77 = add i64 %68, %76
  %78 = sub i64 %77, %75
  %79 = tail call i64 @llvm.smin.i64(i64 %78, i64 %73) #9
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %67
  %82 = getelementptr inbounds %struct.watchdog_core_data, ptr %28, i32 0, i32 7
  tail call void @hrtimer_start_range_ns(ptr noundef %82, i64 noundef %79, i64 noundef 0, i32 noundef 9) #9
  br label %86

83:                                               ; preds = %49, %44, %42
  %84 = getelementptr inbounds %struct.watchdog_core_data, ptr %28, i32 0, i32 7
  %85 = tail call i32 @hrtimer_cancel(ptr noundef %84) #9
  br label %86

86:                                               ; preds = %83, %81, %67, %13
  %87 = phi i32 [ 0, %13 ], [ %27, %67 ], [ %27, %81 ], [ %27, %83 ]
  ret i32 %87
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @watchdog_dev_init() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call ptr (i32, ptr, ...) @kthread_create_worker(i32 noundef 0, ptr noundef nonnull @.str) #9
  store ptr %1, ptr @watchdog_kworker, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  %5 = load ptr, ptr @watchdog_kworker, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %22

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.kthread_worker, ptr %1, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void @sched_set_fifo(ptr noundef %9) #9
  %10 = tail call i32 @__class_register(ptr noundef nonnull @watchdog_class, ptr noundef nonnull @watchdog_dev_init.__key) #9
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %19

14:                                               ; preds = %7
  %15 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @watchdog_devt, i32 noundef 0, i32 noundef 32, ptr noundef nonnull @.str.3) #9
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  tail call void @class_unregister(ptr noundef nonnull @watchdog_class) #9
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i32 [ %10, %12 ], [ %15, %17 ]
  %21 = load ptr, ptr @watchdog_kworker, align 4
  tail call void @kthread_destroy_worker(ptr noundef %21) #9
  br label %22

22:                                               ; preds = %19, %14, %3
  %23 = phi i32 [ %6, %3 ], [ %20, %19 ], [ 0, %14 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_worker(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_destroy_worker(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @watchdog_dev_exit() #2 section ".exit.text" {
  %1 = load i32, ptr @watchdog_devt, align 4
  tail call void @unregister_chrdev_region(i32 noundef %1, i32 noundef 32) #9
  tail call void @class_unregister(ptr noundef nonnull @watchdog_class) #9
  %2 = load ptr, ptr @watchdog_kworker, align 4
  tail call void @kthread_destroy_worker(ptr noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @watchdog_dev_suspend(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %36, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.watchdog_device, ptr %8, i32 0, i32 18
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = load volatile i32, ptr %11, align 4
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = tail call i64 @ktime_get() #9
  %21 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 6
  %22 = load i64, ptr %21, align 8
  %23 = icmp sgt i64 %20, %22
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %7, align 4
  br label %27

26:                                               ; preds = %19, %15, %5
  tail call void @mutex_unlock(ptr noundef %6) #9
  br label %31

27:                                               ; preds = %24, %10
  %28 = phi ptr [ %25, %24 ], [ %8, %10 ]
  %29 = tail call fastcc i32 @__watchdog_ping(ptr noundef %28)
  tail call void @mutex_unlock(ptr noundef %6) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27, %26
  %32 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 7
  %33 = tail call i32 @hrtimer_cancel(ptr noundef %32) #9
  %34 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 8
  %35 = tail call zeroext i1 @kthread_cancel_work_sync(ptr noundef %34) #9
  br label %36

36:                                               ; preds = %31, %27, %1
  %37 = phi i32 [ 0, %31 ], [ -19, %1 ], [ %29, %27 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @watchdog_dev_resume(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.watchdog_device, ptr %8, i32 0, i32 18
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load volatile i32, ptr %11, align 4
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %15
  %20 = tail call i64 @ktime_get() #9
  %21 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 6
  %22 = load i64, ptr %21, align 8
  %23 = icmp sgt i64 %20, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %7, align 4
  br label %26

26:                                               ; preds = %24, %10
  %27 = phi ptr [ %25, %24 ], [ %8, %10 ]
  %28 = tail call fastcc i32 @__watchdog_ping(ptr noundef %27)
  br label %29

29:                                               ; preds = %26, %19, %15, %5
  %30 = phi i32 [ %28, %26 ], [ 0, %19 ], [ 0, %5 ], [ 0, %15 ]
  tail call void @mutex_unlock(ptr noundef %6) #9
  br label %31

31:                                               ; preds = %29, %1
  %32 = phi i32 [ %30, %29 ], [ -19, %1 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @watchdog_core_data_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @watchdog_ping_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -96
  tail call void @mutex_lock(ptr noundef %2) #9
  %3 = getelementptr i8, ptr %0, i32 -100
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 18
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load volatile i32, ptr %7, align 4
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = tail call i64 @ktime_get() #9
  %17 = getelementptr i8, ptr %0, i32 -56
  %18 = load i64, ptr %17, align 8
  %19 = icmp sgt i64 %16, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %3, align 4
  br label %22

22:                                               ; preds = %20, %6
  %23 = phi ptr [ %21, %20 ], [ %4, %6 ]
  %24 = tail call fastcc i32 @__watchdog_ping(ptr noundef %23)
  br label %25

25:                                               ; preds = %22, %15, %11, %1
  tail call void @mutex_unlock(ptr noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @watchdog_timer_expired(ptr noundef %0) #0 {
  %2 = load ptr, ptr @watchdog_kworker, align 4
  %3 = getelementptr i8, ptr %0, i32 48
  %4 = tail call zeroext i1 @kthread_queue_work(ptr noundef %2, ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @watchdog_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %55, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.watchdog_core_data, ptr %6, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %9) #9
  %10 = tail call ptr @llvm.thread.pointer() #9
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  br label %12

12:                                               ; preds = %26, %8
  %13 = phi i32 [ 0, %8 ], [ %27, %26 ]
  %14 = getelementptr i8, ptr %1, i32 %13
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #11, !srcloc !9
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %18 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %14, i32 -1090519041) #9, !srcloc !12
  %19 = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %12
  %22 = extractvalue { i32, i32 } %18, 1
  %23 = and i32 %22, 255
  %24 = icmp eq i32 %23, 86
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @_set_bit(i32 noundef 1, ptr noundef %9) #9
  br label %26

26:                                               ; preds = %25, %21
  %27 = add nuw i32 %13, 1
  %28 = icmp eq i32 %27, %2
  br i1 %28, label %29, label %12

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.watchdog_core_data, ptr %6, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %30) #9
  %31 = getelementptr inbounds %struct.watchdog_core_data, ptr %6, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  tail call void @mutex_unlock(ptr noundef %30) #9
  br label %53

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.watchdog_device, ptr %32, i32 0, i32 17
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.watchdog_device, ptr %32, i32 0, i32 18
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load volatile i32, ptr %38, align 4
  %44 = and i32 %43, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  tail call void @mutex_unlock(ptr noundef %30) #9
  br label %55

47:                                               ; preds = %42, %35
  %48 = getelementptr inbounds %struct.watchdog_core_data, ptr %37, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %48) #9
  %49 = tail call i64 @ktime_get() #9
  %50 = getelementptr inbounds %struct.watchdog_core_data, ptr %37, i32 0, i32 4
  store i64 %49, ptr %50, align 8
  %51 = tail call fastcc i32 @__watchdog_ping(ptr noundef nonnull %32) #9
  tail call void @mutex_unlock(ptr noundef %30) #9
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47, %34
  %54 = phi i32 [ -19, %34 ], [ %51, %47 ]
  br label %55

55:                                               ; preds = %53, %47, %46, %12, %4
  %56 = phi i32 [ 0, %4 ], [ %54, %53 ], [ %2, %47 ], [ %2, %46 ], [ -14, %12 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @watchdog_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = inttoptr i32 %2 to ptr
  %7 = getelementptr inbounds %struct.watchdog_core_data, ptr %5, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.watchdog_core_data, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %166, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.watchdog_device, ptr %9, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.watchdog_ops, ptr %13, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = tail call i32 %15(ptr noundef nonnull %9, i32 noundef %1, i32 noundef %2) #9
  %19 = icmp eq i32 %18, -515
  br i1 %19, label %20, label %166

20:                                               ; preds = %17, %11
  switch i32 %1, label %166 [
    i32 -2144839936, label %21
    i32 -2147199231, label %36
    i32 -2147199230, label %66
    i32 -2147199228, label %75
    i32 -2147199227, label %97
    i32 -1073457402, label %105
    i32 -2147199225, label %121
    i32 -2147199222, label %132
    i32 -1073457400, label %145
    i32 -2147199223, label %157
  ]

21:                                               ; preds = %20
  %22 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 40, i32 -1090519040) #12, !srcloc !13
  %23 = extractvalue { i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %166

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.watchdog_device, ptr %9, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = tail call ptr @llvm.thread.pointer() #9
  %29 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %29) #11, !srcloc !9
  %31 = and i32 %30, -13
  %32 = or i32 %31, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %33 = tail call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef %27, i32 noundef 40) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 0, i32 -14
  br label %166

36:                                               ; preds = %20
  %37 = getelementptr inbounds %struct.watchdog_device, ptr %9, i32 0, i32 17
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %12, align 4
  %40 = getelementptr inbounds %struct.watchdog_ops, ptr %39, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = tail call i32 %41(ptr noundef nonnull %9) #9
  br label %49

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.watchdog_device, ptr %9, i32 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 127
  br label %49

49:                                               ; preds = %45, %43
  %50 = phi i32 [ %44, %43 ], [ %48, %45 ]
  %51 = getelementptr inbounds %struct.watchdog_core_data, ptr %38, i32 0, i32 9
  %52 = load volatile i32, ptr %51, align 4
  %53 = shl i32 %52, 7
  %54 = and i32 %53, 256
  %55 = or i32 %54, %50
  %56 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %51) #9
  %57 = icmp eq i32 %56, 0
  %58 = or i32 %55, 32768
  %59 = select i1 %57, i32 %55, i32 %58
  %60 = tail call ptr @llvm.thread.pointer() #9
  %61 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 3
  %62 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %61) #11, !srcloc !9
  %63 = and i32 %62, -13
  %64 = or i32 %63, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %64) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %65 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %6, i32 %59, i32 -1090519041) #9, !srcloc !14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  br label %166

66:                                               ; preds = %20
  %67 = getelementptr inbounds %struct.watchdog_device, ptr %9, i32 0, i32 6
  %68 = load i32, ptr %67, align 4
  %69 = tail call ptr @llvm.thread.pointer() #9
  %70 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 3
  %71 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %70) #11, !srcloc !9
  %72 = and i32 %71, -13
  %73 = or i32 %72, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %73) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %74 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %6, i32 %68, i32 -1090519041) #9, !srcloc !15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %71) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  br label %166

75:                                               ; preds = %20
  %76 = tail call ptr @llvm.thread.pointer() #9
  %77 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 3
  %78 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %77) #11, !srcloc !9
  %79 = and i32 %78, -13
  %80 = or i32 %79, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %81 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %6, i32 -1090519041) #9, !srcloc !16
  %82 = extractvalue { i32, i32 } %81, 0
  %83 = extractvalue { i32, i32 } %81, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %78) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %84 = icmp eq i32 %82, 0
  br i1 %84, label %85, label %166

85:                                               ; preds = %75
  %86 = and i32 %83, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = tail call fastcc i32 @watchdog_stop(ptr noundef nonnull %9)
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %166, label %91

91:                                               ; preds = %88, %85
  %92 = phi i32 [ %89, %88 ], [ -515, %85 ]
  %93 = and i32 %83, 2
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %166, label %95

95:                                               ; preds = %91
  %96 = tail call fastcc i32 @watchdog_start(ptr noundef nonnull %9)
  br label %166

97:                                               ; preds = %20
  %98 = getelementptr inbounds %struct.watchdog_device, ptr %9, i32 0, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 32768
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %166, label %103

103:                                              ; preds = %97
  %104 = tail call fastcc i32 @watchdog_ping(ptr noundef nonnull %9)
  br label %166

105:                                              ; preds = %20
  %106 = tail call ptr @llvm.thread.pointer() #9
  %107 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 3
  %108 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %107) #11, !srcloc !9
  %109 = and i32 %108, -13
  %110 = or i32 %109, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %110) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %111 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %6, i32 -1090519041) #9, !srcloc !17
  %112 = extractvalue { i32, i32 } %111, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %108) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %166

114:                                              ; preds = %105
  %115 = extractvalue { i32, i32 } %111, 1
  %116 = tail call fastcc i32 @watchdog_set_timeout(ptr noundef nonnull %9, i32 noundef %115)
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %166, label %118

118:                                              ; preds = %114
  %119 = tail call fastcc i32 @watchdog_ping(ptr noundef nonnull %9)
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %166, label %121

121:                                              ; preds = %118, %20
  %122 = getelementptr inbounds %struct.watchdog_device, ptr %9, i32 0, i32 7
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %166, label %125

125:                                              ; preds = %121
  %126 = tail call ptr @llvm.thread.pointer() #9
  %127 = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 3
  %128 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %127) #11, !srcloc !9
  %129 = and i32 %128, -13
  %130 = or i32 %129, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %130) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %131 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %6, i32 %123, i32 -1090519041) #9, !srcloc !18
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %128) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  br label %166

132:                                              ; preds = %20
  %133 = load ptr, ptr %12, align 4
  %134 = getelementptr inbounds %struct.watchdog_ops, ptr %133, i32 0, i32 7
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %166, label %137

137:                                              ; preds = %132
  %138 = tail call i32 %135(ptr noundef nonnull %9) #9
  %139 = tail call ptr @llvm.thread.pointer() #9
  %140 = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 3
  %141 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %140) #11, !srcloc !9
  %142 = and i32 %141, -13
  %143 = or i32 %142, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %143) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %144 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %6, i32 %138, i32 -1090519041) #9, !srcloc !19
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %141) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  br label %166

145:                                              ; preds = %20
  %146 = tail call ptr @llvm.thread.pointer() #9
  %147 = getelementptr inbounds %struct.thread_info, ptr %146, i32 0, i32 3
  %148 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %147) #11, !srcloc !9
  %149 = and i32 %148, -13
  %150 = or i32 %149, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %150) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %151 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %6, i32 -1090519041) #9, !srcloc !20
  %152 = extractvalue { i32, i32 } %151, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %148) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %145
  %155 = extractvalue { i32, i32 } %151, 1
  %156 = tail call fastcc i32 @watchdog_set_pretimeout(ptr noundef nonnull %9, i32 noundef %155)
  br label %166

157:                                              ; preds = %20
  %158 = getelementptr inbounds %struct.watchdog_device, ptr %9, i32 0, i32 8
  %159 = load i32, ptr %158, align 4
  %160 = tail call ptr @llvm.thread.pointer() #9
  %161 = getelementptr inbounds %struct.thread_info, ptr %160, i32 0, i32 3
  %162 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %161) #11, !srcloc !9
  %163 = and i32 %162, -13
  %164 = or i32 %163, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %164) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %165 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %6, i32 %159, i32 -1090519041) #9, !srcloc !21
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %162) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  br label %166

166:                                              ; preds = %157, %154, %145, %137, %132, %125, %121, %118, %114, %105, %103, %97, %95, %91, %88, %75, %66, %49, %25, %21, %20, %17, %3
  %167 = phi i32 [ %18, %17 ], [ %165, %157 ], [ %156, %154 ], [ %144, %137 ], [ %131, %125 ], [ %116, %114 ], [ %119, %118 ], [ %104, %103 ], [ %89, %88 ], [ %96, %95 ], [ %92, %91 ], [ %74, %66 ], [ %65, %49 ], [ -19, %3 ], [ -14, %75 ], [ -95, %97 ], [ -14, %105 ], [ -95, %121 ], [ -14, %145 ], [ -25, %20 ], [ -14, %21 ], [ -95, %132 ], [ %35, %25 ]
  tail call void @mutex_unlock(ptr noundef %7) #9
  ret i32 %167
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @watchdog_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, -1048576
  %6 = icmp eq i32 %5, 10485760
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load ptr, ptr @old_wd_data, align 4
  br label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 -472
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi ptr [ %8, %7 ], [ %12, %9 ]
  %15 = getelementptr inbounds %struct.watchdog_core_data, ptr %14, i32 0, i32 9
  %16 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %15) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.watchdog_core_data, ptr %14, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.watchdog_device, ptr %20, i32 0, i32 18
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.watchdog_device, ptr %20, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = tail call zeroext i1 @try_module_get(ptr noundef %28) #9
  br i1 %29, label %33, label %50

30:                                               ; preds = %18
  %31 = tail call fastcc i32 @watchdog_start(ptr noundef %20)
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %44, label %36

33:                                               ; preds = %25
  %34 = tail call fastcc i32 @watchdog_start(ptr noundef %20)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %44, label %38

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %14, ptr %37, align 8
  br label %41

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %14, ptr %39, align 8
  %40 = tail call ptr @get_device(ptr noundef %14) #9
  br label %41

41:                                               ; preds = %38, %36
  %42 = getelementptr inbounds %struct.watchdog_core_data, ptr %14, i32 0, i32 6
  store i64 9223372036854775807, ptr %42, align 8
  %43 = tail call i32 @stream_open(ptr noundef %0, ptr noundef %1) #9
  br label %52

44:                                               ; preds = %33, %30
  %45 = phi i32 [ %34, %33 ], [ %31, %30 ]
  %46 = load ptr, ptr %19, align 4
  %47 = getelementptr inbounds %struct.watchdog_device, ptr %46, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %48, align 4
  tail call void @module_put(ptr noundef %49) #9
  br label %50

50:                                               ; preds = %44, %25
  %51 = phi i32 [ %45, %44 ], [ -16, %25 ]
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %15) #9
  br label %52

52:                                               ; preds = %50, %41, %13
  %53 = phi i32 [ %51, %50 ], [ %43, %41 ], [ -16, %13 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @watchdog_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.watchdog_core_data, ptr %4, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.watchdog_core_data, ptr %4, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %222, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.watchdog_device, ptr %7, i32 0, i32 18
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %101, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.watchdog_core_data, ptr %4, i32 0, i32 9
  %16 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %15) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.watchdog_device, ptr %7, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 256
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %14
  %25 = tail call fastcc i32 @watchdog_stop(ptr noundef nonnull %7)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %160

27:                                               ; preds = %24, %18
  %28 = load i32, ptr %7, align 4
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %28) #10
  %30 = getelementptr inbounds %struct.watchdog_device, ptr %7, i32 0, i32 17
  %31 = load ptr, ptr %30, align 4
  %32 = load volatile i32, ptr %10, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load volatile i32, ptr %10, align 4
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35, %27
  %40 = getelementptr inbounds %struct.watchdog_core_data, ptr %31, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %40) #9
  %41 = tail call i64 @ktime_get() #9
  %42 = getelementptr inbounds %struct.watchdog_core_data, ptr %31, i32 0, i32 4
  store i64 %41, ptr %42, align 8
  %43 = tail call fastcc i32 @__watchdog_ping(ptr noundef nonnull %7) #9
  %44 = load ptr, ptr %30, align 4
  br label %45

45:                                               ; preds = %39, %35
  %46 = phi ptr [ %31, %35 ], [ %44, %39 ]
  %47 = getelementptr inbounds %struct.watchdog_device, ptr %7, i32 0, i32 12
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.watchdog_device, ptr %7, i32 0, i32 7
  %50 = load i32, ptr %49, align 4
  %51 = mul i32 %50, 1000
  %52 = icmp eq i32 %48, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %45
  %54 = load volatile i32, ptr %10, align 4
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  %57 = icmp ugt i32 %51, %48
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %69, label %59

59:                                               ; preds = %53, %45
  %60 = icmp eq i32 %51, 0
  br i1 %60, label %98, label %61

61:                                               ; preds = %59
  %62 = load volatile i32, ptr %10, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %98

65:                                               ; preds = %61
  %66 = load volatile i32, ptr %10, align 4
  %67 = and i32 %66, 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %98, label %69

69:                                               ; preds = %65, %53
  %70 = load volatile i32, ptr %10, align 4
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.watchdog_core_data, ptr %46, i32 0, i32 4
  %75 = load i64, ptr %74, align 8
  %76 = zext i32 %51 to i64
  %77 = mul nuw nsw i64 %76, 1000000
  %78 = add i64 %75, %77
  br label %82

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.watchdog_core_data, ptr %46, i32 0, i32 6
  %81 = load i64, ptr %80, align 8
  br label %82

82:                                               ; preds = %79, %73
  %83 = phi i64 [ %78, %73 ], [ %81, %79 ]
  %84 = tail call i32 @llvm.umin.i32(i32 %51, i32 %48) #9
  %85 = select i1 %52, i32 %51, i32 %84
  %86 = lshr i32 %85, 1
  %87 = zext i32 %86 to i64
  %88 = mul nuw nsw i64 %87, 1000000
  %89 = zext i32 %85 to i64
  %90 = tail call i64 @ktime_get() #9
  %91 = mul nsw i64 %89, -1000000
  %92 = add i64 %83, %91
  %93 = sub i64 %92, %90
  %94 = tail call i64 @llvm.smin.i64(i64 %93, i64 %88) #9
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %217

96:                                               ; preds = %82
  %97 = getelementptr inbounds %struct.watchdog_core_data, ptr %46, i32 0, i32 7
  tail call void @hrtimer_start_range_ns(ptr noundef %97, i64 noundef %94, i64 noundef 0, i32 noundef 9) #9
  br label %217

98:                                               ; preds = %65, %61, %59
  %99 = getelementptr inbounds %struct.watchdog_core_data, ptr %46, i32 0, i32 7
  %100 = tail call i32 @hrtimer_cancel(ptr noundef %99) #9
  br label %217

101:                                              ; preds = %9
  %102 = getelementptr inbounds %struct.watchdog_device, ptr %7, i32 0, i32 17
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.watchdog_device, ptr %7, i32 0, i32 12
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds %struct.watchdog_device, ptr %7, i32 0, i32 7
  %107 = load i32, ptr %106, align 4
  %108 = mul i32 %107, 1000
  %109 = icmp eq i32 %105, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %101
  %111 = load volatile i32, ptr %10, align 4
  %112 = and i32 %111, 1
  %113 = icmp ne i32 %112, 0
  %114 = icmp ugt i32 %108, %105
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %126, label %116

116:                                              ; preds = %110, %101
  %117 = icmp eq i32 %108, 0
  br i1 %117, label %155, label %118

118:                                              ; preds = %116
  %119 = load volatile i32, ptr %10, align 4
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %155

122:                                              ; preds = %118
  %123 = load volatile i32, ptr %10, align 4
  %124 = and i32 %123, 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %155, label %126

126:                                              ; preds = %122, %110
  %127 = load volatile i32, ptr %10, align 4
  %128 = and i32 %127, 1
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.watchdog_core_data, ptr %103, i32 0, i32 4
  %132 = load i64, ptr %131, align 8
  %133 = zext i32 %108 to i64
  %134 = mul nuw nsw i64 %133, 1000000
  %135 = add i64 %132, %134
  br label %139

136:                                              ; preds = %126
  %137 = getelementptr inbounds %struct.watchdog_core_data, ptr %103, i32 0, i32 6
  %138 = load i64, ptr %137, align 8
  br label %139

139:                                              ; preds = %136, %130
  %140 = phi i64 [ %135, %130 ], [ %138, %136 ]
  %141 = tail call i32 @llvm.umin.i32(i32 %108, i32 %105) #9
  %142 = select i1 %109, i32 %108, i32 %141
  %143 = lshr i32 %142, 1
  %144 = zext i32 %143 to i64
  %145 = mul nuw nsw i64 %144, 1000000
  %146 = zext i32 %142 to i64
  %147 = tail call i64 @ktime_get() #9
  %148 = mul nsw i64 %146, -1000000
  %149 = add i64 %140, %148
  %150 = sub i64 %149, %147
  %151 = tail call i64 @llvm.smin.i64(i64 %150, i64 %145) #9
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %139
  %154 = getelementptr inbounds %struct.watchdog_core_data, ptr %103, i32 0, i32 7
  tail call void @hrtimer_start_range_ns(ptr noundef %154, i64 noundef %151, i64 noundef 0, i32 noundef 9) #9
  br label %158

155:                                              ; preds = %122, %118, %116
  %156 = getelementptr inbounds %struct.watchdog_core_data, ptr %103, i32 0, i32 7
  %157 = tail call i32 @hrtimer_cancel(ptr noundef %156) #9
  br label %158

158:                                              ; preds = %155, %153, %139
  %159 = getelementptr inbounds %struct.watchdog_core_data, ptr %4, i32 0, i32 9
  br label %217

160:                                              ; preds = %24
  %161 = getelementptr inbounds %struct.watchdog_device, ptr %7, i32 0, i32 17
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr inbounds %struct.watchdog_device, ptr %7, i32 0, i32 12
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr inbounds %struct.watchdog_device, ptr %7, i32 0, i32 7
  %166 = load i32, ptr %165, align 4
  %167 = mul i32 %166, 1000
  %168 = icmp eq i32 %164, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %160
  %170 = load volatile i32, ptr %10, align 4
  %171 = and i32 %170, 1
  %172 = icmp ne i32 %171, 0
  %173 = icmp ugt i32 %167, %164
  %174 = select i1 %172, i1 %173, i1 false
  br i1 %174, label %185, label %175

175:                                              ; preds = %169, %160
  %176 = icmp eq i32 %167, 0
  br i1 %176, label %214, label %177

177:                                              ; preds = %175
  %178 = load volatile i32, ptr %10, align 4
  %179 = and i32 %178, 1
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %214

181:                                              ; preds = %177
  %182 = load volatile i32, ptr %10, align 4
  %183 = and i32 %182, 8
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %214, label %185

185:                                              ; preds = %181, %169
  %186 = load volatile i32, ptr %10, align 4
  %187 = and i32 %186, 1
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.watchdog_core_data, ptr %162, i32 0, i32 4
  %191 = load i64, ptr %190, align 8
  %192 = zext i32 %167 to i64
  %193 = mul nuw nsw i64 %192, 1000000
  %194 = add i64 %191, %193
  br label %198

195:                                              ; preds = %185
  %196 = getelementptr inbounds %struct.watchdog_core_data, ptr %162, i32 0, i32 6
  %197 = load i64, ptr %196, align 8
  br label %198

198:                                              ; preds = %195, %189
  %199 = phi i64 [ %194, %189 ], [ %197, %195 ]
  %200 = tail call i32 @llvm.umin.i32(i32 %167, i32 %164) #9
  %201 = select i1 %168, i32 %167, i32 %200
  %202 = lshr i32 %201, 1
  %203 = zext i32 %202 to i64
  %204 = mul nuw nsw i64 %203, 1000000
  %205 = zext i32 %201 to i64
  %206 = tail call i64 @ktime_get() #9
  %207 = mul nsw i64 %205, -1000000
  %208 = add i64 %199, %207
  %209 = sub i64 %208, %206
  %210 = tail call i64 @llvm.smin.i64(i64 %209, i64 %204) #9
  %211 = icmp sgt i64 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %198
  %213 = getelementptr inbounds %struct.watchdog_core_data, ptr %162, i32 0, i32 7
  tail call void @hrtimer_start_range_ns(ptr noundef %213, i64 noundef %210, i64 noundef 0, i32 noundef 9) #9
  br label %217

214:                                              ; preds = %181, %177, %175
  %215 = getelementptr inbounds %struct.watchdog_core_data, ptr %162, i32 0, i32 7
  %216 = tail call i32 @hrtimer_cancel(ptr noundef %215) #9
  br label %217

217:                                              ; preds = %214, %212, %198, %158, %98, %96, %82
  %218 = phi ptr [ %159, %158 ], [ %15, %82 ], [ %15, %96 ], [ %15, %98 ], [ %15, %198 ], [ %15, %212 ], [ %15, %214 ]
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %218) #9
  %219 = load volatile i32, ptr %10, align 4
  %220 = and i32 %219, 8
  %221 = icmp eq i32 %220, 0
  tail call void @mutex_unlock(ptr noundef %5) #9
  br i1 %221, label %223, label %226

222:                                              ; preds = %2
  tail call void @mutex_unlock(ptr noundef %5) #9
  br label %223

223:                                              ; preds = %222, %217
  %224 = getelementptr inbounds %struct.watchdog_core_data, ptr %4, i32 0, i32 1, i32 1
  %225 = load ptr, ptr %224, align 4
  tail call void @module_put(ptr noundef %225) #9
  tail call void @put_device(ptr noundef %4) #9
  br label %226

226:                                              ; preds = %223, %217
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @watchdog_ping(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 18
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %13) #9
  %14 = tail call i64 @ktime_get() #9
  %15 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 4
  store i64 %14, ptr %15, align 8
  %16 = tail call fastcc i32 @__watchdog_ping(ptr noundef %0)
  br label %17

17:                                               ; preds = %12, %8
  %18 = phi i32 [ %16, %12 ], [ 0, %8 ]
  ret i32 %18
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @watchdog_stop(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 18
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %83, label %6

6:                                                ; preds = %1
  %7 = load volatile i32, ptr %2, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %0, align 4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %11) #10
  br label %83

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.watchdog_ops, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  tail call void @_set_bit(i32 noundef 3, ptr noundef %2) #9
  br label %26

20:                                               ; preds = %13
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #9
  %21 = load ptr, ptr %14, align 4
  %22 = getelementptr inbounds %struct.watchdog_ops, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %0) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %83

26:                                               ; preds = %20, %19
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %2) #9
  %27 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 12
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = mul i32 %32, 1000
  %34 = icmp eq i32 %30, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %26
  %36 = load volatile i32, ptr %2, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  %39 = icmp ugt i32 %33, %30
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %51, label %41

41:                                               ; preds = %35, %26
  %42 = icmp eq i32 %33, 0
  br i1 %42, label %80, label %43

43:                                               ; preds = %41
  %44 = load volatile i32, ptr %2, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %80

47:                                               ; preds = %43
  %48 = load volatile i32, ptr %2, align 4
  %49 = and i32 %48, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %80, label %51

51:                                               ; preds = %47, %35
  %52 = load volatile i32, ptr %2, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.watchdog_core_data, ptr %28, i32 0, i32 4
  %57 = load i64, ptr %56, align 8
  %58 = zext i32 %33 to i64
  %59 = mul nuw nsw i64 %58, 1000000
  %60 = add i64 %57, %59
  br label %64

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.watchdog_core_data, ptr %28, i32 0, i32 6
  %63 = load i64, ptr %62, align 8
  br label %64

64:                                               ; preds = %61, %55
  %65 = phi i64 [ %60, %55 ], [ %63, %61 ]
  %66 = tail call i32 @llvm.umin.i32(i32 %33, i32 %30) #9
  %67 = select i1 %34, i32 %33, i32 %66
  %68 = lshr i32 %67, 1
  %69 = zext i32 %68 to i64
  %70 = mul nuw nsw i64 %69, 1000000
  %71 = zext i32 %67 to i64
  %72 = tail call i64 @ktime_get() #9
  %73 = mul nsw i64 %71, -1000000
  %74 = add i64 %65, %73
  %75 = sub i64 %74, %72
  %76 = tail call i64 @llvm.smin.i64(i64 %75, i64 %70) #9
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %64
  %79 = getelementptr inbounds %struct.watchdog_core_data, ptr %28, i32 0, i32 7
  tail call void @hrtimer_start_range_ns(ptr noundef %79, i64 noundef %76, i64 noundef 0, i32 noundef 9) #9
  br label %83

80:                                               ; preds = %47, %43, %41
  %81 = getelementptr inbounds %struct.watchdog_core_data, ptr %28, i32 0, i32 7
  %82 = tail call i32 @hrtimer_cancel(ptr noundef %81) #9
  br label %83

83:                                               ; preds = %80, %78, %64, %20, %10, %1
  %84 = phi i32 [ -16, %10 ], [ 0, %1 ], [ %24, %20 ], [ 0, %64 ], [ 0, %78 ], [ 0, %80 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @watchdog_start(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 18
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %87

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %9) #9
  %10 = tail call i64 @ktime_get() #9
  %11 = load volatile i32, ptr %4, align 4
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  br i1 %13, label %24, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.watchdog_ops, ptr %15, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = tail call fastcc i32 @__watchdog_ping(ptr noundef %0)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %87

23:                                               ; preds = %20
  tail call void @_set_bit(i32 noundef 0, ptr noundef %4) #9
  br label %87

24:                                               ; preds = %16, %8
  %25 = getelementptr inbounds %struct.watchdog_ops, ptr %15, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %0) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %87

29:                                               ; preds = %24
  tail call void @_set_bit(i32 noundef 0, ptr noundef %4) #9
  %30 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 4
  store i64 %10, ptr %30, align 8
  %31 = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 5
  store i64 %10, ptr %31, align 8
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 12
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = mul i32 %36, 1000
  %38 = icmp eq i32 %34, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %29
  %40 = load volatile i32, ptr %4, align 4
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  %43 = icmp ugt i32 %37, %34
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %55, label %45

45:                                               ; preds = %39, %29
  %46 = icmp eq i32 %37, 0
  br i1 %46, label %84, label %47

47:                                               ; preds = %45
  %48 = load volatile i32, ptr %4, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %84

51:                                               ; preds = %47
  %52 = load volatile i32, ptr %4, align 4
  %53 = and i32 %52, 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %84, label %55

55:                                               ; preds = %51, %39
  %56 = load volatile i32, ptr %4, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.watchdog_core_data, ptr %32, i32 0, i32 4
  %61 = load i64, ptr %60, align 8
  %62 = zext i32 %37 to i64
  %63 = mul nuw nsw i64 %62, 1000000
  %64 = add i64 %61, %63
  br label %68

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.watchdog_core_data, ptr %32, i32 0, i32 6
  %67 = load i64, ptr %66, align 8
  br label %68

68:                                               ; preds = %65, %59
  %69 = phi i64 [ %64, %59 ], [ %67, %65 ]
  %70 = tail call i32 @llvm.umin.i32(i32 %37, i32 %34) #9
  %71 = select i1 %38, i32 %37, i32 %70
  %72 = lshr i32 %71, 1
  %73 = zext i32 %72 to i64
  %74 = mul nuw nsw i64 %73, 1000000
  %75 = zext i32 %71 to i64
  %76 = tail call i64 @ktime_get() #9
  %77 = mul nsw i64 %75, -1000000
  %78 = add i64 %69, %77
  %79 = sub i64 %78, %76
  %80 = tail call i64 @llvm.smin.i64(i64 %79, i64 %74) #9
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %68
  %83 = getelementptr inbounds %struct.watchdog_core_data, ptr %32, i32 0, i32 7
  tail call void @hrtimer_start_range_ns(ptr noundef %83, i64 noundef %80, i64 noundef 0, i32 noundef 9) #9
  br label %87

84:                                               ; preds = %51, %47, %45
  %85 = getelementptr inbounds %struct.watchdog_core_data, ptr %32, i32 0, i32 7
  %86 = tail call i32 @hrtimer_cancel(ptr noundef %85) #9
  br label %87

87:                                               ; preds = %84, %82, %68, %24, %23, %20, %1
  %88 = phi i32 [ 0, %1 ], [ 0, %23 ], [ %21, %20 ], [ %27, %24 ], [ 0, %68 ], [ 0, %82 ], [ 0, %84 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @watchdog_set_timeout(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 128
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %100, label %8

8:                                                ; preds = %2
  %9 = icmp ugt i32 %1, 4294967
  br i1 %9, label %100, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, %1
  br i1 %13, label %100, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 12
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 10
  %20 = load i32, ptr %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = icmp ult i32 %20, %1
  %23 = and i1 %21, %22
  br i1 %23, label %100, label %24

24:                                               ; preds = %18, %14
  %25 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.watchdog_ops, ptr %26, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = tail call i32 %28(ptr noundef %0, i32 noundef %1) #9
  %32 = load i32, ptr %15, align 4
  %33 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  br label %41

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  store i32 %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 8
  %38 = load i32, ptr %37, align 4
  %39 = icmp ult i32 %38, %1
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 0, ptr %37, align 4
  br label %41

41:                                               ; preds = %40, %35, %30
  %42 = phi i32 [ %34, %30 ], [ %1, %40 ], [ %1, %35 ]
  %43 = phi i32 [ %32, %30 ], [ %16, %40 ], [ %16, %35 ]
  %44 = phi i32 [ %31, %30 ], [ 0, %40 ], [ 0, %35 ]
  %45 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 17
  %46 = load ptr, ptr %45, align 4
  %47 = mul i32 %42, 1000
  %48 = icmp eq i32 %43, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 18
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  %54 = icmp ugt i32 %47, %43
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %67, label %56

56:                                               ; preds = %49, %41
  %57 = icmp eq i32 %47, 0
  br i1 %57, label %97, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 18
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %97

63:                                               ; preds = %58
  %64 = load volatile i32, ptr %59, align 4
  %65 = and i32 %64, 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %97, label %67

67:                                               ; preds = %63, %49
  %68 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 18
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.watchdog_core_data, ptr %46, i32 0, i32 4
  %74 = load i64, ptr %73, align 8
  %75 = zext i32 %47 to i64
  %76 = mul nuw nsw i64 %75, 1000000
  %77 = add i64 %74, %76
  br label %81

78:                                               ; preds = %67
  %79 = getelementptr inbounds %struct.watchdog_core_data, ptr %46, i32 0, i32 6
  %80 = load i64, ptr %79, align 8
  br label %81

81:                                               ; preds = %78, %72
  %82 = phi i64 [ %77, %72 ], [ %80, %78 ]
  %83 = tail call i32 @llvm.umin.i32(i32 %47, i32 %43) #9
  %84 = select i1 %48, i32 %47, i32 %83
  %85 = lshr i32 %84, 1
  %86 = zext i32 %85 to i64
  %87 = mul nuw nsw i64 %86, 1000000
  %88 = zext i32 %84 to i64
  %89 = tail call i64 @ktime_get() #9
  %90 = mul nsw i64 %88, -1000000
  %91 = add i64 %82, %90
  %92 = sub i64 %91, %89
  %93 = tail call i64 @llvm.smin.i64(i64 %92, i64 %87) #9
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %81
  %96 = getelementptr inbounds %struct.watchdog_core_data, ptr %46, i32 0, i32 7
  tail call void @hrtimer_start_range_ns(ptr noundef %96, i64 noundef %93, i64 noundef 0, i32 noundef 9) #9
  br label %100

97:                                               ; preds = %63, %58, %56
  %98 = getelementptr inbounds %struct.watchdog_core_data, ptr %46, i32 0, i32 7
  %99 = tail call i32 @hrtimer_cancel(ptr noundef %98) #9
  br label %100

100:                                              ; preds = %97, %95, %81, %18, %10, %8, %2
  %101 = phi i32 [ -95, %2 ], [ -22, %18 ], [ %44, %81 ], [ %44, %95 ], [ %44, %97 ], [ -22, %10 ], [ -22, %8 ]
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @watchdog_set_pretimeout(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 512
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %2
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  %14 = icmp ult i32 %13, %1
  br i1 %14, label %25, label %15

15:                                               ; preds = %10, %8
  %16 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.watchdog_ops, ptr %17, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = tail call i32 %19(ptr noundef %0, i32 noundef %1) #9
  br label %25

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 8
  store i32 %1, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %21, %10, %2
  %26 = phi i32 [ -95, %2 ], [ -22, %10 ], [ %22, %21 ], [ 0, %23 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind readnone }

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
!9 = !{i64 3992907}
!10 = !{i64 3993104}
!11 = !{i64 2151478383}
!12 = !{i64 2151984552, i64 2151984832, i64 2151985166, i64 2151985500}
!13 = !{i64 2151497373, i64 2151497398}
!14 = !{i64 2152000261, i64 2152000541, i64 2152000875, i64 2152001209}
!15 = !{i64 2152009102, i64 2152009382, i64 2152009716, i64 2152010050}
!16 = !{i64 2152020944, i64 2152021224, i64 2152021558, i64 2152021892}
!17 = !{i64 2152034319, i64 2152034599, i64 2152034933, i64 2152035267}
!18 = !{i64 2152043967, i64 2152044247, i64 2152044581, i64 2152044915}
!19 = !{i64 2152052787, i64 2152053067, i64 2152053401, i64 2152053735}
!20 = !{i64 2152064649, i64 2152064929, i64 2152065263, i64 2152065597}
!21 = !{i64 2152078328, i64 2152078608, i64 2152078942, i64 2152079276}
