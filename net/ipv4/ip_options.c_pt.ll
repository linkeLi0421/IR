; ModuleID = '/llk/IR/net/ipv4/ip_options.c_pt.bc'
source_filename = "../net/ipv4/ip_options.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ip_options_compile:\09\09\09\09\09"
module asm "\09.asciz \09\22__ip_options_compile\22\09\09\09\09\09"
module asm "__kstrtabns___ip_options_compile:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_options_compile:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_options_compile\22\09\09\09\09\09"
module asm "__kstrtabns_ip_options_compile:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_options_rcv_srr:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_options_rcv_srr\22\09\09\09\09\09"
module asm "__kstrtabns_ip_options_rcv_srr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.115, %union.anon.116, [48 x i8], %union.anon.117, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.119, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.115 = type { ptr }
%union.anon.116 = type { i64 }
%union.anon.117 = type { %struct.anon.118 }
%struct.anon.118 = type { i32, ptr }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.121, i32, i32, i32, i16, i16, %union.anon.123, %union.anon.124, %union.anon.125, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.121 = type { i32 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { i32 }
%union.anon.125 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.60, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.60 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.ip_options_rcu = type { %struct.callback_head, %struct.ip_options }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.136, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.netdevice_tracker = type {}
%union.anon.136 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.54 }
%union.anon.54 = type { [4 x i32] }

@__kstrtab___ip_options_compile = external dso_local constant [0 x i8], align 1
@__kstrtabns___ip_options_compile = external dso_local constant [0 x i8], align 1
@__ksymtab___ip_options_compile = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ip_options_compile to i32), ptr @__kstrtab___ip_options_compile, ptr @__kstrtabns___ip_options_compile }, section "___ksymtab+__ip_options_compile", align 4
@__kstrtab_ip_options_compile = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_options_compile = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_options_compile = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_options_compile to i32), ptr @__kstrtab_ip_options_compile, ptr @__kstrtabns_ip_options_compile }, section "___ksymtab+ip_options_compile", align 4
@.str = private unnamed_addr constant [39 x i8] c"\012IPv4: %s(): Argh! Destination lost!\0A\00", align 1
@__func__.ip_forward_options = private unnamed_addr constant [19 x i8] c"ip_forward_options\00", align 1
@__kstrtab_ip_options_rcv_srr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_options_rcv_srr = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_options_rcv_srr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_options_rcv_srr to i32), ptr @__kstrtab_ip_options_rcv_srr, ptr @__kstrtabns_ip_options_rcv_srr }, section "___ksymtab+ip_options_rcv_srr", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab___ip_options_compile, ptr @__ksymtab_ip_options_compile, ptr @__ksymtab_ip_options_rcv_srr], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_options_build(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %12, ptr noundef align 4 dereferenceable(16) %1, i32 16, i1 false)
  %13 = getelementptr i8, ptr %11, i32 20
  %14 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 10
  %15 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 2
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %13, ptr align 4 %14, i32 %17, i1 false)
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 13
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %5
  %22 = zext i8 %19 to i32
  %23 = getelementptr i8, ptr %11, i32 %22
  %24 = add nuw nsw i32 %22, 1
  %25 = getelementptr i8, ptr %11, i32 %24
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr i8, ptr %23, i32 %27
  %29 = getelementptr i8, ptr %28, i32 -4
  store i32 %2, ptr %29, align 1
  br label %30

30:                                               ; preds = %21, %5
  %31 = icmp eq i32 %4, 0
  br i1 %31, label %32, label %81

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %34 = load i8, ptr %33, align 4
  %35 = and i8 %34, 8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 14
  %39 = load i8, ptr %38, align 2
  %40 = zext i8 %39 to i32
  %41 = getelementptr i8, ptr %11, i32 %40
  %42 = add nuw nsw i32 %40, 2
  %43 = getelementptr i8, ptr %11, i32 %42
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = getelementptr i8, ptr %41, i32 %45
  %47 = getelementptr i8, ptr %46, i32 -5
  tail call void @ip_rt_get_source(ptr noundef %47, ptr noundef %0, ptr noundef %3) #11
  %48 = load i8, ptr %33, align 4
  br label %49

49:                                               ; preds = %37, %32
  %50 = phi i8 [ %48, %37 ], [ %34, %32 ]
  %51 = and i8 %50, 32
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 15
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = getelementptr i8, ptr %11, i32 %56
  %58 = add nuw nsw i32 %56, 2
  %59 = getelementptr i8, ptr %11, i32 %58
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = getelementptr i8, ptr %57, i32 %61
  %63 = getelementptr i8, ptr %62, i32 -9
  tail call void @ip_rt_get_source(ptr noundef %63, ptr noundef %0, ptr noundef %3) #11
  %64 = load i8, ptr %33, align 4
  br label %65

65:                                               ; preds = %53, %49
  %66 = phi i8 [ %64, %53 ], [ %50, %49 ]
  %67 = and i8 %66, 16
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %109, label %69

69:                                               ; preds = %65
  %70 = tail call i32 @inet_current_timestamp() #11
  %71 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 15
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  %74 = getelementptr i8, ptr %11, i32 %73
  %75 = add nuw nsw i32 %73, 2
  %76 = getelementptr i8, ptr %11, i32 %75
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = getelementptr i8, ptr %74, i32 %78
  %80 = getelementptr i8, ptr %79, i32 -5
  store i32 %70, ptr %80, align 1
  br label %109

81:                                               ; preds = %30
  %82 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 14
  %83 = load i8, ptr %82, align 2
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %81
  %86 = zext i8 %83 to i32
  %87 = getelementptr i8, ptr %11, i32 %86
  %88 = add nuw nsw i32 %86, 1
  %89 = getelementptr i8, ptr %11, i32 %88
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  tail call void @llvm.memset.p0.i32(ptr align 1 %87, i8 1, i32 %91, i1 false)
  store i8 0, ptr %82, align 2
  %92 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %93 = load i8, ptr %92, align 4
  %94 = and i8 %93, -9
  store i8 %94, ptr %92, align 4
  br label %95

95:                                               ; preds = %85, %81
  %96 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 15
  %97 = load i8, ptr %96, align 1
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %95
  %100 = zext i8 %97 to i32
  %101 = getelementptr i8, ptr %11, i32 %100
  %102 = add nuw nsw i32 %100, 1
  %103 = getelementptr i8, ptr %11, i32 %102
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  tail call void @llvm.memset.p0.i32(ptr align 1 %101, i8 1, i32 %105, i1 false)
  store i8 0, ptr %96, align 1
  %106 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %107 = load i8, ptr %106, align 4
  %108 = and i8 %107, -49
  store i8 %108, ptr %106, align 4
  br label %109

109:                                              ; preds = %99, %95, %69, %65
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_rt_get_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_current_timestamp() local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ip_options_echo(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %1, i8 0, i32 16, i1 false)
  %5 = getelementptr inbounds %struct.ip_options, ptr %3, i32 0, i32 2
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %232, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 10
  %16 = getelementptr inbounds %struct.ip_options, ptr %3, i32 0, i32 4
  %17 = load i8, ptr %16, align 2
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %50, label %19

