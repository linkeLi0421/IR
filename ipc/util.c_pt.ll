; ModuleID = '/llk/IR/ipc/util.c_pt.bc'
source_filename = "../ipc/util.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.ipc_ids = type { i32, i16, %struct.rw_semaphore, %struct.idr, i32, i32, %struct.rhashtable }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ipc_proc_iface = type { ptr, ptr, i32, ptr }
%struct.kern_ipc_perm = type { %struct.spinlock, i8, i32, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i16, i32, ptr, %struct.rhash_head, %struct.callback_head, %struct.refcount_struct, [4 x i8] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rhash_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%struct.llist_node = type { ptr }
%union.anon.22 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.23 }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.36 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.36 = type { %struct.callback_head }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [32 x i8], [0 x ptr] }
%struct.lockdep_map = type {}
%struct.ipc_namespace = type { [3 x %struct.ipc_ids], [4 x i32], i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, %struct.notifier_block, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.llist_node, %struct.ns_common }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ipc64_perm = type { i32, i32, i32, i32, i32, i16, [2 x i8], i16, i16, i32, i32 }
%struct.ipc_perm = type { i32, i16, i16, i16, i16, i16, i16 }
%struct.ipc_params = type { i32, i32, %union.anon.65 }
%union.anon.65 = type { i32 }
%struct.ipc_ops = type { ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ipc_proc_iter = type { ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.55, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.56, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.57, ptr, %struct.address_space, %struct.list_head, %union.anon.60, i32, i32, ptr, ptr }
%union.anon.55 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.56 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.57 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.60 = type { ptr }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_util__275_99_ipc_init6 = internal global ptr @ipc_init, section ".initcall6.init", align 4
@ipc_init_ids.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [12 x i8] c"&ids->rwsem\00", align 1
@ipc_kht_params = internal constant %struct.rhashtable_params { i16 0, i16 4, i16 12, i16 44, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, align 4
@sysvipc_proc_ops = internal constant %struct.proc_ops { i32 1, ptr @sysvipc_proc_open, ptr @seq_read, ptr null, ptr null, ptr @seq_lseek, ptr @sysvipc_proc_release, ptr null, ptr null, ptr null, ptr null }, align 4
@ipc_mni = external dso_local local_unnamed_addr global i32, align 4
@ipc_mni_shift = external dso_local local_unnamed_addr global i32, align 4
@ipc_rmid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ipc/util.c\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"sysvipc\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ipc_min_cycle = external dso_local local_unnamed_addr global i32, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ipc_kht_remove.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sysvipc_proc_seqops = internal constant %struct.seq_operations { ptr @sysvipc_proc_start, ptr @sysvipc_proc_stop, ptr @sysvipc_proc_next, ptr @sysvipc_proc_show }, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_util__275_99_ipc_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ipc_init() #0 section ".init.text" {
  %1 = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.2, ptr noundef null) #13
  tail call void @sem_init() #13
  tail call void @msg_init() #13
  tail call void @shm_init() #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipc_init_ids(ptr noundef %0) local_unnamed_addr #1 {
  store i32 0, ptr %0, align 4
  %2 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 1
  store i16 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 2
  tail call void @__init_rwsem(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @ipc_init_ids.__key) #13
  %4 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 6
  %5 = tail call i32 @rhashtable_init(ptr noundef %4, ptr noundef nonnull @ipc_kht_params) #13
  %6 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 3
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 3, i32 0, i32 1
  store i32 33554436, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 3, i32 0, i32 2
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 3, i32 1
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 3, i32 2
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 4
  store i32 -1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 5
  store i32 -1, ptr %12, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @ipc_init_proc_interface(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 section ".init.text" {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 16) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  store ptr %0, ptr %6, align 8
  %9 = getelementptr inbounds %struct.ipc_proc_iface, ptr %6, i32 0, i32 1
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ipc_proc_iface, ptr %6, i32 0, i32 2
  store i32 %2, ptr %10, align 8
  %11 = getelementptr inbounds %struct.ipc_proc_iface, ptr %6, i32 0, i32 3
  store ptr %3, ptr %11, align 4
  %12 = tail call ptr @proc_create_data(ptr noundef %0, i16 noundef zeroext 292, ptr noundef null, ptr noundef nonnull @sysvipc_proc_ops, ptr noundef nonnull %6) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  tail call void @kfree(ptr noundef nonnull %6) #13
  br label %15

15:                                               ; preds = %14, %8, %4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipc_addid(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 13
  store volatile i32 1, ptr %4, align 4
  %5 = load i32, ptr @ipc_mni, align 4
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 %2)
  %7 = load i32, ptr %0, align 4
  %8 = icmp slt i32 %7, %6
  br i1 %8, label %9, label %224

9:                                                ; preds = %3
  tail call void @idr_preload(i32 noundef 3264) #13
  store i32 0, ptr %1, align 64
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  tail call void @_raw_spin_lock(ptr noundef %1) #13
  %10 = tail call ptr @llvm.thread.pointer() #13
  %11 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 83
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 6
  %18 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 4
  store i32 %14, ptr %18, align 16
  store i32 %14, ptr %17, align 8
  %19 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 5
  %20 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 7
  store i32 %16, ptr %20, align 4
  store i32 %16, ptr %19, align 4
  %21 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 1
  store i8 0, ptr %21, align 4
  %22 = load i32, ptr %0, align 4
  %23 = mul i32 %22, 3
  %24 = sdiv i32 %23, 2
  %25 = load i32, ptr @ipc_min_cycle, align 4
  %26 = tail call i32 @llvm.smax.i32(i32 %24, i32 %25) #13
  %27 = load i32, ptr @ipc_mni, align 4
  %28 = tail call i32 @llvm.smin.i32(i32 %26, i32 %27) #13
  %29 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 3
  %30 = tail call i32 @idr_alloc_cyclic(ptr noundef %29, ptr noundef null, i32 noundef 0, i32 noundef %28, i32 noundef 2048) #13
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %209

32:                                               ; preds = %9
  %33 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = icmp sgt i32 %30, %34
  %36 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 1
  %37 = load i16, ptr %36, align 4
  br i1 %35, label %45, label %38

38:                                               ; preds = %32
  %39 = add i16 %37, 1
  %40 = zext i16 %39 to i32
  %41 = load i32, ptr @ipc_mni_shift, align 4
  %42 = lshr i32 2147483647, %41
  %43 = icmp ugt i32 %42, %40
  %44 = select i1 %43, i16 %39, i16 0
  store i16 %44, ptr %36, align 4
  br label %45

45:                                               ; preds = %38, %32
  %46 = phi i16 [ %44, %38 ], [ %37, %32 ]
  store i32 %30, ptr %33, align 4
  %47 = zext i16 %46 to i32
  %48 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 9
  store i32 %47, ptr %48, align 4
  %49 = tail call ptr @idr_replace(ptr noundef %29, ptr noundef %1, i32 noundef %30) #13
  %50 = load i32, ptr %48, align 4
  %51 = load i32, ptr @ipc_mni_shift, align 4
  %52 = shl i32 %50, %51
  %53 = add i32 %52, %30
  %54 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 2
  store i32 %53, ptr %54, align 8
  %55 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %56 = inttoptr i32 %55 to ptr
  %57 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %56) #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %58 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %217, label %61

61:                                               ; preds = %45
  %62 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 6
  %63 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %64 = load volatile ptr, ptr %62, align 4
  %65 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 6, i32 3, i32 3
  %66 = load i16, ptr %65, align 2
  %67 = zext i16 %66 to i32
  %68 = sub nsw i32 0, %67
  %69 = getelementptr i8, ptr %63, i32 %68
  %70 = getelementptr i8, ptr %69, i32 12
  %71 = getelementptr inbounds %struct.bucket_table, ptr %64, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  %73 = add i32 %72, -559038733
  %74 = load i32, ptr %70, align 4
  %75 = add i32 %74, %73
  %76 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 14) #13
  %77 = sub i32 0, %76
  %78 = xor i32 %75, %77
  %79 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 11) #13
  %80 = sub i32 %78, %79
  %81 = xor i32 %80, %73
  %82 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 25) #13
  %83 = sub i32 %81, %82
  %84 = xor i32 %83, %77
  %85 = tail call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 16) #13
  %86 = sub i32 %84, %85
  %87 = xor i32 %86, %80
  %88 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 4) #13
  %89 = sub i32 %87, %88
  %90 = xor i32 %89, %83
  %91 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 14) #13
  %92 = sub i32 %90, %91
  %93 = xor i32 %92, %86
  %94 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 24) #13
  %95 = sub i32 %93, %94
  %96 = load i32, ptr %64, align 64
  %97 = add i32 %96, -1
  %98 = and i32 %95, %97
  %99 = getelementptr inbounds %struct.bucket_table, ptr %64, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102, !prof !12

