; ModuleID = '/llk/IR/net/ipv6/xfrm6_protocol.c_pt.bc'
source_filename = "../net/ipv6/xfrm6_protocol.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm6_rcv_encap:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm6_rcv_encap\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm6_rcv_encap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm6_protocol_register:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm6_protocol_register\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm6_protocol_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm6_protocol_deregister:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm6_protocol_deregister\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm6_protocol_deregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.xfrm_input_afinfo = type { i8, i8, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
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
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.70, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.70 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.inet6_protocol = type { ptr, ptr, ptr, ptr, i32 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.in6_addr = type { %union.anon.54 }
%union.anon.54 = type { [4 x i32] }
%union.flowi_uli = type { i32 }
%struct.sk_buff = type { %union.anon, %union.anon.125, %union.anon.126, [48 x i8], %union.anon.127, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.129, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.125 = type { ptr }
%union.anon.126 = type { i64 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, ptr }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.131, i32, i32, i32, i16, i16, %union.anon.133, %union.anon.134, %union.anon.135, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.124 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.callback_head = type { ptr, ptr }
%struct.xfrm6_protocol = type { ptr, ptr, ptr, ptr, ptr, i32 }

@__kstrtab_xfrm6_rcv_encap = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm6_rcv_encap = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm6_rcv_encap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm6_rcv_encap to i32), ptr @__kstrtab_xfrm6_rcv_encap, ptr @__kstrtabns_xfrm6_rcv_encap }, section "___ksymtab+xfrm6_rcv_encap", align 4
@xfrm6_protocol_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @xfrm6_protocol_mutex, i64 12), ptr getelementptr (i8, ptr @xfrm6_protocol_mutex, i64 12) } }, align 4
@.str = private unnamed_addr constant [26 x i8] c"\013%s: can't add protocol\0A\00", align 1
@__func__.xfrm6_protocol_register = private unnamed_addr constant [24 x i8] c"xfrm6_protocol_register\00", align 1
@__kstrtab_xfrm6_protocol_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm6_protocol_register = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm6_protocol_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm6_protocol_register to i32), ptr @__kstrtab_xfrm6_protocol_register, ptr @__kstrtabns_xfrm6_protocol_register }, section "___ksymtab+xfrm6_protocol_register", align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"\013%s: can't remove protocol\0A\00", align 1
@__func__.xfrm6_protocol_deregister = private unnamed_addr constant [26 x i8] c"xfrm6_protocol_deregister\00", align 1
@__kstrtab_xfrm6_protocol_deregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm6_protocol_deregister = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm6_protocol_deregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm6_protocol_deregister to i32), ptr @__kstrtab_xfrm6_protocol_deregister, ptr @__kstrtabns_xfrm6_protocol_deregister }, section "___ksymtab+xfrm6_protocol_deregister", align 4
@xfrm6_input_afinfo = internal constant %struct.xfrm_input_afinfo { i8 10, i8 0, ptr @xfrm6_rcv_cb }, align 4
@esp6_handlers = internal global ptr null, section ".data..read_mostly", align 4
@ah6_handlers = internal global ptr null, section ".data..read_mostly", align 4
@ipcomp6_handlers = internal global ptr null, section ".data..read_mostly", align 4
@init_net = external dso_local global %struct.net, align 64
@esp6_protocol = internal constant %struct.inet6_protocol { ptr null, ptr null, ptr @xfrm6_esp_rcv, ptr @xfrm6_esp_err, i32 1 }, align 4
@ah6_protocol = internal constant %struct.inet6_protocol { ptr null, ptr null, ptr @xfrm6_ah_rcv, ptr @xfrm6_ah_err, i32 1 }, align 4
@ipcomp6_protocol = internal constant %struct.inet6_protocol { ptr null, ptr null, ptr @xfrm6_ipcomp_rcv, ptr @xfrm6_ipcomp_err, i32 1 }, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_xfrm6_protocol_deregister, ptr @__ksymtab_xfrm6_protocol_register, ptr @__ksymtab_xfrm6_rcv_encap], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm6_rcv_encap(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.flowi6, align 8
  %6 = trunc i32 %1 to i8
  switch i8 %6, label %9 [
    i8 50, label %13
    i8 51, label %7
    i8 108, label %8
  ]

7:                                                ; preds = %4
  br label %13

8:                                                ; preds = %4
  br label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  store ptr null, ptr %10, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 32
  store i32 10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 28
  store i32 24, ptr %12, align 4
  br label %79

13:                                               ; preds = %8, %7, %4
  %14 = phi ptr [ @esp6_handlers, %4 ], [ @ah6_handlers, %7 ], [ @ipcomp6_handlers, %8 ]
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  store ptr null, ptr %15, align 8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 32
  store i32 10, ptr %16, align 8
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 28
  store i32 24, ptr %17, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %21, label %66

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  %27 = getelementptr i8, ptr %23, i32 %26
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #7
  %28 = getelementptr inbounds %struct.flowi_common, ptr %5, i32 0, i32 1
  %29 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %5, i8 0, i64 88, i1 false)
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 17
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %28, align 4
  %33 = getelementptr inbounds %struct.flowi_common, ptr %5, i32 0, i32 2
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %33, align 8
  %36 = getelementptr inbounds %struct.flowi_common, ptr %5, i32 0, i32 5
  %37 = getelementptr inbounds %struct.ipv6hdr, ptr %27, i32 0, i32 3
  %38 = load i8, ptr %37, align 2
  store i8 %38, ptr %36, align 2
  %39 = getelementptr inbounds %struct.flowi6, ptr %5, i32 0, i32 1
  %40 = getelementptr inbounds %struct.ipv6hdr, ptr %27, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %39, ptr noundef align 4 dereferenceable(16) %40, i32 16, i1 false)
  %41 = getelementptr inbounds %struct.flowi6, ptr %5, i32 0, i32 2
  %42 = getelementptr inbounds %struct.ipv6hdr, ptr %27, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %41, ptr noundef align 4 dereferenceable(16) %42, i32 16, i1 false)
  %43 = getelementptr inbounds %struct.flowi6, ptr %5, i32 0, i32 3
  %44 = load i32, ptr %27, align 4
  %45 = and i32 %44, -241
  store i32 %45, ptr %43, align 8
  %46 = getelementptr inbounds %struct.flowi6, ptr %5, i32 0, i32 5
  store i32 0, ptr %46, align 8
  %47 = call ptr @ip6_route_input_lookup(ptr noundef nonnull @init_net, ptr noundef %30, ptr noundef nonnull %5, ptr noundef %0, i32 noundef 4) #7
  %48 = getelementptr inbounds %struct.dst_entry, ptr %47, i32 0, i32 15
  %49 = load i16, ptr %48, align 4
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %21
  %52 = icmp ne ptr %47, null
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %55 = load i16, ptr %54, align 2
  %56 = lshr i16 %55, 14
  %57 = trunc i16 %56 to i8
  %58 = and i8 %57, 1
  %59 = or i8 %58, %53
  %60 = zext i8 %59 to i16
  %61 = shl nuw nsw i16 %60, 14
  %62 = and i16 %55, -16385
  %63 = or i16 %61, %62
  store i16 %63, ptr %54, align 2
  %64 = ptrtoint ptr %47 to i32
  store i32 %64, ptr %18, align 8
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #7
  br label %66

65:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #7
  br label %81

66:                                               ; preds = %51, %13
  %67 = load volatile ptr, ptr %14, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %79, label %73

69:                                               ; preds = %73
  %70 = getelementptr inbounds %struct.xfrm6_protocol, ptr %74, i32 0, i32 4
  %71 = load volatile ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %69, %66
  %74 = phi ptr [ %71, %69 ], [ %67, %66 ]
  %75 = getelementptr inbounds %struct.xfrm6_protocol, ptr %74, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = call i32 %76(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  %78 = icmp eq i32 %77, -22
  br i1 %78, label %69, label %82

79:                                               ; preds = %69, %66, %9
  %80 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  call void @icmp6_send(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 4, i32 noundef 0, ptr noundef null, ptr noundef %80) #7
  br label %81

81:                                               ; preds = %79, %65
  call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #7
  br label %82

82:                                               ; preds = %81, %73
  %83 = phi i32 [ 0, %81 ], [ %77, %73 ]
  ret i32 %83
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_input_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm6_protocol_register(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.xfrm6_protocol, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  switch i8 %1, label %46 [
    i8 50, label %7
    i8 51, label %5
    i8 108, label %6
  ]

5:                                                ; preds = %2
  br label %7

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %6, %5, %2
  %8 = phi ptr [ @ipcomp6_handlers, %6 ], [ @ah6_handlers, %5 ], [ @esp6_handlers, %2 ]
  tail call void @mutex_lock(ptr noundef nonnull @xfrm6_protocol_mutex) #7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.xfrm6_protocol, ptr %9, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %13, %4
  br i1 %14, label %30, label %19

15:                                               ; preds = %23
  %16 = getelementptr inbounds %struct.xfrm6_protocol, ptr %25, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = icmp slt i32 %17, %4
  br i1 %18, label %27, label %19

19:                                               ; preds = %15, %11
  %20 = phi i32 [ %17, %15 ], [ %13, %11 ]
  %21 = phi ptr [ %25, %15 ], [ %9, %11 ]
  %22 = icmp eq i32 %20, %4
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.xfrm6_protocol, ptr %21, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %15

27:                                               ; preds = %23, %15
  %28 = phi ptr [ null, %23 ], [ %25, %15 ]
  %29 = getelementptr inbounds %struct.xfrm6_protocol, ptr %21, i32 0, i32 4
  br label %30

30:                                               ; preds = %27, %11, %7
  %31 = phi ptr [ %8, %7 ], [ %8, %11 ], [ %29, %27 ]
  %32 = phi ptr [ null, %7 ], [ %9, %11 ], [ %28, %27 ]
  %33 = getelementptr inbounds %struct.xfrm6_protocol, ptr %0, i32 0, i32 4
  store ptr %32, ptr %33, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  store volatile ptr %0, ptr %31, align 4
  br label %34

34:                                               ; preds = %30, %19
  %35 = phi i32 [ 0, %30 ], [ -17, %19 ]
  tail call void @mutex_unlock(ptr noundef nonnull @xfrm6_protocol_mutex) #7
  br i1 %10, label %36, label %46

36:                                               ; preds = %34
  switch i8 %1, label %39 [
    i8 50, label %40
    i8 51, label %37
    i8 108, label %38
  ]

37:                                               ; preds = %36
  br label %40

38:                                               ; preds = %36
  br label %40

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %39, %38, %37, %36
  %41 = phi ptr [ null, %39 ], [ @ipcomp6_protocol, %38 ], [ @ah6_protocol, %37 ], [ @esp6_protocol, %36 ]
  %42 = tail call i32 @inet6_add_protocol(ptr noundef %41, i8 noundef zeroext %1) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.xfrm6_protocol_register) #8
  br label %46

46:                                               ; preds = %44, %40, %34, %2
  %47 = phi i32 [ -11, %44 ], [ %35, %40 ], [ %35, %34 ], [ -22, %2 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm6_protocol_deregister(ptr noundef readonly %0, i8 noundef zeroext %1) #0 {
  switch i8 %1, label %45 [
    i8 50, label %5
    i8 51, label %3
    i8 108, label %4
  ]

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %3, %2
  %6 = phi ptr [ @ipcomp6_handlers, %4 ], [ @ah6_handlers, %3 ], [ @esp6_handlers, %2 ]
  tail call void @mutex_lock(ptr noundef nonnull @xfrm6_protocol_mutex) #7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = icmp eq ptr %7, %0
  br i1 %10, label %20, label %11

11:                                               ; preds = %16, %9
  %12 = phi ptr [ %14, %16 ], [ %7, %9 ]
  %13 = getelementptr inbounds %struct.xfrm6_protocol, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = icmp eq ptr %14, %0
  br i1 %17, label %18, label %11

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.xfrm6_protocol, ptr %12, i32 0, i32 4
  br label %20

20:                                               ; preds = %18, %9
  %21 = phi ptr [ %6, %9 ], [ %19, %18 ]
  %22 = getelementptr inbounds %struct.xfrm6_protocol, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  store ptr %23, ptr %21, align 4
  br label %24

24:                                               ; preds = %20, %11, %5
  %25 = phi i32 [ 0, %20 ], [ -2, %5 ], [ -2, %11 ]
  switch i8 %1, label %28 [
    i8 50, label %29
    i8 51, label %26
    i8 108, label %27
  ]

26:                                               ; preds = %24
  br label %29

27:                                               ; preds = %24
  br label %29

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %28, %27, %26, %24
  %30 = phi ptr [ null, %28 ], [ @ipcomp6_handlers, %27 ], [ @ah6_handlers, %26 ], [ @esp6_handlers, %24 ]
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  switch i8 %1, label %36 [
    i8 50, label %37
    i8 51, label %34
    i8 108, label %35
  ]

34:                                               ; preds = %33
  br label %37

35:                                               ; preds = %33
  br label %37

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %36, %35, %34, %33
  %38 = phi ptr [ null, %36 ], [ @ipcomp6_protocol, %35 ], [ @ah6_protocol, %34 ], [ @esp6_protocol, %33 ]
  %39 = tail call i32 @inet6_del_protocol(ptr noundef %38, i8 noundef zeroext %1) #7
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xfrm6_protocol_deregister) #8
  br label %43

43:                                               ; preds = %41, %37, %29
  %44 = phi i32 [ %25, %29 ], [ -11, %41 ], [ %25, %37 ]
  tail call void @mutex_unlock(ptr noundef nonnull @xfrm6_protocol_mutex) #7
  tail call void @synchronize_net() #7
  br label %45

45:                                               ; preds = %43, %2
  %46 = phi i32 [ %44, %43 ], [ -22, %2 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @xfrm6_protocol_init() local_unnamed_addr #6 section ".init.text" {
  %1 = tail call i32 @xfrm_input_register_afinfo(ptr noundef nonnull @xfrm6_input_afinfo) #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_input_register_afinfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm6_protocol_fini() local_unnamed_addr #0 {
  %1 = tail call i32 @xfrm_input_unregister_afinfo(ptr noundef nonnull @xfrm6_input_afinfo) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_input_unregister_afinfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xfrm6_esp_rcv(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  store ptr null, ptr %2, align 8
  %3 = load volatile ptr, ptr @esp6_handlers, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %9

5:                                                ; preds = %9
  %6 = getelementptr inbounds %struct.xfrm6_protocol, ptr %10, i32 0, i32 4
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0) #7
  %13 = icmp eq i32 %12, -22
  br i1 %13, label %5, label %16

14:                                               ; preds = %5, %1
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 4, i32 noundef 0, ptr noundef null, ptr noundef %15) #7
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #7
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi i32 [ 0, %14 ], [ %12, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xfrm6_esp_err(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load volatile ptr, ptr @esp6_handlers, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %13

9:                                                ; preds = %13
  %10 = getelementptr inbounds %struct.xfrm6_protocol, ptr %14, i32 0, i32 4
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9, %6
  %14 = phi ptr [ %11, %9 ], [ %7, %6 ]
  %15 = getelementptr inbounds %struct.xfrm6_protocol, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %9

19:                                               ; preds = %13, %9, %6
  %20 = phi i32 [ -2, %6 ], [ -2, %9 ], [ 0, %13 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xfrm6_ah_rcv(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  store ptr null, ptr %2, align 8
  %3 = load volatile ptr, ptr @ah6_handlers, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %9

5:                                                ; preds = %9
  %6 = getelementptr inbounds %struct.xfrm6_protocol, ptr %10, i32 0, i32 4
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0) #7
  %13 = icmp eq i32 %12, -22
  br i1 %13, label %5, label %16

14:                                               ; preds = %5, %1
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 4, i32 noundef 0, ptr noundef null, ptr noundef %15) #7
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #7
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi i32 [ 0, %14 ], [ %12, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xfrm6_ah_err(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load volatile ptr, ptr @ah6_handlers, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %13

9:                                                ; preds = %13
  %10 = getelementptr inbounds %struct.xfrm6_protocol, ptr %14, i32 0, i32 4
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9, %6
  %14 = phi ptr [ %11, %9 ], [ %7, %6 ]
  %15 = getelementptr inbounds %struct.xfrm6_protocol, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %9

19:                                               ; preds = %13, %9, %6
  %20 = phi i32 [ -2, %6 ], [ -2, %9 ], [ 0, %13 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xfrm6_ipcomp_rcv(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  store ptr null, ptr %2, align 8
  %3 = load volatile ptr, ptr @ipcomp6_handlers, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %9

5:                                                ; preds = %9
  %6 = getelementptr inbounds %struct.xfrm6_protocol, ptr %10, i32 0, i32 4
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0) #7
  %13 = icmp eq i32 %12, -22
  br i1 %13, label %5, label %16

14:                                               ; preds = %5, %1
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 4, i32 noundef 0, ptr noundef null, ptr noundef %15) #7
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #7
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi i32 [ 0, %14 ], [ %12, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xfrm6_ipcomp_err(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load volatile ptr, ptr @ipcomp6_handlers, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %13

9:                                                ; preds = %13
  %10 = getelementptr inbounds %struct.xfrm6_protocol, ptr %14, i32 0, i32 4
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9, %6
  %14 = phi ptr [ %11, %9 ], [ %7, %6 ]
  %15 = getelementptr inbounds %struct.xfrm6_protocol, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %9

19:                                               ; preds = %13, %9, %6
  %20 = phi i32 [ -2, %6 ], [ -2, %9 ], [ 0, %13 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xfrm6_rcv_cb(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #0 {
  switch i8 %1, label %20 [
    i8 50, label %4
    i8 51, label %6
    i8 108, label %5
  ]

4:                                                ; preds = %3
  br label %6

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5, %4, %3
  %7 = phi ptr [ @ipcomp6_handlers, %5 ], [ @esp6_handlers, %4 ], [ @ah6_handlers, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %14

10:                                               ; preds = %14
  %11 = getelementptr inbounds %struct.xfrm6_protocol, ptr %15, i32 0, i32 4
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10, %6
  %15 = phi ptr [ %12, %10 ], [ %8, %6 ]
  %16 = getelementptr inbounds %struct.xfrm6_protocol, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %0, i32 noundef %2) #7
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %10

20:                                               ; preds = %14, %10, %6, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %6 ], [ %18, %14 ], [ 0, %10 ]
  ret i32 %21
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{i64 2156544561}
