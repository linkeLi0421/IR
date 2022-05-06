; ModuleID = '/llk/IR/net/core/fib_notifier.c_pt.bc'
source_filename = "../net/core/fib_notifier.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_call_fib_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22call_fib_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_call_fib_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_call_fib_notifiers:\09\09\09\09\09"
module asm "\09.asciz \09\22call_fib_notifiers\22\09\09\09\09\09"
module asm "__kstrtabns_call_fib_notifiers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_fib_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22register_fib_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_register_fib_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_fib_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_fib_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_fib_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_notifier_ops_register:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_notifier_ops_register\22\09\09\09\09\09"
module asm "__kstrtabns_fib_notifier_ops_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_notifier_ops_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_notifier_ops_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_fib_notifier_ops_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.105, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.105 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.fib_notifier_net = type { %struct.list_head, %struct.atomic_notifier_head }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.fib_notifier_ops = type { i32, %struct.list_head, ptr, ptr, ptr, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }

@__kstrtab_call_fib_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_call_fib_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_call_fib_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @call_fib_notifier to i32), ptr @__kstrtab_call_fib_notifier, ptr @__kstrtabns_call_fib_notifier }, section "___ksymtab+call_fib_notifier", align 4
@fib_notifier_net_id = internal global i32 0, align 4
@__kstrtab_call_fib_notifiers = external dso_local constant [0 x i8], align 1
@__kstrtabns_call_fib_notifiers = external dso_local constant [0 x i8], align 1
@__ksymtab_call_fib_notifiers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @call_fib_notifiers to i32), ptr @__kstrtab_call_fib_notifiers, ptr @__kstrtabns_call_fib_notifiers }, section "___ksymtab+call_fib_notifiers", align 4
@__kstrtab_register_fib_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_fib_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_register_fib_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_fib_notifier to i32), ptr @__kstrtab_register_fib_notifier, ptr @__kstrtabns_register_fib_notifier }, section "___ksymtab+register_fib_notifier", align 4
@__kstrtab_unregister_fib_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_fib_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_fib_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_fib_notifier to i32), ptr @__kstrtab_unregister_fib_notifier, ptr @__kstrtabns_unregister_fib_notifier }, section "___ksymtab+unregister_fib_notifier", align 4
@__kstrtab_fib_notifier_ops_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_notifier_ops_register = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_notifier_ops_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_notifier_ops_register to i32), ptr @__kstrtab_fib_notifier_ops_register, ptr @__kstrtabns_fib_notifier_ops_register }, section "___ksymtab+fib_notifier_ops_register", align 4
@__kstrtab_fib_notifier_ops_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_notifier_ops_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_notifier_ops_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_notifier_ops_unregister to i32), ptr @__kstrtab_fib_notifier_ops_unregister, ptr @__kstrtabns_fib_notifier_ops_unregister }, section "___ksymtab+fib_notifier_ops_unregister", align 4
@__initcall__kmod_fib_notifier__327_199_fib_notifier_init4 = internal global ptr @fib_notifier_init, section ".initcall4.init", align 4
@fib_notifier_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @fib_notifier_net_init, ptr null, ptr @fib_notifier_net_exit, ptr null, ptr @fib_notifier_net_id, i32 16 }, align 4
@fib_notifier_net_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [24 x i8] c"net/core/fib_notifier.c\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__initcall__kmod_fib_notifier__327_199_fib_notifier_init4, ptr @__ksymtab_call_fib_notifier, ptr @__ksymtab_call_fib_notifiers, ptr @__ksymtab_fib_notifier_ops_register, ptr @__ksymtab_fib_notifier_ops_unregister, ptr @__ksymtab_register_fib_notifier, ptr @__ksymtab_unregister_fib_notifier], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @call_fib_notifier(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = tail call i32 %4(ptr noundef %0, i32 noundef %1, ptr noundef %2) #4
  %6 = and i32 %5, -32769
  %7 = icmp sgt i32 %6, 1
  %8 = sub i32 1, %6
  %9 = select i1 %7, i32 %8, i32 0
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @call_fib_notifiers(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load i32, ptr @fib_notifier_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %6 = load volatile ptr, ptr %5, align 64
  %7 = getelementptr [0 x ptr], ptr %6, i32 0, i32 %4
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  %9 = getelementptr inbounds %struct.fib_notifier_net, ptr %8, i32 0, i32 1
  %10 = tail call i32 @atomic_notifier_call_chain(ptr noundef %9, i32 noundef %1, ptr noundef %2) #4
  %11 = and i32 %10, -32769
  %12 = icmp sgt i32 %11, 1
  %13 = sub i32 1, %11
  %14 = select i1 %12, i32 %13, i32 0
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_fib_notifier(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %6 = icmp eq ptr %2, null
  br label %7

7:                                                ; preds = %89, %4
  %8 = phi i32 [ 0, %4 ], [ %90, %89 ]
  %9 = load i32, ptr @fib_notifier_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %10 = load volatile ptr, ptr %5, align 64
  %11 = getelementptr [0 x ptr], ptr %10, i32 0, i32 %9
  %12 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  tail call void @rtnl_lock() #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %31, label %15

15:                                               ; preds = %27, %7
  %16 = phi ptr [ %29, %27 ], [ %13, %7 ]
  %17 = phi i32 [ %28, %27 ], [ 0, %7 ]
  %18 = getelementptr i8, ptr %16, i32 16
  %19 = load ptr, ptr %18, align 4
  %20 = tail call zeroext i1 @try_module_get(ptr noundef %19) #4
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = getelementptr i8, ptr %16, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %0) #4
  %25 = add i32 %24, %17
  %26 = load ptr, ptr %18, align 4
  tail call void @module_put(ptr noundef %26) #4
  br label %27

27:                                               ; preds = %21, %15
  %28 = phi i32 [ %25, %21 ], [ %17, %15 ]
  %29 = load volatile ptr, ptr %16, align 4
  %30 = icmp eq ptr %29, %12
  br i1 %30, label %31, label %15

31:                                               ; preds = %27, %7
  %32 = phi i32 [ 0, %7 ], [ %28, %27 ]
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  tail call void @rtnl_unlock() #4
  %33 = load i32, ptr @fib_notifier_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %34 = load volatile ptr, ptr %5, align 64
  %35 = getelementptr [0 x ptr], ptr %34, i32 0, i32 %33
  %36 = load ptr, ptr %35, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %54, label %39

39:                                               ; preds = %50, %31
  %40 = phi ptr [ %51, %50 ], [ %37, %31 ]
  %41 = getelementptr i8, ptr %40, i32 16
  %42 = load ptr, ptr %41, align 4
  %43 = tail call zeroext i1 @try_module_get(ptr noundef %42) #4
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = getelementptr i8, ptr %40, i32 12
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 %46(ptr noundef %0, ptr noundef %1, ptr noundef %3) #4
  %48 = load ptr, ptr %41, align 4
  tail call void @module_put(ptr noundef %48) #4
  %49 = icmp eq i32 %47, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %39
  %51 = load volatile ptr, ptr %40, align 4
  %52 = icmp eq ptr %51, %36
  br i1 %52, label %54, label %39

53:                                               ; preds = %44
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  br label %92

54:                                               ; preds = %50, %31
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  %55 = load i32, ptr @fib_notifier_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %56 = load volatile ptr, ptr %5, align 64
  %57 = getelementptr [0 x ptr], ptr %56, i32 0, i32 %55
  %58 = load ptr, ptr %57, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  %59 = getelementptr inbounds %struct.fib_notifier_net, ptr %58, i32 0, i32 1
  %60 = tail call i32 @atomic_notifier_chain_register(ptr noundef %59, ptr noundef %1) #4
  %61 = load i32, ptr @fib_notifier_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %62 = load volatile ptr, ptr %5, align 64
  %63 = getelementptr [0 x ptr], ptr %62, i32 0, i32 %61
  %64 = load ptr, ptr %63, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  tail call void @rtnl_lock() #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %65 = load volatile ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %64
  br i1 %66, label %83, label %67

67:                                               ; preds = %79, %54
  %68 = phi ptr [ %81, %79 ], [ %65, %54 ]
  %69 = phi i32 [ %80, %79 ], [ 0, %54 ]
  %70 = getelementptr i8, ptr %68, i32 16
  %71 = load ptr, ptr %70, align 4
  %72 = tail call zeroext i1 @try_module_get(ptr noundef %71) #4
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = getelementptr i8, ptr %68, i32 8
  %75 = load ptr, ptr %74, align 4
  %76 = tail call i32 %75(ptr noundef %0) #4
  %77 = add i32 %76, %69
  %78 = load ptr, ptr %70, align 4
  tail call void @module_put(ptr noundef %78) #4
  br label %79

79:                                               ; preds = %73, %67
  %80 = phi i32 [ %77, %73 ], [ %69, %67 ]
  %81 = load volatile ptr, ptr %68, align 4
  %82 = icmp eq ptr %81, %64
  br i1 %82, label %83, label %67

83:                                               ; preds = %79, %54
  %84 = phi i32 [ 0, %54 ], [ %80, %79 ]
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  tail call void @rtnl_unlock() #4
  %85 = icmp eq i32 %84, %32
  br i1 %85, label %92, label %86

86:                                               ; preds = %83
  %87 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef %59, ptr noundef %1) #4
  br i1 %6, label %89, label %88

