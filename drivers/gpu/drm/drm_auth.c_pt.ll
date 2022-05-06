; ModuleID = '/llk/IR/drivers/gpu/drm/drm_auth.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_auth.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_is_current_master:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_is_current_master\22\09\09\09\09\09"
module asm "__kstrtabns_drm_is_current_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_master_get:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_master_get\22\09\09\09\09\09"
module asm "__kstrtabns_drm_master_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_file_get_master:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_file_get_master\22\09\09\09\09\09"
module asm "__kstrtabns_drm_file_get_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_master_put:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_master_put\22\09\09\09\09\09"
module asm "__kstrtabns_drm_master_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_master_internal_acquire:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_master_internal_acquire\22\09\09\09\09\09"
module asm "__kstrtabns_drm_master_internal_acquire:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_master_internal_release:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_master_internal_release\22\09\09\09\09\09"
module asm "__kstrtabns_drm_master_internal_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
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
%struct.drm_master = type { %struct.kref, ptr, ptr, i32, %struct.idr, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.idr, %struct.idr, %struct.drm_lock_data }
%struct.drm_lock_data = type { ptr, ptr, %struct.wait_queue_head, i32, %struct.spinlock, i32, i32, i32 }
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
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@__kstrtab_drm_is_current_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_is_current_master = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_is_current_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_is_current_master to i32), ptr @__kstrtab_drm_is_current_master, ptr @__kstrtabns_drm_is_current_master }, section "___ksymtab+drm_is_current_master", align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Attempt to set lessee %d as master\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Attempt to drop lessee %d as master\0A\00", align 1
@__kstrtab_drm_master_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_master_get = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_master_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_master_get to i32), ptr @__kstrtab_drm_master_get, ptr @__kstrtabns_drm_master_get }, section "___ksymtab+drm_master_get", align 4
@__kstrtab_drm_file_get_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_file_get_master = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_file_get_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_file_get_master to i32), ptr @__kstrtab_drm_file_get_master, ptr @__kstrtabns_drm_file_get_master }, section "___ksymtab+drm_file_get_master", align 4
@__kstrtab_drm_master_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_master_put = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_master_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_master_put to i32), ptr @__kstrtab_drm_master_put, ptr @__kstrtabns_drm_master_put }, section "___ksymtab+drm_master_put", align 4
@__kstrtab_drm_master_internal_acquire = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_master_internal_acquire = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_master_internal_acquire = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_master_internal_acquire to i32), ptr @__kstrtab_drm_master_internal_acquire, ptr @__kstrtabns_drm_master_internal_acquire }, section "___ksymtab+drm_master_internal_acquire", align 4
@__kstrtab_drm_master_internal_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_master_internal_release = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_master_internal_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_master_internal_release to i32), ptr @__kstrtab_drm_master_internal_release, ptr @__kstrtabns_drm_master_internal_release }, section "___ksymtab+drm_master_internal_release", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"drivers/gpu/drm/drm_auth.c\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_drm_file_get_master, ptr @__ksymtab_drm_is_current_master, ptr @__ksymtab_drm_master_get, ptr @__ksymtab_drm_master_internal_acquire, ptr @__ksymtab_drm_master_internal_release, ptr @__ksymtab_drm_master_put], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_is_current_master(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 7
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @drm_lease_owner(ptr noundef %8) #7
  %10 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 13
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_minor, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %9, %15
  br label %17

