; ModuleID = '/llk/IR/net/ipv4/fib_frontend.c_pt.bc'
source_filename = "../net/ipv4/fib_frontend.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_addr_type_table:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_addr_type_table\22\09\09\09\09\09"
module asm "__kstrtabns_inet_addr_type_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_addr_type:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_addr_type\22\09\09\09\09\09"
module asm "__kstrtabns_inet_addr_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_dev_addr_type:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_dev_addr_type\22\09\09\09\09\09"
module asm "__kstrtabns_inet_dev_addr_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_addr_type_dev_table:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_addr_type_dev_table\22\09\09\09\09\09"
module asm "__kstrtabns_inet_addr_type_dev_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_info_nh_uses_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_info_nh_uses_dev\22\09\09\09\09\09"
module asm "__kstrtabns_fib_info_nh_uses_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_valid_fib_dump_req:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_valid_fib_dump_req\22\09\09\09\09\09"
module asm "__kstrtabns_ip_valid_fib_dump_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.84 }
%union.anon.84 = type { i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.182, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.182 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netlink_kernel_cfg = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.fib_result = type { i32, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr }
%struct.fib_info = type { %struct.hlist_node, %struct.hlist_node, %struct.list_head, ptr, %struct.refcount_struct, %struct.refcount_struct, i32, i8, i8, i8, i8, i32, i32, i32, ptr, i32, i8, i8, ptr, %struct.callback_head, [0 x %struct.fib_nh] }
%struct.callback_head = type { ptr, ptr }
%struct.fib_nh = type { %struct.fib_nh_common, %struct.hlist_node, ptr, i32, i32 }
%struct.fib_nh_common = type { ptr, %struct.netdevice_tracker, i32, i8, i8, i8, i8, ptr, %union.anon.136, i32, %struct.atomic_t, ptr, ptr, ptr }
%struct.netdevice_tracker = type {}
%union.anon.136 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.132 }
%union.anon.132 = type { [4 x i32] }
%struct.nexthop = type { %struct.rb_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i8, i8, i8, %struct.refcount_struct, %struct.callback_head, %union.anon.134 }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.134 = type { ptr }
%struct.nh_group = type { ptr, i16, i8, i8, i8, i8, i8, ptr, [0 x %struct.nh_grp_entry] }
%struct.nh_grp_entry = type { ptr, i8, %union.anon.145, %struct.list_head, ptr }
%union.anon.145 = type { %struct.anon.147 }
%struct.anon.147 = type { %struct.list_head, i16, i16 }
%struct.nh_info = type { %struct.hlist_node, ptr, i8, i8, i8, %union.anon.135 }
%union.anon.135 = type { %struct.fib_nh }
%struct.anon.76 = type { ptr, ptr, %union.anon.77 }
%union.anon.77 = type { ptr }
%struct.sk_buff = type { %union.anon.75, %union.anon.153, %union.anon.154, [48 x i8], %union.anon.155, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.157, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.75 = type { %struct.anon.76 }
%union.anon.153 = type { ptr }
%union.anon.154 = type { i64 }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type { i32, ptr }
%union.anon.157 = type { %struct.anon.158 }
%struct.anon.158 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.159, i32, i32, i32, i16, i16, %union.anon.161, %union.anon.162, %union.anon.163, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.159 = type { i32 }
%union.anon.161 = type { i32 }
%union.anon.162 = type { i32 }
%union.anon.163 = type { i16 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.144, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%union.anon.144 = type { %struct.in6_addr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.78, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.152, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.78 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.152 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.in_device = type { ptr, %struct.netdevice_tracker, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.anon.140 = type { i16, i16 }
%struct.fib_config = type { i8, i8, i8, i8, i8, i8, i32, i32, %union.anon.188, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.nl_info, ptr, i16 }
%union.anon.188 = type { %struct.in6_addr }
%struct.nl_info = type { ptr, ptr, i32, i8 }
%struct.rtentry = type { i32, %struct.sockaddr, %struct.sockaddr, %struct.sockaddr, i16, i16, i32, ptr, i16, ptr, i32, i32, i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.nlattr = type { i16, i16 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.86 }
%union.anon.86 = type { [6 x i32], [24 x i8] }
%struct.fib_dump_filter = type { i32, i8, i8, i8, i8, i8, i32, ptr }
%struct.fib_table = type { %struct.hlist_node, i32, i32, %struct.callback_head, ptr, [0 x i32] }
%struct.netdev_notifier_info_ext = type { %struct.netdev_notifier_info, %union.anon.195 }
%struct.netdev_notifier_info = type { ptr, ptr }
%union.anon.195 = type { i32 }
%struct.netdev_notifier_changeupper_info = type { %struct.netdev_notifier_info, ptr, i8, i8, ptr }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }

@__kstrtab_inet_addr_type_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_addr_type_table = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_addr_type_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_addr_type_table to i32), ptr @__kstrtab_inet_addr_type_table, ptr @__kstrtabns_inet_addr_type_table }, section "___ksymtab+inet_addr_type_table", align 4
@__kstrtab_inet_addr_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_addr_type = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_addr_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_addr_type to i32), ptr @__kstrtab_inet_addr_type, ptr @__kstrtabns_inet_addr_type }, section "___ksymtab+inet_addr_type", align 4
@__kstrtab_inet_dev_addr_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_dev_addr_type = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_dev_addr_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_dev_addr_type to i32), ptr @__kstrtab_inet_dev_addr_type, ptr @__kstrtabns_inet_dev_addr_type }, section "___ksymtab+inet_dev_addr_type", align 4
@__kstrtab_inet_addr_type_dev_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_addr_type_dev_table = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_addr_type_dev_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_addr_type_dev_table to i32), ptr @__kstrtab_inet_addr_type_dev_table, ptr @__kstrtabns_inet_addr_type_dev_table }, section "___ksymtab+inet_addr_type_dev_table", align 4
@__kstrtab_fib_info_nh_uses_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_info_nh_uses_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_info_nh_uses_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_info_nh_uses_dev to i32), ptr @__kstrtab_fib_info_nh_uses_dev, ptr @__kstrtabns_fib_info_nh_uses_dev }, section "___ksymtab_gpl+fib_info_nh_uses_dev", align 4
@rtm_ipv4_policy = dso_local constant <{ { i8, i8, i16, { i16, [2 x i8] } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ { i8, i8, i16, { i16, [2 x i8] } } { i8 0, i8 0, i16 0, { i16, [2 x i8] } { i16 30, [2 x i8] undef } }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon.84 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.84 zeroinitializer } }>, align 4
@fib_gw_from_via.__msg = internal constant [37 x i8] c"Invalid attribute length for RTA_VIA\00", align 1
@fib_gw_from_via.__msg.1 = internal constant [32 x i8] c"Invalid IPv4 address in RTA_VIA\00", align 1
@fib_gw_from_via.__msg.2 = internal constant [32 x i8] c"Invalid IPv6 address in RTA_VIA\00", align 1
@fib_gw_from_via.__msg.3 = internal constant [38 x i8] c"Unsupported address family in RTA_VIA\00", align 1
@ip_valid_fib_dump_req.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [24 x i8] c"net/ipv4/fib_frontend.c\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@ip_valid_fib_dump_req.__msg = internal constant [36 x i8] c"Invalid header for FIB dump request\00", align 1
@ip_valid_fib_dump_req.__msg.5 = internal constant [46 x i8] c"Invalid values in header for FIB dump request\00", align 1
@ip_valid_fib_dump_req.__msg.6 = internal constant [35 x i8] c"Invalid flags for FIB dump request\00", align 1
@ip_valid_fib_dump_req.__msg.7 = internal constant [38 x i8] c"Unsupported attribute in dump request\00", align 1
@__kstrtab_ip_valid_fib_dump_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_valid_fib_dump_req = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_valid_fib_dump_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_valid_fib_dump_req to i32), ptr @__kstrtab_ip_valid_fib_dump_req, ptr @__kstrtabns_ip_valid_fib_dump_req }, section "___ksymtab_gpl+ip_valid_fib_dump_req", align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"\014%s: bug: prim == NULL\0A\00", align 1
@__func__.fib_add_ifaddr = private unnamed_addr constant [15 x i8] c"fib_add_ifaddr\00", align 1
@__func__.fib_del_ifaddr = private unnamed_addr constant [15 x i8] c"fib_del_ifaddr\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"\014%s: bug: iprim != prim\0A\00", align 1
@fib_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @fib_net_init, ptr null, ptr @fib_net_exit, ptr null, ptr null, i32 0 }, align 4
@fib_netdev_notifier = internal global %struct.notifier_block { ptr @fib_netdev_event, ptr null, i32 0 }, align 4
@fib_inetaddr_notifier = internal global %struct.notifier_block { ptr @fib_inetaddr_event, ptr null, i32 0 }, align 4
@init_net = external dso_local global %struct.net, align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@__const.nl_fib_lookup_init.cfg = private unnamed_addr constant %struct.netlink_kernel_cfg { i32 0, i32 0, ptr @nl_fib_input, ptr null, ptr null, ptr null, ptr null }, align 4
@rtm_to_fib_config.__msg = internal constant [19 x i8] c"Invalid route type\00", align 1
@rtm_to_fib_config.__msg.13 = internal constant [60 x i8] c"Nexthop specification and nexthop id are mutually exclusive\00", align 1
@rtm_to_fib_config.__msg.14 = internal constant [59 x i8] c"Nexthop configuration can not contain both GATEWAY and VIA\00", align 1
@lwtunnel_valid_encap_type.__msg = internal constant [46 x i8] c"CONFIG_LWTUNNEL is not enabled in this kernel\00", align 1
@inet_rtm_delroute.__msg = internal constant [26 x i8] c"Nexthop id does not exist\00", align 1
@inet_rtm_delroute.__msg.15 = internal constant [25 x i8] c"FIB table does not exist\00", align 1
@__const.inet_dump_fib.filter = private unnamed_addr constant { i32, i8, i8, i8, i8, i8, [3 x i8], i32, ptr } { i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, [3 x i8] zeroinitializer, i32 0, ptr null }, align 4
@inet_dump_fib.__msg = internal constant [31 x i8] c"ipv4: FIB table does not exist\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_fib_info_nh_uses_dev, ptr @__ksymtab_inet_addr_type, ptr @__ksymtab_inet_addr_type_dev_table, ptr @__ksymtab_inet_addr_type_table, ptr @__ksymtab_inet_dev_addr_type, ptr @__ksymtab_ip_valid_fib_dump_req], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_unmerge(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 12
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr %struct.hlist_head, ptr %3, i32 1
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @fib_trie_unmerge(ptr noundef nonnull %5) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %8, %5
  br i1 %11, label %27, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr %5, align 4
  store ptr %13, ptr %8, align 4
  %14 = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  store volatile ptr %15, ptr %16, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %17 = load ptr, ptr %16, align 4
  store volatile ptr %8, ptr %17, align 4
  %18 = icmp eq ptr %13, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  store volatile ptr %8, ptr %21, align 4
  br label %22

22:                                               ; preds = %19, %12
  store volatile ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  tail call void @fib_free_table(ptr noundef nonnull %5) #14
  %23 = load ptr, ptr %2, align 64
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @fib_table_flush_external(ptr noundef nonnull %24) #14
  br label %27

