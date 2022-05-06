; ModuleID = '/llk/IR/drivers/ptp/ptp_clock.c_pt.bc'
source_filename = "../drivers/ptp/ptp_clock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ptp_clock_register:\09\09\09\09\09"
module asm "\09.asciz \09\22ptp_clock_register\22\09\09\09\09\09"
module asm "__kstrtabns_ptp_clock_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ptp_clock_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22ptp_clock_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_ptp_clock_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ptp_clock_event:\09\09\09\09\09"
module asm "\09.asciz \09\22ptp_clock_event\22\09\09\09\09\09"
module asm "__kstrtabns_ptp_clock_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ptp_clock_index:\09\09\09\09\09"
module asm "\09.asciz \09\22ptp_clock_index\22\09\09\09\09\09"
module asm "__kstrtabns_ptp_clock_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ptp_find_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22ptp_find_pin\22\09\09\09\09\09"
module asm "__kstrtabns_ptp_find_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ptp_find_pin_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22ptp_find_pin_unlocked\22\09\09\09\09\09"
module asm "__kstrtabns_ptp_find_pin_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ptp_schedule_worker:\09\09\09\09\09"
module asm "\09.asciz \09\22ptp_schedule_worker\22\09\09\09\09\09"
module asm "__kstrtabns_ptp_schedule_worker:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ptp_cancel_worker_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22ptp_cancel_worker_sync\22\09\09\09\09\09"
module asm "__kstrtabns_ptp_cancel_worker_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.posix_clock_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pps_source_info = type { [32 x i8], [32 x i8], i32, ptr, ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ptp_clock = type { %struct.posix_clock, %struct.device, ptr, i32, i32, ptr, i32, %struct.timestamp_event_queue, %struct.mutex, %struct.mutex, %struct.wait_queue_head, i32, ptr, ptr, %struct.attribute_group, [2 x ptr], ptr, %struct.kthread_delayed_work, i32, i32, ptr, %struct.mutex, i8 }
%struct.posix_clock = type { %struct.posix_clock_operations, %struct.cdev, ptr, %struct.rw_semaphore, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.timestamp_event_queue = type { [128 x %struct.ptp_extts_event], i32, i32, %struct.spinlock }
%struct.ptp_extts_event = type { %struct.ptp_clock_time, i32, i32, [2 x i32] }
%struct.ptp_clock_time = type { i64, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.pps_device = type { %struct.pps_source_info, %struct.pps_kparams, i32, i32, %struct.pps_ktime, %struct.pps_ktime, i32, i32, %struct.wait_queue_head, i32, ptr, %struct.cdev, ptr, ptr, %struct.spinlock }
%struct.pps_kparams = type { i32, i32, %struct.pps_ktime, %struct.pps_ktime }
%struct.pps_ktime = type { i64, i32, i32 }
%struct.system_time_snapshot = type { i64, i64, i64, i32, i32, i8 }
%struct.pps_event_time = type { %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.ptp_clock_event = type { i32, i32, %union.anon.99 }
%union.anon.99 = type { %struct.pps_event_time }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__kernel_timex = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, %struct.__kernel_timex_timeval, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, [44 x i8] }
%struct.__kernel_timex_timeval = type { i64, i64 }

@ptp_devt = internal global i32 0, align 4
@ptp_clocks_map = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@ptp_clock_ops = internal unnamed_addr constant %struct.posix_clock_operations { ptr null, ptr @ptp_clock_adjtime, ptr @ptp_clock_gettime, ptr @ptp_clock_getres, ptr @ptp_clock_settime, ptr @ptp_ioctl, ptr @ptp_open, ptr @ptp_poll, ptr null, ptr @ptp_read }, align 4
@ptp_clock_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [16 x i8] c"&ptp->tsevq_mux\00", align 1
@ptp_clock_register.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"&ptp->pincfg_mux\00", align 1
@ptp_clock_register.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"&ptp->n_vclocks_mux\00", align 1
@ptp_clock_register.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"&ptp->tsev_wq\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"ptp%d\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"\013failed to create ptp aux_worker %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ptp\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"\013failed to register pps source\0A\00", align 1
@ptp_class = dso_local local_unnamed_addr global ptr null, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"\013failed to create posix clock\0A\00", align 1
@__kstrtab_ptp_clock_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_ptp_clock_register = external dso_local constant [0 x i8], align 1
@__ksymtab_ptp_clock_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ptp_clock_register to i32), ptr @__kstrtab_ptp_clock_register, ptr @__kstrtabns_ptp_clock_register }, section "___ksymtab+ptp_clock_register", align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"\013ptp: virtual clock in use\0A\00", align 1
@__kstrtab_ptp_clock_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_ptp_clock_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_ptp_clock_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ptp_clock_unregister to i32), ptr @__kstrtab_ptp_clock_unregister, ptr @__kstrtabns_ptp_clock_unregister }, section "___ksymtab+ptp_clock_unregister", align 4
@__kstrtab_ptp_clock_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_ptp_clock_event = external dso_local constant [0 x i8], align 1
@__ksymtab_ptp_clock_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ptp_clock_event to i32), ptr @__kstrtab_ptp_clock_event, ptr @__kstrtabns_ptp_clock_event }, section "___ksymtab+ptp_clock_event", align 4
@__kstrtab_ptp_clock_index = external dso_local constant [0 x i8], align 1
@__kstrtabns_ptp_clock_index = external dso_local constant [0 x i8], align 1
@__ksymtab_ptp_clock_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ptp_clock_index to i32), ptr @__kstrtab_ptp_clock_index, ptr @__kstrtabns_ptp_clock_index }, section "___ksymtab+ptp_clock_index", align 4
@__kstrtab_ptp_find_pin = external dso_local constant [0 x i8], align 1
@__kstrtabns_ptp_find_pin = external dso_local constant [0 x i8], align 1
@__ksymtab_ptp_find_pin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ptp_find_pin to i32), ptr @__kstrtab_ptp_find_pin, ptr @__kstrtabns_ptp_find_pin }, section "___ksymtab+ptp_find_pin", align 4
@__kstrtab_ptp_find_pin_unlocked = external dso_local constant [0 x i8], align 1
@__kstrtabns_ptp_find_pin_unlocked = external dso_local constant [0 x i8], align 1
@__ksymtab_ptp_find_pin_unlocked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ptp_find_pin_unlocked to i32), ptr @__kstrtab_ptp_find_pin_unlocked, ptr @__kstrtabns_ptp_find_pin_unlocked }, section "___ksymtab+ptp_find_pin_unlocked", align 4
@__kstrtab_ptp_schedule_worker = external dso_local constant [0 x i8], align 1
@__kstrtabns_ptp_schedule_worker = external dso_local constant [0 x i8], align 1
@__ksymtab_ptp_schedule_worker = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ptp_schedule_worker to i32), ptr @__kstrtab_ptp_schedule_worker, ptr @__kstrtabns_ptp_schedule_worker }, section "___ksymtab+ptp_schedule_worker", align 4
@__kstrtab_ptp_cancel_worker_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_ptp_cancel_worker_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_ptp_cancel_worker_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ptp_cancel_worker_sync to i32), ptr @__kstrtab_ptp_cancel_worker_sync, ptr @__kstrtabns_ptp_cancel_worker_sync }, section "___ksymtab+ptp_cancel_worker_sync", align 4
@__initcall__kmod_ptp__282_457_ptp_init4 = internal global ptr @ptp_init, section ".initcall4.init", align 4
@__exitcall_ptp_exit = internal global ptr @ptp_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author283 = internal constant [54 x i8] c"ptp.author=Richard Cochran <richardcochran@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description284 = internal constant [35 x i8] c"ptp.description=PTP clocks support\00", section ".modinfo", align 1
@__UNIQUE_ID_file285 = internal constant [25 x i8] c"ptp.file=drivers/ptp/ptp\00", section ".modinfo", align 1
@__UNIQUE_ID_license286 = internal constant [16 x i8] c"ptp.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ptp_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"\013ptp: failed to allocate class\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"\013ptp: failed to allocate device region\0A\00", align 1
@ptp_groups = external dso_local global [0 x ptr], align 4
@.str.15 = private unnamed_addr constant [32 x i8] c"\016PTP clock support registered\0A\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author283, ptr @__UNIQUE_ID_description284, ptr @__UNIQUE_ID_file285, ptr @__UNIQUE_ID_license286, ptr @__exitcall_ptp_exit, ptr @__initcall__kmod_ptp__282_457_ptp_init4, ptr @__ksymtab_ptp_cancel_worker_sync, ptr @__ksymtab_ptp_clock_event, ptr @__ksymtab_ptp_clock_index, ptr @__ksymtab_ptp_clock_register, ptr @__ksymtab_ptp_clock_unregister, ptr @__ksymtab_ptp_find_pin, ptr @__ksymtab_ptp_find_pin_unlocked, ptr @__ksymtab_ptp_schedule_worker, ptr @ptp_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ptp_clock_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.pps_source_info, align 4
  %4 = load i32, ptr @ptp_devt, align 4
  %5 = and i32 %4, -1048576
  %6 = getelementptr inbounds %struct.ptp_clock_info, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 4
  br i1 %8, label %132, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 4920) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %129, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @ida_alloc_range(ptr noundef nonnull @ptp_clocks_map, i32 noundef 0, i32 noundef 1048575, i32 noundef 3264) #14
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %127, label %16

