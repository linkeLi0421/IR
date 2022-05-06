; ModuleID = '/llk/IR/fs/d_path.c_pt.bc'
source_filename = "../fs/d_path.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_path:\09\09\09\09\09"
module asm "\09.asciz \09\22d_path\22\09\09\09\09\09"
module asm "__kstrtabns_d_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dentry_path_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22dentry_path_raw\22\09\09\09\09\09"
module asm "__kstrtabns_dentry_path_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.prepend_buffer = type { ptr, i32 }
%struct.path = type { ptr, ptr }
%struct.mount = type { %struct.hlist_node, ptr, ptr, %struct.vfsmount, %union.anon.93, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %union.anon.94, %struct.list_head, ptr, i32, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%struct.hlist_node = type { ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%union.anon.93 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.94 = type { %struct.hlist_node }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.90, %struct.list_head, %struct.list_head, %union.anon.91 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.88 }
%union.anon.88 = type { i64 }
%union.anon.90 = type { %struct.list_head }
%union.anon.91 = type { %struct.hlist_node }
%struct.mnt_namespace = type { %struct.ns_common, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, i64, %struct.wait_queue_head, i64, i32, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon = type { i32, i32 }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.36 }
%struct.llist_node = type { ptr }
%union.anon.36 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.37 }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.__va_list = type { ptr }

@.str = private unnamed_addr constant [11 x i8] c" (deleted)\00", align 1
@__kstrtab_d_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_path = external dso_local constant [0 x i8], align 1
@__ksymtab_d_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_path to i32), ptr @__kstrtab_d_path, ptr @__kstrtabns_d_path }, section "___ksymtab+d_path", align 4
@__kstrtab_dentry_path_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_dentry_path_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_dentry_path_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dentry_path_raw to i32), ptr @__kstrtab_dentry_path_raw, ptr @__kstrtabns_dentry_path_raw }, section "___ksymtab+dentry_path_raw", align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"//deleted\00", align 1
@mount_lock = external dso_local global %struct.seqlock_t, align 4
@rename_lock = external dso_local global %struct.seqlock_t, align 4
@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"(unreachable)\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_d_path, ptr @__ksymtab_dentry_path_raw], section "llvm.metadata"