27:                                               ; preds = %26, %22, %10, %7, %1
  %28 = phi i32 [ 0, %26 ], [ 0, %1 ], [ -12, %7 ], [ 0, %10 ], [ 0, %22 ]
  ret i32 %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib_trie_unmerge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib_table_flush_external(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib_flush(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 12
  %3 = load ptr, ptr %2, align 64
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %6, %1
  %7 = phi i32 [ %11, %6 ], [ 0, %1 ]
  %8 = phi ptr [ %9, %6 ], [ %4, %1 ]
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @fib_table_flush(ptr noundef %0, ptr noundef nonnull %8, i1 noundef zeroext false) #14
  %11 = add i32 %10, %7
  %12 = icmp eq ptr %9, null
  br i1 %12, label %13, label %6

13:                                               ; preds = %6
  %14 = load ptr, ptr %2, align 64
  br label %15

15:                                               ; preds = %13, %1
  %16 = phi ptr [ %3, %1 ], [ %14, %13 ]
  %17 = phi i32 [ 0, %1 ], [ %11, %13 ]
  %18 = getelementptr %struct.hlist_head, ptr %16, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %21, %15
  %22 = phi i32 [ %26, %21 ], [ %17, %15 ]
  %23 = phi ptr [ %24, %21 ], [ %19, %15 ]
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @fib_table_flush(ptr noundef %0, ptr noundef nonnull %23, i1 noundef zeroext false) #14
  %26 = add i32 %25, %22
  %27 = icmp eq ptr %24, null
  br i1 %27, label %28, label %21

28:                                               ; preds = %21, %15
  %29 = phi i32 [ %17, %15 ], [ %26, %21 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void @rt_cache_flush(ptr noundef %0) #14
  br label %32

32:                                               ; preds = %31, %28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_table_flush(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_cache_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_addr_type_table(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.flowi4, align 8
  %5 = alloca %struct.fib_result, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #14
  %6 = getelementptr inbounds %struct.flowi4, ptr %4, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #14
  store i32 %1, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false) #14, !annotation !9
  switch i32 %1, label %7 [
    i32 0, label %55
    i32 -1, label %55
  ]

7:                                                ; preds = %3
  %8 = and i32 %1, 240
  %9 = icmp eq i32 %8, 224
  br i1 %9, label %55, label %10

10:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %11 = icmp eq i32 %2, 255
  %12 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 12
  %13 = load ptr, ptr %12, align 64
  %14 = zext i1 %11 to i32
  %15 = getelementptr %struct.hlist_head, ptr %13, i32 %14
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %53, label %18

18:                                               ; preds = %10
  %19 = call i32 @fib_table_lookup(ptr noundef nonnull %16, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 1) #14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.fib_result, ptr %5, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.fib_info, ptr %23, i32 0, i32 18
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %49, label %27, !prof !11

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.nexthop, ptr %25, i32 0, i32 9
  %29 = load i8, ptr %28, align 2, !range !12
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.nexthop, ptr %25, i32 0, i32 12
  %33 = load volatile ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nh_group, ptr %33, i32 0, i32 2
  %35 = load i8, ptr %34, align 2, !range !12
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.nh_group, ptr %33, i32 0, i32 1
  %39 = load i16, ptr %38, align 4
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.nh_group, ptr %33, i32 0, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41, %31, %27
  %46 = phi ptr [ %25, %27 ], [ %43, %41 ], [ %25, %31 ]
  %47 = getelementptr inbounds %struct.nexthop, ptr %46, i32 0, i32 12
  %48 = load volatile ptr, ptr %47, align 4
  br label %49

49:                                               ; preds = %45, %41, %37, %21
  %50 = getelementptr inbounds %struct.fib_result, ptr %5, i32 0, i32 3
  %51 = load i8, ptr %50, align 2
  %52 = zext i8 %51 to i32
  br label %53

53:                                               ; preds = %49, %18, %10
  %54 = phi i32 [ 1, %18 ], [ 3, %10 ], [ %52, %49 ]
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %55

55:                                               ; preds = %53, %7, %3, %3
  %56 = phi i32 [ %54, %53 ], [ 3, %3 ], [ 5, %7 ], [ 3, %3 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #14
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_addr_type(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.flowi4, align 8
  %4 = alloca %struct.fib_result, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #14
  %5 = getelementptr inbounds %struct.flowi4, ptr %3, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false) #14
  store i32 %1, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false) #14, !annotation !9
  switch i32 %1, label %6 [
    i32 0, label %52
    i32 -1, label %52
  ]

6:                                                ; preds = %2
  %7 = and i32 %1, 240
  %8 = icmp eq i32 %7, 224
  br i1 %8, label %52, label %9

9:                                                ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %10 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 12
  %11 = load ptr, ptr %10, align 64
  %12 = getelementptr %struct.hlist_head, ptr %11, i32 1
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %50, label %15

15:                                               ; preds = %9
  %16 = call i32 @fib_table_lookup(ptr noundef nonnull %13, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 1) #14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.fib_result, ptr %4, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.fib_info, ptr %20, i32 0, i32 18
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24, !prof !11

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.nexthop, ptr %22, i32 0, i32 9
  %26 = load i8, ptr %25, align 2, !range !12
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.nexthop, ptr %22, i32 0, i32 12
  %30 = load volatile ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nh_group, ptr %30, i32 0, i32 2
  %32 = load i8, ptr %31, align 2, !range !12
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.nh_group, ptr %30, i32 0, i32 1
  %36 = load i16, ptr %35, align 4
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.nh_group, ptr %30, i32 0, i32 8
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38, %28, %24
  %43 = phi ptr [ %22, %24 ], [ %40, %38 ], [ %22, %28 ]
  %44 = getelementptr inbounds %struct.nexthop, ptr %43, i32 0, i32 12
  %45 = load volatile ptr, ptr %44, align 4
  br label %46

46:                                               ; preds = %42, %38, %34, %18
  %47 = getelementptr inbounds %struct.fib_result, ptr %4, i32 0, i32 3
  %48 = load i8, ptr %47, align 2
  %49 = zext i8 %48 to i32
  br label %50

50:                                               ; preds = %46, %15, %9
  %51 = phi i32 [ 1, %15 ], [ 3, %9 ], [ %49, %46 ]
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %52

52:                                               ; preds = %50, %6, %2, %2
  %53 = phi i32 [ %51, %50 ], [ 3, %2 ], [ 5, %6 ], [ 3, %2 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #14
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_dev_addr_type(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) #0 {
  %4 = alloca %struct.flowi4, align 8
  %5 = alloca %struct.fib_result, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #14
  %6 = getelementptr inbounds %struct.flowi4, ptr %4, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #14
  store i32 %2, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false) #14, !annotation !9
  switch i32 %2, label %7 [
    i32 0, label %62
    i32 -1, label %62
  ]

7:                                                ; preds = %3
  %8 = and i32 %2, 240
  %9 = icmp eq i32 %8, 224
  br i1 %9, label %62, label %10

10:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %11 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 12
  %12 = load ptr, ptr %11, align 64
  %13 = getelementptr %struct.hlist_head, ptr %12, i32 1
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %60, label %16

16:                                               ; preds = %10
  %17 = call i32 @fib_table_lookup(ptr noundef nonnull %14, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 1) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.fib_result, ptr %5, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.fib_info, ptr %21, i32 0, i32 18
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %48, label %25, !prof !11

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.nexthop, ptr %23, i32 0, i32 9
  %27 = load i8, ptr %26, align 2, !range !12
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.nexthop, ptr %23, i32 0, i32 12
  %31 = load volatile ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nh_group, ptr %31, i32 0, i32 2
  %33 = load i8, ptr %32, align 2, !range !12
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.nh_group, ptr %31, i32 0, i32 1
  %37 = load i16, ptr %36, align 4
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.nh_group, ptr %31, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %39, %29, %25
  %44 = phi ptr [ %23, %25 ], [ %41, %39 ], [ %23, %29 ]
  %45 = getelementptr inbounds %struct.nexthop, ptr %44, i32 0, i32 12
  %46 = load volatile ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nh_info, ptr %46, i32 0, i32 5
  br label %50

48:                                               ; preds = %19
  %49 = getelementptr inbounds %struct.fib_info, ptr %21, i32 0, i32 20
  br label %50

50:                                               ; preds = %48, %43, %39, %35
  %51 = phi ptr [ %49, %48 ], [ %47, %43 ], [ null, %39 ], [ null, %35 ]
  %52 = icmp eq ptr %1, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %51, align 4
  %55 = icmp eq ptr %54, %1
  br i1 %55, label %56, label %60

56:                                               ; preds = %53, %50
  %57 = getelementptr inbounds %struct.fib_result, ptr %5, i32 0, i32 3
  %58 = load i8, ptr %57, align 2
  %59 = zext i8 %58 to i32
  br label %60

60:                                               ; preds = %56, %53, %16, %10
  %61 = phi i32 [ 1, %16 ], [ 3, %10 ], [ %59, %56 ], [ 1, %53 ]
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %62

62:                                               ; preds = %60, %7, %3, %3
  %63 = phi i32 [ %61, %60 ], [ 3, %3 ], [ 5, %7 ], [ 3, %3 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #14
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_addr_type_dev_table(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 noundef %2) #0 {
  %4 = alloca %struct.flowi4, align 8
  %5 = alloca %struct.fib_result, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #14
  %6 = getelementptr inbounds %struct.flowi4, ptr %4, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #14
  store i32 %2, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false) #14, !annotation !9
  switch i32 %2, label %7 [
    i32 0, label %53
    i32 -1, label %53
  ]

7:                                                ; preds = %3
  %8 = and i32 %2, 240
  %9 = icmp eq i32 %8, 224
  br i1 %9, label %53, label %10

10:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %11 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 12
  %12 = load ptr, ptr %11, align 64
  %13 = getelementptr %struct.hlist_head, ptr %12, i32 1
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %51, label %16

16:                                               ; preds = %10
  %17 = call i32 @fib_table_lookup(ptr noundef nonnull %14, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 1) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.fib_result, ptr %5, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.fib_info, ptr %21, i32 0, i32 18
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %47, label %25, !prof !11

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.nexthop, ptr %23, i32 0, i32 9
  %27 = load i8, ptr %26, align 2, !range !12
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.nexthop, ptr %23, i32 0, i32 12
  %31 = load volatile ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nh_group, ptr %31, i32 0, i32 2
  %33 = load i8, ptr %32, align 2, !range !12
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.nh_group, ptr %31, i32 0, i32 1
  %37 = load i16, ptr %36, align 4
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.nh_group, ptr %31, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39, %29, %25
  %44 = phi ptr [ %23, %25 ], [ %41, %39 ], [ %23, %29 ]
  %45 = getelementptr inbounds %struct.nexthop, ptr %44, i32 0, i32 12
  %46 = load volatile ptr, ptr %45, align 4
  br label %47

47:                                               ; preds = %43, %39, %35, %19
  %48 = getelementptr inbounds %struct.fib_result, ptr %5, i32 0, i32 3
  %49 = load i8, ptr %48, align 2
  %50 = zext i8 %49 to i32
  br label %51

51:                                               ; preds = %47, %16, %10
  %52 = phi i32 [ 1, %16 ], [ 3, %10 ], [ %50, %47 ]
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %53

53:                                               ; preds = %51, %7, %3, %3
  %54 = phi i32 [ %52, %51 ], [ 3, %3 ], [ 5, %7 ], [ 3, %3 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #14
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_compute_spec_dst(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.fib_result, align 4
  %3 = alloca %struct.flowi4, align 8
  %4 = getelementptr inbounds %struct.anon.76, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, -2
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.rtable, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, -1342177280
  %13 = icmp eq i32 %12, -2147483648
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = getelementptr i8, ptr %16, i32 %19
  %21 = getelementptr inbounds %struct.iphdr, ptr %20, i32 0, i32 9
  %22 = load i32, ptr %21, align 4
  br label %92

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 68
  %25 = load volatile ptr, ptr %24, align 16
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i32
  %31 = getelementptr i8, ptr %27, i32 %30
  %32 = getelementptr inbounds %struct.iphdr, ptr %31, i32 0, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %88, label %35

35:                                               ; preds = %23
  %36 = icmp eq ptr %25, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #14
  %38 = getelementptr inbounds %struct.flowi_common, ptr %3, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  store i32 1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.flowi_common, ptr %3, i32 0, i32 2
  br label %58

40:                                               ; preds = %35
  %41 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %42 = getelementptr %struct.ipv4_devconf, ptr %41, i32 0, i32 1, i32 23
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #14
  %46 = getelementptr inbounds %struct.flowi_common, ptr %3, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  store i32 1, ptr %46, align 4
  %47 = getelementptr inbounds %struct.flowi_common, ptr %3, i32 0, i32 2
  br label %54

48:                                               ; preds = %40
  %49 = getelementptr %struct.in_device, ptr %25, i32 0, i32 21, i32 1, i32 23
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #14
  %52 = getelementptr inbounds %struct.flowi_common, ptr %3, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  store i32 1, ptr %52, align 4
  %53 = getelementptr inbounds %struct.flowi_common, ptr %3, i32 0, i32 2
  br i1 %51, label %58, label %54

54:                                               ; preds = %48, %45
  %55 = phi ptr [ %47, %45 ], [ %53, %48 ]
  %56 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  %57 = load i32, ptr %56, align 4
  br label %58

58:                                               ; preds = %54, %48, %37
  %59 = phi ptr [ %55, %54 ], [ %53, %48 ], [ %39, %37 ]
  %60 = phi i32 [ %57, %54 ], [ 0, %48 ], [ 0, %37 ]
  store i32 %60, ptr %59, align 8
  %61 = getelementptr inbounds %struct.flowi_common, ptr %3, i32 0, i32 3
  %62 = getelementptr inbounds %struct.iphdr, ptr %31, i32 0, i32 1
  %63 = load i8, ptr %62, align 1
  %64 = and i8 %63, 28
  store i8 %64, ptr %61, align 4
  %65 = getelementptr inbounds %struct.flowi_common, ptr %3, i32 0, i32 4
  %66 = getelementptr inbounds %struct.flowi4, ptr %3, i32 0, i32 1
  store i32 0, ptr %66, align 8
  %67 = getelementptr inbounds %struct.flowi4, ptr %3, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(23) %65, i8 0, i64 23, i1 false)
  %68 = load i32, ptr %32, align 4
  store i32 %68, ptr %67, align 4
  %69 = getelementptr inbounds %struct.flowi4, ptr %3, i32 0, i32 3
  store i32 0, ptr %69, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %70 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %71 = load volatile ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %58
  %74 = call i32 @fib_table_lookup(ptr noundef nonnull %71, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 1) #14
  %75 = icmp eq i32 %74, -11
  br i1 %75, label %76, label %77

76:                                               ; preds = %73, %58
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %79

77:                                               ; preds = %73
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %78 = icmp eq i32 %74, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %77, %76
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #14
  %80 = load ptr, ptr %26, align 8
  %81 = load i16, ptr %28, align 4
  %82 = zext i16 %81 to i32
  %83 = getelementptr i8, ptr %80, i32 %82
  %84 = getelementptr inbounds %struct.iphdr, ptr %83, i32 0, i32 8
  %85 = load i32, ptr %84, align 4
  br label %88

86:                                               ; preds = %77
  %87 = call i32 @fib_result_prefsrc(ptr noundef nonnull @init_net, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #14
  br label %92

88:                                               ; preds = %79, %23
  %89 = phi i32 [ 0, %23 ], [ %85, %79 ]
  %90 = phi i32 [ 253, %23 ], [ 0, %79 ]
  %91 = call i32 @inet_select_addr(ptr noundef %5, i32 noundef %89, i32 noundef %90) #14
  br label %92

92:                                               ; preds = %88, %86, %14
  %93 = phi i32 [ %22, %14 ], [ %91, %88 ], [ %87, %86 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #14
  ret i32 %93
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fib_lookup(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %4 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = or i32 %2, 1
  %9 = tail call i32 @fib_table_lookup(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1, i32 noundef %8) #14
  %10 = icmp eq i32 %9, -11
  %11 = select i1 %10, i32 -101, i32 %9
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ -101, %3 ], [ %11, %7 ]
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_result_prefsrc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_select_addr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @fib_info_nh_uses_dev(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #5 {
  %3 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 18
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6, !prof !11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nexthop, ptr %4, i32 0, i32 9
  %8 = load i8, ptr %7, align 2, !range !12
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nexthop, ptr %4, i32 0, i32 12
  %12 = load volatile ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nh_group, ptr %12, i32 0, i32 2
  %14 = load i8, ptr %13, align 2, !range !12
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.nh_group, ptr %12, i32 0, i32 1
  %18 = load i16, ptr %17, align 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.nh_group, ptr %12, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %20, %10, %6
  %25 = phi ptr [ %4, %6 ], [ %22, %20 ], [ %4, %10 ]
  %26 = getelementptr inbounds %struct.nexthop, ptr %25, i32 0, i32 12
  %27 = load volatile ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nh_info, ptr %27, i32 0, i32 5
  br label %31

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.fib_info, ptr %0, i32 0, i32 20
  br label %31

31:                                               ; preds = %29, %24, %20, %16
  %32 = phi ptr [ %30, %29 ], [ %28, %24 ], [ null, %20 ], [ null, %16 ]
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %1
  ret i1 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_validate_source(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4, ptr noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #0 {
  %9 = alloca %struct.fib_result, align 4
  %10 = alloca %struct.flowi4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %8
  %16 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %17 = getelementptr %struct.ipv4_devconf, ptr %16, i32 0, i32 1, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr %struct.in_device, ptr %6, i32 0, i32 21, i32 1, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.smax.i32(i32 %18, i32 %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %15, %8
  %24 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 17
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %4
  %27 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  br i1 %26, label %28, label %36

28:                                               ; preds = %23
  %29 = getelementptr %struct.ipv4_devconf, ptr %27, i32 0, i32 1, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = getelementptr %struct.in_device, ptr %6, i32 0, i32 21, i32 1, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %32, %23
  %37 = getelementptr %struct.ipv4_devconf, ptr %27, i32 0, i32 1, i32 22
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = getelementptr %struct.in_device, ptr %6, i32 0, i32 21, i32 1, i32 22
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 10), align 4, !range !12
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = tail call ptr @inet_lookup_ifaddr_rcu(ptr noundef nonnull @init_net, i32 noundef %1) #14
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %170

50:                                               ; preds = %47, %40, %36
  store i32 0, ptr %7, align 4
  br label %170

51:                                               ; preds = %44, %32, %28, %15
  %52 = phi ptr [ %16, %15 ], [ %27, %28 ], [ %27, %32 ], [ %27, %44 ]
  %53 = phi i1 [ false, %15 ], [ true, %28 ], [ true, %32 ], [ true, %44 ]
  %54 = phi i32 [ %21, %15 ], [ 0, %28 ], [ 0, %32 ], [ 0, %44 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 28, i1 false) #14, !annotation !9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #14
  %55 = getelementptr inbounds %struct.flowi_common, ptr %10, i32 0, i32 1
  %56 = icmp eq i32 %4, 0
  %57 = select i1 %56, i32 1, i32 %4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i64 56, i1 false) #14
  store i32 %57, ptr %55, align 4
  %58 = getelementptr inbounds %struct.flowi4, ptr %10, i32 0, i32 2
  store i32 %1, ptr %58, align 4
  %59 = getelementptr inbounds %struct.flowi4, ptr %10, i32 0, i32 1
  store i32 %2, ptr %59, align 8
  %60 = getelementptr inbounds %struct.flowi_common, ptr %10, i32 0, i32 3
  store i8 %3, ptr %60, align 4
  %61 = getelementptr inbounds %struct.flowi_common, ptr %10, i32 0, i32 8
  %62 = getelementptr inbounds %struct.in_device, ptr %6, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %61, i8 0, i64 16, i1 false) #14
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  %65 = getelementptr %struct.ipv4_devconf, ptr %52, i32 0, i32 1, i32 23
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %51
  %69 = getelementptr %struct.in_device, ptr %6, i32 0, i32 21, i32 1, i32 23
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68, %51
  %73 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  %74 = load i32, ptr %73, align 4
  br label %75

75:                                               ; preds = %72, %68
  %76 = phi i32 [ %74, %72 ], [ 0, %68 ]
  %77 = getelementptr inbounds %struct.flowi_common, ptr %10, i32 0, i32 2
  store i32 %76, ptr %77, align 8
  %78 = getelementptr inbounds %struct.flowi4, ptr %10, i32 0, i32 3
  %79 = getelementptr inbounds %struct.anon.140, ptr %78, i32 0, i32 1
  store i16 0, ptr %79, align 2
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %80 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %81 = load volatile ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %75
  %84 = call i32 @fib_table_lookup(ptr noundef nonnull %81, ptr noundef nonnull %10, ptr noundef nonnull %9, i32 noundef 1) #14
  %85 = icmp eq i32 %84, -11
  br i1 %85, label %86, label %87

86:                                               ; preds = %83, %75
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %166

87:                                               ; preds = %83
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %88 = icmp eq i32 %84, 0
  br i1 %88, label %89, label %166

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.fib_result, ptr %9, i32 0, i32 3
  %91 = load i8, ptr %90, align 2
  switch i8 %91, label %168 [
    i8 1, label %101
    i8 2, label %92
  ]

92:                                               ; preds = %89
  %93 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %94 = getelementptr %struct.ipv4_devconf, ptr %93, i32 0, i32 1, i32 22
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = getelementptr %struct.in_device, ptr %6, i32 0, i32 21, i32 1, i32 22
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %168, label %101

101:                                              ; preds = %97, %92, %89
  %102 = getelementptr inbounds %struct.fib_result, ptr %9, i32 0, i32 7
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.fib_info, ptr %103, i32 0, i32 18
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %130, label %107, !prof !11

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.nexthop, ptr %105, i32 0, i32 9
  %109 = load i8, ptr %108, align 2, !range !12
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %125, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.nexthop, ptr %105, i32 0, i32 12
  %113 = load volatile ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.nh_group, ptr %113, i32 0, i32 2
  %115 = load i8, ptr %114, align 2, !range !12
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.nh_group, ptr %113, i32 0, i32 1
  %119 = load i16, ptr %118, align 4
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.nh_group, ptr %113, i32 0, i32 8
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %132, label %125

125:                                              ; preds = %121, %111, %107
  %126 = phi ptr [ %105, %107 ], [ %123, %121 ], [ %105, %111 ]
  %127 = getelementptr inbounds %struct.nexthop, ptr %126, i32 0, i32 12
  %128 = load volatile ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.nh_info, ptr %128, i32 0, i32 5
  br label %132

130:                                              ; preds = %101
  %131 = getelementptr inbounds %struct.fib_info, ptr %103, i32 0, i32 20
  br label %132

132:                                              ; preds = %130, %125, %121, %117
  %133 = phi ptr [ %131, %130 ], [ %129, %125 ], [ null, %121 ], [ null, %117 ]
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, %5
  br i1 %135, label %141, label %136

136:                                              ; preds = %132
  %137 = icmp eq i8 %91, 2
  %138 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 27), align 64
  %139 = icmp eq ptr %138, %5
  %140 = select i1 %137, i1 %139, i1 false
  br i1 %140, label %141, label %148

141:                                              ; preds = %136, %132
  %142 = getelementptr inbounds %struct.fib_result, ptr %9, i32 0, i32 6
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.fib_nh_common, ptr %143, i32 0, i32 3
  %145 = load i8, ptr %144, align 4
  %146 = icmp ugt i8 %145, -3
  %147 = zext i1 %146 to i32
  br label %168

148:                                              ; preds = %136
  br i1 %64, label %166, label %149

149:                                              ; preds = %148
  %150 = icmp eq i32 %54, 1
  br i1 %150, label %168, label %151

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 17
  %153 = load i32, ptr %152, align 4
  store i32 %153, ptr %10, align 8
  %154 = call fastcc i32 @fib_lookup(ptr noundef nonnull %10, ptr noundef nonnull %9, i32 noundef 2) #14
  %155 = icmp eq i32 %154, 0
  %156 = load i8, ptr %90, align 2
  %157 = icmp eq i8 %156, 1
  %158 = select i1 %155, i1 %157, i1 false
  br i1 %158, label %159, label %168

159:                                              ; preds = %151
  %160 = getelementptr inbounds %struct.fib_result, ptr %9, i32 0, i32 6
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.fib_nh_common, ptr %161, i32 0, i32 3
  %163 = load i8, ptr %162, align 4
  %164 = icmp ugt i8 %163, -3
  %165 = zext i1 %164 to i32
  br label %168

166:                                              ; preds = %148, %87, %86
  br i1 %53, label %167, label %168

167:                                              ; preds = %166
  store i32 0, ptr %7, align 4
  br label %168

168:                                              ; preds = %167, %166, %159, %151, %149, %141, %97, %89
  %169 = phi i32 [ 0, %167 ], [ %147, %141 ], [ %165, %159 ], [ 0, %151 ], [ -22, %89 ], [ -22, %97 ], [ -18, %166 ], [ -18, %149 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #14
  br label %170

170:                                              ; preds = %168, %50, %47
  %171 = phi i32 [ %169, %168 ], [ 0, %50 ], [ -22, %47 ]
  ret i32 %171
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_lookup_ifaddr_rcu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_rt_ioctl(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.flowi4, align 8
  %5 = alloca %struct.fib_result, align 4
  %6 = alloca [16 x i8], align 1
  %7 = alloca %struct.fib_config, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %7) #14
  %8 = add i32 %1, -35083
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %291

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = tail call zeroext i1 @ns_capable(ptr noundef %12, i32 noundef 12) #14
  br i1 %13, label %14, label %291

14:                                               ; preds = %10
  tail call void @rtnl_lock() #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(100) %7, i8 0, i32 100, i1 false) #14
  %15 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 20, i32 1
  store ptr %0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.rtentry, ptr %2, i32 0, i32 1
  %17 = load i16, ptr %16, align 4
  %18 = icmp eq i16 %17, 2
  br i1 %18, label %19, label %289

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.rtentry, ptr %2, i32 0, i32 1, i32 1, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.rtentry, ptr %2, i32 0, i32 4
  %23 = load i16, ptr %22, align 4
  %24 = and i16 %23, 4
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.rtentry, ptr %2, i32 0, i32 3
  %28 = getelementptr inbounds %struct.rtentry, ptr %2, i32 0, i32 3, i32 1, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = load i16, ptr %27, align 4
  %31 = icmp eq i16 %30, 2
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = icmp eq i32 %29, 0
  %34 = icmp eq i16 %30, 0
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %289

36:                                               ; preds = %32, %26
  %37 = xor i32 %29, -1
  %38 = and i32 %21, %37
  %39 = icmp ne i32 %38, 0
  %40 = tail call i32 @llvm.bswap.i32(i32 %37) #14
  %41 = add i32 %40, 1
  %42 = and i32 %41, %40
  %43 = icmp ne i32 %42, 0
  %44 = select i1 %39, i1 true, i1 %43
  br i1 %44, label %289, label %45

45:                                               ; preds = %36
  %46 = icmp eq i32 %29, 0
  %47 = tail call i32 @llvm.bswap.i32(i32 %29) #14
  %48 = tail call i32 @llvm.cttz.i32(i32 %47, i1 false) #14, !range !14
  %49 = sub nuw nsw i32 32, %48
  %50 = select i1 %46, i32 0, i32 %49
  br label %51

51:                                               ; preds = %45, %19
  %52 = phi i32 [ 32, %19 ], [ %50, %45 ]
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr %7, align 4
  %54 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 7
  store i32 %21, ptr %54, align 4
  %55 = icmp eq i32 %1, 35084
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 19
  store i32 1024, ptr %57, align 4
  %58 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 2
  store i8 3, ptr %58, align 2
  br label %59

59:                                               ; preds = %56, %51
  %60 = getelementptr inbounds %struct.rtentry, ptr %2, i32 0, i32 8
  %61 = load i16, ptr %60, align 4
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = sext i16 %61 to i32
  %65 = add nsw i32 %64, -1
  %66 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 11
  store i32 %65, ptr %66, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = and i16 %23, 512
  %69 = icmp eq i16 %68, 0
  %70 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 3
  br i1 %69, label %71, label %262

71:                                               ; preds = %67
  store i8 -1, ptr %70, align 1
  %72 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 4
  store i8 1, ptr %72, align 4
  %73 = getelementptr inbounds %struct.rtentry, ptr %2, i32 0, i32 9
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %130, label %76

76:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %6, i8 0, i32 16, i1 false) #14, !annotation !9
  %77 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %74, i32 15, i32 -1090519040) #15, !srcloc !15
  %78 = extractvalue { i32, i32 } %77, 0
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %88, !prof !11

80:                                               ; preds = %76
  %81 = tail call ptr @llvm.thread.pointer() #14
  %82 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 3
  %83 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %82) #16, !srcloc !16
  %84 = and i32 %83, -13
  %85 = or i32 %84, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %85) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %86 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef nonnull %74, i32 noundef 15) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %83) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88, !prof !11

88:                                               ; preds = %80, %76
  %89 = phi i32 [ %86, %80 ], [ 15, %76 ]
  %90 = sub i32 15, %89
  %91 = getelementptr i8, ptr %6, i32 %90
  call void @llvm.memset.p0.i32(ptr align 1 %91, i8 0, i32 %89, i1 false) #14
  br label %127

92:                                               ; preds = %80
  %93 = getelementptr inbounds [16 x i8], ptr %6, i32 0, i32 15
  store i8 0, ptr %93, align 1
  %94 = call ptr @strchr(ptr noundef nonnull %6, i32 noundef 58) #14
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  store i8 0, ptr %94, align 1
  br label %97

97:                                               ; preds = %96, %92
  %98 = call ptr @__dev_get_by_name(ptr noundef %0, ptr noundef nonnull %6) #14
  %99 = icmp eq ptr %98, null
  br i1 %99, label %127, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.net_device, ptr %98, i32 0, i32 17
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 9
  store i32 %102, ptr %103, align 4
  %104 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 6
  store i32 0, ptr %104, align 4
  br i1 %95, label %129, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.net_device, ptr %98, i32 0, i32 68
  %107 = load ptr, ptr %106, align 16
  %108 = icmp eq ptr %107, null
  br i1 %108, label %127, label %109

109:                                              ; preds = %105
  store i8 58, ptr %94, align 1
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %110 = getelementptr inbounds %struct.in_device, ptr %107, i32 0, i32 4
  %111 = load volatile ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %122, label %113

113:                                              ; preds = %118, %109
  %114 = phi ptr [ %120, %118 ], [ %111, %109 ]
  %115 = getelementptr inbounds %struct.in_ifaddr, ptr %114, i32 0, i32 12
  %116 = call i32 @strcmp(ptr noundef %115, ptr noundef nonnull %6) #14
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.in_ifaddr, ptr %114, i32 0, i32 1
  %120 = load volatile ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %113

122:                                              ; preds = %118, %109
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %127

123:                                              ; preds = %113
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %124 = getelementptr inbounds %struct.in_ifaddr, ptr %114, i32 0, i32 4
  %125 = load i32, ptr %124, align 4
  %126 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 12
  store i32 %125, ptr %126, align 4
  br label %129

127:                                              ; preds = %122, %105, %97, %88
  %128 = phi i32 [ -19, %97 ], [ -14, %88 ], [ -19, %122 ], [ -19, %105 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  br label %289

129:                                              ; preds = %123, %100
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  br label %130

130:                                              ; preds = %129, %71
  %131 = getelementptr inbounds %struct.rtentry, ptr %2, i32 0, i32 2
  %132 = getelementptr inbounds %struct.rtentry, ptr %2, i32 0, i32 2, i32 1, i32 2
  %133 = load i32, ptr %132, align 4
  %134 = load i16, ptr %131, align 4
  %135 = icmp eq i16 %134, 2
  %136 = icmp ne i32 %133, 0
  %137 = select i1 %135, i1 %136, i1 false
  br i1 %137, label %138, label %199

138:                                              ; preds = %130
  %139 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 8
  store i32 %133, ptr %139, align 4
  %140 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 5
  store i8 2, ptr %140, align 1
  %141 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 6
  %142 = load i32, ptr %141, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #14
  %143 = getelementptr inbounds %struct.flowi4, ptr %4, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #14
  store i32 %133, ptr %143, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false) #14, !annotation !9
  %144 = icmp eq i32 %133, -1
  %145 = and i32 %133, 240
  %146 = icmp eq i32 %145, 224
  %147 = or i1 %144, %146
  br i1 %147, label %191, label %148

148:                                              ; preds = %138
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %149 = icmp eq i32 %142, 255
  %150 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 12
  %151 = load ptr, ptr %150, align 64
  %152 = zext i1 %149 to i32
  %153 = getelementptr %struct.hlist_head, ptr %151, i32 %152
  %154 = load volatile ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %192, label %156

156:                                              ; preds = %148
  %157 = call i32 @fib_table_lookup(ptr noundef nonnull %154, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 1) #14
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %192

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.fib_result, ptr %5, i32 0, i32 7
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.fib_info, ptr %161, i32 0, i32 18
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %187, label %165, !prof !11

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.nexthop, ptr %163, i32 0, i32 9
  %167 = load i8, ptr %166, align 2, !range !12
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %183, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.nexthop, ptr %163, i32 0, i32 12
  %171 = load volatile ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.nh_group, ptr %171, i32 0, i32 2
  %173 = load i8, ptr %172, align 2, !range !12
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %183, label %175

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.nh_group, ptr %171, i32 0, i32 1
  %177 = load i16, ptr %176, align 4
  %178 = icmp eq i16 %177, 0
  br i1 %178, label %187, label %179

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.nh_group, ptr %171, i32 0, i32 8
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %187, label %183

183:                                              ; preds = %179, %169, %165
  %184 = phi ptr [ %163, %165 ], [ %181, %179 ], [ %163, %169 ]
  %185 = getelementptr inbounds %struct.nexthop, ptr %184, i32 0, i32 12
  %186 = load volatile ptr, ptr %185, align 4
  br label %187

187:                                              ; preds = %183, %179, %175, %159
  %188 = getelementptr inbounds %struct.fib_result, ptr %5, i32 0, i32 3
  %189 = load i8, ptr %188, align 2
  %190 = icmp eq i8 %189, 1
  br label %192

191:                                              ; preds = %138
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #14
  br label %199

192:                                              ; preds = %187, %156, %148
  %193 = phi i1 [ true, %156 ], [ false, %148 ], [ %190, %187 ]
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #14
  %194 = load i16, ptr %22, align 4
  %195 = and i16 %194, 2
  %196 = icmp ne i16 %195, 0
  %197 = select i1 %196, i1 %193, i1 false
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  store i8 0, ptr %70, align 1
  br label %199

199:                                              ; preds = %198, %192, %191, %130
  br i1 %55, label %200, label %205

200:                                              ; preds = %199
  %201 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 6
  %202 = load i32, ptr %201, align 4
  %203 = icmp eq i32 %202, 255
  %204 = zext i1 %203 to i32
  br label %264

205:                                              ; preds = %199
  %206 = load i16, ptr %22, align 4
  %207 = and i16 %206, 2
  %208 = icmp ne i16 %207, 0
  %209 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 5
  %210 = load i8, ptr %209, align 1
  %211 = icmp eq i8 %210, 0
  %212 = select i1 %208, i1 %211, i1 false
  br i1 %212, label %289, label %213

213:                                              ; preds = %205
  %214 = load i8, ptr %70, align 1
  %215 = icmp eq i8 %214, -1
  br i1 %215, label %216, label %217

216:                                              ; preds = %213
  store i8 -3, ptr %70, align 1
  br label %217

217:                                              ; preds = %216, %213
  %218 = and i16 %206, 448
  %219 = icmp eq i16 %218, 0
  br i1 %219, label %273, label %220

220:                                              ; preds = %217
  %221 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %222 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %221, i32 noundef 3520, i32 noundef 24) #17
  %223 = icmp eq ptr %222, null
  br i1 %223, label %289, label %224

