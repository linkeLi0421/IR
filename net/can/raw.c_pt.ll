; ModuleID = '/llk/IR/net/can/raw.c_pt.bc'
source_filename = "../net/can/raw.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.can_proto = type { i32, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.68, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.68 = type { ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.87, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.87 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.raw_sock = type { %struct.sock, i32, i32, %struct.list_head, i32, i32, i32, i32, i32, %struct.can_filter, ptr, i32, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.78, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.79, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.80, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon.38, %union.anon.40, %union.anon.41, i16, i8, i8, i32, %union.anon.43, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.70, [0 x i32], %union.anon.71, i16, i16, %union.anon.72, %struct.refcount_struct, [0 x i32], %union.anon.73 }
%union.anon.38 = type { i64 }
%union.anon.40 = type { i32 }
%union.anon.41 = type { i32 }
%union.anon.43 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { i32 }
%union.anon.71 = type { %struct.hlist_node }
%union.anon.72 = type { i32 }
%union.anon.73 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.anon.78 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.79 = type { ptr }
%union.anon.80 = type { ptr }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.can_filter = type { i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.120, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.134, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.120 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.134 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.sockaddr_can = type { i16, i32, %union.anon.136 }
%union.anon.136 = type { %struct.anon.138 }
%struct.anon.138 = type { i64, i32, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.47, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.44, %union.anon.45 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.47 = type { ptr }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.can_frame = type { i32, %union.anon.139, i8, i8, i8, [8 x i8] }
%union.anon.139 = type { i8 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.uniqframe = type { i32, ptr, i32 }

@__UNIQUE_ID_description418 = internal constant [40 x i8] c"can_raw.description=PF_CAN raw protocol\00", section ".modinfo", align 1
@__UNIQUE_ID_file419 = internal constant [29 x i8] c"can_raw.file=net/can/can-raw\00", section ".modinfo", align 1
@__UNIQUE_ID_license420 = internal constant [29 x i8] c"can_raw.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author421 = internal constant [59 x i8] c"can_raw.author=Urs Thuermann <urs.thuermann@volkswagen.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias422 = internal constant [26 x i8] c"can_raw.alias=can-proto-1\00", section ".modinfo", align 1
@raw_can_proto = internal constant %struct.can_proto { i32 3, i32 1, ptr @raw_ops, ptr @raw_proto }, align 4
@canraw_notifier = internal global %struct.notifier_block { ptr @raw_notifier, ptr null, i32 0 }, align 4
@__initcall__kmod_can_raw__427_956_raw_module_init6 = internal global ptr @raw_module_init, section ".initcall6.init", align 4
@__exitcall_raw_module_exit = internal global ptr @raw_module_exit, section ".exitcall.exit", align 4
@raw_ops = internal constant %struct.proto_ops { i32 29, ptr null, ptr @raw_release, ptr @raw_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @raw_getname, ptr @datagram_poll, ptr @raw_sock_no_ioctlcmd, ptr @sock_gettstamp, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr @raw_setsockopt, ptr @raw_getsockopt, ptr null, ptr @raw_sendmsg, ptr @raw_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@raw_proto = internal global %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @raw_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 576, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, ptr null, [32 x i8] c"CAN_RAW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, section ".data..read_mostly", align 4
@raw_notifier_lock = internal global %struct.spinlock zeroinitializer, align 4
@raw_busy_notifier = internal unnamed_addr global ptr null, align 4
@init_net = external dso_local global %struct.net, align 64
@.str = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@raw_notifier_list = internal global %struct.list_head { ptr @raw_notifier_list, ptr @raw_notifier_list }, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"\016can: raw protocol\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"\013can: registration of raw protocol failed\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias422, ptr @__UNIQUE_ID_author421, ptr @__UNIQUE_ID_description418, ptr @__UNIQUE_ID_file419, ptr @__UNIQUE_ID_license420, ptr @__exitcall_raw_module_exit, ptr @__initcall__kmod_can_raw__427_956_raw_module_init6, ptr @raw_module_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @raw_module_exit() #0 section ".exit.text" {
  tail call void @can_proto_unregister(ptr noundef nonnull @raw_can_proto) #14
  %1 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @canraw_notifier) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_proto_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @raw_module_init() #0 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #15
  %2 = tail call i32 @can_proto_register(ptr noundef nonnull @raw_can_proto) #14
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #15
  br label %8

6:                                                ; preds = %0
  %7 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @canraw_notifier) #14
  br label %8

8:                                                ; preds = %6, %4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raw_release(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %109, label %5

5:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @raw_notifier_lock) #14
  %6 = load ptr, ptr @raw_busy_notifier, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %8, label %14

8:                                                ; preds = %8, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %9 = load i16, ptr @raw_notifier_lock, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr @raw_notifier_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  %11 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #14
  tail call void @_raw_spin_lock(ptr noundef nonnull @raw_notifier_lock) #14
  %12 = load ptr, ptr @raw_busy_notifier, align 4
  %13 = icmp eq ptr %12, %3
  br i1 %13, label %8, label %14

14:                                               ; preds = %8, %5
  %15 = getelementptr inbounds %struct.raw_sock, ptr %3, i32 0, i32 3
  %16 = getelementptr inbounds %struct.raw_sock, ptr %3, i32 0, i32 3, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %20 = load i16, ptr @raw_notifier_lock, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr @raw_notifier_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  tail call void @lock_sock_nested(ptr noundef %3, i32 noundef 0) #14
  %22 = getelementptr inbounds %struct.raw_sock, ptr %3, i32 0, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %84, label %25

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.raw_sock, ptr %3, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %64, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %27) #14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %84, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.raw_sock, ptr %3, i32 0, i32 10
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.raw_sock, ptr %3, i32 0, i32 8
  %36 = load i32, ptr %35, align 8
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %38, %32
  %39 = phi i32 [ %44, %38 ], [ 0, %32 ]
  %40 = getelementptr %struct.can_filter, ptr %34, i32 %39
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr %struct.can_filter, ptr %34, i32 %39, i32 1
  %43 = load i32, ptr %42, align 4
  tail call void @can_rx_unregister(ptr noundef nonnull @init_net, ptr noundef nonnull %30, i32 noundef %41, i32 noundef %43, ptr noundef nonnull @raw_rcv, ptr noundef %3) #14
  %44 = add nuw nsw i32 %39, 1
  %45 = icmp eq i32 %44, %36
  br i1 %45, label %46, label %38

46:                                               ; preds = %38, %32
  %47 = getelementptr inbounds %struct.raw_sock, ptr %3, i32 0, i32 11
  %48 = load i32, ptr %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = or i32 %48, 536870912
  tail call void @can_rx_unregister(ptr noundef nonnull @init_net, ptr noundef nonnull %30, i32 noundef 0, i32 noundef %51, ptr noundef nonnull @raw_rcv, ptr noundef %3) #14
  br label %52

52:                                               ; preds = %50, %46
  %53 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !13
  %54 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 99
  %55 = load ptr, ptr %54, align 8
  %56 = ptrtoint ptr %55 to i32
  %57 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %58 = inttoptr i32 %57 to ptr
  %59 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %58) #8, !srcloc !14
  %60 = add i32 %59, %56
  %61 = inttoptr i32 %60 to ptr
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, -1
  store i32 %63, ptr %61, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %53) #14, !srcloc !15
  br label %84

64:                                               ; preds = %25
  %65 = getelementptr inbounds %struct.raw_sock, ptr %3, i32 0, i32 10
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.raw_sock, ptr %3, i32 0, i32 8
  %68 = load i32, ptr %67, align 8
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %70, %64
  %71 = phi i32 [ %76, %70 ], [ 0, %64 ]
  %72 = getelementptr %struct.can_filter, ptr %66, i32 %71
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr %struct.can_filter, ptr %66, i32 %71, i32 1
  %75 = load i32, ptr %74, align 4
  tail call void @can_rx_unregister(ptr noundef nonnull @init_net, ptr noundef null, i32 noundef %73, i32 noundef %75, ptr noundef nonnull @raw_rcv, ptr noundef %3) #14
  %76 = add nuw nsw i32 %71, 1
  %77 = icmp eq i32 %76, %68
  br i1 %77, label %78, label %70

78:                                               ; preds = %70, %64
  %79 = getelementptr inbounds %struct.raw_sock, ptr %3, i32 0, i32 11
  %80 = load i32, ptr %79, align 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = or i32 %80, 536870912
  tail call void @can_rx_unregister(ptr noundef nonnull @init_net, ptr noundef null, i32 noundef 0, i32 noundef %83, ptr noundef nonnull @raw_rcv, ptr noundef %3) #14
  br label %84

