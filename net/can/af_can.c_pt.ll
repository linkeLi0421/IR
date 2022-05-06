; ModuleID = '/llk/IR/net/can/af_can.c_pt.bc'
source_filename = "../net/can/af_can.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_sock_destruct:\09\09\09\09\09"
module asm "\09.asciz \09\22can_sock_destruct\22\09\09\09\09\09"
module asm "__kstrtabns_can_sock_destruct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_send:\09\09\09\09\09"
module asm "\09.asciz \09\22can_send\22\09\09\09\09\09"
module asm "__kstrtabns_can_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_rx_register:\09\09\09\09\09"
module asm "\09.asciz \09\22can_rx_register\22\09\09\09\09\09"
module asm "__kstrtabns_can_rx_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_rx_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22can_rx_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_can_rx_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_proto_register:\09\09\09\09\09"
module asm "\09.asciz \09\22can_proto_register\22\09\09\09\09\09"
module asm "__kstrtabns_can_proto_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_proto_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22can_proto_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_can_proto_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.115 }
%union.anon.115 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.packet_type = type { i16, i8, ptr, %struct.netdevice_tracker, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.netdevice_tracker = type {}
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.88, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.88 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.can_pkg_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_dev_rcv_lists = type { [4 x %struct.hlist_head], [2048 x %struct.hlist_head], [1024 x %struct.hlist_head], i32 }
%struct.receiver = type { %struct.hlist_node, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.can_rcv_lists_stats = type { i32, i32, i32, i32 }
%struct.can_proto = type { i32, i32, ptr, ptr }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.can_frame = type { i32, %union.anon.135, i8, i8, i8, [8 x i8] }
%union.anon.135 = type { i8 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.68, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.68 = type { ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }

@__UNIQUE_ID_description418 = internal constant [52 x i8] c"can.description=Controller Area Network PF_CAN core\00", section ".modinfo", align 1
@__UNIQUE_ID_file419 = internal constant [21 x i8] c"can.file=net/can/can\00", section ".modinfo", align 1
@__UNIQUE_ID_license420 = internal constant [25 x i8] c"can.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author421 = internal constant [104 x i8] c"can.author=Urs Thuermann <urs.thuermann@volkswagen.de>, Oliver Hartkopp <oliver.hartkopp@volkswagen.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias422 = internal constant [20 x i8] c"can.alias=net-pf-29\00", section ".modinfo", align 1
@__param_str_stats_timer = internal constant [16 x i8] c"can.stats_timer\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@stats_timer = internal global i32 1, section ".data..read_mostly", align 4
@__param_stats_timer = internal constant %struct.kernel_param { ptr @__param_str_stats_timer, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.115 { ptr @stats_timer } }, section "__param", align 4
@__UNIQUE_ID_stats_timertype423 = internal constant [29 x i8] c"can.parmtype=stats_timer:int\00", section ".modinfo", align 1
@__UNIQUE_ID_stats_timer424 = internal constant [62 x i8] c"can.parm=stats_timer:enable timer for statistics (default:on)\00", section ".modinfo", align 1
@__kstrtab_can_sock_destruct = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_sock_destruct = external dso_local constant [0 x i8], align 1
@__ksymtab_can_sock_destruct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_sock_destruct to i32), ptr @__kstrtab_can_sock_destruct, ptr @__kstrtabns_can_sock_destruct }, section "___ksymtab+can_sock_destruct", align 4
@__kstrtab_can_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_send = external dso_local constant [0 x i8], align 1
@__ksymtab_can_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_send to i32), ptr @__kstrtab_can_send, ptr @__kstrtabns_can_send }, section "___ksymtab+can_send", align 4
@rcv_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__kstrtab_can_rx_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_rx_register = external dso_local constant [0 x i8], align 1
@__ksymtab_can_rx_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_rx_register to i32), ptr @__kstrtab_can_rx_register, ptr @__kstrtabns_can_rx_register }, section "___ksymtab+can_rx_register", align 4
@.str = private unnamed_addr constant [68 x i8] c"\014can: receive list entry not found for dev %s, id %03X, mask %03X\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@__kstrtab_can_rx_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_rx_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_can_rx_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_rx_unregister to i32), ptr @__kstrtab_can_rx_unregister, ptr @__kstrtabns_can_rx_unregister }, section "___ksymtab+can_rx_unregister", align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"\013can: protocol number %d out of range\0A\00", align 1
@proto_tab_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @proto_tab_lock, i64 12), ptr getelementptr (i8, ptr @proto_tab_lock, i64 12) } }, align 4
@proto_tab = internal global [8 x ptr] zeroinitializer, section ".data..read_mostly", align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"\013can: protocol %d already registered\0A\00", align 1
@__kstrtab_can_proto_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_proto_register = external dso_local constant [0 x i8], align 1
@__ksymtab_can_proto_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_proto_register to i32), ptr @__kstrtab_can_proto_register, ptr @__kstrtabns_can_proto_register }, section "___ksymtab+can_proto_register", align 4
@__kstrtab_can_proto_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_proto_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_can_proto_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_proto_unregister to i32), ptr @__kstrtab_can_proto_unregister, ptr @__kstrtabns_can_proto_unregister }, section "___ksymtab+can_proto_unregister", align 4
@canfd_packet = internal global %struct.packet_type { i16 3328, i8 0, ptr null, %struct.netdevice_tracker zeroinitializer, ptr @canfd_rcv, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@can_packet = internal global %struct.packet_type { i16 3072, i8 0, ptr null, %struct.netdevice_tracker zeroinitializer, ptr @can_rcv, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@can_pernet_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @can_pernet_init, ptr null, ptr @can_pernet_exit, ptr null, ptr null, i32 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_can__464_918_can_init6 = internal global ptr @can_init, section ".initcall6.init", align 4
@__exitcall_can_exit = internal global ptr @can_exit, section ".exitcall.exit", align 4
@init_net = external dso_local local_unnamed_addr global %struct.net, align 64
@canfd_rcv.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"\014PF_CAN: dropped non conform CAN FD skbuff: dev type %d, len %d\0A\00", align 1
@canfd_rcv.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [78 x i8] c"\014PF_CAN: dropped non conform CAN FD skbuff: dev type %d, len %d, datalen %d\0A\00", align 1
@skbcounter = internal global %struct.atomic_t zeroinitializer, align 4
@can_rcv.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"\014PF_CAN: dropped non conform CAN skbuff: dev type %d, len %d\0A\00", align 1
@can_rcv.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [75 x i8] c"\014PF_CAN: dropped non conform CAN skbuff: dev type %d, len %d, datalen %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"\016can: controller area network core\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"can_receiver\00", align 1
@can_family_ops = internal constant %struct.net_proto_family { i32 29, ptr @can_create, ptr null }, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"can-proto-%d\00", align 1
@can_create._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.can_create = private unnamed_addr constant [11 x i8] c"can_create\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"\013can: request_module (can-proto-%d) failed.\0A\00", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_alias422, ptr @__UNIQUE_ID_author421, ptr @__UNIQUE_ID_description418, ptr @__UNIQUE_ID_file419, ptr @__UNIQUE_ID_license420, ptr @__UNIQUE_ID_stats_timer424, ptr @__UNIQUE_ID_stats_timertype423, ptr @__exitcall_can_exit, ptr @__initcall__kmod_can__464_918_can_init6, ptr @__ksymtab_can_proto_register, ptr @__ksymtab_can_proto_unregister, ptr @__ksymtab_can_rx_register, ptr @__ksymtab_can_rx_unregister, ptr @__ksymtab_can_send, ptr @__ksymtab_can_sock_destruct, ptr @__param_stats_timer, ptr @can_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @can_sock_destruct(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 7
  tail call void @skb_queue_purge(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @can_send(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.anon.49, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 42, i32 13), align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  switch i32 %8, label %117 [
    i32 16, label %9
    i32 72, label %14
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  store i16 3072, ptr %10, align 8
  %11 = getelementptr inbounds %struct.canfd_frame, ptr %4, i32 0, i32 1
  %12 = load i8, ptr %11, align 4
  %13 = icmp ugt i8 %12, 8
  br i1 %13, label %117, label %19, !prof !8

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  store i16 3328, ptr %15, align 8
  %16 = getelementptr inbounds %struct.canfd_frame, ptr %4, i32 0, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = icmp ugt i8 %17, 64
  br i1 %18, label %117, label %19, !prof !8

19:                                               ; preds = %14, %9
  %20 = phi i8 [ %17, %14 ], [ %12, %9 ]
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 20
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %8, %23
  %25 = icmp ugt i8 %20, 8
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %117, label %27, !prof !9

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 32
  %29 = load i16, ptr %28, align 16
  %30 = icmp eq i16 %29, 280
  br i1 %30, label %31, label %117, !prof !10

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 14
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %117, label %36, !prof !8

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %38 = load i16, ptr %37, align 8
  %39 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %40 = load ptr, ptr %39, align 8
  %41 = ptrtoint ptr %4 to i32
  %42 = ptrtoint ptr %40 to i32
  %43 = sub i32 %41, %42
  %44 = trunc i32 %43 to i16
  %45 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  store i16 %44, ptr %45, align 2
  %46 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  store i16 %44, ptr %46, align 4
  %47 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  store i16 %44, ptr %47, align 2
  %48 = icmp eq i32 %1, 0
  %49 = and i16 %38, -104
  br i1 %48, label %95, label %50

50:                                               ; preds = %36
  %51 = or i16 %49, 37
  store i16 %51, ptr %37, align 8
  %52 = load i32, ptr %32, align 8
  %53 = and i32 %52, 262144
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %97

55:                                               ; preds = %50
  %56 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #7
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #7
  br label %119

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %90, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.sock_common, ptr %61, i32 0, i32 19
  %65 = load volatile i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %77, %63
  %68 = phi i32 [ %75, %77 ], [ %65, %63 ]
  %69 = add i32 %68, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %64) #7, !srcloc !11
  br label %70

70:                                               ; preds = %70, %67
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %64, ptr %64, i32 %68, i32 %69, ptr elementtype(i32) %64) #7, !srcloc !12
  %72 = extractvalue { i32, i32 } %71, 0
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %70

74:                                               ; preds = %70
  %75 = extractvalue { i32, i32 } %71, 1
  %76 = icmp eq i32 %75, %68
  br i1 %76, label %79, label %77, !prof !10

77:                                               ; preds = %74
  %78 = icmp eq i32 %75, 0
  br i1 %78, label %79, label %67

79:                                               ; preds = %77, %74, %63
  %80 = phi i32 [ 0, %63 ], [ %68, %74 ], [ 0, %77 ]
  %81 = add i32 %80, 1
  %82 = or i32 %81, %80
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %85, label %84, !prof !10

84:                                               ; preds = %79
  tail call void @refcount_warn_saturate(ptr noundef %64, i32 noundef 0) #7
  br label %85

85:                                               ; preds = %84, %79
  %86 = icmp eq i32 %80, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 4, i32 0, i32 1
  store ptr @sock_efree, ptr %88, align 4
  %89 = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 1
  store ptr %61, ptr %89, align 4
  br label %90

90:                                               ; preds = %87, %85, %59
  %91 = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 13
  %92 = load i16, ptr %91, align 8
  %93 = and i16 %92, -104
  %94 = or i16 %93, 33
  store i16 %94, ptr %91, align 8
  br label %97

95:                                               ; preds = %36
  %96 = or i16 %49, 32
  store i16 %96, ptr %37, align 8
  br label %97

97:                                               ; preds = %95, %90, %50
  %98 = phi ptr [ null, %50 ], [ %56, %90 ], [ null, %95 ]
  %99 = tail call i32 @dev_queue_xmit(ptr noundef %0) #7
  %100 = icmp sgt i32 %99, 0
  %101 = icmp eq i32 %99, 2
  %102 = select i1 %101, i32 0, i32 -105
  %103 = select i1 %100, i32 %102, i32 %99
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %97
  tail call void @kfree_skb_reason(ptr noundef %98, i32 noundef 0) #7
  br label %119

106:                                              ; preds = %97
  %107 = icmp eq ptr %98, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %106
  %109 = tail call i32 @netif_rx_ni(ptr noundef nonnull %98) #7
  br label %110

110:                                              ; preds = %108, %106
  %111 = getelementptr inbounds %struct.can_pkg_stats, ptr %6, i32 0, i32 2
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %112, 1
  store i32 %113, ptr %111, align 4
  %114 = getelementptr inbounds %struct.can_pkg_stats, ptr %6, i32 0, i32 14
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %115, 1
  store i32 %116, ptr %114, align 4
  br label %119

117:                                              ; preds = %31, %27, %19, %14, %9, %2
  %118 = phi i32 [ -22, %9 ], [ -22, %14 ], [ -22, %2 ], [ -1, %27 ], [ -100, %31 ], [ -90, %19 ]
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #7
  br label %119

119:                                              ; preds = %117, %110, %105, %58
  %120 = phi i32 [ %118, %117 ], [ %103, %105 ], [ 0, %110 ], [ -12, %58 ]
  ret i32 %120
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @can_rx_register(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 {
  %9 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 14
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %1, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %14 = load i16, ptr %13, align 16
  %15 = icmp eq i16 %14, 280
  br i1 %15, label %16, label %101

16:                                               ; preds = %12, %8
  %17 = load ptr, ptr @rcv_cache, align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %17, i32 noundef 3264) #7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %101, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %21) #7
  br i1 %11, label %29, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 109
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 108
  %28 = load ptr, ptr %27, align 32
  br label %32

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 10
  %31 = load ptr, ptr %30, align 8
  br label %32

32:                                               ; preds = %29, %26, %22
  %33 = phi ptr [ %31, %29 ], [ %28, %26 ], [ null, %22 ]
  %34 = and i32 %3, 536870912
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = and i32 %3, 536870911
  br label %75

38:                                               ; preds = %32
  %39 = and i32 %2, 536870912
  %40 = icmp slt i32 %3, 0
  %41 = icmp sgt i32 %2, -1
  %42 = and i1 %41, %40
  %43 = and i32 %3, -1073739777
  %44 = select i1 %42, i32 %43, i32 %3
  %45 = and i32 %44, %2
  %46 = icmp eq i32 %39, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %38
  %48 = getelementptr [4 x %struct.hlist_head], ptr %33, i32 0, i32 3
  br label %75

49:                                               ; preds = %38
  %50 = icmp eq i32 %44, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %49
  %52 = getelementptr [4 x %struct.hlist_head], ptr %33, i32 0, i32 1
  br label %75

53:                                               ; preds = %49
  %54 = icmp ugt i32 %44, -1073741825
  %55 = and i32 %45, 1073741824
  %56 = icmp eq i32 %55, 0
  %57 = and i1 %54, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = icmp sgt i32 %45, -1
  br i1 %59, label %69, label %60

60:                                               ; preds = %58
  %61 = icmp eq i32 %44, -536870913
  br i1 %61, label %62, label %73

62:                                               ; preds = %60
  %63 = lshr i32 %45, 10
  %64 = xor i32 %63, %45
  %65 = lshr i32 %45, 20
  %66 = xor i32 %64, %65
  %67 = and i32 %66, 1023
  %68 = getelementptr %struct.can_dev_rcv_lists, ptr %33, i32 0, i32 2, i32 %67
  br label %75

69:                                               ; preds = %58
  %70 = icmp eq i32 %44, -1073739777
  br i1 %70, label %71, label %73

71:                                               ; preds = %69
  %72 = getelementptr %struct.can_dev_rcv_lists, ptr %33, i32 0, i32 1, i32 %45
  br label %75

73:                                               ; preds = %69, %60, %53
  %74 = getelementptr [4 x %struct.hlist_head], ptr %33, i32 0, i32 2
  br label %75

75:                                               ; preds = %73, %71, %62, %51, %47, %36
  %76 = phi i32 [ 0, %51 ], [ %45, %71 ], [ %45, %73 ], [ %45, %62 ], [ %45, %47 ], [ %2, %36 ]
  %77 = phi i32 [ 0, %51 ], [ -1073739777, %71 ], [ %44, %73 ], [ -536870913, %62 ], [ %44, %47 ], [ %37, %36 ]
  %78 = phi ptr [ %52, %51 ], [ %72, %71 ], [ %74, %73 ], [ %68, %62 ], [ %48, %47 ], [ %33, %36 ]
  %79 = getelementptr inbounds %struct.receiver, ptr %18, i32 0, i32 1
  store i32 %76, ptr %79, align 8
  %80 = getelementptr inbounds %struct.receiver, ptr %18, i32 0, i32 2
  store i32 %77, ptr %80, align 4
  %81 = getelementptr inbounds %struct.receiver, ptr %18, i32 0, i32 3
  store i32 0, ptr %81, align 8
  %82 = getelementptr inbounds %struct.receiver, ptr %18, i32 0, i32 4
  store ptr %4, ptr %82, align 4
  %83 = getelementptr inbounds %struct.receiver, ptr %18, i32 0, i32 5
  store ptr %5, ptr %83, align 8
  %84 = getelementptr inbounds %struct.receiver, ptr %18, i32 0, i32 6
  store ptr %6, ptr %84, align 4
  %85 = getelementptr inbounds %struct.receiver, ptr %18, i32 0, i32 7
  store ptr %7, ptr %85, align 8
  %86 = load ptr, ptr %78, align 4
  store ptr %86, ptr %18, align 8
  %87 = getelementptr inbounds %struct.hlist_node, ptr %18, i32 0, i32 1
  store volatile ptr %78, ptr %87, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  store volatile ptr %18, ptr %78, align 4
  %88 = icmp eq ptr %86, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %75
  %90 = getelementptr inbounds %struct.hlist_node, ptr %86, i32 0, i32 1
  store volatile ptr %18, ptr %90, align 4
  br label %91

91:                                               ; preds = %89, %75
  %92 = getelementptr inbounds %struct.can_dev_rcv_lists, ptr %33, i32 0, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, 1
  store i32 %94, ptr %92, align 4
  %95 = getelementptr inbounds %struct.can_rcv_lists_stats, ptr %10, i32 0, i32 2
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %96, 1
  store i32 %97, ptr %95, align 4
  %98 = getelementptr inbounds %struct.can_rcv_lists_stats, ptr %10, i32 0, i32 3
  %99 = load i32, ptr %98, align 4
  %100 = tail call i32 @llvm.umax.i32(i32 %99, i32 %97)
  store i32 %100, ptr %98, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %21) #7
  br label %101

101:                                              ; preds = %91, %16, %12
  %102 = phi i32 [ 0, %91 ], [ -19, %12 ], [ -12, %16 ]
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @can_rx_unregister(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readnone %4, ptr noundef readnone %5) #0 {
  %7 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 14
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %1, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %12 = load i16, ptr %11, align 16
  %13 = icmp eq i16 %12, 280
  br i1 %13, label %14, label %132

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %15) #7
  %16 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 109
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 108
  %21 = load ptr, ptr %20, align 32
  br label %26

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %23) #7
  %24 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 10
  %25 = load ptr, ptr %24, align 8
  br label %26