17:                                               ; preds = %6, %1
  %18 = phi i1 [ false, %1 ], [ %16, %6 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %19 = load i16, ptr %2, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  ret i1 %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_getmagic(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %4) #7
  %5 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 11
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_master, ptr %10, i32 0, i32 4
  %12 = tail call i32 @idr_alloc(ptr noundef %11, ptr noundef %2, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #7
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = load i32, ptr %5, align 4
  br label %17

16:                                               ; preds = %8
  store i32 %12, ptr %5, align 4
  br label %17

17:                                               ; preds = %16, %14, %3
  %18 = phi i32 [ %6, %3 ], [ %12, %16 ], [ %15, %14 ]
  %19 = phi i32 [ 0, %3 ], [ %12, %16 ], [ %12, %14 ]
  store i32 %18, ptr %1, align 4
  tail call void @mutex_unlock(ptr noundef %4) #7
  %20 = icmp eq ptr %0, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi ptr [ %23, %21 ], [ null, %17 ]
  %26 = load i32, ptr %1, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %25, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %26) #7
  %27 = tail call i32 @llvm.smin.i32(i32 %19, i32 0)
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_authmagic(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi ptr [ %7, %5 ], [ null, %3 ]
  %10 = load i32, ptr %1, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %10) #7
  %11 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %11) #7
  %12 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_master, ptr %13, i32 0, i32 4
  %15 = load i32, ptr %1, align 4
  %16 = tail call ptr @idr_find(ptr noundef %14, i32 noundef %15) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %8
  store i8 1, ptr %16, align 4
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr inbounds %struct.drm_master, ptr %19, i32 0, i32 4
  %21 = load i32, ptr %1, align 4
  %22 = tail call ptr @idr_replace(ptr noundef %20, ptr noundef null, i32 noundef %21) #7
  br label %23

23:                                               ; preds = %18, %8
  %24 = phi i32 [ 0, %18 ], [ -22, %8 ]
  tail call void @mutex_unlock(ptr noundef %11) #7
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_replace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_master_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 144) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  store volatile i32 1, ptr %3, align 8
  tail call void @drm_master_legacy_init(ptr noundef nonnull %3) #7
  %6 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 4
  store i32 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 4, i32 0, i32 1
  store i32 33554436, ptr %7, align 4
  %8 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 4, i32 0, i32 2
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 4, i32 1
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 4, i32 2
  store i32 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 1
  store ptr %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 9
  store volatile ptr %12, ptr %12, align 8
  %13 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 9, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 8
  store volatile ptr %14, ptr %14, align 8
  %15 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 8, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 10
  store i32 0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 10, i32 0, i32 1
  store i32 33554436, ptr %17, align 4
  %18 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 10, i32 0, i32 2
  %19 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 11, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  store i32 33554436, ptr %19, align 8
  %20 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 11, i32 0, i32 2
  store ptr null, ptr %20, align 4
  %21 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 11, i32 1
  store i32 0, ptr %21, align 8
  %22 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 11, i32 2
  store i32 0, ptr %22, align 4
  br label %23

23:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_master_legacy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_setmaster_ioctl(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %4) #7
  %5 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @llvm.thread.pointer() #7
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 62
  %9 = load ptr, ptr %8, align 64
  %10 = icmp eq ptr %6, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 6
  %13 = load i8, ptr %12, align 2, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %3
  %16 = tail call zeroext i1 @capable(i32 noundef 21) #7
  br i1 %16, label %17, label %59

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 7
  %19 = load i8, ptr %18, align 1, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = tail call ptr @drm_lease_owner(ptr noundef %23) #7
  %25 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 13
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.drm_minor, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %24, %30
  br i1 %31, label %59, label %32

32:                                               ; preds = %21, %17
  %33 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 9
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %59, label %40

40:                                               ; preds = %36
  %41 = load i8, ptr %18, align 1, !range !8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = tail call fastcc i32 @drm_new_set_master(ptr noundef %0, ptr noundef %2)
  br label %59

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.drm_master, ptr %38, i32 0, i32 6
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %58, label %49

49:                                               ; preds = %45
  %50 = icmp eq ptr %0, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  br label %54

54:                                               ; preds = %51, %49
  %55 = phi ptr [ %53, %51 ], [ null, %49 ]
  %56 = getelementptr inbounds %struct.drm_master, ptr %38, i32 0, i32 7
  %57 = load i32, ptr %56, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %55, i32 noundef 128, ptr noundef nonnull @.str.1, i32 noundef %57) #7
  br label %59