84:                                               ; preds = %82, %78, %52, %29, %14
  %85 = getelementptr inbounds %struct.raw_sock, ptr %3, i32 0, i32 8
  %86 = load i32, ptr %85, align 8
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.raw_sock, ptr %3, i32 0, i32 10
  %90 = load ptr, ptr %89, align 4
  tail call void @kfree(ptr noundef %90) #14
  br label %91

91:                                               ; preds = %88, %84
  %92 = getelementptr inbounds %struct.raw_sock, ptr %3, i32 0, i32 2
  store i32 0, ptr %92, align 4
  store i32 0, ptr %22, align 8
  store i32 0, ptr %85, align 8
  %93 = getelementptr inbounds %struct.raw_sock, ptr %3, i32 0, i32 12
  %94 = load ptr, ptr %93, align 4
  tail call void @free_percpu(ptr noundef %94) #14
  %95 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %95) #14
  %96 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 13
  %97 = load i32, ptr %96, align 4
  %98 = or i32 %97, 1
  store i32 %98, ptr %96, align 4
  %99 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 71
  store ptr null, ptr %99, align 8
  %100 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 17
  store ptr null, ptr %100, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %95) #14
  store ptr null, ptr %2, align 16
  tail call void @release_sock(ptr noundef nonnull %3) #14
  %101 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %101) #14, !srcloc !17
  %102 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %101, ptr %101, i32 1, ptr elementtype(i32) %101) #14, !srcloc !18
  %103 = extractvalue { i32, i32, i32 } %102, 0
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %108, label %105

105:                                              ; preds = %91
  %106 = icmp sgt i32 %103, 0
  br i1 %106, label %109, label %107, !prof !19

107:                                              ; preds = %105
  tail call void @refcount_warn_saturate(ptr noundef %101, i32 noundef 3) #14
  br label %109

108:                                              ; preds = %91
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  tail call void @sk_free(ptr noundef %3) #14
  br label %109

109:                                              ; preds = %108, %107, %105, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raw_bind(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = icmp ult i32 %2, 8
  br i1 %6, label %103, label %7

7:                                                ; preds = %3
  %8 = load i16, ptr %1, align 8
  %9 = icmp eq i16 %8, 29
  br i1 %9, label %10, label %103

10:                                               ; preds = %7
  tail call void @lock_sock_nested(ptr noundef %5, i32 noundef 0) #14
  %11 = getelementptr inbounds %struct.raw_sock, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.sockaddr_can, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  br i1 %13, label %20, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.raw_sock, ptr %5, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %92, label %20

20:                                               ; preds = %16, %10
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %60, label %22

22:                                               ; preds = %20
  %23 = tail call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %15) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %92, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 32
  %27 = load i16, ptr %26, align 16
  %28 = icmp eq i16 %27, 280
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !13
  %31 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 99
  %32 = load ptr, ptr %31, align 8
  %33 = ptrtoint ptr %32 to i32
  %34 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %35 = inttoptr i32 %34 to ptr
  %36 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %35) #8, !srcloc !14
  %37 = add i32 %36, %33
  %38 = inttoptr i32 %37 to ptr
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, -1
  store i32 %40, ptr %38, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %30) #14, !srcloc !15
  br label %92

41:                                               ; preds = %25
  %42 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 14
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 1
  %45 = xor i32 %44, 1
  %46 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 17
  %47 = load i32, ptr %46, align 4
  %48 = tail call fastcc i32 @raw_enable_allfilters(ptr noundef nonnull %23, ptr noundef %5)
  %49 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !13
  %50 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 99
  %51 = load ptr, ptr %50, align 8
  %52 = ptrtoint ptr %51 to i32
  %53 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %54 = inttoptr i32 %53 to ptr
  %55 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %54) #8, !srcloc !14
  %56 = add i32 %55, %52
  %57 = inttoptr i32 %56 to ptr
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, -1
  store i32 %59, ptr %57, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %49) #14, !srcloc !15
  br label %62

60:                                               ; preds = %20
  %61 = tail call fastcc i32 @raw_enable_allfilters(ptr noundef null, ptr noundef %5)
  br label %62

62:                                               ; preds = %60, %41
  %63 = phi i32 [ %47, %41 ], [ 0, %60 ]
  %64 = phi i32 [ %48, %41 ], [ %61, %60 ]
  %65 = phi i32 [ %45, %41 ], [ 0, %60 ]
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %67, label %94

67:                                               ; preds = %62
  %68 = load i32, ptr %11, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %90, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.raw_sock, ptr %5, i32 0, i32 2
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %89, label %74

74:                                               ; preds = %70
  %75 = tail call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %72) #14
  %76 = icmp eq ptr %75, null
  br i1 %76, label %90, label %77

77:                                               ; preds = %74
  tail call fastcc void @raw_disable_allfilters(ptr noundef nonnull %75, ptr noundef %5)
  %78 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !13
  %79 = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 99
  %80 = load ptr, ptr %79, align 8
  %81 = ptrtoint ptr %80 to i32
  %82 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %83 = inttoptr i32 %82 to ptr
  %84 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %83) #8, !srcloc !14
  %85 = add i32 %84, %81
  %86 = inttoptr i32 %85 to ptr
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, -1
  store i32 %88, ptr %86, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %78) #14, !srcloc !15
  br label %90

89:                                               ; preds = %70
  tail call fastcc void @raw_disable_allfilters(ptr noundef null, ptr noundef %5)
  br label %90

90:                                               ; preds = %89, %77, %74, %67
  %91 = getelementptr inbounds %struct.raw_sock, ptr %5, i32 0, i32 2
  store i32 %63, ptr %91, align 4
  store i32 1, ptr %11, align 8
  br label %94

92:                                               ; preds = %29, %22, %16
  %93 = phi i32 [ 0, %16 ], [ -19, %29 ], [ -19, %22 ]
  tail call void @release_sock(ptr noundef %5) #14
  br label %103

94:                                               ; preds = %90, %62
  tail call void @release_sock(ptr noundef %5) #14
  %95 = icmp eq i32 %65, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 51
  store i32 100, ptr %97, align 4
  %98 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 13
  %99 = load volatile i32, ptr %98, align 4
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  tail call void @sk_error_report(ptr noundef %5) #14
  br label %103