19:                                               ; preds = %8
  %20 = zext i8 %17 to i32
  %21 = add nuw nsw i32 %20, 1
  %22 = getelementptr i8, ptr %14, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = add nuw nsw i32 %20, 2
  %26 = getelementptr i8, ptr %14, i32 %25
  %27 = load i8, ptr %26, align 1
  %28 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 2
  %29 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 4
  store i8 20, ptr %29, align 2
  %30 = load i8, ptr %16, align 2
  %31 = zext i8 %30 to i32
  %32 = getelementptr i8, ptr %14, i32 %31
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %15, ptr align 1 %32, i32 %24, i1 false)
  %33 = getelementptr inbounds %struct.ip_options, ptr %3, i32 0, i32 6
  %34 = load i8, ptr %33, align 4
  %35 = and i8 %34, 8
  %36 = icmp eq i8 %35, 0
  %37 = icmp ugt i8 %27, %23
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %19
  %40 = zext i8 %27 to i32
  %41 = add nuw nsw i32 %40, 3
  %42 = icmp ugt i32 %41, %24
  br i1 %42, label %232, label %43

43:                                               ; preds = %39
  %44 = add i8 %27, 4
  %45 = getelementptr i8, ptr %15, i32 2
  store i8 %44, ptr %45, align 1
  %46 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 6
  store i8 8, ptr %46, align 4
  br label %47

47:                                               ; preds = %43, %19
  %48 = getelementptr i8, ptr %15, i32 %24
  store i8 %23, ptr %28, align 4
  %49 = add i8 %23, 20
  br label %50

50:                                               ; preds = %47, %8
  %51 = phi i8 [ %49, %47 ], [ 20, %8 ]
  %52 = phi ptr [ %48, %47 ], [ %15, %8 ]
  %53 = getelementptr inbounds %struct.ip_options, ptr %3, i32 0, i32 5
  %54 = load i8, ptr %53, align 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %126, label %56

56:                                               ; preds = %50
  %57 = zext i8 %54 to i32
  %58 = add nuw nsw i32 %57, 1
  %59 = getelementptr i8, ptr %14, i32 %58
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = add nuw nsw i32 %57, 2
  %63 = getelementptr i8, ptr %14, i32 %62
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 2
  %67 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 5
  store i8 %51, ptr %67, align 1
  %68 = load i8, ptr %53, align 1
  %69 = zext i8 %68 to i32
  %70 = getelementptr i8, ptr %14, i32 %69
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %52, ptr align 1 %70, i32 %61, i1 false)
  %71 = icmp ugt i8 %64, %60
  br i1 %71, label %122, label %72

72:                                               ; preds = %56
  %73 = getelementptr inbounds %struct.ip_options, ptr %3, i32 0, i32 6
  %74 = load i8, ptr %73, align 4
  %75 = and i8 %74, 32
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %72
  %78 = add nuw nsw i32 %65, 3
  %79 = icmp ugt i32 %78, %61
  br i1 %79, label %232, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 6
  %82 = load i8, ptr %81, align 4
  %83 = or i8 %82, 32
  store i8 %83, ptr %81, align 4
  %84 = add nuw nsw i32 %65, 4
  %85 = load i8, ptr %73, align 4
  br label %86

86:                                               ; preds = %80, %72
  %87 = phi i8 [ %85, %80 ], [ %74, %72 ]
  %88 = phi i32 [ %84, %80 ], [ %65, %72 ]
  %89 = and i8 %87, 16
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %118, label %91

91:                                               ; preds = %86
  %92 = add nuw nsw i32 %88, 3
  %93 = icmp ugt i32 %92, %61
  br i1 %93, label %232, label %94

94:                                               ; preds = %91
  %95 = getelementptr i8, ptr %52, i32 3
  %96 = load i8, ptr %95, align 1
  %97 = and i8 %96, 15
  %98 = icmp eq i8 %97, 3
  %99 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 6
  %100 = load i8, ptr %99, align 4
  br i1 %98, label %101, label %113

101:                                              ; preds = %94
  %102 = and i8 %100, -17
  store i8 %102, ptr %99, align 4
  %103 = add nuw nsw i32 %88, 7
  %104 = icmp ugt i32 %103, %61
  br i1 %104, label %118, label %105

105:                                              ; preds = %101
  %106 = getelementptr i8, ptr %52, i32 %88
  %107 = getelementptr i8, ptr %106, i32 -1
  %108 = load i32, ptr %107, align 1
  %109 = tail call i32 @inet_addr_type(ptr noundef %0, i32 noundef %108) #11
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %118, label %111

111:                                              ; preds = %105
  %112 = load i8, ptr %99, align 4
  br label %113

113:                                              ; preds = %111, %94
  %114 = phi i8 [ %112, %111 ], [ %100, %94 ]
  %115 = phi i32 [ 8, %111 ], [ 4, %94 ]
  %116 = or i8 %114, 16
  store i8 %116, ptr %99, align 4
  %117 = add nuw nsw i32 %88, %115
  br label %118

118:                                              ; preds = %113, %105, %101, %86
  %119 = phi i32 [ %88, %101 ], [ %88, %86 ], [ %88, %105 ], [ %117, %113 ]
  %120 = trunc i32 %119 to i8
  %121 = getelementptr i8, ptr %52, i32 2
  store i8 %120, ptr %121, align 1
  br label %122

122:                                              ; preds = %118, %56
  %123 = getelementptr i8, ptr %52, i32 %61
  %124 = load i8, ptr %66, align 4
  %125 = add i8 %124, %60
  store i8 %125, ptr %66, align 4
  br label %126

126:                                              ; preds = %122, %50
  %127 = phi ptr [ %123, %122 ], [ %52, %50 ]
  %128 = getelementptr inbounds %struct.ip_options, ptr %3, i32 0, i32 3
  %129 = load i8, ptr %128, align 1
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %195, label %131

131:                                              ; preds = %126
  %132 = zext i8 %129 to i32
  %133 = getelementptr i8, ptr %14, i32 %132
  %134 = getelementptr i8, ptr %133, i32 1
  %135 = load i8, ptr %134, align 1
  %136 = getelementptr i8, ptr %133, i32 2
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp ugt i8 %137, %135
  %140 = zext i8 %135 to i32
  %141 = add nuw nsw i32 %140, 1
  %142 = select i1 %139, i32 %141, i32 %138
  %143 = icmp ugt i32 %142, 7
  br i1 %143, label %144, label %195

144:                                              ; preds = %131
  %145 = add nsw i32 %142, -5
  %146 = getelementptr i8, ptr %133, i32 %145
  %147 = load i32, ptr %146, align 1
  %148 = add nsw i32 %142, -8
  %149 = icmp ugt i32 %142, 11
  br i1 %149, label %150, label %161

150:                                              ; preds = %150, %144
  %151 = phi i32 [ %159, %150 ], [ 4, %144 ]
  %152 = phi i32 [ %158, %150 ], [ %148, %144 ]
  %153 = add nsw i32 %151, -1
  %154 = getelementptr i8, ptr %127, i32 %153
  %155 = add nsw i32 %152, -1
  %156 = getelementptr i8, ptr %133, i32 %155
  %157 = load i32, ptr %156, align 1
  store i32 %157, ptr %154, align 1
  %158 = add nsw i32 %152, -4
  %159 = add nuw nsw i32 %151, 4
  %160 = icmp ugt i32 %152, 7
  br i1 %160, label %150, label %161

