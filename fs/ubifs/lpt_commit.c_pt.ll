; ModuleID = '/llk/IR/fs/ubifs/lpt_commit.c_pt.bc'
source_filename = "../fs/ubifs/lpt_commit.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ubifs_global_debug_info = type { i8, [3 x i8] }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.72, i32, i32, i32, [0 x i8] }
%union.ubifs_key = type { [1 x i64] }
%union.anon.72 = type { ptr }
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ubifs_budg_info = type { i64, i64, i64, i64, i64, i32, i8, i32, i32, i32 }
%struct.ubifs_node_range = type { %union.anon.73, i32 }
%union.anon.73 = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.ubifs_lpt_lprops = type { i32, i32, i8 }
%struct.ubifs_debug_info = type { %struct.ubifs_zbranch, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i8, [10 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubifs_lprops = type { i32, i32, i32, i32, %union.anon.75 }
%union.anon.75 = type { %struct.list_head }
%struct.ubifs_nnode = type { ptr, ptr, i32, i32, i32, i32, [4 x %struct.ubifs_nbranch] }
%struct.ubifs_nbranch = type { i32, i32, %union.anon.74 }
%union.anon.74 = type { ptr }
%struct.ubifs_cnode = type { ptr, ptr, i32, i32, i32, i32 }
%struct.ubifs_mst_node = type { %struct.ubifs_ch, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], [64 x i8], [64 x i8], [152 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_pnode = type { ptr, ptr, i32, i32, i32, i32, [4 x %struct.ubifs_lprops] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.67, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.47 }
%struct.llist_node = type { ptr }
%union.anon.47 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.48 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.67 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = private unnamed_addr constant [9 x i8] c"cnt != 0\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"fs/ubifs/lpt_commit.c\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"failed at LEB %d\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"LPT space error: free %lld lpt_sz %lld\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"dirty pnodes %d exceed max %d\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"dirty nnodes %d exceed max %d\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"LPT wrote %lld but space used was %lld\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"LPT wrote %lld but lpt_sz is %lld\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"LPT layout size %lld but wrote %lld\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"LPT new nhead offs: expected %d was %d\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"LPT chk_lpt_sz %lld + waste %lld exceeds %lld\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"\013(pid %d) start dumping all LPT LEBs\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"\013(pid %d) finish dumping all LPT LEBs\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"!c->ltab[i].tgc\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"node_len != 0\00", align 1
@ubifs_dbg = external dso_local local_unnamed_addr global %struct.ubifs_global_debug_info, align 4
@.str.16 = private unnamed_addr constant [36 x i8] c"!test_bit(COW_CNODE, &cnode->flags)\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"cnt == c->dirty_nn_cnt + c->dirty_pn_cnt\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"lnum >= c->lpt_first && lnum <= c->lpt_last\00", align 1
@.str.21 = private unnamed_addr constant [70 x i8] c"LPT out of space at LEB %d:%d needing %d, done_ltab %d, done_lsave %d\00", align 1
@.str.22 = private unnamed_addr constant [79 x i8] c"LPT out of space mismatch at LEB %d:%d needing %d, done_ltab %d, done_lsave %d\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"cannot allocate memory for ltab checking\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"invalid empty space in LEB %d at %d\00", align 1
@.str.25 = private unnamed_addr constant [52 x i8] c"invalid free space in LEB %d (free %d, expected %d)\00", align 1
@.str.26 = private unnamed_addr constant [54 x i8] c"invalid dirty space in LEB %d (dirty %d, expected %d)\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"\013(pid %d) start dumping LEB %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"cannot allocate memory to dump LPT\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"\013LEB %d:%d, pad %d bytes\0A\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"\013LEB %d:%d, free %d bytes\0A\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"\013LEB %d:%d, pnode num %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"\013LEB %d:%d, pnode\0A\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"\013LEB %d:%d, nnode num %d, \00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"\013LEB %d:%d, nnode, \00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"\013failed to unpack_node, error %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"\01c%d:%d\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"\01c, \00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"\013LEB %d:%d, ltab\0A\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"\013LEB %d:%d, lsave len\0A\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"LPT node type %d not recognized\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"\013(pid %d) finish dumping LEB %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_lpt_start_commit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 144
  tail call void @mutex_lock(ptr noundef %2) #9
  %3 = tail call i32 @dbg_chk_lpt_free_spc(ptr noundef %0)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %1258

5:                                                ; preds = %1
  %6 = tail call i32 @dbg_check_ltab(ptr noundef %0)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %1258

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 152
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 56
  %14 = load i32, ptr %13, align 4
  br label %70

15:                                               ; preds = %8
  store i32 0, ptr %9, align 8
  %16 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 56
  %17 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 153
  %18 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %19 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 147
  %20 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  %21 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %22 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 148
  br label %23

23:                                               ; preds = %69, %15
  %24 = load i32, ptr %16, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %23
  %27 = load i32, ptr %18, align 8
  %28 = load i32, ptr %19, align 4
  br label %29

29:                                               ; preds = %57, %26
  %30 = phi i32 [ 0, %26 ], [ %59, %57 ]
  %31 = phi i64 [ 0, %26 ], [ %58, %57 ]
  %32 = add i32 %30, %27
  %33 = icmp eq i32 %32, %28
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, ptr %21, align 8
  %36 = load i32, ptr %22, align 8
  %37 = sub i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = add i64 %31, %38
  br label %57

40:                                               ; preds = %29
  %41 = load ptr, ptr %20, align 8
  %42 = getelementptr %struct.ubifs_lpt_lprops, ptr %41, i32 %30
  %43 = load i32, ptr %42, align 4
  %44 = load i32, ptr %21, align 8
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = sext i32 %43 to i64
  %48 = add i64 %31, %47
  br label %57

49:                                               ; preds = %40
  %50 = getelementptr %struct.ubifs_lpt_lprops, ptr %41, i32 %30, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, %43
  %53 = icmp eq i32 %52, %44
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = sext i32 %44 to i64
  %56 = add i64 %31, %55
  br label %57

57:                                               ; preds = %54, %49, %46, %34
  %58 = phi i64 [ %39, %34 ], [ %48, %46 ], [ %56, %54 ], [ %31, %49 ]
  %59 = add nuw nsw i32 %30, 1
  %60 = icmp eq i32 %59, %24
  br i1 %60, label %61, label %29

61:                                               ; preds = %57, %23
  %62 = phi i64 [ 0, %23 ], [ %58, %57 ]
  %63 = load i64, ptr %17, align 8
  %64 = shl i64 %63, 1
  %65 = icmp sgt i64 %62, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  tail call void @mutex_unlock(ptr noundef %2) #9
  %67 = tail call fastcc i32 @lpt_gc(ptr noundef %0)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %1260

69:                                               ; preds = %66
  tail call void @mutex_lock(ptr noundef %2) #9
  br label %23

70:                                               ; preds = %61, %12
  %71 = phi i32 [ %14, %12 ], [ %24, %61 ]
  %72 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 56
  %73 = icmp sgt i32 %71, 0
  br i1 %73, label %74, label %111

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %76 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 147
  %77 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  %78 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  br label %79

79:                                               ; preds = %107, %74
  %80 = phi i32 [ %71, %74 ], [ %108, %107 ]
  %81 = phi i32 [ 0, %74 ], [ %109, %107 ]
  %82 = load i32, ptr %75, align 8
  %83 = add i32 %82, %81
  %84 = load i32, ptr %76, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %107, label %86

86:                                               ; preds = %79
  %87 = load ptr, ptr %77, align 8
  %88 = getelementptr %struct.ubifs_lpt_lprops, ptr %87, i32 %81, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %86
  %92 = getelementptr %struct.ubifs_lpt_lprops, ptr %87, i32 %81
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, %89
  %95 = load i32, ptr %78, align 8
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %91
  %98 = getelementptr %struct.ubifs_lpt_lprops, ptr %87, i32 %81, i32 2
  %99 = load i8, ptr %98, align 4
  %100 = or i8 %99, 1
  store i8 %100, ptr %98, align 4
  %101 = load i32, ptr %78, align 8
  %102 = load ptr, ptr %77, align 8
  %103 = getelementptr %struct.ubifs_lpt_lprops, ptr %102, i32 %81
  store i32 %101, ptr %103, align 4
  %104 = load ptr, ptr %77, align 8
  %105 = getelementptr %struct.ubifs_lpt_lprops, ptr %104, i32 %81, i32 1
  store i32 0, ptr %105, align 4
  %106 = load i32, ptr %72, align 4
  br label %107

107:                                              ; preds = %97, %91, %86, %79
  %108 = phi i32 [ %80, %86 ], [ %80, %91 ], [ %106, %97 ], [ %80, %79 ]
  %109 = add nuw nsw i32 %81, 1
  %110 = icmp slt i32 %109, %108
  br i1 %110, label %79, label %111

111:                                              ; preds = %107, %70
  %112 = phi i32 [ %71, %70 ], [ %108, %107 ]
  %113 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 151
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %1258, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %118 = load i16, ptr %117, align 4
  %119 = and i16 %118, 1
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %121, label %176

121:                                              ; preds = %116
  %122 = icmp sgt i32 %112, 0
  br i1 %122, label %123, label %163

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %125 = load i32, ptr %124, align 8
  %126 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 147
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  %129 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %130 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 148
  br label %131

131:                                              ; preds = %159, %123
  %132 = phi i32 [ 0, %123 ], [ %161, %159 ]
  %133 = phi i64 [ 0, %123 ], [ %160, %159 ]
  %134 = add i32 %132, %125
  %135 = icmp eq i32 %134, %127
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load i32, ptr %129, align 8
  %138 = load i32, ptr %130, align 8
  %139 = sub i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = add i64 %133, %140
  br label %159

142:                                              ; preds = %131
  %143 = load ptr, ptr %128, align 8
  %144 = getelementptr %struct.ubifs_lpt_lprops, ptr %143, i32 %132
  %145 = load i32, ptr %144, align 4
  %146 = load i32, ptr %129, align 8
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = sext i32 %145 to i64
  %150 = add i64 %133, %149
  br label %159

151:                                              ; preds = %142
  %152 = getelementptr %struct.ubifs_lpt_lprops, ptr %143, i32 %132, i32 1
  %153 = load i32, ptr %152, align 4
  %154 = add i32 %153, %145
  %155 = icmp eq i32 %154, %146
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = sext i32 %146 to i64
  %158 = add i64 %133, %157
  br label %159

159:                                              ; preds = %156, %151, %148, %136
  %160 = phi i64 [ %141, %136 ], [ %150, %148 ], [ %158, %156 ], [ %133, %151 ]
  %161 = add nuw nsw i32 %132, 1
  %162 = icmp eq i32 %161, %112
  br i1 %162, label %163, label %131

163:                                              ; preds = %159, %121
  %164 = phi i64 [ 0, %121 ], [ %160, %159 ]
  %165 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 153
  %166 = load i64, ptr %165, align 8
  %167 = shl i64 %166, 1
  %168 = icmp sgt i64 %164, %167
  br i1 %168, label %465, label %169

169:                                              ; preds = %163
  %170 = tail call fastcc i32 @make_tree_dirty(ptr noundef %0)
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %1258

172:                                              ; preds = %169
  tail call fastcc void @lpt_tgc_start(ptr noundef %0)
  %173 = load i16, ptr %117, align 4
  %174 = and i16 %173, 1
  %175 = icmp eq i16 %174, 0
  br i1 %175, label %465, label %176

176:                                              ; preds = %172, %116
  %177 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 149
  %178 = load i32, ptr %177, align 4
  %179 = and i32 %178, 2
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = or i32 %178, 2
  store i32 %182, ptr %177, align 4
  %183 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 171
  %184 = load i32, ptr %183, align 4
  %185 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 139
  %186 = load i32, ptr %185, align 4
  tail call void @ubifs_add_lpt_dirt(ptr noundef %0, i32 noundef %184, i32 noundef %186) #9
  br label %187

187:                                              ; preds = %181, %176
  %188 = load i8, ptr @ubifs_dbg, align 4
  %189 = and i8 %188, 1
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr inbounds %struct.ubifs_debug_info, ptr %193, i32 0, i32 19
  %195 = load i8, ptr %194, align 4
  %196 = and i8 %195, 1
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %334, label %198

198:                                              ; preds = %191, %187
  %199 = tail call i32 @prandom_u32() #9
  %200 = and i32 %199, 3
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %334

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 170
  %204 = load i32, ptr %203, align 8
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %217

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 63
  %208 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 173
  br label %209

209:                                              ; preds = %209, %206
  %210 = phi i32 [ 0, %206 ], [ %214, %209 ]
  %211 = load i32, ptr %207, align 8
  %212 = load ptr, ptr %208, align 4
  %213 = getelementptr i32, ptr %212, i32 %210
  store i32 %211, ptr %213, align 4
  %214 = add nuw nsw i32 %210, 1
  %215 = load i32, ptr %203, align 8
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %209, label %217

217:                                              ; preds = %209, %202
  %218 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 161
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, %218
  br i1 %220, label %234, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 173
  br label %223

223:                                              ; preds = %223, %221
  %224 = phi ptr [ %219, %221 ], [ %232, %223 ]
  %225 = getelementptr i8, ptr %224, i32 -4
  %226 = load i32, ptr %225, align 4
  %227 = load ptr, ptr %222, align 4
  %228 = tail call i32 @prandom_u32() #9
  %229 = load i32, ptr %203, align 8
  %230 = urem i32 %228, %229
  %231 = getelementptr i32, ptr %227, i32 %230
  store i32 %226, ptr %231, align 4
  %232 = load ptr, ptr %224, align 4
  %233 = icmp eq ptr %232, %218
  br i1 %233, label %234, label %223

234:                                              ; preds = %223, %217
  %235 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 162
  %236 = load ptr, ptr %235, align 4
  %237 = icmp eq ptr %236, %235
  br i1 %237, label %251, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 173
  br label %240

240:                                              ; preds = %240, %238
  %241 = phi ptr [ %236, %238 ], [ %249, %240 ]
  %242 = getelementptr i8, ptr %241, i32 -4
  %243 = load i32, ptr %242, align 4
  %244 = load ptr, ptr %239, align 4
  %245 = tail call i32 @prandom_u32() #9
  %246 = load i32, ptr %203, align 8
  %247 = urem i32 %245, %246
  %248 = getelementptr i32, ptr %244, i32 %247
  store i32 %243, ptr %248, align 4
  %249 = load ptr, ptr %241, align 4
  %250 = icmp eq ptr %249, %235
  br i1 %250, label %251, label %240

251:                                              ; preds = %240, %234
  %252 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 163
  %253 = load ptr, ptr %252, align 4
  %254 = icmp eq ptr %253, %252
  br i1 %254, label %268, label %255

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 173
  br label %257

257:                                              ; preds = %257, %255
  %258 = phi ptr [ %253, %255 ], [ %266, %257 ]
  %259 = getelementptr i8, ptr %258, i32 -4
  %260 = load i32, ptr %259, align 4
  %261 = load ptr, ptr %256, align 4
  %262 = tail call i32 @prandom_u32() #9
  %263 = load i32, ptr %203, align 8
  %264 = urem i32 %262, %263
  %265 = getelementptr i32, ptr %261, i32 %264
  store i32 %260, ptr %265, align 4
  %266 = load ptr, ptr %258, align 4
  %267 = icmp eq ptr %266, %252
  br i1 %267, label %268, label %257

268:                                              ; preds = %257, %251
  %269 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 158
  %270 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 1
  %271 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 1, i32 1
  %272 = load i32, ptr %271, align 4
  %273 = icmp sgt i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %268
  %275 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 173
  br label %282

276:                                              ; preds = %282, %268
  %277 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 0, i32 1
  %278 = load i32, ptr %277, align 4
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %280, label %312

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 173
  br label %297

282:                                              ; preds = %282, %274
  %283 = phi i32 [ 0, %274 ], [ %294, %282 ]
  %284 = load ptr, ptr %270, align 4
  %285 = getelementptr ptr, ptr %284, i32 %283
  %286 = load ptr, ptr %285, align 4
  %287 = getelementptr inbounds %struct.ubifs_lprops, ptr %286, i32 0, i32 3
  %288 = load i32, ptr %287, align 4
  %289 = load ptr, ptr %275, align 4
  %290 = tail call i32 @prandom_u32() #9
  %291 = load i32, ptr %203, align 8
  %292 = urem i32 %290, %291
  %293 = getelementptr i32, ptr %289, i32 %292
  store i32 %288, ptr %293, align 4
  %294 = add nuw nsw i32 %283, 1
  %295 = load i32, ptr %271, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %282, label %276

297:                                              ; preds = %297, %280
  %298 = phi i32 [ 0, %280 ], [ %309, %297 ]
  %299 = load ptr, ptr %269, align 4
  %300 = getelementptr ptr, ptr %299, i32 %298
  %301 = load ptr, ptr %300, align 4
  %302 = getelementptr inbounds %struct.ubifs_lprops, ptr %301, i32 0, i32 3
  %303 = load i32, ptr %302, align 4
  %304 = load ptr, ptr %281, align 4
  %305 = tail call i32 @prandom_u32() #9
  %306 = load i32, ptr %203, align 8
  %307 = urem i32 %305, %306
  %308 = getelementptr i32, ptr %304, i32 %307
  store i32 %303, ptr %308, align 4
  %309 = add nuw nsw i32 %298, 1
  %310 = load i32, ptr %277, align 4
  %311 = icmp slt i32 %309, %310
  br i1 %311, label %297, label %312

312:                                              ; preds = %297, %276
  %313 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 2
  %314 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 2, i32 1
  %315 = load i32, ptr %314, align 4
  %316 = icmp sgt i32 %315, 0
  br i1 %316, label %317, label %465

317:                                              ; preds = %312
  %318 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 173
  br label %319

319:                                              ; preds = %319, %317
  %320 = phi i32 [ 0, %317 ], [ %331, %319 ]
  %321 = load ptr, ptr %313, align 4
  %322 = getelementptr ptr, ptr %321, i32 %320
  %323 = load ptr, ptr %322, align 4
  %324 = getelementptr inbounds %struct.ubifs_lprops, ptr %323, i32 0, i32 3
  %325 = load i32, ptr %324, align 4
  %326 = load ptr, ptr %318, align 4
  %327 = tail call i32 @prandom_u32() #9
  %328 = load i32, ptr %203, align 8
  %329 = urem i32 %327, %328
  %330 = getelementptr i32, ptr %326, i32 %329
  store i32 %325, ptr %330, align 4
  %331 = add nuw nsw i32 %320, 1
  %332 = load i32, ptr %314, align 4
  %333 = icmp slt i32 %331, %332
  br i1 %333, label %319, label %465

334:                                              ; preds = %198, %191
  %335 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 161
  %336 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 173
  %337 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 170
  br label %338

338:                                              ; preds = %343, %334
  %339 = phi i32 [ 0, %334 ], [ %347, %343 ]
  %340 = phi ptr [ %335, %334 ], [ %341, %343 ]
  %341 = load ptr, ptr %340, align 4
  %342 = icmp eq ptr %341, %335
  br i1 %342, label %351, label %343

343:                                              ; preds = %338
  %344 = getelementptr i8, ptr %341, i32 -4
  %345 = load i32, ptr %344, align 4
  %346 = load ptr, ptr %336, align 4
  %347 = add nuw nsw i32 %339, 1
  %348 = getelementptr i32, ptr %346, i32 %339
  store i32 %345, ptr %348, align 4
  %349 = load i32, ptr %337, align 8
  %350 = icmp slt i32 %347, %349
  br i1 %350, label %338, label %465

351:                                              ; preds = %338
  %352 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 162
  br label %353

353:                                              ; preds = %358, %351
  %354 = phi i32 [ %339, %351 ], [ %362, %358 ]
  %355 = phi ptr [ %352, %351 ], [ %356, %358 ]
  %356 = load ptr, ptr %355, align 4
  %357 = icmp eq ptr %356, %352
  br i1 %357, label %366, label %358

358:                                              ; preds = %353
  %359 = getelementptr i8, ptr %356, i32 -4
  %360 = load i32, ptr %359, align 4
  %361 = load ptr, ptr %336, align 4
  %362 = add nuw nsw i32 %354, 1
  %363 = getelementptr i32, ptr %361, i32 %354
  store i32 %360, ptr %363, align 4
  %364 = load i32, ptr %337, align 8
  %365 = icmp slt i32 %362, %364
  br i1 %365, label %353, label %465

366:                                              ; preds = %353
  %367 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 163
  br label %368

368:                                              ; preds = %373, %366
  %369 = phi i32 [ %354, %366 ], [ %377, %373 ]
  %370 = phi ptr [ %367, %366 ], [ %371, %373 ]
  %371 = load ptr, ptr %370, align 4
  %372 = icmp eq ptr %371, %367
  br i1 %372, label %381, label %373

373:                                              ; preds = %368
  %374 = getelementptr i8, ptr %371, i32 -4
  %375 = load i32, ptr %374, align 4
  %376 = load ptr, ptr %336, align 4
  %377 = add nuw nsw i32 %369, 1
  %378 = getelementptr i32, ptr %376, i32 %369
  store i32 %375, ptr %378, align 4
  %379 = load i32, ptr %337, align 8
  %380 = icmp slt i32 %377, %379
  br i1 %380, label %368, label %465

381:                                              ; preds = %368
  %382 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 158
  %383 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 1
  %384 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 1, i32 1
  %385 = load i32, ptr %384, align 4
  %386 = icmp sgt i32 %385, 0
  br i1 %386, label %396, label %391

387:                                              ; preds = %396
  %388 = add nuw nsw i32 %397, 1
  %389 = load i32, ptr %384, align 4
  %390 = icmp slt i32 %388, %389
  br i1 %390, label %396, label %391

391:                                              ; preds = %387, %381
  %392 = phi i32 [ %369, %381 ], [ %405, %387 ]
  %393 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 0, i32 1
  %394 = load i32, ptr %393, align 4
  %395 = icmp sgt i32 %394, 0
  br i1 %395, label %413, label %426

396:                                              ; preds = %387, %381
  %397 = phi i32 [ %388, %387 ], [ 0, %381 ]
  %398 = phi i32 [ %405, %387 ], [ %369, %381 ]
  %399 = load ptr, ptr %383, align 4
  %400 = getelementptr ptr, ptr %399, i32 %397
  %401 = load ptr, ptr %400, align 4
  %402 = getelementptr inbounds %struct.ubifs_lprops, ptr %401, i32 0, i32 3
  %403 = load i32, ptr %402, align 4
  %404 = load ptr, ptr %336, align 4
  %405 = add nuw i32 %398, 1
  %406 = getelementptr i32, ptr %404, i32 %398
  store i32 %403, ptr %406, align 4
  %407 = load i32, ptr %337, align 8
  %408 = icmp slt i32 %405, %407
  br i1 %408, label %387, label %465

409:                                              ; preds = %413
  %410 = add nuw nsw i32 %414, 1
  %411 = load i32, ptr %393, align 4
  %412 = icmp slt i32 %410, %411
  br i1 %412, label %413, label %426

413:                                              ; preds = %409, %391
  %414 = phi i32 [ %410, %409 ], [ 0, %391 ]
  %415 = phi i32 [ %422, %409 ], [ %392, %391 ]
  %416 = load ptr, ptr %382, align 4
  %417 = getelementptr ptr, ptr %416, i32 %414
  %418 = load ptr, ptr %417, align 4
  %419 = getelementptr inbounds %struct.ubifs_lprops, ptr %418, i32 0, i32 3
  %420 = load i32, ptr %419, align 4
  %421 = load ptr, ptr %336, align 4
  %422 = add i32 %415, 1
  %423 = getelementptr i32, ptr %421, i32 %415
  store i32 %420, ptr %423, align 4
  %424 = load i32, ptr %337, align 8
  %425 = icmp slt i32 %422, %424
  br i1 %425, label %409, label %465

426:                                              ; preds = %409, %391
  %427 = phi i32 [ %392, %391 ], [ %422, %409 ]
  %428 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 2
  %429 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 2, i32 1
  %430 = load i32, ptr %429, align 4
  %431 = icmp sgt i32 %430, 0
  br i1 %431, label %444, label %432

432:                                              ; preds = %426
  %433 = load i32, ptr %337, align 8
  br label %438

434:                                              ; preds = %444
  %435 = add nuw nsw i32 %445, 1
  %436 = load i32, ptr %429, align 4
  %437 = icmp slt i32 %435, %436
  br i1 %437, label %444, label %438

438:                                              ; preds = %434, %432
  %439 = phi i32 [ %433, %432 ], [ %455, %434 ]
  %440 = phi i32 [ %427, %432 ], [ %453, %434 ]
  %441 = icmp slt i32 %440, %439
  br i1 %441, label %442, label %465

442:                                              ; preds = %438
  %443 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 63
  br label %457

444:                                              ; preds = %434, %426
  %445 = phi i32 [ %435, %434 ], [ 0, %426 ]
  %446 = phi i32 [ %453, %434 ], [ %427, %426 ]
  %447 = load ptr, ptr %428, align 4
  %448 = getelementptr ptr, ptr %447, i32 %445
  %449 = load ptr, ptr %448, align 4
  %450 = getelementptr inbounds %struct.ubifs_lprops, ptr %449, i32 0, i32 3
  %451 = load i32, ptr %450, align 4
  %452 = load ptr, ptr %336, align 4
  %453 = add i32 %446, 1
  %454 = getelementptr i32, ptr %452, i32 %446
  store i32 %451, ptr %454, align 4
  %455 = load i32, ptr %337, align 8
  %456 = icmp slt i32 %453, %455
  br i1 %456, label %434, label %465

457:                                              ; preds = %457, %442
  %458 = phi i32 [ %440, %442 ], [ %461, %457 ]
  %459 = load i32, ptr %443, align 8
  %460 = load ptr, ptr %336, align 4
  %461 = add nsw i32 %458, 1
  %462 = getelementptr i32, ptr %460, i32 %458
  store i32 %459, ptr %462, align 4
  %463 = load i32, ptr %337, align 8
  %464 = icmp slt i32 %461, %463
  br i1 %464, label %457, label %465

465:                                              ; preds = %457, %444, %438, %413, %396, %373, %358, %343, %319, %312, %172, %163
  %466 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 156
  %467 = load ptr, ptr %466, align 8
  %468 = icmp eq ptr %467, null
  br i1 %468, label %612, label %469

469:                                              ; preds = %465
  %470 = getelementptr inbounds %struct.ubifs_nnode, ptr %467, i32 0, i32 2
  %471 = load volatile i32, ptr %470, align 4
  %472 = and i32 %471, 1
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %612, label %474

474:                                              ; preds = %484, %469
  %475 = phi ptr [ %485, %484 ], [ %467, %469 ]
  %476 = getelementptr %struct.ubifs_nnode, ptr %475, i32 0, i32 6, i32 0, i32 2
  %477 = load ptr, ptr %476, align 4
  %478 = icmp eq ptr %477, null
  br i1 %478, label %489, label %479

479:                                              ; preds = %474
  %480 = getelementptr inbounds %struct.ubifs_cnode, ptr %477, i32 0, i32 2
  %481 = load volatile i32, ptr %480, align 4
  %482 = and i32 %481, 1
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %489, label %484

484:                                              ; preds = %511, %502, %493, %479
  %485 = phi ptr [ %477, %479 ], [ %491, %493 ], [ %500, %502 ], [ %509, %511 ]
  %486 = getelementptr inbounds %struct.ubifs_cnode, ptr %485, i32 0, i32 4
  %487 = load i32, ptr %486, align 4
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %516, label %474

489:                                              ; preds = %479, %474
  %490 = getelementptr %struct.ubifs_nnode, ptr %475, i32 0, i32 6, i32 1, i32 2
  %491 = load ptr, ptr %490, align 4
  %492 = icmp eq ptr %491, null
  br i1 %492, label %498, label %493

493:                                              ; preds = %489
  %494 = getelementptr inbounds %struct.ubifs_cnode, ptr %491, i32 0, i32 2
  %495 = load volatile i32, ptr %494, align 4
  %496 = and i32 %495, 1
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %498, label %484

498:                                              ; preds = %493, %489
  %499 = getelementptr %struct.ubifs_nnode, ptr %475, i32 0, i32 6, i32 2, i32 2
  %500 = load ptr, ptr %499, align 4
  %501 = icmp eq ptr %500, null
  br i1 %501, label %507, label %502

502:                                              ; preds = %498
  %503 = getelementptr inbounds %struct.ubifs_cnode, ptr %500, i32 0, i32 2
  %504 = load volatile i32, ptr %503, align 4
  %505 = and i32 %504, 1
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %484

507:                                              ; preds = %502, %498
  %508 = getelementptr %struct.ubifs_nnode, ptr %475, i32 0, i32 6, i32 3, i32 2
  %509 = load ptr, ptr %508, align 4
  %510 = icmp eq ptr %509, null
  br i1 %510, label %516, label %511

511:                                              ; preds = %507
  %512 = getelementptr inbounds %struct.ubifs_cnode, ptr %509, i32 0, i32 2
  %513 = load volatile i32, ptr %512, align 4
  %514 = and i32 %513, 1
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %516, label %484

516:                                              ; preds = %511, %507, %484
  %517 = phi ptr [ %475, %511 ], [ %475, %507 ], [ %485, %484 ]
  %518 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 157
  store ptr %517, ptr %518, align 4
  br label %519

519:                                              ; preds = %605, %516
  %520 = phi i32 [ %608, %605 ], [ 1, %516 ]
  %521 = phi ptr [ %606, %605 ], [ %517, %516 ]
  %522 = getelementptr inbounds %struct.ubifs_cnode, ptr %521, i32 0, i32 2
  %523 = load volatile i32, ptr %522, align 4
  %524 = and i32 %523, 4
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %528, label %526, !prof !8

526:                                              ; preds = %519
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 105) #9
  %527 = load i32, ptr %522, align 4
  br label %528

528:                                              ; preds = %526, %519
  %529 = phi i32 [ %523, %519 ], [ %527, %526 ]
  %530 = or i32 %529, 4
  store i32 %530, ptr %522, align 4
  %531 = load ptr, ptr %521, align 4
  %532 = icmp eq ptr %531, null
  br i1 %532, label %597, label %533

533:                                              ; preds = %528
  %534 = getelementptr inbounds %struct.ubifs_cnode, ptr %521, i32 0, i32 3
  %535 = load i32, ptr %534, align 4
  %536 = add i32 %535, 1
  %537 = icmp slt i32 %536, 4
  br i1 %537, label %538, label %605

538:                                              ; preds = %594, %533
  %539 = phi i32 [ %595, %594 ], [ %536, %533 ]
  %540 = getelementptr %struct.ubifs_nnode, ptr %531, i32 0, i32 6, i32 %539, i32 2
  %541 = load ptr, ptr %540, align 4
  %542 = icmp eq ptr %541, null
  br i1 %542, label %594, label %543

543:                                              ; preds = %538
  %544 = getelementptr inbounds %struct.ubifs_cnode, ptr %541, i32 0, i32 2
  %545 = load volatile i32, ptr %544, align 4
  %546 = and i32 %545, 1
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %594, label %548

548:                                              ; preds = %543
  %549 = getelementptr inbounds %struct.ubifs_cnode, ptr %541, i32 0, i32 4
  %550 = load i32, ptr %549, align 4
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %605, label %552

552:                                              ; preds = %562, %548
  %553 = phi ptr [ %563, %562 ], [ %541, %548 ]
  %554 = getelementptr %struct.ubifs_nnode, ptr %553, i32 0, i32 6, i32 0, i32 2
  %555 = load ptr, ptr %554, align 4
  %556 = icmp eq ptr %555, null
  br i1 %556, label %567, label %557

557:                                              ; preds = %552
  %558 = getelementptr inbounds %struct.ubifs_cnode, ptr %555, i32 0, i32 2
  %559 = load volatile i32, ptr %558, align 4
  %560 = and i32 %559, 1
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %567, label %562

562:                                              ; preds = %589, %580, %571, %557
  %563 = phi ptr [ %555, %557 ], [ %569, %571 ], [ %578, %580 ], [ %587, %589 ]
  %564 = getelementptr inbounds %struct.ubifs_cnode, ptr %563, i32 0, i32 4
  %565 = load i32, ptr %564, align 4
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %605, label %552

567:                                              ; preds = %557, %552
  %568 = getelementptr %struct.ubifs_nnode, ptr %553, i32 0, i32 6, i32 1, i32 2
  %569 = load ptr, ptr %568, align 4
  %570 = icmp eq ptr %569, null
  br i1 %570, label %576, label %571

571:                                              ; preds = %567
  %572 = getelementptr inbounds %struct.ubifs_cnode, ptr %569, i32 0, i32 2
  %573 = load volatile i32, ptr %572, align 4
  %574 = and i32 %573, 1
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %576, label %562

576:                                              ; preds = %571, %567
  %577 = getelementptr %struct.ubifs_nnode, ptr %553, i32 0, i32 6, i32 2, i32 2
  %578 = load ptr, ptr %577, align 4
  %579 = icmp eq ptr %578, null
  br i1 %579, label %585, label %580

580:                                              ; preds = %576
  %581 = getelementptr inbounds %struct.ubifs_cnode, ptr %578, i32 0, i32 2
  %582 = load volatile i32, ptr %581, align 4
  %583 = and i32 %582, 1
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %585, label %562

585:                                              ; preds = %580, %576
  %586 = getelementptr %struct.ubifs_nnode, ptr %553, i32 0, i32 6, i32 3, i32 2
  %587 = load ptr, ptr %586, align 4
  %588 = icmp eq ptr %587, null
  br i1 %588, label %605, label %589

589:                                              ; preds = %585
  %590 = getelementptr inbounds %struct.ubifs_cnode, ptr %587, i32 0, i32 2
  %591 = load volatile i32, ptr %590, align 4
  %592 = and i32 %591, 1
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %605, label %562

594:                                              ; preds = %543, %538
  %595 = add i32 %539, 1
  %596 = icmp eq i32 %595, 4
  br i1 %596, label %605, label %538

597:                                              ; preds = %528
  %598 = load ptr, ptr %518, align 4
  %599 = getelementptr inbounds %struct.ubifs_cnode, ptr %521, i32 0, i32 1
  store ptr %598, ptr %599, align 4
  %600 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 150
  %601 = load i32, ptr %600, align 8
  %602 = load i32, ptr %113, align 4
  %603 = add i32 %602, %601
  %604 = icmp eq i32 %520, %603
  br i1 %604, label %610, label %609, !prof !8

605:                                              ; preds = %594, %589, %585, %562, %548, %533
  %606 = phi ptr [ %531, %533 ], [ %541, %548 ], [ %553, %589 ], [ %553, %585 ], [ %563, %562 ], [ %531, %594 ]
  %607 = getelementptr inbounds %struct.ubifs_cnode, ptr %521, i32 0, i32 1
  store ptr %606, ptr %607, align 4
  %608 = add i32 %520, 1
  br label %519

609:                                              ; preds = %597
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 118) #9
  br label %610

610:                                              ; preds = %609, %597
  %611 = icmp eq i32 %520, 0
  br i1 %611, label %612, label %613, !prof !9

612:                                              ; preds = %610, %469, %465
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1232) #9
  br label %613