103:                                              ; preds = %102, %96, %94, %92, %7, %3
  %104 = phi i32 [ -22, %3 ], [ -22, %7 ], [ %64, %96 ], [ %64, %102 ], [ %64, %94 ], [ %93, %92 ]
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @raw_getname(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #3 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  store i64 29, ptr %1, align 8
  %8 = getelementptr inbounds %struct.raw_sock, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sockaddr_can, ptr %1, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  br label %11

11:                                               ; preds = %5, %3
  %12 = phi i32 [ 8, %5 ], [ -95, %3 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @raw_sock_no_ioctlcmd(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #4 {
  ret i32 -515
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raw_setsockopt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #2 {
  %6 = alloca %struct.can_filter, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  store i64 0, ptr %6, align 8, !annotation !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4
  %10 = icmp eq i32 %1, 101
  br i1 %10, label %11, label %283

11:                                               ; preds = %5
  switch i32 %2, label %283 [
    i32 1, label %12
    i32 2, label %98
    i32 3, label %175
    i32 4, label %202
    i32 5, label %229
    i32 6, label %256
  ]

12:                                               ; preds = %11
  %13 = and i32 %4, 7
  %14 = icmp ne i32 %13, 0
  %15 = icmp ugt i32 %4, 4096
  %16 = or i1 %15, %14
  br i1 %16, label %283, label %17

17:                                               ; preds = %12
  %18 = lshr i32 %4, 3
  %19 = icmp ugt i32 %4, 15
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = tail call fastcc ptr @memdup_sockptr([2 x i32] %3, i32 noundef %4)
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = ptrtoint ptr %21 to i32
  br label %283

25:                                               ; preds = %17
  %26 = icmp eq i32 %18, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %6, [2 x i32] %3, i32 noundef 8)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %283

30:                                               ; preds = %27, %25, %20
  %31 = phi ptr [ %21, %20 ], [ null, %27 ], [ null, %25 ]
  call void @rtnl_lock() #14
  call void @lock_sock_nested(ptr noundef %9, i32 noundef 0) #14
  %32 = getelementptr inbounds %struct.raw_sock, ptr %9, i32 0, i32 1
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %64, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.raw_sock, ptr %9, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %37) #14
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  br i1 %19, label %43, label %96

43:                                               ; preds = %42
  call void @kfree(ptr noundef %31) #14
  br label %96

44:                                               ; preds = %39
  %45 = load i32, ptr %32, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %44, %35
  %48 = phi ptr [ %40, %44 ], [ null, %35 ]
  %49 = icmp eq i32 %18, 1
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call fastcc i32 @raw_enable_filters(ptr noundef %48, ptr noundef %9, ptr noundef nonnull %6, i32 noundef 1)
  br label %54

52:                                               ; preds = %47
  %53 = call fastcc i32 @raw_enable_filters(ptr noundef %48, ptr noundef %9, ptr noundef %31, i32 noundef %18)
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  br i1 %19, label %58, label %80

58:                                               ; preds = %57
  call void @kfree(ptr noundef %31) #14
  br label %80

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.raw_sock, ptr %9, i32 0, i32 10
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.raw_sock, ptr %9, i32 0, i32 8
  %63 = load i32, ptr %62, align 8
  call fastcc void @raw_disable_filters(ptr noundef %48, ptr noundef %9, ptr noundef %61, i32 noundef %63)
  br label %64

64:                                               ; preds = %59, %44, %30
  %65 = phi ptr [ %48, %59 ], [ %40, %44 ], [ null, %30 ]
  %66 = getelementptr inbounds %struct.raw_sock, ptr %9, i32 0, i32 8
  %67 = load i32, ptr %66, align 8
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.raw_sock, ptr %9, i32 0, i32 10
  %71 = load ptr, ptr %70, align 4
  call void @kfree(ptr noundef %71) #14
  br label %72

72:                                               ; preds = %69, %64
  %73 = icmp eq i32 %18, 1
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.raw_sock, ptr %9, i32 0, i32 9
  %76 = load i64, ptr %6, align 8
  store i64 %76, ptr %75, align 4
  br label %77

77:                                               ; preds = %74, %72
  %78 = phi ptr [ %75, %74 ], [ %31, %72 ]
  %79 = getelementptr inbounds %struct.raw_sock, ptr %9, i32 0, i32 10
  store ptr %78, ptr %79, align 4
  store i32 %18, ptr %66, align 8
  br label %80

80:                                               ; preds = %77, %58, %57
  %81 = phi ptr [ %48, %58 ], [ %48, %57 ], [ %65, %77 ]
  %82 = phi i32 [ %55, %58 ], [ %55, %57 ], [ 0, %77 ]
  %83 = icmp eq ptr %81, null
  br i1 %83, label %96, label %84

84:                                               ; preds = %80
  %85 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !13
  %86 = getelementptr inbounds %struct.net_device, ptr %81, i32 0, i32 99
  %87 = load ptr, ptr %86, align 8
  %88 = ptrtoint ptr %87 to i32
  %89 = call i32 @llvm.read_register.i32(metadata !0) #14
  %90 = inttoptr i32 %89 to ptr
  %91 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %90) #8, !srcloc !14
  %92 = add i32 %91, %88
  %93 = inttoptr i32 %92 to ptr
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, -1
  store i32 %95, ptr %93, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %85) #14, !srcloc !15
  br label %96

96:                                               ; preds = %84, %80, %43, %42
  %97 = phi i32 [ %82, %80 ], [ %82, %84 ], [ -19, %43 ], [ -19, %42 ]
  call void @release_sock(ptr noundef %9) #14
  call void @rtnl_unlock() #14
  br label %283

98:                                               ; preds = %11
  %99 = icmp eq i32 %4, 4
  br i1 %99, label %100, label %283

100:                                              ; preds = %98
  %101 = extractvalue [2 x i32] %3, 0
  %102 = inttoptr i32 %101 to ptr
  %103 = extractvalue [2 x i32] %3, 1
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %100
  %107 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %102, i32 4, i32 -1090519040) #16, !srcloc !22
  %108 = extractvalue { i32, i32 } %107, 0
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %118, !prof !19

110:                                              ; preds = %106
  %111 = tail call ptr @llvm.thread.pointer() #14
  %112 = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 3
  %113 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %112) #8, !srcloc !23
  %114 = and i32 %113, -13
  %115 = or i32 %114, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %115) #14, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  %116 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %102, i32 noundef 4) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %113) #14, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118, !prof !19

118:                                              ; preds = %110, %106
  %119 = phi i32 [ %116, %110 ], [ 4, %106 ]
  %120 = sub i32 4, %119
  %121 = getelementptr i8, ptr %7, i32 %120
  call void @llvm.memset.p0.i32(ptr align 1 %121, i8 0, i32 %119, i1 false) #14
  br label %283

122:                                              ; preds = %110, %100
  %123 = phi ptr [ %7, %110 ], [ %102, %100 ]
  %124 = load i32, ptr %123, align 1
  %125 = and i32 %124, 536870911
  store i32 %125, ptr %7, align 4
  call void @rtnl_lock() #14
  call void @lock_sock_nested(ptr noundef %9, i32 noundef 0) #14
  %126 = getelementptr inbounds %struct.raw_sock, ptr %9, i32 0, i32 1
  %127 = load i32, ptr %126, align 8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %153, label %129

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.raw_sock, ptr %9, i32 0, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %129
  %134 = call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %131) #14
  %135 = icmp eq ptr %134, null
  br i1 %135, label %173, label %136

136:                                              ; preds = %133
  %137 = load i32, ptr %126, align 8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %153, label %139

139:                                              ; preds = %136, %129
  %140 = phi ptr [ %134, %136 ], [ null, %129 ]
  %141 = load i32, ptr %7, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = or i32 %141, 536870912
  %145 = call i32 @can_rx_register(ptr noundef nonnull @init_net, ptr noundef %140, i32 noundef 0, i32 noundef %144, ptr noundef nonnull @raw_rcv, ptr noundef %9, ptr noundef nonnull @.str, ptr noundef %9) #14
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %143, %139
  %148 = getelementptr inbounds %struct.raw_sock, ptr %9, i32 0, i32 11
  %149 = load i32, ptr %148, align 8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %147
  %152 = or i32 %149, 536870912
  call void @can_rx_unregister(ptr noundef nonnull @init_net, ptr noundef %140, i32 noundef 0, i32 noundef %152, ptr noundef nonnull @raw_rcv, ptr noundef %9) #14
  br label %153

153:                                              ; preds = %151, %147, %136, %122
  %154 = phi ptr [ %134, %136 ], [ %140, %147 ], [ %140, %151 ], [ null, %122 ]
  %155 = load i32, ptr %7, align 4
  %156 = getelementptr inbounds %struct.raw_sock, ptr %9, i32 0, i32 11
  store i32 %155, ptr %156, align 8
  br label %157

157:                                              ; preds = %153, %143
  %158 = phi ptr [ %140, %143 ], [ %154, %153 ]
  %159 = phi i32 [ %145, %143 ], [ 0, %153 ]
  %160 = icmp eq ptr %158, null
  br i1 %160, label %173, label %161

161:                                              ; preds = %157
  %162 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !13
  %163 = getelementptr inbounds %struct.net_device, ptr %158, i32 0, i32 99
  %164 = load ptr, ptr %163, align 8
  %165 = ptrtoint ptr %164 to i32
  %166 = call i32 @llvm.read_register.i32(metadata !0) #14
  %167 = inttoptr i32 %166 to ptr
  %168 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %167) #8, !srcloc !14
  %169 = add i32 %168, %165
  %170 = inttoptr i32 %169 to ptr
  %171 = load i32, ptr %170, align 4
  %172 = add i32 %171, -1
  store i32 %172, ptr %170, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %162) #14, !srcloc !15
  br label %173

173:                                              ; preds = %161, %157, %133
  %174 = phi i32 [ %159, %157 ], [ %159, %161 ], [ -19, %133 ]
  call void @release_sock(ptr noundef %9) #14
  call void @rtnl_unlock() #14
  br label %283

175:                                              ; preds = %11
  %176 = icmp eq i32 %4, 4
  br i1 %176, label %177, label %283

177:                                              ; preds = %175
  %178 = getelementptr inbounds %struct.raw_sock, ptr %9, i32 0, i32 4
  %179 = extractvalue [2 x i32] %3, 0
  %180 = inttoptr i32 %179 to ptr
  %181 = extractvalue [2 x i32] %3, 1
  %182 = and i32 %181, 1
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %200

184:                                              ; preds = %177
  %185 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %180, i32 4, i32 -1090519040) #16, !srcloc !22
  %186 = extractvalue { i32, i32 } %185, 0
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %196, !prof !19

188:                                              ; preds = %184
  %189 = tail call ptr @llvm.thread.pointer() #14
  %190 = getelementptr inbounds %struct.thread_info, ptr %189, i32 0, i32 3
  %191 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %190) #8, !srcloc !23
  %192 = and i32 %191, -13
  %193 = or i32 %192, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %193) #14, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  %194 = tail call i32 @arm_copy_from_user(ptr noundef %178, ptr noundef %180, i32 noundef 4) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %191) #14, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %283, label %196, !prof !19

