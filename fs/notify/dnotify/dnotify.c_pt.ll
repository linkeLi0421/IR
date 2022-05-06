; ModuleID = '/llk/IR/fs/notify/dnotify/dnotify.c_pt.bc'
source_filename = "../fs/notify/dnotify/dnotify.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fsnotify_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.60, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.61, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.62, ptr, %struct.address_space, %struct.list_head, %union.anon.65, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.60 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.61 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.62 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.65 = type { ptr }
%struct.fsnotify_group = type { ptr, %struct.refcount_struct, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i8, %struct.mutex, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %union.anon.70 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.anon.70 = type { %struct.inotify_group_private_data }
%struct.inotify_group_private_data = type { %struct.spinlock, %struct.idr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.fsnotify_mark = type { i32, %struct.refcount_struct, ptr, %struct.list_head, %struct.spinlock, %struct.hlist_node, ptr, i32, i32 }
%struct.dnotify_mark = type { %struct.fsnotify_mark, ptr }
%struct.dnotify_struct = type { ptr, i32, i32, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%struct.llist_node = type { ptr }
%union.anon.34 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.55 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.files_struct = type { %struct.atomic_t, i8, %struct.wait_queue_head, ptr, %struct.fdtable, [12 x i8], %struct.spinlock, i32, [1 x i32], [1 x i32], [1 x i32], [32 x ptr], [44 x i8] }
%struct.fdtable = type { i32, ptr, ptr, ptr, ptr, %struct.callback_head }

@dnotify_group = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@dnotify_struct_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@dir_notify_enable = internal global i32 1, section ".data..read_mostly", align 4
@dnotify_mark_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__initcall__kmod_dnotify__226_411_dnotify_init6 = internal global ptr @dnotify_init, section ".initcall6.init", align 4
@.str = private unnamed_addr constant [15 x i8] c"dnotify_struct\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"dnotify_mark\00", align 1
@dnotify_fsnotify_ops = internal constant %struct.fsnotify_ops { ptr null, ptr @dnotify_handle_event, ptr null, ptr null, ptr null, ptr @dnotify_free_mark }, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"unable to allocate fsnotify group for dnotify\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@dnotify_sysctls = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.5, ptr @dir_notify_enable, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"dnotify_sysctls\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"dir-notify-enable\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_dnotify__226_411_dnotify_init6], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dnotify_flush(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, -4096
  %8 = icmp eq i16 %7, 16384
  br i1 %8, label %9, label %73

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 46
  %11 = load ptr, ptr @dnotify_group, align 4
  %12 = tail call ptr @fsnotify_find_mark(ptr noundef %10, ptr noundef %11) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %73, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr @dnotify_group, align 4
  %16 = getelementptr inbounds %struct.fsnotify_group, ptr %15, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %16) #6
  %17 = getelementptr inbounds %struct.fsnotify_mark, ptr %12, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %17) #6
  %18 = getelementptr inbounds %struct.dnotify_mark, ptr %12, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %61, label %21

21:                                               ; preds = %58, %14
  %22 = phi ptr [ %59, %58 ], [ %19, %14 ]
  %23 = phi ptr [ %22, %58 ], [ %18, %14 ]
  %24 = getelementptr inbounds %struct.dnotify_struct, ptr %22, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %58

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.dnotify_struct, ptr %22, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %0
  br i1 %30, label %31, label %58

31:                                               ; preds = %27
  %32 = load ptr, ptr %22, align 4
  store ptr %32, ptr %23, align 4
  %33 = load ptr, ptr @dnotify_struct_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %33, ptr noundef nonnull %22) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %34 = load volatile i32, ptr %17, align 4
  store volatile i32 %34, ptr %3, align 4
  %35 = lshr i32 %34, 16
  %36 = and i32 %34, 65535
  %37 = icmp eq i32 %36, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %37, label %38, label %39, !prof !8

38:                                               ; preds = %31
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/dnotify/dnotify.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 72, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

39:                                               ; preds = %31
  %40 = load ptr, ptr %18, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %42, %39
  %43 = phi ptr [ %49, %42 ], [ %40, %39 ]
  %44 = phi i32 [ %48, %42 ], [ 0, %39 ]
  %45 = getelementptr inbounds %struct.dnotify_struct, ptr %43, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, -536870913
  %48 = or i32 %47, %44
  %49 = load ptr, ptr %43, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %42