16:                                               ; preds = %13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 4 dereferenceable(40) @ptp_clock_ops, i32 40, i1 false)
  %17 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 2
  store ptr %0, ptr %17, align 8
  %18 = or i32 %14, %5
  %19 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 3
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 4
  store i32 %14, ptr %20, align 8
  %21 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 7, i32 3
  store i32 0, ptr %21, align 8
  %22 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %22, ptr noundef nonnull @.str, ptr noundef nonnull @ptp_clock_register.__key) #14
  %23 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %23, ptr noundef nonnull @.str.2, ptr noundef nonnull @ptp_clock_register.__key.1) #14
  %24 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %24, ptr noundef nonnull @.str.4, ptr noundef nonnull @ptp_clock_register.__key.3) #14
  %25 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %25, ptr noundef nonnull @.str.6, ptr noundef nonnull @ptp_clock_register.__key.5) #14
  %26 = load ptr, ptr %17, align 8
  %27 = getelementptr inbounds %struct.ptp_clock_info, ptr %26, i32 0, i32 19
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 17
  %32 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 17, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(20) %32, i8 0, i32 12, i1 false)
  store volatile ptr %31, ptr %31, align 8
  %33 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 17, i32 0, i32 0, i32 1
  store ptr %31, ptr %33, align 4
  %34 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 17, i32 0, i32 1
  store ptr @ptp_aux_kworker, ptr %34, align 8
  %35 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 17, i32 1
  tail call void @init_timer_key(ptr noundef %35, ptr noundef nonnull @kthread_delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #14
  %36 = load i32, ptr %20, align 8
  %37 = tail call ptr (i32, ptr, ...) @kthread_create_worker(i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef %36) #14
  %38 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 16
  store ptr %37, ptr %38, align 4
  %39 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = ptrtoint ptr %37 to i32
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %41) #15
  br label %125