26:                                               ; preds = %22, %19, %14
  %27 = phi ptr [ %23, %22 ], [ %15, %19 ], [ %15, %14 ]
  %28 = phi ptr [ %25, %22 ], [ %21, %19 ], [ null, %14 ]
  %29 = and i32 %3, 536870912
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = and i32 %3, 536870911
  br label %70

33:                                               ; preds = %26
  %34 = and i32 %2, 536870912
  %35 = icmp slt i32 %3, 0
  %36 = icmp sgt i32 %2, -1
  %37 = and i1 %36, %35
  %38 = and i32 %3, -1073739777
  %39 = select i1 %37, i32 %38, i32 %3
  %40 = and i32 %39, %2
  %41 = icmp eq i32 %34, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %33
  %43 = getelementptr [4 x %struct.hlist_head], ptr %28, i32 0, i32 3
  br label %70

44:                                               ; preds = %33
  %45 = icmp eq i32 %39, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  %47 = getelementptr [4 x %struct.hlist_head], ptr %28, i32 0, i32 1
  br label %70

48:                                               ; preds = %44
  %49 = icmp ugt i32 %39, -1073741825
  %50 = and i32 %40, 1073741824
  %51 = icmp eq i32 %50, 0
  %52 = and i1 %49, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %48
  %54 = icmp sgt i32 %40, -1
  br i1 %54, label %64, label %55

