; ModuleID = '/llk/IR/ipc/ipc_sysctl.c_pt.bc'
source_filename = "../ipc/ipc_sysctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.ipc_namespace = type { [3 x %struct.ipc_ids], [4 x i32], i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, %struct.notifier_block, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.llist_node, %struct.ns_common }
%struct.ipc_ids = type { i32, i16, %struct.rw_semaphore, %struct.idr, i32, i32, %struct.rhashtable }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.llist_node = type { ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.25, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.6 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.25 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ipc_mni = dso_local global i32 32768, align 4
@ipc_mni_shift = dso_local local_unnamed_addr global i32 15, align 4
@ipc_min_cycle = dso_local local_unnamed_addr global i32 64, align 4
@__initcall__kmod_ipc_sysctl__158_247_ipc_sysctl_init6 = internal global ptr @ipc_sysctl_init, section ".initcall6.init", align 4
@__setup_str_ipc_mni_extend = internal constant [14 x i8] c"ipcmni_extend\00", section ".init.rodata", align 1
@__setup_ipc_mni_extend = internal global %struct.obs_kernel_param { ptr @__setup_str_ipc_mni_extend, ptr @ipc_mni_extend, i32 1 }, section ".init.setup", align 4
@ipc_root_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str, ptr null, i32 0, i16 365, ptr @ipc_kern_table, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@ipc_kern_table = internal global [10 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.1, ptr getelementptr (i8, ptr @init_ipc_ns, i64 484), i32 4, i16 420, ptr null, ptr @proc_ipc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.2, ptr getelementptr (i8, ptr @init_ipc_ns, i64 488), i32 4, i16 420, ptr null, ptr @proc_ipc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.3, ptr getelementptr (i8, ptr @init_ipc_ns, i64 496), i32 4, i16 420, ptr null, ptr @proc_ipc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @ipc_mni }, %struct.ctl_table { ptr @.str.4, ptr getelementptr (i8, ptr @init_ipc_ns, i64 500), i32 4, i16 420, ptr null, ptr @proc_ipc_dointvec_minmax_orphans, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.5, ptr getelementptr (i8, ptr @init_ipc_ns, i64 464), i32 4, i16 420, ptr null, ptr @proc_ipc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table { ptr @.str.6, ptr getelementptr (i8, ptr @init_ipc_ns, i64 472), i32 4, i16 420, ptr null, ptr @proc_ipc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @ipc_mni }, %struct.ctl_table { ptr @.str.7, ptr null, i32 4, i16 420, ptr null, ptr @proc_ipc_auto_msgmni, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.8, ptr getelementptr (i8, ptr @init_ipc_ns, i64 468), i32 4, i16 420, ptr null, ptr @proc_ipc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table { ptr @.str.9, ptr getelementptr (i8, ptr @init_ipc_ns, i64 444), i32 16, i16 420, ptr null, ptr @proc_ipc_sem_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"shmmax\00", align 1
@init_ipc_ns = external dso_local global %struct.ipc_namespace, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"shmall\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"shmmni\00", align 1
@sysctl_vals = external dso_local constant [0 x i32], align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"shm_rmid_forced\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"msgmax\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"msgmni\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"auto_msgmni\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"msgmnb\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"sem\00", align 1
@proc_ipc_auto_msgmni.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"\016writing to auto_msgmni has no effect\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"\016IPCMNI extended to %d.\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_ipc_sysctl__158_247_ipc_sysctl_init6, ptr @__setup_ipc_mni_extend], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ipc_sysctl_init() #0 section ".init.text" {
  %1 = tail call ptr @register_sysctl_table(ptr noundef nonnull @ipc_root_table) #7
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ipc_mni_extend(ptr nocapture noundef readnone %0) #0 section ".init.text" {
  store i32 16777216, ptr @ipc_mni, align 4
  store i32 24, ptr @ipc_mni_shift, align 4
  store i32 4096, ptr @ipc_min_cycle, align 4
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 16777216) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_ipc_doulongvec_minmax(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #2 {
  %6 = alloca %struct.ctl_table, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, ptr noundef align 4 dereferenceable(36) %0, i32 36, i1 false)
  %7 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @llvm.thread.pointer() #7
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 92
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nsproxy, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %8 to i32
  %15 = sub i32 %14, ptrtoint (ptr @init_ipc_ns to i32)
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = getelementptr inbounds %struct.ctl_table, ptr %6, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = call i32 @proc_doulongvec_minmax(ptr noundef nonnull %6, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #7
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_ipc_dointvec_minmax(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #2 {
  %6 = alloca %struct.ctl_table, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, ptr noundef align 4 dereferenceable(36) %0, i32 36, i1 false)
  %7 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @llvm.thread.pointer() #7
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 92
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nsproxy, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %8 to i32
  %15 = sub i32 %14, ptrtoint (ptr @init_ipc_ns to i32)
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = getelementptr inbounds %struct.ctl_table, ptr %6, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = call i32 @proc_dointvec_minmax(ptr noundef nonnull %6, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #7
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_ipc_dointvec_minmax_orphans(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #2 {
  %6 = alloca %struct.ctl_table, align 4
  %7 = tail call ptr @llvm.thread.pointer() #7
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 92
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nsproxy, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, ptr noundef align 4 dereferenceable(36) %0, i32 36, i1 false) #7
  %12 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %10, align 4
  %15 = ptrtoint ptr %13 to i32
  %16 = sub i32 %15, ptrtoint (ptr @init_ipc_ns to i32)
  %17 = getelementptr i8, ptr %14, i32 %16
  %18 = getelementptr inbounds %struct.ctl_table, ptr %6, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = call i32 @proc_dointvec_minmax(ptr noundef nonnull %6, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #7
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.ipc_namespace, ptr %11, i32 0, i32 12
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  call void @shm_destroy_orphaned(ptr noundef %11) #7
  br label %26

26:                                               ; preds = %25, %21, %5
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_ipc_auto_msgmni(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #2 {
  %6 = alloca %struct.ctl_table, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, ptr noundef align 4 dereferenceable(36) %0, i32 36, i1 false)
  %8 = getelementptr inbounds %struct.ctl_table, ptr %6, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = load i1, ptr @proc_ipc_auto_msgmni.__already_done, align 1
  br i1 %11, label %14, label %12, !prof !8

12:                                               ; preds = %10
  store i1 true, ptr @proc_ipc_auto_msgmni.__already_done, align 1
  %13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #8
  br label %14

14:                                               ; preds = %12, %10, %5
  %15 = call i32 @proc_dointvec_minmax(ptr noundef nonnull %6, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #7
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_ipc_sem_dointvec(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #2 {
  %6 = alloca %struct.ctl_table, align 4
  %7 = tail call ptr @llvm.thread.pointer() #7
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 92
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nsproxy, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.ipc_namespace, ptr %11, i32 0, i32 1, i32 3
  %13 = load i32, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, ptr noundef align 4 dereferenceable(36) %0, i32 36, i1 false) #7
  %14 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %10, align 4
  %17 = ptrtoint ptr %15 to i32
  %18 = sub i32 %17, ptrtoint (ptr @init_ipc_ns to i32)
  %19 = getelementptr i8, ptr %16, i32 %18
  %20 = getelementptr inbounds %struct.ctl_table, ptr %6, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = call i32 @proc_dointvec(ptr noundef nonnull %6, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %5
  %24 = load ptr, ptr %8, align 4
  %25 = getelementptr inbounds %struct.nsproxy, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr %struct.ipc_namespace, ptr %26, i32 0, i32 1, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp slt i32 %28, 0
  %30 = load i32, ptr @ipc_mni, align 4
  %31 = icmp sgt i32 %28, %30
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %23, %5
  %34 = phi i32 [ %21, %5 ], [ -34, %23 ]
  store i32 %13, ptr %12, align 4
  br label %35

35:                                               ; preds = %33, %23
  %36 = phi i32 [ %34, %33 ], [ 0, %23 ]
  ret i32 %36
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @shm_destroy_orphaned(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
