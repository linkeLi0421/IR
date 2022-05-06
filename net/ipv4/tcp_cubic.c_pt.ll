; ModuleID = '/llk/IR/net/ipv4/tcp_cubic.c_pt.bc'
source_filename = "../net/ipv4/tcp_cubic.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.155 }
%union.anon.155 = type { ptr }
%struct.tcp_congestion_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.list_head, i32, i32, ptr, ptr, [40 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.127, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.127 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.182, %struct.anon.183, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.79, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.117, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.118, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon.38, %union.anon.40, %union.anon.41, i16, i8, i8, i32, %union.anon.43, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.71, [0 x i32], %union.anon.72, i16, i16, %union.anon.73, %struct.refcount_struct, [0 x i32], %union.anon.74 }
%union.anon.38 = type { i64 }
%union.anon.40 = type { i32 }
%union.anon.41 = type { i32 }
%union.anon.43 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.70 }
%union.anon.70 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { i32 }
%union.anon.72 = type { %struct.hlist_node }
%union.anon.73 = type { i32 }
%union.anon.74 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.79 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.117 = type { ptr }
%union.anon.118 = type { ptr }
%struct.sk_buff_head = type { %union.anon.77, i32, %struct.spinlock }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.122 }
%union.anon.122 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.182 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.183 = type { i32, i32, i32, i32 }
%struct.bictcp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i32 }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.184, %struct.anon.185, %struct.anon.186, i32, ptr, ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.184 = type { i32, i32, i64 }
%struct.anon.185 = type { i32, i32, i64 }
%struct.anon.186 = type { i32, i32 }
%struct.ack_sample = type { i32, i32, i32 }