51:                                               ; preds = %42, %39
  %52 = phi i32 [ 0, %39 ], [ %48, %42 ]
  %53 = load i32, ptr %12, align 4
  %54 = icmp eq i32 %53, %52
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  store i32 %52, ptr %12, align 4
  %56 = getelementptr inbounds %struct.fsnotify_mark, ptr %12, i32 0, i32 6
  %57 = load ptr, ptr %56, align 4
  tail call void @fsnotify_recalc_mask(ptr noundef %57) #6
  br label %61

58:                                               ; preds = %27, %21
  %59 = load ptr, ptr %22, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %21

61:                                               ; preds = %58, %55, %51, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  %62 = load i16, ptr %17, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  %64 = load ptr, ptr %18, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  tail call void @fsnotify_detach_mark(ptr noundef nonnull %12) #6
  %67 = load ptr, ptr @dnotify_group, align 4
  %68 = getelementptr inbounds %struct.fsnotify_group, ptr %67, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %68) #6
  tail call void @fsnotify_free_mark(ptr noundef nonnull %12) #6
  br label %72

69:                                               ; preds = %61
  %70 = load ptr, ptr @dnotify_group, align 4
  %71 = getelementptr inbounds %struct.fsnotify_group, ptr %70, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %71) #6
  br label %72

72:                                               ; preds = %69, %66
  tail call void @fsnotify_put_mark(ptr noundef nonnull %12) #6
  br label %73

73:                                               ; preds = %72, %9, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsnotify_find_mark(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_detach_mark(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_free_mark(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_put_mark(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fcntl_dirnotify(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @llvm.thread.pointer() #6
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 90
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr @dir_notify_enable, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %164, label %10

10:                                               ; preds = %3
  %11 = and i32 %2, 2147483647
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void @dnotify_flush(ptr noundef %1, ptr noundef %7)
  br label %164

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = load i16, ptr %16, align 8
  %18 = and i16 %17, -4096
  %19 = icmp eq i16 %18, 16384
  br i1 %19, label %20, label %164

20:                                               ; preds = %14
  %21 = icmp sgt i32 %2, -1
  %22 = select i1 %21, i32 134217728, i32 671088640
  %23 = and i32 %2, 8
  %24 = icmp eq i32 %23, 0
  %25 = or i32 %22, 576
  %26 = select i1 %24, i32 %22, i32 %25
  %27 = lshr i32 %2, 3
  %28 = and i32 %27, 4
  %29 = shl i32 %2, 24
  %30 = and i32 %29, 268435456
  %31 = and i32 %2, 3
  %32 = or i32 %28, %31
  %33 = or i32 %32, %30
  %34 = or i32 %33, %26
  %35 = and i32 %2, 4
  %36 = icmp eq i32 %35, 0
  %37 = or i32 %34, 384
  %38 = select i1 %36, i32 %34, i32 %37
  %39 = load ptr, ptr @dnotify_struct_cache, align 4
  %40 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %39, i32 noundef 3264) #6
  %41 = icmp eq ptr %40, null
  br i1 %41, label %164, label %42

42:                                               ; preds = %20
  %43 = load ptr, ptr @dnotify_mark_cache, align 4
  %44 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %43, i32 noundef 3264) #6
  %45 = icmp eq ptr %44, null
  br i1 %45, label %160, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr @dnotify_group, align 4
  tail call void @fsnotify_init_mark(ptr noundef nonnull %44, ptr noundef %47) #6
  store i32 %38, ptr %44, align 8
  %48 = getelementptr inbounds %struct.dnotify_mark, ptr %44, i32 0, i32 1
  store ptr null, ptr %48, align 4
  %49 = load ptr, ptr @dnotify_group, align 4
  %50 = getelementptr inbounds %struct.fsnotify_group, ptr %49, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %50) #6
  %51 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 46
  %52 = load ptr, ptr @dnotify_group, align 4
  %53 = tail call ptr @fsnotify_find_mark(ptr noundef %51, ptr noundef %52) #6
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = tail call i32 @fsnotify_add_mark_locked(ptr noundef nonnull %44, ptr noundef %51, i32 noundef 0, i32 noundef 0, ptr noundef null) #6
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr @dnotify_group, align 4
  %60 = getelementptr inbounds %struct.fsnotify_group, ptr %59, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %60) #6
  br label %152

61:                                               ; preds = %55, %46
  %62 = phi ptr [ %53, %46 ], [ %44, %55 ]
  %63 = phi ptr [ %44, %46 ], [ null, %55 ]
  %64 = getelementptr inbounds %struct.fsnotify_mark, ptr %62, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %64) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %65 = load ptr, ptr %6, align 4
  %66 = getelementptr inbounds %struct.files_struct, ptr %65, i32 0, i32 3
  %67 = load volatile ptr, ptr %66, align 4
  %68 = load i32, ptr %67, align 4
  %69 = icmp ugt i32 %68, %0
  br i1 %69, label %70, label %77