224:                                              ; preds = %220
  %225 = load i16, ptr %22, align 4
  %226 = and i16 %225, 64
  %227 = icmp eq i16 %226, 0
  br i1 %227, label %234, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.rtentry, ptr %2, i32 0, i32 10
  %230 = load i32, ptr %229, align 4
  %231 = add i32 %230, -40
  %232 = getelementptr inbounds %struct.nlattr, ptr %222, i32 0, i32 1
  store i16 8, ptr %232, align 2
  store i16 8, ptr %222, align 8
  %233 = getelementptr i8, ptr %222, i32 4
  store i32 %231, ptr %233, align 4
  br label %234

234:                                              ; preds = %228, %224
  %235 = phi i32 [ 8, %228 ], [ 0, %224 ]
  %236 = and i16 %225, 128
  %237 = icmp eq i16 %236, 0
  br i1 %237, label %245, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.rtentry, ptr %2, i32 0, i32 11
  %240 = load i32, ptr %239, align 4
  %241 = getelementptr i8, ptr %222, i32 %235
  %242 = getelementptr inbounds %struct.nlattr, ptr %241, i32 0, i32 1
  store i16 3, ptr %242, align 2
  store i16 8, ptr %241, align 8
  %243 = getelementptr i8, ptr %241, i32 4
  store i32 %240, ptr %243, align 4
  %244 = add nuw nsw i32 %235, 8
  br label %245

245:                                              ; preds = %238, %234
  %246 = phi i32 [ %244, %238 ], [ %235, %234 ]
  %247 = and i16 %225, 256
  %248 = icmp eq i16 %247, 0
  br i1 %248, label %258, label %249

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.rtentry, ptr %2, i32 0, i32 12
  %251 = load i16, ptr %250, align 4
  %252 = zext i16 %251 to i32
  %253 = shl nuw nsw i32 %252, 3
  %254 = getelementptr i8, ptr %222, i32 %246
  %255 = getelementptr inbounds %struct.nlattr, ptr %254, i32 0, i32 1
  store i16 4, ptr %255, align 2
  store i16 8, ptr %254, align 2
  %256 = getelementptr i8, ptr %254, i32 4
  store i32 %253, ptr %256, align 4
  %257 = add nuw nsw i32 %246, 8
  br label %258

258:                                              ; preds = %249, %245
  %259 = phi i32 [ %257, %249 ], [ %246, %245 ]
  %260 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 14
  store ptr %222, ptr %260, align 4
  %261 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 16
  store i32 %259, ptr %261, align 4
  br label %273

262:                                              ; preds = %67
  store i8 -2, ptr %70, align 1
  %263 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 4
  store i8 7, ptr %263, align 4
  br i1 %55, label %264, label %273

264:                                              ; preds = %262, %200
  %265 = phi i32 [ %204, %200 ], [ 0, %262 ]
  %266 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 12
  %267 = load ptr, ptr %266, align 64
  %268 = getelementptr %struct.hlist_head, ptr %267, i32 %265
  %269 = load volatile ptr, ptr %268, align 4
  %270 = icmp eq ptr %269, null
  br i1 %270, label %285, label %271

271:                                              ; preds = %264
  %272 = call i32 @fib_table_delete(ptr noundef %0, ptr noundef nonnull %269, ptr noundef nonnull %7, ptr noundef null) #14
  br label %285

273:                                              ; preds = %262, %258, %217
  %274 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 6
  %275 = load i32, ptr %274, align 4
  %276 = icmp eq i32 %275, 255
  %277 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 12
  %278 = load ptr, ptr %277, align 64
  %279 = zext i1 %276 to i32
  %280 = getelementptr %struct.hlist_head, ptr %278, i32 %279
  %281 = load volatile ptr, ptr %280, align 4
  %282 = icmp eq ptr %281, null
  br i1 %282, label %285, label %283

283:                                              ; preds = %273
  %284 = call i32 @fib_table_insert(ptr noundef %0, ptr noundef nonnull %281, ptr noundef nonnull %7, ptr noundef null) #14
  br label %285

285:                                              ; preds = %283, %273, %271, %264
  %286 = phi i32 [ %272, %271 ], [ %284, %283 ], [ -3, %264 ], [ -105, %273 ]
  %287 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 14
  %288 = load ptr, ptr %287, align 4
  call void @kfree(ptr noundef %288) #14
  br label %289

289:                                              ; preds = %285, %220, %205, %127, %36, %32, %14
  %290 = phi i32 [ %286, %285 ], [ -12, %220 ], [ -97, %32 ], [ -22, %36 ], [ %128, %127 ], [ -97, %14 ], [ -22, %205 ]
  call void @rtnl_unlock() #14
  br label %291

291:                                              ; preds = %289, %10, %3
  %292 = phi i32 [ %290, %289 ], [ -1, %10 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %7) #14
  ret i32 %292
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_table_delete(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_table_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_gw_from_via(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i16, ptr %1, align 2
  %5 = zext i16 %4 to i32
  %6 = and i32 %5, 65534
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_gw_from_via.__msg) #14
  %9 = icmp eq ptr %2, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %8
  store ptr @fib_gw_from_via.__msg, ptr %2, align 4
  br label %37

11:                                               ; preds = %3
  %12 = getelementptr i8, ptr %1, i32 4
  %13 = add nsw i32 %5, -6
  %14 = load i16, ptr %12, align 2
  switch i16 %14, label %34 [
    i16 2, label %15
    i16 10, label %25
  ]

15:                                               ; preds = %11
  %16 = icmp eq i32 %13, 4
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_gw_from_via.__msg.1) #14
  %18 = icmp eq ptr %2, null
  br i1 %18, label %37, label %19

19:                                               ; preds = %17
  store ptr @fib_gw_from_via.__msg.1, ptr %2, align 4
  br label %37

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 5
  store i8 2, ptr %21, align 1
  %22 = getelementptr i8, ptr %1, i32 6
  %23 = load i32, ptr %22, align 2
  %24 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 8
  store i32 %23, ptr %24, align 4
  br label %37

25:                                               ; preds = %11
  %26 = icmp eq i32 %13, 16
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_gw_from_via.__msg.2) #14
  %28 = icmp eq ptr %2, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %27
  store ptr @fib_gw_from_via.__msg.2, ptr %2, align 4
  br label %37

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 5
  store i8 10, ptr %31, align 1
  %32 = getelementptr inbounds %struct.fib_config, ptr %0, i32 0, i32 8
  %33 = getelementptr i8, ptr %1, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %32, ptr noundef align 2 dereferenceable(16) %33, i32 16, i1 false)
  br label %37

34:                                               ; preds = %11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_gw_from_via.__msg.3) #14
  %35 = icmp eq ptr %2, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %34
  store ptr @fib_gw_from_via.__msg.3, ptr %2, align 4
  br label %37

37:                                               ; preds = %36, %34, %30, %29, %27, %20, %19, %17, %10, %8
  %38 = phi i32 [ -22, %10 ], [ -22, %8 ], [ -22, %19 ], [ -22, %17 ], [ -22, %29 ], [ -22, %27 ], [ -22, %36 ], [ -22, %34 ], [ 0, %30 ], [ 0, %20 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_valid_fib_dump_req(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca [31 x ptr], align 4
  %6 = getelementptr inbounds %struct.netlink_callback, ptr %3, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(124) %5, i8 0, i32 124, i1 false), !annotation !9
  %8 = tail call i32 @rtnl_is_locked() #14
  %9 = icmp eq i32 %8, 0
  %10 = load i1, ptr @ip_valid_fib_dump_req.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !19

13:                                               ; preds = %4
  store i1 true, ptr @ip_valid_fib_dump_req.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 905, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 905) #14
  br label %14