@__param_str_fast_convergence = internal constant [27 x i8] c"tcp_cubic.fast_convergence\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@fast_convergence = internal global i32 1, section ".data..read_mostly", align 4
@__param_fast_convergence = internal constant %struct.kernel_param { ptr @__param_str_fast_convergence, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.155 { ptr @fast_convergence } }, section "__param", align 4
@__UNIQUE_ID_fast_convergencetype533 = internal constant [40 x i8] c"tcp_cubic.parmtype=fast_convergence:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fast_convergence534 = internal constant [61 x i8] c"tcp_cubic.parm=fast_convergence:turn on/off fast convergence\00", section ".modinfo", align 1
@__param_str_beta = internal constant [15 x i8] c"tcp_cubic.beta\00", align 1
@beta = internal global i32 717, section ".data..read_mostly", align 4
@__param_beta = internal constant %struct.kernel_param { ptr @__param_str_beta, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.155 { ptr @beta } }, section "__param", align 4
@__UNIQUE_ID_betatype535 = internal constant [28 x i8] c"tcp_cubic.parmtype=beta:int\00", section ".modinfo", align 1
@__UNIQUE_ID_beta536 = internal constant [53 x i8] c"tcp_cubic.parm=beta:beta for multiplicative increase\00", section ".modinfo", align 1
@__param_str_initial_ssthresh = internal constant [27 x i8] c"tcp_cubic.initial_ssthresh\00", align 1
@initial_ssthresh = internal global i32 0, section ".data..read_mostly", align 4
@__param_initial_ssthresh = internal constant %struct.kernel_param { ptr @__param_str_initial_ssthresh, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.155 { ptr @initial_ssthresh } }, section "__param", align 4
@__UNIQUE_ID_initial_ssthreshtype537 = internal constant [40 x i8] c"tcp_cubic.parmtype=initial_ssthresh:int\00", section ".modinfo", align 1
@__UNIQUE_ID_initial_ssthresh538 = internal constant [70 x i8] c"tcp_cubic.parm=initial_ssthresh:initial value of slow start threshold\00", section ".modinfo", align 1
@__param_str_bic_scale = internal constant [20 x i8] c"tcp_cubic.bic_scale\00", align 1
@bic_scale = internal global i32 41, section ".data..read_mostly", align 4
@__param_bic_scale = internal constant %struct.kernel_param { ptr @__param_str_bic_scale, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.155 { ptr @bic_scale } }, section "__param", align 4
@__UNIQUE_ID_bic_scaletype539 = internal constant [33 x i8] c"tcp_cubic.parmtype=bic_scale:int\00", section ".modinfo", align 1
@__UNIQUE_ID_bic_scale540 = internal constant [88 x i8] c"tcp_cubic.parm=bic_scale:scale (scaled by 1024) value for bic function (bic_scale/1024)\00", section ".modinfo", align 1
@__param_str_tcp_friendliness = internal constant [27 x i8] c"tcp_cubic.tcp_friendliness\00", align 1
@tcp_friendliness = internal global i32 1, section ".data..read_mostly", align 4
@__param_tcp_friendliness = internal constant %struct.kernel_param { ptr @__param_str_tcp_friendliness, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.155 { ptr @tcp_friendliness } }, section "__param", align 4
@__UNIQUE_ID_tcp_friendlinesstype541 = internal constant [40 x i8] c"tcp_cubic.parmtype=tcp_friendliness:int\00", section ".modinfo", align 1
@__UNIQUE_ID_tcp_friendliness542 = internal constant [61 x i8] c"tcp_cubic.parm=tcp_friendliness:turn on/off tcp friendliness\00", section ".modinfo", align 1
@__param_str_hystart = internal constant [18 x i8] c"tcp_cubic.hystart\00", align 1
@hystart = internal global i32 1, section ".data..read_mostly", align 4
@__param_hystart = internal constant %struct.kernel_param { ptr @__param_str_hystart, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.155 { ptr @hystart } }, section "__param", align 4
@__UNIQUE_ID_hystarttype543 = internal constant [31 x i8] c"tcp_cubic.parmtype=hystart:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hystart544 = internal constant [63 x i8] c"tcp_cubic.parm=hystart:turn on/off hybrid slow start algorithm\00", section ".modinfo", align 1
@__param_str_hystart_detect = internal constant [25 x i8] c"tcp_cubic.hystart_detect\00", align 1
@hystart_detect = internal global i32 3, section ".data..read_mostly", align 4
@__param_hystart_detect = internal constant %struct.kernel_param { ptr @__param_str_hystart_detect, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.155 { ptr @hystart_detect } }, section "__param", align 4
@__UNIQUE_ID_hystart_detecttype545 = internal constant [38 x i8] c"tcp_cubic.parmtype=hystart_detect:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hystart_detect546 = internal constant [125 x i8] c"tcp_cubic.parm=hystart_detect:hybrid slow start detection mechanisms 1: packet-train 2: delay 3: both packet-train and delay\00", section ".modinfo", align 1
@__param_str_hystart_low_window = internal constant [29 x i8] c"tcp_cubic.hystart_low_window\00", align 1
@hystart_low_window = internal global i32 16, section ".data..read_mostly", align 4
@__param_hystart_low_window = internal constant %struct.kernel_param { ptr @__param_str_hystart_low_window, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.155 { ptr @hystart_low_window } }, section "__param", align 4
@__UNIQUE_ID_hystart_low_windowtype547 = internal constant [42 x i8] c"tcp_cubic.parmtype=hystart_low_window:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hystart_low_window548 = internal constant [73 x i8] c"tcp_cubic.parm=hystart_low_window:lower bound cwnd for hybrid slow start\00", section ".modinfo", align 1
@__param_str_hystart_ack_delta_us = internal constant [31 x i8] c"tcp_cubic.hystart_ack_delta_us\00", align 1
@hystart_ack_delta_us = internal global i32 2000, section ".data..read_mostly", align 4
@__param_hystart_ack_delta_us = internal constant %struct.kernel_param { ptr @__param_str_hystart_ack_delta_us, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.155 { ptr @hystart_ack_delta_us } }, section "__param", align 4
@__UNIQUE_ID_hystart_ack_delta_ustype549 = internal constant [44 x i8] c"tcp_cubic.parmtype=hystart_ack_delta_us:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hystart_ack_delta_us550 = internal constant [83 x i8] c"tcp_cubic.parm=hystart_ack_delta_us:spacing between ack's indicating train (usecs)\00", section ".modinfo", align 1
@cubictcp = internal global %struct.tcp_congestion_ops { ptr @cubictcp_recalc_ssthresh, ptr @cubictcp_cong_avoid, ptr @cubictcp_state, ptr @cubictcp_cwnd_event, ptr null, ptr @cubictcp_acked, ptr null, ptr null, ptr @tcp_reno_undo_cwnd, ptr null, ptr null, [16 x i8] c"cubic\00\00\00\00\00\00\00\00\00\00\00", ptr null, %struct.list_head zeroinitializer, i32 0, i32 0, ptr @cubictcp_init, ptr null, [40 x i8] undef }, section ".data..read_mostly", align 64
@__initcall__kmod_tcp_cubic__563_550_cubictcp_register6 = internal global ptr @cubictcp_register, section ".initcall6.init", align 4
@__exitcall_cubictcp_unregister = internal global ptr @cubictcp_unregister, section ".exitcall.exit", align 4
@__UNIQUE_ID_author564 = internal constant [47 x i8] c"tcp_cubic.author=Sangtae Ha, Stephen Hemminger\00", section ".modinfo", align 1
@__UNIQUE_ID_file565 = internal constant [34 x i8] c"tcp_cubic.file=net/ipv4/tcp_cubic\00", section ".modinfo", align 1
@__UNIQUE_ID_license566 = internal constant [22 x i8] c"tcp_cubic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description567 = internal constant [32 x i8] c"tcp_cubic.description=CUBIC TCP\00", section ".modinfo", align 1
@__UNIQUE_ID_version568 = internal constant [22 x i8] c"tcp_cubic.version=2.3\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"tcp_cubic\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"2.3\00", align 1
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292 }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@cube_factor = internal unnamed_addr global i64 0, section ".data..read_mostly", align 8
@cube_rtt_scale = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@beta_scale = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@cubic_root.v = internal unnamed_addr constant [64 x i8] c"\00666vvvv{\81\86\8A\8F\93\97\9C\9D\A1\A4\A8\AA\AD\B0\B3\B5\B9\BB\BE\C0\C2\C5\C7\C8\CA\CC\CE\D1\D3\D5\D7\D9\DB\DD\DE\E0\E1\E3\E5\E7\E8\EA\EC\ED\EF\F0\F2\F4\F5\F6\F8\FA\FB\FC\FE", align 1
@init_net = external dso_local local_unnamed_addr global %struct.net, align 64
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author564, ptr @__UNIQUE_ID_beta536, ptr @__UNIQUE_ID_betatype535, ptr @__UNIQUE_ID_bic_scale540, ptr @__UNIQUE_ID_bic_scaletype539, ptr @__UNIQUE_ID_description567, ptr @__UNIQUE_ID_fast_convergence534, ptr @__UNIQUE_ID_fast_convergencetype533, ptr @__UNIQUE_ID_file565, ptr @__UNIQUE_ID_hystart544, ptr @__UNIQUE_ID_hystart_ack_delta_us550, ptr @__UNIQUE_ID_hystart_ack_delta_ustype549, ptr @__UNIQUE_ID_hystart_detect546, ptr @__UNIQUE_ID_hystart_detecttype545, ptr @__UNIQUE_ID_hystart_low_window548, ptr @__UNIQUE_ID_hystart_low_windowtype547, ptr @__UNIQUE_ID_hystarttype543, ptr @__UNIQUE_ID_initial_ssthresh538, ptr @__UNIQUE_ID_initial_ssthreshtype537, ptr @__UNIQUE_ID_license566, ptr @__UNIQUE_ID_tcp_friendliness542, ptr @__UNIQUE_ID_tcp_friendlinesstype541, ptr @__UNIQUE_ID_version568, ptr @__exitcall_cubictcp_unregister, ptr @__initcall__kmod_tcp_cubic__563_550_cubictcp_register6, ptr @__modver_attr, ptr @__param_beta, ptr @__param_bic_scale, ptr @__param_fast_convergence, ptr @__param_hystart, ptr @__param_hystart_ack_delta_us, ptr @__param_hystart_detect, ptr @__param_hystart_low_window, ptr @__param_initial_ssthresh, ptr @__param_tcp_friendliness, ptr @cubictcp_unregister], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @cubictcp_unregister() #0 section ".exit.text" {
  tail call void @tcp_unregister_congestion_control(ptr noundef nonnull @cubictcp) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_unregister_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cubictcp_register() #0 section ".init.text" {
  %1 = load i32, ptr @beta, align 4
  %2 = shl i32 %1, 3
  %3 = add i32 %2, 8192
  %4 = sdiv i32 %3, 3
  %5 = sub i32 1024, %1
  %6 = sdiv i32 %4, %5
  store i32 %6, ptr @beta_scale, align 4
  %7 = load i32, ptr @bic_scale, align 4
  %8 = mul i32 %7, 10
  store i32 %8, ptr @cube_rtt_scale, align 4
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 1099511627776) #10, !srcloc !9
  %10 = extractvalue { i64, i64 } %9, 1
  store i64 %10, ptr @cube_factor, align 8
  %11 = tail call i32 @tcp_register_congestion_control(ptr noundef nonnull @cubictcp) #9
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @cubictcp_recalc_ssthresh(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 28
  %3 = getelementptr inbounds %struct.bictcp, ptr %2, i32 0, i32 7
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.bictcp, ptr %2, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %5, %7
  %9 = load i32, ptr @fast_convergence, align 4
  %10 = icmp ne i32 %9, 0
  %11 = select i1 %8, i1 %10, i1 false
  %12 = load i32, ptr @beta, align 4
  %13 = add i32 %12, 1024
  %14 = mul i32 %13, %5
  %15 = lshr i32 %14, 11
  %16 = select i1 %11, i32 %15, i32 %5
  store i32 %16, ptr %6, align 4
  %17 = mul i32 %12, %5
  %18 = lshr i32 %17, 10
  %19 = tail call i32 @llvm.umax.i32(i32 %18, i32 2)
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cubictcp_cong_avoid(ptr noundef %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 28
  %5 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 53
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %12, 1
  %14 = icmp ult i32 %6, %13
  br i1 %14, label %19, label %200

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 39
  %17 = load i8, ptr %16, align 1
  %18 = icmp slt i8 %17, 0
  br i1 %18, label %24, label %200

19:                                               ; preds = %10
  %20 = tail call i32 @tcp_slow_start(ptr noundef %0, i32 noundef %2) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %200, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %5, align 8
  br label %24

24:                                               ; preds = %22, %15
  %25 = phi i32 [ %23, %22 ], [ %6, %15 ]
  %26 = phi i32 [ %20, %22 ], [ %2, %15 ]
  %27 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 28, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %26
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 28, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %25
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load volatile i32, ptr @jiffies, align 64
  %35 = getelementptr inbounds %struct.bictcp, ptr %4, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = sub i32 %34, %36
  %38 = icmp slt i32 %37, 4
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, ptr %4, align 4
  br label %198

41:                                               ; preds = %33, %24
  %42 = getelementptr inbounds %struct.bictcp, ptr %4, i32 0, i32 7
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = load volatile i32, ptr @jiffies, align 64
  %47 = getelementptr inbounds %struct.bictcp, ptr %4, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %168, label %50

50:                                               ; preds = %45
  store i32 %25, ptr %30, align 4
  %51 = load volatile i32, ptr @jiffies, align 64
  store i32 %51, ptr %47, align 4
  br label %118

52:                                               ; preds = %41
  store i32 %25, ptr %30, align 4
  %53 = load volatile i32, ptr @jiffies, align 64
  %54 = getelementptr inbounds %struct.bictcp, ptr %4, i32 0, i32 3
  store i32 %53, ptr %54, align 4
  %55 = load volatile i32, ptr @jiffies, align 64
  store i32 %55, ptr %42, align 4
  store i32 %26, ptr %27, align 4
  %56 = getelementptr inbounds %struct.bictcp, ptr %4, i32 0, i32 9
  store i32 %25, ptr %56, align 4
  %57 = getelementptr inbounds %struct.bictcp, ptr %4, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp ugt i32 %58, %25
  br i1 %59, label %63, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.bictcp, ptr %4, i32 0, i32 5
  store i32 0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 28, i32 2
  store i32 %25, ptr %62, align 4
  br label %118

63:                                               ; preds = %52
  %64 = load i64, ptr @cube_factor, align 8
  %65 = sub i32 %58, %25
  %66 = zext i32 %65 to i64
  %67 = mul i64 %64, %66
  %68 = lshr i64 %67, 32
  %69 = trunc i64 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %63
  %72 = tail call i32 @llvm.ctlz.i32(i32 %69, i1 true) #9, !range !10
  %73 = sub nuw nsw i32 64, %72
  br label %85

74:                                               ; preds = %63
  %75 = trunc i64 %67 to i32
  %76 = tail call i32 @llvm.ctlz.i32(i32 %75, i1 false) #9, !range !10
  %77 = sub nuw nsw i32 32, %76
  %78 = icmp ult i32 %75, 64
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = getelementptr [64 x i8], ptr @cubic_root.v, i32 0, i32 %75
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = add nuw nsw i32 %82, 35
  %84 = lshr i32 %83, 6
  br label %112

85:                                               ; preds = %74, %71
  %86 = phi i32 [ %73, %71 ], [ %77, %74 ]
  %87 = mul nuw nsw i32 %86, 84
  %88 = lshr i32 %87, 8
  %89 = add nsw i32 %88, -1
  %90 = mul nuw nsw i32 %89, 3
  %91 = zext i32 %90 to i64
  %92 = lshr i64 %67, %91
  %93 = trunc i64 %92 to i32
  %94 = getelementptr [64 x i8], ptr @cubic_root.v, i32 0, i32 %93
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = add nuw nsw i32 %96, 10
  %98 = shl nuw nsw i32 %97, %89
  %99 = lshr i32 %98, 6
  %100 = shl nuw nsw i32 %99, 1
  %101 = zext i32 %99 to i64
  %102 = add nsw i32 %99, -1
  %103 = zext i32 %102 to i64
  %104 = mul nuw nsw i64 %103, %101
  %105 = tail call i64 @div64_u64(i64 noundef %67, i64 noundef %104) #9
  %106 = trunc i64 %105 to i32
  %107 = add i32 %100, %106
  %108 = mul i32 %107, 341
  %109 = lshr i32 %108, 10
  %110 = load i32, ptr %57, align 4
  %111 = load i32, ptr %42, align 4
  br label %112

112:                                              ; preds = %85, %79
  %113 = phi i32 [ %55, %79 ], [ %111, %85 ]
  %114 = phi i32 [ %58, %79 ], [ %110, %85 ]
  %115 = phi i32 [ %84, %79 ], [ %109, %85 ]
  %116 = getelementptr inbounds %struct.bictcp, ptr %4, i32 0, i32 5
  store i32 %115, ptr %116, align 4
  %117 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 28, i32 2
  store i32 %114, ptr %117, align 4
  br label %118

118:                                              ; preds = %112, %60, %50
  %119 = phi i32 [ %43, %50 ], [ %55, %60 ], [ %113, %112 ]
  %120 = load volatile i32, ptr @jiffies, align 64
  %121 = sub i32 %120, %119
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 28, i32 3
  %124 = load i32, ptr %123, align 4
  %125 = tail call i32 @__usecs_to_jiffies(i32 noundef %124) #9
  %126 = zext i32 %125 to i64
  %127 = add nsw i64 %126, %122
  %128 = shl nsw i64 %127, 10
  %129 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %128, i32 0) #10, !srcloc !11
  %130 = extractvalue { i64, i32 } %129, 0
  %131 = extractvalue { i64, i32 } %129, 1
  %132 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %128, i64 %130, i32 %131) #10, !srcloc !12
  %133 = extractvalue { i64, i32 } %132, 0
  %134 = lshr i64 %133, 6
  %135 = getelementptr inbounds %struct.bictcp, ptr %4, i32 0, i32 5
  %136 = load i32, ptr %135, align 4
  %137 = zext i32 %136 to i64
  %138 = icmp ult i64 %134, %137
  %139 = sub nsw i64 %137, %134
  %140 = sub nsw i64 %134, %137
  %141 = select i1 %138, i64 %139, i64 %140
  %142 = load i32, ptr @cube_rtt_scale, align 4
  %143 = zext i32 %142 to i64
  %144 = mul i64 %141, %143
  %145 = mul i64 %144, %141
  %146 = mul i64 %145, %141
  %147 = lshr i64 %146, 40
  %148 = trunc i64 %147 to i32
  %149 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 28, i32 2
  %150 = load i32, ptr %149, align 4
  %151 = sub nsw i32 0, %148
  %152 = select i1 %138, i32 %151, i32 %148
  %153 = add i32 %152, %150
  %154 = icmp ugt i32 %153, %25
  br i1 %154, label %155, label %158

