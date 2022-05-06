; ModuleID = '/llk/IR/kernel/groups.c_pt.bc'
source_filename = "../kernel/groups.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_groups_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22groups_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_groups_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_groups_free:\09\09\09\09\09"
module asm "\09.asciz \09\22groups_free\22\09\09\09\09\09"
module asm "__kstrtabns_groups_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_groups_sort:\09\09\09\09\09"
module asm "\09.asciz \09\22groups_sort\22\09\09\09\09\09"
module asm "__kstrtabns_groups_sort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22set_groups\22\09\09\09\09\09"
module asm "__kstrtabns_set_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_current_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22set_current_groups\22\09\09\09\09\09"
module asm "__kstrtabns_set_current_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_in_group_p:\09\09\09\09\09"
module asm "\09.asciz \09\22in_group_p\22\09\09\09\09\09"
module asm "__kstrtabns_in_group_p:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_in_egroup_p:\09\09\09\09\09"
module asm "\09.asciz \09\22in_egroup_p\22\09\09\09\09\09"
module asm "__kstrtabns_in_egroup_p:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.7 }
%union.anon.7 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.9, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.12 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.12 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.85, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.13 }
%struct.llist_node = type { ptr }
%union.anon.13 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.66 }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.85 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab_groups_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_groups_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_groups_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @groups_alloc to i32), ptr @__kstrtab_groups_alloc, ptr @__kstrtabns_groups_alloc }, section "___ksymtab+groups_alloc", align 4
@__kstrtab_groups_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_groups_free = external dso_local constant [0 x i8], align 1
@__ksymtab_groups_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @groups_free to i32), ptr @__kstrtab_groups_free, ptr @__kstrtabns_groups_free }, section "___ksymtab+groups_free", align 4
@__kstrtab_groups_sort = external dso_local constant [0 x i8], align 1
@__kstrtabns_groups_sort = external dso_local constant [0 x i8], align 1
@__ksymtab_groups_sort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @groups_sort to i32), ptr @__kstrtab_groups_sort, ptr @__kstrtabns_groups_sort }, section "___ksymtab+groups_sort", align 4
@__kstrtab_set_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_set_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_groups to i32), ptr @__kstrtab_set_groups, ptr @__kstrtabns_set_groups }, section "___ksymtab+set_groups", align 4
@__kstrtab_set_current_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_current_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_set_current_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_current_groups to i32), ptr @__kstrtab_set_current_groups, ptr @__kstrtabns_set_current_groups }, section "___ksymtab+set_current_groups", align 4
@__kstrtab_in_group_p = external dso_local constant [0 x i8], align 1
@__kstrtabns_in_group_p = external dso_local constant [0 x i8], align 1
@__ksymtab_in_group_p = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @in_group_p to i32), ptr @__kstrtab_in_group_p, ptr @__kstrtabns_in_group_p }, section "___ksymtab+in_group_p", align 4
@__kstrtab_in_egroup_p = external dso_local constant [0 x i8], align 1
@__kstrtabns_in_egroup_p = external dso_local constant [0 x i8], align 1
@__ksymtab_in_egroup_p = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @in_egroup_p to i32), ptr @__kstrtab_in_egroup_p, ptr @__kstrtabns_in_egroup_p }, section "___ksymtab+in_egroup_p", align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_groups_alloc, ptr @__ksymtab_groups_free, ptr @__ksymtab_groups_sort, ptr @__ksymtab_in_egroup_p, ptr @__ksymtab_in_group_p, ptr @__ksymtab_set_current_groups, ptr @__ksymtab_set_groups], section "llvm.metadata"

