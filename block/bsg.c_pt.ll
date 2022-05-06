; ModuleID = '/llk/IR/block/bsg.c_pt.bc'
source_filename = "../block/bsg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bsg_unregister_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22bsg_unregister_queue\22\09\09\09\09\09"
module asm "__kstrtabns_bsg_unregister_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bsg_register_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22bsg_register_queue\22\09\09\09\09\09"
module asm "__kstrtabns_bsg_register_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type {}
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.lockdep_map = type {}
%struct.bsg_device = type { ptr, %struct.device, %struct.cdev, i32, i32, i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sg_io_v4 = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.59, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.38 }
%struct.llist_node = type { ptr }
%union.anon.38 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.39 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.59 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = private unnamed_addr constant [4 x i8] c"bsg\00", align 1
@__kstrtab_bsg_unregister_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_bsg_unregister_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_bsg_unregister_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bsg_unregister_queue to i32), ptr @__kstrtab_bsg_unregister_queue, ptr @__kstrtabns_bsg_unregister_queue }, section "___ksymtab_gpl+bsg_unregister_queue", align 4
@bsg_minor_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"bsg: too many bsg devices\0A\00", align 1
@bsg_major = internal unnamed_addr global i32 0, align 4
@bsg_class = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@bsg_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bsg_ioctl, ptr null, ptr null, i32 0, ptr @bsg_open, ptr null, ptr @bsg_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_bsg_register_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_bsg_register_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_bsg_register_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bsg_register_queue to i32), ptr @__kstrtab_bsg_register_queue, ptr @__kstrtabns_bsg_register_queue }, section "___ksymtab_gpl+bsg_register_queue", align 4
@__UNIQUE_ID_author267 = internal constant [22 x i8] c"bsg.author=Jens Axboe\00", section ".modinfo", align 1
@__UNIQUE_ID_description268 = internal constant [54 x i8] c"bsg.description=Block layer SCSI generic (bsg) driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file269 = internal constant [19 x i8] c"bsg.file=block/bsg\00", section ".modinfo", align 1
@__UNIQUE_ID_license270 = internal constant [16 x i8] c"bsg.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_bsg__271_268_bsg_init6 = internal global ptr @bsg_init, section ".initcall6.init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@bsg_ioctl._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.bsg_ioctl = private unnamed_addr constant [10 x i8] c"bsg_ioctl\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"\014%s: calling unsupported SCSI_IOCTL_SEND_COMMAND\0A\00", align 1
@bsg_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"\016Block layer SCSI generic (bsg) driver version 0.4 loaded (major %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"bsg/%s\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author267, ptr @__UNIQUE_ID_description268, ptr @__UNIQUE_ID_file269, ptr @__UNIQUE_ID_license270, ptr @__initcall__kmod_bsg__271_268_bsg_init6, ptr @__ksymtab_bsg_register_queue, ptr @__ksymtab_bsg_unregister_queue], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bsg_unregister_queue(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 16, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 16
  tail call void @sysfs_remove_link(ptr noundef %7, ptr noundef nonnull @.str) #9
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.bsg_device, ptr %0, i32 0, i32 2
  %10 = getelementptr inbounds %struct.bsg_device, ptr %0, i32 0, i32 1
  tail call void @cdev_device_del(ptr noundef %9, ptr noundef %10) #9
  tail call void @put_device(ptr noundef %10) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bsg_register_queue(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 560) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %46, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bsg_device, ptr %6, i32 0, i32 3
  store i32 64, ptr %9, align 4
  %10 = getelementptr inbounds %struct.bsg_device, ptr %6, i32 0, i32 5
  store i32 2147483647, ptr %10, align 4
  store ptr %0, ptr %6, align 8
  %11 = getelementptr inbounds %struct.bsg_device, ptr %6, i32 0, i32 6
  store ptr %3, ptr %11, align 8
  %12 = tail call i32 @ida_alloc_range(ptr noundef nonnull @bsg_minor_ida, i32 noundef 0, i32 noundef 32767, i32 noundef 3264) #9
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = icmp eq i32 %12, -28
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1) #11
  br label %17

17:                                               ; preds = %16, %14
  tail call void @kfree(ptr noundef nonnull %6) #9
  %18 = inttoptr i32 %12 to ptr
  br label %46

