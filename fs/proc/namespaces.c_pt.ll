; ModuleID = '/llk/IR/fs/proc/namespaces.c_pt.bc'
source_filename = "../fs/proc/namespaces.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.proc_ns_operations = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dir_context = type { ptr, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.56, %struct.list_head, %struct.list_head, %union.anon.57 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { i64 }
%union.anon.56 = type { %struct.list_head }
%union.anon.57 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.52, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.52 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.15 = type { i32, i32 }

@proc_ns_dir_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_ns_dir_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@proc_ns_dir_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @proc_ns_dir_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr @pid_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@ns_entries = internal constant [2 x ptr] [ptr @mntns_operations, ptr @cgroupns_operations], align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@mntns_operations = external dso_local constant %struct.proc_ns_operations, align 4
@cgroupns_operations = external dso_local constant %struct.proc_ns_operations, align 4
@proc_ns_link_inode_operations = internal constant %struct.inode_operations { ptr null, ptr @proc_ns_get_link, ptr null, ptr null, ptr @proc_ns_readlink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@pid_dentry_operations = external dso_local constant %struct.dentry_operations, align 64

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_ns_dir_readdir(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -40
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @get_pid_task(ptr noundef %6, i32 noundef 0) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %69, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.dir_context, ptr %1, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  switch i64 %11, label %41 [
    i64 0, label %12
    i64 1, label %24
  ]

12:                                               ; preds = %9
  %13 = load ptr, ptr %1, align 8
  %14 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 5
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = zext i32 %19 to i64
  %21 = tail call i32 %13(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 1, i64 noundef 0, i64 noundef %20, i32 noundef 4) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %12
  store i64 1, ptr %10, align 8
  br label %24

24:                                               ; preds = %23, %9
  %25 = load ptr, ptr %1, align 8
  %26 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %28) #6
  %29 = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.dentry, ptr %30, i32 0, i32 5
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 10
  %34 = load i32, ptr %33, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %35 = load i16, ptr %28, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  %37 = zext i32 %34 to i64
  %38 = tail call i32 %25(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef 2, i64 noundef 1, i64 noundef %37, i32 noundef 4) #6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %24
  store i64 2, ptr %10, align 8
  br label %44

41:                                               ; preds = %9
  %42 = icmp sgt i64 %11, 3
  %43 = trunc i64 %11 to i32
  br i1 %42, label %60, label %44

44:                                               ; preds = %41, %40
  %45 = phi i32 [ 2, %40 ], [ %43, %41 ]
  %46 = add i32 %45, -2
  %47 = getelementptr ptr, ptr @ns_entries, i32 %46
  %48 = icmp ugt ptr %47, getelementptr inbounds ([2 x ptr], ptr @ns_entries, i32 0, i32 1)
  br i1 %48, label %60, label %49

49:                                               ; preds = %55, %44
  %50 = phi ptr [ %58, %55 ], [ %47, %44 ]
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 @strlen(ptr noundef %52)
  %54 = tail call zeroext i1 @proc_fill_cache(ptr noundef %0, ptr noundef %1, ptr noundef %52, i32 noundef %53, ptr noundef nonnull @proc_ns_instantiate, ptr noundef nonnull %7, ptr noundef %51) #6
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i64, ptr %10, align 8
  %57 = add i64 %56, 1
  store i64 %57, ptr %10, align 8
  %58 = getelementptr ptr, ptr %50, i32 1
  %59 = icmp ugt ptr %58, getelementptr inbounds ([2 x ptr], ptr @ns_entries, i32 0, i32 1)
  br i1 %59, label %60, label %49

60:                                               ; preds = %55, %49, %44, %41, %24, %12
  %61 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %61) #6, !srcloc !13
  %62 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %61, ptr %61, i32 1, ptr elementtype(i32) %61) #6, !srcloc !14
  %63 = extractvalue { i32, i32, i32 } %62, 0
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = icmp sgt i32 %63, 0
  br i1 %66, label %69, label %67, !prof !15

67:                                               ; preds = %65
  tail call void @refcount_warn_saturate(ptr noundef %61, i32 noundef 3) #6
  br label %69

