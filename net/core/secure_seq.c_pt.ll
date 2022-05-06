; ModuleID = '/llk/IR/net/core/secure_seq.c_pt.bc'
source_filename = "../net/core/secure_seq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_secure_tcpv6_ts_off:\09\09\09\09\09"
module asm "\09.asciz \09\22secure_tcpv6_ts_off\22\09\09\09\09\09"
module asm "__kstrtabns_secure_tcpv6_ts_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_secure_tcpv6_seq:\09\09\09\09\09"
module asm "\09.asciz \09\22secure_tcpv6_seq\22\09\09\09\09\09"
module asm "__kstrtabns_secure_tcpv6_seq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_secure_ipv6_port_ephemeral:\09\09\09\09\09"
module asm "\09.asciz \09\22secure_ipv6_port_ephemeral\22\09\09\09\09\09"
module asm "__kstrtabns_secure_ipv6_port_ephemeral:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_secure_tcp_seq:\09\09\09\09\09"
module asm "\09.asciz \09\22secure_tcp_seq\22\09\09\09\09\09"
module asm "__kstrtabns_secure_tcp_seq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_secure_ipv4_port_ephemeral:\09\09\09\09\09"
module asm "\09.asciz \09\22secure_ipv4_port_ephemeral\22\09\09\09\09\09"
module asm "__kstrtabns_secure_ipv4_port_ephemeral:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.siphash_key_t = type { [2 x i64] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.anon.178 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.132 }
%union.anon.132 = type { [4 x i32] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.172, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.172 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.anon.179 = type { %struct.in6_addr, %struct.in6_addr, i16, i16, [4 x i8] }
%struct.anon.180 = type { %struct.in6_addr, %struct.in6_addr, i16, [6 x i8] }

@ts_secret = internal global %struct.siphash_key_t zeroinitializer, align 16
@__kstrtab_secure_tcpv6_ts_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_secure_tcpv6_ts_off = external dso_local constant [0 x i8], align 1
@__ksymtab_secure_tcpv6_ts_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @secure_tcpv6_ts_off to i32), ptr @__kstrtab_secure_tcpv6_ts_off, ptr @__kstrtabns_secure_tcpv6_ts_off }, section "___ksymtab+secure_tcpv6_ts_off", align 4
@net_secret = internal global %struct.siphash_key_t zeroinitializer, align 16
@__kstrtab_secure_tcpv6_seq = external dso_local constant [0 x i8], align 1
@__kstrtabns_secure_tcpv6_seq = external dso_local constant [0 x i8], align 1
@__ksymtab_secure_tcpv6_seq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @secure_tcpv6_seq to i32), ptr @__kstrtab_secure_tcpv6_seq, ptr @__kstrtabns_secure_tcpv6_seq }, section "___ksymtab+secure_tcpv6_seq", align 4
@__kstrtab_secure_ipv6_port_ephemeral = external dso_local constant [0 x i8], align 1
@__kstrtabns_secure_ipv6_port_ephemeral = external dso_local constant [0 x i8], align 1
@__ksymtab_secure_ipv6_port_ephemeral = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @secure_ipv6_port_ephemeral to i32), ptr @__kstrtab_secure_ipv6_port_ephemeral, ptr @__kstrtabns_secure_ipv6_port_ephemeral }, section "___ksymtab+secure_ipv6_port_ephemeral", align 4
@__kstrtab_secure_tcp_seq = external dso_local constant [0 x i8], align 1
@__kstrtabns_secure_tcp_seq = external dso_local constant [0 x i8], align 1
@__ksymtab_secure_tcp_seq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @secure_tcp_seq to i32), ptr @__kstrtab_secure_tcp_seq, ptr @__kstrtabns_secure_tcp_seq }, section "___ksymtab_gpl+secure_tcp_seq", align 4
@__kstrtab_secure_ipv4_port_ephemeral = external dso_local constant [0 x i8], align 1
@__kstrtabns_secure_ipv4_port_ephemeral = external dso_local constant [0 x i8], align 1
@__ksymtab_secure_ipv4_port_ephemeral = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @secure_ipv4_port_ephemeral to i32), ptr @__kstrtab_secure_ipv4_port_ephemeral, ptr @__kstrtabns_secure_ipv4_port_ephemeral }, section "___ksymtab_gpl+secure_ipv4_port_ephemeral", align 4
@ts_secret_init.___done = internal global i8 0, section ".data.once", align 1
@ts_secret_init.___once_key = internal global %struct.static_key_true { %struct.static_key { %struct.atomic_t { i32 1 } } }, align 4
@net_secret_init.___done = internal global i8 0, section ".data.once", align 1
@net_secret_init.___once_key = internal global %struct.static_key_true { %struct.static_key { %struct.atomic_t { i32 1 } } }, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_secure_ipv4_port_ephemeral, ptr @__ksymtab_secure_ipv6_port_ephemeral, ptr @__ksymtab_secure_tcp_seq, ptr @__ksymtab_secure_tcpv6_seq, ptr @__ksymtab_secure_tcpv6_ts_off], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @secure_tcpv6_ts_off(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.anon.178, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef align 4 dereferenceable(16) %1, i32 16, i1 false)
  %6 = getelementptr inbounds %struct.anon.178, ptr %5, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %6, ptr noundef align 4 dereferenceable(16) %2, i32 16, i1 false)
  %7 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 66
  %8 = load i8, ptr %7, align 2
  %9 = icmp eq i8 %8, 1
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = load volatile i32, ptr @ts_secret_init.___once_key, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %17, !prof !8

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !9
  %14 = call zeroext i1 @__do_once_start(ptr noundef nonnull @ts_secret_init.___done, ptr noundef nonnull %4) #4
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %13
  call void @get_random_bytes(ptr noundef nonnull @ts_secret, i32 noundef 16) #4
  call void @__do_once_done(ptr noundef nonnull @ts_secret_init.___done, ptr noundef nonnull @ts_secret_init.___once_key, ptr noundef nonnull %4, ptr noundef null) #4
  br label %16