@sys_getcwd = dso_local alias i32 (ptr, i32), ptr @__se_sys_getcwd

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__d_path(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.prepend_buffer, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store i64 0, ptr %5, align 8, !annotation !8
  %6 = getelementptr i8, ptr %2, i32 %3
  store ptr %6, ptr %5, align 8
  %7 = getelementptr inbounds %struct.prepend_buffer, ptr %5, i32 0, i32 1
  %8 = icmp sgt i32 %3, 0
  br i1 %8, label %9, label %12, !prof !9

9:                                                ; preds = %4
  %10 = add nsw i32 %3, -1
  store i32 %10, ptr %7, align 4
  %11 = getelementptr i8, ptr %6, i32 -1
  store ptr %11, ptr %5, align 8
  store i8 0, ptr %11, align 1
  br label %13

12:                                               ; preds = %4
  store i32 -1, ptr %7, align 4
  br label %13

13:                                               ; preds = %12, %9
  %14 = call fastcc i32 @prepend_path(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5)
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %21, label %16, !prof !10

16:                                               ; preds = %13
  %17 = load i32, ptr %7, align 4
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %21, !prof !9

19:                                               ; preds = %16
  %20 = load ptr, ptr %5, align 8
  br label %21

21:                                               ; preds = %19, %16, %13
  %22 = phi ptr [ null, %13 ], [ %20, %19 ], [ inttoptr (i32 -36 to ptr), %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  ret ptr %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @prepend_path(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %4 = load volatile i32, ptr @mount_lock, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %7, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !13
  %8 = load volatile i32, ptr @mount_lock, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %7

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %4, %3 ], [ %8, %7 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  %13 = getelementptr inbounds i8, ptr %2, i32 4
  %14 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %15 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  br label %17

16:                                               ; preds = %125
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #9
  br label %17

17:                                               ; preds = %16, %11
  %18 = phi i32 [ %12, %11 ], [ 1, %16 ]
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  br label %19

19:                                               ; preds = %116, %17
  %20 = phi i1 [ false, %116 ], [ true, %17 ]
  %21 = load i32, ptr %2, align 4
  %22 = load i32, ptr %13, align 4
  %23 = inttoptr i32 %21 to ptr
  br i1 %20, label %24, label %34

24:                                               ; preds = %19
  %25 = load volatile i32, ptr @rename_lock, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %28, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !13
  %29 = load volatile i32, ptr @rename_lock, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %28

32:                                               ; preds = %28, %24
  %33 = phi i32 [ %25, %24 ], [ %29, %28 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  br label %35

34:                                               ; preds = %19
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1)) #9
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 1, %34 ]
  %37 = load ptr, ptr %14, align 4
  %38 = load ptr, ptr %0, align 4
  %39 = getelementptr i8, ptr %38, i32 -16
  br label %40

40:                                               ; preds = %106, %35
  %41 = phi i32 [ %107, %106 ], [ %22, %35 ]
  %42 = phi ptr [ %108, %106 ], [ %23, %35 ]
  %43 = phi ptr [ %47, %106 ], [ %39, %35 ]
  %44 = phi ptr [ %56, %106 ], [ %37, %35 ]
  %45 = load ptr, ptr %15, align 4
  br label %46

46:                                               ; preds = %64, %40
  %47 = phi ptr [ %62, %64 ], [ %43, %40 ]
  %48 = phi ptr [ %66, %64 ], [ %44, %40 ]
  %49 = icmp eq ptr %48, %45
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.mount, ptr %47, i32 0, i32 3
  %52 = load ptr, ptr %1, align 4
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %109, label %54

54:                                               ; preds = %50, %46
  %55 = getelementptr inbounds %struct.dentry, ptr %48, i32 0, i32 3
  %56 = load volatile ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.mount, ptr %47, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %48, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.mount, ptr %47, i32 0, i32 1
  %62 = load volatile ptr, ptr %61, align 4
  %63 = icmp eq ptr %47, %62
  br i1 %63, label %67, label %64, !prof !10

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.mount, ptr %47, i32 0, i32 2
  %66 = load volatile ptr, ptr %65, align 4
  br label %46

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.mount, ptr %47, i32 0, i32 16
  %69 = load volatile ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  %71 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  %72 = or i1 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.mnt_namespace, ptr %69, i32 0, i32 6
  %75 = load i64, ptr %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %109

77:                                               ; preds = %73, %67
  br label %109

78:                                               ; preds = %54
  %79 = icmp eq ptr %48, %56
  br i1 %79, label %109, label %80, !prof !10

80:                                               ; preds = %78
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %56) #9, !srcloc !15
  %81 = getelementptr inbounds %struct.dentry, ptr %48, i32 0, i32 4
  %82 = getelementptr inbounds %struct.dentry, ptr %48, i32 0, i32 4, i32 1
  %83 = load volatile ptr, ptr %82, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %84 = getelementptr inbounds %struct.anon, ptr %81, i32 0, i32 1
  %85 = load volatile i32, ptr %84, align 4
  %86 = icmp slt i32 %41, 0
  br i1 %86, label %109, label %87

87:                                               ; preds = %80
  %88 = icmp slt i32 %41, %85
  br i1 %88, label %89, label %97

89:                                               ; preds = %87
  %90 = sub i32 %85, %41
  %91 = getelementptr i8, ptr %83, i32 %90
  %92 = sub nsw i32 0, %41
  %93 = getelementptr i8, ptr %42, i32 %92
  %94 = tail call i32 @copy_from_kernel_nofault(ptr noundef %93, ptr noundef %91, i32 noundef %41) #9
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %109, label %96, !prof !9

96:                                               ; preds = %89
  tail call void @llvm.memset.p0.i32(ptr align 1 %93, i8 120, i32 %41, i1 false) #9
  br label %109

97:                                               ; preds = %87
  %98 = sub i32 %41, %85
  %99 = sub i32 0, %85
  %100 = getelementptr i8, ptr %42, i32 %99
  %101 = tail call i32 @copy_from_kernel_nofault(ptr noundef %100, ptr noundef %83, i32 noundef %85) #9
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103, !prof !9

103:                                              ; preds = %97
  tail call void @llvm.memset.p0.i32(ptr align 1 %100, i8 120, i32 %85, i1 false) #9
  br label %109

104:                                              ; preds = %97
  %105 = icmp sgt i32 %98, 0
  br i1 %105, label %106, label %109, !prof !9

106:                                              ; preds = %104
  %107 = add nsw i32 %98, -1
  %108 = getelementptr i8, ptr %100, i32 -1
  store i8 47, ptr %108, align 1
  br label %40