55:                                               ; preds = %53
  %56 = icmp eq i32 %39, -536870913
  br i1 %56, label %57, label %68

57:                                               ; preds = %55
  %58 = lshr i32 %40, 10
  %59 = xor i32 %58, %40
  %60 = lshr i32 %40, 20
  %61 = xor i32 %59, %60
  %62 = and i32 %61, 1023
  %63 = getelementptr %struct.can_dev_rcv_lists, ptr %28, i32 0, i32 2, i32 %62
  br label %70

64:                                               ; preds = %53
  %65 = icmp eq i32 %39, -1073739777
  br i1 %65, label %66, label %68

66:                                               ; preds = %64
  %67 = getelementptr %struct.can_dev_rcv_lists, ptr %28, i32 0, i32 1, i32 %40
  br label %70

68:                                               ; preds = %64, %55, %48
  %69 = getelementptr [4 x %struct.hlist_head], ptr %28, i32 0, i32 2
  br label %70

70:                                               ; preds = %68, %66, %57, %46, %42, %31
  %71 = phi i32 [ 0, %46 ], [ %40, %66 ], [ %40, %68 ], [ %40, %57 ], [ %40, %42 ], [ %2, %31 ]
  %72 = phi i32 [ 0, %46 ], [ -1073739777, %66 ], [ %39, %68 ], [ -536870913, %57 ], [ %39, %42 ], [ %32, %31 ]
  %73 = phi ptr [ %47, %46 ], [ %67, %66 ], [ %69, %68 ], [ %63, %57 ], [ %43, %42 ], [ %28, %31 ]
  %74 = load volatile ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %96, label %76