102:                                              ; preds = %61
  %103 = tail call ptr @rht_bucket_nested_insert(ptr noundef %62, ptr noundef %64, i32 noundef %98) #13
  br label %106

104:                                              ; preds = %61
  %105 = getelementptr %struct.bucket_table, ptr %64, i32 0, i32 8, i32 %98
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi ptr [ %103, %102 ], [ %105, %104 ]
  %108 = icmp eq ptr %107, null
  br i1 %108, label %193, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %111 = load volatile i32, ptr %110, align 4
  %112 = add i32 %111, 512
  store volatile i32 %112, ptr %110, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %113

113:                                              ; preds = %127, %109
  %114 = load volatile i32, ptr %107, align 4
  %115 = and i32 %114, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %122, !prof !15

117:                                              ; preds = %113
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %107) #13, !srcloc !16
  %118 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %107, ptr nonnull %107, i32 1, ptr nonnull elementtype(i32) %107) #13, !srcloc !17
  %119 = extractvalue { i32, i32, i32 } %118, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %128, label %122, !prof !12

122:                                              ; preds = %117, %113
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !19
  br label %123

123:                                              ; preds = %123, %122
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !21
  %124 = load volatile i32, ptr %107, align 4
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %123

127:                                              ; preds = %123
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !22
  br label %113

128:                                              ; preds = %117
  %129 = getelementptr inbounds %struct.bucket_table, ptr %64, i32 0, i32 5
  %130 = load volatile ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %135, label %132, !prof !12

132:                                              ; preds = %166, %154, %128
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %107) #13, !srcloc !16
  %133 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %107, ptr nonnull %107, i32 1, ptr nonnull elementtype(i32) %107) #13, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !25
  tail call fastcc void @local_bh_enable() #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  %134 = tail call ptr @rhashtable_insert_slow(ptr noundef %62, ptr noundef null, ptr noundef %63) #13
  br label %197

135:                                              ; preds = %128
  %136 = load ptr, ptr %107, align 4
  %137 = ptrtoint ptr %136 to i32
  %138 = and i32 %137, -2
  %139 = icmp eq i32 %138, 0
  %140 = ptrtoint ptr %107 to i32
  %141 = or i32 %140, 1
  %142 = select i1 %139, i32 %141, i32 %138
  %143 = inttoptr i32 %142 to ptr
  %144 = and i32 %142, 1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %146, %135
  %147 = phi ptr [ %150, %146 ], [ %143, %135 ]
  %148 = phi i32 [ %149, %146 ], [ 16, %135 ]
  %149 = add i32 %148, -1
  %150 = load ptr, ptr %147, align 4
  %151 = ptrtoint ptr %150 to i32
  %152 = and i32 %151, 1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %146, label %154

154:                                              ; preds = %146
  %155 = icmp slt i32 %149, 1
  br i1 %155, label %132, label %156

156:                                              ; preds = %154, %135
  %157 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 6, i32 8
  %158 = load volatile i32, ptr %157, align 4
  %159 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 6, i32 2
  %160 = load i32, ptr %159, align 4
  %161 = icmp ult i32 %158, %160
  br i1 %161, label %162, label %195, !prof !12

162:                                              ; preds = %156
  %163 = load volatile i32, ptr %157, align 4
  %164 = load i32, ptr %64, align 64
  %165 = icmp ugt i32 %163, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 6, i32 3, i32 4
  %168 = load i32, ptr %167, align 4
  %169 = icmp eq i32 %168, 0
  %170 = icmp ult i32 %164, %168
  %171 = select i1 %169, i1 true, i1 %170
  br i1 %171, label %132, label %172, !prof !27

