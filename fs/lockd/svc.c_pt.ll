; ModuleID = '/llk/IR/fs/lockd/svc.c_pt.bc'
source_filename = "../fs/lockd/svc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nlmsvc_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22nlmsvc_ops\22\09\09\09\09\09"
module asm "__kstrtabns_nlmsvc_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lockd_up:\09\09\09\09\09"
module asm "\09.asciz \09\22lockd_up\22\09\09\09\09\09"
module asm "__kstrtabns_lockd_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lockd_down:\09\09\09\09\09"
module asm "\09.asciz \09\22lockd_down\22\09\09\09\09\09"
module asm "__kstrtabns_lockd_down:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.126 }
%union.anon.126 = type { ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.svc_program = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.svc_serv_ops = type { ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.svc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.svc_version = type { i32, i32, ptr, ptr, i32, i8, i8, i8, ptr }
%struct.svc_procedure = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.89, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.89 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.svc_serv = type { ptr, ptr, %struct.spinlock, %struct.kref, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, %struct.timer_list, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lockd_net = type { i32, i32, i32, %struct.delayed_work, %struct.lock_manager, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.lock_manager = type { %struct.list_head, i8 }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.114 }
%union.anon.114 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.auth_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.inet6_ifaddr = type { %struct.in6_addr, i32, i32, i32, i32, %struct.refcount_struct, %struct.spinlock, i32, i32, i8, i8, i16, i64, i32, i32, %struct.delayed_work, ptr, ptr, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, %struct.callback_head, %struct.in6_addr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.145 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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

@nlmsvc_ops = dso_local global ptr null, align 4
@__kstrtab_nlmsvc_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_nlmsvc_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_nlmsvc_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nlmsvc_ops to i32), ptr @__kstrtab_nlmsvc_ops, ptr @__kstrtabns_nlmsvc_ops }, section "___ksymtab_gpl+nlmsvc_ops", align 4
@nlmsvc_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nlmsvc_mutex, i64 12), ptr getelementptr (i8, ptr @nlmsvc_mutex, i64 12) } }, align 4
@nlmsvc_serv = internal unnamed_addr global ptr null, align 4
@__kstrtab_lockd_up = external dso_local constant [0 x i8], align 1
@__kstrtabns_lockd_up = external dso_local constant [0 x i8], align 1
@__ksymtab_lockd_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lockd_up to i32), ptr @__kstrtab_lockd_up, ptr @__kstrtabns_lockd_up }, section "___ksymtab_gpl+lockd_up", align 4
@__kstrtab_lockd_down = external dso_local constant [0 x i8], align 1
@__kstrtabns_lockd_down = external dso_local constant [0 x i8], align 1
@__ksymtab_lockd_down = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lockd_down to i32), ptr @__kstrtab_lockd_down, ptr @__kstrtabns_lockd_down }, section "___ksymtab_gpl+lockd_down", align 4
@__UNIQUE_ID_author460 = internal constant [44 x i8] c"lockd.author=Olaf Kirch <okir@monad.swb.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description461 = internal constant [56 x i8] c"lockd.description=NFS file locking service version 0.5.\00", section ".modinfo", align 1
@__UNIQUE_ID_file462 = internal constant [26 x i8] c"lockd.file=fs/lockd/lockd\00", section ".modinfo", align 1
@__UNIQUE_ID_license463 = internal constant [18 x i8] c"lockd.license=GPL\00", section ".modinfo", align 1
@__param_str_nlm_grace_period = internal constant [23 x i8] c"lockd.nlm_grace_period\00", align 1
@__param_ops_nlm_grace_period = internal constant %struct.kernel_param_ops { i32 0, ptr @param_set_grace_period, ptr @param_get_ulong, ptr null }, align 4
@nlm_grace_period = internal global i32 0, align 4
@__param_nlm_grace_period = internal constant %struct.kernel_param { ptr @__param_str_nlm_grace_period, ptr null, ptr @__param_ops_nlm_grace_period, i16 420, i8 -1, i8 0, %union.anon.126 { ptr @nlm_grace_period } }, section "__param", align 4
@__param_str_nlm_timeout = internal constant [18 x i8] c"lockd.nlm_timeout\00", align 1
@__param_ops_nlm_timeout = internal constant %struct.kernel_param_ops { i32 0, ptr @param_set_timeout, ptr @param_get_ulong, ptr null }, align 4
@nlm_timeout = internal global i32 10, align 4
@__param_nlm_timeout = internal constant %struct.kernel_param { ptr @__param_str_nlm_timeout, ptr null, ptr @__param_ops_nlm_timeout, i16 420, i8 -1, i8 0, %union.anon.126 { ptr @nlm_timeout } }, section "__param", align 4
@__param_str_nlm_udpport = internal constant [18 x i8] c"lockd.nlm_udpport\00", align 1
@__param_ops_nlm_udpport = internal constant %struct.kernel_param_ops { i32 0, ptr @param_set_port, ptr @param_get_int, ptr null }, align 4
@nlm_udpport = internal global i32 0, align 4
@__param_nlm_udpport = internal constant %struct.kernel_param { ptr @__param_str_nlm_udpport, ptr null, ptr @__param_ops_nlm_udpport, i16 420, i8 -1, i8 0, %union.anon.126 { ptr @nlm_udpport } }, section "__param", align 4
@__param_str_nlm_tcpport = internal constant [18 x i8] c"lockd.nlm_tcpport\00", align 1
@__param_ops_nlm_tcpport = internal constant %struct.kernel_param_ops { i32 0, ptr @param_set_port, ptr @param_get_int, ptr null }, align 4
@nlm_tcpport = internal global i32 0, align 4
@__param_nlm_tcpport = internal constant %struct.kernel_param { ptr @__param_str_nlm_tcpport, ptr null, ptr @__param_ops_nlm_tcpport, i16 420, i8 -1, i8 0, %union.anon.126 { ptr @nlm_tcpport } }, section "__param", align 4
@__param_str_nsm_use_hostnames = internal constant [24 x i8] c"lockd.nsm_use_hostnames\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nsm_use_hostnames = external dso_local global i8, align 1
@__param_nsm_use_hostnames = internal constant %struct.kernel_param { ptr @__param_str_nsm_use_hostnames, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.126 { ptr @nsm_use_hostnames } }, section "__param", align 4
@__UNIQUE_ID_nsm_use_hostnamestype464 = internal constant [38 x i8] c"lockd.parmtype=nsm_use_hostnames:bool\00", section ".modinfo", align 1
@__param_str_nlm_max_connections = internal constant [26 x i8] c"lockd.nlm_max_connections\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@nlm_max_connections = internal global i32 1024, align 4
@__param_nlm_max_connections = internal constant %struct.kernel_param { ptr @__param_str_nlm_max_connections, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.126 { ptr @nlm_max_connections } }, section "__param", align 4
@__UNIQUE_ID_nlm_max_connectionstype465 = internal constant [40 x i8] c"lockd.parmtype=nlm_max_connections:uint\00", section ".modinfo", align 1
@lockd_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @lockd_init_net, ptr null, ptr @lockd_exit_net, ptr null, ptr @lockd_net_id, i32 76 }, align 4
@nlm_sysctl_table = internal unnamed_addr global ptr null, align 4
@__initcall__kmod_lockd__466_690_init_nlm6 = internal global ptr @init_nlm, section ".initcall6.init", align 4
@__exitcall_exit_nlm = internal global ptr @exit_nlm, section ".exitcall.exit", align 4
@nlmsvc_timeout = dso_local local_unnamed_addr global i32 0, align 4
@lockd_net_id = dso_local global i32 0, align 4
@nlmsvc_users = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"\014lockd_up: no pid, %d users??\0A\00", align 1
@nlmsvc_program = internal global %struct.svc_program { ptr null, i32 100021, i32 0, i32 0, i32 5, ptr @nlmsvc_version, ptr @.str.2, ptr @.str.3, ptr @nlmsvc_stats, ptr @lockd_authenticate, ptr @svc_generic_init_request, ptr @svc_generic_rpcbind_set }, align 4
@lockd_sv_ops = internal constant %struct.svc_serv_ops { ptr @svc_rpcb_cleanup, ptr @lockd, ptr @svc_xprt_do_enqueue, ptr null }, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"\014lockd_up: create service failed\0A\00", align 1
@lockd_inetaddr_notifier = internal global %struct.notifier_block { ptr @lockd_inetaddr_event, ptr null, i32 0 }, align 4
@lockd_inet6addr_notifier = internal global %struct.notifier_block { ptr @lockd_inet6addr_event, ptr null, i32 0 }, align 4
@nlmsvc_version = internal global [5 x ptr] [ptr null, ptr @nlmsvc_version1, ptr null, ptr @nlmsvc_version3, ptr @nlmsvc_version4], align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"lockd\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"nfsd\00", align 1
@nlmsvc_stats = internal global %struct.svc_stat zeroinitializer, align 4
@nlmsvc_version1 = internal constant %struct.svc_version { i32 1, i32 17, ptr @nlmsvc_procedures, ptr @nlmsvc_version1_count, i32 344, i8 0, i8 0, i8 0, ptr @nlmsvc_dispatch }, align 4
@nlmsvc_version3 = internal constant %struct.svc_version { i32 3, i32 24, ptr @nlmsvc_procedures, ptr @nlmsvc_version3_count, i32 344, i8 0, i8 0, i8 0, ptr @nlmsvc_dispatch }, align 4
@nlmsvc_version4 = internal constant %struct.svc_version { i32 4, i32 24, ptr @nlmsvc_procedures4, ptr @nlmsvc_version4_count, i32 344, i8 0, i8 0, i8 0, ptr @nlmsvc_dispatch }, align 4
@nlmsvc_procedures = external dso_local constant [0 x %struct.svc_procedure], align 4
@nlmsvc_version1_count = internal global [17 x i32] zeroinitializer, align 4
@nlmsvc_version3_count = internal global [24 x i32] zeroinitializer, align 4
@nlmsvc_procedures4 = external dso_local constant [0 x %struct.svc_procedure], align 4
@nlmsvc_version4_count = internal global [24 x i32] zeroinitializer, align 4
@init_net = external dso_local global %struct.net, align 64
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@make_socks.warned = internal unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"\014lockd_up: makesock failed, error=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"fs/lockd/svc.c\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"lockd_down: no users!\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"\013%s: no users! net=%x\0A\00", align 1
@__func__.lockd_down_net = private unnamed_addr constant [15 x i8] c"lockd_down_net\00", align 1
@lockd_exit_net.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"net %x %s: lockd_manager.list is not empty\0A\00", align 1
@__func__.lockd_exit_net = private unnamed_addr constant [15 x i8] c"lockd_exit_net\00", align 1
@lockd_exit_net.__already_done.11 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"net %x %s: nsm_handles list is not empty\0A\00", align 1
@lockd_exit_net.__already_done.13 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"net %x %s: grace_period_end was not cancelled\0A\00", align 1
@nlm_sysctl_root = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.15, ptr null, i32 0, i16 365, ptr @nlm_sysctl_dir, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.15 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@nlm_sysctl_dir = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.16, ptr null, i32 0, i16 365, ptr @nlm_sysctls, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.16 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@nlm_sysctls = internal global [7 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.17, ptr @nlm_grace_period, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @nlm_grace_period_min, ptr @nlm_grace_period_max }, %struct.ctl_table { ptr @.str.18, ptr @nlm_timeout, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @nlm_timeout_min, ptr @nlm_timeout_max }, %struct.ctl_table { ptr @.str.19, ptr @nlm_udpport, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @nlm_port_min, ptr @nlm_port_max }, %struct.ctl_table { ptr @.str.20, ptr @nlm_tcpport, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @nlm_port_min, ptr @nlm_port_max }, %struct.ctl_table { ptr @.str.21, ptr @nsm_use_hostnames, i32 4, i16 420, ptr null, ptr @proc_dobool, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.22, ptr @nsm_local_state, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.17 = private unnamed_addr constant [17 x i8] c"nlm_grace_period\00", align 1
@nlm_grace_period_min = internal constant i32 0, align 4
@nlm_grace_period_max = internal constant i32 240, align 4
@.str.18 = private unnamed_addr constant [12 x i8] c"nlm_timeout\00", align 1
@nlm_timeout_min = internal constant i32 3, align 4
@nlm_timeout_max = internal constant i32 20, align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"nlm_udpport\00", align 1
@nlm_port_min = internal constant i32 0, align 4
@nlm_port_max = internal constant i32 65535, align 4
@.str.20 = private unnamed_addr constant [12 x i8] c"nlm_tcpport\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"nsm_use_hostnames\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"nsm_local_state\00", align 1
@nsm_local_state = external dso_local global i32, align 4
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author460, ptr @__UNIQUE_ID_description461, ptr @__UNIQUE_ID_file462, ptr @__UNIQUE_ID_license463, ptr @__UNIQUE_ID_nlm_max_connectionstype465, ptr @__UNIQUE_ID_nsm_use_hostnamestype464, ptr @__exitcall_exit_nlm, ptr @__initcall__kmod_lockd__466_690_init_nlm6, ptr @__ksymtab_lockd_down, ptr @__ksymtab_lockd_up, ptr @__ksymtab_nlmsvc_ops, ptr @__param_nlm_grace_period, ptr @__param_nlm_max_connections, ptr @__param_nlm_tcpport, ptr @__param_nlm_timeout, ptr @__param_nlm_udpport, ptr @__param_nsm_use_hostnames, ptr @exit_nlm], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lockd_up(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @nlmsvc_mutex) #10
  %3 = load ptr, ptr @nlmsvc_serv, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.svc_serv, ptr %3, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #10, !srcloc !8
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #10, !srcloc !9
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !10