161:                                              ; preds = %150, %144
  %162 = phi i32 [ %148, %144 ], [ %158, %150 ]
  %163 = phi i32 [ 4, %144 ], [ %159, %150 ]
  %164 = load ptr, ptr %9, align 8
  %165 = load i16, ptr %11, align 4
  %166 = zext i16 %165 to i32
  %167 = getelementptr i8, ptr %164, i32 %166
  %168 = getelementptr inbounds %struct.iphdr, ptr %167, i32 0, i32 8
  %169 = add nuw nsw i32 %162, 3
  %170 = getelementptr i8, ptr %133, i32 %169
  %171 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %168, ptr noundef dereferenceable(4) %170, i32 4)
  %172 = icmp eq i32 %171, 0
  %173 = add i32 %163, -4
  %174 = select i1 %172, i32 %173, i32 %163
  %175 = icmp sgt i32 %174, 3
  br i1 %175, label %176, label %195

176:                                              ; preds = %161
  store i32 %147, ptr %1, align 4
  %177 = load i8, ptr %133, align 1
  store i8 %177, ptr %127, align 1
  %178 = or i32 %174, 3
  %179 = trunc i32 %178 to i8
  %180 = getelementptr i8, ptr %127, i32 1
  store i8 %179, ptr %180, align 1
  %181 = getelementptr i8, ptr %127, i32 2
  store i8 4, ptr %181, align 1
  %182 = getelementptr i8, ptr %127, i32 %178
  %183 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 2
  %184 = load i8, ptr %183, align 4
  %185 = add i8 %184, 20
  %186 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 3
  store i8 %185, ptr %186, align 1
  %187 = add i8 %184, %179
  store i8 %187, ptr %183, align 4
  %188 = getelementptr inbounds %struct.ip_options, ptr %3, i32 0, i32 6
  %189 = load i8, ptr %188, align 4
  %190 = and i8 %189, 1
  %191 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 6
  %192 = load i8, ptr %191, align 4
  %193 = and i8 %192, -2
  %194 = or i8 %193, %190
  store i8 %194, ptr %191, align 4
  br label %195

195:                                              ; preds = %176, %161, %131, %126
  %196 = phi ptr [ %127, %126 ], [ %182, %176 ], [ %127, %161 ], [ %127, %131 ]
  %197 = getelementptr inbounds %struct.ip_options, ptr %3, i32 0, i32 8
  %198 = load i8, ptr %197, align 2
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 2
  %202 = load i8, ptr %201, align 4
  br label %219

203:                                              ; preds = %195
  %204 = zext i8 %198 to i32
  %205 = add nuw nsw i32 %204, 1
  %206 = getelementptr i8, ptr %14, i32 %205
  %207 = load i8, ptr %206, align 1
  %208 = zext i8 %207 to i32
  %209 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 2
  %210 = load i8, ptr %209, align 4
  %211 = add i8 %210, 20
  %212 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 8
  store i8 %211, ptr %212, align 2
  %213 = load i8, ptr %197, align 2
  %214 = zext i8 %213 to i32
  %215 = getelementptr i8, ptr %14, i32 %214
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %196, ptr align 1 %215, i32 %208, i1 false)
  %216 = getelementptr i8, ptr %196, i32 %208
  %217 = load i8, ptr %209, align 4
  %218 = add i8 %217, %207
  store i8 %218, ptr %209, align 4
  br label %219

219:                                              ; preds = %203, %200
  %220 = phi i8 [ %218, %203 ], [ %202, %200 ]
  %221 = phi ptr [ %216, %203 ], [ %196, %200 ]
  %222 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 2
  %223 = and i8 %220, 3
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %232, label %225

225:                                              ; preds = %225, %219
  %226 = phi ptr [ %227, %225 ], [ %221, %219 ]
  %227 = getelementptr i8, ptr %226, i32 1
  store i8 0, ptr %226, align 1
  %228 = load i8, ptr %222, align 4
  %229 = add i8 %228, 1
  store i8 %229, ptr %222, align 4
  %230 = and i8 %229, 3
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %232, label %225

232:                                              ; preds = %225, %219, %91, %77, %39, %4
  %233 = phi i32 [ 0, %4 ], [ -22, %39 ], [ -22, %77 ], [ -22, %91 ], [ 0, %219 ], [ 0, %225 ]
  ret i32 %233
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_addr_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_options_fragment(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %37, label %5

5:                                                ; preds = %1
  %6 = zext i8 %3 to i32
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = getelementptr i8, ptr %12, i32 20
  br label %14

14:                                               ; preds = %20, %5
  %15 = phi i32 [ %22, %20 ], [ %6, %5 ]
  %16 = phi ptr [ %23, %20 ], [ %13, %5 ]
  %17 = load i8, ptr %16, align 1
  switch i8 %17, label %25 [
    i8 0, label %43
    i8 1, label %18
  ]

18:                                               ; preds = %14
  %19 = add nsw i32 %15, -1
  br label %20

20:                                               ; preds = %35, %18
  %21 = phi i32 [ 1, %18 ], [ %28, %35 ]
  %22 = phi i32 [ %19, %18 ], [ %36, %35 ]
  %23 = getelementptr i8, ptr %16, i32 %21
  %24 = icmp sgt i32 %22, 0
  br i1 %24, label %14, label %37

25:                                               ; preds = %14
  %26 = getelementptr i8, ptr %16, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ult i8 %27, 2
  %30 = icmp ult i32 %15, %28
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %43, label %32

32:                                               ; preds = %25
  %33 = icmp sgt i8 %17, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  tail call void @llvm.memset.p0.i32(ptr align 1 %16, i8 1, i32 %28, i1 false)
  br label %35

35:                                               ; preds = %34, %32
  %36 = sub nsw i32 %15, %28
  br label %20

37:                                               ; preds = %20, %1
  %38 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 15
  store i8 0, ptr %38, align 1
  %39 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 14
  store i8 0, ptr %39, align 2
  %40 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %41 = load i8, ptr %40, align 4
  %42 = and i8 %41, -57
  store i8 %42, ptr %40, align 4
  br label %43

43:                                               ; preds = %37, %25, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ip_options_compile(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3) #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, -2
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = getelementptr %struct.iphdr, ptr %16, i32 1
  br label %20

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 10
  br label %20

20:                                               ; preds = %18, %6
  %21 = phi ptr [ %19, %18 ], [ %17, %6 ]
  %22 = phi ptr [ null, %18 ], [ %10, %6 ]
  %23 = getelementptr i8, ptr %21, i32 -20
  %24 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 2
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %334, label %27

27:                                               ; preds = %20
  %28 = zext i8 %25 to i32
  %29 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 11
  %30 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %23 to i32
  %32 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 7
  %33 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 5
  %34 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 6
  %35 = icmp eq ptr %22, null
  %36 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 4
  %37 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 3
  br label %38

38:                                               ; preds = %316, %27
  %39 = phi i32 [ %28, %27 ], [ %319, %316 ]
  %40 = phi ptr [ %21, %27 ], [ %320, %316 ]
  %41 = phi i32 [ 0, %27 ], [ %317, %316 ]
  br label %42

42:                                               ; preds = %61, %38
  %43 = phi i32 [ %39, %38 ], [ %62, %61 ]
  %44 = phi ptr [ %40, %38 ], [ %63, %61 ]
  %45 = load i8, ptr %44, align 1
  switch i8 %45, label %65 [
    i8 0, label %46
    i8 1, label %61
  ]

46:                                               ; preds = %42
  %47 = add nsw i32 %43, -1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %334, label %49

49:                                               ; preds = %58, %46
  %50 = phi i32 [ %59, %58 ], [ %47, %46 ]
  %51 = phi ptr [ %52, %58 ], [ %44, %46 ]
  %52 = getelementptr i8, ptr %51, i32 1
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  store i8 0, ptr %52, align 1
  %56 = load i8, ptr %34, align 4
  %57 = or i8 %56, 4
  store i8 %57, ptr %34, align 4
  br label %58

58:                                               ; preds = %55, %49
  %59 = add i32 %50, -1
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %49, label %334

61:                                               ; preds = %42
  %62 = add nsw i32 %43, -1
  %63 = getelementptr i8, ptr %44, i32 1
  %64 = icmp sgt i32 %43, 1
  br i1 %64, label %42, label %334

65:                                               ; preds = %42
  %66 = icmp slt i32 %43, 2
  br i1 %66, label %326, label %67, !prof !8

67:                                               ; preds = %65
  %68 = getelementptr i8, ptr %44, i32 1
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp ult i8 %69, 2
  %72 = icmp ult i32 %43, %70
  %73 = select i1 %71, i1 true, i1 %72
  br i1 %73, label %326, label %74

74:                                               ; preds = %67
  switch i8 %45, label %312 [
    i8 -119, label %75
    i8 -125, label %75
    i8 7, label %110
    i8 68, label %151
    i8 -108, label %253
    i8 -122, label %267
  ]

75:                                               ; preds = %74, %74
  %76 = icmp ult i8 %69, 3
  br i1 %76, label %326, label %77

77:                                               ; preds = %75
  %78 = getelementptr i8, ptr %44, i32 2
  %79 = load i8, ptr %78, align 1
  %80 = icmp ult i8 %79, 4
  br i1 %80, label %322, label %81

81:                                               ; preds = %77
  %82 = load i8, ptr %37, align 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %326

84:                                               ; preds = %81
  br i1 %5, label %85, label %100

85:                                               ; preds = %84
  %86 = icmp ne i8 %79, 4
  %87 = icmp ult i8 %69, 7
  %88 = select i1 %86, i1 true, i1 %87
  br i1 %88, label %326, label %89

89:                                               ; preds = %85
  %90 = add nuw nsw i32 %70, 1
  %91 = and i32 %90, 3
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %326

93:                                               ; preds = %89
  %94 = getelementptr i8, ptr %44, i32 3
  %95 = load i32, ptr %94, align 1
  store i32 %95, ptr %1, align 4
  %96 = icmp ugt i8 %69, 7
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = getelementptr i8, ptr %44, i32 7
  %99 = add nsw i32 %70, -7
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %94, ptr align 1 %98, i32 %99, i1 false)
  br label %100

