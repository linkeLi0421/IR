; ModuleID = '/llk/IR/net/core/sysctl_net_core.c_pt.bc'
source_filename = "../net/core/sysctl_net_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysctl_fb_tunnels_only_for_init_net:\09\09\09\09\09"
module asm "\09.asciz \09\22sysctl_fb_tunnels_only_for_init_net\22\09\09\09\09\09"
module asm "__kstrtabns_sysctl_fb_tunnels_only_for_init_net:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysctl_devconf_inherit_init_net:\09\09\09\09\09"
module asm "\09.asciz \09\22sysctl_devconf_inherit_init_net\22\09\09\09\09\09"
module asm "__kstrtabns_sysctl_devconf_inherit_init_net:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon = type { %struct.anon }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.171, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.171 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.177, [4 x i8], i32, [60 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [56 x i8] }
%struct.anon.177 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%union.anon.34 = type { i32 }
%struct.sk_buff_head = type { %union.anon.82, i32, %struct.spinlock }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rps_sock_flow_table = type { i32, [60 x i8], [0 x i32] }
%struct.sd_flow_limit = type { i64, i32, i32, [128 x i16], [0 x i8] }

@sysctl_fb_tunnels_only_for_init_net = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_sysctl_fb_tunnels_only_for_init_net = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysctl_fb_tunnels_only_for_init_net = external dso_local constant [0 x i8], align 1
@__ksymtab_sysctl_fb_tunnels_only_for_init_net = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysctl_fb_tunnels_only_for_init_net to i32), ptr @__kstrtab_sysctl_fb_tunnels_only_for_init_net, ptr @__kstrtabns_sysctl_fb_tunnels_only_for_init_net }, section "___ksymtab+sysctl_fb_tunnels_only_for_init_net", align 4
@sysctl_devconf_inherit_init_net = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_sysctl_devconf_inherit_init_net = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysctl_devconf_inherit_init_net = external dso_local constant [0 x i8], align 1
@__ksymtab_sysctl_devconf_inherit_init_net = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysctl_devconf_inherit_init_net to i32), ptr @__kstrtab_sysctl_devconf_inherit_init_net, ptr @__kstrtabns_sysctl_devconf_inherit_init_net }, section "___ksymtab+sysctl_devconf_inherit_init_net", align 4
@__setup_str_fb_tunnels_only_for_init_net_sysctl_setup = internal constant [12 x i8] c"fb_tunnels=\00", section ".init.rodata", align 1
@__setup_fb_tunnels_only_for_init_net_sysctl_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_fb_tunnels_only_for_init_net_sysctl_setup, ptr @fb_tunnels_only_for_init_net_sysctl_setup, i32 0 }, section ".init.setup", align 4
@__initcall__kmod_sysctl_net_core__519_664_sysctl_core_init5 = internal global ptr @sysctl_core_init, section ".initcall5.init", align 4
@.str = private unnamed_addr constant [7 x i8] c"initns\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@init_net = external dso_local global %struct.net, align 64
@.str.2 = private unnamed_addr constant [9 x i8] c"net/core\00", align 1
@net_core_table = internal global [29 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.3, ptr @sysctl_wmem_max, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_sndbuf, ptr null }, %struct.ctl_table { ptr @.str.4, ptr @sysctl_rmem_max, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_rcvbuf, ptr null }, %struct.ctl_table { ptr @.str.5, ptr @sysctl_wmem_default, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_sndbuf, ptr null }, %struct.ctl_table { ptr @.str.6, ptr @sysctl_rmem_default, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_rcvbuf, ptr null }, %struct.ctl_table { ptr @.str.7, ptr @weight_p, i32 4, i16 420, ptr null, ptr @proc_do_dev_weight, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.8, ptr @dev_weight_rx_bias, i32 4, i16 420, ptr null, ptr @proc_do_dev_weight, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.9, ptr @dev_weight_tx_bias, i32 4, i16 420, ptr null, ptr @proc_do_dev_weight, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.10, ptr @netdev_max_backlog, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.11, ptr @netdev_rss_key, i32 4, i16 292, ptr null, ptr @proc_do_rss_key, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.12, ptr @netdev_tstamp_prequeue, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.13, ptr getelementptr (i8, ptr @net_ratelimit_state, i64 4), i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.14, ptr getelementptr (i8, ptr @net_ratelimit_state, i64 8), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.15, ptr @sysctl_optmem_max, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.16, ptr @sysctl_tstamp_allow_data, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.17, ptr null, i32 4, i16 420, ptr null, ptr @rps_sock_flow_sysctl, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.18, ptr null, i32 0, i16 420, ptr null, ptr @flow_limit_cpu_sysctl, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.19, ptr @netdev_flow_limit_table_len, i32 4, i16 420, ptr null, ptr @flow_limit_table_len_sysctl, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.20, ptr @sysctl_net_busy_poll, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.21, ptr @sysctl_net_busy_read, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.22, ptr @netdev_budget, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.23, ptr @net_msg_warn, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.24, ptr @sysctl_max_skb_frags, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr @max_skb_frags }, %struct.ctl_table { ptr @.str.25, ptr @netdev_budget_usecs, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table { ptr @.str.26, ptr @sysctl_fb_tunnels_only_for_init_net, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @two }, %struct.ctl_table { ptr @.str.27, ptr @sysctl_devconf_inherit_init_net, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @three }, %struct.ctl_table { ptr @.str.28, ptr @net_high_order_alloc_disable_key, i32 4, i16 420, ptr null, ptr @proc_do_static_key, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.29, ptr @gro_normal_batch, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr null }, %struct.ctl_table { ptr @.str.30, ptr @netdev_unregister_timeout_secs, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr @int_3600 }, %struct.ctl_table zeroinitializer], align 4
@sysctl_core_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @sysctl_core_net_init, ptr null, ptr @sysctl_core_net_exit, ptr null, ptr null, i32 0 }, section ".init.data", align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"wmem_max\00", align 1
@sysctl_wmem_max = external dso_local global i32, align 4
@min_sndbuf = internal global i32 4480, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"rmem_max\00", align 1
@sysctl_rmem_max = external dso_local global i32, align 4
@min_rcvbuf = internal global i32 2240, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"wmem_default\00", align 1
@sysctl_wmem_default = external dso_local global i32, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"rmem_default\00", align 1
@sysctl_rmem_default = external dso_local global i32, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"dev_weight\00", align 1
@weight_p = external dso_local global i32, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"dev_weight_rx_bias\00", align 1
@dev_weight_rx_bias = external dso_local global i32, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"dev_weight_tx_bias\00", align 1
@dev_weight_tx_bias = external dso_local global i32, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"netdev_max_backlog\00", align 1
@netdev_max_backlog = external dso_local global i32, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"netdev_rss_key\00", align 1
@netdev_rss_key = external dso_local global [52 x i8], section ".data..read_mostly", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"netdev_tstamp_prequeue\00", align 1
@netdev_tstamp_prequeue = external dso_local global i32, align 4
@.str.13 = private unnamed_addr constant [13 x i8] c"message_cost\00", align 1
@net_ratelimit_state = external dso_local global %struct.ratelimit_state, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"message_burst\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"optmem_max\00", align 1
@sysctl_optmem_max = external dso_local global i32, align 4
@.str.16 = private unnamed_addr constant [18 x i8] c"tstamp_allow_data\00", align 1
@sysctl_tstamp_allow_data = external dso_local global i32, align 4
@sysctl_vals = external dso_local constant [0 x i32], align 4
@.str.17 = private unnamed_addr constant [22 x i8] c"rps_sock_flow_entries\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"flow_limit_cpu_bitmap\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"flow_limit_table_len\00", align 1
@netdev_flow_limit_table_len = external dso_local global i32, align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"busy_poll\00", align 1
@sysctl_net_busy_poll = external dso_local global i32, section ".data..read_mostly", align 4
@.str.21 = private unnamed_addr constant [10 x i8] c"busy_read\00", align 1
@sysctl_net_busy_read = external dso_local global i32, section ".data..read_mostly", align 4
@.str.22 = private unnamed_addr constant [14 x i8] c"netdev_budget\00", align 1
@netdev_budget = external dso_local global i32, align 4
@.str.23 = private unnamed_addr constant [9 x i8] c"warnings\00", align 1
@net_msg_warn = internal global i32 0, align 4
@.str.24 = private unnamed_addr constant [14 x i8] c"max_skb_frags\00", align 1
@sysctl_max_skb_frags = external dso_local global i32, align 4
@max_skb_frags = internal global i32 17, align 4
@.str.25 = private unnamed_addr constant [20 x i8] c"netdev_budget_usecs\00", align 1
@netdev_budget_usecs = external dso_local global i32, align 4
@.str.26 = private unnamed_addr constant [29 x i8] c"fb_tunnels_only_for_init_net\00", align 1
@two = internal global i32 2, align 4
@.str.27 = private unnamed_addr constant [25 x i8] c"devconf_inherit_init_net\00", align 1
@three = internal global i32 3, align 4
@.str.28 = private unnamed_addr constant [25 x i8] c"high_order_alloc_disable\00", align 1
@net_high_order_alloc_disable_key = external dso_local global %struct.static_key_false, align 4
@.str.29 = private unnamed_addr constant [17 x i8] c"gro_normal_batch\00", align 1
@gro_normal_batch = external dso_local global i32, align 4
@.str.30 = private unnamed_addr constant [31 x i8] c"netdev_unregister_timeout_secs\00", align 1
@netdev_unregister_timeout_secs = external dso_local global i32, align 4
@int_3600 = internal global i32 3600, align 4
@dev_rx_weight = external dso_local local_unnamed_addr global i32, align 4
@dev_tx_weight = external dso_local local_unnamed_addr global i32, align 4
@.str.31 = private unnamed_addr constant [6 x i8] c"%*phC\00", align 1
@rps_sock_flow_sysctl.sock_flow_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rps_sock_flow_sysctl.sock_flow_mutex, i64 12), ptr getelementptr (i8, ptr @rps_sock_flow_sysctl.sock_flow_mutex, i64 12) } }, align 4
@rps_sock_flow_table = external dso_local global ptr, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@rps_cpu_mask = external dso_local local_unnamed_addr global i32, align 4
@rps_needed = external dso_local global %struct.static_key_false, align 4
@rfs_needed = external dso_local global %struct.static_key_false, align 4
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.33 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_slow_inc = private unnamed_addr constant [20 x i8] c"static_key_slow_inc\00", align 1
@__func__.static_key_slow_dec = private unnamed_addr constant [20 x i8] c"static_key_slow_dec\00", align 1
@flow_limit_update_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @flow_limit_update_mutex, i64 12), ptr getelementptr (i8, ptr @flow_limit_update_mutex, i64 12) } }, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 64
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.34 = private unnamed_addr constant [5 x i8] c"%*pb\00", align 1
@netns_core_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.35, ptr getelementptr (i8, ptr @init_net, i64 208), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.35 = private unnamed_addr constant [10 x i8] c"somaxconn\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__initcall__kmod_sysctl_net_core__519_664_sysctl_core_init5, ptr @__ksymtab_sysctl_devconf_inherit_init_net, ptr @__ksymtab_sysctl_fb_tunnels_only_for_init_net, ptr @__setup_fb_tunnels_only_for_init_net_sysctl_setup], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @fb_tunnels_only_for_init_net_sysctl_setup(ptr nocapture noundef readonly %0) #0 section ".init.text" {
  %2 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(7) @.str, i32 noundef 6)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(5) @.str.1, i32 noundef 4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4, %1
  %8 = phi i32 [ 1, %1 ], [ 2, %4 ]
  store i32 %8, ptr @sysctl_fb_tunnels_only_for_init_net, align 4
  br label %9