76:                                               ; preds = %93, %70
  %77 = phi ptr [ %94, %93 ], [ %74, %70 ]
  %78 = getelementptr inbounds %struct.receiver, ptr %77, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, %71
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.receiver, ptr %77, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, %72
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.receiver, ptr %77, i32 0, i32 4
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, %4
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.receiver, ptr %77, i32 0, i32 5
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, %5
  br i1 %92, label %99, label %93

93:                                               ; preds = %89, %85, %81, %76
  %94 = load volatile ptr, ptr %77, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %76

96:                                               ; preds = %93, %70
  %97 = select i1 %9, ptr @.str.1, ptr %1
  %98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %97, i32 noundef %71, i32 noundef %72) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %27) #7
  br label %132

99:                                               ; preds = %89
  %100 = load ptr, ptr %77, align 4
  %101 = getelementptr inbounds %struct.hlist_node, ptr %77, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  store volatile ptr %100, ptr %102, align 4
  %103 = icmp eq ptr %100, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.hlist_node, ptr %100, i32 0, i32 1
  store volatile ptr %102, ptr %105, align 4
  br label %106

106:                                              ; preds = %104, %99
  store volatile ptr inttoptr (i32 290 to ptr), ptr %101, align 4
  %107 = getelementptr inbounds %struct.can_dev_rcv_lists, ptr %28, i32 0, i32 3
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %108, -1
  store i32 %109, ptr %107, align 4
  %110 = getelementptr inbounds %struct.can_rcv_lists_stats, ptr %8, i32 0, i32 2
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %106
  %114 = add i32 %111, -1
  store i32 %114, ptr %110, align 4
  br label %115