613:                                              ; preds = %612, %610
  %614 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %615 = load ptr, ptr %614, align 4
  %616 = load i8, ptr @ubifs_dbg, align 4
  %617 = and i8 %616, 8
  %618 = icmp eq i8 %617, 0
  br i1 %618, label %619, label %624

619:                                              ; preds = %613
  %620 = getelementptr inbounds %struct.ubifs_debug_info, ptr %615, i32 0, i32 19
  %621 = load i8, ptr %620, align 4
  %622 = and i8 %621, 8
  %623 = icmp eq i8 %622, 0
  br i1 %623, label %645, label %624

624:                                              ; preds = %619, %613
  %625 = getelementptr inbounds %struct.ubifs_debug_info, ptr %615, i32 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(28) %625, i8 0, i64 28, i1 false) #9
  %626 = load i32, ptr %113, align 4
  %627 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 140
  %628 = load i32, ptr %627, align 8
  %629 = icmp sgt i32 %626, %628
  br i1 %629, label %630, label %636

630:                                              ; preds = %624
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %626, i32 noundef %628) #9
  %631 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 150
  %632 = load i32, ptr %631, align 8
  %633 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 141
  %634 = load i32, ptr %633, align 4
  %635 = icmp sgt i32 %632, %634
  br i1 %635, label %642, label %1258

636:                                              ; preds = %624
  %637 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 150
  %638 = load i32, ptr %637, align 8
  %639 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 141
  %640 = load i32, ptr %639, align 4
  %641 = icmp sgt i32 %638, %640
  br i1 %641, label %642, label %645

642:                                              ; preds = %636, %630
  %643 = phi i32 [ %640, %636 ], [ %634, %630 ]
  %644 = phi i32 [ %638, %636 ], [ %632, %630 ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %644, i32 noundef %643) #9
  br label %1258

645:                                              ; preds = %636, %619
  %646 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 157
  %647 = load ptr, ptr %646, align 4
  %648 = icmp eq ptr %647, null
  br i1 %648, label %1242, label %649

649:                                              ; preds = %645
  %650 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 147
  %651 = load i32, ptr %650, align 4
  %652 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 148
  %653 = load i32, ptr %652, align 8
  %654 = load i16, ptr %117, align 4
  %655 = and i16 %654, 1
  %656 = icmp eq i16 %655, 0
  br i1 %656, label %679, label %657

657:                                              ; preds = %649
  %658 = xor i16 %655, 1
  %659 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 139
  %660 = load i32, ptr %659, align 4
  %661 = add i32 %660, %653
  %662 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %663 = load i32, ptr %662, align 8
  %664 = icmp sgt i32 %661, %663
  br i1 %664, label %679, label %665

665:                                              ; preds = %657
  %666 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 171
  store i32 %651, ptr %666, align 4
  %667 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 172
  store i32 %653, ptr %667, align 8
  %668 = load ptr, ptr %614, align 4
  br i1 %618, label %669, label %674

669:                                              ; preds = %665
  %670 = getelementptr inbounds %struct.ubifs_debug_info, ptr %668, i32 0, i32 19
  %671 = load i8, ptr %670, align 4
  %672 = and i8 %671, 8
  %673 = icmp eq i8 %672, 0
  br i1 %673, label %679, label %674

674:                                              ; preds = %669, %665
  %675 = sext i32 %660 to i64
  %676 = getelementptr inbounds %struct.ubifs_debug_info, ptr %668, i32 0, i32 8
  %677 = load i64, ptr %676, align 8
  %678 = add i64 %677, %675
  store i64 %678, ptr %676, align 8
  br label %679

679:                                              ; preds = %674, %669, %657, %649
  %680 = phi i32 [ %653, %649 ], [ %653, %657 ], [ %661, %669 ], [ %661, %674 ]
  %681 = phi i16 [ 1, %649 ], [ %658, %657 ], [ 1, %669 ], [ 1, %674 ]
  %682 = zext i16 %681 to i32
  %683 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 138
  %684 = load i32, ptr %683, align 8
  %685 = add i32 %684, %680
  %686 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %687 = load i32, ptr %686, align 8
  %688 = icmp sgt i32 %685, %687
  br i1 %688, label %703, label %689

689:                                              ; preds = %679
  %690 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 166
  store i32 %651, ptr %690, align 8
  %691 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 167
  store i32 %680, ptr %691, align 4
  %692 = load ptr, ptr %614, align 4
  br i1 %618, label %693, label %698

693:                                              ; preds = %689
  %694 = getelementptr inbounds %struct.ubifs_debug_info, ptr %692, i32 0, i32 19
  %695 = load i8, ptr %694, align 4
  %696 = and i8 %695, 8
  %697 = icmp eq i8 %696, 0
  br i1 %697, label %703, label %698

698:                                              ; preds = %693, %689
  %699 = sext i32 %684 to i64
  %700 = getelementptr inbounds %struct.ubifs_debug_info, ptr %692, i32 0, i32 8
  %701 = load i64, ptr %700, align 8
  %702 = add i64 %701, %699
  store i64 %702, ptr %700, align 8
  br label %703

703:                                              ; preds = %698, %693, %679
  %704 = phi i32 [ %680, %679 ], [ %685, %693 ], [ %685, %698 ]
  %705 = phi i32 [ 0, %679 ], [ 1, %693 ], [ 1, %698 ]
  %706 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 136
  %707 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 150
  %708 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 137
  %709 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %710 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %711 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 58
  %712 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  %713 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 171
  %714 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 172
  %715 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 139
  %716 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 166
  %717 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 167
  %718 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 145
  %719 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 146
  br label %720

720:                                              ; preds = %931, %703
  %721 = phi i32 [ %651, %703 ], [ %899, %931 ]
  %722 = phi i32 [ %704, %703 ], [ %912, %931 ]
  %723 = phi i32 [ %682, %703 ], [ %898, %931 ]
  %724 = phi i32 [ %705, %703 ], [ %897, %931 ]
  %725 = phi ptr [ %647, %703 ], [ %929, %931 ]
  %726 = getelementptr inbounds %struct.ubifs_cnode, ptr %725, i32 0, i32 4
  %727 = load i32, ptr %726, align 4
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %733, label %729

729:                                              ; preds = %720
  %730 = load i32, ptr %706, align 8
  %731 = load i32, ptr %707, align 8
  %732 = add i32 %731, -1
  store i32 %732, ptr %707, align 8
  br label %737

733:                                              ; preds = %720
  %734 = load i32, ptr %708, align 4
  %735 = load i32, ptr %113, align 4
  %736 = add i32 %735, -1
  store i32 %736, ptr %113, align 4
  br label %737

737:                                              ; preds = %733, %729
  %738 = phi i32 [ %730, %729 ], [ %734, %733 ]
  %739 = add i32 %738, %722
  %740 = load i32, ptr %686, align 8
  %741 = icmp sgt i32 %739, %740
  br i1 %741, label %742, label %896

742:                                              ; preds = %892, %737
  %743 = phi i32 [ %894, %892 ], [ %740, %737 ]
  %744 = phi i32 [ 1, %892 ], [ %724, %737 ]
  %745 = phi i32 [ 1, %892 ], [ %723, %737 ]
  %746 = phi i32 [ %877, %892 ], [ %722, %737 ]
  %747 = phi i32 [ %846, %892 ], [ %721, %737 ]
  br label %748

748:                                              ; preds = %870, %742
  %749 = phi i32 [ %743, %742 ], [ %872, %870 ]
  %750 = phi i32 [ %745, %742 ], [ 1, %870 ]
  %751 = phi i32 [ %746, %742 ], [ %855, %870 ]
  %752 = phi i32 [ %747, %742 ], [ %846, %870 ]
  %753 = load i32, ptr %709, align 8
  %754 = add i32 %751, -1
  %755 = add i32 %754, %753
  %756 = sub i32 0, %753
  %757 = and i32 %755, %756
  %758 = sub i32 %749, %757
  %759 = sub i32 %757, %751
  %760 = load i32, ptr %710, align 8
  %761 = icmp sgt i32 %760, %752
  br i1 %761, label %765, label %762, !prof !9

762:                                              ; preds = %748
  %763 = load i32, ptr %711, align 4
  %764 = icmp slt i32 %763, %752
  br i1 %764, label %765, label %767, !prof !9

765:                                              ; preds = %762, %748
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 134) #9
  %766 = load i32, ptr %710, align 8
  br label %767