109:                                              ; preds = %104, %103, %96, %89, %80, %78, %77, %73, %50
  %110 = phi i32 [ %41, %77 ], [ %41, %73 ], [ %98, %103 ], [ -1, %96 ], [ -1, %89 ], [ %41, %50 ], [ %41, %78 ], [ %41, %80 ], [ -1, %104 ]
  %111 = phi ptr [ %42, %77 ], [ %42, %73 ], [ %100, %103 ], [ %93, %96 ], [ %93, %89 ], [ %42, %50 ], [ %42, %78 ], [ %42, %80 ], [ %100, %104 ]
  %112 = phi i1 [ false, %77 ], [ false, %73 ], [ false, %103 ], [ false, %96 ], [ false, %89 ], [ false, %50 ], [ %79, %104 ], [ %79, %78 ], [ %79, %80 ]
  %113 = phi i32 [ 2, %77 ], [ 1, %73 ], [ 0, %103 ], [ 0, %96 ], [ 0, %89 ], [ 0, %50 ], [ 3, %78 ], [ 0, %80 ], [ 0, %104 ]
  %114 = and i32 %36, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  %117 = load volatile i32, ptr @rename_lock, align 4
  %118 = icmp eq i32 %117, %36
  br i1 %118, label %122, label %19

119:                                              ; preds = %109
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %120 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1), align 4
  %121 = add i16 %120, 1
  store i16 %121, ptr getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !22
  br label %122

122:                                              ; preds = %119, %116
  %123 = and i32 %18, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  %126 = load volatile i32, ptr @mount_lock, align 4
  %127 = icmp eq i32 %126, %18
  br i1 %127, label %131, label %16

128:                                              ; preds = %122
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %129 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %130 = add i16 %129, 1
  store i16 %130, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !22
  br label %131

131:                                              ; preds = %128, %125
  br i1 %112, label %132, label %136, !prof !10

132:                                              ; preds = %131
  %133 = load i32, ptr %2, align 4
  %134 = load i32, ptr %13, align 4
  %135 = inttoptr i32 %133 to ptr
  br label %139

136:                                              ; preds = %131
  %137 = load i32, ptr %13, align 4
  %138 = icmp eq i32 %110, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %136, %132
  %140 = phi ptr [ %135, %132 ], [ %111, %136 ]
  %141 = phi i32 [ %134, %132 ], [ %137, %136 ]
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %146, !prof !9

143:                                              ; preds = %139
  %144 = add nsw i32 %141, -1
  %145 = getelementptr i8, ptr %140, i32 -1
  store i8 47, ptr %145, align 1
  br label %146

