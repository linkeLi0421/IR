; ModuleID = '/llk/IR/net/can/gw.c_pt.bc'
source_filename = "../net/can/gw.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.115 }
%union.anon.115 = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.cgw_job = type { %struct.hlist_node, %struct.callback_head, i32, i32, i32, [4 x i8], %struct.cf_mod, %union.anon.139, %union.anon.140, %union.anon.141, i8, i8, i16, [4 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.cf_mod = type { %struct.anon.135, %struct.anon.136, [16 x ptr], %struct.anon.137, %struct.anon.138, i32 }
%struct.anon.135 = type { %struct.canfd_frame, %struct.canfd_frame, %struct.canfd_frame, %struct.canfd_frame }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.anon.136 = type { i8, i8, i8, i8 }
%struct.anon.137 = type { %struct.cgw_csum_xor, %struct.cgw_csum_crc8 }
%struct.cgw_csum_xor = type { i8, i8, i8, i8 }
%struct.cgw_csum_crc8 = type { i8, i8, i8, i8, i8, [256 x i8], i8, [20 x i8] }
%struct.anon.138 = type { ptr, ptr }
%union.anon.139 = type { ptr }
%union.anon.140 = type { ptr }
%union.anon.141 = type { %struct.can_can_gw }
%struct.can_can_gw = type { %struct.can_filter, i32, i32 }
%struct.can_filter = type { i32, i32 }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.120, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.134, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.120 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.cgw_fdframe_mod = type <{ %struct.canfd_frame, i8 }>
%struct.cgw_frame_mod = type <{ %struct.can_frame, i8 }>
%struct.can_frame = type { i32, %union.anon.142, i8, i8, i8, [8 x i8] }
%union.anon.142 = type { i8 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.124 }
%union.anon.124 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_description418 = internal constant [42 x i8] c"can_gw.description=PF_CAN netlink gateway\00", section ".modinfo", align 1
@__UNIQUE_ID_file419 = internal constant [27 x i8] c"can_gw.file=net/can/can-gw\00", section ".modinfo", align 1
@__UNIQUE_ID_license420 = internal constant [28 x i8] c"can_gw.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author421 = internal constant [62 x i8] c"can_gw.author=Oliver Hartkopp <oliver.hartkopp@volkswagen.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias422 = internal constant [20 x i8] c"can_gw.alias=can-gw\00", section ".modinfo", align 1
@__param_str_max_hops = internal constant [16 x i8] c"can_gw.max_hops\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@max_hops = internal global i32 1, section ".data..read_mostly", align 4
@__param_max_hops = internal constant %struct.kernel_param { ptr @__param_str_max_hops, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.115 { ptr @max_hops } }, section "__param", align 4
@__UNIQUE_ID_max_hopstype423 = internal constant [30 x i8] c"can_gw.parmtype=max_hops:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_max_hops424 = internal constant [101 x i8] c"can_gw.parm=max_hops:maximum can-gw routing hops for CAN frames (valid values: 1-6 hops, default: 1)\00", section ".modinfo", align 1
@notifier = internal global %struct.notifier_block zeroinitializer, align 4
@cangw_pernet_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @cangw_pernet_init, ptr null, ptr @cangw_pernet_exit, ptr null, ptr null, i32 0 }, align 4
@cgw_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__initcall__kmod_can_gw__433_1321_cgw_module_init6 = internal global ptr @cgw_module_init, section ".initcall6.init", align 4
@__exitcall_cgw_module_exit = internal global ptr @cgw_module_exit, section ".exitcall.exit", align 4
@cgw_remove_all_jobs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [13 x i8] c"net/can/gw.c\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"\016can: netlink gateway - max_hops=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"can_gw\00", align 1
@cgw_notifier.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@init_net = external dso_local global %struct.net, align 64
@.str.4 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1
@cgw_create_job.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cgw_create_job.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@cgw_policy = internal constant [19 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 17, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 17, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 17, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 17, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 282, %union.anon.74 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon.74 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 73, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 73, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 73, %union.anon.74 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 73, %union.anon.74 zeroinitializer }], align 4
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"gw\00", align 1
@cgw_remove_job.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias422, ptr @__UNIQUE_ID_author421, ptr @__UNIQUE_ID_description418, ptr @__UNIQUE_ID_file419, ptr @__UNIQUE_ID_license420, ptr @__UNIQUE_ID_max_hops424, ptr @__UNIQUE_ID_max_hopstype423, ptr @__exitcall_cgw_module_exit, ptr @__initcall__kmod_can_gw__433_1321_cgw_module_init6, ptr @__param_max_hops, ptr @cgw_module_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @cgw_module_exit() #0 section ".exit.text" {
  tail call void @rtnl_unregister_all(i32 noundef 29) #17
  %1 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @notifier) #17
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @cangw_pernet_ops) #17
  tail call void @rcu_barrier() #17
  %2 = load ptr, ptr @cgw_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unregister_all(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cgw_module_init() #0 section ".init.text" {
  %1 = load i32, ptr @max_hops, align 4
  %2 = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 6)
  store i32 %3, ptr @max_hops, align 4
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %3) #18
  %5 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @cangw_pernet_ops) #17
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %0
  %8 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.3, i32 noundef 720, i32 noundef 0, i32 noundef 0, ptr noundef null) #17
  store ptr %8, ptr @cgw_cache, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %33, label %10

10:                                               ; preds = %7
  store ptr @cgw_notifier, ptr @notifier, align 4
  %11 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @notifier) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 29, i32 noundef 26, ptr noundef null, ptr noundef nonnull @cgw_dump_jobs, i32 noundef 0) #17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 29, i32 noundef 24, ptr noundef nonnull @cgw_create_job, ptr noundef null, i32 noundef 0) #17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 29, i32 noundef 25, ptr noundef nonnull @cgw_remove_job, ptr noundef null, i32 noundef 0) #17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @rtnl_unregister(i32 noundef 29, i32 noundef 24) #17
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi i32 [ %17, %16 ], [ %20, %22 ]
  %26 = tail call i32 @rtnl_unregister(i32 noundef 29, i32 noundef 26) #17
  br label %27

27:                                               ; preds = %24, %13
  %28 = phi i32 [ %14, %13 ], [ %25, %24 ]
  %29 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @notifier) #17
  br label %30

30:                                               ; preds = %27, %10
  %31 = phi i32 [ %11, %10 ], [ %28, %27 ]
  %32 = load ptr, ptr @cgw_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %32) #17
  br label %33

33:                                               ; preds = %30, %7
  %34 = phi i32 [ %31, %30 ], [ -12, %7 ]
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @cangw_pernet_ops) #17
  br label %35

35:                                               ; preds = %33, %19, %0
  %36 = phi i32 [ %34, %33 ], [ %5, %0 ], [ 0, %19 ]
  ret i32 %36
}

; Function Attrs: argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cangw_pernet_init(ptr nocapture noundef writeonly %0) #2 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 15
  store ptr null, ptr %2, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cangw_pernet_exit(ptr noundef %0) #3 section ".ref.text" {
  tail call void @rtnl_lock() #17
  tail call fastcc void @cgw_remove_all_jobs(ptr noundef %0)
  tail call void @rtnl_unlock() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cgw_remove_all_jobs(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @rtnl_is_locked() #17
  %3 = icmp eq i32 %2, 0
  %4 = load i1, ptr @cgw_remove_all_jobs.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %1
  store i1 true, ptr @cgw_remove_all_jobs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1153, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1153) #17
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %20, %8
  %13 = phi ptr [ %14, %20 ], [ %10, %8 ]
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  store volatile ptr %14, ptr %16, align 4
  %17 = icmp eq ptr %14, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.hlist_node, ptr %14, i32 0, i32 1
  store volatile ptr %16, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %12
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %15, align 4
  %21 = getelementptr inbounds %struct.cgw_job, ptr %13, i32 0, i32 7
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.cgw_job, ptr %13, i32 0, i32 9
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.cgw_job, ptr %13, i32 0, i32 9, i32 0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  tail call void @can_rx_unregister(ptr noundef %0, ptr noundef %22, i32 noundef %24, i32 noundef %26, ptr noundef nonnull @can_can_gw_rcv, ptr noundef nonnull %13) #17
  tail call void @synchronize_rcu() #17
  %27 = load ptr, ptr @cgw_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %27, ptr noundef nonnull %13) #17
  br i1 %17, label %28, label %12

