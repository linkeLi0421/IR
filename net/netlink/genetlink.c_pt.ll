; ModuleID = '/llk/IR/net/netlink/genetlink.c_pt.bc'
source_filename = "../net/netlink/genetlink.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genl_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22genl_lock\22\09\09\09\09\09"
module asm "__kstrtabns_genl_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genl_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22genl_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_genl_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genl_register_family:\09\09\09\09\09"
module asm "\09.asciz \09\22genl_register_family\22\09\09\09\09\09"
module asm "__kstrtabns_genl_register_family:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genl_unregister_family:\09\09\09\09\09"
module asm "\09.asciz \09\22genl_unregister_family\22\09\09\09\09\09"
module asm "__kstrtabns_genl_unregister_family:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genlmsg_put:\09\09\09\09\09"
module asm "\09.asciz \09\22genlmsg_put\22\09\09\09\09\09"
module asm "__kstrtabns_genlmsg_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genlmsg_multicast_allns:\09\09\09\09\09"
module asm "\09.asciz \09\22genlmsg_multicast_allns\22\09\09\09\09\09"
module asm "__kstrtabns_genlmsg_multicast_allns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genl_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22genl_notify\22\09\09\09\09\09"
module asm "__kstrtabns_genl_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
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
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [40 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.59, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.59 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.genl_multicast_group = type { [16 x i8], i8 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.netlink_kernel_cfg = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
%struct.sk_buff = type { %union.anon.2, %union.anon.114, %union.anon.115, [48 x i8], %union.anon.116, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.118, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, ptr, %union.anon.4 }
%union.anon.4 = type { ptr }
%union.anon.114 = type { ptr }
%union.anon.115 = type { i64 }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type { i32, ptr }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.120, i32, i32, i32, i16, i16, %union.anon.122, %union.anon.123, %union.anon.124, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.120 = type { i32 }
%union.anon.122 = type { i32 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type {}
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.103 }
%union.anon.103 = type { [6 x i32], [24 x i8] }
%struct.genl_dumpit_info = type { ptr, %struct.genl_ops, ptr }
%struct.ctrl_dump_policy_ctx = type { ptr, ptr, i32, i32, i16, i8 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.genl_start_context = type { ptr, ptr, ptr, ptr, i32 }
%struct.netlink_dump_control = type { ptr, ptr, ptr, ptr, ptr, i32 }

@genl_sk_destructing_cnt = dso_local global %struct.atomic_t zeroinitializer, align 4
@genl_sk_destructing_waitq = dso_local global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @genl_sk_destructing_waitq, i64 4), ptr getelementptr (i8, ptr @genl_sk_destructing_waitq, i64 4) } }, align 4
@genl_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @genl_mutex, i64 12), ptr getelementptr (i8, ptr @genl_mutex, i64 12) } }, align 4
@__kstrtab_genl_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_genl_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_genl_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genl_lock to i32), ptr @__kstrtab_genl_lock, ptr @__kstrtabns_genl_lock }, section "___ksymtab+genl_lock", align 4
@__kstrtab_genl_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_genl_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_genl_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genl_unlock to i32), ptr @__kstrtab_genl_unlock, ptr @__kstrtabns_genl_unlock }, section "___ksymtab+genl_unlock", align 4
@genl_ctrl = internal global %struct.genl_family { i32 16, i32 0, [16 x i8] c"nlctrl\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 1, i8 2, i8 0, i8 1, ptr null, ptr null, ptr null, ptr @genl_ctrl_ops, ptr null, ptr @genl_ctrl_groups, ptr null }, section ".data..ro_after_init", align 4
@.str = private unnamed_addr constant [8 x i8] c"pmcraid\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"VFS_DQUOT\00", align 1
@genl_fam_idr = internal global %struct.idr { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554436, ptr null }, i32 0, i32 0 }, align 4
@__kstrtab_genl_register_family = external dso_local constant [0 x i8], align 1
@__kstrtabns_genl_register_family = external dso_local constant [0 x i8], align 1
@__ksymtab_genl_register_family = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genl_register_family to i32), ptr @__kstrtab_genl_register_family, ptr @__kstrtabns_genl_register_family }, section "___ksymtab+genl_register_family", align 4
@cb_lock = internal global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cb_lock, i64 16), ptr getelementptr (i8, ptr @cb_lock, i64 16) } }, align 4
@__kstrtab_genl_unregister_family = external dso_local constant [0 x i8], align 1
@__kstrtabns_genl_unregister_family = external dso_local constant [0 x i8], align 1
@__ksymtab_genl_unregister_family = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genl_unregister_family to i32), ptr @__kstrtab_genl_unregister_family, ptr @__kstrtabns_genl_unregister_family }, section "___ksymtab+genl_unregister_family", align 4
@__kstrtab_genlmsg_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_genlmsg_put = external dso_local constant [0 x i8], align 1
@__ksymtab_genlmsg_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genlmsg_put to i32), ptr @__kstrtab_genlmsg_put, ptr @__kstrtabns_genlmsg_put }, section "___ksymtab+genlmsg_put", align 4
@__initcall__kmod_genetlink__425_1435_genl_init1 = internal global ptr @genl_init, section ".initcall1.init", align 4
@genlmsg_multicast_allns.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"net/netlink/genetlink.c\00", align 1
@__kstrtab_genlmsg_multicast_allns = external dso_local constant [0 x i8], align 1
@__kstrtabns_genlmsg_multicast_allns = external dso_local constant [0 x i8], align 1
@__ksymtab_genlmsg_multicast_allns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genlmsg_multicast_allns to i32), ptr @__kstrtab_genlmsg_multicast_allns, ptr @__kstrtabns_genlmsg_multicast_allns }, section "___ksymtab+genlmsg_multicast_allns", align 4
@genl_notify.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_genl_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_genl_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_genl_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genl_notify to i32), ptr @__kstrtab_genl_notify, ptr @__kstrtabns_genl_notify }, section "___ksymtab+genl_notify", align 4
@genl_get_cmd_by_index.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"NET_DM\00", align 1
@init_net = external dso_local local_unnamed_addr global %struct.net, align 64
@net_namespace_list = external dso_local global %struct.list_head, align 4
@mc_groups_longs = internal unnamed_addr global i32 1, align 4
@mc_groups = internal unnamed_addr global ptr @mc_group_start, align 4
@mc_group_start = internal global i32 458755, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1
@genlmsg_multicast_netns.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"include/net/genetlink.h\00", align 1
@genl_ctrl_ops = internal constant [2 x %struct.genl_ops] [%struct.genl_ops { ptr @ctrl_getfamily, ptr null, ptr @ctrl_dumpfamily, ptr null, ptr @ctrl_policy_family, i32 2, i8 3, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr null, ptr @ctrl_dumppolicy_start, ptr @ctrl_dumppolicy, ptr @ctrl_dumppolicy_done, ptr @ctrl_policy_policy, i32 10, i8 10, i8 0, i8 0, i8 0 }], align 4
@genl_ctrl_groups = internal constant [1 x %struct.genl_multicast_group] [%struct.genl_multicast_group { [16 x i8] c"notify\00\00\00\00\00\00\00\00\00\00", i8 0 }], align 1
@ctrl_policy_family = internal constant [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.1 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 15, %union.anon.1 zeroinitializer }], align 4
@ctrl_policy_policy = internal constant [11 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.1 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 15, %union.anon.1 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.1 zeroinitializer }], align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"net-pf-%d-proto-%d-family-%s\00", align 1
@genl_pernet_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @genl_pernet_init, ptr null, ptr @genl_pernet_exit, ptr null, ptr null, i32 0 }, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"GENL: Cannot register controller: %d\0A\00", align 1
@__const.genl_pernet_init.cfg = private unnamed_addr constant %struct.netlink_kernel_cfg { i32 0, i32 1, ptr @genl_rcv, ptr null, ptr @genl_bind, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"GENL: Cannot initialize generic netlink\0A\00", align 1
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__initcall__kmod_genetlink__425_1435_genl_init1, ptr @__ksymtab_genl_lock, ptr @__ksymtab_genl_notify, ptr @__ksymtab_genl_register_family, ptr @__ksymtab_genl_unlock, ptr @__ksymtab_genl_unregister_family, ptr @__ksymtab_genlmsg_multicast_allns, ptr @__ksymtab_genlmsg_put], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @genl_lock() #0 {
  tail call void @mutex_lock(ptr noundef nonnull @genl_mutex) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @genl_unlock() #0 {
  tail call void @mutex_unlock(ptr noundef nonnull @genl_mutex) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @genl_register_family(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 7
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %86, label %10, !prof !8

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 8
  %12 = load i8, ptr %11, align 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %22, %10
  %15 = zext i8 %4 to i32
  %16 = zext i8 %12 to i32
  %17 = add nuw nsw i32 %16, %15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %88, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 14
  %21 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 13
  br label %26

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 14
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %86, label %14, !prof !8

26:                                               ; preds = %83, %19
  %27 = phi i32 [ %17, %19 ], [ %65, %83 ]
  %28 = phi i32 [ %15, %19 ], [ %63, %83 ]
  %29 = phi i32 [ 0, %19 ], [ %84, %83 ]
  %30 = icmp ult i32 %29, %28
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load ptr, ptr %21, align 4
  %33 = getelementptr %struct.genl_ops, ptr %32, i32 %29
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds i8, ptr %33, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds i8, ptr %33, i32 24
  %38 = load i8, ptr %37, align 4
  br label %53

39:                                               ; preds = %26
  %40 = icmp ugt i32 %27, %29
  br i1 %40, label %41, label %50

41:                                               ; preds = %39
  %42 = sub nsw i32 %29, %28
  %43 = load ptr, ptr %20, align 4
  %44 = getelementptr %struct.genl_small_ops, ptr %43, i32 %42
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr %struct.genl_small_ops, ptr %43, i32 %42, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr %struct.genl_small_ops, ptr %43, i32 %42, i32 2
  %49 = load i8, ptr %48, align 4
  br label %53

50:                                               ; preds = %39
  %51 = load i1, ptr @genl_get_cmd_by_index.__already_done, align 1
  br i1 %51, label %53, label %52, !prof !9

52:                                               ; preds = %50
  store i1 true, ptr @genl_get_cmd_by_index.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 178, i32 noundef 9, ptr noundef null) #14
  br label %53

53:                                               ; preds = %52, %50, %41, %31
  %54 = phi ptr [ %45, %41 ], [ null, %50 ], [ null, %52 ], [ %34, %31 ]
  %55 = phi ptr [ %47, %41 ], [ null, %50 ], [ null, %52 ], [ %36, %31 ]
  %56 = phi i8 [ %49, %41 ], [ 0, %50 ], [ 0, %52 ], [ %38, %31 ]
  %57 = icmp eq ptr %55, null
  %58 = icmp eq ptr %54, null
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %304, label %60

60:                                               ; preds = %53
  %61 = load i8, ptr %3, align 1
  %62 = load i8, ptr %11, align 2
  %63 = zext i8 %61 to i32
  %64 = zext i8 %62 to i32
  %65 = add nuw nsw i32 %64, %63
  br label %66

66:                                               ; preds = %79, %60
  %67 = phi i32 [ %68, %79 ], [ %29, %60 ]
  %68 = add nuw nsw i32 %67, 1
  %69 = icmp ult i32 %68, %65
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = icmp ult i32 %68, %63
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = load ptr, ptr %21, align 4
  %74 = getelementptr %struct.genl_ops, ptr %73, i32 %68, i32 6
  br label %79

75:                                               ; preds = %70
  %76 = sub nsw i32 %68, %63
  %77 = load ptr, ptr %20, align 4
  %78 = getelementptr %struct.genl_small_ops, ptr %77, i32 %76, i32 2
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi ptr [ %74, %72 ], [ %78, %75 ]
  %81 = load i8, ptr %80, align 4
  %82 = icmp eq i8 %56, %81
  br i1 %82, label %304, label %66

83:                                               ; preds = %66
  %84 = add nuw nsw i32 %29, 1
  %85 = icmp ult i32 %84, %65
  br i1 %85, label %26, label %88

86:                                               ; preds = %22, %6
  %87 = phi i32 [ 350, %6 ], [ 351, %22 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef %87, i32 noundef 9, ptr noundef null) #14
  br label %304

88:                                               ; preds = %83, %14
  tail call void @down_write(ptr noundef nonnull @cb_lock) #14
  tail call void @mutex_lock(ptr noundef nonnull @genl_mutex) #14
  %89 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4
  %90 = call ptr @idr_get_next(ptr noundef nonnull @genl_fam_idr, ptr noundef nonnull %2) #14
  %91 = icmp eq ptr %90, null
  br i1 %91, label %103, label %92

92:                                               ; preds = %97, %88
  %93 = phi ptr [ %100, %97 ], [ %90, %88 ]
  %94 = getelementptr inbounds %struct.genl_family, ptr %93, i32 0, i32 2
  %95 = call i32 @strcmp(ptr noundef %94, ptr noundef %89) #14
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load i32, ptr %2, align 4
  %99 = add i32 %98, 1
  store i32 %99, ptr %2, align 4
  %100 = call ptr @idr_get_next(ptr noundef nonnull @genl_fam_idr, ptr noundef nonnull %2) #14
  %101 = icmp eq ptr %100, null
  br i1 %101, label %103, label %92

102:                                              ; preds = %92
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br label %302

103:                                              ; preds = %97, %88
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %104 = icmp eq ptr %0, @genl_ctrl
  br i1 %104, label %113, label %105

105:                                              ; preds = %103
  %106 = call i32 @strcmp(ptr noundef %89, ptr noundef nonnull dereferenceable(8) @.str)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %105
  %109 = call i32 @strcmp(ptr noundef %89, ptr noundef nonnull dereferenceable(10) @.str.1)
  %110 = icmp eq i32 %109, 0
  %111 = select i1 %110, i32 17, i32 19
  %112 = select i1 %110, i32 18, i32 1024
  br label %113

113:                                              ; preds = %108, %105, %103
  %114 = phi i32 [ 16, %103 ], [ 18, %105 ], [ %111, %108 ]
  %115 = phi i32 [ 17, %103 ], [ 19, %105 ], [ %112, %108 ]
  %116 = call i32 @idr_alloc_cyclic(ptr noundef nonnull @genl_fam_idr, ptr noundef %0, i32 noundef %114, i32 noundef %115, i32 noundef 3264) #14
  store i32 %116, ptr %0, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %302, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 9
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp eq i8 %120, 0
  br i1 %122, label %282, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 15
  %125 = load ptr, ptr %124, align 4
  br label %129