196:                                              ; preds = %188, %184
  %197 = phi i32 [ %194, %188 ], [ 4, %184 ]
  %198 = sub i32 4, %197
  %199 = getelementptr i8, ptr %178, i32 %198
  tail call void @llvm.memset.p0.i32(ptr align 1 %199, i8 0, i32 %197, i1 false) #14
  br label %283

200:                                              ; preds = %177
  %201 = load i32, ptr %180, align 1
  store i32 %201, ptr %178, align 1
  br label %283

202:                                              ; preds = %11
  %203 = icmp eq i32 %4, 4
  br i1 %203, label %204, label %283

204:                                              ; preds = %202
  %205 = getelementptr inbounds %struct.raw_sock, ptr %9, i32 0, i32 5
  %206 = extractvalue [2 x i32] %3, 0
  %207 = inttoptr i32 %206 to ptr
  %208 = extractvalue [2 x i32] %3, 1
  %209 = and i32 %208, 1
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %227

211:                                              ; preds = %204
  %212 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %207, i32 4, i32 -1090519040) #16, !srcloc !22
  %213 = extractvalue { i32, i32 } %212, 0
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %223, !prof !19

215:                                              ; preds = %211
  %216 = tail call ptr @llvm.thread.pointer() #14
  %217 = getelementptr inbounds %struct.thread_info, ptr %216, i32 0, i32 3
  %218 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %217) #8, !srcloc !23
  %219 = and i32 %218, -13
  %220 = or i32 %219, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %220) #14, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  %221 = tail call i32 @arm_copy_from_user(ptr noundef %205, ptr noundef %207, i32 noundef 4) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %218) #14, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %283, label %223, !prof !19

223:                                              ; preds = %215, %211
  %224 = phi i32 [ %221, %215 ], [ 4, %211 ]
  %225 = sub i32 4, %224
  %226 = getelementptr i8, ptr %205, i32 %225
  tail call void @llvm.memset.p0.i32(ptr align 1 %226, i8 0, i32 %224, i1 false) #14
  br label %283

227:                                              ; preds = %204
  %228 = load i32, ptr %207, align 1
  store i32 %228, ptr %205, align 1
  br label %283

229:                                              ; preds = %11
  %230 = icmp eq i32 %4, 4
  br i1 %230, label %231, label %283

231:                                              ; preds = %229
  %232 = getelementptr inbounds %struct.raw_sock, ptr %9, i32 0, i32 6
  %233 = extractvalue [2 x i32] %3, 0
  %234 = inttoptr i32 %233 to ptr
  %235 = extractvalue [2 x i32] %3, 1
  %236 = and i32 %235, 1
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %254

238:                                              ; preds = %231
  %239 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %234, i32 4, i32 -1090519040) #16, !srcloc !22
  %240 = extractvalue { i32, i32 } %239, 0
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %250, !prof !19

242:                                              ; preds = %238
  %243 = tail call ptr @llvm.thread.pointer() #14
  %244 = getelementptr inbounds %struct.thread_info, ptr %243, i32 0, i32 3
  %245 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %244) #8, !srcloc !23
  %246 = and i32 %245, -13
  %247 = or i32 %246, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %247) #14, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  %248 = tail call i32 @arm_copy_from_user(ptr noundef %232, ptr noundef %234, i32 noundef 4) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %245) #14, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %283, label %250, !prof !19

250:                                              ; preds = %242, %238
  %251 = phi i32 [ %248, %242 ], [ 4, %238 ]
  %252 = sub i32 4, %251
  %253 = getelementptr i8, ptr %232, i32 %252
  tail call void @llvm.memset.p0.i32(ptr align 1 %253, i8 0, i32 %251, i1 false) #14
  br label %283

254:                                              ; preds = %231
  %255 = load i32, ptr %234, align 1
  store i32 %255, ptr %232, align 1
  br label %283

256:                                              ; preds = %11
  %257 = icmp eq i32 %4, 4
  br i1 %257, label %258, label %283

258:                                              ; preds = %256
  %259 = getelementptr inbounds %struct.raw_sock, ptr %9, i32 0, i32 7
  %260 = extractvalue [2 x i32] %3, 0
  %261 = inttoptr i32 %260 to ptr
  %262 = extractvalue [2 x i32] %3, 1
  %263 = and i32 %262, 1
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %281

265:                                              ; preds = %258
  %266 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %261, i32 4, i32 -1090519040) #16, !srcloc !22
  %267 = extractvalue { i32, i32 } %266, 0
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %277, !prof !19

269:                                              ; preds = %265
  %270 = tail call ptr @llvm.thread.pointer() #14
  %271 = getelementptr inbounds %struct.thread_info, ptr %270, i32 0, i32 3
  %272 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %271) #8, !srcloc !23
  %273 = and i32 %272, -13
  %274 = or i32 %273, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %274) #14, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  %275 = tail call i32 @arm_copy_from_user(ptr noundef %259, ptr noundef %261, i32 noundef 4) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %272) #14, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %283, label %277, !prof !19

277:                                              ; preds = %269, %265
  %278 = phi i32 [ %275, %269 ], [ 4, %265 ]
  %279 = sub i32 4, %278
  %280 = getelementptr i8, ptr %259, i32 %279
  tail call void @llvm.memset.p0.i32(ptr align 1 %280, i8 0, i32 %278, i1 false) #14
  br label %283

281:                                              ; preds = %258
  %282 = load i32, ptr %261, align 1
  store i32 %282, ptr %259, align 1
  br label %283

283:                                              ; preds = %281, %277, %269, %256, %254, %250, %242, %229, %227, %223, %215, %202, %200, %196, %188, %175, %173, %118, %98, %96, %27, %23, %12, %11, %5
  %284 = phi i32 [ %24, %23 ], [ -22, %5 ], [ -22, %12 ], [ -14, %27 ], [ -22, %98 ], [ -22, %175 ], [ -22, %202 ], [ -22, %229 ], [ -22, %256 ], [ -92, %11 ], [ -14, %118 ], [ -14, %196 ], [ -14, %223 ], [ -14, %250 ], [ -14, %277 ], [ %174, %173 ], [ %97, %96 ], [ 0, %200 ], [ 0, %188 ], [ 0, %227 ], [ 0, %215 ], [ 0, %254 ], [ 0, %242 ], [ 0, %281 ], [ 0, %269 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  ret i32 %284
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raw_getsockopt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #2 {
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  %8 = icmp eq i32 %1, 101
  br i1 %8, label %9, label %101

9:                                                ; preds = %5
  %10 = tail call ptr @llvm.thread.pointer() #14
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #8, !srcloc !23
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #14, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  %15 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #14, !srcloc !26
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = extractvalue { i32, i32 } %15, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #14, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %101

19:                                               ; preds = %9
  %20 = icmp slt i32 %17, 0
  br i1 %20, label %101, label %21

21:                                               ; preds = %19
  switch i32 %2, label %101 [
    i32 1, label %22
    i32 2, label %65
    i32 3, label %68
    i32 4, label %71
    i32 5, label %74
    i32 6, label %77
  ]

22:                                               ; preds = %21
  tail call void @lock_sock_nested(ptr noundef %7, i32 noundef 0) #14
  %23 = getelementptr inbounds %struct.raw_sock, ptr %7, i32 0, i32 8
  %24 = load i32, ptr %23, align 8
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %22
  %27 = shl i32 %24, 3
  %28 = icmp slt i32 %17, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #8, !srcloc !23
  %31 = and i32 %30, -13
  %32 = or i32 %31, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #14, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  %33 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %27, i32 -1090519041) #14, !srcloc !27
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #14, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 -34, i32 -14
  br label %57

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.raw_sock, ptr %7, i32 0, i32 10
  %38 = load ptr, ptr %37, align 4
  %39 = icmp slt i32 %27, 0
  %40 = load i1, ptr @check_copy_size.__already_done, align 1
  %41 = xor i1 %40, true
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %44, !prof !28

43:                                               ; preds = %36
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %44

44:                                               ; preds = %43, %36
  br i1 %39, label %57, label %45, !prof !28

45:                                               ; preds = %44
  %46 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %27, i32 -1090519040) #16, !srcloc !29
  %47 = extractvalue { i32, i32 } %46, 0
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #8, !srcloc !23
  %51 = and i32 %50, -13
  %52 = or i32 %51, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #14, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  %53 = tail call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef %38, i32 noundef %27) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #14, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  br label %54