115:                                              ; preds = %113, %106
  tail call void @_raw_spin_unlock_bh(ptr noundef %27) #7
  %116 = getelementptr inbounds %struct.receiver, ptr %77, i32 0, i32 7
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %130, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.sock_common, ptr %117, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %120) #7, !srcloc !11
  %121 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %120, ptr %120, i32 1, ptr elementtype(i32) %120) #7, !srcloc !14
  %122 = extractvalue { i32, i32, i32 } %121, 0
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %128, label %124, !prof !8

124:                                              ; preds = %119
  %125 = add i32 %122, 1
  %126 = or i32 %125, %122
  %127 = icmp sgt i32 %126, -1
  br i1 %127, label %130, label %128, !prof !10

128:                                              ; preds = %124, %119
  %129 = phi i32 [ 2, %119 ], [ 1, %124 ]
  tail call void @refcount_warn_saturate(ptr noundef %120, i32 noundef %129) #7
  br label %130

130:                                              ; preds = %128, %124, %115
  %131 = getelementptr inbounds %struct.receiver, ptr %77, i32 0, i32 8
  tail call void @call_rcu(ptr noundef %131, ptr noundef nonnull @can_rx_delete_receiver) #7
  br label %132

132:                                              ; preds = %130, %96, %10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @can_rx_delete_receiver(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -36
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr @rcv_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %5, ptr noundef %2) #7
  %6 = icmp eq ptr %4, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #7, !srcloc !11
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #7, !srcloc !16
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = icmp sgt i32 %10, 0
  br i1 %13, label %16, label %14, !prof !10

14:                                               ; preds = %12
  tail call void @refcount_warn_saturate(ptr noundef %8, i32 noundef 3) #7
  br label %16

15:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  tail call void @sk_free(ptr noundef nonnull %4) #7
  br label %16

16:                                               ; preds = %15, %14, %12, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @can_proto_register(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.can_proto, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 7
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %3) #8
  br label %20

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.can_proto, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @proto_register(ptr noundef %9, i32 noundef 0) #7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  tail call void @mutex_lock(ptr noundef nonnull @proto_tab_lock) #7
  %13 = getelementptr [8 x ptr], ptr @proto_tab, i32 0, i32 %3
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store volatile ptr %0, ptr %13, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @proto_tab_lock) #7
  br label %20

17:                                               ; preds = %12
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %3) #8
  tail call void @mutex_unlock(ptr noundef nonnull @proto_tab_lock) #7
  %19 = load ptr, ptr %8, align 4
  tail call void @proto_unregister(ptr noundef %19) #7
  br label %20

20:                                               ; preds = %17, %16, %7, %5
  %21 = phi i32 [ -22, %5 ], [ %10, %7 ], [ -16, %17 ], [ %10, %16 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @can_proto_unregister(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.can_proto, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  tail call void @mutex_lock(ptr noundef nonnull @proto_tab_lock) #7
  %4 = getelementptr [8 x ptr], ptr @proto_tab, i32 0, i32 %3
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %8, label %7, !prof !10

7:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/can/af_can.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 783, 0\0A.popsection", ""() #7, !srcloc !18
  unreachable

8:                                                ; preds = %1
  store volatile ptr null, ptr %4, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @proto_tab_lock) #7
  tail call void @synchronize_rcu() #7
  %9 = getelementptr inbounds %struct.can_proto, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  tail call void @proto_unregister(ptr noundef %10) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @can_exit() #3 section ".exit.text" {
  tail call void @dev_remove_pack(ptr noundef nonnull @canfd_packet) #7
  tail call void @dev_remove_pack(ptr noundef nonnull @can_packet) #7
  tail call void @sock_unregister(i32 noundef 29) #7
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @can_pernet_ops) #7
  tail call void @rcu_barrier() #7
  %1 = load ptr, ptr @rcv_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @can_init() #3 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #8
  %2 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.11, i32 noundef 44, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  store ptr %2, ptr @rcv_cache, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @can_pernet_ops) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = tail call i32 @sock_register(ptr noundef nonnull @can_family_ops) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @dev_add_pack(ptr noundef nonnull @can_packet) #7
  tail call void @dev_add_pack(ptr noundef nonnull @canfd_packet) #7
  br label %15

11:                                               ; preds = %7
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @can_pernet_ops) #7
  br label %12

12:                                               ; preds = %11, %4
  %13 = phi i32 [ %5, %4 ], [ %8, %11 ]
  %14 = load ptr, ptr @rcv_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %14) #7
  br label %15

15:                                               ; preds = %12, %10, %0
  %16 = phi i32 [ %13, %12 ], [ 0, %10 ], [ -12, %0 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_efree(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @canfd_rcv(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %8 = load i16, ptr %7, align 16
  %9 = icmp eq i16 %8, 280
  br i1 %9, label %10, label %14, !prof !10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 72
  br i1 %13, label %21, label %14, !prof !10

14:                                               ; preds = %10, %4
  %15 = load i1, ptr @canfd_rcv.__already_done, align 1
  br i1 %15, label %31, label %16, !prof !10

16:                                               ; preds = %14
  store i1 true, ptr @canfd_rcv.__already_done, align 1
  %17 = zext i16 %8 to i32
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %17, i32 noundef %19) #8
  br label %31

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.canfd_frame, ptr %6, i32 0, i32 1
  %23 = load i8, ptr %22, align 4
  %24 = icmp ugt i8 %23, 64
  br i1 %24, label %25, label %30, !prof !8

25:                                               ; preds = %21
  %26 = load i1, ptr @canfd_rcv.__already_done.5, align 1
  br i1 %26, label %31, label %27, !prof !10

27:                                               ; preds = %25
  store i1 true, ptr @canfd_rcv.__already_done.5, align 1
  %28 = zext i8 %23 to i32
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 280, i32 noundef 72, i32 noundef %28) #8
  br label %31

30:                                               ; preds = %21
  tail call fastcc void @can_receive(ptr noundef %0, ptr noundef %1)
  br label %32

31:                                               ; preds = %27, %25, %16, %14
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #7
  br label %32

32:                                               ; preds = %31, %30
  %33 = phi i32 [ 1, %31 ], [ 0, %30 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @can_receive(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 42, i32 13), align 4
  %4 = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 13
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.can_skb_priv, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %15, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @skbcounter) #7, !srcloc !11
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @skbcounter, ptr nonnull @skbcounter, i32 1, ptr nonnull elementtype(i32) @skbcounter) #7, !srcloc !20
  %17 = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !21
  %18 = load ptr, ptr %10, align 8
  %19 = getelementptr inbounds %struct.can_skb_priv, ptr %18, i32 0, i32 1
  store i32 %17, ptr %19, align 4
  %20 = load ptr, ptr %10, align 8
  %21 = getelementptr inbounds %struct.can_skb_priv, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %15, label %24

