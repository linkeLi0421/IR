; ModuleID = '/llk/IR/net/ipv4/ipconfig.c_pt.bc'
source_filename = "../net/ipv4/ipconfig.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.15 }
%union.anon.15 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.13, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.110, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.110 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.packet_type = type { i16, i8, ptr, %struct.netdevice_tracker, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.netdevice_tracker = type {}
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ic_device = type { ptr, ptr, i16, i16, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.88, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.102, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.88 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.102 = type { ptr }
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
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.125, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.82 }
%union.anon.82 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.83 }
%union.anon.83 = type { %struct.anon.84 }
%struct.anon.84 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.125 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ifreq = type { %union.anon.89, %union.anon.90 }
%union.anon.89 = type { [16 x i8] }
%union.anon.90 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.rtentry = type { i32, %struct.sockaddr, %struct.sockaddr, %struct.sockaddr, i16, i16, i32, ptr, i16, ptr, i32, i32, i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.129, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.130, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.131, ptr, %struct.address_space, %struct.list_head, %union.anon.134, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%union.anon.129 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.130 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.131 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.134 = type { ptr }
%struct.sk_buff = type { %union.anon.44, %union.anon.47, %union.anon.48, [48 x i8], %union.anon.49, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.51, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, ptr, %union.anon.46 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i32, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.53, i32, i32, i32, i16, i16, %union.anon.55, %union.anon.56, %union.anon.57, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.53 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.bootp_pkt = type { %struct.iphdr, %struct.udphdr, i8, i8, i8, i8, i32, i16, i16, i32, i32, i32, i32, [16 x i8], [64 x i8], [128 x i8], [312 x i8] }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.arphdr = type { i16, i16, i8, i8, i16 }

@ic_set_manually = dso_local local_unnamed_addr global i32 0, section ".init.data", align 4
@ic_proto_enabled = dso_local local_unnamed_addr global i32 259, section ".init.data", align 4
@ic_myaddr = dso_local global i32 -1, align 4
@ic_gateway = dso_local global i32 -1, align 4
@ic_servaddr = dso_local global i32 -1, align 4
@root_server_addr = dso_local global i32 -1, align 4
@root_server_path = dso_local global [256 x i8] zeroinitializer, align 1
@__initcall__kmod_ipconfig__461_1650_ip_auto_config7 = internal global ptr @ip_auto_config, section ".initcall7.init", align 4
@__setup_str_ip_auto_config_setup = internal constant [4 x i8] c"ip=\00", section ".init.rodata", align 1
@__setup_ip_auto_config_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_ip_auto_config_setup, ptr @ip_auto_config_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_nfsaddrs_config_setup = internal constant [10 x i8] c"nfsaddrs=\00", section ".init.rodata", align 1
@__setup_nfsaddrs_config_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_nfsaddrs_config_setup, ptr @nfsaddrs_config_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_vendor_class_identifier_setup = internal constant [11 x i8] c"dhcpclass=\00", section ".init.rodata", align 1
@__setup_vendor_class_identifier_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_vendor_class_identifier_setup, ptr @vendor_class_identifier_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_set_carrier_timeout = internal constant [17 x i8] c"carrier_timeout=\00", section ".init.rodata", align 1
@__setup_set_carrier_timeout = internal global %struct.obs_kernel_param { ptr @__setup_str_set_carrier_timeout, ptr @set_carrier_timeout, i32 0 }, section ".init.setup", align 4
@.str = private unnamed_addr constant [4 x i8] c"pnp\00", align 1
@init_net = external dso_local global %struct.net, align 64
@.str.1 = private unnamed_addr constant [12 x i8] c"ntp_servers\00", align 1
@ntp_servers_proc_ops = internal constant %struct.proc_ops { i32 0, ptr @ntp_servers_open, ptr @seq_read, ptr null, ptr null, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, align 4
@ic_enable = internal unnamed_addr global i1 false, section ".init.data", align 4
@ROOT_DEV = external dso_local local_unnamed_addr global i32, align 4
@ic_first_dev = internal unnamed_addr global ptr null, section ".init.data", align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"\013IP-Config: Retrying forever (NFS root)...\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"\013IP-Config: Reopening network devices...\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"\013IP-Config: Auto-configuration of network failed\0A\00", align 1
@ic_dev = internal unnamed_addr global ptr null, section ".init.data", align 4
@ic_got_reply = internal global i32 0, section ".init.data", align 4
@ic_proto_used = internal unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"\016IP-Config: Complete:\0A\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"\016     device=%s, hwaddr=%*phC, ipaddr=%pI4, mask=%pI4, gw=%pI4\0A\00", align 1
@ic_netmask = internal global i32 -1, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"\016     host=%s, domain=%s, nis-domain=%s\0A\00", align 1
@ic_domain = internal global [64 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"\016     bootserver=%pI4, rootserver=%pI4, rootpath=%s\00", align 1
@ic_dev_mtu = internal unnamed_addr global i32 0, section ".init.data", align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"\01c, mtu=%d\00", align 1
@ic_nameservers = internal global [3 x i32] zeroinitializer, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"\016     nameserver%u=%pI4\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"\01c, nameserver%u=%pI4\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@ic_ntp_servers = internal global [3 x i32] zeroinitializer, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"\016     ntpserver%u=%pI4\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"\01c, ntpserver%u=%pI4\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"#PROTO: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"RARP\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"DHCP\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"BOOTP\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"#MANUAL\0A\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"domain %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"nameserver %pI4\0A\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"bootserver %pI4\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"ipconfig\00", align 1
@ipconfig_dir = internal unnamed_addr global ptr null, align 4
@.str.24 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"ipconfig/\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"%pI4\0A\00", align 1
@user_dev_name = internal global [16 x i8] zeroinitializer, section ".init.data", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"\013IP-Config: Failed to open %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [52 x i8] c"\014DHCP/BOOTP: Ignoring device %s, MTU %d too small\0A\00", align 1
@ic_proto_have_if = internal unnamed_addr global i32 0, section ".init.data", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@carrier_timeout = internal global i32 120, align 4
@.str.30 = private unnamed_addr constant [46 x i8] c"\016Waiting up to %d more seconds for network.\0A\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"\013IP-Config: Device `%s' not found\0A\00", align 1
@.str.32 = private unnamed_addr constant [43 x i8] c"\013IP-Config: No network devices available\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.33 = private unnamed_addr constant [59 x i8] c"\013IP-Config: Incomplete network configuration information\0A\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"\013DHCP/BOOTP: No suitable device found\0A\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"\013RARP: No suitable device found\0A\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"\015Sending %s%s%s requests .\00", align 1
@.str.37 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.38 = private unnamed_addr constant [6 x i8] c" and \00", align 1
@ic_dhcp_msgtype = internal unnamed_addr global i32 0, section ".init.data", align 4
@.str.39 = private unnamed_addr constant [4 x i8] c"\01c,\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"\01c OK\0A\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"\01c timed out!\0A\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"\01c.\00", align 1
@.str.43 = private unnamed_addr constant [58 x i8] c"\016IP-Config: Got %s answer from %pI4, my address is %pI4\0A\00", align 1
@ic_addrservaddr = internal global i32 -1, align 4
@bootp_packet_type = internal global %struct.packet_type { i16 8, i8 0, ptr null, %struct.netdevice_tracker zeroinitializer, ptr @ic_bootp_recv, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".init.data", align 4
@.str.44 = private unnamed_addr constant [41 x i8] c"\013DHCP/BOOTP: Ignoring fragmented reply\0A\00", align 1
@ic_recv_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.45 = private unnamed_addr constant [54 x i8] c"\013DHCP/BOOTP: Reply not for us on %s, op[%x] xid[%x]\0A\00", align 1
@ic_bootp_cookie = internal constant [4 x i8] c"c\82Sc", align 1
@ic_host_name_set = internal unnamed_addr global i1 false, section ".init.data", align 4
@rarp_packet_type = internal global %struct.packet_type { i16 13696, i8 0, ptr null, %struct.netdevice_tracker zeroinitializer, ptr @ic_rarp_recv, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".init.data", align 4
@.str.46 = private unnamed_addr constant [41 x i8] c"\014Unknown ARP type 0x%04x for device %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@ic_dhcp_init_options.ic_req_params = internal unnamed_addr constant [9 x i8] c"\01\03\06\0C\0F\11\1A(*", align 1
@vendor_class_identifier = internal global [253 x i8] zeroinitializer, section ".init.data", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c"\016DHCP: sending class identifier \22%s\22\0A\00", align 1
@dhcp_client_identifier = internal global [253 x i8] zeroinitializer, section ".init.data", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"%pI4\00", align 1
@.str.50 = private unnamed_addr constant [55 x i8] c"\013IP-Config: Unable to guess netmask for address %pI4\0A\00", align 1
@.str.51 = private unnamed_addr constant [36 x i8] c"\015IP-Config: Guessing netmask %pI4\0A\00", align 1
@init_uts_ns = external dso_local global %struct.uts_namespace, align 4
@.str.52 = private unnamed_addr constant [51 x i8] c"\013IP-Config: Unable to set interface address (%d)\0A\00", align 1
@.str.53 = private unnamed_addr constant [51 x i8] c"\013IP-Config: Unable to set interface netmask (%d)\0A\00", align 1
@.str.54 = private unnamed_addr constant [61 x i8] c"\013IP-Config: Unable to set interface broadcast address (%d)\0A\00", align 1
@.str.55 = private unnamed_addr constant [53 x i8] c"\013IP-Config: Unable to set interface mtu to %d (%d)\0A\00", align 1
@.str.56 = private unnamed_addr constant [56 x i8] c"\013IP-Config: Gateway not on directly connected network\0A\00", align 1
@.str.57 = private unnamed_addr constant [44 x i8] c"\013IP-Config: Cannot add default route (%d)\0A\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"dhcp\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"dhcp,\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"bootp\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"rarp\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str.67 = private unnamed_addr constant [49 x i8] c"\014DHCP: vendorclass too long, truncated to \22%s\22\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__initcall__kmod_ipconfig__461_1650_ip_auto_config7, ptr @__setup_ip_auto_config_setup, ptr @__setup_nfsaddrs_config_setup, ptr @__setup_set_carrier_timeout, ptr @__setup_vendor_class_identifier_setup], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @root_nfs_parse_addr(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  br label %2

2:                                                ; preds = %18, %1
  %3 = phi ptr [ %0, %1 ], [ %26, %18 ]
  %4 = phi i32 [ 0, %1 ], [ %23, %18 ]
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load i8, ptr %6, align 1
  %8 = add i8 %7, -48
  %9 = icmp ult i8 %8, 10
  %10 = getelementptr i8, ptr %6, i32 1
  br i1 %9, label %5, label %11

11:                                               ; preds = %5
  %12 = icmp eq ptr %6, %3
  %13 = ptrtoint ptr %6 to i32
  %14 = ptrtoint ptr %3 to i32
  %15 = sub i32 %13, %14
  %16 = icmp sgt i32 %15, 3
  %17 = or i1 %12, %16
  br i1 %17, label %27, label %18

18:                                               ; preds = %11
  %19 = icmp eq i8 %7, 46
  %20 = icmp eq i32 %4, 3
  %21 = select i1 %19, i1 true, i1 %20
  %22 = zext i1 %21 to i32
  %23 = add i32 %4, %22
  %24 = icmp slt i32 %23, 4
  %25 = zext i1 %24 to i32
  %26 = getelementptr i8, ptr %6, i32 %25
  br i1 %24, label %2, label %27

27:                                               ; preds = %18, %11
  %28 = phi i32 [ %4, %11 ], [ %23, %18 ]
  %29 = phi ptr [ %6, %11 ], [ %26, %18 ]
  %30 = icmp eq i32 %28, 4
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i8, ptr %29, align 1
  switch i8 %32, label %40 [
    i8 58, label %33
    i8 0, label %35
  ]

33:                                               ; preds = %31
  %34 = getelementptr i8, ptr %29, i32 1
  store i8 0, ptr %29, align 1
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi ptr [ %34, %33 ], [ %29, %31 ]
  %37 = tail call i32 @in_aton(ptr noundef %0) #19
  %38 = tail call i32 @strlen(ptr noundef %36)
  %39 = add i32 %38, 1
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %0, ptr align 1 %36, i32 %39, i1 false)
  br label %40

40:                                               ; preds = %35, %31, %27
  %41 = phi i32 [ %37, %35 ], [ -1, %31 ], [ -1, %27 ]
  ret i32 %41
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_aton(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ip_auto_config() #0 section ".init.text" {
  %1 = load i32, ptr @ic_set_manually, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) @ic_nameservers, i8 -1, i32 12, i1 false) #19
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) @ic_ntp_servers, i8 -1, i32 12, i1 false) #19
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 8
  %6 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %5, ptr noundef nonnull @pnp_seq_show, ptr noundef null) #19
  %7 = tail call fastcc i32 @ipconfig_proc_net_init() #20
  %8 = icmp ne i32 %7, 0
  %9 = load ptr, ptr @ipconfig_dir, align 4
  %10 = icmp eq ptr %9, null
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1) #19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 8
  %17 = tail call ptr @proc_create(ptr noundef nonnull %13, i16 noundef zeroext 292, ptr noundef %16, ptr noundef nonnull @ntp_servers_proc_ops) #19
  tail call void @kfree(ptr noundef nonnull %13) #19
  br label %18

18:                                               ; preds = %15, %12, %4
  %19 = load i1, ptr @ic_enable, align 4
  br i1 %19, label %20, label %157

20:                                               ; preds = %18
  %21 = tail call fastcc i32 @wait_for_devices() #20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %157

23:                                               ; preds = %56, %20
  %24 = phi i1 [ true, %56 ], [ false, %20 ]
  br label %25

25:                                               ; preds = %51, %23
  %26 = tail call fastcc i32 @ic_open_devs() #20
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %157

28:                                               ; preds = %25
  tail call void @msleep(i32 noundef 10) #19
  %29 = load i32, ptr @ic_myaddr, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %45, label %31

31:                                               ; preds = %28
  %32 = load i32, ptr @root_server_addr, align 4
  %33 = icmp eq i32 %32, -1
  %34 = load i32, ptr @ic_servaddr, align 4
  %35 = icmp eq i32 %34, -1
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, ptr @ROOT_DEV, align 4
  %39 = and i32 %38, -2
  %40 = icmp eq i32 %39, 254
  br i1 %40, label %45, label %41

41:                                               ; preds = %37, %31
  %42 = load ptr, ptr @ic_first_dev, align 4
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %62, label %45

45:                                               ; preds = %41, %37, %28
  %46 = tail call fastcc i32 @ic_dynamic() #20
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  tail call fastcc void @ic_close_devs() #20
  %49 = load i32, ptr @ROOT_DEV, align 4
  %50 = icmp eq i32 %49, 255
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #21
  %53 = tail call fastcc i32 @wait_for_devices() #20
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %25, label %157

55:                                               ; preds = %48
  br i1 %24, label %60, label %56

56:                                               ; preds = %55
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #21
  %58 = tail call fastcc i32 @wait_for_devices() #20
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %23, label %157

60:                                               ; preds = %55
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #21
  br label %157

62:                                               ; preds = %41
  store ptr %42, ptr @ic_dev, align 4
  br label %63

63:                                               ; preds = %62, %45
  %64 = tail call i32 @root_nfs_parse_addr(ptr noundef nonnull @root_server_path) #20
  %65 = load i32, ptr @root_server_addr, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 %64, ptr @root_server_addr, align 4
  br label %68

68:                                               ; preds = %67, %63
  %69 = tail call fastcc i32 @ic_defaults() #20
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %157, label %71

71:                                               ; preds = %68
  %72 = load volatile i32, ptr @ic_got_reply, align 4
  %73 = load i32, ptr @ic_proto_enabled, align 4
  %74 = and i32 %73, 256
  %75 = or i32 %74, %72
  store i32 %75, ptr @ic_proto_used, align 4
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #21
  %77 = load ptr, ptr @ic_dev, align 4
  %78 = getelementptr inbounds %struct.ic_device, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.net_device, ptr %79, i32 0, i32 51
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = getelementptr inbounds %struct.net_device, ptr %79, i32 0, i32 72
  %84 = load ptr, ptr %83, align 32
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %79, i32 noundef %82, ptr noundef %84, ptr noundef nonnull @ic_myaddr, ptr noundef nonnull @ic_netmask, ptr noundef nonnull @ic_gateway) #21
  %86 = tail call ptr @llvm.thread.pointer() #19
  %87 = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 92
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.nsproxy, ptr %88, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.new_utsname, ptr %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.new_utsname, ptr %90, i32 0, i32 5
  %93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %91, ptr noundef nonnull @ic_domain, ptr noundef %92) #21
  %94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @ic_servaddr, ptr noundef nonnull @root_server_addr, ptr noundef nonnull @root_server_path) #21
  %95 = load i32, ptr @ic_dev_mtu, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %71
  %98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %95) #21
  br label %99

99:                                               ; preds = %97, %71
  br label %100

100:                                              ; preds = %122, %99
  %101 = phi i32 [ %116, %122 ], [ 0, %99 ]
  %102 = phi i32 [ %115, %122 ], [ 0, %99 ]
  %103 = getelementptr [3 x i32], ptr @ic_nameservers, i32 0, i32 %101
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %114, label %106

106:                                              ; preds = %100
  %107 = icmp eq i32 %101, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %106
  %109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %103) #21
  br label %112

110:                                              ; preds = %106
  %111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %101, ptr noundef %103) #21
  br label %112

112:                                              ; preds = %110, %108
  %113 = add i32 %102, 1
  br label %114

114:                                              ; preds = %112, %100
  %115 = phi i32 [ %113, %112 ], [ %102, %100 ]
  %116 = add nuw nsw i32 %101, 1
  %117 = icmp eq i32 %116, 3
  %118 = icmp ne i32 %115, 0
  %119 = select i1 %117, i1 %118, i1 false
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #21
  br label %124

122:                                              ; preds = %114
  %123 = icmp eq i32 %116, 3
  br i1 %123, label %124, label %100

124:                                              ; preds = %122, %120
  br label %125

125:                                              ; preds = %147, %124
  %126 = phi i32 [ %141, %147 ], [ 0, %124 ]
  %127 = phi i32 [ %140, %147 ], [ 0, %124 ]
  %128 = getelementptr [3 x i32], ptr @ic_ntp_servers, i32 0, i32 %126
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %139, label %131

131:                                              ; preds = %125
  %132 = icmp eq i32 %126, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %131
  %134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef %128) #21
  br label %137

135:                                              ; preds = %131
  %136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %126, ptr noundef %128) #21
  br label %137

137:                                              ; preds = %135, %133
  %138 = add i32 %127, 1
  br label %139

139:                                              ; preds = %137, %125
  %140 = phi i32 [ %138, %137 ], [ %127, %125 ]
  %141 = add nuw nsw i32 %126, 1
  %142 = icmp eq i32 %141, 3
  %143 = icmp ne i32 %140, 0
  %144 = select i1 %142, i1 %143, i1 false
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #21
  br label %149

147:                                              ; preds = %139
  %148 = icmp eq i32 %141, 3
  br i1 %148, label %149, label %125

149:                                              ; preds = %147, %145
  %150 = tail call fastcc i32 @ic_setup_if() #20
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = tail call fastcc i32 @ic_setup_routes() #20
  %154 = ashr i32 %153, 31
  br label %155

155:                                              ; preds = %152, %149
  %156 = phi i32 [ -1, %149 ], [ %154, %152 ]
  tail call fastcc void @ic_close_devs() #20
  br label %157

157:                                              ; preds = %155, %68, %60, %56, %51, %25, %20, %18
  %158 = phi i32 [ -1, %60 ], [ %156, %155 ], [ 0, %18 ], [ -1, %68 ], [ %21, %20 ], [ %53, %51 ], [ %26, %25 ], [ %58, %56 ]
  ret i32 %158
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ip_auto_config_setup(ptr noundef %0) #0 section ".init.text" {
  store i32 1, ptr @ic_set_manually, align 4
  store i1 true, ptr @ic_enable, align 4
  %2 = tail call fastcc i32 @ic_proto_name(ptr noundef %0) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %93

4:                                                ; preds = %1
  %5 = load i8, ptr %0, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(4) @.str.58)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(5) @.str.59)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %7, %4
  store i1 false, ptr @ic_enable, align 4
  br label %93

14:                                               ; preds = %10
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) @ic_nameservers, i8 -1, i32 12, i1 false) #19
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) @ic_ntp_servers, i8 -1, i32 12, i1 false) #19
  %15 = icmp eq ptr %0, null
  br i1 %15, label %93, label %16

16:                                               ; preds = %89, %14
  %17 = phi i32 [ %91, %89 ], [ 0, %14 ]
  %18 = phi ptr [ %90, %89 ], [ %0, %14 ]
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %93, label %21

21:                                               ; preds = %16
  %22 = tail call ptr @strchr(ptr noundef nonnull %18, i32 noundef 58)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr i8, ptr %22, i32 1
  store i8 0, ptr %22, align 1
  %26 = load i8, ptr %18, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %89, label %28

28:                                               ; preds = %24, %21
  %29 = phi ptr [ %25, %24 ], [ null, %21 ]
  switch i32 %17, label %89 [
    i32 0, label %30
    i32 1, label %34
    i32 2, label %38
    i32 3, label %42
    i32 4, label %46
    i32 5, label %68
    i32 6, label %70
    i32 7, label %77
    i32 8, label %81
    i32 9, label %85
  ]

30:                                               ; preds = %28
  %31 = tail call i32 @in_aton(ptr noundef nonnull %18) #19
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 -1, i32 %31
  store i32 %33, ptr @ic_myaddr, align 4
  br label %89

34:                                               ; preds = %28
  %35 = tail call i32 @in_aton(ptr noundef nonnull %18) #19
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 -1, i32 %35
  store i32 %37, ptr @ic_servaddr, align 4
  br label %89

38:                                               ; preds = %28
  %39 = tail call i32 @in_aton(ptr noundef nonnull %18) #19
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 -1, i32 %39
  store i32 %41, ptr @ic_gateway, align 4
  br label %89

42:                                               ; preds = %28
  %43 = tail call i32 @in_aton(ptr noundef nonnull %18) #19
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i32 -1, i32 %43
  store i32 %45, ptr @ic_netmask, align 4
  br label %89

46:                                               ; preds = %28
  %47 = tail call ptr @strchr(ptr noundef nonnull %18, i32 noundef 46)
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = tail call ptr @llvm.thread.pointer() #19
  br label %60

51:                                               ; preds = %46
  %52 = getelementptr i8, ptr %47, i32 1
  store i8 0, ptr %47, align 1
  %53 = tail call ptr @llvm.thread.pointer() #19
  %54 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 92
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nsproxy, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.new_utsname, ptr %57, i32 0, i32 5
  %59 = tail call i32 @strlcpy(ptr noundef %58, ptr noundef %52, i32 noundef 65) #19
  br label %60

60:                                               ; preds = %51, %49
  %61 = phi ptr [ %50, %49 ], [ %53, %51 ]
  %62 = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 92
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.nsproxy, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.new_utsname, ptr %65, i32 0, i32 1
  %67 = tail call i32 @strlcpy(ptr noundef %66, ptr noundef nonnull %18, i32 noundef 65) #19
  store i1 true, ptr @ic_host_name_set, align 4
  br label %89

68:                                               ; preds = %28
  %69 = tail call i32 @strlcpy(ptr noundef nonnull @user_dev_name, ptr noundef nonnull %18, i32 noundef 16) #19
  br label %89

70:                                               ; preds = %28
  %71 = tail call fastcc i32 @ic_proto_name(ptr noundef nonnull %18) #20
  %72 = icmp eq i32 %71, 0
  %73 = load i32, ptr @ic_myaddr, align 4
  %74 = icmp eq i32 %73, -1
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %76, label %89

76:                                               ; preds = %70
  store i1 false, ptr @ic_enable, align 4
  br label %89

77:                                               ; preds = %28
  %78 = tail call i32 @in_aton(ptr noundef nonnull %18) #19
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %79, i32 -1, i32 %78
  store i32 %80, ptr @ic_nameservers, align 4
  br label %89

81:                                               ; preds = %28
  %82 = tail call i32 @in_aton(ptr noundef nonnull %18) #19
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 -1, i32 %82
  store i32 %84, ptr getelementptr inbounds ([3 x i32], ptr @ic_nameservers, i32 0, i32 1), align 4
  br label %89

85:                                               ; preds = %28
  %86 = tail call i32 @in_aton(ptr noundef nonnull %18) #19
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i32 -1, i32 %86
  store i32 %88, ptr @ic_ntp_servers, align 4
  br label %89

89:                                               ; preds = %85, %81, %77, %76, %70, %68, %60, %42, %38, %34, %30, %28, %24
  %90 = phi ptr [ %29, %30 ], [ %29, %34 ], [ %29, %38 ], [ %29, %42 ], [ %29, %60 ], [ %29, %68 ], [ %29, %77 ], [ %29, %81 ], [ %29, %85 ], [ %29, %28 ], [ %29, %76 ], [ %29, %70 ], [ %25, %24 ]
  %91 = add i32 %17, 1
  %92 = icmp eq ptr %90, null
  br i1 %92, label %93, label %16

93:                                               ; preds = %89, %16, %14, %13, %1
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @nfsaddrs_config_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @ip_auto_config_setup(ptr noundef %0) #20
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @vendor_class_identifier_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @strlcpy(ptr noundef nonnull @vendor_class_identifier, ptr noundef %0, i32 noundef 253) #19
  %3 = icmp ugt i32 %2, 252
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @vendor_class_identifier) #21
  br label %6

6:                                                ; preds = %4, %1
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @set_carrier_timeout(ptr noundef %0) #0 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @kstrtouint(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @carrier_timeout) #19
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i32 [ 0, %1 ], [ %6, %3 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pnp_seq_show(ptr noundef %0, ptr nocapture noundef readnone %1) #5 {
  %3 = load i32, ptr @ic_proto_used, align 4
  %4 = and i32 %3, 255
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = and i32 %3, 2
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %3, 256
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, ptr @.str.18, ptr @.str.17
  %12 = select i1 %8, ptr %11, ptr @.str.16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull %12) #19
  br label %14

13:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.19) #19
  br label %14

14:                                               ; preds = %13, %6
  %15 = load i8, ptr @ic_domain, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @ic_domain) #19
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32, ptr @ic_nameservers, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @ic_nameservers) #19
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @ic_nameservers, i32 0, i32 1), align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef getelementptr inbounds ([3 x i32], ptr @ic_nameservers, i32 0, i32 1)) #19
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @ic_nameservers, i32 0, i32 2), align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef getelementptr inbounds ([3 x i32], ptr @ic_nameservers, i32 0, i32 2)) #19
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, ptr @ic_servaddr, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @ic_servaddr) #19
  br label %34

34:                                               ; preds = %33, %30
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @ipconfig_proc_net_init() unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 8
  %2 = tail call ptr @_proc_mkdir(ptr noundef nonnull @.str.23, i16 noundef zeroext 0, ptr noundef %1, ptr noundef nonnull @init_net, i1 noundef zeroext true) #19
  store ptr %2, ptr @ipconfig_dir, align 4
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, i32 -12, i32 0
  ret i32 %4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_devices() unnamed_addr #0 section ".init.text" {
  br label %1

1:                                                ; preds = %11, %0
  %2 = phi i32 [ 0, %0 ], [ %12, %11 ]
  tail call void @wait_for_device_probe() #19
  tail call void @rtnl_lock() #19
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -40
  %9 = tail call fastcc zeroext i1 @ic_is_init_dev(ptr noundef %8) #20
  br i1 %9, label %10, label %3

10:                                               ; preds = %7
  tail call void @rtnl_unlock() #19
  br label %14

11:                                               ; preds = %3
  tail call void @rtnl_unlock() #19
  tail call void @msleep(i32 noundef 1000) #19
  %12 = add nuw nsw i32 %2, 1
  %13 = icmp eq i32 %12, 12
  br i1 %13, label %14, label %1

14:                                               ; preds = %11, %10
  %15 = phi i32 [ 0, %10 ], [ -19, %11 ]
  ret i32 %15
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @ic_open_devs() unnamed_addr #0 section ".init.text" {
  tail call void @rtnl_lock() #19
  %1 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 32
  %2 = icmp eq ptr %1, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %2, label %76, label %6

3:                                                ; preds = %19
  %4 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 32
  %5 = icmp eq ptr %4, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %5, label %76, label %22

6:                                                ; preds = %19, %0
  %7 = phi ptr [ %20, %19 ], [ %1, %0 ]
  %8 = getelementptr i8, ptr %7, i32 -40
  %9 = getelementptr i8, ptr %7, i32 64
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %6
  %14 = or i32 %10, 1
  %15 = tail call i32 @dev_change_flags(ptr noundef %8, i32 noundef %14, ptr noundef null) #19
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %8) #21
  br label %19

19:                                               ; preds = %17, %13, %6
  %20 = load ptr, ptr %7, align 8
  %21 = icmp eq ptr %20, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %21, label %3, label %6

22:                                               ; preds = %72, %3
  %23 = phi ptr [ %74, %72 ], [ %4, %3 ]
  %24 = phi ptr [ %73, %72 ], [ @ic_first_dev, %3 ]
  %25 = getelementptr i8, ptr %23, i32 -40
  %26 = tail call fastcc zeroext i1 @ic_is_init_dev(ptr noundef %25) #20
  br i1 %26, label %27, label %72

27:                                               ; preds = %22
  %28 = getelementptr i8, ptr %23, i32 92
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %29, 363
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %25, i32 noundef %29) #21
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi i32 [ 0, %31 ], [ 1, %27 ]
  %35 = getelementptr i8, ptr %23, i32 64
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 6
  %38 = and i32 %37, 2
  %39 = or i32 %38, %34
  %40 = xor i32 %39, 2
  %41 = load i32, ptr @ic_proto_enabled, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %41, 0
  %44 = icmp ne i32 %42, 0
  %45 = or i1 %43, %44
  br i1 %45, label %46, label %72

46:                                               ; preds = %33
  %47 = trunc i32 %36 to i16
  %48 = and i32 %36, 65534
  %49 = or i32 %48, 1
  %50 = tail call i32 @dev_change_flags(ptr noundef %25, i32 noundef %49, ptr noundef null) #19
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %25) #21
  br label %72

54:                                               ; preds = %46
  %55 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %56 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3264, i32 noundef 16) #22
  %57 = icmp eq ptr %56, null
  br i1 %57, label %71, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.ic_device, ptr %56, i32 0, i32 1
  store ptr %25, ptr %59, align 4
  store ptr %56, ptr %24, align 4
  %60 = getelementptr inbounds %struct.ic_device, ptr %56, i32 0, i32 2
  store i16 %47, ptr %60, align 8
  %61 = trunc i32 %42 to i16
  %62 = getelementptr inbounds %struct.ic_device, ptr %56, i32 0, i32 3
  store i16 %61, ptr %62, align 2
  %63 = and i32 %42, 1
  %64 = icmp eq i32 %63, 0
  %65 = getelementptr inbounds %struct.ic_device, ptr %56, i32 0, i32 4
  br i1 %64, label %67, label %66

66:                                               ; preds = %58
  tail call void @get_random_bytes(ptr noundef %65, i32 noundef 4) #19
  br label %68

67:                                               ; preds = %58
  store i32 0, ptr %65, align 4
  br label %68

68:                                               ; preds = %67, %66
  %69 = load i32, ptr @ic_proto_have_if, align 4
  %70 = or i32 %69, %42
  store i32 %70, ptr @ic_proto_have_if, align 4
  br label %72

71:                                               ; preds = %54
  tail call void @rtnl_unlock() #19
  br label %134

72:                                               ; preds = %68, %52, %33, %22
  %73 = phi ptr [ %24, %22 ], [ %24, %33 ], [ %56, %68 ], [ %24, %52 ]
  %74 = load ptr, ptr %23, align 8
  %75 = icmp eq ptr %74, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %75, label %76, label %22

76:                                               ; preds = %72, %3, %0
  %77 = phi ptr [ @ic_first_dev, %3 ], [ @ic_first_dev, %0 ], [ %73, %72 ]
  tail call void @rtnl_unlock() #19
  %78 = load ptr, ptr @ic_first_dev, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %124, label %80

80:                                               ; preds = %76
  %81 = load volatile i32, ptr @jiffies, align 64
  br label %82

82:                                               ; preds = %113, %80
  %83 = phi i32 [ %123, %113 ], [ %81, %80 ]
  %84 = add i32 %83, 2000
  br label %85

85:                                               ; preds = %109, %82
  %86 = load volatile i32, ptr @jiffies, align 64
  %87 = load i32, ptr @carrier_timeout, align 4
  %88 = mul i32 %87, 1000
  %89 = tail call i32 @__msecs_to_jiffies(i32 noundef %88) #19
  %90 = add i32 %81, %89
  %91 = sub i32 %86, %90
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %124

93:                                               ; preds = %85
  tail call void @rtnl_lock() #19
  %94 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 32
  %95 = icmp eq ptr %94, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %95, label %109, label %96

96:                                               ; preds = %106, %93
  %97 = phi ptr [ %107, %106 ], [ %94, %93 ]
  %98 = getelementptr i8, ptr %97, i32 -40
  %99 = tail call fastcc zeroext i1 @ic_is_init_dev(ptr noundef %98) #20
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = getelementptr i8, ptr %97, i32 -4
  %102 = load volatile i32, ptr %101, align 4
  %103 = and i32 %102, 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  tail call void @rtnl_unlock() #19
  br label %124

106:                                              ; preds = %100, %96
  %107 = load ptr, ptr %97, align 8
  %108 = icmp eq ptr %107, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %108, label %109, label %96

109:                                              ; preds = %106, %93
  tail call void @rtnl_unlock() #19
  tail call void @msleep(i32 noundef 1) #19
  %110 = load volatile i32, ptr @jiffies, align 64
  %111 = sub i32 %110, %84
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %85, label %113

113:                                              ; preds = %109
  %114 = load volatile i32, ptr @jiffies, align 64
  %115 = sub i32 %114, %81
  %116 = tail call i32 @jiffies_to_msecs(i32 noundef %115) #19
  %117 = load i32, ptr @carrier_timeout, align 4
  %118 = mul i32 %117, 1000
  %119 = sub i32 500, %116
  %120 = add i32 %119, %118
  %121 = udiv i32 %120, 1000
  %122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %121) #21
  %123 = load volatile i32, ptr @jiffies, align 64
  br label %82

124:                                              ; preds = %105, %85, %76
  store ptr null, ptr %77, align 4
  %125 = load ptr, ptr @ic_first_dev, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load i8, ptr @user_dev_name, align 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %127
  %131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @user_dev_name) #21
  br label %134

132:                                              ; preds = %127
  %133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #21
  br label %134

134:                                              ; preds = %132, %130, %124, %71
  %135 = phi i32 [ -12, %71 ], [ -19, %132 ], [ -19, %130 ], [ 0, %124 ]
  ret i32 %135
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @ic_dynamic() unnamed_addr #0 section ".init.text" {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #19
  store i32 0, ptr %1, align 4, !annotation !8
  %2 = load i32, ptr @ic_proto_have_if, align 4
  %3 = and i32 %2, 1
  %4 = and i32 %2, 2
  %5 = load i32, ptr @ic_proto_enabled, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #21
  br label %141

9:                                                ; preds = %0
  %10 = xor i32 %5, %2
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #21
  %15 = load i32, ptr @ic_proto_enabled, align 4
  %16 = load i32, ptr @ic_proto_have_if, align 4
  %17 = xor i32 %16, %15
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi i32 [ %17, %13 ], [ %10, %9 ]
  %20 = phi i32 [ %16, %13 ], [ %2, %9 ]
  %21 = and i32 %19, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #21
  %25 = load i32, ptr @ic_proto_have_if, align 4
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi i32 [ %25, %23 ], [ %20, %18 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %141, label %29

29:                                               ; preds = %26
  %30 = icmp eq i32 %3, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) @ic_nameservers, i8 -1, i32 12, i1 false) #19
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) @ic_ntp_servers, i8 -1, i32 12, i1 false) #19
  tail call void @dev_add_pack(ptr noundef nonnull @bootp_packet_type) #19
  br label %32

32:                                               ; preds = %31, %29
  %33 = icmp eq i32 %4, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  tail call void @dev_add_pack(ptr noundef nonnull @rarp_packet_type) #19
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi ptr [ @.str.37, %32 ], [ @.str.16, %34 ]
  %37 = load i32, ptr @ic_proto_enabled, align 4
  %38 = and i32 %37, 256
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, ptr @.str.18, ptr @.str.17
  %41 = select i1 %30, ptr @.str.37, ptr %40
  %42 = and i32 %2, 3
  %43 = icmp eq i32 %42, 3
  %44 = select i1 %43, ptr @.str.38, ptr @.str.37
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull %41, ptr noundef nonnull %44, ptr noundef nonnull %36) #21
  %46 = load volatile i32, ptr @jiffies, align 64
  %47 = load ptr, ptr @ic_first_dev, align 4
  call void @get_random_bytes(ptr noundef nonnull %1, i32 noundef 4) #19
  %48 = load i32, ptr %1, align 4
  %49 = urem i32 %48, 100
  %50 = add nuw nsw i32 %49, 200
  store i32 %50, ptr %1, align 4
  br label %51

51:                                               ; preds = %114, %35
  %52 = phi ptr [ %115, %114 ], [ %47, %35 ]
  %53 = phi i32 [ %112, %114 ], [ 6, %35 ]
  br label %54

54:                                               ; preds = %103, %51
  %55 = phi ptr [ %52, %51 ], [ %104, %103 ]
  br i1 %30, label %64, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.ic_device, ptr %55, i32 0, i32 3
  %58 = load i16, ptr %57, align 2
  %59 = and i16 %58, 1
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load volatile i32, ptr @jiffies, align 64
  %63 = sub i32 %62, %46
  call fastcc void @ic_bootp_send_if(ptr noundef %55, i32 noundef %63) #20
  br label %64

64:                                               ; preds = %61, %56, %54
  br i1 %33, label %71, label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.ic_device, ptr %55, i32 0, i32 3
  %67 = load i16, ptr %66, align 2
  %68 = and i16 %67, 2
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  call fastcc void @ic_rarp_send_if(ptr noundef %55) #20
  br label %71

71:                                               ; preds = %70, %65, %64
  %72 = load ptr, ptr %55, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = load volatile i32, ptr @jiffies, align 64
  %76 = load i32, ptr %1, align 4
  %77 = add i32 %76, %75
  %78 = load volatile i32, ptr @jiffies, align 64
  %79 = sub i32 %78, %77
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %84, %74
  %82 = load volatile i32, ptr @ic_got_reply, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #19
  %86 = load volatile i32, ptr @jiffies, align 64
  %87 = sub i32 %86, %77
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %81, label %89

89:                                               ; preds = %84, %81, %74, %71
  %90 = load volatile i32, ptr @ic_got_reply, align 4
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %89
  %94 = load i32, ptr @ic_proto_enabled, align 4
  %95 = and i32 %94, 256
  %96 = icmp ne i32 %95, 0
  %97 = load i32, ptr @ic_dhcp_msgtype, align 4
  %98 = icmp ne i32 %97, 5
  %99 = select i1 %96, i1 %98, i1 false
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  store volatile i32 0, ptr @ic_got_reply, align 4
  %101 = load ptr, ptr @ic_dev, align 4
  %102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #21
  br label %103

103:                                              ; preds = %108, %100
  %104 = phi ptr [ %101, %100 ], [ %109, %108 ]
  br label %54

105:                                              ; preds = %93, %89
  %106 = load volatile i32, ptr @ic_got_reply, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %105
  %109 = load ptr, ptr %55, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %103

111:                                              ; preds = %108
  %112 = add nsw i32 %53, -1
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr @ic_first_dev, align 4
  %116 = load i32, ptr %1, align 4
  %117 = mul i32 %116, 7
  %118 = lshr i32 %117, 2
  %119 = call i32 @llvm.umin.i32(i32 %118, i32 3000)
  store i32 %119, ptr %1, align 4
  %120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #21
  br label %51

121:                                              ; preds = %111, %105
  %122 = phi ptr [ @.str.40, %105 ], [ @.str.41, %111 ]
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %122) #21
  br i1 %30, label %125, label %124

124:                                              ; preds = %121
  call void @dev_remove_pack(ptr noundef nonnull @bootp_packet_type) #19
  br label %125

125:                                              ; preds = %124, %121
  br i1 %33, label %127, label %126

126:                                              ; preds = %125
  call void @dev_remove_pack(ptr noundef nonnull @rarp_packet_type) #19
  br label %127

127:                                              ; preds = %126, %125
  %128 = load volatile i32, ptr @ic_got_reply, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 -1, ptr @ic_myaddr, align 4
  br label %141

131:                                              ; preds = %127
  %132 = load volatile i32, ptr @ic_got_reply, align 4
  %133 = and i32 %132, 2
  %134 = icmp eq i32 %133, 0
  %135 = load i32, ptr @ic_proto_enabled, align 4
  %136 = and i32 %135, 256
  %137 = icmp eq i32 %136, 0
  %138 = select i1 %137, ptr @.str.18, ptr @.str.17
  %139 = select i1 %134, ptr %138, ptr @.str.16
  %140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull %139, ptr noundef nonnull @ic_addrservaddr, ptr noundef nonnull @ic_myaddr) #21
  br label %141

141:                                              ; preds = %131, %130, %26, %7
  %142 = phi i32 [ 0, %131 ], [ -1, %130 ], [ -1, %7 ], [ -1, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #19
  ret i32 %142
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @ic_close_devs() unnamed_addr #0 section ".init.text" {
  %1 = alloca ptr, align 4
  %2 = load ptr, ptr @ic_dev, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.ic_device, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %0
  %8 = phi ptr [ %6, %4 ], [ null, %0 ]
  tail call void @rtnl_lock() #19
  %9 = load ptr, ptr @ic_first_dev, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %39, label %11

11:                                               ; preds = %7
  %12 = icmp eq ptr %8, null
  %13 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 13, i32 1
  br label %14

14:                                               ; preds = %37, %11
  %15 = phi ptr [ %9, %11 ], [ %18, %37 ]
  %16 = load ptr, ptr @ic_dev, align 4
  %17 = icmp eq ptr %15, %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #19
  store ptr null, ptr %1, align 4, !annotation !8
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr inbounds %struct.ic_device, ptr %15, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  br i1 %12, label %31, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %13, align 8
  store ptr %22, ptr %1, align 4
  %23 = call ptr @netdev_lower_get_next(ptr noundef nonnull %8, ptr noundef nonnull %1) #19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %28, %21
  %26 = phi ptr [ %29, %28 ], [ %23, %21 ]
  %27 = icmp eq ptr %20, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = call ptr @netdev_lower_get_next(ptr noundef nonnull %8, ptr noundef nonnull %1) #19
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %25

31:                                               ; preds = %28, %21, %14
  br i1 %17, label %37, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.ic_device, ptr %15, i32 0, i32 2
  %34 = load i16, ptr %33, align 4
  %35 = zext i16 %34 to i32
  %36 = call i32 @dev_change_flags(ptr noundef %20, i32 noundef %35, ptr noundef null) #19
  br label %37

37:                                               ; preds = %32, %31, %25
  call void @kfree(ptr noundef nonnull %15) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #19
  %38 = icmp eq ptr %18, null
  br i1 %38, label %39, label %14

39:                                               ; preds = %37, %7
  call void @rtnl_unlock() #19
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @ic_defaults() unnamed_addr #0 section ".init.text" {
  %1 = load i1, ptr @ic_host_name_set, align 4
  br i1 %1, label %4, label %2

2:                                                ; preds = %0
  %3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 1), ptr noundef nonnull @.str.49, ptr noundef nonnull @ic_myaddr)
  br label %4

4:                                                ; preds = %2, %0
  %5 = load i32, ptr @root_server_addr, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = load i32, ptr @ic_servaddr, align 4
  store i32 %8, ptr @root_server_addr, align 4
  br label %9

9:                                                ; preds = %7, %4
  %10 = load i32, ptr @ic_netmask, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = load i32, ptr @ic_myaddr, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = and i32 %14, -1073741824
  %18 = icmp eq i32 %17, -2147483648
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = and i32 %14, -536870912
  %21 = icmp eq i32 %20, -1073741824
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = icmp ugt i32 %14, -268435457
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @ic_myaddr) #21
  br label %29

26:                                               ; preds = %22, %19, %16, %12
  %27 = phi i32 [ 255, %12 ], [ 65535, %16 ], [ 16777215, %19 ], [ -1, %22 ]
  store i32 %27, ptr @ic_netmask, align 4
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @ic_netmask) #21
  br label %29

29:                                               ; preds = %26, %24, %9
  %30 = phi i32 [ -1, %24 ], [ 0, %26 ], [ 0, %9 ]
  ret i32 %30
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @ic_setup_if() unnamed_addr #0 section ".init.text" {
  %1 = alloca %struct.ifreq, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #19
  %2 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %3 = load ptr, ptr @ic_dev, align 4
  %4 = getelementptr inbounds %struct.ic_device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = call ptr @strcpy(ptr noundef nonnull %1, ptr noundef %5)
  %7 = load i32, ptr @ic_myaddr, align 4
  store i16 2, ptr %2, align 4
  %8 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.sockaddr_in, ptr %2, i32 0, i32 1
  store i16 0, ptr %9, align 2
  %10 = call i32 @devinet_ioctl(ptr noundef nonnull @init_net, i32 noundef 35094, ptr noundef nonnull %1) #19
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %10) #21
  br label %43

14:                                               ; preds = %0
  %15 = load i32, ptr @ic_netmask, align 4
  store i16 2, ptr %2, align 4
  store i32 %15, ptr %8, align 4
  store i16 0, ptr %9, align 2
  %16 = call i32 @devinet_ioctl(ptr noundef nonnull @init_net, i32 noundef 35100, ptr noundef nonnull %1) #19
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %16) #21
  br label %43

20:                                               ; preds = %14
  %21 = load i32, ptr @ic_myaddr, align 4
  %22 = load i32, ptr @ic_netmask, align 4
  %23 = xor i32 %22, -1
  %24 = or i32 %21, %23
  store i16 2, ptr %2, align 4
  store i32 %24, ptr %8, align 4
  store i16 0, ptr %9, align 2
  %25 = call i32 @devinet_ioctl(ptr noundef nonnull @init_net, i32 noundef 35098, ptr noundef nonnull %1) #19
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %25) #21
  br label %43

29:                                               ; preds = %20
  %30 = load i32, ptr @ic_dev_mtu, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %29
  call void @rtnl_lock() #19
  %33 = load ptr, ptr @ic_dev, align 4
  %34 = getelementptr inbounds %struct.ic_device, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr @ic_dev_mtu, align 4
  %37 = call i32 @dev_set_mtu(ptr noundef %35, i32 noundef %36) #19
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, ptr @ic_dev_mtu, align 4
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %40, i32 noundef %37) #21
  br label %42

42:                                               ; preds = %39, %32
  call void @rtnl_unlock() #19
  br label %43

43:                                               ; preds = %42, %29, %27, %18, %12
  %44 = phi i32 [ -1, %12 ], [ -1, %18 ], [ -1, %27 ], [ 0, %42 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #19
  ret i32 %44
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @ic_setup_routes() unnamed_addr #0 section ".init.text" {
  %1 = alloca %struct.rtentry, align 4
  %2 = load i32, ptr @ic_gateway, align 4
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %26, label %4

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %1) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %1, i8 0, i64 84, i1 false)
  %5 = load i32, ptr @ic_myaddr, align 4
  %6 = xor i32 %5, %2
  %7 = load i32, ptr @ic_netmask, align 4
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #21
  br label %24

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.rtentry, ptr %1, i32 0, i32 1
  store i16 2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rtentry, ptr %1, i32 0, i32 1, i32 1
  store i16 0, ptr %14, align 2
  %15 = getelementptr inbounds %struct.rtentry, ptr %1, i32 0, i32 3
  store i16 2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.rtentry, ptr %1, i32 0, i32 3, i32 1
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.rtentry, ptr %1, i32 0, i32 2
  store i16 2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.rtentry, ptr %1, i32 0, i32 2, i32 1, i32 2
  store i32 %2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.rtentry, ptr %1, i32 0, i32 4
  store i16 3, ptr %19, align 4
  %20 = call i32 @ip_rt_ioctl(ptr noundef nonnull @init_net, i32 noundef 35083, ptr noundef nonnull %1) #19
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %20) #21
  br label %24

24:                                               ; preds = %22, %10
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %1) #19
  br label %26

25:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %1) #19
  br label %26

26:                                               ; preds = %25, %24, %0
  %27 = phi i32 [ -1, %24 ], [ 0, %25 ], [ 0, %0 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_proc_mkdir(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ntp_servers_open(ptr nocapture noundef readonly %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @ntp_servers_show, ptr noundef %4) #19
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ntp_servers_show(ptr noundef %0, ptr nocapture noundef readnone %1) #5 {
  %3 = load i32, ptr @ic_ntp_servers, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @ic_ntp_servers) #19
  br label %6

6:                                                ; preds = %5, %2
  %7 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @ic_ntp_servers, i32 0, i32 1), align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef getelementptr inbounds ([3 x i32], ptr @ic_ntp_servers, i32 0, i32 1)) #19
  br label %10

10:                                               ; preds = %9, %6
  %11 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @ic_ntp_servers, i32 0, i32 2), align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef getelementptr inbounds ([3 x i32], ptr @ic_ntp_servers, i32 0, i32 2)) #19
  br label %14

14:                                               ; preds = %13, %10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_device_probe() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize readonly sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @ic_is_init_dev(ptr nocapture noundef readonly %0) unnamed_addr #7 section ".init.text" {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = load i8, ptr @user_dev_name, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull @user_dev_name)
  %11 = icmp eq i32 %10, 0
  br label %18

12:                                               ; preds = %6
  %13 = and i32 %3, 18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(6) @.str.27, i32 noundef 5)
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %15, %12, %9, %1
  %19 = phi i1 [ false, %1 ], [ %11, %9 ], [ false, %12 ], [ %17, %15 ]
  ret i1 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_flags(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @ic_bootp_send_if(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.ic_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 19
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 21
  %9 = load i16, ptr %8, align 8
  %10 = zext i16 %9 to i32
  %11 = add nuw nsw i32 %10, %7
  %12 = and i32 %11, 131056
  %13 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 22
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = add nuw nsw i32 %15, 607
  %17 = add nuw nsw i32 %16, %12
  %18 = tail call ptr @__alloc_skb(i32 noundef %17, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %113, label %20

20:                                               ; preds = %2
  %21 = add nuw nsw i32 %12, 16
  %22 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 %21
  store ptr %24, ptr %22, align 4
  %25 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 14
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr i8, ptr %26, i32 %21
  store ptr %27, ptr %25, align 8
  %28 = tail call ptr @skb_put(ptr noundef nonnull %18, i32 noundef 576) #19
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(576) %28, i8 0, i32 576, i1 false) #19
  %29 = load ptr, ptr %22, align 4
  %30 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 16
  %31 = load ptr, ptr %30, align 8
  %32 = ptrtoint ptr %29 to i32
  %33 = ptrtoint ptr %31 to i32
  %34 = sub i32 %32, %33
  %35 = trunc i32 %34 to i16
  %36 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 13, i32 0, i32 18
  store i16 %35, ptr %36, align 4
  %37 = and i32 %34, 65535
  %38 = getelementptr i8, ptr %31, i32 %37
  store i8 69, ptr %38, align 4
  %39 = getelementptr inbounds %struct.iphdr, ptr %38, i32 0, i32 2
  store i16 16386, ptr %39, align 2
  %40 = getelementptr inbounds %struct.iphdr, ptr %38, i32 0, i32 4
  store i16 64, ptr %40, align 2
  %41 = getelementptr inbounds %struct.iphdr, ptr %38, i32 0, i32 5
  store i8 64, ptr %41, align 4
  %42 = getelementptr inbounds %struct.iphdr, ptr %38, i32 0, i32 6
  store i8 17, ptr %42, align 1
  %43 = getelementptr inbounds %struct.iphdr, ptr %38, i32 0, i32 9
  store i32 -1, ptr %43, align 4
  %44 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %38, i32 5) #19, !srcloc !9
  %45 = extractvalue { i32, ptr, i32, i32 } %44, 0
  %46 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %45) #23, !srcloc !10
  %47 = xor i32 %46, -1
  %48 = lshr i32 %47, 16
  %49 = trunc i32 %48 to i16
  %50 = getelementptr inbounds %struct.iphdr, ptr %38, i32 0, i32 7
  store i16 %49, ptr %50, align 2
  %51 = getelementptr inbounds %struct.bootp_pkt, ptr %28, i32 0, i32 1
  store i16 17408, ptr %51, align 4
  %52 = getelementptr inbounds %struct.bootp_pkt, ptr %28, i32 0, i32 1, i32 1
  store i16 17152, ptr %52, align 2
  %53 = getelementptr inbounds %struct.bootp_pkt, ptr %28, i32 0, i32 1, i32 2
  store i16 11266, ptr %53, align 4
  %54 = getelementptr inbounds %struct.bootp_pkt, ptr %28, i32 0, i32 2
  store i8 1, ptr %54, align 4
  %55 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 32
  %56 = load i16, ptr %55, align 16
  %57 = zext i16 %56 to i32
  %58 = icmp ult i16 %56, 256
  br i1 %58, label %59, label %61

59:                                               ; preds = %20
  %60 = trunc i16 %56 to i8
  br label %67

61:                                               ; preds = %20
  %62 = icmp eq i16 %56, 774
  br i1 %62, label %67, label %63

63:                                               ; preds = %61
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %57, ptr noundef %4) #21
  %65 = load i16, ptr %55, align 16
  %66 = trunc i16 %65 to i8
  br label %67

67:                                               ; preds = %63, %61, %59
  %68 = phi i8 [ %66, %63 ], [ %60, %59 ], [ 1, %61 ]
  %69 = getelementptr inbounds %struct.bootp_pkt, ptr %28, i32 0, i32 3
  store i8 %68, ptr %69, align 1
  %70 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 51
  %71 = load i8, ptr %70, align 1
  %72 = getelementptr inbounds %struct.bootp_pkt, ptr %28, i32 0, i32 4
  store i8 %71, ptr %72, align 2
  %73 = getelementptr inbounds %struct.bootp_pkt, ptr %28, i32 0, i32 13
  %74 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 72
  %75 = load ptr, ptr %74, align 32
  %76 = load i8, ptr %70, align 1
  %77 = zext i8 %76 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %73, ptr align 1 %75, i32 %77, i1 false)
  %78 = udiv i32 %1, 100
  %79 = trunc i32 %78 to i16
  %80 = tail call i16 @llvm.bswap.i16(i16 %79)
  %81 = getelementptr inbounds %struct.bootp_pkt, ptr %28, i32 0, i32 7
  store i16 %80, ptr %81, align 4
  %82 = getelementptr inbounds %struct.ic_device, ptr %0, i32 0, i32 4
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.bootp_pkt, ptr %28, i32 0, i32 6
  store i32 %83, ptr %84, align 4
  %85 = load i32, ptr @ic_proto_enabled, align 4
  %86 = and i32 %85, 256
  %87 = icmp eq i32 %86, 0
  %88 = getelementptr inbounds %struct.bootp_pkt, ptr %28, i32 0, i32 16
  br i1 %87, label %90, label %89

89:                                               ; preds = %67
  tail call fastcc void @ic_dhcp_init_options(ptr noundef %88) #20
  br label %91

90:                                               ; preds = %67
  tail call fastcc void @ic_bootp_init_ext(ptr noundef %88) #20
  br label %91

91:                                               ; preds = %90, %89
  %92 = getelementptr inbounds %struct.anon.45, ptr %18, i32 0, i32 2
  store ptr %4, ptr %92, align 8
  %93 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 13, i32 0, i32 16
  store i16 8, ptr %93, align 8
  %94 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 83
  %95 = load ptr, ptr %74, align 32
  %96 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 5
  %97 = load i32, ptr %96, align 8
  %98 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 44
  %99 = load ptr, ptr %98, align 16
  %100 = icmp eq ptr %99, null
  br i1 %100, label %108, label %101

101:                                              ; preds = %91
  %102 = load ptr, ptr %99, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = tail call i32 %102(ptr noundef nonnull %18, ptr noundef %4, i16 noundef zeroext 2048, ptr noundef %94, ptr noundef %95, i32 noundef %97) #19
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  tail call void @kfree_skb_reason(ptr noundef nonnull %18, i32 noundef 0) #19
  br label %111

108:                                              ; preds = %104, %101, %91
  %109 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %18) #19
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108, %107
  %112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #21
  br label %113

113:                                              ; preds = %111, %108, %2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @ic_rarp_send_if(ptr nocapture noundef readonly %0) unnamed_addr #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.ic_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 72
  %5 = load ptr, ptr %4, align 32
  tail call void @arp_send(i32 noundef 3, i32 noundef 32821, i32 noundef 0, ptr noundef %3, i32 noundef 0, ptr noundef null, ptr noundef %5, ptr noundef %5) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ic_bootp_recv(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #0 section ".init.text" {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 7
  %8 = icmp eq i16 %7, 3
  br i1 %8, label %247, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %247, label %16, !prof !11

16:                                               ; preds = %13
  tail call void @consume_skb(ptr noundef %0) #19
  br label %19

17:                                               ; preds = %9
  %18 = icmp eq ptr %0, null
  br i1 %18, label %250, label %19

19:                                               ; preds = %17, %16
  %20 = phi ptr [ %14, %16 ], [ %0, %17 ]
  %21 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 5
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 %22, %24
  %26 = icmp ult i32 %25, 28
  br i1 %26, label %27, label %33, !prof !11

27:                                               ; preds = %19
  %28 = icmp ult i32 %22, 28
  br i1 %28, label %247, label %29, !prof !11

29:                                               ; preds = %27
  %30 = sub nuw nsw i32 28, %25
  %31 = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %20, i32 noundef %30) #19
  %32 = icmp eq ptr %31, null
  br i1 %32, label %247, label %33

33:                                               ; preds = %29, %19
  %34 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 16
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 13, i32 0, i32 18
  %37 = load i16, ptr %36, align 4
  %38 = zext i16 %37 to i32
  %39 = getelementptr i8, ptr %35, i32 %38
  %40 = load i8, ptr %39, align 4
  %41 = and i8 %40, 15
  %42 = icmp eq i8 %40, 69
  br i1 %42, label %43, label %247

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.iphdr, ptr %39, i32 0, i32 6
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 17
  br i1 %46, label %47, label %247

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.iphdr, ptr %39, i32 0, i32 4
  %49 = load i16, ptr %48, align 2
  %50 = and i16 %49, -193
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = tail call i32 @net_ratelimit() #19
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %247, label %55

55:                                               ; preds = %52
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #21
  br label %247

57:                                               ; preds = %47
  %58 = load i32, ptr %21, align 8
  %59 = getelementptr inbounds %struct.iphdr, ptr %39, i32 0, i32 2
  %60 = load i16, ptr %59, align 2
  %61 = tail call i16 @llvm.bswap.i16(i16 %60)
  %62 = zext i16 %61 to i32
  %63 = icmp ult i32 %58, %62
  br i1 %63, label %247, label %64

64:                                               ; preds = %57
  %65 = zext i8 %41 to i32
  %66 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %39, i32 %65) #19, !srcloc !9
  %67 = extractvalue { i32, ptr, i32, i32 } %66, 0
  %68 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %67) #23, !srcloc !10
  %69 = icmp ugt i32 %68, -65537
  br i1 %69, label %70, label %247

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.bootp_pkt, ptr %39, i32 0, i32 1
  %72 = load i16, ptr %71, align 4
  %73 = icmp eq i16 %72, 17152
  br i1 %73, label %74, label %247

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.bootp_pkt, ptr %39, i32 0, i32 1, i32 1
  %76 = load i16, ptr %75, align 2
  %77 = icmp eq i16 %76, 17408
  br i1 %77, label %78, label %247

78:                                               ; preds = %74
  %79 = load i16, ptr %59, align 2
  %80 = tail call i16 @llvm.bswap.i16(i16 %79)
  %81 = zext i16 %80 to i32
  %82 = getelementptr inbounds %struct.bootp_pkt, ptr %39, i32 0, i32 1, i32 2
  %83 = load i16, ptr %82, align 4
  %84 = tail call i16 @llvm.bswap.i16(i16 %83)
  %85 = zext i16 %84 to i32
  %86 = add nuw nsw i32 %85, 20
  %87 = icmp ugt i32 %86, %81
  %88 = icmp ult i16 %84, 244
  %89 = select i1 %87, i1 true, i1 %88
  br i1 %89, label %247, label %90

90:                                               ; preds = %78
  %91 = load i32, ptr %21, align 8
  %92 = tail call fastcc zeroext i1 @pskb_may_pull(ptr noundef nonnull %20, i32 noundef %91)
  br i1 %92, label %93, label %247

93:                                               ; preds = %90
  %94 = load ptr, ptr %34, align 8
  %95 = load i16, ptr %36, align 4
  %96 = zext i16 %95 to i32
  %97 = getelementptr i8, ptr %94, i32 %96
  tail call void @_raw_spin_lock(ptr noundef nonnull @ic_recv_lock) #19
  %98 = load volatile i32, ptr @ic_got_reply, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %244

100:                                              ; preds = %104, %93
  %101 = phi ptr [ %102, %104 ], [ @ic_first_dev, %93 ]
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %244, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.ic_device, ptr %102, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, %1
  br i1 %107, label %108, label %100

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.ic_device, ptr %102, i32 0, i32 1
  %110 = getelementptr inbounds %struct.bootp_pkt, ptr %97, i32 0, i32 2
  %111 = load i8, ptr %110, align 4
  %112 = icmp eq i8 %111, 2
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.bootp_pkt, ptr %97, i32 0, i32 6
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.ic_device, ptr %102, i32 0, i32 4
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %129, label %119

119:                                              ; preds = %113, %108
  %120 = tail call i32 @net_ratelimit() #19
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %244, label %122

122:                                              ; preds = %119
  %123 = load ptr, ptr %109, align 4
  %124 = load i8, ptr %110, align 4
  %125 = zext i8 %124 to i32
  %126 = getelementptr inbounds %struct.bootp_pkt, ptr %97, i32 0, i32 6
  %127 = load i32, ptr %126, align 4
  %128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %123, i32 noundef %125, i32 noundef %127) #21
  br label %244

129:                                              ; preds = %113
  %130 = icmp ugt i16 %84, 247
  br i1 %130, label %131, label %225

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.bootp_pkt, ptr %97, i32 0, i32 16
  %133 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %132, ptr noundef nonnull dereferenceable(4) @ic_bootp_cookie, i32 4)
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %225

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.iphdr, ptr %97, i32 0, i32 2
  %137 = load i16, ptr %136, align 2
  %138 = tail call i16 @llvm.bswap.i16(i16 %137)
  %139 = zext i16 %138 to i32
  %140 = getelementptr i8, ptr %97, i32 %139
  %141 = load i32, ptr @ic_proto_enabled, align 4
  %142 = and i32 %141, 256
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %205, label %144

144:                                              ; preds = %135
  %145 = getelementptr %struct.bootp_pkt, ptr %97, i32 0, i32 16, i32 4
  %146 = icmp ult ptr %145, %140
  br i1 %146, label %147, label %203

147:                                              ; preds = %174, %144
  %148 = phi i32 [ %177, %174 ], [ 0, %144 ]
  %149 = phi i32 [ %176, %174 ], [ -1, %144 ]
  %150 = phi ptr [ %175, %174 ], [ %145, %144 ]
  %151 = load i8, ptr %150, align 1
  %152 = icmp eq i8 %151, -1
  br i1 %152, label %179, label %153

153:                                              ; preds = %147
  %154 = getelementptr i8, ptr %150, i32 1
  %155 = icmp eq i8 %151, 0
  br i1 %155, label %174, label %156

156:                                              ; preds = %153
  %157 = load i8, ptr %154, align 1
  %158 = zext i8 %157 to i32
  %159 = add nuw nsw i32 %158, 1
  %160 = getelementptr i8, ptr %154, i32 %159
  %161 = icmp ult ptr %160, %140
  br i1 %161, label %162, label %179

162:                                              ; preds = %156
  switch i8 %151, label %174 [
    i8 53, label %163
    i8 54, label %169
  ]

163:                                              ; preds = %162
  %164 = icmp eq i8 %157, 0
  br i1 %164, label %174, label %165

165:                                              ; preds = %163
  %166 = getelementptr i8, ptr %150, i32 2
  %167 = load i8, ptr %166, align 1
  %168 = zext i8 %167 to i32
  br label %174

169:                                              ; preds = %162
  %170 = icmp ugt i8 %157, 3
  br i1 %170, label %171, label %174

171:                                              ; preds = %169
  %172 = getelementptr i8, ptr %150, i32 2
  %173 = load i32, ptr %172, align 1
  br label %174

174:                                              ; preds = %171, %169, %165, %163, %162, %153
  %175 = phi ptr [ %154, %153 ], [ %160, %169 ], [ %160, %171 ], [ %160, %163 ], [ %160, %165 ], [ %160, %162 ]
  %176 = phi i32 [ %149, %153 ], [ %149, %169 ], [ %173, %171 ], [ %149, %163 ], [ %149, %165 ], [ %149, %162 ]
  %177 = phi i32 [ %148, %153 ], [ %148, %169 ], [ %148, %171 ], [ %148, %163 ], [ %168, %165 ], [ %148, %162 ]
  %178 = icmp ult ptr %175, %140
  br i1 %178, label %147, label %179

179:                                              ; preds = %174, %156, %147
  %180 = phi i32 [ %149, %147 ], [ %176, %174 ], [ %149, %156 ]
  %181 = phi i32 [ %148, %147 ], [ %177, %174 ], [ %148, %156 ]
  switch i32 %181, label %203 [
    i32 2, label %182
    i32 5, label %194
  ]

182:                                              ; preds = %179
  %183 = load i32, ptr @ic_myaddr, align 4
  %184 = icmp eq i32 %183, -1
  br i1 %184, label %185, label %244

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.bootp_pkt, ptr %97, i32 0, i32 10
  %187 = load i32, ptr %186, align 4
  store i32 %187, ptr @ic_myaddr, align 4
  store i32 %180, ptr @ic_servaddr, align 4
  %188 = icmp eq i32 %180, -1
  br i1 %188, label %204, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.bootp_pkt, ptr %97, i32 0, i32 11
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %191, %180
  br i1 %192, label %204, label %193

193:                                              ; preds = %189
  store i32 %180, ptr %190, align 4
  br label %204

194:                                              ; preds = %179
  %195 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 72
  %196 = load ptr, ptr %195, align 32
  %197 = getelementptr inbounds %struct.bootp_pkt, ptr %97, i32 0, i32 13
  %198 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 51
  %199 = load i8, ptr %198, align 1
  %200 = zext i8 %199 to i32
  %201 = tail call i32 @bcmp(ptr %196, ptr %197, i32 %200)
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %204, label %244

203:                                              ; preds = %179, %144
  store i32 -1, ptr @ic_myaddr, align 4
  store i32 -1, ptr @ic_servaddr, align 4
  br label %244

204:                                              ; preds = %194, %193, %189, %185
  store i32 %181, ptr @ic_dhcp_msgtype, align 4
  br label %205

205:                                              ; preds = %204, %135
  %206 = getelementptr %struct.bootp_pkt, ptr %97, i32 0, i32 16, i32 4
  %207 = icmp ult ptr %206, %140
  br i1 %207, label %208, label %225

208:                                              ; preds = %222, %205
  %209 = phi ptr [ %223, %222 ], [ %206, %205 ]
  %210 = load i8, ptr %209, align 1
  %211 = icmp eq i8 %210, -1
  br i1 %211, label %225, label %212

212:                                              ; preds = %208
  %213 = getelementptr i8, ptr %209, i32 1
  %214 = icmp eq i8 %210, 0
  br i1 %214, label %222, label %215

215:                                              ; preds = %212
  %216 = load i8, ptr %213, align 1
  %217 = zext i8 %216 to i32
  %218 = add nuw nsw i32 %217, 1
  %219 = getelementptr i8, ptr %213, i32 %218
  %220 = icmp ult ptr %219, %140
  br i1 %220, label %221, label %222

221:                                              ; preds = %215
  tail call fastcc void @ic_do_bootp_ext(ptr noundef %209) #20
  br label %222

222:                                              ; preds = %221, %215, %212
  %223 = phi ptr [ %213, %212 ], [ %219, %221 ], [ %219, %215 ]
  %224 = icmp ult ptr %223, %140
  br i1 %224, label %208, label %225

225:                                              ; preds = %222, %208, %205, %131, %129
  store ptr %102, ptr @ic_dev, align 4
  %226 = getelementptr inbounds %struct.bootp_pkt, ptr %97, i32 0, i32 10
  %227 = load i32, ptr %226, align 4
  store i32 %227, ptr @ic_myaddr, align 4
  %228 = getelementptr inbounds %struct.bootp_pkt, ptr %97, i32 0, i32 11
  %229 = load i32, ptr %228, align 4
  store i32 %229, ptr @ic_servaddr, align 4
  %230 = getelementptr inbounds %struct.iphdr, ptr %97, i32 0, i32 8
  %231 = load i32, ptr %230, align 4
  store i32 %231, ptr @ic_addrservaddr, align 4
  %232 = load i32, ptr @ic_gateway, align 4
  %233 = icmp eq i32 %232, -1
  br i1 %233, label %234, label %239

234:                                              ; preds = %225
  %235 = getelementptr inbounds %struct.bootp_pkt, ptr %97, i32 0, i32 12
  %236 = load i32, ptr %235, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %234
  store i32 %236, ptr @ic_gateway, align 4
  br label %239

239:                                              ; preds = %238, %234, %225
  %240 = load i32, ptr @ic_nameservers, align 4
  %241 = icmp eq i32 %240, -1
  br i1 %241, label %242, label %243

242:                                              ; preds = %239
  store i32 %229, ptr @ic_nameservers, align 4
  br label %243

243:                                              ; preds = %242, %239
  store volatile i32 1, ptr @ic_got_reply, align 4
  br label %244

244:                                              ; preds = %243, %203, %194, %182, %122, %119, %100, %93
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !12
  %245 = load i16, ptr @ic_recv_lock, align 4
  %246 = add i16 %245, 1
  store i16 %246, ptr @ic_recv_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !15
  br label %247

247:                                              ; preds = %244, %90, %78, %74, %70, %64, %57, %55, %52, %43, %33, %29, %27, %13, %4
  %248 = phi ptr [ %0, %13 ], [ %0, %4 ], [ %20, %33 ], [ %20, %43 ], [ %20, %55 ], [ %20, %52 ], [ %20, %57 ], [ %20, %64 ], [ %20, %70 ], [ %20, %74 ], [ %20, %78 ], [ %20, %244 ], [ %20, %90 ], [ %20, %29 ], [ %20, %27 ]
  %249 = phi i32 [ 1, %13 ], [ 0, %4 ], [ 0, %33 ], [ 0, %43 ], [ 0, %55 ], [ 0, %52 ], [ 0, %57 ], [ 0, %64 ], [ 0, %70 ], [ 0, %74 ], [ 0, %78 ], [ 0, %244 ], [ 0, %90 ], [ 0, %29 ], [ 0, %27 ]
  tail call void @kfree_skb_reason(ptr noundef %248, i32 noundef 0) #19
  br label %250

250:                                              ; preds = %247, %17
  %251 = phi i32 [ 1, %17 ], [ %249, %247 ]
  ret i32 %251
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pskb_may_pull(ptr noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = icmp ult i32 %7, %1
  br i1 %8, label %9, label %15, !prof !11

9:                                                ; preds = %2
  %10 = icmp ult i32 %4, %1
  br i1 %10, label %15, label %11, !prof !11

11:                                               ; preds = %9
  %12 = sub i32 %1, %7
  %13 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %12) #19
  %14 = icmp ne ptr %13, null
  br label %15

15:                                               ; preds = %11, %9, %2
  %16 = phi i1 [ %14, %11 ], [ true, %2 ], [ false, %9 ]
  ret i1 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: cold nofree nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @ic_do_bootp_ext(ptr noundef readonly %0) unnamed_addr #11 section ".init.text" {
  %2 = getelementptr i8, ptr %0, i32 2
  %3 = getelementptr i8, ptr %0, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = load i8, ptr %0, align 1
  switch i8 %6, label %95 [
    i8 1, label %7
    i8 3, label %12
    i8 6, label %17
    i8 12, label %34
    i8 15, label %48
    i8 17, label %56
    i8 26, label %63
    i8 40, label %67
    i8 42, label %78
  ]

7:                                                ; preds = %1
  %8 = load i32, ptr @ic_netmask, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %95

10:                                               ; preds = %7
  %11 = load i32, ptr %2, align 1
  store i32 %11, ptr @ic_netmask, align 4
  br label %95

12:                                               ; preds = %1
  %13 = load i32, ptr @ic_gateway, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %95

15:                                               ; preds = %12
  %16 = load i32, ptr %2, align 1
  store i32 %16, ptr @ic_gateway, align 4
  br label %95

17:                                               ; preds = %1
  %18 = lshr i8 %4, 2
  %19 = tail call i8 @llvm.umin.i8(i8 %18, i8 3)
  %20 = zext i8 %19 to i32
  %21 = icmp eq i8 %19, 0
  br i1 %21, label %95, label %22

22:                                               ; preds = %31, %17
  %23 = phi i32 [ %32, %31 ], [ 0, %17 ]
  %24 = getelementptr [3 x i32], ptr @ic_nameservers, i32 0, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = shl i32 %23, 2
  %29 = getelementptr i8, ptr %2, i32 %28
  %30 = load i32, ptr %29, align 1
  store i32 %30, ptr %24, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = add nuw nsw i32 %23, 1
  %33 = icmp eq i32 %32, %20
  br i1 %33, label %95, label %22

34:                                               ; preds = %1
  %35 = load i1, ptr @ic_host_name_set, align 4
  br i1 %35, label %95, label %36

36:                                               ; preds = %34
  %37 = icmp eq i8 %4, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %36
  %39 = tail call ptr @llvm.thread.pointer() #19
  %40 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 92
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nsproxy, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.new_utsname, ptr %43, i32 0, i32 1
  %45 = tail call i32 @llvm.smin.i32(i32 %5, i32 63) #19
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %44, ptr align 1 %2, i32 %45, i1 false) #19
  %46 = getelementptr i8, ptr %44, i32 %45
  store i8 0, ptr %46, align 1
  br label %47

47:                                               ; preds = %38, %36
  store i1 true, ptr @ic_host_name_set, align 4
  br label %95

48:                                               ; preds = %1
  %49 = load i8, ptr @ic_domain, align 1
  %50 = icmp ne i8 %49, 0
  %51 = icmp eq i8 %4, 0
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %95, label %53

53:                                               ; preds = %48
  %54 = tail call i32 @llvm.smin.i32(i32 %5, i32 63) #19
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 @ic_domain, ptr align 1 %2, i32 %54, i1 false) #19
  %55 = getelementptr i8, ptr @ic_domain, i32 %54
  store i8 0, ptr %55, align 1
  br label %95

56:                                               ; preds = %1
  %57 = load i8, ptr @root_server_path, align 1
  %58 = icmp ne i8 %57, 0
  %59 = icmp eq i8 %4, 0
  %60 = select i1 %58, i1 true, i1 %59
  br i1 %60, label %95, label %61

61:                                               ; preds = %56
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 @root_server_path, ptr align 1 %2, i32 %5, i1 false) #19
  %62 = getelementptr i8, ptr @root_server_path, i32 %5
  store i8 0, ptr %62, align 1
  br label %95

63:                                               ; preds = %1
  %64 = load i16, ptr %2, align 1
  %65 = tail call i16 @llvm.bswap.i16(i16 %64)
  %66 = zext i16 %65 to i32
  store i32 %66, ptr @ic_dev_mtu, align 4
  br label %95

67:                                               ; preds = %1
  %68 = icmp eq i8 %4, 0
  br i1 %68, label %95, label %69

69:                                               ; preds = %67
  %70 = tail call ptr @llvm.thread.pointer() #19
  %71 = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 92
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.nsproxy, ptr %72, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.new_utsname, ptr %74, i32 0, i32 5
  %76 = tail call i32 @llvm.smin.i32(i32 %5, i32 63) #19
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %75, ptr align 1 %2, i32 %76, i1 false) #19
  %77 = getelementptr i8, ptr %75, i32 %76
  store i8 0, ptr %77, align 1
  br label %95

78:                                               ; preds = %1
  %79 = lshr i8 %4, 2
  %80 = tail call i8 @llvm.umin.i8(i8 %79, i8 3)
  %81 = zext i8 %80 to i32
  %82 = icmp eq i8 %80, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %92, %78
  %84 = phi i32 [ %93, %92 ], [ 0, %78 ]
  %85 = getelementptr [3 x i32], ptr @ic_ntp_servers, i32 0, i32 %84
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = shl i32 %84, 2
  %90 = getelementptr i8, ptr %2, i32 %89
  %91 = load i32, ptr %90, align 1
  store i32 %91, ptr %85, align 4
  br label %92

92:                                               ; preds = %88, %83
  %93 = add nuw nsw i32 %84, 1
  %94 = icmp eq i32 %93, %81
  br i1 %94, label %95, label %83

95:                                               ; preds = %92, %78, %69, %67, %63, %61, %56, %53, %48, %47, %34, %31, %17, %15, %12, %10, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ic_rarp_recv(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #0 section ".init.text" {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %100, label %11, !prof !11

11:                                               ; preds = %8
  tail call void @consume_skb(ptr noundef %0) #19
  br label %14

12:                                               ; preds = %4
  %13 = icmp eq ptr %0, null
  br i1 %13, label %103, label %14

14:                                               ; preds = %12, %11
  %15 = phi ptr [ %9, %11 ], [ %0, %12 ]
  %16 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 %17, %19
  %21 = icmp ult i32 %20, 8
  br i1 %21, label %22, label %28, !prof !11

22:                                               ; preds = %14
  %23 = icmp ult i32 %17, 8
  br i1 %23, label %100, label %24, !prof !11

24:                                               ; preds = %22
  %25 = sub nuw nsw i32 8, %20
  %26 = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %15, i32 noundef %25) #19
  %27 = icmp eq ptr %26, null
  br i1 %27, label %100, label %28

28:                                               ; preds = %24, %14
  %29 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 16
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 13, i32 0, i32 17
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = getelementptr i8, ptr %30, i32 %33
  %35 = getelementptr inbounds %struct.arphdr, ptr %34, i32 0, i32 2
  %36 = load i8, ptr %35, align 2
  %37 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 51
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %36, %38
  br i1 %39, label %40, label %100

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %42 = load i16, ptr %41, align 16
  %43 = load i16, ptr %34, align 2
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %45 = icmp eq i16 %42, %44
  br i1 %45, label %46, label %100

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.arphdr, ptr %34, i32 0, i32 4
  %48 = load i16, ptr %47, align 2
  %49 = icmp eq i16 %48, 1024
  br i1 %49, label %50, label %100

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.arphdr, ptr %34, i32 0, i32 1
  %52 = load i16, ptr %51, align 2
  %53 = icmp eq i16 %52, 8
  br i1 %53, label %54, label %100

54:                                               ; preds = %50
  %55 = zext i8 %36 to i32
  %56 = shl nuw nsw i32 %55, 1
  %57 = add nuw nsw i32 %56, 16
  %58 = tail call fastcc zeroext i1 @pskb_may_pull(ptr noundef nonnull %15, i32 noundef %57)
  br i1 %58, label %59, label %100

59:                                               ; preds = %54
  %60 = load ptr, ptr %29, align 8
  %61 = load i16, ptr %31, align 2
  %62 = zext i16 %61 to i32
  %63 = getelementptr i8, ptr %60, i32 %62
  %64 = getelementptr %struct.arphdr, ptr %63, i32 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @ic_recv_lock) #19
  %65 = load volatile i32, ptr @ic_got_reply, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %71, %59
  %68 = phi ptr [ %69, %71 ], [ @ic_first_dev, %59 ]
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %97, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.ic_device, ptr %69, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, %1
  br i1 %74, label %75, label %67

75:                                               ; preds = %71
  %76 = load i8, ptr %37, align 1
  %77 = zext i8 %76 to i32
  %78 = getelementptr i8, ptr %64, i32 %77
  %79 = load i32, ptr %78, align 1
  %80 = getelementptr i8, ptr %78, i32 4
  %81 = getelementptr i8, ptr %80, i32 %77
  %82 = load i32, ptr %81, align 1
  %83 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 72
  %84 = load ptr, ptr %83, align 32
  %85 = tail call i32 @bcmp(ptr %80, ptr %84, i32 %77)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %75
  %88 = load i32, ptr @ic_servaddr, align 4
  %89 = icmp eq i32 %88, -1
  %90 = icmp eq i32 %88, %79
  %91 = select i1 %89, i1 true, i1 %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  store ptr %69, ptr @ic_dev, align 4
  %93 = load i32, ptr @ic_myaddr, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 %82, ptr @ic_myaddr, align 4
  br label %96

96:                                               ; preds = %95, %92
  store i32 %79, ptr @ic_servaddr, align 4
  store i32 %79, ptr @ic_addrservaddr, align 4
  store volatile i32 2, ptr @ic_got_reply, align 4
  br label %97

97:                                               ; preds = %96, %87, %75, %67, %59
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !12
  %98 = load i16, ptr @ic_recv_lock, align 4
  %99 = add i16 %98, 1
  store i16 %99, ptr @ic_recv_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !15
  br label %100

100:                                              ; preds = %97, %54, %50, %46, %40, %28, %24, %22, %8
  %101 = phi ptr [ %0, %8 ], [ %15, %22 ], [ %15, %54 ], [ %15, %50 ], [ %15, %46 ], [ %15, %28 ], [ %15, %40 ], [ %15, %24 ], [ %15, %97 ]
  %102 = phi i32 [ 1, %8 ], [ 0, %22 ], [ 0, %54 ], [ 0, %50 ], [ 0, %46 ], [ 0, %28 ], [ 0, %40 ], [ 0, %24 ], [ 0, %97 ]
  tail call void @kfree_skb_reason(ptr noundef %101, i32 noundef 0) #19
  br label %103

103:                                              ; preds = %100, %12
  %104 = phi i32 [ 1, %12 ], [ %102, %100 ]
  ret i32 %104
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @ic_dhcp_init_options(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = load i32, ptr @ic_servaddr, align 4
  %3 = icmp eq i32 %2, -1
  %4 = select i1 %3, i8 1, i8 3
  store i32 1666417251, ptr %0, align 1
  %5 = getelementptr i8, ptr %0, i32 4
  %6 = getelementptr i8, ptr %0, i32 5
  store i8 53, ptr %5, align 1
  %7 = getelementptr i8, ptr %0, i32 6
  store i8 1, ptr %6, align 1
  %8 = getelementptr i8, ptr %0, i32 7
  store i8 %4, ptr %7, align 1
  br i1 %3, label %18, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 8
  store i8 54, ptr %8, align 1
  %11 = getelementptr i8, ptr %0, i32 9
  store i8 4, ptr %10, align 1
  %12 = load i32, ptr @ic_servaddr, align 4
  store i32 %12, ptr %11, align 1
  %13 = getelementptr i8, ptr %0, i32 13
  %14 = getelementptr i8, ptr %0, i32 14
  store i8 50, ptr %13, align 1
  %15 = getelementptr i8, ptr %0, i32 15
  store i8 4, ptr %14, align 1
  %16 = load i32, ptr @ic_myaddr, align 4
  store i32 %16, ptr %15, align 1
  %17 = getelementptr i8, ptr %0, i32 19
  br label %18

18:                                               ; preds = %9, %1
  %19 = phi ptr [ %17, %9 ], [ %8, %1 ]
  %20 = getelementptr i8, ptr %19, i32 1
  store i8 55, ptr %19, align 1
  %21 = getelementptr i8, ptr %19, i32 2
  store i8 9, ptr %20, align 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %21, ptr noundef nonnull align 1 dereferenceable(9) @ic_dhcp_init_options.ic_req_params, i32 9, i1 false)
  %22 = getelementptr i8, ptr %19, i32 11
  %23 = load i1, ptr @ic_host_name_set, align 4
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = getelementptr i8, ptr %19, i32 12
  store i8 12, ptr %22, align 1
  %26 = tail call ptr @llvm.thread.pointer() #19
  %27 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 92
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nsproxy, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.new_utsname, ptr %30, i32 0, i32 1
  %32 = tail call i32 @strlen(ptr noundef %31)
  %33 = trunc i32 %32 to i8
  %34 = getelementptr i8, ptr %19, i32 13
  store i8 %33, ptr %25, align 1
  %35 = load ptr, ptr %27, align 4
  %36 = getelementptr inbounds %struct.nsproxy, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.new_utsname, ptr %37, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %34, ptr align 1 %38, i32 %32, i1 false)
  %39 = getelementptr i8, ptr %34, i32 %32
  br label %40

40:                                               ; preds = %24, %18
  %41 = phi ptr [ %39, %24 ], [ %22, %18 ]
  %42 = load i8, ptr @vendor_class_identifier, align 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @vendor_class_identifier) #21
  %46 = getelementptr i8, ptr %41, i32 1
  store i8 60, ptr %41, align 1
  %47 = tail call i32 @strlen(ptr noundef nonnull @vendor_class_identifier)
  %48 = trunc i32 %47 to i8
  %49 = getelementptr i8, ptr %41, i32 2
  store i8 %48, ptr %46, align 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %49, ptr nonnull align 1 @vendor_class_identifier, i32 %47, i1 false)
  %50 = getelementptr i8, ptr %49, i32 %47
  br label %51

51:                                               ; preds = %44, %40
  %52 = phi ptr [ %50, %44 ], [ %41, %40 ]
  %53 = tail call i32 @strlen(ptr noundef getelementptr inbounds ([253 x i8], ptr @dhcp_client_identifier, i32 0, i32 1))
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = ptrtoint ptr %52 to i32
  %57 = ptrtoint ptr %0 to i32
  %58 = add i32 %57, 311
  %59 = sub i32 %58, %56
  %60 = icmp slt i32 %53, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = getelementptr i8, ptr %52, i32 1
  store i8 61, ptr %52, align 1
  %63 = add nuw nsw i32 %53, 1
  %64 = trunc i32 %63 to i8
  %65 = getelementptr i8, ptr %52, i32 2
  store i8 %64, ptr %62, align 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %65, ptr nonnull align 1 @dhcp_client_identifier, i32 %63, i1 false)
  %66 = getelementptr i8, ptr %65, i32 %63
  br label %67

67:                                               ; preds = %61, %55, %51
  %68 = phi ptr [ %66, %61 ], [ %52, %55 ], [ %52, %51 ]
  store i8 -1, ptr %68, align 1
  ret void
}

; Function Attrs: argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal fastcc void @ic_bootp_init_ext(ptr nocapture noundef writeonly %0) unnamed_addr #12 section ".init.text" {
  store i32 1666417251, ptr %0, align 1
  %2 = getelementptr i8, ptr %0, i32 4
  %3 = getelementptr i8, ptr %0, i32 5
  store i8 1, ptr %2, align 1
  store i8 4, ptr %3, align 1
  %4 = getelementptr i8, ptr %0, i32 10
  %5 = getelementptr i8, ptr %0, i32 11
  store i8 3, ptr %4, align 1
  store i8 4, ptr %5, align 1
  %6 = getelementptr i8, ptr %0, i32 16
  %7 = getelementptr i8, ptr %0, i32 17
  store i8 6, ptr %6, align 1
  store i8 12, ptr %7, align 1
  %8 = getelementptr i8, ptr %0, i32 30
  %9 = getelementptr i8, ptr %0, i32 31
  store i8 12, ptr %8, align 1
  store i8 32, ptr %9, align 1
  %10 = getelementptr i8, ptr %0, i32 64
  %11 = getelementptr i8, ptr %0, i32 65
  store i8 40, ptr %10, align 1
  store i8 32, ptr %11, align 1
  %12 = getelementptr i8, ptr %0, i32 98
  %13 = getelementptr i8, ptr %0, i32 99
  store i8 17, ptr %12, align 1
  store i8 40, ptr %13, align 1
  %14 = getelementptr i8, ptr %0, i32 140
  %15 = getelementptr i8, ptr %0, i32 141
  store i8 57, ptr %14, align 1
  %16 = getelementptr i8, ptr %0, i32 142
  store i8 2, ptr %15, align 1
  %17 = getelementptr i8, ptr %0, i32 143
  store i8 1, ptr %16, align 1
  %18 = getelementptr i8, ptr %0, i32 144
  store i8 -106, ptr %17, align 1
  store i8 -1, ptr %18, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @arp_send(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_lower_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #15

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devinet_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_rt_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @ic_proto_name(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(3) @.str.60)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %47, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(4) @.str.61)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %47, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(4) @.str.58)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %47, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(5) @.str.59)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %47, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(5) @.str.62, i32 noundef 4)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i32, ptr @ic_proto_enabled, align 4
  %18 = and i32 %17, -3
  store i32 %18, ptr @ic_proto_enabled, align 4
  %19 = tail call ptr @strstr(ptr noundef %0, ptr noundef nonnull @.str.63)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %47, label %21

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %19, i32 5
  %23 = tail call ptr @strchr(ptr noundef %22, i32 noundef 44)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %47, label %25

25:                                               ; preds = %21
  store i8 0, ptr %23, align 1
  %26 = tail call i32 @kstrtou8(ptr noundef %22, i32 noundef 0, ptr noundef nonnull @dhcp_client_identifier) #19
  %27 = getelementptr i8, ptr %23, i32 1
  %28 = tail call ptr @strncpy(ptr noundef getelementptr inbounds ([253 x i8], ptr @dhcp_client_identifier, i32 0, i32 1), ptr noundef %27, i32 noundef 251)
  store i8 44, ptr %23, align 1
  br label %47

29:                                               ; preds = %13
  %30 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(6) @.str.64)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, ptr @ic_proto_enabled, align 4
  %34 = and i32 %33, -259
  store i32 %34, ptr @ic_proto_enabled, align 4
  br label %47

35:                                               ; preds = %29
  %36 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(5) @.str.65)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, ptr @ic_proto_enabled, align 4
  %40 = and i32 %39, -258
  store i32 %40, ptr @ic_proto_enabled, align 4
  br label %47

41:                                               ; preds = %35
  %42 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(5) @.str.66)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, ptr @ic_proto_enabled, align 4
  %46 = and i32 %45, -257
  store i32 %46, ptr @ic_proto_enabled, align 4
  br label %47

47:                                               ; preds = %44, %41, %38, %32, %25, %21, %16, %10, %7, %4, %1
  %48 = phi i32 [ 1, %44 ], [ 1, %38 ], [ 1, %32 ], [ 1, %4 ], [ 1, %1 ], [ 0, %10 ], [ 0, %7 ], [ 1, %21 ], [ 1, %16 ], [ 1, %25 ], [ 0, %41 ]
  ret i32 %48
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { cold nofree nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { argmemonly nofree nounwind readonly willreturn }
attributes #19 = { nounwind }
attributes #20 = { cold }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nounwind readnone }

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
!9 = !{i64 5458328, i64 5458367, i64 5458393, i64 5458417, i64 5458442, i64 5458468, i64 5458493, i64 5458519, i64 5458546, i64 5458572, i64 5458611, i64 5458655, i64 5458686, i64 5458711}
!10 = !{i64 5457945}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2149319072}
!13 = !{i64 2149314896}
!14 = !{i64 2149314971, i64 2149314998, i64 2149315045, i64 2149315067, i64 2149315095, i64 2149315115}
!15 = !{i64 2149342075}