@sys_getgroups = dso_local alias i32 (i32, ptr), ptr @__se_sys_getgroups
@sys_setgroups = dso_local alias i32 (i32, ptr), ptr @__se_sys_setgroups

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @groups_alloc(i32 noundef %0) #0 {
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 4) #8
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %5 = tail call i32 @llvm.uadd.sat.i32(i32 %4, i32 8) #8
  %6 = select i1 %3, i32 -1, i32 %5
  %7 = tail call noalias ptr @kvmalloc_node(i32 noundef %6, i32 noundef 4197568, i32 noundef -1) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  store volatile i32 1, ptr %7, align 4
  %10 = getelementptr inbounds %struct.group_info, ptr %7, i32 0, i32 1
  store i32 %0, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %1
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @groups_free(ptr noundef %0) #0 {
  tail call void @kvfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @groups_sort(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.group_info, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.group_info, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  tail call void @sort(ptr noundef %2, i32 noundef %4, i32 noundef 4, ptr noundef nonnull @gid_cmp, ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @gid_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load i32, ptr %0, align 4
  %4 = load i32, ptr %1, align 4
  %5 = icmp ugt i32 %3, %4
  %6 = zext i1 %5 to i32
  %7 = icmp ult i32 %3, %4
  %8 = sext i1 %7 to i32
  %9 = add nsw i32 %8, %6
  ret i32 %9
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @groups_search(ptr noundef readonly %0, [1 x i32] %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.group_info, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = extractvalue [1 x i32] %1, 0
  br label %10

10:                                               ; preds = %22, %8
  %11 = phi i32 [ %6, %8 ], [ %24, %22 ]
  %12 = phi i32 [ 0, %8 ], [ %23, %22 ]
  %13 = add i32 %11, %12
  %14 = lshr i32 %13, 1
  %15 = getelementptr %struct.group_info, ptr %0, i32 0, i32 2, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %9, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = add nuw i32 %14, 1
  br label %22

20:                                               ; preds = %10
  %21 = icmp ult i32 %9, %16
  br i1 %21, label %22, label %26

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %12, %20 ]
  %24 = phi i32 [ %11, %18 ], [ %14, %20 ]
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %10, label %26

26:                                               ; preds = %22, %20, %4, %2
  %27 = phi i32 [ 0, %2 ], [ 0, %4 ], [ 0, %22 ], [ 1, %20 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_groups(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 23
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #8, !srcloc !9
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #8, !srcloc !10
  %6 = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 4
  tail call void @kvfree(ptr noundef %9) #8
  br label %10

10:                                               ; preds = %8, %2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #8, !srcloc !9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #8, !srcloc !12
  store ptr %1, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_current_groups(ptr noundef %0) #0 {
  %2 = tail call ptr @prepare_creds() #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #8, !srcloc !9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #8, !srcloc !10
  %8 = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = load ptr, ptr %5, align 4
  tail call void @kvfree(ptr noundef %11) #8
  br label %12

12:                                               ; preds = %10, %4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !9
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #8, !srcloc !12
  store ptr %0, ptr %5, align 4
  %14 = tail call i32 @commit_creds(ptr noundef nonnull %2) #8
  br label %15

15:                                               ; preds = %12, %1
  %16 = phi i32 [ %14, %12 ], [ -12, %1 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getgroups(i32 noundef %0, i32 noundef %1) #0 {
  %3 = inttoptr i32 %1 to ptr
  %4 = tail call ptr @llvm.thread.pointer() #8
  %5 = icmp slt i32 %0, 0
  br i1 %5, label %36, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 83
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 23
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.group_info, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %0, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %6
  %15 = icmp sgt i32 %12, %0
  br i1 %15, label %36, label %16

16:                                               ; preds = %14
  %17 = icmp eq i32 %12, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  br label %23

20:                                               ; preds = %23
  %21 = add nuw i32 %24, 1
  %22 = icmp eq i32 %21, %12
  br i1 %22, label %36, label %23

23:                                               ; preds = %20, %18
  %24 = phi i32 [ 0, %18 ], [ %21, %20 ]
  %25 = getelementptr %struct.group_info, ptr %10, i32 0, i32 2, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, -1
  %28 = load i32, ptr @overflowgid, align 4
  %29 = select i1 %27, i32 %28, i32 %26
  %30 = getelementptr i32, ptr %3, i32 %24
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #10, !srcloc !13
  %32 = and i32 %31, -13
  %33 = or i32 %32, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #8, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !15
  %34 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %30, i32 %29, i32 -1090519041) #8, !srcloc !16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #8, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !15
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %20, label %36

36:                                               ; preds = %23, %20, %16, %14, %6, %2
  %37 = phi i32 [ -22, %2 ], [ %12, %6 ], [ -22, %14 ], [ 0, %16 ], [ -14, %23 ], [ %12, %20 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @may_setgroups() local_unnamed_addr #0 {
  %1 = tail call zeroext i1 @ns_capable_setid(ptr noundef nonnull @init_user_ns, i32 noundef 6) #8
  ret i1 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable_setid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setgroups(i32 noundef %0, i32 noundef %1) #0 {
  %3 = inttoptr i32 %1 to ptr
  %4 = tail call zeroext i1 @ns_capable_setid(ptr noundef nonnull @init_user_ns, i32 noundef 6) #8
  br i1 %4, label %5, label %64

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 65536
  br i1 %6, label %64, label %7

7:                                                ; preds = %5
  %8 = shl nuw nsw i32 %0, 2
  %9 = add nuw nsw i32 %8, 8
  %10 = tail call noalias ptr @kvmalloc_node(i32 noundef %9, i32 noundef 4197568, i32 noundef -1) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %64, label %12

12:                                               ; preds = %7
  store volatile i32 1, ptr %10, align 4
  %13 = getelementptr inbounds %struct.group_info, ptr %10, i32 0, i32 1
  store i32 %0, ptr %13, align 4
  %14 = icmp eq i32 %0, 0
  br i1 %14, label %41, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @llvm.thread.pointer() #8
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  br label %18

18:                                               ; preds = %30, %15
  %19 = phi i32 [ 0, %15 ], [ %32, %30 ]
  %20 = getelementptr i32, ptr %3, i32 %19
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %17) #10, !srcloc !13
  %22 = and i32 %21, -13
  %23 = or i32 %22, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #8, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !15
  %24 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %20, i32 -1090519041) #8, !srcloc !17
  %25 = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #8, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = extractvalue { i32, i32 } %24, 1
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = getelementptr %struct.group_info, ptr %10, i32 0, i32 2, i32 %19
  store i32 %28, ptr %31, align 4
  %32 = add nuw nsw i32 %19, 1
  %33 = icmp eq i32 %32, %0
  br i1 %33, label %39, label %18

34:                                               ; preds = %27, %18
  %35 = phi i32 [ -22, %27 ], [ -14, %18 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %10) #8, !srcloc !9
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %10, ptr nonnull %10, i32 1, ptr nonnull elementtype(i32) %10) #8, !srcloc !10
  %37 = extractvalue { i32, i32 } %36, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %62, label %64

39:                                               ; preds = %30
  %40 = load i32, ptr %13, align 4
  br label %41

41:                                               ; preds = %39, %12
  %42 = phi i32 [ %40, %39 ], [ 0, %12 ]
  %43 = getelementptr inbounds %struct.group_info, ptr %10, i32 0, i32 2
  tail call void @sort(ptr noundef %43, i32 noundef %42, i32 noundef 4, ptr noundef nonnull @gid_cmp, ptr noundef null) #8
  %44 = tail call ptr @prepare_creds() #8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %57, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.cred, ptr %44, i32 0, i32 23
  %48 = load ptr, ptr %47, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #8, !srcloc !9
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #8, !srcloc !10
  %50 = extractvalue { i32, i32 } %49, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load ptr, ptr %47, align 4
  tail call void @kvfree(ptr noundef %53) #8
  br label %54

54:                                               ; preds = %52, %46
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %10) #8, !srcloc !9
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %10, ptr nonnull %10, i32 1, ptr nonnull elementtype(i32) %10) #8, !srcloc !12
  store ptr %10, ptr %47, align 4
  %56 = tail call i32 @commit_creds(ptr noundef nonnull %44) #8
  br label %57