70:                                               ; preds = %61
  %71 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %0, i32 %68) #6, !srcloc !15
  %72 = and i32 %71, %0
  %73 = getelementptr inbounds %struct.fdtable, ptr %67, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr ptr, ptr %74, i32 %72
  %76 = load volatile ptr, ptr %75, align 4
  br label %77

77:                                               ; preds = %70, %61
  %78 = phi ptr [ %76, %70 ], [ null, %61 ]
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %79 = icmp eq ptr %78, %1
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = icmp ne ptr %62, %44
  br label %138

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 62
  %84 = load ptr, ptr %83, align 64
  tail call void @__f_setown(ptr noundef %1, ptr noundef %84, i32 noundef 1, i32 noundef 0) #6
  %85 = getelementptr inbounds %struct.dnotify_mark, ptr %62, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %105, label %88

88:                                               ; preds = %97, %82
  %89 = phi ptr [ %98, %97 ], [ %86, %82 ]
  %90 = getelementptr inbounds %struct.dnotify_struct, ptr %89, i32 0, i32 4
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, %7
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.dnotify_struct, ptr %89, i32 0, i32 3
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, %1
  br i1 %96, label %100, label %97

97:                                               ; preds = %93, %88
  %98 = load ptr, ptr %89, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %105, label %88

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.dnotify_struct, ptr %89, i32 0, i32 2
  store i32 %0, ptr %101, align 4
  %102 = getelementptr inbounds %struct.dnotify_struct, ptr %89, i32 0, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = or i32 %103, %38
  store i32 %104, ptr %102, align 4
  br label %111

105:                                              ; preds = %97, %82
  %106 = getelementptr inbounds %struct.dnotify_struct, ptr %40, i32 0, i32 1
  store i32 %38, ptr %106, align 4
  %107 = getelementptr inbounds %struct.dnotify_struct, ptr %40, i32 0, i32 2
  store i32 %0, ptr %107, align 8
  %108 = getelementptr inbounds %struct.dnotify_struct, ptr %40, i32 0, i32 3
  store ptr %1, ptr %108, align 4
  %109 = getelementptr inbounds %struct.dnotify_struct, ptr %40, i32 0, i32 4
  store ptr %7, ptr %109, align 8
  %110 = load ptr, ptr %85, align 4
  store ptr %110, ptr %40, align 8
  store ptr %40, ptr %85, align 4
  br label %111

111:                                              ; preds = %105, %100
  %112 = phi ptr [ null, %105 ], [ %40, %100 ]
  %113 = getelementptr inbounds %struct.fsnotify_mark, ptr %62, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %114 = load volatile i32, ptr %113, align 4
  store volatile i32 %114, ptr %4, align 4
  %115 = lshr i32 %114, 16
  %116 = and i32 %114, 65535
  %117 = icmp eq i32 %116, %115
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br i1 %117, label %118, label %119, !prof !8

118:                                              ; preds = %111
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/dnotify/dnotify.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 72, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

119:                                              ; preds = %111
  %120 = load ptr, ptr %85, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %131, label %122