14:                                               ; preds = %13, %4
  %15 = load i32, ptr %1, align 4
  %16 = icmp ult i32 %15, 28
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ip_valid_fib_dump_req.__msg) #14
  %18 = icmp eq ptr %7, null
  br i1 %18, label %108, label %19

19:                                               ; preds = %17
  store ptr @ip_valid_fib_dump_req.__msg, ptr %7, align 4
  br label %108

20:                                               ; preds = %14
  %21 = getelementptr i8, ptr %1, i32 17
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %1, i32 18
  %26 = load i8, ptr %25, align 2
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %1, i32 19
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %1, i32 22
  %34 = load i8, ptr %33, align 2
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32, %28, %24, %20
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ip_valid_fib_dump_req.__msg.5) #14
  %37 = icmp eq ptr %7, null
  br i1 %37, label %108, label %38

38:                                               ; preds = %36
  store ptr @ip_valid_fib_dump_req.__msg.5, ptr %7, align 4
  br label %108

39:                                               ; preds = %32
  %40 = getelementptr i8, ptr %1, i32 24
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, -2561
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ip_valid_fib_dump_req.__msg.6) #14
  %45 = icmp eq ptr %7, null
  br i1 %45, label %108, label %46

46:                                               ; preds = %44
  store ptr @ip_valid_fib_dump_req.__msg.6, ptr %7, align 4
  br label %108

47:                                               ; preds = %39
  %48 = and i32 %41, 512
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.fib_dump_filter, ptr %2, i32 0, i32 2
  store i8 0, ptr %51, align 1
  br label %54

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.fib_dump_filter, ptr %2, i32 0, i32 3
  store i8 0, ptr %53, align 2
  br label %54

54:                                               ; preds = %52, %50
  %55 = load i32, ptr %40, align 4
  %56 = getelementptr inbounds %struct.fib_dump_filter, ptr %2, i32 0, i32 6
  store i32 %55, ptr %56, align 4
  %57 = getelementptr i8, ptr %1, i32 21
  %58 = load i8, ptr %57, align 1
  %59 = getelementptr inbounds %struct.fib_dump_filter, ptr %2, i32 0, i32 4
  store i8 %58, ptr %59, align 1
  %60 = getelementptr i8, ptr %1, i32 23
  %61 = load i8, ptr %60, align 1
  %62 = getelementptr inbounds %struct.fib_dump_filter, ptr %2, i32 0, i32 5
  store i8 %61, ptr %62, align 4
  %63 = getelementptr i8, ptr %1, i32 20
  %64 = load i8, ptr %63, align 4
  %65 = zext i8 %64 to i32
  store i32 %65, ptr %2, align 4
  %66 = call fastcc i32 @nlmsg_parse_deprecated_strict(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %7)
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %108, label %68

68:                                               ; preds = %54
  %69 = getelementptr inbounds %struct.fib_dump_filter, ptr %2, i32 0, i32 7
  br label %70

70:                                               ; preds = %87, %68
  %71 = phi i32 [ 0, %68 ], [ %88, %87 ]
  %72 = getelementptr [31 x ptr], ptr %5, i32 0, i32 %71
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %87, label %75

75:                                               ; preds = %70
  switch i32 %71, label %84 [
    i32 15, label %76
    i32 4, label %79
  ]

76:                                               ; preds = %75
  %77 = getelementptr i8, ptr %73, i32 4
  %78 = load i32, ptr %77, align 4
  store i32 %78, ptr %2, align 4
  br label %87

79:                                               ; preds = %75
  %80 = getelementptr i8, ptr %73, i32 4
  %81 = load i32, ptr %80, align 4
  %82 = call ptr @__dev_get_by_index(ptr noundef %0, i32 noundef %81) #14
  store ptr %82, ptr %69, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %108, label %87

84:                                               ; preds = %75
  call void @do_trace_netlink_extack(ptr noundef nonnull @ip_valid_fib_dump_req.__msg.7) #14
  %85 = icmp eq ptr %7, null
  br i1 %85, label %108, label %86

86:                                               ; preds = %84
  store ptr @ip_valid_fib_dump_req.__msg.7, ptr %7, align 4
  br label %108

87:                                               ; preds = %79, %76, %70
  %88 = add nuw nsw i32 %71, 1
  %89 = icmp eq i32 %88, 31
  br i1 %89, label %90, label %70

90:                                               ; preds = %87
  %91 = load i32, ptr %56, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %90
  %94 = load i8, ptr %59, align 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load i8, ptr %62, align 4
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, ptr %2, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load ptr, ptr %69, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %102, %99, %96, %93, %90
  %106 = getelementptr inbounds %struct.fib_dump_filter, ptr %2, i32 0, i32 1
  store i8 1, ptr %106, align 4
  %107 = getelementptr inbounds %struct.netlink_callback, ptr %3, i32 0, i32 8
  store i16 32, ptr %107, align 2
  br label %108

108:                                              ; preds = %105, %102, %86, %84, %79, %54, %46, %44, %38, %36, %19, %17
  %109 = phi i32 [ -22, %19 ], [ -22, %17 ], [ -22, %38 ], [ -22, %36 ], [ -22, %46 ], [ -22, %44 ], [ %66, %54 ], [ 0, %105 ], [ 0, %102 ], [ -22, %84 ], [ -22, %86 ], [ -19, %79 ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %5) #14
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nlmsg_parse_deprecated_strict(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 {
  %4 = load i32, ptr %0, align 4
  %5 = icmp ult i32 %4, 28
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #14
  %7 = icmp eq ptr %2, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %6
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %13

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %0, i32 28
  %11 = add i32 %4, -28
  %12 = tail call i32 @__nla_parse(ptr noundef %1, i32 noundef 30, ptr noundef %10, i32 noundef %11, ptr noundef nonnull @rtm_ipv4_policy, i32 noundef 3, ptr noundef %2) #14
  br label %13

13:                                               ; preds = %9, %8, %6
  %14 = phi i32 [ %12, %9 ], [ -22, %8 ], [ -22, %6 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib_add_ifaddr(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.fib_config, align 4
  %3 = alloca %struct.fib_config, align 4
  %4 = alloca %struct.fib_config, align 4
  %5 = alloca %struct.fib_config, align 4
  %6 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, %10
  %16 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 11
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %1
  %21 = tail call ptr @inet_ifa_byprefix(ptr noundef %7, i32 noundef %15, i32 noundef %10) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.in_ifaddr, ptr %21, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  br label %28

26:                                               ; preds = %20
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.fib_add_ifaddr) #18
  br label %206

28:                                               ; preds = %23, %1
  %29 = phi ptr [ %25, %23 ], [ %7, %1 ]
  %30 = phi ptr [ %21, %23 ], [ %0, %1 ]
  %31 = getelementptr inbounds %struct.in_ifaddr, ptr %30, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %5) #14
  %32 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(100) %32, i8 0, i32 96, i1 false) #14, !annotation !9
  store i8 32, ptr %5, align 4
  %33 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 1
  store i8 0, ptr %33, align 1
  %34 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 2
  store i8 2, ptr %34, align 2
  %35 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 3
  store i8 0, ptr %35, align 1
  store i8 2, ptr %32, align 4
  %36 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 7
  store i32 %12, ptr %36, align 4
  %37 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %37, i8 0, i32 16, i1 false) #14
  %38 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 9
  %39 = load ptr, ptr %29, align 4
  %40 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 17
  %41 = load i32, ptr %40, align 4
  store i32 %41, ptr %38, align 4
  %42 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 10
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 11
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 12
  %45 = getelementptr inbounds %struct.in_ifaddr, ptr %30, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  store i32 %46, ptr %44, align 4
  %47 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 13
  %48 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 19
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %47, i8 0, i64 24, i1 false) #14
  store i32 3072, ptr %48, align 4
  %49 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 20
  store ptr null, ptr %49, align 4
  %50 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 20, i32 1
  store ptr @init_net, ptr %50, align 4
  %51 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 20, i32 2
  store i32 0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 20, i32 3
  store i8 0, ptr %52, align 4
  %53 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 21
  store ptr null, ptr %53, align 4
  %54 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 22
  store i16 0, ptr %54, align 4
  %55 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %56 = getelementptr %struct.hlist_head, ptr %55, i32 1
  %57 = load volatile ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %28
  %60 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 6
  %61 = getelementptr inbounds %struct.fib_table, ptr %57, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  store i32 %62, ptr %60, align 4
  store i8 -2, ptr %35, align 1
  %63 = call i32 @fib_table_insert(ptr noundef nonnull @init_net, ptr noundef nonnull %57, ptr noundef nonnull %5, ptr noundef null) #14
  br label %64

64:                                               ; preds = %59, %28
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %5) #14
  %65 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 14
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %206, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 8
  %71 = load i32, ptr %70, align 4
  switch i32 %71, label %72 [
    i32 0, label %106
    i32 -1, label %106
  ]

72:                                               ; preds = %69
  %73 = load ptr, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %4) #14
  %74 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(100) %74, i8 0, i32 96, i1 false) #14, !annotation !9
  store i8 32, ptr %4, align 4
  %75 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 1
  store i8 0, ptr %75, align 1
  %76 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 2
  store i8 2, ptr %76, align 2
  %77 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 3
  store i8 0, ptr %77, align 1
  store i8 3, ptr %74, align 4
  %78 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 7
  store i32 %71, ptr %78, align 4
  %79 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %79, i8 0, i32 16, i1 false) #14
  %80 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 9
  %81 = load ptr, ptr %73, align 4
  %82 = getelementptr inbounds %struct.net_device, ptr %81, i32 0, i32 17
  %83 = load i32, ptr %82, align 4
  store i32 %83, ptr %80, align 4
  %84 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 10
  store i32 0, ptr %84, align 4
  %85 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 11
  store i32 0, ptr %85, align 4
  %86 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 12
  %87 = load i32, ptr %45, align 4
  store i32 %87, ptr %86, align 4
  %88 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 13
  %89 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 19
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %88, i8 0, i64 24, i1 false) #14
  store i32 3072, ptr %89, align 4
  %90 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 20
  store ptr null, ptr %90, align 4
  %91 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 20, i32 1
  store ptr @init_net, ptr %91, align 4
  %92 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 20, i32 2
  store i32 0, ptr %92, align 4
  %93 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 20, i32 3
  store i8 0, ptr %93, align 4
  %94 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 21
  store ptr null, ptr %94, align 4
  %95 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 22
  store i16 0, ptr %95, align 4
  %96 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %97 = getelementptr %struct.hlist_head, ptr %96, i32 1
  %98 = load volatile ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %72
  %101 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 6
  %102 = getelementptr inbounds %struct.fib_table, ptr %98, i32 0, i32 1
  %103 = load i32, ptr %102, align 4
  store i32 %103, ptr %101, align 4
  store i8 -3, ptr %77, align 1
  %104 = call i32 @fib_table_insert(ptr noundef nonnull @init_net, ptr noundef nonnull %98, ptr noundef nonnull %4, ptr noundef null) #14
  br label %105

105:                                              ; preds = %100, %72
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %4) #14
  br label %106

106:                                              ; preds = %105, %69, %69
  %107 = icmp eq i32 %15, 0
  br i1 %107, label %206, label %108

108:                                              ; preds = %106
  %109 = load i32, ptr %16, align 4
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %206

112:                                              ; preds = %108
  %113 = icmp eq i32 %15, %12
  br i1 %113, label %114, label %118

114:                                              ; preds = %112
  %115 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 10
  %116 = load i8, ptr %115, align 1
  %117 = icmp ult i8 %116, 32
  br i1 %117, label %118, label %206

118:                                              ; preds = %114, %112
  %119 = and i32 %109, 512
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %166

121:                                              ; preds = %118
  %122 = load i32, ptr %65, align 8
  %123 = and i32 %122, 8
  %124 = icmp eq i32 %123, 0
  %125 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 10
  %126 = load i8, ptr %125, align 1
  %127 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 7
  %128 = load i32, ptr %127, align 4
  %129 = load ptr, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %3) #14
  %130 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(100) %130, i8 0, i32 96, i1 false) #14, !annotation !9
  store i8 %126, ptr %3, align 4
  %131 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 1
  store i8 0, ptr %131, align 1
  %132 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 2
  store i8 2, ptr %132, align 2
  %133 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 3
  store i8 0, ptr %133, align 1
  %134 = select i1 %124, i8 1, i8 2
  store i8 %134, ptr %130, align 4
  %135 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 7
  store i32 %15, ptr %135, align 4
  %136 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %136, i8 0, i32 16, i1 false) #14
  %137 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 9
  %138 = load ptr, ptr %129, align 4
  %139 = getelementptr inbounds %struct.net_device, ptr %138, i32 0, i32 17
  %140 = load i32, ptr %139, align 4
  store i32 %140, ptr %137, align 4
  %141 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 10
  store i32 0, ptr %141, align 4
  %142 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 11
  store i32 %128, ptr %142, align 4
  %143 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 12
  %144 = load i32, ptr %45, align 4
  store i32 %144, ptr %143, align 4
  %145 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 13
  %146 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 19
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %145, i8 0, i64 24, i1 false) #14
  store i32 3072, ptr %146, align 4
  %147 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 20
  store ptr null, ptr %147, align 4
  %148 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 20, i32 1
  store ptr @init_net, ptr %148, align 4
  %149 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 20, i32 2
  store i32 0, ptr %149, align 4
  %150 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 20, i32 3
  store i8 0, ptr %150, align 4
  %151 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 21
  store ptr null, ptr %151, align 4
  %152 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 22
  store i16 0, ptr %152, align 4
  %153 = xor i1 %124, true
  %154 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %155 = zext i1 %153 to i32
  %156 = getelementptr %struct.hlist_head, ptr %154, i32 %155
  %157 = load volatile ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %121
  %160 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 6
  %161 = getelementptr inbounds %struct.fib_table, ptr %157, i32 0, i32 1
  %162 = load i32, ptr %161, align 4
  store i32 %162, ptr %160, align 4
  %163 = select i1 %124, i8 -3, i8 -2
  store i8 %163, ptr %133, align 1
  %164 = call i32 @fib_table_insert(ptr noundef nonnull @init_net, ptr noundef nonnull %157, ptr noundef nonnull %3, ptr noundef null) #14
  br label %165

165:                                              ; preds = %159, %121
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %3) #14
  br label %166

166:                                              ; preds = %165, %118
  %167 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 10
  %168 = load i8, ptr %167, align 1
  %169 = icmp ult i8 %168, 31
  br i1 %169, label %170, label %206

170:                                              ; preds = %166
  %171 = xor i32 %10, -1
  %172 = or i32 %14, %171
  %173 = load ptr, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %2) #14
  %174 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(100) %174, i8 0, i32 96, i1 false) #14, !annotation !9
  store i8 32, ptr %2, align 4
  %175 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 1
  store i8 0, ptr %175, align 1
  %176 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 2
  store i8 2, ptr %176, align 2
  %177 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 3
  store i8 0, ptr %177, align 1
  store i8 3, ptr %174, align 4
  %178 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 7
  store i32 %172, ptr %178, align 4
  %179 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %179, i8 0, i32 16, i1 false) #14
  %180 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 9
  %181 = load ptr, ptr %173, align 4
  %182 = getelementptr inbounds %struct.net_device, ptr %181, i32 0, i32 17
  %183 = load i32, ptr %182, align 4
  store i32 %183, ptr %180, align 4
  %184 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 10
  store i32 0, ptr %184, align 4
  %185 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 11
  store i32 0, ptr %185, align 4
  %186 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 12
  %187 = load i32, ptr %45, align 4
  store i32 %187, ptr %186, align 4
  %188 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 13
  %189 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 19
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %188, i8 0, i64 24, i1 false) #14
  store i32 3072, ptr %189, align 4
  %190 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 20
  store ptr null, ptr %190, align 4
  %191 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 20, i32 1
  store ptr @init_net, ptr %191, align 4
  %192 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 20, i32 2
  store i32 0, ptr %192, align 4
  %193 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 20, i32 3
  store i8 0, ptr %193, align 4
  %194 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 21
  store ptr null, ptr %194, align 4
  %195 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 22
  store i16 0, ptr %195, align 4
  %196 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %197 = getelementptr %struct.hlist_head, ptr %196, i32 1
  %198 = load volatile ptr, ptr %197, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %205, label %200

200:                                              ; preds = %170
  %201 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 6
  %202 = getelementptr inbounds %struct.fib_table, ptr %198, i32 0, i32 1
  %203 = load i32, ptr %202, align 4
  store i32 %203, ptr %201, align 4
  store i8 -3, ptr %177, align 1
  %204 = call i32 @fib_table_insert(ptr noundef nonnull @init_net, ptr noundef nonnull %198, ptr noundef nonnull %2, ptr noundef null) #14
  br label %205

205:                                              ; preds = %200, %170
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %2) #14
  br label %206

206:                                              ; preds = %205, %166, %114, %108, %106, %64, %26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_ifa_byprefix(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib_modify_prefix_metric(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.fib_config, align 4
  %4 = alloca %struct.fib_config, align 4
  %5 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, %6
  %10 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 14
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %119, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 513
  %21 = icmp ne i32 %20, 0
  %22 = icmp eq i32 %9, 0
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %119, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %9, %26
  %28 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 10
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 32
  %31 = select i1 %27, i1 %30, i1 false
  br i1 %31, label %119, label %32

32:                                               ; preds = %24
  %33 = and i32 %14, 8
  %34 = icmp eq i32 %33, 0
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %4) #14
  %35 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(100) %35, i8 0, i32 96, i1 false) #14, !annotation !9
  store i8 %29, ptr %4, align 4
  %36 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 1
  store i8 0, ptr %36, align 1
  %37 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 2
  store i8 2, ptr %37, align 2
  %38 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 3
  store i8 0, ptr %38, align 1
  %39 = select i1 %34, i8 1, i8 2
  store i8 %39, ptr %35, align 4
  %40 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 7
  store i32 %9, ptr %40, align 4
  %41 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %41, i8 0, i32 16, i1 false) #14
  %42 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 9
  %43 = load ptr, ptr %11, align 4
  %44 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 17
  %45 = load i32, ptr %44, align 4
  store i32 %45, ptr %42, align 4
  %46 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 10
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 11
  store i32 %1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 12
  store i32 %26, ptr %48, align 4
  %49 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 13
  %50 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 19
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %49, i8 0, i64 24, i1 false) #14
  store i32 3072, ptr %50, align 4
  %51 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 20
  store ptr null, ptr %51, align 4
  %52 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 20, i32 1
  store ptr @init_net, ptr %52, align 4
  %53 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 20, i32 2
  store i32 0, ptr %53, align 4
  %54 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 20, i32 3
  store i8 0, ptr %54, align 4
  %55 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 21
  store ptr null, ptr %55, align 4
  %56 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 22
  store i16 0, ptr %56, align 4
  %57 = xor i1 %34, true
  %58 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %59 = zext i1 %57 to i32
  %60 = getelementptr %struct.hlist_head, ptr %58, i32 %59
  %61 = load volatile ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %76, label %63