9:                                                ; preds = %7, %4
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sysctl_core_init() #1 section ".init.text" {
  %1 = tail call ptr @register_net_sysctl(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.2, ptr noundef nonnull @net_core_table) #13
  %2 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @sysctl_core_ops) #13
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_do_dev_weight(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #4 {
  %6 = tail call i32 @proc_dointvec(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load i32, ptr @weight_p, align 4
  %10 = load i32, ptr @dev_weight_rx_bias, align 4
  %11 = mul i32 %10, %9
  store i32 %11, ptr @dev_rx_weight, align 4
  %12 = load i32, ptr @dev_weight_tx_bias, align 4
  %13 = mul i32 %12, %9
  store i32 %13, ptr @dev_tx_weight, align 4
  br label %14

14:                                               ; preds = %8, %5
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_do_rss_key(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #4 {
  %6 = alloca %struct.ctl_table, align 4
  %7 = alloca [156 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, i8 0, i32 36, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(156) %7, i8 0, i32 156, i1 false), !annotation !8
  %8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 156, ptr noundef nonnull @.str.31, i32 noundef 52, ptr noundef nonnull @netdev_rss_key)
  %9 = getelementptr inbounds %struct.ctl_table, ptr %6, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ctl_table, ptr %6, i32 0, i32 2
  store i32 156, ptr %10, align 4
  %11 = call i32 @proc_dostring(ptr noundef nonnull %6, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #13
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #13
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rps_sock_flow_sysctl(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #4 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctl_table, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #13
  %8 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store ptr %6, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 2
  store i32 4, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 3
  %11 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 3
  %12 = load i16, ptr %11, align 4
  store i16 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %13, i8 0, i64 20, i1 false)
  call void @mutex_lock(ptr noundef nonnull @rps_sock_flow_sysctl.sock_flow_mutex) #13
  %14 = load ptr, ptr @rps_sock_flow_table, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i32, ptr %14, align 64
  %18 = add i32 %17, 1
  br label %19

19:                                               ; preds = %16, %5
  %20 = phi i32 [ %18, %16 ], [ 0, %5 ]
  store i32 %20, ptr %6, align 4
  %21 = call i32 @proc_dointvec(ptr noundef nonnull %7, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #13
  %22 = icmp eq i32 %1, 0
  br i1 %22, label %90, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %6, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %62, label %26

26:                                               ; preds = %23
  %27 = icmp ugt i32 %24, 536870912
  br i1 %27, label %90, label %28

28:                                               ; preds = %26
  %29 = add nsw i32 %24, -1
  %30 = icmp eq i32 %29, 0
  %31 = call i32 @llvm.ctlz.i32(i32 %29, i1 false) #13, !range !9
  %32 = sub nuw nsw i32 32, %31
  %33 = shl nuw i32 1, %32
  %34 = select i1 %30, i32 1, i32 %33
  store i32 %34, ptr %6, align 4
  %35 = icmp eq i32 %34, %20
  br i1 %35, label %52, label %36

36:                                               ; preds = %28
  %37 = shl i32 %34, 2
  %38 = add i32 %37, 64
  %39 = call noalias ptr @vmalloc(i32 noundef %38) #14
  %40 = icmp eq ptr %39, null
  br i1 %40, label %90, label %41

41:                                               ; preds = %36
  %42 = load i32, ptr @nr_cpu_ids, align 4
  %43 = add i32 %42, -1
  %44 = icmp eq i32 %43, 0
  %45 = call i32 @llvm.ctlz.i32(i32 %43, i1 false) #13, !range !9
  %46 = sub nuw nsw i32 32, %45
  %47 = shl nsw i32 -1, %46
  %48 = xor i32 %47, -1
  %49 = select i1 %44, i32 0, i32 %48
  store i32 %49, ptr @rps_cpu_mask, align 4
  %50 = load i32, ptr %6, align 4
  %51 = add i32 %50, -1
  store i32 %51, ptr %39, align 64
  br label %52

52:                                               ; preds = %41, %28
  %53 = phi i32 [ %50, %41 ], [ %20, %28 ]
  %54 = phi ptr [ %39, %41 ], [ %14, %28 ]
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %56, %52
  %57 = phi i32 [ %59, %56 ], [ 0, %52 ]
  %58 = getelementptr %struct.rps_sock_flow_table, ptr %54, i32 0, i32 2, i32 %57
  store i32 65535, ptr %58, align 4
  %59 = add nuw i32 %57, 1
  %60 = load i32, ptr %6, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %56, label %62

62:                                               ; preds = %56, %52, %23
  %63 = phi ptr [ null, %23 ], [ %54, %52 ], [ %54, %56 ]
  %64 = icmp eq ptr %63, %14
  br i1 %64, label %90, label %65

65:                                               ; preds = %62
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !10
  store volatile ptr %63, ptr @rps_sock_flow_table, align 4
  %66 = icmp eq ptr %63, null
  br i1 %66, label %78, label %67

67:                                               ; preds = %65
  %68 = load i8, ptr @static_key_initialized, align 1, !range !11
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %71, !prof !12

70:                                               ; preds = %67
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 290, i32 noundef 9, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.static_key_slow_inc, ptr noundef nonnull @rps_needed) #13
  br label %71

71:                                               ; preds = %70, %67
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @rps_needed) #13, !srcloc !13
  %72 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @rps_needed, ptr nonnull @rps_needed, i32 1, ptr nonnull elementtype(i32) @rps_needed) #13, !srcloc !14
  %73 = load i8, ptr @static_key_initialized, align 1, !range !11
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %76, !prof !12

75:                                               ; preds = %71
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 290, i32 noundef 9, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.static_key_slow_inc, ptr noundef nonnull @rfs_needed) #13
  br label %76