68:                                               ; preds = %60
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  tail call void @__put_task_struct(ptr noundef nonnull %7) #6
  br label %69

69:                                               ; preds = %68, %67, %65, %2
  %70 = phi i32 [ -2, %2 ], [ 0, %65 ], [ 0, %67 ], [ 0, %68 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proc_ns_dir_lookup(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 -40
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @get_pid_task(ptr noundef %5, i32 noundef 0) #6
  %7 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %8 = getelementptr inbounds %struct.anon.15, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq ptr %6, null
  br i1 %10, label %52, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %13 = load ptr, ptr @mntns_operations, align 4
  %14 = tail call i32 @strlen(ptr noundef %13)
  %15 = icmp eq i32 %14, %9
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load ptr, ptr %12, align 8
  %18 = tail call i32 @bcmp(ptr %17, ptr %13, i32 %9)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %16, %11
  %21 = load ptr, ptr @cgroupns_operations, align 4
  %22 = tail call i32 @strlen(ptr noundef %21)
  %23 = icmp eq i32 %22, %9
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load ptr, ptr %12, align 8
  %26 = tail call i32 @bcmp(ptr %25, ptr %21, i32 %9)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %20
  br label %29

29:                                               ; preds = %28, %24, %16
  %30 = phi i1 [ true, %28 ], [ false, %24 ], [ false, %16 ]
  %31 = phi ptr [ getelementptr inbounds ([2 x ptr], ptr @ns_entries, i32 1, i32 0), %28 ], [ getelementptr inbounds ([2 x ptr], ptr @ns_entries, i32 0, i32 1), %24 ], [ @ns_entries, %16 ]
  br i1 %30, label %42, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %31, align 4
  %34 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %35 = load ptr, ptr %34, align 4
  %36 = tail call ptr @proc_pid_make_inode(ptr noundef %35, ptr noundef nonnull %6, i16 noundef zeroext -24065) #6
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 7
  store ptr @proc_ns_link_inode_operations, ptr %39, align 8
  %40 = getelementptr i8, ptr %36, i32 -8
  store ptr %33, ptr %40, align 8
  tail call void @pid_update_inode(ptr noundef nonnull %6, ptr noundef nonnull %36) #6
  tail call void @d_set_d_op(ptr noundef %1, ptr noundef nonnull @pid_dentry_operations) #6
  %41 = tail call ptr @d_splice_alias(ptr noundef nonnull %36, ptr noundef %1) #6
  br label %42

42:                                               ; preds = %38, %32, %29
  %43 = phi ptr [ inttoptr (i32 -2 to ptr), %29 ], [ %41, %38 ], [ inttoptr (i32 -2 to ptr), %32 ]
  %44 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #6, !srcloc !13
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #6, !srcloc !14
  %46 = extractvalue { i32, i32, i32 } %45, 0
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = icmp sgt i32 %46, 0
  br i1 %49, label %52, label %50, !prof !15

50:                                               ; preds = %48
  tail call void @refcount_warn_saturate(ptr noundef %44, i32 noundef 3) #6
  br label %52

51:                                               ; preds = %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  tail call void @__put_task_struct(ptr noundef nonnull %6) #6
  br label %52

52:                                               ; preds = %51, %50, %48, %3
  %53 = phi ptr [ inttoptr (i32 -2 to ptr), %3 ], [ %43, %48 ], [ %43, %50 ], [ %43, %51 ]
  ret ptr %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_setattr(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @proc_fill_cache(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proc_ns_instantiate(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @proc_pid_make_inode(ptr noundef %5, ptr noundef %1, i16 noundef zeroext -24065) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 7
  store ptr @proc_ns_link_inode_operations, ptr %9, align 8
  %10 = getelementptr i8, ptr %6, i32 -8
  store ptr %2, ptr %10, align 8
  tail call void @pid_update_inode(ptr noundef %1, ptr noundef nonnull %6) #6
  tail call void @d_set_d_op(ptr noundef %0, ptr noundef nonnull @pid_dentry_operations) #6
  %11 = tail call ptr @d_splice_alias(ptr noundef nonnull %6, ptr noundef %0) #6
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi ptr [ %11, %8 ], [ inttoptr (i32 -2 to ptr), %3 ]
  ret ptr %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pid_task(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_pid_make_inode(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pid_update_inode(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_set_d_op(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proc_ns_get_link(ptr noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #1 {
  %4 = alloca %struct.path, align 8
  %5 = getelementptr i8, ptr %1, i32 -8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store i64 0, ptr %4, align 8, !annotation !17
  %7 = icmp eq ptr %0, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %1, i32 -40
  %10 = load ptr, ptr %9, align 8
  %11 = tail call ptr @get_pid_task(ptr noundef %10, i32 noundef 0) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %8
  %14 = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %11, i32 noundef 9) #6
  br i1 %14, label %15, label %20

15:                                               ; preds = %13
  %16 = call i32 @ns_get_path(ptr noundef nonnull %4, ptr noundef nonnull %11, ptr noundef %6) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @nd_jump_link(ptr noundef nonnull %4) #6
  br label %20

20:                                               ; preds = %18, %15, %13
  %21 = phi i32 [ %16, %15 ], [ %19, %18 ], [ -13, %13 ]
  %22 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #6, !srcloc !13
  %23 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #6, !srcloc !14
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = icmp sgt i32 %24, 0
  br i1 %27, label %30, label %28, !prof !15

28:                                               ; preds = %26
  call void @refcount_warn_saturate(ptr noundef %22, i32 noundef 3) #6
  br label %30

29:                                               ; preds = %20
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  call void @__put_task_struct(ptr noundef nonnull %11) #6
  br label %30

30:                                               ; preds = %29, %28, %26
  %31 = inttoptr i32 %21 to ptr
  br label %32

32:                                               ; preds = %30, %8, %3
  %33 = phi ptr [ %31, %30 ], [ inttoptr (i32 -10 to ptr), %3 ], [ inttoptr (i32 -13 to ptr), %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_ns_readlink(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca [50 x i8], align 1
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 -40
  %8 = getelementptr i8, ptr %6, i32 -8
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(50) %4, i8 0, i32 50, i1 false), !annotation !17
  %10 = load ptr, ptr %7, align 8
  %11 = tail call ptr @get_pid_task(ptr noundef %10, i32 noundef 0) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %3
  %14 = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %11, i32 noundef 9) #6
  br i1 %14, label %15, label %20

15:                                               ; preds = %13
  %16 = call i32 @ns_get_name(ptr noundef nonnull %4, i32 noundef 50, ptr noundef nonnull %11, ptr noundef %9) #6
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @readlink_copy(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4) #6
  br label %20

20:                                               ; preds = %18, %15, %13
  %21 = phi i32 [ %19, %18 ], [ %16, %15 ], [ -13, %13 ]
  %22 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #6, !srcloc !13
  %23 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #6, !srcloc !14
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = icmp sgt i32 %24, 0
  br i1 %27, label %30, label %28, !prof !15

28:                                               ; preds = %26
  call void @refcount_warn_saturate(ptr noundef %22, i32 noundef 3) #6
  br label %30

29:                                               ; preds = %20
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  call void @__put_task_struct(ptr noundef nonnull %11) #6
  br label %30

30:                                               ; preds = %29, %28, %26, %3
  %31 = phi i32 [ -13, %3 ], [ %21, %26 ], [ %21, %28 ], [ %21, %29 ]
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %4) #6
  ret i32 %31
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ptrace_may_access(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ns_get_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nd_jump_link(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ns_get_name(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @readlink_copy(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }

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
!8 = !{i64 2149007293}
!9 = !{i64 2149003117}
!10 = !{i64 2149003192, i64 2149003219, i64 2149003266, i64 2149003288, i64 2149003316, i64 2149003336}
!11 = !{i64 2149030296}
!12 = !{i64 2148441755}
!13 = !{i64 838689, i64 2148328660, i64 2148328686, i64 2148328733, i64 2148328755, i64 2148328783, i64 2148328803}
!14 = !{i64 2148343890, i64 2148343922, i64 2148343951, i64 2148343985, i64 2148344016, i64 2148344039}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2149767269}
!17 = !{!"auto-init"}