54:                                               ; preds = %49, %45
  %55 = phi i32 [ %53, %49 ], [ %27, %45 ]
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54, %44, %29
  %58 = phi i32 [ %35, %29 ], [ -14, %54 ], [ -14, %44 ]
  tail call void @release_sock(ptr noundef %7) #14
  br label %101

59:                                               ; preds = %54, %22
  %60 = phi i32 [ 0, %22 ], [ %27, %54 ]
  tail call void @release_sock(ptr noundef %7) #14
  %61 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #8, !srcloc !23
  %62 = and i32 %61, -13
  %63 = or i32 %62, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #14, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  %64 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %60, i32 -1090519041) #14, !srcloc !30
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #14, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  br label %101

65:                                               ; preds = %21
  %66 = tail call i32 @llvm.umin.i32(i32 %17, i32 4)
  %67 = getelementptr inbounds %struct.raw_sock, ptr %7, i32 0, i32 11
  br label %80

68:                                               ; preds = %21
  %69 = tail call i32 @llvm.umin.i32(i32 %17, i32 4)
  %70 = getelementptr inbounds %struct.raw_sock, ptr %7, i32 0, i32 4
  br label %80

71:                                               ; preds = %21
  %72 = tail call i32 @llvm.umin.i32(i32 %17, i32 4)
  %73 = getelementptr inbounds %struct.raw_sock, ptr %7, i32 0, i32 5
  br label %80

74:                                               ; preds = %21
  %75 = tail call i32 @llvm.umin.i32(i32 %17, i32 4)
  %76 = getelementptr inbounds %struct.raw_sock, ptr %7, i32 0, i32 6
  br label %80

77:                                               ; preds = %21
  %78 = tail call i32 @llvm.umin.i32(i32 %17, i32 4)
  %79 = getelementptr inbounds %struct.raw_sock, ptr %7, i32 0, i32 7
  br label %80

80:                                               ; preds = %77, %74, %71, %68, %65
  %81 = phi ptr [ %79, %77 ], [ %76, %74 ], [ %73, %71 ], [ %70, %68 ], [ %67, %65 ]
  %82 = phi i32 [ %78, %77 ], [ %75, %74 ], [ %72, %71 ], [ %69, %68 ], [ %66, %65 ]
  %83 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #8, !srcloc !23
  %84 = and i32 %83, -13
  %85 = or i32 %84, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %85) #14, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  %86 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %82, i32 -1090519041) #14, !srcloc !31
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %83) #14, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %80
  %89 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %82, i32 -1090519040) #16, !srcloc !29
  %90 = extractvalue { i32, i32 } %89, 0
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #8, !srcloc !23
  %94 = and i32 %93, -13
  %95 = or i32 %94, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %95) #14, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  %96 = tail call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef %81, i32 noundef %82) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %93) #14, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  br label %97

97:                                               ; preds = %92, %88
  %98 = phi i32 [ %96, %92 ], [ %82, %88 ]
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %99, i32 0, i32 -14
  br label %101

101:                                              ; preds = %97, %80, %59, %57, %21, %19, %9, %5
  %102 = phi i32 [ -22, %5 ], [ -14, %9 ], [ -22, %19 ], [ %58, %57 ], [ %64, %59 ], [ -92, %21 ], [ -14, %80 ], [ %100, %97 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raw_sendmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  %7 = load ptr, ptr %1, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 8
  br i1 %12, label %127, label %13

13:                                               ; preds = %9
  %14 = load i16, ptr %7, align 8
  %15 = icmp eq i16 %14, 29
  br i1 %15, label %16, label %127

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.sockaddr_can, ptr %7, i32 0, i32 1
  br label %20

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.raw_sock, ptr %6, i32 0, i32 2
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %17, %16 ], [ %19, %18 ]
  %22 = load i32, ptr %21, align 4
  %23 = tail call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %22) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %127, label %25

25:                                               ; preds = %20
  store i32 -22, ptr %4, align 4
  %26 = getelementptr inbounds %struct.raw_sock, ptr %6, i32 0, i32 6
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 20
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 72
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  switch i32 %2, label %112 [
    i32 72, label %36
    i32 16, label %36
  ]

34:                                               ; preds = %29, %25
  %35 = icmp eq i32 %2, 16
  br i1 %35, label %36, label %112, !prof !19

36:                                               ; preds = %34, %33, %33
  %37 = add nuw nsw i32 %2, 16
  %38 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 64
  %41 = call ptr @sock_alloc_send_skb(ptr noundef %6, i32 noundef %37, i32 noundef %40, ptr noundef nonnull %4) #14
  %42 = icmp eq ptr %41, null
  br i1 %42, label %112, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 17
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 16
  store ptr %46, ptr %44, align 4
  %47 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 14
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr i8, ptr %48, i32 16
  store ptr %49, ptr %47, align 8
  %50 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 17
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 16
  %53 = load ptr, ptr %52, align 8
  store i32 %51, ptr %53, align 8
  %54 = load ptr, ptr %52, align 8
  %55 = getelementptr inbounds %struct.can_skb_priv, ptr %54, i32 0, i32 1
  store i32 0, ptr %55, align 4
  %56 = call ptr @skb_put(ptr noundef nonnull %41, i32 noundef %2) #14
  %57 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %58 = call i32 @_copy_from_iter(ptr noundef %56, i32 noundef %2, ptr noundef %57) #14
  %59 = icmp eq i32 %58, %2
  br i1 %59, label %60, label %111, !prof !19

60:                                               ; preds = %43
  store i32 0, ptr %4, align 4
  %61 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 65
  %62 = load i16, ptr %61, align 8
  %63 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 15
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.skb_shared_info, ptr %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.skb_shared_info, ptr %66, i32 0, i32 9
  %69 = icmp eq i16 %62, 0
  br i1 %69, label %82, label %70, !prof !19

70:                                               ; preds = %60
  call void @__sock_tx_timestamp(i16 noundef zeroext %62, ptr noundef %67) #14
  %71 = zext i16 %62 to i32
  %72 = and i32 %71, 128
  %73 = icmp eq i32 %72, 0
  %74 = and i32 %71, 771
  %75 = icmp eq i32 %74, 0
  %76 = or i1 %75, %73
  br i1 %76, label %82, label %77

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.sock, ptr %64, i32 0, i32 67
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %78) #14, !srcloc !17
  %79 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %78, ptr %78, i32 1, ptr elementtype(i32) %78) #14, !srcloc !33
  %80 = extractvalue { i32, i32 } %79, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !34
  %81 = add i32 %80, -1
  store i32 %81, ptr %68, align 4
  br label %82

82:                                               ; preds = %77, %70, %60
  %83 = getelementptr inbounds %struct.sock_common, ptr %64, i32 0, i32 13
  %84 = load volatile i32, ptr %83, align 4
  %85 = and i32 %84, 524288
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87, !prof !19

87:                                               ; preds = %82
  %88 = load i8, ptr %67, align 1
  %89 = or i8 %88, 16
  store i8 %89, ptr %67, align 1
  br label %90

90:                                               ; preds = %87, %82
  %91 = getelementptr inbounds %struct.anon.49, ptr %41, i32 0, i32 2
  store ptr %23, ptr %91, align 8
  store ptr %6, ptr %63, align 4
  %92 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 33
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 13, i32 0, i32 5
  store i32 %93, ptr %94, align 8
  %95 = getelementptr inbounds %struct.raw_sock, ptr %6, i32 0, i32 4
  %96 = load i32, ptr %95, align 8
  %97 = call i32 @can_send(ptr noundef nonnull %41, i32 noundef %96) #14
  store i32 %97, ptr %4, align 4
  %98 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !13
  %99 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 99
  %100 = load ptr, ptr %99, align 8
  %101 = ptrtoint ptr %100 to i32
  %102 = call i32 @llvm.read_register.i32(metadata !0) #14
  %103 = inttoptr i32 %102 to ptr
  %104 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %103) #8, !srcloc !14
  %105 = add i32 %104, %101
  %106 = inttoptr i32 %105 to ptr
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %107, -1
  store i32 %108, ptr %106, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %98) #14, !srcloc !15
  %109 = load i32, ptr %4, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %127, label %125

111:                                              ; preds = %43
  call void @iov_iter_revert(ptr noundef %57, i32 noundef %58) #14
  store i32 -14, ptr %4, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %41, i32 noundef 0) #14
  br label %112

112:                                              ; preds = %111, %36, %34, %33
  %113 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !13
  %114 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 99
  %115 = load ptr, ptr %114, align 8
  %116 = ptrtoint ptr %115 to i32
  %117 = call i32 @llvm.read_register.i32(metadata !0) #14
  %118 = inttoptr i32 %117 to ptr
  %119 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %118) #8, !srcloc !14
  %120 = add i32 %119, %116
  %121 = inttoptr i32 %120 to ptr
  %122 = load i32, ptr %121, align 4
  %123 = add i32 %122, -1
  store i32 %123, ptr %121, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %113) #14, !srcloc !15
  %124 = load i32, ptr %4, align 4
  br label %125