24:                                               ; preds = %15, %2
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !22
  %25 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 42, i32 10), align 16
  %26 = tail call fastcc i32 @can_rcv_filter(ptr noundef %25, ptr noundef %0)
  %27 = icmp eq ptr %1, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 109
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 108
  %34 = load ptr, ptr %33, align 32
  br label %37

35:                                               ; preds = %24
  %36 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 42, i32 10), align 16
  br label %37

37:                                               ; preds = %35, %32, %28
  %38 = phi ptr [ %36, %35 ], [ %34, %32 ], [ null, %28 ]
  %39 = tail call fastcc i32 @can_rcv_filter(ptr noundef %38, ptr noundef %0)
  %40 = add i32 %39, %26
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !23
  tail call void @consume_skb(ptr noundef %0) #7
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 4
  %46 = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 15
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %42, %37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @can_rcv_filter(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.can_dev_rcv_lists, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %158, label %9

9:                                                ; preds = %2
  %10 = and i32 %5, 536870912
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %9
  %13 = load volatile ptr, ptr %0, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %158, label %15

15:                                               ; preds = %31, %12
  %16 = phi ptr [ %33, %31 ], [ %13, %12 ]
  %17 = phi i32 [ %32, %31 ], [ 0, %12 ]
  %18 = getelementptr inbounds %struct.receiver, ptr %16, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, %5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.receiver, ptr %16, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.receiver, ptr %16, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  tail call void %24(ptr noundef %1, ptr noundef %26) #7
  %27 = getelementptr inbounds %struct.receiver, ptr %16, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = add i32 %17, 1
  br label %31

31:                                               ; preds = %22, %15
  %32 = phi i32 [ %30, %22 ], [ %17, %15 ]
  %33 = load volatile ptr, ptr %16, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %158, label %15

35:                                               ; preds = %9
  %36 = getelementptr [4 x %struct.hlist_head], ptr %0, i32 0, i32 1
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %52, label %39

39:                                               ; preds = %39, %35
  %40 = phi ptr [ %50, %39 ], [ %37, %35 ]
  %41 = phi i32 [ %49, %39 ], [ 0, %35 ]
  %42 = getelementptr inbounds %struct.receiver, ptr %40, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.receiver, ptr %40, i32 0, i32 5
  %45 = load ptr, ptr %44, align 4
  tail call void %43(ptr noundef %1, ptr noundef %45) #7
  %46 = getelementptr inbounds %struct.receiver, ptr %40, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 4
  %49 = add i32 %41, 1
  %50 = load volatile ptr, ptr %40, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %39

52:                                               ; preds = %39, %35
  %53 = phi i32 [ 0, %35 ], [ %49, %39 ]
  %54 = getelementptr [4 x %struct.hlist_head], ptr %0, i32 0, i32 2
  %55 = load volatile ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %79, label %57

57:                                               ; preds = %75, %52
  %58 = phi ptr [ %77, %75 ], [ %55, %52 ]
  %59 = phi i32 [ %76, %75 ], [ %53, %52 ]
  %60 = getelementptr inbounds %struct.receiver, ptr %58, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, %5
  %63 = getelementptr inbounds %struct.receiver, ptr %58, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.receiver, ptr %58, i32 0, i32 4
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.receiver, ptr %58, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  tail call void %68(ptr noundef %1, ptr noundef %70) #7
  %71 = getelementptr inbounds %struct.receiver, ptr %58, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, 1
  store i32 %73, ptr %71, align 4
  %74 = add i32 %59, 1
  br label %75

75:                                               ; preds = %66, %57
  %76 = phi i32 [ %74, %66 ], [ %59, %57 ]
  %77 = load volatile ptr, ptr %58, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %57

79:                                               ; preds = %75, %52
  %80 = phi i32 [ %53, %52 ], [ %76, %75 ]
  %81 = getelementptr [4 x %struct.hlist_head], ptr %0, i32 0, i32 3
  %82 = load volatile ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %106, label %84

84:                                               ; preds = %102, %79
  %85 = phi ptr [ %104, %102 ], [ %82, %79 ]
  %86 = phi i32 [ %103, %102 ], [ %80, %79 ]
  %87 = getelementptr inbounds %struct.receiver, ptr %85, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, %5
  %90 = getelementptr inbounds %struct.receiver, ptr %85, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %102, label %93

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.receiver, ptr %85, i32 0, i32 4
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.receiver, ptr %85, i32 0, i32 5
  %97 = load ptr, ptr %96, align 4
  tail call void %95(ptr noundef %1, ptr noundef %97) #7
  %98 = getelementptr inbounds %struct.receiver, ptr %85, i32 0, i32 3
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %99, 1
  store i32 %100, ptr %98, align 4
  %101 = add i32 %86, 1
  br label %102

102:                                              ; preds = %93, %84
  %103 = phi i32 [ %101, %93 ], [ %86, %84 ]
  %104 = load volatile ptr, ptr %85, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %84

106:                                              ; preds = %102, %79
  %107 = phi i32 [ %80, %79 ], [ %103, %102 ]
  %108 = and i32 %5, 1073741824
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %158

110:                                              ; preds = %106
  %111 = icmp sgt i32 %5, -1
  br i1 %111, label %140, label %112

112:                                              ; preds = %110
  %113 = lshr i32 %5, 10
  %114 = xor i32 %113, %5
  %115 = lshr i32 %5, 20
  %116 = xor i32 %114, %115
  %117 = and i32 %116, 1023
  %118 = getelementptr %struct.can_dev_rcv_lists, ptr %0, i32 0, i32 2, i32 %117
  %119 = load volatile ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %158, label %121

121:                                              ; preds = %136, %112
  %122 = phi ptr [ %138, %136 ], [ %119, %112 ]
  %123 = phi i32 [ %137, %136 ], [ %107, %112 ]
  %124 = getelementptr inbounds %struct.receiver, ptr %122, i32 0, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, %5
  br i1 %126, label %127, label %136

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.receiver, ptr %122, i32 0, i32 4
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.receiver, ptr %122, i32 0, i32 5
  %131 = load ptr, ptr %130, align 4
  tail call void %129(ptr noundef %1, ptr noundef %131) #7
  %132 = getelementptr inbounds %struct.receiver, ptr %122, i32 0, i32 3
  %133 = load i32, ptr %132, align 4
  %134 = add i32 %133, 1
  store i32 %134, ptr %132, align 4
  %135 = add i32 %123, 1
  br label %136

136:                                              ; preds = %127, %121
  %137 = phi i32 [ %135, %127 ], [ %123, %121 ]
  %138 = load volatile ptr, ptr %122, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %158, label %121

140:                                              ; preds = %110
  %141 = and i32 %5, 2047
  %142 = getelementptr %struct.can_dev_rcv_lists, ptr %0, i32 0, i32 1, i32 %141
  %143 = load volatile ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %158, label %145

145:                                              ; preds = %145, %140
  %146 = phi ptr [ %156, %145 ], [ %143, %140 ]
  %147 = phi i32 [ %155, %145 ], [ %107, %140 ]
  %148 = getelementptr inbounds %struct.receiver, ptr %146, i32 0, i32 4
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.receiver, ptr %146, i32 0, i32 5
  %151 = load ptr, ptr %150, align 4
  tail call void %149(ptr noundef %1, ptr noundef %151) #7
  %152 = getelementptr inbounds %struct.receiver, ptr %146, i32 0, i32 3
  %153 = load i32, ptr %152, align 4
  %154 = add i32 %153, 1
  store i32 %154, ptr %152, align 4
  %155 = add i32 %147, 1
  %156 = load volatile ptr, ptr %146, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %145

158:                                              ; preds = %145, %140, %136, %112, %106, %31, %12, %2
  %159 = phi i32 [ 0, %2 ], [ %107, %106 ], [ %107, %140 ], [ %107, %112 ], [ 0, %12 ], [ %155, %145 ], [ %137, %136 ], [ %32, %31 ]
  ret i32 %159
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @can_rcv(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %8 = load i16, ptr %7, align 16
  %9 = icmp eq i16 %8, 280
  br i1 %9, label %10, label %14, !prof !10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 16
  br i1 %13, label %21, label %14, !prof !10

14:                                               ; preds = %10, %4
  %15 = load i1, ptr @can_rcv.__already_done, align 1
  br i1 %15, label %31, label %16, !prof !10

16:                                               ; preds = %14
  store i1 true, ptr @can_rcv.__already_done, align 1
  %17 = zext i16 %8 to i32
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %17, i32 noundef %19) #8
  br label %31

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.canfd_frame, ptr %6, i32 0, i32 1
  %23 = load i8, ptr %22, align 4
  %24 = icmp ugt i8 %23, 8
  br i1 %24, label %25, label %30, !prof !8

25:                                               ; preds = %21
  %26 = load i1, ptr @can_rcv.__already_done.8, align 1
  br i1 %26, label %31, label %27, !prof !10

27:                                               ; preds = %25
  store i1 true, ptr @can_rcv.__already_done.8, align 1
  %28 = zext i8 %23 to i32
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 280, i32 noundef 16, i32 noundef %28) #8
  br label %31