126:                                              ; preds = %134
  %127 = add nuw nsw i32 %130, 1
  %128 = icmp eq i32 %127, %121
  br i1 %128, label %137, label %129

129:                                              ; preds = %126, %123
  %130 = phi i32 [ %127, %126 ], [ 0, %123 ]
  %131 = getelementptr %struct.genl_multicast_group, ptr %125, i32 %130
  %132 = load i8, ptr %131, align 1
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %278, label %134, !prof !8

134:                                              ; preds = %129
  %135 = call ptr @memchr(ptr noundef %131, i32 noundef 0, i32 noundef 16) #14
  %136 = icmp eq ptr %135, null
  br i1 %136, label %278, label %126, !prof !8

137:                                              ; preds = %126
  br i1 %104, label %138, label %141

138:                                              ; preds = %137
  %139 = icmp eq i8 %120, 1
  br i1 %139, label %233, label %140, !prof !9

140:                                              ; preds = %138
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netlink/genetlink.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 265, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

141:                                              ; preds = %137
  %142 = call i32 @strcmp(ptr noundef %89, ptr noundef nonnull dereferenceable(7) @.str.3) #14
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = icmp eq i8 %120, 1
  br i1 %145, label %233, label %146, !prof !9

146:                                              ; preds = %144
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netlink/genetlink.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 268, 0\0A.popsection", ""() #14, !srcloc !11
  unreachable

147:                                              ; preds = %141
  switch i32 %116, label %154 [
    i32 17, label %148
    i32 18, label %151
  ]

148:                                              ; preds = %147
  %149 = icmp eq i8 %120, 1
  br i1 %149, label %233, label %150, !prof !9

150:                                              ; preds = %148
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netlink/genetlink.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 271, 0\0A.popsection", ""() #14, !srcloc !12
  unreachable

151:                                              ; preds = %147
  %152 = icmp eq i8 %120, 1
  br i1 %152, label %233, label %153, !prof !9

153:                                              ; preds = %151
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netlink/genetlink.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 274, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

154:                                              ; preds = %147
  %155 = add nuw nsw i32 %121, 31
  %156 = lshr i32 %155, 5
  %157 = call i32 @llvm.umax.i32(i32 %156, i32 1) #14
  %158 = shl nuw nsw i32 %157, 2
  %159 = load i32, ptr @mc_groups_longs, align 4
  br label %160

160:                                              ; preds = %224, %154
  %161 = phi i32 [ %159, %154 ], [ %225, %224 ]
  %162 = phi i32 [ 0, %154 ], [ %204, %224 ]
  %163 = icmp eq i32 %162, 0
  %164 = load ptr, ptr @mc_groups, align 4
  %165 = shl i32 %161, 5
  br i1 %163, label %166, label %168

166:                                              ; preds = %160
  %167 = call i32 @_find_first_zero_bit_le(ptr noundef %164, i32 noundef %165) #14
  br label %170

168:                                              ; preds = %160
  %169 = call i32 @_find_next_zero_bit_le(ptr noundef %164, i32 noundef %165, i32 noundef %162) #14
  br label %170

170:                                              ; preds = %168, %166
  %171 = phi i32 [ %167, %166 ], [ %169, %168 ]
  %172 = add i32 %171, %121
  %173 = load i32, ptr @mc_groups_longs, align 4
  %174 = shl i32 %173, 5
  %175 = call i32 @llvm.smin.i32(i32 %172, i32 %174) #14
  %176 = icmp slt i32 %171, %175
  br i1 %176, label %177, label %202

177:                                              ; preds = %170
  %178 = load ptr, ptr @mc_groups, align 4
  %179 = lshr i32 %171, 5
  %180 = getelementptr i32, ptr %178, i32 %179
  %181 = load volatile i32, ptr %180, align 4
  %182 = and i32 %171, 31
  %183 = shl nuw i32 1, %182
  %184 = and i32 %181, %183
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %194, label %202

186:                                              ; preds = %194
  %187 = lshr i32 %196, 5
  %188 = getelementptr i32, ptr %178, i32 %187
  %189 = load volatile i32, ptr %188, align 4
  %190 = and i32 %196, 31
  %191 = shl nuw i32 1, %190
  %192 = and i32 %189, %191
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %186, %177
  %195 = phi i32 [ %196, %186 ], [ %171, %177 ]
  %196 = add i32 %195, 1
  %197 = icmp eq i32 %196, %175
  br i1 %197, label %198, label %186

198:                                              ; preds = %194, %186
  %199 = phi i32 [ %175, %194 ], [ %196, %186 ]
  %200 = phi i32 [ %162, %194 ], [ %196, %186 ]
  %201 = icmp slt i32 %199, %175
  br label %202

202:                                              ; preds = %198, %177, %170
  %203 = phi i1 [ false, %170 ], [ true, %177 ], [ %201, %198 ]
  %204 = phi i32 [ %162, %170 ], [ %171, %177 ], [ %200, %198 ]
  %205 = icmp ugt i32 %172, %174
  br i1 %205, label %206, label %224

206:                                              ; preds = %202
  %207 = add i32 %173, %156
  %208 = shl i32 %207, 2
  %209 = load ptr, ptr @mc_groups, align 4
  %210 = icmp eq ptr %209, @mc_group_start
  br i1 %210, label %211, label %216

211:                                              ; preds = %206
  %212 = call noalias align 64 ptr @__kmalloc(i32 noundef %208, i32 noundef 3520) #15
  %213 = icmp eq ptr %212, null
  br i1 %213, label %298, label %214

214:                                              ; preds = %211
  store ptr %212, ptr @mc_groups, align 4
  %215 = load i32, ptr @mc_group_start, align 4
  store i32 %215, ptr %212, align 64
  br label %223

216:                                              ; preds = %206
  %217 = call noalias ptr @krealloc(ptr noundef %209, i32 noundef %208, i32 noundef 3264) #16
  %218 = icmp eq ptr %217, null
  br i1 %218, label %298, label %219

219:                                              ; preds = %216
  store ptr %217, ptr @mc_groups, align 4
  %220 = load i32, ptr @mc_groups_longs, align 4
  %221 = shl i32 %220, 2
  %222 = getelementptr i8, ptr %217, i32 %221
  call void @llvm.memset.p0.i32(ptr align 4 %222, i8 0, i32 %158, i1 false) #14
  br label %223

223:                                              ; preds = %219, %214
  store i32 %207, ptr @mc_groups_longs, align 4
  br label %224

224:                                              ; preds = %223, %202
  %225 = phi i32 [ %207, %223 ], [ %173, %202 ]
  br i1 %203, label %160, label %226

226:                                              ; preds = %224
  %227 = icmp slt i32 %171, %172
  br i1 %227, label %228, label %233

228:                                              ; preds = %228, %226
  %229 = phi i32 [ %231, %228 ], [ %171, %226 ]
  %230 = load ptr, ptr @mc_groups, align 4
  call void @_set_bit(i32 noundef %229, ptr noundef %230) #14
  %231 = add i32 %229, 1
  %232 = icmp eq i32 %231, %172
  br i1 %232, label %233, label %228

233:                                              ; preds = %228, %226, %151, %148, %144, %138
  %234 = phi i32 [ 16, %138 ], [ 1, %144 ], [ 18, %151 ], [ 17, %148 ], [ %171, %226 ], [ %171, %228 ]
  %235 = phi i1 [ false, %138 ], [ false, %144 ], [ false, %151 ], [ false, %148 ], [ true, %226 ], [ true, %228 ]
  %236 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 5
  store i32 %234, ptr %236, align 4
  %237 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %238 = icmp eq ptr %237, null
  br i1 %238, label %282, label %239

239:                                              ; preds = %233
  %240 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 6
  %241 = load i8, ptr %240, align 4
  %242 = and i8 %241, 1
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %258, label %244

244:                                              ; preds = %239
  call void @netlink_table_grab() #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %245

245:                                              ; preds = %249, %244
  %246 = phi ptr [ @net_namespace_list, %244 ], [ %247, %249 ]
  %247 = load volatile ptr, ptr %246, align 4
  %248 = icmp eq ptr %247, @net_namespace_list
  br i1 %248, label %256, label %249

249:                                              ; preds = %245
  %250 = getelementptr i8, ptr %247, i32 140
  %251 = load ptr, ptr %250, align 8
  %252 = load i32, ptr @mc_groups_longs, align 4
  %253 = shl i32 %252, 5
  %254 = call i32 @__netlink_change_ngroups(ptr noundef %251, i32 noundef %253) #14
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %245, label %256

256:                                              ; preds = %249, %245
  %257 = phi i32 [ %254, %249 ], [ 0, %245 ]
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  call void @netlink_table_ungrab() #14
  br label %262

258:                                              ; preds = %239
  %259 = load i32, ptr @mc_groups_longs, align 4
  %260 = shl i32 %259, 5
  %261 = call i32 @netlink_change_ngroups(ptr noundef nonnull %237, i32 noundef %260) #14
  br label %262

262:                                              ; preds = %258, %256
  %263 = phi i32 [ %257, %256 ], [ %261, %258 ]
  %264 = icmp ne i32 %263, 0
  %265 = select i1 %235, i1 %264, i1 false
  br i1 %265, label %266, label %280

266:                                              ; preds = %262
  %267 = load i8, ptr %119, align 1
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %298, label %269

269:                                              ; preds = %269, %266
  %270 = phi i32 [ %274, %269 ], [ 0, %266 ]
  %271 = load i32, ptr %236, align 4
  %272 = add i32 %271, %270
  %273 = load ptr, ptr @mc_groups, align 4
  call void @_clear_bit(i32 noundef %272, ptr noundef %273) #14
  %274 = add nuw nsw i32 %270, 1
  %275 = load i8, ptr %119, align 1
  %276 = zext i8 %275 to i32
  %277 = icmp ult i32 %274, %276
  br i1 %277, label %269, label %280

278:                                              ; preds = %134, %129
  %279 = phi i32 [ 256, %129 ], [ 258, %134 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef %279, i32 noundef 9, ptr noundef null) #14
  br label %298

280:                                              ; preds = %269, %262
  %281 = icmp eq i32 %263, 0
  br i1 %281, label %282, label %298

282:                                              ; preds = %280, %233, %118
  call void @mutex_unlock(ptr noundef nonnull @genl_mutex) #14
  call void @up_write(ptr noundef nonnull @cb_lock) #14
  call fastcc void @genl_ctrl_event(i32 noundef 1, ptr noundef %0, ptr noundef null, i32 noundef 0)
  %283 = load i8, ptr %119, align 1
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %304, label %285

285:                                              ; preds = %282
  %286 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 15
  %287 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 5
  br label %288

288:                                              ; preds = %288, %285
  %289 = phi i32 [ 0, %285 ], [ %294, %288 ]
  %290 = load ptr, ptr %286, align 4
  %291 = getelementptr %struct.genl_multicast_group, ptr %290, i32 %289
  %292 = load i32, ptr %287, align 4
  %293 = add i32 %292, %289
  call fastcc void @genl_ctrl_event(i32 noundef 7, ptr noundef %0, ptr noundef %291, i32 noundef %293)
  %294 = add nuw nsw i32 %289, 1
  %295 = load i8, ptr %119, align 1
  %296 = zext i8 %295 to i32
  %297 = icmp ult i32 %294, %296
  br i1 %297, label %288, label %304

298:                                              ; preds = %280, %278, %266, %216, %211
  %299 = phi i32 [ %263, %280 ], [ -22, %278 ], [ %263, %266 ], [ -12, %211 ], [ -12, %216 ]
  %300 = load i32, ptr %0, align 4
  %301 = call ptr @idr_remove(ptr noundef nonnull @genl_fam_idr, i32 noundef %300) #14
  br label %302

302:                                              ; preds = %298, %113, %102
  %303 = phi i32 [ %299, %298 ], [ -17, %102 ], [ %116, %113 ]
  call void @mutex_unlock(ptr noundef nonnull @genl_mutex) #14
  call void @up_write(ptr noundef nonnull @cb_lock) #14
  br label %304

304:                                              ; preds = %302, %288, %282, %86, %79, %53
  %305 = phi i32 [ %303, %302 ], [ -22, %86 ], [ 0, %282 ], [ 0, %288 ], [ -22, %79 ], [ -22, %53 ]
  ret i32 %305
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @genl_ctrl_event(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %142, label %9

9:                                                ; preds = %4
  switch i32 %0, label %142 [
    i32 1, label %10
    i32 2, label %10
    i32 7, label %22
    i32 8, label %22
  ]

10:                                               ; preds = %9, %9
  %11 = icmp eq ptr %2, null
  br i1 %11, label %13, label %12, !prof !9

12:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1077, i32 noundef 9, ptr noundef null) #14
  br label %13

13:                                               ; preds = %12, %10
  %14 = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %142, label %16

16:                                               ; preds = %13
  %17 = trunc i32 %0 to i8
  %18 = tail call fastcc i32 @ctrl_fill_info(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %14, i8 noundef zeroext %17) #14
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %119

20:                                               ; preds = %16
  tail call void @kfree_skb_reason(ptr noundef nonnull %14, i32 noundef 0) #14
  %21 = inttoptr i32 %18 to ptr
  br label %119

22:                                               ; preds = %9, %9
  %23 = icmp eq ptr %2, null
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %22
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netlink/genetlink.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1082, 0\0A.popsection", ""() #14, !srcloc !16
  unreachable

25:                                               ; preds = %22
  %26 = trunc i32 %0 to i8
  %27 = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %142, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr @genl_ctrl, align 4
  %31 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @genl_ctrl, i32 0, i32 1), align 4
  %32 = add i32 %31, 4
  %33 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 15
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 14
  %40 = load ptr, ptr %39, align 8
  %41 = ptrtoint ptr %38 to i32
  %42 = ptrtoint ptr %40 to i32
  %43 = sub i32 %41, %42
  br label %44

44:                                               ; preds = %36, %29
  %45 = phi i32 [ %43, %36 ], [ 0, %29 ]
  %46 = add i32 %31, 23
  %47 = and i32 %46, -4
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %118, label %49, !prof !8