125:                                              ; preds = %112, %90
  %126 = phi i32 [ %109, %90 ], [ %124, %112 ]
  br label %127

127:                                              ; preds = %125, %90, %20, %13, %9
  %128 = phi i32 [ %126, %125 ], [ -6, %20 ], [ %2, %90 ], [ -22, %9 ], [ -22, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raw_recvmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4
  %8 = and i32 %3, 8192
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @sock_recv_errqueue(ptr noundef %7, ptr noundef %1, i32 noundef %2, i32 noundef 101, i32 noundef 1) #14
  br label %82

12:                                               ; preds = %4
  %13 = and i32 %3, -65
  %14 = and i32 %3, 64
  %15 = call ptr @skb_recv_datagram(ptr noundef %7, i32 noundef %13, i32 noundef %14, ptr noundef nonnull %5) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, ptr %5, align 4
  br label %82

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = icmp ugt i32 %21, %2
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, 32
  store i32 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i32 [ %2, %23 ], [ %21, %19 ]
  %29 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 17
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %32 = icmp slt i32 %28, 0
  %33 = load i1, ptr @check_copy_size.__already_done, align 1
  %34 = xor i1 %33, true
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %37, !prof !28

36:                                               ; preds = %27
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %37

37:                                               ; preds = %36, %27
  br i1 %32, label %40, label %38, !prof !28

38:                                               ; preds = %37
  %39 = call i32 @_copy_to_iter(ptr noundef %30, i32 noundef %28, ptr noundef %31) #14
  br label %40

40:                                               ; preds = %38, %37
  %41 = phi i32 [ %39, %38 ], [ 0, %37 ]
  %42 = icmp eq i32 %41, %28
  %43 = select i1 %42, i32 0, i32 -14
  store i32 %43, ptr %5, align 4
  br i1 %42, label %46, label %44

44:                                               ; preds = %40
  call void @skb_free_datagram(ptr noundef %7, ptr noundef nonnull %15) #14
  %45 = load i32, ptr %5, align 4
  br label %82

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 13
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, 133120
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 65
  %53 = load i16, ptr %52, align 8
  %54 = and i16 %53, 80
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51, %46
  call void @__sock_recv_ts_and_drops(ptr noundef %1, ptr noundef %7, ptr noundef nonnull %15) #14
  br label %69

57:                                               ; preds = %51
  %58 = load volatile i32, ptr %47, align 4
  %59 = and i32 %58, 128
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61, !prof !19

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 2
  %63 = load i64, ptr %62, align 8
  call fastcc void @sock_write_timestamp(ptr noundef %7, i64 noundef %63) #14
  br label %69

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 63
  %66 = load i64, ptr %65, align 8
  %67 = icmp eq i64 %66, -1000000000
  br i1 %67, label %68, label %69, !prof !28

68:                                               ; preds = %64
  call fastcc void @sock_write_timestamp(ptr noundef %7, i64 noundef 0) #14
  br label %69

69:                                               ; preds = %68, %64, %61, %56
  %70 = load ptr, ptr %1, align 8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  store i32 8, ptr %73, align 4
  %74 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 3
  %75 = load i64, ptr %74, align 8
  store i64 %75, ptr %70, align 1
  br label %76

76:                                               ; preds = %72, %69
  %77 = getelementptr %struct.sk_buff, ptr %15, i32 0, i32 3, i32 24
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %80 = load i32, ptr %79, align 4
  %81 = or i32 %80, %78
  store i32 %81, ptr %79, align 4
  call void @skb_free_datagram(ptr noundef %7, ptr noundef nonnull %15) #14
  br label %82

82:                                               ; preds = %76, %44, %17, %10
  %83 = phi i32 [ %11, %10 ], [ %45, %44 ], [ %28, %76 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @raw_disable_allfilters(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %8, %2
  %9 = phi i32 [ %14, %8 ], [ 0, %2 ]
  %10 = getelementptr %struct.can_filter, ptr %4, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.can_filter, ptr %4, i32 %9, i32 1
  %13 = load i32, ptr %12, align 4
  tail call void @can_rx_unregister(ptr noundef nonnull @init_net, ptr noundef %0, i32 noundef %11, i32 noundef %13, ptr noundef nonnull @raw_rcv, ptr noundef %1) #14
  %14 = add nuw nsw i32 %9, 1
  %15 = icmp eq i32 %14, %6
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %2
  %17 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 11
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = or i32 %18, 536870912
  tail call void @can_rx_unregister(ptr noundef nonnull @init_net, ptr noundef %0, i32 noundef 0, i32 noundef %21, ptr noundef nonnull @raw_rcv, ptr noundef %1) #14
  br label %22

22:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @raw_disable_filters(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #2 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %6, %4
  %7 = phi i32 [ %12, %6 ], [ 0, %4 ]
  %8 = getelementptr %struct.can_filter, ptr %2, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.can_filter, ptr %2, i32 %7, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void @can_rx_unregister(ptr noundef nonnull @init_net, ptr noundef %0, i32 noundef %9, i32 noundef %11, ptr noundef nonnull @raw_rcv, ptr noundef %1) #14
  %12 = add nuw nsw i32 %7, 1
  %13 = icmp eq i32 %12, %3
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_rx_unregister(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @raw_rcv(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %115, label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 16
  br i1 %17, label %18, label %115

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %23) #8, !srcloc !14
  %25 = add i32 %24, %21
  %26 = inttoptr i32 %25 to ptr
  %27 = getelementptr inbounds %struct.uniqframe, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %30, label %65

30:                                               ; preds = %18
  %31 = load i32, ptr %26, align 4
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.can_skb_priv, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %31, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %115, label %41

41:                                               ; preds = %37
  %42 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !13
  %43 = load ptr, ptr %19, align 4
  %44 = getelementptr inbounds %struct.uniqframe, ptr %43, i32 0, i32 2
  %45 = ptrtoint ptr %44 to i32
  %46 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %47 = inttoptr i32 %46 to ptr
  %48 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %47) #8, !srcloc !14
  %49 = add i32 %48, %45
  %50 = inttoptr i32 %49 to ptr
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %42) #14, !srcloc !15
  %53 = load ptr, ptr %19, align 4
  %54 = ptrtoint ptr %53 to i32
  %55 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %56 = inttoptr i32 %55 to ptr
  %57 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %56) #8, !srcloc !14
  %58 = add i32 %57, %54
  %59 = inttoptr i32 %58 to ptr
  %60 = getelementptr inbounds %struct.uniqframe, ptr %59, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 8
  %63 = load i32, ptr %62, align 8
  %64 = icmp ult i32 %61, %63
  br i1 %64, label %115, label %92

65:                                               ; preds = %30, %18
  store ptr %0, ptr %27, align 4
  %66 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.can_skb_priv, ptr %67, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = load ptr, ptr %19, align 4
  %71 = ptrtoint ptr %70 to i32
  %72 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %73 = inttoptr i32 %72 to ptr
  %74 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %73) #8, !srcloc !14
  %75 = add i32 %74, %71
  %76 = inttoptr i32 %75 to ptr
  store i32 %69, ptr %76, align 4
  %77 = load ptr, ptr %19, align 4
  %78 = ptrtoint ptr %77 to i32
  %79 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %80 = inttoptr i32 %79 to ptr
  %81 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %80) #8, !srcloc !14
  %82 = add i32 %81, %78
  %83 = inttoptr i32 %82 to ptr
  %84 = getelementptr inbounds %struct.uniqframe, ptr %83, i32 0, i32 2
  store i32 1, ptr %84, align 4
  %85 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 7
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %65
  %89 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 8
  %90 = load i32, ptr %89, align 8
  %91 = icmp sgt i32 %90, 1
  br i1 %91, label %115, label %92

92:                                               ; preds = %88, %65, %41
  %93 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #14
  %94 = icmp eq ptr %93, null
  br i1 %94, label %115, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.sk_buff, ptr %93, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %96, i8 0, i32 24, i1 false)
  store i16 29, ptr %96, align 8
  %97 = getelementptr inbounds %struct.anon.49, ptr %93, i32 0, i32 2
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr inbounds %struct.net_device, ptr %98, i32 0, i32 17
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr inbounds %struct.sk_buff, ptr %93, i32 0, i32 3, i32 4
  store i32 %100, ptr %101, align 4
  %102 = getelementptr %struct.sk_buff, ptr %93, i32 0, i32 3, i32 24
  store i32 0, ptr %102, align 4
  %103 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  %106 = select i1 %105, i32 0, i32 4
  store i32 %106, ptr %102, align 4
  %107 = load ptr, ptr %103, align 4
  %108 = icmp eq ptr %107, %1
  br i1 %108, label %109, label %111