122:                                              ; preds = %122, %119
  %123 = phi ptr [ %129, %122 ], [ %120, %119 ]
  %124 = phi i32 [ %128, %122 ], [ 0, %119 ]
  %125 = getelementptr inbounds %struct.dnotify_struct, ptr %123, i32 0, i32 1
  %126 = load i32, ptr %125, align 4
  %127 = and i32 %126, -536870913
  %128 = or i32 %127, %124
  %129 = load ptr, ptr %123, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %122

131:                                              ; preds = %122, %119
  %132 = phi i32 [ 0, %119 ], [ %128, %122 ]
  %133 = load i32, ptr %62, align 4
  %134 = icmp eq i32 %133, %132
  br i1 %134, label %138, label %135

135:                                              ; preds = %131
  store i32 %132, ptr %62, align 4
  %136 = getelementptr inbounds %struct.fsnotify_mark, ptr %62, i32 0, i32 6
  %137 = load ptr, ptr %136, align 4
  tail call void @fsnotify_recalc_mask(ptr noundef %137) #6
  br label %138

138:                                              ; preds = %135, %131, %80
  %139 = phi ptr [ %112, %131 ], [ %112, %135 ], [ %40, %80 ]
  %140 = phi i1 [ true, %131 ], [ true, %135 ], [ %81, %80 ]
  %141 = getelementptr inbounds %struct.fsnotify_mark, ptr %62, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  %142 = load i16, ptr %141, align 4
  %143 = add i16 %142, 1
  store i16 %143, ptr %141, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  br i1 %140, label %147, label %144

144:                                              ; preds = %138
  tail call void @fsnotify_detach_mark(ptr noundef nonnull %62) #6
  %145 = load ptr, ptr @dnotify_group, align 4
  %146 = getelementptr inbounds %struct.fsnotify_group, ptr %145, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %146) #6
  tail call void @fsnotify_free_mark(ptr noundef nonnull %62) #6
  br label %150

147:                                              ; preds = %138
  %148 = load ptr, ptr @dnotify_group, align 4
  %149 = getelementptr inbounds %struct.fsnotify_group, ptr %148, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %149) #6
  br label %150

150:                                              ; preds = %147, %144
  tail call void @fsnotify_put_mark(ptr noundef nonnull %62) #6
  %151 = icmp eq ptr %63, null
  br i1 %151, label %156, label %152

152:                                              ; preds = %150, %58
  %153 = phi i32 [ %56, %58 ], [ 0, %150 ]
  %154 = phi ptr [ %40, %58 ], [ %139, %150 ]
  %155 = phi ptr [ %44, %58 ], [ %63, %150 ]
  tail call void @fsnotify_put_mark(ptr noundef nonnull %155) #6
  br label %156

156:                                              ; preds = %152, %150
  %157 = phi i32 [ %153, %152 ], [ 0, %150 ]
  %158 = phi ptr [ %154, %152 ], [ %139, %150 ]
  %159 = icmp eq ptr %158, null
  br i1 %159, label %164, label %160

160:                                              ; preds = %156, %42
  %161 = phi ptr [ %158, %156 ], [ %40, %42 ]
  %162 = phi i32 [ %157, %156 ], [ -12, %42 ]
  %163 = load ptr, ptr @dnotify_struct_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %163, ptr noundef nonnull %161) #6
  br label %164

164:                                              ; preds = %160, %156, %20, %14, %13, %3
  %165 = phi i32 [ %162, %160 ], [ %157, %156 ], [ 0, %13 ], [ -22, %3 ], [ -20, %14 ], [ -12, %20 ]
  ret i32 %165
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_init_mark(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__f_setown(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dnotify_init() #2 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 20, i32 noundef 4, i32 noundef 262144, ptr noundef null) #6
  store ptr %1, ptr @dnotify_struct_cache, align 4
  %2 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 48, i32 noundef 4, i32 noundef 262144, ptr noundef null) #6
  store ptr %2, ptr @dnotify_mark_cache, align 4
  %3 = tail call ptr @fsnotify_alloc_group(ptr noundef nonnull @dnotify_fsnotify_ops) #6
  store ptr %3, ptr @dnotify_group, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.2) #7
  unreachable