30:                                               ; preds = %21
  tail call fastcc void @can_receive(ptr noundef %0, ptr noundef %1)
  br label %32

31:                                               ; preds = %27, %25, %16, %14
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #7
  br label %32

32:                                               ; preds = %31, %30
  %33 = phi i32 [ 1, %31 ], [ 0, %30 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @can_pernet_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 11
  store i32 0, ptr %2, align 4
  %3 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 12308, i32 noundef 3520, i32 noundef 2) #9
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 10
  store ptr %3, ptr %4, align 8
  %5 = icmp eq ptr %3, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 64) #10
  %9 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 13
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 16) #10
  %14 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 14
  store ptr %13, ptr %14, align 8
  %15 = icmp eq ptr %13, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %11
  %17 = load i32, ptr @stats_timer, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 12
  tail call void @init_timer_key(ptr noundef %20, ptr noundef nonnull @can_stat_update, i32 noundef 0, ptr noundef null, ptr noundef null) #7
  %21 = load volatile i32, ptr @jiffies, align 64
  %22 = add i32 %21, 100
  %23 = tail call i32 @round_jiffies(i32 noundef %22) #7
  %24 = tail call i32 @mod_timer(ptr noundef %20, i32 noundef %23) #7
  br label %25

25:                                               ; preds = %19, %16
  %26 = load volatile i32, ptr @jiffies, align 64
  %27 = load ptr, ptr %9, align 4
  store i32 %26, ptr %27, align 4
  tail call void @can_init_proc(ptr noundef %0) #7
  br label %32

28:                                               ; preds = %11
  %29 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %29) #7
  br label %30

30:                                               ; preds = %28, %6
  %31 = load ptr, ptr %4, align 8
  tail call void @kfree(ptr noundef %31) #7
  br label %32