100:                                              ; preds = %97, %93, %84
  %101 = load i8, ptr %44, align 1
  %102 = icmp eq i8 %101, -119
  %103 = zext i1 %102 to i8
  %104 = load i8, ptr %34, align 4
  %105 = and i8 %104, -2
  %106 = or i8 %105, %103
  store i8 %106, ptr %34, align 4
  %107 = ptrtoint ptr %44 to i32
  %108 = sub i32 %107, %31
  %109 = trunc i32 %108 to i8
  store i8 %109, ptr %37, align 1
  br label %316

110:                                              ; preds = %74
  %111 = load i8, ptr %36, align 2
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %326

113:                                              ; preds = %110
  %114 = icmp ult i8 %69, 3
  br i1 %114, label %326, label %115

115:                                              ; preds = %113
  %116 = getelementptr i8, ptr %44, i32 2
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp ult i8 %117, 4
  br i1 %119, label %326, label %120

120:                                              ; preds = %115
  %121 = icmp ugt i8 %117, %69
  br i1 %121, label %146, label %122

122:                                              ; preds = %120
  %123 = add nuw nsw i32 %118, 3
  %124 = icmp ugt i32 %123, %70
  br i1 %124, label %326, label %125

125:                                              ; preds = %122
  br i1 %35, label %140, label %126

126:                                              ; preds = %125
  %127 = icmp eq i32 %41, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %126
  %129 = tail call i32 @fib_compute_spec_dst(ptr noundef %2) #11
  %130 = load i8, ptr %116, align 1
  %131 = zext i8 %130 to i32
  br label %132

132:                                              ; preds = %128, %126
  %133 = phi i32 [ %118, %126 ], [ %131, %128 ]
  %134 = phi i32 [ %41, %126 ], [ %129, %128 ]
  %135 = add nsw i32 %133, -1
  %136 = getelementptr i8, ptr %44, i32 %135
  store i32 %134, ptr %136, align 1
  %137 = load i8, ptr %34, align 4
  %138 = or i8 %137, 4
  store i8 %138, ptr %34, align 4
  %139 = load i8, ptr %116, align 1
  br label %140

140:                                              ; preds = %132, %125
  %141 = phi i8 [ %117, %125 ], [ %139, %132 ]
  %142 = phi i32 [ %41, %125 ], [ %134, %132 ]
  %143 = add i8 %141, 4
  store i8 %143, ptr %116, align 1
  %144 = load i8, ptr %34, align 4
  %145 = or i8 %144, 8
  store i8 %145, ptr %34, align 4
  br label %146

146:                                              ; preds = %140, %120
  %147 = phi i32 [ %41, %120 ], [ %142, %140 ]
  %148 = ptrtoint ptr %44 to i32
  %149 = sub i32 %148, %31
  %150 = trunc i32 %149 to i8
  store i8 %150, ptr %36, align 2
  br label %316

151:                                              ; preds = %74
  %152 = load i8, ptr %33, align 1
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %326

154:                                              ; preds = %151
  %155 = icmp ult i8 %69, 4
  br i1 %155, label %326, label %156

156:                                              ; preds = %154
  %157 = getelementptr i8, ptr %44, i32 2
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp ult i8 %158, 5
  br i1 %160, label %326, label %161

161:                                              ; preds = %156
  %162 = icmp ugt i8 %158, %69
  br i1 %162, label %229, label %163

163:                                              ; preds = %161
  %164 = add nuw nsw i32 %159, 3
  %165 = icmp ugt i32 %164, %70
  br i1 %165, label %326, label %166

166:                                              ; preds = %163
  %167 = getelementptr i8, ptr %44, i32 3
  %168 = load i8, ptr %167, align 1
  %169 = and i8 %168, 15
  %170 = zext i8 %169 to i32
  switch i32 %170, label %204 [
    i32 0, label %171
    i32 1, label %178
    i32 3, label %193
  ]

171:                                              ; preds = %166
  %172 = add nsw i32 %159, -1
  %173 = getelementptr i8, ptr %44, i32 %172
  %174 = load i8, ptr %34, align 4
  %175 = or i8 %174, 16
  store i8 %175, ptr %34, align 4
  %176 = load i8, ptr %157, align 1
  %177 = add i8 %176, 4
  store i8 %177, ptr %157, align 1
  br i1 %5, label %248, label %223

178:                                              ; preds = %166
  %179 = add nuw nsw i32 %159, 7
  %180 = icmp ugt i32 %179, %70
  br i1 %180, label %326, label %181

181:                                              ; preds = %178
  br i1 %35, label %215, label %182