172:                                              ; preds = %166, %162
  store volatile ptr %143, ptr %63, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %157) #13, !srcloc !16
  %173 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %157, ptr %157, i32 1, ptr elementtype(i32) %157) #13, !srcloc !28
  %174 = ptrtoint ptr %63 to i32
  %175 = and i32 %174, 1
  %176 = icmp eq i32 %175, 0
  %177 = select i1 %176, ptr %63, ptr null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !29
  store volatile ptr %177, ptr %107, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  tail call fastcc void @local_bh_enable() #13
  %178 = load volatile i32, ptr %157, align 4
  %179 = load i32, ptr %64, align 64
  %180 = lshr i32 %179, 2
  %181 = mul nuw i32 %180, 3
  %182 = icmp ugt i32 %178, %181
  br i1 %182, label %183, label %193

183:                                              ; preds = %172
  %184 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 6, i32 3, i32 4
  %185 = load i32, ptr %184, align 4
  %186 = icmp eq i32 %185, 0
  %187 = icmp ult i32 %179, %185
  %188 = select i1 %186, i1 true, i1 %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 6, i32 5
  %191 = load ptr, ptr @system_wq, align 4
  %192 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %191, ptr noundef %190) #13
  br label %193

193:                                              ; preds = %195, %189, %183, %172, %106
  %194 = phi ptr [ inttoptr (i32 -7 to ptr), %195 ], [ inttoptr (i32 -12 to ptr), %106 ], [ null, %189 ], [ null, %183 ], [ null, %172 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  br label %197

195:                                              ; preds = %156
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %107) #13, !srcloc !16
  %196 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %107, ptr nonnull %107, i32 1, ptr nonnull elementtype(i32) %107) #13, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !25
  tail call fastcc void @local_bh_enable() #13
  br label %193

197:                                              ; preds = %193, %132
  %198 = phi ptr [ %134, %132 ], [ %194, %193 ]
  %199 = icmp ugt ptr %198, inttoptr (i32 -4096 to ptr)
  %200 = ptrtoint ptr %198 to i32
  %201 = icmp eq ptr %198, null
  %202 = select i1 %201, i32 0, i32 -17
  %203 = select i1 %199, i32 %200, i32 %202
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %197
  %206 = tail call ptr @idr_remove(ptr noundef %29, i32 noundef %30) #13
  br label %213

207:                                              ; preds = %197
  %208 = icmp slt i32 %30, 0
  br i1 %208, label %213, label %217

209:                                              ; preds = %9
  %210 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %211 = inttoptr i32 %210 to ptr
  %212 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %211) #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %213

213:                                              ; preds = %209, %207, %205
  %214 = phi i32 [ %30, %207 ], [ %203, %205 ], [ %30, %209 ]
  store i8 1, ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !31
  %215 = load i16, ptr %1, align 4
  %216 = add i16 %215, 1
  store i16 %216, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  br label %224

217:                                              ; preds = %207, %45
  %218 = load i32, ptr %0, align 4
  %219 = add i32 %218, 1
  store i32 %219, ptr %0, align 4
  %220 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 4
  %221 = load i32, ptr %220, align 4
  %222 = icmp sgt i32 %30, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  store i32 %30, ptr %220, align 4
  br label %224

224:                                              ; preds = %223, %217, %213, %3
  %225 = phi i32 [ %214, %213 ], [ -28, %3 ], [ %30, %223 ], [ %30, %217 ]
  ret i32 %225
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipc_rmid(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = load i32, ptr @ipc_mni_shift, align 4
  %6 = shl nsw i32 -1, %5
  %7 = xor i32 %6, -1
  %8 = and i32 %4, %7
  %9 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 3
  %10 = tail call ptr @idr_remove(ptr noundef %9, i32 noundef %8) #13
  %11 = icmp ne ptr %10, %1
  %12 = load i1, ptr @ipc_rmid.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !27

15:                                               ; preds = %2
  store i1 true, ptr @ipc_rmid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 501, i32 noundef 9, ptr noundef null) #13
  br label %16

16:                                               ; preds = %15, %2
  tail call fastcc void @ipc_kht_remove(ptr noundef %0, ptr noundef %1)
  %17 = load i32, ptr %0, align 4
  %18 = add i32 %17, -1
  store i32 %18, ptr %0, align 4
  %19 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 1
  store i8 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %8, %21
  br i1 %22, label %23, label %30, !prof !27

23:                                               ; preds = %16
  %24 = add i32 %8, -1
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = tail call fastcc i32 @ipc_search_maxidx(ptr noundef %0, i32 noundef %24)
  br label %28

28:                                               ; preds = %26, %23
  %29 = phi i32 [ %27, %26 ], [ %24, %23 ]
  store i32 %29, ptr %20, align 4
  br label %30

30:                                               ; preds = %28, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ipc_kht_remove(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %143, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %9 = load volatile ptr, ptr %7, align 4
  %10 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 6, i32 3, i32 3
  %11 = getelementptr %struct.kern_ipc_perm, ptr %1, i32 0, i32 13
  br label %12

12:                                               ; preds = %133, %6
  %13 = phi ptr [ %9, %6 ], [ %135, %133 ]
  %14 = load i16, ptr %10, align 2
  %15 = zext i16 %14 to i32
  %16 = sub nsw i32 0, %15
  %17 = getelementptr i8, ptr %11, i32 %16
  %18 = getelementptr inbounds %struct.bucket_table, ptr %13, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = add i32 %19, -559038733
  %21 = load i32, ptr %17, align 4
  %22 = add i32 %21, %20
  %23 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 14) #13
  %24 = sub i32 0, %23
  %25 = xor i32 %22, %24
  %26 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 11) #13
  %27 = sub i32 %25, %26
  %28 = xor i32 %27, %20
  %29 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 25) #13
  %30 = sub i32 %28, %29
  %31 = xor i32 %30, %24
  %32 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 16) #13
  %33 = sub i32 %31, %32
  %34 = xor i32 %33, %27
  %35 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 4) #13
  %36 = sub i32 %34, %35
  %37 = xor i32 %36, %30
  %38 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 14) #13
  %39 = sub i32 %37, %38
  %40 = xor i32 %39, %33
  %41 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 24) #13
  %42 = sub i32 %40, %41
  %43 = load i32, ptr %13, align 64
  %44 = add i32 %43, -1
  %45 = and i32 %42, %44
  %46 = getelementptr inbounds %struct.bucket_table, ptr %13, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49, !prof !12

