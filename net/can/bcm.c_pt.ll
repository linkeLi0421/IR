; ModuleID = '/llk/IR/net/can/bcm.c_pt.bc'
source_filename = "../net/can/bcm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.can_proto = type { i32, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.68, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.68 = type { ptr }
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
%struct.bcm_sock = type { %struct.sock, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, [32 x i8] }
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
%struct.bcm_op = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.bcm_timeval, %struct.bcm_timeval, %struct.hrtimer, %struct.hrtimer, i64, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, [4 x i8], %struct.canfd_frame, %struct.canfd_frame, ptr, ptr }
%struct.bcm_timeval = type { i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.sockaddr_can = type { i16, i32, %union.anon.136 }
%union.anon.136 = type { %struct.anon.138 }
%struct.anon.138 = type { i64, i32, i8 }
%struct.bcm_msg_head = type { i32, i32, i32, %struct.bcm_timeval, %struct.bcm_timeval, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.can_frame = type { i32, %union.anon.135, i8, i8, i8, [8 x i8] }
%union.anon.135 = type { i8 }
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
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.116, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.117, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.118, ptr, %struct.address_space, %struct.list_head, %union.anon.119, i32, i32, ptr, ptr }
%union.anon.116 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.117 = type { %struct.callback_head }
%union.anon.118 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.119 = type { ptr }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.timerqueue_head = type { %struct.rb_root_cached }

@__UNIQUE_ID_description418 = internal constant [54 x i8] c"can_bcm.description=PF_CAN broadcast manager protocol\00", section ".modinfo", align 1
@__UNIQUE_ID_file419 = internal constant [29 x i8] c"can_bcm.file=net/can/can-bcm\00", section ".modinfo", align 1
@__UNIQUE_ID_license420 = internal constant [29 x i8] c"can_bcm.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author421 = internal constant [63 x i8] c"can_bcm.author=Oliver Hartkopp <oliver.hartkopp@volkswagen.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias422 = internal constant [26 x i8] c"can_bcm.alias=can-proto-2\00", section ".modinfo", align 1
@bcm_can_proto = internal constant %struct.can_proto { i32 2, i32 2, ptr @bcm_ops, ptr @bcm_proto }, align 4
@canbcm_notifier = internal global %struct.notifier_block { ptr @bcm_notifier, ptr null, i32 0 }, align 4
@canbcm_pernet_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @canbcm_pernet_init, ptr null, ptr @canbcm_pernet_exit, ptr null, ptr null, i32 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_can_bcm__426_1758_bcm_module_init6 = internal global ptr @bcm_module_init, section ".initcall6.init", align 4
@__exitcall_bcm_module_exit = internal global ptr @bcm_module_exit, section ".exitcall.exit", align 4
@bcm_ops = internal constant %struct.proto_ops { i32 29, ptr null, ptr @bcm_release, ptr @sock_no_bind, ptr @bcm_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr @datagram_poll, ptr @bcm_sock_no_ioctlcmd, ptr @sock_gettstamp, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @bcm_sendmsg, ptr @bcm_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@bcm_proto = internal global %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 592, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, ptr null, [32 x i8] c"CAN_BCM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, section ".data..read_mostly", align 4
@bcm_notifier_lock = internal global %struct.spinlock zeroinitializer, align 4
@bcm_busy_notifier = internal unnamed_addr global ptr null, align 4
@init_net = external dso_local global %struct.net, align 64
@.str = private unnamed_addr constant [59 x i8] c"\013can-bcm: bcm_rx_unreg: registered device mismatch %p %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c">>> socket %pK\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c" / sk %pK\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" / bo %pK\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" / dropped %lu\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" / bound %s\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" <<<\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"rx_op: %03X %-5s \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"(%u)\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"[%u]\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"timeo=%lld \00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"thr=%lld \00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"# recv %ld (%ld) => reduction: \00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"%s%ld%%\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"near \00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"tx_op: %03X %s \00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"(%u) \00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"[%u] \00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"t1=%lld \00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"t2=%lld \00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"# sent %ld\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.28 = private unnamed_addr constant [4 x i8] c"bcm\00", align 1
@bcm_notifier_list = internal global %struct.list_head { ptr @bcm_notifier_list, ptr @bcm_notifier_list }, align 4
@.str.29 = private unnamed_addr constant [8 x i8] c"can-bcm\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"\016can: broadcast manager protocol\0A\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c"\013can: registration of bcm protocol failed\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias422, ptr @__UNIQUE_ID_author421, ptr @__UNIQUE_ID_description418, ptr @__UNIQUE_ID_file419, ptr @__UNIQUE_ID_license420, ptr @__exitcall_bcm_module_exit, ptr @__initcall__kmod_can_bcm__426_1758_bcm_module_init6, ptr @bcm_module_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bcm_module_exit() #0 section ".exit.text" {
  tail call void @can_proto_unregister(ptr noundef nonnull @bcm_can_proto) #15
  %1 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @canbcm_notifier) #15
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @canbcm_pernet_ops) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_proto_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm_module_init() #0 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #16
  %2 = tail call i32 @can_proto_register(ptr noundef nonnull @bcm_can_proto) #15
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #16
  br label %9

6:                                                ; preds = %0
  %7 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @canbcm_pernet_ops) #15
  %8 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @canbcm_notifier) #15
  br label %9

9:                                                ; preds = %6, %4
  %10 = phi i32 [ %2, %4 ], [ 0, %6 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_release(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %152, label %5

5:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @bcm_notifier_lock) #15
  %6 = load ptr, ptr @bcm_busy_notifier, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %8, label %14

8:                                                ; preds = %8, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  %9 = load i16, ptr @bcm_notifier_lock, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr @bcm_notifier_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %11 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #15
  tail call void @_raw_spin_lock(ptr noundef nonnull @bcm_notifier_lock) #15
  %12 = load ptr, ptr @bcm_busy_notifier, align 4
  %13 = icmp eq ptr %12, %3
  br i1 %13, label %8, label %14

14:                                               ; preds = %8, %5
  %15 = getelementptr inbounds %struct.bcm_sock, ptr %3, i32 0, i32 3
  %16 = getelementptr inbounds %struct.bcm_sock, ptr %3, i32 0, i32 3, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  %20 = load i16, ptr @bcm_notifier_lock, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr @bcm_notifier_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  tail call void @lock_sock_nested(ptr noundef nonnull %3, i32 noundef 0) #15
  %22 = getelementptr inbounds %struct.bcm_sock, ptr %3, i32 0, i32 5
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %49, label %25

25:                                               ; preds = %47, %14
  %26 = phi ptr [ %27, %47 ], [ %23, %14 ]
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.bcm_op, ptr %26, i32 0, i32 8
  %29 = tail call i32 @hrtimer_cancel(ptr noundef %28) #15
  %30 = getelementptr inbounds %struct.bcm_op, ptr %26, i32 0, i32 9
  %31 = tail call i32 @hrtimer_cancel(ptr noundef %30) #15
  %32 = getelementptr inbounds %struct.bcm_op, ptr %26, i32 0, i32 19
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  %35 = getelementptr inbounds %struct.bcm_op, ptr %26, i32 0, i32 22
  %36 = icmp eq ptr %33, %35
  %37 = select i1 %34, i1 true, i1 %36
  br i1 %37, label %39, label %38

38:                                               ; preds = %25
  tail call void @kfree(ptr noundef nonnull %33) #15
  br label %39

39:                                               ; preds = %38, %25
  %40 = getelementptr inbounds %struct.bcm_op, ptr %26, i32 0, i32 20
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  %43 = getelementptr inbounds %struct.bcm_op, ptr %26, i32 0, i32 23
  %44 = icmp eq ptr %41, %43
  %45 = select i1 %42, i1 true, i1 %44
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  tail call void @kfree(ptr noundef nonnull %41) #15
  br label %47

47:                                               ; preds = %46, %39
  tail call void @kfree(ptr noundef %26) #15
  %48 = icmp eq ptr %27, %22
  br i1 %48, label %49, label %25

49:                                               ; preds = %47, %14
  %50 = getelementptr inbounds %struct.bcm_sock, ptr %3, i32 0, i32 4
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, %50
  br i1 %52, label %95, label %53

53:                                               ; preds = %93, %49
  %54 = phi ptr [ %55, %93 ], [ %51, %49 ]
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.bcm_op, ptr %54, i32 0, i32 1
  %57 = load i32, ptr %56, align 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %88, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.bcm_op, ptr %54, i32 0, i32 25
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %93, label %63

63:                                               ; preds = %59
  %64 = tail call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %57) #15
  %65 = icmp eq ptr %64, null
  br i1 %65, label %93, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %60, align 4
  %68 = icmp eq ptr %67, %64
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.bcm_op, ptr %54, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = icmp sgt i32 %71, -1
  %73 = select i1 %72, i32 -1073739777, i32 -536870913
  tail call void @can_rx_unregister(ptr noundef nonnull @init_net, ptr noundef nonnull %64, i32 noundef %71, i32 noundef %73, ptr noundef nonnull @bcm_rx_handler, ptr noundef %54) #15
  store ptr null, ptr %60, align 4
  br label %76

74:                                               ; preds = %66
  %75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %67, ptr noundef nonnull %64) #16
  br label %76

76:                                               ; preds = %74, %69
  %77 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !13
  %78 = getelementptr inbounds %struct.net_device, ptr %64, i32 0, i32 99
  %79 = load ptr, ptr %78, align 8
  %80 = ptrtoint ptr %79 to i32
  %81 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %82 = inttoptr i32 %81 to ptr
  %83 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %82) #6, !srcloc !14
  %84 = add i32 %83, %80
  %85 = inttoptr i32 %84 to ptr
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, -1
  store i32 %87, ptr %85, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %77) #15, !srcloc !15
  br label %93

88:                                               ; preds = %53
  %89 = getelementptr inbounds %struct.bcm_op, ptr %54, i32 0, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = icmp sgt i32 %90, -1
  %92 = select i1 %91, i32 -1073739777, i32 -536870913
  tail call void @can_rx_unregister(ptr noundef nonnull @init_net, ptr noundef null, i32 noundef %90, i32 noundef %92, ptr noundef nonnull @bcm_rx_handler, ptr noundef %54) #15
  br label %93

93:                                               ; preds = %88, %76, %63, %59
  %94 = icmp eq ptr %55, %50
  br i1 %94, label %95, label %53

95:                                               ; preds = %93, %49
  tail call void @synchronize_rcu() #15
  %96 = load ptr, ptr %50, align 8
  %97 = icmp eq ptr %96, %50
  br i1 %97, label %122, label %98

98:                                               ; preds = %120, %95
  %99 = phi ptr [ %100, %120 ], [ %96, %95 ]
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds %struct.bcm_op, ptr %99, i32 0, i32 8
  %102 = tail call i32 @hrtimer_cancel(ptr noundef %101) #15
  %103 = getelementptr inbounds %struct.bcm_op, ptr %99, i32 0, i32 9
  %104 = tail call i32 @hrtimer_cancel(ptr noundef %103) #15
  %105 = getelementptr inbounds %struct.bcm_op, ptr %99, i32 0, i32 19
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  %108 = getelementptr inbounds %struct.bcm_op, ptr %99, i32 0, i32 22
  %109 = icmp eq ptr %106, %108
  %110 = select i1 %107, i1 true, i1 %109
  br i1 %110, label %112, label %111

111:                                              ; preds = %98
  tail call void @kfree(ptr noundef nonnull %106) #15
  br label %112

112:                                              ; preds = %111, %98
  %113 = getelementptr inbounds %struct.bcm_op, ptr %99, i32 0, i32 20
  %114 = load ptr, ptr %113, align 8
  %115 = icmp eq ptr %114, null
  %116 = getelementptr inbounds %struct.bcm_op, ptr %99, i32 0, i32 23
  %117 = icmp eq ptr %114, %116
  %118 = select i1 %115, i1 true, i1 %117
  br i1 %118, label %120, label %119

119:                                              ; preds = %112
  tail call void @kfree(ptr noundef nonnull %114) #15
  br label %120

120:                                              ; preds = %119, %112
  tail call void @kfree(ptr noundef %99) #15
  %121 = icmp eq ptr %100, %50
  br i1 %121, label %122, label %98

122:                                              ; preds = %120, %95
  %123 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 42, i32 9), align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %131, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.bcm_sock, ptr %3, i32 0, i32 7
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.bcm_sock, ptr %3, i32 0, i32 8
  tail call void @remove_proc_entry(ptr noundef %130, ptr noundef nonnull %123) #15
  br label %131

131:                                              ; preds = %129, %125, %122
  %132 = getelementptr inbounds %struct.bcm_sock, ptr %3, i32 0, i32 1
  %133 = load i32, ptr %132, align 8
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %131
  store i32 0, ptr %132, align 8
  %136 = getelementptr inbounds %struct.bcm_sock, ptr %3, i32 0, i32 2
  store i32 0, ptr %136, align 4
  br label %137

137:                                              ; preds = %135, %131
  %138 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %138) #15
  %139 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 13
  %140 = load i32, ptr %139, align 4
  %141 = or i32 %140, 1
  store i32 %141, ptr %139, align 4
  %142 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 71
  store ptr null, ptr %142, align 8
  %143 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 17
  store ptr null, ptr %143, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %138) #15
  store ptr null, ptr %2, align 16
  tail call void @release_sock(ptr noundef nonnull %3) #15
  %144 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %144) #15, !srcloc !17
  %145 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %144, ptr %144, i32 1, ptr elementtype(i32) %144) #15, !srcloc !18
  %146 = extractvalue { i32, i32, i32 } %145, 0
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %151, label %148

148:                                              ; preds = %137
  %149 = icmp sgt i32 %146, 0
  br i1 %149, label %152, label %150, !prof !19

150:                                              ; preds = %148
  tail call void @refcount_warn_saturate(ptr noundef %144, i32 noundef 3) #15
  br label %152

151:                                              ; preds = %137
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !20
  tail call void @sk_free(ptr noundef nonnull %3) #15
  br label %152

152:                                              ; preds = %151, %150, %148, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_bind(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_connect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = icmp ult i32 %2, 8
  br i1 %7, label %66, label %8

8:                                                ; preds = %4
  tail call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #15
  %9 = getelementptr inbounds %struct.bcm_sock, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %64

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sockaddr_can, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %50, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %14) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %64, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 32
  %21 = load i16, ptr %20, align 16
  %22 = icmp eq i16 %21, 280
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !13
  %25 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 99
  %26 = load ptr, ptr %25, align 8
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %29 = inttoptr i32 %28 to ptr
  %30 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %29) #6, !srcloc !14
  %31 = add i32 %30, %27
  %32 = inttoptr i32 %31 to ptr
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, -1
  store i32 %34, ptr %32, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %24) #15, !srcloc !15
  br label %64