19:                                               ; preds = %8
  %20 = load i32, ptr @bsg_major, align 4
  %21 = shl i32 %20, 20
  %22 = or i32 %21, %12
  %23 = getelementptr inbounds %struct.bsg_device, ptr %6, i32 0, i32 1
  %24 = getelementptr inbounds %struct.bsg_device, ptr %6, i32 0, i32 1, i32 27
  store i32 %22, ptr %24, align 8
  %25 = load ptr, ptr @bsg_class, align 4
  %26 = getelementptr inbounds %struct.bsg_device, ptr %6, i32 0, i32 1, i32 31
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.bsg_device, ptr %6, i32 0, i32 1, i32 1
  store ptr %1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.bsg_device, ptr %6, i32 0, i32 1, i32 33
  store ptr @bsg_device_release, ptr %28, align 4
  %29 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %23, ptr noundef nonnull @.str.2, ptr noundef %2) #9
  tail call void @device_initialize(ptr noundef %23) #9
  %30 = getelementptr inbounds %struct.bsg_device, ptr %6, i32 0, i32 2
  tail call void @cdev_init(ptr noundef %30, ptr noundef nonnull @bsg_fops) #9
  %31 = getelementptr inbounds %struct.bsg_device, ptr %6, i32 0, i32 2, i32 1
  store ptr null, ptr %31, align 4
  %32 = tail call i32 @cdev_device_add(ptr noundef %30, ptr noundef %23) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 16, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 16
  %40 = tail call i32 @sysfs_create_link(ptr noundef %39, ptr noundef %23, ptr noundef nonnull @.str) #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  tail call void @cdev_device_del(ptr noundef %30, ptr noundef %23) #9
  br label %43

43:                                               ; preds = %42, %19
  %44 = phi i32 [ %32, %19 ], [ %40, %42 ]
  tail call void @put_device(ptr noundef %23) #9
  %45 = inttoptr i32 %44 to ptr
  br label %46

46:                                               ; preds = %43, %38, %34, %17, %4
  %47 = phi ptr [ %18, %17 ], [ %45, %43 ], [ %6, %38 ], [ %6, %34 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %47
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bsg_device_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 27
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 1048575
  tail call void @ida_free(ptr noundef nonnull @bsg_minor_ida, i32 noundef %5) #9
  tail call void @kfree(ptr noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bsg_init() #4 section ".init.text" {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #9
  store i32 0, ptr %1, align 4, !annotation !8
  %2 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @bsg_init.__key) #9
  store ptr %2, ptr @bsg_class, align 4
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = ptrtoint ptr %2 to i32
  br label %16

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.class, ptr %2, i32 0, i32 6
  store ptr @bsg_devnode, ptr %7, align 4
  %8 = call i32 @alloc_chrdev_region(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 32768, ptr noundef nonnull @.str) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4
  %12 = lshr i32 %11, 20
  store i32 %12, ptr @bsg_major, align 4
  %13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %12) #11
  br label %16

14:                                               ; preds = %6
  %15 = load ptr, ptr @bsg_class, align 4
  call void @class_destroy(ptr noundef %15) #9
  br label %16

16:                                               ; preds = %14, %10, %4
  %17 = phi i32 [ %5, %4 ], [ %8, %14 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #9
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bsg_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.sg_io_v4, align 8
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 43
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -480
  %10 = load ptr, ptr %9, align 8
  %11 = inttoptr i32 %2 to ptr
  switch i32 %1, label %169 [
    i32 8816, label %12
    i32 8817, label %21
    i32 8834, label %35
    i32 21378, label %42
    i32 21382, label %49
    i32 8705, label %56
    i32 8706, label %69
    i32 8818, label %73
    i32 8821, label %87
    i32 8707, label %106
    i32 8837, label %113
    i32 1, label %162
  ]

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %8, i32 60
  %14 = load volatile i32, ptr %13, align 4
  %15 = tail call ptr @llvm.thread.pointer() #9
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #12, !srcloc !9
  %18 = and i32 %17, -13
  %19 = or i32 %18, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %20 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %11, i32 %14, i32 -1090519041) #9, !srcloc !12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  br label %169

21:                                               ; preds = %3
  %22 = tail call ptr @llvm.thread.pointer() #9
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %23) #12, !srcloc !9
  %25 = and i32 %24, -13
  %26 = or i32 %25, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %27 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %11, i32 -1090519041) #9, !srcloc !13
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = extractvalue { i32, i32 } %27, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %31, label %169

31:                                               ; preds = %21
  %32 = icmp slt i32 %29, 1
  br i1 %32, label %169, label %33

33:                                               ; preds = %31
  %34 = getelementptr i8, ptr %8, i32 60
  store volatile i32 %29, ptr %34, align 4
  br label %169

35:                                               ; preds = %3
  %36 = tail call ptr @llvm.thread.pointer() #9
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %38 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %37) #12, !srcloc !9
  %39 = and i32 %38, -13
  %40 = or i32 %39, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %41 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %11, i32 30527, i32 -1090519041) #9, !srcloc !14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  br label %169