49:                                               ; preds = %12
  %50 = tail call ptr @__rht_bucket_nested(ptr noundef %13, i32 noundef %45) #13
  br label %53

51:                                               ; preds = %12
  %52 = getelementptr %struct.bucket_table, ptr %13, i32 0, i32 8, i32 %45
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi ptr [ %50, %49 ], [ %52, %51 ]
  %55 = icmp eq ptr %54, null
  br i1 %55, label %133, label %56

56:                                               ; preds = %53
  %57 = tail call ptr @llvm.thread.pointer() #13
  %58 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %59 = load volatile i32, ptr %58, align 4
  %60 = add i32 %59, 512
  store volatile i32 %60, ptr %58, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %61

61:                                               ; preds = %75, %56
  %62 = load volatile i32, ptr %54, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70, !prof !15

65:                                               ; preds = %61
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %54) #13, !srcloc !16
  %66 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %54, ptr nonnull %54, i32 1, ptr nonnull elementtype(i32) %54) #13, !srcloc !17
  %67 = extractvalue { i32, i32, i32 } %66, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %76, label %70, !prof !12

70:                                               ; preds = %65, %61
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !19
  br label %71

71:                                               ; preds = %71, %70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !21
  %72 = load volatile i32, ptr %54, align 4
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %71

75:                                               ; preds = %71
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !22
  br label %61

76:                                               ; preds = %65
  %77 = load ptr, ptr %54, align 4
  %78 = ptrtoint ptr %77 to i32
  %79 = and i32 %78, -2
  %80 = icmp eq i32 %79, 0
  %81 = ptrtoint ptr %54 to i32
  %82 = or i32 %81, 1
  %83 = select i1 %80, i32 %82, i32 %79
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %110

86:                                               ; preds = %76
  %87 = inttoptr i32 %83 to ptr
  %88 = icmp eq ptr %8, %87
  br i1 %88, label %89, label %104

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 4
  br label %98

91:                                               ; preds = %104
  %92 = icmp eq ptr %106, %8
  br i1 %92, label %93, label %104

93:                                               ; preds = %91
  %94 = load ptr, ptr %8, align 4
  %95 = icmp eq ptr %105, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !35
  store volatile ptr %94, ptr %105, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %54) #13, !srcloc !16
  %97 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %54, ptr nonnull %54, i32 1, ptr nonnull elementtype(i32) %54) #13, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !25
  br label %112

98:                                               ; preds = %93, %89
  %99 = phi ptr [ %90, %89 ], [ %94, %93 ]
  %100 = ptrtoint ptr %99 to i32
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %102, ptr %99, ptr null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !29
  store volatile ptr %103, ptr %54, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  br label %112

104:                                              ; preds = %91, %86
  %105 = phi ptr [ %106, %91 ], [ %87, %86 ]
  %106 = load ptr, ptr %105, align 4
  %107 = ptrtoint ptr %106 to i32
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %91, label %110

110:                                              ; preds = %104, %76
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %54) #13, !srcloc !16
  %111 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %54, ptr nonnull %54, i32 1, ptr nonnull elementtype(i32) %54) #13, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !25
  tail call fastcc void @local_bh_enable() #13
  br label %133

112:                                              ; preds = %98, %96
  tail call fastcc void @local_bh_enable() #13
  %113 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 6, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %113) #13, !srcloc !16
  %114 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %113, ptr %113, i32 1, ptr elementtype(i32) %113) #13, !srcloc !36
  %115 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 6, i32 3, i32 6
  %116 = load i8, ptr %115, align 2, !range !37
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %137, label %118

118:                                              ; preds = %112
  %119 = load volatile i32, ptr %113, align 4
  %120 = load i32, ptr %13, align 64
  %121 = mul i32 %120, 3
  %122 = udiv i32 %121, 10
  %123 = icmp ult i32 %119, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 6, i32 3, i32 5
  %126 = load i16, ptr %125, align 4
  %127 = zext i16 %126 to i32
  %128 = icmp ugt i32 %120, %127
  br i1 %128, label %129, label %137, !prof !27

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 6, i32 5
  %131 = load ptr, ptr @system_wq, align 4
  %132 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %131, ptr noundef %130) #13
  br label %137

133:                                              ; preds = %110, %53
  %134 = getelementptr inbounds %struct.bucket_table, ptr %13, i32 0, i32 5
  %135 = load volatile ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %12

137:                                              ; preds = %133, %129, %124, %118, %112
  %138 = phi i1 [ false, %112 ], [ false, %118 ], [ false, %124 ], [ false, %129 ], [ true, %133 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  %139 = load i1, ptr @ipc_kht_remove.__already_done, align 1
  %140 = xor i1 %139, true
  %141 = select i1 %138, i1 %140, i1 false
  br i1 %141, label %142, label %143, !prof !27

142:                                              ; preds = %137
  store i1 true, ptr @ipc_kht_remove.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 451, i32 noundef 9, ptr noundef null) #13
  br label %143