155:                                              ; preds = %118
  %156 = sub i32 %153, %25
  %157 = udiv i32 %25, %156
  br label %160

158:                                              ; preds = %118
  %159 = mul i32 %25, 100
  br label %160

160:                                              ; preds = %158, %155
  %161 = phi i32 [ %159, %158 ], [ %157, %155 ]
  %162 = getelementptr inbounds %struct.bictcp, ptr %4, i32 0, i32 1
  %163 = load i32, ptr %162, align 4
  %164 = icmp eq i32 %163, 0
  %165 = icmp ugt i32 %161, 20
  %166 = select i1 %164, i1 %165, i1 false
  %167 = select i1 %166, i32 20, i32 %161
  store i32 %167, ptr %4, align 4
  br label %168

168:                                              ; preds = %160, %45
  %169 = load i32, ptr @tcp_friendliness, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %195, label %171

171:                                              ; preds = %168
  %172 = load i32, ptr @beta_scale, align 4
  %173 = mul i32 %172, %25
  %174 = lshr i32 %173, 3
  %175 = load i32, ptr %27, align 4
  %176 = icmp ugt i32 %175, %174
  %177 = getelementptr inbounds %struct.bictcp, ptr %4, i32 0, i32 9
  %178 = load i32, ptr %177, align 4
  br i1 %176, label %179, label %186