76:                                               ; preds = %75, %71
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @rfs_needed) #13, !srcloc !13
  %77 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @rfs_needed, ptr nonnull @rfs_needed, i32 1, ptr nonnull elementtype(i32) @rfs_needed) #13, !srcloc !14
  br label %78

78:                                               ; preds = %76, %65
  br i1 %15, label %90, label %79

79:                                               ; preds = %78
  %80 = load i8, ptr @static_key_initialized, align 1, !range !11
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %83, !prof !12

82:                                               ; preds = %79
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 296, i32 noundef 9, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.static_key_slow_dec, ptr noundef nonnull @rps_needed) #13
  br label %83

83:                                               ; preds = %82, %79
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @rps_needed) #13, !srcloc !13
  %84 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @rps_needed, ptr nonnull @rps_needed, i32 1, ptr nonnull elementtype(i32) @rps_needed) #13, !srcloc !15
  %85 = load i8, ptr @static_key_initialized, align 1, !range !11
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %88, !prof !12

87:                                               ; preds = %83
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 296, i32 noundef 9, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.static_key_slow_dec, ptr noundef nonnull @rfs_needed) #13
  br label %88

88:                                               ; preds = %87, %83
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @rfs_needed) #13, !srcloc !13
  %89 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @rfs_needed, ptr nonnull @rfs_needed, i32 1, ptr nonnull elementtype(i32) @rfs_needed) #13, !srcloc !15
  call void @synchronize_rcu() #13
  call void @vfree(ptr noundef nonnull %14) #13
  br label %90