58:                                               ; preds = %45
  tail call fastcc void @drm_set_master(ptr noundef %0, ptr noundef %2, i1 noundef zeroext false)
  br label %59

59:                                               ; preds = %58, %54, %43, %36, %32, %21, %15
  %60 = phi i32 [ 0, %21 ], [ -22, %54 ], [ 0, %58 ], [ %44, %43 ], [ -16, %32 ], [ -22, %36 ], [ -13, %15 ]
  tail call void @mutex_unlock(ptr noundef %4) #7
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drm_new_set_master(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %4 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 7
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7, !prof !13

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 172, i32 noundef 9, ptr noundef null) #7
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  store ptr %10, ptr %3, align 4
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 144) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %57, label %14

14:                                               ; preds = %8
  store volatile i32 1, ptr %12, align 8
  tail call void @drm_master_legacy_init(ptr noundef nonnull %12) #7
  %15 = getelementptr inbounds %struct.drm_master, ptr %12, i32 0, i32 4
  store i32 0, ptr %15, align 8
  %16 = getelementptr inbounds %struct.drm_master, ptr %12, i32 0, i32 4, i32 0, i32 1
  store i32 33554436, ptr %16, align 4
  %17 = getelementptr inbounds %struct.drm_master, ptr %12, i32 0, i32 4, i32 0, i32 2
  store ptr null, ptr %17, align 8
  %18 = getelementptr inbounds %struct.drm_master, ptr %12, i32 0, i32 4, i32 1
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.drm_master, ptr %12, i32 0, i32 4, i32 2
  store i32 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.drm_master, ptr %12, i32 0, i32 1
  store ptr %0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.drm_master, ptr %12, i32 0, i32 9
  store volatile ptr %21, ptr %21, align 8
  %22 = getelementptr inbounds %struct.drm_master, ptr %12, i32 0, i32 9, i32 1
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.drm_master, ptr %12, i32 0, i32 8
  store volatile ptr %23, ptr %23, align 8
  %24 = getelementptr inbounds %struct.drm_master, ptr %12, i32 0, i32 8, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.drm_master, ptr %12, i32 0, i32 10
  store i32 0, ptr %25, align 8
  %26 = getelementptr inbounds %struct.drm_master, ptr %12, i32 0, i32 10, i32 0, i32 1
  store i32 33554436, ptr %26, align 4
  %27 = getelementptr inbounds %struct.drm_master, ptr %12, i32 0, i32 10, i32 0, i32 2
  %28 = getelementptr inbounds %struct.drm_master, ptr %12, i32 0, i32 11, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false) #7
  store i32 33554436, ptr %28, align 8
  %29 = getelementptr inbounds %struct.drm_master, ptr %12, i32 0, i32 11, i32 0, i32 2
  store ptr null, ptr %29, align 4
  %30 = getelementptr inbounds %struct.drm_master, ptr %12, i32 0, i32 11, i32 1
  store i32 0, ptr %30, align 8
  %31 = getelementptr inbounds %struct.drm_master, ptr %12, i32 0, i32 11, i32 2
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %32) #7
  store ptr %12, ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %33 = load i16, ptr %32, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  store i8 1, ptr %4, align 1
  store i8 1, ptr %1, align 4
  %35 = load ptr, ptr %9, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #7, !srcloc !14
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #7, !srcloc !15
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39, !prof !16

39:                                               ; preds = %14
  %40 = add i32 %37, 1
  %41 = or i32 %40, %37
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %45, label %43, !prof !13

43:                                               ; preds = %39, %14
  %44 = phi i32 [ 2, %14 ], [ 1, %39 ]
  tail call void @refcount_warn_saturate(ptr noundef %35, i32 noundef %44) #7
  br label %45

45:                                               ; preds = %43, %39
  %46 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 9
  store ptr %35, ptr %46, align 4
  %47 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.drm_driver, ptr %48, i32 0, i32 6
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  tail call void %50(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true) #7
  br label %53