179:                                              ; preds = %179, %171
  %180 = phi i32 [ %183, %179 ], [ %178, %171 ]
  %181 = phi i32 [ %182, %179 ], [ %175, %171 ]
  %182 = sub i32 %181, %174
  %183 = add i32 %180, 1
  %184 = icmp ugt i32 %182, %174
  br i1 %184, label %179, label %185

185:                                              ; preds = %179
  store i32 %182, ptr %27, align 4
  store i32 %183, ptr %177, align 4
  br label %186

186:                                              ; preds = %185, %171
  %187 = phi i32 [ %183, %185 ], [ %178, %171 ]
  %188 = icmp ugt i32 %187, %25
  br i1 %188, label %189, label %195

189:                                              ; preds = %186
  %190 = sub i32 %187, %25
  %191 = udiv i32 %25, %190
  %192 = load i32, ptr %4, align 4
  %193 = icmp ugt i32 %192, %191
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  store i32 %191, ptr %4, align 4
  br label %195

195:                                              ; preds = %194, %189, %186, %168
  %196 = load i32, ptr %4, align 4
  %197 = tail call i32 @llvm.umax.i32(i32 %196, i32 2) #9
  store i32 %197, ptr %4, align 4
  br label %198

198:                                              ; preds = %195, %39
  %199 = phi i32 [ %40, %39 ], [ %197, %195 ]
  tail call void @tcp_cong_avoid_ai(ptr noundef %0, i32 noundef %199, i32 noundef %26) #9
  br label %200