10:                                               ; preds = %5
  %11 = add i32 %8, 1
  %12 = or i32 %11, %8
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %49, label %14, !prof !11

14:                                               ; preds = %10, %5
  %15 = phi i32 [ 2, %5 ], [ 1, %10 ]
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef %15) #10
  br label %49

16:                                               ; preds = %2
  %17 = load i32, ptr @nlmsvc_users, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %17) #11
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i32, ptr @nlm_timeout, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 10, ptr @nlm_timeout, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32 [ 10, %24 ], [ %22, %21 ]
  %27 = mul i32 %26, 100
  store i32 %27, ptr @nlmsvc_timeout, align 4
  %28 = tail call ptr @svc_create(ptr noundef nonnull @nlmsvc_program, i32 noundef 1368, ptr noundef nonnull @lockd_sv_ops) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %122

32:                                               ; preds = %25
  %33 = load i32, ptr @nlm_max_connections, align 4
  %34 = getelementptr inbounds %struct.svc_serv, ptr %28, i32 0, i32 5
  store i32 %33, ptr %34, align 4
  %35 = tail call i32 @svc_set_num_threads(ptr noundef nonnull %28, ptr noundef null, i32 noundef 1) #10
  %36 = getelementptr inbounds %struct.svc_serv, ptr %28, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #10, !srcloc !8
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #10, !srcloc !13
  %38 = extractvalue { i32, i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = icmp sgt i32 %38, 0
  br i1 %41, label %44, label %42, !prof !11

42:                                               ; preds = %40
  tail call void @refcount_warn_saturate(ptr noundef %36, i32 noundef 3) #10
  br label %44

43:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  tail call void @svc_destroy(ptr noundef %36) #10
  br label %44

44:                                               ; preds = %43, %42, %40
  %45 = icmp slt i32 %35, 0
  br i1 %45, label %122, label %46

46:                                               ; preds = %44
  store ptr %28, ptr @nlmsvc_serv, align 4
  %47 = tail call i32 @register_inetaddr_notifier(ptr noundef nonnull @lockd_inetaddr_notifier) #10
  %48 = tail call i32 @register_inet6addr_notifier(ptr noundef nonnull @lockd_inet6addr_notifier) #10
  br label %49

49:                                               ; preds = %46, %14, %10
  %50 = load i32, ptr @nlmsvc_users, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr @nlmsvc_users, align 4
  %52 = load ptr, ptr @nlmsvc_serv, align 4
  %53 = load i32, ptr @lockd_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %54 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %55 = load volatile ptr, ptr %54, align 64
  %56 = getelementptr [0 x ptr], ptr %55, i32 0, i32 %53
  %57 = load ptr, ptr %56, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 4
  %60 = icmp eq i32 %58, 0
  br i1 %60, label %61, label %122

61:                                               ; preds = %49
  %62 = tail call i32 @svc_bind(ptr noundef %52, ptr noundef %0) #10
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %105

64:                                               ; preds = %61
  %65 = tail call fastcc i32 @create_lockd_family(ptr noundef %52, ptr noundef %0, i32 noundef 2, ptr noundef %1) #10
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = tail call fastcc i32 @create_lockd_family(ptr noundef %52, ptr noundef %0, i32 noundef 10, ptr noundef %1) #10
  %69 = icmp slt i32 %68, 0
  %70 = icmp ne i32 %68, -97
  %71 = and i1 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %67, %64
  %73 = phi i32 [ %65, %64 ], [ %68, %67 ]
  %74 = load i32, ptr @make_socks.warned, align 4
  %75 = add i32 %74, 1
  store i32 %75, ptr @make_socks.warned, align 4
  %76 = icmp eq i32 %74, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %73) #11
  br label %79