32:                                               ; preds = %30, %25, %1
  %33 = phi i32 [ 0, %25 ], [ -12, %1 ], [ -12, %30 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @can_pernet_exit(ptr noundef %0) #0 {
  tail call void @can_remove_proc(ptr noundef %0) #7
  %2 = load i32, ptr @stats_timer, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 12
  %6 = tail call i32 @del_timer_sync(ptr noundef %5) #7
  br label %7

7:                                                ; preds = %4, %1
  %8 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 10
  %9 = load ptr, ptr %8, align 8
  tail call void @kfree(ptr noundef %9) #7
  %10 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 13
  %11 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %11) #7
  %12 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 14
  %13 = load ptr, ptr %12, align 8
  tail call void @kfree(ptr noundef %13) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_stat_update(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_init_proc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_remove_proc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @can_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  store i32 1, ptr %1, align 64
  %5 = icmp ugt i32 %2, 7
  br i1 %5, label %85, label %6

6:                                                ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !22
  %7 = getelementptr [8 x ptr], ptr @proto_tab, i32 0, i32 %2
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.can_proto, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.proto, ptr %12, i32 0, i32 49
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 @try_module_get(ptr noundef %14) #7
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !23
  br label %36

17:                                               ; preds = %10, %6
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !23
  %18 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.12, i32 noundef %2) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @___ratelimit(ptr noundef nonnull @can_create._rs, ptr noundef nonnull @__func__.can_create) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %2) #8
  br label %25

25:                                               ; preds = %23, %20, %17
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !22
  %26 = load volatile ptr, ptr %7, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.can_proto, ptr %26, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.proto, ptr %30, i32 0, i32 49
  %32 = load ptr, ptr %31, align 4
  %33 = tail call zeroext i1 @try_module_get(ptr noundef %32) #7
  br i1 %33, label %35, label %34

34:                                               ; preds = %28, %25
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !23
  br label %85

35:                                               ; preds = %28
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !23
  br label %36

36:                                               ; preds = %35, %16
  %37 = phi i32 [ 0, %16 ], [ %18, %35 ]
  %38 = phi ptr [ %8, %16 ], [ %26, %35 ]
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 1
  %41 = load i16, ptr %40, align 4
  %42 = sext i16 %41 to i32
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %79

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.can_proto, ptr %38, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 5
  store ptr %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.can_proto, ptr %38, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = tail call ptr @sk_alloc(ptr noundef %0, i32 noundef 29, i32 noundef 3264, ptr noundef %49, i32 noundef %3) #7
  %51 = icmp eq ptr %50, null
  br i1 %51, label %79, label %52

52:                                               ; preds = %44
  tail call void @sock_init_data(ptr noundef %1, ptr noundef nonnull %50) #7
  %53 = getelementptr inbounds %struct.sock, ptr %50, i32 0, i32 80
  store ptr @can_sock_destruct, ptr %53, align 8
  %54 = getelementptr inbounds %struct.sock_common, ptr %50, i32 0, i32 8
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.proto, ptr %55, i32 0, i32 6
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %52
  %60 = tail call i32 %57(ptr noundef nonnull %50) #7
  br label %61

61:                                               ; preds = %59, %52
  %62 = phi i32 [ %60, %59 ], [ %37, %52 ]
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %79, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.sock, ptr %50, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %65) #7
  %66 = getelementptr inbounds %struct.sock_common, ptr %50, i32 0, i32 13
  %67 = load i32, ptr %66, align 4
  %68 = or i32 %67, 1
  store i32 %68, ptr %66, align 4
  %69 = getelementptr inbounds %struct.sock, ptr %50, i32 0, i32 71
  store ptr null, ptr %69, align 8
  %70 = getelementptr inbounds %struct.sock, ptr %50, i32 0, i32 17
  store ptr null, ptr %70, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %65) #7
  %71 = getelementptr inbounds %struct.sock_common, ptr %50, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %71) #7, !srcloc !11
  %72 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %71, ptr %71, i32 1, ptr elementtype(i32) %71) #7, !srcloc !16
  %73 = extractvalue { i32, i32, i32 } %72, 0
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %78, label %75

75:                                               ; preds = %64
  %76 = icmp sgt i32 %73, 0
  br i1 %76, label %79, label %77, !prof !10

77:                                               ; preds = %75
  tail call void @refcount_warn_saturate(ptr noundef %71, i32 noundef 3) #7
  br label %79

78:                                               ; preds = %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  tail call void @sk_free(ptr noundef nonnull %50) #7
  br label %79

79:                                               ; preds = %78, %77, %75, %61, %44, %36
  %80 = phi i32 [ 0, %61 ], [ -91, %36 ], [ -12, %44 ], [ %62, %75 ], [ %62, %77 ], [ %62, %78 ]
  %81 = getelementptr inbounds %struct.can_proto, ptr %38, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.proto, ptr %82, i32 0, i32 49
  %84 = load ptr, ptr %83, align 4
  tail call void @module_put(ptr noundef %84) #7
  br label %85

85:                                               ; preds = %79, %34, %4
  %86 = phi i32 [ %80, %79 ], [ -22, %4 ], [ -93, %34 ]
  ret i32 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 4001}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 564945, i64 2148054916, i64 2148054942, i64 2148054989, i64 2148055011, i64 2148055039, i64 2148055059}
!12 = !{i64 551008, i64 551032, i64 551053, i64 551070, i64 551087}
!13 = !{i64 2150710763}
!14 = !{i64 2148067789, i64 2148067821, i64 2148067850, i64 2148067884, i64 2148067915, i64 2148067938}
!15 = !{i64 2148168011}
!16 = !{i64 2148070146, i64 2148070178, i64 2148070207, i64 2148070241, i64 2148070272, i64 2148070295}
!17 = !{i64 2149017458}
!18 = !{i64 2155572594, i64 2155573075, i64 2155572631, i64 2155572687, i64 2155572721, i64 2155572745, i64 2155572786, i64 2155572807, i64 2155572835, i64 2155572869}
!19 = !{i64 2148164177}
!20 = !{i64 2148067015, i64 2148067047, i64 2148067076, i64 2148067110, i64 2148067141, i64 2148067164}
!21 = !{i64 2148164380}
!22 = !{i64 2149067825}
!23 = !{i64 2149068042}