35:                                               ; preds = %19
  %36 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 17
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.bcm_sock, ptr %6, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  %39 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !13
  %40 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 99
  %41 = load ptr, ptr %40, align 8
  %42 = ptrtoint ptr %41 to i32
  %43 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %44 = inttoptr i32 %43 to ptr
  %45 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %44) #6, !srcloc !14
  %46 = add i32 %45, %42
  %47 = inttoptr i32 %46 to ptr
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, -1
  store i32 %49, ptr %47, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %39) #15, !srcloc !15
  br label %52

50:                                               ; preds = %12
  %51 = getelementptr inbounds %struct.bcm_sock, ptr %6, i32 0, i32 2
  store i32 0, ptr %51, align 4
  br label %52

52:                                               ; preds = %50, %35
  %53 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 42, i32 9), align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.bcm_sock, ptr %6, i32 0, i32 8
  %57 = tail call i32 @sock_i_ino(ptr noundef %6) #15
  %58 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %56, ptr noundef nonnull @.str.1, i32 noundef %57)
  %59 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 42, i32 9), align 4
  %60 = tail call ptr @proc_create_net_single(ptr noundef %56, i16 noundef zeroext 420, ptr noundef %59, ptr noundef nonnull @bcm_proc_show, ptr noundef %6) #15
  %61 = getelementptr inbounds %struct.bcm_sock, ptr %6, i32 0, i32 7
  store ptr %60, ptr %61, align 4
  %62 = icmp eq ptr %60, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %55, %52
  store i32 1, ptr %9, align 8
  br label %64

64:                                               ; preds = %63, %55, %23, %16, %8
  %65 = phi i32 [ 0, %63 ], [ -106, %8 ], [ -12, %55 ], [ -19, %23 ], [ -19, %16 ]
  tail call void @release_sock(ptr noundef %6) #15
  br label %66

66:                                               ; preds = %64, %4
  %67 = phi i32 [ %65, %64 ], [ -22, %4 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_getname(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bcm_sock_no_ioctlcmd(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #3 {
  ret i32 -515
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sendmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.bcm_msg_head, align 8
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr inbounds %struct.bcm_sock, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !21
  %9 = getelementptr inbounds %struct.bcm_sock, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %96, label %12

12:                                               ; preds = %3
  %13 = icmp ult i32 %2, 40
  br i1 %13, label %96, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %16 = call i32 @_copy_from_iter(ptr noundef nonnull %4, i32 noundef 40, ptr noundef %15) #15
  %17 = icmp eq i32 %16, 40
  br i1 %17, label %19, label %18, !prof !19

18:                                               ; preds = %14
  call void @iov_iter_revert(ptr noundef %15, i32 noundef %16) #15
  br label %96

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.bcm_msg_head, ptr %4, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 2048
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 16, i32 72
  %25 = add i32 %2, -40
  %26 = urem i32 %25, %24
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %96

28:                                               ; preds = %19
  %29 = icmp eq i32 %8, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %28
  %31 = load ptr, ptr %1, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %62, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp ult i32 %35, 8
  br i1 %36, label %96, label %37

37:                                               ; preds = %33
  %38 = load i16, ptr %31, align 8
  %39 = icmp eq i16 %38, 29
  br i1 %39, label %40, label %96

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.sockaddr_can, ptr %31, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %40
  %45 = call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %42) #15
  %46 = icmp eq ptr %45, null
  br i1 %46, label %96, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 32
  %49 = load i16, ptr %48, align 16
  %50 = icmp eq i16 %49, 280
  %51 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15
  %52 = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 99
  %53 = load ptr, ptr %52, align 8
  %54 = ptrtoint ptr %53 to i32
  %55 = call i32 @llvm.read_register.i32(metadata !0) #15
  %56 = inttoptr i32 %55 to ptr
  %57 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %56) #6
  %58 = add i32 %57, %54
  %59 = inttoptr i32 %58 to ptr
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, -1
  store i32 %61, ptr %59, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %51) #15
  br i1 %50, label %62, label %96

62:                                               ; preds = %47, %40, %30, %28
  %63 = phi i32 [ %8, %28 ], [ 0, %30 ], [ 0, %40 ], [ %42, %47 ]
  call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #15
  %64 = load i32, ptr %4, align 8
  switch i32 %64, label %94 [
    i32 1, label %65
    i32 5, label %67
    i32 2, label %69
    i32 6, label %74
    i32 3, label %79
    i32 7, label %82
    i32 4, label %85
  ]

65:                                               ; preds = %62
  %66 = call fastcc i32 @bcm_tx_setup(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %63, ptr noundef %6)
  br label %94

67:                                               ; preds = %62
  %68 = call fastcc i32 @bcm_rx_setup(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %63, ptr noundef %6)
  br label %94

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.bcm_sock, ptr %6, i32 0, i32 5
  %71 = call fastcc i32 @bcm_delete_tx_op(ptr noundef %70, ptr noundef nonnull %4, i32 noundef %63)
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, i32 -22, i32 40
  br label %94

74:                                               ; preds = %62
  %75 = getelementptr inbounds %struct.bcm_sock, ptr %6, i32 0, i32 4
  %76 = call fastcc i32 @bcm_delete_rx_op(ptr noundef %75, ptr noundef nonnull %4, i32 noundef %63)
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, i32 -22, i32 40
  br label %94

79:                                               ; preds = %62
  store i32 8, ptr %4, align 8
  %80 = getelementptr inbounds %struct.bcm_sock, ptr %6, i32 0, i32 5
  %81 = call fastcc i32 @bcm_read_op(ptr noundef %80, ptr noundef nonnull %4, i32 noundef %63)
  br label %94

82:                                               ; preds = %62
  store i32 10, ptr %4, align 8
  %83 = getelementptr inbounds %struct.bcm_sock, ptr %6, i32 0, i32 4
  %84 = call fastcc i32 @bcm_read_op(ptr noundef %83, ptr noundef nonnull %4, i32 noundef %63)
  br label %94

85:                                               ; preds = %62
  %86 = getelementptr inbounds %struct.bcm_msg_head, ptr %4, i32 0, i32 6
  %87 = load i32, ptr %86, align 8
  %88 = icmp eq i32 %87, 1
  %89 = add nuw nsw i32 %24, 40
  %90 = icmp eq i32 %89, %2
  %91 = select i1 %88, i1 %90, i1 false
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = call fastcc i32 @bcm_tx_send(ptr noundef %1, i32 noundef %63, ptr noundef %6, i32 noundef %24)
  br label %94

94:                                               ; preds = %92, %85, %82, %79, %74, %69, %67, %65, %62
  %95 = phi i32 [ %93, %92 ], [ %84, %82 ], [ %81, %79 ], [ %68, %67 ], [ %66, %65 ], [ %73, %69 ], [ %78, %74 ], [ -22, %85 ], [ -22, %62 ]
  call void @release_sock(ptr noundef %6) #15
  br label %96

96:                                               ; preds = %94, %47, %44, %37, %33, %19, %18, %12, %3
  %97 = phi i32 [ %95, %94 ], [ -107, %3 ], [ -22, %12 ], [ -22, %19 ], [ -14, %18 ], [ -19, %44 ], [ -22, %37 ], [ -22, %33 ], [ -19, %47 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #15
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_recvmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4
  %8 = and i32 %3, 64
  %9 = and i32 %3, -65
  %10 = call ptr @skb_recv_datagram(ptr noundef %7, i32 noundef %9, i32 noundef %8, ptr noundef nonnull %5) #15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load i32, ptr %5, align 4
  br label %81

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = call i32 @llvm.umin.i32(i32 %16, i32 %2)
  %18 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %21 = icmp slt i32 %17, 0
  %22 = load i1, ptr @check_copy_size.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !22

25:                                               ; preds = %14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %26

26:                                               ; preds = %25, %14
  br i1 %21, label %29, label %27, !prof !22

27:                                               ; preds = %26
  %28 = call i32 @_copy_to_iter(ptr noundef %19, i32 noundef %17, ptr noundef %20) #15
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi i32 [ %28, %27 ], [ 0, %26 ]
  %31 = icmp eq i32 %30, %17
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  call void @skb_free_datagram(ptr noundef %7, ptr noundef nonnull %10) #15
  br label %81

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 13
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 133120
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 65
  %40 = load i16, ptr %39, align 8
  %41 = and i16 %40, 80
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38, %33
  call void @__sock_recv_ts_and_drops(ptr noundef %1, ptr noundef %7, ptr noundef nonnull %10) #15
  br label %73

44:                                               ; preds = %38
  %45 = load volatile i32, ptr %34, align 4
  %46 = and i32 %45, 128
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %48, !prof !19

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 2
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 64
  %52 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 64, i32 1
  call void @_raw_spin_lock(ptr noundef %52) #15
  %53 = load i32, ptr %51, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %51, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !23
  %55 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 63
  store i64 %50, ptr %55, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !24
  %56 = load i32, ptr %51, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %51, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  %58 = load i16, ptr %52, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %52, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %73

60:                                               ; preds = %44
  %61 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 63
  %62 = load i64, ptr %61, align 8
  %63 = icmp eq i64 %62, -1000000000
  br i1 %63, label %64, label %73, !prof !22

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 64
  %66 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 64, i32 1
  call void @_raw_spin_lock(ptr noundef %66) #15
  %67 = load i32, ptr %65, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %65, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !23
  store i64 0, ptr %61, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !24
  %69 = load i32, ptr %65, align 4
  %70 = add i32 %69, 1
  store i32 %70, ptr %65, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  %71 = load i16, ptr %66, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %66, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %73

73:                                               ; preds = %64, %60, %48, %43
  %74 = load ptr, ptr %1, align 8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  store i32 8, ptr %77, align 4
  %78 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3
  %79 = load i64, ptr %78, align 8
  store i64 %79, ptr %74, align 1
  br label %80

80:                                               ; preds = %76, %73
  call void @skb_free_datagram(ptr noundef %7, ptr noundef nonnull %10) #15
  br label %81

81:                                               ; preds = %80, %32, %12
  %82 = phi i32 [ -14, %32 ], [ %17, %80 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_rx_unregister(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_rx_handler(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bcm_op, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %4, align 8
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %113

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.bcm_op, ptr %1, i32 0, i32 15
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %113

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.bcm_op, ptr %1, i32 0, i32 8
  %17 = tail call i32 @hrtimer_cancel(ptr noundef %16) #15
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %struct.bcm_op, ptr %1, i32 0, i32 10
  store i64 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.anon.49, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 17
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.bcm_op, ptr %1, i32 0, i32 14
  store i32 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.bcm_op, ptr %1, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.bcm_op, ptr %1, i32 0, i32 3
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 1024
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %15
  tail call fastcc void @bcm_can_tx(ptr noundef %1)
  br label %113

34:                                               ; preds = %15
  %35 = and i32 %30, 32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.bcm_op, ptr %1, i32 0, i32 20
  %39 = load ptr, ptr %38, align 8
  tail call fastcc void @bcm_rx_update_and_send(ptr noundef %1, ptr noundef %39, ptr noundef %4)
  br label %104

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.bcm_op, ptr %1, i32 0, i32 17
  %42 = load i32, ptr %41, align 4
  switch i32 %42, label %43 [
    i32 1, label %51
    i32 0, label %104
  ]

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.bcm_op, ptr %1, i32 0, i32 19
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.canfd_frame, ptr %45, i32 0, i32 5
  %47 = load i64, ptr %46, align 8
  %48 = getelementptr inbounds %struct.canfd_frame, ptr %4, i32 0, i32 5
  %49 = load i64, ptr %48, align 8
  %50 = load i32, ptr %12, align 4
  br label %91

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.bcm_op, ptr %1, i32 0, i32 19
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.bcm_op, ptr %1, i32 0, i32 20
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.canfd_frame, ptr %55, i32 0, i32 2
  %57 = load i8, ptr %56, align 1
  %58 = and i8 %57, 64
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %90, label %60

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.canfd_frame, ptr %4, i32 0, i32 1
  %62 = load i8, ptr %61, align 4
  %63 = zext i8 %62 to i32
  %64 = icmp eq i8 %62, 0
  br i1 %64, label %83, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.canfd_frame, ptr %53, i32 0, i32 5
  %67 = getelementptr inbounds %struct.canfd_frame, ptr %4, i32 0, i32 5
  %68 = getelementptr inbounds %struct.canfd_frame, ptr %55, i32 0, i32 5
  br label %72

69:                                               ; preds = %72
  %70 = add nuw nsw i32 %73, 8
  %71 = icmp ult i32 %70, %63
  br i1 %71, label %72, label %83

72:                                               ; preds = %69, %65
  %73 = phi i32 [ 0, %65 ], [ %70, %69 ]
  %74 = getelementptr i8, ptr %66, i32 %73
  %75 = load i64, ptr %74, align 8
  %76 = getelementptr i8, ptr %67, i32 %73
  %77 = load i64, ptr %76, align 8
  %78 = getelementptr i8, ptr %68, i32 %73
  %79 = load i64, ptr %78, align 8
  %80 = xor i64 %79, %77
  %81 = and i64 %80, %75
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %69, label %90

83:                                               ; preds = %69, %60
  %84 = and i32 %30, 64
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %104, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.canfd_frame, ptr %55, i32 0, i32 1
  %88 = load i8, ptr %87, align 4
  %89 = icmp eq i8 %62, %88
  br i1 %89, label %104, label %90

90:                                               ; preds = %86, %72, %51
  tail call fastcc void @bcm_rx_update_and_send(ptr noundef %1, ptr noundef %55, ptr noundef %4) #15
  br label %104

91:                                               ; preds = %101, %43
  %92 = phi i32 [ 1, %43 ], [ %102, %101 ]
  %93 = mul i32 %50, %92
  %94 = getelementptr i8, ptr %45, i32 %93
  %95 = getelementptr inbounds %struct.canfd_frame, ptr %94, i32 0, i32 5
  %96 = load i64, ptr %95, align 8
  %97 = xor i64 %96, %49
  %98 = and i64 %97, %47
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  tail call fastcc void @bcm_rx_cmp_to_index(ptr noundef %1, i32 noundef %92, ptr noundef %4)
  br label %104

101:                                              ; preds = %91
  %102 = add nuw i32 %92, 1
  %103 = icmp eq i32 %102, %42
  br i1 %103, label %104, label %91

104:                                              ; preds = %101, %100, %90, %86, %83, %40, %37
  %105 = load i32, ptr %29, align 8
  %106 = and i32 %105, 128
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.bcm_op, ptr %1, i32 0, i32 11
  %110 = load i64, ptr %109, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  tail call void @hrtimer_start_range_ns(ptr noundef %16, i64 noundef %110, i64 noundef 0, i32 noundef 5) #15
  br label %113

113:                                              ; preds = %112, %108, %104, %33, %9, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_can_tx(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 15
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 18
  %7 = load i32, ptr %6, align 8
  %8 = mul i32 %7, %5
  %9 = getelementptr i8, ptr %3, i32 %8
  %10 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %96, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 24
  %15 = tail call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %11) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %96, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr %4, align 4
  %19 = add i32 %18, 16
  %20 = tail call ptr @llvm.thread.pointer() #15
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 65280
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 3264, i32 2592
  %26 = tail call ptr @__alloc_skb(i32 noundef %19, i32 noundef %25, i32 noundef 0, i32 noundef -1) #15
  %27 = icmp eq ptr %26, null
  br i1 %27, label %84, label %28

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 17
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 16
  store ptr %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 14
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr i8, ptr %33, i32 16
  store ptr %34, ptr %32, align 8
  %35 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 17
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 16
  %38 = load ptr, ptr %37, align 8
  store i32 %36, ptr %38, align 8
  %39 = load ptr, ptr %37, align 8
  %40 = getelementptr inbounds %struct.can_skb_priv, ptr %39, i32 0, i32 1
  store i32 0, ptr %40, align 4
  %41 = load i32, ptr %4, align 4
  %42 = tail call ptr @skb_put(ptr noundef nonnull %26, i32 noundef %41) #15
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %42, ptr align 1 %9, i32 %41, i1 false) #15
  %43 = getelementptr inbounds %struct.anon.49, ptr %26, i32 0, i32 2
  store ptr %15, ptr %43, align 8
  %44 = load ptr, ptr %14, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %73, label %46

46:                                               ; preds = %28
  %47 = getelementptr inbounds %struct.sock_common, ptr %44, i32 0, i32 19
  %48 = load volatile i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %60, %46
  %51 = phi i32 [ %58, %60 ], [ %48, %46 ]
  %52 = add i32 %51, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #15, !srcloc !17
  br label %53

53:                                               ; preds = %53, %50
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 %51, i32 %52, ptr elementtype(i32) %47) #15, !srcloc !25
  %55 = extractvalue { i32, i32 } %54, 0
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %53

57:                                               ; preds = %53
  %58 = extractvalue { i32, i32 } %54, 1
  %59 = icmp eq i32 %58, %51
  br i1 %59, label %62, label %60, !prof !19

60:                                               ; preds = %57
  %61 = icmp eq i32 %58, 0
  br i1 %61, label %62, label %50

62:                                               ; preds = %60, %57, %46
  %63 = phi i32 [ 0, %46 ], [ %51, %57 ], [ 0, %60 ]
  %64 = add i32 %63, 1
  %65 = or i32 %64, %63
  %66 = icmp sgt i32 %65, -1
  br i1 %66, label %68, label %67, !prof !19

67:                                               ; preds = %62
  tail call void @refcount_warn_saturate(ptr noundef %47, i32 noundef 0) #15
  br label %68

68:                                               ; preds = %67, %62
  %69 = icmp eq i32 %63, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 4, i32 0, i32 1
  store ptr @sock_efree, ptr %71, align 4
  %72 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 1
  store ptr %44, ptr %72, align 4
  br label %73

73:                                               ; preds = %70, %68, %28
  %74 = tail call i32 @can_send(ptr noundef nonnull %26, i32 noundef 1) #15
  %75 = load i32, ptr %6, align 8
  %76 = add i32 %75, 1
  store i32 %76, ptr %6, align 8
  %77 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 4
  %80 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 17
  %81 = load i32, ptr %80, align 4
  %82 = icmp ult i32 %76, %81
  br i1 %82, label %84, label %83

83:                                               ; preds = %73
  store i32 0, ptr %6, align 8
  br label %84

84:                                               ; preds = %83, %73, %17
  %85 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !13
  %86 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 99
  %87 = load ptr, ptr %86, align 8
  %88 = ptrtoint ptr %87 to i32
  %89 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %90 = inttoptr i32 %89 to ptr
  %91 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %90) #6, !srcloc !14
  %92 = add i32 %91, %88
  %93 = inttoptr i32 %92 to ptr
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, -1
  store i32 %95, ptr %93, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %85) #15, !srcloc !15
  br label %96