90:                                               ; preds = %88, %78, %62, %36, %26, %19
  %91 = phi i32 [ -22, %26 ], [ -12, %36 ], [ %21, %62 ], [ %21, %88 ], [ %21, %78 ], [ %21, %19 ]
  call void @mutex_unlock(ptr noundef nonnull @rps_sock_flow_sysctl.sock_flow_mutex) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flow_limit_cpu_sysctl(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #4 {
  %6 = alloca [1 x %struct.cpumask], align 4
  %7 = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !8
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %47, label %9

9:                                                ; preds = %5
  %10 = call i32 @bitmap_parse(ptr noundef %2, i32 noundef -1, ptr noundef nonnull %6, i32 noundef 16) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %93

12:                                               ; preds = %9
  call void @mutex_lock(ptr noundef nonnull @flow_limit_update_mutex) #13
  %13 = load i32, ptr @netdev_flow_limit_table_len, align 4
  %14 = add i32 %13, 272
  %15 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %41, %12
  %19 = phi i32 [ %42, %41 ], [ %15, %12 ]
  %20 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, ptrtoint (ptr @softnet_data to i32)
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr inbounds %struct.softnet_data, ptr %23, i32 0, i32 6
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  %27 = load volatile i32, ptr %6, align 4
  %28 = and i32 %19, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp eq i32 %30, 0
  br i1 %26, label %34, label %32

32:                                               ; preds = %18
  br i1 %31, label %33, label %41

33:                                               ; preds = %32
  store volatile ptr null, ptr %24, align 8
  call void @synchronize_rcu() #13
  call void @kfree(ptr noundef nonnull %25) #13
  br label %41

34:                                               ; preds = %18
  br i1 %31, label %41, label %35

35:                                               ; preds = %34
  %36 = call noalias align 64 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #14
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr @netdev_flow_limit_table_len, align 4
  %40 = getelementptr inbounds %struct.sd_flow_limit, ptr %36, i32 0, i32 1
  store i32 %39, ptr %40, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  store volatile ptr %36, ptr %24, align 8
  br label %41

41:                                               ; preds = %38, %34, %33, %32
  %42 = call i32 @cpumask_next(i32 noundef %19, ptr noundef nonnull @__cpu_possible_mask) #15
  %43 = load i32, ptr @nr_cpu_ids, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %18, label %45

45:                                               ; preds = %41, %35, %12
  %46 = phi i32 [ 0, %12 ], [ -12, %35 ], [ 0, %41 ]
  call void @mutex_unlock(ptr noundef nonnull @flow_limit_update_mutex) #13
  br label %93

47:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %7, i8 0, i32 128, i1 false), !annotation !8
  %48 = load i64, ptr %4, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, ptr %3, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %47
  store i32 0, ptr %3, align 4
  br label %92

