; ModuleID = '/llk/IR/drivers/gpu/drm/drm_lock.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_lock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_idlelock_take:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_idlelock_take\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_idlelock_take:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_idlelock_release:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_idlelock_release\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_idlelock_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.61, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.66, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.61 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.66 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.drm_master = type { %struct.kref, ptr, ptr, i32, %struct.idr, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.idr, %struct.idr, %struct.drm_lock_data }
%struct.drm_lock_data = type { ptr, ptr, %struct.wait_queue_head, i32, %struct.spinlock, i32, i32, i32 }
%struct.drm_lock = type { i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [36 x i8] c"Process %d using kernel context %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"%d (pid %d) requests lock (0x%08x), flags = 0x%08x\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@drm_global_mutex = external dso_local global %struct.mutex, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%d %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"interrupted\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"has lock\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%d waiting for DMA quiescent\0A\00", align 1
@__kstrtab_drm_legacy_idlelock_take = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_idlelock_take = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_idlelock_take = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_idlelock_take to i32), ptr @__kstrtab_drm_legacy_idlelock_take, ptr @__kstrtabns_drm_legacy_idlelock_take }, section "___ksymtab+drm_legacy_idlelock_take", align 4
@__kstrtab_drm_legacy_idlelock_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_idlelock_release = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_idlelock_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_idlelock_release to i32), ptr @__kstrtab_drm_legacy_idlelock_release, ptr @__kstrtabns_drm_legacy_idlelock_release }, section "___ksymtab+drm_legacy_idlelock_release", align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"File %p released, freeing lock for context %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"%d holds heavyweight lock\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"%d freed heavyweight lock held by %d\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_drm_legacy_idlelock_release, ptr @__ksymtab_drm_legacy_idlelock_take], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_lock(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #4
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 1
  %6 = tail call ptr @llvm.thread.pointer() #4
  store i32 0, ptr %4, align 4
  store ptr %6, ptr %5, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 2
  store ptr @default_wake_function, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3, i32 1
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_driver, ptr %13, i32 0, i32 24
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %15, 67108864
  %19 = and i32 %18, %17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %95, label %21

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 29
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  %25 = load i32, ptr %1, align 4
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 52
  %28 = load i32, ptr %27, align 8
  br i1 %26, label %29, label %30

29:                                               ; preds = %21
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %28, i32 noundef 0) #4
  br label %95

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.drm_master, ptr %11, i32 0, i32 12
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load volatile i32, ptr %32, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i32 [ %35, %34 ], [ -1, %30 ]
  %38 = getelementptr inbounds %struct.drm_lock, ptr %1, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %25, i32 noundef %28, i32 noundef %37, i32 noundef %39) #4
  %40 = getelementptr inbounds %struct.drm_master, ptr %11, i32 0, i32 12, i32 2
  call void @add_wait_queue(ptr noundef %40, ptr noundef nonnull %4) #4
  %41 = getelementptr inbounds %struct.drm_master, ptr %11, i32 0, i32 12, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %41) #4
  %42 = getelementptr inbounds %struct.drm_master, ptr %11, i32 0, i32 12, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %41) #4
  %45 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 1
  br label %46

46:                                               ; preds = %63, %36
  store volatile i32 1, ptr %45, align 8
  %47 = load ptr, ptr %31, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 @send_sig(i32 noundef 15, ptr noundef %6, i32 noundef 0) #4
  br label %67