143:                                              ; preds = %142, %137, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ipc_search_maxidx(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %4 = add i32 %1, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @llvm.ctlz.i32(i32 %4, i1 true) #13, !range !38
  %8 = xor i32 %7, 31
  %9 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 3
  br label %10

10:                                               ; preds = %10, %6
  %11 = phi i32 [ 0, %6 ], [ %18, %10 ]
  %12 = phi i32 [ %8, %6 ], [ %19, %10 ]
  %13 = shl nuw i32 1, %12
  %14 = or i32 %11, %13
  %15 = add i32 %14, -1
  store i32 %15, ptr %3, align 4
  %16 = call ptr @idr_get_next(ptr noundef %9, ptr noundef nonnull %3) #13
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, i32 %11, i32 %14
  %19 = add nsw i32 %12, -1
  %20 = icmp eq i32 %12, 0
  br i1 %20, label %21, label %10

21:                                               ; preds = %10
  %22 = add i32 %18, -1
  br label %23

23:                                               ; preds = %21, %2
  %24 = phi i32 [ -1, %2 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipc_set_key_private(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  tail call fastcc void @ipc_kht_remove(ptr noundef %0, ptr noundef %1)
  %3 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 3
  store i32 0, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ipc_rcu_getref(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.kern_ipc_perm, ptr %0, i32 0, i32 13
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %15, %1
  %6 = phi i32 [ %13, %15 ], [ %3, %1 ]
  %7 = add i32 %6, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #13, !srcloc !16
  br label %8

8:                                                ; preds = %8, %5
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 %6, i32 %7, ptr elementtype(i32) %2) #13, !srcloc !39
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8
  %13 = extractvalue { i32, i32 } %9, 1
  %14 = icmp eq i32 %13, %6
  br i1 %14, label %17, label %15, !prof !12

15:                                               ; preds = %12
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %17, label %5

17:                                               ; preds = %15, %12, %1
  %18 = phi i32 [ 0, %1 ], [ 0, %15 ], [ %6, %12 ]
  %19 = add i32 %18, 1
  %20 = or i32 %19, %18
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %23, label %22, !prof !12

22:                                               ; preds = %17
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 0) #13
  br label %23

23:                                               ; preds = %22, %17
  %24 = icmp ne i32 %18, 0
  ret i1 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipc_rcu_putref(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.kern_ipc_perm, ptr %0, i32 0, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !40
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #13, !srcloc !16
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #13, !srcloc !41
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %12, label %9, !prof !12

9:                                                ; preds = %7
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef 3) #13
  br label %12

10:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !42
  %11 = getelementptr inbounds %struct.kern_ipc_perm, ptr %0, i32 0, i32 12
  tail call void @call_rcu(ptr noundef %11, ptr noundef %1) #13
  br label %12

12:                                               ; preds = %10, %9, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipcperms(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) local_unnamed_addr #1 {
  %4 = tail call ptr @llvm.thread.pointer() #13
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 83
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = zext i16 %2 to i32
  %10 = lshr i32 %9, 6
  %11 = lshr i32 %9, 3
  %12 = or i32 %11, %9
  %13 = or i32 %12, %10
  %14 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 8
  %15 = load i16, ptr %14, align 32
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 6
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %8, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 4
  %22 = load i32, ptr %21, align 16
  %23 = icmp eq i32 %8, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %3
  %25 = lshr i32 %16, 6
  br label %40

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = insertvalue [1 x i32] undef, i32 %28, 0
  %30 = tail call i32 @in_group_p([1 x i32] %29) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = insertvalue [1 x i32] undef, i32 %34, 0
  %36 = tail call i32 @in_group_p([1 x i32] %35) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32, %26
  %39 = lshr i32 %16, 3
  br label %40

40:                                               ; preds = %38, %32, %24
  %41 = phi i32 [ %25, %24 ], [ %39, %38 ], [ %16, %32 ]
  %42 = xor i32 %41, -1
  %43 = and i32 %13, 7
  %44 = and i32 %43, %42
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 21
  %48 = load ptr, ptr %47, align 4
  %49 = tail call zeroext i1 @ns_capable(ptr noundef %48, i32 noundef 15) #13
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %40
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i32 [ 0, %50 ], [ -1, %46 ]
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @kernel_to_ipc64_perm(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.kern_ipc_perm, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  store i32 %4, ptr %1, align 4
  %5 = getelementptr inbounds %struct.kern_ipc_perm, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 16
  %7 = icmp eq i32 %6, -1
  %8 = load i32, ptr @overflowuid, align 4
  %9 = select i1 %7, i32 %8, i32 %6
  %10 = getelementptr inbounds %struct.ipc64_perm, ptr %1, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.kern_ipc_perm, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, -1
  %14 = load i32, ptr @overflowgid, align 4
  %15 = select i1 %13, i32 %14, i32 %12
  %16 = getelementptr inbounds %struct.ipc64_perm, ptr %1, i32 0, i32 2
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.kern_ipc_perm, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, -1
  %20 = select i1 %19, i32 %8, i32 %18
  %21 = getelementptr inbounds %struct.ipc64_perm, ptr %1, i32 0, i32 3
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.kern_ipc_perm, ptr %0, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, -1
  %25 = select i1 %24, i32 %14, i32 %23
  %26 = getelementptr inbounds %struct.ipc64_perm, ptr %1, i32 0, i32 4
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.kern_ipc_perm, ptr %0, i32 0, i32 8
  %28 = load i16, ptr %27, align 32
  %29 = getelementptr inbounds %struct.ipc64_perm, ptr %1, i32 0, i32 5
  store i16 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.kern_ipc_perm, ptr %0, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = trunc i32 %31 to i16
  %33 = getelementptr inbounds %struct.ipc64_perm, ptr %1, i32 0, i32 7
  store i16 %32, ptr %33, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ipc64_perm_to_ipc_perm(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  %3 = load i32, ptr %0, align 4
  store i32 %3, ptr %1, align 4
  %4 = getelementptr inbounds %struct.ipc64_perm, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 65536
  %7 = load i32, ptr @overflowuid, align 4
  %8 = select i1 %6, i32 %5, i32 %7
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.ipc_perm, ptr %1, i32 0, i32 1
  store i16 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ipc64_perm, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %12, 65536
  %14 = load i32, ptr @overflowgid, align 4
  %15 = select i1 %13, i32 %12, i32 %14
  %16 = trunc i32 %15 to i16
  %17 = getelementptr inbounds %struct.ipc_perm, ptr %1, i32 0, i32 2
  store i16 %16, ptr %17, align 2
  %18 = getelementptr inbounds %struct.ipc64_perm, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, 65536
  %21 = select i1 %20, i32 %19, i32 %7
  %22 = trunc i32 %21 to i16
  %23 = getelementptr inbounds %struct.ipc_perm, ptr %1, i32 0, i32 3
  store i16 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ipc64_perm, ptr %0, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %25, 65536
  %27 = select i1 %26, i32 %25, i32 %14
  %28 = trunc i32 %27 to i16
  %29 = getelementptr inbounds %struct.ipc_perm, ptr %1, i32 0, i32 4
  store i16 %28, ptr %29, align 2
  %30 = getelementptr inbounds %struct.ipc64_perm, ptr %0, i32 0, i32 5
  %31 = load i16, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ipc_perm, ptr %1, i32 0, i32 5
  store i16 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ipc64_perm, ptr %0, i32 0, i32 7
  %34 = load i16, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ipc_perm, ptr %1, i32 0, i32 6
  store i16 %34, ptr %35, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ipc_obtain_object_idr(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr @ipc_mni_shift, align 4
  %4 = shl nsw i32 -1, %3
  %5 = xor i32 %4, -1
  %6 = and i32 %5, %1
  %7 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 3
  %8 = tail call ptr @idr_find(ptr noundef %7, i32 noundef %6) #13
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr inttoptr (i32 -22 to ptr), ptr %8
  ret ptr %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ipc_obtain_object_check(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr @ipc_mni_shift, align 4
  %4 = shl nsw i32 -1, %3
  %5 = xor i32 %4, -1
  %6 = and i32 %5, %1
  %7 = getelementptr inbounds %struct.ipc_ids, ptr %0, i32 0, i32 3
  %8 = tail call ptr @idr_find(ptr noundef %7, i32 noundef %6) #13
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr inttoptr (i32 -22 to ptr), ptr %8
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load i32, ptr @ipc_mni_shift, align 4
  %14 = ashr i32 %1, %13
  %15 = getelementptr inbounds %struct.kern_ipc_perm, ptr %10, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %14, %16
  %18 = select i1 %17, ptr %10, ptr inttoptr (i32 -22 to ptr)
  br label %19

19:                                               ; preds = %12, %2
  %20 = phi ptr [ %10, %2 ], [ %18, %12 ]
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipcget(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = alloca i32, align 4
  %6 = load i32, ptr %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ipc_ids, ptr %1, i32 0, i32 2
  tail call void @down_write(ptr noundef %9) #13
  %10 = load ptr, ptr %2, align 4
  %11 = tail call i32 %10(ptr noundef %0, ptr noundef %3) #13
  br label %137

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ipc_params, ptr %3, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ipc_ids, ptr %1, i32 0, i32 2
  tail call void @down_write(ptr noundef %15) #13
  %16 = load i32, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 %16, ptr %5, align 4
  %17 = getelementptr inbounds %struct.ipc_ids, ptr %1, i32 0, i32 6
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %18 = load volatile ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ipc_ids, ptr %1, i32 0, i32 6, i32 3, i32 3
  %20 = getelementptr inbounds %struct.ipc_ids, ptr %1, i32 0, i32 6, i32 3, i32 2
  %21 = getelementptr inbounds %struct.ipc_ids, ptr %1, i32 0, i32 6, i32 3, i32 1
  br label %22

22:                                               ; preds = %94, %12
  %23 = phi ptr [ %18, %12 ], [ %96, %94 ]
  %24 = getelementptr inbounds %struct.bucket_table, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = add i32 %25, -559038733
  %27 = add i32 %26, %16
  %28 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 14) #13
  %29 = sub i32 0, %28
  %30 = xor i32 %27, %29
  %31 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 11) #13
  %32 = sub i32 %30, %31
  %33 = xor i32 %32, %26
  %34 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 25) #13
  %35 = sub i32 %33, %34
  %36 = xor i32 %35, %29
  %37 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 16) #13
  %38 = sub i32 %36, %37
  %39 = xor i32 %38, %32
  %40 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 4) #13
  %41 = sub i32 %39, %40
  %42 = xor i32 %41, %35
  %43 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 14) #13
  %44 = sub i32 %42, %43
  %45 = xor i32 %44, %38
  %46 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 24) #13
  %47 = sub i32 %45, %46
  %48 = load i32, ptr %23, align 64
  %49 = add i32 %48, -1
  %50 = and i32 %47, %49
  %51 = getelementptr inbounds %struct.bucket_table, ptr %23, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54, !prof !12