63:                                               ; preds = %32
  %64 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 6
  %65 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 10
  %66 = getelementptr inbounds %struct.fib_table, ptr %61, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  store i32 %67, ptr %64, align 4
  %68 = select i1 %34, i8 -3, i8 -2
  store i8 %68, ptr %38, align 1
  %69 = call i32 @fib_table_insert(ptr noundef nonnull @init_net, ptr noundef nonnull %61, ptr noundef nonnull %4, ptr noundef null) #14
  %70 = load i32, ptr %13, align 8
  %71 = load i8, ptr %65, align 1
  %72 = load ptr, ptr %10, align 4
  %73 = load i32, ptr %25, align 4
  %74 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %75 = and i32 %70, 8
  br label %76

76:                                               ; preds = %63, %32
  %77 = phi i32 [ %33, %32 ], [ %75, %63 ]
  %78 = phi ptr [ %58, %32 ], [ %74, %63 ]
  %79 = phi i32 [ %26, %32 ], [ %73, %63 ]
  %80 = phi ptr [ %11, %32 ], [ %72, %63 ]
  %81 = phi i8 [ %29, %32 ], [ %71, %63 ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %4) #14
  %82 = icmp eq i32 %77, 0
  %83 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 7
  %84 = load i32, ptr %83, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %3) #14
  %85 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(100) %85, i8 0, i32 96, i1 false) #14, !annotation !9
  store i8 %81, ptr %3, align 4
  %86 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 1
  store i8 0, ptr %86, align 1
  %87 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 2
  store i8 2, ptr %87, align 2
  %88 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 3
  store i8 0, ptr %88, align 1
  %89 = select i1 %82, i8 1, i8 2
  store i8 %89, ptr %85, align 4
  %90 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 7
  store i32 %9, ptr %90, align 4
  %91 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %91, i8 0, i32 16, i1 false) #14
  %92 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 9
  %93 = load ptr, ptr %80, align 4
  %94 = getelementptr inbounds %struct.net_device, ptr %93, i32 0, i32 17
  %95 = load i32, ptr %94, align 4
  store i32 %95, ptr %92, align 4
  %96 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 10
  store i32 0, ptr %96, align 4
  %97 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 11
  store i32 %84, ptr %97, align 4
  %98 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 12
  store i32 %79, ptr %98, align 4
  %99 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 13
  %100 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 19
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %99, i8 0, i64 24, i1 false) #14
  store i32 3072, ptr %100, align 4
  %101 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 20
  store ptr null, ptr %101, align 4
  %102 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 20, i32 1
  store ptr @init_net, ptr %102, align 4
  %103 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 20, i32 2
  store i32 0, ptr %103, align 4
  %104 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 20, i32 3
  store i8 0, ptr %104, align 4
  %105 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 21
  store ptr null, ptr %105, align 4
  %106 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 22
  store i16 0, ptr %106, align 4
  %107 = xor i1 %82, true
  %108 = zext i1 %107 to i32
  %109 = getelementptr %struct.hlist_head, ptr %78, i32 %108
  %110 = load volatile ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %118, label %112

112:                                              ; preds = %76
  %113 = getelementptr inbounds %struct.fib_config, ptr %3, i32 0, i32 6
  %114 = getelementptr inbounds %struct.fib_table, ptr %110, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  store i32 %115, ptr %113, align 4
  %116 = select i1 %82, i8 -3, i8 -2
  store i8 %116, ptr %88, align 1
  %117 = call i32 @fib_table_delete(ptr noundef nonnull @init_net, ptr noundef nonnull %110, ptr noundef nonnull %3, ptr noundef null) #14
  br label %118

118:                                              ; preds = %112, %76
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %3) #14
  br label %119

119:                                              ; preds = %118, %24, %17, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fib_del_ifaddr(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.flowi4, align 8
  %4 = alloca %struct.fib_result, align 4
  %5 = alloca %struct.fib_config, align 4
  %6 = alloca %struct.fib_config, align 4
  %7 = alloca %struct.fib_config, align 4
  %8 = alloca %struct.fib_config, align 4
  %9 = alloca %struct.fib_config, align 4
  %10 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = xor i32 %16, -1
  %18 = or i32 %14, %17
  %19 = and i32 %16, %14
  %20 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %2
  %25 = tail call ptr @inet_ifa_byprefix(ptr noundef %11, i32 noundef %19, i32 noundef %16) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.in_device, ptr %11, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %501

31:                                               ; preds = %27
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.fib_del_ifaddr) #18
  br label %501

33:                                               ; preds = %24
  %34 = icmp eq ptr %1, null
  %35 = icmp eq ptr %25, %1
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %94, label %37

37:                                               ; preds = %33
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.fib_del_ifaddr) #18
  br label %501

39:                                               ; preds = %2
  %40 = icmp eq i32 %19, 0
  br i1 %40, label %94, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %19, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 10
  %47 = load i8, ptr %46, align 1
  %48 = icmp ult i8 %47, 32
  br i1 %48, label %49, label %94

49:                                               ; preds = %45, %41
  %50 = and i32 %21, 512
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %94

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 14
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 8
  %56 = icmp eq i32 %55, 0
  %57 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 10
  %58 = load i8, ptr %57, align 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %9) #14
  %59 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(100) %59, i8 0, i32 96, i1 false) #14, !annotation !9
  store i8 %58, ptr %9, align 4
  %60 = getelementptr inbounds %struct.fib_config, ptr %9, i32 0, i32 1
  store i8 0, ptr %60, align 1
  %61 = getelementptr inbounds %struct.fib_config, ptr %9, i32 0, i32 2
  store i8 2, ptr %61, align 2
  %62 = getelementptr inbounds %struct.fib_config, ptr %9, i32 0, i32 3
  store i8 0, ptr %62, align 1
  %63 = select i1 %56, i8 1, i8 2
  store i8 %63, ptr %59, align 4
  %64 = getelementptr inbounds %struct.fib_config, ptr %9, i32 0, i32 7
  store i32 %19, ptr %64, align 4
  %65 = getelementptr inbounds %struct.fib_config, ptr %9, i32 0, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %65, i8 0, i32 16, i1 false) #14
  %66 = getelementptr inbounds %struct.fib_config, ptr %9, i32 0, i32 9
  %67 = load ptr, ptr %11, align 4
  %68 = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 17
  %69 = load i32, ptr %68, align 4
  store i32 %69, ptr %66, align 4
  %70 = getelementptr inbounds %struct.fib_config, ptr %9, i32 0, i32 10
  store i32 0, ptr %70, align 4
  %71 = getelementptr inbounds %struct.fib_config, ptr %9, i32 0, i32 11
  store i32 0, ptr %71, align 4
  %72 = getelementptr inbounds %struct.fib_config, ptr %9, i32 0, i32 12
  store i32 %43, ptr %72, align 4
  %73 = getelementptr inbounds %struct.fib_config, ptr %9, i32 0, i32 13
  %74 = getelementptr inbounds %struct.fib_config, ptr %9, i32 0, i32 19
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %73, i8 0, i64 24, i1 false) #14
  store i32 3072, ptr %74, align 4
  %75 = getelementptr inbounds %struct.fib_config, ptr %9, i32 0, i32 20
  store ptr null, ptr %75, align 4
  %76 = getelementptr inbounds %struct.fib_config, ptr %9, i32 0, i32 20, i32 1
  store ptr @init_net, ptr %76, align 4
  %77 = getelementptr inbounds %struct.fib_config, ptr %9, i32 0, i32 20, i32 2
  store i32 0, ptr %77, align 4
  %78 = getelementptr inbounds %struct.fib_config, ptr %9, i32 0, i32 20, i32 3
  store i8 0, ptr %78, align 4
  %79 = getelementptr inbounds %struct.fib_config, ptr %9, i32 0, i32 21
  store ptr null, ptr %79, align 4
  %80 = getelementptr inbounds %struct.fib_config, ptr %9, i32 0, i32 22
  store i16 0, ptr %80, align 4
  %81 = xor i1 %56, true
  %82 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %83 = zext i1 %81 to i32
  %84 = getelementptr %struct.hlist_head, ptr %82, i32 %83
  %85 = load volatile ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %52
  %88 = getelementptr inbounds %struct.fib_config, ptr %9, i32 0, i32 6
  %89 = getelementptr inbounds %struct.fib_table, ptr %85, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  store i32 %90, ptr %88, align 4
  %91 = select i1 %56, i8 -3, i8 -2
  store i8 %91, ptr %62, align 1
  %92 = call i32 @fib_table_delete(ptr noundef nonnull @init_net, ptr noundef nonnull %85, ptr noundef nonnull %9, ptr noundef null) #14
  br label %93

93:                                               ; preds = %87, %52
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %9) #14
  br label %94

94:                                               ; preds = %93, %49, %45, %39, %33
  %95 = phi i1 [ true, %39 ], [ true, %45 ], [ true, %33 ], [ false, %93 ], [ false, %49 ]
  %96 = phi ptr [ %0, %39 ], [ %0, %45 ], [ %25, %33 ], [ %0, %93 ], [ %0, %49 ]
  %97 = getelementptr inbounds %struct.in_device, ptr %11, i32 0, i32 3
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %248

100:                                              ; preds = %94
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %101 = getelementptr inbounds %struct.in_device, ptr %11, i32 0, i32 4
  %102 = load volatile ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %248

105:                                              ; preds = %100
  %106 = icmp eq ptr %1, null
  %107 = getelementptr inbounds %struct.in_ifaddr, ptr %1, i32 0, i32 6
  %108 = getelementptr inbounds %struct.in_ifaddr, ptr %1, i32 0, i32 5
  %109 = getelementptr inbounds %struct.in_ifaddr, ptr %96, i32 0, i32 6
  %110 = getelementptr inbounds %struct.in_ifaddr, ptr %96, i32 0, i32 5
  %111 = getelementptr inbounds %struct.in_ifaddr, ptr %96, i32 0, i32 4
  %112 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 4
  %113 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 8
  br label %114

114:                                              ; preds = %237, %105
  %115 = phi ptr [ %102, %105 ], [ %243, %237 ]
  %116 = phi ptr [ null, %105 ], [ %241, %237 ]
  %117 = phi i32 [ 0, %105 ], [ %240, %237 ]
  %118 = phi i32 [ 0, %105 ], [ %239, %237 ]
  %119 = phi i32 [ 1, %105 ], [ %238, %237 ]
  %120 = icmp eq ptr %115, %0
  br i1 %120, label %237, label %121

121:                                              ; preds = %114
  br i1 %106, label %134, label %122

122:                                              ; preds = %121
  %123 = getelementptr inbounds %struct.in_ifaddr, ptr %115, i32 0, i32 6
  %124 = load i32, ptr %123, align 4
  %125 = load i32, ptr %107, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.in_ifaddr, ptr %115, i32 0, i32 5
  %129 = load i32, ptr %128, align 4
  %130 = load i32, ptr %108, align 4
  %131 = xor i32 %130, %129
  %132 = and i32 %131, %124
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %237, label %134

134:                                              ; preds = %127, %122, %121
  %135 = getelementptr inbounds %struct.in_ifaddr, ptr %115, i32 0, i32 11
  %136 = load i32, ptr %135, align 4
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %178, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.in_ifaddr, ptr %115, i32 0, i32 6
  %141 = load i32, ptr %140, align 4
  %142 = load i32, ptr %109, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.in_ifaddr, ptr %115, i32 0, i32 5
  %146 = load i32, ptr %145, align 4
  %147 = load i32, ptr %110, align 4
  %148 = xor i32 %147, %146
  %149 = and i32 %148, %141
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %186, label %151

151:                                              ; preds = %144, %139
  %152 = icmp eq i32 %118, 0
  br i1 %152, label %237, label %153

153:                                              ; preds = %151
  %154 = icmp eq ptr %116, null
  br i1 %154, label %167, label %155

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.in_ifaddr, ptr %116, i32 0, i32 6
  %157 = load i32, ptr %156, align 4
  %158 = icmp eq i32 %141, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.in_ifaddr, ptr %115, i32 0, i32 5
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr inbounds %struct.in_ifaddr, ptr %116, i32 0, i32 5
  %163 = load i32, ptr %162, align 4
  %164 = xor i32 %163, %161
  %165 = and i32 %164, %141
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %159, %155, %153
  %168 = getelementptr inbounds %struct.in_ifaddr, ptr %115, i32 0, i32 5
  %169 = load i32, ptr %168, align 4
  %170 = call ptr @inet_ifa_byprefix(ptr noundef %11, i32 noundef %169, i32 noundef %141) #14
  %171 = icmp eq ptr %170, null
  br i1 %171, label %237, label %172

172:                                              ; preds = %167, %159
  %173 = phi ptr [ %170, %167 ], [ %116, %159 ]
  %174 = getelementptr inbounds %struct.in_ifaddr, ptr %173, i32 0, i32 4
  %175 = load i32, ptr %174, align 4
  %176 = load i32, ptr %111, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %186, label %237

178:                                              ; preds = %134
  %179 = load i32, ptr %111, align 4
  %180 = getelementptr inbounds %struct.in_ifaddr, ptr %115, i32 0, i32 4
  %181 = load i32, ptr %180, align 4
  %182 = icmp eq i32 %179, %181
  br i1 %182, label %183, label %237

183:                                              ; preds = %178
  %184 = icmp eq ptr %96, %115
  %185 = select i1 %184, i32 %118, i32 1
  br label %186

186:                                              ; preds = %183, %172, %144
  %187 = phi i32 [ 1, %172 ], [ %118, %144 ], [ %185, %183 ]
  %188 = phi ptr [ %173, %172 ], [ %96, %144 ], [ %115, %183 ]
  %189 = load i32, ptr %112, align 4
  %190 = getelementptr inbounds %struct.in_ifaddr, ptr %115, i32 0, i32 4
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %189, %191
  %193 = zext i1 %192 to i32
  %194 = or i32 %117, %193
  %195 = load i32, ptr %113, align 4
  %196 = getelementptr inbounds %struct.in_ifaddr, ptr %115, i32 0, i32 8
  %197 = load i32, ptr %196, align 4
  %198 = icmp eq i32 %195, %197
  %199 = or i32 %194, 2
  %200 = select i1 %198, i32 %199, i32 %194
  %201 = icmp eq i32 %18, %197
  %202 = or i32 %200, 8
  %203 = select i1 %201, i32 %202, i32 %200
  %204 = icmp eq i32 %19, %197
  %205 = or i32 %203, 4
  %206 = select i1 %204, i32 %205, i32 %203
  %207 = icmp eq ptr %188, %115
  br i1 %207, label %208, label %237

208:                                              ; preds = %186
  %209 = getelementptr inbounds %struct.in_ifaddr, ptr %115, i32 0, i32 10
  %210 = load i8, ptr %209, align 1
  %211 = icmp ult i8 %210, 31
  br i1 %211, label %212, label %237

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.in_ifaddr, ptr %115, i32 0, i32 5
  %214 = load i32, ptr %213, align 4
  %215 = getelementptr inbounds %struct.in_ifaddr, ptr %115, i32 0, i32 6
  %216 = load i32, ptr %215, align 4
  %217 = and i32 %216, %214
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %237, label %219

219:                                              ; preds = %212
  %220 = xor i32 %216, -1
  %221 = or i32 %214, %220
  %222 = icmp eq i32 %195, %221
  %223 = icmp eq i32 %195, %217
  %224 = or i1 %222, %223
  %225 = or i32 %206, 2
  %226 = select i1 %224, i32 %225, i32 %206
  %227 = icmp eq i32 %18, %221
  %228 = icmp eq i32 %18, %217
  %229 = or i1 %227, %228
  %230 = or i32 %226, 8
  %231 = select i1 %229, i32 %230, i32 %226
  %232 = icmp eq i32 %19, %221
  %233 = icmp eq i32 %19, %217
  %234 = or i1 %232, %233
  %235 = or i32 %231, 4
  %236 = select i1 %234, i32 %235, i32 %231
  br label %237

237:                                              ; preds = %219, %212, %208, %186, %178, %172, %167, %151, %127, %114
  %238 = phi i32 [ %119, %127 ], [ %119, %208 ], [ %119, %186 ], [ %119, %172 ], [ %119, %167 ], [ %119, %151 ], [ %119, %178 ], [ 0, %114 ], [ %119, %212 ], [ %119, %219 ]
  %239 = phi i32 [ %118, %127 ], [ %187, %208 ], [ %187, %186 ], [ 1, %172 ], [ 1, %167 ], [ 0, %151 ], [ %118, %178 ], [ %118, %114 ], [ %187, %212 ], [ %187, %219 ]
  %240 = phi i32 [ %117, %127 ], [ %206, %208 ], [ %206, %186 ], [ %117, %172 ], [ %117, %167 ], [ %117, %151 ], [ %117, %178 ], [ %117, %114 ], [ %206, %212 ], [ %236, %219 ]
  %241 = phi ptr [ %116, %127 ], [ %115, %208 ], [ %188, %186 ], [ %173, %172 ], [ null, %167 ], [ %116, %151 ], [ %116, %178 ], [ %116, %114 ], [ %115, %212 ], [ %115, %219 ]
  %242 = getelementptr inbounds %struct.in_ifaddr, ptr %115, i32 0, i32 1
  %243 = load volatile ptr, ptr %242, align 4
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %114

245:                                              ; preds = %237
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %246 = and i32 %240, 2
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %288