57:                                               ; preds = %54, %41
  %58 = phi i32 [ %56, %54 ], [ -12, %41 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %10) #8, !srcloc !9
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %10, ptr nonnull %10, i32 1, ptr nonnull elementtype(i32) %10) #8, !srcloc !10
  %60 = extractvalue { i32, i32 } %59, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57, %34
  %63 = phi i32 [ %35, %34 ], [ %58, %57 ]
  tail call void @kvfree(ptr noundef nonnull %10) #8
  br label %64

64:                                               ; preds = %62, %57, %34, %7, %5, %2
  %65 = phi i32 [ -1, %2 ], [ -22, %5 ], [ %35, %34 ], [ %58, %57 ], [ -12, %7 ], [ %63, %62 ]
  ret i32 %65
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @in_group_p([1 x i32] %0) #4 {
  %2 = tail call ptr @llvm.thread.pointer() #8
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 83
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = extractvalue [1 x i32] %0, 0
  %8 = icmp eq i32 %7, %6
  br i1 %8, label %33, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 23
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %33, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.group_info, ptr %11, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %29, %13
  %18 = phi i32 [ %31, %29 ], [ %15, %13 ]
  %19 = phi i32 [ %30, %29 ], [ 0, %13 ]
  %20 = add i32 %19, %18
  %21 = lshr i32 %20, 1
  %22 = getelementptr %struct.group_info, ptr %11, i32 0, i32 2, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %7, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = add nuw i32 %21, 1
  br label %29