96:                                               ; preds = %84, %13, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_rx_update_and_send(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = alloca %struct.bcm_msg_head, align 8
  %5 = alloca %struct.bcm_msg_head, align 8
  %6 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 15
  %7 = load i32, ptr %6, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %1, ptr align 8 %2, i32 %7, i1 false)
  %8 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = or i8 %9, -64
  store i8 %10, ptr %8, align 1
  %11 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 12
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #15
  %15 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 8
  %18 = icmp ugt i32 %17, 42949672
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 4
  store i32 0, ptr %20, align 4
  store i32 0, ptr %15, align 8
  br label %21

21:                                               ; preds = %19, %14
  %22 = load i8, ptr %8, align 1
  %23 = and i8 %22, 127
  store i8 %23, ptr %8, align 1
  %24 = getelementptr inbounds i8, ptr %5, i32 32
  store i64 1, ptr %24, align 8
  store i32 12, ptr %5, align 8
  %25 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 3
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.bcm_msg_head, ptr %5, i32 0, i32 1
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 16
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.bcm_msg_head, ptr %5, i32 0, i32 2
  store i32 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.bcm_msg_head, ptr %5, i32 0, i32 3
  %32 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 6
  %33 = load i64, ptr %32, align 4
  store i64 %33, ptr %31, align 4
  %34 = getelementptr inbounds %struct.bcm_msg_head, ptr %5, i32 0, i32 4
  %35 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 7
  %36 = load i64, ptr %35, align 4
  store i64 %36, ptr %34, align 4
  %37 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.bcm_msg_head, ptr %5, i32 0, i32 5
  store i32 %38, ptr %39, align 4
  call fastcc void @bcm_send_to_user(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #15
  br label %102

40:                                               ; preds = %3
  %41 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 9
  %42 = tail call zeroext i1 @hrtimer_active(ptr noundef %41) #15
  br i1 %42, label %102, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 13
  %45 = load i64, ptr %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %75, label %47

47:                                               ; preds = %43
  %48 = tail call i64 @ktime_get() #15
  %49 = load i64, ptr %44, align 8
  %50 = sub i64 %48, %49
  %51 = tail call i64 @llvm.abs.i64(i64 %50, i1 false) #15
  %52 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %51, i32 0) #17, !srcloc !26
  %53 = extractvalue { i64, i32 } %52, 0
  %54 = extractvalue { i64, i32 } %52, 1
  %55 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %51, i64 %53, i32 %54) #17, !srcloc !27
  %56 = extractvalue { i64, i32 } %55, 0
  %57 = icmp slt i64 %50, 0
  %58 = lshr i64 %56, 9
  %59 = sub nsw i64 0, %58
  %60 = select i1 %57, i64 %59, i64 %58
  %61 = load i64, ptr %11, align 8
  %62 = tail call i64 @llvm.abs.i64(i64 %61, i1 false) #15
  %63 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %62, i32 0) #17, !srcloc !26
  %64 = extractvalue { i64, i32 } %63, 0
  %65 = extractvalue { i64, i32 } %63, 1
  %66 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %62, i64 %64, i32 %65) #17, !srcloc !27
  %67 = extractvalue { i64, i32 } %66, 0
  %68 = icmp slt i64 %61, 0
  %69 = lshr i64 %67, 9
  %70 = sub nsw i64 0, %69
  %71 = select i1 %68, i64 %70, i64 %69
  %72 = icmp slt i64 %60, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %47
  %74 = add i64 %61, %49
  tail call void @hrtimer_start_range_ns(ptr noundef %41, i64 noundef %74, i64 noundef 0, i32 noundef 4) #15
  br label %102

75:                                               ; preds = %47, %43
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #15
  %76 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 5
  %77 = load i32, ptr %76, align 8
  %78 = add i32 %77, 1
  store i32 %78, ptr %76, align 8
  %79 = icmp ugt i32 %78, 42949672
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 4
  store i32 0, ptr %81, align 4
  store i32 0, ptr %76, align 8
  br label %82

82:                                               ; preds = %80, %75
  %83 = load i8, ptr %8, align 1
  %84 = and i8 %83, 127
  store i8 %84, ptr %8, align 1
  %85 = getelementptr inbounds i8, ptr %4, i32 32
  store i64 1, ptr %85, align 8
  store i32 12, ptr %4, align 8
  %86 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 3
  %87 = load i32, ptr %86, align 8
  %88 = getelementptr inbounds %struct.bcm_msg_head, ptr %4, i32 0, i32 1
  store i32 %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 16
  %90 = load i32, ptr %89, align 8
  %91 = getelementptr inbounds %struct.bcm_msg_head, ptr %4, i32 0, i32 2
  store i32 %90, ptr %91, align 8
  %92 = getelementptr inbounds %struct.bcm_msg_head, ptr %4, i32 0, i32 3
  %93 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 6
  %94 = load i64, ptr %93, align 4
  store i64 %94, ptr %92, align 4
  %95 = getelementptr inbounds %struct.bcm_msg_head, ptr %4, i32 0, i32 4
  %96 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 7
  %97 = load i64, ptr %96, align 4
  store i64 %97, ptr %95, align 4
  %98 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr inbounds %struct.bcm_msg_head, ptr %4, i32 0, i32 5
  store i32 %99, ptr %100, align 4
  call fastcc void @bcm_send_to_user(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #15
  %101 = tail call i64 @ktime_get() #15
  store i64 %101, ptr %44, align 8
  br label %102

102:                                              ; preds = %82, %73, %40, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_rx_cmp_to_index(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 15
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, %1
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 20
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i8, ptr %11, i32 %8
  %13 = getelementptr inbounds %struct.canfd_frame, ptr %12, i32 0, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = and i8 %14, 64
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %49, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.canfd_frame, ptr %2, i32 0, i32 1
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = icmp eq i8 %19, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.canfd_frame, ptr %9, i32 0, i32 5
  %24 = getelementptr inbounds %struct.canfd_frame, ptr %2, i32 0, i32 5
  %25 = getelementptr inbounds %struct.canfd_frame, ptr %12, i32 0, i32 5
  br label %29

26:                                               ; preds = %29
  %27 = add nuw nsw i32 %30, 8
  %28 = icmp ult i32 %27, %20
  br i1 %28, label %29, label %40

29:                                               ; preds = %26, %22
  %30 = phi i32 [ 0, %22 ], [ %27, %26 ]
  %31 = getelementptr i8, ptr %23, i32 %30
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr i8, ptr %24, i32 %30
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr i8, ptr %25, i32 %30
  %36 = load i64, ptr %35, align 8
  %37 = xor i64 %36, %34
  %38 = and i64 %37, %32
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %26, label %49

40:                                               ; preds = %26, %17
  %41 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 3
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 64
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.canfd_frame, ptr %12, i32 0, i32 1
  %47 = load i8, ptr %46, align 4
  %48 = icmp eq i8 %19, %47
  br i1 %48, label %50, label %49

49:                                               ; preds = %45, %29, %3
  tail call fastcc void @bcm_rx_update_and_send(ptr noundef %0, ptr noundef %12, ptr noundef %2)
  br label %50

50:                                               ; preds = %49, %45, %40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_send(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_efree(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hrtimer_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_send_to_user(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 24
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.bcm_msg_head, ptr %1, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 15
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, %8
  %12 = add i32 %11, 40
  %13 = tail call ptr @llvm.thread.pointer() #15
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 65280
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 3264, i32 2592
  %19 = tail call ptr @__alloc_skb(i32 noundef %12, i32 noundef %18, i32 noundef 0, i32 noundef -1) #15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %52, label %21

21:                                               ; preds = %4
  %22 = tail call ptr @skb_put(ptr noundef nonnull %19, i32 noundef 40) #15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(40) %22, ptr noundef align 1 dereferenceable(40) %1, i32 40, i1 false) #15
  %23 = load i32, ptr %7, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 14
  %27 = load ptr, ptr %26, align 8
  %28 = tail call ptr @skb_put(ptr noundef nonnull %19, i32 noundef %11) #15
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %28, ptr align 1 %2, i32 %11, i1 false) #15
  %29 = load i32, ptr %7, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.canfd_frame, ptr %27, i32 0, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = and i8 %33, 63
  store i8 %34, ptr %32, align 1
  br label %35

35:                                               ; preds = %31, %25, %21
  %36 = icmp eq i32 %3, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 10
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 2
  store i64 %39, ptr %40, align 8
  br label %41

41:                                               ; preds = %37, %35
  %42 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %42, i8 0, i32 24, i1 false)
  store i16 29, ptr %42, align 8
  %43 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 14
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 4
  store i32 %44, ptr %45, align 4
  %46 = tail call i32 @sock_queue_rcv_skb(ptr noundef %6, ptr noundef nonnull %19) #15
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  tail call void @kfree_skb_reason(ptr noundef nonnull %19, i32 noundef 0) #15
  %49 = getelementptr inbounds %struct.bcm_sock, ptr %6, i32 0, i32 6
  %50 = load i32, ptr %49, align 8
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 8
  br label %52

52:                                               ; preds = %48, %41, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_single(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_proc_show(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca [16 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !21
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 47
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 71
  %13 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %13) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %11) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %11) #15
  %14 = getelementptr inbounds %struct.bcm_sock, ptr %11, i32 0, i32 6
  %15 = load i32, ptr %14, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %15) #15
  %16 = getelementptr inbounds %struct.bcm_sock, ptr %11, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  %20 = tail call ptr @dev_get_by_index_rcu(ptr noundef %5, i32 noundef %17) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = call ptr @strcpy(ptr noundef nonnull %3, ptr noundef nonnull %20) #15
  br label %25

24:                                               ; preds = %19
  store i32 4144959, ptr %3, align 4
  br label %25

25:                                               ; preds = %24, %22
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !29
  br label %26

26:                                               ; preds = %25, %2
  %27 = phi ptr [ %3, %25 ], [ @.str.24, %2 ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %27) #15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7) #15
  %28 = getelementptr inbounds %struct.bcm_sock, ptr %11, i32 0, i32 4
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %105, label %31

31:                                               ; preds = %102, %26
  %32 = phi ptr [ %103, %102 ], [ %29, %26 ]
  %33 = getelementptr inbounds %struct.bcm_op, ptr %32, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %102, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.bcm_op, ptr %32, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.bcm_op, ptr %32, i32 0, i32 1
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %36
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  %43 = call ptr @dev_get_by_index_rcu(ptr noundef %5, i32 noundef %40) #15
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = call ptr @strcpy(ptr noundef nonnull %3, ptr noundef nonnull %43) #15
  br label %48

47:                                               ; preds = %42
  store i32 4144959, ptr %3, align 4
  br label %48

48:                                               ; preds = %47, %45
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !29
  br label %49

49:                                               ; preds = %48, %36
  %50 = phi ptr [ %3, %48 ], [ @.str.24, %36 ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %38, ptr noundef nonnull %50) #15
  %51 = getelementptr inbounds %struct.bcm_op, ptr %32, i32 0, i32 3
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 2048
  %54 = icmp eq i32 %53, 0
  %55 = getelementptr inbounds %struct.bcm_op, ptr %32, i32 0, i32 17
  %56 = load i32, ptr %55, align 4
  %57 = select i1 %54, ptr @.str.10, ptr @.str.9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull %57, i32 noundef %56) #15
  %58 = load i32, ptr %51, align 8
  %59 = and i32 %58, 64
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i32 32, i32 100
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %61) #15
  %62 = getelementptr inbounds %struct.bcm_op, ptr %32, i32 0, i32 11
  %63 = load i64, ptr %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %49
  %66 = call i64 @llvm.abs.i64(i64 %63, i1 false) #15
  %67 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %66, i32 0) #17, !srcloc !26
  %68 = extractvalue { i64, i32 } %67, 0
  %69 = extractvalue { i64, i32 } %67, 1
  %70 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %66, i64 %68, i32 %69) #17, !srcloc !27
  %71 = extractvalue { i64, i32 } %70, 0
  %72 = icmp slt i64 %63, 0
  %73 = lshr i64 %71, 9
  %74 = sub nsw i64 0, %73
  %75 = select i1 %72, i64 %74, i64 %73
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i64 noundef %75) #15
  br label %76