182:                                              ; preds = %181
  %183 = icmp eq i32 %41, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %182
  %185 = tail call i32 @fib_compute_spec_dst(ptr noundef %2) #11
  %186 = load i8, ptr %157, align 1
  %187 = zext i8 %186 to i32
  br label %188

188:                                              ; preds = %184, %182
  %189 = phi i32 [ %159, %182 ], [ %187, %184 ]
  %190 = phi i32 [ %41, %182 ], [ %185, %184 ]
  %191 = add nsw i32 %189, -1
  %192 = getelementptr i8, ptr %44, i32 %191
  store i32 %190, ptr %192, align 1
  br label %208

193:                                              ; preds = %166
  %194 = add nuw nsw i32 %159, 7
  %195 = icmp ugt i32 %194, %70
  br i1 %195, label %326, label %196

196:                                              ; preds = %193
  %197 = add nsw i32 %159, -1
  %198 = getelementptr i8, ptr %44, i32 %197
  %199 = load i32, ptr %198, align 1
  %200 = tail call i32 @inet_addr_type(ptr noundef %0, i32 noundef %199) #11
  %201 = icmp eq i32 %200, 1
  %202 = or i1 %5, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %196
  br i1 %201, label %248, label %215

204:                                              ; preds = %166
  br i1 %5, label %205, label %248

205:                                              ; preds = %204
  %206 = load ptr, ptr %29, align 4
  %207 = tail call zeroext i1 @ns_capable(ptr noundef %206, i32 noundef 13) #11
  br i1 %207, label %248, label %324

208:                                              ; preds = %196, %188
  %209 = phi i8 [ 48, %188 ], [ 16, %196 ]
  %210 = phi i32 [ %190, %188 ], [ %41, %196 ]
  %211 = load i8, ptr %157, align 1
  %212 = zext i8 %211 to i32
  %213 = add nuw nsw i32 %212, 3
  %214 = getelementptr i8, ptr %44, i32 %213
  br label %215

215:                                              ; preds = %208, %203, %181
  %216 = phi i8 [ 48, %181 ], [ 16, %203 ], [ %209, %208 ]
  %217 = phi i32 [ %41, %181 ], [ %41, %203 ], [ %210, %208 ]
  %218 = phi ptr [ null, %181 ], [ null, %203 ], [ %214, %208 ]
  %219 = load i8, ptr %34, align 4
  %220 = or i8 %219, %216
  store i8 %220, ptr %34, align 4
  %221 = load i8, ptr %157, align 1
  %222 = add i8 %221, 8
  store i8 %222, ptr %157, align 1
  br label %223

223:                                              ; preds = %215, %171
  %224 = phi i32 [ %41, %171 ], [ %217, %215 ]
  %225 = phi ptr [ %173, %171 ], [ %218, %215 ]
  %226 = icmp eq ptr %225, null
  br i1 %226, label %248, label %227

227:                                              ; preds = %223
  %228 = tail call i32 @inet_current_timestamp() #11
  store i32 %228, ptr %225, align 1
  br label %244

229:                                              ; preds = %161
  %230 = getelementptr i8, ptr %44, i32 3
  %231 = load i8, ptr %230, align 1
  %232 = zext i8 %231 to i32
  %233 = and i32 %232, 15
  %234 = icmp eq i32 %233, 3
  br i1 %234, label %248, label %235

235:                                              ; preds = %229
  %236 = and i32 %232, 240
  %237 = icmp eq i32 %236, 240
  %238 = or i1 %5, %237
  br i1 %238, label %243, label %239

239:                                              ; preds = %235
  %240 = add nuw nsw i32 %236, 16
  %241 = or i32 %240, %233
  %242 = trunc i32 %241 to i8
  store i8 %242, ptr %230, align 1
  br label %244

243:                                              ; preds = %235
  br i1 %237, label %326, label %248

244:                                              ; preds = %239, %227
  %245 = phi i32 [ %41, %239 ], [ %224, %227 ]
  %246 = load i8, ptr %34, align 4
  %247 = or i8 %246, 4
  store i8 %247, ptr %34, align 4
  br label %248

248:                                              ; preds = %244, %243, %229, %223, %205, %204, %203, %171
  %249 = phi i32 [ %41, %229 ], [ %41, %243 ], [ %224, %223 ], [ %41, %204 ], [ %41, %205 ], [ %41, %203 ], [ %41, %171 ], [ %245, %244 ]
  %250 = ptrtoint ptr %44 to i32
  %251 = sub i32 %250, %31
  %252 = trunc i32 %251 to i8
  store i8 %252, ptr %33, align 1
  br label %316

253:                                              ; preds = %74
  %254 = icmp ult i8 %69, 4
  br i1 %254, label %326, label %255

255:                                              ; preds = %253
  %256 = getelementptr i8, ptr %44, i32 2
  %257 = load i8, ptr %256, align 1
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %259, label %316

259:                                              ; preds = %255
  %260 = getelementptr i8, ptr %44, i32 3
  %261 = load i8, ptr %260, align 1
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %263, label %316

263:                                              ; preds = %259
  %264 = ptrtoint ptr %44 to i32
  %265 = sub i32 %264, %31
  %266 = trunc i32 %265 to i8
  store i8 %266, ptr %32, align 1
  br label %316

267:                                              ; preds = %74
  br i1 %5, label %268, label %271

268:                                              ; preds = %267
  %269 = load ptr, ptr %29, align 4
  %270 = tail call zeroext i1 @ns_capable(ptr noundef %269, i32 noundef 13) #11
  br i1 %270, label %271, label %326

271:                                              ; preds = %268, %267
  %272 = load i8, ptr %30, align 2
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %274, label %326

274:                                              ; preds = %271
  %275 = ptrtoint ptr %44 to i32
  %276 = sub i32 %275, %31
  %277 = trunc i32 %276 to i8
  store i8 %277, ptr %30, align 2
  %278 = load i8, ptr %68, align 1
  %279 = zext i8 %278 to i32
  %280 = icmp ult i8 %278, 8
  br i1 %280, label %304, label %281

281:                                              ; preds = %274
  %282 = getelementptr i8, ptr %44, i32 2
  %283 = load i32, ptr %282, align 1
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %304, label %289

285:                                              ; preds = %294
  %286 = add i8 %296, %291
  %287 = zext i8 %286 to i32
  %288 = icmp ugt i8 %278, %286
  br i1 %288, label %289, label %316

289:                                              ; preds = %285, %281
  %290 = phi i32 [ %287, %285 ], [ 6, %281 ]
  %291 = phi i8 [ %286, %285 ], [ 6, %281 ]
  %292 = add nuw nsw i32 %290, 1
  %293 = icmp eq i32 %292, %279
  br i1 %293, label %307, label %294

294:                                              ; preds = %289
  %295 = getelementptr i8, ptr %44, i32 %292
  %296 = load i8, ptr %295, align 1
  %297 = icmp eq i8 %296, 0
  %298 = zext i8 %296 to i32
  %299 = sub nsw i32 %279, %290
  %300 = icmp slt i32 %299, %298
  %301 = select i1 %297, i1 true, i1 %300
  br i1 %301, label %302, label %285

302:                                              ; preds = %294
  %303 = trunc i32 %292 to i8
  br label %307

304:                                              ; preds = %281, %274
  %305 = phi i32 [ 2, %281 ], [ 1, %274 ]
  %306 = getelementptr i8, ptr %44, i32 %305
  br label %326