42:                                               ; preds = %3
  %43 = tail call ptr @llvm.thread.pointer() #9
  %44 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %45 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %44) #12, !srcloc !9
  %46 = and i32 %45, -13
  %47 = or i32 %46, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %48 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %11, i32 0, i32 -1090519041) #9, !srcloc !15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  br label %169

49:                                               ; preds = %3
  %50 = tail call ptr @llvm.thread.pointer() #9
  %51 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 3
  %52 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %51) #12, !srcloc !9
  %53 = and i32 %52, -13
  %54 = or i32 %53, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %54) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %55 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %11, i32 0, i32 -1090519041) #9, !srcloc !16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  br label %169

56:                                               ; preds = %3
  %57 = tail call ptr @llvm.thread.pointer() #9
  %58 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 3
  %59 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %58) #12, !srcloc !9
  %60 = and i32 %59, -13
  %61 = or i32 %60, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %62 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %11, i32 -1090519041) #9, !srcloc !17
  %63 = extractvalue { i32, i32 } %62, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %169

65:                                               ; preds = %56
  %66 = extractvalue { i32, i32 } %62, 1
  %67 = tail call i32 @clock_t_to_jiffies(i32 noundef %66) #9
  %68 = getelementptr i8, ptr %8, i32 64
  store i32 %67, ptr %68, align 8
  br label %169

69:                                               ; preds = %3
  %70 = getelementptr i8, ptr %8, i32 64
  %71 = load i32, ptr %70, align 8
  %72 = tail call i32 @jiffies_to_clock_t(i32 noundef %71) #9
  br label %169

73:                                               ; preds = %3
  %74 = getelementptr i8, ptr %8, i32 68
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.request_queue, ptr %10, i32 0, i32 32, i32 6
  %77 = load i32, ptr %76, align 4
  %78 = tail call i32 @llvm.umin.i32(i32 %77, i32 4194303) #9
  %79 = shl nuw nsw i32 %78, 9
  %80 = tail call i32 @llvm.umin.i32(i32 %75, i32 %79)
  %81 = tail call ptr @llvm.thread.pointer() #9
  %82 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 3
  %83 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %82) #12, !srcloc !9
  %84 = and i32 %83, -13
  %85 = or i32 %84, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %85) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %86 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %11, i32 %80, i32 -1090519041) #9, !srcloc !18
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %83) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  br label %169

87:                                               ; preds = %3
  %88 = tail call ptr @llvm.thread.pointer() #9
  %89 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 3
  %90 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %89) #12, !srcloc !9
  %91 = and i32 %90, -13
  %92 = or i32 %91, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %92) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %93 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %11, i32 -1090519041) #9, !srcloc !19
  %94 = extractvalue { i32, i32 } %93, 0
  %95 = extractvalue { i32, i32 } %93, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %90) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %96 = icmp eq i32 %94, 0
  br i1 %96, label %97, label %169

97:                                               ; preds = %87
  %98 = icmp slt i32 %95, 0
  br i1 %98, label %169, label %99

99:                                               ; preds = %97
  %100 = getelementptr inbounds %struct.request_queue, ptr %10, i32 0, i32 32, i32 6
  %101 = load i32, ptr %100, align 4
  %102 = tail call i32 @llvm.umin.i32(i32 %101, i32 4194303) #9
  %103 = shl nuw nsw i32 %102, 9
  %104 = tail call i32 @llvm.umin.i32(i32 %95, i32 %103)
  %105 = getelementptr i8, ptr %8, i32 68
  store i32 %104, ptr %105, align 4
  br label %169

106:                                              ; preds = %3
  %107 = tail call ptr @llvm.thread.pointer() #9
  %108 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 3
  %109 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %108) #12, !srcloc !9
  %110 = and i32 %109, -13
  %111 = or i32 %110, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %111) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %112 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %11, i32 1, i32 -1090519041) #9, !srcloc !20
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %109) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  br label %169

113:                                              ; preds = %3
  %114 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %115 = load i32, ptr %114, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(160) %4, i8 0, i32 160, i1 false) #9, !annotation !8
  %116 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 160, i32 -1090519040) #13
  %117 = extractvalue { i32, i32 } %116, 0
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %127, !prof !21

119:                                              ; preds = %113
  %120 = tail call ptr @llvm.thread.pointer() #9
  %121 = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 3
  %122 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %121) #12, !srcloc !9
  %123 = and i32 %122, -13
  %124 = or i32 %123, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %124) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %125 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %11, i32 noundef 160) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %122) #9, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %131, label %127, !prof !21