76:                                               ; preds = %65, %49
  %77 = getelementptr inbounds %struct.bcm_op, ptr %32, i32 0, i32 12
  %78 = load i64, ptr %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %76
  %81 = call i64 @llvm.abs.i64(i64 %78, i1 false) #15
  %82 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %81, i32 0) #17, !srcloc !26
  %83 = extractvalue { i64, i32 } %82, 0
  %84 = extractvalue { i64, i32 } %82, 1
  %85 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %81, i64 %83, i32 %84) #17, !srcloc !27
  %86 = extractvalue { i64, i32 } %85, 0
  %87 = icmp slt i64 %78, 0
  %88 = lshr i64 %86, 9
  %89 = sub nsw i64 0, %88
  %90 = select i1 %87, i64 %89, i64 %88
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %90) #15
  br label %91

91:                                               ; preds = %80, %76
  %92 = getelementptr inbounds %struct.bcm_op, ptr %32, i32 0, i32 5
  %93 = load i32, ptr %92, align 8
  %94 = load i32, ptr %33, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %93, i32 noundef %94) #15
  %95 = load i32, ptr %92, align 8
  %96 = mul i32 %95, 100
  %97 = load i32, ptr %33, align 4
  %98 = udiv i32 %96, %97
  %99 = sub i32 100, %98
  %100 = icmp ugt i32 %97, %96
  %101 = select i1 %100, ptr @.str.16, ptr @.str.17
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull %101, i32 noundef %99) #15
  br label %102

102:                                              ; preds = %91, %31
  %103 = load ptr, ptr %32, align 8
  %104 = icmp eq ptr %103, %28
  br i1 %104, label %105, label %31

105:                                              ; preds = %102, %26
  %106 = getelementptr inbounds %struct.bcm_sock, ptr %11, i32 0, i32 5
  %107 = load ptr, ptr %106, align 8
  %108 = icmp eq ptr %107, %106
  br i1 %108, label %166, label %109

109:                                              ; preds = %161, %105
  %110 = phi ptr [ %164, %161 ], [ %107, %105 ]
  %111 = getelementptr inbounds %struct.bcm_op, ptr %110, i32 0, i32 2
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr inbounds %struct.bcm_op, ptr %110, i32 0, i32 1
  %114 = load i32, ptr %113, align 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %109
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  %117 = call ptr @dev_get_by_index_rcu(ptr noundef %5, i32 noundef %114) #15
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = call ptr @strcpy(ptr noundef nonnull %3, ptr noundef nonnull %117) #15
  br label %122

121:                                              ; preds = %116
  store i32 4144959, ptr %3, align 4
  br label %122

122:                                              ; preds = %121, %119
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !29
  br label %123

123:                                              ; preds = %122, %109
  %124 = phi ptr [ %3, %122 ], [ @.str.24, %109 ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %112, ptr noundef nonnull %124) #15
  %125 = getelementptr inbounds %struct.bcm_op, ptr %110, i32 0, i32 3
  %126 = load i32, ptr %125, align 8
  %127 = and i32 %126, 2048
  %128 = icmp eq i32 %127, 0
  %129 = getelementptr inbounds %struct.bcm_op, ptr %110, i32 0, i32 17
  %130 = load i32, ptr %129, align 4
  %131 = select i1 %128, ptr @.str.20, ptr @.str.19
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull %131, i32 noundef %130) #15
  %132 = getelementptr inbounds %struct.bcm_op, ptr %110, i32 0, i32 11
  %133 = load i64, ptr %132, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %146, label %135

135:                                              ; preds = %123
  %136 = call i64 @llvm.abs.i64(i64 %133, i1 false) #15
  %137 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %136, i32 0) #17, !srcloc !26
  %138 = extractvalue { i64, i32 } %137, 0
  %139 = extractvalue { i64, i32 } %137, 1
  %140 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %136, i64 %138, i32 %139) #17, !srcloc !27
  %141 = extractvalue { i64, i32 } %140, 0
  %142 = icmp slt i64 %133, 0
  %143 = lshr i64 %141, 9
  %144 = sub nsw i64 0, %143
  %145 = select i1 %142, i64 %144, i64 %143
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.21, i64 noundef %145) #15
  br label %146

146:                                              ; preds = %135, %123
  %147 = getelementptr inbounds %struct.bcm_op, ptr %110, i32 0, i32 12
  %148 = load i64, ptr %147, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %161, label %150

150:                                              ; preds = %146
  %151 = call i64 @llvm.abs.i64(i64 %148, i1 false) #15
  %152 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %151, i32 0) #17, !srcloc !26
  %153 = extractvalue { i64, i32 } %152, 0
  %154 = extractvalue { i64, i32 } %152, 1
  %155 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %151, i64 %153, i32 %154) #17, !srcloc !27
  %156 = extractvalue { i64, i32 } %155, 0
  %157 = icmp slt i64 %148, 0
  %158 = lshr i64 %156, 9
  %159 = sub nsw i64 0, %158
  %160 = select i1 %157, i64 %159, i64 %158
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22, i64 noundef %160) #15
  br label %161

161:                                              ; preds = %150, %146
  %162 = getelementptr inbounds %struct.bcm_op, ptr %110, i32 0, i32 4
  %163 = load i32, ptr %162, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %163) #15
  %164 = load ptr, ptr %110, align 8
  %165 = icmp eq ptr %164, %106
  br i1 %165, label %166, label %109

166:                                              ; preds = %161, %105
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm_tx_setup(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %324, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = add i32 %8, -257
  %10 = icmp ult i32 %9, -256
  br i1 %10, label %324, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %18, 34560000
  br i1 %19, label %324, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 3, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, 999999
  br i1 %23, label %324, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %26, 34560000
  br i1 %27, label %324, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 4, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp ugt i32 %30, 999999
  br i1 %31, label %324, label %32

32:                                               ; preds = %28, %11
  %33 = getelementptr inbounds %struct.bcm_sock, ptr %3, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %117, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  br label %39

39:                                               ; preds = %54, %36
  %40 = phi ptr [ %34, %36 ], [ %55, %54 ]
  %41 = getelementptr inbounds %struct.bcm_op, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, %38
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.bcm_op, ptr %40, i32 0, i32 1
  %46 = load i32, ptr %45, align 8
  %47 = icmp eq i32 %46, %2
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.bcm_op, ptr %40, i32 0, i32 3
  %50 = load i32, ptr %49, align 8
  %51 = xor i32 %50, %13
  %52 = and i32 %51, 2048
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48, %44, %39
  %55 = load ptr, ptr %40, align 4
  %56 = icmp eq ptr %55, %33
  br i1 %56, label %117, label %39

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.bcm_op, ptr %40, i32 0, i32 3
  %59 = icmp eq ptr %40, null
  br i1 %59, label %117, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.bcm_op, ptr %40, i32 0, i32 17
  %62 = load i32, ptr %61, align 4
  %63 = icmp ugt i32 %8, %62
  br i1 %63, label %324, label %64

64:                                               ; preds = %60
  %65 = icmp eq i32 %8, 0
  br i1 %65, label %115, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.bcm_op, ptr %40, i32 0, i32 19
  %68 = getelementptr inbounds %struct.bcm_op, ptr %40, i32 0, i32 15
  %69 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  br label %70

70:                                               ; preds = %109, %66
  %71 = phi i32 [ 0, %66 ], [ %110, %109 ]
  %72 = load ptr, ptr %67, align 4
  %73 = load i32, ptr %68, align 4
  %74 = mul i32 %73, %71
  %75 = getelementptr i8, ptr %72, i32 %74
  %76 = icmp slt i32 %73, 0
  %77 = load i1, ptr @check_copy_size.__already_done, align 1
  %78 = xor i1 %77, true
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %81, !prof !22

80:                                               ; preds = %70
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %81

81:                                               ; preds = %80, %70
  br i1 %76, label %84, label %82, !prof !22

82:                                               ; preds = %81
  %83 = tail call i32 @_copy_from_iter(ptr noundef %75, i32 noundef %73, ptr noundef %69) #15
  br label %84

84:                                               ; preds = %82, %81
  %85 = phi i32 [ %83, %82 ], [ 0, %81 ]
  %86 = icmp eq i32 %85, %73
  br i1 %86, label %88, label %87, !prof !19

87:                                               ; preds = %84
  tail call void @iov_iter_revert(ptr noundef %69, i32 noundef %85) #15
  br label %88

88:                                               ; preds = %87, %84
  %89 = phi i32 [ 0, %84 ], [ -14, %87 ]
  %90 = load i32, ptr %58, align 8
  %91 = and i32 %90, 2048
  %92 = icmp eq i32 %91, 0
  %93 = getelementptr inbounds %struct.canfd_frame, ptr %75, i32 0, i32 1
  %94 = load i8, ptr %93, align 4
  br i1 %92, label %99, label %95

95:                                               ; preds = %88
  %96 = icmp ugt i8 %94, 64
  %97 = xor i1 %86, true
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %322, label %103

99:                                               ; preds = %88
  %100 = icmp ugt i8 %94, 8
  %101 = xor i1 %86, true
  %102 = select i1 %100, i1 true, i1 %101
  br i1 %102, label %320, label %103

103:                                              ; preds = %99, %95
  %104 = load i32, ptr %12, align 4
  %105 = and i32 %104, 16
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = load i32, ptr %37, align 4
  store i32 %108, ptr %75, align 8
  br label %109

109:                                              ; preds = %107, %103
  %110 = add nuw i32 %71, 1
  %111 = load i32, ptr %7, align 8
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %70, label %113

113:                                              ; preds = %109
  %114 = load i32, ptr %12, align 4
  br label %115

115:                                              ; preds = %113, %64
  %116 = phi i32 [ %114, %113 ], [ %13, %64 ]
  store i32 %116, ptr %58, align 8
  br label %219

117:                                              ; preds = %57, %54, %32
  %118 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %119 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %118, i32 noundef 3520, i32 noundef 360) #18
  %120 = icmp eq ptr %119, null
  br i1 %120, label %324, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 5
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr inbounds %struct.bcm_op, ptr %119, i32 0, i32 2
  store i32 %123, ptr %124, align 4
  %125 = load i32, ptr %12, align 4
  %126 = and i32 %125, 2048
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %127, i32 16, i32 72
  %129 = getelementptr inbounds %struct.bcm_op, ptr %119, i32 0, i32 15
  store i32 %128, ptr %129, align 4
  %130 = getelementptr inbounds %struct.bcm_op, ptr %119, i32 0, i32 3
  store i32 %125, ptr %130, align 8
  %131 = load i32, ptr %7, align 8
  %132 = icmp ugt i32 %131, 1
  br i1 %132, label %133, label %146

133:                                              ; preds = %121
  %134 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %131, i32 %128) #15
  %135 = extractvalue { i32, i1 } %134, 1
  br i1 %135, label %136, label %138, !prof !22

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.bcm_op, ptr %119, i32 0, i32 19
  store ptr null, ptr %137, align 4
  br label %145

138:                                              ; preds = %133
  %139 = extractvalue { i32, i1 } %134, 0
  %140 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %139, i32 noundef 3264) #19
  %141 = getelementptr inbounds %struct.bcm_op, ptr %119, i32 0, i32 19
  store ptr %140, ptr %141, align 4
  %142 = icmp eq ptr %140, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %138
  %144 = load i32, ptr %7, align 8
  br label %149

145:                                              ; preds = %138, %136
  tail call void @kfree(ptr noundef nonnull %119) #15
  br label %324

146:                                              ; preds = %121
  %147 = getelementptr inbounds %struct.bcm_op, ptr %119, i32 0, i32 22
  %148 = getelementptr inbounds %struct.bcm_op, ptr %119, i32 0, i32 19
  store ptr %147, ptr %148, align 4
  br label %149

149:                                              ; preds = %146, %143
  %150 = phi ptr [ %140, %143 ], [ %147, %146 ]
  %151 = phi i32 [ %144, %143 ], [ %131, %146 ]
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %209, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.bcm_op, ptr %119, i32 0, i32 19
  %155 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  br label %156

156:                                              ; preds = %207, %153
  %157 = phi ptr [ %150, %153 ], [ %208, %207 ]
  %158 = phi i32 [ 0, %153 ], [ %204, %207 ]
  %159 = load i32, ptr %129, align 4
  %160 = mul i32 %159, %158
  %161 = getelementptr i8, ptr %157, i32 %160
  %162 = icmp slt i32 %159, 0
  %163 = load i1, ptr @check_copy_size.__already_done, align 1
  %164 = xor i1 %163, true
  %165 = select i1 %162, i1 %164, i1 false
  br i1 %165, label %166, label %167, !prof !22

166:                                              ; preds = %156
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %167

167:                                              ; preds = %166, %156
  br i1 %162, label %170, label %168, !prof !22

168:                                              ; preds = %167
  %169 = tail call i32 @_copy_from_iter(ptr noundef %161, i32 noundef %159, ptr noundef %155) #15
  br label %170

170:                                              ; preds = %168, %167
  %171 = phi i32 [ %169, %168 ], [ 0, %167 ]
  %172 = icmp eq i32 %171, %159
  br i1 %172, label %174, label %173, !prof !19

173:                                              ; preds = %170
  tail call void @iov_iter_revert(ptr noundef %155, i32 noundef %171) #15
  br label %174

174:                                              ; preds = %173, %170
  %175 = phi i32 [ 0, %170 ], [ -14, %173 ]
  %176 = load i32, ptr %130, align 8
  %177 = and i32 %176, 2048
  %178 = icmp eq i32 %177, 0
  %179 = getelementptr inbounds %struct.canfd_frame, ptr %161, i32 0, i32 1
  %180 = load i8, ptr %179, align 4
  br i1 %178, label %185, label %181

