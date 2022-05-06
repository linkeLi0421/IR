; ModuleID = '/llk/IR/net/nfc/netlink.c_pt.bc'
source_filename = "../net/nfc/netlink.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___nfc_alloc_vendor_cmd_reply_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22__nfc_alloc_vendor_cmd_reply_skb\22\09\09\09\09\09"
module asm "__kstrtabns___nfc_alloc_vendor_cmd_reply_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_vendor_cmd_reply:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_vendor_cmd_reply\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_vendor_cmd_reply:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
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
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
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
%struct.nla_policy = type { i8, i8, i16, %union.anon.74 }
%union.anon.74 = type { i32 }
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.genl_multicast_group = type { [16 x i8], i8 }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.nfc_genl_data = type { i32, %struct.mutex }
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
%struct.nfc_llcp_sdp_tlv = type { ptr, i8, ptr, i8, i8, i32, %struct.hlist_node }
%struct.nfc_se = type { %struct.list_head, i32, i16, i16 }
%struct.nfc_evt_transaction = type <{ i32, [16 x i8], i8, [0 x i8] }>
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type {}
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.124 }
%union.anon.124 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.genl_dumpit_info = type { ptr, %struct.genl_ops, ptr }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.nfc_llcp_local = type { %struct.list_head, ptr, %struct.kref, %struct.mutex, %struct.timer_list, %struct.sk_buff_head, %struct.work_struct, %struct.work_struct, ptr, %struct.work_struct, i32, i8, i8, i8, i8, i16, i32, i32, i32, [16 x %struct.atomic_t], [48 x i8], i8, [48 x i8], i8, i8, i16, i16, i8, i16, %struct.mutex, %struct.hlist_head, %struct.timer_list, %struct.work_struct, i8, %struct.llcp_sock_list, %struct.llcp_sock_list, %struct.llcp_sock_list }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.llcp_sock_list = type { %struct.hlist_head, %struct.rwlock_t }
%struct.nfc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.se_io_ctx = type { i32, i32 }
%struct.nfc_vendor_cmd = type { i32, i32, ptr }
%struct.netlink_notify = type { ptr, i32, i32 }
%struct.urelease_work = type { %struct.work_struct, i32 }
%struct.class_dev_iter = type { %struct.klist_iter, ptr }
%struct.klist_iter = type { ptr, ptr }