307:                                              ; preds = %302, %289
  %308 = phi i8 [ %303, %302 ], [ %291, %289 ]
  %309 = zext i8 %308 to i32
  %310 = getelementptr i8, ptr %44, i32 %309
  %311 = icmp eq i8 %308, 0
  br i1 %311, label %316, label %326

312:                                              ; preds = %74
  br i1 %5, label %313, label %316

313:                                              ; preds = %312
  %314 = load ptr, ptr %29, align 4
  %315 = tail call zeroext i1 @ns_capable(ptr noundef %314, i32 noundef 13) #11
  br i1 %315, label %316, label %326

316:                                              ; preds = %313, %312, %307, %285, %263, %259, %255, %248, %146, %100
  %317 = phi i32 [ %41, %313 ], [ %41, %312 ], [ %41, %307 ], [ %41, %263 ], [ %41, %259 ], [ %41, %255 ], [ %249, %248 ], [ %147, %146 ], [ %41, %100 ], [ %41, %285 ]
  %318 = phi ptr [ %44, %313 ], [ %44, %312 ], [ %310, %307 ], [ %44, %263 ], [ %44, %259 ], [ %44, %255 ], [ %44, %248 ], [ %44, %146 ], [ %44, %100 ], [ %44, %285 ]
  %319 = sub i32 %43, %70
  %320 = getelementptr i8, ptr %318, i32 %70
  %321 = icmp sgt i32 %319, 0
  br i1 %321, label %38, label %334

322:                                              ; preds = %77
  %323 = getelementptr i8, ptr %44, i32 2
  br label %326

324:                                              ; preds = %205
  %325 = getelementptr i8, ptr %44, i32 3
  br label %326

326:                                              ; preds = %324, %322, %313, %307, %304, %271, %268, %253, %243, %193, %178, %163, %156, %154, %151, %122, %115, %113, %110, %89, %85, %81, %75, %67, %65
  %327 = phi ptr [ %306, %304 ], [ %323, %322 ], [ %325, %324 ], [ %230, %243 ], [ %157, %193 ], [ %157, %178 ], [ %157, %163 ], [ %44, %313 ], [ %310, %307 ], [ %44, %268 ], [ %44, %271 ], [ %68, %85 ], [ %68, %89 ], [ %68, %75 ], [ %44, %67 ], [ %68, %253 ], [ %157, %156 ], [ %68, %154 ], [ %44, %151 ], [ %116, %122 ], [ %116, %115 ], [ %68, %113 ], [ %44, %110 ], [ %44, %81 ], [ %44, %65 ]
  %328 = icmp eq ptr %3, null
  br i1 %328, label %334, label %329

329:                                              ; preds = %326
  %330 = ptrtoint ptr %327 to i32
  %331 = ptrtoint ptr %23 to i32
  %332 = sub i32 %330, %331
  %333 = and i32 %332, 255
  store i32 %333, ptr %3, align 4
  br label %334