181:                                              ; preds = %174
  %182 = icmp ugt i8 %180, 64
  %183 = xor i1 %172, true
  %184 = select i1 %182, i1 true, i1 %183
  br i1 %184, label %189, label %197

185:                                              ; preds = %174
  %186 = icmp ugt i8 %180, 8
  %187 = xor i1 %172, true
  %188 = select i1 %186, i1 true, i1 %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %185, %181
  %190 = phi i1 [ %182, %181 ], [ %186, %185 ]
  %191 = select i1 %190, i32 -22, i32 %175
  %192 = load ptr, ptr %154, align 4
  %193 = getelementptr inbounds %struct.bcm_op, ptr %119, i32 0, i32 22
  %194 = icmp eq ptr %192, %193
  br i1 %194, label %196, label %195

195:                                              ; preds = %189
  tail call void @kfree(ptr noundef %192) #15
  br label %196

196:                                              ; preds = %195, %189
  tail call void @kfree(ptr noundef nonnull %119) #15
  br label %324

197:                                              ; preds = %185, %181
  %198 = load i32, ptr %12, align 4
  %199 = and i32 %198, 16
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %203, label %201

201:                                              ; preds = %197
  %202 = load i32, ptr %122, align 4
  store i32 %202, ptr %161, align 8
  br label %203

203:                                              ; preds = %201, %197
  %204 = add nuw i32 %158, 1
  %205 = load i32, ptr %7, align 8
  %206 = icmp ult i32 %204, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = load ptr, ptr %154, align 4
  br label %156

209:                                              ; preds = %203, %149
  %210 = getelementptr inbounds %struct.bcm_op, ptr %119, i32 0, i32 20
  store ptr null, ptr %210, align 8
  %211 = getelementptr inbounds %struct.bcm_op, ptr %119, i32 0, i32 24
  store ptr %3, ptr %211, align 8
  %212 = getelementptr inbounds %struct.bcm_op, ptr %119, i32 0, i32 1
  store i32 %2, ptr %212, align 8
  %213 = getelementptr inbounds %struct.bcm_op, ptr %119, i32 0, i32 8
  tail call void @hrtimer_init(ptr noundef %213, i32 noundef 1, i32 noundef 5) #15
  %214 = getelementptr inbounds %struct.bcm_op, ptr %119, i32 0, i32 8, i32 2
  store ptr @bcm_tx_timeout_handler, ptr %214, align 8
  %215 = getelementptr inbounds %struct.bcm_op, ptr %119, i32 0, i32 9
  tail call void @hrtimer_init(ptr noundef %215, i32 noundef 1, i32 noundef 5) #15
  %216 = load ptr, ptr %33, align 4
  %217 = getelementptr inbounds %struct.list_head, ptr %216, i32 0, i32 1
  store ptr %119, ptr %217, align 4
  store ptr %216, ptr %119, align 8
  %218 = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  store ptr %33, ptr %218, align 4
  store volatile ptr %119, ptr %33, align 4
  br label %219

219:                                              ; preds = %209, %115
  %220 = phi ptr [ %40, %115 ], [ %119, %209 ]
  %221 = getelementptr inbounds %struct.bcm_op, ptr %220, i32 0, i32 17
  %222 = load i32, ptr %221, align 4
  %223 = load i32, ptr %7, align 8
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %227, label %225

225:                                              ; preds = %219
  store i32 %223, ptr %221, align 4
  %226 = getelementptr inbounds %struct.bcm_op, ptr %220, i32 0, i32 18
  store i32 0, ptr %226, align 8
  br label %227

227:                                              ; preds = %225, %219
  %228 = getelementptr inbounds %struct.bcm_op, ptr %220, i32 0, i32 3
  %229 = load i32, ptr %228, align 8
  %230 = and i32 %229, 512
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %227
  %233 = getelementptr inbounds %struct.bcm_op, ptr %220, i32 0, i32 18
  store i32 0, ptr %233, align 8
  br label %234

234:                                              ; preds = %232, %227
  %235 = and i32 %229, 1
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %272, label %237

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 2
  %239 = load i32, ptr %238, align 8
  %240 = getelementptr inbounds %struct.bcm_op, ptr %220, i32 0, i32 16
  store i32 %239, ptr %240, align 8
  %241 = getelementptr inbounds %struct.bcm_op, ptr %220, i32 0, i32 6
  %242 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 3
  %243 = load i64, ptr %242, align 4
  store i64 %243, ptr %241, align 4
  %244 = getelementptr inbounds %struct.bcm_op, ptr %220, i32 0, i32 7
  %245 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 4
  %246 = load i64, ptr %245, align 4
  store i64 %246, ptr %244, align 4
  %247 = load i32, ptr %242, align 4
  %248 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 3, i32 1
  %249 = load i32, ptr %248, align 4
  %250 = sext i32 %247 to i64
  %251 = mul i32 %249, 1000
  %252 = mul nsw i64 %250, 1000000000
  %253 = zext i32 %251 to i64
  %254 = add nsw i64 %252, %253
  %255 = getelementptr inbounds %struct.bcm_op, ptr %220, i32 0, i32 11
  store i64 %254, ptr %255, align 8
  %256 = load i32, ptr %245, align 4
  %257 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 4, i32 1
  %258 = load i32, ptr %257, align 4
  %259 = sext i32 %256 to i64
  %260 = mul i32 %258, 1000
  %261 = mul nsw i64 %259, 1000000000
  %262 = zext i32 %260 to i64
  %263 = add nsw i64 %261, %262
  %264 = getelementptr inbounds %struct.bcm_op, ptr %220, i32 0, i32 12
  store i64 %263, ptr %264, align 8
  %265 = icmp eq i64 %254, 0
  %266 = icmp eq i64 %263, 0
  %267 = select i1 %265, i1 %266, i1 false
  br i1 %267, label %268, label %272

268:                                              ; preds = %237
  %269 = getelementptr inbounds %struct.bcm_op, ptr %220, i32 0, i32 8
  %270 = tail call i32 @hrtimer_cancel(ptr noundef %269) #15
  %271 = load i32, ptr %228, align 8
  br label %272

272:                                              ; preds = %268, %237, %234
  %273 = phi i32 [ %229, %237 ], [ %271, %268 ], [ %229, %234 ]
  %274 = and i32 %273, 2
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %281, label %276

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.bcm_op, ptr %220, i32 0, i32 8
  %278 = tail call i32 @hrtimer_cancel(ptr noundef %277) #15
  %279 = load i32, ptr %228, align 8
  %280 = or i32 %279, 8
  store i32 %280, ptr %228, align 8
  br label %281

281:                                              ; preds = %276, %272
  %282 = phi i32 [ %280, %276 ], [ %273, %272 ]
  %283 = and i32 %282, 8
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %291, label %285

285:                                              ; preds = %281
  tail call fastcc void @bcm_can_tx(ptr noundef nonnull %220)
  %286 = getelementptr inbounds %struct.bcm_op, ptr %220, i32 0, i32 16
  %287 = load i32, ptr %286, align 8
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %291, label %289

289:                                              ; preds = %285
  %290 = add i32 %287, -1
  store i32 %290, ptr %286, align 8
  br label %291

291:                                              ; preds = %289, %285, %281
  %292 = load i32, ptr %228, align 8
  %293 = and i32 %292, 2
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %314, label %295

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.bcm_op, ptr %220, i32 0, i32 8
  %297 = getelementptr inbounds %struct.bcm_op, ptr %220, i32 0, i32 11
  %298 = load i64, ptr %297, align 8
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %304, label %300

300:                                              ; preds = %295
  %301 = getelementptr inbounds %struct.bcm_op, ptr %220, i32 0, i32 16
  %302 = load i32, ptr %301, align 8
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %300, %295
  %305 = getelementptr inbounds %struct.bcm_op, ptr %220, i32 0, i32 12
  %306 = load i64, ptr %305, align 8
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %314, label %308

308:                                              ; preds = %304, %300
  %309 = phi i64 [ %298, %300 ], [ %306, %304 ]
  %310 = tail call i64 @ktime_get() #15
  %311 = add i64 %310, %309
  %312 = getelementptr inbounds %struct.bcm_op, ptr %220, i32 0, i32 8, i32 0, i32 1
  store i64 %311, ptr %312, align 8
  %313 = getelementptr inbounds %struct.bcm_op, ptr %220, i32 0, i32 8, i32 1
  store i64 %311, ptr %313, align 8
  tail call void @hrtimer_start_range_ns(ptr noundef %296, i64 noundef %311, i64 noundef 0, i32 noundef 4) #15
  br label %314

314:                                              ; preds = %308, %304, %291
  %315 = load i32, ptr %7, align 8
  %316 = getelementptr inbounds %struct.bcm_op, ptr %220, i32 0, i32 15
  %317 = load i32, ptr %316, align 4
  %318 = mul i32 %317, %315
  %319 = add i32 %318, 40
  br label %324

320:                                              ; preds = %99
  %321 = select i1 %100, i32 -22, i32 %89
  br label %324

322:                                              ; preds = %95
  %323 = select i1 %96, i32 -22, i32 %89
  br label %324

324:                                              ; preds = %322, %320, %314, %196, %145, %117, %60, %28, %24, %20, %16, %6, %4
  %325 = phi i32 [ %319, %314 ], [ %191, %196 ], [ -12, %145 ], [ -19, %4 ], [ -22, %6 ], [ -22, %28 ], [ -7, %60 ], [ -12, %117 ], [ -22, %24 ], [ -22, %20 ], [ -22, %16 ], [ %321, %320 ], [ %323, %322 ]
  ret i32 %325
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm_rx_setup(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = icmp ugt i32 %11, 257
  br i1 %14, label %348, label %15

15:                                               ; preds = %13
  %16 = and i32 %6, 1024
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %23

18:                                               ; preds = %9, %4
  %19 = or i32 %6, 32
  store i32 %19, ptr %5, align 4
  %20 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 6
  store i32 0, ptr %20, align 8
  %21 = and i32 %6, 1024
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %348

23:                                               ; preds = %15
  %24 = icmp eq i32 %11, 1
  br i1 %24, label %25, label %348

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 1073741824
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %348, label %30

30:                                               ; preds = %25, %18, %15
  %31 = phi i32 [ %19, %18 ], [ %6, %25 ], [ %6, %15 ]
  %32 = phi i32 [ 0, %18 ], [ 1, %25 ], [ %11, %15 ]
  %33 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 6
  %34 = and i32 %31, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp ugt i32 %38, 34560000
  br i1 %39, label %348, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 3, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp ugt i32 %42, 999999
  br i1 %43, label %348, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = icmp ugt i32 %46, 34560000
  br i1 %47, label %348, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 4, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp ugt i32 %50, 999999
  br i1 %51, label %348, label %52

52:                                               ; preds = %48, %30
  %53 = getelementptr inbounds %struct.bcm_sock, ptr %3, i32 0, i32 4
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %115, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  br label %59

59:                                               ; preds = %74, %56
  %60 = phi ptr [ %54, %56 ], [ %75, %74 ]
  %61 = getelementptr inbounds %struct.bcm_op, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, %58
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.bcm_op, ptr %60, i32 0, i32 1
  %66 = load i32, ptr %65, align 8
  %67 = icmp eq i32 %66, %2
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.bcm_op, ptr %60, i32 0, i32 3
  %70 = load i32, ptr %69, align 8
  %71 = xor i32 %70, %31
  %72 = and i32 %71, 2048
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %68, %64, %59
  %75 = load ptr, ptr %60, align 4
  %76 = icmp eq ptr %75, %53
  br i1 %76, label %115, label %59

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.bcm_op, ptr %60, i32 0, i32 3
  %79 = icmp eq ptr %60, null
  br i1 %79, label %115, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.bcm_op, ptr %60, i32 0, i32 17
  %82 = load i32, ptr %81, align 4
  %83 = icmp ugt i32 %32, %82
  br i1 %83, label %348, label %84

84:                                               ; preds = %80
  %85 = icmp eq i32 %32, 0
  br i1 %85, label %112, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.bcm_op, ptr %60, i32 0, i32 19
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.bcm_op, ptr %60, i32 0, i32 15
  %90 = load i32, ptr %89, align 4
  %91 = mul i32 %90, %32
  %92 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %93 = icmp slt i32 %91, 0
  %94 = load i1, ptr @check_copy_size.__already_done, align 1
  %95 = xor i1 %94, true
  %96 = select i1 %93, i1 %95, i1 false
  br i1 %96, label %97, label %98, !prof !22

97:                                               ; preds = %86
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %98

98:                                               ; preds = %97, %86
  br i1 %93, label %101, label %99, !prof !22

99:                                               ; preds = %98
  %100 = tail call i32 @_copy_from_iter(ptr noundef %88, i32 noundef %91, ptr noundef %92) #15
  br label %101

101:                                              ; preds = %99, %98
  %102 = phi i32 [ %100, %99 ], [ 0, %98 ]
  %103 = icmp eq i32 %102, %91
  br i1 %103, label %105, label %104, !prof !19

104:                                              ; preds = %101
  tail call void @iov_iter_revert(ptr noundef %92, i32 noundef %102) #15
  br label %348

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.bcm_op, ptr %60, i32 0, i32 20
  %107 = load ptr, ptr %106, align 8
  %108 = load i32, ptr %33, align 8
  %109 = load i32, ptr %89, align 4
  %110 = mul i32 %109, %108
  tail call void @llvm.memset.p0.i32(ptr align 1 %107, i8 0, i32 %110, i1 false)
  %111 = load i32, ptr %33, align 8
  br label %112

112:                                              ; preds = %105, %84
  %113 = phi i32 [ %111, %105 ], [ 0, %84 ]
  store i32 %113, ptr %81, align 4
  %114 = load i32, ptr %5, align 4
  store i32 %114, ptr %78, align 8
  br label %208

115:                                              ; preds = %77, %74, %52
  %116 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %117 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %116, i32 noundef 3520, i32 noundef 360) #18
  %118 = icmp eq ptr %117, null
  br i1 %118, label %348, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 5
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds %struct.bcm_op, ptr %117, i32 0, i32 2
  store i32 %121, ptr %122, align 4
  %123 = load i32, ptr %33, align 8
  %124 = getelementptr inbounds %struct.bcm_op, ptr %117, i32 0, i32 17
  store i32 %123, ptr %124, align 4
  %125 = load i32, ptr %5, align 4
  %126 = and i32 %125, 2048
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %127, i32 16, i32 72
  %129 = getelementptr inbounds %struct.bcm_op, ptr %117, i32 0, i32 15
  store i32 %128, ptr %129, align 4
  %130 = getelementptr inbounds %struct.bcm_op, ptr %117, i32 0, i32 3
  store i32 %125, ptr %130, align 8
  %131 = icmp ugt i32 %123, 1
  br i1 %131, label %132, label %159