43:                                               ; preds = %30, %16
  %44 = icmp eq ptr %1, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 31
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %47, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @strcmp(ptr noundef nonnull %50, ptr noundef nonnull dereferenceable(4) @.str.9)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 22
  store i8 1, ptr %56, align 8
  br label %57

57:                                               ; preds = %55, %52, %49, %45, %43
  %58 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 22
  %59 = load i8, ptr %58, align 8, !range !8
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 18
  store i32 20, ptr %62, align 8
  %63 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %64 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 3520, i32 noundef 80) #13
  %65 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 20
  store ptr %64, ptr %65, align 8
  %66 = icmp eq ptr %64, null
  br i1 %66, label %119, label %67

67:                                               ; preds = %61, %57
  %68 = tail call i32 @ptp_populate_pin_groups(ptr noundef nonnull %11) #14
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %115

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.ptp_clock_info, ptr %0, i32 0, i32 7
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  %75 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %14)
  %76 = getelementptr inbounds %struct.pps_source_info, ptr %3, i32 0, i32 2
  store i32 4369, ptr %76, align 4
  %77 = load ptr, ptr %0, align 4
  %78 = getelementptr inbounds %struct.pps_source_info, ptr %3, i32 0, i32 4
  store ptr %77, ptr %78, align 4
  %79 = call ptr @pps_register_source(ptr noundef nonnull %3, i32 noundef 17) #14
  %80 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 5
  store ptr %79, ptr %80, align 4
  %81 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %81, label %112, label %82

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.pps_device, ptr %79, i32 0, i32 10
  store ptr %11, ptr %83, align 8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #14
  br label %84