28:                                               ; preds = %20, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_rx_unregister(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @can_can_gw_rcv(ptr noundef %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.cgw_job, ptr %1, i32 0, i32 12
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, 8
  %6 = icmp eq i16 %5, 0
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  br i1 %6, label %11, label %9

9:                                                ; preds = %2
  %10 = icmp eq i32 %8, 72
  br i1 %10, label %13, label %194

11:                                               ; preds = %2
  %12 = icmp eq i32 %8, 16
  br i1 %12, label %13, label %194

13:                                               ; preds = %11, %9
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, 96
  %17 = icmp eq i16 %16, 32
  br i1 %17, label %19, label %18, !prof !9

18:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/can/gw.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 486, 0\0A.popsection", ""() #17, !srcloc !10
  unreachable

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  %23 = load i32, ptr @max_hops, align 4
  %24 = icmp ugt i32 %23, %22
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.cgw_job, ptr %1, i32 0, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 8
  br label %194

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.cgw_job, ptr %1, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 14
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.cgw_job, ptr %1, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %37, align 4
  br label %194

40:                                               ; preds = %29
  %41 = and i16 %4, 4
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %45 = load ptr, ptr %44, align 8
  %46 = load i32, ptr %45, align 8
  %47 = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 17
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %194, label %50

50:                                               ; preds = %43, %40
  %51 = getelementptr inbounds %struct.cgw_job, ptr %1, i32 0, i32 6
  %52 = getelementptr %struct.cgw_job, ptr %1, i32 0, i32 6, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = tail call ptr @skb_copy(ptr noundef %0, i32 noundef 2592) #17
  br label %59

57:                                               ; preds = %50
  %58 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #17
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi ptr [ %56, %55 ], [ %58, %57 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.cgw_job, ptr %1, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 4
  br label %194

66:                                               ; preds = %59
  %67 = load i16, ptr %20, align 4
  %68 = add i16 %67, 1
  %69 = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 13, i32 0, i32 4
  store i16 %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.cgw_job, ptr %1, i32 0, i32 11
  %71 = load i8, ptr %70, align 1
  %72 = icmp ne i8 %71, 0
  %73 = icmp eq i16 %67, 0
  %74 = select i1 %72, i1 %73, i1 false
  br i1 %74, label %75, label %81

75:                                               ; preds = %66
  %76 = zext i8 %71 to i32
  %77 = load i32, ptr @max_hops, align 4
  %78 = sub i32 %77, %76
  %79 = trunc i32 %78 to i16
  %80 = add i16 %79, 1
  store i16 %80, ptr %69, align 4
  br label %81

81:                                               ; preds = %75, %66
  %82 = load ptr, ptr %30, align 4
  %83 = getelementptr inbounds %struct.anon.49, ptr %60, i32 0, i32 2
  store ptr %82, ptr %83, align 8
  %84 = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 17
  %85 = load ptr, ptr %84, align 4
  %86 = load ptr, ptr %52, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %173, label %88

88:                                               ; preds = %81
  tail call void %86(ptr noundef %85, ptr noundef %51) #17
  %89 = getelementptr %struct.cgw_job, ptr %1, i32 0, i32 6, i32 2, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %149, label %92

92:                                               ; preds = %88
  tail call void %90(ptr noundef %85, ptr noundef %51) #17
  %93 = getelementptr %struct.cgw_job, ptr %1, i32 0, i32 6, i32 2, i32 2
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %149, label %96

96:                                               ; preds = %92
  tail call void %94(ptr noundef %85, ptr noundef %51) #17
  %97 = getelementptr %struct.cgw_job, ptr %1, i32 0, i32 6, i32 2, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %149, label %100

100:                                              ; preds = %96
  tail call void %98(ptr noundef %85, ptr noundef %51) #17
  %101 = getelementptr %struct.cgw_job, ptr %1, i32 0, i32 6, i32 2, i32 4
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %149, label %104

104:                                              ; preds = %100
  tail call void %102(ptr noundef %85, ptr noundef %51) #17
  %105 = getelementptr %struct.cgw_job, ptr %1, i32 0, i32 6, i32 2, i32 5
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %149, label %108

108:                                              ; preds = %104
  tail call void %106(ptr noundef %85, ptr noundef %51) #17
  %109 = getelementptr %struct.cgw_job, ptr %1, i32 0, i32 6, i32 2, i32 6
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %149, label %112

112:                                              ; preds = %108
  tail call void %110(ptr noundef %85, ptr noundef %51) #17
  %113 = getelementptr %struct.cgw_job, ptr %1, i32 0, i32 6, i32 2, i32 7
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %149, label %116

116:                                              ; preds = %112
  tail call void %114(ptr noundef %85, ptr noundef %51) #17
  %117 = getelementptr %struct.cgw_job, ptr %1, i32 0, i32 6, i32 2, i32 8
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %149, label %120

120:                                              ; preds = %116
  tail call void %118(ptr noundef %85, ptr noundef %51) #17
  %121 = getelementptr %struct.cgw_job, ptr %1, i32 0, i32 6, i32 2, i32 9
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %149, label %124

124:                                              ; preds = %120
  tail call void %122(ptr noundef %85, ptr noundef %51) #17
  %125 = getelementptr %struct.cgw_job, ptr %1, i32 0, i32 6, i32 2, i32 10
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %149, label %128

128:                                              ; preds = %124
  tail call void %126(ptr noundef %85, ptr noundef %51) #17
  %129 = getelementptr %struct.cgw_job, ptr %1, i32 0, i32 6, i32 2, i32 11
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %149, label %132

132:                                              ; preds = %128
  tail call void %130(ptr noundef %85, ptr noundef %51) #17
  %133 = getelementptr %struct.cgw_job, ptr %1, i32 0, i32 6, i32 2, i32 12
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %149, label %136

136:                                              ; preds = %132
  tail call void %134(ptr noundef %85, ptr noundef %51) #17
  %137 = getelementptr %struct.cgw_job, ptr %1, i32 0, i32 6, i32 2, i32 13
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %149, label %140

140:                                              ; preds = %136
  tail call void %138(ptr noundef %85, ptr noundef %51) #17
  %141 = getelementptr %struct.cgw_job, ptr %1, i32 0, i32 6, i32 2, i32 14
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %149, label %144

144:                                              ; preds = %140
  tail call void %142(ptr noundef %85, ptr noundef %51) #17
  %145 = getelementptr %struct.cgw_job, ptr %1, i32 0, i32 6, i32 2, i32 15
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %144
  tail call void %146(ptr noundef %85, ptr noundef %51) #17
  br label %149

149:                                              ; preds = %148, %144, %140, %136, %132, %128, %124, %120, %116, %112, %108, %104, %100, %96, %92, %88
  %150 = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 5
  %151 = load i32, ptr %150, align 8
  %152 = add i32 %151, -8
  %153 = getelementptr inbounds %struct.canfd_frame, ptr %85, i32 0, i32 1
  %154 = load i8, ptr %153, align 4
  %155 = zext i8 %154 to i32
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %149
  %158 = getelementptr inbounds %struct.cgw_job, ptr %1, i32 0, i32 4
  %159 = load i32, ptr %158, align 8
  %160 = add i32 %159, 1
  store i32 %160, ptr %158, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %60, i32 noundef 0) #17
  br label %194

161:                                              ; preds = %149
  %162 = getelementptr inbounds %struct.cgw_job, ptr %1, i32 0, i32 6, i32 4
  %163 = getelementptr inbounds %struct.cgw_job, ptr %1, i32 0, i32 6, i32 4, i32 1
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.cgw_job, ptr %1, i32 0, i32 6, i32 3, i32 1
  tail call void %164(ptr noundef %85, ptr noundef %167) #17
  br label %168

168:                                              ; preds = %166, %161
  %169 = load ptr, ptr %162, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %173, label %171

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.cgw_job, ptr %1, i32 0, i32 6, i32 3
  tail call void %169(ptr noundef %85, ptr noundef %172) #17
  br label %173

173:                                              ; preds = %171, %168, %81
  %174 = load i16, ptr %3, align 2
  %175 = and i16 %174, 2
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 2
  store i64 0, ptr %178, align 8
  %179 = load i16, ptr %3, align 2
  br label %180

180:                                              ; preds = %177, %173
  %181 = phi i16 [ %179, %177 ], [ %174, %173 ]
  %182 = and i16 %181, 1
  %183 = zext i16 %182 to i32
  %184 = tail call i32 @can_send(ptr noundef nonnull %60, i32 noundef %183) #17
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %180
  %187 = getelementptr inbounds %struct.cgw_job, ptr %1, i32 0, i32 3
  %188 = load i32, ptr %187, align 4
  %189 = add i32 %188, 1
  store i32 %189, ptr %187, align 4
  br label %194

190:                                              ; preds = %180
  %191 = getelementptr inbounds %struct.cgw_job, ptr %1, i32 0, i32 2
  %192 = load i32, ptr %191, align 8
  %193 = add i32 %192, 1
  store i32 %193, ptr %191, align 8
  br label %194

194:                                              ; preds = %190, %186, %157, %62, %43, %36, %25, %11, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_send(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgw_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #4 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 32
  %6 = load i16, ptr %5, align 16
  %7 = icmp eq i16 %6, 280
  %8 = icmp eq i32 %1, 6
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %45

10:                                               ; preds = %3
  %11 = tail call i32 @rtnl_is_locked() #17
  %12 = icmp eq i32 %11, 0
  %13 = load i1, ptr @cgw_notifier.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %10
  store i1 true, ptr @cgw_notifier.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 593, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 593) #17
  br label %17

17:                                               ; preds = %16, %10
  %18 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 42, i32 15), align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %45, label %20

20:                                               ; preds = %43, %17
  %21 = phi ptr [ %22, %43 ], [ %18, %17 ]
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.cgw_job, ptr %21, i32 0, i32 7
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, %4
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.cgw_job, ptr %21, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %4
  br i1 %29, label %30, label %43

30:                                               ; preds = %26, %20
  %31 = getelementptr inbounds %struct.hlist_node, ptr %21, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  store volatile ptr %22, ptr %32, align 4
  %33 = icmp eq ptr %22, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.hlist_node, ptr %22, i32 0, i32 1
  store volatile ptr %32, ptr %35, align 4
  br label %36

36:                                               ; preds = %34, %30
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %31, align 4
  %37 = load ptr, ptr %23, align 8
  %38 = getelementptr inbounds %struct.cgw_job, ptr %21, i32 0, i32 9
  %39 = load i32, ptr %38, align 8
  %40 = getelementptr inbounds %struct.cgw_job, ptr %21, i32 0, i32 9, i32 0, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  tail call void @can_rx_unregister(ptr noundef nonnull @init_net, ptr noundef %37, i32 noundef %39, i32 noundef %41, ptr noundef nonnull @can_can_gw_rcv, ptr noundef nonnull %21) #17
  tail call void @synchronize_rcu() #17
  %42 = load ptr, ptr @cgw_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %42, ptr noundef nonnull %21) #17
  br label %43

43:                                               ; preds = %36, %26
  %44 = icmp eq ptr %22, null
  br i1 %44, label %45, label %20

45:                                               ; preds = %43, %17, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_register_module(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgw_dump_jobs(ptr noundef %0, ptr nocapture noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cgw_fdframe_mod, align 1
  %11 = alloca %struct.cgw_frame_mod, align 1
  %12 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %13 = load i32, ptr %12, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %14 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 42, i32 15), align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %220, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %21 = getelementptr inbounds %struct.cgw_fdframe_mod, ptr %10, i32 0, i32 1
  %22 = getelementptr inbounds %struct.cgw_frame_mod, ptr %11, i32 0, i32 1
  br label %23

23:                                               ; preds = %216, %16
  %24 = phi ptr [ %14, %16 ], [ %218, %216 ]
  %25 = phi i32 [ 0, %16 ], [ %217, %216 ]
  %26 = icmp slt i32 %25, %13
  br i1 %26, label %216, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %1, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 3, i32 12
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %17, align 4
  %32 = getelementptr inbounds %struct.nlmsghdr, ptr %31, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = load i32, ptr %18, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %220

36:                                               ; preds = %27
  %37 = load ptr, ptr %19, align 4
  %38 = load ptr, ptr %20, align 8
  %39 = ptrtoint ptr %37 to i32
  %40 = ptrtoint ptr %38 to i32
  %41 = sub i32 %39, %40
  %42 = icmp slt i32 %41, 20
  br i1 %42, label %220, label %43, !prof !8

43:                                               ; preds = %36
  %44 = call ptr @__nlmsg_put(ptr noundef %0, i32 noundef %30, i32 noundef %33, i32 noundef 24, i32 noundef 4, i32 noundef 2) #17
  %45 = icmp eq ptr %44, null
  br i1 %45, label %220, label %46

46:                                               ; preds = %43
  %47 = getelementptr i8, ptr %44, i32 16
  store i8 29, ptr %47, align 2
  %48 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 10
  %49 = load i8, ptr %48, align 8
  %50 = getelementptr i8, ptr %44, i32 17
  store i8 %49, ptr %50, align 1
  %51 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 12
  %52 = load i16, ptr %51, align 2
  %53 = getelementptr i8, ptr %44, i32 18
  store i16 %52, ptr %53, align 2
  %54 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 2
  %55 = load i32, ptr %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #17
  store i32 %55, ptr %9, align 4
  %58 = call i32 @nla_put(ptr noundef %0, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #17
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %200, label %60

60:                                               ; preds = %57, %46
  %61 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  store i32 %62, ptr %8, align 4
  %65 = call i32 @nla_put(ptr noundef %0, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %200, label %67

67:                                               ; preds = %64, %60
  %68 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 4
  %69 = load i32, ptr %68, align 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store i32 %69, ptr %7, align 4
  %72 = call i32 @nla_put(ptr noundef %0, i32 noundef 12, i32 noundef 4, ptr noundef nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %200, label %74

74:                                               ; preds = %71, %67
  %75 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 11
  %76 = load i8, ptr %75, align 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #17
  store i8 %76, ptr %6, align 1
  %79 = call i32 @nla_put(ptr noundef %0, i32 noundef 13, i32 noundef 1, ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #17
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %200, label %81

81:                                               ; preds = %78, %74
  %82 = load i16, ptr %51, align 2
  %83 = and i16 %82, 8
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %119, label %85

85:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 73, ptr nonnull %10) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(73) %10, i8 0, i32 73, i1 false) #17, !annotation !12
  %86 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 6, i32 1
  %87 = load i8, ptr %86, align 8
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(72) %10, ptr noundef align 8 dereferenceable(72) %90, i32 72, i1 false) #17
  store i8 %87, ptr %21, align 1
  %91 = call i32 @nla_put(ptr noundef %0, i32 noundef 15, i32 noundef 73, ptr noundef nonnull %10) #17
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %117, label %93

93:                                               ; preds = %89, %85
  %94 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 6, i32 1, i32 1
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 6, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(72) %10, ptr noundef align 8 dereferenceable(72) %98, i32 72, i1 false) #17
  store i8 %95, ptr %21, align 1
  %99 = call i32 @nla_put(ptr noundef %0, i32 noundef 16, i32 noundef 73, ptr noundef nonnull %10) #17
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %117, label %101

101:                                              ; preds = %97, %93
  %102 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 6, i32 1, i32 2
  %103 = load i8, ptr %102, align 2
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 6, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(72) %10, ptr noundef align 8 dereferenceable(72) %106, i32 72, i1 false) #17
  store i8 %103, ptr %21, align 1
  %107 = call i32 @nla_put(ptr noundef %0, i32 noundef 17, i32 noundef 73, ptr noundef nonnull %10) #17
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %105, %101
  %110 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 6, i32 1, i32 3
  %111 = load i8, ptr %110, align 1
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 6, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(72) %10, ptr noundef align 8 dereferenceable(72) %114, i32 72, i1 false) #17
  store i8 %111, ptr %21, align 1
  %115 = call i32 @nla_put(ptr noundef %0, i32 noundef 18, i32 noundef 73, ptr noundef nonnull %10) #17
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113, %105, %97, %89
  call void @llvm.lifetime.end.p0(i64 73, ptr nonnull %10) #17
  br label %200

118:                                              ; preds = %113, %109
  call void @llvm.lifetime.end.p0(i64 73, ptr nonnull %10) #17
  br label %153

119:                                              ; preds = %81
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %11) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(17) %11, i8 0, i32 17, i1 false) #17, !annotation !12
  %120 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 6, i32 1
  %121 = load i8, ptr %120, align 8
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %11, ptr noundef align 8 dereferenceable(16) %124, i32 16, i1 false) #17
  store i8 %121, ptr %22, align 1
  %125 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 17, ptr noundef nonnull %11) #17
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %151, label %127