79:                                               ; preds = %77, %72
  tail call void @svc_shutdown_net(ptr noundef %52, ptr noundef %0) #10
  %80 = load i32, ptr %57, align 4
  %81 = add i32 %80, -1
  store i32 %81, ptr %57, align 4
  br label %109

82:                                               ; preds = %67
  store i32 0, ptr @make_socks.warned, align 4
  %83 = load i32, ptr @nlm_grace_period, align 4
  %84 = icmp eq i32 %83, 0
  %85 = load i32, ptr @nlm_timeout, align 4
  br i1 %84, label %92, label %86

86:                                               ; preds = %82
  %87 = add i32 %83, -1
  %88 = add i32 %87, %85
  %89 = urem i32 %88, %85
  %90 = sub i32 %88, %89
  %91 = mul i32 %90, 100
  br label %94

92:                                               ; preds = %82
  %93 = mul i32 %85, 500
  br label %94

94:                                               ; preds = %92, %86
  %95 = phi i32 [ %91, %86 ], [ %93, %92 ]
  %96 = load i32, ptr @lockd_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %97 = load volatile ptr, ptr %54, align 64
  %98 = getelementptr [0 x ptr], ptr %97, i32 0, i32 %96
  %99 = load ptr, ptr %98, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %100 = getelementptr inbounds %struct.lockd_net, ptr %99, i32 0, i32 4
  tail call void @locks_start_grace(ptr noundef %0, ptr noundef %100) #10
  %101 = getelementptr inbounds %struct.lockd_net, ptr %99, i32 0, i32 3
  %102 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %101) #10
  %103 = load ptr, ptr @system_wq, align 4
  %104 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %103, ptr noundef %101, i32 noundef %95) #10
  br label %122