200:                                              ; preds = %198, %19, %15, %10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @cubictcp_state(ptr nocapture noundef %0, i8 noundef zeroext %1) #4 {
  %3 = icmp eq i8 %1, 4
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 28
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %5, i8 0, i32 40, i1 false) #9
  %6 = getelementptr inbounds %struct.bictcp, ptr %5, i32 0, i32 12
  store i8 0, ptr %6, align 1
  %7 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds %struct.bictcp, ptr %5, i32 0, i32 15
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.bictcp, ptr %5, i32 0, i32 13
  store i32 %9, ptr %11, align 4
  %12 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 28, i32 6
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 28, i32 7
  store i32 -1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.bictcp, ptr %5, i32 0, i32 11
  store i8 0, ptr %16, align 2
  br label %17

17:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @cubictcp_cwnd_event(ptr nocapture noundef %0, i32 noundef %1) #5 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %20

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 28
  %6 = load volatile i32, ptr @jiffies, align 64
  %7 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 19
  %8 = load i32, ptr %7, align 8
  %9 = sub i32 %6, %8
  %10 = getelementptr inbounds %struct.bictcp, ptr %5, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = icmp sgt i32 %9, 0
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = add i32 %11, %9
  %17 = sub i32 %6, %16
  %18 = icmp slt i32 %17, 0
  %19 = select i1 %18, i32 %6, i32 %16
  store i32 %19, ptr %10, align 4
  br label %20