16:                                               ; preds = %15, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  br label %17

17:                                               ; preds = %16, %10
  %18 = call i64 @__siphash_unaligned(ptr noundef nonnull %5, i32 noundef 32, ptr noundef nonnull @ts_secret) #4
  %19 = trunc i64 %18 to i32
  br label %20

20:                                               ; preds = %17, %3
  %21 = phi i32 [ %19, %17 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #4
  ret i32 %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @secure_tcpv6_seq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.anon.179, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef align 4 dereferenceable(16) %0, i32 16, i1 false)
  %7 = getelementptr inbounds %struct.anon.179, ptr %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.anon.179, ptr %6, i32 0, i32 2
  store i64 0, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %7, ptr noundef align 4 dereferenceable(16) %1, i32 16, i1 false)
  %9 = getelementptr inbounds %struct.anon.179, ptr %6, i32 0, i32 2
  store i16 %2, ptr %9, align 8
  %10 = getelementptr inbounds %struct.anon.179, ptr %6, i32 0, i32 3
  store i16 %3, ptr %10, align 2
  %11 = load volatile i32, ptr @net_secret_init.___once_key, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %17, !prof !8

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !9
  %14 = call zeroext i1 @__do_once_start(ptr noundef nonnull @net_secret_init.___done, ptr noundef nonnull %5) #4
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %13
  call void @get_random_bytes(ptr noundef nonnull @net_secret, i32 noundef 16) #4
  call void @__do_once_done(ptr noundef nonnull @net_secret_init.___done, ptr noundef nonnull @net_secret_init.___once_key, ptr noundef nonnull %5, ptr noundef null) #4
  br label %16

16:                                               ; preds = %15, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  br label %17

17:                                               ; preds = %16, %4
  %18 = call i64 @__siphash_unaligned(ptr noundef nonnull %6, i32 noundef 36, ptr noundef nonnull @net_secret) #4
  %19 = trunc i64 %18 to i32
  %20 = call i64 @ktime_get_with_offset(i32 noundef 0) #4
  %21 = lshr i64 %20, 6
  %22 = trunc i64 %21 to i32
  %23 = add i32 %22, %19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #4
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @secure_ipv6_port_ephemeral(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.anon.180, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef align 4 dereferenceable(16) %0, i32 16, i1 false)
  %6 = getelementptr inbounds %struct.anon.180, ptr %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.anon.180, ptr %5, i32 0, i32 2
  store i64 0, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %6, ptr noundef align 4 dereferenceable(16) %1, i32 16, i1 false)
  %8 = getelementptr inbounds %struct.anon.180, ptr %5, i32 0, i32 2
  store i16 %2, ptr %8, align 8
  %9 = load volatile i32, ptr @net_secret_init.___once_key, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %15, !prof !8

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !9
  %12 = call zeroext i1 @__do_once_start(ptr noundef nonnull @net_secret_init.___done, ptr noundef nonnull %4) #4
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %11
  call void @get_random_bytes(ptr noundef nonnull @net_secret, i32 noundef 16) #4
  call void @__do_once_done(ptr noundef nonnull @net_secret_init.___done, ptr noundef nonnull @net_secret_init.___once_key, ptr noundef nonnull %4, ptr noundef null) #4
  br label %14