109:                                              ; preds = %95
  %110 = or i32 %106, 2048
  store i32 %110, ptr %102, align 4
  br label %111

111:                                              ; preds = %109, %95
  %112 = tail call i32 @sock_queue_rcv_skb(ptr noundef %1, ptr noundef nonnull %93) #14
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  tail call void @kfree_skb_reason(ptr noundef nonnull %93, i32 noundef 0) #14
  br label %115

115:                                              ; preds = %114, %111, %92, %88, %41, %37, %14, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @raw_enable_allfilters(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %26, %2
  %9 = phi i32 [ %27, %26 ], [ 0, %2 ]
  %10 = getelementptr %struct.can_filter, ptr %4, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.can_filter, ptr %4, i32 %9, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @can_rx_register(ptr noundef nonnull @init_net, ptr noundef %0, i32 noundef %11, i32 noundef %13, ptr noundef nonnull @raw_rcv, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef %1) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %8
  %17 = icmp eq i32 %9, 0
  br i1 %17, label %49, label %18

18:                                               ; preds = %18, %16
  %19 = phi i32 [ %20, %18 ], [ %9, %16 ]
  %20 = add nsw i32 %19, -1
  %21 = getelementptr %struct.can_filter, ptr %4, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.can_filter, ptr %4, i32 %20, i32 1
  %24 = load i32, ptr %23, align 4
  tail call void @can_rx_unregister(ptr noundef nonnull @init_net, ptr noundef %0, i32 noundef %22, i32 noundef %24, ptr noundef nonnull @raw_rcv, ptr noundef %1) #14
  %25 = icmp sgt i32 %19, 1
  br i1 %25, label %18, label %49

26:                                               ; preds = %8
  %27 = add nuw nsw i32 %9, 1
  %28 = icmp eq i32 %27, %6
  br i1 %28, label %29, label %8

29:                                               ; preds = %26, %2
  %30 = getelementptr inbounds %struct.raw_sock, ptr %1, i32 0, i32 11
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = or i32 %31, 536870912
  %35 = tail call i32 @can_rx_register(ptr noundef nonnull @init_net, ptr noundef %0, i32 noundef 0, i32 noundef %34, ptr noundef nonnull @raw_rcv, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef %1) #14
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %3, align 4
  %39 = load i32, ptr %5, align 8
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %41, %37
  %42 = phi i32 [ %47, %41 ], [ 0, %37 ]
  %43 = getelementptr %struct.can_filter, ptr %38, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr %struct.can_filter, ptr %38, i32 %42, i32 1
  %46 = load i32, ptr %45, align 4
  tail call void @can_rx_unregister(ptr noundef nonnull @init_net, ptr noundef %0, i32 noundef %44, i32 noundef %46, ptr noundef nonnull @raw_rcv, ptr noundef %1) #14
  %47 = add nuw nsw i32 %42, 1
  %48 = icmp eq i32 %47, %39
  br i1 %48, label %49, label %41

49:                                               ; preds = %41, %37, %33, %29, %18, %16
  %50 = phi i32 [ 0, %33 ], [ %35, %37 ], [ %14, %16 ], [ 0, %29 ], [ %35, %41 ], [ %14, %18 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @raw_enable_filters(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #2 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %24, %4
  %7 = phi i32 [ %25, %24 ], [ 0, %4 ]
  %8 = getelementptr %struct.can_filter, ptr %2, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.can_filter, ptr %2, i32 %7, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @can_rx_register(ptr noundef nonnull @init_net, ptr noundef %0, i32 noundef %9, i32 noundef %11, ptr noundef nonnull @raw_rcv, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef %1) #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %6
  %15 = icmp eq i32 %7, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ %18, %16 ], [ %7, %14 ]
  %18 = add nsw i32 %17, -1
  %19 = getelementptr %struct.can_filter, ptr %2, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr %struct.can_filter, ptr %2, i32 %18, i32 1
  %22 = load i32, ptr %21, align 4
  tail call void @can_rx_unregister(ptr noundef nonnull @init_net, ptr noundef %0, i32 noundef %20, i32 noundef %22, ptr noundef nonnull @raw_rcv, ptr noundef %1) #14
  %23 = icmp sgt i32 %17, 1
  br i1 %23, label %16, label %27

24:                                               ; preds = %6
  %25 = add nuw nsw i32 %7, 1
  %26 = icmp eq i32 %25, %3
  br i1 %26, label %27, label %6

27:                                               ; preds = %24, %16, %14, %4
  %28 = phi i32 [ %12, %14 ], [ 0, %4 ], [ %12, %16 ], [ 0, %24 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_register(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @memdup_sockptr([2 x i32] %0, i32 noundef %1) unnamed_addr #6 {
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call ptr @__kmalloc_track_caller(i32 noundef %1, i32 noundef 1060032, i32 noundef %4) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %2
  %8 = extractvalue [2 x i32] %0, 0
  %9 = inttoptr i32 %8 to ptr
  %10 = extractvalue [2 x i32] %0, 1
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %7
  %14 = icmp slt i32 %1, 0
  %15 = load i1, ptr @check_copy_size.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %19, !prof !28

18:                                               ; preds = %13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %19

19:                                               ; preds = %18, %13
  br i1 %14, label %38, label %20, !prof !28

20:                                               ; preds = %19
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 %1, i32 -1090519040) #16, !srcloc !22
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31, !prof !19

24:                                               ; preds = %20
  %25 = tail call ptr @llvm.thread.pointer() #14
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %26) #8, !srcloc !23
  %28 = and i32 %27, -13
  %29 = or i32 %28, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #14, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  %30 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %9, i32 noundef %1) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #14, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  br label %31

31:                                               ; preds = %24, %20
  %32 = phi i32 [ %30, %24 ], [ %1, %20 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34, !prof !19

34:                                               ; preds = %31
  %35 = sub i32 %1, %32
  %36 = getelementptr i8, ptr %5, i32 %35
  tail call void @llvm.memset.p0.i32(ptr align 1 %36, i8 0, i32 %32, i1 false) #14
  br label %38

37:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %5, ptr align 1 %9, i32 %1, i1 false) #14
  br label %39

38:                                               ; preds = %34, %19
  tail call void @kfree(ptr noundef nonnull %5) #14
  br label %39

39:                                               ; preds = %38, %37, %31, %2
  %40 = phi ptr [ inttoptr (i32 -14 to ptr), %38 ], [ inttoptr (i32 -12 to ptr), %2 ], [ %5, %31 ], [ %5, %37 ]
  ret ptr %40
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @copy_from_sockptr(ptr noundef %0, [2 x i32] %1, i32 noundef %2) unnamed_addr #6 {
  %4 = extractvalue [2 x i32] %1, 0
  %5 = inttoptr i32 %4 to ptr
  %6 = extractvalue [2 x i32] %1, 1
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %3
  %10 = icmp slt i32 %2, 0
  %11 = load i1, ptr @check_copy_size.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !28

14:                                               ; preds = %9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %15

15:                                               ; preds = %14, %9
  br i1 %10, label %34, label %16, !prof !28

16:                                               ; preds = %15
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 %2, i32 -1090519040) #16, !srcloc !22
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27, !prof !19

20:                                               ; preds = %16
  %21 = tail call ptr @llvm.thread.pointer() #14
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #8, !srcloc !23
  %24 = and i32 %23, -13
  %25 = or i32 %24, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #14, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  %26 = tail call i32 @arm_copy_from_user(ptr noundef %0, ptr noundef %5, i32 noundef %2) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #14, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !25
  br label %27

27:                                               ; preds = %20, %16
  %28 = phi i32 [ %26, %20 ], [ %2, %16 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !19

30:                                               ; preds = %27
  %31 = sub i32 %2, %28
  %32 = getelementptr i8, ptr %0, i32 %31
  tail call void @llvm.memset.p0.i32(ptr align 1 %32, i8 0, i32 %28, i1 false) #14
  br label %34

33:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %0, ptr align 1 %5, i32 %2, i1 false) #14
  br label %34

34:                                               ; preds = %33, %30, %27, %15
  %35 = phi i32 [ 0, %33 ], [ %2, %15 ], [ 0, %27 ], [ %28, %30 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmalloc_track_caller(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_send(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_tx_timestamp(i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_recv_errqueue(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_ts_and_drops(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sock_write_timestamp(ptr noundef %0, i64 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 64
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 64, i32 1
  tail call void @_raw_spin_lock(ptr noundef %4) #14
  %5 = load i32, ptr %3, align 4
  %6 = add i32 %5, 1
  store i32 %6, ptr %3, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !35
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 63
  store i64 %1, ptr %7, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !36
  %8 = load i32, ptr %3, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %10 = load i16, ptr %4, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raw_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.raw_sock, ptr %0, i32 0, i32 1
  store i32 0, ptr %2, align 8
  %3 = getelementptr inbounds %struct.raw_sock, ptr %0, i32 0, i32 2
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.raw_sock, ptr %0, i32 0, i32 9
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.raw_sock, ptr %0, i32 0, i32 9, i32 1
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.raw_sock, ptr %0, i32 0, i32 10
  store ptr %4, ptr %6, align 4
  %7 = getelementptr inbounds %struct.raw_sock, ptr %0, i32 0, i32 8
  store i32 1, ptr %7, align 8
  %8 = getelementptr inbounds %struct.raw_sock, ptr %0, i32 0, i32 4
  store i32 1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.raw_sock, ptr %0, i32 0, i32 5
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.raw_sock, ptr %0, i32 0, i32 6
  store i32 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.raw_sock, ptr %0, i32 0, i32 7
  store i32 0, ptr %11, align 4
  %12 = tail call noalias ptr @__alloc_percpu(i32 noundef 12, i32 noundef 4) #17
  %13 = getelementptr inbounds %struct.raw_sock, ptr %0, i32 0, i32 12
  store ptr %12, ptr %13, align 4
  %14 = icmp eq ptr %12, null
  br i1 %14, label %21, label %15, !prof !28

15:                                               ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @raw_notifier_lock) #14
  %16 = getelementptr inbounds %struct.raw_sock, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @raw_notifier_list, i32 0, i32 1), align 4
  store ptr %16, ptr getelementptr inbounds (%struct.list_head, ptr @raw_notifier_list, i32 0, i32 1), align 4
  store ptr @raw_notifier_list, ptr %16, align 4
  %18 = getelementptr inbounds %struct.raw_sock, ptr %0, i32 0, i32 3, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %16, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %19 = load i16, ptr @raw_notifier_lock, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr @raw_notifier_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  br label %21

21:                                               ; preds = %15, %1
  %22 = phi i32 [ 0, %15 ], [ -12, %1 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raw_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 32
  %6 = load i16, ptr %5, align 16
  %7 = icmp eq i16 %6, 280
  %8 = and i32 %1, -5
  %9 = icmp eq i32 %8, 2
  %10 = and i1 %9, %7
  %11 = load ptr, ptr @raw_busy_notifier, align 4
  %12 = icmp eq ptr %11, null
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %82, !prof !37

14:                                               ; preds = %3
  tail call void @_raw_spin_lock(ptr noundef nonnull @raw_notifier_lock) #14
  %15 = load ptr, ptr @raw_notifier_list, align 4
  %16 = getelementptr i8, ptr %15, i32 -528
  store ptr %16, ptr @raw_busy_notifier, align 4
  %17 = icmp eq ptr %15, @raw_notifier_list
  br i1 %17, label %79, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 17
  br label %20

20:                                               ; preds = %73, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %21 = load i16, ptr @raw_notifier_lock, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr @raw_notifier_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  %23 = load ptr, ptr @raw_busy_notifier, align 4
  %24 = getelementptr inbounds %struct.raw_sock, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %19, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %73

28:                                               ; preds = %20
  switch i32 %1, label %73 [
    i32 6, label %29
    i32 2, label %66
  ]

29:                                               ; preds = %28
  tail call void @lock_sock_nested(ptr noundef %23, i32 noundef 0) #14
  %30 = getelementptr inbounds %struct.raw_sock, ptr %23, i32 0, i32 1
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.raw_sock, ptr %23, i32 0, i32 10
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.raw_sock, ptr %23, i32 0, i32 8
  %37 = load i32, ptr %36, align 8
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %39, %33
  %40 = phi i32 [ %45, %39 ], [ 0, %33 ]
  %41 = getelementptr %struct.can_filter, ptr %35, i32 %40
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr %struct.can_filter, ptr %35, i32 %40, i32 1
  %44 = load i32, ptr %43, align 4
  tail call void @can_rx_unregister(ptr noundef nonnull @init_net, ptr noundef %4, i32 noundef %42, i32 noundef %44, ptr noundef nonnull @raw_rcv, ptr noundef %23) #14
  %45 = add nuw nsw i32 %40, 1
  %46 = icmp eq i32 %45, %37
  br i1 %46, label %47, label %39

47:                                               ; preds = %39, %33
  %48 = getelementptr inbounds %struct.raw_sock, ptr %23, i32 0, i32 11
  %49 = load i32, ptr %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = or i32 %49, 536870912
  tail call void @can_rx_unregister(ptr noundef nonnull @init_net, ptr noundef %4, i32 noundef 0, i32 noundef %52, ptr noundef nonnull @raw_rcv, ptr noundef %23) #14
  br label %53

53:                                               ; preds = %51, %47, %29
  %54 = getelementptr inbounds %struct.raw_sock, ptr %23, i32 0, i32 8
  %55 = load i32, ptr %54, align 8
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.raw_sock, ptr %23, i32 0, i32 10
  %59 = load ptr, ptr %58, align 4
  tail call void @kfree(ptr noundef %59) #14
  br label %60

60:                                               ; preds = %57, %53
  store i32 0, ptr %24, align 4
  store i32 0, ptr %30, align 8
  store i32 0, ptr %54, align 8
  tail call void @release_sock(ptr noundef %23) #14
  %61 = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 51
  store i32 19, ptr %61, align 4
  %62 = getelementptr inbounds %struct.sock_common, ptr %23, i32 0, i32 13
  %63 = load volatile i32, ptr %62, align 4
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %72, label %73

66:                                               ; preds = %28
  %67 = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 51
  store i32 100, ptr %67, align 4
  %68 = getelementptr inbounds %struct.sock_common, ptr %23, i32 0, i32 13
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66, %60
  tail call void @sk_error_report(ptr noundef %23) #14
  br label %73

73:                                               ; preds = %72, %66, %60, %28, %20
  tail call void @_raw_spin_lock(ptr noundef nonnull @raw_notifier_lock) #14
  %74 = load ptr, ptr @raw_busy_notifier, align 4
  %75 = getelementptr inbounds %struct.raw_sock, ptr %74, i32 0, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i8, ptr %76, i32 -528
  store ptr %77, ptr @raw_busy_notifier, align 4
  %78 = icmp eq ptr %76, @raw_notifier_list
  br i1 %78, label %79, label %20

79:                                               ; preds = %73, %14
  store ptr null, ptr @raw_busy_notifier, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  %80 = load i16, ptr @raw_notifier_lock, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr @raw_notifier_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  br label %82

82:                                               ; preds = %79, %3
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_proto_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(0) }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{i64 2148946711}
!10 = !{i64 2148942535}
!11 = !{i64 2148942610, i64 2148942637, i64 2148942684, i64 2148942706, i64 2148942734, i64 2148942754}
!12 = !{i64 2148969714}
!13 = !{i64 467864, i64 467925}
!14 = !{i64 486564}
!15 = !{i64 470881}
!16 = !{i64 2148165252}
!17 = !{i64 562186, i64 2148052157, i64 2148052183, i64 2148052230, i64 2148052252, i64 2148052280, i64 2148052300}
!18 = !{i64 2148067387, i64 2148067419, i64 2148067448, i64 2148067482, i64 2148067513, i64 2148067536}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2149014699}
!21 = !{!"auto-init"}
!22 = !{i64 2151310036, i64 2151310061}
!23 = !{i64 3806148}
!24 = !{i64 3806345}
!25 = !{i64 2151291624}
!26 = !{i64 2155410217, i64 2155410497, i64 2155410831, i64 2155411165}
!27 = !{i64 2155419134, i64 2155419414, i64 2155419748, i64 2155420082}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{i64 2151310614, i64 2151310639}
!30 = !{i64 2155427270, i64 2155427550, i64 2155427884, i64 2155428218}
!31 = !{i64 2155435403, i64 2155435683, i64 2155436017, i64 2155436351}
!32 = !{i64 2148161418}
!33 = !{i64 2148064256, i64 2148064288, i64 2148064317, i64 2148064351, i64 2148064382, i64 2148064405}
!34 = !{i64 2148161621}
!35 = !{i64 2149402586}
!36 = !{i64 2149402887}
!37 = !{!"branch_weights", i32 2000, i32 2002}