248:                                              ; preds = %245, %104, %94
  %249 = phi i32 [ %240, %245 ], [ 0, %94 ], [ 0, %104 ]
  %250 = phi i32 [ %238, %245 ], [ 1, %94 ], [ 1, %104 ]
  %251 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 8
  %252 = load i32, ptr %251, align 4
  %253 = getelementptr inbounds %struct.in_ifaddr, ptr %96, i32 0, i32 2
  %254 = load ptr, ptr %253, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %8) #14
  %255 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(100) %255, i8 0, i32 96, i1 false) #14, !annotation !9
  store i8 32, ptr %8, align 4
  %256 = getelementptr inbounds %struct.fib_config, ptr %8, i32 0, i32 1
  store i8 0, ptr %256, align 1
  %257 = getelementptr inbounds %struct.fib_config, ptr %8, i32 0, i32 2
  store i8 2, ptr %257, align 2
  %258 = getelementptr inbounds %struct.fib_config, ptr %8, i32 0, i32 3
  store i8 0, ptr %258, align 1
  store i8 3, ptr %255, align 4
  %259 = getelementptr inbounds %struct.fib_config, ptr %8, i32 0, i32 7
  store i32 %252, ptr %259, align 4
  %260 = getelementptr inbounds %struct.fib_config, ptr %8, i32 0, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %260, i8 0, i32 16, i1 false) #14
  %261 = getelementptr inbounds %struct.fib_config, ptr %8, i32 0, i32 9
  %262 = load ptr, ptr %254, align 4
  %263 = getelementptr inbounds %struct.net_device, ptr %262, i32 0, i32 17
  %264 = load i32, ptr %263, align 4
  store i32 %264, ptr %261, align 4
  %265 = getelementptr inbounds %struct.fib_config, ptr %8, i32 0, i32 10
  store i32 0, ptr %265, align 4
  %266 = getelementptr inbounds %struct.fib_config, ptr %8, i32 0, i32 11
  store i32 0, ptr %266, align 4
  %267 = getelementptr inbounds %struct.fib_config, ptr %8, i32 0, i32 12
  %268 = getelementptr inbounds %struct.in_ifaddr, ptr %96, i32 0, i32 4
  %269 = load i32, ptr %268, align 4
  store i32 %269, ptr %267, align 4
  %270 = getelementptr inbounds %struct.fib_config, ptr %8, i32 0, i32 13
  %271 = getelementptr inbounds %struct.fib_config, ptr %8, i32 0, i32 19
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %270, i8 0, i64 24, i1 false) #14
  store i32 3072, ptr %271, align 4
  %272 = getelementptr inbounds %struct.fib_config, ptr %8, i32 0, i32 20
  store ptr null, ptr %272, align 4
  %273 = getelementptr inbounds %struct.fib_config, ptr %8, i32 0, i32 20, i32 1
  store ptr @init_net, ptr %273, align 4
  %274 = getelementptr inbounds %struct.fib_config, ptr %8, i32 0, i32 20, i32 2
  store i32 0, ptr %274, align 4
  %275 = getelementptr inbounds %struct.fib_config, ptr %8, i32 0, i32 20, i32 3
  store i8 0, ptr %275, align 4
  %276 = getelementptr inbounds %struct.fib_config, ptr %8, i32 0, i32 21
  store ptr null, ptr %276, align 4
  %277 = getelementptr inbounds %struct.fib_config, ptr %8, i32 0, i32 22
  store i16 0, ptr %277, align 4
  %278 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %279 = getelementptr %struct.hlist_head, ptr %278, i32 1
  %280 = load volatile ptr, ptr %279, align 4
  %281 = icmp eq ptr %280, null
  br i1 %281, label %287, label %282

282:                                              ; preds = %248
  %283 = getelementptr inbounds %struct.fib_config, ptr %8, i32 0, i32 6
  %284 = getelementptr inbounds %struct.fib_table, ptr %280, i32 0, i32 1
  %285 = load i32, ptr %284, align 4
  store i32 %285, ptr %283, align 4
  store i8 -3, ptr %258, align 1
  %286 = call i32 @fib_table_delete(ptr noundef nonnull @init_net, ptr noundef nonnull %280, ptr noundef nonnull %8, ptr noundef null) #14
  br label %287

287:                                              ; preds = %282, %248
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %8) #14
  br label %288

288:                                              ; preds = %287, %245
  %289 = phi i32 [ %249, %287 ], [ %240, %245 ]
  %290 = phi i32 [ %250, %287 ], [ %238, %245 ]
  br i1 %95, label %373, label %291

291:                                              ; preds = %288
  %292 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 10
  %293 = load i8, ptr %292, align 1
  %294 = icmp ult i8 %293, 31
  br i1 %294, label %295, label %373

295:                                              ; preds = %291
  %296 = and i32 %289, 8
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %334

298:                                              ; preds = %295
  %299 = getelementptr inbounds %struct.in_ifaddr, ptr %96, i32 0, i32 2
  %300 = load ptr, ptr %299, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %7) #14
  %301 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(100) %301, i8 0, i32 96, i1 false) #14, !annotation !9
  store i8 32, ptr %7, align 4
  %302 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 1
  store i8 0, ptr %302, align 1
  %303 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 2
  store i8 2, ptr %303, align 2
  %304 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 3
  store i8 0, ptr %304, align 1
  store i8 3, ptr %301, align 4
  %305 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 7
  store i32 %18, ptr %305, align 4
  %306 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %306, i8 0, i32 16, i1 false) #14
  %307 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 9
  %308 = load ptr, ptr %300, align 4
  %309 = getelementptr inbounds %struct.net_device, ptr %308, i32 0, i32 17
  %310 = load i32, ptr %309, align 4
  store i32 %310, ptr %307, align 4
  %311 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 10
  store i32 0, ptr %311, align 4
  %312 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 11
  store i32 0, ptr %312, align 4
  %313 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 12
  %314 = getelementptr inbounds %struct.in_ifaddr, ptr %96, i32 0, i32 4
  %315 = load i32, ptr %314, align 4
  store i32 %315, ptr %313, align 4
  %316 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 13
  %317 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 19
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %316, i8 0, i64 24, i1 false) #14
  store i32 3072, ptr %317, align 4
  %318 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 20
  store ptr null, ptr %318, align 4
  %319 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 20, i32 1
  store ptr @init_net, ptr %319, align 4
  %320 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 20, i32 2
  store i32 0, ptr %320, align 4
  %321 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 20, i32 3
  store i8 0, ptr %321, align 4
  %322 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 21
  store ptr null, ptr %322, align 4
  %323 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 22
  store i16 0, ptr %323, align 4
  %324 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %325 = getelementptr %struct.hlist_head, ptr %324, i32 1
  %326 = load volatile ptr, ptr %325, align 4
  %327 = icmp eq ptr %326, null
  br i1 %327, label %333, label %328

328:                                              ; preds = %298
  %329 = getelementptr inbounds %struct.fib_config, ptr %7, i32 0, i32 6
  %330 = getelementptr inbounds %struct.fib_table, ptr %326, i32 0, i32 1
  %331 = load i32, ptr %330, align 4
  store i32 %331, ptr %329, align 4
  store i8 -3, ptr %304, align 1
  %332 = call i32 @fib_table_delete(ptr noundef nonnull @init_net, ptr noundef nonnull %326, ptr noundef nonnull %7, ptr noundef null) #14
  br label %333

333:                                              ; preds = %328, %298
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %7) #14
  br label %334

334:                                              ; preds = %333, %295
  %335 = and i32 %289, 4
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %373

337:                                              ; preds = %334
  %338 = getelementptr inbounds %struct.in_ifaddr, ptr %96, i32 0, i32 2
  %339 = load ptr, ptr %338, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %6) #14
  %340 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(100) %340, i8 0, i32 96, i1 false) #14, !annotation !9
  store i8 32, ptr %6, align 4
  %341 = getelementptr inbounds %struct.fib_config, ptr %6, i32 0, i32 1
  store i8 0, ptr %341, align 1
  %342 = getelementptr inbounds %struct.fib_config, ptr %6, i32 0, i32 2
  store i8 2, ptr %342, align 2
  %343 = getelementptr inbounds %struct.fib_config, ptr %6, i32 0, i32 3
  store i8 0, ptr %343, align 1
  store i8 3, ptr %340, align 4
  %344 = getelementptr inbounds %struct.fib_config, ptr %6, i32 0, i32 7
  store i32 %19, ptr %344, align 4
  %345 = getelementptr inbounds %struct.fib_config, ptr %6, i32 0, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %345, i8 0, i32 16, i1 false) #14
  %346 = getelementptr inbounds %struct.fib_config, ptr %6, i32 0, i32 9
  %347 = load ptr, ptr %339, align 4
  %348 = getelementptr inbounds %struct.net_device, ptr %347, i32 0, i32 17
  %349 = load i32, ptr %348, align 4
  store i32 %349, ptr %346, align 4
  %350 = getelementptr inbounds %struct.fib_config, ptr %6, i32 0, i32 10
  store i32 0, ptr %350, align 4
  %351 = getelementptr inbounds %struct.fib_config, ptr %6, i32 0, i32 11
  store i32 0, ptr %351, align 4
  %352 = getelementptr inbounds %struct.fib_config, ptr %6, i32 0, i32 12
  %353 = getelementptr inbounds %struct.in_ifaddr, ptr %96, i32 0, i32 4
  %354 = load i32, ptr %353, align 4
  store i32 %354, ptr %352, align 4
  %355 = getelementptr inbounds %struct.fib_config, ptr %6, i32 0, i32 13
  %356 = getelementptr inbounds %struct.fib_config, ptr %6, i32 0, i32 19
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %355, i8 0, i64 24, i1 false) #14
  store i32 3072, ptr %356, align 4
  %357 = getelementptr inbounds %struct.fib_config, ptr %6, i32 0, i32 20
  store ptr null, ptr %357, align 4
  %358 = getelementptr inbounds %struct.fib_config, ptr %6, i32 0, i32 20, i32 1
  store ptr @init_net, ptr %358, align 4
  %359 = getelementptr inbounds %struct.fib_config, ptr %6, i32 0, i32 20, i32 2
  store i32 0, ptr %359, align 4
  %360 = getelementptr inbounds %struct.fib_config, ptr %6, i32 0, i32 20, i32 3
  store i8 0, ptr %360, align 4
  %361 = getelementptr inbounds %struct.fib_config, ptr %6, i32 0, i32 21
  store ptr null, ptr %361, align 4
  %362 = getelementptr inbounds %struct.fib_config, ptr %6, i32 0, i32 22
  store i16 0, ptr %362, align 4
  %363 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %364 = getelementptr %struct.hlist_head, ptr %363, i32 1
  %365 = load volatile ptr, ptr %364, align 4
  %366 = icmp eq ptr %365, null
  br i1 %366, label %372, label %367

367:                                              ; preds = %337
  %368 = getelementptr inbounds %struct.fib_config, ptr %6, i32 0, i32 6
  %369 = getelementptr inbounds %struct.fib_table, ptr %365, i32 0, i32 1
  %370 = load i32, ptr %369, align 4
  store i32 %370, ptr %368, align 4
  store i8 -3, ptr %343, align 1
  %371 = call i32 @fib_table_delete(ptr noundef nonnull @init_net, ptr noundef nonnull %365, ptr noundef nonnull %6, ptr noundef null) #14
  br label %372

372:                                              ; preds = %367, %337
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %6) #14
  br label %373

373:                                              ; preds = %372, %334, %291, %288
  %374 = and i32 %289, 1
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %501

376:                                              ; preds = %373
  %377 = getelementptr inbounds %struct.in_ifaddr, ptr %0, i32 0, i32 4
  %378 = load i32, ptr %377, align 4
  %379 = getelementptr inbounds %struct.in_ifaddr, ptr %96, i32 0, i32 2
  %380 = load ptr, ptr %379, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %5) #14
  %381 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(100) %381, i8 0, i32 96, i1 false) #14, !annotation !9
  store i8 32, ptr %5, align 4
  %382 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 1
  store i8 0, ptr %382, align 1
  %383 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 2
  store i8 2, ptr %383, align 2
  %384 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 3
  store i8 0, ptr %384, align 1
  store i8 2, ptr %381, align 4
  %385 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 7
  store i32 %378, ptr %385, align 4
  %386 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %386, i8 0, i32 16, i1 false) #14
  %387 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 9
  %388 = load ptr, ptr %380, align 4
  %389 = getelementptr inbounds %struct.net_device, ptr %388, i32 0, i32 17
  %390 = load i32, ptr %389, align 4
  store i32 %390, ptr %387, align 4
  %391 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 10
  store i32 0, ptr %391, align 4
  %392 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 11
  store i32 0, ptr %392, align 4
  %393 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 12
  %394 = getelementptr inbounds %struct.in_ifaddr, ptr %96, i32 0, i32 4
  %395 = load i32, ptr %394, align 4
  store i32 %395, ptr %393, align 4
  %396 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 13
  %397 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 19
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %396, i8 0, i64 24, i1 false) #14
  store i32 3072, ptr %397, align 4
  %398 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 20
  store ptr null, ptr %398, align 4
  %399 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 20, i32 1
  store ptr @init_net, ptr %399, align 4
  %400 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 20, i32 2
  store i32 0, ptr %400, align 4
  %401 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 20, i32 3
  store i8 0, ptr %401, align 4
  %402 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 21
  store ptr null, ptr %402, align 4
  %403 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 22
  store i16 0, ptr %403, align 4
  %404 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %405 = getelementptr %struct.hlist_head, ptr %404, i32 1
  %406 = load volatile ptr, ptr %405, align 4
  %407 = icmp eq ptr %406, null
  br i1 %407, label %414, label %408

408:                                              ; preds = %376
  %409 = getelementptr inbounds %struct.fib_config, ptr %5, i32 0, i32 6
  %410 = getelementptr inbounds %struct.fib_table, ptr %406, i32 0, i32 1
  %411 = load i32, ptr %410, align 4
  store i32 %411, ptr %409, align 4
  store i8 -2, ptr %384, align 1
  %412 = call i32 @fib_table_delete(ptr noundef nonnull @init_net, ptr noundef nonnull %406, ptr noundef nonnull %5, ptr noundef null) #14
  %413 = load i32, ptr %377, align 4
  br label %414

414:                                              ; preds = %408, %376
  %415 = phi i32 [ %378, %376 ], [ %413, %408 ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #14
  %416 = getelementptr inbounds %struct.flowi4, ptr %3, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false) #14
  store i32 %415, ptr %416, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false) #14, !annotation !9
  switch i32 %415, label %417 [
    i32 0, label %462
    i32 -1, label %462
  ]

417:                                              ; preds = %414
  %418 = and i32 %415, 240
  %419 = icmp eq i32 %418, 224
  br i1 %419, label %462, label %420

420:                                              ; preds = %417
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %421 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %422 = getelementptr %struct.hlist_head, ptr %421, i32 1
  %423 = load volatile ptr, ptr %422, align 4
  %424 = icmp eq ptr %423, null
  br i1 %424, label %460, label %425

425:                                              ; preds = %420
  %426 = call i32 @fib_table_lookup(ptr noundef nonnull %423, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 1) #14
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %460

428:                                              ; preds = %425
  %429 = getelementptr inbounds %struct.fib_result, ptr %4, i32 0, i32 7
  %430 = load ptr, ptr %429, align 4
  %431 = getelementptr inbounds %struct.fib_info, ptr %430, i32 0, i32 18
  %432 = load ptr, ptr %431, align 4
  %433 = icmp eq ptr %432, null
  br i1 %433, label %456, label %434, !prof !11

434:                                              ; preds = %428
  %435 = getelementptr inbounds %struct.nexthop, ptr %432, i32 0, i32 9
  %436 = load i8, ptr %435, align 2, !range !12
  %437 = icmp eq i8 %436, 0
  br i1 %437, label %452, label %438

438:                                              ; preds = %434
  %439 = getelementptr inbounds %struct.nexthop, ptr %432, i32 0, i32 12
  %440 = load volatile ptr, ptr %439, align 4
  %441 = getelementptr inbounds %struct.nh_group, ptr %440, i32 0, i32 2
  %442 = load i8, ptr %441, align 2, !range !12
  %443 = icmp eq i8 %442, 0
  br i1 %443, label %452, label %444

444:                                              ; preds = %438
  %445 = getelementptr inbounds %struct.nh_group, ptr %440, i32 0, i32 1
  %446 = load i16, ptr %445, align 4
  %447 = icmp eq i16 %446, 0
  br i1 %447, label %456, label %448

448:                                              ; preds = %444
  %449 = getelementptr inbounds %struct.nh_group, ptr %440, i32 0, i32 8
  %450 = load ptr, ptr %449, align 4
  %451 = icmp eq ptr %450, null
  br i1 %451, label %456, label %452

452:                                              ; preds = %448, %438, %434
  %453 = phi ptr [ %432, %434 ], [ %450, %448 ], [ %432, %438 ]
  %454 = getelementptr inbounds %struct.nexthop, ptr %453, i32 0, i32 12
  %455 = load volatile ptr, ptr %454, align 4
  br label %456

456:                                              ; preds = %452, %448, %444, %428
  %457 = getelementptr inbounds %struct.fib_result, ptr %4, i32 0, i32 3
  %458 = load i8, ptr %457, align 2
  %459 = zext i8 %458 to i32
  br label %460

460:                                              ; preds = %456, %425, %420
  %461 = phi i32 [ 1, %425 ], [ 3, %420 ], [ %459, %456 ]
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %462