53:                                               ; preds = %52, %45
  %54 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 6
  store i8 1, ptr %54, align 2
  %55 = icmp eq ptr %10, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  call void @drm_master_put(ptr noundef nonnull %3)
  br label %57

57:                                               ; preds = %56, %53, %8
  %58 = phi i32 [ 0, %56 ], [ 0, %53 ], [ -12, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drm_set_master(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #7, !srcloc !14
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #7, !srcloc !15
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9, !prof !16

9:                                                ; preds = %3
  %10 = add i32 %7, 1
  %11 = or i32 %10, %7
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %15, label %13, !prof !13

13:                                               ; preds = %9, %3
  %14 = phi i32 [ 2, %3 ], [ 1, %9 ]
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef %14) #7
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 9
  store ptr %5, ptr %16, align 4
  %17 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_driver, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  tail call void %20(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #7
  br label %23

23:                                               ; preds = %22, %15
  %24 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 6
  store i8 1, ptr %24, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dropmaster_ioctl(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %4) #7
  %5 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @llvm.thread.pointer() #7
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 62
  %9 = load ptr, ptr %8, align 64
  %10 = icmp eq ptr %6, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 6
  %13 = load i8, ptr %12, align 2, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %3
  %16 = tail call zeroext i1 @capable(i32 noundef 21) #7
  br i1 %16, label %17, label %58

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 7
  %19 = load i8, ptr %18, align 1, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %58, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = tail call ptr @drm_lease_owner(ptr noundef %23) #7
  %25 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 13
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.drm_minor, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %24, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 9
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %58, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %22, align 4
  %38 = getelementptr inbounds %struct.drm_master, ptr %37, i32 0, i32 6
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = icmp eq ptr %0, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi ptr [ %45, %43 ], [ null, %41 ]
  %48 = getelementptr inbounds %struct.drm_master, ptr %37, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %47, i32 noundef 128, ptr noundef nonnull @.str.2, i32 noundef %49) #7
  br label %58

50:                                               ; preds = %36
  %51 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.drm_driver, ptr %52, i32 0, i32 7
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  tail call void %54(ptr noundef %0, ptr noundef %2) #7
  br label %57

57:                                               ; preds = %56, %50
  tail call void @drm_master_put(ptr noundef %33) #7
  br label %58

58:                                               ; preds = %57, %46, %32, %21, %17, %15
  %59 = phi i32 [ -22, %46 ], [ 0, %57 ], [ -22, %21 ], [ -22, %32 ], [ -13, %15 ], [ -22, %17 ]
  tail call void @mutex_unlock(ptr noundef %4) #7
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_master_open(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %6) #7
  %7 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @drm_new_set_master(ptr noundef %5, ptr noundef %0)
  br label %28

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %13) #7
  %14 = load ptr, ptr %7, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #7, !srcloc !14
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #7, !srcloc !15
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !16

18:                                               ; preds = %12
  %19 = add i32 %16, 1
  %20 = or i32 %19, %16
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %24, label %22, !prof !13

22:                                               ; preds = %18, %12
  %23 = phi i32 [ 2, %12 ], [ 1, %18 ]
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef %23) #7
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 8
  store ptr %14, ptr %25, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %26 = load i16, ptr %13, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  br label %28

28:                                               ; preds = %24, %10
  %29 = phi i32 [ 0, %24 ], [ %11, %10 ]
  tail call void @mutex_unlock(ptr noundef %6) #7
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_master_get(ptr noundef returned %0) #0 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #7, !srcloc !14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #7, !srcloc !15
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !16

5:                                                ; preds = %1
  %6 = add i32 %3, 1
  %7 = or i32 %6, %3
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %11, label %9, !prof !13

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 2, %1 ], [ 1, %5 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %10) #7
  br label %11

11:                                               ; preds = %9, %5
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_master_release(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %6) #7
  %7 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.drm_master, ptr %8, i32 0, i32 4
  %14 = tail call ptr @idr_remove(ptr noundef %13, i32 noundef %10) #7
  br label %15