767:                                              ; preds = %765, %762
  %768 = phi i32 [ %760, %762 ], [ %766, %765 ]
  %769 = load ptr, ptr %712, align 8
  %770 = sub i32 %752, %768
  %771 = getelementptr %struct.ubifs_lpt_lprops, ptr %769, i32 %770
  store i32 %758, ptr %771, align 4
  %772 = load ptr, ptr %712, align 8
  %773 = load i32, ptr %710, align 8
  %774 = sub i32 %752, %773
  %775 = getelementptr %struct.ubifs_lpt_lprops, ptr %772, i32 %774, i32 1
  %776 = load i32, ptr %775, align 4
  %777 = add i32 %759, %776
  store i32 %777, ptr %775, align 4
  %778 = load i32, ptr %686, align 8
  %779 = sub i32 %778, %751
  %780 = load ptr, ptr %614, align 4
  %781 = load i8, ptr @ubifs_dbg, align 4
  %782 = and i8 %781, 8
  %783 = icmp eq i8 %782, 0
  br i1 %783, label %784, label %789

784:                                              ; preds = %767
  %785 = getelementptr inbounds %struct.ubifs_debug_info, ptr %780, i32 0, i32 19
  %786 = load i8, ptr %785, align 4
  %787 = and i8 %786, 8
  %788 = icmp eq i8 %787, 0
  br i1 %788, label %800, label %789

789:                                              ; preds = %784, %767
  %790 = sext i32 %779 to i64
  %791 = getelementptr inbounds %struct.ubifs_debug_info, ptr %780, i32 0, i32 8
  %792 = load i64, ptr %791, align 8
  %793 = add i64 %792, %790
  store i64 %793, ptr %791, align 8
  %794 = getelementptr inbounds %struct.ubifs_debug_info, ptr %780, i32 0, i32 10
  %795 = load i64, ptr %794, align 8
  %796 = add i64 %795, %790
  store i64 %796, ptr %794, align 8
  %797 = getelementptr inbounds %struct.ubifs_debug_info, ptr %780, i32 0, i32 11
  %798 = load i32, ptr %797, align 8
  %799 = add i32 %798, 1
  store i32 %799, ptr %797, align 8
  br label %800

800:                                              ; preds = %789, %784
  %801 = load i32, ptr %710, align 8
  %802 = sub i32 %752, %801
  %803 = add i32 %802, 1
  %804 = load i32, ptr %72, align 4
  %805 = icmp slt i32 %803, %804
  br i1 %805, label %806, label %808

806:                                              ; preds = %800
  %807 = load ptr, ptr %712, align 8
  br label %812

808:                                              ; preds = %823, %800
  %809 = icmp ult i32 %802, 2147483647
  br i1 %809, label %810, label %1234

810:                                              ; preds = %808
  %811 = load ptr, ptr %712, align 8
  br label %826

812:                                              ; preds = %823, %806
  %813 = phi i32 [ %803, %806 ], [ %824, %823 ]
  %814 = getelementptr %struct.ubifs_lpt_lprops, ptr %807, i32 %813, i32 2
  %815 = load i8, ptr %814, align 4
  %816 = and i8 %815, 3
  %817 = icmp eq i8 %816, 0
  br i1 %817, label %818, label %823

818:                                              ; preds = %812
  %819 = getelementptr %struct.ubifs_lpt_lprops, ptr %807, i32 %813
  %820 = load i32, ptr %819, align 4
  %821 = load i32, ptr %686, align 8
  %822 = icmp eq i32 %820, %821
  br i1 %822, label %840, label %823

823:                                              ; preds = %818, %812
  %824 = add i32 %813, 1
  %825 = icmp eq i32 %824, %804
  br i1 %825, label %808, label %812

826:                                              ; preds = %837, %810
  %827 = phi i32 [ 0, %810 ], [ %838, %837 ]
  %828 = getelementptr %struct.ubifs_lpt_lprops, ptr %811, i32 %827, i32 2
  %829 = load i8, ptr %828, align 4
  %830 = and i8 %829, 3
  %831 = icmp eq i8 %830, 0
  br i1 %831, label %832, label %837

832:                                              ; preds = %826
  %833 = getelementptr %struct.ubifs_lpt_lprops, ptr %811, i32 %827
  %834 = load i32, ptr %833, align 4
  %835 = load i32, ptr %686, align 8
  %836 = icmp eq i32 %834, %835
  br i1 %836, label %840, label %837

837:                                              ; preds = %832, %826
  %838 = add nuw nsw i32 %827, 1
  %839 = icmp eq i32 %827, %802
  br i1 %839, label %1234, label %826

840:                                              ; preds = %832, %818
  %841 = phi i8 [ %829, %832 ], [ %815, %818 ]
  %842 = phi ptr [ %828, %832 ], [ %814, %818 ]
  %843 = phi i32 [ %827, %832 ], [ %813, %818 ]
  %844 = or i8 %841, 2
  store i8 %844, ptr %842, align 4
  %845 = load i32, ptr %710, align 8
  %846 = add i32 %845, %843
  %847 = icmp slt i32 %846, %845
  br i1 %847, label %851, label %848, !prof !9

848:                                              ; preds = %840
  %849 = load i32, ptr %711, align 4
  %850 = icmp sgt i32 %846, %849
  br i1 %850, label %851, label %852, !prof !9

851:                                              ; preds = %848, %840
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 231) #9
  br label %852

852:                                              ; preds = %851, %848
  %853 = icmp eq i32 %750, 0
  br i1 %853, label %854, label %874

854:                                              ; preds = %852
  store i32 %846, ptr %713, align 4
  store i32 0, ptr %714, align 8
  %855 = load i32, ptr %715, align 4
  %856 = load ptr, ptr %614, align 4
  %857 = load i8, ptr @ubifs_dbg, align 4
  %858 = and i8 %857, 8
  %859 = icmp eq i8 %858, 0
  br i1 %859, label %860, label %865

860:                                              ; preds = %854
  %861 = getelementptr inbounds %struct.ubifs_debug_info, ptr %856, i32 0, i32 19
  %862 = load i8, ptr %861, align 4
  %863 = and i8 %862, 8
  %864 = icmp eq i8 %863, 0
  br i1 %864, label %870, label %865

865:                                              ; preds = %860, %854
  %866 = sext i32 %855 to i64
  %867 = getelementptr inbounds %struct.ubifs_debug_info, ptr %856, i32 0, i32 8
  %868 = load i64, ptr %867, align 8
  %869 = add i64 %868, %866
  store i64 %869, ptr %867, align 8
  br label %870

870:                                              ; preds = %865, %860
  %871 = add i32 %855, %738
  %872 = load i32, ptr %686, align 8
  %873 = icmp sgt i32 %871, %872
  br i1 %873, label %748, label %896

874:                                              ; preds = %852
  %875 = icmp eq i32 %744, 0
  br i1 %875, label %876, label %896

876:                                              ; preds = %874
  store i32 %846, ptr %716, align 8
  store i32 0, ptr %717, align 4
  %877 = load i32, ptr %683, align 8
  %878 = load ptr, ptr %614, align 4
  %879 = load i8, ptr @ubifs_dbg, align 4
  %880 = and i8 %879, 8
  %881 = icmp eq i8 %880, 0
  br i1 %881, label %882, label %887

882:                                              ; preds = %876
  %883 = getelementptr inbounds %struct.ubifs_debug_info, ptr %878, i32 0, i32 19
  %884 = load i8, ptr %883, align 4
  %885 = and i8 %884, 8
  %886 = icmp eq i8 %885, 0
  br i1 %886, label %892, label %887

887:                                              ; preds = %882, %876
  %888 = sext i32 %877 to i64
  %889 = getelementptr inbounds %struct.ubifs_debug_info, ptr %878, i32 0, i32 8
  %890 = load i64, ptr %889, align 8
  %891 = add i64 %890, %888
  store i64 %891, ptr %889, align 8
  br label %892

892:                                              ; preds = %887, %882
  %893 = add i32 %877, %738
  %894 = load i32, ptr %686, align 8
  %895 = icmp sgt i32 %893, %894
  br i1 %895, label %742, label %896

896:                                              ; preds = %892, %874, %870, %737
  %897 = phi i32 [ %724, %737 ], [ %744, %870 ], [ %744, %874 ], [ 1, %892 ]
  %898 = phi i32 [ %723, %737 ], [ 1, %870 ], [ %750, %874 ], [ 1, %892 ]
  %899 = phi i32 [ %721, %737 ], [ %846, %870 ], [ %846, %874 ], [ %846, %892 ]
  %900 = phi i32 [ %722, %737 ], [ %855, %870 ], [ 0, %874 ], [ %877, %892 ]
  %901 = load ptr, ptr %725, align 4
  %902 = icmp eq ptr %901, null
  br i1 %902, label %910, label %903

903:                                              ; preds = %896
  %904 = getelementptr inbounds %struct.ubifs_cnode, ptr %725, i32 0, i32 3
  %905 = load i32, ptr %904, align 4
  %906 = getelementptr %struct.ubifs_nnode, ptr %901, i32 0, i32 6, i32 %905
  store i32 %899, ptr %906, align 4
  %907 = load ptr, ptr %725, align 4
  %908 = load i32, ptr %904, align 4
  %909 = getelementptr %struct.ubifs_nnode, ptr %907, i32 0, i32 6, i32 %908, i32 1
  store i32 %900, ptr %909, align 4
  br label %911

910:                                              ; preds = %896
  store i32 %899, ptr %718, align 4
  store i32 %900, ptr %719, align 8
  br label %911

911:                                              ; preds = %910, %903
  %912 = add i32 %900, %738
  %913 = load ptr, ptr %614, align 4
  %914 = load i8, ptr @ubifs_dbg, align 4
  %915 = and i8 %914, 8
  %916 = icmp eq i8 %915, 0
  br i1 %916, label %917, label %922

917:                                              ; preds = %911
  %918 = getelementptr inbounds %struct.ubifs_debug_info, ptr %913, i32 0, i32 19
  %919 = load i8, ptr %918, align 4
  %920 = and i8 %919, 8
  %921 = icmp eq i8 %920, 0
  br i1 %921, label %927, label %922

922:                                              ; preds = %917, %911
  %923 = sext i32 %738 to i64
  %924 = getelementptr inbounds %struct.ubifs_debug_info, ptr %913, i32 0, i32 8
  %925 = load i64, ptr %924, align 8
  %926 = add i64 %925, %923
  store i64 %926, ptr %924, align 8
  br label %927

927:                                              ; preds = %922, %917
  %928 = getelementptr inbounds %struct.ubifs_cnode, ptr %725, i32 0, i32 1
  %929 = load ptr, ptr %928, align 4
  %930 = icmp eq ptr %929, null
  br i1 %930, label %934, label %931

931:                                              ; preds = %927
  %932 = load ptr, ptr %646, align 4
  %933 = icmp eq ptr %929, %932
  br i1 %933, label %934, label %720

934:                                              ; preds = %931, %927
  %935 = icmp eq i32 %898, 0
  br i1 %935, label %936, label %1060

936:                                              ; preds = %934
  %937 = load i32, ptr %715, align 4
  %938 = add i32 %937, %912
  %939 = load i32, ptr %686, align 8
  %940 = icmp sgt i32 %938, %939
  br i1 %940, label %941, label %1041

941:                                              ; preds = %936
  %942 = load i32, ptr %709, align 8
  %943 = add i32 %912, -1
  %944 = add i32 %943, %942
  %945 = sub i32 0, %942
  %946 = and i32 %944, %945
  %947 = sub i32 %939, %946
  %948 = sub i32 %946, %912
  %949 = load i32, ptr %710, align 8
  %950 = icmp sgt i32 %949, %899
  br i1 %950, label %954, label %951, !prof !9

951:                                              ; preds = %941
  %952 = load i32, ptr %711, align 4
  %953 = icmp slt i32 %952, %899
  br i1 %953, label %954, label %956, !prof !9

954:                                              ; preds = %951, %941
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 134) #9
  %955 = load i32, ptr %710, align 8
  br label %956

956:                                              ; preds = %954, %951
  %957 = phi i32 [ %949, %951 ], [ %955, %954 ]
  %958 = load ptr, ptr %712, align 8
  %959 = sub i32 %899, %957
  %960 = getelementptr %struct.ubifs_lpt_lprops, ptr %958, i32 %959
  store i32 %947, ptr %960, align 4
  %961 = load ptr, ptr %712, align 8
  %962 = load i32, ptr %710, align 8
  %963 = sub i32 %899, %962
  %964 = getelementptr %struct.ubifs_lpt_lprops, ptr %961, i32 %963, i32 1
  %965 = load i32, ptr %964, align 4
  %966 = add i32 %948, %965
  store i32 %966, ptr %964, align 4
  %967 = load i32, ptr %686, align 8
  %968 = sub i32 %967, %912
  %969 = load ptr, ptr %614, align 4
  %970 = load i8, ptr @ubifs_dbg, align 4
  %971 = and i8 %970, 8
  %972 = icmp eq i8 %971, 0
  br i1 %972, label %973, label %978

973:                                              ; preds = %956
  %974 = getelementptr inbounds %struct.ubifs_debug_info, ptr %969, i32 0, i32 19
  %975 = load i8, ptr %974, align 4
  %976 = and i8 %975, 8
  %977 = icmp eq i8 %976, 0
  br i1 %977, label %989, label %978

978:                                              ; preds = %973, %956
  %979 = sext i32 %968 to i64
  %980 = getelementptr inbounds %struct.ubifs_debug_info, ptr %969, i32 0, i32 8
  %981 = load i64, ptr %980, align 8
  %982 = add i64 %981, %979
  store i64 %982, ptr %980, align 8
  %983 = getelementptr inbounds %struct.ubifs_debug_info, ptr %969, i32 0, i32 10
  %984 = load i64, ptr %983, align 8
  %985 = add i64 %984, %979
  store i64 %985, ptr %983, align 8
  %986 = getelementptr inbounds %struct.ubifs_debug_info, ptr %969, i32 0, i32 11
  %987 = load i32, ptr %986, align 8
  %988 = add i32 %987, 1
  store i32 %988, ptr %986, align 8
  br label %989

989:                                              ; preds = %978, %973
  %990 = load i32, ptr %710, align 8
  %991 = sub i32 %899, %990
  %992 = add i32 %991, 1
  %993 = load i32, ptr %72, align 4
  %994 = icmp slt i32 %992, %993
  br i1 %994, label %995, label %997

995:                                              ; preds = %989
  %996 = load ptr, ptr %712, align 8
  br label %1001

997:                                              ; preds = %1012, %989
  %998 = icmp ult i32 %991, 2147483647
  br i1 %998, label %999, label %1234

999:                                              ; preds = %997
  %1000 = load ptr, ptr %712, align 8
  br label %1015

1001:                                             ; preds = %1012, %995
  %1002 = phi i32 [ %992, %995 ], [ %1013, %1012 ]
  %1003 = getelementptr %struct.ubifs_lpt_lprops, ptr %996, i32 %1002, i32 2
  %1004 = load i8, ptr %1003, align 4
  %1005 = and i8 %1004, 3
  %1006 = icmp eq i8 %1005, 0
  br i1 %1006, label %1007, label %1012

1007:                                             ; preds = %1001
  %1008 = getelementptr %struct.ubifs_lpt_lprops, ptr %996, i32 %1002
  %1009 = load i32, ptr %1008, align 4
  %1010 = load i32, ptr %686, align 8
  %1011 = icmp eq i32 %1009, %1010
  br i1 %1011, label %1029, label %1012

1012:                                             ; preds = %1007, %1001
  %1013 = add i32 %1002, 1
  %1014 = icmp eq i32 %1013, %993
  br i1 %1014, label %997, label %1001

1015:                                             ; preds = %1026, %999
  %1016 = phi i32 [ 0, %999 ], [ %1027, %1026 ]
  %1017 = getelementptr %struct.ubifs_lpt_lprops, ptr %1000, i32 %1016, i32 2
  %1018 = load i8, ptr %1017, align 4
  %1019 = and i8 %1018, 3
  %1020 = icmp eq i8 %1019, 0
  br i1 %1020, label %1021, label %1026

1021:                                             ; preds = %1015
  %1022 = getelementptr %struct.ubifs_lpt_lprops, ptr %1000, i32 %1016
  %1023 = load i32, ptr %1022, align 4
  %1024 = load i32, ptr %686, align 8
  %1025 = icmp eq i32 %1023, %1024
  br i1 %1025, label %1029, label %1026

1026:                                             ; preds = %1021, %1015
  %1027 = add nuw nsw i32 %1016, 1
  %1028 = icmp eq i32 %1016, %991
  br i1 %1028, label %1234, label %1015

1029:                                             ; preds = %1021, %1007
  %1030 = phi i8 [ %1018, %1021 ], [ %1004, %1007 ]
  %1031 = phi ptr [ %1017, %1021 ], [ %1003, %1007 ]
  %1032 = phi i32 [ %1016, %1021 ], [ %1002, %1007 ]
  %1033 = or i8 %1030, 2
  store i8 %1033, ptr %1031, align 4
  %1034 = load i32, ptr %710, align 8
  %1035 = add i32 %1034, %1032
  %1036 = icmp slt i32 %1035, %1034
  br i1 %1036, label %1040, label %1037, !prof !9

1037:                                             ; preds = %1029
  %1038 = load i32, ptr %711, align 4
  %1039 = icmp sgt i32 %1035, %1038
  br i1 %1039, label %1040, label %1041, !prof !9

1040:                                             ; preds = %1037, %1029
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 274) #9
  br label %1041

1041:                                             ; preds = %1040, %1037, %936
  %1042 = phi i32 [ %1035, %1040 ], [ %1035, %1037 ], [ %899, %936 ]
  %1043 = phi i32 [ 0, %1040 ], [ 0, %1037 ], [ %912, %936 ]
  store i32 %1042, ptr %713, align 4
  store i32 %1043, ptr %714, align 8
  %1044 = load i32, ptr %715, align 4
  %1045 = add i32 %1044, %1043
  %1046 = load ptr, ptr %614, align 4
  %1047 = load i8, ptr @ubifs_dbg, align 4
  %1048 = and i8 %1047, 8
  %1049 = icmp eq i8 %1048, 0
  br i1 %1049, label %1050, label %1055

1050:                                             ; preds = %1041
  %1051 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1046, i32 0, i32 19
  %1052 = load i8, ptr %1051, align 4
  %1053 = and i8 %1052, 8
  %1054 = icmp eq i8 %1053, 0
  br i1 %1054, label %1060, label %1055

1055:                                             ; preds = %1050, %1041
  %1056 = sext i32 %1044 to i64
  %1057 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1046, i32 0, i32 8
  %1058 = load i64, ptr %1057, align 8
  %1059 = add i64 %1058, %1056
  store i64 %1059, ptr %1057, align 8
  br label %1060

1060:                                             ; preds = %1055, %1050, %934
  %1061 = phi i32 [ %899, %934 ], [ %1042, %1050 ], [ %1042, %1055 ]
  %1062 = phi i32 [ %912, %934 ], [ %1045, %1050 ], [ %1045, %1055 ]
  %1063 = icmp eq i32 %897, 0
  br i1 %1063, label %1064, label %1188

1064:                                             ; preds = %1060
  %1065 = load i32, ptr %683, align 8
  %1066 = add i32 %1065, %1062
  %1067 = load i32, ptr %686, align 8
  %1068 = icmp sgt i32 %1066, %1067
  br i1 %1068, label %1069, label %1169

1069:                                             ; preds = %1064
  %1070 = load i32, ptr %709, align 8
  %1071 = add i32 %1062, -1
  %1072 = add i32 %1071, %1070
  %1073 = sub i32 0, %1070
  %1074 = and i32 %1072, %1073
  %1075 = sub i32 %1067, %1074
  %1076 = sub i32 %1074, %1062
  %1077 = load i32, ptr %710, align 8
  %1078 = icmp sgt i32 %1077, %1061
  br i1 %1078, label %1082, label %1079, !prof !9

1079:                                             ; preds = %1069
  %1080 = load i32, ptr %711, align 4
  %1081 = icmp slt i32 %1080, %1061
  br i1 %1081, label %1082, label %1084, !prof !9

1082:                                             ; preds = %1079, %1069
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 134) #9
  %1083 = load i32, ptr %710, align 8
  br label %1084

1084:                                             ; preds = %1082, %1079
  %1085 = phi i32 [ %1077, %1079 ], [ %1083, %1082 ]
  %1086 = load ptr, ptr %712, align 8
  %1087 = sub i32 %1061, %1085
  %1088 = getelementptr %struct.ubifs_lpt_lprops, ptr %1086, i32 %1087
  store i32 %1075, ptr %1088, align 4
  %1089 = load ptr, ptr %712, align 8
  %1090 = load i32, ptr %710, align 8
  %1091 = sub i32 %1061, %1090
  %1092 = getelementptr %struct.ubifs_lpt_lprops, ptr %1089, i32 %1091, i32 1
  %1093 = load i32, ptr %1092, align 4
  %1094 = add i32 %1076, %1093
  store i32 %1094, ptr %1092, align 4
  %1095 = load i32, ptr %686, align 8
  %1096 = sub i32 %1095, %1062
  %1097 = load ptr, ptr %614, align 4
  %1098 = load i8, ptr @ubifs_dbg, align 4
  %1099 = and i8 %1098, 8
  %1100 = icmp eq i8 %1099, 0
  br i1 %1100, label %1101, label %1106

1101:                                             ; preds = %1084
  %1102 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1097, i32 0, i32 19
  %1103 = load i8, ptr %1102, align 4
  %1104 = and i8 %1103, 8
  %1105 = icmp eq i8 %1104, 0
  br i1 %1105, label %1117, label %1106