88:                                               ; preds = %86
  tail call void %2(ptr noundef %1) #4
  br label %89

89:                                               ; preds = %88, %86
  %90 = add nuw nsw i32 %8, 1
  %91 = icmp eq i32 %90, 5
  br i1 %91, label %92, label %7

92:                                               ; preds = %89, %83, %53
  %93 = phi i32 [ %47, %53 ], [ 0, %83 ], [ -16, %89 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unregister_fib_notifier(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @fib_notifier_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %5 = load volatile ptr, ptr %4, align 64
  %6 = getelementptr [0 x ptr], ptr %5, i32 0, i32 %3
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  %8 = getelementptr inbounds %struct.fib_notifier_net, ptr %7, i32 0, i32 1
  %9 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef %8, ptr noundef %1) #4
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fib_notifier_ops_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @kmemdup(ptr noundef %0, i32 noundef 32, i32 noundef 3264) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @fib_notifier_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %7 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 37
  %8 = load volatile ptr, ptr %7, align 64
  %9 = getelementptr [0 x ptr], ptr %8, i32 0, i32 %6
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  br label %11

11:                                               ; preds = %15, %5
  %12 = phi ptr [ %10, %5 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %13, i32 -4
  %17 = load i32, ptr %3, align 4
  %18 = load i32, ptr %16, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %25, label %11

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.fib_notifier_ops, ptr %3, i32 0, i32 1
  %22 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  store ptr %10, ptr %21, align 4
  %24 = getelementptr inbounds %struct.fib_notifier_ops, ptr %3, i32 0, i32 1, i32 1
  store ptr %23, ptr %24, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !10
  store volatile ptr %21, ptr %23, align 4
  store ptr %21, ptr %22, align 4
  br label %26

25:                                               ; preds = %15
  tail call void @kfree(ptr noundef nonnull %3) #4
  br label %26

26:                                               ; preds = %25, %20, %2
  %27 = phi ptr [ inttoptr (i32 -17 to ptr), %25 ], [ inttoptr (i32 -12 to ptr), %2 ], [ %3, %20 ]
  ret ptr %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib_notifier_ops_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fib_notifier_ops, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.fib_notifier_ops, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  %7 = icmp eq ptr %0, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.fib_notifier_ops, ptr %0, i32 0, i32 5
  tail call void @kvfree_call_rcu(ptr noundef %9, ptr noundef nonnull inttoptr (i32 24 to ptr)) #4
  br label %10

10:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @fib_notifier_init() #2 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @fib_notifier_net_ops) #4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @fib_notifier_net_init(ptr noundef %0) #2 section ".init.text" {
  %2 = load i32, ptr @fib_notifier_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.fib_notifier_net, ptr %6, i32 0, i32 1
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.fib_notifier_net, ptr %6, i32 0, i32 1, i32 1
  store ptr null, ptr %9, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fib_notifier_net_exit(ptr noundef %0) #3 section ".ref.text" {
  %2 = load i32, ptr @fib_notifier_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp ne ptr %7, %6
  %9 = load i1, ptr @fib_notifier_net_exit.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !11

12:                                               ; preds = %1
  store i1 true, ptr @fib_notifier_net_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 184, i32 noundef 9, ptr noundef null) #4
  br label %13

13:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

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
!8 = !{i64 2149293880}
!9 = !{i64 2149294097}
!10 = !{i64 2149319121}
!11 = !{!"branch_weights", i32 1, i32 2000}