6:                                                ; preds = %0
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str.3, ptr noundef nonnull @dnotify_sysctls, ptr noundef nonnull @.str.4) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_recalc_mask(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify_add_mark_locked(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsnotify_alloc_group(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dnotify_handle_event(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2, ptr noundef readnone %3, ptr nocapture noundef readnone %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = and i32 %1, -134217729
  %9 = icmp eq ptr %3, null
  %10 = and i32 %1, 1073741824
  %11 = icmp eq i32 %10, 0
  %12 = and i1 %11, %9
  br i1 %12, label %69, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %14) #6
  %15 = getelementptr inbounds %struct.dnotify_mark, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %66, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.fsnotify_mark, ptr %0, i32 0, i32 6
  br label %20

20:                                               ; preds = %62, %18
  %21 = phi ptr [ %16, %18 ], [ %64, %62 ]
  %22 = phi ptr [ %15, %18 ], [ %63, %62 ]
  %23 = getelementptr inbounds %struct.dnotify_struct, ptr %21, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %8, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %62, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.dnotify_struct, ptr %21, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.file, ptr %29, i32 0, i32 11
  %31 = getelementptr inbounds %struct.dnotify_struct, ptr %21, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  tail call void @send_sigio(ptr noundef %30, i32 noundef %32, i32 noundef 3) #6
  %33 = load i32, ptr %23, align 4
  %34 = and i32 %33, 536870912
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %27
  %37 = load ptr, ptr %21, align 4
  store ptr %37, ptr %22, align 4
  %38 = load ptr, ptr @dnotify_struct_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %38, ptr noundef nonnull %21) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  %39 = load volatile i32, ptr %14, align 4
  store volatile i32 %39, ptr %7, align 4
  %40 = lshr i32 %39, 16
  %41 = and i32 %39, 65535
  %42 = icmp eq i32 %41, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  br i1 %42, label %43, label %44, !prof !8

43:                                               ; preds = %36
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/dnotify/dnotify.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 72, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

44:                                               ; preds = %36
  %45 = load ptr, ptr %15, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %47, %44
  %48 = phi ptr [ %54, %47 ], [ %45, %44 ]
  %49 = phi i32 [ %53, %47 ], [ 0, %44 ]
  %50 = getelementptr inbounds %struct.dnotify_struct, ptr %48, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, -536870913
  %53 = or i32 %52, %49
  %54 = load ptr, ptr %48, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %47

56:                                               ; preds = %47, %44
  %57 = phi i32 [ 0, %44 ], [ %53, %47 ]
  %58 = load i32, ptr %0, align 4
  %59 = icmp eq i32 %58, %57
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  store i32 %57, ptr %0, align 4
  %61 = load ptr, ptr %19, align 4
  tail call void @fsnotify_recalc_mask(ptr noundef %61) #6
  br label %62

62:                                               ; preds = %60, %56, %27, %20
  %63 = phi ptr [ %21, %20 ], [ %21, %27 ], [ %22, %56 ], [ %22, %60 ]
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %20

66:                                               ; preds = %62, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  %67 = load i16, ptr %14, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  br label %69

69:                                               ; preds = %66, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dnotify_free_mark(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dnotify_mark, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !17

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/dnotify/dnotify.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 136, 0\0A.popsection", ""() #6, !srcloc !18
  unreachable

6:                                                ; preds = %1
  %7 = load ptr, ptr @dnotify_mark_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %7, ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @send_sigio(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold noreturn nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2152422124, i64 2152422615, i64 2152422161, i64 2152422217, i64 2152422251, i64 2152422275, i64 2152422316, i64 2152422337, i64 2152422365, i64 2152422399}
!10 = !{i64 2149005389}
!11 = !{i64 2149001213}
!12 = !{i64 2149001288, i64 2149001315, i64 2149001362, i64 2149001384, i64 2149001412, i64 2149001432}
!13 = !{i64 2149028392}
!14 = !{i64 2149158093}
!15 = !{i64 479165, i64 479182, i64 2147963252}
!16 = !{i64 2149158310}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2152425755, i64 2152426247, i64 2152425792, i64 2152425848, i64 2152425882, i64 2152425906, i64 2152425947, i64 2152425968, i64 2152425996, i64 2152426030}