1106:                                             ; preds = %1101, %1084
  %1107 = sext i32 %1096 to i64
  %1108 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1097, i32 0, i32 8
  %1109 = load i64, ptr %1108, align 8
  %1110 = add i64 %1109, %1107
  store i64 %1110, ptr %1108, align 8
  %1111 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1097, i32 0, i32 10
  %1112 = load i64, ptr %1111, align 8
  %1113 = add i64 %1112, %1107
  store i64 %1113, ptr %1111, align 8
  %1114 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1097, i32 0, i32 11
  %1115 = load i32, ptr %1114, align 8
  %1116 = add i32 %1115, 1
  store i32 %1116, ptr %1114, align 8
  br label %1117

1117:                                             ; preds = %1106, %1101
  %1118 = load i32, ptr %710, align 8
  %1119 = sub i32 %1061, %1118
  %1120 = add i32 %1119, 1
  %1121 = load i32, ptr %72, align 4
  %1122 = icmp slt i32 %1120, %1121
  br i1 %1122, label %1123, label %1125

1123:                                             ; preds = %1117
  %1124 = load ptr, ptr %712, align 8
  br label %1129

1125:                                             ; preds = %1140, %1117
  %1126 = icmp ult i32 %1119, 2147483647
  br i1 %1126, label %1127, label %1234

1127:                                             ; preds = %1125
  %1128 = load ptr, ptr %712, align 8
  br label %1143

1129:                                             ; preds = %1140, %1123
  %1130 = phi i32 [ %1120, %1123 ], [ %1141, %1140 ]
  %1131 = getelementptr %struct.ubifs_lpt_lprops, ptr %1124, i32 %1130, i32 2
  %1132 = load i8, ptr %1131, align 4
  %1133 = and i8 %1132, 3
  %1134 = icmp eq i8 %1133, 0
  br i1 %1134, label %1135, label %1140

1135:                                             ; preds = %1129
  %1136 = getelementptr %struct.ubifs_lpt_lprops, ptr %1124, i32 %1130
  %1137 = load i32, ptr %1136, align 4
  %1138 = load i32, ptr %686, align 8
  %1139 = icmp eq i32 %1137, %1138
  br i1 %1139, label %1157, label %1140

1140:                                             ; preds = %1135, %1129
  %1141 = add i32 %1130, 1
  %1142 = icmp eq i32 %1141, %1121
  br i1 %1142, label %1125, label %1129

1143:                                             ; preds = %1154, %1127
  %1144 = phi i32 [ 0, %1127 ], [ %1155, %1154 ]
  %1145 = getelementptr %struct.ubifs_lpt_lprops, ptr %1128, i32 %1144, i32 2
  %1146 = load i8, ptr %1145, align 4
  %1147 = and i8 %1146, 3
  %1148 = icmp eq i8 %1147, 0
  br i1 %1148, label %1149, label %1154

1149:                                             ; preds = %1143
  %1150 = getelementptr %struct.ubifs_lpt_lprops, ptr %1128, i32 %1144
  %1151 = load i32, ptr %1150, align 4
  %1152 = load i32, ptr %686, align 8
  %1153 = icmp eq i32 %1151, %1152
  br i1 %1153, label %1157, label %1154

1154:                                             ; preds = %1149, %1143
  %1155 = add nuw nsw i32 %1144, 1
  %1156 = icmp eq i32 %1144, %1119
  br i1 %1156, label %1234, label %1143

1157:                                             ; preds = %1149, %1135
  %1158 = phi i8 [ %1146, %1149 ], [ %1132, %1135 ]
  %1159 = phi ptr [ %1145, %1149 ], [ %1131, %1135 ]
  %1160 = phi i32 [ %1144, %1149 ], [ %1130, %1135 ]
  %1161 = or i8 %1158, 2
  store i8 %1161, ptr %1159, align 4
  %1162 = load i32, ptr %710, align 8
  %1163 = add i32 %1162, %1160
  %1164 = icmp slt i32 %1163, %1162
  br i1 %1164, label %1168, label %1165, !prof !9

1165:                                             ; preds = %1157
  %1166 = load i32, ptr %711, align 4
  %1167 = icmp sgt i32 %1163, %1166
  br i1 %1167, label %1168, label %1169, !prof !9

1168:                                             ; preds = %1165, %1157
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 294) #9
  br label %1169

1169:                                             ; preds = %1168, %1165, %1064
  %1170 = phi i32 [ %1163, %1168 ], [ %1163, %1165 ], [ %1061, %1064 ]
  %1171 = phi i32 [ 0, %1168 ], [ 0, %1165 ], [ %1062, %1064 ]
  store i32 %1170, ptr %716, align 8
  store i32 %1171, ptr %717, align 4
  %1172 = load i32, ptr %683, align 8
  %1173 = add i32 %1172, %1171
  %1174 = load ptr, ptr %614, align 4
  %1175 = load i8, ptr @ubifs_dbg, align 4
  %1176 = and i8 %1175, 8
  %1177 = icmp eq i8 %1176, 0
  br i1 %1177, label %1178, label %1183

1178:                                             ; preds = %1169
  %1179 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1174, i32 0, i32 19
  %1180 = load i8, ptr %1179, align 4
  %1181 = and i8 %1180, 8
  %1182 = icmp eq i8 %1181, 0
  br i1 %1182, label %1188, label %1183

1183:                                             ; preds = %1178, %1169
  %1184 = sext i32 %1172 to i64
  %1185 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1174, i32 0, i32 8
  %1186 = load i64, ptr %1185, align 8
  %1187 = add i64 %1186, %1184
  store i64 %1187, ptr %1185, align 8
  br label %1188

1188:                                             ; preds = %1183, %1178, %1060
  %1189 = phi i32 [ %1061, %1060 ], [ %1170, %1178 ], [ %1170, %1183 ]
  %1190 = phi i32 [ %1062, %1060 ], [ %1173, %1178 ], [ %1173, %1183 ]
  %1191 = load i32, ptr %709, align 8
  %1192 = add i32 %1190, -1
  %1193 = add i32 %1192, %1191
  %1194 = sub i32 0, %1191
  %1195 = and i32 %1193, %1194
  %1196 = load i32, ptr %686, align 8
  %1197 = sub i32 %1196, %1195
  %1198 = sub i32 %1195, %1190
  %1199 = load i32, ptr %710, align 8
  %1200 = icmp sgt i32 %1199, %1189
  br i1 %1200, label %1204, label %1201, !prof !9

1201:                                             ; preds = %1188
  %1202 = load i32, ptr %711, align 4
  %1203 = icmp slt i32 %1202, %1189
  br i1 %1203, label %1204, label %1206, !prof !9

1204:                                             ; preds = %1201, %1188
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 134) #9
  %1205 = load i32, ptr %710, align 8
  br label %1206

1206:                                             ; preds = %1204, %1201
  %1207 = phi i32 [ %1199, %1201 ], [ %1205, %1204 ]
  %1208 = load ptr, ptr %712, align 8
  %1209 = sub i32 %1189, %1207
  %1210 = getelementptr %struct.ubifs_lpt_lprops, ptr %1208, i32 %1209
  store i32 %1197, ptr %1210, align 4
  %1211 = load ptr, ptr %712, align 8
  %1212 = load i32, ptr %710, align 8
  %1213 = sub i32 %1189, %1212
  %1214 = getelementptr %struct.ubifs_lpt_lprops, ptr %1211, i32 %1213, i32 1
  %1215 = load i32, ptr %1214, align 4
  %1216 = add i32 %1215, %1198
  store i32 %1216, ptr %1214, align 4
  %1217 = load ptr, ptr %614, align 4
  %1218 = load i8, ptr @ubifs_dbg, align 4
  %1219 = and i8 %1218, 8
  %1220 = icmp eq i8 %1219, 0
  br i1 %1220, label %1221, label %1226

1221:                                             ; preds = %1206
  %1222 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1217, i32 0, i32 19
  %1223 = load i8, ptr %1222, align 4
  %1224 = and i8 %1223, 8
  %1225 = icmp eq i8 %1224, 0
  br i1 %1225, label %1239, label %1226

1226:                                             ; preds = %1221, %1206
  %1227 = sext i32 %1198 to i64
  %1228 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1217, i32 0, i32 8
  %1229 = load i64, ptr %1228, align 8
  %1230 = add i64 %1229, %1227
  store i64 %1230, ptr %1228, align 8
  %1231 = getelementptr inbounds %struct.ubifs_debug_info, ptr %1217, i32 0, i32 10
  %1232 = load i64, ptr %1231, align 8
  %1233 = add i64 %1232, %1227
  store i64 %1233, ptr %1231, align 8
  br label %1239

1234:                                             ; preds = %1154, %1125, %1026, %997, %837, %808
  %1235 = phi i32 [ %897, %997 ], [ 0, %1125 ], [ 0, %1154 ], [ %897, %1026 ], [ %744, %837 ], [ %744, %808 ]
  %1236 = phi i32 [ %899, %997 ], [ %1061, %1125 ], [ %1061, %1154 ], [ %899, %1026 ], [ %752, %837 ], [ %752, %808 ]
  %1237 = phi i32 [ %912, %997 ], [ %1062, %1125 ], [ %1062, %1154 ], [ %912, %1026 ], [ %751, %837 ], [ %751, %808 ]
  %1238 = phi i32 [ 0, %997 ], [ 1, %1125 ], [ 1, %1154 ], [ 0, %1026 ], [ %750, %837 ], [ %750, %808 ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %1236, i32 noundef %1237, i32 noundef %738, i32 noundef %1235, i32 noundef %1238) #9
  tail call void @ubifs_dump_lpt_info(ptr noundef %0) #9
  tail call void @ubifs_dump_lpt_lebs(ptr noundef %0) #9
  tail call void @dump_stack() #10
  br label %1258

1239:                                             ; preds = %1226, %1221
  %1240 = tail call i32 @dbg_chk_lpt_sz(ptr noundef %0, i32 noundef 3, i32 noundef %1195) #9
  %1241 = icmp eq i32 %1240, 0
  br i1 %1241, label %1242, label %1258

1242:                                             ; preds = %1239, %645
  %1243 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 46
  %1244 = load ptr, ptr %1243, align 4
  %1245 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1244, i32 0, i32 30
  %1246 = tail call i32 @ubifs_lpt_calc_hash(ptr noundef %0, ptr noundef %1245) #9
  %1247 = icmp eq i32 %1246, 0
  br i1 %1247, label %1248, label %1258

1248:                                             ; preds = %1242
  %1249 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 169
  %1250 = load ptr, ptr %1249, align 4
  %1251 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  %1252 = load ptr, ptr %1251, align 8
  %1253 = load i32, ptr %72, align 4
  %1254 = mul i32 %1253, 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %1250, ptr align 4 %1252, i32 %1254, i1 false)
  %1255 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 149
  %1256 = load i32, ptr %1255, align 4
  %1257 = and i32 %1256, -4
  store i32 %1257, ptr %1255, align 4
  br label %1258

1258:                                             ; preds = %1248, %1242, %1239, %1234, %642, %630, %169, %111, %5, %1
  %1259 = phi i32 [ %3, %1 ], [ %6, %5 ], [ %1240, %1239 ], [ %1246, %1242 ], [ 0, %1248 ], [ %170, %169 ], [ 0, %111 ], [ -22, %630 ], [ -22, %642 ], [ -28, %1234 ]
  tail call void @mutex_unlock(ptr noundef %2) #9
  br label %1260

1260:                                             ; preds = %1258, %66
  %1261 = phi i32 [ %1259, %1258 ], [ %67, %66 ]
  ret i32 %1261
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dbg_chk_lpt_free_spc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @ubifs_dbg, align 4
  %3 = and i8 %2, 8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ubifs_debug_info, ptr %7, i32 0, i32 19
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %59, label %12

12:                                               ; preds = %5, %1
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 56
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %20 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 147
  %21 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %22 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 148
  br label %23

23:                                               ; preds = %49, %16
  %24 = phi i32 [ 0, %16 ], [ %51, %49 ]
  %25 = phi i64 [ 0, %16 ], [ %50, %49 ]
  %26 = getelementptr %struct.ubifs_lpt_lprops, ptr %18, i32 %24
  %27 = getelementptr %struct.ubifs_lpt_lprops, ptr %18, i32 %24, i32 2
  %28 = load i8, ptr %27, align 4
  %29 = and i8 %28, 3
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %23
  %32 = load i32, ptr %19, align 8
  %33 = add i32 %32, %24
  %34 = load i32, ptr %20, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, ptr %21, align 8
  %38 = load i32, ptr %22, align 8
  %39 = sub i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = add i64 %25, %40
  br label %49

42:                                               ; preds = %31
  %43 = load i32, ptr %26, align 4
  %44 = load i32, ptr %21, align 8
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = sext i32 %43 to i64
  %48 = add i64 %25, %47
  br label %49

49:                                               ; preds = %46, %42, %36, %23
  %50 = phi i64 [ %25, %23 ], [ %41, %36 ], [ %48, %46 ], [ %25, %42 ]
  %51 = add nuw nsw i32 %24, 1
  %52 = icmp eq i32 %51, %14
  br i1 %52, label %53, label %23

53:                                               ; preds = %49, %12
  %54 = phi i64 [ 0, %12 ], [ %50, %49 ]
  %55 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 153
  %56 = load i64, ptr %55, align 8
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.3, i64 noundef %54, i64 noundef %56) #9
  tail call void @ubifs_dump_lpt_info(ptr noundef %0) #9
  tail call void @ubifs_dump_lpt_lebs(ptr noundef %0)
  tail call void @dump_stack() #10
  br label %59

59:                                               ; preds = %58, %53, %5
  %60 = phi i32 [ -22, %58 ], [ 0, %5 ], [ 0, %53 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dbg_check_ltab(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = load i8, ptr @ubifs_dbg, align 4
  %5 = and i8 %4, 8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ubifs_debug_info, ptr %9, i32 0, i32 19
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %326, label %14

14:                                               ; preds = %7, %1
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 3
  %18 = sdiv i32 %17, 4
  %19 = icmp sgt i32 %17, 3
  br i1 %19, label %20, label %30

20:                                               ; preds = %26, %14
  %21 = phi i32 [ %28, %26 ], [ 0, %14 ]
  %22 = tail call ptr @ubifs_pnode_lookup(ptr noundef %0, i32 noundef %21) #9
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = ptrtoint ptr %22 to i32
  br label %326

26:                                               ; preds = %20
  %27 = tail call i32 @__cond_resched() #9
  %28 = add nuw nsw i32 %21, 1
  %29 = icmp eq i32 %28, %18
  br i1 %29, label %30, label %20

30:                                               ; preds = %26, %14
  %31 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 156
  %32 = load ptr, ptr %31, align 8
  %33 = tail call i32 @dbg_check_lpt_nodes(ptr noundef %0, ptr noundef %32, i32 noundef 0, i32 noundef 0) #9
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %326

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 58
  %39 = load i32, ptr %38, align 4
  %40 = icmp sgt i32 %37, %39
  br i1 %40, label %326, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %43 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %44 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %45 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 134
  %46 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 139
  %47 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 171
  %48 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 172
  %49 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 149
  %50 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 138
  %51 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 166
  %52 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 167
  %53 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 137
  %54 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 136
  %55 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 142
  %56 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 145
  %57 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 146
  %58 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  br label %59

59:                                               ; preds = %322, %41
  %60 = phi i32 [ %37, %41 ], [ %323, %322 ]
  %61 = load i32, ptr %42, align 8
  %62 = load i8, ptr @ubifs_dbg, align 4
  %63 = and i8 %62, 8
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load ptr, ptr %43, align 4
  %67 = getelementptr inbounds %struct.ubifs_debug_info, ptr %66, i32 0, i32 19
  %68 = load i8, ptr %67, align 4
  %69 = and i8 %68, 8
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %322, label %71

71:                                               ; preds = %65, %59
  %72 = call noalias ptr @__vmalloc(i32 noundef %61, i32 noundef 3136) #11
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.23) #9
  br label %322

75:                                               ; preds = %71
  %76 = load i32, ptr %42, align 8
  %77 = call i32 @ubifs_leb_read(ptr noundef %0, i32 noundef %60, ptr noundef nonnull %72, i32 noundef 0, i32 noundef %76, i32 noundef 1) #9
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %316

79:                                               ; preds = %311, %75
  %80 = phi i32 [ %315, %311 ], [ %61, %75 ]
  %81 = phi i32 [ %313, %311 ], [ 0, %75 ]
  %82 = phi ptr [ %314, %311 ], [ %72, %75 ]
  %83 = call fastcc i32 @is_a_node(ptr noundef %0, ptr noundef %82, i32 noundef %80) #9
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %129

85:                                               ; preds = %79
  %86 = load i32, ptr %44, align 8
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %96, label %88

88:                                               ; preds = %85
  %89 = load i32, ptr %42, align 8
  %90 = sub i32 %89, %80
  %91 = add i32 %86, -1
  %92 = add i32 %91, %90
  %93 = sub i32 0, %86
  %94 = and i32 %92, %93
  %95 = icmp eq i32 %94, %90
  br i1 %95, label %96, label %126

96:                                               ; preds = %88, %85
  %97 = icmp sgt i32 %80, 0
  br i1 %97, label %101, label %109

98:                                               ; preds = %101
  %99 = add nuw nsw i32 %102, 1
  %100 = icmp eq i32 %99, %80
  br i1 %100, label %109, label %101

101:                                              ; preds = %98, %96
  %102 = phi i32 [ %99, %98 ], [ 0, %96 ]
  %103 = getelementptr i8, ptr %82, i32 %102
  %104 = load i8, ptr %103, align 1
  %105 = icmp eq i8 %104, -1
  br i1 %105, label %98, label %106

106:                                              ; preds = %101
  %107 = load i32, ptr %42, align 8
  %108 = sub i32 %107, %80
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %60, i32 noundef %108) #9
  br label %109

109:                                              ; preds = %106, %98, %96
  %110 = phi i32 [ -22, %106 ], [ 0, %96 ], [ 0, %98 ]
  %111 = load i32, ptr %36, align 8
  %112 = sub i32 %60, %111
  %113 = load ptr, ptr %58, align 8
  %114 = getelementptr %struct.ubifs_lpt_lprops, ptr %113, i32 %112
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %80, %115
  br i1 %116, label %119, label %117

117:                                              ; preds = %109
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %60, i32 noundef %80, i32 noundef %115) #9
  %118 = load ptr, ptr %58, align 8
  br label %119

119:                                              ; preds = %117, %109
  %120 = phi ptr [ %118, %117 ], [ %113, %109 ]
  %121 = phi i32 [ -22, %117 ], [ %110, %109 ]
  %122 = getelementptr %struct.ubifs_lpt_lprops, ptr %120, i32 %112, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %81, %123
  br i1 %124, label %318, label %125

125:                                              ; preds = %119
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %60, i32 noundef %81, i32 noundef %123) #9
  br label %316

126:                                              ; preds = %88
  %127 = sub i32 %94, %90
  %128 = add i32 %127, %81
  br label %311

129:                                              ; preds = %79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  %130 = getelementptr i8, ptr %82, i32 2
  store ptr %130, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4
  %131 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 4) #9
  %132 = load i32, ptr %45, align 8
  %133 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %132) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  switch i32 %131, label %308 [
    i32 1, label %134
    i32 0, label %140
    i32 2, label %148
    i32 3, label %152
  ]

134:                                              ; preds = %129
  %135 = load i32, ptr %54, align 8
  %136 = load i32, ptr %42, align 8
  %137 = sub i32 %136, %80
  %138 = load ptr, ptr %31, align 8
  %139 = icmp eq ptr %138, null
  br i1 %139, label %308, label %156

140:                                              ; preds = %129
  %141 = load i32, ptr %53, align 4
  %142 = load i32, ptr %42, align 8
  %143 = sub i32 %142, %80
  %144 = load i32, ptr %15, align 4
  %145 = add i32 %144, 3
  %146 = sdiv i32 %145, 4
  %147 = icmp sgt i32 %145, 3
  br i1 %147, label %262, label %308

148:                                              ; preds = %129
  %149 = load i32, ptr %50, align 8
  %150 = load i32, ptr %51, align 8
  %151 = icmp eq i32 %150, %60
  br i1 %151, label %287, label %308

152:                                              ; preds = %129
  %153 = load i32, ptr %46, align 4
  %154 = load i32, ptr %47, align 4
  %155 = icmp eq i32 %154, %60
  br i1 %155, label %295, label %308

156:                                              ; preds = %134
  %157 = load i32, ptr %55, align 8
  %158 = icmp sgt i32 %157, 1
  br i1 %158, label %159, label %184

159:                                              ; preds = %156
  %160 = add nsw i32 %157, -1
  br label %161

161:                                              ; preds = %180, %159
  %162 = phi i32 [ %163, %180 ], [ 0, %159 ]
  %163 = phi i32 [ %182, %180 ], [ 1, %159 ]
  %164 = phi ptr [ %181, %180 ], [ %138, %159 ]
  %165 = getelementptr %struct.ubifs_nnode, ptr %164, i32 0, i32 6, i32 0, i32 2
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %180

168:                                              ; preds = %161
  %169 = getelementptr %struct.ubifs_nnode, ptr %164, i32 0, i32 6, i32 1, i32 2
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %180

172:                                              ; preds = %168
  %173 = getelementptr %struct.ubifs_nnode, ptr %164, i32 0, i32 6, i32 2, i32 2
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = getelementptr %struct.ubifs_nnode, ptr %164, i32 0, i32 6, i32 3, i32 2
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %184, label %180

180:                                              ; preds = %176, %172, %168, %161
  %181 = phi ptr [ %166, %161 ], [ %170, %168 ], [ %174, %172 ], [ %178, %176 ]
  %182 = add nuw nsw i32 %163, 1
  %183 = icmp eq i32 %182, %157
  br i1 %183, label %184, label %161