105:                                              ; preds = %61
  %106 = load i32, ptr %57, align 4
  %107 = add i32 %106, -1
  store i32 %107, ptr %57, align 4
  %108 = icmp slt i32 %62, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %105, %79
  %110 = phi i32 [ %73, %79 ], [ %62, %105 ]
  %111 = load i32, ptr @nlmsvc_users, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114, !prof !10

113:                                              ; preds = %109
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 408, i32 noundef 9, ptr noundef nonnull @.str.8) #10
  br label %122

114:                                              ; preds = %109
  %115 = add i32 %111, -1
  store i32 %115, ptr @nlmsvc_users, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = tail call i32 @unregister_inetaddr_notifier(ptr noundef nonnull @lockd_inetaddr_notifier) #10
  %119 = tail call i32 @unregister_inet6addr_notifier(ptr noundef nonnull @lockd_inet6addr_notifier) #10
  %120 = load ptr, ptr @nlmsvc_serv, align 4
  %121 = tail call i32 @svc_set_num_threads(ptr noundef %120, ptr noundef null, i32 noundef 0) #10
  store ptr null, ptr @nlmsvc_serv, align 4
  br label %122

122:                                              ; preds = %117, %114, %113, %105, %94, %49, %44, %30
  %123 = phi i32 [ %62, %105 ], [ -12, %30 ], [ %35, %44 ], [ %110, %113 ], [ %110, %114 ], [ %110, %117 ], [ 0, %94 ], [ 0, %49 ]
  tail call void @mutex_unlock(ptr noundef nonnull @nlmsvc_mutex) #10
  ret i32 %123
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lockd_down(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @nlmsvc_mutex) #10
  %2 = load ptr, ptr @nlmsvc_serv, align 4
  %3 = load i32, ptr @lockd_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %5 = load volatile ptr, ptr %4, align 64
  %6 = getelementptr [0 x ptr], ptr %5, i32 0, i32 %3
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = add i32 %8, -1
  store i32 %11, ptr %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  tail call void @nlm_shutdown_hosts_net(ptr noundef %0) #10
  %14 = getelementptr inbounds %struct.lockd_net, ptr %7, i32 0, i32 3
  %15 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %14) #10
  %16 = getelementptr inbounds %struct.lockd_net, ptr %7, i32 0, i32 4
  tail call void @locks_end_grace(ptr noundef %16) #10
  tail call void @svc_shutdown_net(ptr noundef %2, ptr noundef %0) #10
  br label %21

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 14, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.lockd_down_net, i32 noundef %19) #11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/lockd/svc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 296, 0\0A.popsection", ""() #10, !srcloc !17
  unreachable