20:                                               ; preds = %15, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cubictcp_acked(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 28
  %4 = getelementptr inbounds %struct.ack_sample, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %166, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bictcp, ptr %3, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = sub i32 %12, %9
  %14 = icmp slt i32 %13, 100
  br i1 %14, label %166, label %15

15:                                               ; preds = %11, %7
  %16 = icmp eq i32 %5, 0
  %17 = select i1 %16, i32 1, i32 %5
  %18 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 28, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  %21 = icmp ugt i32 %19, %17
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 %17, ptr %18, align 4
  br label %24

24:                                               ; preds = %23, %15
  %25 = phi i32 [ %19, %15 ], [ %17, %23 ]
  %26 = getelementptr inbounds %struct.bictcp, ptr %3, i32 0, i32 12
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %166

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  %33 = load i32, ptr %32, align 4
  %34 = icmp uge i32 %31, %33
  %35 = load i32, ptr @hystart, align 4
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %34, i1 true, i1 %36
  %38 = load i32, ptr @hystart_low_window, align 4
  %39 = icmp ult i32 %31, %38
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %166, label %41

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 28, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %45 = load i32, ptr %44, align 4
  %46 = sub i32 %43, %45
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %50 = load i64, ptr %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %struct.bictcp, ptr %3, i32 0, i32 15
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.bictcp, ptr %3, i32 0, i32 13
  store i32 %51, ptr %53, align 4
  %54 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %55 = load i32, ptr %54, align 4
  store i32 %55, ptr %42, align 4
  %56 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 28, i32 7
  store i32 -1, ptr %56, align 4
  %57 = getelementptr inbounds %struct.bictcp, ptr %3, i32 0, i32 11
  store i8 0, ptr %57, align 2
  br label %58

58:                                               ; preds = %48, %41
  %59 = load i32, ptr @hystart_detect, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %118, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %64 = load i64, ptr %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = getelementptr inbounds %struct.bictcp, ptr %3, i32 0, i32 15
  %67 = load i32, ptr %66, align 4
  %68 = sub i32 %65, %67
  %69 = load i32, ptr @hystart_ack_delta_us, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %118, label %71

71:                                               ; preds = %62
  store i32 %65, ptr %66, align 4
  %72 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 35
  %73 = load volatile i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %73, i64 262144000000) #10, !srcloc !9
  %77 = extractvalue { i64, i64 } %76, 1
  %78 = tail call i64 @llvm.umin.i64(i64 %77, i64 1000) #9
  %79 = trunc i64 %78 to i32
  br label %80