462:                                              ; preds = %460, %417, %414, %414
  %463 = phi i32 [ %461, %460 ], [ 3, %414 ], [ 5, %417 ], [ 3, %414 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #14
  %464 = icmp ne i32 %290, 0
  %465 = icmp ne i32 %463, 2
  %466 = select i1 %464, i1 %465, i1 false
  br i1 %466, label %467, label %501

467:                                              ; preds = %462
  %468 = load i32, ptr %377, align 4
  %469 = call i32 @fib_sync_down_addr(ptr noundef %12, i32 noundef %468) #14
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %501, label %471

471:                                              ; preds = %467
  %472 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %473 = load ptr, ptr %472, align 4
  %474 = icmp eq ptr %473, null
  br i1 %474, label %484, label %475

475:                                              ; preds = %475, %471
  %476 = phi i32 [ %480, %475 ], [ 0, %471 ]
  %477 = phi ptr [ %478, %475 ], [ %473, %471 ]
  %478 = load ptr, ptr %477, align 4
  %479 = call i32 @fib_table_flush(ptr noundef nonnull @init_net, ptr noundef nonnull %477, i1 noundef zeroext false) #14
  %480 = add i32 %479, %476
  %481 = icmp eq ptr %478, null
  br i1 %481, label %482, label %475

482:                                              ; preds = %475
  %483 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  br label %484

484:                                              ; preds = %482, %471
  %485 = phi ptr [ %472, %471 ], [ %483, %482 ]
  %486 = phi i32 [ 0, %471 ], [ %480, %482 ]
  %487 = getelementptr %struct.hlist_head, ptr %485, i32 1
  %488 = load ptr, ptr %487, align 4
  %489 = icmp eq ptr %488, null
  br i1 %489, label %497, label %490

490:                                              ; preds = %490, %484
  %491 = phi i32 [ %495, %490 ], [ %486, %484 ]
  %492 = phi ptr [ %493, %490 ], [ %488, %484 ]
  %493 = load ptr, ptr %492, align 4
  %494 = call i32 @fib_table_flush(ptr noundef nonnull @init_net, ptr noundef nonnull %492, i1 noundef zeroext false) #14
  %495 = add i32 %494, %491
  %496 = icmp eq ptr %493, null
  br i1 %496, label %497, label %490

497:                                              ; preds = %490, %484
  %498 = phi i32 [ %486, %484 ], [ %495, %490 ]
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %501, label %500

500:                                              ; preds = %497
  call void @rt_cache_flush(ptr noundef nonnull @init_net) #14
  br label %501

501:                                              ; preds = %500, %497, %467, %462, %373, %37, %31, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_sync_down_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @ip_fib_init() local_unnamed_addr #8 section ".init.text" {
  tail call void @fib_trie_init() #14
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @fib_net_ops) #14
  %2 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @fib_netdev_notifier) #14
  %3 = tail call i32 @register_inetaddr_notifier(ptr noundef nonnull @fib_inetaddr_notifier) #14
  tail call void @rtnl_register(i32 noundef 2, i32 noundef 24, ptr noundef nonnull @inet_rtm_newroute, ptr noundef null, i32 noundef 0) #14
  tail call void @rtnl_register(i32 noundef 2, i32 noundef 25, ptr noundef nonnull @inet_rtm_delroute, ptr noundef null, i32 noundef 0) #14
  tail call void @rtnl_register(i32 noundef 2, i32 noundef 26, ptr noundef null, ptr noundef nonnull @inet_dump_fib, i32 noundef 0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib_trie_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inetaddr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_register(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet_rtm_newroute(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.fib_config, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(100) %4, i8 0, i32 100, i1 false), !annotation !9
  %5 = call fastcc i32 @rtm_to_fib_config(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %2)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 255
  %11 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %12 = zext i1 %10 to i32
  %13 = getelementptr %struct.hlist_head, ptr %11, i32 %12
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %7
  %17 = call i32 @fib_table_insert(ptr noundef nonnull @init_net, ptr noundef nonnull %14, ptr noundef nonnull %4, ptr noundef %2) #14
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 4
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 2
  %22 = select i1 %18, i1 %21, i1 false
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i8 1, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 10), align 4
  br label %24

24:                                               ; preds = %23, %16, %7, %3
  %25 = phi i32 [ %5, %3 ], [ 0, %23 ], [ %17, %16 ], [ -105, %7 ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %4) #14
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet_rtm_delroute(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.fib_config, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(100) %4, i8 0, i32 100, i1 false), !annotation !9
  %5 = call fastcc i32 @rtm_to_fib_config(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %2)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = call ptr @nexthop_find_by_id(ptr noundef nonnull @init_net, i32 noundef %9) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  call void @do_trace_netlink_extack(ptr noundef nonnull @inet_rtm_delroute.__msg) #14
  %15 = icmp eq ptr %2, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %14
  store ptr @inet_rtm_delroute.__msg, ptr %2, align 4
  br label %31

17:                                               ; preds = %11, %7
  %18 = getelementptr inbounds %struct.fib_config, ptr %4, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 255
  %21 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %22 = zext i1 %20 to i32
  %23 = getelementptr %struct.hlist_head, ptr %21, i32 %22
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  call void @do_trace_netlink_extack(ptr noundef nonnull @inet_rtm_delroute.__msg.15) #14
  %27 = icmp eq ptr %2, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %26
  store ptr @inet_rtm_delroute.__msg.15, ptr %2, align 4
  br label %31

29:                                               ; preds = %17
  %30 = call i32 @fib_table_delete(ptr noundef nonnull @init_net, ptr noundef nonnull %24, ptr noundef nonnull %4, ptr noundef %2) #14
  br label %31

31:                                               ; preds = %29, %28, %26, %16, %14, %3
  %32 = phi i32 [ %5, %3 ], [ %30, %29 ], [ -22, %16 ], [ -22, %14 ], [ -3, %28 ], [ -3, %26 ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %4) #14
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet_dump_fib(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.fib_dump_filter, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) @__const.inet_dump_fib.filter, i32 20, i1 false)
  %4 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 12
  %7 = load i8, ptr %6, align 4, !range !12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = call i32 @ip_valid_fib_dump_req(ptr noundef nonnull @init_net, ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %130, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.fib_dump_filter, ptr %3, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  br label %24

15:                                               ; preds = %2
  %16 = load i32, ptr %5, align 4
  %17 = add i32 %16, -28
  %18 = icmp ult i32 %17, -12
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %5, i32 24
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 2560
  %23 = getelementptr inbounds %struct.fib_dump_filter, ptr %3, i32 0, i32 6
  store i32 %22, ptr %23, align 4
  br label %24

24:                                               ; preds = %19, %12
  %25 = phi i32 [ %14, %12 ], [ %22, %19 ]
  %26 = and i32 %25, 2048
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 8
  br label %130

31:                                               ; preds = %24, %15
  %32 = load i32, ptr %3, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %63, label %34

34:                                               ; preds = %31
  %35 = icmp eq i32 %32, 255
  %36 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %37 = zext i1 %35 to i32
  %38 = getelementptr %struct.hlist_head, ptr %36, i32 %37
  %39 = load volatile ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %57

41:                                               ; preds = %34
  %42 = load ptr, ptr %4, align 4
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 16
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr i8, ptr %42, i32 16
  %47 = load i8, ptr %46, align 1
  %48 = icmp eq i8 %47, 2
  br i1 %48, label %52, label %49

49:                                               ; preds = %45, %41
  %50 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %51 = load i32, ptr %50, align 8
  br label %130

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 6
  %54 = load ptr, ptr %53, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @inet_dump_fib.__msg) #14
  %55 = icmp eq ptr %54, null
  br i1 %55, label %130, label %56

56:                                               ; preds = %52
  store ptr @inet_dump_fib.__msg, ptr %54, align 4
  br label %130

57:                                               ; preds = %34
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %58 = call i32 @fib_table_dump(ptr noundef nonnull %39, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %59 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %60 = load i32, ptr %59, align 8
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, i32 %58, i32 %60
  br label %130

63:                                               ; preds = %31
  %64 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %68 = icmp ult i32 %65, 2
  br i1 %68, label %69, label %121

69:                                               ; preds = %63
  %70 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 2
  %71 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %72 = getelementptr %struct.hlist_head, ptr %71, i32 %65
  %73 = load volatile ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %98, label %75

75:                                               ; preds = %93, %69
  %76 = phi ptr [ %96, %93 ], [ %73, %69 ]
  %77 = phi i32 [ %95, %93 ], [ 0, %69 ]
  %78 = phi i32 [ %94, %93 ], [ 0, %69 ]
  %79 = icmp ult i32 %77, %67
  br i1 %79, label %93, label %80

80:                                               ; preds = %75
  %81 = icmp eq i32 %78, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %80
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %70, i8 0, i32 16, i1 false)
  br label %83

83:                                               ; preds = %82, %80
  %84 = call i32 @fib_table_dump(ptr noundef nonnull %76, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #14
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %114, %83
  %87 = phi i32 [ %65, %83 ], [ %101, %114 ]
  %88 = phi i32 [ %77, %83 ], [ %110, %114 ]
  %89 = phi i32 [ %84, %83 ], [ %115, %114 ]
  %90 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %91 = load i32, ptr %90, align 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %126, label %121, !prof !19

93:                                               ; preds = %83, %75
  %94 = phi i32 [ %78, %75 ], [ 1, %83 ]
  %95 = add i32 %77, 1
  %96 = load volatile ptr, ptr %76, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %75

98:                                               ; preds = %93, %69
  %99 = phi i32 [ 0, %69 ], [ %94, %93 ]
  %100 = phi i32 [ 0, %69 ], [ %95, %93 ]
  %101 = add nuw nsw i32 %65, 1
  %102 = icmp eq i32 %101, 2
  br i1 %102, label %121, label %103

103:                                              ; preds = %98
  %104 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %105 = getelementptr %struct.hlist_head, ptr %104, i32 %101
  %106 = load volatile ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %121, label %108

108:                                              ; preds = %117, %103
  %109 = phi ptr [ %119, %117 ], [ %106, %103 ]
  %110 = phi i32 [ %118, %117 ], [ 0, %103 ]
  %111 = phi i32 [ 1, %117 ], [ %99, %103 ]
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %70, i8 0, i32 16, i1 false)
  br label %114

114:                                              ; preds = %113, %108
  %115 = call i32 @fib_table_dump(ptr noundef nonnull %109, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #14
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %86, label %117

117:                                              ; preds = %114
  %118 = add i32 %110, 1
  %119 = load volatile ptr, ptr %109, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %108

121:                                              ; preds = %117, %103, %98, %86, %63
  %122 = phi i32 [ %87, %86 ], [ %65, %63 ], [ 2, %103 ], [ 2, %117 ], [ 2, %98 ]
  %123 = phi i32 [ %88, %86 ], [ 0, %63 ], [ %100, %98 ], [ 0, %103 ], [ %118, %117 ]
  %124 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %125 = load i32, ptr %124, align 8
  br label %126

126:                                              ; preds = %121, %86
  %127 = phi i32 [ %122, %121 ], [ %87, %86 ]
  %128 = phi i32 [ %125, %121 ], [ %89, %86 ]
  %129 = phi i32 [ %123, %121 ], [ %88, %86 ]
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  store i32 %129, ptr %66, align 4
  store i32 %127, ptr %64, align 4
  br label %130

130:                                              ; preds = %126, %57, %56, %52, %49, %28, %9
  %131 = phi i32 [ %30, %28 ], [ %62, %57 ], [ %51, %49 ], [ %128, %126 ], [ %10, %9 ], [ -2, %56 ], [ -2, %52 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #14
  ret i32 %131
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_table_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @fib_net_init(ptr noundef %0) #8 section ".init.text" {
  %2 = alloca %struct.netlink_kernel_cfg, align 4
  %3 = tail call fastcc i32 @ip_fib_net_init(ptr noundef %0) #19
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef nonnull align 4 dereferenceable(28) @__const.nl_fib_lookup_init.cfg, i32 28, i1 false) #14
  %6 = call ptr @__netlink_kernel_create(ptr noundef %0, i32 noundef 10, ptr noundef null, ptr noundef nonnull %2) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #14
  br label %17

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 13
  store ptr %6, ptr %10, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #14
  %11 = call i32 @fib_proc_init(ptr noundef %0) #18
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %17, %9, %1
  %14 = phi i32 [ %3, %1 ], [ %18, %17 ], [ %11, %9 ]
  ret i32 %14

15:                                               ; preds = %9
  %16 = load ptr, ptr %10, align 4
  call void @netlink_kernel_release(ptr noundef %16) #14
  store ptr null, ptr %10, align 4
  br label %17

17:                                               ; preds = %15, %8
  %18 = phi i32 [ %11, %15 ], [ -97, %8 ]
  call fastcc void @ip_fib_net_exit(ptr noundef %0)
  br label %13
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fib_net_exit(ptr noundef %0) #13 section ".ref.text" {
  tail call void @fib_proc_exit(ptr noundef %0) #14
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 13
  %3 = load ptr, ptr %2, align 4
  tail call void @netlink_kernel_release(ptr noundef %3) #14
  store ptr null, ptr %2, align 4
  tail call fastcc void @ip_fib_net_exit(ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @ip_fib_net_init(ptr noundef %0) unnamed_addr #8 section ".init.text" {
  %2 = tail call i32 @fib4_notifier_init(ptr noundef %0) #18
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %16

4:                                                ; preds = %1
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 64) #17
  %7 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 12
  store ptr %6, ptr %7, align 64
  %8 = icmp eq ptr %6, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @fib4_rules_init(ptr noundef %0) #19
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load ptr, ptr %7, align 64
  tail call void @kfree(ptr noundef %13) #14
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi i32 [ %10, %12 ], [ -12, %4 ]
  tail call void @fib4_notifier_exit(ptr noundef %0) #14
  br label %16

16:                                               ; preds = %14, %9, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], [ 0, %9 ]
  ret i32 %17
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @fib_proc_init(ptr noundef) local_unnamed_addr #7 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ip_fib_net_exit(ptr noundef %0) unnamed_addr #0 {
  tail call void @rtnl_lock() #14
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 12
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr %struct.hlist_head, ptr %3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  store volatile ptr %8, ptr %10, align 4
  %11 = icmp eq ptr %8, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %12, %7
  %13 = phi ptr [ %21, %12 ], [ %10, %7 ]
  %14 = phi ptr [ %20, %12 ], [ %9, %7 ]
  %15 = phi ptr [ %19, %12 ], [ %8, %7 ]
  %16 = phi ptr [ %15, %12 ], [ %5, %7 ]
  %17 = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  store volatile ptr %13, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  %18 = tail call i32 @fib_table_flush(ptr noundef %0, ptr noundef nonnull %16, i1 noundef zeroext true) #14
  tail call void @fib_free_table(ptr noundef nonnull %16) #14
  %19 = load ptr, ptr %15, align 4
  %20 = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  store volatile ptr %19, ptr %21, align 4
  %22 = icmp eq ptr %19, null
  br i1 %22, label %23, label %12

23:                                               ; preds = %12, %7
  %24 = phi ptr [ %5, %7 ], [ %15, %12 ]
  %25 = phi ptr [ %9, %7 ], [ %20, %12 ]
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  %26 = tail call i32 @fib_table_flush(ptr noundef %0, ptr noundef nonnull %24, i1 noundef zeroext true) #14
  tail call void @fib_free_table(ptr noundef nonnull %24) #14
  %27 = load ptr, ptr %2, align 64
  br label %28

28:                                               ; preds = %23, %1
  %29 = phi ptr [ %27, %23 ], [ %3, %1 ]
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %52, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %30, align 4
  %34 = getelementptr inbounds %struct.hlist_node, ptr %30, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  store volatile ptr %33, ptr %35, align 4
  %36 = icmp eq ptr %33, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %37, %32
  %38 = phi ptr [ %46, %37 ], [ %35, %32 ]
  %39 = phi ptr [ %45, %37 ], [ %34, %32 ]
  %40 = phi ptr [ %44, %37 ], [ %33, %32 ]
  %41 = phi ptr [ %40, %37 ], [ %30, %32 ]
  %42 = getelementptr inbounds %struct.hlist_node, ptr %40, i32 0, i32 1
  store volatile ptr %38, ptr %42, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %41, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %39, align 4
  %43 = tail call i32 @fib_table_flush(ptr noundef %0, ptr noundef nonnull %41, i1 noundef zeroext true) #14
  tail call void @fib_free_table(ptr noundef nonnull %41) #14
  %44 = load ptr, ptr %40, align 4
  %45 = getelementptr inbounds %struct.hlist_node, ptr %40, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  store volatile ptr %44, ptr %46, align 4
  %47 = icmp eq ptr %44, null
  br i1 %47, label %48, label %37

48:                                               ; preds = %37, %32
  %49 = phi ptr [ %30, %32 ], [ %40, %37 ]
  %50 = phi ptr [ %34, %32 ], [ %45, %37 ]
  store ptr inttoptr (i32 256 to ptr), ptr %49, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %50, align 4
  %51 = tail call i32 @fib_table_flush(ptr noundef %0, ptr noundef nonnull %49, i1 noundef zeroext true) #14
  tail call void @fib_free_table(ptr noundef nonnull %49) #14
  br label %52

52:                                               ; preds = %48, %28
  tail call void @rtnl_unlock() #14
  %53 = load ptr, ptr %2, align 64
  tail call void @kfree(ptr noundef %53) #14
  tail call void @fib4_notifier_exit(ptr noundef %0) #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @fib4_notifier_init(ptr noundef) local_unnamed_addr #7 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @fib4_rules_init(ptr nocapture noundef readonly %0) unnamed_addr #8 section ".init.text" {
  %2 = tail call ptr @fib_trie_table(i32 noundef 254, ptr noundef null) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @fib_trie_table(i32 noundef 255, ptr noundef nonnull %2) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 12
  %9 = load ptr, ptr %8, align 64
  %10 = getelementptr %struct.hlist_head, ptr %9, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %5, align 4
  %12 = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  store volatile ptr %10, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  store volatile ptr %5, ptr %10, align 4
  %13 = icmp eq ptr %11, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.hlist_node, ptr %11, i32 0, i32 1
  store volatile ptr %5, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %7
  %17 = load ptr, ptr %8, align 64
  %18 = load ptr, ptr %17, align 4
  store ptr %18, ptr %2, align 4
  %19 = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1
  store volatile ptr %17, ptr %19, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  store volatile ptr %2, ptr %17, align 4
  %20 = icmp eq ptr %18, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.hlist_node, ptr %18, i32 0, i32 1
  store volatile ptr %2, ptr %22, align 4
  br label %24

23:                                               ; preds = %4
  tail call void @fib_free_table(ptr noundef nonnull %2) #14
  br label %24