132:                                              ; preds = %119
  %133 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %123, i32 %128) #15
  %134 = extractvalue { i32, i1 } %133, 1
  br i1 %134, label %135, label %137, !prof !22

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.bcm_op, ptr %117, i32 0, i32 19
  store ptr null, ptr %136, align 4
  br label %142

137:                                              ; preds = %132
  %138 = extractvalue { i32, i1 } %133, 0
  %139 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %138, i32 noundef 3264) #19
  %140 = getelementptr inbounds %struct.bcm_op, ptr %117, i32 0, i32 19
  store ptr %139, ptr %140, align 4
  %141 = icmp eq ptr %139, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %137, %135
  tail call void @kfree(ptr noundef nonnull %117) #15
  br label %348

143:                                              ; preds = %137
  %144 = load i32, ptr %33, align 8
  %145 = load i32, ptr %129, align 4
  %146 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %144, i32 %145) #15
  %147 = extractvalue { i32, i1 } %146, 1
  br i1 %147, label %148, label %150, !prof !22

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.bcm_op, ptr %117, i32 0, i32 20
  store ptr null, ptr %149, align 8
  br label %157

150:                                              ; preds = %143
  %151 = extractvalue { i32, i1 } %146, 0
  %152 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %151, i32 noundef 3520) #19
  %153 = getelementptr inbounds %struct.bcm_op, ptr %117, i32 0, i32 20
  store ptr %152, ptr %153, align 8
  %154 = icmp eq ptr %152, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %150
  %156 = load i32, ptr %33, align 8
  br label %164

157:                                              ; preds = %150, %148
  %158 = load ptr, ptr %140, align 4
  tail call void @kfree(ptr noundef %158) #15
  tail call void @kfree(ptr noundef nonnull %117) #15
  br label %348

159:                                              ; preds = %119
  %160 = getelementptr inbounds %struct.bcm_op, ptr %117, i32 0, i32 22
  %161 = getelementptr inbounds %struct.bcm_op, ptr %117, i32 0, i32 19
  store ptr %160, ptr %161, align 4
  %162 = getelementptr inbounds %struct.bcm_op, ptr %117, i32 0, i32 23
  %163 = getelementptr inbounds %struct.bcm_op, ptr %117, i32 0, i32 20
  store ptr %162, ptr %163, align 8
  br label %164

164:                                              ; preds = %159, %155
  %165 = phi i32 [ %156, %155 ], [ %123, %159 ]
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %196, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.bcm_op, ptr %117, i32 0, i32 19
  %169 = load ptr, ptr %168, align 4
  %170 = load i32, ptr %129, align 4
  %171 = mul i32 %170, %165
  %172 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %173 = icmp slt i32 %171, 0
  %174 = load i1, ptr @check_copy_size.__already_done, align 1
  %175 = xor i1 %174, true
  %176 = select i1 %173, i1 %175, i1 false
  br i1 %176, label %177, label %178, !prof !22

177:                                              ; preds = %167
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %178

178:                                              ; preds = %177, %167
  br i1 %173, label %181, label %179, !prof !22

179:                                              ; preds = %178
  %180 = tail call i32 @_copy_from_iter(ptr noundef %169, i32 noundef %171, ptr noundef %172) #15
  br label %181

181:                                              ; preds = %179, %178
  %182 = phi i32 [ %180, %179 ], [ 0, %178 ]
  %183 = icmp eq i32 %182, %171
  br i1 %183, label %196, label %184, !prof !19

184:                                              ; preds = %181
  tail call void @iov_iter_revert(ptr noundef %172, i32 noundef %182) #15
  %185 = load ptr, ptr %168, align 4
  %186 = getelementptr inbounds %struct.bcm_op, ptr %117, i32 0, i32 22
  %187 = icmp eq ptr %185, %186
  br i1 %187, label %189, label %188

188:                                              ; preds = %184
  tail call void @kfree(ptr noundef %185) #15
  br label %189

189:                                              ; preds = %188, %184
  %190 = getelementptr inbounds %struct.bcm_op, ptr %117, i32 0, i32 20
  %191 = load ptr, ptr %190, align 8
  %192 = getelementptr inbounds %struct.bcm_op, ptr %117, i32 0, i32 23
  %193 = icmp eq ptr %191, %192
  br i1 %193, label %195, label %194

194:                                              ; preds = %189
  tail call void @kfree(ptr noundef %191) #15
  br label %195

195:                                              ; preds = %194, %189
  tail call void @kfree(ptr noundef nonnull %117) #15
  br label %348

196:                                              ; preds = %181, %164
  %197 = getelementptr inbounds %struct.bcm_op, ptr %117, i32 0, i32 24
  store ptr %3, ptr %197, align 8
  %198 = getelementptr inbounds %struct.bcm_op, ptr %117, i32 0, i32 1
  store i32 %2, ptr %198, align 8
  %199 = getelementptr inbounds %struct.bcm_op, ptr %117, i32 0, i32 14
  store i32 %2, ptr %199, align 8
  %200 = getelementptr inbounds %struct.bcm_op, ptr %117, i32 0, i32 8
  tail call void @hrtimer_init(ptr noundef %200, i32 noundef 1, i32 noundef 5) #15
  %201 = getelementptr inbounds %struct.bcm_op, ptr %117, i32 0, i32 8, i32 2
  store ptr @bcm_rx_timeout_handler, ptr %201, align 8
  %202 = getelementptr inbounds %struct.bcm_op, ptr %117, i32 0, i32 9
  tail call void @hrtimer_init(ptr noundef %202, i32 noundef 1, i32 noundef 5) #15
  %203 = getelementptr inbounds %struct.bcm_op, ptr %117, i32 0, i32 9, i32 2
  store ptr @bcm_rx_thr_handler, ptr %203, align 8
  %204 = load ptr, ptr %53, align 4
  %205 = getelementptr inbounds %struct.list_head, ptr %204, i32 0, i32 1
  store ptr %117, ptr %205, align 4
  store ptr %204, ptr %117, align 8
  %206 = getelementptr inbounds %struct.list_head, ptr %117, i32 0, i32 1
  store ptr %53, ptr %206, align 4
  store volatile ptr %117, ptr %53, align 4
  %207 = load i32, ptr %130, align 8
  br label %208

208:                                              ; preds = %196, %112
  %209 = phi i32 [ %114, %112 ], [ %207, %196 ]
  %210 = phi i1 [ false, %112 ], [ true, %196 ]
  %211 = phi ptr [ %60, %112 ], [ %117, %196 ]
  %212 = getelementptr inbounds %struct.bcm_op, ptr %211, i32 0, i32 3
  %213 = and i32 %209, 1024
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %236, label %215

215:                                              ; preds = %208
  %216 = getelementptr inbounds %struct.bcm_op, ptr %211, i32 0, i32 19
  %217 = load ptr, ptr %216, align 4
  %218 = getelementptr inbounds %struct.bcm_op, ptr %211, i32 0, i32 9
  %219 = tail call i32 @hrtimer_cancel(ptr noundef %218) #15
  %220 = getelementptr inbounds %struct.bcm_op, ptr %211, i32 0, i32 8
  %221 = tail call i32 @hrtimer_cancel(ptr noundef %220) #15
  %222 = load i32, ptr %212, align 8
  %223 = and i32 %222, 16
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %215
  %226 = getelementptr inbounds %struct.bcm_op, ptr %211, i32 0, i32 2
  %227 = load i32, ptr %226, align 4
  br label %233

228:                                              ; preds = %215
  %229 = load i32, ptr %217, align 8
  %230 = getelementptr inbounds %struct.bcm_op, ptr %211, i32 0, i32 2
  %231 = load i32, ptr %230, align 4
  %232 = icmp eq i32 %229, %231
  br i1 %232, label %233, label %284

233:                                              ; preds = %228, %225
  %234 = phi i32 [ %227, %225 ], [ %229, %228 ]
  %235 = and i32 %234, -1073741825
  store i32 %235, ptr %217, align 8
  br label %284

236:                                              ; preds = %208
  %237 = and i32 %209, 1
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %274, label %239

239:                                              ; preds = %236
  %240 = getelementptr inbounds %struct.bcm_op, ptr %211, i32 0, i32 6
  %241 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 3
  %242 = load i64, ptr %241, align 4
  store i64 %242, ptr %240, align 4
  %243 = getelementptr inbounds %struct.bcm_op, ptr %211, i32 0, i32 7
  %244 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 4
  %245 = load i64, ptr %244, align 4
  store i64 %245, ptr %243, align 4
  %246 = load i32, ptr %241, align 4
  %247 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 3, i32 1
  %248 = load i32, ptr %247, align 4
  %249 = sext i32 %246 to i64
  %250 = mul i32 %248, 1000
  %251 = mul nsw i64 %249, 1000000000
  %252 = zext i32 %250 to i64
  %253 = add nsw i64 %251, %252
  %254 = getelementptr inbounds %struct.bcm_op, ptr %211, i32 0, i32 11
  store i64 %253, ptr %254, align 8
  %255 = load i32, ptr %244, align 4
  %256 = getelementptr inbounds %struct.bcm_msg_head, ptr %0, i32 0, i32 4, i32 1
  %257 = load i32, ptr %256, align 4
  %258 = sext i32 %255 to i64
  %259 = mul i32 %257, 1000
  %260 = mul nsw i64 %258, 1000000000
  %261 = zext i32 %259 to i64
  %262 = add nsw i64 %260, %261
  %263 = getelementptr inbounds %struct.bcm_op, ptr %211, i32 0, i32 12
  store i64 %262, ptr %263, align 8
  %264 = icmp eq i64 %253, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %239
  %266 = getelementptr inbounds %struct.bcm_op, ptr %211, i32 0, i32 8
  %267 = tail call i32 @hrtimer_cancel(ptr noundef %266) #15
  br label %268

268:                                              ; preds = %265, %239
  %269 = getelementptr inbounds %struct.bcm_op, ptr %211, i32 0, i32 13
  store i64 0, ptr %269, align 8
  %270 = getelementptr inbounds %struct.bcm_op, ptr %211, i32 0, i32 9
  %271 = tail call i32 @hrtimer_cancel(ptr noundef %270) #15
  %272 = tail call fastcc i32 @bcm_rx_thr_flush(ptr noundef nonnull %211)
  %273 = load i32, ptr %212, align 8
  br label %274

274:                                              ; preds = %268, %236
  %275 = phi i32 [ %273, %268 ], [ %209, %236 ]
  %276 = and i32 %275, 2
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %284, label %278

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.bcm_op, ptr %211, i32 0, i32 11
  %280 = load i64, ptr %279, align 8
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.bcm_op, ptr %211, i32 0, i32 8
  tail call void @hrtimer_start_range_ns(ptr noundef %283, i64 noundef %280, i64 noundef 0, i32 noundef 5) #15
  br label %284

284:                                              ; preds = %282, %278, %274, %233, %228
  br i1 %210, label %285, label %342

285:                                              ; preds = %284
  %286 = icmp eq i32 %2, 0
  br i1 %286, label %308, label %287

287:                                              ; preds = %285
  %288 = tail call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %2) #15
  %289 = icmp eq ptr %288, null
  br i1 %289, label %342, label %290

290:                                              ; preds = %287
  %291 = getelementptr inbounds %struct.bcm_op, ptr %211, i32 0, i32 2
  %292 = load i32, ptr %291, align 4
  %293 = icmp sgt i32 %292, -1
  %294 = select i1 %293, i32 -1073739777, i32 -536870913
  %295 = tail call i32 @can_rx_register(ptr noundef nonnull @init_net, ptr noundef nonnull %288, i32 noundef %292, i32 noundef %294, ptr noundef nonnull @bcm_rx_handler, ptr noundef nonnull %211, ptr noundef nonnull @.str.28, ptr noundef %3) #15
  %296 = getelementptr inbounds %struct.bcm_op, ptr %211, i32 0, i32 25
  store ptr %288, ptr %296, align 4
  %297 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !13
  %298 = getelementptr inbounds %struct.net_device, ptr %288, i32 0, i32 99
  %299 = load ptr, ptr %298, align 8
  %300 = ptrtoint ptr %299 to i32
  %301 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %302 = inttoptr i32 %301 to ptr
  %303 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %302) #6, !srcloc !14
  %304 = add i32 %303, %300
  %305 = inttoptr i32 %304 to ptr
  %306 = load i32, ptr %305, align 4
  %307 = add i32 %306, -1
  store i32 %307, ptr %305, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %297) #15, !srcloc !15
  br label %314

308:                                              ; preds = %285
  %309 = getelementptr inbounds %struct.bcm_op, ptr %211, i32 0, i32 2
  %310 = load i32, ptr %309, align 4
  %311 = icmp sgt i32 %310, -1
  %312 = select i1 %311, i32 -1073739777, i32 -536870913
  %313 = tail call i32 @can_rx_register(ptr noundef nonnull @init_net, ptr noundef null, i32 noundef %310, i32 noundef %312, ptr noundef nonnull @bcm_rx_handler, ptr noundef nonnull %211, ptr noundef nonnull @.str.28, ptr noundef %3) #15
  br label %314

314:                                              ; preds = %308, %290
  %315 = phi i32 [ %313, %308 ], [ %295, %290 ]
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %342, label %317

317:                                              ; preds = %314
  %318 = getelementptr inbounds %struct.list_head, ptr %211, i32 0, i32 1
  %319 = load ptr, ptr %318, align 4
  %320 = load ptr, ptr %211, align 4
  %321 = getelementptr inbounds %struct.list_head, ptr %320, i32 0, i32 1
  store ptr %319, ptr %321, align 4
  store volatile ptr %320, ptr %319, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %211, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %318, align 4
  %322 = getelementptr inbounds %struct.bcm_op, ptr %211, i32 0, i32 8
  %323 = tail call i32 @hrtimer_cancel(ptr noundef %322) #15
  %324 = getelementptr inbounds %struct.bcm_op, ptr %211, i32 0, i32 9
  %325 = tail call i32 @hrtimer_cancel(ptr noundef %324) #15
  %326 = getelementptr inbounds %struct.bcm_op, ptr %211, i32 0, i32 19
  %327 = load ptr, ptr %326, align 4
  %328 = icmp eq ptr %327, null
  %329 = getelementptr inbounds %struct.bcm_op, ptr %211, i32 0, i32 22
  %330 = icmp eq ptr %327, %329
  %331 = select i1 %328, i1 true, i1 %330
  br i1 %331, label %333, label %332

332:                                              ; preds = %317
  tail call void @kfree(ptr noundef nonnull %327) #15
  br label %333