80:                                               ; preds = %75, %71
  %81 = phi i32 [ %79, %75 ], [ 0, %71 ]
  %82 = add i32 %81, %25
  %83 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 30
  %84 = load i32, ptr %83, align 8
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = lshr i32 %82, %86
  %88 = getelementptr inbounds %struct.bictcp, ptr %3, i32 0, i32 13
  %89 = load i32, ptr %88, align 4
  %90 = sub i32 %65, %89
  %91 = icmp ugt i32 %90, %87
  br i1 %91, label %92, label %118

92:                                               ; preds = %80
  store i8 1, ptr %26, align 1
  %93 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !13
  %94 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %95 = getelementptr [126 x i32], ptr %94, i32 0, i32 99
  %96 = ptrtoint ptr %95 to i32
  %97 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %98 = inttoptr i32 %97 to ptr
  %99 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %98) #8, !srcloc !14
  %100 = add i32 %99, %96
  %101 = inttoptr i32 %100 to ptr
  %102 = load i32, ptr %101, align 4
  %103 = add i32 %102, 1
  store i32 %103, ptr %101, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %93) #9, !srcloc !15
  %104 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !13
  %105 = load i32, ptr %30, align 8
  %106 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %107 = getelementptr [126 x i32], ptr %106, i32 0, i32 100
  %108 = ptrtoint ptr %107 to i32
  %109 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %110 = inttoptr i32 %109 to ptr
  %111 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %110) #8, !srcloc !14
  %112 = add i32 %111, %108
  %113 = inttoptr i32 %112 to ptr
  %114 = load i32, ptr %113, align 4
  %115 = add i32 %114, %105
  store i32 %115, ptr %113, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %104) #9, !srcloc !15
  %116 = load i32, ptr %30, align 8
  store i32 %116, ptr %32, align 4
  %117 = load i32, ptr @hystart_detect, align 4
  br label %118

