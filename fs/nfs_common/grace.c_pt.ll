; ModuleID = '/llk/IR/fs/nfs_common/grace.c_pt.bc'
source_filename = "../fs/nfs_common/grace.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_locks_start_grace:\09\09\09\09\09"
module asm "\09.asciz \09\22locks_start_grace\22\09\09\09\09\09"
module asm "__kstrtabns_locks_start_grace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_locks_end_grace:\09\09\09\09\09"
module asm "\09.asciz \09\22locks_end_grace\22\09\09\09\09\09"
module asm "__kstrtabns_locks_end_grace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_locks_in_grace:\09\09\09\09\09"
module asm "\09.asciz \09\22locks_in_grace\22\09\09\09\09\09"
module asm "__kstrtabns_locks_in_grace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_opens_in_grace:\09\09\09\09\09"
module asm "\09.asciz \09\22opens_in_grace\22\09\09\09\09\09"
module asm "__kstrtabns_opens_in_grace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.1, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [40 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.24, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.24 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lock_manager = type { %struct.list_head, i8 }

@grace_net_id = internal global i32 0, align 4
@grace_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str = private unnamed_addr constant [22 x i8] c"fs/nfs_common/grace.c\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"double list_add attempt detected in net %x %s\0A\00", align 1
@init_net = external dso_local global %struct.net, align 64
@.str.2 = private unnamed_addr constant [11 x i8] c"(init_net)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__kstrtab_locks_start_grace = external dso_local constant [0 x i8], align 1
@__kstrtabns_locks_start_grace = external dso_local constant [0 x i8], align 1
@__ksymtab_locks_start_grace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @locks_start_grace to i32), ptr @__kstrtab_locks_start_grace, ptr @__kstrtabns_locks_start_grace }, section "___ksymtab_gpl+locks_start_grace", align 4
@__kstrtab_locks_end_grace = external dso_local constant [0 x i8], align 1
@__kstrtabns_locks_end_grace = external dso_local constant [0 x i8], align 1
@__ksymtab_locks_end_grace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @locks_end_grace to i32), ptr @__kstrtab_locks_end_grace, ptr @__kstrtabns_locks_end_grace }, section "___ksymtab_gpl+locks_end_grace", align 4
@__kstrtab_locks_in_grace = external dso_local constant [0 x i8], align 1
@__kstrtabns_locks_in_grace = external dso_local constant [0 x i8], align 1
@__ksymtab_locks_in_grace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @locks_in_grace to i32), ptr @__kstrtab_locks_in_grace, ptr @__kstrtabns_locks_in_grace }, section "___ksymtab_gpl+locks_in_grace", align 4
@__kstrtab_opens_in_grace = external dso_local constant [0 x i8], align 1
@__kstrtabns_opens_in_grace = external dso_local constant [0 x i8], align 1
@__ksymtab_opens_in_grace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @opens_in_grace to i32), ptr @__kstrtab_opens_in_grace, ptr @__kstrtabns_opens_in_grace }, section "___ksymtab_gpl+opens_in_grace", align 4
@grace_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @grace_init_net, ptr null, ptr @grace_exit_net, ptr null, ptr @grace_net_id, i32 8 }, align 4
@__UNIQUE_ID_author267 = internal constant [51 x i8] c"grace.author=Jeff Layton <jlayton@primarydata.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file268 = internal constant [31 x i8] c"grace.file=fs/nfs_common/grace\00", section ".modinfo", align 1
@__UNIQUE_ID_license269 = internal constant [18 x i8] c"grace.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_grace__270_142_init_grace6 = internal global ptr @init_grace, section ".initcall6.init", align 4
@__exitcall_exit_grace = internal global ptr @exit_grace, section ".exitcall.exit", align 4
@grace_exit_net.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"net %x %s: grace_list is not empty\0A\00", align 1
@__func__.grace_exit_net = private unnamed_addr constant [15 x i8] c"grace_exit_net\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author267, ptr @__UNIQUE_ID_file268, ptr @__UNIQUE_ID_license269, ptr @__exitcall_exit_grace, ptr @__initcall__kmod_grace__270_142_init_grace6, ptr @__ksymtab_locks_end_grace, ptr @__ksymtab_locks_in_grace, ptr @__ksymtab_locks_start_grace, ptr @__ksymtab_opens_in_grace, ptr @exit_grace], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @locks_start_grace(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @grace_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %5 = load volatile ptr, ptr %4, align 64
  %6 = getelementptr [0 x ptr], ptr %5, i32 0, i32 %3
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  tail call void @_raw_spin_lock(ptr noundef nonnull @grace_lock) #4
  %8 = load volatile ptr, ptr %1, align 4
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %1, ptr %12, align 4
  store ptr %11, ptr %1, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %7, ptr %13, align 4
  store volatile ptr %1, ptr %7, align 4
  br label %19

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 14, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq ptr %0, @init_net
  %18 = select i1 %17, ptr @.str.2, ptr @.str.3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %16, ptr noundef nonnull %18) #4
  br label %19

19:                                               ; preds = %14, %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !10
  %20 = load i16, ptr @grace_lock, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr @grace_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @locks_end_grace(ptr noundef %0) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @grace_lock) #4
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  store volatile ptr %4, ptr %3, align 4
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !10
  %6 = load i16, ptr @grace_lock, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr @grace_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @locks_in_grace(ptr noundef %0) #0 {
  %2 = load i32, ptr @grace_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp ne ptr %7, %6
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @opens_in_grace(ptr noundef %0) #0 {
  %2 = load i32, ptr @grace_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  tail call void @_raw_spin_lock(ptr noundef nonnull @grace_lock) #4
  br label %7

7:                                                ; preds = %11, %1
  %8 = phi ptr [ %6, %1 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.lock_manager, ptr %9, i32 0, i32 1
  %13 = load i8, ptr %12, align 4, !range !14
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %7, label %15

15:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !10
  %16 = load i16, ptr @grace_lock, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr @grace_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  br label %21

18:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !10
  %19 = load i16, ptr @grace_lock, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr @grace_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  br label %21

21:                                               ; preds = %18, %15
  %22 = xor i1 %10, true
  ret i1 %22
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exit_grace() #2 section ".exit.text" {
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @grace_net_ops) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_grace() #2 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @grace_net_ops) #4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @grace_init_net(ptr noundef %0) #2 section ".init.text" {
  %2 = load i32, ptr @grace_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @grace_exit_net(ptr noundef %0) #3 section ".ref.text" {
  %2 = load i32, ptr @grace_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp ne ptr %7, %6
  %9 = load i1, ptr @grace_exit_net.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %15, !prof !15

12:                                               ; preds = %1
  store i1 true, ptr @grace_exit_net.__already_done, align 1
  %13 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 14, i32 2
  %14 = load i32, ptr %13, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %14, ptr noundef nonnull @__func__.grace_exit_net) #4
  br label %15

15:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2149046079}
!9 = !{i64 2149046296}
!10 = !{i64 2148927724}
!11 = !{i64 2148923548}
!12 = !{i64 2148923623, i64 2148923650, i64 2148923697, i64 2148923719, i64 2148923747, i64 2148923767}
!13 = !{i64 2148950727}
!14 = !{i8 0, i8 2}
!15 = !{!"branch_weights", i32 1, i32 2000}