51:                                               ; preds = %46
  %52 = load i32, ptr %1, align 4
  %53 = call fastcc i32 @drm_lock_take(ptr noundef %31, i32 noundef %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.drm_master, ptr %11, i32 0, i32 12, i32 1
  store ptr %2, ptr %56, align 4
  %57 = load volatile i32, ptr @jiffies, align 64
  %58 = getelementptr inbounds %struct.drm_master, ptr %11, i32 0, i32 12, i32 3
  store i32 %57, ptr %58, align 4
  br label %67

59:                                               ; preds = %51
  call void @mutex_unlock(ptr noundef nonnull @drm_global_mutex) #4
  call void @schedule() #4
  call void @mutex_lock(ptr noundef nonnull @drm_global_mutex) #4
  %60 = load volatile i32, ptr %6, align 4
  %61 = and i32 %60, 256
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67, !prof !8

63:                                               ; preds = %59
  %64 = load volatile i32, ptr %6, align 4
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %46, label %67

67:                                               ; preds = %63, %59, %55, %49
  %68 = phi i1 [ true, %55 ], [ false, %49 ], [ false, %63 ], [ false, %59 ]
  %69 = phi i32 [ 0, %55 ], [ -4, %49 ], [ -4, %63 ], [ -4, %59 ]
  call void @_raw_spin_lock_bh(ptr noundef %41) #4
  %70 = load i32, ptr %42, align 4
  %71 = add i32 %70, -1
  store i32 %71, ptr %42, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %41) #4
  store volatile i32 0, ptr %45, align 8
  call void @remove_wait_queue(ptr noundef %40, ptr noundef nonnull %4) #4
  %72 = load i32, ptr %1, align 4
  br i1 %68, label %74, label %73

73:                                               ; preds = %67
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %72, ptr noundef nonnull @.str.3) #4
  br label %95

74:                                               ; preds = %67
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %72, ptr noundef nonnull @.str.4) #4
  %75 = call zeroext i1 @drm_is_current_master(ptr noundef %2) #4
  br i1 %75, label %81, label %76

76:                                               ; preds = %74
  %77 = load i32, ptr %1, align 4
  %78 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 51
  store i32 %77, ptr %78, align 4
  %79 = load ptr, ptr %31, align 4
  %80 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 51, i32 1
  store ptr %79, ptr %80, align 4
  br label %81

81:                                               ; preds = %76, %74
  %82 = load ptr, ptr %12, align 4
  %83 = getelementptr inbounds %struct.drm_driver, ptr %82, i32 0, i32 31
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %95, label %86

86:                                               ; preds = %81
  %87 = load i32, ptr %38, align 4
  %88 = and i32 %87, 2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %86
  %91 = call i32 %84(ptr noundef %0) #4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = load i32, ptr %1, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %94) #4
  br label %95

95:                                               ; preds = %93, %90, %86, %81, %73, %29, %3
  %96 = phi i32 [ -22, %29 ], [ -16, %93 ], [ -95, %3 ], [ %69, %73 ], [ 0, %90 ], [ 0, %86 ], [ 0, %81 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #4
  ret i32 %96
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drm_lock_take(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.drm_lock_data, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %4) #4
  %5 = getelementptr inbounds %struct.drm_lock_data, ptr %0, i32 0, i32 6
  %6 = getelementptr inbounds %struct.drm_lock_data, ptr %0, i32 0, i32 5
  br label %7

7:                                                ; preds = %26, %2
  %8 = load volatile i32, ptr %3, align 4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = or i32 %8, 1073741824
  br label %20

12:                                               ; preds = %7
  %13 = load i32, ptr %5, align 4
  %14 = load i32, ptr %6, align 4
  %15 = add i32 %14, %13
  %16 = icmp ugt i32 %15, 1
  %17 = select i1 %16, i32 1073741824, i32 0
  %18 = or i32 %17, %1
  %19 = or i32 %18, -2147483648
  br label %20

20:                                               ; preds = %12, %10
  %21 = phi i32 [ %11, %10 ], [ %19, %12 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #4, !srcloc !10
  br label %22

22:                                               ; preds = %22, %20
  %23 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %3, i32 %8, i32 %21) #4, !srcloc !11
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %22

26:                                               ; preds = %22
  %27 = extractvalue { i32, i32 } %23, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  %28 = icmp eq i32 %27, %8
  br i1 %28, label %29, label %7

29:                                               ; preds = %26
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #4
  %30 = and i32 %8, 1073741823
  %31 = icmp ne i32 %30, %1
  %32 = or i1 %9, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = icmp eq i32 %1, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %33
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %1) #4
  br label %42