21:                                               ; preds = %13, %10
  %22 = load i32, ptr @nlmsvc_users, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25, !prof !10

24:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 408, i32 noundef 9, ptr noundef nonnull @.str.8) #10
  br label %33

25:                                               ; preds = %21
  %26 = add i32 %22, -1
  store i32 %26, ptr @nlmsvc_users, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = tail call i32 @unregister_inetaddr_notifier(ptr noundef nonnull @lockd_inetaddr_notifier) #10
  %30 = tail call i32 @unregister_inet6addr_notifier(ptr noundef nonnull @lockd_inet6addr_notifier) #10
  %31 = load ptr, ptr @nlmsvc_serv, align 4
  %32 = tail call i32 @svc_set_num_threads(ptr noundef %31, ptr noundef null, i32 noundef 0) #10
  store ptr null, ptr @nlmsvc_serv, align 4
  br label %33

33:                                               ; preds = %28, %25, %24
  tail call void @mutex_unlock(ptr noundef nonnull @nlmsvc_mutex) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exit_nlm() #3 section ".exit.text" {
  tail call void @nlm_shutdown_hosts() #10
  tail call void @lockd_remove_procfs() #10
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @lockd_net_ops) #10
  %1 = load ptr, ptr @nlm_sysctl_table, align 4
  tail call void @unregister_sysctl_table(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlm_shutdown_hosts() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockd_remove_procfs() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_nlm() #3 section ".init.text" {
  %1 = tail call ptr @register_sysctl_table(ptr noundef nonnull @nlm_sysctl_root) #10
  store ptr %1, ptr @nlm_sysctl_table, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @lockd_net_ops) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = tail call i32 @lockd_create_procfs() #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @lockd_net_ops) #10
  br label %10

10:                                               ; preds = %9, %3
  %11 = phi i32 [ %4, %3 ], [ %7, %9 ]
  %12 = load ptr, ptr @nlm_sysctl_table, align 4
  tail call void @unregister_sysctl_table(ptr noundef %12) #10
  br label %13