184:                                              ; preds = %180, %176, %156
  %185 = phi ptr [ %138, %156 ], [ %164, %176 ], [ %181, %180 ]
  %186 = phi i32 [ 0, %156 ], [ %162, %176 ], [ %160, %180 ]
  br label %187

187:                                              ; preds = %254, %184
  %188 = phi ptr [ %256, %254 ], [ %185, %184 ]
  %189 = phi i32 [ %255, %254 ], [ %186, %184 ]
  %190 = call i32 @__cond_resched() #9
  %191 = load ptr, ptr %188, align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %203, label %193

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.ubifs_nnode, ptr %188, i32 0, i32 3
  %195 = load i32, ptr %194, align 4
  %196 = getelementptr %struct.ubifs_nnode, ptr %191, i32 0, i32 6, i32 %195
  %197 = load i32, ptr %196, align 4
  %198 = icmp eq i32 %197, %60
  br i1 %198, label %199, label %209

199:                                              ; preds = %193
  %200 = getelementptr %struct.ubifs_nnode, ptr %191, i32 0, i32 6, i32 %195, i32 1
  %201 = load i32, ptr %200, align 4
  %202 = icmp eq i32 %201, %137
  br i1 %202, label %258, label %209

203:                                              ; preds = %187
  %204 = load i32, ptr %56, align 4
  %205 = icmp eq i32 %204, %60
  br i1 %205, label %206, label %308

206:                                              ; preds = %203
  %207 = load i32, ptr %57, align 8
  %208 = icmp eq i32 %207, %137
  br i1 %208, label %258, label %308

209:                                              ; preds = %199, %193
  %210 = icmp eq i32 %195, 3
  br i1 %210, label %252, label %211

211:                                              ; preds = %209
  %212 = add i32 %195, 1
  %213 = icmp slt i32 %212, 4
  br i1 %213, label %217, label %222

214:                                              ; preds = %217
  %215 = add i32 %218, 1
  %216 = icmp eq i32 %215, 4
  br i1 %216, label %252, label %217

217:                                              ; preds = %214, %211
  %218 = phi i32 [ %215, %214 ], [ %212, %211 ]
  %219 = getelementptr %struct.ubifs_nnode, ptr %191, i32 0, i32 6, i32 %218, i32 2
  %220 = load ptr, ptr %219, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %214, label %222

222:                                              ; preds = %217, %211
  %223 = phi ptr [ %188, %211 ], [ %220, %217 ]
  %224 = add i32 %189, 1
  %225 = load i32, ptr %55, align 8
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %254

227:                                              ; preds = %222
  %228 = add nsw i32 %225, -1
  br label %229

229:                                              ; preds = %248, %227
  %230 = phi i32 [ %231, %248 ], [ %189, %227 ]
  %231 = phi i32 [ %250, %248 ], [ %224, %227 ]
  %232 = phi ptr [ %249, %248 ], [ %223, %227 ]
  %233 = getelementptr %struct.ubifs_nnode, ptr %232, i32 0, i32 6, i32 0, i32 2
  %234 = load ptr, ptr %233, align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %248

236:                                              ; preds = %229
  %237 = getelementptr %struct.ubifs_nnode, ptr %232, i32 0, i32 6, i32 1, i32 2
  %238 = load ptr, ptr %237, align 4
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %248

240:                                              ; preds = %236
  %241 = getelementptr %struct.ubifs_nnode, ptr %232, i32 0, i32 6, i32 2, i32 2
  %242 = load ptr, ptr %241, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %248

244:                                              ; preds = %240
  %245 = getelementptr %struct.ubifs_nnode, ptr %232, i32 0, i32 6, i32 3, i32 2
  %246 = load ptr, ptr %245, align 4
  %247 = icmp eq ptr %246, null
  br i1 %247, label %254, label %248

248:                                              ; preds = %244, %240, %236, %229
  %249 = phi ptr [ %234, %229 ], [ %238, %236 ], [ %242, %240 ], [ %246, %244 ]
  %250 = add i32 %231, 1
  %251 = icmp eq i32 %250, %225
  br i1 %251, label %254, label %229

252:                                              ; preds = %214, %209
  %253 = add i32 %189, -1
  br label %254

254:                                              ; preds = %252, %248, %244, %222
  %255 = phi i32 [ %253, %252 ], [ %189, %222 ], [ %230, %244 ], [ %228, %248 ]
  %256 = phi ptr [ %191, %252 ], [ %223, %222 ], [ %232, %244 ], [ %249, %248 ]
  %257 = icmp eq ptr %256, null
  br i1 %257, label %308, label %187

258:                                              ; preds = %206, %199
  %259 = getelementptr inbounds %struct.ubifs_nnode, ptr %188, i32 0, i32 2
  %260 = load volatile i32, ptr %259, align 4
  %261 = and i32 %260, 1
  br label %304

262:                                              ; preds = %284, %140
  %263 = phi i32 [ %285, %284 ], [ 0, %140 ]
  %264 = call i32 @__cond_resched() #9
  %265 = call ptr @ubifs_pnode_lookup(ptr noundef %0, i32 noundef %263) #9
  %266 = icmp ugt ptr %265, inttoptr (i32 -4096 to ptr)
  br i1 %266, label %267, label %269

267:                                              ; preds = %262
  %268 = ptrtoint ptr %265 to i32
  br label %304

269:                                              ; preds = %262
  %270 = load ptr, ptr %265, align 4
  %271 = getelementptr inbounds %struct.ubifs_pnode, ptr %265, i32 0, i32 3
  %272 = load i32, ptr %271, align 4
  %273 = getelementptr %struct.ubifs_nnode, ptr %270, i32 0, i32 6, i32 %272
  %274 = load i32, ptr %273, align 4
  %275 = icmp eq i32 %274, %60
  br i1 %275, label %276, label %284

276:                                              ; preds = %269
  %277 = getelementptr %struct.ubifs_nnode, ptr %270, i32 0, i32 6, i32 %272, i32 1
  %278 = load i32, ptr %277, align 4
  %279 = icmp eq i32 %278, %143
  br i1 %279, label %280, label %284

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.ubifs_pnode, ptr %265, i32 0, i32 2
  %282 = load volatile i32, ptr %281, align 4
  %283 = and i32 %282, 1
  br label %304

284:                                              ; preds = %276, %269
  %285 = add nuw nsw i32 %263, 1
  %286 = icmp eq i32 %285, %146
  br i1 %286, label %308, label %262

287:                                              ; preds = %148
  %288 = load i32, ptr %42, align 8
  %289 = sub i32 %288, %80
  %290 = load i32, ptr %52, align 4
  %291 = icmp eq i32 %290, %289
  br i1 %291, label %292, label %308

292:                                              ; preds = %287
  %293 = load i32, ptr %49, align 4
  %294 = and i32 %293, 1
  br label %304

295:                                              ; preds = %152
  %296 = load i32, ptr %42, align 8
  %297 = sub i32 %296, %80
  %298 = load i32, ptr %48, align 8
  %299 = icmp eq i32 %298, %297
  br i1 %299, label %300, label %308

300:                                              ; preds = %295
  %301 = load i32, ptr %49, align 4
  %302 = lshr i32 %301, 1
  %303 = and i32 %302, 1
  br label %304

304:                                              ; preds = %300, %292, %280, %267, %258
  %305 = phi i32 [ %135, %258 ], [ %141, %267 ], [ %141, %280 ], [ %149, %292 ], [ %153, %300 ]
  %306 = phi i32 [ %261, %258 ], [ %268, %267 ], [ %283, %280 ], [ %294, %292 ], [ %303, %300 ]
  %307 = icmp eq i32 %306, 1
  br i1 %307, label %308, label %311

308:                                              ; preds = %304, %295, %287, %284, %254, %206, %203, %152, %148, %140, %134, %129
  %309 = phi i32 [ %305, %304 ], [ %153, %152 ], [ %153, %295 ], [ %149, %148 ], [ %149, %287 ], [ %141, %140 ], [ %135, %203 ], [ %135, %206 ], [ %135, %134 ], [ 0, %129 ], [ %135, %254 ], [ %141, %284 ]
  %310 = add i32 %309, %81
  br label %311

311:                                              ; preds = %308, %304, %126
  %312 = phi i32 [ %127, %126 ], [ %309, %308 ], [ %305, %304 ]
  %313 = phi i32 [ %128, %126 ], [ %310, %308 ], [ %81, %304 ]
  %314 = getelementptr i8, ptr %82, i32 %312
  %315 = sub i32 %80, %312
  br label %79

316:                                              ; preds = %125, %75
  %317 = phi i32 [ -22, %125 ], [ %77, %75 ]
  call void @vfree(ptr noundef nonnull %72) #9
  br label %320

318:                                              ; preds = %119
  call void @vfree(ptr noundef nonnull %72) #9
  %319 = icmp eq i32 %121, 0
  br i1 %319, label %322, label %320

320:                                              ; preds = %318, %316
  %321 = phi i32 [ %317, %316 ], [ %121, %318 ]
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %60) #9
  br label %326

322:                                              ; preds = %318, %74, %65
  %323 = add i32 %60, 1
  %324 = load i32, ptr %38, align 4
  %325 = icmp sgt i32 %323, %324
  br i1 %325, label %326, label %59

326:                                              ; preds = %322, %320, %35, %30, %24, %7
  %327 = phi i32 [ %321, %320 ], [ 0, %7 ], [ %33, %30 ], [ %25, %24 ], [ 0, %35 ], [ 0, %322 ]
  ret i32 %327
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lpt_gc(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 144
  tail call void @mutex_lock(ptr noundef %4) #9
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 56
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef %4) #9
  br label %225

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  %11 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %12 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 147
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  br label %14

14:                                               ; preds = %42, %9
  %15 = phi i32 [ 0, %9 ], [ %44, %42 ]
  %16 = phi i32 [ -1, %9 ], [ %43, %42 ]
  %17 = phi i32 [ 0, %9 ], [ %45, %42 ]
  %18 = load ptr, ptr %10, align 8
  %19 = getelementptr %struct.ubifs_lpt_lprops, ptr %18, i32 %17, i32 2
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23, !prof !8

23:                                               ; preds = %14
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1156) #9
  br label %24

24:                                               ; preds = %23, %14
  %25 = load i32, ptr %11, align 8
  %26 = add i32 %25, %17
  %27 = load i32, ptr %12, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %42, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %10, align 8
  %31 = getelementptr %struct.ubifs_lpt_lprops, ptr %30, i32 %17
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.ubifs_lpt_lprops, ptr %30, i32 %17, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %32
  %36 = load i32, ptr %13, align 8
  %37 = icmp ne i32 %35, %36
  %38 = icmp sgt i32 %34, %15
  %39 = select i1 %37, i1 %38, i1 false
  %40 = select i1 %39, i32 %26, i32 %16
  %41 = select i1 %39, i32 %34, i32 %15
  br label %42

42:                                               ; preds = %29, %24
  %43 = phi i32 [ %16, %24 ], [ %40, %29 ]
  %44 = phi i32 [ %15, %24 ], [ %41, %29 ]
  %45 = add nuw nsw i32 %17, 1
  %46 = load i32, ptr %5, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %14, label %48

48:                                               ; preds = %42
  tail call void @mutex_unlock(ptr noundef %4) #9
  %49 = icmp eq i32 %43, -1
  br i1 %49, label %225, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 155
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 @ubifs_leb_read(ptr noundef %0, i32 noundef %43, ptr noundef %54, i32 noundef 0, i32 noundef %52, i32 noundef 1) #9
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %225

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 134
  %59 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 139
  %60 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 138
  %61 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 137
  %62 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 136
  %63 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 171
  %64 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 172
  %65 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 149
  %66 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 166
  %67 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 167
  %68 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 156
  %69 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 145
  %70 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 146
  %71 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 150
  %72 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  br label %73

73:                                               ; preds = %216, %57
  %74 = phi i32 [ %52, %57 ], [ %219, %216 ]
  %75 = phi ptr [ %54, %57 ], [ %218, %216 ]
  %76 = call fastcc i32 @is_a_node(ptr noundef %0, ptr noundef %75, i32 noundef %74) #9
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = load i32, ptr %72, align 8
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %225, label %81

81:                                               ; preds = %78
  %82 = load i32, ptr %51, align 8
  %83 = sub i32 %82, %74
  %84 = add i32 %79, -1
  %85 = add i32 %84, %83
  %86 = sub i32 0, %79
  %87 = and i32 %85, %86
  %88 = sub i32 %87, %83
  %89 = icmp eq i32 %87, %83
  br i1 %89, label %225, label %216

90:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  %91 = getelementptr i8, ptr %75, i32 2
  store ptr %91, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4
  %92 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 4) #9
  %93 = load i32, ptr %58, align 8
  %94 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %93) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  switch i32 %92, label %95 [
    i32 1, label %101
    i32 0, label %98
    i32 2, label %99
    i32 3, label %100
  ]

95:                                               ; preds = %90
  %96 = load i32, ptr %51, align 8
  %97 = sub i32 %96, %74
  br label %107

98:                                               ; preds = %90
  br label %101

99:                                               ; preds = %90
  br label %101

100:                                              ; preds = %90
  br label %101

101:                                              ; preds = %100, %99, %98, %90
  %102 = phi ptr [ %59, %100 ], [ %60, %99 ], [ %61, %98 ], [ %62, %90 ]
  %103 = load i32, ptr %102, align 4
  %104 = load i32, ptr %51, align 8
  %105 = sub i32 %104, %74
  %106 = icmp eq i32 %103, 0
  br i1 %106, label %107, label %109, !prof !9

107:                                              ; preds = %101, %95
  %108 = phi i32 [ %97, %95 ], [ %105, %101 ]
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 1131) #9
  br label %109

109:                                              ; preds = %107, %101
  %110 = phi i32 [ %108, %107 ], [ %105, %101 ]
  %111 = phi i32 [ 0, %107 ], [ %103, %101 ]
  call void @mutex_lock(ptr noundef %4) #9
  switch i32 %92, label %223 [
    i32 1, label %112
    i32 0, label %174
    i32 2, label %189
    i32 3, label %202
  ]

112:                                              ; preds = %109
  %113 = load ptr, ptr %68, align 8
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %120, %112
  %116 = phi ptr [ %113, %112 ], [ %121, %120 ]
  br label %124

117:                                              ; preds = %112
  %118 = call i32 @ubifs_read_nnode(ptr noundef %0, ptr noundef null, i32 noundef 0) #9
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load ptr, ptr %68, align 8
  br label %115

122:                                              ; preds = %117
  %123 = inttoptr i32 %118 to ptr
  br label %133

124:                                              ; preds = %128, %115
  %125 = phi i32 [ %129, %128 ], [ %94, %115 ]
  %126 = phi ptr [ %131, %128 ], [ %116, %115 ]
  %127 = icmp ult i32 %125, 4
  br i1 %127, label %133, label %128

128:                                              ; preds = %124
  %129 = ashr i32 %125, 2
  %130 = and i32 %125, 3
  %131 = call ptr @ubifs_get_nnode(ptr noundef %0, ptr noundef %126, i32 noundef %130) #9
  %132 = icmp ugt ptr %131, inttoptr (i32 -4096 to ptr)
  br i1 %132, label %133, label %124

133:                                              ; preds = %128, %124, %122
  %134 = phi ptr [ %123, %122 ], [ %126, %124 ], [ %131, %128 ]
  %135 = icmp ugt ptr %134, inttoptr (i32 -4096 to ptr)
  br i1 %135, label %220, label %136

136:                                              ; preds = %133
  %137 = load ptr, ptr %134, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %149, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.ubifs_nnode, ptr %134, i32 0, i32 3
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr %struct.ubifs_nnode, ptr %137, i32 0, i32 6, i32 %141
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, %43
  br i1 %144, label %145, label %215

145:                                              ; preds = %139
  %146 = getelementptr %struct.ubifs_nnode, ptr %137, i32 0, i32 6, i32 %141, i32 1
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, %110
  br i1 %148, label %155, label %215

149:                                              ; preds = %136
  %150 = load i32, ptr %69, align 4
  %151 = icmp eq i32 %150, %43
  br i1 %151, label %152, label %215

152:                                              ; preds = %149
  %153 = load i32, ptr %70, align 8
  %154 = icmp eq i32 %153, %110
  br i1 %154, label %155, label %215

155:                                              ; preds = %152, %145
  %156 = getelementptr inbounds %struct.ubifs_nnode, ptr %134, i32 0, i32 2
  %157 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %156) #9
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %215

159:                                              ; preds = %155
  %160 = load i32, ptr %71, align 8
  %161 = add i32 %160, 1
  store i32 %161, ptr %71, align 8
  call void @ubifs_add_nnode_dirt(ptr noundef %0, ptr noundef %134) #9
  %162 = load ptr, ptr %134, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %215, label %164

164:                                              ; preds = %169, %159
  %165 = phi ptr [ %172, %169 ], [ %162, %159 ]
  %166 = getelementptr inbounds %struct.ubifs_nnode, ptr %165, i32 0, i32 2
  %167 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %166) #9
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %215

169:                                              ; preds = %164
  %170 = load i32, ptr %71, align 8
  %171 = add i32 %170, 1
  store i32 %171, ptr %71, align 8
  call void @ubifs_add_nnode_dirt(ptr noundef %0, ptr noundef nonnull %165) #9
  %172 = load ptr, ptr %165, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %215, label %164

174:                                              ; preds = %109
  %175 = call ptr @ubifs_pnode_lookup(ptr noundef %0, i32 noundef %94) #9
  %176 = icmp ugt ptr %175, inttoptr (i32 -4096 to ptr)
  br i1 %176, label %220, label %177

177:                                              ; preds = %174
  %178 = load ptr, ptr %175, align 4
  %179 = getelementptr inbounds %struct.ubifs_pnode, ptr %175, i32 0, i32 3
  %180 = load i32, ptr %179, align 4
  %181 = getelementptr %struct.ubifs_nnode, ptr %178, i32 0, i32 6, i32 %180
  %182 = load i32, ptr %181, align 4
  %183 = icmp eq i32 %182, %43
  br i1 %183, label %184, label %215

184:                                              ; preds = %177
  %185 = getelementptr %struct.ubifs_nnode, ptr %178, i32 0, i32 6, i32 %180, i32 1
  %186 = load i32, ptr %185, align 4
  %187 = icmp eq i32 %186, %110
  br i1 %187, label %188, label %215

188:                                              ; preds = %184
  call fastcc void @do_make_pnode_dirty(ptr noundef %0, ptr noundef %175) #9
  br label %215

189:                                              ; preds = %109
  %190 = load i32, ptr %66, align 8
  %191 = icmp eq i32 %190, %43
  br i1 %191, label %192, label %215

192:                                              ; preds = %189
  %193 = load i32, ptr %67, align 4
  %194 = icmp eq i32 %193, %110
  br i1 %194, label %195, label %215

195:                                              ; preds = %192
  %196 = load i32, ptr %65, align 4
  %197 = and i32 %196, 1
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %215

199:                                              ; preds = %195
  %200 = or i32 %196, 1
  store i32 %200, ptr %65, align 4
  %201 = load i32, ptr %60, align 8
  call void @ubifs_add_lpt_dirt(ptr noundef %0, i32 noundef %43, i32 noundef %201) #9
  br label %215

202:                                              ; preds = %109
  %203 = load i32, ptr %63, align 4
  %204 = icmp eq i32 %203, %43
  br i1 %204, label %205, label %215

205:                                              ; preds = %202
  %206 = load i32, ptr %64, align 8
  %207 = icmp eq i32 %206, %110
  br i1 %207, label %208, label %215

208:                                              ; preds = %205
  %209 = load i32, ptr %65, align 4
  %210 = and i32 %209, 2
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %208
  %213 = or i32 %209, 2
  store i32 %213, ptr %65, align 4
  %214 = load i32, ptr %59, align 4
  call void @ubifs_add_lpt_dirt(ptr noundef %0, i32 noundef %43, i32 noundef %214) #9
  br label %215

215:                                              ; preds = %212, %208, %205, %202, %199, %195, %192, %189, %188, %184, %177, %169, %164, %159, %155, %152, %149, %145, %139
  call void @mutex_unlock(ptr noundef %4) #9
  br label %216

216:                                              ; preds = %215, %81
  %217 = phi i32 [ %111, %215 ], [ %88, %81 ]
  %218 = getelementptr i8, ptr %75, i32 %217
  %219 = sub i32 %74, %217
  br label %73

220:                                              ; preds = %174, %133
  %221 = phi ptr [ %134, %133 ], [ %175, %174 ]
  %222 = ptrtoint ptr %221 to i32
  br label %223

223:                                              ; preds = %220, %109
  %224 = phi i32 [ %222, %220 ], [ -22, %109 ]
  call void @mutex_unlock(ptr noundef %4) #9
  br label %225