54:                                               ; preds = %50
  store i32 0, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  %55 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15
  %56 = load i32, ptr @nr_cpu_ids, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %70, %54
  %59 = phi i32 [ %71, %70 ], [ %56, %54 ]
  %60 = phi i32 [ %72, %70 ], [ %55, %54 ]
  %61 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, ptrtoint (ptr @softnet_data to i32)
  %64 = inttoptr i32 %63 to ptr
  %65 = getelementptr inbounds %struct.softnet_data, ptr %64, i32 0, i32 6
  %66 = load volatile ptr, ptr %65, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %58
  call void @_set_bit(i32 noundef %60, ptr noundef nonnull %6) #13
  %69 = load i32, ptr @nr_cpu_ids, align 4
  br label %70

70:                                               ; preds = %68, %58
  %71 = phi i32 [ %69, %68 ], [ %59, %58 ]
  %72 = call i32 @cpumask_next(i32 noundef %60, ptr noundef nonnull @__cpu_possible_mask) #15
  %73 = icmp ult i32 %72, %71
  br i1 %73, label %58, label %74

74:                                               ; preds = %70, %54
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %75 = load i32, ptr %3, align 4
  %76 = call i32 @llvm.umin.i32(i32 %75, i32 127)
  %77 = load i32, ptr @nr_cpu_ids, align 4
  %78 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %7, i32 noundef %76, ptr noundef nonnull @.str.34, i32 noundef %77, ptr noundef nonnull %6) #13
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 0, ptr %3, align 4
  br label %92