49:                                               ; preds = %44
  %50 = tail call ptr @__nlmsg_put(ptr noundef nonnull %27, i32 noundef 0, i32 noundef 0, i32 noundef %30, i32 noundef %32, i32 noundef 0) #14
  %51 = icmp eq ptr %50, null
  br i1 %51, label %118, label %52

52:                                               ; preds = %49
  %53 = getelementptr i8, ptr %50, i32 16
  store i8 %26, ptr %53, align 2
  %54 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @genl_ctrl, i32 0, i32 3), align 4
  %55 = trunc i32 %54 to i8
  %56 = getelementptr i8, ptr %50, i32 17
  store i8 %55, ptr %56, align 1
  %57 = getelementptr i8, ptr %50, i32 18
  store i16 0, ptr %57, align 2
  %58 = getelementptr i8, ptr %50, i32 20
  %59 = icmp eq ptr %58, null
  br i1 %59, label %118, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.genl_family, ptr %1, i32 0, i32 2
  %62 = tail call i32 @strlen(ptr noundef %61) #14
  %63 = add i32 %62, 1
  %64 = tail call i32 @nla_put(ptr noundef nonnull %27, i32 noundef 2, i32 noundef %63, ptr noundef %61) #14
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %92

66:                                               ; preds = %60
  %67 = load i32, ptr %1, align 4
  %68 = trunc i32 %67 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #14
  store i16 %68, ptr %6, align 2
  %69 = call i32 @nla_put(ptr noundef nonnull %27, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #14
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 14
  %73 = load ptr, ptr %72, align 8
  %74 = call i32 @nla_put(ptr noundef nonnull %27, i32 noundef 7, i32 noundef 0, ptr noundef null) #14
  %75 = icmp slt i32 %74, 0
  %76 = icmp eq ptr %73, null
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %92, label %78

78:                                               ; preds = %71
  %79 = load ptr, ptr %72, align 8
  %80 = call i32 @nla_put(ptr noundef nonnull %27, i32 noundef 1, i32 noundef 0, ptr noundef null) #14
  %81 = icmp slt i32 %80, 0
  %82 = icmp eq ptr %79, null
  %83 = select i1 %81, i1 true, i1 %82
  br i1 %83, label %92, label %84

84:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 %3, ptr %5, align 4
  %85 = call i32 @nla_put(ptr noundef nonnull %27, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = call i32 @strlen(ptr noundef nonnull %2) #14
  %89 = add i32 %88, 1
  %90 = call i32 @nla_put(ptr noundef nonnull %27, i32 noundef 1, i32 noundef %89, ptr noundef nonnull %2) #14
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %87, %84, %78, %71, %66, %60
  %93 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 17
  %94 = load ptr, ptr %93, align 4
  %95 = icmp ugt ptr %94, %50
  br i1 %95, label %96, label %98, !prof !8

96:                                               ; preds = %92
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  %97 = load ptr, ptr %93, align 4
  br label %98

98:                                               ; preds = %96, %92
  %99 = phi ptr [ %97, %96 ], [ %94, %92 ]
  %100 = ptrtoint ptr %50 to i32
  %101 = ptrtoint ptr %99 to i32
  %102 = sub i32 %100, %101
  call void @skb_trim(ptr noundef nonnull %27, i32 noundef %102) #14
  br label %118

103:                                              ; preds = %87
  %104 = load ptr, ptr %72, align 8
  %105 = ptrtoint ptr %104 to i32
  %106 = ptrtoint ptr %79 to i32
  %107 = sub i32 %105, %106
  %108 = trunc i32 %107 to i16
  store i16 %108, ptr %79, align 2
  %109 = load ptr, ptr %72, align 8
  %110 = ptrtoint ptr %109 to i32
  %111 = ptrtoint ptr %73 to i32
  %112 = sub i32 %110, %111
  %113 = trunc i32 %112 to i16
  store i16 %113, ptr %73, align 2
  %114 = load ptr, ptr %72, align 8
  %115 = ptrtoint ptr %114 to i32
  %116 = ptrtoint ptr %50 to i32
  %117 = sub i32 %115, %116
  store i32 %117, ptr %50, align 4
  br label %119

118:                                              ; preds = %98, %52, %49, %44
  call void @kfree_skb_reason(ptr noundef nonnull %27, i32 noundef 0) #14
  br label %142

119:                                              ; preds = %103, %20, %16
  %120 = phi ptr [ %21, %20 ], [ %14, %16 ], [ %27, %103 ]
  %121 = icmp ugt ptr %120, inttoptr (i32 -4096 to ptr)
  br i1 %121, label %142, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.genl_family, ptr %1, i32 0, i32 6
  %124 = load i8, ptr %123, align 4
  %125 = and i8 %124, 1
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %122
  %128 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @genl_ctrl, i32 0, i32 9), align 1
  %129 = icmp eq i8 %128, 0
  %130 = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  %131 = xor i1 %130, true
  %132 = select i1 %129, i1 %131, i1 false
  br i1 %132, label %133, label %134, !prof !8

133:                                              ; preds = %127
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 308, i32 noundef 9, ptr noundef null) #14
  br label %134

134:                                              ; preds = %133, %127
  br i1 %129, label %142, label %135

135:                                              ; preds = %134
  %136 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @genl_ctrl, i32 0, i32 5), align 4
  %137 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %138 = getelementptr inbounds %struct.sk_buff, ptr %120, i32 0, i32 3, i32 16
  store i32 %136, ptr %138, align 8
  %139 = call i32 @netlink_broadcast(ptr noundef %137, ptr noundef %120, i32 noundef 0, i32 noundef %136, i32 noundef 3264) #14
  br label %142

140:                                              ; preds = %122
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %141 = call i32 @genlmsg_multicast_allns(ptr noundef nonnull @genl_ctrl, ptr noundef %120, i32 noundef 0, i32 noundef 0, i32 noundef 2592)
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %142

142:                                              ; preds = %140, %135, %134, %119, %118, %25, %13, %9, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @genl_unregister_family(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  tail call void @down_write(ptr noundef nonnull @cb_lock) #14
  tail call void @mutex_lock(ptr noundef nonnull @genl_mutex) #14
  %3 = load i32, ptr %0, align 4
  %4 = tail call ptr @idr_find(ptr noundef nonnull @genl_fam_idr, i32 noundef %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef nonnull @genl_mutex) #14
  tail call void @up_write(ptr noundef nonnull @cb_lock) #14
  br label %69

7:                                                ; preds = %1
  tail call void @netlink_table_grab() #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %8 = load volatile ptr, ptr @net_namespace_list, align 4
  %9 = icmp eq ptr %8, @net_namespace_list
  br i1 %9, label %33, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 9
  %12 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 5
  %13 = load i8, ptr %11, align 1
  br label %18

14:                                               ; preds = %24, %18
  %15 = phi i8 [ 0, %18 ], [ %30, %24 ]
  %16 = load volatile ptr, ptr %20, align 4
  %17 = icmp eq ptr %16, @net_namespace_list
  br i1 %17, label %33, label %18

18:                                               ; preds = %14, %10
  %19 = phi i8 [ %13, %10 ], [ %15, %14 ]
  %20 = phi ptr [ %8, %10 ], [ %16, %14 ]
  %21 = icmp eq i8 %19, 0
  br i1 %21, label %14, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %20, i32 140
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i32 [ 0, %22 ], [ %29, %24 ]
  %26 = load ptr, ptr %23, align 8
  %27 = load i32, ptr %12, align 4
  %28 = add i32 %27, %25
  tail call void @__netlink_clear_multicast_users(ptr noundef %26, i32 noundef %28) #14
  %29 = add nuw nsw i32 %25, 1
  %30 = load i8, ptr %11, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %24, label %14

33:                                               ; preds = %14, %7
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  tail call void @netlink_table_ungrab() #14
  %34 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 9
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 5
  %39 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 15
  br label %40

40:                                               ; preds = %47, %37
  %41 = phi i32 [ 0, %37 ], [ %50, %47 ]
  %42 = load i32, ptr %38, align 4
  %43 = add i32 %42, %41
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr @mc_groups, align 4
  tail call void @_clear_bit(i32 noundef %43, ptr noundef %46) #14
  br label %47

47:                                               ; preds = %45, %40
  %48 = load ptr, ptr %39, align 4
  %49 = getelementptr %struct.genl_multicast_group, ptr %48, i32 %41
  tail call fastcc void @genl_ctrl_event(i32 noundef 8, ptr noundef %0, ptr noundef %49, i32 noundef %43) #14
  %50 = add nuw nsw i32 %41, 1
  %51 = load i8, ptr %34, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp ult i32 %50, %52
  br i1 %53, label %40, label %54

54:                                               ; preds = %47, %33
  %55 = load i32, ptr %0, align 4
  %56 = tail call ptr @idr_remove(ptr noundef nonnull @genl_fam_idr, i32 noundef %55) #14
  tail call void @up_write(ptr noundef nonnull @cb_lock) #14
  %57 = load volatile i32, ptr @genl_sk_destructing_cnt, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !17
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #14
  %60 = call i32 @prepare_to_wait_event(ptr noundef nonnull @genl_sk_destructing_waitq, ptr noundef nonnull %2, i32 noundef 2) #14
  %61 = load volatile i32, ptr @genl_sk_destructing_cnt, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %63, %59
  call void @schedule() #14
  %64 = call i32 @prepare_to_wait_event(ptr noundef nonnull @genl_sk_destructing_waitq, ptr noundef nonnull %2, i32 noundef 2) #14
  %65 = load volatile i32, ptr @genl_sk_destructing_cnt, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %63

67:                                               ; preds = %63, %59
  call void @finish_wait(ptr noundef nonnull @genl_sk_destructing_waitq, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  br label %68

68:                                               ; preds = %67, %54
  call void @mutex_unlock(ptr noundef nonnull @genl_mutex) #14
  call fastcc void @genl_ctrl_event(i32 noundef 2, ptr noundef %0, ptr noundef null, i32 noundef 0)
  br label %69

69:                                               ; preds = %68, %6
  %70 = phi i32 [ 0, %68 ], [ -2, %6 ]
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @genlmsg_put(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i8 noundef zeroext %5) #0 {
  %7 = load i32, ptr %3, align 4
  %8 = getelementptr inbounds %struct.genl_family, ptr %3, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %18 = load ptr, ptr %17, align 8
  %19 = ptrtoint ptr %16 to i32
  %20 = ptrtoint ptr %18 to i32
  %21 = sub i32 %19, %20
  br label %22

22:                                               ; preds = %14, %6
  %23 = phi i32 [ %21, %14 ], [ 0, %6 ]
  %24 = add i32 %9, 23
  %25 = and i32 %24, -4
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %38, label %27, !prof !8

27:                                               ; preds = %22
  %28 = tail call ptr @__nlmsg_put(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %7, i32 noundef %10, i32 noundef %4) #14
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = getelementptr i8, ptr %28, i32 16
  store i8 %5, ptr %31, align 2
  %32 = getelementptr inbounds %struct.genl_family, ptr %3, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = trunc i32 %33 to i8
  %35 = getelementptr i8, ptr %28, i32 17
  store i8 %34, ptr %35, align 1
  %36 = getelementptr i8, ptr %28, i32 18
  store i16 0, ptr %36, align 2
  %37 = getelementptr i8, ptr %28, i32 20
  br label %38

38:                                               ; preds = %30, %27, %22
  %39 = phi ptr [ %37, %30 ], [ null, %27 ], [ null, %22 ]
  ret ptr %39
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @genl_init() #5 section ".init.text" {
  %1 = tail call i32 @genl_register_family(ptr noundef nonnull @genl_ctrl)
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @genl_pernet_ops) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  ret i32 0

7:                                                ; preds = %3, %0
  %8 = phi i32 [ %1, %0 ], [ %4, %3 ]
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.7, i32 noundef %8) #17
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @genlmsg_multicast_allns(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 9
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp ule i32 %8, %3
  %10 = load i1, ptr @genlmsg_multicast_allns.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %5
  store i1 true, ptr @genlmsg_multicast_allns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1478, i32 noundef 9, ptr noundef null) #14
  br label %14

14:                                               ; preds = %13, %5
  br i1 %9, label %53, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %3
  %19 = load volatile ptr, ptr @net_namespace_list, align 4
  %20 = icmp eq ptr %19, @net_namespace_list
  br i1 %20, label %41, label %21

21:                                               ; preds = %37, %15
  %22 = phi ptr [ %39, %37 ], [ %19, %15 ]
  %23 = phi ptr [ %25, %37 ], [ null, %15 ]
  %24 = phi i1 [ %38, %37 ], [ false, %15 ]
  %25 = getelementptr i8, ptr %22, i32 -28
  %26 = icmp eq ptr %23, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %21
  %28 = tail call ptr @skb_clone(ptr noundef %1, i32 noundef %4) #14
  %29 = icmp eq ptr %28, null
  br i1 %29, label %51, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.net, ptr %23, i32 0, i32 21
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 3, i32 16
  store i32 %18, ptr %33, align 8
  %34 = tail call i32 @netlink_broadcast(ptr noundef %32, ptr noundef nonnull %28, i32 noundef %2, i32 noundef %18, i32 noundef %4) #14
  %35 = tail call i32 @llvm.smin.i32(i32 %34, i32 0) #14
  switch i32 %35, label %51 [
    i32 0, label %37
    i32 -3, label %36
  ]

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %30, %21
  %38 = phi i1 [ %24, %21 ], [ true, %30 ], [ %24, %36 ]
  %39 = load volatile ptr, ptr %22, align 4
  %40 = icmp eq ptr %39, @net_namespace_list
  br i1 %40, label %41, label %21

41:                                               ; preds = %37, %15
  %42 = phi i1 [ false, %15 ], [ %38, %37 ]
  %43 = phi ptr [ null, %15 ], [ %25, %37 ]
  %44 = getelementptr inbounds %struct.net, ptr %43, i32 0, i32 21
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  store i32 %18, ptr %46, align 8
  %47 = tail call i32 @netlink_broadcast(ptr noundef %45, ptr noundef %1, i32 noundef %2, i32 noundef %18, i32 noundef %4) #14
  %48 = tail call i32 @llvm.smin.i32(i32 %47, i32 0) #14
  switch i32 %48, label %53 [
    i32 0, label %50
    i32 -3, label %49
  ]

49:                                               ; preds = %41
  br i1 %42, label %50, label %53