36:                                               ; preds = %29
  %37 = and i32 %21, 1073741823
  %38 = icmp eq i32 %37, %1
  %39 = icmp slt i32 %21, 0
  %40 = and i1 %39, %38
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %36, %35, %33
  %43 = phi i32 [ 0, %35 ], [ 0, %33 ], [ %41, %36 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_is_current_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_unlock(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_driver, ptr %7, i32 0, i32 24
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %9, 67108864
  %13 = and i32 %12, %11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %3
  %16 = load i32, ptr %1, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = tail call ptr @llvm.thread.pointer() #4
  %20 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 52
  %21 = load i32, ptr %20, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %21, i32 noundef 0) #4
  br label %24

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12
  tail call fastcc void @drm_legacy_lock_free(ptr noundef %23, i32 noundef %16)
  br label %24

24:                                               ; preds = %22, %18, %3
  %25 = phi i32 [ -22, %18 ], [ 0, %22 ], [ -95, %3 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drm_legacy_lock_free(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.drm_lock_data, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %4) #4
  %5 = getelementptr inbounds %struct.drm_lock_data, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.drm_lock_data, ptr %0, i32 0, i32 1
  store ptr null, ptr %10, align 4
  br label %11

11:                                               ; preds = %17, %8
  %12 = load volatile i32, ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #4, !srcloc !10
  br label %13

13:                                               ; preds = %13, %11
  %14 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %9, i32 %12, i32 -2147483648) #4, !srcloc !11
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %13

17:                                               ; preds = %13
  %18 = extractvalue { i32, i32 } %14, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  %19 = icmp eq i32 %18, %12
  br i1 %19, label %20, label %11

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.drm_lock_data, ptr %0, i32 0, i32 7
  store i32 1, ptr %21, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #4
  br label %40

22:                                               ; preds = %2
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #4
  br label %23

23:                                               ; preds = %30, %22
  %24 = load volatile i32, ptr %3, align 4
  %25 = and i32 %24, 1073741823
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #4, !srcloc !10
  br label %26

26:                                               ; preds = %26, %23
  %27 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %3, i32 %24, i32 %25) #4, !srcloc !11
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %26

30:                                               ; preds = %26
  %31 = extractvalue { i32, i32 } %27, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !16
  %32 = icmp eq i32 %31, %24
  br i1 %32, label %33, label %23

33:                                               ; preds = %30
  %34 = icmp sgt i32 %24, -1
  %35 = icmp eq i32 %25, %1
  %36 = or i1 %34, %35
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, i32 noundef %1, i32 noundef %25) #4
  br label %40

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.drm_lock_data, ptr %0, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %39, i32 noundef 1, i32 noundef 1, ptr noundef null) #4
  br label %40

40:                                               ; preds = %38, %37, %20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_legacy_idlelock_take(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_lock_data, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %2) #4
  %3 = getelementptr inbounds %struct.drm_lock_data, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.drm_lock_data, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %1
  tail call void @_raw_spin_unlock_bh(ptr noundef %2) #4
  %10 = load ptr, ptr %0, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %2) #4
  %11 = getelementptr inbounds %struct.drm_lock_data, ptr %0, i32 0, i32 6
  br label %12

12:                                               ; preds = %29, %9
  %13 = load volatile i32, ptr %10, align 4
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = or i32 %13, 1073741824
  br label %23

17:                                               ; preds = %12
  %18 = load i32, ptr %11, align 4
  %19 = load i32, ptr %3, align 4
  %20 = add i32 %19, %18
  %21 = icmp ugt i32 %20, 1
  %22 = select i1 %21, i32 -1073741824, i32 -2147483648
  br label %23

23:                                               ; preds = %17, %15
  %24 = phi i32 [ %16, %15 ], [ %22, %17 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #4, !srcloc !10
  br label %25

25:                                               ; preds = %25, %23
  %26 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %10, i32 %13, i32 %24) #4, !srcloc !11
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %25