225:                                              ; preds = %223, %81, %78, %50, %48, %8
  %226 = phi i32 [ -28, %48 ], [ %55, %50 ], [ %224, %223 ], [ -28, %8 ], [ 0, %78 ], [ 0, %81 ]
  ret i32 %226
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lpt_tgc_start(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 56
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %42

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 147
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  br label %10

10:                                               ; preds = %38, %5
  %11 = phi i32 [ %3, %5 ], [ %39, %38 ]
  %12 = phi i32 [ 0, %5 ], [ %40, %38 ]
  %13 = load i32, ptr %6, align 8
  %14 = add i32 %13, %12
  %15 = load i32, ptr %7, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %38, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %8, align 8
  %19 = getelementptr %struct.ubifs_lpt_lprops, ptr %18, i32 %12, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = getelementptr %struct.ubifs_lpt_lprops, ptr %18, i32 %12
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %20
  %26 = load i32, ptr %9, align 8
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = getelementptr %struct.ubifs_lpt_lprops, ptr %18, i32 %12, i32 2
  %30 = load i8, ptr %29, align 4
  %31 = or i8 %30, 1
  store i8 %31, ptr %29, align 4
  %32 = load i32, ptr %9, align 8
  %33 = load ptr, ptr %8, align 8
  %34 = getelementptr %struct.ubifs_lpt_lprops, ptr %33, i32 %12
  store i32 %32, ptr %34, align 4
  %35 = load ptr, ptr %8, align 8
  %36 = getelementptr %struct.ubifs_lpt_lprops, ptr %35, i32 %12, i32 1
  store i32 0, ptr %36, align 4
  %37 = load i32, ptr %2, align 4
  br label %38

38:                                               ; preds = %28, %22, %17, %10
  %39 = phi i32 [ %11, %17 ], [ %11, %22 ], [ %37, %28 ], [ %11, %10 ]
  %40 = add nuw nsw i32 %12, 1
  %41 = icmp slt i32 %40, %39
  br i1 %41, label %10, label %42

42:                                               ; preds = %38, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @make_tree_dirty(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @ubifs_pnode_lookup(ptr noundef %0, i32 noundef 0) #9
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i32
  br label %93

6:                                                ; preds = %88, %1
  %7 = phi ptr [ %89, %88 ], [ %2, %1 ]
  %8 = icmp eq ptr %7, null
  br i1 %8, label %93, label %9

9:                                                ; preds = %6
  tail call fastcc void @do_make_pnode_dirty(ptr noundef %0, ptr noundef nonnull %7)
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.ubifs_pnode, ptr %7, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %20, %9
  %14 = phi i32 [ %12, %9 ], [ %15, %20 ]
  %15 = add i32 %14, 1
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %10, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %88, label %29

20:                                               ; preds = %13
  %21 = getelementptr %struct.ubifs_nnode, ptr %10, i32 0, i32 6, i32 %15
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %13, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @ubifs_get_pnode(ptr noundef %0, ptr noundef %10, i32 noundef %15) #9
  br label %88

26:                                               ; preds = %34
  %27 = load ptr, ptr %30, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %88, label %29

29:                                               ; preds = %26, %17
  %30 = phi ptr [ %27, %26 ], [ %18, %17 ]
  %31 = phi ptr [ %30, %26 ], [ %10, %17 ]
  %32 = getelementptr inbounds %struct.ubifs_nnode, ptr %31, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %38, %29
  %35 = phi i32 [ %36, %38 ], [ %33, %29 ]
  %36 = add i32 %35, 1
  %37 = icmp slt i32 %36, 4
  br i1 %37, label %38, label %26

38:                                               ; preds = %34
  %39 = getelementptr %struct.ubifs_nnode, ptr %30, i32 0, i32 6, i32 %36
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %34, label %42

42:                                               ; preds = %38
  %43 = tail call ptr @ubifs_get_nnode(ptr noundef %0, ptr noundef nonnull %30, i32 noundef %36) #9
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %88, label %45

45:                                               ; preds = %68, %42
  %46 = phi ptr [ %70, %68 ], [ %43, %42 ]
  %47 = getelementptr inbounds %struct.ubifs_nnode, ptr %46, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = icmp sgt i32 %48, 1
  %50 = getelementptr %struct.ubifs_nnode, ptr %46, i32 0, i32 6, i32 0
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %49, label %53, label %54

53:                                               ; preds = %45
  br i1 %52, label %55, label %68

54:                                               ; preds = %45
  br i1 %52, label %72, label %85

55:                                               ; preds = %53
  %56 = getelementptr %struct.ubifs_nnode, ptr %46, i32 0, i32 6, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = getelementptr %struct.ubifs_nnode, ptr %46, i32 0, i32 6, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = getelementptr %struct.ubifs_nnode, ptr %46, i32 0, i32 6, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, i32 0, i32 3
  br label %68

68:                                               ; preds = %63, %59, %55, %53
  %69 = phi i32 [ 2, %59 ], [ 1, %55 ], [ 0, %53 ], [ %67, %63 ]
  %70 = tail call ptr @ubifs_get_nnode(ptr noundef %0, ptr noundef %46, i32 noundef %69) #9
  %71 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %88, label %45

72:                                               ; preds = %54
  %73 = getelementptr %struct.ubifs_nnode, ptr %46, i32 0, i32 6, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = getelementptr %struct.ubifs_nnode, ptr %46, i32 0, i32 6, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = getelementptr %struct.ubifs_nnode, ptr %46, i32 0, i32 6, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 0, i32 3
  br label %85

85:                                               ; preds = %80, %76, %72, %54
  %86 = phi i32 [ 2, %76 ], [ 1, %72 ], [ 0, %54 ], [ %84, %80 ]
  %87 = tail call ptr @ubifs_get_pnode(ptr noundef %0, ptr noundef %46, i32 noundef %86) #9
  br label %88

88:                                               ; preds = %85, %68, %42, %26, %24, %17
  %89 = phi ptr [ %25, %24 ], [ %87, %85 ], [ %43, %42 ], [ null, %17 ], [ %70, %68 ], [ null, %26 ]
  %90 = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %91, label %6

91:                                               ; preds = %88
  %92 = ptrtoint ptr %89 to i32
  br label %93

93:                                               ; preds = %91, %6, %4
  %94 = phi i32 [ %5, %4 ], [ %92, %91 ], [ 0, %6 ]
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_lpt_calc_hash(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_lpt_end_commit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 157
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %583, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 155
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 147
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 148
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = tail call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %9) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %583

16:                                               ; preds = %13, %5
  %17 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %18 = load i16, ptr %17, align 4
  %19 = and i16 %18, 1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %50, label %21

21:                                               ; preds = %16
  %22 = xor i16 %19, 1
  %23 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 139
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %11
  %26 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %27 = load i32, ptr %26, align 8
  %28 = icmp sgt i32 %25, %27
  br i1 %28, label %50, label %29

29:                                               ; preds = %21
  %30 = getelementptr i8, ptr %7, i32 %11
  %31 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 173
  %32 = load ptr, ptr %31, align 4
  tail call void @ubifs_pack_lsave(ptr noundef %0, ptr noundef %30, ptr noundef %32) #9
  %33 = load i32, ptr %23, align 4
  %34 = add i32 %33, %11
  %35 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %36 = load ptr, ptr %35, align 4
  %37 = load i8, ptr @ubifs_dbg, align 4
  %38 = and i8 %37, 8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.ubifs_debug_info, ptr %36, i32 0, i32 19
  %42 = load i8, ptr %41, align 4
  %43 = and i8 %42, 8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40, %29
  %46 = sext i32 %33 to i64
  %47 = getelementptr inbounds %struct.ubifs_debug_info, ptr %36, i32 0, i32 8
  %48 = load i64, ptr %47, align 8
  %49 = add i64 %48, %46
  store i64 %49, ptr %47, align 8
  br label %50

50:                                               ; preds = %45, %40, %21, %16
  %51 = phi i16 [ 1, %16 ], [ %22, %21 ], [ 1, %40 ], [ 1, %45 ]
  %52 = phi i32 [ %11, %16 ], [ %11, %21 ], [ %34, %40 ], [ %34, %45 ]
  %53 = zext i16 %51 to i32
  %54 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 138
  %55 = load i32, ptr %54, align 8
  %56 = add i32 %55, %52
  %57 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %58 = load i32, ptr %57, align 8
  %59 = icmp sgt i32 %56, %58
  br i1 %59, label %81, label %60

60:                                               ; preds = %50
  %61 = getelementptr i8, ptr %7, i32 %52
  %62 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 169
  %63 = load ptr, ptr %62, align 4
  tail call void @ubifs_pack_ltab(ptr noundef %0, ptr noundef %61, ptr noundef %63) #9
  %64 = load i32, ptr %54, align 8
  %65 = add i32 %64, %52
  %66 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %67 = load ptr, ptr %66, align 4
  %68 = load i8, ptr @ubifs_dbg, align 4
  %69 = and i8 %68, 8
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %60
  %72 = getelementptr inbounds %struct.ubifs_debug_info, ptr %67, i32 0, i32 19
  %73 = load i8, ptr %72, align 4
  %74 = and i8 %73, 8
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71, %60
  %77 = sext i32 %64 to i64
  %78 = getelementptr inbounds %struct.ubifs_debug_info, ptr %67, i32 0, i32 8
  %79 = load i64, ptr %78, align 8
  %80 = add i64 %79, %77
  store i64 %80, ptr %78, align 8
  br label %81

81:                                               ; preds = %76, %71, %50
  %82 = phi i32 [ 0, %50 ], [ 1, %71 ], [ 1, %76 ]
  %83 = phi i32 [ %52, %50 ], [ %65, %71 ], [ %65, %76 ]
  %84 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 136
  %85 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 137
  %86 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %87 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %88 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %89 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 56
  %90 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  %91 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 58
  %92 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 173
  %93 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 139
  %94 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 169
  br label %95

95:                                               ; preds = %288, %81
  %96 = phi i32 [ %9, %81 ], [ %256, %288 ]
  %97 = phi i32 [ %9, %81 ], [ %257, %288 ]
  %98 = phi i32 [ %82, %81 ], [ %258, %288 ]
  %99 = phi i32 [ %53, %81 ], [ %259, %288 ]
  %100 = phi ptr [ %3, %81 ], [ %286, %288 ]
  %101 = phi i32 [ %11, %81 ], [ %260, %288 ]
  %102 = phi i32 [ %83, %81 ], [ %269, %288 ]
  %103 = getelementptr inbounds %struct.ubifs_cnode, ptr %100, i32 0, i32 4
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  %106 = select i1 %105, ptr %85, ptr %84
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %107, %102
  %109 = load i32, ptr %57, align 8
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %255

111:                                              ; preds = %251, %95
  %112 = phi i32 [ %200, %251 ], [ %96, %95 ]
  %113 = phi i32 [ %253, %251 ], [ %109, %95 ]
  %114 = phi i32 [ %200, %251 ], [ %97, %95 ]
  %115 = phi i32 [ %236, %251 ], [ %102, %95 ]
  %116 = phi i32 [ 0, %251 ], [ %101, %95 ]
  %117 = phi i32 [ 1, %251 ], [ %99, %95 ]
  %118 = phi i32 [ 1, %251 ], [ %98, %95 ]
  br label %119

119:                                              ; preds = %228, %111
  %120 = phi i32 [ %112, %111 ], [ %200, %228 ]
  %121 = phi i32 [ %113, %111 ], [ %230, %228 ]
  %122 = phi i32 [ %114, %111 ], [ %200, %228 ]
  %123 = phi i32 [ %115, %111 ], [ %213, %228 ]
  %124 = phi i32 [ %116, %111 ], [ 0, %228 ]
  %125 = phi i32 [ %117, %111 ], [ 1, %228 ]
  %126 = icmp eq i32 %123, %124
  br i1 %126, label %141, label %127

127:                                              ; preds = %119
  %128 = sub i32 %123, %124
  %129 = load i32, ptr %86, align 8
  %130 = add i32 %128, -1
  %131 = add i32 %130, %129
  %132 = sub i32 0, %129
  %133 = and i32 %131, %132
  %134 = getelementptr i8, ptr %7, i32 %123
  %135 = sub i32 %133, %128
  tail call void @llvm.memset.p0.i32(ptr align 1 %134, i8 -1, i32 %135, i1 false) #9
  %136 = getelementptr i8, ptr %7, i32 %124
  %137 = tail call i32 @ubifs_leb_write(ptr noundef %0, i32 noundef %122, ptr noundef %136, i32 noundef %124, i32 noundef %133) #9
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %583

139:                                              ; preds = %127
  %140 = load i32, ptr %57, align 8
  br label %141

141:                                              ; preds = %139, %119
  %142 = phi i32 [ %140, %139 ], [ %121, %119 ]
  %143 = sub i32 %142, %123
  %144 = load ptr, ptr %87, align 4
  %145 = load i8, ptr @ubifs_dbg, align 4
  %146 = and i8 %145, 8
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.ubifs_debug_info, ptr %144, i32 0, i32 19
  %150 = load i8, ptr %149, align 4
  %151 = and i8 %150, 8
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %164, label %153

153:                                              ; preds = %148, %141
  %154 = sext i32 %143 to i64
  %155 = getelementptr inbounds %struct.ubifs_debug_info, ptr %144, i32 0, i32 8
  %156 = load i64, ptr %155, align 8
  %157 = add i64 %156, %154
  store i64 %157, ptr %155, align 8
  %158 = getelementptr inbounds %struct.ubifs_debug_info, ptr %144, i32 0, i32 10
  %159 = load i64, ptr %158, align 8
  %160 = add i64 %159, %154
  store i64 %160, ptr %158, align 8
  %161 = getelementptr inbounds %struct.ubifs_debug_info, ptr %144, i32 0, i32 11
  %162 = load i32, ptr %161, align 8
  %163 = add i32 %162, 1
  store i32 %163, ptr %161, align 8
  br label %164

164:                                              ; preds = %153, %148
  %165 = load i32, ptr %88, align 8
  %166 = sub i32 %122, %165
  %167 = add i32 %166, 1
  %168 = load i32, ptr %89, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  %171 = load ptr, ptr %90, align 8
  br label %176

172:                                              ; preds = %182, %164
  %173 = icmp ult i32 %166, 2147483647
  br i1 %173, label %174, label %555

174:                                              ; preds = %172
  %175 = load ptr, ptr %90, align 8
  br label %185

176:                                              ; preds = %182, %170
  %177 = phi i32 [ %167, %170 ], [ %183, %182 ]
  %178 = getelementptr %struct.ubifs_lpt_lprops, ptr %171, i32 %177, i32 2
  %179 = load i8, ptr %178, align 4
  %180 = and i8 %179, 2
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %176
  %183 = add i32 %177, 1
  %184 = icmp eq i32 %183, %168
  br i1 %184, label %172, label %176

185:                                              ; preds = %191, %174
  %186 = phi i32 [ 0, %174 ], [ %192, %191 ]
  %187 = getelementptr %struct.ubifs_lpt_lprops, ptr %175, i32 %186, i32 2
  %188 = load i8, ptr %187, align 4
  %189 = and i8 %188, 2
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = add nuw nsw i32 %186, 1
  %193 = icmp eq i32 %186, %166
  br i1 %193, label %555, label %185

194:                                              ; preds = %185, %176
  %195 = phi i8 [ %188, %185 ], [ %179, %176 ]
  %196 = phi ptr [ %187, %185 ], [ %178, %176 ]
  %197 = phi i32 [ %186, %185 ], [ %177, %176 ]
  %198 = and i8 %195, -3
  store i8 %198, ptr %196, align 4
  %199 = load i32, ptr %88, align 8
  %200 = add i32 %199, %197
  %201 = icmp slt i32 %200, %199
  br i1 %201, label %205, label %202, !prof !9

202:                                              ; preds = %194
  %203 = load i32, ptr %91, align 4
  %204 = icmp sgt i32 %200, %203
  br i1 %204, label %205, label %206, !prof !9

205:                                              ; preds = %202, %194
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 417) #9
  br label %206

206:                                              ; preds = %205, %202
  %207 = tail call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %200) #9
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %583

209:                                              ; preds = %206
  %210 = icmp eq i32 %125, 0
  br i1 %210, label %211, label %232

211:                                              ; preds = %209
  %212 = load ptr, ptr %92, align 4
  tail call void @ubifs_pack_lsave(ptr noundef %0, ptr noundef %7, ptr noundef %212) #9
  %213 = load i32, ptr %93, align 4
  %214 = load ptr, ptr %87, align 4
  %215 = load i8, ptr @ubifs_dbg, align 4
  %216 = and i8 %215, 8
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %211
  %219 = getelementptr inbounds %struct.ubifs_debug_info, ptr %214, i32 0, i32 19
  %220 = load i8, ptr %219, align 4
  %221 = and i8 %220, 8
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %228, label %223

223:                                              ; preds = %218, %211
  %224 = sext i32 %213 to i64
  %225 = getelementptr inbounds %struct.ubifs_debug_info, ptr %214, i32 0, i32 8
  %226 = load i64, ptr %225, align 8
  %227 = add i64 %226, %224
  store i64 %227, ptr %225, align 8
  br label %228

228:                                              ; preds = %223, %218
  %229 = add i32 %213, %107
  %230 = load i32, ptr %57, align 8
  %231 = icmp sgt i32 %229, %230
  br i1 %231, label %119, label %255

232:                                              ; preds = %209
  %233 = icmp eq i32 %118, 0
  br i1 %233, label %234, label %255

234:                                              ; preds = %232
  %235 = load ptr, ptr %94, align 4
  tail call void @ubifs_pack_ltab(ptr noundef %0, ptr noundef %7, ptr noundef %235) #9
  %236 = load i32, ptr %54, align 8
  %237 = load ptr, ptr %87, align 4
  %238 = load i8, ptr @ubifs_dbg, align 4
  %239 = and i8 %238, 8
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %234
  %242 = getelementptr inbounds %struct.ubifs_debug_info, ptr %237, i32 0, i32 19
  %243 = load i8, ptr %242, align 4
  %244 = and i8 %243, 8
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %251, label %246

246:                                              ; preds = %241, %234
  %247 = sext i32 %236 to i64
  %248 = getelementptr inbounds %struct.ubifs_debug_info, ptr %237, i32 0, i32 8
  %249 = load i64, ptr %248, align 8
  %250 = add i64 %249, %247
  store i64 %250, ptr %248, align 8
  br label %251

251:                                              ; preds = %246, %241
  %252 = add i32 %236, %107
  %253 = load i32, ptr %57, align 8
  %254 = icmp sgt i32 %252, %253
  br i1 %254, label %111, label %255

255:                                              ; preds = %251, %232, %228, %95
  %256 = phi i32 [ %96, %95 ], [ %200, %228 ], [ %200, %232 ], [ %200, %251 ]
  %257 = phi i32 [ %97, %95 ], [ %200, %228 ], [ %200, %232 ], [ %200, %251 ]
  %258 = phi i32 [ %98, %95 ], [ %118, %228 ], [ 1, %251 ], [ %118, %232 ]
  %259 = phi i32 [ %99, %95 ], [ 1, %228 ], [ 1, %251 ], [ %125, %232 ]
  %260 = phi i32 [ %101, %95 ], [ 0, %228 ], [ 0, %232 ], [ 0, %251 ]
  %261 = phi i32 [ %102, %95 ], [ %213, %228 ], [ %236, %251 ], [ 0, %232 ]
  %262 = load i32, ptr %103, align 4
  %263 = icmp eq i32 %262, 0
  %264 = getelementptr i8, ptr %7, i32 %261
  br i1 %263, label %266, label %265

265:                                              ; preds = %255
  tail call void @ubifs_pack_nnode(ptr noundef %0, ptr noundef %264, ptr noundef nonnull %100) #9
  br label %267

266:                                              ; preds = %255
  tail call void @ubifs_pack_pnode(ptr noundef %0, ptr noundef %264, ptr noundef nonnull %100) #9
  br label %267

267:                                              ; preds = %266, %265
  %268 = getelementptr inbounds %struct.ubifs_cnode, ptr %100, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %268) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %268) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %269 = add i32 %261, %107
  %270 = load ptr, ptr %87, align 4
  %271 = load i8, ptr @ubifs_dbg, align 4
  %272 = and i8 %271, 8
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %267
  %275 = getelementptr inbounds %struct.ubifs_debug_info, ptr %270, i32 0, i32 19
  %276 = load i8, ptr %275, align 4
  %277 = and i8 %276, 8
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %284, label %279

279:                                              ; preds = %274, %267
  %280 = sext i32 %107 to i64
  %281 = getelementptr inbounds %struct.ubifs_debug_info, ptr %270, i32 0, i32 8
  %282 = load i64, ptr %281, align 8
  %283 = add i64 %282, %280
  store i64 %283, ptr %281, align 8
  br label %284

284:                                              ; preds = %279, %274
  %285 = getelementptr inbounds %struct.ubifs_cnode, ptr %100, i32 0, i32 1
  %286 = load ptr, ptr %285, align 4
  %287 = icmp eq ptr %286, null
  br i1 %287, label %291, label %288

288:                                              ; preds = %284
  %289 = load ptr, ptr %2, align 4
  %290 = icmp eq ptr %286, %289
  br i1 %290, label %291, label %95

291:                                              ; preds = %288, %284
  %292 = icmp eq i32 %259, 0
  br i1 %292, label %293, label %401

293:                                              ; preds = %291
  %294 = load i32, ptr %93, align 4
  %295 = add i32 %294, %269
  %296 = load i32, ptr %57, align 8
  %297 = icmp sgt i32 %295, %296
  br i1 %297, label %298, label %378

298:                                              ; preds = %293
  %299 = sub i32 %269, %260
  %300 = load i32, ptr %86, align 8
  %301 = add i32 %299, -1
  %302 = add i32 %301, %300
  %303 = sub i32 0, %300
  %304 = and i32 %302, %303
  %305 = getelementptr i8, ptr %7, i32 %269
  %306 = sub i32 %304, %299
  tail call void @llvm.memset.p0.i32(ptr align 1 %305, i8 -1, i32 %306, i1 false) #9
  %307 = getelementptr i8, ptr %7, i32 %260
  %308 = tail call i32 @ubifs_leb_write(ptr noundef %0, i32 noundef %257, ptr noundef %307, i32 noundef %260, i32 noundef %304) #9
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %583

310:                                              ; preds = %298
  %311 = load i32, ptr %57, align 8
  %312 = sub i32 %311, %269
  %313 = load ptr, ptr %87, align 4
  %314 = load i8, ptr @ubifs_dbg, align 4
  %315 = and i8 %314, 8
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %317, label %322

317:                                              ; preds = %310
  %318 = getelementptr inbounds %struct.ubifs_debug_info, ptr %313, i32 0, i32 19
  %319 = load i8, ptr %318, align 4
  %320 = and i8 %319, 8
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %333, label %322