127:                                              ; preds = %119, %113
  %128 = phi i32 [ %125, %119 ], [ 160, %113 ]
  %129 = sub i32 160, %128
  %130 = getelementptr i8, ptr %4, i32 %129
  call void @llvm.memset.p0.i32(ptr align 1 %130, i8 0, i32 %128, i1 false) #9
  br label %160

131:                                              ; preds = %119
  %132 = load i32, ptr %4, align 8
  %133 = icmp eq i32 %132, 81
  br i1 %133, label %134, label %160

134:                                              ; preds = %131
  %135 = getelementptr i8, ptr %8, i32 72
  %136 = load ptr, ptr %135, align 8
  %137 = load ptr, ptr %9, align 8
  %138 = getelementptr inbounds %struct.sg_io_v4, ptr %4, i32 0, i32 17
  %139 = load i32, ptr %138, align 8
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %134
  %142 = call i32 @__msecs_to_jiffies(i32 noundef %139) #9
  br label %148

143:                                              ; preds = %134
  %144 = getelementptr i8, ptr %8, i32 64
  %145 = load i32, ptr %144, align 8
  %146 = icmp eq i32 %145, 0
  %147 = select i1 %146, i32 6000, i32 %145
  br label %148

148:                                              ; preds = %143, %141
  %149 = phi i32 [ %147, %143 ], [ %142, %141 ]
  %150 = call i32 @llvm.umax.i32(i32 %149, i32 700) #9
  %151 = call i32 %136(ptr noundef %137, ptr noundef nonnull %4, i32 noundef %115, i32 noundef %150) #9
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %121) #12, !srcloc !9
  %155 = and i32 %154, -13
  %156 = or i32 %155, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %156) #9, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %157 = call i32 @arm_copy_to_user(ptr noundef %11, ptr noundef nonnull %4, i32 noundef 160) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %154) #9, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %153, %148
  br label %160

160:                                              ; preds = %159, %153, %131, %127
  %161 = phi i32 [ %151, %159 ], [ -22, %131 ], [ -14, %153 ], [ -14, %127 ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %4) #9
  br label %169

162:                                              ; preds = %3
  %163 = tail call i32 @___ratelimit(ptr noundef nonnull @bsg_ioctl._rs, ptr noundef nonnull @__func__.bsg_ioctl) #9
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %162
  %166 = tail call ptr @llvm.thread.pointer() #9
  %167 = getelementptr inbounds %struct.task_struct, ptr %166, i32 0, i32 85
  %168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %167) #11
  br label %169

169:                                              ; preds = %165, %162, %160, %106, %99, %97, %87, %73, %69, %65, %56, %49, %42, %35, %33, %31, %21, %12, %3
  %170 = phi i32 [ %161, %160 ], [ %112, %106 ], [ 0, %99 ], [ %86, %73 ], [ %72, %69 ], [ 0, %65 ], [ %55, %49 ], [ %48, %42 ], [ %41, %35 ], [ %20, %12 ], [ -14, %56 ], [ -14, %87 ], [ -22, %97 ], [ -22, %165 ], [ -22, %162 ], [ -25, %3 ], [ 0, %33 ], [ -14, %21 ], [ -22, %31 ]
  ret i32 %170
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bsg_open(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -480
  %6 = load ptr, ptr %5, align 8
  %7 = tail call zeroext i1 @blk_get_queue(ptr noundef %6) #9
  %8 = select i1 %7, i32 0, i32 -6
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bsg_release(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -480
  %6 = load ptr, ptr %5, align 8
  tail call void @blk_put_queue(ptr noundef %6) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clock_t_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_get_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_put_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @bsg_devnode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %10 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.7, ptr noundef %9) #9
  ret ptr %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind readnone }

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
!9 = !{i64 3821392}
!10 = !{i64 3821589}
!11 = !{i64 2151306868}
!12 = !{i64 2153155490, i64 2153155770, i64 2153156104, i64 2153156438}
!13 = !{i64 2153166680, i64 2153166960, i64 2153167294, i64 2153167628}
!14 = !{i64 2153177734, i64 2153178014, i64 2153178348, i64 2153178682}
!15 = !{i64 2153185857, i64 2153186137, i64 2153186471, i64 2153186805}
!16 = !{i64 2153193980, i64 2153194260, i64 2153194594, i64 2153194928}
!17 = !{i64 2153205129, i64 2153205409, i64 2153205743, i64 2153206077}
!18 = !{i64 2153216993, i64 2153217273, i64 2153217607, i64 2153217941}
!19 = !{i64 2153228142, i64 2153228422, i64 2153228756, i64 2153229090}
!20 = !{i64 2153239016, i64 2153239296, i64 2153239630, i64 2153239964}
!21 = !{!"branch_weights", i32 2000, i32 1}