27:                                               ; preds = %17
  %28 = icmp ult i32 %7, %23
  br i1 %28, label %29, label %33

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %19, %27 ]
  %31 = phi i32 [ %18, %25 ], [ %21, %27 ]
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %17, label %33

33:                                               ; preds = %29, %27, %13, %9, %1
  %34 = phi i32 [ 1, %1 ], [ 0, %9 ], [ 0, %13 ], [ 1, %27 ], [ 0, %29 ]
  ret i32 %34
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @in_egroup_p([1 x i32] %0) #4 {
  %2 = tail call ptr @llvm.thread.pointer() #8
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 83
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = extractvalue [1 x i32] %0, 0
  %8 = icmp eq i32 %7, %6
  br i1 %8, label %33, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 23
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %33, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.group_info, ptr %11, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %29, %13
  %18 = phi i32 [ %31, %29 ], [ %15, %13 ]
  %19 = phi i32 [ %30, %29 ], [ 0, %13 ]
  %20 = add i32 %19, %18
  %21 = lshr i32 %20, 1
  %22 = getelementptr %struct.group_info, ptr %11, i32 0, i32 2, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %7, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = add nuw i32 %21, 1
  br label %29

27:                                               ; preds = %17
  %28 = icmp ult i32 %7, %23
  br i1 %28, label %29, label %33

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %19, %27 ]
  %31 = phi i32 [ %18, %25 ], [ %21, %27 ]
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %17, label %33

33:                                               ; preds = %29, %27, %13, %9, %1
  %34 = phi i32 [ 1, %1 ], [ 0, %9 ], [ 0, %13 ], [ 1, %27 ], [ 0, %29 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind readonly }

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
!8 = !{i64 2148201176}
!9 = !{i64 598314, i64 2148088285, i64 2148088311, i64 2148088358, i64 2148088380, i64 2148088408, i64 2148088428}
!10 = !{i64 2148103538, i64 2148103570, i64 2148103599, i64 2148103633, i64 2148103664, i64 2148103687}
!11 = !{i64 2148201379}
!12 = !{i64 2148100497, i64 2148100523, i64 2148100552, i64 2148100586, i64 2148100617, i64 2148100640}
!13 = !{i64 3765475}
!14 = !{i64 3765672}
!15 = !{i64 2151250951}
!16 = !{i64 2153581915, i64 2153582195, i64 2153582529, i64 2153582863}
!17 = !{i64 2153593088, i64 2153593368, i64 2153593702, i64 2153594036}