322:                                              ; preds = %317, %310
  %323 = sext i32 %312 to i64
  %324 = getelementptr inbounds %struct.ubifs_debug_info, ptr %313, i32 0, i32 8
  %325 = load i64, ptr %324, align 8
  %326 = add i64 %325, %323
  store i64 %326, ptr %324, align 8
  %327 = getelementptr inbounds %struct.ubifs_debug_info, ptr %313, i32 0, i32 10
  %328 = load i64, ptr %327, align 8
  %329 = add i64 %328, %323
  store i64 %329, ptr %327, align 8
  %330 = getelementptr inbounds %struct.ubifs_debug_info, ptr %313, i32 0, i32 11
  %331 = load i32, ptr %330, align 8
  %332 = add i32 %331, 1
  store i32 %332, ptr %330, align 8
  br label %333

333:                                              ; preds = %322, %317
  %334 = load i32, ptr %88, align 8
  %335 = sub i32 %256, %334
  %336 = add i32 %335, 1
  %337 = load i32, ptr %89, align 4
  %338 = icmp slt i32 %336, %337
  br i1 %338, label %339, label %341

339:                                              ; preds = %333
  %340 = load ptr, ptr %90, align 8
  br label %345

341:                                              ; preds = %351, %333
  %342 = icmp ult i32 %335, 2147483647
  br i1 %342, label %343, label %555

343:                                              ; preds = %341
  %344 = load ptr, ptr %90, align 8
  br label %354

345:                                              ; preds = %351, %339
  %346 = phi i32 [ %336, %339 ], [ %352, %351 ]
  %347 = getelementptr %struct.ubifs_lpt_lprops, ptr %340, i32 %346, i32 2
  %348 = load i8, ptr %347, align 4
  %349 = and i8 %348, 2
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %351, label %363

351:                                              ; preds = %345
  %352 = add i32 %346, 1
  %353 = icmp eq i32 %352, %337
  br i1 %353, label %341, label %345

354:                                              ; preds = %360, %343
  %355 = phi i32 [ 0, %343 ], [ %361, %360 ]
  %356 = getelementptr %struct.ubifs_lpt_lprops, ptr %344, i32 %355, i32 2
  %357 = load i8, ptr %356, align 4
  %358 = and i8 %357, 2
  %359 = icmp eq i8 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %354
  %361 = add nuw nsw i32 %355, 1
  %362 = icmp eq i32 %355, %335
  br i1 %362, label %555, label %354

363:                                              ; preds = %354, %345
  %364 = phi i8 [ %357, %354 ], [ %348, %345 ]
  %365 = phi ptr [ %356, %354 ], [ %347, %345 ]
  %366 = phi i32 [ %355, %354 ], [ %346, %345 ]
  %367 = and i8 %364, -3
  store i8 %367, ptr %365, align 4
  %368 = load i32, ptr %88, align 8
  %369 = add i32 %368, %366
  %370 = icmp slt i32 %369, %368
  br i1 %370, label %374, label %371, !prof !9

371:                                              ; preds = %363
  %372 = load i32, ptr %91, align 4
  %373 = icmp sgt i32 %369, %372
  br i1 %373, label %374, label %375, !prof !9

374:                                              ; preds = %371, %363
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 474) #9
  br label %375

375:                                              ; preds = %374, %371
  %376 = tail call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %369) #9
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %583

378:                                              ; preds = %375, %293
  %379 = phi i32 [ %369, %375 ], [ %256, %293 ]
  %380 = phi i32 [ %369, %375 ], [ %257, %293 ]
  %381 = phi i32 [ 0, %375 ], [ %260, %293 ]
  %382 = phi i32 [ 0, %375 ], [ %269, %293 ]
  %383 = getelementptr i8, ptr %7, i32 %382
  %384 = load ptr, ptr %92, align 4
  tail call void @ubifs_pack_lsave(ptr noundef %0, ptr noundef %383, ptr noundef %384) #9
  %385 = load i32, ptr %93, align 4
  %386 = add i32 %385, %382
  %387 = load ptr, ptr %87, align 4
  %388 = load i8, ptr @ubifs_dbg, align 4
  %389 = and i8 %388, 8
  %390 = icmp eq i8 %389, 0
  br i1 %390, label %391, label %396

391:                                              ; preds = %378
  %392 = getelementptr inbounds %struct.ubifs_debug_info, ptr %387, i32 0, i32 19
  %393 = load i8, ptr %392, align 4
  %394 = and i8 %393, 8
  %395 = icmp eq i8 %394, 0
  br i1 %395, label %401, label %396

396:                                              ; preds = %391, %378
  %397 = sext i32 %385 to i64
  %398 = getelementptr inbounds %struct.ubifs_debug_info, ptr %387, i32 0, i32 8
  %399 = load i64, ptr %398, align 8
  %400 = add i64 %399, %397
  store i64 %400, ptr %398, align 8
  br label %401

401:                                              ; preds = %396, %391, %291
  %402 = phi i32 [ %379, %391 ], [ %379, %396 ], [ %256, %291 ]
  %403 = phi i32 [ %380, %391 ], [ %380, %396 ], [ %257, %291 ]
  %404 = phi i32 [ %381, %391 ], [ %381, %396 ], [ %260, %291 ]
  %405 = phi i32 [ %386, %391 ], [ %386, %396 ], [ %269, %291 ]
  %406 = icmp eq i32 %258, 0
  br i1 %406, label %407, label %514

407:                                              ; preds = %401
  %408 = load i32, ptr %54, align 8
  %409 = add i32 %408, %405
  %410 = load i32, ptr %57, align 8
  %411 = icmp sgt i32 %409, %410
  br i1 %411, label %412, label %492

412:                                              ; preds = %407
  %413 = sub i32 %405, %404
  %414 = load i32, ptr %86, align 8
  %415 = add i32 %413, -1
  %416 = add i32 %415, %414
  %417 = sub i32 0, %414
  %418 = and i32 %416, %417
  %419 = getelementptr i8, ptr %7, i32 %405
  %420 = sub i32 %418, %413
  tail call void @llvm.memset.p0.i32(ptr align 1 %419, i8 -1, i32 %420, i1 false) #9
  %421 = getelementptr i8, ptr %7, i32 %404
  %422 = tail call i32 @ubifs_leb_write(ptr noundef %0, i32 noundef %403, ptr noundef %421, i32 noundef %404, i32 noundef %418) #9
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %583

424:                                              ; preds = %412
  %425 = load i32, ptr %57, align 8
  %426 = sub i32 %425, %405
  %427 = load ptr, ptr %87, align 4
  %428 = load i8, ptr @ubifs_dbg, align 4
  %429 = and i8 %428, 8
  %430 = icmp eq i8 %429, 0
  br i1 %430, label %431, label %436

431:                                              ; preds = %424
  %432 = getelementptr inbounds %struct.ubifs_debug_info, ptr %427, i32 0, i32 19
  %433 = load i8, ptr %432, align 4
  %434 = and i8 %433, 8
  %435 = icmp eq i8 %434, 0
  br i1 %435, label %447, label %436

436:                                              ; preds = %431, %424
  %437 = sext i32 %426 to i64
  %438 = getelementptr inbounds %struct.ubifs_debug_info, ptr %427, i32 0, i32 8
  %439 = load i64, ptr %438, align 8
  %440 = add i64 %439, %437
  store i64 %440, ptr %438, align 8
  %441 = getelementptr inbounds %struct.ubifs_debug_info, ptr %427, i32 0, i32 10
  %442 = load i64, ptr %441, align 8
  %443 = add i64 %442, %437
  store i64 %443, ptr %441, align 8
  %444 = getelementptr inbounds %struct.ubifs_debug_info, ptr %427, i32 0, i32 11
  %445 = load i32, ptr %444, align 8
  %446 = add i32 %445, 1
  store i32 %446, ptr %444, align 8
  br label %447

447:                                              ; preds = %436, %431
  %448 = load i32, ptr %88, align 8
  %449 = sub i32 %402, %448
  %450 = add i32 %449, 1
  %451 = load i32, ptr %89, align 4
  %452 = icmp slt i32 %450, %451
  br i1 %452, label %453, label %455

453:                                              ; preds = %447
  %454 = load ptr, ptr %90, align 8
  br label %459

455:                                              ; preds = %465, %447
  %456 = icmp ult i32 %449, 2147483647
  br i1 %456, label %457, label %555

457:                                              ; preds = %455
  %458 = load ptr, ptr %90, align 8
  br label %468

459:                                              ; preds = %465, %453
  %460 = phi i32 [ %450, %453 ], [ %466, %465 ]
  %461 = getelementptr %struct.ubifs_lpt_lprops, ptr %454, i32 %460, i32 2
  %462 = load i8, ptr %461, align 4
  %463 = and i8 %462, 2
  %464 = icmp eq i8 %463, 0
  br i1 %464, label %465, label %477

465:                                              ; preds = %459
  %466 = add i32 %460, 1
  %467 = icmp eq i32 %466, %451
  br i1 %467, label %455, label %459

468:                                              ; preds = %474, %457
  %469 = phi i32 [ 0, %457 ], [ %475, %474 ]
  %470 = getelementptr %struct.ubifs_lpt_lprops, ptr %458, i32 %469, i32 2
  %471 = load i8, ptr %470, align 4
  %472 = and i8 %471, 2
  %473 = icmp eq i8 %472, 0
  br i1 %473, label %474, label %477

474:                                              ; preds = %468
  %475 = add nuw nsw i32 %469, 1
  %476 = icmp eq i32 %469, %449
  br i1 %476, label %555, label %468

477:                                              ; preds = %468, %459
  %478 = phi i8 [ %471, %468 ], [ %462, %459 ]
  %479 = phi ptr [ %470, %468 ], [ %461, %459 ]
  %480 = phi i32 [ %469, %468 ], [ %460, %459 ]
  %481 = and i8 %478, -3
  store i8 %481, ptr %479, align 4
  %482 = load i32, ptr %88, align 8
  %483 = add i32 %482, %480
  %484 = icmp slt i32 %483, %482
  br i1 %484, label %488, label %485, !prof !9

485:                                              ; preds = %477
  %486 = load i32, ptr %91, align 4
  %487 = icmp sgt i32 %483, %486
  br i1 %487, label %488, label %489, !prof !9

488:                                              ; preds = %485, %477
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 500) #9
  br label %489

489:                                              ; preds = %488, %485
  %490 = tail call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %483) #9
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %492, label %583

492:                                              ; preds = %489, %407
  %493 = phi i32 [ %483, %489 ], [ %403, %407 ]
  %494 = phi i32 [ 0, %489 ], [ %404, %407 ]
  %495 = phi i32 [ 0, %489 ], [ %405, %407 ]
  %496 = getelementptr i8, ptr %7, i32 %495
  %497 = load ptr, ptr %94, align 4
  tail call void @ubifs_pack_ltab(ptr noundef %0, ptr noundef %496, ptr noundef %497) #9
  %498 = load i32, ptr %54, align 8
  %499 = add i32 %498, %495
  %500 = load ptr, ptr %87, align 4
  %501 = load i8, ptr @ubifs_dbg, align 4
  %502 = and i8 %501, 8
  %503 = icmp eq i8 %502, 0
  br i1 %503, label %504, label %509

504:                                              ; preds = %492
  %505 = getelementptr inbounds %struct.ubifs_debug_info, ptr %500, i32 0, i32 19
  %506 = load i8, ptr %505, align 4
  %507 = and i8 %506, 8
  %508 = icmp eq i8 %507, 0
  br i1 %508, label %514, label %509

509:                                              ; preds = %504, %492
  %510 = sext i32 %498 to i64
  %511 = getelementptr inbounds %struct.ubifs_debug_info, ptr %500, i32 0, i32 8
  %512 = load i64, ptr %511, align 8
  %513 = add i64 %512, %510
  store i64 %513, ptr %511, align 8
  br label %514

514:                                              ; preds = %509, %504, %401
  %515 = phi i32 [ %403, %401 ], [ %493, %504 ], [ %493, %509 ]
  %516 = phi i32 [ %404, %401 ], [ %494, %504 ], [ %494, %509 ]
  %517 = phi i32 [ %405, %401 ], [ %499, %504 ], [ %499, %509 ]
  %518 = sub i32 %517, %516
  %519 = load i32, ptr %86, align 8
  %520 = add i32 %519, -1
  %521 = add i32 %520, %518
  %522 = sub i32 0, %519
  %523 = and i32 %521, %522
  %524 = getelementptr i8, ptr %7, i32 %517
  %525 = sub i32 %523, %518
  tail call void @llvm.memset.p0.i32(ptr align 1 %524, i8 -1, i32 %525, i1 false) #9
  %526 = getelementptr i8, ptr %7, i32 %516
  %527 = tail call i32 @ubifs_leb_write(ptr noundef %0, i32 noundef %515, ptr noundef %526, i32 noundef %516, i32 noundef %523) #9
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %583

529:                                              ; preds = %514
  %530 = load ptr, ptr %87, align 4
  %531 = load i8, ptr @ubifs_dbg, align 4
  %532 = and i8 %531, 8
  %533 = icmp eq i8 %532, 0
  br i1 %533, label %534, label %539

534:                                              ; preds = %529
  %535 = getelementptr inbounds %struct.ubifs_debug_info, ptr %530, i32 0, i32 19
  %536 = load i8, ptr %535, align 4
  %537 = and i8 %536, 8
  %538 = icmp eq i8 %537, 0
  br i1 %538, label %547, label %539

539:                                              ; preds = %534, %529
  %540 = sext i32 %525 to i64
  %541 = getelementptr inbounds %struct.ubifs_debug_info, ptr %530, i32 0, i32 8
  %542 = load i64, ptr %541, align 8
  %543 = add i64 %542, %540
  store i64 %543, ptr %541, align 8
  %544 = getelementptr inbounds %struct.ubifs_debug_info, ptr %530, i32 0, i32 10
  %545 = load i64, ptr %544, align 8
  %546 = add i64 %545, %540
  store i64 %546, ptr %544, align 8
  br label %547

547:                                              ; preds = %539, %534
  %548 = load i32, ptr %86, align 8
  %549 = add i32 %517, -1
  %550 = add i32 %548, %549
  %551 = sub i32 0, %548
  %552 = and i32 %550, %551
  %553 = tail call i32 @dbg_chk_lpt_sz(ptr noundef %0, i32 noundef 3, i32 noundef %552) #9
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %560, label %583

555:                                              ; preds = %474, %455, %360, %341, %191, %172
  %556 = phi i32 [ %256, %341 ], [ %402, %455 ], [ %402, %474 ], [ %256, %360 ], [ %120, %191 ], [ %120, %172 ]
  %557 = phi i32 [ %258, %341 ], [ 0, %455 ], [ 0, %474 ], [ %258, %360 ], [ %118, %191 ], [ %118, %172 ]
  %558 = phi i32 [ 0, %341 ], [ 1, %455 ], [ 1, %474 ], [ 0, %360 ], [ %125, %191 ], [ %125, %172 ]
  %559 = phi i32 [ %269, %341 ], [ %405, %455 ], [ %405, %474 ], [ %269, %360 ], [ %123, %191 ], [ %123, %172 ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %556, i32 noundef %559, i32 noundef %107, i32 noundef %557, i32 noundef %558) #9
  tail call void @ubifs_dump_lpt_info(ptr noundef %0) #9
  tail call void @ubifs_dump_lpt_lebs(ptr noundef %0) #9
  tail call void @dump_stack() #10
  br label %583

560:                                              ; preds = %547
  store i32 %515, ptr %8, align 4
  %561 = load i32, ptr %86, align 8
  %562 = add i32 %561, %549
  %563 = sub i32 0, %561
  %564 = and i32 %562, %563
  store i32 %564, ptr %10, align 8
  %565 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 144
  tail call void @mutex_lock(ptr noundef %565) #9
  %566 = load ptr, ptr %2, align 4
  %567 = icmp eq ptr %566, null
  br i1 %567, label %582, label %568

568:                                              ; preds = %578, %560
  %569 = phi ptr [ %571, %578 ], [ %566, %560 ]
  %570 = getelementptr inbounds %struct.ubifs_cnode, ptr %569, i32 0, i32 1
  %571 = load ptr, ptr %570, align 4
  %572 = getelementptr inbounds %struct.ubifs_cnode, ptr %569, i32 0, i32 2
  %573 = load volatile i32, ptr %572, align 4
  %574 = and i32 %573, 2
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %577, label %576

576:                                              ; preds = %568
  tail call void @kfree(ptr noundef %569) #9
  br label %578

577:                                              ; preds = %568
  store ptr null, ptr %570, align 4
  br label %578

578:                                              ; preds = %577, %576
  %579 = load ptr, ptr %2, align 4
  %580 = icmp eq ptr %571, %579
  br i1 %580, label %581, label %568

581:                                              ; preds = %578
  store ptr null, ptr %2, align 4
  br label %582

582:                                              ; preds = %581, %560
  tail call void @mutex_unlock(ptr noundef %565) #9
  br label %583

583:                                              ; preds = %582, %555, %547, %514, %489, %412, %375, %298, %206, %127, %13, %1
  %584 = phi i32 [ 0, %582 ], [ 0, %1 ], [ %553, %547 ], [ %527, %514 ], [ %490, %489 ], [ %422, %412 ], [ %376, %375 ], [ %308, %298 ], [ %14, %13 ], [ -28, %555 ], [ %207, %206 ], [ %137, %127 ]
  ret i32 %584
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_lpt_post_commit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 144
  tail call void @mutex_lock(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 56
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  br label %9

9:                                                ; preds = %28, %7
  %10 = phi i32 [ %5, %7 ], [ %29, %28 ]
  %11 = phi i32 [ 0, %7 ], [ %30, %28 ]
  %12 = load ptr, ptr %8, align 8
  %13 = getelementptr %struct.ubifs_lpt_lprops, ptr %12, i32 %11, i32 2
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %9
  %18 = load i32, ptr %3, align 8
  %19 = add i32 %18, %11
  %20 = tail call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %19) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %92

22:                                               ; preds = %17
  %23 = load ptr, ptr %8, align 8
  %24 = getelementptr %struct.ubifs_lpt_lprops, ptr %23, i32 %11, i32 2
  %25 = load i8, ptr %24, align 4
  %26 = and i8 %25, -2
  store i8 %26, ptr %24, align 4
  %27 = load i32, ptr %4, align 4
  br label %28

28:                                               ; preds = %22, %9
  %29 = phi i32 [ %10, %9 ], [ %27, %22 ]
  %30 = add nuw nsw i32 %11, 1
  %31 = icmp slt i32 %30, %29
  br i1 %31, label %9, label %32

32:                                               ; preds = %28, %1
  %33 = phi i32 [ %5, %1 ], [ %29, %28 ]
  %34 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %35 = load i16, ptr %34, align 4
  %36 = and i16 %35, 1
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %92, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 153
  %40 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 147
  %41 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  %42 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %43 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 148
  br label %44

44:                                               ; preds = %90, %38
  %45 = phi i32 [ %33, %38 ], [ %91, %90 ]
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %82

47:                                               ; preds = %44
  %48 = load i32, ptr %3, align 8
  %49 = load i32, ptr %40, align 4
  br label %50

50:                                               ; preds = %78, %47
  %51 = phi i32 [ 0, %47 ], [ %80, %78 ]
  %52 = phi i64 [ 0, %47 ], [ %79, %78 ]
  %53 = add i32 %51, %48
  %54 = icmp eq i32 %53, %49
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, ptr %42, align 8
  %57 = load i32, ptr %43, align 8
  %58 = sub i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = add i64 %52, %59
  br label %78

61:                                               ; preds = %50
  %62 = load ptr, ptr %41, align 8
  %63 = getelementptr %struct.ubifs_lpt_lprops, ptr %62, i32 %51
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr %42, align 8
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = sext i32 %64 to i64
  %69 = add i64 %52, %68
  br label %78

70:                                               ; preds = %61
  %71 = getelementptr %struct.ubifs_lpt_lprops, ptr %62, i32 %51, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, %64
  %74 = icmp eq i32 %73, %65
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = sext i32 %65 to i64
  %77 = add i64 %52, %76
  br label %78

78:                                               ; preds = %75, %70, %67, %55
  %79 = phi i64 [ %60, %55 ], [ %69, %67 ], [ %77, %75 ], [ %52, %70 ]
  %80 = add nuw nsw i32 %51, 1
  %81 = icmp eq i32 %80, %45
  br i1 %81, label %82, label %50

82:                                               ; preds = %78, %44
  %83 = phi i64 [ 0, %44 ], [ %79, %78 ]
  %84 = load i64, ptr %39, align 8
  %85 = shl i64 %84, 1
  %86 = icmp sgt i64 %83, %85
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  tail call void @mutex_unlock(ptr noundef %2) #9
  %88 = tail call fastcc i32 @lpt_gc(ptr noundef %0)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  tail call void @mutex_lock(ptr noundef %2) #9
  %91 = load i32, ptr %4, align 4
  br label %44

92:                                               ; preds = %82, %32, %17
  %93 = phi i32 [ 0, %32 ], [ 0, %82 ], [ %20, %17 ]
  tail call void @mutex_unlock(ptr noundef %2) #9
  br label %94