54:                                               ; preds = %22
  %55 = tail call ptr @rht_bucket_nested(ptr noundef %23, i32 noundef %50) #13
  br label %58

56:                                               ; preds = %22
  %57 = getelementptr %struct.bucket_table, ptr %23, i32 0, i32 8, i32 %50
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi ptr [ %55, %54 ], [ %57, %56 ]
  %60 = ptrtoint ptr %59 to i32
  %61 = or i32 %60, 1
  %62 = inttoptr i32 %61 to ptr
  br label %63

63:                                               ; preds = %91, %58
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !43
  %64 = load volatile ptr, ptr %59, align 4
  %65 = ptrtoint ptr %64 to i32
  %66 = and i32 %65, -2
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i32 %61, i32 %66
  %69 = inttoptr i32 %68 to ptr
  %70 = and i32 %68, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %63
  %73 = load i16, ptr %19, align 2
  %74 = zext i16 %73 to i32
  %75 = sub nsw i32 0, %74
  %76 = load i16, ptr %20, align 4
  %77 = zext i16 %76 to i32
  %78 = load i16, ptr %21, align 2
  %79 = zext i16 %78 to i32
  br label %80

80:                                               ; preds = %86, %72
  %81 = phi ptr [ %87, %86 ], [ %69, %72 ]
  %82 = getelementptr i8, ptr %81, i32 %75
  %83 = getelementptr i8, ptr %82, i32 %77
  %84 = call i32 @bcmp(ptr %83, ptr nonnull %5, i32 %79) #13
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %98, label %86

86:                                               ; preds = %80
  %87 = load volatile ptr, ptr %81, align 4
  %88 = ptrtoint ptr %87 to i32
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %80, label %91

91:                                               ; preds = %86, %63
  %92 = phi ptr [ %69, %63 ], [ %87, %86 ]
  %93 = icmp eq ptr %92, %62
  br i1 %93, label %94, label %63

94:                                               ; preds = %91
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !44
  %95 = getelementptr inbounds %struct.bucket_table, ptr %23, i32 0, i32 5
  %96 = load volatile ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %22, !prof !12

98:                                               ; preds = %80
  %99 = icmp eq ptr %81, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %98, %94
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  br label %103

101:                                              ; preds = %98
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  %102 = icmp eq ptr %82, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %101, %100
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  %104 = and i32 %14, 512
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %137, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr %2, align 4
  %108 = tail call i32 %107(ptr noundef %0, ptr noundef %3) #13
  br label %137