146:                                              ; preds = %143, %139, %136
  %147 = phi i32 [ %110, %136 ], [ %144, %143 ], [ -1, %139 ]
  %148 = phi ptr [ %111, %136 ], [ %145, %143 ], [ %140, %139 ]
  %149 = ptrtoint ptr %148 to i32
  store i32 %149, ptr %2, align 4
  store i32 %147, ptr %13, align 4
  ret i32 %113
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @d_absolute_path(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.path, align 8
  %5 = alloca %struct.prepend_buffer, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store i64 0, ptr %5, align 8, !annotation !8
  %6 = getelementptr i8, ptr %1, i32 %2
  store ptr %6, ptr %5, align 8
  %7 = getelementptr inbounds %struct.prepend_buffer, ptr %5, i32 0, i32 1
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %12, !prof !9

9:                                                ; preds = %3
  %10 = add nsw i32 %2, -1
  store i32 %10, ptr %7, align 4
  %11 = getelementptr i8, ptr %6, i32 -1
  store ptr %11, ptr %5, align 8
  store i8 0, ptr %11, align 1
  br label %13

12:                                               ; preds = %3
  store i32 -1, ptr %7, align 4
  br label %13

13:                                               ; preds = %12, %9
  %14 = call fastcc i32 @prepend_path(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %21, label %16, !prof !10

16:                                               ; preds = %13
  %17 = load i32, ptr %7, align 4
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %21, !prof !9

19:                                               ; preds = %16
  %20 = load ptr, ptr %5, align 8
  br label %21

21:                                               ; preds = %19, %16, %13
  %22 = phi ptr [ inttoptr (i32 -22 to ptr), %13 ], [ %20, %19 ], [ inttoptr (i32 -36 to ptr), %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @d_path(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.prepend_buffer, align 8
  %5 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %6 = getelementptr i8, ptr %1, i32 %2
  store ptr %6, ptr %4, align 8
  %7 = getelementptr inbounds %struct.prepend_buffer, ptr %4, i32 0, i32 1
  store i32 %2, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %8 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.dentry_operations, ptr %11, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %9, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %9, %23
  br i1 %24, label %27, label %25

25:                                               ; preds = %21, %17
  %26 = tail call ptr %15(ptr noundef %9, ptr noundef %1, i32 noundef %2) #9
  br label %69

27:                                               ; preds = %21, %13, %3
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %28 = tail call ptr @llvm.thread.pointer() #9
  %29 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 89
  %30 = load ptr, ptr %29, align 64
  %31 = getelementptr inbounds %struct.fs_struct, ptr %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.fs_struct, ptr %30, i32 0, i32 5
  br label %33

33:                                               ; preds = %41, %27
  %34 = load volatile i32, ptr %31, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %37, %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !23
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !24
  %38 = load volatile i32, ptr %31, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %37

41:                                               ; preds = %37, %33
  %42 = phi i32 [ %34, %33 ], [ %38, %37 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !25
  %43 = load i64, ptr %32, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  %44 = load volatile i32, ptr %31, align 4
  %45 = icmp eq i32 %44, %42
  br i1 %45, label %46, label %33

46:                                               ; preds = %41
  store i64 %43, ptr %5, align 8
  %47 = load ptr, ptr %8, align 4
  %48 = getelementptr inbounds %struct.dentry, ptr %47, i32 0, i32 2, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.dentry, ptr %47, i32 0, i32 3
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, %47
  br i1 %54, label %57, label %55, !prof !9

55:                                               ; preds = %51
  %56 = call fastcc zeroext i1 @prepend(ptr noundef nonnull %4, ptr noundef nonnull @.str, i32 noundef 11)
  br label %63

57:                                               ; preds = %51, %46
  %58 = icmp sgt i32 %2, 0
  br i1 %58, label %59, label %62, !prof !9

59:                                               ; preds = %57
  %60 = add nsw i32 %2, -1
  store i32 %60, ptr %7, align 4
  %61 = getelementptr i8, ptr %6, i32 -1
  store ptr %61, ptr %4, align 8
  store i8 0, ptr %61, align 1
  br label %63

62:                                               ; preds = %57
  store i32 -1, ptr %7, align 4
  br label %63

63:                                               ; preds = %62, %59, %55
  %64 = call fastcc i32 @prepend_path(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %4)
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  %65 = load i32, ptr %7, align 4
  %66 = icmp sgt i32 %65, -1
  br i1 %66, label %67, label %69, !prof !9

67:                                               ; preds = %63
  %68 = load ptr, ptr %4, align 8
  br label %69

69:                                               ; preds = %67, %63, %25
  %70 = phi ptr [ %26, %25 ], [ %68, %67 ], [ inttoptr (i32 -36 to ptr), %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret ptr %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @prepend(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.prepend_buffer, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = icmp slt i32 %5, %2
  br i1 %8, label %9, label %19

9:                                                ; preds = %7
  %10 = sub i32 %2, %5
  %11 = getelementptr i8, ptr %1, i32 %10
  %12 = load ptr, ptr %0, align 4
  %13 = sub nsw i32 0, %5
  %14 = getelementptr i8, ptr %12, i32 %13
  store ptr %14, ptr %0, align 4
  %15 = tail call i32 @copy_from_kernel_nofault(ptr noundef %14, ptr noundef %11, i32 noundef %5) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17, !prof !9

17:                                               ; preds = %9
  tail call void @llvm.memset.p0.i32(ptr align 1 %14, i8 120, i32 %5, i1 false) #9
  br label %18

18:                                               ; preds = %17, %9
  store i32 -1, ptr %4, align 4
  br label %27

19:                                               ; preds = %7
  %20 = sub i32 %5, %2
  store i32 %20, ptr %4, align 4
  %21 = load ptr, ptr %0, align 4
  %22 = sub i32 0, %2
  %23 = getelementptr i8, ptr %21, i32 %22
  store ptr %23, ptr %0, align 4
  %24 = tail call i32 @copy_from_kernel_nofault(ptr noundef %23, ptr noundef %1, i32 noundef %2) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !9

26:                                               ; preds = %19
  tail call void @llvm.memset.p0.i32(ptr align 1 %23, i8 120, i32 %2, i1 false) #9
  br label %27

27:                                               ; preds = %26, %19, %18, %3
  %28 = phi i1 [ false, %18 ], [ false, %3 ], [ true, %19 ], [ false, %26 ]
  ret i1 %28
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dynamic_dname(ptr nocapture noundef readnone %0, ptr noundef writeonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, ...) local_unnamed_addr #3 {
  %5 = alloca %struct.__va_list, align 4
  %6 = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %6, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.va_start(ptr nonnull %5)
  %7 = load i32, ptr %5, align 4
  %8 = insertvalue [1 x i32] poison, i32 %7, 0
  %9 = call i32 @vsnprintf(ptr noundef nonnull %6, i32 noundef 64, ptr noundef %3, [1 x i32] %8)
  %10 = add i32 %9, 1
  call void @llvm.va_end(ptr nonnull %5)
  %11 = icmp ugt i32 %10, 64
  %12 = icmp sgt i32 %10, %2
  %13 = or i1 %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = sub i32 %2, %10
  %16 = getelementptr i8, ptr %1, i32 %15
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %16, ptr nonnull align 1 %6, i32 %10, i1 false)
  br label %17

17:                                               ; preds = %14, %4
  %18 = phi ptr [ %16, %14 ], [ inttoptr (i32 -36 to ptr), %4 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret ptr %18
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @simple_dname(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %1, i32 %2
  %5 = icmp slt i32 %2, 0
  br i1 %5, label %46, label %6

6:                                                ; preds = %3
  %7 = icmp ult i32 %2, 11
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = sub nuw nsw i32 11, %2
  %10 = getelementptr i8, ptr @.str, i32 %9
  %11 = tail call i32 @copy_from_kernel_nofault(ptr noundef %1, ptr noundef %10, i32 noundef %2) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %46, label %13, !prof !9

13:                                               ; preds = %8
  tail call void @llvm.memset.p0.i32(ptr align 1 %1, i8 120, i32 %2, i1 false) #9
  br label %46

14:                                               ; preds = %6
  %15 = add nsw i32 %2, -11
  %16 = getelementptr i8, ptr %4, i32 -11
  %17 = tail call i32 @copy_from_kernel_nofault(ptr noundef %16, ptr noundef nonnull @.str, i32 noundef 11) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19, !prof !9

19:                                               ; preds = %14
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(11) %16, i8 120, i32 11, i1 false) #9
  br label %20

20:                                               ; preds = %19, %14
  %21 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4
  %22 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.anon, ptr %21, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp slt i32 %15, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = sub i32 %25, %15
  %29 = getelementptr i8, ptr %23, i32 %28
  %30 = sub nsw i32 11, %2
  %31 = getelementptr i8, ptr %16, i32 %30
  %32 = tail call i32 @copy_from_kernel_nofault(ptr noundef %31, ptr noundef %29, i32 noundef %15) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %46, label %34, !prof !9

34:                                               ; preds = %27
  tail call void @llvm.memset.p0.i32(ptr align 1 %31, i8 120, i32 %15, i1 false) #9
  br label %46

35:                                               ; preds = %20
  %36 = sub i32 %15, %25
  %37 = sub i32 0, %25
  %38 = getelementptr i8, ptr %16, i32 %37
  %39 = tail call i32 @copy_from_kernel_nofault(ptr noundef %38, ptr noundef %23, i32 noundef %25) #9
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41, !prof !9

41:                                               ; preds = %35
  tail call void @llvm.memset.p0.i32(ptr align 1 %38, i8 120, i32 %25, i1 false) #9
  br label %42

42:                                               ; preds = %41, %35
  %43 = icmp sgt i32 %36, 0
  br i1 %43, label %44, label %46, !prof !9

44:                                               ; preds = %42
  %45 = getelementptr i8, ptr %38, i32 -1
  store i8 47, ptr %45, align 1
  br label %46

46:                                               ; preds = %44, %42, %34, %27, %13, %8, %3
  %47 = phi ptr [ %45, %44 ], [ inttoptr (i32 -36 to ptr), %42 ], [ inttoptr (i32 -36 to ptr), %34 ], [ inttoptr (i32 -36 to ptr), %27 ], [ inttoptr (i32 -36 to ptr), %3 ], [ inttoptr (i32 -36 to ptr), %13 ], [ inttoptr (i32 -36 to ptr), %8 ]
  ret ptr %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dentry_path_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.prepend_buffer, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !8
  %5 = getelementptr i8, ptr %1, i32 %2
  store ptr %5, ptr %4, align 8
  %6 = getelementptr inbounds %struct.prepend_buffer, ptr %4, i32 0, i32 1
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %11, !prof !9

8:                                                ; preds = %3
  %9 = add nsw i32 %2, -1
  store i32 %9, ptr %6, align 4
  %10 = getelementptr i8, ptr %5, i32 -1
  store ptr %10, ptr %4, align 8
  store i8 0, ptr %10, align 1
  br label %12

11:                                               ; preds = %3
  store i32 -1, ptr %6, align 4
  br label %12

12:                                               ; preds = %11, %8
  %13 = call fastcc ptr @__dentry_path(ptr noundef %0, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__dentry_path(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %3 = getelementptr inbounds i8, ptr %1, i32 4
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  br label %5

5:                                                ; preds = %66, %2
  %6 = phi i1 [ false, %66 ], [ true, %2 ]
  %7 = load i32, ptr %1, align 4
  %8 = load i32, ptr %3, align 4
  %9 = inttoptr i32 %7 to ptr
  br i1 %6, label %10, label %20

10:                                               ; preds = %5
  %11 = load volatile i32, ptr @rename_lock, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %14, %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !13
  %15 = load volatile i32, ptr @rename_lock, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %14

18:                                               ; preds = %14, %10
  %19 = phi i32 [ %11, %10 ], [ %15, %14 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  br label %21

20:                                               ; preds = %5
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1)) #9
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 1, %20 ]
  %23 = load ptr, ptr %4, align 8
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %61, label %25

25:                                               ; preds = %55, %21
  %26 = phi ptr [ %59, %55 ], [ %23, %21 ]
  %27 = phi ptr [ %26, %55 ], [ %0, %21 ]
  %28 = phi ptr [ %57, %55 ], [ %9, %21 ]
  %29 = phi i32 [ %56, %55 ], [ %8, %21 ]
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %26) #9, !srcloc !15
  %30 = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 4
  %31 = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 4, i32 1
  %32 = load volatile ptr, ptr %31, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %33 = getelementptr inbounds %struct.anon, ptr %30, i32 0, i32 1
  %34 = load volatile i32, ptr %33, align 4
  %35 = icmp slt i32 %29, 0
  br i1 %35, label %61, label %36

36:                                               ; preds = %25
  %37 = icmp slt i32 %29, %34
  br i1 %37, label %38, label %46

38:                                               ; preds = %36
  %39 = sub i32 %34, %29
  %40 = getelementptr i8, ptr %32, i32 %39
  %41 = sub nsw i32 0, %29
  %42 = getelementptr i8, ptr %28, i32 %41
  %43 = tail call i32 @copy_from_kernel_nofault(ptr noundef %42, ptr noundef %40, i32 noundef %29) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %61, label %45, !prof !9

45:                                               ; preds = %38
  tail call void @llvm.memset.p0.i32(ptr align 1 %42, i8 120, i32 %29, i1 false) #9
  br label %61

46:                                               ; preds = %36
  %47 = sub i32 %29, %34
  %48 = sub i32 0, %34
  %49 = getelementptr i8, ptr %28, i32 %48
  %50 = tail call i32 @copy_from_kernel_nofault(ptr noundef %49, ptr noundef %32, i32 noundef %34) #9
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52, !prof !9

52:                                               ; preds = %46
  tail call void @llvm.memset.p0.i32(ptr align 1 %49, i8 120, i32 %34, i1 false) #9
  br label %61

53:                                               ; preds = %46
  %54 = icmp sgt i32 %47, 0
  br i1 %54, label %55, label %61, !prof !9

55:                                               ; preds = %53
  %56 = add nsw i32 %47, -1
  %57 = getelementptr i8, ptr %49, i32 -1
  store i8 47, ptr %57, align 1
  %58 = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 3
  %59 = load ptr, ptr %58, align 8
  %60 = icmp eq ptr %26, %59
  br i1 %60, label %61, label %25

61:                                               ; preds = %55, %53, %52, %45, %38, %25, %21
  %62 = phi i32 [ -1, %38 ], [ -1, %45 ], [ %47, %52 ], [ %8, %21 ], [ %56, %55 ], [ -1, %53 ], [ %29, %25 ]
  %63 = phi ptr [ %42, %38 ], [ %42, %45 ], [ %49, %52 ], [ %9, %21 ], [ %57, %55 ], [ %49, %53 ], [ %28, %25 ]
  %64 = and i32 %22, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  %67 = load volatile i32, ptr @rename_lock, align 4
  %68 = icmp eq i32 %67, %22
  br i1 %68, label %72, label %5

69:                                               ; preds = %61
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %70 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1), align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !22
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, ptr %3, align 4
  %74 = icmp eq i32 %62, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = icmp sgt i32 %62, 0
  br i1 %76, label %77, label %83, !prof !9

77:                                               ; preds = %75
  %78 = getelementptr i8, ptr %63, i32 -1
  store i8 47, ptr %78, align 1
  br label %81

79:                                               ; preds = %72
  %80 = icmp sgt i32 %62, -1
  br i1 %80, label %81, label %83, !prof !9

81:                                               ; preds = %79, %77
  %82 = phi ptr [ %78, %77 ], [ %63, %79 ]
  br label %83

83:                                               ; preds = %81, %79, %75
  %84 = phi ptr [ %82, %81 ], [ inttoptr (i32 -36 to ptr), %79 ], [ inttoptr (i32 -36 to ptr), %75 ]
  ret ptr %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dentry_path(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.prepend_buffer, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %5 = getelementptr i8, ptr %1, i32 %2
  store ptr %5, ptr %4, align 8
  %6 = getelementptr inbounds %struct.prepend_buffer, ptr %4, i32 0, i32 1
  store i32 %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %16, label %14, !prof !9

14:                                               ; preds = %10
  %15 = call fastcc zeroext i1 @prepend(ptr noundef nonnull %4, ptr noundef nonnull @.str.1, i32 noundef 10)
  br label %22

16:                                               ; preds = %10, %3
  %17 = icmp sgt i32 %2, 0
  br i1 %17, label %18, label %21, !prof !9

18:                                               ; preds = %16
  %19 = add nsw i32 %2, -1
  store i32 %19, ptr %6, align 4
  %20 = getelementptr i8, ptr %5, i32 -1
  store ptr %20, ptr %4, align 8
  store i8 0, ptr %20, align 1
  br label %22

21:                                               ; preds = %16
  store i32 -1, ptr %6, align 4
  br label %22

22:                                               ; preds = %21, %18, %14
  %23 = call fastcc ptr @__dentry_path(ptr noundef %0, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret ptr %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getcwd(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.path, align 8
  %4 = alloca %struct.path, align 8
  %5 = alloca %struct.prepend_buffer, align 8
  %6 = inttoptr i32 %0 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %7 = load ptr, ptr @names_cachep, align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %7, i32 noundef 3264) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %96, label %10

10:                                               ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %11 = tail call ptr @llvm.thread.pointer() #9
  %12 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 89
  %13 = load ptr, ptr %12, align 64
  %14 = getelementptr inbounds %struct.fs_struct, ptr %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.fs_struct, ptr %13, i32 0, i32 5
  %16 = getelementptr inbounds %struct.fs_struct, ptr %13, i32 0, i32 6
  br label %17

17:                                               ; preds = %25, %10
  %18 = load volatile i32, ptr %14, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %21, %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !27
  %22 = load volatile i32, ptr %14, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %21

25:                                               ; preds = %21, %17
  %26 = phi i32 [ %18, %17 ], [ %22, %21 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  %27 = load i64, ptr %15, align 4
  %28 = load i64, ptr %16, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  %29 = load volatile i32, ptr %14, align 4
  %30 = icmp eq i32 %29, %26
  br i1 %30, label %31, label %17

31:                                               ; preds = %25
  store i64 %27, ptr %4, align 8
  store i64 %28, ptr %3, align 8
  %32 = lshr i64 %28, 32
  %33 = trunc i64 %32 to i32
  %34 = inttoptr i32 %33 to ptr
  %35 = getelementptr inbounds %struct.dentry, ptr %34, i32 0, i32 2, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.dentry, ptr %34, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, %34
  br i1 %41, label %43, label %42, !prof !9

42:                                               ; preds = %38
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  br label %93

43:                                               ; preds = %38, %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %44 = getelementptr inbounds %struct.prepend_buffer, ptr %5, i32 0, i32 1
  store i32 4095, ptr %44, align 4
  %45 = getelementptr i8, ptr %8, i32 4095
  store ptr %45, ptr %5, align 8
  store i8 0, ptr %45, align 1
  %46 = call fastcc i32 @prepend_path(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %47 = icmp sgt i32 %46, 0
  %48 = load i32, ptr %44, align 4
  br i1 %47, label %49, label %70, !prof !10

49:                                               ; preds = %43
  %50 = icmp slt i32 %48, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %49
  %52 = icmp ult i32 %48, 13
  br i1 %52, label %53, label %62

53:                                               ; preds = %51
  %54 = sub nuw nsw i32 13, %48
  %55 = getelementptr i8, ptr @.str.2, i32 %54
  %56 = load ptr, ptr %5, align 8
  %57 = sub nsw i32 0, %48
  %58 = getelementptr i8, ptr %56, i32 %57
  store ptr %58, ptr %5, align 8
  %59 = tail call i32 @copy_from_kernel_nofault(ptr noundef %58, ptr noundef %55, i32 noundef %48) #9
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %69, label %61, !prof !9

61:                                               ; preds = %53
  tail call void @llvm.memset.p0.i32(ptr align 1 %58, i8 120, i32 %48, i1 false) #9
  br label %69

62:                                               ; preds = %51
  %63 = add nsw i32 %48, -13
  store i32 %63, ptr %44, align 4
  %64 = load ptr, ptr %5, align 8
  %65 = getelementptr i8, ptr %64, i32 -13
  store ptr %65, ptr %5, align 8
  %66 = tail call i32 @copy_from_kernel_nofault(ptr noundef %65, ptr noundef nonnull @.str.2, i32 noundef 13) #9
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68, !prof !9

68:                                               ; preds = %62
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(13) %65, i8 120, i32 13, i1 false) #9
  br label %70

69:                                               ; preds = %61, %53, %49
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  br label %91

70:                                               ; preds = %68, %62, %43
  %71 = phi i32 [ %63, %68 ], [ %63, %62 ], [ %48, %43 ]
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  %72 = sub i32 4096, %71
  %73 = icmp ugt i32 %71, 4096
  br i1 %73, label %91, label %74, !prof !10

74:                                               ; preds = %70
  %75 = icmp ugt i32 %72, %1
  br i1 %75, label %91, label %76, !prof !10

76:                                               ; preds = %74
  %77 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 %72, i32 -1090519040) #10, !srcloc !29
  %78 = extractvalue { i32, i32 } %77, 0
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load ptr, ptr %5, align 8
  %82 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %83 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %82) #11, !srcloc !30
  %84 = and i32 %83, -13
  %85 = or i32 %84, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %85) #9, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !32
  %86 = tail call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef %81, i32 noundef %72) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %83) #9, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !32
  br label %87

87:                                               ; preds = %80, %76
  %88 = phi i32 [ %86, %80 ], [ %72, %76 ]
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i32 %72, i32 -14
  br label %91

91:                                               ; preds = %87, %74, %70, %69
  %92 = phi i32 [ -36, %70 ], [ -34, %74 ], [ %90, %87 ], [ -36, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %93

93:                                               ; preds = %91, %42
  %94 = phi i32 [ -2, %42 ], [ %92, %91 ]
  %95 = load ptr, ptr @names_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %95, ptr noundef nonnull %8) #9
  br label %96

96:                                               ; preds = %93, %2
  %97 = phi i32 [ %94, %93 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %97
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2149218884}
!12 = !{i64 2149553972}
!13 = !{i64 2149553814}
!14 = !{i64 2149554116}
!15 = !{i64 897394}
!16 = !{i64 2153590778}
!17 = !{i64 2149219101}
!18 = !{i64 2149544604}
!19 = !{i64 2149066180}
!20 = !{i64 2149062004}
!21 = !{i64 2149062079, i64 2149062106, i64 2149062153, i64 2149062175, i64 2149062203, i64 2149062223}
!22 = !{i64 2149089183}
!23 = !{i64 2153607511}
!24 = !{i64 2153607353}
!25 = !{i64 2153607655}
!26 = !{i64 2153617646}
!27 = !{i64 2153617488}
!28 = !{i64 2153617790}
!29 = !{i64 2151031813, i64 2151031838}
!30 = !{i64 3527347}
!31 = !{i64 3527544}
!32 = !{i64 2151012823}