13:                                               ; preds = %10, %6, %0
  %14 = phi i32 [ 0, %6 ], [ -12, %0 ], [ %11, %10 ]
  ret i32 %14
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svc_create(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_set_num_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inetaddr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inet6addr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lockd_authenticate(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 43
  store ptr null, ptr %2, align 8
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.auth_ops, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, 2
  %8 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 38
  br i1 %7, label %9, label %15

9:                                                ; preds = %1
  store i32 0, ptr %8, align 4
  %10 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 30
  %11 = load i32, ptr %10, align 8
  %12 = icmp ult i32 %11, 17
  br i1 %12, label %16, label %13

13:                                               ; preds = %16, %9
  %14 = tail call i32 @svc_set_client(ptr noundef %0) #10
  br label %20

15:                                               ; preds = %1
  store i32 16777216, ptr %8, align 4
  br label %20

16:                                               ; preds = %9
  %17 = lshr i32 97313, %11
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %13, label %20

20:                                               ; preds = %16, %15, %13
  %21 = phi i32 [ 8, %15 ], [ %14, %13 ], [ 5, %16 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_generic_init_request(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_generic_rpcbind_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nlmsvc_dispatch(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 16
  %6 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  tail call void @xdr_init_decode(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef null) #10
  %8 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 18
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @page_address(ptr noundef %9) #10
  %11 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 16, i32 4
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 16, i32 4, i32 1
  store i32 4096, ptr %12, align 4
  %13 = getelementptr inbounds %struct.svc_procedure, ptr %4, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 %14(ptr noundef %0, ptr noundef %5) #10
  br i1 %15, label %16, label %55

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 4
  %18 = tail call i32 %17(ptr noundef %0) #10
  store i32 %18, ptr %1, align 4
  switch i32 %18, label %19 [
    i32 1625948160, label %57
    i32 0, label %20
  ]

19:                                               ; preds = %16
  br label %57

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 17
  %22 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19
  %23 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 17, i32 4
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 17, i32 4, i32 1
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 17, i32 1
  store ptr %22, ptr %25, align 4
  %26 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 17, i32 3
  store ptr %22, ptr %26, align 4
  %27 = load ptr, ptr %22, align 4
  %28 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 0, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr i8, ptr %27, i32 %29
  store ptr %30, ptr %21, align 4
  %31 = getelementptr i8, ptr %27, i32 4096
  %32 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 39
  %33 = load i32, ptr %32, align 8
  %34 = sub i32 0, %33
  %35 = getelementptr i8, ptr %31, i32 %34
  %36 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 17, i32 2
  store ptr %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 8
  store i32 %29, ptr %37, align 4
  %38 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr ptr, ptr %39, i32 -1
  %41 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 17, i32 5
  store ptr %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 23
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr ptr, ptr %43, i32 1
  %45 = ptrtoint ptr %44 to i32
  %46 = ptrtoint ptr %39 to i32
  %47 = sub i32 %45, %46
  %48 = shl i32 %47, 10
  %49 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 7
  %50 = sub i32 %48, %33
  store i32 %50, ptr %49, align 4
  %51 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 17, i32 7
  store ptr null, ptr %51, align 4
  %52 = getelementptr inbounds %struct.svc_procedure, ptr %4, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = tail call zeroext i1 %53(ptr noundef %0, ptr noundef %21) #10
  br i1 %54, label %57, label %56

55:                                               ; preds = %2
  store i32 67108864, ptr %1, align 4
  br label %57

56:                                               ; preds = %20
  store i32 83886080, ptr %1, align 4
  br label %57

57:                                               ; preds = %56, %55, %20, %19, %16
  %58 = phi i32 [ 1, %19 ], [ 1, %56 ], [ 1, %55 ], [ 0, %16 ], [ 1, %20 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_set_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_rpcb_cleanup(ptr noundef, ptr noundef) #2

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lockd(ptr noundef %0) #5 {
  %2 = load i32, ptr @lockd_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %4 = getelementptr [0 x ptr], ptr %3, i32 0, i32 %2
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %6 = tail call zeroext i1 @set_freezable() #10
  tail call void @kernel_sigaction(i32 noundef 9, ptr noundef nonnull inttoptr (i32 2 to ptr)) #10
  %7 = tail call zeroext i1 @kthread_should_stop() #10
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = tail call ptr @llvm.thread.pointer() #10
  br label %64

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 7
  %12 = tail call ptr @llvm.thread.pointer() #10
  br label %13

13:                                               ; preds = %62, %10
  %14 = load i32, ptr @nlm_max_connections, align 4
  %15 = load ptr, ptr %11, align 4
  %16 = getelementptr inbounds %struct.svc_serv, ptr %15, i32 0, i32 5
  store i32 %14, ptr %16, align 4
  %17 = load volatile i32, ptr %12, align 4
  %18 = and i32 %17, 256
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24, !prof !11

20:                                               ; preds = %13
  %21 = load volatile i32, ptr %12, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %57, label %24

24:                                               ; preds = %20, %13
  tail call void @flush_signals(ptr noundef %12) #10
  %25 = load ptr, ptr @nlmsvc_ops, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %62, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr @lockd_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %29 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %30 = getelementptr [0 x ptr], ptr %29, i32 0, i32 %28
  %31 = load ptr, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %32 = getelementptr inbounds %struct.lockd_net, ptr %31, i32 0, i32 3
  %33 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %32) #10
  %34 = getelementptr inbounds %struct.lockd_net, ptr %31, i32 0, i32 4
  tail call void @locks_end_grace(ptr noundef %34) #10
  tail call void @nlmsvc_invalidate_all() #10
  %35 = load i32, ptr @nlm_grace_period, align 4
  %36 = icmp eq i32 %35, 0
  %37 = load i32, ptr @nlm_timeout, align 4
  br i1 %36, label %44, label %38

38:                                               ; preds = %27
  %39 = add i32 %35, -1
  %40 = add i32 %39, %37
  %41 = urem i32 %40, %37
  %42 = sub i32 %40, %41
  %43 = mul i32 %42, 100
  br label %46

44:                                               ; preds = %27
  %45 = mul i32 %37, 500
  br label %46

46:                                               ; preds = %44, %38
  %47 = phi i32 [ %43, %38 ], [ %45, %44 ]
  %48 = load i32, ptr @lockd_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %49 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %50 = getelementptr [0 x ptr], ptr %49, i32 0, i32 %48
  %51 = load ptr, ptr %50, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %52 = getelementptr inbounds %struct.lockd_net, ptr %51, i32 0, i32 4
  tail call void @locks_start_grace(ptr noundef nonnull @init_net, ptr noundef %52) #10
  %53 = getelementptr inbounds %struct.lockd_net, ptr %51, i32 0, i32 3
  %54 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %53) #10
  %55 = load ptr, ptr @system_wq, align 4
  %56 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %55, ptr noundef %53, i32 noundef %47) #10
  br label %62

57:                                               ; preds = %20
  %58 = tail call i32 @nlmsvc_retry_blocked() #10
  %59 = tail call i32 @svc_recv(ptr noundef %0, i32 noundef %58) #10
  switch i32 %59, label %60 [
    i32 -4, label %62
    i32 -11, label %62
  ]

60:                                               ; preds = %57
  %61 = tail call i32 @svc_process(ptr noundef %0) #10
  br label %62

62:                                               ; preds = %60, %57, %57, %46, %24
  %63 = tail call zeroext i1 @kthread_should_stop() #10
  br i1 %63, label %64, label %13

64:                                               ; preds = %62, %8
  %65 = phi ptr [ %9, %8 ], [ %12, %62 ]
  tail call void @flush_signals(ptr noundef %65) #10
  %66 = load ptr, ptr @nlmsvc_ops, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  tail call void @nlmsvc_invalidate_all() #10
  br label %69

69:                                               ; preds = %68, %64
  tail call void @nlm_shutdown_hosts() #10
  %70 = getelementptr inbounds %struct.lockd_net, ptr %5, i32 0, i32 3
  %71 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %70) #10
  %72 = getelementptr inbounds %struct.lockd_net, ptr %5, i32 0, i32 4
  tail call void @locks_end_grace(ptr noundef %72) #10
  tail call void @svc_exit_thread(ptr noundef %0) #10
  tail call void @__module_put_and_kthread_exit(ptr noundef null, i32 noundef 0) #12
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_do_enqueue(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_signals(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmsvc_retry_blocked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_recv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmsvc_invalidate_all() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_end_grace(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_exit_thread(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__module_put_and_kthread_exit(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_sigaction(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_start_grace(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lockd_inetaddr_event(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.sockaddr_in, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !18
  %5 = icmp eq i32 %1, 2
  %6 = load ptr, ptr @nlmsvc_serv, align 4
  %7 = icmp ne ptr %6, null
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  store i16 2, ptr %4, align 4
  %10 = getelementptr inbounds %struct.in_ifaddr, ptr %2, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sockaddr_in, ptr %4, i32 0, i32 2
  store i32 %11, ptr %12, align 4
  call void @svc_age_temp_xprts_now(ptr noundef nonnull %6, ptr noundef nonnull %4) #10
  br label %13

13:                                               ; preds = %9, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_age_temp_xprts_now(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lockd_inet6addr_event(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.sockaddr_in6, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !18
  %5 = icmp eq i32 %1, 2
  %6 = load ptr, ptr @nlmsvc_serv, align 4
  %7 = icmp ne ptr %6, null
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  store i16 10, ptr %4, align 4
  %10 = getelementptr inbounds %struct.sockaddr_in6, ptr %4, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %10, ptr noundef align 8 dereferenceable(16) %2, i32 16, i1 false)
  %11 = call i32 @__ipv6_addr_type(ptr noundef %10) #10
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.inet6_ifaddr, ptr %2, i32 0, i32 16
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 17
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.sockaddr_in6, ptr %4, i32 0, i32 4
  store i32 %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %14, %9
  %22 = load ptr, ptr @nlmsvc_serv, align 4
  call void @svc_age_temp_xprts_now(ptr noundef %22, ptr noundef nonnull %4) #10
  br label %23

23:                                               ; preds = %21, %3
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #10
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_bind(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @create_lockd_family(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr @nlm_udpport, align 4
  %6 = trunc i32 %2 to i16
  %7 = tail call ptr @svc_find_xprt(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %1, i16 noundef zeroext %6, i16 noundef zeroext 0) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @svc_xprt_put(ptr noundef nonnull %7) #10
  br label %14

10:                                               ; preds = %4
  %11 = trunc i32 %5 to i16
  %12 = tail call i32 @svc_create_xprt(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %11, i32 noundef 0, ptr noundef %3) #10
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10, %9
  %15 = load i32, ptr @nlm_tcpport, align 4
  %16 = tail call ptr @svc_find_xprt(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %1, i16 noundef zeroext %6, i16 noundef zeroext 0) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = trunc i32 %15 to i16
  %20 = tail call i32 @svc_create_xprt(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %19, i32 noundef 0, ptr noundef %3) #10
  br label %22

21:                                               ; preds = %14
  tail call void @svc_xprt_put(ptr noundef nonnull %16) #10
  br label %22

22:                                               ; preds = %21, %18, %10
  %23 = phi i32 [ %12, %10 ], [ %20, %18 ], [ 0, %21 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_shutdown_net(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svc_find_xprt(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_create_xprt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inetaddr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inet6addr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlm_shutdown_hosts_net(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @param_set_grace_period(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4, !annotation !18
  %4 = call i32 @simple_strtoul(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #10
  %5 = load ptr, ptr %3, align 4
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr %5, align 1
  %9 = icmp ne i8 %8, 0
  %10 = icmp ugt i32 %4, 240
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  store i32 %4, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %7, %2
  %16 = phi i32 [ 0, %12 ], [ -22, %7 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_ulong(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @param_set_timeout(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4, !annotation !18
  %4 = call i32 @simple_strtoul(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #10
  %5 = load ptr, ptr %3, align 4
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr %5, align 1
  %9 = icmp ne i8 %8, 0
  %10 = icmp ult i32 %4, 3
  %11 = select i1 %9, i1 true, i1 %10
  %12 = icmp ugt i32 %4, 20
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  store i32 %4, ptr %16, align 4
  br label %17

17:                                               ; preds = %14, %7, %2
  %18 = phi i32 [ 0, %14 ], [ -22, %7 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @param_set_port(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4, !annotation !18
  %4 = call i32 @simple_strtol(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #10
  %5 = load ptr, ptr %3, align 4
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr %5, align 1
  %9 = icmp ne i8 %8, 0
  %10 = icmp slt i32 %4, 0
  %11 = select i1 %9, i1 true, i1 %10
  %12 = icmp sgt i32 %4, 65535
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  store i32 %4, ptr %16, align 4
  br label %17

17:                                               ; preds = %14, %7, %2
  %18 = phi i32 [ 0, %14 ], [ -22, %7 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_int(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lockd_init_net(ptr noundef %0) #0 {
  %2 = load i32, ptr @lockd_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %7 = getelementptr inbounds %struct.lockd_net, ptr %6, i32 0, i32 3
  store i32 -32, ptr %7, align 4
  %8 = getelementptr inbounds %struct.lockd_net, ptr %6, i32 0, i32 3, i32 0, i32 1
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.lockd_net, ptr %6, i32 0, i32 3, i32 0, i32 1, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.lockd_net, ptr %6, i32 0, i32 3, i32 0, i32 2
  store ptr @grace_ender, ptr %10, align 4
  %11 = getelementptr inbounds %struct.lockd_net, ptr %6, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %11, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #10
  %12 = getelementptr inbounds %struct.lockd_net, ptr %6, i32 0, i32 4
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.lockd_net, ptr %6, i32 0, i32 4, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.lockd_net, ptr %6, i32 0, i32 4, i32 1
  store i8 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.lockd_net, ptr %6, i32 0, i32 5
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.lockd_net, ptr %6, i32 0, i32 5, i32 1
  store ptr %15, ptr %16, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lockd_exit_net(ptr noundef %0) #0 {
  %2 = load i32, ptr @lockd_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %7 = getelementptr inbounds %struct.lockd_net, ptr %6, i32 0, i32 4
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp ne ptr %8, %7
  %10 = load i1, ptr @lockd_exit_net.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %16, !prof !10

13:                                               ; preds = %1
  store i1 true, ptr @lockd_exit_net.__already_done, align 1
  %14 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 14, i32 2
  %15 = load i32, ptr %14, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 628, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %15, ptr noundef nonnull @__func__.lockd_exit_net) #10
  br label %16

16:                                               ; preds = %13, %1
  %17 = getelementptr inbounds %struct.lockd_net, ptr %6, i32 0, i32 5
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp ne ptr %18, %17
  %20 = load i1, ptr @lockd_exit_net.__already_done.11, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %26, !prof !10

23:                                               ; preds = %16
  store i1 true, ptr @lockd_exit_net.__already_done.11, align 1
  %24 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 14, i32 2
  %25 = load i32, ptr %24, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 631, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %25, ptr noundef nonnull @__func__.lockd_exit_net) #10
  br label %26

26:                                               ; preds = %23, %16
  %27 = getelementptr inbounds %struct.lockd_net, ptr %6, i32 0, i32 3
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  %31 = load i1, ptr @lockd_exit_net.__already_done.13, align 1
  %32 = xor i1 %31, true
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %37, !prof !10

34:                                               ; preds = %26
  store i1 true, ptr @lockd_exit_net.__already_done.13, align 1
  %35 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 14, i32 2
  %36 = load i32, ptr %35, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 634, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %36, ptr noundef nonnull @__func__.lockd_exit_net) #10
  br label %37

37:                                               ; preds = %34, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @grace_ender(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 44
  tail call void @locks_end_grace(ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockd_create_procfs() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dobool(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { noreturn nounwind }

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
!8 = !{i64 558705, i64 2148048676, i64 2148048702, i64 2148048749, i64 2148048771, i64 2148048799, i64 2148048819}
!9 = !{i64 2148061549, i64 2148061581, i64 2148061610, i64 2148061644, i64 2148061675, i64 2148061698}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148161771}
!13 = !{i64 2148063906, i64 2148063938, i64 2148063967, i64 2148064001, i64 2148064032, i64 2148064055}
!14 = !{i64 2149011218}
!15 = !{i64 2149061585}
!16 = !{i64 2149061802}
!17 = !{i64 2156057630, i64 2156058109, i64 2156057667, i64 2156057723, i64 2156057757, i64 2156057781, i64 2156057822, i64 2156057843, i64 2156057871, i64 2156057905}
!18 = !{!"auto-init"}