@nfc_genl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"nfc\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 31, i32 0, i8 0, i8 19, i8 0, i8 1, ptr @nfc_genl_policy, ptr null, ptr null, ptr @nfc_genl_ops, ptr null, ptr @nfc_genl_mcgrps, ptr @__this_module }, section ".data..ro_after_init", align 4
@.str = private unnamed_addr constant [18 x i8] c"net/nfc/netlink.c\00", align 1
@__kstrtab___nfc_alloc_vendor_cmd_reply_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns___nfc_alloc_vendor_cmd_reply_skb = external dso_local constant [0 x i8], align 1
@__ksymtab___nfc_alloc_vendor_cmd_reply_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__nfc_alloc_vendor_cmd_reply_skb to i32), ptr @__kstrtab___nfc_alloc_vendor_cmd_reply_skb, ptr @__kstrtabns___nfc_alloc_vendor_cmd_reply_skb }, section "___ksymtab+__nfc_alloc_vendor_cmd_reply_skb", align 4
@__kstrtab_nfc_vendor_cmd_reply = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_vendor_cmd_reply = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_vendor_cmd_reply = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_vendor_cmd_reply to i32), ptr @__kstrtab_nfc_vendor_cmd_reply, ptr @__kstrtabns_nfc_vendor_cmd_reply }, section "___ksymtab+nfc_vendor_cmd_reply", align 4
@nfc_genl_data_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"&genl_data->genl_data_mutex\00", align 1
@nl_notifier = internal global %struct.notifier_block { ptr @nfc_genl_rcv_nl_event, ptr null, i32 0 }, align 4
@init_net = external dso_local local_unnamed_addr global %struct.net, align 64
@genlmsg_multicast_netns.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"include/net/genetlink.h\00", align 1
@nfc_genl_policy = internal constant [32 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 8, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 32, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 11, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 0, %union.anon.74 zeroinitializer }], align 4
@nfc_genl_ops = internal constant [19 x %struct.genl_ops] [%struct.genl_ops { ptr @nfc_genl_get_device, ptr null, ptr @nfc_genl_dump_devices, ptr @nfc_genl_dump_devices_done, ptr null, i32 0, i8 1, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr @nfc_genl_dev_up, ptr null, ptr null, ptr null, ptr null, i32 0, i8 2, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @nfc_genl_dev_down, ptr null, ptr null, ptr null, ptr null, i32 0, i8 3, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @nfc_genl_start_poll, ptr null, ptr null, ptr null, ptr null, i32 0, i8 6, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @nfc_genl_stop_poll, ptr null, ptr null, ptr null, ptr null, i32 0, i8 7, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @nfc_genl_dep_link_up, ptr null, ptr null, ptr null, ptr null, i32 0, i8 4, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @nfc_genl_dep_link_down, ptr null, ptr null, ptr null, ptr null, i32 0, i8 5, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr null, ptr null, ptr @nfc_genl_dump_targets, ptr @nfc_genl_dump_targets_done, ptr null, i32 0, i8 8, i8 0, i8 0, i8 5 }, %struct.genl_ops { ptr @nfc_genl_llc_get_params, ptr null, ptr null, ptr null, ptr null, i32 0, i8 15, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr @nfc_genl_llc_set_params, ptr null, ptr null, ptr null, ptr null, i32 0, i8 16, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @nfc_genl_llc_sdreq, ptr null, ptr null, ptr null, ptr null, i32 0, i8 19, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @nfc_genl_fw_download, ptr null, ptr null, ptr null, ptr null, i32 0, i8 21, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @nfc_genl_enable_se, ptr null, ptr null, ptr null, ptr null, i32 0, i8 17, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @nfc_genl_disable_se, ptr null, ptr null, ptr null, ptr null, i32 0, i8 18, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr null, ptr null, ptr @nfc_genl_dump_ses, ptr @nfc_genl_dump_ses_done, ptr null, i32 0, i8 26, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr @nfc_genl_se_io, ptr null, ptr null, ptr null, ptr null, i32 0, i8 27, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @nfc_genl_activate_target, ptr null, ptr null, ptr null, ptr null, i32 0, i8 28, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @nfc_genl_vendor_cmd, ptr null, ptr null, ptr null, ptr null, i32 0, i8 29, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @nfc_genl_deactivate_target, ptr null, ptr null, ptr null, ptr null, i32 0, i8 30, i8 0, i8 1, i8 3 }], align 4
@nfc_genl_mcgrps = internal constant [1 x %struct.genl_multicast_group] [%struct.genl_multicast_group { [16 x i8] c"events\00\00\00\00\00\00\00\00\00\00", i8 0 }], align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.3 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1
@nfc_devlist_mutex = external dso_local global %struct.mutex, align 4
@nfc_devlist_generation = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nfc_class = external dso_local global %struct.class, align 4
@nfc_sdp_genl_policy = internal constant [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 5, i8 0, i16 251, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.74 zeroinitializer }], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab___nfc_alloc_vendor_cmd_reply_skb, ptr @__ksymtab_nfc_vendor_cmd_reply], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_targets_found(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 12
  store i32 0, ptr %3, align 4
  %4 = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @genlmsg_put(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 9) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %6
  %10 = load i32, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 %10, ptr %2, align 4
  %11 = call i32 @nla_put(ptr noundef nonnull %4, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %7, i32 -20
  %15 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 14
  %16 = load ptr, ptr %15, align 8
  %17 = ptrtoint ptr %16 to i32
  %18 = ptrtoint ptr %14 to i32
  %19 = sub i32 %17, %18
  store i32 %19, ptr %14, align 4
  %20 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  %21 = icmp eq i8 %20, 0
  %22 = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !8

25:                                               ; preds = %13
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 308, i32 noundef 9, ptr noundef null) #10
  br label %26

26:                                               ; preds = %25, %13
  br i1 %21, label %34, label %27

27:                                               ; preds = %26
  %28 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  %29 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %30 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 16
  store i32 %28, ptr %30, align 8
  %31 = call i32 @netlink_broadcast(ptr noundef %29, ptr noundef nonnull %4, i32 noundef 0, i32 noundef %28, i32 noundef 2592) #10
  %32 = call i32 @llvm.smin.i32(i32 %31, i32 0) #10
  br label %34

33:                                               ; preds = %9, %6
  call void @kfree_skb_reason(ptr noundef nonnull %4, i32 noundef 0) #10
  br label %34

34:                                               ; preds = %33, %27, %26, %1
  %35 = phi i32 [ -90, %33 ], [ -12, %1 ], [ %32, %27 ], [ -22, %26 ]
  ret i32 %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @genlmsg_multicast(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  %4 = icmp eq i8 %3, 0
  %5 = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %2
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 308, i32 noundef 9, ptr noundef null) #10
  br label %9

9:                                                ; preds = %8, %2
  br i1 %4, label %16, label %10

10:                                               ; preds = %9
  %11 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  %12 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  store i32 %11, ptr %13, align 8
  %14 = tail call i32 @netlink_broadcast(ptr noundef %12, ptr noundef %0, i32 noundef 0, i32 noundef %11, i32 noundef %1) #10
  %15 = tail call i32 @llvm.smin.i32(i32 %14, i32 0) #10
  br label %16

16:                                               ; preds = %10, %9
  %17 = phi i32 [ %15, %10 ], [ -22, %9 ]
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_target_lost(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @genlmsg_put(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 12) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %44, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ %15, %13 ], [ %11, %9 ]
  %18 = tail call i32 @strlen(ptr noundef %17) #10
  %19 = add i32 %18, 1
  %20 = tail call i32 @nla_put(ptr noundef nonnull %4, i32 noundef 2, i32 noundef %19, ptr noundef %17) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 %1, ptr %3, align 4
  %23 = call i32 @nla_put(ptr noundef nonnull %4, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %22
  %26 = getelementptr i8, ptr %7, i32 -20
  %27 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 14
  %28 = load ptr, ptr %27, align 8
  %29 = ptrtoint ptr %28 to i32
  %30 = ptrtoint ptr %26 to i32
  %31 = sub i32 %29, %30
  store i32 %31, ptr %26, align 4
  %32 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  %33 = icmp eq i8 %32, 0
  %34 = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  %35 = xor i1 %34, true
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %38, !prof !8

37:                                               ; preds = %25
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 308, i32 noundef 9, ptr noundef null) #10
  br label %38

38:                                               ; preds = %37, %25
  br i1 %33, label %45, label %39

39:                                               ; preds = %38
  %40 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  %41 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %42 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 16
  store i32 %40, ptr %42, align 8
  %43 = call i32 @netlink_broadcast(ptr noundef %41, ptr noundef nonnull %4, i32 noundef 0, i32 noundef %40, i32 noundef 3264) #10
  br label %45

44:                                               ; preds = %22, %16, %6
  call void @kfree_skb_reason(ptr noundef nonnull %4, i32 noundef 0) #10
  br label %45

45:                                               ; preds = %44, %39, %38, %2
  %46 = phi i32 [ -90, %44 ], [ -12, %2 ], [ 0, %38 ], [ 0, %39 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_tm_activated(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @genlmsg_put(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 13) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 %11, ptr %4, align 4
  %12 = call i32 @nla_put(ptr noundef nonnull %5, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 %1, ptr %3, align 4
  %15 = call i32 @nla_put(ptr noundef nonnull %5, i32 noundef 14, i32 noundef 4, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %14
  %18 = getelementptr i8, ptr %8, i32 -20
  %19 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 14
  %20 = load ptr, ptr %19, align 8
  %21 = ptrtoint ptr %20 to i32
  %22 = ptrtoint ptr %18 to i32
  %23 = sub i32 %21, %22
  store i32 %23, ptr %18, align 4
  %24 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  %25 = icmp eq i8 %24, 0
  %26 = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %30, !prof !8

29:                                               ; preds = %17
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 308, i32 noundef 9, ptr noundef null) #10
  br label %30

30:                                               ; preds = %29, %17
  br i1 %25, label %37, label %31

31:                                               ; preds = %30
  %32 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  %33 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %34 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 16
  store i32 %32, ptr %34, align 8
  %35 = call i32 @netlink_broadcast(ptr noundef %33, ptr noundef nonnull %5, i32 noundef 0, i32 noundef %32, i32 noundef 3264) #10
  br label %37

36:                                               ; preds = %14, %10, %7
  call void @kfree_skb_reason(ptr noundef nonnull %5, i32 noundef 0) #10
  br label %37

37:                                               ; preds = %36, %31, %30, %2
  %38 = phi i32 [ -90, %36 ], [ -12, %2 ], [ 0, %30 ], [ 0, %31 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_tm_deactivated(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @genlmsg_put(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 14) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 %9, ptr %2, align 4
  %10 = call i32 @nla_put(ptr noundef nonnull %3, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %6, i32 -20
  %14 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 14
  %15 = load ptr, ptr %14, align 8
  %16 = ptrtoint ptr %15 to i32
  %17 = ptrtoint ptr %13 to i32
  %18 = sub i32 %16, %17
  store i32 %18, ptr %13, align 4
  %19 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  %20 = icmp eq i8 %19, 0
  %21 = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %12
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 308, i32 noundef 9, ptr noundef null) #10
  br label %25

25:                                               ; preds = %24, %12
  br i1 %20, label %32, label %26

26:                                               ; preds = %25
  %27 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  %28 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %29 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 16
  store i32 %27, ptr %29, align 8
  %30 = call i32 @netlink_broadcast(ptr noundef %28, ptr noundef nonnull %3, i32 noundef 0, i32 noundef %27, i32 noundef 3264) #10
  br label %32

31:                                               ; preds = %8, %5
  call void @kfree_skb_reason(ptr noundef nonnull %3, i32 noundef 0) #10
  br label %32

32:                                               ; preds = %31, %26, %25, %1
  %33 = phi i32 [ -90, %31 ], [ -12, %1 ], [ 0, %25 ], [ 0, %26 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_device_added(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @genlmsg_put(ptr noundef nonnull %2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 10) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @nfc_genl_setup_device_added(ptr noundef %0, ptr noundef nonnull %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %7
  %11 = getelementptr i8, ptr %5, i32 -20
  %12 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 14
  %13 = load ptr, ptr %12, align 8
  %14 = ptrtoint ptr %13 to i32
  %15 = ptrtoint ptr %11 to i32
  %16 = sub i32 %14, %15
  store i32 %16, ptr %11, align 4
  %17 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  %18 = icmp eq i8 %17, 0
  %19 = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %10
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 308, i32 noundef 9, ptr noundef null) #10
  br label %23

23:                                               ; preds = %22, %10
  br i1 %18, label %30, label %24

24:                                               ; preds = %23
  %25 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  %26 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %27 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 16
  store i32 %25, ptr %27, align 8
  %28 = tail call i32 @netlink_broadcast(ptr noundef %26, ptr noundef nonnull %2, i32 noundef 0, i32 noundef %25, i32 noundef 3264) #10
  br label %30

29:                                               ; preds = %7, %4
  tail call void @kfree_skb_reason(ptr noundef nonnull %2, i32 noundef 0) #10
  br label %30

30:                                               ; preds = %29, %24, %23, %1
  %31 = phi i32 [ -90, %29 ], [ -12, %1 ], [ 0, %23 ], [ 0, %24 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfc_genl_setup_device_added(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi ptr [ %12, %10 ], [ %8, %2 ]
  %15 = tail call i32 @strlen(ptr noundef %14) #10
  %16 = add i32 %15, 1
  %17 = tail call i32 @nla_put(ptr noundef %1, i32 noundef 2, i32 noundef %16, ptr noundef %14) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %13
  %20 = load i32, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 %20, ptr %6, align 4
  %21 = call i32 @nla_put(ptr noundef %1, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 13
  %25 = load i32, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 %25, ptr %5, align 4
  %26 = call i32 @nla_put(ptr noundef %1, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 6
  %30 = load i8, ptr %29, align 8, !range !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 %30, ptr %4, align 1
  %31 = call i32 @nla_put(ptr noundef %1, i32 noundef 12, i32 noundef 1, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 8
  %35 = load i8, ptr %34, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 %35, ptr %3, align 1
  %36 = call i32 @nla_put(ptr noundef %1, i32 noundef 11, i32 noundef 1, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %37 = icmp ne i32 %36, 0
  %38 = sext i1 %37 to i32
  br label %39

39:                                               ; preds = %33, %28, %23, %19, %13
  %40 = phi i32 [ -1, %28 ], [ -1, %23 ], [ -1, %19 ], [ -1, %13 ], [ %38, %33 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_device_removed(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @genlmsg_put(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 11) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 %9, ptr %2, align 4
  %10 = call i32 @nla_put(ptr noundef nonnull %3, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %6, i32 -20
  %14 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 14
  %15 = load ptr, ptr %14, align 8
  %16 = ptrtoint ptr %15 to i32
  %17 = ptrtoint ptr %13 to i32
  %18 = sub i32 %16, %17
  store i32 %18, ptr %13, align 4
  %19 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  %20 = icmp eq i8 %19, 0
  %21 = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %12
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 308, i32 noundef 9, ptr noundef null) #10
  br label %25

25:                                               ; preds = %24, %12
  br i1 %20, label %32, label %26

26:                                               ; preds = %25
  %27 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  %28 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %29 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 16
  store i32 %27, ptr %29, align 8
  %30 = call i32 @netlink_broadcast(ptr noundef %28, ptr noundef nonnull %3, i32 noundef 0, i32 noundef %27, i32 noundef 3264) #10
  br label %32

31:                                               ; preds = %8, %5
  call void @kfree_skb_reason(ptr noundef nonnull %3, i32 noundef 0) #10
  br label %32

32:                                               ; preds = %31, %26, %25, %1
  %33 = phi i32 [ -90, %31 ], [ -12, %1 ], [ 0, %25 ], [ 0, %26 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_llc_send_sdres(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %93, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @genlmsg_put(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 20) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %91, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 %11, ptr %4, align 4
  %12 = call i32 @nla_put(ptr noundef nonnull %5, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %91

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 14
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 @nla_put(ptr noundef nonnull %5, i32 noundef 19, i32 noundef 0, ptr noundef null) #10
  %18 = icmp slt i32 %17, 0
  %19 = icmp eq ptr %16, null
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %91, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %1, align 4
  %23 = icmp eq ptr %22, null
  %24 = getelementptr i8, ptr %22, i32 -20
  %25 = icmp eq ptr %24, null
  %26 = or i1 %23, %25
  br i1 %26, label %67, label %27

27:                                               ; preds = %62, %21
  %28 = phi ptr [ %64, %62 ], [ %24, %21 ]
  %29 = phi i32 [ %32, %62 ], [ 1, %21 ]
  %30 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %28, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = add i32 %29, 1
  %33 = load ptr, ptr %15, align 8
  %34 = call i32 @nla_put(ptr noundef nonnull %5, i32 noundef %29, i32 noundef 0, ptr noundef null) #10
  %35 = icmp slt i32 %34, 0
  %36 = icmp eq ptr %33, null
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %91, label %38

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %28, i32 0, i32 4
  %40 = load i8, ptr %39, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 %40, ptr %3, align 1
  %41 = call i32 @nla_put(ptr noundef nonnull %5, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %91

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %28, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = call i32 @strlen(ptr noundef %45) #10
  %47 = add i32 %46, 1
  %48 = call i32 @nla_put(ptr noundef nonnull %5, i32 noundef 1, i32 noundef %47, ptr noundef %45) #10
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %91

50:                                               ; preds = %43
  %51 = load ptr, ptr %15, align 8
  %52 = ptrtoint ptr %51 to i32
  %53 = ptrtoint ptr %33 to i32
  %54 = sub i32 %52, %53
  %55 = trunc i32 %54 to i16
  store i16 %55, ptr %33, align 2
  %56 = load ptr, ptr %30, align 4
  %57 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %28, i32 0, i32 6, i32 1
  %58 = load ptr, ptr %57, align 4
  store volatile ptr %56, ptr %58, align 4
  %59 = icmp eq ptr %56, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.hlist_node, ptr %56, i32 0, i32 1
  store volatile ptr %58, ptr %61, align 4
  br label %62

62:                                               ; preds = %60, %50
  store ptr inttoptr (i32 256 to ptr), ptr %30, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %57, align 4
  call void @nfc_llcp_free_sdp_tlv(ptr noundef nonnull %28) #10
  %63 = icmp eq ptr %31, null
  %64 = getelementptr i8, ptr %31, i32 -20
  %65 = icmp eq ptr %64, null
  %66 = or i1 %63, %65
  br i1 %66, label %67, label %27

67:                                               ; preds = %62, %21
  %68 = load ptr, ptr %15, align 8
  %69 = ptrtoint ptr %68 to i32
  %70 = ptrtoint ptr %16 to i32
  %71 = sub i32 %69, %70
  %72 = trunc i32 %71 to i16
  store i16 %72, ptr %16, align 2
  %73 = getelementptr i8, ptr %8, i32 -20
  %74 = load ptr, ptr %15, align 8
  %75 = ptrtoint ptr %74 to i32
  %76 = ptrtoint ptr %73 to i32
  %77 = sub i32 %75, %76
  store i32 %77, ptr %73, align 4
  %78 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  %79 = icmp eq i8 %78, 0
  %80 = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  %81 = xor i1 %80, true
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %83, label %84, !prof !8

83:                                               ; preds = %67
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 308, i32 noundef 9, ptr noundef null) #10
  br label %84

84:                                               ; preds = %83, %67
  br i1 %79, label %93, label %85

85:                                               ; preds = %84
  %86 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  %87 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %88 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 16
  store i32 %86, ptr %88, align 8
  %89 = call i32 @netlink_broadcast(ptr noundef %87, ptr noundef nonnull %5, i32 noundef 0, i32 noundef %86, i32 noundef 2592) #10
  %90 = call i32 @llvm.smin.i32(i32 %89, i32 0) #10
  br label %93

91:                                               ; preds = %43, %38, %27, %14, %10, %7
  %92 = phi i32 [ -90, %10 ], [ -90, %7 ], [ -12, %14 ], [ -12, %27 ], [ -90, %43 ], [ -90, %38 ]
  call void @kfree_skb_reason(ptr noundef nonnull %5, i32 noundef 0) #10
  call void @nfc_llcp_free_sdp_tlv_list(ptr noundef %1) #10
  br label %93

93:                                               ; preds = %91, %85, %84, %2
  %94 = phi i32 [ %92, %91 ], [ -12, %2 ], [ %90, %85 ], [ -22, %84 ]
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_free_sdp_tlv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_free_sdp_tlv_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_se_added(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %43, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @genlmsg_put(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 22) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %42, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 %13, ptr %6, align 4
  %14 = call i32 @nla_put(ptr noundef nonnull %7, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 %1, ptr %5, align 4
  %17 = call i32 @nla_put(ptr noundef nonnull %7, i32 noundef 21, i32 noundef 4, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %16
  %20 = trunc i16 %2 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 %20, ptr %4, align 1
  %21 = call i32 @nla_put(ptr noundef nonnull %7, i32 noundef 22, i32 noundef 1, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %10, i32 -20
  %25 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 14
  %26 = load ptr, ptr %25, align 8
  %27 = ptrtoint ptr %26 to i32
  %28 = ptrtoint ptr %24 to i32
  %29 = sub i32 %27, %28
  store i32 %29, ptr %24, align 4
  %30 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  %31 = icmp eq i8 %30, 0
  %32 = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  %33 = xor i1 %32, true
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %36, !prof !8

35:                                               ; preds = %23
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 308, i32 noundef 9, ptr noundef null) #10
  br label %36

36:                                               ; preds = %35, %23
  br i1 %31, label %43, label %37

37:                                               ; preds = %36
  %38 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  %39 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %40 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 16
  store i32 %38, ptr %40, align 8
  %41 = call i32 @netlink_broadcast(ptr noundef %39, ptr noundef nonnull %7, i32 noundef 0, i32 noundef %38, i32 noundef 3264) #10
  br label %43

42:                                               ; preds = %19, %16, %12, %9
  call void @kfree_skb_reason(ptr noundef nonnull %7, i32 noundef 0) #10
  br label %43

43:                                               ; preds = %42, %37, %36, %3
  %44 = phi i32 [ -90, %42 ], [ -12, %3 ], [ 0, %36 ], [ 0, %37 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_se_removed(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @genlmsg_put(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 23) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 %11, ptr %4, align 4
  %12 = call i32 @nla_put(ptr noundef nonnull %5, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 %1, ptr %3, align 4
  %15 = call i32 @nla_put(ptr noundef nonnull %5, i32 noundef 21, i32 noundef 4, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %14
  %18 = getelementptr i8, ptr %8, i32 -20
  %19 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 14
  %20 = load ptr, ptr %19, align 8
  %21 = ptrtoint ptr %20 to i32
  %22 = ptrtoint ptr %18 to i32
  %23 = sub i32 %21, %22
  store i32 %23, ptr %18, align 4
  %24 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  %25 = icmp eq i8 %24, 0
  %26 = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %30, !prof !8

29:                                               ; preds = %17
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 308, i32 noundef 9, ptr noundef null) #10
  br label %30

30:                                               ; preds = %29, %17
  br i1 %25, label %37, label %31

31:                                               ; preds = %30
  %32 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  %33 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %34 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 16
  store i32 %32, ptr %34, align 8
  %35 = call i32 @netlink_broadcast(ptr noundef %33, ptr noundef nonnull %5, i32 noundef 0, i32 noundef %32, i32 noundef 3264) #10
  br label %37

36:                                               ; preds = %14, %10, %7
  call void @kfree_skb_reason(ptr noundef nonnull %5, i32 noundef 0) #10
  br label %37

37:                                               ; preds = %36, %31, %30, %2
  %38 = phi i32 [ -90, %36 ], [ -12, %2 ], [ 0, %30 ], [ 0, %31 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_se_transaction(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @genlmsg_put(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 25) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %50, label %12

12:                                               ; preds = %9
  %13 = zext i8 %1 to i32
  %14 = tail call ptr @nfc_find_se(ptr noundef %0, i32 noundef %13) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %50, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 %17, ptr %6, align 4
  %18 = call i32 @nla_put(ptr noundef nonnull %7, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 %13, ptr %5, align 4
  %21 = call i32 @nla_put(ptr noundef nonnull %7, i32 noundef 21, i32 noundef 4, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.nfc_se, ptr %14, i32 0, i32 2
  %25 = load i16, ptr %24, align 4
  %26 = trunc i16 %25 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 %26, ptr %4, align 1
  %27 = call i32 @nla_put(ptr noundef nonnull %7, i32 noundef 22, i32 noundef 1, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load i32, ptr %2, align 1
  %31 = getelementptr inbounds %struct.nfc_evt_transaction, ptr %2, i32 0, i32 1
  %32 = call i32 @nla_put(ptr noundef nonnull %7, i32 noundef 23, i32 noundef %30, ptr noundef %31) #10
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.nfc_evt_transaction, ptr %2, i32 0, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds %struct.nfc_evt_transaction, ptr %2, i32 0, i32 3
  %39 = call i32 @nla_put(ptr noundef nonnull %7, i32 noundef 28, i32 noundef %37, ptr noundef %38) #10
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5
  call void @devm_kfree(ptr noundef %42, ptr noundef %2) #10
  %43 = getelementptr i8, ptr %10, i32 -20
  %44 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 14
  %45 = load ptr, ptr %44, align 8
  %46 = ptrtoint ptr %45 to i32
  %47 = ptrtoint ptr %43 to i32
  %48 = sub i32 %46, %47
  store i32 %48, ptr %43, align 4
  %49 = call fastcc i32 @genlmsg_multicast(ptr noundef nonnull %7, i32 noundef 3264)
  br label %52

50:                                               ; preds = %34, %29, %23, %20, %16, %12, %9
  %51 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5
  call void @devm_kfree(ptr noundef %51, ptr noundef %2) #10
  call void @kfree_skb_reason(ptr noundef nonnull %7, i32 noundef 0) #10
  br label %52

52:                                               ; preds = %50, %41, %3
  %53 = phi i32 [ -90, %50 ], [ 0, %41 ], [ -12, %3 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_find_se(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_se_connectivity(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @genlmsg_put(ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 24) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %36, label %11

11:                                               ; preds = %8
  %12 = zext i8 %1 to i32
  %13 = tail call ptr @nfc_find_se(ptr noundef %0, i32 noundef %12) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %36, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 %16, ptr %5, align 4
  %17 = call i32 @nla_put(ptr noundef nonnull %6, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 %12, ptr %4, align 4
  %20 = call i32 @nla_put(ptr noundef nonnull %6, i32 noundef 21, i32 noundef 4, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.nfc_se, ptr %13, i32 0, i32 2
  %24 = load i16, ptr %23, align 4
  %25 = trunc i16 %24 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 %25, ptr %3, align 1
  %26 = call i32 @nla_put(ptr noundef nonnull %6, i32 noundef 22, i32 noundef 1, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = getelementptr i8, ptr %9, i32 -20
  %30 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 14
  %31 = load ptr, ptr %30, align 8
  %32 = ptrtoint ptr %31 to i32
  %33 = ptrtoint ptr %29 to i32
  %34 = sub i32 %32, %33
  store i32 %34, ptr %29, align 4
  %35 = call fastcc i32 @genlmsg_multicast(ptr noundef nonnull %6, i32 noundef 3264)
  br label %37

36:                                               ; preds = %22, %19, %15, %11, %8
  call void @kfree_skb_reason(ptr noundef nonnull %6, i32 noundef 0) #10
  br label %37

37:                                               ; preds = %36, %28, %2
  %38 = phi i32 [ -90, %36 ], [ 0, %28 ], [ -12, %2 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_dep_link_up_event(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %39, label %11

11:                                               ; preds = %4
  %12 = tail call ptr @genlmsg_put(ptr noundef nonnull %9, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 4) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %38, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store i32 %15, ptr %8, align 4
  %16 = call i32 @nla_put(ptr noundef nonnull %9, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = icmp eq i8 %3, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 %1, ptr %7, align 4
  %21 = call i32 @nla_put(ptr noundef nonnull %9, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %20, %18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 %2, ptr %6, align 1
  %24 = call i32 @nla_put(ptr noundef nonnull %9, i32 noundef 10, i32 noundef 1, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 %3, ptr %5, align 1
  %27 = call i32 @nla_put(ptr noundef nonnull %9, i32 noundef 11, i32 noundef 1, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = getelementptr i8, ptr %12, i32 -20
  %31 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 14
  %32 = load ptr, ptr %31, align 8
  %33 = ptrtoint ptr %32 to i32
  %34 = ptrtoint ptr %30 to i32
  %35 = sub i32 %33, %34
  store i32 %35, ptr %30, align 4
  %36 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 11
  store i8 1, ptr %36, align 8
  %37 = call fastcc i32 @genlmsg_multicast(ptr noundef nonnull %9, i32 noundef 2592)
  br label %39

38:                                               ; preds = %26, %23, %20, %14, %11
  call void @kfree_skb_reason(ptr noundef nonnull %9, i32 noundef 0) #10
  br label %39

39:                                               ; preds = %38, %29, %4
  %40 = phi i32 [ -90, %38 ], [ 0, %29 ], [ -12, %4 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_dep_link_down_event(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @genlmsg_put(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 5) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 %9, ptr %2, align 4
  %10 = call i32 @nla_put(ptr noundef nonnull %3, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %6, i32 -20
  %14 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 14
  %15 = load ptr, ptr %14, align 8
  %16 = ptrtoint ptr %15 to i32
  %17 = ptrtoint ptr %13 to i32
  %18 = sub i32 %16, %17
  store i32 %18, ptr %13, align 4
  %19 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  %20 = icmp eq i8 %19, 0
  %21 = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %12
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 308, i32 noundef 9, ptr noundef null) #10
  br label %25

25:                                               ; preds = %24, %12
  br i1 %20, label %32, label %26

26:                                               ; preds = %25
  %27 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  %28 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %29 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 16
  store i32 %27, ptr %29, align 8
  %30 = call i32 @netlink_broadcast(ptr noundef %28, ptr noundef nonnull %3, i32 noundef 0, i32 noundef %27, i32 noundef 2592) #10
  br label %32

31:                                               ; preds = %8, %5
  call void @kfree_skb_reason(ptr noundef nonnull %3, i32 noundef 0) #10
  br label %32

32:                                               ; preds = %31, %26, %25, %1
  %33 = phi i32 [ -90, %31 ], [ -12, %1 ], [ 0, %25 ], [ 0, %26 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_fw_download_done(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @genlmsg_put(ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 21) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @strlen(ptr noundef %1) #10
  %13 = add i32 %12, 1
  %14 = tail call i32 @nla_put(ptr noundef nonnull %6, i32 noundef 20, i32 noundef %13, ptr noundef %1) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 %2, ptr %5, align 4
  %17 = call i32 @nla_put(ptr noundef nonnull %6, i32 noundef 24, i32 noundef 4, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %16
  %20 = load i32, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 %20, ptr %4, align 4
  %21 = call i32 @nla_put(ptr noundef nonnull %6, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %9, i32 -20
  %25 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 14
  %26 = load ptr, ptr %25, align 8
  %27 = ptrtoint ptr %26 to i32
  %28 = ptrtoint ptr %24 to i32
  %29 = sub i32 %27, %28
  store i32 %29, ptr %24, align 4
  %30 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  %31 = icmp eq i8 %30, 0
  %32 = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  %33 = xor i1 %32, true
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %36, !prof !8

35:                                               ; preds = %23
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 308, i32 noundef 9, ptr noundef null) #10
  br label %36

36:                                               ; preds = %35, %23
  br i1 %31, label %43, label %37

37:                                               ; preds = %36
  %38 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  %39 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %40 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 3, i32 16
  store i32 %38, ptr %40, align 8
  %41 = call i32 @netlink_broadcast(ptr noundef %39, ptr noundef nonnull %6, i32 noundef 0, i32 noundef %38, i32 noundef 3264) #10
  br label %43

42:                                               ; preds = %19, %16, %11, %8
  call void @kfree_skb_reason(ptr noundef nonnull %6, i32 noundef 0) #10
  br label %43

43:                                               ; preds = %42, %37, %36, %3
  %44 = phi i32 [ -90, %42 ], [ -12, %3 ], [ 0, %36 ], [ 0, %37 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__nfc_alloc_vendor_cmd_reply_skb(ptr noundef %0, i32 %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 24
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1631, i32 noundef 9, ptr noundef null) #10
  br label %39

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.genl_info, ptr %10, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %10, align 4
  %17 = add i32 %4, 119
  %18 = and i32 %17, -4
  %19 = tail call ptr @__alloc_skb(i32 noundef %18, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %39, label %21

21:                                               ; preds = %13
  %22 = tail call ptr @genlmsg_put(ptr noundef nonnull %19, i32 noundef %15, i32 noundef %16, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 29) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call void @kfree_skb_reason(ptr noundef nonnull %19, i32 noundef 0) #10
  br label %39

25:                                               ; preds = %21
  %26 = load i32, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store i32 %26, ptr %8, align 4
  %27 = call i32 @nla_put(ptr noundef nonnull %19, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 %2, ptr %7, align 4
  %30 = call i32 @nla_put(ptr noundef nonnull %19, i32 noundef 29, i32 noundef 4, ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 %3, ptr %6, align 4
  %33 = call i32 @nla_put(ptr noundef nonnull %19, i32 noundef 30, i32 noundef 4, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3
  store ptr %0, ptr %36, align 8
  %37 = getelementptr %struct.sk_buff, ptr %19, i32 0, i32 3, i32 4
  store ptr %22, ptr %37, align 4
  br label %39

38:                                               ; preds = %32, %29, %25
  call void @kfree_skb_reason(ptr noundef nonnull %19, i32 noundef 0) #10
  br label %39

39:                                               ; preds = %38, %35, %24, %13, %12
  %40 = phi ptr [ null, %12 ], [ null, %38 ], [ %19, %35 ], [ null, %24 ], [ null, %13 ]
  ret ptr %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_vendor_cmd_reply(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(48) %2, i8 0, i32 48, i1 false)
  %6 = getelementptr inbounds %struct.nfc_dev, ptr %3, i32 0, i32 24
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1649, i32 noundef 9, ptr noundef null) #10
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #10
  br label %23

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %5, i32 -20
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %13 = load ptr, ptr %12, align 8
  %14 = ptrtoint ptr %13 to i32
  %15 = ptrtoint ptr %11 to i32
  %16 = sub i32 %14, %15
  store i32 %16, ptr %11, align 4
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds %struct.genl_info, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %21 = tail call i32 @netlink_unicast(ptr noundef %20, ptr noundef %0, i32 noundef %19, i32 noundef 64) #10
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 0) #10
  br label %23

23:                                               ; preds = %10, %9
  %24 = phi i32 [ -22, %9 ], [ %22, %10 ]
  ret i32 %24
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_genl_data_init(ptr noundef %0) local_unnamed_addr #0 {
  store i32 0, ptr %0, align 4
  %2 = getelementptr inbounds %struct.nfc_genl_data, ptr %0, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @nfc_genl_data_init.__key) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @nfc_genl_data_exit(ptr nocapture noundef %0) local_unnamed_addr #5 {
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @nfc_genl_init() local_unnamed_addr #6 section ".init.text" {
  %1 = tail call i32 @genl_register_family(ptr noundef nonnull @nfc_genl_family) #10
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 @netlink_register_notifier(ptr noundef nonnull @nl_notifier) #10
  br label %5

5:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_register_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_genl_exit() local_unnamed_addr #0 {
  %1 = tail call i32 @netlink_unregister_notifier(ptr noundef nonnull @nl_notifier) #10
  %2 = tail call i32 @genl_unregister_family(ptr noundef nonnull @nfc_genl_family) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unregister_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_broadcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_genl_get_device(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr ptr, ptr %4, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %54, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %6, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @nfc_get_device(i32 noundef %10) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %54, label %13

13:                                               ; preds = %8
  %14 = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %51, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %1, align 4
  %20 = tail call ptr @genlmsg_put(ptr noundef nonnull %14, i32 noundef %18, i32 noundef %19, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 1) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %50, label %22

22:                                               ; preds = %16
  %23 = tail call fastcc i32 @nfc_genl_setup_device_added(ptr noundef nonnull %11, ptr noundef nonnull %14) #10
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr i8, ptr %20, i32 -20
  br i1 %24, label %39, label %26

26:                                               ; preds = %22
  %27 = icmp eq ptr %25, null
  br i1 %27, label %50, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 17
  %30 = load ptr, ptr %29, align 4
  %31 = icmp ugt ptr %30, %25
  br i1 %31, label %32, label %34, !prof !8

32:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  %33 = load ptr, ptr %29, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi ptr [ %33, %32 ], [ %30, %28 ]
  %36 = ptrtoint ptr %25 to i32
  %37 = ptrtoint ptr %35 to i32
  %38 = sub i32 %36, %37
  tail call void @skb_trim(ptr noundef nonnull %14, i32 noundef %38) #10
  br label %50

39:                                               ; preds = %22
  %40 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 14
  %41 = load ptr, ptr %40, align 8
  %42 = ptrtoint ptr %41 to i32
  %43 = ptrtoint ptr %25 to i32
  %44 = sub i32 %42, %43
  store i32 %44, ptr %25, align 4
  %45 = getelementptr inbounds %struct.nfc_dev, ptr %11, i32 0, i32 5
  tail call void @put_device(ptr noundef %45) #10
  %46 = load i32, ptr %17, align 4
  %47 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %48 = tail call i32 @netlink_unicast(ptr noundef %47, ptr noundef nonnull %14, i32 noundef %46, i32 noundef 64) #10
  %49 = tail call i32 @llvm.smin.i32(i32 %48, i32 0) #10
  br label %54

50:                                               ; preds = %34, %26, %16
  tail call void @kfree_skb_reason(ptr noundef nonnull %14, i32 noundef 0) #10
  br label %51

51:                                               ; preds = %50, %13
  %52 = phi i32 [ -90, %50 ], [ -12, %13 ]
  %53 = getelementptr inbounds %struct.nfc_dev, ptr %11, i32 0, i32 5
  tail call void @put_device(ptr noundef %53) #10
  br label %54

54:                                               ; preds = %51, %39, %8, %2
  %55 = phi i32 [ %52, %51 ], [ %49, %39 ], [ -22, %2 ], [ -19, %8 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_genl_dump_devices(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 1
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 12) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %51, label %17

11:                                               ; preds = %2
  %12 = load i32, ptr %5, align 4
  %13 = inttoptr i32 %12 to ptr
  %14 = inttoptr i32 %4 to ptr
  tail call void @mutex_lock(ptr noundef nonnull @nfc_devlist_mutex) #10
  %15 = load i32, ptr @nfc_devlist_generation, align 4
  %16 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 11
  store i32 %15, ptr %16, align 4
  br label %24

17:                                               ; preds = %7
  %18 = ptrtoint ptr %9 to i32
  store i32 %18, ptr %3, align 4
  tail call void @mutex_lock(ptr noundef nonnull @nfc_devlist_mutex) #10
  %19 = load i32, ptr @nfc_devlist_generation, align 4
  %20 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 11
  store i32 %19, ptr %20, align 4
  tail call void @class_dev_iter_init(ptr noundef nonnull %9, ptr noundef nonnull @nfc_class, ptr noundef null, ptr noundef null) #10
  %21 = tail call ptr @class_dev_iter_next(ptr noundef nonnull %9) #10
  %22 = icmp eq ptr %21, null
  %23 = getelementptr i8, ptr %21, i32 -24
  br i1 %22, label %46, label %24

24:                                               ; preds = %17, %11
  %25 = phi ptr [ %9, %17 ], [ %14, %11 ]
  %26 = phi ptr [ %23, %17 ], [ %13, %11 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  br label %30

30:                                               ; preds = %40, %28
  %31 = phi ptr [ %26, %28 ], [ %43, %40 ]
  %32 = load ptr, ptr %1, align 4
  %33 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 3, i32 12
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %29, align 4
  %36 = getelementptr inbounds %struct.nlmsghdr, ptr %35, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = tail call fastcc i32 @nfc_genl_send_device(ptr noundef %0, ptr noundef nonnull %31, i32 noundef %34, i32 noundef %37, ptr noundef %1, i32 noundef 2)
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %30
  %41 = tail call ptr @class_dev_iter_next(ptr noundef %25) #10
  %42 = icmp eq ptr %41, null
  %43 = getelementptr i8, ptr %41, i32 -24
  %44 = icmp eq ptr %43, null
  %45 = or i1 %42, %44
  br i1 %45, label %46, label %30

46:                                               ; preds = %40, %30, %24, %17
  %47 = phi ptr [ null, %24 ], [ null, %17 ], [ %31, %30 ], [ null, %40 ]
  tail call void @mutex_unlock(ptr noundef nonnull @nfc_devlist_mutex) #10
  %48 = ptrtoint ptr %47 to i32
  store i32 %48, ptr %5, align 4
  %49 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %50 = load i32, ptr %49, align 8
  br label %51

51:                                               ; preds = %46, %7
  %52 = phi i32 [ %50, %46 ], [ -12, %7 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_genl_dump_devices_done(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 13
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = inttoptr i32 %3 to ptr
  tail call void @class_dev_iter_exit(ptr noundef nonnull %6) #10
  tail call void @kfree(ptr noundef nonnull %6) #10
  br label %7

7:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_genl_dev_up(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr ptr, ptr %4, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %6, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @nfc_get_device(i32 noundef %10) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @nfc_dev_up(ptr noundef nonnull %11) #10
  %15 = getelementptr inbounds %struct.nfc_dev, ptr %11, i32 0, i32 5
  tail call void @put_device(ptr noundef %15) #10
  br label %16

16:                                               ; preds = %13, %8, %2
  %17 = phi i32 [ %14, %13 ], [ -22, %2 ], [ -19, %8 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_genl_dev_down(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr ptr, ptr %4, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %6, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @nfc_get_device(i32 noundef %10) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @nfc_dev_down(ptr noundef nonnull %11) #10
  %15 = getelementptr inbounds %struct.nfc_dev, ptr %11, i32 0, i32 5
  tail call void @put_device(ptr noundef %15) #10
  br label %16

16:                                               ; preds = %13, %8, %2
  %17 = phi i32 [ %14, %13 ], [ -22, %2 ], [ -19, %8 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_genl_start_poll(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr ptr, ptr %4, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %53, label %8

8:                                                ; preds = %2
  %9 = getelementptr ptr, ptr %4, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = getelementptr ptr, ptr %4, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr ptr, ptr %4, i32 14
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %53, label %20

20:                                               ; preds = %16, %12, %8
  %21 = getelementptr i8, ptr %6, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr ptr, ptr %4, i32 14
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = getelementptr i8, ptr %24, i32 4
  %28 = load i32, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %20
  %30 = phi i32 [ %28, %26 ], [ 0, %20 ]
  br i1 %11, label %31, label %35

31:                                               ; preds = %29
  %32 = getelementptr ptr, ptr %4, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31, %29
  %36 = phi ptr [ %10, %29 ], [ %33, %31 ]
  %37 = getelementptr i8, ptr %36, i32 4
  %38 = load i32, ptr %37, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i32 [ 0, %31 ], [ %38, %35 ]
  %41 = tail call ptr @nfc_get_device(i32 noundef %22) #10
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.nfc_dev, ptr %41, i32 0, i32 12, i32 1
  tail call void @mutex_lock(ptr noundef %44) #10
  %45 = tail call i32 @nfc_start_poll(ptr noundef nonnull %41, i32 noundef %40, i32 noundef %30) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.nfc_dev, ptr %41, i32 0, i32 12
  %49 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  store i32 %50, ptr %48, align 4
  br label %51

51:                                               ; preds = %47, %43
  tail call void @mutex_unlock(ptr noundef %44) #10
  %52 = getelementptr inbounds %struct.nfc_dev, ptr %41, i32 0, i32 5
  tail call void @put_device(ptr noundef %52) #10
  br label %53

53:                                               ; preds = %51, %39, %16, %2
  %54 = phi i32 [ %45, %51 ], [ -22, %16 ], [ -22, %2 ], [ -19, %39 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_genl_stop_poll(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr ptr, ptr %4, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %6, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @nfc_get_device(i32 noundef %10) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.nfc_dev, ptr %11, i32 0, i32 5
  %15 = getelementptr inbounds %struct.nfc_dev, ptr %11, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %15) #10
  %16 = getelementptr inbounds %struct.nfc_dev, ptr %11, i32 0, i32 9
  %17 = load i8, ptr %16, align 1, !range !9
  %18 = icmp eq i8 %17, 0
  tail call void @mutex_unlock(ptr noundef %15) #10
  br i1 %18, label %30, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.nfc_dev, ptr %11, i32 0, i32 12
  %21 = getelementptr inbounds %struct.nfc_dev, ptr %11, i32 0, i32 12, i32 1
  tail call void @mutex_lock(ptr noundef %21) #10
  %22 = load i32, ptr %20, align 4
  %23 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = tail call i32 @nfc_stop_poll(ptr noundef nonnull %11) #10
  store i32 0, ptr %20, align 4
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi i32 [ %27, %26 ], [ -16, %19 ]
  tail call void @mutex_unlock(ptr noundef %21) #10
  br label %30

30:                                               ; preds = %28, %13
  %31 = phi i32 [ %29, %28 ], [ -22, %13 ]
  tail call void @put_device(ptr noundef %14) #10
  br label %32

32:                                               ; preds = %30, %8, %2
  %33 = phi i32 [ -22, %2 ], [ -19, %8 ], [ %31, %30 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_genl_dep_link_up(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr ptr, ptr %4, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %2
  %9 = getelementptr ptr, ptr %4, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %6, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr ptr, ptr %4, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = getelementptr i8, ptr %16, i32 4
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi i32 [ %20, %18 ], [ -1, %12 ]
  %23 = getelementptr i8, ptr %10, i32 4
  %24 = load i8, ptr %23, align 1
  %25 = icmp ugt i8 %24, 1
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = tail call ptr @nfc_get_device(i32 noundef %14) #10
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @nfc_dep_link_up(ptr noundef nonnull %27, i32 noundef %22, i8 noundef zeroext %24) #10
  %31 = getelementptr inbounds %struct.nfc_dev, ptr %27, i32 0, i32 5
  tail call void @put_device(ptr noundef %31) #10
  br label %32

32:                                               ; preds = %29, %26, %21, %8, %2
  %33 = phi i32 [ %30, %29 ], [ -22, %8 ], [ -22, %2 ], [ -22, %21 ], [ -19, %26 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_genl_dep_link_down(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr ptr, ptr %4, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = getelementptr ptr, ptr %4, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %6, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @nfc_get_device(i32 noundef %14) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = tail call i32 @nfc_dep_link_down(ptr noundef nonnull %15) #10
  %19 = getelementptr inbounds %struct.nfc_dev, ptr %15, i32 0, i32 5
  tail call void @put_device(ptr noundef %19) #10
  br label %20

20:                                               ; preds = %17, %12, %8, %2
  %21 = phi i32 [ %18, %17 ], [ -22, %8 ], [ -22, %2 ], [ -19, %12 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_genl_dump_targets(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = inttoptr i32 %11 to ptr
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.genl_dumpit_info, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr ptr, ptr %18, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %14
  %23 = getelementptr i8, ptr %20, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = tail call ptr @nfc_get_device(i32 noundef %24) #10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %32

29:                                               ; preds = %27, %22, %14
  %30 = phi ptr [ %25, %27 ], [ inttoptr (i32 -22 to ptr), %14 ], [ inttoptr (i32 -19 to ptr), %22 ]
  %31 = ptrtoint ptr %30 to i32
  br label %157

32:                                               ; preds = %27
  %33 = ptrtoint ptr %25 to i32
  store i32 %33, ptr %10, align 4
  br label %34

34:                                               ; preds = %32, %2
  %35 = phi ptr [ %12, %2 ], [ %25, %32 ]
  %36 = getelementptr inbounds %struct.nfc_dev, ptr %35, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %36) #10
  %37 = getelementptr inbounds %struct.nfc_dev, ptr %35, i32 0, i32 4
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 11
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.nfc_dev, ptr %35, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = icmp slt i32 %9, %41
  br i1 %42, label %43, label %153

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.nfc_dev, ptr %35, i32 0, i32 2
  %45 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %46 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 10
  %47 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  br label %48

48:                                               ; preds = %144, %43
  %49 = phi i32 [ %9, %43 ], [ %150, %144 ]
  %50 = load ptr, ptr %44, align 8
  %51 = getelementptr %struct.nfc_target, ptr %50, i32 %49
  %52 = load ptr, ptr %1, align 4
  %53 = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 3, i32 12
  %54 = load i32, ptr %53, align 4
  %55 = load ptr, ptr %45, align 4
  %56 = getelementptr inbounds %struct.nlmsghdr, ptr %55, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = call ptr @genlmsg_put(ptr noundef %0, i32 noundef %54, i32 noundef %57, ptr noundef nonnull @nfc_genl_family, i32 noundef 2, i8 noundef zeroext 8) #10
  %59 = icmp eq ptr %58, null
  br i1 %59, label %153, label %60

60:                                               ; preds = %48
  %61 = load i32, ptr %46, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %60
  %64 = load i32, ptr %39, align 4
  %65 = icmp eq i32 %64, %61
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = getelementptr i8, ptr %58, i32 -14
  %68 = load i16, ptr %67, align 2
  %69 = or i16 %68, 16
  store i16 %69, ptr %67, align 2
  br label %70

70:                                               ; preds = %66, %63, %60
  %71 = load i32, ptr %39, align 4
  store i32 %71, ptr %46, align 4
  %72 = load i32, ptr %51, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 %72, ptr %7, align 4
  %73 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %130

75:                                               ; preds = %70
  %76 = getelementptr %struct.nfc_target, ptr %50, i32 %49, i32 1
  %77 = load i32, ptr %76, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 %77, ptr %6, align 4
  %78 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %130

80:                                               ; preds = %75
  %81 = getelementptr %struct.nfc_target, ptr %50, i32 %49, i32 2
  %82 = load i16, ptr %81, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 %82, ptr %5, align 2
  %83 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 2, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %130

85:                                               ; preds = %80
  %86 = getelementptr %struct.nfc_target, ptr %50, i32 %49, i32 3
  %87 = load i8, ptr %86, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 %87, ptr %4, align 1
  %88 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %130

90:                                               ; preds = %85
  %91 = getelementptr %struct.nfc_target, ptr %50, i32 %49, i32 4
  %92 = load i8, ptr %91, align 1
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = zext i8 %92 to i32
  %96 = getelementptr %struct.nfc_target, ptr %50, i32 %49, i32 5
  %97 = call i32 @nla_put(ptr noundef %0, i32 noundef 7, i32 noundef %95, ptr noundef %96) #10
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %130

99:                                               ; preds = %94, %90
  %100 = getelementptr %struct.nfc_target, ptr %50, i32 %49, i32 8
  %101 = load i8, ptr %100, align 1
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = zext i8 %101 to i32
  %105 = getelementptr %struct.nfc_target, ptr %50, i32 %49, i32 9
  %106 = call i32 @nla_put(ptr noundef %0, i32 noundef 8, i32 noundef %104, ptr noundef %105) #10
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %130

108:                                              ; preds = %103, %99
  %109 = getelementptr %struct.nfc_target, ptr %50, i32 %49, i32 10
  %110 = load i8, ptr %109, align 4
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %108
  %113 = zext i8 %110 to i32
  %114 = getelementptr %struct.nfc_target, ptr %50, i32 %49, i32 11
  %115 = call i32 @nla_put(ptr noundef %0, i32 noundef 9, i32 noundef %113, ptr noundef %114) #10
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %112, %108
  %118 = getelementptr %struct.nfc_target, ptr %50, i32 %49, i32 14
  %119 = load i8, ptr %118, align 1
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %144, label %121

121:                                              ; preds = %117
  %122 = getelementptr %struct.nfc_target, ptr %50, i32 %49, i32 15
  %123 = load i8, ptr %122, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 %123, ptr %3, align 1
  %124 = call i32 @nla_put(ptr noundef %0, i32 noundef 26, i32 noundef 1, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = getelementptr %struct.nfc_target, ptr %50, i32 %49, i32 16
  %128 = call i32 @nla_put(ptr noundef %0, i32 noundef 27, i32 noundef 8, ptr noundef %127) #10
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %144, label %130

130:                                              ; preds = %126, %121, %112, %103, %94, %85, %80, %75, %70
  %131 = getelementptr i8, ptr %58, i32 -20
  %132 = icmp eq ptr %131, null
  br i1 %132, label %153, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %135 = load ptr, ptr %134, align 4
  %136 = icmp ugt ptr %135, %131
  br i1 %136, label %137, label %139, !prof !8

137:                                              ; preds = %133
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  %138 = load ptr, ptr %134, align 4
  br label %139

139:                                              ; preds = %137, %133
  %140 = phi ptr [ %138, %137 ], [ %135, %133 ]
  %141 = ptrtoint ptr %131 to i32
  %142 = ptrtoint ptr %140 to i32
  %143 = sub i32 %141, %142
  call void @skb_trim(ptr noundef %0, i32 noundef %143) #10
  br label %153

144:                                              ; preds = %126, %117
  %145 = getelementptr i8, ptr %58, i32 -20
  %146 = load ptr, ptr %47, align 8
  %147 = ptrtoint ptr %146 to i32
  %148 = ptrtoint ptr %145 to i32
  %149 = sub i32 %147, %148
  store i32 %149, ptr %145, align 4
  %150 = add nsw i32 %49, 1
  %151 = load i32, ptr %40, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %48, label %153

153:                                              ; preds = %144, %139, %130, %48, %34
  %154 = phi i32 [ %49, %139 ], [ %49, %130 ], [ %9, %34 ], [ %150, %144 ], [ %49, %48 ]
  call void @mutex_unlock(ptr noundef %36) #10
  store i32 %154, ptr %8, align 4
  %155 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %156 = load i32, ptr %155, align 8
  br label %157

157:                                              ; preds = %153, %29
  %158 = phi i32 [ %156, %153 ], [ %31, %29 ]
  ret i32 %158
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_genl_dump_targets_done(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr %struct.netlink_callback, ptr %0, i32 0, i32 13, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = inttoptr i32 %3 to ptr
  %7 = getelementptr inbounds %struct.nfc_dev, ptr %6, i32 0, i32 5
  tail call void @put_device(ptr noundef %7) #10
  br label %8

8:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_genl_llc_get_params(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr ptr, ptr %8, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %91, label %12

12:                                               ; preds = %2
  %13 = getelementptr ptr, ptr %8, i32 20
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %91, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %10, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = tail call ptr @nfc_get_device(i32 noundef %18) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %91, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.nfc_dev, ptr %19, i32 0, i32 5
  %23 = getelementptr inbounds %struct.nfc_dev, ptr %19, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %23) #10
  %24 = tail call ptr @nfc_llcp_find_local(ptr noundef nonnull %19) #10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %78, label %26

26:                                               ; preds = %21
  %27 = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %28 = icmp eq ptr %27, null
  br i1 %28, label %78, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %1, align 4
  %33 = tail call ptr @genlmsg_put(ptr noundef nonnull %27, i32 noundef %31, i32 noundef %32, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 15) #10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %78, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.nfc_llcp_local, ptr %24, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = load i32, ptr %37, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 %38, ptr %6, align 4
  %39 = call i32 @nla_put(ptr noundef nonnull %27, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.nfc_llcp_local, ptr %24, i32 0, i32 13
  %43 = load i8, ptr %42, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 %43, ptr %5, align 1
  %44 = call i32 @nla_put(ptr noundef nonnull %27, i32 noundef 15, i32 noundef 1, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.nfc_llcp_local, ptr %24, i32 0, i32 14
  %48 = load i8, ptr %47, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 %48, ptr %4, align 1
  %49 = call i32 @nla_put(ptr noundef nonnull %27, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.nfc_llcp_local, ptr %24, i32 0, i32 15
  %53 = load i16, ptr %52, align 4
  %54 = call i16 @llvm.bswap.i16(i16 %53) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 %54, ptr %3, align 2
  %55 = call i32 @nla_put(ptr noundef nonnull %27, i32 noundef 17, i32 noundef 2, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = getelementptr i8, ptr %33, i32 -20
  %59 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 14
  %60 = load ptr, ptr %59, align 8
  %61 = ptrtoint ptr %60 to i32
  %62 = ptrtoint ptr %58 to i32
  %63 = sub i32 %61, %62
  store i32 %63, ptr %58, align 4
  br label %78

64:                                               ; preds = %51, %46, %41, %35
  %65 = getelementptr i8, ptr %33, i32 -20
  %66 = icmp eq ptr %65, null
  br i1 %66, label %78, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 17
  %69 = load ptr, ptr %68, align 4
  %70 = icmp ugt ptr %69, %65
  br i1 %70, label %71, label %73, !prof !8

71:                                               ; preds = %67
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  %72 = load ptr, ptr %68, align 4
  br label %73

73:                                               ; preds = %71, %67
  %74 = phi ptr [ %72, %71 ], [ %69, %67 ]
  %75 = ptrtoint ptr %65 to i32
  %76 = ptrtoint ptr %74 to i32
  %77 = sub i32 %75, %76
  call void @skb_trim(ptr noundef nonnull %27, i32 noundef %77) #10
  br label %78

78:                                               ; preds = %73, %64, %57, %29, %26, %21
  %79 = phi i1 [ true, %73 ], [ true, %64 ], [ false, %57 ], [ true, %29 ], [ true, %26 ], [ true, %21 ]
  %80 = phi i32 [ -90, %73 ], [ -90, %64 ], [ 0, %57 ], [ -90, %29 ], [ -12, %26 ], [ -19, %21 ]
  %81 = phi ptr [ %27, %73 ], [ %27, %64 ], [ %27, %57 ], [ %27, %29 ], [ null, %26 ], [ null, %21 ]
  call void @mutex_unlock(ptr noundef %23) #10
  call void @put_device(ptr noundef %22) #10
  br i1 %79, label %82, label %85

82:                                               ; preds = %78
  %83 = icmp eq ptr %81, null
  br i1 %83, label %91, label %84

84:                                               ; preds = %82
  call void @kfree_skb_reason(ptr noundef nonnull %81, i32 noundef 0) #10
  br label %91

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %89 = call i32 @netlink_unicast(ptr noundef %88, ptr noundef %81, i32 noundef %87, i32 noundef 64) #10
  %90 = call i32 @llvm.smin.i32(i32 %89, i32 0) #10
  br label %91

91:                                               ; preds = %85, %84, %82, %16, %12, %2
  %92 = phi i32 [ %90, %85 ], [ -22, %12 ], [ -22, %2 ], [ -19, %16 ], [ %80, %84 ], [ %80, %82 ]
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_genl_llc_set_params(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr ptr, ptr %4, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %77, label %8

8:                                                ; preds = %2
  %9 = getelementptr ptr, ptr %4, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = getelementptr ptr, ptr %4, i32 16
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %11, label %15, label %20

15:                                               ; preds = %8
  br i1 %14, label %16, label %21

16:                                               ; preds = %15
  %17 = getelementptr ptr, ptr %4, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %77, label %25

20:                                               ; preds = %8
  br i1 %14, label %25, label %21

21:                                               ; preds = %20, %15
  %22 = getelementptr i8, ptr %13, i32 4
  %23 = load i8, ptr %22, align 1
  %24 = icmp ugt i8 %23, 15
  br i1 %24, label %77, label %25

25:                                               ; preds = %21, %20, %16
  %26 = phi i8 [ %23, %21 ], [ 0, %20 ], [ 0, %16 ]
  %27 = getelementptr ptr, ptr %4, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = getelementptr i8, ptr %28, i32 4
  %32 = load i16, ptr %31, align 2
  %33 = icmp ugt i16 %32, 2047
  br i1 %33, label %77, label %34

34:                                               ; preds = %30, %25
  %35 = phi i16 [ %32, %30 ], [ 0, %25 ]
  %36 = getelementptr i8, ptr %6, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = tail call ptr @nfc_get_device(i32 noundef %37) #10
  %39 = icmp eq ptr %38, null
  br i1 %39, label %77, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.nfc_dev, ptr %38, i32 0, i32 5
  %42 = getelementptr inbounds %struct.nfc_dev, ptr %38, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %42) #10
  %43 = tail call ptr @nfc_llcp_find_local(ptr noundef nonnull %38) #10
  %44 = icmp eq ptr %43, null
  br i1 %44, label %75, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %3, align 4
  %47 = getelementptr ptr, ptr %46, i32 15
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.nfc_dev, ptr %38, i32 0, i32 11
  %52 = load i8, ptr %51, align 8, !range !9
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = getelementptr i8, ptr %48, i32 4
  %56 = load i8, ptr %55, align 1
  %57 = getelementptr inbounds %struct.nfc_llcp_local, ptr %43, i32 0, i32 13
  store i8 %56, ptr %57, align 2
  %58 = load ptr, ptr %3, align 4
  br label %59

59:                                               ; preds = %54, %45
  %60 = phi ptr [ %58, %54 ], [ %46, %45 ]
  %61 = getelementptr ptr, ptr %60, i32 16
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.nfc_llcp_local, ptr %43, i32 0, i32 14
  store i8 %26, ptr %65, align 1
  %66 = load ptr, ptr %3, align 4
  br label %67

67:                                               ; preds = %64, %59
  %68 = phi ptr [ %66, %64 ], [ %60, %59 ]
  %69 = getelementptr ptr, ptr %68, i32 17
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = tail call i16 @llvm.bswap.i16(i16 %35)
  %74 = getelementptr inbounds %struct.nfc_llcp_local, ptr %43, i32 0, i32 15
  store i16 %73, ptr %74, align 4
  br label %75

75:                                               ; preds = %72, %67, %50, %40
  %76 = phi i32 [ 0, %72 ], [ 0, %67 ], [ -19, %40 ], [ -115, %50 ]
  tail call void @mutex_unlock(ptr noundef %42) #10
  tail call void @put_device(ptr noundef %41) #10
  br label %77

77:                                               ; preds = %75, %34, %30, %21, %16, %2
  %78 = phi i32 [ %76, %75 ], [ -22, %16 ], [ -22, %2 ], [ -22, %21 ], [ -22, %30 ], [ -19, %34 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_genl_llc_sdreq(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [3 x ptr], align 4
  %4 = alloca %struct.hlist_head, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !10
  %5 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr ptr, ptr %6, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %104, label %10

10:                                               ; preds = %2
  %11 = getelementptr ptr, ptr %6, i32 19
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %104, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %8, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @nfc_get_device(i32 noundef %16) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %104, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.nfc_dev, ptr %17, i32 0, i32 5
  %21 = getelementptr inbounds %struct.nfc_dev, ptr %17, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %21) #10
  %22 = getelementptr inbounds %struct.nfc_dev, ptr %17, i32 0, i32 11
  %23 = load i8, ptr %22, align 8, !range !9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %102, label %25

25:                                               ; preds = %19
  %26 = tail call ptr @nfc_llcp_find_local(ptr noundef nonnull %17) #10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %102, label %28

28:                                               ; preds = %25
  store ptr null, ptr %4, align 4
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr ptr, ptr %29, i32 19
  %31 = load ptr, ptr %30, align 4
  %32 = load i16, ptr %31, align 2
  %33 = icmp ugt i16 %32, 7
  br i1 %33, label %34, label %96

34:                                               ; preds = %28
  %35 = zext i16 %32 to i32
  %36 = add nsw i32 %35, -4
  %37 = getelementptr i8, ptr %31, i32 4
  %38 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 8
  %39 = getelementptr inbounds [3 x ptr], ptr %3, i32 0, i32 1
  %40 = getelementptr inbounds %struct.nfc_llcp_local, ptr %26, i32 0, i32 33
  br label %41

41:                                               ; preds = %87, %34
  %42 = phi i32 [ 0, %34 ], [ %88, %87 ]
  %43 = phi ptr [ %37, %34 ], [ %94, %87 ]
  %44 = phi i32 [ %36, %34 ], [ %93, %87 ]
  %45 = load i16, ptr %43, align 2
  %46 = icmp ult i16 %45, 4
  %47 = zext i16 %45 to i32
  %48 = icmp ult i32 %44, %47
  %49 = select i1 %46, i1 true, i1 %48
  br i1 %49, label %96, label %50

50:                                               ; preds = %41
  %51 = load ptr, ptr %38, align 4
  %52 = getelementptr i8, ptr %43, i32 4
  %53 = add nsw i32 %47, -4
  %54 = call i32 @__nla_parse(ptr noundef nonnull %3, i32 noundef 2, ptr noundef %52, i32 noundef %53, ptr noundef nonnull @nfc_sdp_genl_policy, i32 noundef 0, ptr noundef %51) #10
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %102

56:                                               ; preds = %50
  %57 = load ptr, ptr %39, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %87, label %59

59:                                               ; preds = %56
  %60 = load i16, ptr %57, align 2
  %61 = zext i16 %60 to i32
  %62 = add nsw i32 %61, -4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %87, label %64

64:                                               ; preds = %59
  %65 = getelementptr i8, ptr %57, i32 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %87, label %67

67:                                               ; preds = %64
  %68 = load i8, ptr %65, align 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %87, label %70

70:                                               ; preds = %67
  %71 = load i8, ptr %40, align 4
  %72 = add i8 %71, 1
  store i8 %72, ptr %40, align 4
  %73 = call ptr @nfc_llcp_build_sdreq_tlv(i8 noundef zeroext %71, ptr noundef nonnull %65, i32 noundef %62) #10
  %74 = icmp eq ptr %73, null
  br i1 %74, label %102, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %73, i32 0, i32 1
  %77 = load i8, ptr %76, align 4
  %78 = zext i8 %77 to i32
  %79 = add i32 %42, %78
  %80 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %73, i32 0, i32 6
  %81 = load ptr, ptr %4, align 4
  store volatile ptr %81, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.hlist_node, ptr %81, i32 0, i32 1
  store volatile ptr %80, ptr %84, align 4
  br label %85

85:                                               ; preds = %83, %75
  store volatile ptr %80, ptr %4, align 4
  %86 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %73, i32 0, i32 6, i32 1
  store volatile ptr %4, ptr %86, align 4
  br label %87

87:                                               ; preds = %85, %67, %64, %59, %56
  %88 = phi i32 [ %42, %59 ], [ %42, %64 ], [ %42, %67 ], [ %79, %85 ], [ %42, %56 ]
  %89 = load i16, ptr %43, align 2
  %90 = zext i16 %89 to i32
  %91 = add nuw nsw i32 %90, 3
  %92 = and i32 %91, 131068
  %93 = sub nsw i32 %44, %92
  %94 = getelementptr i8, ptr %43, i32 %92
  %95 = icmp sgt i32 %93, 3
  br i1 %95, label %41, label %96

96:                                               ; preds = %87, %41, %28
  %97 = phi i32 [ 0, %28 ], [ %88, %87 ], [ %42, %41 ]
  %98 = load volatile ptr, ptr %4, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = call i32 @nfc_llcp_send_snl_sdreq(ptr noundef nonnull %26, ptr noundef nonnull %4, i32 noundef %97) #10
  br label %102

102:                                              ; preds = %100, %96, %70, %50, %25, %19
  %103 = phi i32 [ %101, %100 ], [ -67, %19 ], [ -19, %25 ], [ -22, %96 ], [ -12, %70 ], [ -22, %50 ]
  call void @mutex_unlock(ptr noundef %21) #10
  call void @put_device(ptr noundef %20) #10
  br label %104

104:                                              ; preds = %102, %14, %10, %2
  %105 = phi i32 [ %103, %102 ], [ -22, %10 ], [ -22, %2 ], [ -19, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_genl_fw_download(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [33 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(33) %3, i8 0, i32 33, i1 false), !annotation !10
  %4 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr ptr, ptr %5, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = getelementptr ptr, ptr %5, i32 20
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %7, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = tail call ptr @nfc_get_device(i32 noundef %15) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr ptr, ptr %19, i32 20
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @nla_strscpy(ptr noundef nonnull %3, ptr noundef %21, i32 noundef 33) #10
  %23 = call i32 @nfc_fw_download(ptr noundef nonnull %16, ptr noundef nonnull %3) #10
  %24 = getelementptr inbounds %struct.nfc_dev, ptr %16, i32 0, i32 5
  call void @put_device(ptr noundef %24) #10
  br label %25

25:                                               ; preds = %18, %13, %9, %2
  %26 = phi i32 [ %23, %18 ], [ -22, %9 ], [ -22, %2 ], [ -19, %13 ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %3) #10
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_genl_enable_se(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr ptr, ptr %4, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = getelementptr ptr, ptr %4, i32 21
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %6, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %10, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @nfc_get_device(i32 noundef %14) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = tail call i32 @nfc_enable_se(ptr noundef nonnull %17, i32 noundef %16) #10
  %21 = getelementptr inbounds %struct.nfc_dev, ptr %17, i32 0, i32 5
  tail call void @put_device(ptr noundef %21) #10
  br label %22

22:                                               ; preds = %19, %12, %8, %2
  %23 = phi i32 [ %20, %19 ], [ -22, %8 ], [ -22, %2 ], [ -19, %12 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_genl_disable_se(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr ptr, ptr %4, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = getelementptr ptr, ptr %4, i32 21
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %6, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %10, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @nfc_get_device(i32 noundef %14) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = tail call i32 @nfc_disable_se(ptr noundef nonnull %17, i32 noundef %16) #10
  %21 = getelementptr inbounds %struct.nfc_dev, ptr %17, i32 0, i32 5
  tail call void @put_device(ptr noundef %21) #10
  br label %22

22:                                               ; preds = %19, %12, %8, %2
  %23 = phi i32 [ %20, %19 ], [ -22, %8 ], [ -22, %2 ], [ -19, %12 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_genl_dump_ses(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 1
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 12) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %113, label %20

14:                                               ; preds = %2
  %15 = load i32, ptr %8, align 4
  %16 = inttoptr i32 %15 to ptr
  %17 = inttoptr i32 %7 to ptr
  tail call void @mutex_lock(ptr noundef nonnull @nfc_devlist_mutex) #10
  %18 = load i32, ptr @nfc_devlist_generation, align 4
  %19 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 11
  store i32 %18, ptr %19, align 4
  br label %27

20:                                               ; preds = %10
  %21 = ptrtoint ptr %12 to i32
  store i32 %21, ptr %6, align 4
  tail call void @mutex_lock(ptr noundef nonnull @nfc_devlist_mutex) #10
  %22 = load i32, ptr @nfc_devlist_generation, align 4
  %23 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 11
  store i32 %22, ptr %23, align 4
  tail call void @class_dev_iter_init(ptr noundef nonnull %12, ptr noundef nonnull @nfc_class, ptr noundef null, ptr noundef null) #10
  %24 = tail call ptr @class_dev_iter_next(ptr noundef nonnull %12) #10
  %25 = icmp eq ptr %24, null
  %26 = getelementptr i8, ptr %24, i32 -24
  br i1 %25, label %108, label %27

27:                                               ; preds = %20, %14
  %28 = phi ptr [ %23, %20 ], [ %19, %14 ]
  %29 = phi ptr [ %12, %20 ], [ %17, %14 ]
  %30 = phi ptr [ %26, %20 ], [ %16, %14 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %108, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %34 = icmp eq ptr %1, null
  %35 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 10
  %36 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  br label %37

37:                                               ; preds = %102, %32
  %38 = phi ptr [ %30, %32 ], [ %105, %102 ]
  %39 = load ptr, ptr %1, align 4
  %40 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 3, i32 12
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %33, align 4
  %43 = getelementptr inbounds %struct.nlmsghdr, ptr %42, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.nfc_dev, ptr %38, i32 0, i32 14
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, %45
  br i1 %47, label %102, label %48

48:                                               ; preds = %81, %37
  %49 = phi ptr [ %50, %81 ], [ %46, %37 ]
  %50 = load ptr, ptr %49, align 4
  %51 = call ptr @genlmsg_put(ptr noundef %0, i32 noundef %41, i32 noundef %44, ptr noundef nonnull @nfc_genl_family, i32 noundef 2, i8 noundef zeroext 26) #10
  %52 = icmp eq ptr %51, null
  br i1 %52, label %108, label %53

53:                                               ; preds = %48
  br i1 %34, label %66, label %54

54:                                               ; preds = %53
  %55 = load i32, ptr %35, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = load i32, ptr %28, align 4
  %59 = icmp eq i32 %58, %55
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = getelementptr i8, ptr %51, i32 -14
  %62 = load i16, ptr %61, align 2
  %63 = or i16 %62, 16
  store i16 %63, ptr %61, align 2
  br label %64

64:                                               ; preds = %60, %57, %54
  %65 = load i32, ptr %28, align 4
  store i32 %65, ptr %35, align 4
  br label %66

66:                                               ; preds = %64, %53
  %67 = load i32, ptr %38, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 %67, ptr %5, align 4
  %68 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.nfc_se, ptr %49, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 %72, ptr %4, align 4
  %73 = call i32 @nla_put(ptr noundef %0, i32 noundef 21, i32 noundef 4, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.nfc_se, ptr %49, i32 0, i32 2
  %77 = load i16, ptr %76, align 4
  %78 = trunc i16 %77 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 %78, ptr %3, align 1
  %79 = call i32 @nla_put(ptr noundef %0, i32 noundef 22, i32 noundef 1, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = getelementptr i8, ptr %51, i32 -20
  %83 = load ptr, ptr %36, align 8
  %84 = ptrtoint ptr %83 to i32
  %85 = ptrtoint ptr %82 to i32
  %86 = sub i32 %84, %85
  store i32 %86, ptr %82, align 4
  %87 = icmp eq ptr %50, %45
  br i1 %87, label %102, label %48

88:                                               ; preds = %75, %70, %66
  %89 = getelementptr i8, ptr %51, i32 -20
  %90 = icmp eq ptr %89, null
  br i1 %90, label %108, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %93 = load ptr, ptr %92, align 4
  %94 = icmp ugt ptr %93, %89
  br i1 %94, label %95, label %97, !prof !8

95:                                               ; preds = %91
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  %96 = load ptr, ptr %92, align 4
  br label %97

97:                                               ; preds = %95, %91
  %98 = phi ptr [ %96, %95 ], [ %93, %91 ]
  %99 = ptrtoint ptr %89 to i32
  %100 = ptrtoint ptr %98 to i32
  %101 = sub i32 %99, %100
  call void @skb_trim(ptr noundef %0, i32 noundef %101) #10
  br label %108

102:                                              ; preds = %81, %37
  %103 = call ptr @class_dev_iter_next(ptr noundef %29) #10
  %104 = icmp eq ptr %103, null
  %105 = getelementptr i8, ptr %103, i32 -24
  %106 = icmp eq ptr %105, null
  %107 = or i1 %104, %106
  br i1 %107, label %108, label %37

108:                                              ; preds = %102, %97, %88, %48, %27, %20
  %109 = phi ptr [ %38, %88 ], [ %38, %97 ], [ null, %27 ], [ null, %20 ], [ %38, %48 ], [ null, %102 ]
  call void @mutex_unlock(ptr noundef nonnull @nfc_devlist_mutex) #10
  %110 = ptrtoint ptr %109 to i32
  store i32 %110, ptr %8, align 4
  %111 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %112 = load i32, ptr %111, align 8
  br label %113

113:                                              ; preds = %108, %10
  %114 = phi i32 [ %112, %108 ], [ -12, %10 ]
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_genl_dump_ses_done(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 13
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = inttoptr i32 %3 to ptr
  tail call void @class_dev_iter_exit(ptr noundef nonnull %6) #10
  tail call void @kfree(ptr noundef nonnull %6) #10
  br label %7

7:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_genl_se_io(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr ptr, ptr %4, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %49, label %8

8:                                                ; preds = %2
  %9 = getelementptr ptr, ptr %4, i32 21
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %49, label %12

12:                                               ; preds = %8
  %13 = getelementptr ptr, ptr %4, i32 25
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %49, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %6, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %10, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = tail call ptr @nfc_get_device(i32 noundef %18) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %49, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.nfc_dev, ptr %21, i32 0, i32 23
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %49, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.nfc_ops, ptr %25, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr ptr, ptr %32, i32 25
  %34 = load ptr, ptr %33, align 4
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = add nsw i32 %36, -4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %31
  %40 = getelementptr i8, ptr %34, i32 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %44 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3520, i32 noundef 8) #11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  store i32 %18, ptr %44, align 8
  %47 = getelementptr inbounds %struct.se_io_ctx, ptr %44, i32 0, i32 1
  store i32 %20, ptr %47, align 4
  %48 = tail call fastcc i32 @nfc_se_io(ptr noundef nonnull %21, i32 noundef %20, ptr noundef nonnull %40, i32 noundef %37, ptr noundef nonnull %44)
  br label %49

49:                                               ; preds = %46, %42, %39, %31, %27, %23, %16, %12, %8, %2
  %50 = phi i32 [ %48, %46 ], [ -22, %12 ], [ -22, %8 ], [ -22, %2 ], [ -19, %16 ], [ -524, %27 ], [ -524, %23 ], [ -22, %31 ], [ -22, %39 ], [ -12, %42 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_genl_activate_target(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr ptr, ptr %4, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %2
  %9 = getelementptr ptr, ptr %4, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %8
  %13 = getelementptr ptr, ptr %4, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %6, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = tail call ptr @nfc_get_device(i32 noundef %18) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr ptr, ptr %22, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr ptr, ptr %22, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @nfc_deactivate_target(ptr noundef nonnull %19, i32 noundef %26, i8 noundef zeroext 1) #10
  %32 = tail call i32 @nfc_activate_target(ptr noundef nonnull %19, i32 noundef %26, i32 noundef %30) #10
  %33 = getelementptr inbounds %struct.nfc_dev, ptr %19, i32 0, i32 5
  tail call void @put_device(ptr noundef %33) #10
  br label %34

34:                                               ; preds = %21, %16, %12, %8, %2
  %35 = phi i32 [ %32, %21 ], [ -22, %12 ], [ -22, %8 ], [ -22, %2 ], [ -19, %16 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_genl_vendor_cmd(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr ptr, ptr %4, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %65, label %8

8:                                                ; preds = %2
  %9 = getelementptr ptr, ptr %4, i32 29
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %65, label %12

12:                                               ; preds = %8
  %13 = getelementptr ptr, ptr %4, i32 30
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %65, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %6, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %10, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %14, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = tail call ptr @nfc_get_device(i32 noundef %18) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %65, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.nfc_dev, ptr %23, i32 0, i32 21
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %65, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.nfc_dev, ptr %23, i32 0, i32 22
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %65, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr ptr, ptr %34, i32 31
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = getelementptr i8, ptr %36, i32 4
  %40 = load i16, ptr %36, align 2
  %41 = zext i16 %40 to i32
  %42 = add nsw i32 %41, -4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %65, label %44

44:                                               ; preds = %38, %33
  %45 = phi ptr [ %39, %38 ], [ null, %33 ]
  %46 = phi i32 [ %42, %38 ], [ 0, %33 ]
  %47 = icmp sgt i32 %31, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %62, %44
  %49 = phi i32 [ %63, %62 ], [ 0, %44 ]
  %50 = getelementptr %struct.nfc_vendor_cmd, ptr %27, i32 %49
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, %20
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = getelementptr %struct.nfc_vendor_cmd, ptr %27, i32 %49, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, %22
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.nfc_dev, ptr %23, i32 0, i32 24
  store ptr %1, ptr %58, align 8
  %59 = getelementptr %struct.nfc_vendor_cmd, ptr %27, i32 %49, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 %60(ptr noundef nonnull %23, ptr noundef %45, i32 noundef %46) #10
  store ptr null, ptr %58, align 8
  br label %65

62:                                               ; preds = %53, %48
  %63 = add nuw nsw i32 %49, 1
  %64 = icmp eq i32 %63, %31
  br i1 %64, label %65, label %48

65:                                               ; preds = %62, %57, %44, %38, %29, %25, %16, %12, %8, %2
  %66 = phi i32 [ %61, %57 ], [ -22, %12 ], [ -22, %8 ], [ -22, %2 ], [ -19, %29 ], [ -19, %25 ], [ -19, %16 ], [ -22, %38 ], [ -95, %44 ], [ -95, %62 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_genl_deactivate_target(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr ptr, ptr %4, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %2
  %9 = getelementptr ptr, ptr %4, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %6, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @nfc_get_device(i32 noundef %14) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr ptr, ptr %18, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @nfc_deactivate_target(ptr noundef nonnull %15, i32 noundef %22, i8 noundef zeroext 1) #10
  %24 = getelementptr inbounds %struct.nfc_dev, ptr %15, i32 0, i32 5
  tail call void @put_device(ptr noundef %24) #10
  br label %25

25:                                               ; preds = %17, %12, %8, %2
  %26 = phi i32 [ %23, %17 ], [ -22, %8 ], [ -22, %2 ], [ -19, %12 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_get_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfc_genl_send_device(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = tail call ptr @genlmsg_put(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @nfc_genl_family, i32 noundef %5, i8 noundef zeroext 1) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %49, label %9

9:                                                ; preds = %6
  %10 = icmp eq ptr %4, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.netlink_callback, ptr %4, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.netlink_callback, ptr %4, i32 0, i32 11
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %13
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %7, i32 -14
  %21 = load i16, ptr %20, align 2
  %22 = or i16 %21, 16
  store i16 %22, ptr %20, align 2
  br label %23

23:                                               ; preds = %19, %15, %11
  %24 = getelementptr inbounds %struct.netlink_callback, ptr %4, i32 0, i32 11
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %12, align 4
  br label %26

26:                                               ; preds = %23, %9
  %27 = tail call fastcc i32 @nfc_genl_setup_device_added(ptr noundef %1, ptr noundef %0)
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr i8, ptr %7, i32 -20
  br i1 %28, label %30, label %36

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %32 = load ptr, ptr %31, align 8
  %33 = ptrtoint ptr %32 to i32
  %34 = ptrtoint ptr %29 to i32
  %35 = sub i32 %33, %34
  store i32 %35, ptr %29, align 4
  br label %49

36:                                               ; preds = %26
  %37 = icmp eq ptr %29, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %40 = load ptr, ptr %39, align 4
  %41 = icmp ugt ptr %40, %29
  br i1 %41, label %42, label %44, !prof !8

42:                                               ; preds = %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  %43 = load ptr, ptr %39, align 4
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi ptr [ %43, %42 ], [ %40, %38 ]
  %46 = ptrtoint ptr %29 to i32
  %47 = ptrtoint ptr %45 to i32
  %48 = sub i32 %46, %47
  tail call void @skb_trim(ptr noundef %0, i32 noundef %48) #10
  br label %49

49:                                               ; preds = %44, %36, %30, %6
  %50 = phi i32 [ 0, %30 ], [ -90, %6 ], [ -90, %36 ], [ -90, %44 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_dev_iter_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_dev_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_dev_iter_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_dev_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_dev_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_start_poll(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_stop_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_dep_link_up(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_dep_link_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_llcp_find_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_llcp_build_sdreq_tlv(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_send_snl_sdreq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_fw_download(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_enable_se(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_disable_se(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfc_se_io(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %6) #10
  %7 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 0, i32 7
  %8 = load i8, ptr %7, align 8
  %9 = and i8 %8, 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 6
  %13 = load i8, ptr %12, align 8, !range !9
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 23
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nfc_ops, ptr %17, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = tail call ptr @nfc_find_se(ptr noundef %0, i32 noundef %1) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.nfc_se, ptr %22, i32 0, i32 3
  %26 = load i16, ptr %25, align 2
  %27 = icmp eq i16 %26, 1
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load ptr, ptr %16, align 4
  %30 = getelementptr inbounds %struct.nfc_ops, ptr %29, i32 0, i32 15
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull @se_io_cb, ptr noundef %4) #10
  br label %33

33:                                               ; preds = %28, %24, %21, %15, %11, %5
  %34 = phi i32 [ %32, %28 ], [ -19, %5 ], [ -19, %11 ], [ -95, %15 ], [ -22, %21 ], [ -19, %24 ]
  tail call void @mutex_unlock(ptr noundef %6) #10
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @se_io_cb(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @kfree(ptr noundef %0) #10
  br label %46

10:                                               ; preds = %4
  %11 = tail call ptr @genlmsg_put(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nfc_genl_family, i32 noundef 0, i8 noundef zeroext 27) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %45, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 %14, ptr %6, align 4
  %15 = call i32 @nla_put(ptr noundef nonnull %7, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.se_io_ctx, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 %19, ptr %5, align 4
  %20 = call i32 @nla_put(ptr noundef nonnull %7, i32 noundef 21, i32 noundef 4, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %17
  %23 = call i32 @nla_put(ptr noundef nonnull %7, i32 noundef 25, i32 noundef %2, ptr noundef %1) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = getelementptr i8, ptr %11, i32 -20
  %27 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 14
  %28 = load ptr, ptr %27, align 8
  %29 = ptrtoint ptr %28 to i32
  %30 = ptrtoint ptr %26 to i32
  %31 = sub i32 %29, %30
  store i32 %31, ptr %26, align 4
  %32 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 9), align 1
  %33 = icmp eq i8 %32, 0
  %34 = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  %35 = xor i1 %34, true
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %38, !prof !8

37:                                               ; preds = %25
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 308, i32 noundef 9, ptr noundef null) #10
  br label %38

38:                                               ; preds = %37, %25
  br i1 %33, label %44, label %39

39:                                               ; preds = %38
  %40 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @nfc_genl_family, i32 0, i32 5), align 4
  %41 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %42 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 16
  store i32 %40, ptr %42, align 8
  %43 = call i32 @netlink_broadcast(ptr noundef %41, ptr noundef nonnull %7, i32 noundef 0, i32 noundef %40, i32 noundef 3264) #10
  br label %44

44:                                               ; preds = %39, %38
  call void @kfree(ptr noundef %0) #10
  br label %46

45:                                               ; preds = %22, %17, %13, %10
  call void @kfree_skb_reason(ptr noundef nonnull %7, i32 noundef 0) #10
  call void @kfree(ptr noundef %0) #10
  br label %46

46:                                               ; preds = %45, %44, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_deactivate_target(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_activate_target(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_genl_rcv_nl_event(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %22

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.netlink_notify, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 16
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2592, i32 noundef 20) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  store i32 -32, ptr %11, align 8
  %14 = getelementptr inbounds %struct.work_struct, ptr %11, i32 0, i32 1
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.work_struct, ptr %11, i32 0, i32 1, i32 1
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.work_struct, ptr %11, i32 0, i32 2
  store ptr @nfc_urelease_event_work, ptr %16, align 4
  %17 = getelementptr inbounds %struct.netlink_notify, ptr %2, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.urelease_work, ptr %11, i32 0, i32 1
  store i32 %18, ptr %19, align 8
  %20 = load ptr, ptr @system_wq, align 4
  %21 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %20, ptr noundef nonnull %11) #10
  br label %22

22:                                               ; preds = %13, %9, %5, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfc_urelease_event_work(ptr noundef %0) #0 {
  %2 = alloca %struct.class_dev_iter, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false), !annotation !10
  tail call void @mutex_lock(ptr noundef nonnull @nfc_devlist_mutex) #10
  call void @class_dev_iter_init(ptr noundef nonnull %2, ptr noundef nonnull @nfc_class, ptr noundef null, ptr noundef null) #10
  %3 = call ptr @class_dev_iter_next(ptr noundef nonnull %2) #10
  %4 = icmp eq ptr %3, null
  %5 = getelementptr i8, ptr %3, i32 -24
  %6 = icmp eq ptr %5, null
  %7 = or i1 %4, %6
  br i1 %7, label %25, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.urelease_work, ptr %0, i32 0, i32 1
  br label %10

10:                                               ; preds = %19, %8
  %11 = phi ptr [ %5, %8 ], [ %22, %19 ]
  %12 = getelementptr inbounds %struct.nfc_dev, ptr %11, i32 0, i32 12
  %13 = getelementptr inbounds %struct.nfc_dev, ptr %11, i32 0, i32 12, i32 1
  call void @mutex_lock(ptr noundef %13) #10
  %14 = load i32, ptr %12, align 4
  %15 = load i32, ptr %9, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = call i32 @nfc_stop_poll(ptr noundef nonnull %11) #10
  store i32 0, ptr %12, align 4
  br label %19

19:                                               ; preds = %17, %10
  call void @mutex_unlock(ptr noundef %13) #10
  %20 = call ptr @class_dev_iter_next(ptr noundef nonnull %2) #10
  %21 = icmp eq ptr %20, null
  %22 = getelementptr i8, ptr %20, i32 -24
  %23 = icmp eq ptr %22, null
  %24 = or i1 %21, %23
  br i1 %24, label %25, label %10

25:                                               ; preds = %19, %1
  call void @class_dev_iter_exit(ptr noundef nonnull %2) #10
  call void @mutex_unlock(ptr noundef nonnull @nfc_devlist_mutex) #10
  call void @kfree(ptr noundef %0) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!9 = !{i8 0, i8 2}
!10 = !{!"auto-init"}