81:                                               ; preds = %74
  %82 = load i32, ptr %3, align 4
  %83 = icmp ult i32 %78, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = add nuw i32 %78, 1
  %86 = getelementptr [128 x i8], ptr %7, i32 0, i32 %78
  store i8 10, ptr %86, align 1
  br label %87

87:                                               ; preds = %84, %81
  %88 = phi i32 [ %85, %84 ], [ %78, %81 ]
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr nonnull align 1 %7, i32 %88, i1 false)
  store i32 %88, ptr %3, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, ptr %4, align 8
  %91 = add i64 %90, %89
  store i64 %91, ptr %4, align 8
  br label %92

92:                                               ; preds = %87, %80, %53
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #13
  br label %93

93:                                               ; preds = %92, %45, %9
  %94 = phi i32 [ %10, %9 ], [ %46, %45 ], [ 0, %92 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flow_limit_table_len_sysctl(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #4 {
  tail call void @mutex_lock(ptr noundef nonnull @flow_limit_update_mutex) #13
  %6 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @proc_dointvec(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #13
  %10 = icmp eq i32 %9, 0
  %11 = icmp ne i32 %1, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %18

13:                                               ; preds = %5
  %14 = load i32, ptr %7, align 4
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14) #13, !range !9
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32 %8, ptr %7, align 4
  br label %18

18:                                               ; preds = %17, %13, %5
  %19 = phi i32 [ -22, %17 ], [ %9, %5 ], [ 0, %13 ]
  tail call void @mutex_unlock(ptr noundef nonnull @flow_limit_update_mutex) #13
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_do_static_key(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dostring(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sysctl_core_net_init(ptr noundef %0) #1 section ".init.text" {
  %2 = tail call ptr @register_net_sysctl(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @netns_core_table) #13
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 29
  store ptr %2, ptr %3, align 4
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, i32 -12, i32 0
  ret i32 %5
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysctl_core_net_exit(ptr nocapture noundef readonly %0) #12 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ctl_table_header, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %3) #13
  %6 = icmp eq ptr %5, @netns_core_table
  br i1 %6, label %7, label %8, !prof !12

7:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/sysctl_net_core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 649, 0\0A.popsection", ""() #13, !srcloc !19
  unreachable

8:                                                ; preds = %1
  tail call void @kfree(ptr noundef %5) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readonly willreturn }

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
!8 = !{!"auto-init"}
!9 = !{i32 0, i32 33}
!10 = !{i64 2156678584}
!11 = !{i8 0, i8 2}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 303983, i64 2147805549, i64 2147805575, i64 2147805622, i64 2147805644, i64 2147805672, i64 2147805692}
!14 = !{i64 2147879250, i64 2147879276, i64 2147879305, i64 2147879339, i64 2147879370, i64 2147879393}
!15 = !{i64 2147881607, i64 2147881633, i64 2147881662, i64 2147881696, i64 2147881727, i64 2147881750}
!16 = !{i64 2156691708}
!17 = !{i64 2149421650}
!18 = !{i64 2149421867}
!19 = !{i64 2156702903, i64 2156703394, i64 2156702940, i64 2156702996, i64 2156703030, i64 2156703054, i64 2156703095, i64 2156703116, i64 2156703144, i64 2156703178}