109:                                              ; preds = %101
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  tail call void @_raw_spin_lock(ptr noundef nonnull %82) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  %110 = and i32 %14, 1536
  %111 = icmp eq i32 %110, 1536
  br i1 %111, label %133, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.ipc_ops, ptr %2, i32 0, i32 2
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = tail call i32 %114(ptr noundef nonnull %82, ptr noundef %3) #13
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %116, %112
  %120 = load i32, ptr %13, align 4
  %121 = trunc i32 %120 to i16
  %122 = tail call i32 @ipcperms(ptr noundef %0, ptr noundef nonnull %82, i16 noundef signext %121) #13
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.ipc_ops, ptr %2, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = load i32, ptr %13, align 4
  %128 = tail call i32 %126(ptr noundef nonnull %82, i32 noundef %127) #13
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.kern_ipc_perm, ptr %82, i32 0, i32 2
  %132 = load i32, ptr %131, align 8
  br label %133

133:                                              ; preds = %130, %124, %119, %116, %109
  %134 = phi i32 [ %117, %116 ], [ -17, %109 ], [ %128, %124 ], [ %132, %130 ], [ -13, %119 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !31
  %135 = load i16, ptr %82, align 4
  %136 = add i16 %135, 1
  store i16 %136, ptr %82, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  br label %137

137:                                              ; preds = %133, %106, %103, %8
  %138 = phi ptr [ %9, %8 ], [ %15, %103 ], [ %15, %106 ], [ %15, %133 ]
  %139 = phi i32 [ %11, %8 ], [ -2, %103 ], [ %108, %106 ], [ %134, %133 ]
  tail call void @up_write(ptr noundef %138) #13
  ret i32 %139
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ipc_update_perm(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.ipc64_perm, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ipc64_perm, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp ne i32 %4, -1
  %8 = icmp ne i32 %6, -1
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 4
  store i32 %4, ptr %11, align 16
  %12 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 5
  store i32 %6, ptr %12, align 4
  %13 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 8
  %14 = load i16, ptr %13, align 32
  %15 = and i16 %14, -512
  %16 = getelementptr inbounds %struct.ipc64_perm, ptr %0, i32 0, i32 5
  %17 = load i16, ptr %16, align 4
  %18 = and i16 %17, 511
  %19 = or i16 %18, %15
  store i16 %19, ptr %13, align 32
  br label %20

20:                                               ; preds = %10, %2
  %21 = phi i32 [ 0, %10 ], [ -22, %2 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ipcctl_obtain_check(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = load i32, ptr @ipc_mni_shift, align 4
  %8 = shl nsw i32 -1, %7
  %9 = xor i32 %8, -1
  %10 = and i32 %9, %2
  %11 = getelementptr inbounds %struct.ipc_ids, ptr %1, i32 0, i32 3
  %12 = tail call ptr @idr_find(ptr noundef %11, i32 noundef %10) #13
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr inttoptr (i32 -22 to ptr), ptr %12
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %39, label %16

16:                                               ; preds = %6
  %17 = load i32, ptr @ipc_mni_shift, align 4
  %18 = ashr i32 %2, %17
  %19 = getelementptr inbounds %struct.kern_ipc_perm, ptr %14, i32 0, i32 9
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %16
  %23 = tail call ptr @llvm.thread.pointer() #13
  %24 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 83
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.kern_ipc_perm, ptr %14, i32 0, i32 6
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.kern_ipc_perm, ptr %14, i32 0, i32 4
  %33 = load i32, ptr %32, align 16
  %34 = icmp eq i32 %27, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 21
  %37 = load ptr, ptr %36, align 4
  %38 = tail call zeroext i1 @ns_capable(ptr noundef %37, i32 noundef 21) #13
  br i1 %38, label %41, label %39

39:                                               ; preds = %35, %16, %6
  %40 = phi ptr [ inttoptr (i32 -1 to ptr), %35 ], [ inttoptr (i32 -22 to ptr), %16 ], [ %14, %6 ]
  br label %41

41:                                               ; preds = %39, %35, %31, %22
  %42 = phi ptr [ %40, %39 ], [ %14, %35 ], [ %14, %31 ], [ %14, %22 ]
  ret ptr %42
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ipc_parse_version(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = load i32, ptr %0, align 4
  %3 = and i32 %2, 256
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = xor i32 %2, 256
  store i32 %6, ptr %0, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ 256, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @ipc_seq_pid_ns(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ipc_proc_iter, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sem_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msg_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shm_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_replace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #11 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysvipc_proc_open(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = tail call ptr @__seq_open_private(ptr noundef %1, ptr noundef nonnull @sysvipc_proc_seqops, i32 noundef 12) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ipc_proc_iter, ptr %3, i32 0, i32 2
  store ptr %7, ptr %8, align 4
  %9 = tail call ptr @llvm.thread.pointer() #13
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 92
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nsproxy, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %3, align 4
  %14 = tail call ptr @task_active_pid_ns(ptr noundef %9) #13
  %15 = getelementptr inbounds %struct.ipc_proc_iter, ptr %3, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  br label %16

16:                                               ; preds = %5, %2
  %17 = phi i32 [ 0, %5 ], [ -12, %2 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysvipc_proc_release(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call i32 @seq_release_private(ptr noundef %0, ptr noundef %1) #13
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__seq_open_private(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sysvipc_proc_start(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ipc_proc_iter, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.ipc_proc_iface, ptr %6, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [3 x %struct.ipc_ids], ptr %7, i32 0, i32 %9
  %11 = getelementptr [3 x %struct.ipc_ids], ptr %7, i32 0, i32 %9, i32 2
  tail call void @down_read(ptr noundef %11) #13
  %12 = load i64, ptr %1, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %2
  %15 = icmp eq i64 %12, 0
  br i1 %15, label %48, label %16

16:                                               ; preds = %14
  %17 = add nsw i64 %12, -1
  %18 = load i32, ptr %10, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr @ipc_mni, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = add i32 %18, -1
  br label %29

25:                                               ; preds = %20
  %26 = getelementptr [3 x %struct.ipc_ids], ptr %7, i32 0, i32 %9, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %44, label %29

29:                                               ; preds = %25, %23
  %30 = phi i32 [ %24, %23 ], [ %27, %25 ]
  %31 = sext i32 %30 to i64
  %32 = icmp sgt i64 %17, %31
  br i1 %32, label %44, label %33

33:                                               ; preds = %29
  %34 = getelementptr [3 x %struct.ipc_ids], ptr %7, i32 0, i32 %9, i32 3
  br label %35

35:                                               ; preds = %41, %33
  %36 = phi i64 [ %17, %33 ], [ %42, %41 ]
  %37 = trunc i64 %36 to i32
  %38 = tail call ptr @idr_find(ptr noundef %34, i32 noundef %37) #13
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  tail call void @_raw_spin_lock(ptr noundef nonnull %38) #13
  br label %44

41:                                               ; preds = %35
  %42 = add nsw i64 %36, 1
  %43 = icmp slt i64 %36, %31
  br i1 %43, label %35, label %44

44:                                               ; preds = %41, %40, %29, %25, %16
  %45 = phi i64 [ %17, %25 ], [ %17, %29 ], [ %36, %40 ], [ %17, %16 ], [ %42, %41 ]
  %46 = phi ptr [ null, %25 ], [ null, %29 ], [ %38, %40 ], [ null, %16 ], [ null, %41 ]
  %47 = add i64 %45, 1
  store i64 %47, ptr %1, align 8
  br label %48

48:                                               ; preds = %44, %14, %2
  %49 = phi ptr [ %46, %44 ], [ null, %2 ], [ inttoptr (i32 1 to ptr), %14 ]
  ret ptr %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysvipc_proc_stop(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ipc_proc_iter, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ult ptr %1, inttoptr (i32 2 to ptr)
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !31
  %9 = load i16, ptr %1, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  br label %11

11:                                               ; preds = %8, %2
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.ipc_proc_iface, ptr %6, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr [3 x %struct.ipc_ids], ptr %12, i32 0, i32 %14, i32 2
  tail call void @up_read(ptr noundef %15) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sysvipc_proc_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #1 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ipc_proc_iter, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ult ptr %1, inttoptr (i32 2 to ptr)
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !31
  %10 = load i16, ptr %1, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  br label %12

12:                                               ; preds = %9, %3
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.ipc_proc_iface, ptr %7, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr [3 x %struct.ipc_ids], ptr %13, i32 0, i32 %15
  %17 = load i64, ptr %2, align 8
  %18 = load i32, ptr %16, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %12
  %21 = load i32, ptr @ipc_mni, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = add i32 %18, -1
  br label %29

25:                                               ; preds = %20
  %26 = getelementptr [3 x %struct.ipc_ids], ptr %13, i32 0, i32 %15, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %44, label %29

29:                                               ; preds = %25, %23
  %30 = phi i32 [ %24, %23 ], [ %27, %25 ]
  %31 = sext i32 %30 to i64
  %32 = icmp sgt i64 %17, %31
  br i1 %32, label %44, label %33

33:                                               ; preds = %29
  %34 = getelementptr [3 x %struct.ipc_ids], ptr %13, i32 0, i32 %15, i32 3
  br label %35

35:                                               ; preds = %41, %33
  %36 = phi i64 [ %17, %33 ], [ %42, %41 ]
  %37 = trunc i64 %36 to i32
  %38 = tail call ptr @idr_find(ptr noundef %34, i32 noundef %37) #13
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  tail call void @_raw_spin_lock(ptr noundef nonnull %38) #13
  br label %44

41:                                               ; preds = %35
  %42 = add nsw i64 %36, 1
  %43 = icmp slt i64 %36, %31
  br i1 %43, label %35, label %44

44:                                               ; preds = %41, %40, %29, %25, %12
  %45 = phi i64 [ %17, %25 ], [ %17, %29 ], [ %36, %40 ], [ %17, %12 ], [ %42, %41 ]
  %46 = phi ptr [ null, %25 ], [ null, %29 ], [ %38, %40 ], [ null, %12 ], [ null, %41 ]
  %47 = add i64 %45, 1
  store i64 %47, ptr %2, align 8
  ret ptr %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysvipc_proc_show(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ipc_proc_iter, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ipc_proc_iface, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @seq_puts(ptr noundef %0, ptr noundef %10) #13
  br label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ipc_proc_iface, ptr %6, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %0, ptr noundef %1) #13
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ 0, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{i64 2149428456}
!10 = !{i64 786996}
!11 = !{i64 2152270289}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148823910}
!14 = !{i64 2150141636}
!15 = !{!"branch_weights", i32 2146410443, i32 1073205}
!16 = !{i64 862618, i64 2148352589, i64 2148352615, i64 2148352662, i64 2148352684, i64 2148352712, i64 2148352732}
!17 = !{i64 2148372466, i64 2148372498, i64 2148372527, i64 2148372561, i64 2148372592, i64 2148372615}
!18 = !{i64 2148473806}
!19 = !{i64 2150141747}
!20 = !{i64 2150141976}
!21 = !{i64 2150141818}
!22 = !{i64 2150142058}
!23 = !{i64 2148472771}
!24 = !{i64 2148370925, i64 2148370957, i64 2148370986, i64 2148371020, i64 2148371051, i64 2148371074}
!25 = !{i64 2150142619}
!26 = !{i64 2149428673}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 2148364004, i64 2148364030, i64 2148364059, i64 2148364093, i64 2148364124, i64 2148364147}
!29 = !{i64 2152875788}
!30 = !{i64 2152878012}
!31 = !{i64 2149029684}
!32 = !{i64 2149025508}
!33 = !{i64 2149025583, i64 2149025610, i64 2149025657, i64 2149025679, i64 2149025707, i64 2149025727}
!34 = !{i64 2149052687}
!35 = !{i64 2152944267}
!36 = !{i64 2148366361, i64 2148366387, i64 2148366416, i64 2148366450, i64 2148366481, i64 2148366504}
!37 = !{i8 0, i8 2}
!38 = !{i32 0, i32 33}
!39 = !{i64 848681, i64 848705, i64 848726, i64 848743, i64 848760}
!40 = !{i64 2148465684}
!41 = !{i64 2148367819, i64 2148367851, i64 2148367880, i64 2148367914, i64 2148367945, i64 2148367968}
!42 = !{i64 2149379036}
!43 = !{i64 2152882256}
!44 = !{i64 2152885690}