84:                                               ; preds = %82, %70
  %85 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 1
  call void @device_initialize(ptr noundef %85) #14
  %86 = load i32, ptr %19, align 4
  %87 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 1, i32 27
  store i32 %86, ptr %87, align 8
  %88 = load ptr, ptr @ptp_class, align 4
  %89 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 1, i32 31
  store ptr %88, ptr %89, align 4
  %90 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 1, i32 1
  store ptr %1, ptr %90, align 4
  %91 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 15
  %92 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 1, i32 32
  store ptr %91, ptr %92, align 8
  %93 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 1, i32 33
  store ptr @ptp_clock_release, ptr %93, align 4
  %94 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 1, i32 8
  store ptr %11, ptr %94, align 8
  %95 = load i32, ptr %20, align 8
  %96 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %85, ptr noundef nonnull @.str.7, i32 noundef %95) #14
  %97 = call i32 @posix_clock_register(ptr noundef nonnull %11, ptr noundef %85) #14
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %132, label %99

99:                                               ; preds = %84
  %100 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 5
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  call void @pps_unregister_source(ptr noundef nonnull %101) #14
  br label %104

104:                                              ; preds = %103, %99
  %105 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 16
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  call void @kthread_destroy_worker(ptr noundef nonnull %106) #14
  br label %109

109:                                              ; preds = %108, %104
  call void @put_device(ptr noundef %85) #14
  %110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #15
  %111 = inttoptr i32 %97 to ptr
  br label %132

112:                                              ; preds = %74
  %113 = ptrtoint ptr %79 to i32
  %114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #15
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #14
  call void @ptp_cleanup_pin_groups(ptr noundef nonnull %11) #14
  br label %115

115:                                              ; preds = %112, %67
  %116 = phi i32 [ %68, %67 ], [ %113, %112 ]
  %117 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 20
  %118 = load ptr, ptr %117, align 8
  call void @kfree(ptr noundef %118) #14
  br label %119

119:                                              ; preds = %115, %61
  %120 = phi i32 [ %116, %115 ], [ -12, %61 ]
  %121 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 16
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  call void @kthread_destroy_worker(ptr noundef nonnull %122) #14
  br label %125

125:                                              ; preds = %124, %119, %40
  %126 = phi i32 [ %41, %40 ], [ %120, %124 ], [ %120, %119 ]
  call void @ida_free(ptr noundef nonnull @ptp_clocks_map, i32 noundef %14) #14
  br label %127

127:                                              ; preds = %125, %13
  %128 = phi i32 [ %126, %125 ], [ %14, %13 ]
  call void @kfree(ptr noundef nonnull %11) #14
  br label %129

129:                                              ; preds = %127, %9
  %130 = phi i32 [ -12, %9 ], [ %128, %127 ]
  %131 = inttoptr i32 %130 to ptr
  br label %132

132:                                              ; preds = %129, %109, %84, %2
  %133 = phi ptr [ %131, %129 ], [ %111, %109 ], [ %11, %84 ], [ inttoptr (i32 -22 to ptr), %2 ]
  ret ptr %133
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ptp_aux_kworker(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4232
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %3) #14
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call zeroext i1 @kthread_queue_delayed_work(ptr noundef %10, ptr noundef %0, i32 noundef %6) #14
  br label %12

12:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_worker(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_populate_pin_groups(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pps_register_source(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ptp_clock_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -136
  tail call void @ptp_cleanup_pin_groups(ptr noundef %2) #14
  %3 = getelementptr i8, ptr %0, i32 4752
  %4 = load ptr, ptr %3, align 8
  tail call void @kfree(ptr noundef %4) #14
  %5 = getelementptr i8, ptr %0, i32 480
  %6 = load i32, ptr %5, align 8
  tail call void @ida_free(ptr noundef nonnull @ptp_clocks_map, i32 noundef %6) #14
  tail call void @kfree(ptr noundef %2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pps_unregister_source(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_destroy_worker(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_cleanup_pin_groups(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ptp_clock_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 21
  %3 = tail call i32 @mutex_lock_interruptible(ptr noundef %2) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 22
  %7 = load i8, ptr %6, align 8, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @mutex_unlock(ptr noundef %2) #14
  br label %16

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 19
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  tail call void @mutex_unlock(ptr noundef %2) #14
  br i1 %13, label %16, label %14

14:                                               ; preds = %10, %1
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #15
  br label %32

16:                                               ; preds = %10, %9
  %17 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 11
  store i32 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %18, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  %19 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 16
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 17
  %24 = tail call zeroext i1 @kthread_cancel_delayed_work_sync(ptr noundef %23) #14
  %25 = load ptr, ptr %19, align 4
  tail call void @kthread_destroy_worker(ptr noundef %25) #14
  br label %26

26:                                               ; preds = %22, %16
  %27 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @pps_unregister_source(ptr noundef nonnull %28) #14
  br label %31

31:                                               ; preds = %30, %26
  tail call void @posix_clock_unregister(ptr noundef %0) #14
  br label %32

32:                                               ; preds = %31, %14
  %33 = phi i32 [ -16, %14 ], [ 0, %31 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @posix_clock_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ptp_clock_event(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.system_time_snapshot, align 8
  %4 = alloca %struct.pps_event_time, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !9
  %5 = load i32, ptr %1, align 8
  switch i32 %5, label %53 [
    i32 3, label %49
    i32 1, label %6
    i32 2, label %44
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 7
  %8 = getelementptr inbounds %struct.ptp_clock_event, ptr %1, i32 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %9, i32 0) #16, !srcloc !10
  %11 = extractvalue { i64, i32 } %10, 0
  %12 = extractvalue { i64, i32 } %10, 1
  %13 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %9, i64 %11, i32 %12) #16, !srcloc !11
  %14 = extractvalue { i64, i32 } %13, 0
  %15 = trunc i64 %9 to i32
  %16 = lshr i64 %14, 29
  %17 = trunc i64 %16 to i32
  %18 = mul i32 %17, -1000000000
  %19 = add i32 %18, %15
  %20 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 7, i32 3
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #14
  %22 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 7, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr [128 x %struct.ptp_extts_event], ptr %7, i32 0, i32 %23
  %25 = getelementptr inbounds %struct.ptp_clock_event, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr [128 x %struct.ptp_extts_event], ptr %7, i32 0, i32 %23, i32 1
  store i32 %26, ptr %27, align 8
  store i64 %16, ptr %24, align 8
  %28 = getelementptr inbounds %struct.ptp_clock_time, ptr %24, i32 0, i32 1
  store i32 %19, ptr %28, align 8
  %29 = load i32, ptr %22, align 4
  %30 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 7, i32 1
  %31 = load i32, ptr %30, align 8
  %32 = sub i32 %29, %31
  %33 = icmp slt i32 %32, 0
  %34 = add i32 %32, 128
  %35 = select i1 %33, i32 %34, i32 %32
  %36 = icmp eq i32 %35, 127
  br i1 %36, label %37, label %40

37:                                               ; preds = %6
  %38 = add i32 %31, 1
  %39 = srem i32 %38, 128
  store i32 %39, ptr %30, align 8
  br label %40

40:                                               ; preds = %37, %6
  %41 = add i32 %29, 1
  %42 = srem i32 %41, 128
  store i32 %42, ptr %22, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #14
  %43 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %43, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  br label %53

44:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false) #14, !annotation !9
  call void @ktime_get_snapshot(ptr noundef nonnull %3) #14
  %45 = getelementptr inbounds %struct.system_time_snapshot, ptr %3, i32 0, i32 1
  %46 = load i64, ptr %45, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %4, i64 noundef %46) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #14
  %47 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  call void @pps_event(ptr noundef %48, ptr noundef nonnull %4, i32 noundef 1, ptr noundef null) #14
  br label %53

49:                                               ; preds = %2
  %50 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.ptp_clock_event, ptr %1, i32 0, i32 2
  tail call void @pps_event(ptr noundef %51, ptr noundef %52, i32 noundef 1, ptr noundef null) #14
  br label %53

53:                                               ; preds = %49, %44, %40, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pps_event(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ptp_clock_index(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 8
  ret i32 %3
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ptp_find_pin(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #9 {
  %4 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ptp_clock_info, ptr %5, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %25, %9
  %13 = phi i32 [ 0, %9 ], [ %26, %25 ]
  %14 = getelementptr %struct.ptp_pin_desc, ptr %11, i32 %13, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = getelementptr %struct.ptp_pin_desc, ptr %11, i32 %13, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr %struct.ptp_pin_desc, ptr %11, i32 %13
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, i32 -1, i32 %13
  br label %28

25:                                               ; preds = %17, %12
  %26 = add nuw nsw i32 %13, 1
  %27 = icmp eq i32 %26, %7
  br i1 %27, label %28, label %12

28:                                               ; preds = %25, %21, %3
  %29 = phi i32 [ %24, %21 ], [ -1, %3 ], [ -1, %25 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ptp_find_pin_unlocked(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %4) #14
  %5 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ptp_clock_info, ptr %6, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ptp_clock_info, ptr %6, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %26, %10
  %14 = phi i32 [ 0, %10 ], [ %27, %26 ]
  %15 = getelementptr %struct.ptp_pin_desc, ptr %12, i32 %14, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = getelementptr %struct.ptp_pin_desc, ptr %12, i32 %14, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %2
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr %struct.ptp_pin_desc, ptr %12, i32 %14
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, i32 -1, i32 %14
  br label %29

26:                                               ; preds = %18, %13
  %27 = add nuw nsw i32 %14, 1
  %28 = icmp eq i32 %27, %8
  br i1 %28, label %29, label %13

29:                                               ; preds = %26, %22, %3
  %30 = phi i32 [ %25, %22 ], [ -1, %3 ], [ -1, %26 ]
  tail call void @mutex_unlock(ptr noundef %4) #14
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ptp_schedule_worker(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 17
  %6 = tail call zeroext i1 @kthread_mod_delayed_work(ptr noundef %4, ptr noundef %5, i32 noundef %1) #14
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_mod_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ptp_cancel_worker_sync(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 17
  %3 = tail call zeroext i1 @kthread_cancel_delayed_work_sync(ptr noundef %2) #14
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ptp_exit() #10 section ".exit.text" {
  %1 = load ptr, ptr @ptp_class, align 4
  tail call void @class_destroy(ptr noundef %1) #14
  %2 = load i32, ptr @ptp_devt, align 4
  tail call void @unregister_chrdev_region(i32 noundef %2, i32 noundef 1048576) #14
  tail call void @ida_destroy(ptr noundef nonnull @ptp_clocks_map) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ptp_init() #10 section ".init.text" {
  %1 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @ptp_init.__key) #14
  store ptr %1, ptr @ptp_class, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #15
  %5 = load ptr, ptr @ptp_class, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %17

7:                                                ; preds = %0
  %8 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @ptp_devt, i32 noundef 0, i32 noundef 1048576, ptr noundef nonnull @.str.9) #14
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %12 = load ptr, ptr @ptp_class, align 4
  tail call void @class_destroy(ptr noundef %12) #14
  br label %17

13:                                               ; preds = %7
  %14 = load ptr, ptr @ptp_class, align 4
  %15 = getelementptr inbounds %struct.class, ptr %14, i32 0, i32 3
  store ptr @ptp_groups, ptr %15, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #15
  br label %17

17:                                               ; preds = %13, %10, %3
  %18 = phi i32 [ %6, %3 ], [ %8, %10 ], [ 0, %13 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptp_clock_adjtime(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 21
  %4 = tail call i32 @mutex_lock_interruptible(ptr noundef %3) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 22
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @mutex_unlock(ptr noundef %3) #14
  br label %17

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 19
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  tail call void @mutex_unlock(ptr noundef %3) #14
  br i1 %14, label %17, label %15

15:                                               ; preds = %11, %2
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #15
  br label %101

17:                                               ; preds = %11, %10
  %18 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = load i32, ptr %1, align 8
  %21 = and i32 %20, 256
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 11, i32 1
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 4294967295
  %27 = and i32 %20, 8192
  %28 = icmp eq i32 %27, 0
  %29 = trunc i64 %25 to i32
  %30 = mul i32 %29, 1000
  %31 = zext i32 %30 to i64
  %32 = select i1 %28, i64 %31, i64 %26
  %33 = trunc i64 %32 to i32
  %34 = icmp ugt i32 %33, 999999999
  br i1 %34, label %101, label %35

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 11
  %37 = load i64, ptr %36, align 8
  %38 = icmp sgt i64 %37, 9223372035
  %39 = mul i64 %37, 1000000000
  %40 = add i64 %39, %32
  %41 = select i1 %38, i64 9223372036854775807, i64 %40, !prof !12
  %42 = getelementptr inbounds %struct.ptp_clock_info, ptr %19, i32 0, i32 12
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 %43(ptr noundef %19, i64 noundef %41) #14
  br label %101

45:                                               ; preds = %17
  %46 = and i32 %20, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %78, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 3
  %50 = load i64, ptr %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = add i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = mul nsw i64 %53, 125
  %55 = ashr i64 %54, 13
  %56 = trunc i64 %55 to i32
  %57 = getelementptr inbounds %struct.ptp_clock_info, ptr %19, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = icmp slt i32 %58, %56
  %60 = sub i32 0, %58
  %61 = icmp slt i32 %56, %60
  %62 = or i1 %59, %61
  br i1 %62, label %101, label %63

63:                                               ; preds = %48
  %64 = getelementptr inbounds %struct.ptp_clock_info, ptr %19, i32 0, i32 9
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = tail call i32 %65(ptr noundef %19, i32 noundef %51) #14
  br label %73

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.ptp_clock_info, ptr %19, i32 0, i32 10
  %71 = load ptr, ptr %70, align 4
  %72 = tail call i32 %71(ptr noundef %19, i32 noundef %56) #14
  br label %73

73:                                               ; preds = %69, %67
  %74 = phi i32 [ %68, %67 ], [ %72, %69 ]
  %75 = load i64, ptr %49, align 8
  %76 = trunc i64 %75 to i32
  %77 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 6
  store i32 %76, ptr %77, align 8
  br label %101

78:                                               ; preds = %45
  %79 = and i32 %20, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %94, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.ptp_clock_info, ptr %19, i32 0, i32 11
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %101, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 2
  %87 = load i64, ptr %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = and i32 %20, 8192
  %90 = icmp eq i32 %89, 0
  %91 = mul i32 %88, 1000
  %92 = select i1 %90, i32 %91, i32 %88
  %93 = tail call i32 %83(ptr noundef %19, i32 noundef %92) #14
  br label %101

94:                                               ; preds = %78
  %95 = icmp eq i32 %20, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 6
  %98 = load i32, ptr %97, align 8
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.__kernel_timex, ptr %1, i32 0, i32 3
  store i64 %99, ptr %100, align 8
  br label %101

101:                                              ; preds = %96, %94, %85, %81, %73, %48, %35, %23, %15
  %102 = phi i32 [ -16, %15 ], [ -34, %48 ], [ %44, %35 ], [ %93, %85 ], [ -95, %81 ], [ 0, %96 ], [ -95, %94 ], [ %74, %73 ], [ -22, %23 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptp_clock_gettime(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ptp_clock_info, ptr %4, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef %4, ptr noundef %1, ptr noundef null) #14
  br label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ptp_clock_info, ptr %4, i32 0, i32 13
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %4, ptr noundef %1) #14
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i32 [ %9, %8 ], [ %13, %10 ]
  ret i32 %15
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ptp_clock_getres(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #12 {
  store i64 0, ptr %1, align 8
  %3 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  store i32 1, ptr %3, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptp_clock_settime(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 21
  %4 = tail call i32 @mutex_lock_interruptible(ptr noundef %3) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 22
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @mutex_unlock(ptr noundef %3) #14
  br label %17

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 19
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  tail call void @mutex_unlock(ptr noundef %3) #14
  br i1 %14, label %17, label %15

15:                                               ; preds = %11, %2
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #15
  br label %23

17:                                               ; preds = %11, %10
  %18 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.ptp_clock_info, ptr %19, i32 0, i32 16
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %19, ptr noundef %1) #14
  br label %23

23:                                               ; preds = %17, %15
  %24 = phi i32 [ -16, %15 ], [ %22, %17 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_open(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_poll(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_snapshot(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }

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
!9 = !{!"auto-init"}
!10 = !{i64 1143120, i64 1143147, i64 1143169, i64 1143197}
!11 = !{i64 1143528, i64 1143555, i64 1143588, i64 1143609, i64 1143636, i64 1143662}
!12 = !{!"branch_weights", i32 1, i32 2000}