14:                                               ; preds = %13, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  br label %15

15:                                               ; preds = %14, %3
  %16 = call i64 @__siphash_unaligned(ptr noundef nonnull %5, i32 noundef 34, ptr noundef nonnull @net_secret) #4
  %17 = trunc i64 %16 to i32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #4
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @secure_tcp_ts_off(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 66
  %6 = load i8, ptr %5, align 2
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = load volatile i32, ptr @ts_secret_init.___once_key, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %15, !prof !8

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !9
  %12 = call zeroext i1 @__do_once_start(ptr noundef nonnull @ts_secret_init.___done, ptr noundef nonnull %4) #4
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %11
  call void @get_random_bytes(ptr noundef nonnull @ts_secret, i32 noundef 16) #4
  call void @__do_once_done(ptr noundef nonnull @ts_secret_init.___done, ptr noundef nonnull @ts_secret_init.___once_key, ptr noundef nonnull %4, ptr noundef null) #4
  br label %14

14:                                               ; preds = %13, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  br label %15

15:                                               ; preds = %14, %8
  %16 = zext i32 %2 to i64
  %17 = shl nuw i64 %16, 32
  %18 = zext i32 %1 to i64
  %19 = or i64 %17, %18
  %20 = call i64 @siphash_1u64(i64 noundef %19, ptr noundef nonnull @ts_secret) #4
  %21 = trunc i64 %20 to i32
  br label %22

22:                                               ; preds = %15, %3
  %23 = phi i32 [ %21, %15 ], [ 0, %3 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @secure_tcp_seq(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = load volatile i32, ptr @net_secret_init.___once_key, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %12, !prof !8

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !9
  %9 = call zeroext i1 @__do_once_start(ptr noundef nonnull @net_secret_init.___done, ptr noundef nonnull %5) #4
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %8
  call void @get_random_bytes(ptr noundef nonnull @net_secret, i32 noundef 16) #4
  call void @__do_once_done(ptr noundef nonnull @net_secret_init.___done, ptr noundef nonnull @net_secret_init.___once_key, ptr noundef nonnull %5, ptr noundef null) #4
  br label %11

11:                                               ; preds = %10, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  br label %12

12:                                               ; preds = %11, %4
  %13 = zext i16 %2 to i32
  %14 = shl nuw i32 %13, 16
  %15 = zext i16 %3 to i32
  %16 = or i32 %14, %15
  %17 = call i64 @siphash_3u32(i32 noundef %0, i32 noundef %1, i32 noundef %16, ptr noundef nonnull @net_secret) #4
  %18 = trunc i64 %17 to i32
  %19 = call i64 @ktime_get_with_offset(i32 noundef 0) #4
  %20 = lshr i64 %19, 6
  %21 = trunc i64 %20 to i32
  %22 = add i32 %21, %18
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @siphash_3u32(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @secure_ipv4_port_ephemeral(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = load volatile i32, ptr @net_secret_init.___once_key, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %11, !prof !8

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !9
  %8 = call zeroext i1 @__do_once_start(ptr noundef nonnull @net_secret_init.___done, ptr noundef nonnull %4) #4
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %7
  call void @get_random_bytes(ptr noundef nonnull @net_secret, i32 noundef 16) #4
  call void @__do_once_done(ptr noundef nonnull @net_secret_init.___done, ptr noundef nonnull @net_secret_init.___once_key, ptr noundef nonnull %4, ptr noundef null) #4
  br label %10

10:                                               ; preds = %9, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  br label %11

11:                                               ; preds = %10, %3
  %12 = zext i16 %2 to i32
  %13 = call i64 @siphash_3u32(i32 noundef %0, i32 noundef %1, i32 noundef %12, ptr noundef nonnull @net_secret) #4
  %14 = trunc i64 %13 to i32
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__siphash_unaligned(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @siphash_1u64(i64 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