333:                                              ; preds = %332, %317
  %334 = getelementptr inbounds %struct.bcm_op, ptr %211, i32 0, i32 20
  %335 = load ptr, ptr %334, align 8
  %336 = icmp eq ptr %335, null
  %337 = getelementptr inbounds %struct.bcm_op, ptr %211, i32 0, i32 23
  %338 = icmp eq ptr %335, %337
  %339 = select i1 %336, i1 true, i1 %338
  br i1 %339, label %341, label %340

340:                                              ; preds = %333
  tail call void @kfree(ptr noundef nonnull %335) #15
  br label %341

341:                                              ; preds = %340, %333
  tail call void @kfree(ptr noundef nonnull %211) #15
  br label %348

342:                                              ; preds = %314, %287, %284
  %343 = load i32, ptr %33, align 8
  %344 = getelementptr inbounds %struct.bcm_op, ptr %211, i32 0, i32 15
  %345 = load i32, ptr %344, align 4
  %346 = mul i32 %345, %343
  %347 = add i32 %346, 40
  br label %348

348:                                              ; preds = %342, %341, %195, %157, %142, %115, %104, %80, %48, %44, %40, %36, %25, %23, %18, %13
  %349 = phi i32 [ %315, %341 ], [ %347, %342 ], [ -14, %195 ], [ -12, %157 ], [ -12, %142 ], [ -22, %13 ], [ -22, %25 ], [ -22, %23 ], [ -22, %48 ], [ -7, %80 ], [ -12, %115 ], [ -14, %104 ], [ -22, %44 ], [ -22, %40 ], [ -22, %36 ], [ -22, %18 ]
  ret i32 %349
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm_delete_tx_op(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %53, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.bcm_msg_head, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bcm_msg_head, ptr %1, i32 0, i32 1
  br label %10

10:                                               ; preds = %51, %6
  %11 = phi ptr [ %4, %6 ], [ %12, %51 ]
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %8
  br i1 %15, label %16, label %51

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %20, label %51

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 3
  %22 = load i32, ptr %21, align 8
  %23 = load i32, ptr %9, align 4
  %24 = xor i32 %23, %22
  %25 = and i32 %24, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %29, ptr %30, align 4
  store volatile ptr %12, ptr %29, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %28, align 4
  %31 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 8
  %32 = tail call i32 @hrtimer_cancel(ptr noundef %31) #15
  %33 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 9
  %34 = tail call i32 @hrtimer_cancel(ptr noundef %33) #15
  %35 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 19
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  %38 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 22
  %39 = icmp eq ptr %36, %38
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %27
  tail call void @kfree(ptr noundef nonnull %36) #15
  br label %42

42:                                               ; preds = %41, %27
  %43 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 20
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  %46 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 23
  %47 = icmp eq ptr %44, %46
  %48 = select i1 %45, i1 true, i1 %47
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  tail call void @kfree(ptr noundef nonnull %44) #15
  br label %50

50:                                               ; preds = %49, %42
  tail call void @kfree(ptr noundef %11) #15
  br label %53

51:                                               ; preds = %20, %16, %10
  %52 = icmp eq ptr %12, %0
  br i1 %52, label %53, label %10

53:                                               ; preds = %51, %50, %3
  %54 = phi i32 [ 1, %50 ], [ 0, %3 ], [ 0, %51 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm_delete_rx_op(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %88, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.bcm_msg_head, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bcm_msg_head, ptr %1, i32 0, i32 1
  br label %10

10:                                               ; preds = %86, %6
  %11 = phi ptr [ %4, %6 ], [ %12, %86 ]
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %8
  br i1 %15, label %16, label %86

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %20, label %86

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 3
  %22 = load i32, ptr %21, align 8
  %23 = load i32, ptr %9, align 4
  %24 = xor i32 %23, %22
  %25 = and i32 %24, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %86

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 2
  %29 = icmp eq i32 %2, 0
  br i1 %29, label %58, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 25
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %61, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %2) #15
  %36 = icmp eq ptr %35, null
  br i1 %36, label %61, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %31, align 4
  %39 = icmp eq ptr %38, %35
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, ptr %28, align 4
  %42 = icmp sgt i32 %41, -1
  %43 = select i1 %42, i32 -1073739777, i32 -536870913
  tail call void @can_rx_unregister(ptr noundef nonnull @init_net, ptr noundef nonnull %35, i32 noundef %41, i32 noundef %43, ptr noundef nonnull @bcm_rx_handler, ptr noundef %11) #15
  store ptr null, ptr %31, align 4
  br label %46

44:                                               ; preds = %37
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %38, ptr noundef nonnull %35) #16
  br label %46

46:                                               ; preds = %44, %40
  %47 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !13
  %48 = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 99
  %49 = load ptr, ptr %48, align 8
  %50 = ptrtoint ptr %49 to i32
  %51 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %52 = inttoptr i32 %51 to ptr
  %53 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %52) #6, !srcloc !14
  %54 = add i32 %53, %50
  %55 = inttoptr i32 %54 to ptr
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, -1
  store i32 %57, ptr %55, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %47) #15, !srcloc !15
  br label %61

58:                                               ; preds = %27
  %59 = icmp sgt i32 %8, -1
  %60 = select i1 %59, i32 -1073739777, i32 -536870913
  tail call void @can_rx_unregister(ptr noundef nonnull @init_net, ptr noundef null, i32 noundef %8, i32 noundef %60, ptr noundef nonnull @bcm_rx_handler, ptr noundef %11) #15
  br label %61

61:                                               ; preds = %58, %46, %34, %30
  %62 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = load ptr, ptr %11, align 4
  %65 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  store ptr %63, ptr %65, align 4
  store volatile ptr %64, ptr %63, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %62, align 4
  tail call void @synchronize_rcu() #15
  %66 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 8
  %67 = tail call i32 @hrtimer_cancel(ptr noundef %66) #15
  %68 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 9
  %69 = tail call i32 @hrtimer_cancel(ptr noundef %68) #15
  %70 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 19
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  %73 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 22
  %74 = icmp eq ptr %71, %73
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %77, label %76

76:                                               ; preds = %61
  tail call void @kfree(ptr noundef nonnull %71) #15
  br label %77

77:                                               ; preds = %76, %61
  %78 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 20
  %79 = load ptr, ptr %78, align 8
  %80 = icmp eq ptr %79, null
  %81 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 23
  %82 = icmp eq ptr %79, %81
  %83 = select i1 %80, i1 true, i1 %82
  br i1 %83, label %85, label %84

84:                                               ; preds = %77
  tail call void @kfree(ptr noundef nonnull %79) #15
  br label %85

85:                                               ; preds = %84, %77
  tail call void @kfree(ptr noundef %11) #15
  br label %88

86:                                               ; preds = %20, %16, %10
  %87 = icmp eq ptr %12, %0
  br i1 %87, label %88, label %10