127:                                              ; preds = %123, %119
  %128 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 6, i32 1, i32 1
  %129 = load i8, ptr %128, align 1
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 6, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %11, ptr noundef align 8 dereferenceable(16) %132, i32 16, i1 false) #17
  store i8 %129, ptr %22, align 1
  %133 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 17, ptr noundef nonnull %11) #17
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %151, label %135

135:                                              ; preds = %131, %127
  %136 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 6, i32 1, i32 2
  %137 = load i8, ptr %136, align 2
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 6, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %11, ptr noundef align 8 dereferenceable(16) %140, i32 16, i1 false) #17
  store i8 %137, ptr %22, align 1
  %141 = call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef 17, ptr noundef nonnull %11) #17
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %139, %135
  %144 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 6, i32 1, i32 3
  %145 = load i8, ptr %144, align 1
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 6, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %11, ptr noundef align 8 dereferenceable(16) %148, i32 16, i1 false) #17
  store i8 %145, ptr %22, align 1
  %149 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 17, ptr noundef nonnull %11) #17
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %147, %139, %131, %123
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %11) #17
  br label %200

152:                                              ; preds = %147, %143
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %11) #17
  br label %153

153:                                              ; preds = %152, %118
  %154 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 6, i32 5
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %153
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 %155, ptr %5, align 4
  %158 = call i32 @nla_put(ptr noundef %0, i32 noundef 14, i32 noundef 4, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %200, label %160

160:                                              ; preds = %157, %153
  %161 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 6, i32 4
  %162 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 6, i32 4, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %169, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 6, i32 3, i32 1
  %167 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 282, ptr noundef %166) #17
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %200, label %169

169:                                              ; preds = %165, %160
  %170 = load ptr, ptr %161, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %176, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 6, i32 3
  %174 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 4, ptr noundef %173) #17
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %200, label %176

176:                                              ; preds = %172, %169
  %177 = load i8, ptr %48, align 8
  %178 = icmp eq i8 %177, 1
  br i1 %178, label %179, label %211

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 9
  %181 = load i32, ptr %180, align 8
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 9, i32 0, i32 0, i32 1
  %185 = load i32, ptr %184, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %183, %179
  %188 = call i32 @nla_put(ptr noundef %0, i32 noundef 11, i32 noundef 8, ptr noundef %180) #17
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %200, label %190

190:                                              ; preds = %187, %183
  %191 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 9, i32 0, i32 1
  %192 = load i32, ptr %191, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 %192, ptr %4, align 4
  %193 = call i32 @nla_put(ptr noundef %0, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %200, label %195

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.cgw_job, ptr %24, i32 0, i32 9, i32 0, i32 2
  %197 = load i32, ptr %196, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store i32 %197, ptr %3, align 4
  %198 = call i32 @nla_put(ptr noundef %0, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %211

200:                                              ; preds = %195, %190, %187, %172, %165, %157, %151, %117, %78, %71, %64, %57
  %201 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %202 = load ptr, ptr %201, align 4
  %203 = icmp ugt ptr %202, %44
  br i1 %203, label %204, label %206, !prof !8

204:                                              ; preds = %200
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #17
  %205 = load ptr, ptr %201, align 4
  br label %206

206:                                              ; preds = %204, %200
  %207 = phi ptr [ %205, %204 ], [ %202, %200 ]
  %208 = ptrtoint ptr %44 to i32
  %209 = ptrtoint ptr %207 to i32
  %210 = sub i32 %208, %209
  call void @skb_trim(ptr noundef %0, i32 noundef %210) #17
  br label %220

211:                                              ; preds = %195, %176
  %212 = load ptr, ptr %20, align 8
  %213 = ptrtoint ptr %212 to i32
  %214 = ptrtoint ptr %44 to i32
  %215 = sub i32 %213, %214
  store i32 %215, ptr %44, align 4
  br label %216

216:                                              ; preds = %211, %23
  %217 = add i32 %25, 1
  %218 = load volatile ptr, ptr %24, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %23

220:                                              ; preds = %216, %206, %43, %36, %27, %2
  %221 = phi i32 [ %25, %206 ], [ 0, %2 ], [ %217, %216 ], [ %25, %43 ], [ %25, %36 ], [ %25, %27 ]
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  store i32 %221, ptr %12, align 4
  %222 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %223 = load i32, ptr %222, align 8
  ret i32 %223
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgw_create_job(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #4 {
  %4 = alloca %struct.cf_mod, align 8
  %5 = alloca %struct.can_can_gw, align 4
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 656, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(656) %4, i8 0, i32 656, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #17
  store i8 0, ptr %6, align 1
  %7 = tail call zeroext i1 @netlink_capable(ptr noundef %0, i32 noundef 12) #17
  br i1 %7, label %8, label %117

8:                                                ; preds = %3
  %9 = load i32, ptr %1, align 4
  %10 = and i32 %9, -4
  %11 = icmp eq i32 %10, 16
  br i1 %11, label %117, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %1, i32 16
  %14 = load i8, ptr %13, align 2
  %15 = icmp eq i8 %14, 29
  br i1 %15, label %16, label %117

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %1, i32 17
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 1
  br i1 %19, label %20, label %117

20:                                               ; preds = %16
  %21 = call fastcc i32 @cgw_parse_attr(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %117, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.cf_mod, ptr %4, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %54, label %27

27:                                               ; preds = %23
  %28 = call i32 @rtnl_is_locked() #17
  %29 = icmp eq i32 %28, 0
  %30 = load i1, ptr @cgw_create_job.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %34, !prof !8

33:                                               ; preds = %27
  store i1 true, ptr @cgw_create_job.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1080, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1080) #17
  br label %34

34:                                               ; preds = %33, %27
  %35 = load i32, ptr %24, align 4
  br label %36

36:                                               ; preds = %40, %34
  %37 = phi ptr [ getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 42, i32 15), %34 ], [ %38, %40 ]
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %54, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.cgw_job, ptr %38, i32 0, i32 6, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, %35
  br i1 %43, label %44, label %36

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.cgw_job, ptr %38, i32 0, i32 9
  %46 = call i32 @bcmp(ptr noundef dereferenceable(16) %45, ptr noundef nonnull dereferenceable(16) %5, i32 16)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %117

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.cgw_job, ptr %38, i32 0, i32 6
  %50 = tail call ptr @llvm.thread.pointer() #17
  %51 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %52 = load volatile i32, ptr %51, align 4
  %53 = add i32 %52, 512
  store volatile i32 %53, ptr %51, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(656) %49, ptr noundef nonnull align 8 dereferenceable(656) %4, i32 656, i1 false)
  call fastcc void @local_bh_enable()
  br label %117

54:                                               ; preds = %36, %23
  %55 = getelementptr inbounds %struct.can_can_gw, ptr %5, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = getelementptr inbounds %struct.can_can_gw, ptr %5, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = icmp ne i32 %59, 0
  %61 = select i1 %57, i1 %60, i1 false
  br i1 %61, label %62, label %117

62:                                               ; preds = %54
  %63 = load ptr, ptr @cgw_cache, align 4
  %64 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %63, i32 noundef 3264) #17
  %65 = icmp eq ptr %64, null
  br i1 %65, label %117, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.cgw_job, ptr %64, i32 0, i32 2
  store i32 0, ptr %67, align 8
  %68 = getelementptr inbounds %struct.cgw_job, ptr %64, i32 0, i32 3
  store i32 0, ptr %68, align 4
  %69 = getelementptr inbounds %struct.cgw_job, ptr %64, i32 0, i32 4
  store i32 0, ptr %69, align 8
  %70 = getelementptr i8, ptr %1, i32 18
  %71 = load i16, ptr %70, align 2
  %72 = getelementptr inbounds %struct.cgw_job, ptr %64, i32 0, i32 12
  store i16 %71, ptr %72, align 2
  %73 = load i8, ptr %17, align 1
  %74 = getelementptr inbounds %struct.cgw_job, ptr %64, i32 0, i32 10
  store i8 %73, ptr %74, align 8
  %75 = load i8, ptr %6, align 1
  %76 = getelementptr inbounds %struct.cgw_job, ptr %64, i32 0, i32 11
  store i8 %75, ptr %76, align 1
  %77 = getelementptr inbounds %struct.cgw_job, ptr %64, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(656) %77, ptr noundef nonnull align 8 dereferenceable(656) %4, i32 656, i1 false)
  %78 = getelementptr inbounds %struct.cgw_job, ptr %64, i32 0, i32 9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %78, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false)
  %79 = getelementptr inbounds %struct.cgw_job, ptr %64, i32 0, i32 9, i32 0, i32 1
  %80 = load i32, ptr %79, align 8
  %81 = call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %80) #17
  %82 = getelementptr inbounds %struct.cgw_job, ptr %64, i32 0, i32 7
  store ptr %81, ptr %82, align 8
  %83 = icmp eq ptr %81, null
  br i1 %83, label %114, label %84

84:                                               ; preds = %66
  %85 = getelementptr inbounds %struct.net_device, ptr %81, i32 0, i32 32
  %86 = load i16, ptr %85, align 16
  %87 = icmp eq i16 %86, 280
  br i1 %87, label %88, label %114

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.cgw_job, ptr %64, i32 0, i32 9, i32 0, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %90) #17
  %92 = getelementptr inbounds %struct.cgw_job, ptr %64, i32 0, i32 8
  store ptr %91, ptr %92, align 4
  %93 = icmp eq ptr %91, null
  br i1 %93, label %114, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.net_device, ptr %91, i32 0, i32 32
  %96 = load i16, ptr %95, align 16
  %97 = icmp eq i16 %96, 280
  br i1 %97, label %98, label %114

98:                                               ; preds = %94
  %99 = call i32 @rtnl_is_locked() #17
  %100 = icmp eq i32 %99, 0
  %101 = load i1, ptr @cgw_create_job.__already_done.5, align 1
  %102 = xor i1 %101, true
  %103 = select i1 %100, i1 %102, i1 false
  br i1 %103, label %104, label %105, !prof !8

104:                                              ; preds = %98
  store i1 true, ptr @cgw_create_job.__already_done.5, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1136, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1136) #17
  br label %105

105:                                              ; preds = %104, %98
  %106 = call fastcc i32 @cgw_register_filter(ptr noundef nonnull %64)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 42, i32 15), align 4
  store ptr %109, ptr %64, align 8
  %110 = getelementptr inbounds %struct.hlist_node, ptr %64, i32 0, i32 1
  store volatile ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 42, i32 15), ptr %110, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  store volatile ptr %64, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 42, i32 15), align 4
  %111 = icmp eq ptr %109, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.hlist_node, ptr %109, i32 0, i32 1
  store volatile ptr %64, ptr %113, align 4
  br label %117

114:                                              ; preds = %105, %94, %88, %84, %66
  %115 = phi i32 [ -19, %66 ], [ -19, %88 ], [ %106, %105 ], [ -19, %94 ], [ -19, %84 ]
  %116 = load ptr, ptr @cgw_cache, align 4
  call void @kmem_cache_free(ptr noundef %116, ptr noundef nonnull %64) #17
  br label %117

117:                                              ; preds = %114, %112, %108, %62, %54, %48, %44, %20, %16, %12, %8, %3
  %118 = phi i32 [ 0, %48 ], [ -1, %3 ], [ -22, %8 ], [ -96, %12 ], [ -22, %16 ], [ %21, %20 ], [ -22, %44 ], [ -19, %54 ], [ -12, %62 ], [ %115, %114 ], [ 0, %108 ], [ 0, %112 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 656, ptr nonnull %4) #17
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgw_remove_job(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #4 {
  %4 = alloca %struct.cf_mod, align 8
  %5 = alloca %struct.can_can_gw, align 4
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 656, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(656) %4, i8 0, i32 656, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #17
  store i8 0, ptr %6, align 1
  %7 = tail call zeroext i1 @netlink_capable(ptr noundef %0, i32 noundef 12) #17
  br i1 %7, label %8, label %89

8:                                                ; preds = %3
  %9 = load i32, ptr %1, align 4
  %10 = and i32 %9, -4
  %11 = icmp eq i32 %10, 16
  br i1 %11, label %89, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %1, i32 16
  %14 = load i8, ptr %13, align 2
  %15 = icmp eq i8 %14, 29
  br i1 %15, label %16, label %89

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %1, i32 17
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 1
  br i1 %19, label %20, label %89

20:                                               ; preds = %16
  %21 = call fastcc i32 @cgw_parse_attr(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %89, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.can_can_gw, ptr %5, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = getelementptr inbounds %struct.can_can_gw, ptr %5, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = select i1 %26, i1 true, i1 %29
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  call fastcc void @cgw_remove_all_jobs(ptr noundef nonnull @init_net)
  br label %89

32:                                               ; preds = %23
  %33 = call i32 @rtnl_is_locked() #17
  %34 = icmp eq i32 %33, 0
  %35 = load i1, ptr @cgw_remove_job.__already_done, align 1
  %36 = xor i1 %35, true
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %39, !prof !8

38:                                               ; preds = %32
  store i1 true, ptr @cgw_remove_job.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1201, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1201) #17
  br label %39

39:                                               ; preds = %38, %32
  %40 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 42, i32 15), align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %89, label %42