118:                                              ; preds = %92, %80, %62, %58
  %119 = phi i32 [ %59, %62 ], [ %117, %92 ], [ %59, %80 ], [ %59, %58 ]
  %120 = and i32 %119, 2
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %166, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 28, i32 7
  %124 = load i32, ptr %123, align 4
  %125 = icmp ugt i32 %124, %17
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i32 %17, ptr %123, align 4
  br label %127

127:                                              ; preds = %126, %122
  %128 = phi i32 [ %17, %126 ], [ %124, %122 ]
  %129 = getelementptr inbounds %struct.bictcp, ptr %3, i32 0, i32 11
  %130 = load i8, ptr %129, align 2
  %131 = icmp ult i8 %130, 8
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = add nuw nsw i8 %130, 1
  store i8 %133, ptr %129, align 2
  br label %166

134:                                              ; preds = %127
  %135 = load i32, ptr %18, align 4
  %136 = lshr i32 %135, 3
  %137 = tail call i32 @llvm.umax.i32(i32 %136, i32 4000) #9
  %138 = tail call i32 @llvm.umin.i32(i32 %137, i32 16000) #9
  %139 = add i32 %138, %135
  %140 = icmp ugt i32 %128, %139
  br i1 %140, label %141, label %166

141:                                              ; preds = %134
  store i8 1, ptr %26, align 1
  %142 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !13
  %143 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %144 = getelementptr [126 x i32], ptr %143, i32 0, i32 101
  %145 = ptrtoint ptr %144 to i32
  %146 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %147 = inttoptr i32 %146 to ptr
  %148 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %147) #8, !srcloc !14
  %149 = add i32 %148, %145
  %150 = inttoptr i32 %149 to ptr
  %151 = load i32, ptr %150, align 4
  %152 = add i32 %151, 1
  store i32 %152, ptr %150, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %142) #9, !srcloc !15
  %153 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !13
  %154 = load i32, ptr %30, align 8
  %155 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %156 = getelementptr [126 x i32], ptr %155, i32 0, i32 102
  %157 = ptrtoint ptr %156 to i32
  %158 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %159 = inttoptr i32 %158 to ptr
  %160 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %159) #8, !srcloc !14
  %161 = add i32 %160, %157
  %162 = inttoptr i32 %161 to ptr
  %163 = load i32, ptr %162, align 4
  %164 = add i32 %163, %154
  store i32 %164, ptr %162, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %153) #9, !srcloc !15
  %165 = load i32, ptr %30, align 8
  store i32 %165, ptr %32, align 4
  br label %166

166:                                              ; preds = %141, %134, %132, %118, %29, %24, %11, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_reno_undo_cwnd(ptr noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @cubictcp_init(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 28
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %2, i8 0, i32 40, i1 false) #9
  %3 = getelementptr inbounds %struct.bictcp, ptr %2, i32 0, i32 12
  store i8 0, ptr %3, align 1
  %4 = load i32, ptr @hystart, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds %struct.bictcp, ptr %2, i32 0, i32 15
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.bictcp, ptr %2, i32 0, i32 13
  store i32 %9, ptr %11, align 4
  %12 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 28, i32 6
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 28, i32 7
  store i32 -1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.bictcp, ptr %2, i32 0, i32 11
  store i8 0, ptr %16, align 2
  br label %22

17:                                               ; preds = %1
  %18 = load i32, ptr @initial_ssthresh, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  store i32 %18, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %17, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_slow_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_cong_avoid_ai(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_register_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }

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
!9 = !{i64 2148205635, i64 2148205915, i64 2148206249, i64 2148206583}
!10 = !{i32 0, i32 33}
!11 = !{i64 720091, i64 720118, i64 720140, i64 720168}
!12 = !{i64 720499, i64 720526, i64 720559, i64 720580, i64 720607, i64 720633}
!13 = !{i64 760530, i64 760591}
!14 = !{i64 779230}
!15 = !{i64 763547}