29:                                               ; preds = %25
  %30 = extractvalue { i32, i32 } %26, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  %31 = icmp eq i32 %30, %13
  br i1 %31, label %32, label %12

32:                                               ; preds = %29
  tail call void @_raw_spin_unlock_bh(ptr noundef %2) #4
  %33 = and i32 %13, -1073741825
  %34 = icmp eq i32 %33, -2147483648
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void @_raw_spin_lock_bh(ptr noundef %2) #4
  br label %40

36:                                               ; preds = %32
  %37 = and i32 %24, -1073741825
  %38 = icmp eq i32 %37, -2147483648
  tail call void @_raw_spin_lock_bh(ptr noundef %2) #4
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, ptr %6, align 4
  br label %40

40:                                               ; preds = %39, %36, %35, %1
  tail call void @_raw_spin_unlock_bh(ptr noundef %2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_legacy_idlelock_release(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_lock_data, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #4
  %4 = getelementptr inbounds %struct.drm_lock_data, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1
  store i32 %6, ptr %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.drm_lock_data, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %18, %8
  %13 = load volatile i32, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #4, !srcloc !10
  br label %14

14:                                               ; preds = %14, %12
  %15 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %2, i32 %13, i32 0) #4, !srcloc !11
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %14

18:                                               ; preds = %14
  %19 = extractvalue { i32, i32 } %15, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !18
  %20 = icmp eq i32 %19, %13
  br i1 %20, label %21, label %12

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.drm_lock_data, ptr %0, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %22, i32 noundef 1, i32 noundef 1, ptr noundef null) #4
  store i32 0, ptr %9, align 4
  br label %23

23:                                               ; preds = %21, %8, %1
  tail call void @_raw_spin_unlock_bh(ptr noundef %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_legacy_lock_release(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.drm_file, ptr %4, i32 0, i32 29
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.drm_file, ptr %4, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_master, ptr %14, i32 0, i32 12
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %12
  %19 = load volatile i32, ptr %16, align 4
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %33, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.drm_master, ptr %14, i32 0, i32 12, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %4
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load volatile i32, ptr %16, align 4
  %27 = and i32 %26, 1073741823
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, ptr noundef %1, i32 noundef %27) #4
  %28 = load ptr, ptr %13, align 4
  %29 = getelementptr inbounds %struct.drm_master, ptr %28, i32 0, i32 12
  %30 = load ptr, ptr %29, align 4
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 1073741823
  tail call fastcc void @drm_legacy_lock_free(ptr noundef %29, i32 noundef %32)
  br label %33

33:                                               ; preds = %25, %21, %18, %12, %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_legacy_lock_master_cleanup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_driver, ptr %4, i32 0, i32 24
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %6, 67108864
  %10 = and i32 %9, %8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %13) #4
  %14 = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 12
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 51, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %15
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store ptr null, ptr %18, align 4
  br label %22

22:                                               ; preds = %21, %17
  store ptr null, ptr %14, align 4
  %23 = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 12, i32 1
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 12, i32 2
  tail call void @__wake_up(ptr noundef %24, i32 noundef 1, i32 noundef 0, ptr noundef null) #4
  br label %25

25:                                               ; preds = %22, %12
  tail call void @mutex_unlock(ptr noundef %13) #4
  br label %26

26:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2153411638}
!10 = !{i64 469536, i64 2147971102, i64 2147971128, i64 2147971175, i64 2147971197, i64 2147971225, i64 2147971245}
!11 = !{i64 544352, i64 544373, i64 544396, i64 544415, i64 544434}
!12 = !{i64 2153412017}
!13 = !{i64 2153413158}
!14 = !{i64 2153413537}
!15 = !{i64 2153414488}
!16 = !{i64 2153414867}
!17 = !{i64 2153423584}
!18 = !{i64 2153423961}