15:                                               ; preds = %12, %1
  %16 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 7
  %17 = load i8, ptr %16, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %7, align 4
  %21 = tail call ptr @drm_lease_owner(ptr noundef %20) #7
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr inbounds %struct.drm_minor, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 9
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %21, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %19
  tail call void @drm_legacy_lock_master_cleanup(ptr noundef %5, ptr noundef %8) #7
  %29 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %7, align 4
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.drm_driver, ptr %35, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  tail call void %37(ptr noundef %5, ptr noundef %0) #7
  br label %40

40:                                               ; preds = %39, %33
  tail call void @drm_master_put(ptr noundef %29) #7
  br label %41

41:                                               ; preds = %40, %28, %19, %15
  %42 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.drm_driver, ptr %43, i32 0, i32 24
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 10
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %45, 2
  %49 = and i32 %48, %47
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = load i8, ptr %16, align 1, !range !8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  tail call void @drm_lease_revoke(ptr noundef %8) #7
  br label %55

55:                                               ; preds = %54, %51, %41
  %56 = load ptr, ptr %7, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  tail call void @drm_master_put(ptr noundef %7)
  br label %59

59:                                               ; preds = %58, %55
  tail call void @mutex_unlock(ptr noundef %6) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_lock_master_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_lease_revoke(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_master_put(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #7, !srcloc !14
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #7, !srcloc !18
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %28, label %8, !prof !13

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #7
  br label %28

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !19
  %10 = getelementptr inbounds %struct.drm_master, ptr %2, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_driver, ptr %13, i32 0, i32 24
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 10
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %15, 2
  %19 = and i32 %18, %17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %9
  tail call void @drm_lease_destroy(ptr noundef %2) #7
  br label %22

22:                                               ; preds = %21, %9
  tail call void @drm_legacy_master_rmmaps(ptr noundef %11, ptr noundef %2) #7
  %23 = getelementptr inbounds %struct.drm_master, ptr %2, i32 0, i32 4
  tail call void @idr_destroy(ptr noundef %23) #7
  %24 = getelementptr inbounds %struct.drm_master, ptr %2, i32 0, i32 10
  tail call void @idr_destroy(ptr noundef %24) #7
  %25 = getelementptr inbounds %struct.drm_master, ptr %2, i32 0, i32 11
  tail call void @idr_destroy(ptr noundef %25) #7
  %26 = getelementptr inbounds %struct.drm_master, ptr %2, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  tail call void @kfree(ptr noundef %27) #7
  tail call void @kfree(ptr noundef %2) #7
  br label %28

28:                                               ; preds = %22, %8, %6
  store ptr null, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_file_get_master(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %4) #7, !srcloc !14
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #7, !srcloc !15
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !16

10:                                               ; preds = %6
  %11 = add i32 %8, 1
  %12 = or i32 %11, %8
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %16, label %14, !prof !13

14:                                               ; preds = %10, %6
  %15 = phi i32 [ 2, %6 ], [ 1, %10 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %4, i32 noundef %15) #7
  br label %16

16:                                               ; preds = %14, %10, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %17 = load i16, ptr %2, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_master_internal_acquire(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef %2) #7
  br label %7

7:                                                ; preds = %6, %1
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_master_internal_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_lease_owner(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_lease_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_master_rmmaps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!9 = !{i64 2148935573}
!10 = !{i64 2148931397}
!11 = !{i64 2148931472, i64 2148931499, i64 2148931546, i64 2148931568, i64 2148931596, i64 2148931616}
!12 = !{i64 2148958576}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 766969, i64 2148256940, i64 2148256966, i64 2148257013, i64 2148257035, i64 2148257063, i64 2148257083}
!15 = !{i64 2148269813, i64 2148269845, i64 2148269874, i64 2148269908, i64 2148269939, i64 2148269962}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2148370035}
!18 = !{i64 2148272170, i64 2148272202, i64 2148272231, i64 2148272265, i64 2148272296, i64 2148272319}
!19 = !{i64 2149284925}