24:                                               ; preds = %23, %21, %16, %1
  %25 = phi i32 [ -12, %23 ], [ -12, %1 ], [ 0, %16 ], [ 0, %21 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib4_notifier_exit(ptr noundef) local_unnamed_addr #2 section ".ref.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib_trie_table(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nl_fib_input(ptr noundef %0) #0 {
  %2 = alloca %struct.fib_result, align 4
  %3 = alloca %struct.flowi4, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = icmp ult i32 %5, 36
  br i1 %6, label %81, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %5, %10
  %12 = add i32 %10, -16
  %13 = icmp ult i32 %12, 20
  %14 = or i1 %11, %13
  br i1 %14, label %81, label %15

15:                                               ; preds = %7
  %16 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 3264) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %81, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %20 = load ptr, ptr %19, align 8
  %21 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %20) #14
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 4, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false) #14, !annotation !9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #14
  %30 = getelementptr inbounds %struct.flowi_common, ptr %3, i32 0, i32 2
  %31 = getelementptr i8, ptr %28, i32 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false) #14
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %30, align 8
  %33 = getelementptr inbounds %struct.flowi_common, ptr %3, i32 0, i32 3
  %34 = getelementptr i8, ptr %28, i32 24
  %35 = load i8, ptr %34, align 4
  store i8 %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.flowi_common, ptr %3, i32 0, i32 4
  %37 = getelementptr i8, ptr %28, i32 25
  %38 = load i8, ptr %37, align 1
  store i8 %38, ptr %36, align 1
  %39 = getelementptr inbounds %struct.flowi4, ptr %3, i32 0, i32 2
  %40 = load i32, ptr %29, align 4
  store i32 %40, ptr %39, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %41 = getelementptr i8, ptr %28, i32 26
  %42 = load i8, ptr %41, align 2
  %43 = icmp eq i8 %42, -1
  %44 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %45 = zext i1 %43 to i32
  %46 = getelementptr %struct.hlist_head, ptr %44, i32 %45
  %47 = load volatile ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %28, i32 32
  store i32 -2, ptr %48, align 4
  %49 = icmp eq ptr %47, null
  br i1 %49, label %75, label %50

50:                                               ; preds = %26
  %51 = tail call ptr @llvm.thread.pointer() #14
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %53 = load volatile i32, ptr %52, align 4
  %54 = add i32 %53, 512
  store volatile i32 %54, ptr %52, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !21
  %55 = getelementptr inbounds %struct.fib_table, ptr %47, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = trunc i32 %56 to i8
  %58 = getelementptr i8, ptr %28, i32 27
  store i8 %57, ptr %58, align 1
  %59 = call i32 @fib_table_lookup(ptr noundef nonnull %47, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 1) #14
  store i32 %59, ptr %48, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 1
  %63 = load i8, ptr %62, align 4
  %64 = getelementptr i8, ptr %28, i32 28
  store i8 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 2
  %66 = load i8, ptr %65, align 1
  %67 = getelementptr i8, ptr %28, i32 29
  store i8 %66, ptr %67, align 1
  %68 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 3
  %69 = load i8, ptr %68, align 2
  %70 = getelementptr i8, ptr %28, i32 30
  store i8 %69, ptr %70, align 2
  %71 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 4
  %72 = load i8, ptr %71, align 1
  %73 = getelementptr i8, ptr %28, i32 31
  store i8 %72, ptr %73, align 1
  br label %74

74:                                               ; preds = %61, %50
  call fastcc void @local_bh_enable() #14
  br label %75

75:                                               ; preds = %74, %26
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #14
  %76 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 12
  %77 = load i32, ptr %76, align 4
  store i32 0, ptr %76, align 4
  %78 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 16
  store i32 0, ptr %78, align 8
  %79 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 13), align 4
  %80 = call i32 @netlink_unicast(ptr noundef %79, ptr noundef nonnull %16, i32 noundef %77, i32 noundef 64) #14
  br label %81

81:                                               ; preds = %75, %15, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netlink_kernel_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlink_kernel_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib_proc_exit(ptr noundef) local_unnamed_addr #2 section ".ref.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fib_netdev_event(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = icmp eq i32 %1, 6
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call fastcc void @fib_disable_ip(ptr noundef %4, i32 noundef 6, i1 noundef zeroext true)
  tail call void @rt_flush_dev(ptr noundef %4) #14
  br label %46

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 68
  %9 = load ptr, ptr %8, align 16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %46, label %11

11:                                               ; preds = %7
  switch i32 %1, label %46 [
    i32 1, label %12
    i32 2, label %23
    i32 4, label %24
    i32 7, label %33
    i32 21, label %36
  ]

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.in_device, ptr %9, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %16, %12
  %17 = phi ptr [ %19, %16 ], [ %14, %12 ]
  tail call void @fib_add_ifaddr(ptr noundef nonnull %17)
  %18 = getelementptr inbounds %struct.in_ifaddr, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %16

21:                                               ; preds = %16, %12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 115)) #14, !srcloc !22
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 115), ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 115), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 115)) #14, !srcloc !23
  tail call void @rt_cache_flush(ptr noundef nonnull @init_net) #14
  br label %46

23:                                               ; preds = %11
  tail call fastcc void @fib_disable_ip(ptr noundef %4, i32 noundef 2, i1 noundef zeroext false)
  br label %46

24:                                               ; preds = %11
  %25 = tail call i32 @dev_get_flags(ptr noundef %4) #14
  %26 = and i32 %25, 65600
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @fib_sync_up(ptr noundef %4, i8 noundef zeroext 16) #14
  br label %32

30:                                               ; preds = %24
  %31 = tail call i32 @fib_sync_down_dev(ptr noundef %4, i32 noundef 4, i1 noundef zeroext false) #14
  br label %32

32:                                               ; preds = %30, %28
  tail call void @rt_cache_flush(ptr noundef nonnull @init_net) #14
  br label %46

33:                                               ; preds = %11
  %34 = getelementptr inbounds %struct.netdev_notifier_info_ext, ptr %2, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  tail call void @fib_sync_mtu(ptr noundef %4, i32 noundef %35) #14
  tail call void @rt_cache_flush(ptr noundef nonnull @init_net) #14
  br label %46

36:                                               ; preds = %11
  %37 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %2, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 15
  %42 = load i64, ptr %41, align 16
  %43 = and i64 %42, 262144
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  tail call fastcc void @fib_disable_ip(ptr noundef %4, i32 noundef 2, i1 noundef zeroext true)
  br label %46

46:                                               ; preds = %45, %40, %36, %33, %32, %23, %21, %11, %7, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fib_disable_ip(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call i32 @fib_sync_down_dev(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %10, %6
  %11 = phi i32 [ %15, %10 ], [ 0, %6 ]
  %12 = phi ptr [ %13, %10 ], [ %8, %6 ]
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @fib_table_flush(ptr noundef nonnull @init_net, ptr noundef nonnull %12, i1 noundef zeroext false) #14
  %15 = add i32 %14, %11
  %16 = icmp eq ptr %13, null
  br i1 %16, label %17, label %10

17:                                               ; preds = %10
  %18 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  br label %19

19:                                               ; preds = %17, %6
  %20 = phi ptr [ %7, %6 ], [ %18, %17 ]
  %21 = phi i32 [ 0, %6 ], [ %15, %17 ]
  %22 = getelementptr %struct.hlist_head, ptr %20, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %25, %19
  %26 = phi i32 [ %30, %25 ], [ %21, %19 ]
  %27 = phi ptr [ %28, %25 ], [ %23, %19 ]
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @fib_table_flush(ptr noundef nonnull @init_net, ptr noundef nonnull %27, i1 noundef zeroext false) #14
  %30 = add i32 %29, %26
  %31 = icmp eq ptr %28, null
  br i1 %31, label %32, label %25

32:                                               ; preds = %25, %19
  %33 = phi i32 [ %21, %19 ], [ %30, %25 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32, %3
  tail call void @rt_cache_flush(ptr noundef nonnull @init_net) #14
  br label %36

36:                                               ; preds = %35, %32
  tail call void @arp_ifdown(ptr noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_flush_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_sync_up(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_sync_down_dev(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib_sync_mtu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arp_ifdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fib_inetaddr_event(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.in_ifaddr, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  switch i32 %1, label %17 [
    i32 1, label %7
    i32 2, label %9
  ]

7:                                                ; preds = %3
  tail call void @fib_add_ifaddr(ptr noundef %2)
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 115)) #14, !srcloc !22
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 115), ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 115), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 115)) #14, !srcloc !23
  tail call void @rt_cache_flush(ptr noundef nonnull @init_net) #14
  br label %17

9:                                                ; preds = %3
  tail call void @fib_del_ifaddr(ptr noundef %2, ptr noundef null)
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 115)) #14, !srcloc !22
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 115), ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 115), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 115)) #14, !srcloc !23
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.in_device, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  tail call fastcc void @fib_disable_ip(ptr noundef %6, i32 noundef 2, i1 noundef zeroext true)
  br label %17

16:                                               ; preds = %9
  tail call void @rt_cache_flush(ptr noundef nonnull @init_net) #14
  br label %17

17:                                               ; preds = %16, %15, %7, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtm_to_fib_config(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr %1, align 4
  %6 = icmp ult i32 %5, 28
  br i1 %6, label %164, label %7

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %1, i32 28
  %9 = add i32 %5, -28
  %10 = tail call i32 @__nla_validate(ptr noundef %8, i32 noundef %9, i32 noundef 30, ptr noundef nonnull @rtm_ipv4_policy, i32 noundef 0, ptr noundef %3) #14
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %164, label %12

12:                                               ; preds = %7
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(100) %2, i8 0, i32 100, i1 false)
  %13 = getelementptr i8, ptr %1, i32 17
  %14 = load i8, ptr %13, align 1
  store i8 %14, ptr %2, align 4
  %15 = getelementptr i8, ptr %1, i32 19
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 1
  store i8 %16, ptr %17, align 1
  %18 = getelementptr i8, ptr %1, i32 20
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 6
  store i32 %20, ptr %21, align 4
  %22 = getelementptr i8, ptr %1, i32 21
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 2
  store i8 %23, ptr %24, align 2
  %25 = getelementptr i8, ptr %1, i32 22
  %26 = load i8, ptr %25, align 2
  %27 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 3
  store i8 %26, ptr %27, align 1
  %28 = getelementptr i8, ptr %1, i32 23
  %29 = load i8, ptr %28, align 1
  %30 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 4
  store i8 %29, ptr %30, align 4
  %31 = getelementptr i8, ptr %1, i32 24
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 10
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 19
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 20
  %41 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 20, i32 2
  store i32 %39, ptr %41, align 4
  store ptr %1, ptr %40, align 4
  %42 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 20, i32 1
  store ptr @init_net, ptr %42, align 4
  %43 = icmp ugt i8 %29, 11
  br i1 %43, label %44, label %46

44:                                               ; preds = %12
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_fib_config.__msg) #14
  %45 = icmp eq ptr %3, null
  br i1 %45, label %164, label %161

46:                                               ; preds = %12
  %47 = load i32, ptr %1, align 4
  %48 = add i32 %47, -28
  %49 = icmp sgt i32 %48, 3
  br i1 %49, label %50, label %164

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 13
  %52 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 21
  %53 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 18
  %54 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 15
  %55 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 17
  %56 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 14
  %57 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 16
  %58 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 12
  %59 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 11
  %60 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 8
  %61 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 5
  %62 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 9
  %63 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 7
  br label %64

64:                                               ; preds = %124, %50
  %65 = phi ptr [ %8, %50 ], [ %132, %124 ]
  %66 = phi i1 [ false, %50 ], [ %126, %124 ]
  %67 = phi i1 [ false, %50 ], [ %125, %124 ]
  %68 = phi i32 [ %48, %50 ], [ %131, %124 ]
  %69 = load i16, ptr %65, align 2
  %70 = icmp ult i16 %69, 4
  %71 = zext i16 %69 to i32
  %72 = icmp ult i32 %68, %71
  %73 = select i1 %70, i1 true, i1 %72
  br i1 %73, label %134, label %74

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.nlattr, ptr %65, i32 0, i32 1
  %76 = load i16, ptr %75, align 2
  %77 = and i16 %76, 16383
  %78 = zext i16 %77 to i32
  switch i32 %78, label %124 [
    i32 1, label %79
    i32 4, label %82
    i32 5, label %85
    i32 18, label %90
    i32 6, label %93
    i32 7, label %96
    i32 8, label %99
    i32 9, label %104
    i32 11, label %109
    i32 15, label %112
    i32 22, label %115
    i32 21, label %116
    i32 30, label %121
  ]

79:                                               ; preds = %74
  %80 = getelementptr i8, ptr %65, i32 4
  %81 = load i32, ptr %80, align 4
  store i32 %81, ptr %63, align 4
  br label %124

82:                                               ; preds = %74
  %83 = getelementptr i8, ptr %65, i32 4
  %84 = load i32, ptr %83, align 4
  store i32 %84, ptr %62, align 4
  br label %124

85:                                               ; preds = %74
  %86 = getelementptr i8, ptr %65, i32 4
  %87 = load i32, ptr %86, align 4
  store i32 %87, ptr %60, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %124, label %89

89:                                               ; preds = %85
  store i8 2, ptr %61, align 1
  br label %124

90:                                               ; preds = %74
  %91 = tail call i32 @fib_gw_from_via(ptr noundef %2, ptr noundef %65, ptr noundef %3)
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %124, label %164

93:                                               ; preds = %74
  %94 = getelementptr i8, ptr %65, i32 4
  %95 = load i32, ptr %94, align 4
  store i32 %95, ptr %59, align 4
  br label %124

96:                                               ; preds = %74
  %97 = getelementptr i8, ptr %65, i32 4
  %98 = load i32, ptr %97, align 4
  store i32 %98, ptr %58, align 4
  br label %124

99:                                               ; preds = %74
  %100 = getelementptr i8, ptr %65, i32 4
  store ptr %100, ptr %56, align 4
  %101 = load i16, ptr %65, align 2
  %102 = zext i16 %101 to i32
  %103 = add nsw i32 %102, -4
  store i32 %103, ptr %57, align 4
  br label %124

104:                                              ; preds = %74
  %105 = getelementptr i8, ptr %65, i32 4
  store ptr %105, ptr %54, align 4
  %106 = load i16, ptr %65, align 2
  %107 = zext i16 %106 to i32
  %108 = add nsw i32 %107, -4
  store i32 %108, ptr %55, align 4
  br label %124

109:                                              ; preds = %74
  %110 = getelementptr i8, ptr %65, i32 4
  %111 = load i32, ptr %110, align 4
  store i32 %111, ptr %53, align 4
  br label %124

112:                                              ; preds = %74
  %113 = getelementptr i8, ptr %65, i32 4
  %114 = load i32, ptr %113, align 4
  store i32 %114, ptr %21, align 4
  br label %124

115:                                              ; preds = %74
  store ptr %65, ptr %52, align 4
  br label %124

116:                                              ; preds = %74
  %117 = getelementptr i8, ptr %65, i32 4
  %118 = load i16, ptr %117, align 2
  %119 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 22
  store i16 %118, ptr %119, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @lwtunnel_valid_encap_type.__msg) #14
  %120 = icmp eq ptr %3, null
  br i1 %120, label %164, label %161

121:                                              ; preds = %74
  %122 = getelementptr i8, ptr %65, i32 4
  %123 = load i32, ptr %122, align 4
  store i32 %123, ptr %51, align 4
  br label %124

124:                                              ; preds = %121, %115, %112, %109, %104, %99, %96, %93, %90, %89, %85, %82, %79, %74
  %125 = phi i1 [ %67, %74 ], [ %67, %121 ], [ %67, %115 ], [ %67, %112 ], [ %67, %109 ], [ %67, %104 ], [ %67, %99 ], [ %67, %96 ], [ %67, %93 ], [ %67, %90 ], [ true, %89 ], [ true, %85 ], [ %67, %82 ], [ %67, %79 ]
  %126 = phi i1 [ %66, %74 ], [ %66, %121 ], [ %66, %115 ], [ %66, %112 ], [ %66, %109 ], [ %66, %104 ], [ %66, %99 ], [ %66, %96 ], [ %66, %93 ], [ true, %90 ], [ %66, %89 ], [ %66, %85 ], [ %66, %82 ], [ %66, %79 ]
  %127 = load i16, ptr %65, align 2
  %128 = zext i16 %127 to i32
  %129 = add nuw nsw i32 %128, 3
  %130 = and i32 %129, 131068
  %131 = sub nsw i32 %68, %130
  %132 = getelementptr i8, ptr %65, i32 %130
  %133 = icmp sgt i32 %131, 3
  br i1 %133, label %64, label %134

134:                                              ; preds = %124, %64
  %135 = phi i1 [ %67, %64 ], [ %125, %124 ]
  %136 = phi i1 [ %66, %64 ], [ %126, %124 ]
  %137 = load i32, ptr %51, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %157, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 9
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 5
  %145 = load i8, ptr %144, align 1
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 21
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.fib_config, ptr %2, i32 0, i32 15
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %151, %147, %143, %139
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_fib_config.__msg.13) #14
  %156 = icmp eq ptr %3, null
  br i1 %156, label %164, label %161

157:                                              ; preds = %151, %134
  %158 = select i1 %135, i1 %136, i1 false
  br i1 %158, label %159, label %164

159:                                              ; preds = %157
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rtm_to_fib_config.__msg.14) #14
  %160 = icmp eq ptr %3, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %159, %155, %116, %44
  %162 = phi ptr [ @rtm_to_fib_config.__msg, %44 ], [ @lwtunnel_valid_encap_type.__msg, %116 ], [ @rtm_to_fib_config.__msg.13, %155 ], [ @rtm_to_fib_config.__msg.14, %159 ]
  %163 = phi i32 [ -22, %44 ], [ -95, %116 ], [ -22, %155 ], [ -22, %159 ]
  store ptr %162, ptr %3, align 4
  br label %164

164:                                              ; preds = %161, %159, %157, %155, %116, %90, %46, %44, %7, %4
  %165 = phi i32 [ -22, %155 ], [ -22, %159 ], [ 0, %157 ], [ %10, %7 ], [ -22, %44 ], [ -95, %116 ], [ -22, %4 ], [ 0, %46 ], [ %163, %161 ], [ %91, %90 ]
  ret i32 %165
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_validate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nexthop_find_by_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_table_dump(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind readonly }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { cold }

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
!8 = !{i64 2150563425}
!9 = !{!"auto-init"}
!10 = !{i64 2149082442}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i8 0, i8 2}
!13 = !{i64 2149082659}
!14 = !{i32 0, i32 33}
!15 = !{i64 2150937883, i64 2150937908}
!16 = !{i64 3433995}
!17 = !{i64 3434192}
!18 = !{i64 2150919471}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2150603572}
!21 = !{i64 2148896212}
!22 = !{i64 579562, i64 2148069533, i64 2148069559, i64 2148069606, i64 2148069628, i64 2148069656, i64 2148069676}
!23 = !{i64 2148080948, i64 2148080974, i64 2148081003, i64 2148081037, i64 2148081068, i64 2148081091}