50:                                               ; preds = %49, %41
  br label %53

51:                                               ; preds = %30, %27
  %52 = phi i32 [ -12, %27 ], [ %35, %30 ]
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #14
  br label %53

53:                                               ; preds = %51, %50, %49, %41, %14
  %54 = phi i32 [ -22, %14 ], [ %52, %51 ], [ %48, %41 ], [ 0, %50 ], [ -3, %49 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @genl_notify(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %7 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 9
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp ule i32 %9, %3
  %11 = load i1, ptr @genl_notify.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %5
  store i1 true, ptr @genl_notify.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1492, i32 noundef 9, ptr noundef null) #14
  br label %15

15:                                               ; preds = %14, %5
  br i1 %10, label %34, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %3
  %20 = getelementptr inbounds %struct.genl_info, ptr %2, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.genl_info, ptr %2, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.nlmsghdr, ptr %23, i32 0, i32 2
  %27 = load i16, ptr %26, align 2
  %28 = lshr i16 %27, 3
  %29 = and i16 %28, 1
  %30 = zext i16 %29 to i32
  br label %31

31:                                               ; preds = %25, %16
  %32 = phi i32 [ %30, %25 ], [ 0, %16 ]
  %33 = tail call i32 @nlmsg_notify(ptr noundef %6, ptr noundef %1, i32 noundef %21, i32 noundef %19, i32 noundef %32, i32 noundef %4) #14
  br label %34

34:                                               ; preds = %31, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmsg_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlink_table_grab() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netlink_change_ngroups(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlink_table_ungrab() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_change_ngroups(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netlink_clear_multicast_users(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ctrl_fill_info(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = load i32, ptr @genl_ctrl, align 4
  %15 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @genl_ctrl, i32 0, i32 1), align 4
  %16 = add i32 %15, 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 14
  %24 = load ptr, ptr %23, align 8
  %25 = ptrtoint ptr %22 to i32
  %26 = ptrtoint ptr %24 to i32
  %27 = sub i32 %25, %26
  br label %28

28:                                               ; preds = %20, %6
  %29 = phi i32 [ %27, %20 ], [ 0, %6 ]
  %30 = add i32 %15, 23
  %31 = and i32 %30, -4
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %248, label %33, !prof !8

33:                                               ; preds = %28
  %34 = tail call ptr @__nlmsg_put(ptr noundef %4, i32 noundef %1, i32 noundef %2, i32 noundef %14, i32 noundef %16, i32 noundef %3) #14
  %35 = icmp eq ptr %34, null
  br i1 %35, label %248, label %36

36:                                               ; preds = %33
  %37 = getelementptr i8, ptr %34, i32 16
  store i8 %5, ptr %37, align 2
  %38 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @genl_ctrl, i32 0, i32 3), align 4
  %39 = trunc i32 %38 to i8
  %40 = getelementptr i8, ptr %34, i32 17
  store i8 %39, ptr %40, align 1
  %41 = getelementptr i8, ptr %34, i32 18
  store i16 0, ptr %41, align 2
  %42 = getelementptr i8, ptr %34, i32 20
  %43 = icmp eq ptr %42, null
  br i1 %43, label %248, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 2
  %46 = tail call i32 @strlen(ptr noundef %45) #14
  %47 = add i32 %46, 1
  %48 = tail call i32 @nla_put(ptr noundef %4, i32 noundef 2, i32 noundef %47, ptr noundef %45) #14
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %237

50:                                               ; preds = %44
  %51 = load i32, ptr %0, align 4
  %52 = trunc i32 %51 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #14
  store i16 %52, ptr %13, align 2
  %53 = call i32 @nla_put(ptr noundef %4, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #14
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %237

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #14
  store i32 %57, ptr %12, align 4
  %58 = call i32 @nla_put(ptr noundef %4, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #14
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %237

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #14
  store i32 %62, ptr %11, align 4
  %63 = call i32 @nla_put(ptr noundef %4, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #14
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %237

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 4
  %67 = load i32, ptr %66, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  store i32 %67, ptr %10, align 4
  %68 = call i32 @nla_put(ptr noundef %4, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %237

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 7
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  %74 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 8
  %75 = load i8, ptr %74, align 2
  %76 = zext i8 %75 to i32
  %77 = sub nsw i32 0, %73
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %181, label %79

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 14
  %81 = load ptr, ptr %80, align 8
  %82 = call i32 @nla_put(ptr noundef %4, i32 noundef 6, i32 noundef 0, ptr noundef null) #14
  %83 = icmp slt i32 %82, 0
  %84 = icmp eq ptr %81, null
  %85 = select i1 %83, i1 true, i1 %84
  br i1 %85, label %237, label %86

86:                                               ; preds = %79
  %87 = load i8, ptr %71, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, ptr %74, align 2
  %90 = zext i8 %89 to i32
  %91 = add nuw nsw i32 %90, %88
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %175, label %93

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 14
  %95 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 10
  %96 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 13
  br label %97

97:                                               ; preds = %163, %93
  %98 = phi i32 [ %91, %93 ], [ %173, %163 ]
  %99 = phi i32 [ %88, %93 ], [ %170, %163 ]
  %100 = phi i32 [ 0, %93 ], [ %150, %163 ]
  %101 = icmp ult i32 %100, %99
  br i1 %101, label %102, label %117

102:                                              ; preds = %97
  %103 = load ptr, ptr %96, align 4
  %104 = getelementptr %struct.genl_ops, ptr %103, i32 %100
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds i8, ptr %104, i32 8
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds i8, ptr %104, i32 16
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds i8, ptr %104, i32 24
  %111 = load i8, ptr %110, align 4
  %112 = getelementptr inbounds i8, ptr %104, i32 26
  %113 = load i8, ptr %112, align 2
  %114 = icmp eq ptr %109, null
  br i1 %114, label %115, label %134

115:                                              ; preds = %102
  %116 = load ptr, ptr %95, align 4
  br label %134

117:                                              ; preds = %97
  %118 = icmp ugt i32 %98, %100
  br i1 %118, label %119, label %131

119:                                              ; preds = %117
  %120 = sub nsw i32 %100, %99
  %121 = load ptr, ptr %94, align 4
  %122 = getelementptr %struct.genl_small_ops, ptr %121, i32 %120
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr %struct.genl_small_ops, ptr %121, i32 %120, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr %struct.genl_small_ops, ptr %121, i32 %120, i32 2
  %127 = load i8, ptr %126, align 4
  %128 = getelementptr %struct.genl_small_ops, ptr %121, i32 %120, i32 4
  %129 = load i8, ptr %128, align 2
  %130 = load ptr, ptr %95, align 4
  br label %134

131:                                              ; preds = %117
  %132 = load i1, ptr @genl_get_cmd_by_index.__already_done, align 1
  br i1 %132, label %134, label %133, !prof !9

133:                                              ; preds = %131
  store i1 true, ptr @genl_get_cmd_by_index.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 178, i32 noundef 9, ptr noundef null) #14
  br label %134

134:                                              ; preds = %133, %131, %119, %115, %102
  %135 = phi ptr [ %105, %115 ], [ %105, %102 ], [ %123, %119 ], [ null, %131 ], [ null, %133 ]
  %136 = phi ptr [ %107, %115 ], [ %107, %102 ], [ %125, %119 ], [ null, %131 ], [ null, %133 ]
  %137 = phi ptr [ %116, %115 ], [ %109, %102 ], [ %130, %119 ], [ null, %131 ], [ null, %133 ]
  %138 = phi i8 [ %111, %115 ], [ %111, %102 ], [ %127, %119 ], [ 0, %131 ], [ 0, %133 ]
  %139 = phi i8 [ %113, %115 ], [ %113, %102 ], [ %129, %119 ], [ 0, %131 ], [ 0, %133 ]
  %140 = zext i8 %139 to i32
  %141 = icmp eq ptr %136, null
  %142 = or i32 %140, 4
  %143 = select i1 %141, i32 %140, i32 %142
  %144 = icmp eq ptr %135, null
  %145 = or i32 %143, 2
  %146 = select i1 %144, i32 %143, i32 %145
  %147 = icmp eq ptr %137, null
  %148 = or i32 %146, 8
  %149 = select i1 %147, i32 %146, i32 %148
  %150 = add nuw nsw i32 %100, 1
  %151 = load ptr, ptr %80, align 8
  %152 = call i32 @nla_put(ptr noundef %4, i32 noundef %150, i32 noundef 0, ptr noundef null) #14
  %153 = icmp slt i32 %152, 0
  %154 = icmp eq ptr %151, null
  %155 = select i1 %153, i1 true, i1 %154
  br i1 %155, label %237, label %156

156:                                              ; preds = %134
  %157 = zext i8 %138 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  store i32 %157, ptr %9, align 4
  %158 = call i32 @nla_put(ptr noundef %4, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %237

160:                                              ; preds = %156
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 %149, ptr %8, align 4
  %161 = call i32 @nla_put(ptr noundef %4, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %237

163:                                              ; preds = %160
  %164 = load ptr, ptr %80, align 8
  %165 = ptrtoint ptr %164 to i32
  %166 = ptrtoint ptr %151 to i32
  %167 = sub i32 %165, %166
  %168 = trunc i32 %167 to i16
  store i16 %168, ptr %151, align 2
  %169 = load i8, ptr %71, align 1
  %170 = zext i8 %169 to i32
  %171 = load i8, ptr %74, align 2
  %172 = zext i8 %171 to i32
  %173 = add nuw nsw i32 %172, %170
  %174 = icmp ult i32 %150, %173
  br i1 %174, label %97, label %175

175:                                              ; preds = %163, %86
  %176 = load ptr, ptr %80, align 8
  %177 = ptrtoint ptr %176 to i32
  %178 = ptrtoint ptr %81 to i32
  %179 = sub i32 %177, %178
  %180 = trunc i32 %179 to i16
  store i16 %180, ptr %81, align 2
  br label %181

181:                                              ; preds = %175, %70
  %182 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 9
  %183 = load i8, ptr %182, align 1
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %231, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 14
  %187 = load ptr, ptr %186, align 8
  %188 = call i32 @nla_put(ptr noundef %4, i32 noundef 7, i32 noundef 0, ptr noundef null) #14
  %189 = icmp slt i32 %188, 0
  %190 = icmp eq ptr %187, null
  %191 = select i1 %189, i1 true, i1 %190
  br i1 %191, label %237, label %192

192:                                              ; preds = %185
  %193 = load i8, ptr %182, align 1
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %225, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 15
  %197 = getelementptr inbounds %struct.genl_family, ptr %0, i32 0, i32 5
  br label %198

198:                                              ; preds = %216, %195
  %199 = phi i32 [ 0, %195 ], [ %202, %216 ]
  %200 = load ptr, ptr %196, align 4
  %201 = getelementptr %struct.genl_multicast_group, ptr %200, i32 %199
  %202 = add nuw nsw i32 %199, 1
  %203 = load ptr, ptr %186, align 8
  %204 = call i32 @nla_put(ptr noundef %4, i32 noundef %202, i32 noundef 0, ptr noundef null) #14
  %205 = icmp slt i32 %204, 0
  %206 = icmp eq ptr %203, null
  %207 = select i1 %205, i1 true, i1 %206
  br i1 %207, label %237, label %208

208:                                              ; preds = %198
  %209 = load i32, ptr %197, align 4
  %210 = add i32 %209, %199
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 %210, ptr %7, align 4
  %211 = call i32 @nla_put(ptr noundef %4, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %237

213:                                              ; preds = %208
  %214 = call fastcc i32 @nla_put_string(ptr noundef %4, i32 noundef 1, ptr noundef %201)
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %237

216:                                              ; preds = %213
  %217 = load ptr, ptr %186, align 8
  %218 = ptrtoint ptr %217 to i32
  %219 = ptrtoint ptr %203 to i32
  %220 = sub i32 %218, %219
  %221 = trunc i32 %220 to i16
  store i16 %221, ptr %203, align 2
  %222 = load i8, ptr %182, align 1
  %223 = zext i8 %222 to i32
  %224 = icmp ult i32 %202, %223
  br i1 %224, label %198, label %225

225:                                              ; preds = %216, %192
  %226 = load ptr, ptr %186, align 8
  %227 = ptrtoint ptr %226 to i32
  %228 = ptrtoint ptr %187 to i32
  %229 = sub i32 %227, %228
  %230 = trunc i32 %229 to i16
  store i16 %230, ptr %187, align 2
  br label %231

231:                                              ; preds = %225, %181
  %232 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 14
  %233 = load ptr, ptr %232, align 8
  %234 = ptrtoint ptr %233 to i32
  %235 = ptrtoint ptr %34 to i32
  %236 = sub i32 %234, %235
  store i32 %236, ptr %34, align 4
  br label %248

237:                                              ; preds = %213, %208, %198, %185, %160, %156, %134, %79, %65, %60, %55, %50, %44
  %238 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %239 = load ptr, ptr %238, align 4
  %240 = icmp ugt ptr %239, %34
  br i1 %240, label %241, label %243, !prof !8

241:                                              ; preds = %237
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  %242 = load ptr, ptr %238, align 4
  br label %243

243:                                              ; preds = %241, %237
  %244 = phi ptr [ %242, %241 ], [ %239, %237 ]
  %245 = ptrtoint ptr %34 to i32
  %246 = ptrtoint ptr %244 to i32
  %247 = sub i32 %245, %246
  call void @skb_trim(ptr noundef %4, i32 noundef %247) #14
  br label %248

248:                                              ; preds = %243, %231, %36, %33, %28
  %249 = phi i32 [ 0, %231 ], [ -1, %36 ], [ -90, %243 ], [ -1, %33 ], [ -1, %28 ]
  ret i32 %249
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nla_put_string(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #10 {
  %4 = tail call i32 @strlen(ptr noundef %2)
  %5 = add i32 %4, 1
  %6 = tail call i32 @nla_put(ptr noundef %0, i32 noundef %1, i32 noundef %5, ptr noundef %2) #14
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_broadcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ctrl_getfamily(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr ptr, ptr %6, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %8, i32 4
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = tail call ptr @idr_find(ptr noundef nonnull @genl_fam_idr, i32 noundef %13) #14
  %15 = load ptr, ptr %5, align 4
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi ptr [ %15, %10 ], [ %6, %2 ]
  %18 = phi ptr [ %14, %10 ], [ null, %2 ]
  %19 = phi i32 [ -2, %10 ], [ -22, %2 ]
  %20 = getelementptr ptr, ptr %17, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %54, label %23

23:                                               ; preds = %16
  %24 = getelementptr i8, ptr %21, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4
  %25 = call ptr @idr_get_next(ptr noundef nonnull @genl_fam_idr, ptr noundef nonnull %4) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %32, %23
  %28 = phi ptr [ %35, %32 ], [ %25, %23 ]
  %29 = getelementptr inbounds %struct.genl_family, ptr %28, i32 0, i32 2
  %30 = call i32 @strcmp(ptr noundef %29, ptr noundef %24) #14
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i32, ptr %4, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %4, align 4
  %35 = call ptr @idr_get_next(ptr noundef nonnull @genl_fam_idr, ptr noundef nonnull %4) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %27

37:                                               ; preds = %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %58

38:                                               ; preds = %32, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @mutex_unlock(ptr noundef nonnull @genl_mutex) #14
  call void @up_read(ptr noundef nonnull @cb_lock) #14
  %39 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.6, i32 noundef 16, i32 noundef 16, ptr noundef %24) #14
  call void @down_read(ptr noundef nonnull @cb_lock) #14
  call void @mutex_lock(ptr noundef nonnull @genl_mutex) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4
  %40 = call ptr @idr_get_next(ptr noundef nonnull @genl_fam_idr, ptr noundef nonnull %3) #14
  %41 = icmp eq ptr %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %47, %38
  %43 = phi ptr [ %50, %47 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.genl_family, ptr %43, i32 0, i32 2
  %45 = call i32 @strcmp(ptr noundef %44, ptr noundef %24) #14
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i32, ptr %3, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %3, align 4
  %50 = call ptr @idr_get_next(ptr noundef nonnull @genl_fam_idr, ptr noundef nonnull %3) #14
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %42

52:                                               ; preds = %47, %42, %38
  %53 = phi ptr [ null, %38 ], [ %43, %42 ], [ null, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %54

54:                                               ; preds = %52, %16
  %55 = phi ptr [ %18, %16 ], [ %53, %52 ]
  %56 = phi i32 [ %19, %16 ], [ -2, %52 ]
  %57 = icmp eq ptr %55, null
  br i1 %57, label %81, label %58

58:                                               ; preds = %54, %37
  %59 = phi ptr [ %28, %37 ], [ %55, %54 ]
  %60 = getelementptr inbounds %struct.genl_info, ptr %1, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = load i32, ptr %1, align 4
  %63 = call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %64 = icmp eq ptr %63, null
  br i1 %64, label %73, label %65

65:                                               ; preds = %58
  %66 = call fastcc i32 @ctrl_fill_info(ptr noundef nonnull %59, i32 noundef %61, i32 noundef %62, i32 noundef 0, ptr noundef nonnull %63, i8 noundef zeroext 1) #14
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  call void @kfree_skb_reason(ptr noundef nonnull %63, i32 noundef 0) #14
  %69 = inttoptr i32 %66 to ptr
  br label %70

70:                                               ; preds = %68, %65
  %71 = phi ptr [ %69, %68 ], [ %63, %65 ]
  %72 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %73, label %76

73:                                               ; preds = %70, %58
  %74 = phi ptr [ %71, %70 ], [ inttoptr (i32 -105 to ptr), %58 ]
  %75 = ptrtoint ptr %74 to i32
  br label %81

76:                                               ; preds = %70
  %77 = load i32, ptr %60, align 4
  %78 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %79 = call i32 @netlink_unicast(ptr noundef %78, ptr noundef %71, i32 noundef %77, i32 noundef 64) #14
  %80 = call i32 @llvm.smin.i32(i32 %79, i32 0) #14
  br label %81

81:                                               ; preds = %76, %73, %54
  %82 = phi i32 [ %75, %73 ], [ %80, %76 ], [ %56, %54 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ctrl_dumpfamily(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4
  %6 = call ptr @idr_get_next(ptr noundef nonnull @genl_fam_idr, ptr noundef nonnull %3) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  br label %10

10:                                               ; preds = %24, %8
  %11 = phi ptr [ %6, %8 ], [ %27, %24 ]
  %12 = phi i32 [ 0, %8 ], [ %13, %24 ]
  %13 = add i32 %12, 1
  %14 = icmp slt i32 %12, %5
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %1, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 12
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr inbounds %struct.nlmsghdr, ptr %19, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = call fastcc i32 @ctrl_fill_info(ptr noundef nonnull %11, i32 noundef %18, i32 noundef %21, i32 noundef 2, ptr noundef %0, i8 noundef zeroext 1)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %15, %10
  %25 = load i32, ptr %3, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %3, align 4
  %27 = call ptr @idr_get_next(ptr noundef nonnull @genl_fam_idr, ptr noundef nonnull %3) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %10

29:                                               ; preds = %24, %15, %2
  %30 = phi i32 [ 0, %2 ], [ %12, %15 ], [ %13, %24 ]
  store i32 %30, ptr %4, align 4
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %32 = load i32, ptr %31, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ctrl_dumppolicy_start(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 13
  %6 = getelementptr inbounds %struct.genl_dumpit_info, ptr %4, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr ptr, ptr %7, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = getelementptr ptr, ptr %7, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %188, label %18

15:                                               ; preds = %1
  %16 = getelementptr i8, ptr %9, i32 4
  %17 = load i16, ptr %16, align 2
  br label %36

18:                                               ; preds = %11
  %19 = getelementptr i8, ptr %13, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4
  %20 = call ptr @idr_get_next(ptr noundef nonnull @genl_fam_idr, ptr noundef nonnull %2) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %27, %18
  %23 = phi ptr [ %30, %27 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.genl_family, ptr %23, i32 0, i32 2
  %25 = call i32 @strcmp(ptr noundef %24, ptr noundef %19) #14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load i32, ptr %2, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %2, align 4
  %30 = call ptr @idr_get_next(ptr noundef nonnull @genl_fam_idr, ptr noundef nonnull %2) #14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %22

32:                                               ; preds = %27, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br label %188

33:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %34 = load i32, ptr %23, align 4
  %35 = trunc i32 %34 to i16
  br label %36

36:                                               ; preds = %33, %15
  %37 = phi i16 [ %35, %33 ], [ %17, %15 ]
  %38 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i16 %37, ptr %38, align 4
  %39 = zext i16 %37 to i32
  %40 = call ptr @idr_find(ptr noundef nonnull @genl_fam_idr, i32 noundef %39) #14
  %41 = icmp eq ptr %40, null
  br i1 %41, label %188, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 13, i32 0, i32 1
  store ptr %40, ptr %43, align 4
  %44 = getelementptr ptr, ptr %7, i32 10
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.genl_family, ptr %40, i32 0, i32 7
  %49 = getelementptr inbounds %struct.genl_family, ptr %40, i32 0, i32 8
  %50 = load i8, ptr %48, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, ptr %49, align 2
  %53 = zext i8 %52 to i32
  %54 = add nuw nsw i32 %53, %51
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %184, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.genl_family, ptr %40, i32 0, i32 4
  %58 = getelementptr inbounds %struct.genl_family, ptr %40, i32 0, i32 10
  %59 = getelementptr inbounds %struct.genl_family, ptr %40, i32 0, i32 13
  br label %135

60:                                               ; preds = %42
  %61 = getelementptr inbounds %struct.ctrl_dump_policy_ctx, ptr %5, i32 0, i32 5
  %62 = load i8, ptr %61, align 2
  %63 = or i8 %62, 2
  store i8 %63, ptr %61, align 2
  %64 = load ptr, ptr %44, align 4
  %65 = getelementptr i8, ptr %64, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 13, i32 0, i32 3
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.genl_family, ptr %40, i32 0, i32 7
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i8 %69, 0
  br i1 %71, label %97, label %72

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.genl_family, ptr %40, i32 0, i32 13
  %74 = load ptr, ptr %73, align 4
  br label %75

75:                                               ; preds = %94, %72
  %76 = phi i32 [ 0, %72 ], [ %95, %94 ]
  %77 = getelementptr %struct.genl_ops, ptr %74, i32 %76, i32 6
  %78 = load i8, ptr %77, align 4
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %66, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %75
  %82 = getelementptr %struct.genl_ops, ptr %74, i32 %76
  %83 = getelementptr inbounds i8, ptr %82, i32 16
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds i8, ptr %82, i32 20
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.genl_family, ptr %40, i32 0, i32 4
  %90 = load i32, ptr %89, align 4
  br label %91

91:                                               ; preds = %88, %81
  %92 = phi i32 [ %90, %88 ], [ %86, %81 ]
  %93 = icmp eq ptr %84, null
  br i1 %93, label %126, label %131

94:                                               ; preds = %75
  %95 = add nuw nsw i32 %76, 1
  %96 = icmp eq i32 %95, %70
  br i1 %96, label %97, label %75

97:                                               ; preds = %94, %60
  %98 = getelementptr inbounds %struct.genl_family, ptr %40, i32 0, i32 8
  %99 = load i8, ptr %98, align 2
  %100 = zext i8 %99 to i32
  %101 = icmp eq i8 %99, 0
  br i1 %101, label %117, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.genl_family, ptr %40, i32 0, i32 14
  %104 = load ptr, ptr %103, align 4
  br label %105

105:                                              ; preds = %114, %102
  %106 = phi i32 [ 0, %102 ], [ %115, %114 ]
  %107 = getelementptr %struct.genl_small_ops, ptr %104, i32 %106, i32 2
  %108 = load i8, ptr %107, align 4
  %109 = zext i8 %108 to i32
  %110 = icmp eq i32 %66, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.genl_family, ptr %40, i32 0, i32 4
  %113 = load i32, ptr %112, align 4
  br label %126

114:                                              ; preds = %105
  %115 = add nuw nsw i32 %106, 1
  %116 = icmp eq i32 %115, %100
  br i1 %116, label %117, label %105

117:                                              ; preds = %114, %97
  %118 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 6
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %188, label %121

121:                                              ; preds = %117
  %122 = load ptr, ptr %44, align 4
  %123 = getelementptr inbounds %struct.netlink_ext_ack, ptr %119, i32 0, i32 1
  store ptr %122, ptr %123, align 4
  %124 = load ptr, ptr %118, align 4
  %125 = getelementptr inbounds %struct.netlink_ext_ack, ptr %124, i32 0, i32 2
  store ptr null, ptr %125, align 4
  br label %188

126:                                              ; preds = %111, %91
  %127 = phi i32 [ %113, %111 ], [ %92, %91 ]
  %128 = getelementptr inbounds %struct.genl_family, ptr %40, i32 0, i32 10
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %188, label %131

131:                                              ; preds = %126, %91
  %132 = phi i32 [ %127, %126 ], [ %92, %91 ]
  %133 = phi ptr [ %129, %126 ], [ %84, %91 ]
  %134 = call i32 @netlink_policy_dump_add_policy(ptr noundef %5, ptr noundef nonnull %133, i32 noundef %132) #14
  br label %188

135:                                              ; preds = %174, %56
  %136 = phi i32 [ %54, %56 ], [ %182, %174 ]
  %137 = phi i32 [ %51, %56 ], [ %179, %174 ]
  %138 = phi i32 [ 0, %56 ], [ %177, %174 ]
  %139 = phi i32 [ 0, %56 ], [ %175, %174 ]
  %140 = phi ptr [ null, %56 ], [ %176, %174 ]
  %141 = icmp ult i32 %138, %137
  br i1 %141, label %142, label %157

142:                                              ; preds = %135
  %143 = load ptr, ptr %59, align 4
  %144 = getelementptr %struct.genl_ops, ptr %143, i32 %138
  %145 = getelementptr inbounds i8, ptr %144, i32 16
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds i8, ptr %144, i32 20
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %142
  %151 = load i32, ptr %57, align 4
  br label %152

152:                                              ; preds = %150, %142
  %153 = phi i32 [ %151, %150 ], [ %148, %142 ]
  %154 = icmp eq ptr %146, null
  br i1 %154, label %155, label %169

155:                                              ; preds = %152
  %156 = load ptr, ptr %58, align 4
  br label %165

157:                                              ; preds = %135
  %158 = icmp ugt i32 %136, %138
  br i1 %158, label %159, label %162

159:                                              ; preds = %157
  %160 = load i32, ptr %57, align 4
  %161 = load ptr, ptr %58, align 4
  br label %165

162:                                              ; preds = %157
  %163 = load i1, ptr @genl_get_cmd_by_index.__already_done, align 1
  br i1 %163, label %165, label %164, !prof !9

164:                                              ; preds = %162
  store i1 true, ptr @genl_get_cmd_by_index.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 178, i32 noundef 9, ptr noundef null) #14
  br label %165

165:                                              ; preds = %164, %162, %159, %155
  %166 = phi ptr [ %156, %155 ], [ %161, %159 ], [ %140, %162 ], [ %140, %164 ]
  %167 = phi i32 [ %153, %155 ], [ %160, %159 ], [ %139, %162 ], [ %139, %164 ]
  %168 = icmp eq ptr %166, null
  br i1 %168, label %174, label %169

169:                                              ; preds = %165, %152
  %170 = phi i32 [ %167, %165 ], [ %153, %152 ]
  %171 = phi ptr [ %166, %165 ], [ %146, %152 ]
  %172 = call i32 @netlink_policy_dump_add_policy(ptr noundef %5, ptr noundef nonnull %171, i32 noundef %170) #14
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %188

174:                                              ; preds = %169, %165
  %175 = phi i32 [ %167, %165 ], [ %170, %169 ]
  %176 = phi ptr [ null, %165 ], [ %171, %169 ]
  %177 = add nuw nsw i32 %138, 1
  %178 = load i8, ptr %48, align 1
  %179 = zext i8 %178 to i32
  %180 = load i8, ptr %49, align 2
  %181 = zext i8 %180 to i32
  %182 = add nuw nsw i32 %181, %179
  %183 = icmp ult i32 %177, %182
  br i1 %183, label %135, label %184

184:                                              ; preds = %174, %47
  %185 = load ptr, ptr %5, align 4
  %186 = icmp eq ptr %185, null
  %187 = select i1 %186, i32 -61, i32 0
  br label %188

188:                                              ; preds = %184, %169, %131, %126, %121, %117, %36, %32, %11
  %189 = phi i32 [ %134, %131 ], [ -22, %11 ], [ -2, %36 ], [ -2, %121 ], [ -2, %117 ], [ -61, %126 ], [ %187, %184 ], [ -2, %32 ], [ %172, %169 ]
  ret i32 %189
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ctrl_dumppolicy(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %8 = getelementptr inbounds %struct.ctrl_dump_policy_ctx, ptr %7, i32 0, i32 5
  %9 = load i8, ptr %8, align 2
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %291

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 2
  %14 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 1
  %15 = load i32, ptr %13, align 4
  %16 = load ptr, ptr %14, align 4
  %17 = getelementptr inbounds %struct.genl_family, ptr %16, i32 0, i32 7
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.genl_family, ptr %16, i32 0, i32 8
  %21 = load i8, ptr %20, align 2
  %22 = zext i8 %21 to i32
  %23 = add nuw nsw i32 %22, %19
  %24 = icmp ult i32 %15, %23
  br i1 %24, label %25, label %288

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 3
  %27 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %31 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 4
  br label %32

32:                                               ; preds = %275, %25
  %33 = phi ptr [ %16, %25 ], [ %276, %275 ]
  %34 = phi i8 [ %9, %25 ], [ %287, %275 ]
  %35 = phi i32 [ %23, %25 ], [ %285, %275 ]
  %36 = phi i32 [ %22, %25 ], [ %284, %275 ]
  %37 = phi i8 [ %21, %25 ], [ %283, %275 ]
  %38 = phi i32 [ %19, %25 ], [ %281, %275 ]
  %39 = phi i8 [ %18, %25 ], [ %280, %275 ]
  %40 = phi i32 [ %15, %25 ], [ %278, %275 ]
  %41 = and i8 %34, 2
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %115, label %43

43:                                               ; preds = %32
  %44 = load i32, ptr %26, align 4
  %45 = icmp eq i8 %39, 0
  br i1 %45, label %76, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.genl_family, ptr %33, i32 0, i32 13
  %48 = load ptr, ptr %47, align 4
  br label %49

49:                                               ; preds = %73, %46
  %50 = phi i32 [ 0, %46 ], [ %74, %73 ]
  %51 = getelementptr %struct.genl_ops, ptr %48, i32 %50, i32 6
  %52 = load i8, ptr %51, align 4
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %44, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %49
  %56 = getelementptr %struct.genl_ops, ptr %48, i32 %50
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds i8, ptr %56, i32 8
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds i8, ptr %56, i32 16
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds i8, ptr %56, i32 20
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds i8, ptr %56, i32 27
  %65 = load i8, ptr %64, align 1
  %66 = icmp eq i32 %63, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = getelementptr inbounds %struct.genl_family, ptr %33, i32 0, i32 4
  %69 = load i32, ptr %68, align 4
  br label %70

70:                                               ; preds = %67, %55
  %71 = phi i32 [ %69, %67 ], [ %63, %55 ]
  %72 = icmp eq ptr %61, null
  br i1 %72, label %99, label %107

73:                                               ; preds = %49
  %74 = add nuw nsw i32 %50, 1
  %75 = icmp eq i32 %74, %38
  br i1 %75, label %76, label %49

76:                                               ; preds = %73, %43
  %77 = icmp eq i8 %37, 0
  br i1 %77, label %114, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.genl_family, ptr %33, i32 0, i32 14
  %80 = load ptr, ptr %79, align 4
  br label %81

81:                                               ; preds = %96, %78
  %82 = phi i32 [ 0, %78 ], [ %97, %96 ]
  %83 = getelementptr %struct.genl_small_ops, ptr %80, i32 %82, i32 2
  %84 = load i8, ptr %83, align 4
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %44, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = getelementptr %struct.genl_small_ops, ptr %80, i32 %82
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr %struct.genl_small_ops, ptr %80, i32 %82, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr %struct.genl_small_ops, ptr %80, i32 %82, i32 5
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr inbounds %struct.genl_family, ptr %33, i32 0, i32 4
  %95 = load i32, ptr %94, align 4
  br label %99

96:                                               ; preds = %81
  %97 = add nuw nsw i32 %82, 1
  %98 = icmp eq i32 %97, %36
  br i1 %98, label %114, label %81

99:                                               ; preds = %87, %70
  %100 = phi ptr [ %89, %87 ], [ %57, %70 ]
  %101 = phi ptr [ %91, %87 ], [ %59, %70 ]
  %102 = phi i32 [ %95, %87 ], [ %71, %70 ]
  %103 = phi i8 [ %84, %87 ], [ %52, %70 ]
  %104 = phi i8 [ %93, %87 ], [ %65, %70 ]
  %105 = getelementptr inbounds %struct.genl_family, ptr %33, i32 0, i32 10
  %106 = load ptr, ptr %105, align 4
  br label %107

107:                                              ; preds = %99, %70
  %108 = phi ptr [ %57, %70 ], [ %100, %99 ]
  %109 = phi ptr [ %59, %70 ], [ %101, %99 ]
  %110 = phi ptr [ %61, %70 ], [ %106, %99 ]
  %111 = phi i32 [ %71, %70 ], [ %102, %99 ]
  %112 = phi i8 [ %52, %70 ], [ %103, %99 ]
  %113 = phi i8 [ %65, %70 ], [ %104, %99 ]
  store i32 %35, ptr %13, align 4
  br label %158

114:                                              ; preds = %96, %76
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1267, i32 noundef 9, ptr noundef null) #14
  br label %371

115:                                              ; preds = %32
  %116 = icmp ult i32 %40, %38
  br i1 %116, label %117, label %142

117:                                              ; preds = %115
  %118 = getelementptr inbounds %struct.genl_family, ptr %33, i32 0, i32 13
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr %struct.genl_ops, ptr %119, i32 %40
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds i8, ptr %120, i32 8
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds i8, ptr %120, i32 16
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds i8, ptr %120, i32 20
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr inbounds i8, ptr %120, i32 24
  %129 = load i8, ptr %128, align 4
  %130 = getelementptr inbounds i8, ptr %120, i32 27
  %131 = load i8, ptr %130, align 1
  %132 = icmp eq i32 %127, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %117
  %134 = getelementptr inbounds %struct.genl_family, ptr %33, i32 0, i32 4
  %135 = load i32, ptr %134, align 4
  br label %136

136:                                              ; preds = %133, %117
  %137 = phi i32 [ %135, %133 ], [ %127, %117 ]
  %138 = icmp eq ptr %125, null
  br i1 %138, label %139, label %167

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.genl_family, ptr %33, i32 0, i32 10
  %141 = load ptr, ptr %140, align 4
  br label %158

142:                                              ; preds = %115
  %143 = sub i32 %40, %38
  %144 = getelementptr inbounds %struct.genl_family, ptr %33, i32 0, i32 14
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr %struct.genl_small_ops, ptr %145, i32 %143
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr %struct.genl_small_ops, ptr %145, i32 %143, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr %struct.genl_small_ops, ptr %145, i32 %143, i32 2
  %151 = load i8, ptr %150, align 4
  %152 = getelementptr %struct.genl_small_ops, ptr %145, i32 %143, i32 5
  %153 = load i8, ptr %152, align 1
  %154 = getelementptr inbounds %struct.genl_family, ptr %33, i32 0, i32 4
  %155 = load i32, ptr %154, align 4
  %156 = getelementptr inbounds %struct.genl_family, ptr %33, i32 0, i32 10
  %157 = load ptr, ptr %156, align 4
  br label %158

158:                                              ; preds = %142, %139, %107
  %159 = phi i32 [ %35, %107 ], [ %40, %139 ], [ %40, %142 ]
  %160 = phi ptr [ %108, %107 ], [ %121, %139 ], [ %147, %142 ]
  %161 = phi ptr [ %109, %107 ], [ %123, %139 ], [ %149, %142 ]
  %162 = phi ptr [ %110, %107 ], [ %141, %139 ], [ %157, %142 ]
  %163 = phi i32 [ %111, %107 ], [ %137, %139 ], [ %155, %142 ]
  %164 = phi i8 [ %112, %107 ], [ %129, %139 ], [ %151, %142 ]
  %165 = phi i8 [ %113, %107 ], [ %131, %139 ], [ %153, %142 ]
  %166 = icmp eq ptr %162, null
  br i1 %166, label %275, label %167

167:                                              ; preds = %158, %136
  %168 = phi i32 [ %159, %158 ], [ %40, %136 ]
  %169 = phi i8 [ %165, %158 ], [ %131, %136 ]
  %170 = phi i8 [ %164, %158 ], [ %129, %136 ]
  %171 = phi i32 [ %163, %158 ], [ %137, %136 ]
  %172 = phi ptr [ %162, %158 ], [ %125, %136 ]
  %173 = phi ptr [ %161, %158 ], [ %123, %136 ]
  %174 = phi ptr [ %160, %158 ], [ %121, %136 ]
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %181

176:                                              ; preds = %167
  %177 = icmp ne ptr %173, null
  %178 = and i8 %169, 2
  %179 = icmp eq i8 %178, 0
  %180 = select i1 %177, i1 %179, i1 false
  br i1 %180, label %181, label %275

181:                                              ; preds = %176, %167
  %182 = load ptr, ptr %1, align 4
  %183 = getelementptr inbounds %struct.sk_buff, ptr %182, i32 0, i32 3, i32 12
  %184 = load i32, ptr %183, align 4
  %185 = load ptr, ptr %27, align 4
  %186 = getelementptr inbounds %struct.nlmsghdr, ptr %185, i32 0, i32 3
  %187 = load i32, ptr %186, align 4
  %188 = load i32, ptr @genl_ctrl, align 4
  %189 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @genl_ctrl, i32 0, i32 1), align 4
  %190 = add i32 %189, 4
  %191 = load i32, ptr %28, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %181
  %194 = load ptr, ptr %29, align 4
  %195 = load ptr, ptr %30, align 8
  %196 = ptrtoint ptr %194 to i32
  %197 = ptrtoint ptr %195 to i32
  %198 = sub i32 %196, %197
  br label %199

199:                                              ; preds = %193, %181
  %200 = phi i32 [ %198, %193 ], [ 0, %181 ]
  %201 = add i32 %189, 23
  %202 = and i32 %201, -4
  %203 = icmp slt i32 %200, %202
  br i1 %203, label %371, label %204, !prof !8

204:                                              ; preds = %199
  %205 = call ptr @__nlmsg_put(ptr noundef %0, i32 noundef %184, i32 noundef %187, i32 noundef %188, i32 noundef %190, i32 noundef 2) #14
  %206 = icmp eq ptr %205, null
  br i1 %206, label %371, label %207

207:                                              ; preds = %204
  %208 = getelementptr i8, ptr %205, i32 16
  store i8 10, ptr %208, align 2
  %209 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @genl_ctrl, i32 0, i32 3), align 4
  %210 = trunc i32 %209 to i8
  %211 = getelementptr i8, ptr %205, i32 17
  store i8 %210, ptr %211, align 1
  %212 = getelementptr i8, ptr %205, i32 18
  store i16 0, ptr %212, align 2
  %213 = getelementptr i8, ptr %205, i32 20
  %214 = icmp eq ptr %213, null
  br i1 %214, label %371, label %215

215:                                              ; preds = %207
  %216 = load i16, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #14
  store i16 %216, ptr %6, align 2
  %217 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #14
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %371

219:                                              ; preds = %215
  %220 = load ptr, ptr %30, align 8
  %221 = call i32 @nla_put(ptr noundef %0, i32 noundef 32777, i32 noundef 0, ptr noundef null) #14
  %222 = icmp slt i32 %221, 0
  %223 = icmp eq ptr %220, null
  %224 = select i1 %222, i1 true, i1 %223
  br i1 %224, label %264, label %225

225:                                              ; preds = %219
  %226 = zext i8 %170 to i32
  %227 = or i32 %226, 32768
  %228 = load ptr, ptr %30, align 8
  %229 = call i32 @nla_put(ptr noundef %0, i32 noundef %227, i32 noundef 0, ptr noundef null) #14
  %230 = icmp slt i32 %229, 0
  %231 = icmp eq ptr %228, null
  %232 = select i1 %230, i1 true, i1 %231
  br i1 %232, label %264, label %233

233:                                              ; preds = %225
  %234 = load ptr, ptr %7, align 4
  %235 = call i32 @netlink_policy_dump_get_policy_idx(ptr noundef %234, ptr noundef nonnull %172, i32 noundef %171) #14
  br i1 %175, label %239, label %236

236:                                              ; preds = %233
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 %235, ptr %5, align 4
  %237 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %264

239:                                              ; preds = %236, %233
  %240 = icmp ne ptr %173, null
  %241 = and i8 %169, 2
  %242 = icmp eq i8 %241, 0
  %243 = select i1 %240, i1 %242, i1 false
  br i1 %243, label %244, label %247

244:                                              ; preds = %239
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 %235, ptr %4, align 4
  %245 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %264

247:                                              ; preds = %244, %239
  %248 = load ptr, ptr %30, align 8
  %249 = ptrtoint ptr %248 to i32
  %250 = ptrtoint ptr %228 to i32
  %251 = sub i32 %249, %250
  %252 = trunc i32 %251 to i16
  store i16 %252, ptr %228, align 2
  %253 = load ptr, ptr %30, align 8
  %254 = ptrtoint ptr %253 to i32
  %255 = ptrtoint ptr %220 to i32
  %256 = sub i32 %254, %255
  %257 = trunc i32 %256 to i16
  store i16 %257, ptr %220, align 2
  %258 = load ptr, ptr %30, align 8
  %259 = ptrtoint ptr %258 to i32
  %260 = ptrtoint ptr %205 to i32
  %261 = sub i32 %259, %260
  store i32 %261, ptr %205, align 4
  %262 = load i32, ptr %13, align 4
  %263 = load ptr, ptr %14, align 4
  br label %275

264:                                              ; preds = %244, %236, %225, %219
  %265 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %266 = load ptr, ptr %265, align 4
  %267 = icmp ugt ptr %266, %205
  br i1 %267, label %268, label %270, !prof !8

268:                                              ; preds = %264
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  %269 = load ptr, ptr %265, align 4
  br label %270

270:                                              ; preds = %268, %264
  %271 = phi ptr [ %269, %268 ], [ %266, %264 ]
  %272 = ptrtoint ptr %205 to i32
  %273 = ptrtoint ptr %271 to i32
  %274 = sub i32 %272, %273
  call void @skb_trim(ptr noundef %0, i32 noundef %274) #14
  br label %371

275:                                              ; preds = %247, %176, %158
  %276 = phi ptr [ %33, %158 ], [ %33, %176 ], [ %263, %247 ]
  %277 = phi i32 [ %159, %158 ], [ %168, %176 ], [ %262, %247 ]
  %278 = add i32 %277, 1
  store i32 %278, ptr %13, align 4
  %279 = getelementptr inbounds %struct.genl_family, ptr %276, i32 0, i32 7
  %280 = load i8, ptr %279, align 1
  %281 = zext i8 %280 to i32
  %282 = getelementptr inbounds %struct.genl_family, ptr %276, i32 0, i32 8
  %283 = load i8, ptr %282, align 2
  %284 = zext i8 %283 to i32
  %285 = add nuw nsw i32 %284, %281
  %286 = icmp ult i32 %278, %285
  %287 = load i8, ptr %8, align 2
  br i1 %286, label %32, label %288

288:                                              ; preds = %275, %12
  %289 = phi i8 [ %9, %12 ], [ %287, %275 ]
  %290 = or i8 %289, 1
  store i8 %290, ptr %8, align 2
  br label %291

291:                                              ; preds = %288, %2
  %292 = load ptr, ptr %7, align 4
  %293 = call zeroext i1 @netlink_policy_dump_loop(ptr noundef %292) #14
  br i1 %293, label %294, label %371

294:                                              ; preds = %291
  %295 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %296 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %297 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %298 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %299 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 4
  br label %300

300:                                              ; preds = %348, %294
  %301 = load ptr, ptr %1, align 4
  %302 = getelementptr inbounds %struct.sk_buff, ptr %301, i32 0, i32 3, i32 12
  %303 = load i32, ptr %302, align 4
  %304 = load ptr, ptr %295, align 4
  %305 = getelementptr inbounds %struct.nlmsghdr, ptr %304, i32 0, i32 3
  %306 = load i32, ptr %305, align 4
  %307 = load i32, ptr @genl_ctrl, align 4
  %308 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @genl_ctrl, i32 0, i32 1), align 4
  %309 = add i32 %308, 4
  %310 = load i32, ptr %296, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %318

312:                                              ; preds = %300
  %313 = load ptr, ptr %297, align 4
  %314 = load ptr, ptr %298, align 8
  %315 = ptrtoint ptr %313 to i32
  %316 = ptrtoint ptr %314 to i32
  %317 = sub i32 %315, %316
  br label %318

318:                                              ; preds = %312, %300
  %319 = phi i32 [ %317, %312 ], [ 0, %300 ]
  %320 = add i32 %308, 23
  %321 = and i32 %320, -4
  %322 = icmp slt i32 %319, %321
  br i1 %322, label %371, label %323, !prof !8

323:                                              ; preds = %318
  %324 = call ptr @__nlmsg_put(ptr noundef %0, i32 noundef %303, i32 noundef %306, i32 noundef %307, i32 noundef %309, i32 noundef 2) #14
  %325 = icmp eq ptr %324, null
  br i1 %325, label %371, label %326

326:                                              ; preds = %323
  %327 = getelementptr i8, ptr %324, i32 16
  store i8 10, ptr %327, align 2
  %328 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @genl_ctrl, i32 0, i32 3), align 4
  %329 = trunc i32 %328 to i8
  %330 = getelementptr i8, ptr %324, i32 17
  store i8 %329, ptr %330, align 1
  %331 = getelementptr i8, ptr %324, i32 18
  store i16 0, ptr %331, align 2
  %332 = getelementptr i8, ptr %324, i32 20
  %333 = icmp eq ptr %332, null
  br i1 %333, label %371, label %334

334:                                              ; preds = %326
  %335 = load i16, ptr %299, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #14
  store i16 %335, ptr %3, align 2
  %336 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #14
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %371

338:                                              ; preds = %334
  %339 = load ptr, ptr %298, align 8
  %340 = call i32 @nla_put(ptr noundef %0, i32 noundef 32776, i32 noundef 0, ptr noundef null) #14
  %341 = icmp slt i32 %340, 0
  %342 = icmp eq ptr %339, null
  %343 = select i1 %341, i1 true, i1 %342
  br i1 %343, label %360, label %344

344:                                              ; preds = %338
  %345 = load ptr, ptr %7, align 4
  %346 = call i32 @netlink_policy_dump_write(ptr noundef %0, ptr noundef %345) #14
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %360

348:                                              ; preds = %344
  %349 = load ptr, ptr %298, align 8
  %350 = ptrtoint ptr %349 to i32
  %351 = ptrtoint ptr %339 to i32
  %352 = sub i32 %350, %351
  %353 = trunc i32 %352 to i16
  store i16 %353, ptr %339, align 2
  %354 = load ptr, ptr %298, align 8
  %355 = ptrtoint ptr %354 to i32
  %356 = ptrtoint ptr %324 to i32
  %357 = sub i32 %355, %356
  store i32 %357, ptr %324, align 4
  %358 = load ptr, ptr %7, align 4
  %359 = call zeroext i1 @netlink_policy_dump_loop(ptr noundef %358) #14
  br i1 %359, label %300, label %371

360:                                              ; preds = %344, %338
  %361 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %362 = load ptr, ptr %361, align 4
  %363 = icmp ugt ptr %362, %324
  br i1 %363, label %364, label %366, !prof !8

364:                                              ; preds = %360
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  %365 = load ptr, ptr %361, align 4
  br label %366

366:                                              ; preds = %364, %360
  %367 = phi ptr [ %365, %364 ], [ %362, %360 ]
  %368 = ptrtoint ptr %324 to i32
  %369 = ptrtoint ptr %367 to i32
  %370 = sub i32 %368, %369
  call void @skb_trim(ptr noundef %0, i32 noundef %370) #14
  br label %371

371:                                              ; preds = %366, %348, %334, %326, %323, %318, %291, %270, %215, %207, %204, %199, %114
  %372 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %373 = load i32, ptr %372, align 8
  ret i32 %373
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ctrl_dumppolicy_done(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  tail call void @netlink_policy_dump_free(ptr noundef %3) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_policy_dump_add_policy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_policy_dump_loop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_policy_dump_write(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_policy_dump_get_policy_idx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlink_policy_dump_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @genl_pernet_init(ptr noundef %0) #5 section ".init.text" {
  %2 = alloca %struct.netlink_kernel_cfg, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef nonnull align 4 dereferenceable(28) @__const.genl_pernet_init.cfg, i32 28, i1 false)
  %3 = call ptr @__netlink_kernel_create(ptr noundef %0, i32 noundef 16, ptr noundef null, ptr noundef nonnull %2) #14
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 21
  store ptr %3, ptr %4, align 8
  %5 = icmp eq ptr %3, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.8) #17
  unreachable

7:                                                ; preds = %1
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #14
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @genl_pernet_exit(ptr nocapture noundef %0) #12 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 8
  tail call void @netlink_kernel_release(ptr noundef %3) #14
  store ptr null, ptr %2, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @genl_rcv(ptr noundef %0) #0 {
  tail call void @down_read(ptr noundef nonnull @cb_lock) #14
  %2 = tail call i32 @netlink_rcv_skb(ptr noundef %0, ptr noundef nonnull @genl_rcv_msg) #14
  tail call void @up_read(ptr noundef nonnull @cb_lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @genl_bind(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  tail call void @down_write(ptr noundef nonnull @cb_lock) #14
  tail call void @mutex_lock(ptr noundef nonnull @genl_mutex) #14
  store i32 0, ptr %3, align 4
  %4 = call ptr @idr_get_next(ptr noundef nonnull @genl_fam_idr, ptr noundef nonnull %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %37, label %6

6:                                                ; preds = %32, %2
  %7 = phi ptr [ %35, %32 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.genl_family, ptr %7, i32 0, i32 9
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %6
  %12 = zext i8 %9 to i32
  %13 = getelementptr inbounds %struct.genl_family, ptr %7, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 %1, %14
  %16 = icmp sgt i32 %15, -1
  %17 = icmp slt i32 %15, %12
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %32

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.genl_family, ptr %7, i32 0, i32 15
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr %struct.genl_multicast_group, ptr %21, i32 %15, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, 16
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = call zeroext i1 @ns_capable(ptr noundef %28, i32 noundef 12) #14
  %30 = xor i1 %29, true
  %31 = sext i1 %30 to i32
  br label %37

32:                                               ; preds = %11, %6
  %33 = load i32, ptr %3, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %3, align 4
  %35 = call ptr @idr_get_next(ptr noundef nonnull @genl_fam_idr, ptr noundef nonnull %3) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %6

37:                                               ; preds = %32, %26, %19, %2
  %38 = phi i32 [ 0, %19 ], [ %31, %26 ], [ 0, %2 ], [ 0, %32 ]
  call void @mutex_unlock(ptr noundef nonnull @genl_mutex) #14
  call void @up_write(ptr noundef nonnull @cb_lock) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @genl_rcv_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.genl_info, align 4
  %5 = alloca %struct.genl_start_context, align 4
  %6 = alloca %struct.netlink_dump_control, align 4
  %7 = alloca %struct.netlink_dump_control, align 4
  %8 = alloca %struct.genl_ops, align 4
  %9 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 1
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = tail call ptr @idr_find(ptr noundef nonnull @genl_fam_idr, i32 noundef %11) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %195, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.genl_family, ptr %12, i32 0, i32 6
  %16 = load i8, ptr %15, align 4
  %17 = and i8 %16, 2
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void @mutex_lock(ptr noundef nonnull @genl_mutex) #14
  br label %20

20:                                               ; preds = %19, %14
  %21 = getelementptr i8, ptr %1, i32 16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, i8 0, i32 28, i1 false) #14, !annotation !17
  %22 = getelementptr inbounds %struct.genl_family, ptr %12, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 4
  %25 = load i32, ptr %1, align 4
  %26 = add i32 %23, 20
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %189, label %28

28:                                               ; preds = %20
  %29 = load i8, ptr %21, align 2
  %30 = getelementptr inbounds %struct.genl_family, ptr %12, i32 0, i32 7
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i8 %31, 0
  br i1 %33, label %60, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.genl_family, ptr %12, i32 0, i32 13
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %57, %34
  %38 = phi i32 [ 0, %34 ], [ %58, %57 ]
  %39 = getelementptr %struct.genl_ops, ptr %36, i32 %38, i32 6
  %40 = load i8, ptr %39, align 4
  %41 = icmp eq i8 %40, %29
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = getelementptr %struct.genl_ops, ptr %36, i32 %38
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, ptr noundef align 4 dereferenceable(28) %43, i32 28, i1 false) #14
  %44 = getelementptr inbounds %struct.genl_ops, ptr %8, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.genl_family, ptr %12, i32 0, i32 4
  %49 = load i32, ptr %48, align 4
  store i32 %49, ptr %44, align 4
  br label %50

50:                                               ; preds = %47, %42
  %51 = getelementptr inbounds %struct.genl_ops, ptr %8, i32 0, i32 4
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %99

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.genl_family, ptr %12, i32 0, i32 10
  %56 = load ptr, ptr %55, align 4
  store ptr %56, ptr %51, align 4
  br label %99

57:                                               ; preds = %37
  %58 = add nuw nsw i32 %38, 1
  %59 = icmp eq i32 %58, %32
  br i1 %59, label %60, label %37

60:                                               ; preds = %57, %28
  %61 = getelementptr inbounds %struct.genl_family, ptr %12, i32 0, i32 8
  %62 = load i8, ptr %61, align 2
  %63 = zext i8 %62 to i32
  %64 = icmp eq i8 %62, 0
  br i1 %64, label %189, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.genl_family, ptr %12, i32 0, i32 14
  %67 = load ptr, ptr %66, align 4
  br label %68

68:                                               ; preds = %96, %65
  %69 = phi i32 [ 0, %65 ], [ %97, %96 ]
  %70 = getelementptr %struct.genl_small_ops, ptr %67, i32 %69, i32 2
  %71 = load i8, ptr %70, align 4
  %72 = icmp eq i8 %71, %29
  br i1 %72, label %73, label %96

73:                                               ; preds = %68
  %74 = getelementptr %struct.genl_small_ops, ptr %67, i32 %69
  %75 = load ptr, ptr %74, align 4
  store ptr %75, ptr %8, align 4
  %76 = getelementptr %struct.genl_small_ops, ptr %67, i32 %69, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.genl_ops, ptr %8, i32 0, i32 2
  store ptr %77, ptr %78, align 4
  %79 = load i8, ptr %70, align 4
  %80 = getelementptr inbounds %struct.genl_ops, ptr %8, i32 0, i32 6
  store i8 %79, ptr %80, align 4
  %81 = getelementptr %struct.genl_small_ops, ptr %67, i32 %69, i32 3
  %82 = load i8, ptr %81, align 1
  %83 = getelementptr inbounds %struct.genl_ops, ptr %8, i32 0, i32 7
  store i8 %82, ptr %83, align 1
  %84 = getelementptr %struct.genl_small_ops, ptr %67, i32 %69, i32 4
  %85 = load i8, ptr %84, align 2
  %86 = getelementptr inbounds %struct.genl_ops, ptr %8, i32 0, i32 8
  store i8 %85, ptr %86, align 2
  %87 = getelementptr %struct.genl_small_ops, ptr %67, i32 %69, i32 5
  %88 = load i8, ptr %87, align 1
  %89 = getelementptr inbounds %struct.genl_ops, ptr %8, i32 0, i32 9
  store i8 %88, ptr %89, align 1
  %90 = getelementptr inbounds %struct.genl_family, ptr %12, i32 0, i32 4
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.genl_ops, ptr %8, i32 0, i32 5
  store i32 %91, ptr %92, align 4
  %93 = getelementptr inbounds %struct.genl_family, ptr %12, i32 0, i32 10
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.genl_ops, ptr %8, i32 0, i32 4
  store ptr %94, ptr %95, align 4
  br label %99

96:                                               ; preds = %68
  %97 = add nuw nsw i32 %69, 1
  %98 = icmp eq i32 %97, %63
  br i1 %98, label %189, label %68

99:                                               ; preds = %73, %54, %50
  %100 = getelementptr inbounds %struct.genl_ops, ptr %8, i32 0, i32 8
  %101 = load i8, ptr %100, align 2
  %102 = and i8 %101, 1
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %99
  %105 = tail call zeroext i1 @netlink_capable(ptr noundef %0, i32 noundef 12) #14
  br i1 %105, label %106, label %189

106:                                              ; preds = %104, %99
  %107 = and i8 %101, 16
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %111 = tail call zeroext i1 @netlink_ns_capable(ptr noundef %0, ptr noundef %110, i32 noundef 12) #14
  br i1 %111, label %112, label %189

112:                                              ; preds = %109, %106
  %113 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %114 = load i16, ptr %113, align 2
  %115 = and i16 %114, 768
  %116 = icmp eq i16 %115, 768
  br i1 %116, label %117, label %151

117:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #14
  %118 = getelementptr inbounds %struct.genl_ops, ptr %8, i32 0, i32 2
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %149, label %121

121:                                              ; preds = %117
  store ptr %12, ptr %5, align 4
  %122 = getelementptr inbounds %struct.genl_start_context, ptr %5, i32 0, i32 1
  store ptr %1, ptr %122, align 4
  %123 = getelementptr inbounds %struct.genl_start_context, ptr %5, i32 0, i32 2
  store ptr %2, ptr %123, align 4
  %124 = getelementptr inbounds %struct.genl_start_context, ptr %5, i32 0, i32 3
  store ptr %8, ptr %124, align 4
  %125 = getelementptr inbounds %struct.genl_start_context, ptr %5, i32 0, i32 4
  store i32 %24, ptr %125, align 4
  %126 = load i8, ptr %15, align 4
  %127 = and i8 %126, 2
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %121
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  store ptr @genl_start, ptr %6, align 4
  %130 = getelementptr inbounds %struct.netlink_dump_control, ptr %6, i32 0, i32 1
  store ptr @genl_lock_dumpit, ptr %130, align 4
  %131 = getelementptr inbounds %struct.netlink_dump_control, ptr %6, i32 0, i32 2
  store ptr @genl_lock_done, ptr %131, align 4
  %132 = getelementptr inbounds %struct.netlink_dump_control, ptr %6, i32 0, i32 3
  store ptr %5, ptr %132, align 4
  %133 = getelementptr inbounds %struct.netlink_dump_control, ptr %6, i32 0, i32 4
  %134 = getelementptr inbounds %struct.genl_family, ptr %12, i32 0, i32 16
  %135 = load ptr, ptr %134, align 4
  store ptr %135, ptr %133, align 4
  %136 = getelementptr inbounds %struct.netlink_dump_control, ptr %6, i32 0, i32 5
  store i32 0, ptr %136, align 4
  call void @mutex_unlock(ptr noundef nonnull @genl_mutex) #14
  %137 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %138 = call i32 @__netlink_dump_start(ptr noundef %137, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #14
  call void @mutex_lock(ptr noundef nonnull @genl_mutex) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  br label %149

139:                                              ; preds = %121
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #14
  store ptr @genl_start, ptr %7, align 4
  %140 = getelementptr inbounds %struct.netlink_dump_control, ptr %7, i32 0, i32 1
  store ptr %119, ptr %140, align 4
  %141 = getelementptr inbounds %struct.netlink_dump_control, ptr %7, i32 0, i32 2
  store ptr @genl_parallel_done, ptr %141, align 4
  %142 = getelementptr inbounds %struct.netlink_dump_control, ptr %7, i32 0, i32 3
  store ptr %5, ptr %142, align 4
  %143 = getelementptr inbounds %struct.netlink_dump_control, ptr %7, i32 0, i32 4
  %144 = getelementptr inbounds %struct.genl_family, ptr %12, i32 0, i32 16
  %145 = load ptr, ptr %144, align 4
  store ptr %145, ptr %143, align 4
  %146 = getelementptr inbounds %struct.netlink_dump_control, ptr %7, i32 0, i32 5
  store i32 0, ptr %146, align 4
  %147 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 8
  %148 = call i32 @__netlink_dump_start(ptr noundef %147, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #14
  br label %149

149:                                              ; preds = %139, %129, %117
  %150 = phi i32 [ -95, %117 ], [ %148, %139 ], [ %138, %129 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #14
  br label %189

151:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #14
  %152 = load ptr, ptr %8, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %187, label %154

154:                                              ; preds = %151
  %155 = call fastcc ptr @genl_family_rcv_msg_attrs_parse(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %8, i32 noundef %24, i32 noundef 1) #14
  %156 = icmp ugt ptr %155, inttoptr (i32 -4096 to ptr)
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = ptrtoint ptr %155 to i32
  br label %187

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 3
  %161 = load i32, ptr %160, align 4
  store i32 %161, ptr %4, align 4
  %162 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr inbounds %struct.genl_info, ptr %4, i32 0, i32 1
  store i32 %163, ptr %164, align 4
  %165 = getelementptr inbounds %struct.genl_info, ptr %4, i32 0, i32 2
  store ptr %1, ptr %165, align 4
  %166 = getelementptr inbounds %struct.genl_info, ptr %4, i32 0, i32 3
  store ptr %21, ptr %166, align 4
  %167 = getelementptr i8, ptr %1, i32 20
  %168 = getelementptr inbounds %struct.genl_info, ptr %4, i32 0, i32 4
  store ptr %167, ptr %168, align 4
  %169 = getelementptr inbounds %struct.genl_info, ptr %4, i32 0, i32 5
  store ptr %155, ptr %169, align 4
  %170 = getelementptr inbounds %struct.genl_info, ptr %4, i32 0, i32 8
  store ptr %2, ptr %170, align 4
  %171 = getelementptr inbounds %struct.genl_info, ptr %4, i32 0, i32 7
  store i64 0, ptr %171, align 4
  %172 = getelementptr inbounds %struct.genl_family, ptr %12, i32 0, i32 11
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %178, label %175

175:                                              ; preds = %159
  %176 = call i32 %173(ptr noundef nonnull %8, ptr noundef %0, ptr noundef nonnull %4) #14
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %175, %159
  %179 = load ptr, ptr %8, align 4
  %180 = call i32 %179(ptr noundef %0, ptr noundef nonnull %4) #14
  %181 = getelementptr inbounds %struct.genl_family, ptr %12, i32 0, i32 12
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %178
  call void %182(ptr noundef nonnull %8, ptr noundef %0, ptr noundef nonnull %4) #14
  br label %185

185:                                              ; preds = %184, %178, %175
  %186 = phi i32 [ %176, %175 ], [ %180, %184 ], [ %180, %178 ]
  call void @kfree(ptr noundef %155) #14
  br label %187

187:                                              ; preds = %185, %157, %151
  %188 = phi i32 [ %158, %157 ], [ %186, %185 ], [ -95, %151 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #14
  br label %189

189:                                              ; preds = %187, %149, %109, %104, %96, %60, %20
  %190 = phi i32 [ %150, %149 ], [ %188, %187 ], [ -22, %20 ], [ -1, %104 ], [ -1, %109 ], [ -95, %60 ], [ -95, %96 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #14
  %191 = load i8, ptr %15, align 4
  %192 = and i8 %191, 2
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  call void @mutex_unlock(ptr noundef nonnull @genl_mutex) #14
  br label %195

195:                                              ; preds = %194, %189, %3
  %196 = phi i32 [ -2, %3 ], [ %190, %194 ], [ %190, %189 ]
  ret i32 %196
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_ns_capable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @genl_start(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.genl_start_context, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.genl_ops, ptr %5, i32 0, i32 9
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 2
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.genl_start_context, ptr %3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.genl_start_context, ptr %3, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 16
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %59, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.genl_start_context, ptr %3, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call fastcc ptr @genl_family_rcv_msg_attrs_parse(ptr noundef %12, ptr noundef %20, ptr noundef %5, i32 noundef %15, i32 noundef 4)
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = ptrtoint ptr %21 to i32
  br label %59

25:                                               ; preds = %18, %1
  %26 = phi ptr [ null, %1 ], [ %21, %18 ]
  %27 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %28 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3264, i32 noundef 36) #18
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  tail call void @kfree(ptr noundef %26) #14
  br label %59

31:                                               ; preds = %25
  %32 = load ptr, ptr %3, align 4
  store ptr %32, ptr %28, align 8
  %33 = getelementptr inbounds %struct.genl_dumpit_info, ptr %28, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %33, ptr noundef align 4 dereferenceable(28) %5, i32 28, i1 false)
  %34 = getelementptr inbounds %struct.genl_dumpit_info, ptr %28, i32 0, i32 2
  store ptr %26, ptr %34, align 8
  store ptr %28, ptr %2, align 4
  %35 = getelementptr inbounds %struct.genl_ops, ptr %5, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %59, label %38

38:                                               ; preds = %31
  %39 = load ptr, ptr %3, align 4
  %40 = getelementptr inbounds %struct.genl_family, ptr %39, i32 0, i32 6
  %41 = load i8, ptr %40, align 4
  %42 = and i8 %41, 2
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  tail call void @mutex_lock(ptr noundef nonnull @genl_mutex) #14
  %45 = load ptr, ptr %35, align 4
  br label %46

46:                                               ; preds = %44, %38
  %47 = phi ptr [ %45, %44 ], [ %36, %38 ]
  %48 = tail call i32 %47(ptr noundef %0) #14
  %49 = load ptr, ptr %3, align 4
  %50 = getelementptr inbounds %struct.genl_family, ptr %49, i32 0, i32 6
  %51 = load i8, ptr %50, align 4
  %52 = and i8 %51, 2
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  tail call void @mutex_unlock(ptr noundef nonnull @genl_mutex) #14
  br label %55

55:                                               ; preds = %54, %46
  %56 = icmp eq i32 %48, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %55
  %58 = load ptr, ptr %34, align 8
  tail call void @kfree(ptr noundef %58) #14
  tail call void @kfree(ptr noundef nonnull %28) #14
  store ptr null, ptr %2, align 4
  br label %59

59:                                               ; preds = %57, %55, %31, %30, %23, %10
  %60 = phi i32 [ -12, %30 ], [ %24, %23 ], [ -22, %10 ], [ %48, %57 ], [ 0, %55 ], [ 0, %31 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @genl_lock_dumpit(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  tail call void @mutex_lock(ptr noundef nonnull @genl_mutex) #14
  %5 = getelementptr inbounds %struct.genl_dumpit_info, ptr %4, i32 0, i32 1, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, ptr noundef %1) #14
  tail call void @mutex_unlock(ptr noundef nonnull @genl_mutex) #14
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @genl_lock_done(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.genl_dumpit_info, ptr %3, i32 0, i32 1, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @genl_mutex) #14
  %8 = load ptr, ptr %4, align 4
  %9 = tail call i32 %8(ptr noundef %0) #14
  tail call void @mutex_unlock(ptr noundef nonnull @genl_mutex) #14
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ %9, %7 ], [ 0, %1 ]
  %12 = getelementptr inbounds %struct.genl_dumpit_info, ptr %3, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #14
  tail call void @kfree(ptr noundef %3) #14
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netlink_dump_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @genl_parallel_done(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.genl_dumpit_info, ptr %3, i32 0, i32 1, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0) #14
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  %11 = getelementptr inbounds %struct.genl_dumpit_info, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %12) #14
  tail call void @kfree(ptr noundef %3) #14
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @genl_family_rcv_msg_attrs_parse(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.genl_ops, ptr %2, i32 0, i32 9
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, %4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 31, i32 0
  %12 = getelementptr inbounds %struct.genl_ops, ptr %2, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %5
  %16 = add i32 %13, 1
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 4) #14
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %45, label %19, !prof !8

19:                                               ; preds = %15
  %20 = extractvalue { i32, i1 } %17, 0
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3264) #15
  %22 = icmp eq ptr %21, null
  br i1 %22, label %45, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 4
  %25 = add i32 %3, 16
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #14
  %28 = icmp eq ptr %1, null
  br i1 %28, label %42, label %29

29:                                               ; preds = %27
  store ptr @__nlmsg_parse.__msg, ptr %1, align 4
  br label %42

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.genl_ops, ptr %2, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %12, align 4
  %34 = getelementptr i8, ptr %0, i32 16
  %35 = add i32 %3, 3
  %36 = and i32 %35, -4
  %37 = getelementptr i8, ptr %34, i32 %36
  %38 = sub i32 -16, %36
  %39 = add i32 %38, %24
  %40 = tail call i32 @__nla_parse(ptr noundef nonnull %21, i32 noundef %33, ptr noundef %37, i32 noundef %39, ptr noundef %32, i32 noundef %11, ptr noundef %1) #14
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %30, %29, %27
  %43 = phi i32 [ %40, %30 ], [ -22, %29 ], [ -22, %27 ]
  tail call void @kfree(ptr noundef nonnull %21) #14
  %44 = inttoptr i32 %43 to ptr
  br label %45

45:                                               ; preds = %42, %30, %19, %15, %5
  %46 = phi ptr [ %44, %42 ], [ null, %5 ], [ %21, %30 ], [ inttoptr (i32 -12 to ptr), %19 ], [ inttoptr (i32 -12 to ptr), %15 ]
  ret ptr %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netlink_kernel_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlink_kernel_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(1) }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2155392430, i64 2155392918, i64 2155392467, i64 2155392523, i64 2155392557, i64 2155392581, i64 2155392622, i64 2155392643, i64 2155392671, i64 2155392705}
!11 = !{i64 2155393460, i64 2155393948, i64 2155393497, i64 2155393553, i64 2155393587, i64 2155393611, i64 2155393652, i64 2155393673, i64 2155393701, i64 2155393735}
!12 = !{i64 2155394542, i64 2155395030, i64 2155394579, i64 2155394635, i64 2155394669, i64 2155394693, i64 2155394734, i64 2155394755, i64 2155394783, i64 2155394817}
!13 = !{i64 2155395624, i64 2155396112, i64 2155395661, i64 2155395717, i64 2155395751, i64 2155395775, i64 2155395816, i64 2155395837, i64 2155395865, i64 2155395899}
!14 = !{i64 2149077062}
!15 = !{i64 2149077279}
!16 = !{i64 2155479818, i64 2155480307, i64 2155479855, i64 2155479911, i64 2155479945, i64 2155479969, i64 2155480010, i64 2155480031, i64 2155480059, i64 2155480093}
!17 = !{!"auto-init"}