42:                                               ; preds = %39
  %43 = getelementptr i8, ptr %1, i32 18
  %44 = load i16, ptr %43, align 2
  %45 = load i8, ptr %6, align 1
  %46 = getelementptr inbounds %struct.cf_mod, ptr %4, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %87, %42
  %50 = phi ptr [ %40, %42 ], [ %51, %87 ]
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.cgw_job, ptr %50, i32 0, i32 12
  %53 = load i16, ptr %52, align 2
  %54 = icmp eq i16 %53, %44
  br i1 %54, label %55, label %87

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.cgw_job, ptr %50, i32 0, i32 11
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, %45
  br i1 %58, label %59, label %87

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.cgw_job, ptr %50, i32 0, i32 6, i32 5
  %61 = load i32, ptr %60, align 4
  %62 = icmp ne i32 %61, 0
  %63 = select i1 %62, i1 true, i1 %48
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = icmp eq i32 %61, %47
  br i1 %65, label %70, label %87

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.cgw_job, ptr %50, i32 0, i32 6
  %68 = call i32 @bcmp(ptr noundef dereferenceable(656) %67, ptr noundef nonnull dereferenceable(656) %4, i32 656)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %66, %64
  %71 = getelementptr inbounds %struct.cgw_job, ptr %50, i32 0, i32 9
  %72 = call i32 @bcmp(ptr noundef dereferenceable(16) %71, ptr noundef nonnull dereferenceable(16) %5, i32 16)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.hlist_node, ptr %50, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  store volatile ptr %51, ptr %76, align 4
  %77 = icmp eq ptr %51, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.hlist_node, ptr %51, i32 0, i32 1
  store volatile ptr %76, ptr %79, align 4
  br label %80

80:                                               ; preds = %78, %74
  store ptr inttoptr (i32 256 to ptr), ptr %50, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %75, align 4
  %81 = getelementptr inbounds %struct.cgw_job, ptr %50, i32 0, i32 7
  %82 = load ptr, ptr %81, align 8
  %83 = load i32, ptr %71, align 8
  %84 = getelementptr inbounds %struct.cgw_job, ptr %50, i32 0, i32 9, i32 0, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  call void @can_rx_unregister(ptr noundef nonnull @init_net, ptr noundef %82, i32 noundef %83, i32 noundef %85, ptr noundef nonnull @can_can_gw_rcv, ptr noundef nonnull %50) #17
  call void @synchronize_rcu() #17
  %86 = load ptr, ptr @cgw_cache, align 4
  call void @kmem_cache_free(ptr noundef %86, ptr noundef nonnull %50) #17
  br label %89

87:                                               ; preds = %70, %66, %64, %55, %49
  %88 = icmp eq ptr %51, null
  br i1 %88, label %89, label %49

89:                                               ; preds = %87, %80, %39, %31, %20, %16, %12, %8, %3
  %90 = phi i32 [ 0, %31 ], [ -1, %3 ], [ -22, %8 ], [ -96, %12 ], [ -22, %16 ], [ %21, %20 ], [ 0, %80 ], [ -22, %39 ], [ -22, %87 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 656, ptr nonnull %4) #17
  ret i32 %90
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_unregister(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cgw_parse_attr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #4 {
  %5 = alloca [19 x ptr], align 4
  %6 = alloca %struct.cgw_fdframe_mod, align 4
  %7 = alloca %struct.cgw_frame_mod, align 4
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(76) %5, i8 0, i32 76, i1 false), !annotation !12
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(656) %1, i8 0, i32 656, i1 false)
  %8 = load i32, ptr %0, align 4
  %9 = icmp ult i32 %8, 20
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #17
  br label %496

11:                                               ; preds = %4
  %12 = getelementptr i8, ptr %0, i32 20
  %13 = add i32 %8, -20
  %14 = call i32 @__nla_parse(ptr noundef nonnull %5, i32 noundef 18, ptr noundef %12, i32 noundef %13, ptr noundef nonnull @cgw_policy, i32 noundef 0, ptr noundef null) #17
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %496, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds [19 x ptr], ptr %5, i32 0, i32 13
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %18, i32 4
  %22 = load i8, ptr %21, align 1
  store i8 %22, ptr %3, align 1
  %23 = icmp eq i8 %22, 0
  %24 = zext i8 %22 to i32
  %25 = load i32, ptr @max_hops, align 4
  %26 = icmp ult i32 %25, %24
  %27 = select i1 %23, i1 true, i1 %26
  br i1 %27, label %496, label %28

28:                                               ; preds = %20, %16
  %29 = getelementptr i8, ptr %0, i32 18
  %30 = load i16, ptr %29, align 2
  %31 = and i16 %30, 8
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %216, label %33

33:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 73, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(73) %6, i8 0, i32 73, i1 false), !annotation !12
  %34 = getelementptr inbounds [19 x ptr], ptr %5, i32 0, i32 15
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %76, label %37

37:                                               ; preds = %33
  %38 = call i32 @nla_memcpy(ptr noundef nonnull %6, ptr noundef nonnull %35, i32 noundef 73) #17
  %39 = load i32, ptr %6, align 8
  store i32 %39, ptr %1, align 8
  %40 = getelementptr inbounds %struct.canfd_frame, ptr %6, i32 0, i32 2
  %41 = load i8, ptr %40, align 1
  %42 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 2
  store i8 %41, ptr %42, align 1
  %43 = getelementptr inbounds %struct.canfd_frame, ptr %6, i32 0, i32 1
  %44 = load i8, ptr %43, align 4
  %45 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  store i8 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 5
  %47 = getelementptr inbounds %struct.canfd_frame, ptr %6, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %46, ptr noundef align 8 dereferenceable(64) %47, i32 64, i1 false) #17
  %48 = getelementptr inbounds %struct.cgw_fdframe_mod, ptr %6, i32 0, i32 1
  %49 = load i8, ptr %48, align 4
  %50 = getelementptr inbounds %struct.cf_mod, ptr %1, i32 0, i32 1
  store i8 %49, ptr %50, align 8
  %51 = and i8 %49, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %37
  %54 = getelementptr inbounds %struct.cf_mod, ptr %1, i32 0, i32 2
  store ptr @mod_and_id, ptr %54, align 4
  br label %55

55:                                               ; preds = %53, %37
  %56 = phi i32 [ 1, %53 ], [ 0, %37 ]
  %57 = and i8 %49, 2
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = add nuw nsw i32 %56, 1
  %61 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %56
  store ptr @mod_and_len, ptr %61, align 4
  br label %62

62:                                               ; preds = %59, %55
  %63 = phi i32 [ %60, %59 ], [ %56, %55 ]
  %64 = and i8 %49, 8
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = add nuw nsw i32 %63, 1
  %68 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %63
  store ptr @mod_and_flags, ptr %68, align 4
  br label %69

69:                                               ; preds = %66, %62
  %70 = phi i32 [ %67, %66 ], [ %63, %62 ]
  %71 = and i8 %49, 4
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = add nuw nsw i32 %70, 1
  %75 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %70
  store ptr @mod_and_fddata, ptr %75, align 4
  br label %76

76:                                               ; preds = %73, %69, %33
  %77 = phi i32 [ %74, %73 ], [ %70, %69 ], [ 0, %33 ]
  %78 = getelementptr inbounds [19 x ptr], ptr %5, i32 0, i32 16
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %122, label %81

81:                                               ; preds = %76
  %82 = call i32 @nla_memcpy(ptr noundef nonnull %6, ptr noundef nonnull %79, i32 noundef 73) #17
  %83 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 1
  %84 = load i32, ptr %6, align 8
  store i32 %84, ptr %83, align 8
  %85 = getelementptr inbounds %struct.canfd_frame, ptr %6, i32 0, i32 2
  %86 = load i8, ptr %85, align 1
  %87 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 1, i32 2
  store i8 %86, ptr %87, align 1
  %88 = getelementptr inbounds %struct.canfd_frame, ptr %6, i32 0, i32 1
  %89 = load i8, ptr %88, align 4
  %90 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 1, i32 1
  store i8 %89, ptr %90, align 4
  %91 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 1, i32 5
  %92 = getelementptr inbounds %struct.canfd_frame, ptr %6, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %91, ptr noundef align 8 dereferenceable(64) %92, i32 64, i1 false) #17
  %93 = getelementptr inbounds %struct.cgw_fdframe_mod, ptr %6, i32 0, i32 1
  %94 = load i8, ptr %93, align 4
  %95 = getelementptr inbounds %struct.cf_mod, ptr %1, i32 0, i32 1, i32 1
  store i8 %94, ptr %95, align 1
  %96 = and i8 %94, 1
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %81
  %99 = add nuw nsw i32 %77, 1
  %100 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %77
  store ptr @mod_or_id, ptr %100, align 4
  br label %101

101:                                              ; preds = %98, %81
  %102 = phi i32 [ %99, %98 ], [ %77, %81 ]
  %103 = and i8 %94, 2
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = add nuw nsw i32 %102, 1
  %107 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %102
  store ptr @mod_or_len, ptr %107, align 4
  br label %108

108:                                              ; preds = %105, %101
  %109 = phi i32 [ %106, %105 ], [ %102, %101 ]
  %110 = and i8 %94, 8
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = add nuw nsw i32 %109, 1
  %114 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %109
  store ptr @mod_or_flags, ptr %114, align 4
  br label %115

115:                                              ; preds = %112, %108
  %116 = phi i32 [ %113, %112 ], [ %109, %108 ]
  %117 = and i8 %94, 4
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = add nuw nsw i32 %116, 1
  %121 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %116
  store ptr @mod_or_fddata, ptr %121, align 4
  br label %122

122:                                              ; preds = %119, %115, %76
  %123 = phi i32 [ %120, %119 ], [ %116, %115 ], [ %77, %76 ]
  %124 = getelementptr inbounds [19 x ptr], ptr %5, i32 0, i32 17
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %168, label %127

127:                                              ; preds = %122
  %128 = call i32 @nla_memcpy(ptr noundef nonnull %6, ptr noundef nonnull %125, i32 noundef 73) #17
  %129 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 2
  %130 = load i32, ptr %6, align 8
  store i32 %130, ptr %129, align 8
  %131 = getelementptr inbounds %struct.canfd_frame, ptr %6, i32 0, i32 2
  %132 = load i8, ptr %131, align 1
  %133 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 2, i32 2
  store i8 %132, ptr %133, align 1
  %134 = getelementptr inbounds %struct.canfd_frame, ptr %6, i32 0, i32 1
  %135 = load i8, ptr %134, align 4
  %136 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 2, i32 1
  store i8 %135, ptr %136, align 4
  %137 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 2, i32 5
  %138 = getelementptr inbounds %struct.canfd_frame, ptr %6, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %137, ptr noundef align 8 dereferenceable(64) %138, i32 64, i1 false) #17
  %139 = getelementptr inbounds %struct.cgw_fdframe_mod, ptr %6, i32 0, i32 1
  %140 = load i8, ptr %139, align 4
  %141 = getelementptr inbounds %struct.cf_mod, ptr %1, i32 0, i32 1, i32 2
  store i8 %140, ptr %141, align 2
  %142 = and i8 %140, 1
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %127
  %145 = add nuw nsw i32 %123, 1
  %146 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %123
  store ptr @mod_xor_id, ptr %146, align 4
  br label %147

147:                                              ; preds = %144, %127
  %148 = phi i32 [ %145, %144 ], [ %123, %127 ]
  %149 = and i8 %140, 2
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %147
  %152 = add nuw nsw i32 %148, 1
  %153 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %148
  store ptr @mod_xor_len, ptr %153, align 4
  br label %154