94:                                               ; preds = %92, %87
  %95 = phi i32 [ %93, %92 ], [ %88, %87 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_lpt_free(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 157
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %16, %2
  %7 = phi ptr [ %9, %16 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.ubifs_cnode, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ubifs_cnode, ptr %7, i32 0, i32 2
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %6
  tail call void @kfree(ptr noundef %7) #9
  br label %16

15:                                               ; preds = %6
  store ptr null, ptr %8, align 4
  br label %16

16:                                               ; preds = %15, %14
  %17 = load ptr, ptr %3, align 4
  %18 = icmp eq ptr %9, %17
  br i1 %18, label %19, label %6

19:                                               ; preds = %16
  store ptr null, ptr %3, align 4
  br label %20

20:                                               ; preds = %19, %2
  %21 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 169
  %22 = load ptr, ptr %21, align 4
  tail call void @vfree(ptr noundef %22) #9
  store ptr null, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 155
  %24 = load ptr, ptr %23, align 4
  tail call void @vfree(ptr noundef %24) #9
  store ptr null, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 173
  %26 = load ptr, ptr %25, align 4
  tail call void @kfree(ptr noundef %26) #9
  store ptr null, ptr %25, align 4
  %27 = icmp eq i32 %1, 0
  br i1 %27, label %28, label %143

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 156
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %78, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 142
  %34 = load i32, ptr %33, align 8
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %61

36:                                               ; preds = %32
  %37 = add nsw i32 %34, -1
  br label %38

38:                                               ; preds = %57, %36
  %39 = phi i32 [ %40, %57 ], [ 0, %36 ]
  %40 = phi i32 [ %59, %57 ], [ 1, %36 ]
  %41 = phi ptr [ %58, %57 ], [ %30, %36 ]
  %42 = getelementptr %struct.ubifs_nnode, ptr %41, i32 0, i32 6, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %38
  %46 = getelementptr %struct.ubifs_nnode, ptr %41, i32 0, i32 6, i32 1, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = getelementptr %struct.ubifs_nnode, ptr %41, i32 0, i32 6, i32 2, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = getelementptr %struct.ubifs_nnode, ptr %41, i32 0, i32 6, i32 3, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %53, %49, %45, %38
  %58 = phi ptr [ %43, %38 ], [ %47, %45 ], [ %51, %49 ], [ %55, %53 ]
  %59 = add nuw nsw i32 %40, 1
  %60 = icmp eq i32 %59, %34
  br i1 %60, label %61, label %38

61:                                               ; preds = %57, %53, %32
  %62 = phi i32 [ 0, %32 ], [ %39, %53 ], [ %37, %57 ]
  %63 = phi ptr [ %30, %32 ], [ %41, %53 ], [ %58, %57 ]
  %64 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 142
  br label %65

65:                                               ; preds = %139, %61
  %66 = phi ptr [ %63, %61 ], [ %141, %139 ]
  %67 = phi i32 [ %62, %61 ], [ %140, %139 ]
  %68 = getelementptr %struct.ubifs_nnode, ptr %66, i32 0, i32 6, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  tail call void @kfree(ptr noundef %69) #9
  %70 = getelementptr %struct.ubifs_nnode, ptr %66, i32 0, i32 6, i32 1, i32 2
  %71 = load ptr, ptr %70, align 4
  tail call void @kfree(ptr noundef %71) #9
  %72 = getelementptr %struct.ubifs_nnode, ptr %66, i32 0, i32 6, i32 2, i32 2
  %73 = load ptr, ptr %72, align 4
  tail call void @kfree(ptr noundef %73) #9
  %74 = getelementptr %struct.ubifs_nnode, ptr %66, i32 0, i32 6, i32 3, i32 2
  %75 = load ptr, ptr %74, align 4
  tail call void @kfree(ptr noundef %75) #9
  %76 = load ptr, ptr %66, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %92

78:                                               ; preds = %139, %65, %28
  %79 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 0
  %80 = load ptr, ptr %79, align 4
  tail call void @kfree(ptr noundef %80) #9
  %81 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 1
  %82 = load ptr, ptr %81, align 4
  tail call void @kfree(ptr noundef %82) #9
  %83 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 2
  %84 = load ptr, ptr %83, align 4
  tail call void @kfree(ptr noundef %84) #9
  %85 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 159
  %86 = load ptr, ptr %85, align 4
  tail call void @kfree(ptr noundef %86) #9
  %87 = load ptr, ptr %29, align 8
  tail call void @kfree(ptr noundef %87) #9
  %88 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  %89 = load ptr, ptr %88, align 8
  tail call void @vfree(ptr noundef %89) #9
  %90 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 154
  %91 = load ptr, ptr %90, align 8
  tail call void @kfree(ptr noundef %91) #9
  br label %143

92:                                               ; preds = %65
  %93 = getelementptr inbounds %struct.ubifs_nnode, ptr %66, i32 0, i32 3
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 3
  br i1 %95, label %137, label %96

96:                                               ; preds = %92
  %97 = add i32 %94, 1
  %98 = icmp slt i32 %97, 4
  br i1 %98, label %102, label %107

99:                                               ; preds = %102
  %100 = add i32 %103, 1
  %101 = icmp eq i32 %100, 4
  br i1 %101, label %137, label %102

102:                                              ; preds = %99, %96
  %103 = phi i32 [ %100, %99 ], [ %97, %96 ]
  %104 = getelementptr %struct.ubifs_nnode, ptr %76, i32 0, i32 6, i32 %103, i32 2
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %99, label %107

107:                                              ; preds = %102, %96
  %108 = phi ptr [ %66, %96 ], [ %105, %102 ]
  %109 = add i32 %67, 1
  %110 = load i32, ptr %64, align 8
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %139

112:                                              ; preds = %107
  %113 = add nsw i32 %110, -1
  br label %114

114:                                              ; preds = %133, %112
  %115 = phi i32 [ %116, %133 ], [ %67, %112 ]
  %116 = phi i32 [ %135, %133 ], [ %109, %112 ]
  %117 = phi ptr [ %134, %133 ], [ %108, %112 ]
  %118 = getelementptr %struct.ubifs_nnode, ptr %117, i32 0, i32 6, i32 0, i32 2
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %133

121:                                              ; preds = %114
  %122 = getelementptr %struct.ubifs_nnode, ptr %117, i32 0, i32 6, i32 1, i32 2
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  %126 = getelementptr %struct.ubifs_nnode, ptr %117, i32 0, i32 6, i32 2, i32 2
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = getelementptr %struct.ubifs_nnode, ptr %117, i32 0, i32 6, i32 3, i32 2
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %139, label %133

133:                                              ; preds = %129, %125, %121, %114
  %134 = phi ptr [ %119, %114 ], [ %123, %121 ], [ %127, %125 ], [ %131, %129 ]
  %135 = add i32 %116, 1
  %136 = icmp eq i32 %135, %110
  br i1 %136, label %139, label %114

137:                                              ; preds = %99, %92
  %138 = add i32 %67, -1
  br label %139

139:                                              ; preds = %137, %133, %129, %107
  %140 = phi i32 [ %138, %137 ], [ %67, %107 ], [ %113, %133 ], [ %115, %129 ]
  %141 = phi ptr [ %76, %137 ], [ %108, %107 ], [ %134, %133 ], [ %117, %129 ]
  %142 = icmp eq ptr %141, null
  br i1 %142, label %78, label %65

143:                                              ; preds = %78, %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_pnode_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_lpt_nodes(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_lpt_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_dump_lpt_lebs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_nnode, align 4
  %5 = tail call ptr @llvm.thread.pointer() #9
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 52
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %7) #10
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 56
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %135

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %14 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 134
  %16 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 139
  %17 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 138
  %18 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 136
  %19 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %20 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 137
  %21 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %22 = getelementptr inbounds %struct.ubifs_nnode, ptr %4, i32 0, i32 6, i32 0
  %23 = getelementptr inbounds %struct.ubifs_nnode, ptr %4, i32 0, i32 6, i32 0, i32 1
  %24 = getelementptr inbounds %struct.ubifs_nnode, ptr %4, i32 0, i32 6, i32 1
  %25 = getelementptr inbounds %struct.ubifs_nnode, ptr %4, i32 0, i32 6, i32 1, i32 1
  %26 = getelementptr inbounds %struct.ubifs_nnode, ptr %4, i32 0, i32 6, i32 2
  %27 = getelementptr inbounds %struct.ubifs_nnode, ptr %4, i32 0, i32 6, i32 2, i32 1
  %28 = getelementptr inbounds %struct.ubifs_nnode, ptr %4, i32 0, i32 6, i32 3
  %29 = getelementptr inbounds %struct.ubifs_nnode, ptr %4, i32 0, i32 6, i32 3, i32 1
  br label %30

30:                                               ; preds = %131, %12
  %31 = phi i32 [ 0, %12 ], [ %132, %131 ]
  %32 = load i32, ptr %13, align 8
  %33 = add i32 %32, %31
  %34 = load i32, ptr %14, align 8
  %35 = load i32, ptr %6, align 8
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %35, i32 noundef %33) #10
  %37 = load i32, ptr %14, align 8
  %38 = call noalias ptr @__vmalloc(i32 noundef %37, i32 noundef 3136) #11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.28) #9
  br label %131

41:                                               ; preds = %30
  %42 = load i32, ptr %14, align 8
  %43 = call i32 @ubifs_leb_read(ptr noundef %0, i32 noundef %33, ptr noundef nonnull %38, i32 noundef 0, i32 noundef %42, i32 noundef 1) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %130

45:                                               ; preds = %123, %41
  %46 = phi ptr [ %126, %123 ], [ %38, %41 ]
  %47 = phi i32 [ %125, %123 ], [ %34, %41 ]
  %48 = load i32, ptr %14, align 8
  %49 = sub i32 %48, %47
  %50 = call fastcc i32 @is_a_node(ptr noundef %0, ptr noundef %46, i32 noundef %47) #9
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %45
  %53 = load i32, ptr %21, align 8
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr %14, align 8
  %57 = sub i32 %56, %47
  %58 = add i32 %53, -1
  %59 = add i32 %58, %57
  %60 = sub i32 0, %53
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, %57
  br i1 %62, label %63, label %67

63:                                               ; preds = %55, %52
  %64 = icmp eq i32 %47, 0
  br i1 %64, label %127, label %65

65:                                               ; preds = %63
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %33, i32 noundef %49, i32 noundef %47) #10
  br label %127

67:                                               ; preds = %55
  %68 = sub i32 %61, %57
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %33, i32 noundef %49, i32 noundef %68) #10
  br label %123

70:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  %71 = getelementptr i8, ptr %46, i32 2
  store ptr %71, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4
  %72 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 4) #9
  %73 = load i32, ptr %15, align 8
  %74 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %73) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  switch i32 %72, label %122 [
    i32 0, label %75
    i32 1, label %84
    i32 2, label %116
    i32 3, label %119
  ]

75:                                               ; preds = %70
  %76 = load i32, ptr %20, align 4
  %77 = load i16, ptr %19, align 4
  %78 = and i16 %77, 1
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %33, i32 noundef %49, i32 noundef %74) #10
  br label %123

82:                                               ; preds = %75
  %83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %33, i32 noundef %49) #10
  br label %123

84:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #9, !annotation !12
  %85 = load i32, ptr %18, align 8
  %86 = load i16, ptr %19, align 4
  %87 = and i16 %86, 1
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %33, i32 noundef %49, i32 noundef %74) #10
  br label %93

91:                                               ; preds = %84
  %92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %33, i32 noundef %49) #10
  br label %93

93:                                               ; preds = %91, %89
  %94 = call i32 @ubifs_unpack_nnode(ptr noundef %0, ptr noundef %46, ptr noundef nonnull %4) #9
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %94) #10
  br label %115

98:                                               ; preds = %93
  %99 = load i32, ptr %22, align 4
  %100 = load i32, ptr %23, align 4
  %101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %99, i32 noundef %100) #10
  %102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #10
  %103 = load i32, ptr %24, align 4
  %104 = load i32, ptr %25, align 4
  %105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %103, i32 noundef %104) #10
  %106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #10
  %107 = load i32, ptr %26, align 4
  %108 = load i32, ptr %27, align 4
  %109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %107, i32 noundef %108) #10
  %110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #10
  %111 = load i32, ptr %28, align 4
  %112 = load i32, ptr %29, align 4
  %113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %111, i32 noundef %112) #10
  %114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #10
  br label %115

115:                                              ; preds = %98, %96
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #9
  br label %123

116:                                              ; preds = %70
  %117 = load i32, ptr %17, align 8
  %118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %33, i32 noundef %49) #10
  br label %123

119:                                              ; preds = %70
  %120 = load i32, ptr %16, align 4
  %121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %33, i32 noundef %49) #10
  br label %123

122:                                              ; preds = %70
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %72) #9
  br label %130

123:                                              ; preds = %119, %116, %115, %82, %80, %67
  %124 = phi i32 [ %68, %67 ], [ %120, %119 ], [ %117, %116 ], [ %85, %115 ], [ %76, %80 ], [ %76, %82 ]
  %125 = sub i32 %47, %124
  %126 = getelementptr i8, ptr %46, i32 %124
  br label %45

127:                                              ; preds = %65, %63
  %128 = load i32, ptr %6, align 8
  %129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %128, i32 noundef %33) #10
  br label %130

130:                                              ; preds = %127, %122, %41
  call void @vfree(ptr noundef nonnull %38) #9
  br label %131

131:                                              ; preds = %130, %40
  %132 = add nuw nsw i32 %31, 1
  %133 = load i32, ptr %9, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %30, label %135

135:                                              ; preds = %131, %1
  %136 = load i32, ptr %6, align 8
  %137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %136) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dbg_chk_lpt_sz(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %5 = load ptr, ptr %4, align 4
  %6 = load i8, ptr @ubifs_dbg, align 4
  %7 = and i8 %6, 8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 19
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %144, label %14

14:                                               ; preds = %9, %3
  switch i32 %1, label %144 [
    i32 0, label %15
    i32 1, label %31
    i32 2, label %36
    i32 3, label %47
    i32 4, label %136
  ]

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 8
  %17 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 151
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(28) %16, i8 0, i64 28, i1 false)
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 140
  %20 = load i32, ptr %19, align 8
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %18, i32 noundef %20) #9
  br label %23

23:                                               ; preds = %22, %15
  %24 = phi i32 [ -22, %22 ], [ 0, %15 ]
  %25 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 150
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 141
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %144

30:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %26, i32 noundef %28) #9
  br label %144

31:                                               ; preds = %14
  %32 = sext i32 %2 to i64
  %33 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 8
  %34 = load i64, ptr %33, align 8
  %35 = add i64 %34, %32
  store i64 %35, ptr %33, align 8
  br label %144

36:                                               ; preds = %14
  %37 = sext i32 %2 to i64
  %38 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 8
  %39 = load i64, ptr %38, align 8
  %40 = add i64 %39, %37
  store i64 %40, ptr %38, align 8
  %41 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 10
  %42 = load i64, ptr %41, align 8
  %43 = add i64 %42, %37
  store i64 %43, ptr %41, align 8
  %44 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 11
  %45 = load i32, ptr %44, align 8
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 8
  br label %144

47:                                               ; preds = %14
  %48 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %49 = load i32, ptr %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 11
  %52 = load i32, ptr %51, align 8
  %53 = sext i32 %52 to i64
  %54 = mul nsw i64 %53, %50
  %55 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 148
  %56 = load i32, ptr %55, align 8
  %57 = sub i32 %2, %56
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %54, %58
  %60 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 8
  %61 = load i64, ptr %60, align 8
  %62 = icmp eq i64 %61, %59
  br i1 %62, label %65, label %63

63:                                               ; preds = %47
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.6, i64 noundef %61, i64 noundef %59) #9
  %64 = load i64, ptr %60, align 8
  br label %65

65:                                               ; preds = %63, %47
  %66 = phi i64 [ %64, %63 ], [ %59, %47 ]
  %67 = phi i32 [ -22, %63 ], [ 0, %47 ]
  %68 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 153
  %69 = load i64, ptr %68, align 8
  %70 = icmp sgt i64 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.7, i64 noundef %66, i64 noundef %69) #9
  br label %72

72:                                               ; preds = %71, %65
  %73 = phi i32 [ -22, %71 ], [ %67, %65 ]
  %74 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 9
  %75 = load i64, ptr %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %72
  %78 = load i64, ptr %60, align 8
  %79 = icmp eq i64 %78, %75
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.8, i64 noundef %78, i64 noundef %75) #9
  %81 = load i64, ptr %74, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %80, %77
  %84 = phi i32 [ -22, %80 ], [ %73, %77 ]
  %85 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 12
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, %2
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %86, i32 noundef %2) #9
  br label %89

89:                                               ; preds = %88, %83, %80, %72
  %90 = phi i32 [ -22, %88 ], [ %84, %83 ], [ -22, %80 ], [ %73, %72 ]
  %91 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 140
  %92 = load i32, ptr %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 137
  %95 = load i32, ptr %94, align 4
  %96 = sext i32 %95 to i64
  %97 = mul nsw i64 %96, %93
  %98 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 141
  %99 = load i32, ptr %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 136
  %102 = load i32, ptr %101, align 8
  %103 = sext i32 %102 to i64
  %104 = mul nsw i64 %103, %100
  %105 = add i64 %104, %97
  %106 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 138
  %107 = load i32, ptr %106, align 8
  %108 = sext i32 %107 to i64
  %109 = add i64 %105, %108
  %110 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %111 = load i16, ptr %110, align 4
  %112 = and i16 %111, 1
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %89
  %115 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 139
  %116 = load i32, ptr %115, align 4
  %117 = sext i32 %116 to i64
  %118 = add i64 %109, %117
  br label %119

119:                                              ; preds = %114, %89
  %120 = phi i64 [ %118, %114 ], [ %109, %89 ]
  %121 = load i64, ptr %60, align 8
  %122 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 10
  %123 = load i64, ptr %122, align 8
  %124 = sub i64 %121, %123
  %125 = icmp sgt i64 %124, %120
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.10, i64 noundef %121, i64 noundef %123, i64 noundef %120) #9
  br label %129

127:                                              ; preds = %119
  %128 = icmp eq i32 %90, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %127, %126
  %130 = phi i32 [ -22, %126 ], [ %90, %127 ]
  tail call void @ubifs_dump_lpt_info(ptr noundef %0) #9
  tail call void @ubifs_dump_lpt_lebs(ptr noundef %0)
  tail call void @dump_stack() #10
  %131 = load i64, ptr %60, align 8
  br label %132

132:                                              ; preds = %129, %127
  %133 = phi i64 [ %131, %129 ], [ %121, %127 ]
  %134 = phi i32 [ %130, %129 ], [ 0, %127 ]
  store i64 %133, ptr %74, align 8
  store i64 0, ptr %60, align 8
  store i64 0, ptr %122, align 8
  store i32 0, ptr %51, align 8
  %135 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 12
  store i32 %2, ptr %135, align 4
  br label %144

136:                                              ; preds = %14
  %137 = sext i32 %2 to i64
  %138 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 8
  %139 = load i64, ptr %138, align 8
  %140 = add i64 %139, %137
  store i64 %140, ptr %138, align 8
  %141 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 10
  %142 = load i64, ptr %141, align 8
  %143 = add i64 %142, %137
  store i64 %143, ptr %141, align 8
  br label %144

144:                                              ; preds = %136, %132, %36, %31, %30, %23, %14, %9
  %145 = phi i32 [ 0, %136 ], [ %134, %132 ], [ 0, %36 ], [ 0, %31 ], [ 0, %9 ], [ -22, %30 ], [ %24, %23 ], [ -22, %14 ]
  ret i32 %145
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @is_a_node(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %6 = getelementptr i8, ptr %1, i32 2
  store ptr %6, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4
  %7 = icmp slt i32 %2, 3
  br i1 %7, label %31, label %8

8:                                                ; preds = %3
  %9 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 4) #9
  switch i32 %9, label %31 [
    i32 3, label %16
    i32 1, label %10
    i32 0, label %12
    i32 2, label %14
  ]

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 136
  br label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 137
  br label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 138
  br label %18

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 139
  br label %18

18:                                               ; preds = %16, %14, %12, %10
  %19 = phi ptr [ %17, %16 ], [ %15, %14 ], [ %13, %12 ], [ %11, %10 ]
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  %22 = icmp sgt i32 %20, %2
  %23 = or i1 %21, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  store i32 0, ptr %5, align 4
  store ptr %1, ptr %4, align 4
  %25 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 16) #9
  %26 = add i32 %20, -2
  %27 = call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef %6, i32 noundef %26) #9
  %28 = trunc i32 %25 to i16
  %29 = icmp eq i16 %27, %28
  %30 = zext i1 %29 to i32
  br label %31

31:                                               ; preds = %24, %18, %8, %3
  %32 = phi i32 [ 0, %3 ], [ 0, %18 ], [ %30, %24 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_unpack_bits(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc16(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_add_nnode_dirt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_read_nnode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_get_nnode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @do_make_pnode_dirty(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_pnode, ptr %1, i32 0, i32 2
  %4 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %3) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 151
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  %10 = load ptr, ptr %1, align 4
  %11 = getelementptr inbounds %struct.ubifs_pnode, ptr %1, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.ubifs_nnode, ptr %10, i32 0, i32 6, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 137
  %16 = load i32, ptr %15, align 4
  tail call void @ubifs_add_lpt_dirt(ptr noundef %0, i32 noundef %14, i32 noundef %16) #9
  %17 = load ptr, ptr %1, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 150
  br label %21

21:                                               ; preds = %26, %19
  %22 = phi ptr [ %17, %19 ], [ %29, %26 ]
  %23 = getelementptr inbounds %struct.ubifs_nnode, ptr %22, i32 0, i32 2
  %24 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %23) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, ptr %20, align 8
  %28 = add i32 %27, 1
  store i32 %28, ptr %20, align 8
  tail call void @ubifs_add_nnode_dirt(ptr noundef %0, ptr noundef nonnull %22) #9
  %29 = load ptr, ptr %22, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %21

31:                                               ; preds = %26, %21, %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_add_lpt_dirt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_get_pnode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_pack_lsave(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_pack_ltab(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_pack_nnode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_pack_pnode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_unpack_nnode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2153484473}
!11 = !{i64 2153484736}
!12 = !{!"auto-init"}