88:                                               ; preds = %86, %85, %3
  %89 = phi i32 [ 1, %85 ], [ 0, %3 ], [ 0, %86 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm_read_op(ptr noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %46, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.bcm_msg_head, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bcm_msg_head, ptr %1, i32 0, i32 1
  br label %10

10:                                               ; preds = %26, %6
  %11 = phi ptr [ %4, %6 ], [ %27, %26 ]
  %12 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %8
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 1
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 3
  %21 = load i32, ptr %20, align 8
  %22 = load i32, ptr %9, align 4
  %23 = xor i32 %22, %21
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19, %15, %10
  %27 = load ptr, ptr %11, align 4
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %46, label %10

29:                                               ; preds = %19
  %30 = icmp eq ptr %11, null
  br i1 %30, label %46, label %31

31:                                               ; preds = %29
  store i32 %21, ptr %9, align 4
  %32 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 16
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.bcm_msg_head, ptr %1, i32 0, i32 2
  store i32 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.bcm_msg_head, ptr %1, i32 0, i32 3
  %36 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 6
  %37 = load i64, ptr %36, align 4
  store i64 %37, ptr %35, align 4
  %38 = getelementptr inbounds %struct.bcm_msg_head, ptr %1, i32 0, i32 4
  %39 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 7
  %40 = load i64, ptr %39, align 4
  store i64 %40, ptr %38, align 4
  %41 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 17
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.bcm_msg_head, ptr %1, i32 0, i32 6
  store i32 %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.bcm_op, ptr %11, i32 0, i32 19
  %45 = load ptr, ptr %44, align 4
  tail call fastcc void @bcm_send_to_user(ptr noundef nonnull %11, ptr noundef %1, ptr noundef %45, i32 noundef 0)
  br label %46

46:                                               ; preds = %31, %29, %26, %3
  %47 = phi i32 [ 40, %31 ], [ -22, %29 ], [ -22, %3 ], [ -22, %26 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm_tx_send(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %87, label %6

6:                                                ; preds = %4
  %7 = add i32 %3, 16
  %8 = tail call ptr @__alloc_skb(i32 noundef %7, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %87, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 16
  store ptr %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 14
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr i8, ptr %15, i32 16
  store ptr %16, ptr %14, align 8
  %17 = tail call ptr @skb_put(ptr noundef nonnull %8, i32 noundef %3) #15
  %18 = getelementptr inbounds %struct.msghdr, ptr %0, i32 0, i32 2
  %19 = icmp slt i32 %3, 0
  %20 = load i1, ptr @check_copy_size.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !22

23:                                               ; preds = %10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %24

24:                                               ; preds = %23, %10
  br i1 %19, label %27, label %25, !prof !22

25:                                               ; preds = %24
  %26 = tail call i32 @_copy_from_iter(ptr noundef %17, i32 noundef %3, ptr noundef %18) #15
  br label %27

27:                                               ; preds = %25, %24
  %28 = phi i32 [ %26, %25 ], [ 0, %24 ]
  %29 = icmp eq i32 %28, %3
  br i1 %29, label %31, label %30, !prof !19

30:                                               ; preds = %27
  tail call void @iov_iter_revert(ptr noundef %18, i32 noundef %28) #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %8, i32 noundef 0) #15
  br label %87

31:                                               ; preds = %27
  %32 = tail call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %1) #15
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  tail call void @kfree_skb_reason(ptr noundef nonnull %8, i32 noundef 0) #15
  br label %87

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 17
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 16
  %39 = load ptr, ptr %38, align 8
  store i32 %37, ptr %39, align 8
  %40 = load ptr, ptr %38, align 8
  %41 = getelementptr inbounds %struct.can_skb_priv, ptr %40, i32 0, i32 1
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.anon.49, ptr %8, i32 0, i32 2
  store ptr %32, ptr %42, align 8
  %43 = icmp eq ptr %2, null
  br i1 %43, label %71, label %44

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 19
  %46 = load volatile i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %58, %44
  %49 = phi i32 [ %56, %58 ], [ %46, %44 ]
  %50 = add i32 %49, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #15, !srcloc !17
  br label %51

51:                                               ; preds = %51, %48
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 %49, i32 %50, ptr elementtype(i32) %45) #15, !srcloc !25
  %53 = extractvalue { i32, i32 } %52, 0
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %51

55:                                               ; preds = %51
  %56 = extractvalue { i32, i32 } %52, 1
  %57 = icmp eq i32 %56, %49
  br i1 %57, label %60, label %58, !prof !19

58:                                               ; preds = %55
  %59 = icmp eq i32 %56, 0
  br i1 %59, label %60, label %48

60:                                               ; preds = %58, %55, %44
  %61 = phi i32 [ 0, %44 ], [ %49, %55 ], [ 0, %58 ]
  %62 = add i32 %61, 1
  %63 = or i32 %62, %61
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %66, label %65, !prof !19

65:                                               ; preds = %60
  tail call void @refcount_warn_saturate(ptr noundef %45, i32 noundef 0) #15
  br label %66

66:                                               ; preds = %65, %60
  %67 = icmp eq i32 %61, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 4, i32 0, i32 1
  store ptr @sock_efree, ptr %69, align 4
  %70 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 1
  store ptr %2, ptr %70, align 4
  br label %71

71:                                               ; preds = %68, %66, %35
  %72 = tail call i32 @can_send(ptr noundef nonnull %8, i32 noundef 1) #15
  %73 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !13
  %74 = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 99
  %75 = load ptr, ptr %74, align 8
  %76 = ptrtoint ptr %75 to i32
  %77 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %78 = inttoptr i32 %77 to ptr
  %79 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %78) #6, !srcloc !14
  %80 = add i32 %79, %76
  %81 = inttoptr i32 %80 to ptr
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, -1
  store i32 %83, ptr %81, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %73) #15, !srcloc !15
  %84 = icmp eq i32 %72, 0
  %85 = add i32 %3, 40
  %86 = select i1 %84, i32 %85, i32 %72
  br label %87

87:                                               ; preds = %71, %34, %30, %6, %4
  %88 = phi i32 [ -14, %30 ], [ -19, %34 ], [ -19, %4 ], [ -12, %6 ], [ %86, %71 ]
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_tx_timeout_handler(ptr nocapture noundef %0) #2 {
  %2 = alloca %struct.bcm_msg_head, align 8
  %3 = getelementptr i8, ptr %0, i32 -48
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #15
  %4 = getelementptr i8, ptr %0, i32 104
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 136
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %7
  %12 = add i32 %9, -1
  store i32 %12, ptr %8, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %0, i32 -32
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds i8, ptr %2, i32 32
  store i64 0, ptr %20, align 8
  store i32 9, ptr %2, align 8
  %21 = getelementptr inbounds %struct.bcm_msg_head, ptr %2, i32 0, i32 1
  store i32 %16, ptr %21, align 4
  %22 = getelementptr inbounds %struct.bcm_msg_head, ptr %2, i32 0, i32 2
  store i32 0, ptr %22, align 8
  %23 = getelementptr inbounds %struct.bcm_msg_head, ptr %2, i32 0, i32 3
  %24 = getelementptr i8, ptr %0, i32 -20
  %25 = load i64, ptr %24, align 4
  store i64 %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.bcm_msg_head, ptr %2, i32 0, i32 4
  %27 = getelementptr i8, ptr %0, i32 -12
  %28 = load i64, ptr %27, align 4
  store i64 %28, ptr %26, align 4
  %29 = getelementptr i8, ptr %0, i32 -36
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.bcm_msg_head, ptr %2, i32 0, i32 5
  store i32 %30, ptr %31, align 4
  call fastcc void @bcm_send_to_user(ptr noundef %3, ptr noundef nonnull %2, ptr noundef null, i32 noundef 0)
  br label %36

32:                                               ; preds = %7, %1
  %33 = getelementptr i8, ptr %0, i32 112
  %34 = load i64, ptr %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32, %19, %14, %11
  tail call fastcc void @bcm_can_tx(ptr noundef %3)
  br label %37

37:                                               ; preds = %36, %32
  %38 = load i64, ptr %4, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr i8, ptr %0, i32 136
  %42 = load i32, ptr %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40, %37
  %45 = getelementptr i8, ptr %0, i32 112
  %46 = load i64, ptr %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44, %40
  %49 = phi i64 [ %38, %40 ], [ %46, %44 ]
  %50 = tail call i64 @ktime_get() #15
  %51 = add i64 %50, %49
  %52 = getelementptr inbounds %struct.timerqueue_node, ptr %0, i32 0, i32 1
  store i64 %51, ptr %52, align 8
  %53 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 1
  store i64 %51, ptr %53, align 8
  br label %54

54:                                               ; preds = %48, %44
  %55 = phi i32 [ 1, %48 ], [ 0, %44 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #15
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_rx_timeout_handler(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.bcm_msg_head, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #15
  %3 = getelementptr i8, ptr %0, i32 -32
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 152
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %0, i32 140
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %0, i32 132
  %15 = load i32, ptr %14, align 4
  %16 = mul i32 %15, %13
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %9, i8 0, i32 %16, i1 false)
  %17 = load i32, ptr %3, align 8
  br label %18

18:                                               ; preds = %11, %7, %1
  %19 = phi i32 [ %17, %11 ], [ %4, %7 ], [ %4, %1 ]
  %20 = getelementptr i8, ptr %0, i32 -48
  %21 = getelementptr inbounds i8, ptr %2, i32 32
  store i64 0, ptr %21, align 8
  store i32 11, ptr %2, align 8
  %22 = getelementptr inbounds %struct.bcm_msg_head, ptr %2, i32 0, i32 1
  store i32 %19, ptr %22, align 4
  %23 = getelementptr i8, ptr %0, i32 136
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.bcm_msg_head, ptr %2, i32 0, i32 2
  store i32 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.bcm_msg_head, ptr %2, i32 0, i32 3
  %27 = getelementptr i8, ptr %0, i32 -20
  %28 = load i64, ptr %27, align 4
  store i64 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.bcm_msg_head, ptr %2, i32 0, i32 4
  %30 = getelementptr i8, ptr %0, i32 -12
  %31 = load i64, ptr %30, align 4
  store i64 %31, ptr %29, align 4
  %32 = getelementptr i8, ptr %0, i32 -36
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.bcm_msg_head, ptr %2, i32 0, i32 5
  store i32 %33, ptr %34, align 4
  call fastcc void @bcm_send_to_user(ptr noundef %20, ptr noundef nonnull %2, ptr noundef null, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_rx_thr_handler(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -96
  %3 = tail call fastcc i32 @bcm_rx_thr_flush(ptr noundef %2)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 64
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i64 %11() #15
  %13 = tail call i64 @hrtimer_forward(ptr noundef %0, i64 noundef %12, i64 noundef %7) #15
  br label %16

14:                                               ; preds = %1
  %15 = getelementptr i8, ptr %0, i32 72
  store i64 0, ptr %15, align 8
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi i32 [ 1, %5 ], [ 0, %14 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm_rx_thr_flush(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.bcm_msg_head, align 8
  %3 = alloca %struct.bcm_msg_head, align 8
  %4 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 17
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 1
  %7 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 20
  br i1 %6, label %8, label %56

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 5
  %11 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 4
  %12 = getelementptr inbounds i8, ptr %3, i32 32
  %13 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.bcm_msg_head, ptr %3, i32 0, i32 1
  %15 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 16
  %16 = getelementptr inbounds %struct.bcm_msg_head, ptr %3, i32 0, i32 2
  %17 = getelementptr inbounds %struct.bcm_msg_head, ptr %3, i32 0, i32 3
  %18 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.bcm_msg_head, ptr %3, i32 0, i32 4
  %20 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 7
  %21 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 2
  %22 = getelementptr inbounds %struct.bcm_msg_head, ptr %3, i32 0, i32 5
  br label %23

23:                                               ; preds = %50, %8
  %24 = phi i32 [ %5, %8 ], [ %51, %50 ]
  %25 = phi i32 [ 1, %8 ], [ %54, %50 ]
  %26 = phi i32 [ 0, %8 ], [ %53, %50 ]
  %27 = load ptr, ptr %7, align 8
  %28 = load i32, ptr %9, align 4
  %29 = mul i32 %28, %25
  %30 = getelementptr i8, ptr %27, i32 %29
  %31 = icmp eq ptr %27, null
  br i1 %31, label %50, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.canfd_frame, ptr %30, i32 0, i32 2
  %34 = load i8, ptr %33, align 1
  %35 = icmp sgt i8 %34, -1
  br i1 %35, label %50, label %36

36:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #15
  %37 = load i32, ptr %10, align 8
  %38 = add i32 %37, 1
  store i32 %38, ptr %10, align 8
  %39 = icmp ugt i32 %38, 42949672
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 0, ptr %11, align 4
  store i32 0, ptr %10, align 8
  br label %41

41:                                               ; preds = %40, %36
  %42 = load i8, ptr %33, align 1
  %43 = and i8 %42, 127
  store i8 %43, ptr %33, align 1
  store i64 1, ptr %12, align 8
  store i32 12, ptr %3, align 8
  %44 = load i32, ptr %13, align 8
  store i32 %44, ptr %14, align 4
  %45 = load i32, ptr %15, align 8
  store i32 %45, ptr %16, align 8
  %46 = load i64, ptr %18, align 4
  store i64 %46, ptr %17, align 4
  %47 = load i64, ptr %20, align 4
  store i64 %47, ptr %19, align 4
  %48 = load i32, ptr %21, align 4
  store i32 %48, ptr %22, align 4
  call fastcc void @bcm_send_to_user(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %30, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  %49 = load i32, ptr %4, align 4
  br label %50

50:                                               ; preds = %41, %32, %23
  %51 = phi i32 [ %49, %41 ], [ %24, %32 ], [ %24, %23 ]
  %52 = phi i32 [ 1, %41 ], [ 0, %32 ], [ 0, %23 ]
  %53 = add i32 %52, %26
  %54 = add nuw i32 %25, 1
  %55 = icmp ult i32 %54, %51
  br i1 %55, label %23, label %89

56:                                               ; preds = %1
  %57 = load ptr, ptr %7, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %89, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.canfd_frame, ptr %57, i32 0, i32 2
  %61 = load i8, ptr %60, align 1
  %62 = icmp sgt i8 %61, -1
  br i1 %62, label %89, label %63

63:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #15
  %64 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 5
  %65 = load i32, ptr %64, align 8
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 8
  %67 = icmp ugt i32 %66, 42949672
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 4
  store i32 0, ptr %69, align 4
  store i32 0, ptr %64, align 8
  br label %70

70:                                               ; preds = %68, %63
  %71 = load i8, ptr %60, align 1
  %72 = and i8 %71, 127
  store i8 %72, ptr %60, align 1
  %73 = getelementptr inbounds i8, ptr %2, i32 32
  store i64 1, ptr %73, align 8
  store i32 12, ptr %2, align 8
  %74 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 3
  %75 = load i32, ptr %74, align 8
  %76 = getelementptr inbounds %struct.bcm_msg_head, ptr %2, i32 0, i32 1
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 16
  %78 = load i32, ptr %77, align 8
  %79 = getelementptr inbounds %struct.bcm_msg_head, ptr %2, i32 0, i32 2
  store i32 %78, ptr %79, align 8
  %80 = getelementptr inbounds %struct.bcm_msg_head, ptr %2, i32 0, i32 3
  %81 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 6
  %82 = load i64, ptr %81, align 4
  store i64 %82, ptr %80, align 4
  %83 = getelementptr inbounds %struct.bcm_msg_head, ptr %2, i32 0, i32 4
  %84 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 7
  %85 = load i64, ptr %84, align 4
  store i64 %85, ptr %83, align 4
  %86 = getelementptr inbounds %struct.bcm_op, ptr %0, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.bcm_msg_head, ptr %2, i32 0, i32 5
  store i32 %87, ptr %88, align 4
  call fastcc void @bcm_send_to_user(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %57, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #15
  br label %89

89:                                               ; preds = %70, %59, %56, %50
  %90 = phi i32 [ 1, %70 ], [ 0, %59 ], [ 0, %56 ], [ %53, %50 ]
  ret i32 %90
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_register(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_ts_and_drops(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.bcm_sock, ptr %0, i32 0, i32 1
  store i32 0, ptr %2, align 8
  %3 = getelementptr inbounds %struct.bcm_sock, ptr %0, i32 0, i32 2
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.bcm_sock, ptr %0, i32 0, i32 6
  store i32 0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.bcm_sock, ptr %0, i32 0, i32 7
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.bcm_sock, ptr %0, i32 0, i32 5
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.bcm_sock, ptr %0, i32 0, i32 5, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.bcm_sock, ptr %0, i32 0, i32 4
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.bcm_sock, ptr %0, i32 0, i32 4, i32 1
  store ptr %8, ptr %9, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @bcm_notifier_lock) #15
  %10 = getelementptr inbounds %struct.bcm_sock, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @bcm_notifier_list, i32 0, i32 1), align 4
  store ptr %10, ptr getelementptr inbounds (%struct.list_head, ptr @bcm_notifier_list, i32 0, i32 1), align 4
  store ptr @bcm_notifier_list, ptr %10, align 4
  %12 = getelementptr inbounds %struct.bcm_sock, ptr %0, i32 0, i32 3, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %10, ptr %11, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  %13 = load i16, ptr @bcm_notifier_lock, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr @bcm_notifier_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 32
  %6 = load i16, ptr %5, align 16
  %7 = icmp eq i16 %6, 280
  %8 = and i32 %1, -5
  %9 = icmp eq i32 %8, 2
  %10 = and i1 %9, %7
  %11 = load ptr, ptr @bcm_busy_notifier, align 4
  %12 = icmp eq ptr %11, null
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %83, !prof !30

14:                                               ; preds = %3
  tail call void @_raw_spin_lock(ptr noundef nonnull @bcm_notifier_lock) #15
  %15 = load ptr, ptr @bcm_notifier_list, align 4
  %16 = getelementptr i8, ptr %15, i32 -528
  store ptr %16, ptr @bcm_busy_notifier, align 4
  %17 = icmp eq ptr %15, @bcm_notifier_list
  br i1 %17, label %80, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 17
  br label %20

20:                                               ; preds = %74, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  %21 = load i16, ptr @bcm_notifier_lock, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr @bcm_notifier_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %23 = load ptr, ptr @bcm_busy_notifier, align 4
  switch i32 %1, label %74 [
    i32 6, label %24
    i32 2, label %58
  ]

24:                                               ; preds = %20
  tail call void @lock_sock_nested(ptr noundef %23, i32 noundef 0) #15
  %25 = getelementptr inbounds %struct.bcm_sock, ptr %23, i32 0, i32 4
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %41, label %28

28:                                               ; preds = %38, %24
  %29 = phi ptr [ %39, %38 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct.bcm_op, ptr %29, i32 0, i32 25
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %4
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.bcm_op, ptr %29, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = icmp sgt i32 %35, -1
  %37 = select i1 %36, i32 -1073739777, i32 -536870913
  tail call void @can_rx_unregister(ptr noundef nonnull @init_net, ptr noundef %4, i32 noundef %35, i32 noundef %37, ptr noundef nonnull @bcm_rx_handler, ptr noundef %29) #15
  store ptr null, ptr %30, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = load ptr, ptr %29, align 8
  %40 = icmp eq ptr %39, %25
  br i1 %40, label %41, label %28

41:                                               ; preds = %38, %24
  %42 = getelementptr inbounds %struct.bcm_sock, ptr %23, i32 0, i32 1
  %43 = load i32, ptr %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.bcm_sock, ptr %23, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = load i32, ptr %19, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  store i32 0, ptr %42, align 8
  store i32 0, ptr %46, align 4
  tail call void @release_sock(ptr noundef %23) #15
  %51 = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 51
  store i32 19, ptr %51, align 4
  %52 = getelementptr inbounds %struct.sock_common, ptr %23, i32 0, i32 13
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %74

56:                                               ; preds = %45, %41
  tail call void @release_sock(ptr noundef %23) #15
  br label %74

57:                                               ; preds = %50
  tail call void @sk_error_report(ptr noundef %23) #15
  br label %74

58:                                               ; preds = %20
  %59 = getelementptr inbounds %struct.bcm_sock, ptr %23, i32 0, i32 1
  %60 = load i32, ptr %59, align 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.bcm_sock, ptr %23, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr %19, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 51
  store i32 100, ptr %68, align 4
  %69 = getelementptr inbounds %struct.sock_common, ptr %23, i32 0, i32 13
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  tail call void @sk_error_report(ptr noundef %23) #15
  br label %74

74:                                               ; preds = %73, %67, %62, %58, %57, %56, %50, %20
  tail call void @_raw_spin_lock(ptr noundef nonnull @bcm_notifier_lock) #15
  %75 = load ptr, ptr @bcm_busy_notifier, align 4
  %76 = getelementptr inbounds %struct.bcm_sock, ptr %75, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr i8, ptr %77, i32 -528
  store ptr %78, ptr @bcm_busy_notifier, align 4
  %79 = icmp eq ptr %77, @bcm_notifier_list
  br i1 %79, label %80, label %20

80:                                               ; preds = %74, %14
  store ptr null, ptr @bcm_busy_notifier, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  %81 = load i16, ptr @bcm_notifier_lock, align 4
  %82 = add i16 %81, 1
  store i16 %82, ptr @bcm_notifier_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %83

83:                                               ; preds = %80, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @canbcm_pernet_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @_proc_mkdir(ptr noundef nonnull @.str.29, i16 noundef zeroext 0, ptr noundef %3, ptr noundef %0, i1 noundef zeroext true) #15
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 9
  store ptr %4, ptr %5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @canbcm_pernet_exit(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.29, ptr noundef %7) #15
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_proc_mkdir(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_proto_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }

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
!9 = !{i64 2148967792}
!10 = !{i64 2148963616}
!11 = !{i64 2148963691, i64 2148963718, i64 2148963765, i64 2148963787, i64 2148963815, i64 2148963835}
!12 = !{i64 2148990795}
!13 = !{i64 488945, i64 489006}
!14 = !{i64 507645}
!15 = !{i64 491962}
!16 = !{i64 2148186333}
!17 = !{i64 583267, i64 2148073238, i64 2148073264, i64 2148073311, i64 2148073333, i64 2148073361, i64 2148073381}
!18 = !{i64 2148088468, i64 2148088500, i64 2148088529, i64 2148088563, i64 2148088594, i64 2148088617}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2149035780}
!21 = !{!"auto-init"}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i64 2149423667}
!24 = !{i64 2149423968}
!25 = !{i64 569330, i64 569354, i64 569375, i64 569392, i64 569409}
!26 = !{i64 446125, i64 446152, i64 446174, i64 446202}
!27 = !{i64 446533, i64 446560, i64 446593, i64 446614, i64 446641, i64 446667}
!28 = !{i64 2149086147}
!29 = !{i64 2149086364}
!30 = !{!"branch_weights", i32 2000, i32 2002}