154:                                              ; preds = %151, %147
  %155 = phi i32 [ %152, %151 ], [ %148, %147 ]
  %156 = and i8 %140, 8
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = add nuw nsw i32 %155, 1
  %160 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %155
  store ptr @mod_xor_flags, ptr %160, align 4
  br label %161

161:                                              ; preds = %158, %154
  %162 = phi i32 [ %159, %158 ], [ %155, %154 ]
  %163 = and i8 %140, 4
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %161
  %166 = add nuw nsw i32 %162, 1
  %167 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %162
  store ptr @mod_xor_fddata, ptr %167, align 4
  br label %168

168:                                              ; preds = %165, %161, %122
  %169 = phi i32 [ %166, %165 ], [ %162, %161 ], [ %123, %122 ]
  %170 = getelementptr inbounds [19 x ptr], ptr %5, i32 0, i32 18
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %214, label %173

173:                                              ; preds = %168
  %174 = call i32 @nla_memcpy(ptr noundef nonnull %6, ptr noundef nonnull %171, i32 noundef 73) #17
  %175 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 3
  %176 = load i32, ptr %6, align 8
  store i32 %176, ptr %175, align 8
  %177 = getelementptr inbounds %struct.canfd_frame, ptr %6, i32 0, i32 2
  %178 = load i8, ptr %177, align 1
  %179 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 3, i32 2
  store i8 %178, ptr %179, align 1
  %180 = getelementptr inbounds %struct.canfd_frame, ptr %6, i32 0, i32 1
  %181 = load i8, ptr %180, align 4
  %182 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 3, i32 1
  store i8 %181, ptr %182, align 4
  %183 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 3, i32 5
  %184 = getelementptr inbounds %struct.canfd_frame, ptr %6, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %183, ptr noundef align 8 dereferenceable(64) %184, i32 64, i1 false) #17
  %185 = getelementptr inbounds %struct.cgw_fdframe_mod, ptr %6, i32 0, i32 1
  %186 = load i8, ptr %185, align 4
  %187 = getelementptr inbounds %struct.cf_mod, ptr %1, i32 0, i32 1, i32 3
  store i8 %186, ptr %187, align 1
  %188 = and i8 %186, 1
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %173
  %191 = add nuw nsw i32 %169, 1
  %192 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %169
  store ptr @mod_set_id, ptr %192, align 4
  br label %193

193:                                              ; preds = %190, %173
  %194 = phi i32 [ %191, %190 ], [ %169, %173 ]
  %195 = and i8 %186, 2
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %193
  %198 = add nuw nsw i32 %194, 1
  %199 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %194
  store ptr @mod_set_len, ptr %199, align 4
  br label %200

200:                                              ; preds = %197, %193
  %201 = phi i32 [ %198, %197 ], [ %194, %193 ]
  %202 = and i8 %186, 8
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %200
  %205 = add nuw nsw i32 %201, 1
  %206 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %201
  store ptr @mod_set_flags, ptr %206, align 4
  br label %207

207:                                              ; preds = %204, %200
  %208 = phi i32 [ %205, %204 ], [ %201, %200 ]
  %209 = and i8 %186, 4
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %207
  %212 = add nuw nsw i32 %208, 1
  %213 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %208
  store ptr @mod_set_fddata, ptr %213, align 4
  br label %214

214:                                              ; preds = %211, %207, %168
  %215 = phi i32 [ %212, %211 ], [ %208, %207 ], [ %169, %168 ]
  call void @llvm.lifetime.end.p0(i64 73, ptr nonnull %6) #17
  br label %363

216:                                              ; preds = %28
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %7) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(17) %7, i8 0, i32 17, i1 false), !annotation !12
  %217 = getelementptr inbounds [19 x ptr], ptr %5, i32 0, i32 1
  %218 = load ptr, ptr %217, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %250, label %220

220:                                              ; preds = %216
  %221 = call i32 @nla_memcpy(ptr noundef nonnull %7, ptr noundef nonnull %218, i32 noundef 17) #17
  %222 = load i32, ptr %7, align 8
  store i32 %222, ptr %1, align 8
  %223 = getelementptr inbounds %struct.can_frame, ptr %7, i32 0, i32 1
  %224 = load i8, ptr %223, align 4
  %225 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  store i8 %224, ptr %225, align 4
  %226 = getelementptr inbounds %struct.can_frame, ptr %7, i32 0, i32 5
  %227 = load i64, ptr %226, align 8
  %228 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 5
  store i64 %227, ptr %228, align 8
  %229 = getelementptr inbounds %struct.cgw_frame_mod, ptr %7, i32 0, i32 1
  %230 = load i8, ptr %229, align 4
  %231 = getelementptr inbounds %struct.cf_mod, ptr %1, i32 0, i32 1
  store i8 %230, ptr %231, align 8
  %232 = and i8 %230, 1
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %220
  %235 = getelementptr inbounds %struct.cf_mod, ptr %1, i32 0, i32 2
  store ptr @mod_and_id, ptr %235, align 4
  br label %236

236:                                              ; preds = %234, %220
  %237 = phi i32 [ 1, %234 ], [ 0, %220 ]
  %238 = and i8 %230, 2
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %236
  %241 = add nuw nsw i32 %237, 1
  %242 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %237
  store ptr @mod_and_ccdlc, ptr %242, align 4
  br label %243

243:                                              ; preds = %240, %236
  %244 = phi i32 [ %241, %240 ], [ %237, %236 ]
  %245 = and i8 %230, 4
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %250, label %247

247:                                              ; preds = %243
  %248 = add nuw nsw i32 %244, 1
  %249 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %244
  store ptr @mod_and_data, ptr %249, align 4
  br label %250

250:                                              ; preds = %247, %243, %216
  %251 = phi i32 [ %248, %247 ], [ %244, %243 ], [ 0, %216 ]
  %252 = getelementptr inbounds [19 x ptr], ptr %5, i32 0, i32 2
  %253 = load ptr, ptr %252, align 4
  %254 = icmp eq ptr %253, null
  br i1 %254, label %287, label %255

255:                                              ; preds = %250
  %256 = call i32 @nla_memcpy(ptr noundef nonnull %7, ptr noundef nonnull %253, i32 noundef 17) #17
  %257 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 1
  %258 = load i32, ptr %7, align 8
  store i32 %258, ptr %257, align 8
  %259 = getelementptr inbounds %struct.can_frame, ptr %7, i32 0, i32 1
  %260 = load i8, ptr %259, align 4
  %261 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 1, i32 1
  store i8 %260, ptr %261, align 4
  %262 = getelementptr inbounds %struct.can_frame, ptr %7, i32 0, i32 5
  %263 = load i64, ptr %262, align 8
  %264 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 1, i32 5
  store i64 %263, ptr %264, align 8
  %265 = getelementptr inbounds %struct.cgw_frame_mod, ptr %7, i32 0, i32 1
  %266 = load i8, ptr %265, align 4
  %267 = getelementptr inbounds %struct.cf_mod, ptr %1, i32 0, i32 1, i32 1
  store i8 %266, ptr %267, align 1
  %268 = and i8 %266, 1
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %273, label %270

270:                                              ; preds = %255
  %271 = add nuw nsw i32 %251, 1
  %272 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %251
  store ptr @mod_or_id, ptr %272, align 4
  br label %273

273:                                              ; preds = %270, %255
  %274 = phi i32 [ %271, %270 ], [ %251, %255 ]
  %275 = and i8 %266, 2
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %273
  %278 = add nuw nsw i32 %274, 1
  %279 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %274
  store ptr @mod_or_ccdlc, ptr %279, align 4
  br label %280

280:                                              ; preds = %277, %273
  %281 = phi i32 [ %278, %277 ], [ %274, %273 ]
  %282 = and i8 %266, 4
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %280
  %285 = add nuw nsw i32 %281, 1
  %286 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %281
  store ptr @mod_or_data, ptr %286, align 4
  br label %287

287:                                              ; preds = %284, %280, %250
  %288 = phi i32 [ %285, %284 ], [ %281, %280 ], [ %251, %250 ]
  %289 = getelementptr inbounds [19 x ptr], ptr %5, i32 0, i32 3
  %290 = load ptr, ptr %289, align 4
  %291 = icmp eq ptr %290, null
  br i1 %291, label %324, label %292

292:                                              ; preds = %287
  %293 = call i32 @nla_memcpy(ptr noundef nonnull %7, ptr noundef nonnull %290, i32 noundef 17) #17
  %294 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 2
  %295 = load i32, ptr %7, align 8
  store i32 %295, ptr %294, align 8
  %296 = getelementptr inbounds %struct.can_frame, ptr %7, i32 0, i32 1
  %297 = load i8, ptr %296, align 4
  %298 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 2, i32 1
  store i8 %297, ptr %298, align 4
  %299 = getelementptr inbounds %struct.can_frame, ptr %7, i32 0, i32 5
  %300 = load i64, ptr %299, align 8
  %301 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 2, i32 5
  store i64 %300, ptr %301, align 8
  %302 = getelementptr inbounds %struct.cgw_frame_mod, ptr %7, i32 0, i32 1
  %303 = load i8, ptr %302, align 4
  %304 = getelementptr inbounds %struct.cf_mod, ptr %1, i32 0, i32 1, i32 2
  store i8 %303, ptr %304, align 2
  %305 = and i8 %303, 1
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %310, label %307

307:                                              ; preds = %292
  %308 = add nuw nsw i32 %288, 1
  %309 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %288
  store ptr @mod_xor_id, ptr %309, align 4
  br label %310

310:                                              ; preds = %307, %292
  %311 = phi i32 [ %308, %307 ], [ %288, %292 ]
  %312 = and i8 %303, 2
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %317, label %314

314:                                              ; preds = %310
  %315 = add nuw nsw i32 %311, 1
  %316 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %311
  store ptr @mod_xor_ccdlc, ptr %316, align 4
  br label %317

317:                                              ; preds = %314, %310
  %318 = phi i32 [ %315, %314 ], [ %311, %310 ]
  %319 = and i8 %303, 4
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %324, label %321

321:                                              ; preds = %317
  %322 = add nuw nsw i32 %318, 1
  %323 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %318
  store ptr @mod_xor_data, ptr %323, align 4
  br label %324

324:                                              ; preds = %321, %317, %287
  %325 = phi i32 [ %322, %321 ], [ %318, %317 ], [ %288, %287 ]
  %326 = getelementptr inbounds [19 x ptr], ptr %5, i32 0, i32 4
  %327 = load ptr, ptr %326, align 4
  %328 = icmp eq ptr %327, null
  br i1 %328, label %361, label %329

329:                                              ; preds = %324
  %330 = call i32 @nla_memcpy(ptr noundef nonnull %7, ptr noundef nonnull %327, i32 noundef 17) #17
  %331 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 3
  %332 = load i32, ptr %7, align 8
  store i32 %332, ptr %331, align 8
  %333 = getelementptr inbounds %struct.can_frame, ptr %7, i32 0, i32 1
  %334 = load i8, ptr %333, align 4
  %335 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 3, i32 1
  store i8 %334, ptr %335, align 4
  %336 = getelementptr inbounds %struct.can_frame, ptr %7, i32 0, i32 5
  %337 = load i64, ptr %336, align 8
  %338 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 3, i32 5
  store i64 %337, ptr %338, align 8
  %339 = getelementptr inbounds %struct.cgw_frame_mod, ptr %7, i32 0, i32 1
  %340 = load i8, ptr %339, align 4
  %341 = getelementptr inbounds %struct.cf_mod, ptr %1, i32 0, i32 1, i32 3
  store i8 %340, ptr %341, align 1
  %342 = and i8 %340, 1
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %347, label %344

344:                                              ; preds = %329
  %345 = add nuw nsw i32 %325, 1
  %346 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %325
  store ptr @mod_set_id, ptr %346, align 4
  br label %347

347:                                              ; preds = %344, %329
  %348 = phi i32 [ %345, %344 ], [ %325, %329 ]
  %349 = and i8 %340, 2
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %354, label %351

351:                                              ; preds = %347
  %352 = add nuw nsw i32 %348, 1
  %353 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %348
  store ptr @mod_set_ccdlc, ptr %353, align 4
  br label %354

354:                                              ; preds = %351, %347
  %355 = phi i32 [ %352, %351 ], [ %348, %347 ]
  %356 = and i8 %340, 4
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %361, label %358

358:                                              ; preds = %354
  %359 = add nuw nsw i32 %355, 1
  %360 = getelementptr %struct.cf_mod, ptr %1, i32 0, i32 2, i32 %355
  store ptr @mod_set_data, ptr %360, align 4
  br label %361