334:                                              ; preds = %329, %326, %316, %61, %58, %46, %20
  %335 = phi i32 [ -22, %329 ], [ -22, %326 ], [ 0, %20 ], [ 0, %46 ], [ 0, %58 ], [ 0, %61 ], [ 0, %316 ]
  ret i32 %335
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_options_compile(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = call i32 @__ip_options_compile(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %6 = icmp ne i32 %5, 0
  %7 = icmp ne ptr %2, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i32, ptr %4, align 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 4
  call void @__icmp_send(ptr noundef nonnull %2, i32 noundef 12, i32 noundef 0, i32 noundef %10, ptr noundef %11) #11
  br label %12

12:                                               ; preds = %9, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ip_options_undo(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.ip_options, ptr %0, i32 0, i32 3
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ip_options, ptr %0, i32 0, i32 10
  %7 = zext i8 %3 to i32
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = getelementptr i8, ptr %8, i32 -20
  %10 = getelementptr i8, ptr %9, i32 7
  %11 = getelementptr i8, ptr %9, i32 3
  %12 = getelementptr i8, ptr %9, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = add nsw i32 %14, -7
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %10, ptr align 1 %11, i32 %15, i1 false)
  %16 = load i32, ptr %0, align 4
  store i32 %16, ptr %11, align 1
  br label %17

17:                                               ; preds = %5, %1
  %18 = getelementptr inbounds %struct.ip_options, ptr %0, i32 0, i32 6
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ip_options, ptr %0, i32 0, i32 10
  %24 = getelementptr inbounds %struct.ip_options, ptr %0, i32 0, i32 4
  %25 = load i8, ptr %24, align 2
  %26 = zext i8 %25 to i32
  %27 = getelementptr i8, ptr %23, i32 %26
  %28 = getelementptr i8, ptr %27, i32 -20
  %29 = getelementptr i8, ptr %28, i32 2
  %30 = load i8, ptr %29, align 1
  %31 = add i8 %30, -4
  store i8 %31, ptr %29, align 1
  %32 = zext i8 %31 to i32
  %33 = add nsw i32 %32, -1
  %34 = getelementptr i8, ptr %28, i32 %33
  store i32 0, ptr %34, align 1
  br label %35

35:                                               ; preds = %22, %17
  %36 = getelementptr inbounds %struct.ip_options, ptr %0, i32 0, i32 5
  %37 = load i8, ptr %36, align 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %72, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ip_options, ptr %0, i32 0, i32 10
  %41 = zext i8 %37 to i32
  %42 = getelementptr i8, ptr %40, i32 %41
  %43 = getelementptr i8, ptr %42, i32 -20
  %44 = load i8, ptr %18, align 4
  %45 = and i8 %44, 16
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %39
  %48 = getelementptr i8, ptr %43, i32 2
  %49 = load i8, ptr %48, align 1
  %50 = add i8 %49, -4
  store i8 %50, ptr %48, align 1
  %51 = zext i8 %50 to i32
  %52 = add nsw i32 %51, -1
  %53 = getelementptr i8, ptr %43, i32 %52
  store i32 0, ptr %53, align 1
  %54 = getelementptr i8, ptr %43, i32 3
  %55 = load i8, ptr %54, align 1
  %56 = and i8 %55, 15
  %57 = icmp eq i8 %56, 3
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i8, ptr %48, align 1
  %60 = add i8 %59, -4
  store i8 %60, ptr %48, align 1
  br label %61

61:                                               ; preds = %58, %47, %39
  %62 = load i8, ptr %18, align 4
  %63 = and i8 %62, 32
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %61
  %66 = getelementptr i8, ptr %43, i32 2
  %67 = load i8, ptr %66, align 1
  %68 = add i8 %67, -4
  store i8 %68, ptr %66, align 1
  %69 = zext i8 %68 to i32
  %70 = add nsw i32 %69, -1
  %71 = getelementptr i8, ptr %43, i32 %70
  store i32 0, ptr %71, align 1
  br label %72

72:                                               ; preds = %65, %61, %35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_options_get(ptr noundef %0, ptr nocapture noundef %1, [2 x i32] %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = add i32 %3, 27
  %7 = and i32 %6, -4
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %71, label %10

10:                                               ; preds = %4
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = trunc i32 %3 to i8
  %14 = getelementptr inbounds %struct.ip_options_rcu, ptr %8, i32 0, i32 1, i32 2
  store i8 %13, ptr %14, align 16
  br label %69

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ip_options_rcu, ptr %8, i32 1
  %17 = extractvalue [2 x i32] %2, 0
  %18 = inttoptr i32 %17 to ptr
  %19 = extractvalue [2 x i32] %2, 1
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %15
  %23 = icmp slt i32 %3, 0
  %24 = load i1, ptr @check_copy_size.__already_done, align 1
  %25 = xor i1 %24, true
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %28, !prof !8

27:                                               ; preds = %22
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %28

28:                                               ; preds = %27, %22
  br i1 %23, label %46, label %29, !prof !8

29:                                               ; preds = %28
  %30 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %18, i32 %3, i32 -1090519040) #13, !srcloc !10
  %31 = extractvalue { i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41, !prof !11

33:                                               ; preds = %29
  %34 = tail call ptr @llvm.thread.pointer() #11
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %35) #14, !srcloc !12
  %37 = and i32 %36, -13
  %38 = or i32 %37, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #11, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !14
  %39 = tail call i32 @arm_copy_from_user(ptr noundef %16, ptr noundef %18, i32 noundef %3) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #11, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !14
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41, !prof !11

41:                                               ; preds = %33, %29
  %42 = phi i32 [ %39, %33 ], [ %3, %29 ]
  %43 = sub i32 %3, %42
  %44 = getelementptr i8, ptr %16, i32 %43
  tail call void @llvm.memset.p0.i32(ptr align 1 %44, i8 0, i32 %42, i1 false) #11
  br label %46

45:                                               ; preds = %15
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %16, ptr align 1 %18, i32 %3, i1 false) #11
  br label %47

46:                                               ; preds = %41, %28
  tail call void @kfree(ptr noundef nonnull %8) #11
  br label %71

47:                                               ; preds = %45, %33
  %48 = and i32 %3, 3
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = trunc i32 %3 to i8
  %52 = getelementptr inbounds %struct.ip_options_rcu, ptr %8, i32 0, i32 1, i32 2
  store i8 %51, ptr %52, align 16
  br label %64

53:                                               ; preds = %47
  %54 = add i32 %3, 24
  %55 = getelementptr i8, ptr %8, i32 %54
  %56 = and i32 %3, 3
  %57 = xor i32 %56, 3
  %58 = sub nuw nsw i32 4, %56
  call void @llvm.memset.p0.i32(ptr align 1 %55, i8 0, i32 %58, i1 false)
  %59 = or i32 %57, %3
  %60 = add i32 %59, 1
  %61 = trunc i32 %60 to i8
  %62 = getelementptr inbounds %struct.ip_options_rcu, ptr %8, i32 0, i32 1, i32 2
  store i8 %61, ptr %62, align 16
  %63 = icmp eq i32 %60, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %53, %50
  %65 = getelementptr inbounds %struct.ip_options_rcu, ptr %8, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !9
  %66 = call i32 @__ip_options_compile(ptr noundef %0, ptr noundef %65, ptr noundef null, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  call void @kfree(ptr noundef nonnull %8) #11
  br label %71

69:                                               ; preds = %64, %53, %12
  %70 = load ptr, ptr %1, align 4
  call void @kfree(ptr noundef %70) #11
  store ptr %8, ptr %1, align 4
  br label %71

71:                                               ; preds = %69, %68, %46, %4
  %72 = phi i32 [ -14, %46 ], [ -22, %68 ], [ 0, %69 ], [ -12, %4 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_forward_options(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, -2
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 14
  %18 = load i8, ptr %17, align 2
  %19 = zext i8 %18 to i32
  %20 = getelementptr i8, ptr %11, i32 %19
  %21 = getelementptr i8, ptr %20, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = add nsw i32 %23, -5
  %25 = getelementptr i8, ptr %20, i32 %24
  tail call void @ip_rt_get_source(ptr noundef %25, ptr noundef %0, ptr noundef %5) #11
  %26 = load i8, ptr %12, align 4
  %27 = or i8 %26, 4
  store i8 %27, ptr %12, align 4
  br label %28

28:                                               ; preds = %16, %1
  %29 = phi i8 [ %27, %16 ], [ %13, %1 ]
  %30 = and i8 %29, 2
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %97, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 13
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = getelementptr i8, ptr %11, i32 %35
  %37 = getelementptr i8, ptr %36, i32 2
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr i8, ptr %36, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 8
  %44 = icmp ugt i8 %38, %41
  %45 = add nuw nsw i32 %39, 3
  %46 = icmp ugt i32 %45, %42
  %47 = or i1 %44, %46
  br i1 %47, label %60, label %48

48:                                               ; preds = %54, %32
  %49 = phi i32 [ %55, %54 ], [ %39, %32 ]
  %50 = add nsw i32 %49, -1
  %51 = getelementptr i8, ptr %36, i32 %50
  %52 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %43, ptr noundef dereferenceable(4) %51, i32 4)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %48
  %55 = add nuw nsw i32 %49, 4
  %56 = icmp ugt i32 %55, %42
  %57 = add nuw nsw i32 %49, 7
  %58 = icmp ugt i32 %57, %42
  %59 = or i1 %56, %58
  br i1 %59, label %60, label %48

60:                                               ; preds = %54, %32
  %61 = phi i32 [ %39, %32 ], [ %55, %54 ]
  %62 = phi i1 [ %46, %32 ], [ %58, %54 ]
  br i1 %62, label %76, label %63

63:                                               ; preds = %60, %48
  %64 = phi i32 [ %61, %60 ], [ %49, %48 ]
  %65 = or i8 %29, 4
  store i8 %65, ptr %12, align 4
  %66 = load i32, ptr %43, align 4
  %67 = load ptr, ptr %6, align 8
  %68 = load i16, ptr %8, align 4
  %69 = zext i16 %68 to i32
  %70 = getelementptr i8, ptr %67, i32 %69
  %71 = getelementptr inbounds %struct.iphdr, ptr %70, i32 0, i32 9
  store i32 %66, ptr %71, align 4
  %72 = add i32 %64, -1
  %73 = getelementptr i8, ptr %36, i32 %72
  tail call void @ip_rt_get_source(ptr noundef %73, ptr noundef %0, ptr noundef %5) #11
  %74 = trunc i32 %64 to i8
  %75 = add i8 %74, 4
  store i8 %75, ptr %37, align 1
  br label %81

76:                                               ; preds = %60
  %77 = tail call i32 @net_ratelimit() #11
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ip_forward_options) #15
  br label %81

81:                                               ; preds = %79, %76, %63
  %82 = load i8, ptr %12, align 4
  %83 = and i8 %82, 32
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 15
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = getelementptr i8, ptr %11, i32 %88
  %90 = getelementptr i8, ptr %89, i32 2
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = add nsw i32 %92, -9
  %94 = getelementptr i8, ptr %89, i32 %93
  tail call void @ip_rt_get_source(ptr noundef %94, ptr noundef %0, ptr noundef %5) #11
  %95 = load i8, ptr %12, align 4
  %96 = or i8 %95, 4
  store i8 %96, ptr %12, align 4
  br label %97

97:                                               ; preds = %85, %81, %28
  %98 = phi i8 [ %82, %81 ], [ %96, %85 ], [ %29, %28 ]
  %99 = and i8 %98, 4
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  %102 = and i8 %98, -5
  store i8 %102, ptr %12, align 4
  %103 = load ptr, ptr %6, align 8
  %104 = load i16, ptr %8, align 4
  %105 = zext i16 %104 to i32
  %106 = getelementptr i8, ptr %103, i32 %105
  tail call void @ip_send_check(ptr noundef %106) #11
  br label %107

107:                                              ; preds = %101, %97
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_send_check(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_options_rcv_srr(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 13
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, -2
  %16 = inttoptr i32 %15 to ptr
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %135, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, 7
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %135

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.rtable, ptr %16, i32 0, i32 3
  %25 = load i16, ptr %24, align 4
  switch i16 %25, label %135 [
    i16 1, label %26
    i16 2, label %33
  ]

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %28 = load i8, ptr %27, align 4
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %135, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %0, i32 noundef 12, i32 noundef 0, i32 noundef 16, ptr noundef %32) #11
  br label %135

33:                                               ; preds = %23
  %34 = getelementptr i8, ptr %12, i32 2
  %35 = load i8, ptr %34, align 1
  %36 = getelementptr i8, ptr %12, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ugt i8 %35, %37
  br i1 %39, label %135, label %40

40:                                               ; preds = %33
  %41 = zext i8 %35 to i32
  %42 = getelementptr inbounds %struct.iphdr, ptr %8, i32 0, i32 8
  %43 = getelementptr inbounds %struct.iphdr, ptr %8, i32 0, i32 1
  %44 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %45 = getelementptr inbounds %struct.iphdr, ptr %8, i32 0, i32 9
  %46 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  br label %47

47:                                               ; preds = %126, %40
  %48 = phi i32 [ %41, %40 ], [ %129, %126 ]
  %49 = add nuw nsw i32 %48, 3
  %50 = icmp ugt i32 %49, %38
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i8, ptr %9, align 1
  %53 = add i8 %52, 2
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %0, i32 noundef 12, i32 noundef 0, i32 noundef %54, ptr noundef %55) #11
  br label %135

56:                                               ; preds = %47
  %57 = add nsw i32 %48, -1
  %58 = getelementptr i8, ptr %12, i32 %57
  %59 = load i32, ptr %58, align 1
  %60 = load i32, ptr %13, align 8
  store i32 0, ptr %13, align 8
  %61 = load i32, ptr %42, align 4
  %62 = load i8, ptr %43, align 1
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %63 = tail call i32 @ip_route_input_noref(ptr noundef %0, i32 noundef %59, i32 noundef %61, i8 noundef zeroext %62, ptr noundef %1) #11
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %97

65:                                               ; preds = %56
  %66 = load i32, ptr %13, align 8
  %67 = and i32 %66, 1
  %68 = icmp ne i32 %67, 0
  %69 = icmp ugt i32 %66, 1
  %70 = and i1 %69, %68
  br i1 %70, label %71, label %93

71:                                               ; preds = %65
  %72 = and i32 %66, -2
  %73 = inttoptr i32 %72 to ptr
  %74 = getelementptr inbounds %struct.dst_entry, ptr %73, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %74) #11, !srcloc !17
  %75 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %74, ptr %74, i32 0, i32 1, ptr elementtype(i32) %74) #11, !srcloc !18
  %76 = extractvalue { i32, i32, i32 } %75, 0
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !19
  br label %79