361:                                              ; preds = %358, %354, %324
  %362 = phi i32 [ %359, %358 ], [ %355, %354 ], [ %325, %324 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %7) #17
  br label %363

363:                                              ; preds = %361, %214
  %364 = phi i32 [ %215, %214 ], [ %362, %361 ]
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %469, label %366

366:                                              ; preds = %363
  %367 = getelementptr inbounds [19 x ptr], ptr %5, i32 0, i32 6
  %368 = load ptr, ptr %367, align 4
  %369 = icmp eq ptr %368, null
  br i1 %369, label %414, label %370

370:                                              ; preds = %366
  %371 = getelementptr i8, ptr %368, i32 4
  %372 = load i8, ptr %371, align 1
  %373 = getelementptr i8, ptr %368, i32 5
  %374 = getelementptr i8, ptr %368, i32 6
  %375 = load i8, ptr %374, align 1
  %376 = load i16, ptr %29, align 2
  %377 = and i16 %376, 8
  %378 = icmp eq i16 %377, 0
  %379 = sext i8 %372 to i32
  %380 = select i1 %378, i32 -8, i32 -64
  %381 = select i1 %378, i32 8, i32 64
  %382 = icmp sle i32 %380, %379
  %383 = icmp sgt i32 %381, %379
  %384 = and i1 %382, %383
  br i1 %384, label %385, label %496

385:                                              ; preds = %370
  %386 = load i8, ptr %373, align 1
  %387 = sext i8 %386 to i32
  %388 = icmp sle i32 %380, %387
  %389 = icmp sgt i32 %381, %387
  %390 = and i1 %388, %389
  br i1 %390, label %391, label %496

391:                                              ; preds = %385
  %392 = sext i8 %375 to i32
  %393 = icmp sle i32 %380, %392
  %394 = icmp sgt i32 %381, %392
  %395 = and i1 %393, %394
  br i1 %395, label %396, label %496

396:                                              ; preds = %391
  %397 = getelementptr inbounds %struct.cf_mod, ptr %1, i32 0, i32 3, i32 1
  %398 = call i32 @nla_memcpy(ptr noundef %397, ptr noundef nonnull %368, i32 noundef 282) #17
  %399 = load i8, ptr %371, align 1
  %400 = icmp slt i8 %399, 0
  br i1 %400, label %407, label %401

401:                                              ; preds = %396
  %402 = load i8, ptr %373, align 1
  %403 = icmp slt i8 %402, 0
  br i1 %403, label %407, label %404

404:                                              ; preds = %401
  %405 = load i8, ptr %374, align 1
  %406 = icmp slt i8 %405, 0
  br i1 %406, label %407, label %409

407:                                              ; preds = %404, %401, %396
  %408 = getelementptr inbounds %struct.cf_mod, ptr %1, i32 0, i32 4, i32 1
  store ptr @cgw_csum_crc8_rel, ptr %408, align 4
  br label %414

409:                                              ; preds = %404
  %410 = icmp ugt i8 %399, %402
  %411 = getelementptr inbounds %struct.cf_mod, ptr %1, i32 0, i32 4, i32 1
  br i1 %410, label %413, label %412

412:                                              ; preds = %409
  store ptr @cgw_csum_crc8_pos, ptr %411, align 4
  br label %414

413:                                              ; preds = %409
  store ptr @cgw_csum_crc8_neg, ptr %411, align 4
  br label %414

414:                                              ; preds = %413, %412, %407, %366
  %415 = getelementptr inbounds [19 x ptr], ptr %5, i32 0, i32 5
  %416 = load ptr, ptr %415, align 4
  %417 = icmp eq ptr %416, null
  br i1 %417, label %462, label %418

418:                                              ; preds = %414
  %419 = getelementptr i8, ptr %416, i32 4
  %420 = load i8, ptr %419, align 1
  %421 = getelementptr i8, ptr %416, i32 5
  %422 = getelementptr i8, ptr %416, i32 6
  %423 = load i8, ptr %422, align 1
  %424 = load i16, ptr %29, align 2
  %425 = and i16 %424, 8
  %426 = icmp eq i16 %425, 0
  %427 = sext i8 %420 to i32
  %428 = select i1 %426, i32 -8, i32 -64
  %429 = select i1 %426, i32 8, i32 64
  %430 = icmp sle i32 %428, %427
  %431 = icmp sgt i32 %429, %427
  %432 = and i1 %430, %431
  br i1 %432, label %433, label %496

433:                                              ; preds = %418
  %434 = load i8, ptr %421, align 1
  %435 = sext i8 %434 to i32
  %436 = icmp sle i32 %428, %435
  %437 = icmp sgt i32 %429, %435
  %438 = and i1 %436, %437
  br i1 %438, label %439, label %496

439:                                              ; preds = %433
  %440 = sext i8 %423 to i32
  %441 = icmp sle i32 %428, %440
  %442 = icmp sgt i32 %429, %440
  %443 = and i1 %441, %442
  br i1 %443, label %444, label %496

444:                                              ; preds = %439
  %445 = getelementptr inbounds %struct.cf_mod, ptr %1, i32 0, i32 3
  %446 = call i32 @nla_memcpy(ptr noundef %445, ptr noundef nonnull %416, i32 noundef 4) #17
  %447 = load i8, ptr %419, align 1
  %448 = icmp slt i8 %447, 0
  br i1 %448, label %455, label %449

449:                                              ; preds = %444
  %450 = load i8, ptr %421, align 1
  %451 = icmp slt i8 %450, 0
  br i1 %451, label %455, label %452

452:                                              ; preds = %449
  %453 = load i8, ptr %422, align 1
  %454 = icmp slt i8 %453, 0
  br i1 %454, label %455, label %457

455:                                              ; preds = %452, %449, %444
  %456 = getelementptr inbounds %struct.cf_mod, ptr %1, i32 0, i32 4
  store ptr @cgw_csum_xor_rel, ptr %456, align 4
  br label %462

457:                                              ; preds = %452
  %458 = icmp ugt i8 %447, %450
  %459 = getelementptr inbounds %struct.cf_mod, ptr %1, i32 0, i32 4
  br i1 %458, label %461, label %460

460:                                              ; preds = %457
  store ptr @cgw_csum_xor_pos, ptr %459, align 4
  br label %462

461:                                              ; preds = %457
  store ptr @cgw_csum_xor_neg, ptr %459, align 4
  br label %462

462:                                              ; preds = %461, %460, %455, %414
  %463 = getelementptr inbounds [19 x ptr], ptr %5, i32 0, i32 14
  %464 = load ptr, ptr %463, align 4
  %465 = icmp eq ptr %464, null
  br i1 %465, label %469, label %466

466:                                              ; preds = %462
  %467 = getelementptr inbounds %struct.cf_mod, ptr %1, i32 0, i32 5
  %468 = call i32 @nla_memcpy(ptr noundef %467, ptr noundef nonnull %464, i32 noundef 4) #17
  br label %469

469:                                              ; preds = %466, %462, %363
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false)
  %470 = getelementptr inbounds [19 x ptr], ptr %5, i32 0, i32 11
  %471 = load ptr, ptr %470, align 4
  %472 = icmp eq ptr %471, null
  br i1 %472, label %475, label %473

473:                                              ; preds = %469
  %474 = call i32 @nla_memcpy(ptr noundef %2, ptr noundef nonnull %471, i32 noundef 8) #17
  br label %475

475:                                              ; preds = %473, %469
  %476 = getelementptr inbounds [19 x ptr], ptr %5, i32 0, i32 9
  %477 = load ptr, ptr %476, align 4
  %478 = icmp ne ptr %477, null
  %479 = getelementptr inbounds [19 x ptr], ptr %5, i32 0, i32 10
  %480 = load ptr, ptr %479, align 4
  %481 = icmp ne ptr %480, null
  %482 = select i1 %478, i1 %481, i1 false
  br i1 %482, label %483, label %496

483:                                              ; preds = %475
  %484 = getelementptr i8, ptr %477, i32 4
  %485 = load i32, ptr %484, align 4
  %486 = getelementptr inbounds %struct.can_can_gw, ptr %2, i32 0, i32 1
  store i32 %485, ptr %486, align 4
  %487 = getelementptr i8, ptr %480, i32 4
  %488 = load i32, ptr %487, align 4
  %489 = getelementptr inbounds %struct.can_can_gw, ptr %2, i32 0, i32 2
  store i32 %488, ptr %489, align 4
  %490 = icmp eq i32 %485, 0
  %491 = icmp eq i32 %488, 0
  %492 = select i1 %490, i1 %491, i1 false
  %493 = select i1 %492, i32 0, i32 -19
  %494 = select i1 %491, i32 -19, i32 0
  %495 = select i1 %490, i32 %493, i32 %494
  br label %496