79:                                               ; preds = %78, %71
  %80 = phi ptr [ null, %71 ], [ %73, %78 ]
  %81 = ptrtoint ptr %80 to i32
  store i32 %81, ptr %13, align 8
  %82 = icmp ne ptr %80, null
  %83 = zext i1 %82 to i8
  %84 = load i16, ptr %44, align 2
  %85 = lshr i16 %84, 14
  %86 = trunc i16 %85 to i8
  %87 = and i8 %86, 1
  %88 = or i8 %87, %83
  %89 = zext i8 %88 to i16
  %90 = shl nuw nsw i16 %89, 14
  %91 = and i16 %84, -16385
  %92 = or i16 %90, %91
  store i16 %92, ptr %44, align 2
  br label %93

93:                                               ; preds = %79, %65
  %94 = phi i32 [ %66, %65 ], [ %81, %79 ]
  %95 = icmp ult i32 %94, 2
  %96 = select i1 %95, i32 -22, i32 0
  br label %97

97:                                               ; preds = %93, %56
  %98 = phi i32 [ %63, %56 ], [ %96, %93 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %99 = load i32, ptr %13, align 8
  %100 = and i32 %99, -2
  %101 = icmp eq i32 %98, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = inttoptr i32 %100 to ptr
  %104 = getelementptr inbounds %struct.rtable, ptr %103, i32 0, i32 3
  %105 = load i16, ptr %104, align 4
  %106 = add i16 %105, -1
  %107 = icmp ult i16 %106, 2
  br i1 %107, label %116, label %108

108:                                              ; preds = %102, %97
  %109 = icmp ne i32 %99, 0
  %110 = and i32 %99, 1
  %111 = icmp eq i32 %110, 0
  %112 = and i1 %109, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = inttoptr i32 %100 to ptr
  tail call void @dst_release(ptr noundef %114) #11
  br label %115

115:                                              ; preds = %113, %108
  store i32 %60, ptr %13, align 8
  br label %135

116:                                              ; preds = %102
  %117 = and i32 %60, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = and i32 %60, -2
  %121 = inttoptr i32 %120 to ptr
  tail call void @dst_release(ptr noundef %121) #11
  %122 = load i16, ptr %104, align 4
  br label %123

123:                                              ; preds = %119, %116
  %124 = phi i16 [ %105, %116 ], [ %122, %119 ]
  %125 = icmp eq i16 %124, 2
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  store i32 %59, ptr %45, align 4
  %127 = load i8, ptr %46, align 4
  %128 = or i8 %127, 4
  store i8 %128, ptr %46, align 4
  %129 = add nuw nsw i32 %48, 4
  %130 = icmp ugt i32 %129, %38
  br i1 %130, label %135, label %47

131:                                              ; preds = %123
  %132 = load i8, ptr %46, align 4
  %133 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 8
  store i32 %59, ptr %133, align 4
  %134 = or i8 %132, 6
  store i8 %134, ptr %46, align 4
  br label %135

135:                                              ; preds = %131, %126, %115, %51, %33, %31, %26, %23, %18, %2
  %136 = phi i32 [ -22, %31 ], [ -22, %51 ], [ -22, %115 ], [ 0, %2 ], [ -22, %18 ], [ 0, %26 ], [ -22, %23 ], [ 0, %131 ], [ 0, %33 ], [ 0, %126 ]
  ret i32 %136
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_compute_spec_dst(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__icmp_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_route_input_noref(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind readonly }
attributes #15 = { cold nounwind }

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
!9 = !{!"auto-init"}
!10 = !{i64 2151063439, i64 2151063464}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 3559551}
!13 = !{i64 3559748}
!14 = !{i64 2151045027}
!15 = !{i64 2149086190}
!16 = !{i64 2148095332}
!17 = !{i64 594439, i64 2148084410, i64 2148084436, i64 2148084483, i64 2148084505, i64 2148084533, i64 2148084553}
!18 = !{i64 581008, i64 581033, i64 581055, i64 581071, i64 581083, i64 581103, i64 581127, i64 581143, i64 581155}
!19 = !{i64 2148095458}
!20 = !{i64 2149086407}