496:                                              ; preds = %483, %475, %439, %433, %418, %391, %385, %370, %20, %11, %10
  %497 = phi i32 [ %14, %11 ], [ -22, %20 ], [ -22, %10 ], [ -22, %370 ], [ -22, %385 ], [ -22, %391 ], [ -22, %418 ], [ -22, %433 ], [ -22, %439 ], [ -19, %475 ], [ %495, %483 ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %5) #17
  ret i32 %497
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #9 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cgw_register_filter(ptr noundef %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.cgw_job, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cgw_job, ptr %0, i32 0, i32 9
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cgw_job, ptr %0, i32 0, i32 9, i32 0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @can_rx_register(ptr noundef nonnull @init_net, ptr noundef %3, i32 noundef %5, i32 noundef %7, ptr noundef nonnull @can_can_gw_rcv, ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef null) #17
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mod_and_id(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #10 {
  %3 = load i32, ptr %1, align 8
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, %3
  store i32 %5, ptr %0, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mod_and_len(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = getelementptr inbounds %struct.canfd_frame, ptr %0, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, %4
  store i8 %7, ptr %5, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mod_and_flags(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 2
  %4 = load i8, ptr %3, align 1
  %5 = getelementptr inbounds %struct.canfd_frame, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, %4
  store i8 %7, ptr %5, align 1
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mod_and_fddata(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 5
  %4 = getelementptr inbounds %struct.canfd_frame, ptr %0, i32 0, i32 5
  %5 = load i64, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = and i64 %6, %5
  store i64 %7, ptr %4, align 8
  %8 = getelementptr %struct.canfd_frame, ptr %1, i32 0, i32 5, i32 8
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 8
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, %9
  store i64 %12, ptr %10, align 8
  %13 = getelementptr %struct.canfd_frame, ptr %1, i32 0, i32 5, i32 16
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 16
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, %14
  store i64 %17, ptr %15, align 8
  %18 = getelementptr %struct.canfd_frame, ptr %1, i32 0, i32 5, i32 24
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 24
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, %19
  store i64 %22, ptr %20, align 8
  %23 = getelementptr %struct.canfd_frame, ptr %1, i32 0, i32 5, i32 32
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 32
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, %24
  store i64 %27, ptr %25, align 8
  %28 = getelementptr %struct.canfd_frame, ptr %1, i32 0, i32 5, i32 40
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 40
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, %29
  store i64 %32, ptr %30, align 8
  %33 = getelementptr %struct.canfd_frame, ptr %1, i32 0, i32 5, i32 48
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 48
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, %34
  store i64 %37, ptr %35, align 8
  %38 = getelementptr %struct.canfd_frame, ptr %1, i32 0, i32 5, i32 56
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 56
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, %39
  store i64 %42, ptr %40, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mod_or_id(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = load i32, ptr %0, align 8
  %6 = or i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mod_or_len(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 1, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = getelementptr inbounds %struct.canfd_frame, ptr %0, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = or i8 %6, %4
  store i8 %7, ptr %5, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mod_or_flags(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 1, i32 2
  %4 = load i8, ptr %3, align 1
  %5 = getelementptr inbounds %struct.canfd_frame, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 1
  %7 = or i8 %6, %4
  store i8 %7, ptr %5, align 1
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mod_or_fddata(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 1, i32 5
  %4 = getelementptr inbounds %struct.canfd_frame, ptr %0, i32 0, i32 5
  %5 = load i64, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = or i64 %6, %5
  store i64 %7, ptr %4, align 8
  %8 = getelementptr %struct.anon.135, ptr %1, i32 0, i32 1, i32 5, i32 8
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 8
  %11 = load i64, ptr %10, align 8
  %12 = or i64 %11, %9
  store i64 %12, ptr %10, align 8
  %13 = getelementptr %struct.anon.135, ptr %1, i32 0, i32 1, i32 5, i32 16
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 16
  %16 = load i64, ptr %15, align 8
  %17 = or i64 %16, %14
  store i64 %17, ptr %15, align 8
  %18 = getelementptr %struct.anon.135, ptr %1, i32 0, i32 1, i32 5, i32 24
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 24
  %21 = load i64, ptr %20, align 8
  %22 = or i64 %21, %19
  store i64 %22, ptr %20, align 8
  %23 = getelementptr %struct.anon.135, ptr %1, i32 0, i32 1, i32 5, i32 32
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 32
  %26 = load i64, ptr %25, align 8
  %27 = or i64 %26, %24
  store i64 %27, ptr %25, align 8
  %28 = getelementptr %struct.anon.135, ptr %1, i32 0, i32 1, i32 5, i32 40
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 40
  %31 = load i64, ptr %30, align 8
  %32 = or i64 %31, %29
  store i64 %32, ptr %30, align 8
  %33 = getelementptr %struct.anon.135, ptr %1, i32 0, i32 1, i32 5, i32 48
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 48
  %36 = load i64, ptr %35, align 8
  %37 = or i64 %36, %34
  store i64 %37, ptr %35, align 8
  %38 = getelementptr %struct.anon.135, ptr %1, i32 0, i32 1, i32 5, i32 56
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 56
  %41 = load i64, ptr %40, align 8
  %42 = or i64 %41, %39
  store i64 %42, ptr %40, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mod_xor_id(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = load i32, ptr %0, align 8
  %6 = xor i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mod_xor_len(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 2, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = getelementptr inbounds %struct.canfd_frame, ptr %0, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = xor i8 %6, %4
  store i8 %7, ptr %5, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mod_xor_flags(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 2, i32 2
  %4 = load i8, ptr %3, align 1
  %5 = getelementptr inbounds %struct.canfd_frame, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 1
  %7 = xor i8 %6, %4
  store i8 %7, ptr %5, align 1
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mod_xor_fddata(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 2, i32 5
  %4 = getelementptr inbounds %struct.canfd_frame, ptr %0, i32 0, i32 5
  %5 = load i64, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = xor i64 %6, %5
  store i64 %7, ptr %4, align 8
  %8 = getelementptr %struct.anon.135, ptr %1, i32 0, i32 2, i32 5, i32 8
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 8
  %11 = load i64, ptr %10, align 8
  %12 = xor i64 %11, %9
  store i64 %12, ptr %10, align 8
  %13 = getelementptr %struct.anon.135, ptr %1, i32 0, i32 2, i32 5, i32 16
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 16
  %16 = load i64, ptr %15, align 8
  %17 = xor i64 %16, %14
  store i64 %17, ptr %15, align 8
  %18 = getelementptr %struct.anon.135, ptr %1, i32 0, i32 2, i32 5, i32 24
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 24
  %21 = load i64, ptr %20, align 8
  %22 = xor i64 %21, %19
  store i64 %22, ptr %20, align 8
  %23 = getelementptr %struct.anon.135, ptr %1, i32 0, i32 2, i32 5, i32 32
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 32
  %26 = load i64, ptr %25, align 8
  %27 = xor i64 %26, %24
  store i64 %27, ptr %25, align 8
  %28 = getelementptr %struct.anon.135, ptr %1, i32 0, i32 2, i32 5, i32 40
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 40
  %31 = load i64, ptr %30, align 8
  %32 = xor i64 %31, %29
  store i64 %32, ptr %30, align 8
  %33 = getelementptr %struct.anon.135, ptr %1, i32 0, i32 2, i32 5, i32 48
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 48
  %36 = load i64, ptr %35, align 8
  %37 = xor i64 %36, %34
  store i64 %37, ptr %35, align 8
  %38 = getelementptr %struct.anon.135, ptr %1, i32 0, i32 2, i32 5, i32 56
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 56
  %41 = load i64, ptr %40, align 8
  %42 = xor i64 %41, %39
  store i64 %42, ptr %40, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mod_set_id(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 8
  store i32 %4, ptr %0, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mod_set_len(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 3, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = getelementptr inbounds %struct.canfd_frame, ptr %0, i32 0, i32 1
  store i8 %4, ptr %5, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mod_set_flags(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 3, i32 2
  %4 = load i8, ptr %3, align 1
  %5 = getelementptr inbounds %struct.canfd_frame, ptr %0, i32 0, i32 2
  store i8 %4, ptr %5, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mod_set_fddata(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = getelementptr inbounds %struct.canfd_frame, ptr %0, i32 0, i32 5
  %4 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 3, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %3, ptr noundef align 8 dereferenceable(64) %4, i32 64, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mod_and_ccdlc(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.can_frame, ptr %0, i32 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 8
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.can_frame, ptr %0, i32 0, i32 4
  %8 = load i8, ptr %7, align 1
  %9 = add i8 %8, -9
  %10 = icmp ult i8 %9, 7
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store i8 %8, ptr %3, align 4
  br label %12

12:                                               ; preds = %11, %6, %2
  %13 = phi i8 [ %4, %2 ], [ 8, %6 ], [ %8, %11 ]
  %14 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %13, %15
  store i8 %16, ptr %3, align 4
  %17 = getelementptr inbounds %struct.can_frame, ptr %0, i32 0, i32 4
  store i8 0, ptr %17, align 1
  %18 = add i8 %16, -16
  %19 = icmp ult i8 %18, -7
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  store i8 %16, ptr %17, align 1
  store i8 8, ptr %3, align 4
  br label %21

21:                                               ; preds = %20, %12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mod_and_data(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 5
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.canfd_frame, ptr %0, i32 0, i32 5
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, %4
  store i64 %7, ptr %5, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mod_or_ccdlc(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.can_frame, ptr %0, i32 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 8
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.can_frame, ptr %0, i32 0, i32 4
  %8 = load i8, ptr %7, align 1
  %9 = add i8 %8, -9
  %10 = icmp ult i8 %9, 7
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store i8 %8, ptr %3, align 4
  br label %12

12:                                               ; preds = %11, %6, %2
  %13 = phi i8 [ %4, %2 ], [ 8, %6 ], [ %8, %11 ]
  %14 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 1, i32 1
  %15 = load i8, ptr %14, align 4
  %16 = or i8 %13, %15
  store i8 %16, ptr %3, align 4
  %17 = getelementptr inbounds %struct.can_frame, ptr %0, i32 0, i32 4
  store i8 0, ptr %17, align 1
  %18 = add i8 %16, -16
  %19 = icmp ult i8 %18, -7
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  store i8 %16, ptr %17, align 1
  store i8 8, ptr %3, align 4
  br label %21

21:                                               ; preds = %20, %12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mod_or_data(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 1, i32 5
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.canfd_frame, ptr %0, i32 0, i32 5
  %6 = load i64, ptr %5, align 8
  %7 = or i64 %6, %4
  store i64 %7, ptr %5, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mod_xor_ccdlc(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.can_frame, ptr %0, i32 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 8
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.can_frame, ptr %0, i32 0, i32 4
  %8 = load i8, ptr %7, align 1
  %9 = add i8 %8, -9
  %10 = icmp ult i8 %9, 7
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store i8 %8, ptr %3, align 4
  br label %12

12:                                               ; preds = %11, %6, %2
  %13 = phi i8 [ %4, %2 ], [ 8, %6 ], [ %8, %11 ]
  %14 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 2, i32 1
  %15 = load i8, ptr %14, align 4
  %16 = xor i8 %13, %15
  store i8 %16, ptr %3, align 4
  %17 = getelementptr inbounds %struct.can_frame, ptr %0, i32 0, i32 4
  store i8 0, ptr %17, align 1
  %18 = add i8 %16, -16
  %19 = icmp ult i8 %18, -7
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  store i8 %16, ptr %17, align 1
  store i8 8, ptr %3, align 4
  br label %21

21:                                               ; preds = %20, %12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mod_xor_data(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 2, i32 5
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.canfd_frame, ptr %0, i32 0, i32 5
  %6 = load i64, ptr %5, align 8
  %7 = xor i64 %6, %4
  store i64 %7, ptr %5, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mod_set_ccdlc(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 3, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = getelementptr inbounds %struct.canfd_frame, ptr %0, i32 0, i32 1
  store i8 %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.can_frame, ptr %0, i32 0, i32 4
  store i8 0, ptr %6, align 1
  %7 = add i8 %4, -16
  %8 = icmp ult i8 %7, -7
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i8 %4, ptr %6, align 1
  store i8 8, ptr %5, align 4
  br label %10

10:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mod_set_data(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.anon.135, ptr %1, i32 0, i32 3, i32 5
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.canfd_frame, ptr %0, i32 0, i32 5
  store i64 %4, ptr %5, align 8
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cgw_csum_crc8_rel(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #11 {
  %3 = load i8, ptr %1, align 1
  %4 = sext i8 %3 to i32
  %5 = getelementptr inbounds %struct.canfd_frame, ptr %0, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = icmp slt i8 %3, 0
  %9 = select i1 %8, i32 %7, i32 0
  %10 = add nsw i32 %9, %4
  %11 = getelementptr inbounds %struct.cgw_csum_crc8, ptr %1, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp slt i8 %12, 0
  %15 = select i1 %14, i32 %7, i32 0
  %16 = add nsw i32 %15, %13
  %17 = getelementptr inbounds %struct.cgw_csum_crc8, ptr %1, i32 0, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp slt i8 %18, 0
  %21 = select i1 %20, i32 %7, i32 0
  %22 = add nsw i32 %21, %19
  %23 = icmp slt i32 %10, 0
  %24 = icmp slt i32 %16, 0
  %25 = select i1 %23, i1 true, i1 %24
  %26 = icmp slt i32 %22, 0
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %94, label %28

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.cgw_csum_crc8, ptr %1, i32 0, i32 3
  %30 = load i8, ptr %29, align 1
  %31 = icmp ugt i32 %10, %16
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = icmp sgt i8 %3, %12
  br i1 %33, label %58, label %36

34:                                               ; preds = %28
  %35 = icmp slt i8 %3, %12
  br i1 %35, label %58, label %47

36:                                               ; preds = %36, %32
  %37 = phi i32 [ %45, %36 ], [ %4, %32 ]
  %38 = phi i8 [ %44, %36 ], [ %30, %32 ]
  %39 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 %37
  %40 = load i8, ptr %39, align 1
  %41 = xor i8 %40, %38
  %42 = zext i8 %41 to i32
  %43 = getelementptr %struct.cgw_csum_crc8, ptr %1, i32 0, i32 5, i32 %42
  %44 = load i8, ptr %43, align 1
  %45 = add nsw i32 %37, 1
  %46 = icmp eq i32 %37, %13
  br i1 %46, label %58, label %36

47:                                               ; preds = %47, %34
  %48 = phi i32 [ %56, %47 ], [ %4, %34 ]
  %49 = phi i8 [ %55, %47 ], [ %30, %34 ]
  %50 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 %48
  %51 = load i8, ptr %50, align 1
  %52 = xor i8 %51, %49
  %53 = zext i8 %52 to i32
  %54 = getelementptr %struct.cgw_csum_crc8, ptr %1, i32 0, i32 5, i32 %53
  %55 = load i8, ptr %54, align 1
  %56 = add nsw i32 %48, -1
  %57 = icmp sgt i32 %48, %13
  br i1 %57, label %47, label %58

58:                                               ; preds = %47, %36, %34, %32
  %59 = phi i8 [ %30, %34 ], [ %30, %32 ], [ %55, %47 ], [ %44, %36 ]
  %60 = getelementptr inbounds %struct.cgw_csum_crc8, ptr %1, i32 0, i32 6
  %61 = load i8, ptr %60, align 1
  switch i8 %61, label %88 [
    i8 1, label %62
    i8 2, label %67
    i8 3, label %76
  ]

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.cgw_csum_crc8, ptr %1, i32 0, i32 7
  %64 = load i8, ptr %63, align 1
  %65 = xor i8 %64, %59
  %66 = zext i8 %65 to i32
  br label %84

67:                                               ; preds = %58
  %68 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 1
  %69 = load i8, ptr %68, align 1
  %70 = and i8 %69, 15
  %71 = zext i8 %70 to i32
  %72 = getelementptr %struct.cgw_csum_crc8, ptr %1, i32 0, i32 7, i32 %71
  %73 = load i8, ptr %72, align 1
  %74 = xor i8 %73, %59
  %75 = zext i8 %74 to i32
  br label %84

76:                                               ; preds = %58
  %77 = zext i8 %59 to i32
  %78 = load i32, ptr %0, align 8
  %79 = and i32 %78, 255
  %80 = xor i32 %79, %77
  %81 = lshr i32 %78, 8
  %82 = and i32 %81, 255
  %83 = xor i32 %80, %82
  br label %84

84:                                               ; preds = %76, %67, %62
  %85 = phi i32 [ %83, %76 ], [ %75, %67 ], [ %66, %62 ]
  %86 = getelementptr %struct.cgw_csum_crc8, ptr %1, i32 0, i32 5, i32 %85
  %87 = load i8, ptr %86, align 1
  br label %88

88:                                               ; preds = %84, %58
  %89 = phi i8 [ %59, %58 ], [ %87, %84 ]
  %90 = getelementptr inbounds %struct.cgw_csum_crc8, ptr %1, i32 0, i32 4
  %91 = load i8, ptr %90, align 1
  %92 = xor i8 %91, %89
  %93 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 %19
  store i8 %92, ptr %93, align 1
  br label %94

94:                                               ; preds = %88, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cgw_csum_crc8_pos(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #13 {
  %3 = getelementptr inbounds %struct.cgw_csum_crc8, ptr %1, i32 0, i32 3
  %4 = load i8, ptr %1, align 1
  %5 = getelementptr inbounds %struct.cgw_csum_crc8, ptr %1, i32 0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = load i8, ptr %3, align 1
  %8 = icmp sgt i8 %4, %6
  br i1 %8, label %23, label %9

9:                                                ; preds = %2
  %10 = sext i8 %6 to i32
  %11 = sext i8 %4 to i32
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi i8 [ %21, %12 ], [ %7, %9 ]
  %14 = phi i32 [ %20, %12 ], [ %11, %9 ]
  %15 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = xor i8 %16, %13
  %18 = zext i8 %17 to i32
  %19 = getelementptr %struct.cgw_csum_crc8, ptr %1, i32 0, i32 5, i32 %18
  %20 = add nsw i32 %14, 1
  %21 = load i8, ptr %19, align 1
  %22 = icmp eq i32 %14, %10
  br i1 %22, label %23, label %12

23:                                               ; preds = %12, %2
  %24 = phi i8 [ %7, %2 ], [ %21, %12 ]
  %25 = getelementptr inbounds %struct.cgw_csum_crc8, ptr %1, i32 0, i32 6
  %26 = load i8, ptr %25, align 1
  switch i8 %26, label %53 [
    i8 1, label %27
    i8 2, label %32
    i8 3, label %41
  ]

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.cgw_csum_crc8, ptr %1, i32 0, i32 7
  %29 = load i8, ptr %28, align 1
  %30 = xor i8 %29, %24
  %31 = zext i8 %30 to i32
  br label %49

32:                                               ; preds = %23
  %33 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, 15
  %36 = zext i8 %35 to i32
  %37 = getelementptr %struct.cgw_csum_crc8, ptr %1, i32 0, i32 7, i32 %36
  %38 = load i8, ptr %37, align 1
  %39 = xor i8 %38, %24
  %40 = zext i8 %39 to i32
  br label %49

41:                                               ; preds = %23
  %42 = zext i8 %24 to i32
  %43 = load i32, ptr %0, align 8
  %44 = and i32 %43, 255
  %45 = xor i32 %44, %42
  %46 = lshr i32 %43, 8
  %47 = and i32 %46, 255
  %48 = xor i32 %45, %47
  br label %49

49:                                               ; preds = %41, %32, %27
  %50 = phi i32 [ %48, %41 ], [ %40, %32 ], [ %31, %27 ]
  %51 = getelementptr %struct.cgw_csum_crc8, ptr %1, i32 0, i32 5, i32 %50
  %52 = load i8, ptr %51, align 1
  br label %53

53:                                               ; preds = %49, %23
  %54 = phi i8 [ %24, %23 ], [ %52, %49 ]
  %55 = getelementptr inbounds %struct.cgw_csum_crc8, ptr %1, i32 0, i32 4
  %56 = load i8, ptr %55, align 1
  %57 = xor i8 %56, %54
  %58 = getelementptr inbounds %struct.cgw_csum_crc8, ptr %1, i32 0, i32 2
  %59 = load i8, ptr %58, align 1
  %60 = sext i8 %59 to i32
  %61 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 %60
  store i8 %57, ptr %61, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cgw_csum_crc8_neg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #13 {
  %3 = getelementptr inbounds %struct.cgw_csum_crc8, ptr %1, i32 0, i32 3
  %4 = load i8, ptr %1, align 1
  %5 = getelementptr inbounds %struct.cgw_csum_crc8, ptr %1, i32 0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = sext i8 %6 to i32
  %8 = load i8, ptr %3, align 1
  %9 = icmp slt i8 %4, %6
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = sext i8 %4 to i32
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i8 [ %21, %12 ], [ %8, %10 ]
  %14 = phi i32 [ %20, %12 ], [ %11, %10 ]
  %15 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = xor i8 %16, %13
  %18 = zext i8 %17 to i32
  %19 = getelementptr %struct.cgw_csum_crc8, ptr %1, i32 0, i32 5, i32 %18
  %20 = add nsw i32 %14, -1
  %21 = load i8, ptr %19, align 1
  %22 = icmp sgt i32 %14, %7
  br i1 %22, label %12, label %23

23:                                               ; preds = %12, %2
  %24 = phi i8 [ %8, %2 ], [ %21, %12 ]
  %25 = getelementptr inbounds %struct.cgw_csum_crc8, ptr %1, i32 0, i32 6
  %26 = load i8, ptr %25, align 1
  switch i8 %26, label %53 [
    i8 1, label %27
    i8 2, label %32
    i8 3, label %41
  ]

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.cgw_csum_crc8, ptr %1, i32 0, i32 7
  %29 = load i8, ptr %28, align 1
  %30 = xor i8 %29, %24
  %31 = zext i8 %30 to i32
  br label %49

32:                                               ; preds = %23
  %33 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, 15
  %36 = zext i8 %35 to i32
  %37 = getelementptr %struct.cgw_csum_crc8, ptr %1, i32 0, i32 7, i32 %36
  %38 = load i8, ptr %37, align 1
  %39 = xor i8 %38, %24
  %40 = zext i8 %39 to i32
  br label %49

41:                                               ; preds = %23
  %42 = zext i8 %24 to i32
  %43 = load i32, ptr %0, align 8
  %44 = and i32 %43, 255
  %45 = xor i32 %44, %42
  %46 = lshr i32 %43, 8
  %47 = and i32 %46, 255
  %48 = xor i32 %45, %47
  br label %49

49:                                               ; preds = %41, %32, %27
  %50 = phi i32 [ %48, %41 ], [ %40, %32 ], [ %31, %27 ]
  %51 = getelementptr %struct.cgw_csum_crc8, ptr %1, i32 0, i32 5, i32 %50
  %52 = load i8, ptr %51, align 1
  br label %53

53:                                               ; preds = %49, %23
  %54 = phi i8 [ %24, %23 ], [ %52, %49 ]
  %55 = getelementptr inbounds %struct.cgw_csum_crc8, ptr %1, i32 0, i32 4
  %56 = load i8, ptr %55, align 1
  %57 = xor i8 %56, %54
  %58 = getelementptr inbounds %struct.cgw_csum_crc8, ptr %1, i32 0, i32 2
  %59 = load i8, ptr %58, align 1
  %60 = sext i8 %59 to i32
  %61 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 %60
  store i8 %57, ptr %61, align 1
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cgw_csum_xor_rel(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #11 {
  %3 = load i8, ptr %1, align 1
  %4 = sext i8 %3 to i32
  %5 = getelementptr inbounds %struct.canfd_frame, ptr %0, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = icmp slt i8 %3, 0
  %9 = select i1 %8, i32 %7, i32 0
  %10 = add nsw i32 %9, %4
  %11 = getelementptr inbounds %struct.cgw_csum_xor, ptr %1, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp slt i8 %12, 0
  %15 = select i1 %14, i32 %7, i32 0
  %16 = add nsw i32 %15, %13
  %17 = getelementptr inbounds %struct.cgw_csum_xor, ptr %1, i32 0, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp slt i8 %18, 0
  %21 = select i1 %20, i32 %7, i32 0
  %22 = add nsw i32 %21, %19
  %23 = icmp slt i32 %10, 0
  %24 = icmp slt i32 %16, 0
  %25 = select i1 %23, i1 true, i1 %24
  %26 = icmp slt i32 %22, 0
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %51, label %28

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.cgw_csum_xor, ptr %1, i32 0, i32 3
  %30 = load i8, ptr %29, align 1
  %31 = icmp ugt i32 %10, %16
  br i1 %31, label %40, label %32

32:                                               ; preds = %32, %28
  %33 = phi i32 [ %38, %32 ], [ %10, %28 ]
  %34 = phi i8 [ %37, %32 ], [ %30, %28 ]
  %35 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 %33
  %36 = load i8, ptr %35, align 1
  %37 = xor i8 %36, %34
  %38 = add nsw i32 %33, 1
  %39 = icmp slt i32 %33, %16
  br i1 %39, label %32, label %48

40:                                               ; preds = %40, %28
  %41 = phi i32 [ %46, %40 ], [ %10, %28 ]
  %42 = phi i8 [ %45, %40 ], [ %30, %28 ]
  %43 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 %41
  %44 = load i8, ptr %43, align 1
  %45 = xor i8 %44, %42
  %46 = add nsw i32 %41, -1
  %47 = icmp sgt i32 %41, %16
  br i1 %47, label %40, label %48

48:                                               ; preds = %40, %32
  %49 = phi i8 [ %45, %40 ], [ %37, %32 ]
  %50 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 %22
  store i8 %49, ptr %50, align 1
  br label %51

51:                                               ; preds = %48, %2
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cgw_csum_xor_pos(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.cgw_csum_xor, ptr %1, i32 0, i32 3
  %4 = load i8, ptr %3, align 1
  %5 = load i8, ptr %1, align 1
  %6 = getelementptr inbounds %struct.cgw_csum_xor, ptr %1, i32 0, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = icmp sgt i8 %5, %7
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = sext i8 %7 to i32
  %11 = sext i8 %5 to i32
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi i32 [ %18, %12 ], [ %11, %9 ]
  %14 = phi i8 [ %17, %12 ], [ %4, %9 ]
  %15 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 %13
  %16 = load i8, ptr %15, align 1
  %17 = xor i8 %16, %14
  %18 = add nsw i32 %13, 1
  %19 = icmp eq i32 %13, %10
  br i1 %19, label %20, label %12

20:                                               ; preds = %12, %2
  %21 = phi i8 [ %4, %2 ], [ %17, %12 ]
  %22 = getelementptr inbounds %struct.cgw_csum_xor, ptr %1, i32 0, i32 2
  %23 = load i8, ptr %22, align 1
  %24 = sext i8 %23 to i32
  %25 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 %24
  store i8 %21, ptr %25, align 1
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cgw_csum_xor_neg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.cgw_csum_xor, ptr %1, i32 0, i32 3
  %4 = load i8, ptr %3, align 1
  %5 = load i8, ptr %1, align 1
  %6 = getelementptr inbounds %struct.cgw_csum_xor, ptr %1, i32 0, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp slt i8 %5, %7
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = sext i8 %5 to i32
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ %18, %12 ], [ %11, %10 ]
  %14 = phi i8 [ %17, %12 ], [ %4, %10 ]
  %15 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 %13
  %16 = load i8, ptr %15, align 1
  %17 = xor i8 %16, %14
  %18 = add nsw i32 %13, -1
  %19 = icmp sgt i32 %13, %8
  br i1 %19, label %12, label %20

20:                                               ; preds = %12, %2
  %21 = phi i8 [ %4, %2 ], [ %17, %12 ]
  %22 = getelementptr inbounds %struct.cgw_csum_xor, ptr %1, i32 0, i32 2
  %23 = load i8, ptr %22, align 1
  %24 = sext i8 %23 to i32
  %25 = getelementptr %struct.canfd_frame, ptr %0, i32 0, i32 5, i32 %24
  store i8 %21, ptr %25, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_register(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }

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
!10 = !{i64 2155402537, i64 2155403014, i64 2155402574, i64 2155402630, i64 2155402664, i64 2155402688, i64 2155402729, i64 2155402750, i64 2155402778, i64 2155402812}
!11 = !{i64 2149076895}
!12 = !{!"auto-init"}
!13 = !{i64 2149077112}
!14 = !{i64 2148890665}
!15 = !{i64 2150503991}
