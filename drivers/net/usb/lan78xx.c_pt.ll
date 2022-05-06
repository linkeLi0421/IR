; ModuleID = '/llk/IR/drivers/net/usb/lan78xx.c_pt.bc'
source_filename = "../drivers/net/usb/lan78xx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.126 }
%union.anon.126 = type { ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fixed_phy_status = type { i32, i32, i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.148, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.148 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
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
%struct.lan78xx_net = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.napi_struct, %struct.delayed_work, i32, ptr, %struct.usb_anchor, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, ptr, i8, i32, %struct.timer_list, [5 x i32], i32, i8, i32, i32, ptr, i32, i32, i8, i32, %struct.statstage, %struct.irq_domain_data }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.statstage = type { %struct.mutex, %struct.lan78xx_statstage, %struct.lan78xx_statstage, %struct.lan78xx_statstage, %struct.lan78xx_statstage64 }
%struct.lan78xx_statstage = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lan78xx_statstage64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_domain_data = type { ptr, i32, ptr, ptr, i32, %struct.mutex }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.lan78xx_priv = type { ptr, i32, [16 x i32], [33 x [2 x i32]], [128 x i32], %struct.mutex, %struct.spinlock, %struct.work_struct, %struct.work_struct, i32 }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.sk_buff_list = type { ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.147, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.147 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.vlan_hdr = type { i16, i16 }
%struct.vlan_ethhdr = type { %union.anon.152, i16, i16, i16 }
%union.anon.152 = type { %struct.anon.153 }
%struct.anon.153 = type { [6 x i8], [6 x i8] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.115, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.115 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__param_str_msg_level = internal constant [10 x i8] c"msg_level\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@msg_level = internal global i32 -1, align 4
@__param_msg_level = internal constant %struct.kernel_param { ptr @__param_str_msg_level, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.126 { ptr @msg_level } }, section "__param", align 4
@__UNIQUE_ID_msg_leveltype539 = internal constant [23 x i8] c"parmtype=msg_level:int\00", section ".modinfo", align 1
@__UNIQUE_ID_msg_level540 = internal constant [46 x i8] c"parm=msg_level:Override default message level\00", section ".modinfo", align 1
@products = internal constant [5 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1060, i16 30720, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1060, i16 30800, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1060, i16 30721, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1993, i16 18, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], align 4
@__UNIQUE_ID_author548 = internal constant [47 x i8] c"author=WOOJUNG HUH <woojung.huh@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description549 = internal constant [53 x i8] c"description=LAN78XX USB 3.0 Gigabit Ethernet Devices\00", section ".modinfo", align 1
@__UNIQUE_ID_license550 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@lan78xx_driver = internal global %struct.usb_driver { ptr @.str, ptr @lan78xx_probe, ptr @lan78xx_disconnect, ptr null, ptr @lan78xx_suspend, ptr @lan78xx_resume, ptr @lan78xx_reset_resume, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 6 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"lan78xx\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Error: OOM\0A\00", align 1
@lan78xx_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"&dev->phy_mutex\00", align 1
@lan78xx_probe.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"&dev->dev_mutex\00", align 1
@lan78xx_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @lan78xx_open, ptr @lan78xx_stop, ptr @lan78xx_start_xmit, ptr @lan78xx_features_check, ptr null, ptr null, ptr @lan78xx_set_multicast, ptr @lan78xx_set_mac_addr, ptr @eth_validate_addr, ptr null, ptr @phy_do_ioctl_running, ptr null, ptr null, ptr null, ptr null, ptr @lan78xx_change_mtu, ptr null, ptr @lan78xx_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr @lan78xx_vlan_rx_add_vid, ptr @lan78xx_vlan_rx_kill_vid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lan78xx_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@lan78xx_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @lan78xx_get_drvinfo, ptr @lan78xx_get_regs_len, ptr @lan78xx_get_regs, ptr @lan78xx_get_wol, ptr @lan78xx_set_wol, ptr @lan78xx_get_msglevel, ptr @lan78xx_set_msglevel, ptr @phy_ethtool_nway_reset, ptr @lan78xx_get_link, ptr null, ptr @lan78xx_ethtool_get_eeprom_len, ptr @lan78xx_ethtool_get_eeprom, ptr @lan78xx_ethtool_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lan78xx_get_pause, ptr @lan78xx_set_pause, ptr null, ptr @lan78xx_get_strings, ptr null, ptr @lan78xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr @lan78xx_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr @lan78xx_get_eee, ptr @lan78xx_set_eee, ptr null, ptr null, ptr null, ptr null, ptr @lan78xx_get_link_ksettings, ptr @lan78xx_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@lan78xx_probe.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"&dev->stats.access_lock\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"couldn't register the device\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"USB bus speed not supported\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.9 = private unnamed_addr constant [21 x i8] c"URB pointer mismatch\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"kevent %d may have been dropped\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"failed to tx urb %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"can't clear tx halt, status %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"can't clear rx halt, status %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"link reset failed (%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"Failed to write register index 0x%08x. ret = %d\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"Failed to read register index 0x%08x. ret = %d\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Failed to read stat ret = %d\00", align 1
@init_usb_anchor.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"&anchor->wait\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"intr submit %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"stop stats: rx/tx %lu/%lu, errs %lu/%lu\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"include/linux/if_vlan.h\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"usb-%s-%s\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"EEPROM is busy\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"EEPROM read operation timeout\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.25 = private unnamed_addr constant [33 x i8] c"timeout on OTP_PWR_DN completion\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"Timeout on OTP_STATUS completion\00", align 1
@lan78xx_gstrings = internal unnamed_addr constant [47 x [32 x i8]] [[32 x i8] c"RX FCS Errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX Alignment Errors\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Rx Fragment Errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX Jabber Errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX Undersize Frame Errors\00\00\00\00\00\00\00", [32 x i8] c"RX Oversize Frame Errors\00\00\00\00\00\00\00\00", [32 x i8] c"RX Dropped Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX Unicast Byte Count\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX Broadcast Byte Count\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX Multicast Byte Count\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX Unicast Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX Broadcast Frames\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX Multicast Frames\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX Pause Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX 64 Byte Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX 65 - 127 Byte Frames\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX 128 - 255 Byte Frames\00\00\00\00\00\00\00\00", [32 x i8] c"RX 256 - 511 Bytes Frames\00\00\00\00\00\00\00", [32 x i8] c"RX 512 - 1023 Byte Frames\00\00\00\00\00\00\00", [32 x i8] c"RX 1024 - 1518 Byte Frames\00\00\00\00\00\00", [32 x i8] c"RX Greater 1518 Byte Frames\00\00\00\00\00", [32 x i8] c"EEE RX LPI Transitions\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"EEE RX LPI Time\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX FCS Errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Excess Deferral Errors\00\00\00\00\00\00\00", [32 x i8] c"TX Carrier Errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Bad Byte Count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Single Collisions\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Multiple Collisions\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Excessive Collision\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Late Collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Unicast Byte Count\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Broadcast Byte Count\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Multicast Byte Count\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Unicast Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Broadcast Frames\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Multicast Frames\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Pause Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX 64 Byte Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX 65 - 127 Byte Frames\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX 128 - 255 Byte Frames\00\00\00\00\00\00\00\00", [32 x i8] c"TX 256 - 511 Bytes Frames\00\00\00\00\00\00\00", [32 x i8] c"TX 512 - 1023 Byte Frames\00\00\00\00\00\00\00", [32 x i8] c"TX 1024 - 1518 Byte Frames\00\00\00\00\00\00", [32 x i8] c"TX Greater 1518 Byte Frames\00\00\00\00\00", [32 x i8] c"EEE TX LPI Transitions\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"EEE TX LPI Time\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"Unable to allocate lan78xx_priv\00", align 1
@lan78xx_bind.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"&pdata->dataport_mutex\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"lan78xx_setup_irq_domain() failed : %d\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"Registers INIT FAILED....\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"MDIO INIT FAILED.....\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"Bind routine FAILED\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"%s timed out\00", align 1
@__func__.lan78xx_dataport_wait_not_busy = private unnamed_addr constant [31 x i8] c"lan78xx_dataport_wait_not_busy\00", align 1
@lan78xx_setup_irq_domain.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"&dev->domain_data.irq_lock\00", align 1
@lan78xx_irqchip = internal global %struct.irq_chip { ptr null, ptr @.str.35, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lan78xx_irq_mask, ptr null, ptr @lan78xx_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lan78xx_irq_bus_lock, ptr @lan78xx_irq_bus_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@chip_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @irq_map, ptr @irq_unmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.35 = private unnamed_addr constant [13 x i8] c"lan78xx-irqs\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c"timeout on completion of LiteReset\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"timeout waiting for PHY Reset\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"No External EEPROM. Setting MAC Speed\0A\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"timeout on OTP_PWR_DN\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"timeout on OTP_STATUS\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"can't allocate MDIO bus\0A\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"lan78xx-mdiobus\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"usb-%03d:%03d\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"can't register MDIO bus\0A\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"include/linux/usb.h\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.47 = private unnamed_addr constant [30 x i8] c"not submitting new status URB\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"intr resubmit --> %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [25 x i8] c"unexpected urb length %d\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"unexpected interrupt: 0x%08x\0A\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"lan7801: PHY Init Failed\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"no PHY found\0A\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"Unknown CHIP ID found\0A\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"can't attach PHY to %s\0A\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"microchip,led-modes\00", align 1
@__const.lan7801_phy_init.fphy_status = private unnamed_addr constant %struct.fixed_phy_status { i32 1, i32 1000, i32 1, i32 0, i32 0 }, align 4
@.str.56 = private unnamed_addr constant [24 x i8] c"No PHY/fixed_PHY found\0A\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"no PHY driver found\0A\00", align 1
@.str.58 = private unnamed_addr constant [45 x i8] c"Failed to register fixup for PHY_KSZ9031RNX\0A\00", align 1
@.str.59 = private unnamed_addr constant [42 x i8] c"Failed to register fixup for PHY_LAN8835\0A\00", align 1
@__const.lan78xx_set_suspend.ipv4_multicast = private unnamed_addr constant [3 x i8] c"\01\00^", align 1
@__const.lan78xx_set_suspend.ipv6_multicast = private unnamed_addr constant [3 x i8] c"33\00", align 1
@.str.60 = private unnamed_addr constant [26 x i8] c"Failed to submit intr URB\00", align 1
@str = private unnamed_addr constant [33 x i8] c"lan78xx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author548, ptr @__UNIQUE_ID_description549, ptr @__UNIQUE_ID_license550, ptr @__UNIQUE_ID_msg_level540, ptr @__UNIQUE_ID_msg_leveltype539, ptr @__param_msg_level], section "llvm.metadata"

@__mod_usb__products_device_table = dso_local alias [5 x %struct.usb_device_id], ptr @products

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @usb_register_driver(ptr noundef nonnull @lan78xx_driver, ptr noundef nonnull @__this_module, ptr noundef nonnull @.str) #21
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @usb_deregister(ptr noundef nonnull @lan78xx_driver) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan78xx_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -128
  %6 = tail call ptr @usb_get_dev(ptr noundef %5) #21
  %7 = tail call ptr @alloc_etherdev_mqs(i32 noundef 1608, i32 noundef 1, i32 noundef 1) #21
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  br i1 %8, label %10, label %11

10:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1) #22
  br label %270

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 111, i32 1
  store ptr %9, ptr %12, align 4
  %13 = getelementptr i8, ptr %7, i32 1408
  %14 = getelementptr i8, ptr %7, i32 1412
  store ptr %6, ptr %14, align 4
  %15 = getelementptr i8, ptr %7, i32 1416
  store ptr %0, ptr %15, align 8
  store ptr %7, ptr %13, align 8
  %16 = load i32, ptr @msg_level, align 4
  %17 = icmp ugt i32 %16, 31
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = shl nsw i32 -1, %16
  %22 = xor i32 %21, -1
  br label %23

23:                                               ; preds = %20, %18, %11
  %24 = phi i32 [ %22, %20 ], [ 7, %11 ], [ 0, %18 ]
  %25 = getelementptr i8, ptr %7, i32 1820
  store i32 %24, ptr %25, align 4
  %26 = getelementptr i8, ptr %7, i32 1460
  %27 = getelementptr i8, ptr %7, i32 1472
  store i32 0, ptr %27, align 4
  store ptr %26, ptr %26, align 4
  %28 = getelementptr i8, ptr %7, i32 1464
  store ptr %26, ptr %28, align 4
  %29 = getelementptr i8, ptr %7, i32 1468
  store i32 0, ptr %29, align 4
  %30 = getelementptr i8, ptr %7, i32 1524
  %31 = getelementptr i8, ptr %7, i32 1536
  store i32 0, ptr %31, align 4
  store ptr %30, ptr %30, align 4
  %32 = getelementptr i8, ptr %7, i32 1528
  store ptr %30, ptr %32, align 4
  %33 = getelementptr i8, ptr %7, i32 1532
  store i32 0, ptr %33, align 4
  %34 = getelementptr i8, ptr %7, i32 1476
  %35 = getelementptr i8, ptr %7, i32 1488
  store i32 0, ptr %35, align 4
  store ptr %34, ptr %34, align 4
  %36 = getelementptr i8, ptr %7, i32 1480
  store ptr %34, ptr %36, align 4
  %37 = getelementptr i8, ptr %7, i32 1484
  store i32 0, ptr %37, align 4
  %38 = getelementptr i8, ptr %7, i32 1540
  %39 = getelementptr i8, ptr %7, i32 1552
  store i32 0, ptr %39, align 4
  store ptr %38, ptr %38, align 4
  %40 = getelementptr i8, ptr %7, i32 1544
  store ptr %38, ptr %40, align 4
  %41 = getelementptr i8, ptr %7, i32 1548
  store i32 0, ptr %41, align 4
  %42 = getelementptr i8, ptr %7, i32 1492
  %43 = getelementptr i8, ptr %7, i32 1504
  store i32 0, ptr %43, align 4
  store ptr %42, ptr %42, align 4
  %44 = getelementptr i8, ptr %7, i32 1496
  store ptr %42, ptr %44, align 4
  %45 = getelementptr i8, ptr %7, i32 1500
  store i32 0, ptr %45, align 4
  %46 = getelementptr i8, ptr %7, i32 1880
  tail call void @__mutex_init(ptr noundef %46, ptr noundef nonnull @.str.2, ptr noundef nonnull @lan78xx_probe.__key) #21
  %47 = getelementptr i8, ptr %7, i32 1860
  tail call void @__mutex_init(ptr noundef %47, ptr noundef nonnull @.str.4, ptr noundef nonnull @lan78xx_probe.__key.3) #21
  %48 = load ptr, ptr %14, align 4
  %49 = getelementptr inbounds %struct.usb_device, ptr %48, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  switch i32 %50, label %53 [
    i32 5, label %55
    i32 3, label %51
    i32 2, label %52
  ]

51:                                               ; preds = %23
  br label %55

52:                                               ; preds = %23
  br label %55

53:                                               ; preds = %23
  %54 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %54, ptr noundef nonnull @.str.8) #22
  br label %268

55:                                               ; preds = %52, %51, %23
  %56 = phi i32 [ 10240, %52 ], [ 16384, %51 ], [ 32768, %23 ]
  %57 = phi i32 [ 10, %52 ], [ 10, %51 ], [ 30, %23 ]
  %58 = phi i32 [ 160, %52 ], [ 32, %51 ], [ 32, %23 ]
  %59 = getelementptr i8, ptr %7, i32 1440
  store i32 %56, ptr %59, align 8
  %60 = getelementptr i8, ptr %7, i32 1436
  store i32 %56, ptr %60, align 4
  %61 = getelementptr i8, ptr %7, i32 1432
  store i32 %57, ptr %61, align 8
  %62 = getelementptr i8, ptr %7, i32 1428
  store i32 10, ptr %62, align 4
  %63 = getelementptr i8, ptr %7, i32 1912
  store i32 8192, ptr %63, align 8
  %64 = getelementptr i8, ptr %7, i32 1916
  store i32 %58, ptr %64, align 4
  %65 = getelementptr i8, ptr %7, i32 1508
  %66 = getelementptr i8, ptr %7, i32 1436
  %67 = tail call fastcc i32 @lan78xx_alloc_buf_pool(ptr noundef %65, i32 noundef 10, i32 noundef %56, ptr noundef %13) #21
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %268, label %69

69:                                               ; preds = %55
  %70 = getelementptr i8, ptr %7, i32 1444
  %71 = getelementptr i8, ptr %7, i32 1432
  %72 = load i32, ptr %71, align 8
  %73 = getelementptr i8, ptr %7, i32 1440
  %74 = load i32, ptr %73, align 8
  %75 = tail call fastcc i32 @lan78xx_alloc_buf_pool(ptr noundef %70, i32 noundef %72, i32 noundef %74, ptr noundef %13) #21
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %255, label %77

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 31
  store i32 9000, ptr %78, align 4
  %79 = load i32, ptr %66, align 4
  %80 = add i32 %79, -22
  %81 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 115
  store volatile i32 %80, ptr %81, align 32
  %82 = getelementptr i8, ptr %7, i32 1560
  tail call void @netif_napi_add(ptr noundef nonnull %7, ptr noundef %82, ptr noundef nonnull @lan78xx_poll, i32 noundef 64) #21
  %83 = getelementptr i8, ptr %7, i32 1776
  store i32 -32, ptr %83, align 8
  %84 = getelementptr i8, ptr %7, i32 1780
  store volatile ptr %84, ptr %84, align 4
  %85 = getelementptr i8, ptr %7, i32 1784
  store ptr %84, ptr %85, align 4
  %86 = getelementptr i8, ptr %7, i32 1788
  store ptr @lan78xx_delayedwork, ptr %86, align 4
  %87 = getelementptr i8, ptr %7, i32 1792
  tail call void @init_timer_key(ptr noundef %87, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #21
  %88 = getelementptr i8, ptr %7, i32 1828
  %89 = getelementptr i8, ptr %7, i32 1836
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %89, i8 0, i32 24, i1 false) #21
  store volatile ptr %88, ptr %88, align 4
  %90 = getelementptr i8, ptr %7, i32 1832
  store ptr %88, ptr %90, align 4
  tail call void @__init_waitqueue_head(ptr noundef %89, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_usb_anchor.__key) #21
  %91 = getelementptr i8, ptr %7, i32 1848
  store i32 0, ptr %91, align 4
  %92 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 16
  store ptr @lan78xx_netdev_ops, ptr %92, align 8
  %93 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 96
  store i32 500, ptr %93, align 8
  %94 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 42
  store ptr @lan78xx_ethtool_ops, ptr %94, align 8
  %95 = getelementptr i8, ptr %7, i32 2008
  store i32 1, ptr %95, align 8
  %96 = getelementptr i8, ptr %7, i32 1936
  tail call void @init_timer_key(ptr noundef %96, ptr noundef nonnull @lan78xx_stat_monitor, i32 noundef 0, ptr noundef null, ptr noundef null) #21
  %97 = getelementptr i8, ptr %7, i32 2016
  tail call void @__mutex_init(ptr noundef %97, ptr noundef nonnull @.str.6, ptr noundef nonnull @lan78xx_probe.__key.5) #21
  %98 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %99, i32 0, i32 4
  %101 = load i8, ptr %100, align 4
  %102 = icmp ult i8 %101, 3
  br i1 %102, label %242, label %103

103:                                              ; preds = %77
  %104 = load i32, ptr %6, align 8
  %105 = shl i32 %104, 8
  %106 = or i32 %105, -1073708928
  %107 = getelementptr i8, ptr %7, i32 1900
  store i32 %106, ptr %107, align 4
  %108 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 21
  %109 = lshr i32 %106, 15
  %110 = and i32 %109, 15
  %111 = getelementptr ptr, ptr %108, i32 %110
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %242, label %114

114:                                              ; preds = %103
  %115 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %112, i32 0, i32 3
  %116 = load i8, ptr %115, align 1
  %117 = and i8 %116, 3
  %118 = icmp eq i8 %117, 2
  br i1 %118, label %119, label %242

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %112, i32 0, i32 2
  %121 = load i8, ptr %120, align 1
  %122 = icmp sgt i8 %121, -1
  br i1 %122, label %242, label %123

123:                                              ; preds = %119
  %124 = load i32, ptr %6, align 8
  %125 = shl i32 %124, 8
  %126 = or i32 %125, -1073676288
  %127 = getelementptr i8, ptr %7, i32 1904
  store i32 %126, ptr %127, align 8
  %128 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 22
  %129 = lshr i32 %126, 15
  %130 = and i32 %129, 15
  %131 = getelementptr ptr, ptr %128, i32 %130
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %242, label %134

134:                                              ; preds = %123
  %135 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %132, i32 0, i32 3
  %136 = load i8, ptr %135, align 1
  %137 = and i8 %136, 3
  %138 = icmp eq i8 %137, 2
  br i1 %138, label %139, label %242

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %132, i32 0, i32 2
  %141 = load i8, ptr %140, align 1
  %142 = icmp slt i8 %141, 0
  br i1 %142, label %242, label %143

143:                                              ; preds = %139
  %144 = load ptr, ptr %98, align 4
  %145 = getelementptr inbounds %struct.usb_host_interface, ptr %144, i32 0, i32 3
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr %struct.usb_host_endpoint, ptr %146, i32 2, i32 0, i32 3
  %148 = load i8, ptr %147, align 1
  %149 = and i8 %148, 3
  %150 = icmp eq i8 %149, 3
  br i1 %150, label %151, label %242

151:                                              ; preds = %143
  %152 = getelementptr %struct.usb_host_endpoint, ptr %146, i32 2, i32 0, i32 2
  %153 = load i8, ptr %152, align 1
  %154 = icmp sgt i8 %153, -1
  br i1 %154, label %242, label %155

155:                                              ; preds = %151
  %156 = load ptr, ptr %14, align 4
  %157 = and i8 %153, 15
  %158 = zext i8 %157 to i32
  %159 = load i32, ptr %156, align 8
  %160 = shl i32 %159, 8
  %161 = shl nuw nsw i32 %158, 15
  %162 = or i32 %160, %161
  %163 = or i32 %162, 1073741952
  %164 = getelementptr i8, ptr %7, i32 1908
  store i32 %163, ptr %164, align 4
  %165 = tail call fastcc i32 @lan78xx_bind(ptr noundef %13)
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %242, label %167

167:                                              ; preds = %155
  %168 = getelementptr %struct.usb_host_endpoint, ptr %146, i32 2, i32 0, i32 5
  %169 = load i8, ptr %168, align 2
  %170 = zext i8 %169 to i32
  %171 = load ptr, ptr %14, align 4
  %172 = load i32, ptr %164, align 4
  %173 = tail call fastcc zeroext i16 @usb_maxpacket(ptr noundef %171, i32 noundef %172, i32 noundef 0)
  %174 = zext i16 %173 to i32
  %175 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %174, i32 noundef 3264) #23
  %176 = icmp eq ptr %175, null
  br i1 %176, label %240, label %177

177:                                              ; preds = %167
  %178 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #21
  %179 = getelementptr i8, ptr %7, i32 1824
  store ptr %178, ptr %179, align 8
  %180 = icmp eq ptr %178, null
  br i1 %180, label %238, label %181

181:                                              ; preds = %177
  %182 = load ptr, ptr %14, align 4
  %183 = load i32, ptr %164, align 4
  %184 = getelementptr inbounds %struct.urb, ptr %178, i32 0, i32 8
  store ptr %182, ptr %184, align 4
  %185 = getelementptr inbounds %struct.urb, ptr %178, i32 0, i32 10
  store i32 %183, ptr %185, align 4
  %186 = getelementptr inbounds %struct.urb, ptr %178, i32 0, i32 14
  store ptr %175, ptr %186, align 4
  %187 = getelementptr inbounds %struct.urb, ptr %178, i32 0, i32 19
  store i32 %174, ptr %187, align 4
  %188 = getelementptr inbounds %struct.urb, ptr %178, i32 0, i32 28
  store ptr @intr_complete, ptr %188, align 4
  %189 = getelementptr inbounds %struct.urb, ptr %178, i32 0, i32 27
  store ptr %13, ptr %189, align 4
  %190 = getelementptr inbounds %struct.usb_device, ptr %182, i32 0, i32 4
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %191, 3
  %193 = icmp ugt i32 %191, 4
  %194 = or i1 %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %181
  %196 = tail call i32 @llvm.smax.i32(i32 %170, i32 1) #21
  %197 = tail call i32 @llvm.umin.i32(i32 %196, i32 16) #21
  %198 = add nsw i32 %197, -1
  %199 = shl nuw nsw i32 1, %198
  br label %200

200:                                              ; preds = %195, %181
  %201 = phi i32 [ %199, %195 ], [ %170, %181 ]
  %202 = getelementptr inbounds %struct.urb, ptr %178, i32 0, i32 25
  store i32 %201, ptr %202, align 4
  %203 = getelementptr inbounds %struct.urb, ptr %178, i32 0, i32 23
  store i32 -1, ptr %203, align 4
  %204 = load ptr, ptr %179, align 8
  %205 = getelementptr inbounds %struct.urb, ptr %204, i32 0, i32 13
  %206 = load i32, ptr %205, align 4
  %207 = or i32 %206, 256
  store i32 %207, ptr %205, align 4
  %208 = load ptr, ptr %14, align 4
  %209 = load i32, ptr %127, align 8
  %210 = tail call fastcc zeroext i16 @usb_maxpacket(ptr noundef %208, i32 noundef %209, i32 noundef 1)
  %211 = zext i16 %210 to i32
  %212 = getelementptr i8, ptr %7, i32 1932
  store i32 %211, ptr %212, align 4
  %213 = icmp eq i16 %210, 0
  br i1 %213, label %238, label %214

214:                                              ; preds = %200
  %215 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 6
  %216 = load i8, ptr %215, align 8
  %217 = or i8 %216, 8
  store i8 %217, ptr %215, align 8
  %218 = tail call fastcc i32 @lan78xx_phy_init(ptr noundef %13)
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %235, label %220

220:                                              ; preds = %214
  %221 = tail call i32 @register_netdev(ptr noundef nonnull %7) #21
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %228, label %223

223:                                              ; preds = %220
  %224 = load i32, ptr %25, align 4
  %225 = and i32 %224, 2
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %232, label %227

227:                                              ; preds = %223
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %7, ptr noundef nonnull @.str.7) #22
  br label %232

228:                                              ; preds = %220
  %229 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  store ptr %13, ptr %229, align 8
  %230 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  %231 = tail call i32 @device_set_wakeup_enable(ptr noundef %230, i1 noundef zeroext true) #21
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %230, i32 noundef 10000) #21
  br label %272

232:                                              ; preds = %227, %223
  %233 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 120
  %234 = load ptr, ptr %233, align 8
  tail call void @phy_disconnect(ptr noundef %234) #21
  br label %235

235:                                              ; preds = %232, %214
  %236 = phi i32 [ %218, %214 ], [ %221, %232 ]
  %237 = load ptr, ptr %179, align 8
  tail call void @usb_free_urb(ptr noundef %237) #21
  br label %238

238:                                              ; preds = %235, %200, %177
  %239 = phi i32 [ %236, %235 ], [ -12, %177 ], [ -19, %200 ]
  tail call void @kfree(ptr noundef nonnull %175) #21
  br label %240

240:                                              ; preds = %238, %167
  %241 = phi i32 [ %239, %238 ], [ -12, %167 ]
  tail call fastcc void @lan78xx_unbind(ptr noundef %13)
  br label %242

242:                                              ; preds = %240, %155, %151, %143, %139, %134, %123, %119, %114, %103, %77
  %243 = phi i32 [ %165, %155 ], [ %241, %240 ], [ -19, %77 ], [ -19, %119 ], [ -19, %103 ], [ -19, %139 ], [ -19, %123 ], [ -19, %151 ], [ -19, %114 ], [ -19, %134 ], [ -19, %143 ]
  tail call void @__netif_napi_del(ptr noundef %82) #21
  tail call void @synchronize_net() #21
  %244 = load ptr, ptr %70, align 4
  %245 = icmp eq ptr %244, %70
  br i1 %245, label %255, label %246

246:                                              ; preds = %252, %242
  %247 = tail call ptr @skb_dequeue(ptr noundef %70) #21
  %248 = icmp eq ptr %247, null
  br i1 %248, label %252, label %249

249:                                              ; preds = %246
  %250 = getelementptr inbounds %struct.sk_buff, ptr %247, i32 0, i32 3
  %251 = load ptr, ptr %250, align 4
  tail call void @usb_free_urb(ptr noundef %251) #21
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %247, i32 noundef 1) #21
  br label %252

252:                                              ; preds = %249, %246
  %253 = load ptr, ptr %70, align 4
  %254 = icmp eq ptr %253, %70
  br i1 %254, label %255, label %246

255:                                              ; preds = %252, %242, %69
  %256 = phi i32 [ %75, %69 ], [ %243, %242 ], [ %243, %252 ]
  %257 = load ptr, ptr %65, align 4
  %258 = icmp eq ptr %257, %65
  br i1 %258, label %268, label %259

259:                                              ; preds = %265, %255
  %260 = tail call ptr @skb_dequeue(ptr noundef %65) #21
  %261 = icmp eq ptr %260, null
  br i1 %261, label %265, label %262

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.sk_buff, ptr %260, i32 0, i32 3
  %264 = load ptr, ptr %263, align 4
  tail call void @usb_free_urb(ptr noundef %264) #21
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %260, i32 noundef 1) #21
  br label %265

265:                                              ; preds = %262, %259
  %266 = load ptr, ptr %65, align 4
  %267 = icmp eq ptr %266, %65
  br i1 %267, label %268, label %259

268:                                              ; preds = %265, %255, %55, %53
  %269 = phi i32 [ -5, %53 ], [ %67, %55 ], [ %256, %255 ], [ %256, %265 ]
  tail call void @free_netdev(ptr noundef nonnull %7) #21
  br label %270

270:                                              ; preds = %268, %10
  %271 = phi i32 [ %269, %268 ], [ -12, %10 ]
  tail call void @usb_put_dev(ptr noundef %6) #21
  br label %272

272:                                              ; preds = %270, %228
  %273 = phi i32 [ %271, %270 ], [ 0, %228 ]
  ret i32 %273
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lan78xx_disconnect(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  store ptr null, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %62, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.lan78xx_net, ptr %3, i32 0, i32 28
  tail call void @_set_bit(i32 noundef 10, ptr noundef %6) #21
  %7 = getelementptr inbounds %struct.lan78xx_net, ptr %3, i32 0, i32 16
  tail call void @__netif_napi_del(ptr noundef %7) #21
  tail call void @synchronize_net() #21
  %8 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -128
  %11 = load ptr, ptr %3, align 8
  tail call void @unregister_netdev(ptr noundef %11) #21
  %12 = getelementptr inbounds %struct.lan78xx_net, ptr %3, i32 0, i32 17
  %13 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %12) #21
  %14 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 120
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @phy_unregister_fixup_for_uid(i32 noundef 2233888, i32 noundef -16) #21
  %17 = tail call i32 @phy_unregister_fixup_for_uid(i32 noundef 508208, i32 noundef -16) #21
  %18 = load ptr, ptr %14, align 8
  tail call void @phy_disconnect(ptr noundef %18) #21
  %19 = getelementptr inbounds %struct.phy_device, ptr %15, i32 0, i32 4
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, 4
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  tail call void @fixed_phy_unregister(ptr noundef %15) #21
  br label %24

24:                                               ; preds = %23, %5
  %25 = getelementptr inbounds %struct.lan78xx_net, ptr %3, i32 0, i32 20
  tail call void @usb_scuttle_anchored_urbs(ptr noundef %25) #21
  %26 = getelementptr inbounds %struct.lan78xx_net, ptr %3, i32 0, i32 32, i32 0, i32 1
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.lan78xx_net, ptr %3, i32 0, i32 32
  %31 = tail call i32 @del_timer_sync(ptr noundef %30) #21
  br label %32

32:                                               ; preds = %29, %24
  tail call fastcc void @lan78xx_unbind(ptr noundef nonnull %3)
  %33 = getelementptr inbounds %struct.lan78xx_net, ptr %3, i32 0, i32 13
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %45, label %36

36:                                               ; preds = %42, %32
  %37 = tail call ptr @skb_dequeue(ptr noundef %33) #21
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  tail call void @usb_free_urb(ptr noundef %41) #21
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %37, i32 noundef 1) #21
  br label %42

42:                                               ; preds = %39, %36
  %43 = load ptr, ptr %33, align 4
  %44 = icmp eq ptr %43, %33
  br i1 %44, label %45, label %36

45:                                               ; preds = %42, %32
  %46 = getelementptr inbounds %struct.lan78xx_net, ptr %3, i32 0, i32 9
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %46
  br i1 %48, label %58, label %49

49:                                               ; preds = %55, %45
  %50 = tail call ptr @skb_dequeue(ptr noundef %46) #21
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  tail call void @usb_free_urb(ptr noundef %54) #21
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %50, i32 noundef 1) #21
  br label %55

55:                                               ; preds = %52, %49
  %56 = load ptr, ptr %46, align 4
  %57 = icmp eq ptr %56, %46
  br i1 %57, label %58, label %49

58:                                               ; preds = %55, %45
  %59 = getelementptr inbounds %struct.lan78xx_net, ptr %3, i32 0, i32 19
  %60 = load ptr, ptr %59, align 8
  tail call void @usb_kill_urb(ptr noundef %60) #21
  %61 = load ptr, ptr %59, align 8
  tail call void @usb_free_urb(ptr noundef %61) #21
  tail call void @free_netdev(ptr noundef %11) #21
  tail call void @usb_put_dev(ptr noundef %10) #21
  br label %62

62:                                               ; preds = %58, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan78xx_suspend(ptr nocapture noundef readonly %0, [1 x i32] %1) #2 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = extractvalue [1 x i32] %1, 0
  %10 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.lan78xx_net, ptr %11, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %12) #21
  %13 = getelementptr inbounds %struct.lan78xx_net, ptr %11, i32 0, i32 28
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %298, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.lan78xx_net, ptr %11, i32 0, i32 14, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %18) #21
  %19 = getelementptr inbounds %struct.lan78xx_net, ptr %11, i32 0, i32 14, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.lan78xx_net, ptr %11, i32 0, i32 15, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  %26 = and i32 %9, 1024
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %35, label %32

29:                                               ; preds = %17
  %30 = and i32 %9, 1024
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29, %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !8
  %33 = load i16, ptr %18, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #21, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  br label %325

35:                                               ; preds = %29, %22
  tail call void @_set_bit(i32 noundef 7, ptr noundef %13) #21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !8
  %36 = load i16, ptr %18, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #21, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  %38 = tail call fastcc i32 @lan78xx_stop_hw(ptr noundef %11, i32 noundef 260, i32 noundef 1, i32 noundef 2) #21
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %325, label %40

40:                                               ; preds = %35
  %41 = tail call fastcc i32 @lan78xx_stop_hw(ptr noundef %11, i32 noundef 192, i32 noundef -2147483648, i32 noundef 1048576) #21
  %42 = tail call i32 @llvm.smin.i32(i32 %41, i32 0) #21
  %43 = icmp slt i32 %41, 0
  br i1 %43, label %325, label %44

44:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  store i32 0, ptr %7, align 4, !annotation !13
  %45 = call fastcc i32 @lan78xx_read_reg(ptr noundef %11, i32 noundef 192, ptr noundef nonnull %7) #21
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  br label %325

48:                                               ; preds = %44
  %49 = load i32, ptr %7, align 4
  %50 = or i32 %49, 1073741824
  %51 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 192, i32 noundef %50) #21
  %52 = tail call i32 @llvm.smin.i32(i32 %51, i32 0) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  %53 = icmp slt i32 %51, 0
  br i1 %53, label %325, label %54

54:                                               ; preds = %48
  %55 = tail call fastcc i32 @lan78xx_stop_hw(ptr noundef %11, i32 noundef 196, i32 noundef -2147483648, i32 noundef 1048576) #21
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %325, label %57

57:                                               ; preds = %54
  %58 = tail call fastcc i32 @lan78xx_stop_hw(ptr noundef %11, i32 noundef 264, i32 noundef 1, i32 noundef 2) #21
  %59 = tail call i32 @llvm.smin.i32(i32 %58, i32 0) #21
  %60 = icmp slt i32 %58, 0
  br i1 %60, label %325, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %11, align 8
  tail call void @netif_device_detach(ptr noundef %62) #21
  tail call fastcc void @lan78xx_terminate_urbs(ptr noundef %11)
  %63 = getelementptr inbounds %struct.lan78xx_net, ptr %11, i32 0, i32 19
  %64 = load ptr, ptr %63, align 8
  tail call void @usb_kill_urb(ptr noundef %64) #21
  %65 = load ptr, ptr %11, align 8
  tail call void @netif_device_attach(ptr noundef %65) #21
  %66 = getelementptr inbounds %struct.lan78xx_net, ptr %11, i32 0, i32 32
  %67 = tail call i32 @del_timer(ptr noundef %66) #21
  %68 = and i32 %9, 1024
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %125, label %70

70:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  store i32 0, ptr %6, align 4, !annotation !13
  %71 = tail call fastcc i32 @lan78xx_stop_hw(ptr noundef %11, i32 noundef 196, i32 noundef -2147483648, i32 noundef 1048576) #21
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %120, label %73

73:                                               ; preds = %70
  %74 = tail call fastcc i32 @lan78xx_stop_hw(ptr noundef %11, i32 noundef 264, i32 noundef 1, i32 noundef 2) #21
  %75 = tail call i32 @llvm.smin.i32(i32 %74, i32 0) #21
  %76 = icmp slt i32 %74, 0
  br i1 %76, label %122, label %77

77:                                               ; preds = %73
  %78 = tail call fastcc i32 @lan78xx_stop_hw(ptr noundef %11, i32 noundef 260, i32 noundef 1, i32 noundef 2) #21
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %120, label %80

80:                                               ; preds = %77
  %81 = tail call fastcc i32 @lan78xx_stop_hw(ptr noundef %11, i32 noundef 192, i32 noundef -2147483648, i32 noundef 1048576) #21
  %82 = tail call i32 @llvm.smin.i32(i32 %81, i32 0) #21
  %83 = icmp slt i32 %81, 0
  br i1 %83, label %122, label %84

84:                                               ; preds = %80
  %85 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 320, i32 noundef 0) #21
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %120, label %87

87:                                               ; preds = %84
  %88 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 1536, i32 noundef 0) #21
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %120, label %90

90:                                               ; preds = %87
  %91 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 324, i32 noundef -917729) #21
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %120, label %93

93:                                               ; preds = %90
  %94 = call fastcc i32 @lan78xx_read_reg(ptr noundef %11, i32 noundef 320, ptr noundef nonnull %6) #21
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %120, label %96

96:                                               ; preds = %93
  %97 = load i32, ptr %6, align 4
  %98 = or i32 %97, 16640
  store i32 %98, ptr %6, align 4
  %99 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 320, i32 noundef %98) #21
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %120, label %101

101:                                              ; preds = %96
  %102 = call fastcc i32 @lan78xx_read_reg(ptr noundef %11, i32 noundef 20, ptr noundef nonnull %6) #21
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %120, label %104

104:                                              ; preds = %101
  %105 = load i32, ptr %6, align 4
  %106 = and i32 %105, -877
  %107 = or i32 %106, 620
  store i32 %107, ptr %6, align 4
  %108 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 20, i32 noundef %107) #21
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %104
  %111 = call fastcc i32 @lan78xx_read_reg(ptr noundef %11, i32 noundef 20, ptr noundef nonnull %6) #21
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %110
  %114 = load i32, ptr %6, align 4
  %115 = or i32 %114, 3
  %116 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 20, i32 noundef %115) #21
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %113
  %119 = tail call fastcc i32 @lan78xx_start_rx_path(ptr noundef %11) #21
  br label %122

120:                                              ; preds = %113, %110, %104, %101, %96, %93, %90, %87, %84, %77, %70
  %121 = phi i32 [ %78, %77 ], [ %71, %70 ], [ %116, %113 ], [ %111, %110 ], [ %108, %104 ], [ %102, %101 ], [ %99, %96 ], [ %94, %93 ], [ %91, %90 ], [ %88, %87 ], [ %85, %84 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  br label %325

122:                                              ; preds = %118, %80, %73
  %123 = phi i32 [ %119, %118 ], [ %75, %73 ], [ %82, %80 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %325, label %324

125:                                              ; preds = %61
  %126 = getelementptr inbounds %struct.lan78xx_net, ptr %11, i32 0, i32 33
  %127 = load i32, ptr %126, align 4
  %128 = inttoptr i32 %127 to ptr
  %129 = load ptr, ptr %11, align 8
  tail call void @netif_carrier_off(ptr noundef %129) #21
  %130 = getelementptr inbounds %struct.lan78xx_priv, ptr %128, i32 0, i32 9
  %131 = load i32, ptr %130, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #21
  store i16 1544, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store i32 0, ptr %5, align 4, !annotation !13
  %132 = tail call fastcc i32 @lan78xx_stop_hw(ptr noundef %11, i32 noundef 196, i32 noundef -2147483648, i32 noundef 1048576) #21
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %293, label %134

134:                                              ; preds = %125
  %135 = tail call fastcc i32 @lan78xx_stop_hw(ptr noundef %11, i32 noundef 264, i32 noundef 1, i32 noundef 2) #21
  %136 = tail call i32 @llvm.smin.i32(i32 %135, i32 0) #21
  %137 = icmp slt i32 %135, 0
  br i1 %137, label %295, label %138

138:                                              ; preds = %134
  %139 = tail call fastcc i32 @lan78xx_stop_hw(ptr noundef %11, i32 noundef 260, i32 noundef 1, i32 noundef 2) #21
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %293, label %141

141:                                              ; preds = %138
  %142 = tail call fastcc i32 @lan78xx_stop_hw(ptr noundef %11, i32 noundef 192, i32 noundef -2147483648, i32 noundef 1048576) #21
  %143 = tail call i32 @llvm.smin.i32(i32 %142, i32 0) #21
  %144 = icmp slt i32 %142, 0
  br i1 %144, label %295, label %145

145:                                              ; preds = %141
  %146 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 320, i32 noundef 0) #21
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %293, label %148

148:                                              ; preds = %145
  %149 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 1536, i32 noundef 0) #21
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %293, label %151

151:                                              ; preds = %148
  %152 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 324, i32 noundef -917729) #21
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %293, label %154

154:                                              ; preds = %151
  store i32 0, ptr %4, align 4
  %155 = call fastcc i32 @lan78xx_read_reg(ptr noundef %11, i32 noundef 20, ptr noundef nonnull %4) #21
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %293, label %157

157:                                              ; preds = %154
  %158 = load i32, ptr %4, align 4
  %159 = and i32 %158, -769
  %160 = or i32 %159, 512
  br label %164

161:                                              ; preds = %164
  %162 = add nuw nsw i32 %165, 1
  %163 = icmp eq i32 %162, 32
  br i1 %163, label %170, label %164

164:                                              ; preds = %161, %157
  %165 = phi i32 [ 0, %157 ], [ %162, %161 ]
  %166 = shl i32 %165, 2
  %167 = add nuw nsw i32 %166, 336
  %168 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef %167, i32 noundef 0) #21
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %293, label %161

170:                                              ; preds = %161
  %171 = and i32 %131, 1
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %170
  %174 = and i32 %160, -365
  %175 = or i32 %174, 12
  store i32 %175, ptr %4, align 4
  br label %176

176:                                              ; preds = %173, %170
  %177 = phi i32 [ %175, %173 ], [ %160, %170 ]
  %178 = and i32 %131, 32
  %179 = icmp eq i32 %178, 0
  %180 = or i32 %177, 104
  %181 = select i1 %179, i32 %177, i32 %180
  %182 = lshr exact i32 %178, 4
  %183 = and i32 %131, 8
  %184 = icmp eq i32 %183, 0
  %185 = and i32 %181, -105
  %186 = or i32 %185, 8
  %187 = select i1 %184, i32 %181, i32 %186
  %188 = lshr exact i32 %183, 3
  %189 = or i32 %188, %182
  %190 = and i32 %131, 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %229, label %192

192:                                              ; preds = %176
  %193 = or i32 %189, 4
  %194 = tail call fastcc zeroext i16 @lan78xx_wakeframe_crc16(ptr noundef nonnull @__const.lan78xx_set_suspend.ipv4_multicast, i32 noundef 3) #21
  %195 = zext i16 %194 to i32
  %196 = or i32 %195, -2113929216
  %197 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 336, i32 noundef %196) #21
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %293, label %199

199:                                              ; preds = %192
  %200 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 512, i32 noundef 7) #21
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %293, label %202

202:                                              ; preds = %199
  %203 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 516, i32 noundef 0) #21
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %293, label %205

205:                                              ; preds = %202
  %206 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 520, i32 noundef 0) #21
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %293, label %208

208:                                              ; preds = %205
  %209 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 524, i32 noundef 0) #21
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %293, label %211

211:                                              ; preds = %208
  %212 = tail call fastcc zeroext i16 @lan78xx_wakeframe_crc16(ptr noundef nonnull @__const.lan78xx_set_suspend.ipv6_multicast, i32 noundef 2) #21
  %213 = zext i16 %212 to i32
  %214 = or i32 %213, -2113929216
  %215 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 340, i32 noundef %214) #21
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %293, label %217

217:                                              ; preds = %211
  %218 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 528, i32 noundef 3) #21
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %293, label %220

220:                                              ; preds = %217
  %221 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 532, i32 noundef 0) #21
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %293, label %223

223:                                              ; preds = %220
  %224 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 536, i32 noundef 0) #21
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %293, label %226

226:                                              ; preds = %223
  %227 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 540, i32 noundef 0) #21
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %293, label %229

229:                                              ; preds = %226, %176
  %230 = phi i32 [ %187, %176 ], [ %186, %226 ]
  %231 = phi i32 [ 0, %176 ], [ 2, %226 ]
  %232 = phi i32 [ %189, %176 ], [ %193, %226 ]
  %233 = and i32 %131, 2
  %234 = icmp eq i32 %233, 0
  %235 = and i32 %230, -105
  %236 = or i32 %235, 8
  %237 = select i1 %234, i32 %230, i32 %236
  %238 = shl nuw nsw i32 %233, 2
  %239 = or i32 %232, %238
  %240 = and i32 %131, 16
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %268, label %242

242:                                              ; preds = %229
  %243 = or i32 %239, 4
  %244 = call fastcc zeroext i16 @lan78xx_wakeframe_crc16(ptr noundef nonnull %3, i32 noundef 2) #21
  %245 = shl nuw nsw i32 %231, 2
  %246 = or i32 %245, 336
  %247 = zext i16 %244 to i32
  %248 = or i32 %247, -2130706432
  %249 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef %246, i32 noundef %248) #21
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %293, label %251

251:                                              ; preds = %242
  %252 = shl nuw nsw i32 %231, 4
  %253 = or i32 %252, 512
  %254 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef %253, i32 noundef 12288) #21
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %293, label %256

256:                                              ; preds = %251
  %257 = or i32 %252, 516
  %258 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef %257, i32 noundef 0) #21
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %293, label %260

260:                                              ; preds = %256
  %261 = or i32 %252, 520
  %262 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef %261, i32 noundef 0) #21
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %293, label %264

264:                                              ; preds = %260
  %265 = or i32 %252, 524
  %266 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef %265, i32 noundef 0) #21
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %293, label %268

268:                                              ; preds = %264, %229
  %269 = phi i32 [ %237, %229 ], [ %236, %264 ]
  %270 = phi i32 [ %239, %229 ], [ %243, %264 ]
  %271 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 320, i32 noundef %270) #21
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %293, label %273

273:                                              ; preds = %268
  %274 = tail call i32 @__sw_hweight32(i32 noundef %131) #21
  %275 = icmp ugt i32 %274, 1
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = and i32 %269, -105
  %278 = or i32 %277, 8
  store i32 %278, ptr %4, align 4
  br label %279

279:                                              ; preds = %276, %273
  %280 = phi i32 [ %278, %276 ], [ %269, %273 ]
  %281 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 20, i32 noundef %280) #21
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %293, label %283

283:                                              ; preds = %279
  %284 = call fastcc i32 @lan78xx_read_reg(ptr noundef %11, i32 noundef 20, ptr noundef nonnull %5) #21
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %293, label %286

286:                                              ; preds = %283
  %287 = load i32, ptr %5, align 4
  %288 = or i32 %287, 3
  %289 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 20, i32 noundef %288) #21
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %293, label %291

291:                                              ; preds = %286
  %292 = tail call fastcc i32 @lan78xx_start_rx_path(ptr noundef %11) #21
  br label %295

293:                                              ; preds = %286, %283, %279, %268, %264, %260, %256, %251, %242, %226, %223, %220, %217, %211, %208, %205, %202, %199, %192, %164, %154, %151, %148, %145, %138, %125
  %294 = phi i32 [ %139, %138 ], [ %132, %125 ], [ %289, %286 ], [ %284, %283 ], [ %281, %279 ], [ %271, %268 ], [ %266, %264 ], [ %262, %260 ], [ %258, %256 ], [ %254, %251 ], [ %249, %242 ], [ %227, %226 ], [ %224, %223 ], [ %221, %220 ], [ %218, %217 ], [ %215, %211 ], [ %209, %208 ], [ %206, %205 ], [ %203, %202 ], [ %200, %199 ], [ %197, %192 ], [ %155, %154 ], [ %152, %151 ], [ %149, %148 ], [ %146, %145 ], [ %168, %164 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #21
  br label %325

295:                                              ; preds = %291, %141, %134
  %296 = phi i32 [ %292, %291 ], [ %136, %134 ], [ %143, %141 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #21
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %325, label %324

298:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #21
  store i32 0, ptr %8, align 4, !annotation !13
  tail call void @_set_bit(i32 noundef 7, ptr noundef %13) #21
  %299 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 320, i32 noundef 0)
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %321, label %301

301:                                              ; preds = %298
  %302 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 1536, i32 noundef 0)
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %321, label %304

304:                                              ; preds = %301
  %305 = call fastcc i32 @lan78xx_read_reg(ptr noundef %11, i32 noundef 20, ptr noundef nonnull %8)
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %321, label %307

307:                                              ; preds = %304
  %308 = load i32, ptr %8, align 4
  %309 = and i32 %308, -865
  %310 = or i32 %309, 608
  store i32 %310, ptr %8, align 4
  %311 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 20, i32 noundef %310)
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %321, label %313

313:                                              ; preds = %307
  %314 = call fastcc i32 @lan78xx_read_reg(ptr noundef %11, i32 noundef 20, ptr noundef nonnull %8)
  %315 = icmp slt i32 %314, 0
  br i1 %315, label %321, label %316

316:                                              ; preds = %313
  %317 = load i32, ptr %8, align 4
  %318 = or i32 %317, 3
  %319 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %11, i32 noundef 20, i32 noundef %318)
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %316, %313, %307, %304, %301, %298
  %322 = phi i32 [ %314, %313 ], [ %311, %307 ], [ %305, %304 ], [ %302, %301 ], [ %299, %298 ], [ %319, %316 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #21
  br label %325

323:                                              ; preds = %316
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #21
  br label %324

324:                                              ; preds = %323, %295, %122
  br label %325

325:                                              ; preds = %324, %321, %295, %293, %122, %120, %57, %54, %48, %47, %40, %35, %32
  %326 = phi i32 [ -16, %32 ], [ %42, %40 ], [ %52, %48 ], [ %59, %57 ], [ %123, %122 ], [ 0, %324 ], [ %296, %295 ], [ %45, %47 ], [ %121, %120 ], [ %294, %293 ], [ %322, %321 ], [ %38, %35 ], [ %55, %54 ]
  tail call void @mutex_unlock(ptr noundef %12) #21
  ret i32 %326
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan78xx_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.lan78xx_net, ptr %4, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %5) #21
  %6 = getelementptr inbounds %struct.lan78xx_net, ptr %4, i32 0, i32 28
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %155, label %10

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  store i32 0, ptr %2, align 4, !annotation !13
  %11 = call fastcc i32 @lan78xx_read_reg(ptr noundef %4, i32 noundef 196, ptr noundef nonnull %2) #21
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %171

14:                                               ; preds = %10
  %15 = load i32, ptr %2, align 4
  %16 = or i32 %15, 1073741824
  %17 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %4, i32 noundef 196, i32 noundef %16) #21
  %18 = tail call i32 @llvm.smin.i32(i32 %17, i32 0) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  %19 = icmp slt i32 %17, 0
  br i1 %19, label %171, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.lan78xx_net, ptr %4, i32 0, i32 19
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @usb_submit_urb(ptr noundef nonnull %22, i32 noundef 3264) #21
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = icmp eq i32 %25, -19
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = load ptr, ptr %4, align 8
  tail call void @netif_device_detach(ptr noundef %30) #21
  br label %31

31:                                               ; preds = %29, %27
  %32 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %32, ptr noundef nonnull @.str.60) #22
  br label %33

33:                                               ; preds = %31, %24, %20
  %34 = getelementptr inbounds %struct.lan78xx_net, ptr %4, i32 0, i32 14, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %34) #21
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 6
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %113, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.lan78xx_net, ptr %4, i32 0, i32 20
  %42 = tail call ptr @usb_get_from_anchor(ptr noundef %41) #21
  %43 = icmp eq ptr %42, null
  br i1 %43, label %116, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.lan78xx_net, ptr %4, i32 0, i32 14
  %46 = getelementptr inbounds %struct.lan78xx_net, ptr %4, i32 0, i32 14, i32 0, i32 0, i32 1
  %47 = getelementptr inbounds %struct.lan78xx_net, ptr %4, i32 0, i32 14, i32 1
  %48 = getelementptr inbounds %struct.lan78xx_net, ptr %4, i32 0, i32 13
  br label %49

49:                                               ; preds = %92, %44
  %50 = phi ptr [ %42, %44 ], [ %93, %92 ]
  %51 = phi i1 [ false, %44 ], [ %94, %92 ]
  %52 = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 27
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %4, align 8
  %55 = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 6
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %82, label %59

59:                                               ; preds = %49
  %60 = load volatile i32, ptr %55, align 4
  %61 = and i32 %60, 4
  %62 = icmp ne i32 %61, 0
  %63 = select i1 %62, i1 true, i1 %51
  br i1 %63, label %82, label %64

64:                                               ; preds = %59
  %65 = tail call i32 @usb_submit_urb(ptr noundef nonnull %50, i32 noundef 2592) #21
  switch i32 %65, label %82 [
    i32 0, label %66
    i32 -32, label %75
    i32 -19, label %80
  ]

66:                                               ; preds = %64
  %67 = load ptr, ptr %4, align 8
  %68 = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 87
  %69 = load ptr, ptr %68, align 64
  %70 = load volatile i32, ptr @jiffies, align 64
  %71 = getelementptr inbounds %struct.netdev_queue, ptr %69, i32 0, i32 11
  %72 = load volatile i32, ptr %71, align 8
  %73 = icmp eq i32 %72, %70
  br i1 %73, label %95, label %74

74:                                               ; preds = %66
  store volatile i32 %70, ptr %71, align 8
  br label %95

75:                                               ; preds = %64
  %76 = load ptr, ptr %4, align 8
  %77 = getelementptr inbounds %struct.net_device, ptr %76, i32 0, i32 87
  %78 = load ptr, ptr %77, align 64
  %79 = getelementptr inbounds %struct.netdev_queue, ptr %78, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %79) #21
  br label %82

80:                                               ; preds = %64
  %81 = load ptr, ptr %4, align 8
  tail call void @netif_device_detach(ptr noundef %81) #21
  br label %82

82:                                               ; preds = %80, %75, %64, %59, %49
  %83 = phi i1 [ %51, %59 ], [ %51, %49 ], [ true, %75 ], [ false, %80 ], [ false, %64 ]
  %84 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 16
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 17
  store ptr %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 14
  store ptr %85, ptr %87, align 8
  %88 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 5
  store i32 0, ptr %88, align 8
  %89 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 6
  store i32 0, ptr %89, align 4
  tail call void @skb_queue_tail(ptr noundef %48, ptr noundef %53) #21
  %90 = tail call ptr @usb_get_from_anchor(ptr noundef %41) #21
  %91 = icmp eq ptr %90, null
  br i1 %91, label %103, label %92

92:                                               ; preds = %95, %82
  %93 = phi ptr [ %90, %82 ], [ %101, %95 ]
  %94 = phi i1 [ %83, %82 ], [ false, %95 ]
  br label %49

95:                                               ; preds = %74, %66
  %96 = load ptr, ptr %46, align 4
  store volatile ptr %45, ptr %53, align 8
  %97 = getelementptr inbounds %struct.anon.49, ptr %53, i32 0, i32 1
  store volatile ptr %96, ptr %97, align 4
  store volatile ptr %53, ptr %46, align 4
  store volatile ptr %53, ptr %96, align 4
  %98 = load i32, ptr %47, align 4
  %99 = add i32 %98, 1
  store volatile i32 %99, ptr %47, align 4
  %100 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 3, i32 8
  store i32 1, ptr %100, align 4
  %101 = tail call ptr @usb_get_from_anchor(ptr noundef %41) #21
  %102 = icmp eq ptr %101, null
  br i1 %102, label %116, label %92

103:                                              ; preds = %82
  br i1 %83, label %104, label %116

104:                                              ; preds = %103
  tail call void @_set_bit(i32 noundef 0, ptr noundef %6) #21
  %105 = getelementptr inbounds %struct.lan78xx_net, ptr %4, i32 0, i32 17
  %106 = load ptr, ptr @system_wq, align 4
  %107 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %106, ptr noundef %105, i32 noundef 0) #21
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %109, ptr noundef nonnull @.str.10, i32 noundef 0) #22
  br label %110

110:                                              ; preds = %108, %104
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %6) #21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !8
  %111 = load i16, ptr %34, align 4
  %112 = add i16 %111, 1
  store i16 %112, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #21, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  br label %138

113:                                              ; preds = %33
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %6) #21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !8
  %114 = load i16, ptr %34, align 4
  %115 = add i16 %114, 1
  store i16 %115, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #21, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  br label %119

116:                                              ; preds = %103, %95, %40
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %6) #21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !8
  %117 = load i16, ptr %34, align 4
  %118 = add i16 %117, 1
  store i16 %118, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #21, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  br label %119

119:                                              ; preds = %116, %113
  %120 = load ptr, ptr %4, align 8
  %121 = getelementptr inbounds %struct.net_device, ptr %120, i32 0, i32 6
  %122 = load volatile i32, ptr %121, align 4
  %123 = and i32 %122, 2
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %138, label %125

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.lan78xx_net, ptr %4, i32 0, i32 4
  %127 = load i32, ptr %126, align 8
  %128 = getelementptr inbounds %struct.lan78xx_net, ptr %4, i32 0, i32 13, i32 1
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.lan78xx_net, ptr %4, i32 0, i32 7
  %131 = load i32, ptr %130, align 4
  %132 = mul i32 %131, %129
  %133 = icmp ult i32 %127, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %125
  %135 = getelementptr inbounds %struct.net_device, ptr %120, i32 0, i32 87
  %136 = load ptr, ptr %135, align 64
  %137 = getelementptr inbounds %struct.netdev_queue, ptr %136, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %137) #21
  br label %138

138:                                              ; preds = %134, %125, %119, %110
  %139 = tail call fastcc i32 @lan78xx_start_tx_path(ptr noundef %4)
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %171, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.lan78xx_net, ptr %4, i32 0, i32 16
  %143 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %142) #21
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  tail call void @__napi_schedule(ptr noundef %142) #21
  br label %145

145:                                              ; preds = %144, %141
  %146 = getelementptr inbounds %struct.lan78xx_net, ptr %4, i32 0, i32 32, i32 0, i32 1
  %147 = load volatile ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %156

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.lan78xx_net, ptr %4, i32 0, i32 32
  %151 = getelementptr inbounds %struct.lan78xx_net, ptr %4, i32 0, i32 42
  store i32 1, ptr %151, align 8
  %152 = load volatile i32, ptr @jiffies, align 64
  %153 = add i32 %152, 1000
  %154 = tail call i32 @mod_timer(ptr noundef %150, i32 noundef %153) #21
  br label %156

155:                                              ; preds = %1
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %6) #21
  br label %156

156:                                              ; preds = %155, %149, %145
  %157 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %4, i32 noundef 1536, i32 noundef 0)
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %171, label %159

159:                                              ; preds = %156
  %160 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %4, i32 noundef 320, i32 noundef 0)
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %171, label %162

162:                                              ; preds = %159
  %163 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %4, i32 noundef 324, i32 noundef -917729)
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %162
  %166 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %4, i32 noundef 1536, i32 noundef 240)
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %165
  %169 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %4, i32 noundef 320, i32 noundef 10992)
  %170 = tail call i32 @llvm.smin.i32(i32 %169, i32 0)
  br label %171

171:                                              ; preds = %168, %165, %162, %159, %156, %138, %14, %13
  %172 = phi i32 [ %157, %156 ], [ %160, %159 ], [ %163, %162 ], [ %166, %165 ], [ %170, %168 ], [ %11, %13 ], [ %139, %138 ], [ %18, %14 ]
  tail call void @mutex_unlock(ptr noundef %5) #21
  ret i32 %172
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan78xx_reset_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @lan78xx_reset(ptr noundef %3)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 120
  %9 = load ptr, ptr %8, align 8
  tail call void @phy_start(ptr noundef %9) #21
  %10 = tail call i32 @lan78xx_resume(ptr noundef %0)
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i32 [ %10, %6 ], [ %4, %1 ]
  ret i32 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan78xx_poll(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca %struct.sk_buff_head, align 4
  %4 = getelementptr i8, ptr %0, i32 -152
  %5 = getelementptr i8, ptr %0, i32 360
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 128
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef 0) #21
  br label %534

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %12 = getelementptr inbounds i8, ptr %3, i32 12
  store i32 0, ptr %12, align 4, !annotation !13
  %13 = getelementptr i8, ptr %0, i32 -68
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %37, label %16

16:                                               ; preds = %16, %11
  %17 = phi i32 [ %34, %16 ], [ 0, %11 ]
  %18 = tail call ptr @skb_dequeue(ptr noundef %13) #21
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36
  %21 = load i32, ptr %20, align 8
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 8
  %23 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = add i32 %27, %24
  store i32 %28, ptr %26, align 8
  %29 = load ptr, ptr %4, align 8
  %30 = tail call zeroext i16 @eth_type_trans(ptr noundef %18, ptr noundef %29) #21
  %31 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 13, i32 0, i32 16
  store i16 %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(20) %32, i8 0, i32 20, i1 false) #21
  %33 = tail call i32 @napi_gro_receive(ptr noundef %0, ptr noundef %18) #21
  %34 = add i32 %17, 1
  %35 = load ptr, ptr %13, align 4
  %36 = icmp eq ptr %35, %13
  br i1 %36, label %37, label %16

37:                                               ; preds = %16, %11
  %38 = phi i32 [ 0, %11 ], [ %34, %16 ]
  store ptr %3, ptr %3, align 4
  %39 = getelementptr inbounds %struct.anon.77, ptr %3, i32 0, i32 1
  store ptr %3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.sk_buff_head, ptr %3, i32 0, i32 1
  store i32 0, ptr %40, align 4
  %41 = getelementptr i8, ptr %0, i32 -84
  %42 = getelementptr i8, ptr %0, i32 -72
  %43 = call i32 @_raw_spin_lock_irqsave(ptr noundef %42) #21
  %44 = load ptr, ptr %41, align 4
  %45 = icmp eq ptr %44, %41
  br i1 %45, label %56, label %46

46:                                               ; preds = %37
  %47 = load ptr, ptr %3, align 4
  %48 = getelementptr i8, ptr %0, i32 -80
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.anon.49, ptr %44, i32 0, i32 1
  store volatile ptr %3, ptr %50, align 4
  store volatile ptr %44, ptr %3, align 8
  store volatile ptr %47, ptr %49, align 8
  %51 = getelementptr inbounds %struct.anon.49, ptr %47, i32 0, i32 1
  store volatile ptr %49, ptr %51, align 4
  %52 = getelementptr i8, ptr %0, i32 -76
  %53 = load i32, ptr %52, align 4
  %54 = load i32, ptr %40, align 4
  %55 = add i32 %54, %53
  store i32 %55, ptr %40, align 4
  store ptr %41, ptr %41, align 4
  store ptr %41, ptr %48, align 4
  store i32 0, ptr %52, align 4
  br label %56

56:                                               ; preds = %46, %37
  call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %43) #21
  %57 = icmp slt i32 %38, %1
  br i1 %57, label %58, label %191

58:                                               ; preds = %181, %56
  %59 = phi i32 [ %182, %181 ], [ %38, %56 ]
  %60 = load ptr, ptr %3, align 4
  %61 = icmp eq ptr %60, %3
  %62 = icmp eq ptr %60, null
  %63 = or i1 %61, %62
  br i1 %63, label %191, label %64

64:                                               ; preds = %58
  %65 = load i32, ptr %40, align 4
  %66 = add i32 %65, -1
  store volatile i32 %66, ptr %40, align 4
  %67 = load ptr, ptr %60, align 8
  %68 = getelementptr inbounds %struct.anon.49, ptr %60, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  store ptr null, ptr %68, align 4
  store ptr null, ptr %60, align 8
  %70 = getelementptr inbounds %struct.anon.49, ptr %67, i32 0, i32 1
  store volatile ptr %69, ptr %70, align 4
  store volatile ptr %67, ptr %69, align 8
  %71 = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 3, i32 8
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 4
  br i1 %73, label %74, label %181

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 5
  %76 = load i32, ptr %75, align 8
  %77 = icmp ult i32 %76, 24
  br i1 %77, label %175, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 17
  br label %84

80:                                               ; preds = %170
  %81 = call ptr @skb_pull(ptr noundef %60, i32 noundef %96) #21
  %82 = load i32, ptr %75, align 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %181, label %84

84:                                               ; preds = %80, %78
  %85 = phi i32 [ %59, %78 ], [ %171, %80 ]
  %86 = load ptr, ptr %79, align 4
  %87 = load i32, ptr %86, align 1
  %88 = call ptr @skb_pull(ptr noundef %60, i32 noundef 4) #21
  %89 = load ptr, ptr %79, align 4
  %90 = load i32, ptr %89, align 1
  %91 = call ptr @skb_pull(ptr noundef %60, i32 noundef 4) #21
  %92 = call ptr @skb_pull(ptr noundef %60, i32 noundef 2) #21
  %93 = load ptr, ptr %79, align 4
  %94 = and i32 %87, 16383
  %95 = sub i32 2, %87
  %96 = and i32 %95, 3
  %97 = and i32 %87, 4194304
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %170, !prof !14

99:                                               ; preds = %84
  %100 = add nsw i32 %94, -4
  %101 = call ptr @__napi_alloc_skb(ptr noundef %0, i32 noundef %100, i32 noundef 2592) #21
  %102 = icmp eq ptr %101, null
  br i1 %102, label %175, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.sk_buff, ptr %101, i32 0, i32 17
  %105 = load ptr, ptr %104, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %105, ptr align 1 %93, i32 %100, i1 false) #21
  %106 = call ptr @skb_put(ptr noundef nonnull %101, i32 noundef %100) #21
  %107 = load ptr, ptr %4, align 8
  %108 = getelementptr inbounds %struct.net_device, ptr %107, i32 0, i32 23
  %109 = load i64, ptr %108, align 16
  %110 = and i64 %109, 1099511627776
  %111 = icmp ne i64 %110, 0
  %112 = and i32 %87, 16384
  %113 = icmp eq i32 %112, 0
  %114 = and i1 %113, %111
  %115 = and i32 %87, 8388608
  br i1 %114, label %116, label %121, !prof !15

116:                                              ; preds = %103
  %117 = icmp ne i32 %115, 0
  %118 = and i64 %109, 256
  %119 = icmp eq i64 %118, 0
  %120 = select i1 %117, i1 %119, i1 false
  br i1 %120, label %121, label %125

121:                                              ; preds = %116, %103
  %122 = getelementptr inbounds %struct.sk_buff, ptr %101, i32 0, i32 13
  %123 = load i16, ptr %122, align 8
  %124 = and i16 %123, -97
  store i16 %124, ptr %122, align 8
  br label %135

125:                                              ; preds = %116
  %126 = lshr i32 %90, 16
  %127 = trunc i32 %126 to i16
  %128 = call i16 @llvm.bswap.i16(i16 %127) #21
  %129 = zext i16 %128 to i32
  %130 = getelementptr inbounds %struct.sk_buff, ptr %101, i32 0, i32 13, i32 0, i32 4
  store i32 %129, ptr %130, align 4
  %131 = getelementptr inbounds %struct.sk_buff, ptr %101, i32 0, i32 13
  %132 = load i16, ptr %131, align 8
  %133 = and i16 %132, -97
  %134 = or i16 %133, 64
  store i16 %134, ptr %131, align 8
  br label %135

135:                                              ; preds = %125, %121
  %136 = load ptr, ptr %4, align 8
  %137 = getelementptr inbounds %struct.net_device, ptr %136, i32 0, i32 23
  %138 = load i64, ptr %137, align 16
  %139 = and i64 %138, 256
  %140 = icmp eq i64 %139, 0
  %141 = icmp eq i32 %115, 0
  %142 = or i1 %141, %140
  br i1 %142, label %150, label %143

143:                                              ; preds = %135
  %144 = trunc i32 %90 to i16
  %145 = getelementptr inbounds %struct.sk_buff, ptr %101, i32 0, i32 13, i32 0, i32 8
  store i16 129, ptr %145, align 4
  %146 = getelementptr inbounds %struct.sk_buff, ptr %101, i32 0, i32 13, i32 0, i32 9
  store i16 %144, ptr %146, align 2
  %147 = getelementptr inbounds %struct.sk_buff, ptr %101, i32 0, i32 13, i32 0, i32 3
  %148 = load i16, ptr %147, align 2
  %149 = or i16 %148, 1
  store i16 %149, ptr %147, align 2
  br label %150

150:                                              ; preds = %143, %135
  %151 = icmp slt i32 %85, %1
  br i1 %151, label %152, label %169

152:                                              ; preds = %150
  %153 = load ptr, ptr %4, align 8
  %154 = getelementptr inbounds %struct.net_device, ptr %153, i32 0, i32 36
  %155 = load i32, ptr %154, align 8
  %156 = add i32 %155, 1
  store i32 %156, ptr %154, align 8
  %157 = getelementptr inbounds %struct.sk_buff, ptr %101, i32 0, i32 5
  %158 = load i32, ptr %157, align 8
  %159 = load ptr, ptr %4, align 8
  %160 = getelementptr inbounds %struct.net_device, ptr %159, i32 0, i32 36, i32 2
  %161 = load i32, ptr %160, align 8
  %162 = add i32 %161, %158
  store i32 %162, ptr %160, align 8
  %163 = load ptr, ptr %4, align 8
  %164 = call zeroext i16 @eth_type_trans(ptr noundef nonnull %101, ptr noundef %163) #21
  %165 = getelementptr inbounds %struct.sk_buff, ptr %101, i32 0, i32 13, i32 0, i32 16
  store i16 %164, ptr %165, align 8
  %166 = getelementptr inbounds %struct.sk_buff, ptr %101, i32 0, i32 3
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(20) %166, i8 0, i32 20, i1 false) #21
  %167 = call i32 @napi_gro_receive(ptr noundef %0, ptr noundef nonnull %101) #21
  %168 = add nsw i32 %85, 1
  br label %170

169:                                              ; preds = %150
  call void @skb_queue_tail(ptr noundef %13, ptr noundef nonnull %101) #21
  br label %170

170:                                              ; preds = %169, %152, %84
  %171 = phi i32 [ %168, %152 ], [ %85, %169 ], [ %85, %84 ]
  %172 = call ptr @skb_pull(ptr noundef %60, i32 noundef %94) #21
  %173 = load i32, ptr %75, align 8
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %181, label %80

175:                                              ; preds = %99, %74
  %176 = phi i32 [ %59, %74 ], [ %85, %99 ]
  %177 = load ptr, ptr %4, align 8
  %178 = getelementptr inbounds %struct.net_device, ptr %177, i32 0, i32 36, i32 4
  %179 = load i32, ptr %178, align 8
  %180 = add i32 %179, 1
  store i32 %180, ptr %178, align 8
  br label %181

181:                                              ; preds = %175, %170, %80, %64
  %182 = phi i32 [ %59, %64 ], [ %176, %175 ], [ %171, %80 ], [ %171, %170 ]
  %183 = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 16
  %184 = load ptr, ptr %183, align 8
  %185 = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 17
  store ptr %184, ptr %185, align 4
  %186 = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 14
  store ptr %184, ptr %186, align 8
  %187 = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 5
  store i32 0, ptr %187, align 8
  %188 = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 6
  store i32 0, ptr %188, align 4
  %189 = call fastcc i32 @rx_submit(ptr noundef %4, ptr noundef %60) #21
  %190 = icmp slt i32 %182, %1
  br i1 %190, label %58, label %191

191:                                              ; preds = %181, %58, %56
  %192 = phi i32 [ %38, %56 ], [ %182, %181 ], [ %59, %58 ]
  %193 = call i32 @_raw_spin_lock_irqsave(ptr noundef %42) #21
  %194 = load ptr, ptr %3, align 4
  %195 = icmp eq ptr %194, %3
  br i1 %195, label %205, label %196

196:                                              ; preds = %191
  %197 = load ptr, ptr %41, align 4
  %198 = load ptr, ptr %39, align 4
  %199 = getelementptr inbounds %struct.anon.49, ptr %194, i32 0, i32 1
  store volatile ptr %41, ptr %199, align 4
  store volatile ptr %194, ptr %41, align 8
  store volatile ptr %197, ptr %198, align 8
  %200 = getelementptr inbounds %struct.anon.49, ptr %197, i32 0, i32 1
  store volatile ptr %198, ptr %200, align 4
  %201 = load i32, ptr %40, align 4
  %202 = getelementptr i8, ptr %0, i32 -76
  %203 = load i32, ptr %202, align 4
  %204 = add i32 %203, %201
  store i32 %204, ptr %202, align 4
  br label %205

205:                                              ; preds = %196, %191
  call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %193) #21
  %206 = load ptr, ptr %4, align 8
  %207 = getelementptr inbounds %struct.net_device, ptr %206, i32 0, i32 6
  %208 = load volatile i32, ptr %207, align 4
  %209 = and i32 %208, 2
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %495, label %211

211:                                              ; preds = %205
  %212 = load volatile i32, ptr %207, align 4
  %213 = and i32 %212, 1
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %495, label %215

215:                                              ; preds = %211
  %216 = getelementptr i8, ptr %0, i32 376
  %217 = getelementptr i8, ptr %0, i32 380
  %218 = load volatile ptr, ptr %217, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %228, label %220

220:                                              ; preds = %215
  %221 = getelementptr i8, ptr %0, i32 448
  %222 = load i32, ptr %221, align 8
  %223 = icmp eq i32 %222, 1
  br i1 %223, label %228, label %224

224:                                              ; preds = %220
  store i32 1, ptr %221, align 8
  %225 = load volatile i32, ptr @jiffies, align 64
  %226 = add i32 %225, 1000
  %227 = call i32 @mod_timer(ptr noundef %216, i32 noundef %226) #21
  br label %228

228:                                              ; preds = %224, %220, %215
  %229 = load volatile i32, ptr %5, align 4
  %230 = and i32 %229, 2
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %228
  %233 = getelementptr i8, ptr %0, i32 -116
  br label %234

234:                                              ; preds = %240, %232
  %235 = load ptr, ptr %233, align 4
  %236 = icmp eq ptr %235, %233
  br i1 %236, label %243, label %237

237:                                              ; preds = %234
  %238 = call ptr @skb_dequeue(ptr noundef %233) #21
  %239 = icmp eq ptr %238, null
  br i1 %239, label %243, label %240

240:                                              ; preds = %237
  %241 = call fastcc i32 @rx_submit(ptr noundef %4, ptr noundef nonnull %238) #21
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %234, label %243

243:                                              ; preds = %240, %237, %234, %228
  %244 = load ptr, ptr %4, align 8
  call void @netif_tx_lock(ptr noundef %244) #21
  %245 = load ptr, ptr %4, align 8
  %246 = getelementptr inbounds %struct.net_device, ptr %245, i32 0, i32 87
  %247 = load ptr, ptr %246, align 64
  %248 = getelementptr inbounds %struct.netdev_queue, ptr %247, i32 0, i32 12
  %249 = load volatile i32, ptr %248, align 4
  %250 = and i32 %249, 1
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %263, label %252

252:                                              ; preds = %243
  %253 = getelementptr i8, ptr %0, i32 -136
  %254 = load i32, ptr %253, align 8
  %255 = getelementptr i8, ptr %0, i32 -44
  %256 = load i32, ptr %255, align 4
  %257 = getelementptr i8, ptr %0, i32 -124
  %258 = load i32, ptr %257, align 4
  %259 = mul i32 %258, %256
  %260 = icmp ult i32 %254, %259
  br i1 %260, label %261, label %263

261:                                              ; preds = %252
  call void @netif_tx_wake_queue(ptr noundef %247) #21
  %262 = load ptr, ptr %4, align 8
  br label %263

263:                                              ; preds = %261, %252, %243
  %264 = phi ptr [ %245, %252 ], [ %262, %261 ], [ %245, %243 ]
  call void @netif_tx_unlock(ptr noundef %264) #21
  %265 = getelementptr i8, ptr %0, i32 -20
  %266 = getelementptr i8, ptr %0, i32 -52
  %267 = getelementptr i8, ptr %0, i32 -124
  %268 = getelementptr i8, ptr %0, i32 -8
  %269 = getelementptr i8, ptr %0, i32 -12
  %270 = getelementptr i8, ptr %0, i32 -136
  %271 = getelementptr i8, ptr %0, i32 -36
  %272 = getelementptr i8, ptr %0, i32 -24
  %273 = getelementptr i8, ptr %0, i32 -144
  %274 = getelementptr i8, ptr %0, i32 -148
  %275 = getelementptr i8, ptr %0, i32 344
  %276 = getelementptr i8, ptr %0, i32 372
  %277 = getelementptr i8, ptr %0, i32 216
  %278 = getelementptr i8, ptr %0, i32 -32
  %279 = getelementptr i8, ptr %0, i32 -28
  br label %280

280:                                              ; preds = %492, %263
  %281 = load ptr, ptr %265, align 4
  %282 = icmp eq ptr %281, %265
  br i1 %282, label %495, label %283

283:                                              ; preds = %280
  %284 = load ptr, ptr %266, align 4
  %285 = icmp eq ptr %284, %266
  br i1 %285, label %495, label %286

286:                                              ; preds = %283
  %287 = call ptr @skb_dequeue(ptr noundef %266) #21
  %288 = icmp eq ptr %287, null
  br i1 %288, label %495, label %289

289:                                              ; preds = %286
  %290 = load i32, ptr %267, align 4
  %291 = getelementptr inbounds %struct.sk_buff, ptr %287, i32 0, i32 17
  %292 = load ptr, ptr %291, align 4
  %293 = getelementptr inbounds %struct.sk_buff, ptr %287, i32 0, i32 3, i32 16
  store i32 0, ptr %293, align 4
  %294 = getelementptr inbounds %struct.sk_buff, ptr %287, i32 0, i32 3, i32 12
  store i32 0, ptr %294, align 4
  %295 = icmp sgt i32 %290, 21
  br i1 %295, label %296, label %404

296:                                              ; preds = %397, %289
  %297 = phi i32 [ %400, %397 ], [ 0, %289 ]
  %298 = phi ptr [ %399, %397 ], [ %292, %289 ]
  %299 = phi i32 [ %398, %397 ], [ %290, %289 ]
  %300 = call i32 @_raw_spin_lock_irqsave(ptr noundef %268) #21
  %301 = load ptr, ptr %265, align 4
  %302 = icmp eq ptr %301, %265
  %303 = icmp eq ptr %301, null
  %304 = or i1 %302, %303
  br i1 %304, label %402, label %305

305:                                              ; preds = %296
  %306 = load i32, ptr %269, align 4
  %307 = add i32 %306, -1
  store volatile i32 %307, ptr %269, align 4
  %308 = load ptr, ptr %301, align 8
  %309 = getelementptr inbounds %struct.anon.49, ptr %301, i32 0, i32 1
  %310 = load ptr, ptr %309, align 4
  store ptr null, ptr %309, align 4
  store ptr null, ptr %301, align 8
  %311 = getelementptr inbounds %struct.anon.49, ptr %308, i32 0, i32 1
  store volatile ptr %310, ptr %311, align 4
  store volatile ptr %308, ptr %310, align 8
  %312 = getelementptr inbounds %struct.sk_buff, ptr %301, i32 0, i32 5
  %313 = load i32, ptr %312, align 8
  %314 = load i32, ptr %270, align 8
  %315 = sub i32 %314, %313
  store i32 %315, ptr %270, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %268, i32 noundef %300) #21
  %316 = sub i32 0, %297
  %317 = and i32 %316, 3
  %318 = or i32 %317, 8
  %319 = load i32, ptr %312, align 8
  %320 = add i32 %318, %319
  %321 = icmp ugt i32 %320, %299
  br i1 %321, label %322, label %332

322:                                              ; preds = %305
  %323 = getelementptr inbounds %struct.anon.49, ptr %301, i32 0, i32 1
  %324 = call i32 @_raw_spin_lock_irqsave(ptr noundef %268) #21
  %325 = load ptr, ptr %265, align 4
  store volatile ptr %325, ptr %301, align 8
  store volatile ptr %265, ptr %323, align 4
  %326 = getelementptr inbounds %struct.sk_buff_list, ptr %325, i32 0, i32 1
  store volatile ptr %301, ptr %326, align 4
  store volatile ptr %301, ptr %265, align 4
  %327 = load i32, ptr %269, align 4
  %328 = add i32 %327, 1
  store volatile i32 %328, ptr %269, align 4
  %329 = load i32, ptr %312, align 8
  %330 = load i32, ptr %270, align 8
  %331 = add i32 %330, %329
  store i32 %331, ptr %270, align 8
  br label %402

332:                                              ; preds = %305
  %333 = getelementptr i8, ptr %298, i32 %317
  %334 = and i32 %319, 1048575
  %335 = getelementptr inbounds %struct.sk_buff, ptr %301, i32 0, i32 13
  %336 = load i16, ptr %335, align 8
  %337 = and i16 %336, 96
  %338 = icmp eq i16 %337, 96
  %339 = select i1 %338, i32 104857600, i32 4194304
  %340 = or i32 %339, %334
  %341 = getelementptr inbounds %struct.sk_buff, ptr %301, i32 0, i32 15
  %342 = load ptr, ptr %341, align 4
  %343 = getelementptr inbounds %struct.skb_shared_info, ptr %342, i32 0, i32 4
  %344 = load i16, ptr %343, align 4
  %345 = icmp eq i16 %344, 0
  br i1 %345, label %352, label %346

346:                                              ; preds = %332
  %347 = call i16 @llvm.umax.i16(i16 %344, i16 8) #21
  %348 = zext i16 %347 to i32
  %349 = shl nuw i32 %348, 16
  %350 = and i32 %349, 1073676288
  %351 = or i32 %340, 134217728
  br label %352

352:                                              ; preds = %346, %332
  %353 = phi i32 [ %350, %346 ], [ 0, %332 ]
  %354 = phi i32 [ %351, %346 ], [ %340, %332 ]
  %355 = getelementptr inbounds %struct.sk_buff, ptr %301, i32 0, i32 13, i32 0, i32 3
  %356 = load i16, ptr %355, align 2
  %357 = and i16 %356, 1
  %358 = icmp eq i16 %357, 0
  br i1 %358, label %365, label %359

359:                                              ; preds = %352
  %360 = or i32 %354, 16777216
  %361 = getelementptr inbounds %struct.sk_buff, ptr %301, i32 0, i32 13, i32 0, i32 9
  %362 = load i16, ptr %361, align 2
  %363 = zext i16 %362 to i32
  %364 = or i32 %353, %363
  br label %365

365:                                              ; preds = %359, %352
  %366 = phi i32 [ %364, %359 ], [ %353, %352 ]
  %367 = phi i32 [ %360, %359 ], [ %354, %352 ]
  store i32 %367, ptr %333, align 1
  %368 = getelementptr i8, ptr %333, i32 4
  store i32 %366, ptr %368, align 1
  %369 = getelementptr i8, ptr %333, i32 8
  %370 = load i32, ptr %312, align 8
  %371 = call i32 @skb_copy_bits(ptr noundef nonnull %301, i32 noundef 0, ptr noundef %369, i32 noundef %370) #21
  %372 = icmp slt i32 %371, 0
  br i1 %372, label %373, label %379

373:                                              ; preds = %365
  %374 = load ptr, ptr %4, align 8
  %375 = getelementptr inbounds %struct.net_device, ptr %374, i32 0, i32 36, i32 7
  %376 = load i32, ptr %375, align 4
  %377 = add i32 %376, 1
  store i32 %377, ptr %375, align 4
  call void @__dev_kfree_skb_any(ptr noundef nonnull %301, i32 noundef 1) #21
  %378 = getelementptr i8, ptr %369, i32 -8
  br label %397

379:                                              ; preds = %365
  %380 = getelementptr i8, ptr %369, i32 %370
  %381 = load i32, ptr %294, align 4
  %382 = add i32 %381, %370
  store i32 %382, ptr %294, align 4
  %383 = load ptr, ptr %341, align 4
  %384 = getelementptr inbounds %struct.skb_shared_info, ptr %383, i32 0, i32 5
  %385 = load i16, ptr %384, align 2
  %386 = icmp eq i16 %385, 0
  %387 = select i1 %386, i16 1, i16 %385
  %388 = zext i16 %387 to i32
  %389 = load i32, ptr %293, align 4
  %390 = add i32 %389, %388
  store i32 %390, ptr %293, align 4
  call void @__dev_kfree_skb_any(ptr noundef nonnull %301, i32 noundef 1) #21
  %391 = load ptr, ptr %291, align 4
  %392 = ptrtoint ptr %380 to i32
  %393 = ptrtoint ptr %391 to i32
  %394 = sub i32 %392, %393
  %395 = load i32, ptr %267, align 4
  %396 = sub i32 %395, %394
  br label %397

397:                                              ; preds = %379, %373
  %398 = phi i32 [ %299, %373 ], [ %396, %379 ]
  %399 = phi ptr [ %378, %373 ], [ %380, %379 ]
  %400 = phi i32 [ %297, %373 ], [ %394, %379 ]
  %401 = icmp sgt i32 %398, 21
  br i1 %401, label %296, label %404

402:                                              ; preds = %322, %296
  %403 = phi i32 [ %324, %322 ], [ %300, %296 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %268, i32 noundef %403) #21
  br label %404

404:                                              ; preds = %402, %397, %289
  %405 = phi i32 [ 0, %289 ], [ %297, %402 ], [ %400, %397 ]
  %406 = getelementptr inbounds %struct.sk_buff, ptr %287, i32 0, i32 3
  %407 = call ptr @skb_put(ptr noundef nonnull %287, i32 noundef %405) #21
  %408 = call i32 @_raw_spin_lock_irqsave(ptr noundef %272) #21
  %409 = load ptr, ptr %273, align 8
  %410 = call i32 @usb_autopm_get_interface_async(ptr noundef %409) #21
  %411 = icmp slt i32 %410, 0
  br i1 %411, label %412, label %413

412:                                              ; preds = %404
  call void @_raw_spin_unlock_irqrestore(ptr noundef %272, i32 noundef %408) #21
  br label %480

413:                                              ; preds = %404
  %414 = load ptr, ptr %406, align 4
  %415 = load ptr, ptr %274, align 4
  %416 = load i32, ptr %275, align 8
  %417 = load ptr, ptr %291, align 4
  %418 = getelementptr inbounds %struct.sk_buff, ptr %287, i32 0, i32 5
  %419 = load i32, ptr %418, align 8
  %420 = getelementptr inbounds %struct.urb, ptr %414, i32 0, i32 8
  store ptr %415, ptr %420, align 4
  %421 = getelementptr inbounds %struct.urb, ptr %414, i32 0, i32 10
  store i32 %416, ptr %421, align 4
  %422 = getelementptr inbounds %struct.urb, ptr %414, i32 0, i32 14
  store ptr %417, ptr %422, align 4
  %423 = getelementptr inbounds %struct.urb, ptr %414, i32 0, i32 19
  store i32 %419, ptr %423, align 4
  %424 = getelementptr inbounds %struct.urb, ptr %414, i32 0, i32 28
  store ptr @tx_complete, ptr %424, align 4
  %425 = getelementptr inbounds %struct.urb, ptr %414, i32 0, i32 27
  store ptr %287, ptr %425, align 4
  %426 = load i32, ptr %418, align 8
  %427 = load i32, ptr %276, align 4
  %428 = urem i32 %426, %427
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %435

430:                                              ; preds = %413
  %431 = load ptr, ptr %406, align 4
  %432 = getelementptr inbounds %struct.urb, ptr %431, i32 0, i32 13
  %433 = load i32, ptr %432, align 4
  %434 = or i32 %433, 64
  store i32 %434, ptr %432, align 4
  br label %435

435:                                              ; preds = %430, %413
  %436 = load volatile i32, ptr %5, align 4
  %437 = and i32 %436, 128
  %438 = icmp eq i32 %437, 0
  %439 = load ptr, ptr %406, align 4
  br i1 %438, label %446, label %440

440:                                              ; preds = %435
  %441 = getelementptr i8, ptr %0, i32 268
  call void @usb_anchor_urb(ptr noundef %439, ptr noundef %441) #21
  %442 = load ptr, ptr %4, align 8
  %443 = getelementptr inbounds %struct.net_device, ptr %442, i32 0, i32 87
  %444 = load ptr, ptr %443, align 64
  %445 = getelementptr inbounds %struct.netdev_queue, ptr %444, i32 0, i32 12
  call void @_set_bit(i32 noundef 0, ptr noundef %445) #21
  call void @_raw_spin_unlock_irqrestore(ptr noundef %272, i32 noundef %408) #21
  br label %495

446:                                              ; preds = %435
  %447 = call i32 @usb_submit_urb(ptr noundef %439, i32 noundef 2592) #21
  switch i32 %447, label %476 [
    i32 0, label %448
    i32 -32, label %463
    i32 -19, label %474
    i32 -2, label %474
  ]

448:                                              ; preds = %446
  %449 = load ptr, ptr %4, align 8
  %450 = getelementptr inbounds %struct.net_device, ptr %449, i32 0, i32 87
  %451 = load ptr, ptr %450, align 64
  %452 = load volatile i32, ptr @jiffies, align 64
  %453 = getelementptr inbounds %struct.netdev_queue, ptr %451, i32 0, i32 11
  %454 = load volatile i32, ptr %453, align 8
  %455 = icmp eq i32 %454, %452
  br i1 %455, label %457, label %456

456:                                              ; preds = %448
  store volatile i32 %452, ptr %453, align 8
  br label %457

457:                                              ; preds = %456, %448
  %458 = load ptr, ptr %278, align 4
  store volatile ptr %271, ptr %287, align 8
  %459 = getelementptr inbounds %struct.anon.49, ptr %287, i32 0, i32 1
  store volatile ptr %458, ptr %459, align 4
  store volatile ptr %287, ptr %278, align 4
  store volatile ptr %287, ptr %458, align 4
  %460 = load i32, ptr %279, align 4
  %461 = add i32 %460, 1
  store volatile i32 %461, ptr %279, align 4
  %462 = getelementptr inbounds %struct.sk_buff, ptr %287, i32 0, i32 3, i32 8
  store i32 1, ptr %462, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %272, i32 noundef %408) #21
  br label %492

463:                                              ; preds = %446
  %464 = load ptr, ptr %4, align 8
  %465 = getelementptr inbounds %struct.net_device, ptr %464, i32 0, i32 87
  %466 = load ptr, ptr %465, align 64
  %467 = getelementptr inbounds %struct.netdev_queue, ptr %466, i32 0, i32 12
  call void @_set_bit(i32 noundef 0, ptr noundef %467) #21
  call void @_set_bit(i32 noundef 0, ptr noundef %5) #21
  %468 = load ptr, ptr @system_wq, align 4
  %469 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %468, ptr noundef %277, i32 noundef 0) #21
  br i1 %469, label %472, label %470

470:                                              ; preds = %463
  %471 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %471, ptr noundef nonnull @.str.10, i32 noundef 0) #22
  br label %472

472:                                              ; preds = %470, %463
  %473 = load ptr, ptr %273, align 8
  call void @usb_autopm_put_interface_async(ptr noundef %473) #21
  br label %478

474:                                              ; preds = %446, %446
  %475 = load ptr, ptr %4, align 8
  call void @netif_device_detach(ptr noundef %475) #21
  br label %478

476:                                              ; preds = %446
  %477 = load ptr, ptr %273, align 8
  call void @usb_autopm_put_interface_async(ptr noundef %477) #21
  br label %478

478:                                              ; preds = %476, %474, %472
  call void @_raw_spin_unlock_irqrestore(ptr noundef %272, i32 noundef %408) #21
  %479 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %479, ptr noundef nonnull @.str.11, i32 noundef %447) #22
  br label %480

480:                                              ; preds = %478, %412
  %481 = phi i32 [ %410, %412 ], [ %447, %478 ]
  %482 = load i32, ptr %293, align 4
  %483 = load ptr, ptr %4, align 8
  %484 = getelementptr inbounds %struct.net_device, ptr %483, i32 0, i32 36, i32 7
  %485 = load i32, ptr %484, align 4
  %486 = add i32 %485, %482
  store i32 %486, ptr %484, align 4
  %487 = getelementptr inbounds %struct.sk_buff, ptr %287, i32 0, i32 16
  %488 = load ptr, ptr %487, align 8
  store ptr %488, ptr %291, align 4
  %489 = getelementptr inbounds %struct.sk_buff, ptr %287, i32 0, i32 14
  store ptr %488, ptr %489, align 8
  %490 = getelementptr inbounds %struct.sk_buff, ptr %287, i32 0, i32 5
  store i32 0, ptr %490, align 8
  %491 = getelementptr inbounds %struct.sk_buff, ptr %287, i32 0, i32 6
  store i32 0, ptr %491, align 4
  call void @skb_queue_tail(ptr noundef %266, ptr noundef nonnull %287) #21
  br label %492

492:                                              ; preds = %480, %457
  %493 = phi i32 [ %481, %480 ], [ 0, %457 ]
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %280, label %495

495:                                              ; preds = %492, %440, %286, %283, %280, %211, %205
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  %496 = icmp slt i32 %192, %1
  br i1 %496, label %497, label %534

497:                                              ; preds = %495
  %498 = call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %192) #21
  %499 = load ptr, ptr %41, align 4
  %500 = icmp eq ptr %499, %41
  br i1 %500, label %504, label %501

501:                                              ; preds = %497
  %502 = call zeroext i1 @napi_schedule_prep(ptr noundef %0) #21
  br i1 %502, label %503, label %534

503:                                              ; preds = %501
  call void @__napi_schedule(ptr noundef %0) #21
  br label %534

504:                                              ; preds = %497
  %505 = load ptr, ptr %4, align 8
  %506 = getelementptr inbounds %struct.net_device, ptr %505, i32 0, i32 6
  %507 = load volatile i32, ptr %506, align 4
  %508 = and i32 %507, 4
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %510, label %534

510:                                              ; preds = %504
  %511 = getelementptr i8, ptr %0, i32 -36
  %512 = load ptr, ptr %511, align 4
  %513 = icmp eq ptr %512, %511
  br i1 %513, label %514, label %521

514:                                              ; preds = %510
  %515 = getelementptr i8, ptr %0, i32 -20
  %516 = load ptr, ptr %515, align 4
  %517 = icmp eq ptr %516, %515
  br i1 %517, label %521, label %518

518:                                              ; preds = %514
  %519 = call zeroext i1 @napi_schedule_prep(ptr noundef %0) #21
  br i1 %519, label %520, label %534

520:                                              ; preds = %518
  call void @__napi_schedule(ptr noundef %0) #21
  br label %534

521:                                              ; preds = %514, %510
  call void @netif_tx_lock(ptr noundef %505) #21
  %522 = load ptr, ptr %4, align 8
  %523 = getelementptr inbounds %struct.net_device, ptr %522, i32 0, i32 87
  %524 = load ptr, ptr %523, align 64
  %525 = getelementptr inbounds %struct.netdev_queue, ptr %524, i32 0, i32 12
  %526 = load volatile i32, ptr %525, align 4
  %527 = and i32 %526, 1
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %532, label %529

529:                                              ; preds = %521
  call void @netif_tx_wake_queue(ptr noundef %524) #21
  %530 = call zeroext i1 @napi_schedule_prep(ptr noundef %0) #21
  br i1 %530, label %531, label %532

531:                                              ; preds = %529
  call void @__napi_schedule(ptr noundef %0) #21
  br label %532

532:                                              ; preds = %531, %529, %521
  %533 = load ptr, ptr %4, align 8
  call void @netif_tx_unlock(ptr noundef %533) #21
  br label %534

534:                                              ; preds = %532, %520, %518, %504, %503, %501, %495, %9
  %535 = phi i32 [ 0, %9 ], [ %1, %495 ], [ %192, %504 ], [ %192, %532 ], [ %192, %501 ], [ %192, %503 ], [ %192, %518 ], [ %192, %520 ]
  ret i32 %535
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lan78xx_delayedwork(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ethtool_link_ksettings, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -368
  %7 = getelementptr i8, ptr %0, i32 144
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1024
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %271

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %0, i32 -360
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @usb_autopm_get_interface(ptr noundef %13) #21
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %271, label %16

16:                                               ; preds = %11
  %17 = load volatile i32, ptr %7, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %0, i32 -252
  tail call fastcc void @unlink_urbs(ptr noundef %21)
  %22 = getelementptr i8, ptr %0, i32 -364
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %0, i32 128
  %25 = load i32, ptr %24, align 8
  %26 = tail call i32 @usb_clear_halt(ptr noundef %23, i32 noundef %25) #21
  %27 = freeze i32 %26
  %28 = icmp slt i32 %27, 0
  %29 = icmp eq i32 %27, -108
  br i1 %28, label %30, label %38

30:                                               ; preds = %20
  switch i32 %27, label %31 [
    i32 -32, label %38
    i32 -108, label %38
  ]

31:                                               ; preds = %30
  %32 = getelementptr i8, ptr %0, i32 44
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 128
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str.12, i32 noundef %27) #22
  br label %43

38:                                               ; preds = %30, %30, %20
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %7) #21
  br i1 %29, label %43, label %39

39:                                               ; preds = %38
  %40 = load ptr, ptr %6, align 8
  %41 = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 87
  %42 = load ptr, ptr %41, align 64
  tail call void @netif_tx_wake_queue(ptr noundef %42) #21
  br label %43

43:                                               ; preds = %39, %38, %36, %31, %16
  %44 = load volatile i32, ptr %7, align 4
  %45 = and i32 %44, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %68, label %47

47:                                               ; preds = %43
  %48 = getelementptr i8, ptr %0, i32 -316
  tail call fastcc void @unlink_urbs(ptr noundef %48)
  %49 = getelementptr i8, ptr %0, i32 -364
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %0, i32 124
  %52 = load i32, ptr %51, align 4
  %53 = tail call i32 @usb_clear_halt(ptr noundef %50, i32 noundef %52) #21
  %54 = freeze i32 %53
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %47
  switch i32 %54, label %57 [
    i32 -32, label %64
    i32 -108, label %64
  ]

57:                                               ; preds = %56
  %58 = getelementptr i8, ptr %0, i32 44
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 64
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %63, ptr noundef nonnull @.str.13, i32 noundef %54) #22
  br label %68

64:                                               ; preds = %56, %56, %47
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %7) #21
  %65 = getelementptr i8, ptr %0, i32 -216
  %66 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %65) #21
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  tail call void @__napi_schedule(ptr noundef %65) #21
  br label %68

68:                                               ; preds = %67, %64, %62, %57, %43
  %69 = load volatile i32, ptr %7, align 4
  %70 = and i32 %69, 16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %254, label %72

72:                                               ; preds = %68
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %7) #21
  %73 = load ptr, ptr %6, align 8
  %74 = getelementptr inbounds %struct.net_device, ptr %73, i32 0, i32 120
  %75 = load ptr, ptr %74, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %4, i8 0, i32 88, i1 false) #21, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store i32 0, ptr %5, align 4, !annotation !13
  %76 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %6, i32 noundef 12, i32 noundef 131072) #21
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %252, label %78, !prof !16

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.phy_device, ptr %75, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %79) #21
  %80 = getelementptr inbounds %struct.phy_device, ptr %75, i32 0, i32 1
  %81 = load ptr, ptr %80, align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %91, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.phy_driver, ptr %81, i32 0, i32 15
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = tail call i32 %85(ptr noundef %75) #21
  br label %91

89:                                               ; preds = %83
  %90 = tail call i32 @genphy_read_status(ptr noundef %75) #21
  br label %91

91:                                               ; preds = %89, %87, %78
  %92 = getelementptr inbounds %struct.phy_device, ptr %75, i32 0, i32 4
  %93 = load i16, ptr %92, align 8
  tail call void @mutex_unlock(ptr noundef %79) #21
  %94 = and i16 %93, 8192
  %95 = icmp eq i16 %94, 0
  %96 = getelementptr i8, ptr %0, i32 200
  %97 = load i32, ptr %96, align 8
  %98 = icmp eq i32 %97, 0
  br i1 %95, label %99, label %142

99:                                               ; preds = %91
  br i1 %98, label %251, label %100

100:                                              ; preds = %99
  store i32 0, ptr %96, align 8
  %101 = load volatile i32, ptr @jiffies, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 0, ptr %3, align 4, !annotation !13
  %102 = getelementptr i8, ptr %0, i32 104
  tail call void @mutex_lock(ptr noundef %102) #21
  %103 = load volatile i32, ptr @jiffies, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  store i32 0, ptr %2, align 4, !annotation !13
  %104 = add i32 %103, 100
  br label %105

105:                                              ; preds = %112, %100
  %106 = call fastcc i32 @lan78xx_read_reg(ptr noundef %6, i32 noundef 288, ptr noundef nonnull %2) #21
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %116, label %108, !prof !16

108:                                              ; preds = %105
  %109 = load i32, ptr %2, align 4
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %108
  %113 = load volatile i32, ptr @jiffies, align 64
  %114 = sub i32 %104, %113
  %115 = icmp sgt i32 %114, -1
  br i1 %115, label %105, label %116

116:                                              ; preds = %112, %105
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %138

117:                                              ; preds = %108
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  %118 = call fastcc i32 @lan78xx_read_reg(ptr noundef %6, i32 noundef 256, ptr noundef nonnull %3) #21
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %138, label %120

120:                                              ; preds = %117
  %121 = load i32, ptr %3, align 4
  %122 = or i32 %121, 1
  store i32 %122, ptr %3, align 4
  %123 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %6, i32 noundef 256, i32 noundef %122) #21
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %138, label %125

125:                                              ; preds = %120
  %126 = add i32 %101, 100
  br label %127

127:                                              ; preds = %134, %125
  %128 = call fastcc i32 @lan78xx_read_reg(ptr noundef %6, i32 noundef 256, ptr noundef nonnull %3) #21
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %127
  %131 = load i32, ptr %3, align 4
  %132 = and i32 %131, 1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %130
  %135 = load volatile i32, ptr @jiffies, align 64
  %136 = sub i32 %126, %135
  %137 = icmp sgt i32 %136, -1
  br i1 %137, label %127, label %138

138:                                              ; preds = %134, %127, %120, %117, %116
  tail call void @mutex_unlock(ptr noundef %102) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  br label %252

139:                                              ; preds = %130
  tail call void @mutex_unlock(ptr noundef %102) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  %140 = getelementptr i8, ptr %0, i32 160
  %141 = tail call i32 @del_timer(ptr noundef %140) #21
  br label %251

142:                                              ; preds = %91
  br i1 %98, label %143, label %251

143:                                              ; preds = %142
  store i32 1, ptr %96, align 8
  call void @phy_ethtool_ksettings_get(ptr noundef %75, ptr noundef nonnull %4) #21
  %144 = getelementptr i8, ptr %0, i32 -364
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.usb_device, ptr %145, i32 0, i32 4
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 5
  br i1 %148, label %149, label %175

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.ethtool_link_settings, ptr %4, i32 0, i32 1
  %151 = load i32, ptr %150, align 4
  %152 = icmp eq i32 %151, 1000
  %153 = call fastcc i32 @lan78xx_read_reg(ptr noundef %6, i32 noundef 132, ptr noundef nonnull %5) #21
  %154 = icmp slt i32 %153, 0
  br i1 %152, label %155, label %169

155:                                              ; preds = %149
  br i1 %154, label %252, label %156

156:                                              ; preds = %155
  %157 = load i32, ptr %5, align 4
  %158 = and i32 %157, -4097
  store i32 %158, ptr %5, align 4
  %159 = call fastcc i32 @lan78xx_write_reg(ptr noundef %6, i32 noundef 132, i32 noundef %158) #21
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %252, label %161

161:                                              ; preds = %156
  %162 = call fastcc i32 @lan78xx_read_reg(ptr noundef %6, i32 noundef 132, ptr noundef nonnull %5) #21
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %252, label %164

164:                                              ; preds = %161
  %165 = load i32, ptr %5, align 4
  %166 = or i32 %165, 1024
  %167 = call fastcc i32 @lan78xx_write_reg(ptr noundef %6, i32 noundef 132, i32 noundef %166) #21
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %252, label %175

169:                                              ; preds = %149
  br i1 %154, label %252, label %170

170:                                              ; preds = %169
  %171 = load i32, ptr %5, align 4
  %172 = or i32 %171, 5120
  store i32 %172, ptr %5, align 4
  %173 = call fastcc i32 @lan78xx_write_reg(ptr noundef %6, i32 noundef 132, i32 noundef %172) #21
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %252, label %175

175:                                              ; preds = %170, %164, %143
  %176 = getelementptr inbounds %struct.mdio_device, ptr %75, i32 0, i32 1
  %177 = load ptr, ptr %176, align 8
  %178 = getelementptr inbounds %struct.mdio_device, ptr %75, i32 0, i32 6
  %179 = load i32, ptr %178, align 8
  %180 = call i32 @mdiobus_read(ptr noundef %177, i32 noundef %179, i32 noundef 4) #21
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %252, label %182

182:                                              ; preds = %175
  %183 = load ptr, ptr %176, align 8
  %184 = load i32, ptr %178, align 8
  %185 = call i32 @mdiobus_read(ptr noundef %183, i32 noundef %184, i32 noundef 5) #21
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %252, label %187

187:                                              ; preds = %182
  %188 = trunc i32 %185 to i16
  %189 = getelementptr i8, ptr %0, i32 224
  %190 = load i32, ptr %189, align 8
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %206, label %192

192:                                              ; preds = %187
  %193 = and i32 %185, %180
  %194 = and i32 %193, 1024
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %209

196:                                              ; preds = %192
  %197 = and i32 %193, 2048
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %209, label %199

199:                                              ; preds = %196
  %200 = and i32 %180, 1024
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %199
  %203 = lshr i16 %188, 10
  %204 = trunc i16 %203 to i8
  %205 = and i8 %204, 1
  br label %209

206:                                              ; preds = %187
  %207 = getelementptr i8, ptr %0, i32 228
  %208 = load i8, ptr %207, align 4
  br label %209

209:                                              ; preds = %206, %202, %199, %196, %192
  %210 = phi i8 [ %208, %206 ], [ 0, %196 ], [ 3, %192 ], [ 2, %199 ], [ %205, %202 ]
  %211 = zext i8 %210 to i32
  %212 = and i32 %211, 1
  %213 = icmp eq i32 %212, 0
  %214 = select i1 %213, i32 0, i32 1073807359
  %215 = shl i32 %211, 28
  %216 = and i32 %215, 536870912
  %217 = or i32 %214, %216
  %218 = load ptr, ptr %144, align 4
  %219 = getelementptr inbounds %struct.usb_device, ptr %218, i32 0, i32 4
  %220 = load i32, ptr %219, align 4
  %221 = icmp eq i32 %220, 3
  %222 = select i1 %221, i32 529, i32 0
  %223 = icmp eq i32 %220, 5
  %224 = select i1 %223, i32 2066, i32 %222
  %225 = call fastcc i32 @lan78xx_write_reg(ptr noundef %6, i32 noundef 208, i32 noundef %224) #21
  %226 = call fastcc i32 @lan78xx_write_reg(ptr noundef %6, i32 noundef 268, i32 noundef %217) #21
  %227 = getelementptr i8, ptr %0, i32 164
  %228 = load volatile ptr, ptr %227, align 4
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %236

230:                                              ; preds = %209
  %231 = getelementptr i8, ptr %0, i32 160
  %232 = getelementptr i8, ptr %0, i32 232
  store i32 1, ptr %232, align 8
  %233 = load volatile i32, ptr @jiffies, align 64
  %234 = add i32 %233, 1000
  %235 = call i32 @mod_timer(ptr noundef %231, i32 noundef %234) #21
  br label %236

236:                                              ; preds = %230, %209
  %237 = getelementptr i8, ptr %0, i32 -332
  br label %238

238:                                              ; preds = %244, %236
  %239 = load ptr, ptr %237, align 4
  %240 = icmp eq ptr %239, %237
  br i1 %240, label %247, label %241

241:                                              ; preds = %238
  %242 = call ptr @skb_dequeue(ptr noundef %237) #21
  %243 = icmp eq ptr %242, null
  br i1 %243, label %247, label %244

244:                                              ; preds = %241
  %245 = call fastcc i32 @rx_submit(ptr noundef %6, ptr noundef nonnull %242) #21
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %238, label %247

247:                                              ; preds = %244, %241, %238
  %248 = getelementptr i8, ptr %0, i32 -216
  %249 = call zeroext i1 @napi_schedule_prep(ptr noundef %248) #21
  br i1 %249, label %250, label %251

250:                                              ; preds = %247
  call void @__napi_schedule(ptr noundef %248) #21
  br label %251

251:                                              ; preds = %250, %247, %142, %139, %99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #21
  br label %254

252:                                              ; preds = %182, %175, %170, %169, %164, %161, %156, %155, %138, %72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #21
  %253 = load ptr, ptr %6, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %253, ptr noundef nonnull @.str.14, i32 noundef 0) #22
  br label %254

254:                                              ; preds = %252, %251, %68
  %255 = load volatile i32, ptr %7, align 4
  %256 = and i32 %255, 512
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %269, label %258

258:                                              ; preds = %254
  call fastcc void @lan78xx_update_stats(ptr noundef %6)
  call void @_clear_bit(i32 noundef 9, ptr noundef %7) #21
  %259 = getelementptr i8, ptr %0, i32 160
  %260 = load volatile i32, ptr @jiffies, align 64
  %261 = getelementptr i8, ptr %0, i32 232
  %262 = load i32, ptr %261, align 8
  %263 = mul i32 %262, 1000
  %264 = add i32 %263, %260
  %265 = call i32 @mod_timer(ptr noundef %259, i32 noundef %264) #21
  %266 = load i32, ptr %261, align 8
  %267 = shl i32 %266, 1
  %268 = call i32 @llvm.smin.i32(i32 %267, i32 50)
  store i32 %268, ptr %261, align 8
  br label %269

269:                                              ; preds = %258, %254
  %270 = load ptr, ptr %12, align 8
  call void @usb_autopm_put_interface(ptr noundef %270) #21
  br label %271

271:                                              ; preds = %269, %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lan78xx_stat_monitor(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -16
  tail call void @_set_bit(i32 noundef 9, ptr noundef %2) #21
  %3 = getelementptr i8, ptr %0, i32 -160
  %4 = load ptr, ptr @system_wq, align 4
  %5 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %4, ptr noundef %3, i32 noundef 0) #21
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -528
  %8 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.10, i32 noundef 9) #22
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lan78xx_bind(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 908) #24
  %5 = ptrtoint ptr %4 to i32
  %6 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 33
  store i32 %5, ptr %6, align 4
  %7 = icmp eq ptr %4, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.27) #22
  br label %143

10:                                               ; preds = %1
  store ptr %0, ptr %4, align 8
  %11 = getelementptr inbounds %struct.lan78xx_priv, ptr %4, i32 0, i32 6
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.lan78xx_priv, ptr %4, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %12, ptr noundef nonnull @.str.28, ptr noundef nonnull @lan78xx_bind.__key) #21
  %13 = getelementptr inbounds %struct.lan78xx_priv, ptr %4, i32 0, i32 7
  store i32 -32, ptr %13, align 8
  %14 = getelementptr inbounds %struct.lan78xx_priv, ptr %4, i32 0, i32 7, i32 1
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.lan78xx_priv, ptr %4, i32 0, i32 7, i32 1, i32 1
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.lan78xx_priv, ptr %4, i32 0, i32 7, i32 2
  store ptr @lan78xx_deferred_multicast_write, ptr %16, align 4
  %17 = getelementptr i8, ptr %4, i32 336
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(512) %17, i8 0, i32 512, i1 false)
  %18 = getelementptr inbounds %struct.lan78xx_priv, ptr %4, i32 0, i32 8
  store i32 -32, ptr %18, align 8
  %19 = getelementptr inbounds %struct.lan78xx_priv, ptr %4, i32 0, i32 8, i32 1
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr inbounds %struct.lan78xx_priv, ptr %4, i32 0, i32 8, i32 1, i32 1
  store ptr %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.lan78xx_priv, ptr %4, i32 0, i32 8, i32 2
  store ptr @lan78xx_deferred_vlan_write, ptr %21, align 4
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 23
  store i64 0, ptr %23, align 16
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 23
  %26 = load i64, ptr %25, align 16
  %27 = or i64 %26, 8
  store i64 %27, ptr %25, align 16
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 23
  %30 = load i64, ptr %29, align 16
  %31 = or i64 %30, 1099511627776
  store i64 %31, ptr %29, align 16
  %32 = load ptr, ptr %0, align 8
  %33 = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 23
  %34 = load i64, ptr %33, align 16
  %35 = or i64 %34, 1114113
  store i64 %35, ptr %33, align 16
  %36 = load ptr, ptr %0, align 8
  %37 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 23
  %38 = load i64, ptr %37, align 16
  %39 = or i64 %38, 256
  store i64 %39, ptr %37, align 16
  %40 = load ptr, ptr %0, align 8
  %41 = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 23
  %42 = load i64, ptr %41, align 16
  %43 = or i64 %42, 512
  store i64 %43, ptr %41, align 16
  %44 = load ptr, ptr %0, align 8
  %45 = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 23
  %46 = load i64, ptr %45, align 16
  %47 = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 24
  store i64 %46, ptr %47, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  store i32 0, ptr %2, align 4, !annotation !13
  %48 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 15, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 25
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 44
  %55 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 44, i32 5
  tail call void @__mutex_init(ptr noundef %55, ptr noundef nonnull @.str.34, ptr noundef nonnull @lan78xx_setup_irq_domain.__key) #21
  %56 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 152, ptr noundef nonnull %2) #21
  %57 = load i32, ptr %2, align 4
  %58 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 44, i32 4
  store i32 %57, ptr %58, align 8
  %59 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 44, i32 2
  store ptr @lan78xx_irqchip, ptr %59, align 8
  %60 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 44, i32 3
  store ptr @handle_simple_irq, ptr %60, align 4
  %61 = icmp eq ptr %53, null
  %62 = getelementptr inbounds %struct.device_node, ptr %53, i32 0, i32 3
  %63 = select i1 %61, ptr null, ptr %62
  %64 = tail call ptr @irq_domain_create_simple(ptr noundef %63, i32 noundef 32, i32 noundef 0, ptr noundef nonnull @chip_domain_ops, ptr noundef %54) #21
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %10
  %67 = tail call i32 @irq_create_mapping_affinity(ptr noundef nonnull %64, i32 noundef 17, ptr noundef null) #21
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  tail call void @irq_domain_remove(ptr noundef nonnull %64) #21
  br label %70

70:                                               ; preds = %69, %10
  store ptr null, ptr %54, align 8
  %71 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 44, i32 1
  store i32 0, ptr %71, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  %72 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %72, ptr noundef nonnull @.str.29, i32 noundef -22) #22
  br label %138

73:                                               ; preds = %66
  store ptr %64, ptr %54, align 8
  %74 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 44, i32 1
  store i32 %67, ptr %74, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  %75 = tail call fastcc i32 @lan78xx_reset(ptr noundef %0)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %127

77:                                               ; preds = %73
  %78 = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #21
  %79 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 38
  store ptr %78, ptr %79, align 8
  %80 = icmp eq ptr %78, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %82, ptr noundef nonnull @.str.41) #22
  br label %127

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.mii_bus, ptr %78, i32 0, i32 3
  store ptr %0, ptr %84, align 8
  %85 = load ptr, ptr %79, align 8
  %86 = getelementptr inbounds %struct.mii_bus, ptr %85, i32 0, i32 4
  store ptr @lan78xx_mdiobus_read, ptr %86, align 4
  %87 = load ptr, ptr %79, align 8
  %88 = getelementptr inbounds %struct.mii_bus, ptr %87, i32 0, i32 5
  store ptr @lan78xx_mdiobus_write, ptr %88, align 8
  %89 = load ptr, ptr %79, align 8
  %90 = getelementptr inbounds %struct.mii_bus, ptr %89, i32 0, i32 1
  store ptr @.str.42, ptr %90, align 4
  %91 = load ptr, ptr %48, align 4
  %92 = getelementptr inbounds %struct.usb_device, ptr %91, i32 0, i32 15
  %93 = load ptr, ptr %79, align 8
  %94 = getelementptr inbounds %struct.mii_bus, ptr %93, i32 0, i32 9
  store ptr %92, ptr %94, align 4
  %95 = load ptr, ptr %79, align 8
  %96 = getelementptr inbounds %struct.mii_bus, ptr %95, i32 0, i32 2
  %97 = load ptr, ptr %48, align 4
  %98 = getelementptr inbounds %struct.usb_device, ptr %97, i32 0, i32 12
  %99 = load ptr, ptr %98, align 8
  %100 = getelementptr inbounds %struct.usb_bus, ptr %99, i32 0, i32 2
  %101 = load i32, ptr %100, align 4
  %102 = load i32, ptr %97, align 8
  %103 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %96, i32 noundef 61, ptr noundef nonnull @.str.43, i32 noundef %101, i32 noundef %102) #21
  %104 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 36
  %105 = load i32, ptr %104, align 8
  switch i32 %105, label %111 [
    i32 30720, label %107
    i32 30800, label %107
    i32 30721, label %106
  ]

106:                                              ; preds = %83
  br label %107

107:                                              ; preds = %106, %83, %83
  %108 = phi i32 [ -256, %106 ], [ -3, %83 ], [ -3, %83 ]
  %109 = load ptr, ptr %79, align 8
  %110 = getelementptr inbounds %struct.mii_bus, ptr %109, i32 0, i32 13
  store i32 %108, ptr %110, align 8
  br label %111

111:                                              ; preds = %107, %83
  %112 = load ptr, ptr %48, align 4
  %113 = getelementptr inbounds %struct.usb_device, ptr %112, i32 0, i32 15, i32 25
  %114 = load ptr, ptr %113, align 8
  %115 = tail call ptr @of_get_child_by_name(ptr noundef %114, ptr noundef nonnull @.str.44) #21
  %116 = load ptr, ptr %79, align 8
  %117 = tail call i32 @of_mdiobus_register(ptr noundef %116, ptr noundef %115) #21
  tail call void @of_node_put(ptr noundef %115) #21
  %118 = icmp eq i32 %117, 0
  %119 = load ptr, ptr %0, align 8
  br i1 %118, label %122, label %120

120:                                              ; preds = %111
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %119, ptr noundef nonnull @.str.45) #22
  %121 = load ptr, ptr %79, align 8
  tail call void @mdiobus_free(ptr noundef %121) #21
  br label %127

122:                                              ; preds = %111
  %123 = getelementptr inbounds %struct.net_device, ptr %119, i32 0, i32 14
  %124 = load i32, ptr %123, align 8
  %125 = or i32 %124, 4096
  store i32 %125, ptr %123, align 8
  %126 = getelementptr inbounds %struct.lan78xx_priv, ptr %4, i32 0, i32 9
  store i32 32, ptr %126, align 8
  br label %143

127:                                              ; preds = %120, %81, %73
  %128 = phi ptr [ @.str.30, %73 ], [ @.str.31, %120 ], [ @.str.31, %81 ]
  %129 = phi i32 [ %75, %73 ], [ %117, %120 ], [ -12, %81 ]
  %130 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %130, ptr noundef nonnull %128) #22
  %131 = load i32, ptr %74, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %127
  tail call void @irq_dispose_mapping(i32 noundef %131) #21
  %134 = load ptr, ptr %54, align 8
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %133
  tail call void @irq_domain_remove(ptr noundef nonnull %134) #21
  br label %137

137:                                              ; preds = %136, %133, %127
  store i32 0, ptr %74, align 4
  store ptr null, ptr %54, align 8
  br label %138

138:                                              ; preds = %137, %70
  %139 = phi i32 [ -22, %70 ], [ %129, %137 ]
  %140 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %140, ptr noundef nonnull @.str.32) #22
  %141 = tail call zeroext i1 @cancel_work_sync(ptr noundef %13) #21
  %142 = tail call zeroext i1 @cancel_work_sync(ptr noundef %18) #21
  tail call void @kfree(ptr noundef nonnull %4) #21
  br label %143

143:                                              ; preds = %138, %122, %8
  %144 = phi i32 [ %139, %138 ], [ 0, %122 ], [ -12, %8 ]
  ret i32 %144
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @usb_maxpacket(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = lshr i32 %1, 15
  %5 = and i32 %4, 15
  %6 = icmp eq i32 %2, 0
  %7 = and i32 %1, 128
  %8 = icmp eq i32 %7, 0
  br i1 %6, label %13, label %9

9:                                                ; preds = %3
  br i1 %8, label %11, label %10, !prof !14

10:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 1981, i32 noundef 9, ptr noundef null) #21
  br label %11

11:                                               ; preds = %10, %9
  %12 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 22, i32 %5
  br label %17

13:                                               ; preds = %3
  br i1 %8, label %14, label %15, !prof !16

14:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 1984, i32 noundef 9, ptr noundef null) #21
  br label %15

15:                                               ; preds = %14, %13
  %16 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 21, i32 %5
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi ptr [ %12, %11 ], [ %16, %15 ]
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %19, i32 0, i32 4
  %23 = load i16, ptr %22, align 1
  %24 = and i16 %23, 2047
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i16 [ %24, %21 ], [ 0, %17 ]
  ret i16 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @intr_complete(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %34 [
    i32 0, label %6
    i32 -2, label %60
    i32 -19, label %60
    i32 -108, label %60
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str.49, i32 noundef %8) #22
  br label %34

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 14
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 1
  %16 = and i32 %15, 131072
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.lan78xx_net, ptr %3, i32 0, i32 28
  tail call void @_set_bit(i32 noundef 4, ptr noundef %19) #21
  %20 = getelementptr inbounds %struct.lan78xx_net, ptr %3, i32 0, i32 17
  %21 = load ptr, ptr @system_wq, align 4
  %22 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %21, ptr noundef %20, i32 noundef 0) #21
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %24, ptr noundef nonnull @.str.10, i32 noundef 4) #22
  br label %25

25:                                               ; preds = %23, %18
  %26 = getelementptr inbounds %struct.lan78xx_net, ptr %3, i32 0, i32 44, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #21, !srcloc !17
  %30 = load i32, ptr %26, align 4
  %31 = tail call i32 @generic_handle_irq(i32 noundef %30) #21
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #21, !srcloc !11
  br label %34

32:                                               ; preds = %12
  %33 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %33, ptr noundef nonnull @.str.50, i32 noundef %15) #22
  br label %34

34:                                               ; preds = %32, %29, %25, %10, %1
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 6
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load volatile i32, ptr %36, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %34
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %35, ptr noundef nonnull @.str.47) #22
  br label %60

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 14
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 19
  %49 = load i32, ptr %48, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %47, i8 0, i32 %49, i1 false)
  %50 = tail call i32 @usb_submit_urb(ptr noundef %0, i32 noundef 2592) #21
  switch i32 %50, label %53 [
    i32 0, label %60
    i32 -19, label %51
    i32 -2, label %51
  ]

51:                                               ; preds = %45, %45
  %52 = load ptr, ptr %3, align 8
  tail call void @netif_device_detach(ptr noundef %52) #21
  br label %60

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.lan78xx_net, ptr %3, i32 0, i32 18
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %59, ptr noundef nonnull @.str.48, i32 noundef %50) #22
  br label %60

60:                                               ; preds = %58, %53, %51, %45, %44, %1, %1, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lan78xx_phy_init(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fixed_phy_status, align 4
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false)
  %6 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 36
  %7 = load i32, ptr %6, align 8
  switch i32 %7, label %63 [
    i32 30721, label %8
    i32 30720, label %51
    i32 30800, label %51
  ]

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  store i32 0, ptr %2, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #21
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) @__const.lan7801_phy_init.fphy_status, i32 20, i1 false) #21
  %9 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 38
  %10 = load ptr, ptr %9, align 8
  %11 = tail call ptr @phy_find_first(ptr noundef %10) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = call ptr @fixed_phy_register(i32 noundef -1, ptr noundef nonnull %3, ptr noundef null) #21
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %40

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %17, ptr noundef nonnull @.str.56) #22
  br label %39

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.phy_device, ptr %11, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.57) #22
  br label %39

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 39
  store i32 9, ptr %25, align 4
  %26 = tail call i32 @phy_register_fixup_for_uid(i32 noundef 2233888, i32 noundef -16, ptr noundef nonnull @ksz9031rnx_fixup) #21
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %29, ptr noundef nonnull @.str.58) #22
  br label %39

30:                                               ; preds = %24
  %31 = tail call i32 @phy_register_fixup_for_uid(i32 noundef 508208, i32 noundef -16, ptr noundef nonnull @lan8835_fixup) #21
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %34, ptr noundef nonnull @.str.59) #22
  br label %39

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.phy_device, ptr %11, i32 0, i32 4
  %37 = load i16, ptr %36, align 8
  %38 = and i16 %37, -3
  store i16 %38, ptr %36, align 8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %65

39:                                               ; preds = %33, %28, %22, %16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %49

40:                                               ; preds = %13
  %41 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 39
  store i32 9, ptr %41, align 4
  %42 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 296, i32 noundef 2) #21
  %43 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 1800, i32 noundef 15616) #21
  %44 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %2) #21
  %45 = load i32, ptr %2, align 4
  %46 = or i32 %45, 50331648
  %47 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 16, i32 noundef %46) #21
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  %48 = icmp eq ptr %14, null
  br i1 %48, label %49, label %65

49:                                               ; preds = %40, %39
  %50 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %50, ptr noundef nonnull @.str.51) #22
  br label %142

51:                                               ; preds = %1, %1
  %52 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 38
  %53 = load ptr, ptr %52, align 8
  %54 = tail call ptr @phy_find_first(ptr noundef %53) #21
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %57, ptr noundef nonnull @.str.52) #22
  br label %142

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.phy_device, ptr %54, i32 0, i32 4
  %60 = load i16, ptr %59, align 8
  %61 = or i16 %60, 2
  store i16 %61, ptr %59, align 8
  %62 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 39
  store i32 3, ptr %62, align 4
  br label %65

63:                                               ; preds = %1
  %64 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %64, ptr noundef nonnull @.str.53) #22
  br label %142

65:                                               ; preds = %58, %40, %35
  %66 = phi ptr [ %54, %58 ], [ %14, %40 ], [ %11, %35 ]
  %67 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 44, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 -1, i32 %68
  %71 = getelementptr inbounds %struct.phy_device, ptr %66, i32 0, i32 21
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.phy_device, ptr %66, i32 0, i32 34
  store i8 3, ptr %72, align 8
  %73 = load ptr, ptr %0, align 8
  %74 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 39
  %75 = load i32, ptr %74, align 4
  %76 = call i32 @phy_connect_direct(ptr noundef %73, ptr noundef nonnull %66, ptr noundef nonnull @lan78xx_link_status_change, i32 noundef %75) #21
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %94, label %78

78:                                               ; preds = %65
  %79 = load ptr, ptr %0, align 8
  %80 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 38
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %struct.mii_bus, ptr %81, i32 0, i32 2
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %79, ptr noundef nonnull @.str.54, ptr noundef %82) #22
  %83 = load i32, ptr %6, align 8
  %84 = icmp eq i32 %83, 30721
  br i1 %84, label %85, label %142

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.phy_device, ptr %66, i32 0, i32 4
  %87 = load i16, ptr %86, align 8
  %88 = and i16 %87, 4
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  call void @fixed_phy_unregister(ptr noundef nonnull %66) #21
  br label %142

91:                                               ; preds = %85
  %92 = call i32 @phy_unregister_fixup_for_uid(i32 noundef 2233888, i32 noundef -16) #21
  %93 = call i32 @phy_unregister_fixup_for_uid(i32 noundef 508208, i32 noundef -16) #21
  br label %142

94:                                               ; preds = %65
  call void @phy_remove_link_mode(ptr noundef nonnull %66, i32 noundef 4) #21
  %95 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 41
  store i8 3, ptr %95, align 4
  %96 = getelementptr inbounds %struct.phy_device, ptr %66, i32 0, i32 17
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, -24577
  store i32 %98, ptr %96, align 4
  %99 = load i8, ptr %95, align 4
  %100 = zext i8 %99 to i32
  %101 = and i32 %100, 2
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %102, i16 0, i16 24576
  %104 = and i32 %100, 1
  %105 = icmp eq i32 %104, 0
  %106 = getelementptr inbounds i8, ptr %4, i32 4
  store i64 0, ptr %106, align 4
  %107 = xor i16 %103, 16384
  %108 = select i1 %105, i16 %103, i16 %107
  %109 = zext i16 %108 to i32
  store i32 %109, ptr %4, align 4
  call void @__bitmap_or(ptr noundef %96, ptr noundef nonnull %4, ptr noundef %96, i32 noundef 92) #21
  %110 = getelementptr inbounds %struct.device, ptr %66, i32 0, i32 25
  %111 = load ptr, ptr %110, align 8
  %112 = icmp eq ptr %111, null
  br i1 %112, label %134, label %113

113:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store i32 0, ptr %5, align 4, !annotation !13
  %114 = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %111, ptr noundef nonnull @.str.55, i32 noundef 4) #21
  %115 = icmp sgt i32 %114, -1
  br i1 %115, label %116, label %133

116:                                              ; preds = %113
  %117 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %5)
  %118 = load i32, ptr %5, align 4
  %119 = and i32 %118, -15728641
  %120 = icmp eq i32 %114, 0
  %121 = select i1 %120, i32 0, i32 1048576
  %122 = icmp ugt i32 %114, 1
  %123 = select i1 %122, i32 2097152, i32 0
  %124 = or i32 %121, %123
  %125 = icmp ugt i32 %114, 2
  %126 = select i1 %125, i32 4194304, i32 0
  %127 = or i32 %124, %126
  %128 = icmp ugt i32 %114, 3
  %129 = select i1 %128, i32 8388608, i32 0
  %130 = or i32 %127, %129
  %131 = or i32 %130, %119
  %132 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 16, i32 noundef %131)
  br label %133

133:                                              ; preds = %116, %113
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  br label %134

134:                                              ; preds = %133, %94
  %135 = call i32 @__genphy_config_aneg(ptr noundef nonnull %66, i1 noundef zeroext false) #21
  %136 = getelementptr inbounds %struct.phy_device, ptr %66, i32 0, i32 4
  %137 = load i16, ptr %136, align 8
  %138 = lshr i16 %137, 12
  %139 = and i16 %138, 1
  %140 = zext i16 %139 to i32
  %141 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 40
  store i32 %140, ptr %141, align 8
  br label %142

142:                                              ; preds = %134, %91, %90, %78, %63, %56, %49
  %143 = phi i32 [ -5, %63 ], [ 0, %134 ], [ -5, %56 ], [ -5, %49 ], [ -5, %90 ], [ -5, %91 ], [ -5, %78 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  ret i32 %143
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lan78xx_unbind(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 33
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 44
  %5 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 44, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  tail call void @irq_dispose_mapping(i32 noundef %6) #21
  %9 = load ptr, ptr %4, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @irq_domain_remove(ptr noundef nonnull %9) #21
  br label %12

12:                                               ; preds = %11, %8, %1
  store i32 0, ptr %5, align 4
  store ptr null, ptr %4, align 8
  %13 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 38
  %14 = load ptr, ptr %13, align 8
  tail call void @mdiobus_unregister(ptr noundef %14) #21
  %15 = load ptr, ptr %13, align 8
  tail call void @mdiobus_free(ptr noundef %15) #21
  %16 = icmp eq i32 %3, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = inttoptr i32 %3 to ptr
  %19 = getelementptr inbounds %struct.lan78xx_priv, ptr %18, i32 0, i32 7
  %20 = tail call zeroext i1 @cancel_work_sync(ptr noundef %19) #21
  %21 = getelementptr inbounds %struct.lan78xx_priv, ptr %18, i32 0, i32 8
  %22 = tail call zeroext i1 @cancel_work_sync(ptr noundef %21) #21
  tail call void @kfree(ptr noundef nonnull %18) #21
  store i32 0, ptr %2, align 4
  br label %23

23:                                               ; preds = %17, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lan78xx_alloc_buf_pool(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.sk_buff_head, ptr %0, i32 0, i32 2
  store i32 0, ptr %5, align 4
  store ptr %0, ptr %0, align 4
  %6 = getelementptr inbounds %struct.anon.77, ptr %0, i32 0, i32 1
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.sk_buff_head, ptr %0, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %43, label %9

9:                                                ; preds = %23, %4
  %10 = phi i32 [ %28, %23 ], [ 0, %4 ]
  %11 = tail call ptr @__alloc_skb(i32 noundef %2, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %31, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %11, i32 noundef %15) #21
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %17, %13
  %21 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3
  store ptr %21, ptr %24, align 4
  %25 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 4
  store ptr %3, ptr %25, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 12
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 16
  store i32 0, ptr %27, align 4
  tail call void @skb_queue_tail(ptr noundef %0, ptr noundef nonnull %11) #21
  %28 = add nuw i32 %10, 1
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %43, label %9

30:                                               ; preds = %20, %17
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %11, i32 noundef 1) #21
  br label %31

31:                                               ; preds = %30, %9
  %32 = load ptr, ptr %0, align 4
  %33 = icmp eq ptr %32, %0
  br i1 %33, label %43, label %34

34:                                               ; preds = %40, %31
  %35 = tail call ptr @skb_dequeue(ptr noundef %0) #21
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  tail call void @usb_free_urb(ptr noundef %39) #21
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %35, i32 noundef 1) #21
  br label %40

40:                                               ; preds = %37, %34
  %41 = load ptr, ptr %0, align 4
  %42 = icmp eq ptr %41, %0
  br i1 %42, label %43, label %34

43:                                               ; preds = %40, %31, %23, %4
  %44 = phi i32 [ -12, %31 ], [ 0, %4 ], [ -12, %40 ], [ 0, %23 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rx_submit(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %4 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 23
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 8
  store ptr %8, ptr %13, align 4
  %14 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 10
  store i32 %10, ptr %14, align 4
  %15 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 14
  store ptr %12, ptr %15, align 4
  %16 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 19
  store i32 %5, ptr %16, align 4
  %17 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 28
  store ptr @rx_complete, ptr %17, align 4
  %18 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 27
  store ptr %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 10
  %20 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 10, i32 2
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #21
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 6
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %61, label %27

27:                                               ; preds = %2
  %28 = load volatile i32, ptr %23, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %61, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 28
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %31
  %37 = load volatile i32, ptr %32, align 4
  %38 = and i32 %37, 128
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %36
  %41 = tail call i32 @usb_submit_urb(ptr noundef %6, i32 noundef 2592) #21
  switch i32 %41, label %57 [
    i32 0, label %42
    i32 -32, label %50
    i32 -19, label %51
    i32 -2, label %51
    i32 -113, label %53
  ]

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  store volatile ptr %19, ptr %1, align 8
  %45 = getelementptr inbounds %struct.anon.49, ptr %1, i32 0, i32 1
  store volatile ptr %44, ptr %45, align 4
  store volatile ptr %1, ptr %43, align 4
  store volatile ptr %1, ptr %44, align 4
  %46 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 10, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1
  store volatile i32 %48, ptr %46, align 4
  %49 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  store i32 3, ptr %49, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #21
  br label %73

50:                                               ; preds = %40
  tail call fastcc void @lan78xx_defer_kevent(ptr noundef %0, i32 noundef 1)
  br label %61

51:                                               ; preds = %40, %40
  %52 = load ptr, ptr %0, align 8
  tail call void @netif_device_detach(ptr noundef %52) #21
  br label %61

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 16
  %55 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %54) #21
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  tail call void @__napi_schedule(ptr noundef %54) #21
  br label %61

57:                                               ; preds = %40
  %58 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 16
  %59 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %58) #21
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  tail call void @__napi_schedule(ptr noundef %58) #21
  br label %63

61:                                               ; preds = %56, %53, %51, %50, %36, %31, %27, %2
  %62 = phi i32 [ -67, %56 ], [ -67, %53 ], [ -67, %2 ], [ -67, %27 ], [ -67, %31 ], [ -67, %36 ], [ -32, %50 ], [ %41, %51 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #21
  br label %65

63:                                               ; preds = %60, %57
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #21
  %64 = icmp eq i32 %41, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %41, %63 ]
  %67 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 9
  %68 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %69 = load ptr, ptr %68, align 8
  store ptr %69, ptr %11, align 4
  %70 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  store ptr %69, ptr %70, align 8
  %71 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  store i32 0, ptr %71, align 8
  %72 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  store i32 0, ptr %72, align 4
  tail call void @skb_queue_tail(ptr noundef %67, ptr noundef %1) #21
  br label %73

73:                                               ; preds = %65, %63, %42
  %74 = phi i32 [ %66, %65 ], [ 0, %63 ], [ 0, %42 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rx_complete(ptr noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @skb_put(ptr noundef %3, i32 noundef %10) #21
  %12 = load ptr, ptr %4, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.lan78xx_net, ptr %6, i32 0, i32 18
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 64
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %20, ptr noundef nonnull @.str.9) #22
  br label %21

21:                                               ; preds = %19, %14, %1
  switch i32 %8, label %62 [
    i32 0, label %22
    i32 -32, label %41
    i32 -104, label %67
    i32 -108, label %67
    i32 -71, label %52
    i32 -62, label %52
    i32 -84, label %52
    i32 -75, label %57
  ]

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = icmp ult i32 %24, 24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load ptr, ptr %6, align 8
  %28 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 36, i32 4
  %29 = load i32, ptr %28, align 8
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 8
  %31 = load ptr, ptr %6, align 8
  %32 = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 36, i32 10
  %33 = load i32, ptr %32, align 8
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 8
  br label %35

35:                                               ; preds = %26, %22
  %36 = phi i32 [ 5, %26 ], [ 4, %22 ]
  %37 = getelementptr inbounds %struct.lan78xx_net, ptr %6, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i64 @ktime_get_mono_fast_ns() #21
  %40 = getelementptr inbounds %struct.usb_device, ptr %38, i32 0, i32 15, i32 11, i32 22
  store volatile i64 %39, ptr %40, align 8
  br label %67

41:                                               ; preds = %21
  %42 = load ptr, ptr %6, align 8
  %43 = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 36, i32 4
  %44 = load i32, ptr %43, align 8
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 8
  %46 = getelementptr inbounds %struct.lan78xx_net, ptr %6, i32 0, i32 28
  tail call void @_set_bit(i32 noundef 1, ptr noundef %46) #21
  %47 = getelementptr inbounds %struct.lan78xx_net, ptr %6, i32 0, i32 17
  %48 = load ptr, ptr @system_wq, align 4
  %49 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %48, ptr noundef %47, i32 noundef 0) #21
  br i1 %49, label %67, label %50

50:                                               ; preds = %41
  %51 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %51, ptr noundef nonnull @.str.10, i32 noundef 1) #22
  br label %67

52:                                               ; preds = %21, %21, %21
  %53 = load ptr, ptr %6, align 8
  %54 = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 36, i32 4
  %55 = load i32, ptr %54, align 8
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 8
  br label %67

57:                                               ; preds = %21
  %58 = load ptr, ptr %6, align 8
  %59 = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 36, i32 11
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %59, align 4
  br label %62

62:                                               ; preds = %57, %21
  %63 = load ptr, ptr %6, align 8
  %64 = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 36, i32 4
  %65 = load i32, ptr %64, align 8
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 8
  br label %67

67:                                               ; preds = %62, %52, %50, %41, %35, %21, %21
  %68 = phi i32 [ 5, %62 ], [ 5, %52 ], [ %36, %35 ], [ 5, %21 ], [ 5, %21 ], [ 5, %41 ], [ 5, %50 ]
  %69 = getelementptr inbounds %struct.lan78xx_net, ptr %6, i32 0, i32 10, i32 2
  %70 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %69) #21
  %71 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 8
  store i32 %68, ptr %71, align 4
  %72 = getelementptr inbounds %struct.lan78xx_net, ptr %6, i32 0, i32 10, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, -1
  store volatile i32 %74, ptr %72, align 4
  %75 = load ptr, ptr %3, align 8
  %76 = getelementptr inbounds %struct.anon.49, ptr %3, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  store ptr null, ptr %76, align 4
  store ptr null, ptr %3, align 8
  %78 = getelementptr inbounds %struct.anon.49, ptr %75, i32 0, i32 1
  store volatile ptr %77, ptr %78, align 4
  store volatile ptr %75, ptr %77, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !8
  %79 = load i16, ptr %69, align 4
  %80 = add i16 %79, 1
  store i16 %80, ptr %69, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !18
  %81 = getelementptr inbounds %struct.lan78xx_net, ptr %6, i32 0, i32 11
  %82 = getelementptr inbounds %struct.lan78xx_net, ptr %6, i32 0, i32 11, i32 2
  tail call void @_raw_spin_lock(ptr noundef %82) #21
  %83 = getelementptr inbounds %struct.lan78xx_net, ptr %6, i32 0, i32 11, i32 0, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  store volatile ptr %81, ptr %3, align 8
  store volatile ptr %84, ptr %76, align 4
  store volatile ptr %3, ptr %83, align 4
  store volatile ptr %3, ptr %84, align 4
  %85 = getelementptr inbounds %struct.lan78xx_net, ptr %6, i32 0, i32 11, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, 1
  store volatile i32 %87, ptr %85, align 4
  %88 = icmp eq i32 %86, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %67
  %90 = getelementptr inbounds %struct.lan78xx_net, ptr %6, i32 0, i32 16
  %91 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %90) #21
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  tail call void @__napi_schedule(ptr noundef %90) #21
  br label %93

93:                                               ; preds = %92, %89, %67
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %82, i32 noundef %70) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lan78xx_defer_kevent(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 28
  tail call void @_set_bit(i32 noundef %1, ptr noundef %3) #21
  %4 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr @system_wq, align 4
  %6 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %5, ptr noundef %4, i32 noundef 0) #21
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.10, i32 noundef %1) #22
  br label %9

9:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface_async(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tx_complete(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 16
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr %5, align 8
  br i1 %8, label %12, label %22

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %10
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 12
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 36, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %17
  store i32 %21, ptr %19, align 4
  br label %39

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %10
  store i32 %25, ptr %23, align 4
  %26 = load i32, ptr %6, align 4
  switch i32 %26, label %39 [
    i32 -32, label %27
    i32 -84, label %34
    i32 -62, label %34
    i32 -71, label %34
  ]

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.lan78xx_net, ptr %5, i32 0, i32 28
  tail call void @_set_bit(i32 noundef 0, ptr noundef %28) #21
  %29 = getelementptr inbounds %struct.lan78xx_net, ptr %5, i32 0, i32 17
  %30 = load ptr, ptr @system_wq, align 4
  %31 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %30, ptr noundef %29, i32 noundef 0) #21
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %33, ptr noundef nonnull @.str.10, i32 noundef 0) #22
  br label %39

34:                                               ; preds = %22, %22, %22
  %35 = load ptr, ptr %5, align 8
  %36 = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 87
  %37 = load ptr, ptr %36, align 64
  %38 = getelementptr inbounds %struct.netdev_queue, ptr %37, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %38) #21
  br label %39

39:                                               ; preds = %34, %32, %27, %22, %12
  %40 = getelementptr inbounds %struct.lan78xx_net, ptr %5, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  tail call void @usb_autopm_put_interface_async(ptr noundef %41) #21
  %42 = getelementptr inbounds %struct.lan78xx_net, ptr %5, i32 0, i32 14
  tail call void @skb_unlink(ptr noundef %3, ptr noundef %42) #21
  %43 = getelementptr inbounds %struct.lan78xx_net, ptr %5, i32 0, i32 13
  %44 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 16
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  store ptr %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 14
  store ptr %45, ptr %47, align 8
  %48 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  store i32 0, ptr %48, align 8
  %49 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  store i32 0, ptr %49, align 4
  tail call void @skb_queue_tail(ptr noundef %43, ptr noundef %3) #21
  %50 = load ptr, ptr %42, align 4
  %51 = icmp eq ptr %50, %42
  br i1 %51, label %52, label %60

52:                                               ; preds = %39
  %53 = getelementptr inbounds %struct.lan78xx_net, ptr %5, i32 0, i32 15
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.lan78xx_net, ptr %5, i32 0, i32 16
  %58 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %57) #21
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  tail call void @__napi_schedule(ptr noundef %57) #21
  br label %60

60:                                               ; preds = %59, %56, %52, %39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface_async(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @unlink_urbs(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sk_buff_head, ptr %0, i32 0, i32 2
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #21
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %27, label %6

6:                                                ; preds = %18, %1
  %7 = phi ptr [ %25, %18 ], [ %4, %1 ]
  %8 = phi i32 [ %24, %18 ], [ %3, %1 ]
  %9 = icmp eq ptr %7, %0
  br i1 %9, label %27, label %10

10:                                               ; preds = %15, %6
  %11 = phi ptr [ %16, %15 ], [ %7, %6 ]
  %12 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 6
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load ptr, ptr %11, align 4
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %27, label %10

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 8
  %20 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3
  store i32 6, ptr %19, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = tail call ptr @usb_get_urb(ptr noundef %21) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %8) #21
  %23 = tail call i32 @usb_unlink_urb(ptr noundef %21) #21
  tail call void @usb_free_urb(ptr noundef %21) #21
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #21
  %25 = load ptr, ptr %0, align 4
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %27, label %6

27:                                               ; preds = %18, %15, %6, %1
  %28 = phi i32 [ %3, %1 ], [ %8, %15 ], [ %24, %18 ], [ %8, %6 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %28) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lan78xx_update_stats(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.lan78xx_statstage, align 4
  call void @llvm.lifetime.start.p0(i64 188, ptr nonnull %2) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(188) %2, i8 0, i32 188, i1 false), !annotation !13
  %3 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @usb_autopm_get_interface(ptr noundef %4) #21
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %516, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43
  %9 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2
  %10 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 3
  %11 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 4
  tail call void @mutex_lock(ptr noundef %8) #21
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 188) #24
  %14 = icmp eq ptr %13, null
  br i1 %14, label %496, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %17, align 8
  %19 = shl i32 %18, 8
  %20 = or i32 %19, -2147483520
  %21 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %20, i8 noundef zeroext -94, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %13, i16 noundef zeroext 188, i32 noundef 5000) #21
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %25, label %23, !prof !14

23:                                               ; preds = %15
  %24 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %24, ptr noundef nonnull @.str.17, i32 noundef %21) #22
  tail call void @kfree(ptr noundef nonnull %13) #21
  br label %496

25:                                               ; preds = %15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(188) %2, ptr noundef nonnull align 8 dereferenceable(188) %13, i32 188, i1 false) #21
  tail call void @kfree(ptr noundef nonnull %13) #21
  %26 = icmp eq i32 %21, 0
  br i1 %26, label %496, label %27

27:                                               ; preds = %25
  %28 = load i32, ptr %2, align 4
  %29 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, ptr %9, align 8
  %34 = add i32 %33, 1
  store i32 %34, ptr %9, align 8
  br label %35

35:                                               ; preds = %32, %27
  %36 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  br label %45

45:                                               ; preds = %41, %35
  %46 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = icmp ult i32 %47, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = add i32 %53, 1
  store i32 %54, ptr %52, align 8
  br label %55

55:                                               ; preds = %51, %45
  %56 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = icmp ult i32 %57, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 4
  br label %65

65:                                               ; preds = %61, %55
  %66 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 4
  %69 = load i32, ptr %68, align 4
  %70 = icmp ult i32 %67, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 4
  %73 = load i32, ptr %72, align 8
  %74 = add i32 %73, 1
  store i32 %74, ptr %72, align 8
  br label %75

75:                                               ; preds = %71, %65
  %76 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 5
  %79 = load i32, ptr %78, align 4
  %80 = icmp ult i32 %77, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 5
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, 1
  store i32 %84, ptr %82, align 4
  br label %85

85:                                               ; preds = %81, %75
  %86 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 6
  %89 = load i32, ptr %88, align 4
  %90 = icmp ult i32 %87, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 6
  %93 = load i32, ptr %92, align 8
  %94 = add i32 %93, 1
  store i32 %94, ptr %92, align 8
  br label %95

95:                                               ; preds = %91, %85
  %96 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 7
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 7
  %99 = load i32, ptr %98, align 4
  %100 = icmp ult i32 %97, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 7
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %103, 1
  store i32 %104, ptr %102, align 4
  br label %105

105:                                              ; preds = %101, %95
  %106 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 8
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 8
  %109 = load i32, ptr %108, align 4
  %110 = icmp ult i32 %107, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 8
  %113 = load i32, ptr %112, align 8
  %114 = add i32 %113, 1
  store i32 %114, ptr %112, align 8
  br label %115

115:                                              ; preds = %111, %105
  %116 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 9
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 9
  %119 = load i32, ptr %118, align 4
  %120 = icmp ult i32 %117, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 9
  %123 = load i32, ptr %122, align 4
  %124 = add i32 %123, 1
  store i32 %124, ptr %122, align 4
  br label %125

125:                                              ; preds = %121, %115
  %126 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 10
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 10
  %129 = load i32, ptr %128, align 4
  %130 = icmp ult i32 %127, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 10
  %133 = load i32, ptr %132, align 8
  %134 = add i32 %133, 1
  store i32 %134, ptr %132, align 8
  br label %135

135:                                              ; preds = %131, %125
  %136 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 11
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 11
  %139 = load i32, ptr %138, align 4
  %140 = icmp ult i32 %137, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 11
  %143 = load i32, ptr %142, align 4
  %144 = add i32 %143, 1
  store i32 %144, ptr %142, align 4
  br label %145

145:                                              ; preds = %141, %135
  %146 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 12
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 12
  %149 = load i32, ptr %148, align 4
  %150 = icmp ult i32 %147, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 12
  %153 = load i32, ptr %152, align 8
  %154 = add i32 %153, 1
  store i32 %154, ptr %152, align 8
  br label %155

155:                                              ; preds = %151, %145
  %156 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 13
  %157 = load i32, ptr %156, align 4
  %158 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 13
  %159 = load i32, ptr %158, align 4
  %160 = icmp ult i32 %157, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 13
  %163 = load i32, ptr %162, align 4
  %164 = add i32 %163, 1
  store i32 %164, ptr %162, align 4
  br label %165

165:                                              ; preds = %161, %155
  %166 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 14
  %167 = load i32, ptr %166, align 4
  %168 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 14
  %169 = load i32, ptr %168, align 4
  %170 = icmp ult i32 %167, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 14
  %173 = load i32, ptr %172, align 8
  %174 = add i32 %173, 1
  store i32 %174, ptr %172, align 8
  br label %175

175:                                              ; preds = %171, %165
  %176 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 15
  %177 = load i32, ptr %176, align 4
  %178 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 15
  %179 = load i32, ptr %178, align 4
  %180 = icmp ult i32 %177, %179
  br i1 %180, label %181, label %185

181:                                              ; preds = %175
  %182 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 15
  %183 = load i32, ptr %182, align 4
  %184 = add i32 %183, 1
  store i32 %184, ptr %182, align 4
  br label %185

185:                                              ; preds = %181, %175
  %186 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 16
  %187 = load i32, ptr %186, align 4
  %188 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 16
  %189 = load i32, ptr %188, align 4
  %190 = icmp ult i32 %187, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 16
  %193 = load i32, ptr %192, align 8
  %194 = add i32 %193, 1
  store i32 %194, ptr %192, align 8
  br label %195

195:                                              ; preds = %191, %185
  %196 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 17
  %197 = load i32, ptr %196, align 4
  %198 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 17
  %199 = load i32, ptr %198, align 4
  %200 = icmp ult i32 %197, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 17
  %203 = load i32, ptr %202, align 4
  %204 = add i32 %203, 1
  store i32 %204, ptr %202, align 4
  br label %205

205:                                              ; preds = %201, %195
  %206 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 18
  %207 = load i32, ptr %206, align 4
  %208 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 18
  %209 = load i32, ptr %208, align 4
  %210 = icmp ult i32 %207, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %205
  %212 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 18
  %213 = load i32, ptr %212, align 8
  %214 = add i32 %213, 1
  store i32 %214, ptr %212, align 8
  br label %215

215:                                              ; preds = %211, %205
  %216 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 19
  %217 = load i32, ptr %216, align 4
  %218 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 19
  %219 = load i32, ptr %218, align 4
  %220 = icmp ult i32 %217, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 19
  %223 = load i32, ptr %222, align 4
  %224 = add i32 %223, 1
  store i32 %224, ptr %222, align 4
  br label %225

225:                                              ; preds = %221, %215
  %226 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 20
  %227 = load i32, ptr %226, align 4
  %228 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 20
  %229 = load i32, ptr %228, align 4
  %230 = icmp ult i32 %227, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %225
  %232 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 20
  %233 = load i32, ptr %232, align 8
  %234 = add i32 %233, 1
  store i32 %234, ptr %232, align 8
  br label %235

235:                                              ; preds = %231, %225
  %236 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 21
  %237 = load i32, ptr %236, align 4
  %238 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 21
  %239 = load i32, ptr %238, align 4
  %240 = icmp ult i32 %237, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %235
  %242 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 21
  %243 = load i32, ptr %242, align 4
  %244 = add i32 %243, 1
  store i32 %244, ptr %242, align 4
  br label %245

245:                                              ; preds = %241, %235
  %246 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 22
  %247 = load i32, ptr %246, align 4
  %248 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 22
  %249 = load i32, ptr %248, align 4
  %250 = icmp ult i32 %247, %249
  br i1 %250, label %251, label %255

251:                                              ; preds = %245
  %252 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 22
  %253 = load i32, ptr %252, align 8
  %254 = add i32 %253, 1
  store i32 %254, ptr %252, align 8
  br label %255

255:                                              ; preds = %251, %245
  %256 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 23
  %257 = load i32, ptr %256, align 4
  %258 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 23
  %259 = load i32, ptr %258, align 4
  %260 = icmp ult i32 %257, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %255
  %262 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 23
  %263 = load i32, ptr %262, align 4
  %264 = add i32 %263, 1
  store i32 %264, ptr %262, align 4
  br label %265

265:                                              ; preds = %261, %255
  %266 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 24
  %267 = load i32, ptr %266, align 4
  %268 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 24
  %269 = load i32, ptr %268, align 4
  %270 = icmp ult i32 %267, %269
  br i1 %270, label %271, label %275

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 24
  %273 = load i32, ptr %272, align 8
  %274 = add i32 %273, 1
  store i32 %274, ptr %272, align 8
  br label %275

275:                                              ; preds = %271, %265
  %276 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 25
  %277 = load i32, ptr %276, align 4
  %278 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 25
  %279 = load i32, ptr %278, align 4
  %280 = icmp ult i32 %277, %279
  br i1 %280, label %281, label %285

281:                                              ; preds = %275
  %282 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 25
  %283 = load i32, ptr %282, align 4
  %284 = add i32 %283, 1
  store i32 %284, ptr %282, align 4
  br label %285

285:                                              ; preds = %281, %275
  %286 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 26
  %287 = load i32, ptr %286, align 4
  %288 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 26
  %289 = load i32, ptr %288, align 4
  %290 = icmp ult i32 %287, %289
  br i1 %290, label %291, label %295

291:                                              ; preds = %285
  %292 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 26
  %293 = load i32, ptr %292, align 8
  %294 = add i32 %293, 1
  store i32 %294, ptr %292, align 8
  br label %295

295:                                              ; preds = %291, %285
  %296 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 27
  %297 = load i32, ptr %296, align 4
  %298 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 27
  %299 = load i32, ptr %298, align 4
  %300 = icmp ult i32 %297, %299
  br i1 %300, label %301, label %305

301:                                              ; preds = %295
  %302 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 27
  %303 = load i32, ptr %302, align 4
  %304 = add i32 %303, 1
  store i32 %304, ptr %302, align 4
  br label %305

305:                                              ; preds = %301, %295
  %306 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 28
  %307 = load i32, ptr %306, align 4
  %308 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 28
  %309 = load i32, ptr %308, align 4
  %310 = icmp ult i32 %307, %309
  br i1 %310, label %311, label %315

311:                                              ; preds = %305
  %312 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 28
  %313 = load i32, ptr %312, align 8
  %314 = add i32 %313, 1
  store i32 %314, ptr %312, align 8
  br label %315

315:                                              ; preds = %311, %305
  %316 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 29
  %317 = load i32, ptr %316, align 4
  %318 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 29
  %319 = load i32, ptr %318, align 4
  %320 = icmp ult i32 %317, %319
  br i1 %320, label %321, label %325

321:                                              ; preds = %315
  %322 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 29
  %323 = load i32, ptr %322, align 4
  %324 = add i32 %323, 1
  store i32 %324, ptr %322, align 4
  br label %325

325:                                              ; preds = %321, %315
  %326 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 30
  %327 = load i32, ptr %326, align 4
  %328 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 30
  %329 = load i32, ptr %328, align 4
  %330 = icmp ult i32 %327, %329
  br i1 %330, label %331, label %335

331:                                              ; preds = %325
  %332 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 30
  %333 = load i32, ptr %332, align 8
  %334 = add i32 %333, 1
  store i32 %334, ptr %332, align 8
  br label %335

335:                                              ; preds = %331, %325
  %336 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 31
  %337 = load i32, ptr %336, align 4
  %338 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 31
  %339 = load i32, ptr %338, align 4
  %340 = icmp ult i32 %337, %339
  br i1 %340, label %341, label %345

341:                                              ; preds = %335
  %342 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 31
  %343 = load i32, ptr %342, align 4
  %344 = add i32 %343, 1
  store i32 %344, ptr %342, align 4
  br label %345

345:                                              ; preds = %341, %335
  %346 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 32
  %347 = load i32, ptr %346, align 4
  %348 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 32
  %349 = load i32, ptr %348, align 4
  %350 = icmp ult i32 %347, %349
  br i1 %350, label %351, label %355

351:                                              ; preds = %345
  %352 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 32
  %353 = load i32, ptr %352, align 8
  %354 = add i32 %353, 1
  store i32 %354, ptr %352, align 8
  br label %355

355:                                              ; preds = %351, %345
  %356 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 33
  %357 = load i32, ptr %356, align 4
  %358 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 33
  %359 = load i32, ptr %358, align 4
  %360 = icmp ult i32 %357, %359
  br i1 %360, label %361, label %365

361:                                              ; preds = %355
  %362 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 33
  %363 = load i32, ptr %362, align 4
  %364 = add i32 %363, 1
  store i32 %364, ptr %362, align 4
  br label %365

365:                                              ; preds = %361, %355
  %366 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 34
  %367 = load i32, ptr %366, align 4
  %368 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 34
  %369 = load i32, ptr %368, align 4
  %370 = icmp ult i32 %367, %369
  br i1 %370, label %371, label %375

371:                                              ; preds = %365
  %372 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 34
  %373 = load i32, ptr %372, align 8
  %374 = add i32 %373, 1
  store i32 %374, ptr %372, align 8
  br label %375

375:                                              ; preds = %371, %365
  %376 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 35
  %377 = load i32, ptr %376, align 4
  %378 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 35
  %379 = load i32, ptr %378, align 4
  %380 = icmp ult i32 %377, %379
  br i1 %380, label %381, label %385

381:                                              ; preds = %375
  %382 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 35
  %383 = load i32, ptr %382, align 4
  %384 = add i32 %383, 1
  store i32 %384, ptr %382, align 4
  br label %385

385:                                              ; preds = %381, %375
  %386 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 36
  %387 = load i32, ptr %386, align 4
  %388 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 36
  %389 = load i32, ptr %388, align 4
  %390 = icmp ult i32 %387, %389
  br i1 %390, label %391, label %395

391:                                              ; preds = %385
  %392 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 36
  %393 = load i32, ptr %392, align 8
  %394 = add i32 %393, 1
  store i32 %394, ptr %392, align 8
  br label %395

395:                                              ; preds = %391, %385
  %396 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 37
  %397 = load i32, ptr %396, align 4
  %398 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 37
  %399 = load i32, ptr %398, align 4
  %400 = icmp ult i32 %397, %399
  br i1 %400, label %401, label %405

401:                                              ; preds = %395
  %402 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 37
  %403 = load i32, ptr %402, align 4
  %404 = add i32 %403, 1
  store i32 %404, ptr %402, align 4
  br label %405

405:                                              ; preds = %401, %395
  %406 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 38
  %407 = load i32, ptr %406, align 4
  %408 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 38
  %409 = load i32, ptr %408, align 4
  %410 = icmp ult i32 %407, %409
  br i1 %410, label %411, label %415

411:                                              ; preds = %405
  %412 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 38
  %413 = load i32, ptr %412, align 8
  %414 = add i32 %413, 1
  store i32 %414, ptr %412, align 8
  br label %415

415:                                              ; preds = %411, %405
  %416 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 39
  %417 = load i32, ptr %416, align 4
  %418 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 39
  %419 = load i32, ptr %418, align 4
  %420 = icmp ult i32 %417, %419
  br i1 %420, label %421, label %425

421:                                              ; preds = %415
  %422 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 39
  %423 = load i32, ptr %422, align 4
  %424 = add i32 %423, 1
  store i32 %424, ptr %422, align 4
  br label %425

425:                                              ; preds = %421, %415
  %426 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 40
  %427 = load i32, ptr %426, align 4
  %428 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 40
  %429 = load i32, ptr %428, align 4
  %430 = icmp ult i32 %427, %429
  br i1 %430, label %431, label %435

431:                                              ; preds = %425
  %432 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 40
  %433 = load i32, ptr %432, align 8
  %434 = add i32 %433, 1
  store i32 %434, ptr %432, align 8
  br label %435

435:                                              ; preds = %431, %425
  %436 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 41
  %437 = load i32, ptr %436, align 4
  %438 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 41
  %439 = load i32, ptr %438, align 4
  %440 = icmp ult i32 %437, %439
  br i1 %440, label %441, label %445

441:                                              ; preds = %435
  %442 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 41
  %443 = load i32, ptr %442, align 4
  %444 = add i32 %443, 1
  store i32 %444, ptr %442, align 4
  br label %445

445:                                              ; preds = %441, %435
  %446 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 42
  %447 = load i32, ptr %446, align 4
  %448 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 42
  %449 = load i32, ptr %448, align 4
  %450 = icmp ult i32 %447, %449
  br i1 %450, label %451, label %455

451:                                              ; preds = %445
  %452 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 42
  %453 = load i32, ptr %452, align 8
  %454 = add i32 %453, 1
  store i32 %454, ptr %452, align 8
  br label %455

455:                                              ; preds = %451, %445
  %456 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 43
  %457 = load i32, ptr %456, align 4
  %458 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 43
  %459 = load i32, ptr %458, align 4
  %460 = icmp ult i32 %457, %459
  br i1 %460, label %461, label %465

461:                                              ; preds = %455
  %462 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 43
  %463 = load i32, ptr %462, align 4
  %464 = add i32 %463, 1
  store i32 %464, ptr %462, align 4
  br label %465

465:                                              ; preds = %461, %455
  %466 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 44
  %467 = load i32, ptr %466, align 4
  %468 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 44
  %469 = load i32, ptr %468, align 4
  %470 = icmp ult i32 %467, %469
  br i1 %470, label %471, label %475

471:                                              ; preds = %465
  %472 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 44
  %473 = load i32, ptr %472, align 8
  %474 = add i32 %473, 1
  store i32 %474, ptr %472, align 8
  br label %475

475:                                              ; preds = %471, %465
  %476 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 45
  %477 = load i32, ptr %476, align 4
  %478 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 45
  %479 = load i32, ptr %478, align 4
  %480 = icmp ult i32 %477, %479
  br i1 %480, label %481, label %485

481:                                              ; preds = %475
  %482 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 45
  %483 = load i32, ptr %482, align 4
  %484 = add i32 %483, 1
  store i32 %484, ptr %482, align 4
  br label %485

485:                                              ; preds = %481, %475
  %486 = getelementptr inbounds %struct.lan78xx_statstage, ptr %2, i32 0, i32 46
  %487 = load i32, ptr %486, align 4
  %488 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 1, i32 46
  %489 = load i32, ptr %488, align 4
  %490 = icmp ult i32 %487, %489
  br i1 %490, label %491, label %495

491:                                              ; preds = %485
  %492 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 43, i32 2, i32 46
  %493 = load i32, ptr %492, align 8
  %494 = add i32 %493, 1
  store i32 %494, ptr %492, align 8
  br label %495

495:                                              ; preds = %491, %485
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(188) %29, ptr noundef nonnull align 4 dereferenceable(188) %2, i32 188, i1 false) #21
  br label %496

496:                                              ; preds = %495, %25, %23, %7
  br label %497

497:                                              ; preds = %497, %496
  %498 = phi i32 [ %512, %497 ], [ 0, %496 ]
  %499 = getelementptr i32, ptr %2, i32 %498
  %500 = load i32, ptr %499, align 4
  %501 = zext i32 %500 to i64
  %502 = getelementptr i32, ptr %9, i32 %498
  %503 = load i32, ptr %502, align 4
  %504 = zext i32 %503 to i64
  %505 = getelementptr i32, ptr %10, i32 %498
  %506 = load i32, ptr %505, align 4
  %507 = zext i32 %506 to i64
  %508 = add nuw nsw i64 %507, 1
  %509 = mul nuw i64 %508, %504
  %510 = add nuw i64 %509, %501
  %511 = getelementptr i64, ptr %11, i32 %498
  store i64 %510, ptr %511, align 8
  %512 = add nuw nsw i32 %498, 1
  %513 = icmp eq i32 %512, 47
  br i1 %513, label %514, label %497

514:                                              ; preds = %497
  tail call void @mutex_unlock(ptr noundef %8) #21
  %515 = load ptr, ptr %3, align 8
  tail call void @usb_autopm_put_interface(ptr noundef %515) #21
  br label %516

516:                                              ; preds = %514, %1
  call void @llvm.lifetime.end.p0(i64 188, ptr nonnull %2) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 28
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1024
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %3
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 4) #24
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  store i32 %2, ptr %10, align 8
  %13 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 8
  %16 = shl i32 %15, 8
  %17 = or i32 %16, -2147483648
  %18 = trunc i32 %1 to i16
  %19 = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %17, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %18, ptr noundef nonnull %10, i16 noundef zeroext 4, i32 noundef 5000) #21
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26, !prof !16

21:                                               ; preds = %12
  %22 = tail call i32 @net_ratelimit() #21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.15, i32 noundef %1, i32 noundef %19) #22
  br label %26

26:                                               ; preds = %24, %21, %12
  tail call void @kfree(ptr noundef nonnull %10) #21
  br label %27

27:                                               ; preds = %26, %8, %3
  %28 = phi i32 [ %19, %26 ], [ -19, %3 ], [ -12, %8 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 28
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1024
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %3
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 4) #24
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 8
  %16 = shl i32 %15, 8
  %17 = or i32 %16, -2147483520
  %18 = trunc i32 %1 to i16
  %19 = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %17, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %18, ptr noundef nonnull %10, i16 noundef zeroext 4, i32 noundef 5000) #21
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %23, !prof !14

21:                                               ; preds = %12
  %22 = load i32, ptr %10, align 8
  store i32 %22, ptr %2, align 4
  br label %28

23:                                               ; preds = %12
  %24 = tail call i32 @net_ratelimit() #21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %27, ptr noundef nonnull @.str.16, i32 noundef %1, i32 noundef %19) #22
  br label %28

28:                                               ; preds = %26, %23, %21
  tail call void @kfree(ptr noundef nonnull %10) #21
  br label %29

29:                                               ; preds = %28, %8, %3
  %30 = phi i32 [ %19, %28 ], [ -19, %3 ], [ -12, %8 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan78xx_open(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 1416
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @usb_autopm_get_interface(ptr noundef %6) #21
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %114, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 1860
  tail call void @mutex_lock(ptr noundef %10) #21
  %11 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %12 = load ptr, ptr %11, align 8
  tail call void @phy_start(ptr noundef %12) #21
  %13 = getelementptr i8, ptr %0, i32 1824
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %9
  %17 = tail call i32 @usb_submit_urb(ptr noundef nonnull %14, i32 noundef 3264) #21
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = getelementptr i8, ptr %0, i32 1820
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %111, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.19, i32 noundef %17) #22
  br label %111

26:                                               ; preds = %16, %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 0, ptr %3, align 4, !annotation !13
  %27 = call fastcc i32 @lan78xx_read_reg(ptr noundef %4, i32 noundef 192, ptr noundef nonnull %3) #21
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  br label %111

30:                                               ; preds = %26
  %31 = load i32, ptr %3, align 4
  %32 = or i32 %31, 1073741824
  %33 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %4, i32 noundef 192, i32 noundef %32) #21
  %34 = tail call i32 @llvm.smin.i32(i32 %33, i32 0) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  %35 = icmp slt i32 %33, 0
  br i1 %35, label %111, label %36

36:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  store i32 0, ptr %2, align 4, !annotation !13
  %37 = call fastcc i32 @lan78xx_read_reg(ptr noundef %4, i32 noundef 196, ptr noundef nonnull %2) #21
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %111

40:                                               ; preds = %36
  %41 = load i32, ptr %2, align 4
  %42 = or i32 %41, 1073741824
  %43 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %4, i32 noundef 196, i32 noundef %42) #21
  %44 = tail call i32 @llvm.smin.i32(i32 %43, i32 0) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  %45 = icmp slt i32 %43, 0
  br i1 %45, label %111, label %46

46:                                               ; preds = %40
  %47 = tail call fastcc i32 @lan78xx_start_tx_path(ptr noundef %4)
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %111, label %49

49:                                               ; preds = %46
  %50 = tail call fastcc i32 @lan78xx_start_rx_path(ptr noundef %4)
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %111, label %52

52:                                               ; preds = %49
  %53 = getelementptr i8, ptr %0, i32 2412
  store i32 1048575, ptr %53, align 4
  %54 = getelementptr i8, ptr %0, i32 2416
  store i32 1048575, ptr %54, align 4
  %55 = getelementptr i8, ptr %0, i32 2420
  store i32 1048575, ptr %55, align 4
  %56 = getelementptr i8, ptr %0, i32 2424
  store i32 1048575, ptr %56, align 4
  %57 = getelementptr i8, ptr %0, i32 2428
  store i32 1048575, ptr %57, align 4
  %58 = getelementptr i8, ptr %0, i32 2432
  store i32 1048575, ptr %58, align 4
  %59 = getelementptr i8, ptr %0, i32 2436
  store i32 1048575, ptr %59, align 4
  %60 = getelementptr i8, ptr %0, i32 2452
  store i32 1048575, ptr %60, align 4
  %61 = getelementptr i8, ptr %0, i32 2456
  store i32 1048575, ptr %61, align 4
  %62 = getelementptr i8, ptr %0, i32 2460
  store i32 1048575, ptr %62, align 4
  %63 = getelementptr i8, ptr %0, i32 2464
  store i32 1048575, ptr %63, align 4
  %64 = getelementptr i8, ptr %0, i32 2468
  store i32 1048575, ptr %64, align 4
  %65 = getelementptr i8, ptr %0, i32 2472
  store i32 1048575, ptr %65, align 4
  %66 = getelementptr i8, ptr %0, i32 2476
  store i32 1048575, ptr %66, align 4
  %67 = getelementptr i8, ptr %0, i32 2480
  store i32 1048575, ptr %67, align 4
  %68 = getelementptr i8, ptr %0, i32 2484
  store i32 1048575, ptr %68, align 4
  %69 = getelementptr i8, ptr %0, i32 2488
  store i32 1048575, ptr %69, align 4
  %70 = getelementptr i8, ptr %0, i32 2492
  store i32 1048575, ptr %70, align 4
  %71 = getelementptr i8, ptr %0, i32 2504
  store i32 1048575, ptr %71, align 4
  %72 = getelementptr i8, ptr %0, i32 2508
  store i32 1048575, ptr %72, align 4
  %73 = getelementptr i8, ptr %0, i32 2512
  store i32 1048575, ptr %73, align 4
  %74 = getelementptr i8, ptr %0, i32 2516
  store i32 1048575, ptr %74, align 4
  %75 = getelementptr i8, ptr %0, i32 2520
  store i32 1048575, ptr %75, align 4
  %76 = getelementptr i8, ptr %0, i32 2524
  store i32 1048575, ptr %76, align 4
  %77 = getelementptr i8, ptr %0, i32 2528
  store i32 1048575, ptr %77, align 4
  %78 = getelementptr i8, ptr %0, i32 2532
  store i32 1048575, ptr %78, align 4
  %79 = getelementptr i8, ptr %0, i32 2548
  store i32 1048575, ptr %79, align 4
  %80 = getelementptr i8, ptr %0, i32 2552
  store i32 1048575, ptr %80, align 4
  %81 = getelementptr i8, ptr %0, i32 2556
  store i32 1048575, ptr %81, align 4
  %82 = getelementptr i8, ptr %0, i32 2560
  store i32 1048575, ptr %82, align 4
  %83 = getelementptr i8, ptr %0, i32 2564
  store i32 1048575, ptr %83, align 4
  %84 = getelementptr i8, ptr %0, i32 2568
  store i32 1048575, ptr %84, align 4
  %85 = getelementptr i8, ptr %0, i32 2572
  store i32 1048575, ptr %85, align 4
  %86 = getelementptr i8, ptr %0, i32 2576
  store i32 1048575, ptr %86, align 4
  %87 = getelementptr i8, ptr %0, i32 2580
  store i32 1048575, ptr %87, align 4
  %88 = getelementptr i8, ptr %0, i32 2584
  store i32 1048575, ptr %88, align 4
  %89 = getelementptr i8, ptr %0, i32 2588
  store i32 1048575, ptr %89, align 4
  %90 = getelementptr i8, ptr %0, i32 2440
  store i32 -1, ptr %90, align 4
  %91 = getelementptr i8, ptr %0, i32 2444
  store i32 -1, ptr %91, align 4
  %92 = getelementptr i8, ptr %0, i32 2448
  store i32 -1, ptr %92, align 4
  %93 = getelementptr i8, ptr %0, i32 2496
  store i32 -1, ptr %93, align 4
  %94 = getelementptr i8, ptr %0, i32 2500
  store i32 -1, ptr %94, align 4
  %95 = getelementptr i8, ptr %0, i32 2536
  store i32 -1, ptr %95, align 4
  %96 = getelementptr i8, ptr %0, i32 2540
  store i32 -1, ptr %96, align 4
  %97 = getelementptr i8, ptr %0, i32 2544
  store i32 -1, ptr %97, align 4
  %98 = getelementptr i8, ptr %0, i32 2592
  store i32 -1, ptr %98, align 4
  %99 = getelementptr i8, ptr %0, i32 2596
  store i32 -1, ptr %99, align 4
  %100 = getelementptr i8, ptr %0, i32 1920
  tail call void @_set_bit(i32 noundef 9, ptr noundef %100) #21
  tail call void @_set_bit(i32 noundef 8, ptr noundef %100) #21
  %101 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %102 = load ptr, ptr %101, align 64
  %103 = getelementptr inbounds %struct.netdev_queue, ptr %102, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %103) #21
  %104 = getelementptr i8, ptr %0, i32 1976
  store i32 0, ptr %104, align 8
  %105 = getelementptr i8, ptr %0, i32 1560
  tail call void @napi_enable(ptr noundef %105) #21
  tail call void @_set_bit(i32 noundef 4, ptr noundef %100) #21
  %106 = getelementptr i8, ptr %0, i32 1776
  %107 = load ptr, ptr @system_wq, align 4
  %108 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %107, ptr noundef %106, i32 noundef 0) #21
  br i1 %108, label %111, label %109

109:                                              ; preds = %52
  %110 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %110, ptr noundef nonnull @.str.10, i32 noundef 4) #22
  br label %111

111:                                              ; preds = %109, %52, %49, %46, %40, %39, %30, %29, %24, %19
  %112 = phi i32 [ %17, %24 ], [ %17, %19 ], [ %34, %30 ], [ %44, %40 ], [ %47, %46 ], [ %50, %49 ], [ %27, %29 ], [ %37, %39 ], [ 0, %52 ], [ 0, %109 ]
  tail call void @mutex_unlock(ptr noundef %10) #21
  %113 = load ptr, ptr %5, align 8
  tail call void @usb_autopm_put_interface(ptr noundef %113) #21
  br label %114

114:                                              ; preds = %111, %1
  %115 = phi i32 [ %112, %111 ], [ %7, %1 ]
  ret i32 %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan78xx_stop(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1860
  tail call void @mutex_lock(ptr noundef %3) #21
  %4 = getelementptr i8, ptr %0, i32 1940
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 1936
  %9 = tail call i32 @del_timer_sync(ptr noundef %8) #21
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr i8, ptr %0, i32 1920
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %11) #21
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %13 = load ptr, ptr %12, align 64
  %14 = getelementptr inbounds %struct.netdev_queue, ptr %13, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %14) #21
  %15 = getelementptr i8, ptr %0, i32 1560
  tail call void @napi_disable(ptr noundef %15) #21
  tail call fastcc void @lan78xx_terminate_urbs(ptr noundef %2)
  %16 = getelementptr i8, ptr %0, i32 1820
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %10
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 5
  %29 = load i32, ptr %28, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %21, ptr noundef nonnull @.str.20, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29) #22
  br label %30

30:                                               ; preds = %20, %10
  %31 = tail call fastcc i32 @lan78xx_stop_hw(ptr noundef %2, i32 noundef 196, i32 noundef -2147483648, i32 noundef 1048576) #21
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = tail call fastcc i32 @lan78xx_stop_hw(ptr noundef %2, i32 noundef 264, i32 noundef 1, i32 noundef 2) #21
  br label %35

35:                                               ; preds = %33, %30
  %36 = tail call fastcc i32 @lan78xx_stop_hw(ptr noundef %2, i32 noundef 260, i32 noundef 1, i32 noundef 2) #21
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = tail call fastcc i32 @lan78xx_stop_hw(ptr noundef %2, i32 noundef 192, i32 noundef -2147483648, i32 noundef 1048576) #21
  br label %40

40:                                               ; preds = %38, %35
  %41 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @phy_stop(ptr noundef nonnull %42) #21
  br label %45

45:                                               ; preds = %44, %40
  %46 = getelementptr i8, ptr %0, i32 1824
  %47 = load ptr, ptr %46, align 8
  tail call void @usb_kill_urb(ptr noundef %47) #21
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %11) #21
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %11) #21
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %11) #21
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %11) #21
  %48 = getelementptr i8, ptr %0, i32 1776
  %49 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %48) #21
  %50 = getelementptr i8, ptr %0, i32 1416
  %51 = load ptr, ptr %50, align 8
  tail call void @usb_autopm_put_interface(ptr noundef %51) #21
  tail call void @mutex_unlock(ptr noundef %3) #21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan78xx_start_xmit(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1920
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 128
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %1, i32 1776
  %9 = load ptr, ptr @system_wq, align 4
  %10 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %9, ptr noundef %8, i32 noundef 0) #21
  br label %11

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 3
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  tail call void @skb_tstamp_tx(ptr noundef %0, ptr noundef null) #21
  br label %19

19:                                               ; preds = %18, %11
  %20 = getelementptr i8, ptr %1, i32 1540
  %21 = getelementptr i8, ptr %1, i32 1552
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #21
  %23 = getelementptr i8, ptr %1, i32 1544
  %24 = load ptr, ptr %23, align 4
  store volatile ptr %20, ptr %0, align 8
  %25 = getelementptr inbounds %struct.anon.49, ptr %0, i32 0, i32 1
  store volatile ptr %24, ptr %25, align 4
  store volatile ptr %0, ptr %23, align 4
  store volatile ptr %0, ptr %24, align 4
  %26 = getelementptr i8, ptr %1, i32 1548
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  store volatile i32 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr i8, ptr %1, i32 1424
  %32 = load i32, ptr %31, align 8
  %33 = add i32 %32, %30
  store i32 %33, ptr %31, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #21
  %34 = getelementptr i8, ptr %1, i32 1524
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %34
  br i1 %36, label %37, label %41

37:                                               ; preds = %19
  %38 = getelementptr i8, ptr %1, i32 1560
  %39 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %38) #21
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  tail call void @__napi_schedule(ptr noundef %38) #21
  br label %41

41:                                               ; preds = %40, %37, %19
  %42 = getelementptr i8, ptr %1, i32 1516
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr i8, ptr %1, i32 1436
  %45 = load i32, ptr %44, align 4
  %46 = mul i32 %45, %43
  %47 = icmp ugt i32 %33, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %50 = load ptr, ptr %49, align 64
  %51 = getelementptr inbounds %struct.netdev_queue, ptr %50, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %51) #21
  %52 = getelementptr i8, ptr %1, i32 1508
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %52
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = getelementptr i8, ptr %1, i32 1560
  %57 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %56) #21
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  tail call void @__napi_schedule(ptr noundef %56) #21
  br label %59

59:                                               ; preds = %58, %55, %48, %41
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @lan78xx_features_check(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) #2 {
  %4 = alloca %struct.vlan_hdr, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr i8, ptr %1, i32 1436
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -22
  %10 = icmp ugt i32 %6, %9
  %11 = and i64 %2, -34359672833
  %12 = select i1 %10, i64 %11, i64 %2
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %14 = load i16, ptr %13, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %16 = load i16, ptr %15, align 2
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %3
  switch i16 %14, label %40 [
    i16 -22392, label %20
    i16 129, label %20
  ]

20:                                               ; preds = %19, %19
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %6, %22
  %24 = icmp ugt i32 %23, 17
  br i1 %24, label %31, label %25, !prof !14

25:                                               ; preds = %20
  %26 = icmp ult i32 %6, 18
  br i1 %26, label %40, label %27, !prof !16

27:                                               ; preds = %25
  %28 = sub nuw nsw i32 18, %23
  %29 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %28) #21
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31, !prof !16

31:                                               ; preds = %27, %20
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.vlan_ethhdr, ptr %33, i32 0, i32 3
  %35 = load i16, ptr %34, align 2
  br label %36

36:                                               ; preds = %31, %3
  %37 = phi i16 [ %14, %3 ], [ %35, %31 ]
  switch i16 %37, label %40 [
    i16 -22392, label %38
    i16 129, label %38
  ]

38:                                               ; preds = %36, %36
  %39 = and i64 %12, 35184372089065
  br label %40

40:                                               ; preds = %38, %36, %27, %25, %19
  %41 = phi i64 [ %39, %38 ], [ %12, %36 ], [ %12, %19 ], [ %12, %27 ], [ %12, %25 ]
  %42 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %43 = load i16, ptr %42, align 8
  %44 = and i16 %43, 8192
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %158, label %46

46:                                               ; preds = %40
  %47 = load i16, ptr %13, align 8
  %48 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  %49 = load i16, ptr %48, align 8
  %50 = zext i16 %49 to i32
  switch i16 %47, label %91 [
    i16 -22392, label %51
    i16 129, label %51
  ]

51:                                               ; preds = %46, %46
  %52 = icmp eq i16 %49, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %51
  %54 = icmp ult i16 %49, 4
  br i1 %54, label %55, label %56, !prof !16

55:                                               ; preds = %53
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 598, i32 noundef 9, ptr noundef null) #21
  br label %158

56:                                               ; preds = %53
  %57 = add nsw i32 %50, -4
  br label %58

58:                                               ; preds = %56, %51
  %59 = phi i32 [ %57, %56 ], [ 14, %51 ]
  %60 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %61 = icmp eq ptr %0, null
  %62 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  br label %63

63:                                               ; preds = %89, %58
  %64 = phi i32 [ %59, %58 ], [ %90, %89 ]
  %65 = phi i32 [ 8, %58 ], [ %82, %89 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store i32 0, ptr %4, align 4, !annotation !13
  %66 = load i32, ptr %5, align 8
  %67 = load i32, ptr %60, align 4
  %68 = add i32 %64, %67
  %69 = sub i32 %66, %68
  %70 = icmp sgt i32 %69, 3
  br i1 %70, label %71, label %74, !prof !14

71:                                               ; preds = %63
  %72 = load ptr, ptr %62, align 4
  %73 = getelementptr i8, ptr %72, i32 %64
  br label %79

74:                                               ; preds = %63
  br i1 %61, label %85, label %75

75:                                               ; preds = %74
  %76 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %64, ptr noundef nonnull %4, i32 noundef 4) #21
  %77 = icmp slt i32 %76, 0
  %78 = select i1 %77, ptr null, ptr %4, !prof !16
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi ptr [ %73, %71 ], [ %78, %75 ]
  %81 = icmp eq ptr %80, null
  %82 = add nsw i32 %65, -1
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %81, i1 true, i1 %83, !prof !16
  br i1 %84, label %85, label %86, !prof !16

85:                                               ; preds = %79, %74
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  br label %158

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.vlan_hdr, ptr %80, i32 0, i32 1
  %88 = load i16, ptr %87, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  switch i16 %88, label %91 [
    i16 -22392, label %89
    i16 129, label %89
  ]

89:                                               ; preds = %86, %86
  %90 = add nsw i32 %64, 4
  br label %63

91:                                               ; preds = %86, %46
  %92 = phi i16 [ %47, %46 ], [ %88, %86 ]
  switch i16 %92, label %158 [
    i16 8, label %93
    i16 -8826, label %101
  ]

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %97 = load i16, ptr %96, align 4
  %98 = zext i16 %97 to i32
  %99 = getelementptr i8, ptr %95, i32 %98
  %100 = getelementptr inbounds %struct.iphdr, ptr %99, i32 0, i32 6
  br label %109

101:                                              ; preds = %91
  %102 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %105 = load i16, ptr %104, align 4
  %106 = zext i16 %105 to i32
  %107 = getelementptr i8, ptr %103, i32 %106
  %108 = getelementptr inbounds %struct.ipv6hdr, ptr %107, i32 0, i32 3
  br label %109

109:                                              ; preds = %101, %93
  %110 = phi ptr [ %103, %101 ], [ %95, %93 ]
  %111 = phi ptr [ %108, %101 ], [ %100, %93 ]
  %112 = load i8, ptr %111, align 1
  %113 = icmp eq i8 %112, 17
  br i1 %113, label %114, label %158

114:                                              ; preds = %109
  %115 = load i16, ptr %15, align 2
  %116 = and i16 %115, 512
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %118, label %156

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 12
  %120 = load i16, ptr %119, align 8
  %121 = icmp eq i16 %120, 22629
  br i1 %121, label %122, label %156

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 15
  %124 = load i16, ptr %123, align 2
  %125 = zext i16 %124 to i32
  %126 = getelementptr i8, ptr %110, i32 %125
  %127 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %128 = load i16, ptr %127, align 2
  %129 = zext i16 %128 to i32
  %130 = getelementptr i8, ptr %110, i32 %129
  %131 = ptrtoint ptr %126 to i32
  %132 = ptrtoint ptr %130 to i32
  %133 = sub i32 %131, %132
  %134 = icmp eq i32 %133, 16
  br i1 %134, label %135, label %156

135:                                              ; preds = %122
  %136 = load i16, ptr %42, align 8
  %137 = and i16 %136, 96
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %158, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.ethhdr, ptr %126, i32 0, i32 2
  %141 = load i16, ptr %140, align 1
  %142 = icmp eq i16 %141, 1673
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = and i64 %41, 34359738368
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %156, label %158

146:                                              ; preds = %139
  %147 = and i64 %41, 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  switch i16 %141, label %156 [
    i16 8, label %153
    i16 -8826, label %150
  ]

150:                                              ; preds = %149
  %151 = and i64 %41, 16
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %156, label %158

153:                                              ; preds = %149
  %154 = and i64 %41, 2
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153, %150, %149, %143, %122, %118, %114
  %157 = and i64 %41, -34359672859
  br label %158

158:                                              ; preds = %156, %153, %150, %146, %143, %135, %109, %91, %85, %55, %40
  %159 = phi i64 [ %157, %156 ], [ %41, %40 ], [ %41, %91 ], [ %41, %153 ], [ %41, %135 ], [ %41, %109 ], [ %41, %143 ], [ %41, %150 ], [ %41, %55 ], [ %41, %85 ], [ %41, %146 ]
  ret i64 %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lan78xx_set_multicast(ptr noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1956
  %3 = load i32, ptr %2, align 4
  %4 = inttoptr i32 %3 to ptr
  %5 = getelementptr inbounds %struct.lan78xx_priv, ptr %4, i32 0, i32 6
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #21
  %7 = getelementptr inbounds %struct.lan78xx_priv, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, -779
  %10 = getelementptr i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(64) %10, i8 0, i32 64, i1 false)
  %11 = getelementptr i8, ptr %4, i32 80
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(256) %11, i8 0, i32 256, i1 false)
  %12 = getelementptr i8, ptr %0, i32 1408
  %13 = or i32 %9, 1024
  store i32 %13, ptr %7, align 4
  %14 = load ptr, ptr %12, align 8
  %15 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 14
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 256
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = and i32 %16, 512
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %1
  %23 = phi i32 [ 1792, %1 ], [ 1536, %19 ]
  %24 = or i32 %9, %23
  store i32 %24, ptr %7, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i32 [ %13, %19 ], [ %24, %22 ]
  %27 = load ptr, ptr %12, align 8
  %28 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 61, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %92, label %31

31:                                               ; preds = %25
  %32 = or i32 %26, 2
  store i32 %32, ptr %7, align 4
  %33 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %92, label %36

36:                                               ; preds = %31
  %37 = icmp ne i32 %3, 0
  br label %38

38:                                               ; preds = %88, %36
  %39 = phi ptr [ %34, %36 ], [ %90, %88 ]
  %40 = phi i32 [ 1, %36 ], [ %89, %88 ]
  %41 = icmp slt i32 %40, 33
  br i1 %41, label %42, label %75

42:                                               ; preds = %38
  %43 = icmp sgt i32 %40, 0
  %44 = and i1 %37, %43
  br i1 %44, label %45, label %88

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.netdev_hw_addr, ptr %39, i32 0, i32 2
  %47 = getelementptr %struct.netdev_hw_addr, ptr %39, i32 0, i32 2, i32 3
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = getelementptr %struct.netdev_hw_addr, ptr %39, i32 0, i32 2, i32 2
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = getelementptr %struct.netdev_hw_addr, ptr %39, i32 0, i32 2, i32 1
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = shl nuw nsw i32 %49, 16
  %57 = shl nuw nsw i32 %52, 8
  %58 = or i32 %57, %56
  %59 = or i32 %58, %55
  %60 = load i8, ptr %46, align 1
  %61 = zext i8 %60 to i32
  %62 = shl nuw i32 %59, 8
  %63 = or i32 %62, %61
  %64 = getelementptr %struct.lan78xx_priv, ptr %4, i32 0, i32 3, i32 %40
  %65 = getelementptr %struct.lan78xx_priv, ptr %4, i32 0, i32 3, i32 %40, i32 1
  store i32 %63, ptr %65, align 4
  %66 = getelementptr %struct.netdev_hw_addr, ptr %39, i32 0, i32 2, i32 5
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = getelementptr %struct.netdev_hw_addr, ptr %39, i32 0, i32 2, i32 4
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = shl nuw nsw i32 %68, 8
  %73 = or i32 %72, %71
  %74 = or i32 %73, -2147483648
  store i32 %74, ptr %64, align 4
  br label %88

75:                                               ; preds = %38
  %76 = getelementptr inbounds %struct.netdev_hw_addr, ptr %39, i32 0, i32 2
  %77 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %76, i32 noundef 6) #25
  %78 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %77) #26, !srcloc !19
  %79 = lshr i32 %78, 23
  %80 = and i32 %79, 31
  %81 = shl nuw i32 1, %80
  %82 = lshr i32 %78, 28
  %83 = getelementptr %struct.lan78xx_priv, ptr %4, i32 0, i32 2, i32 %82
  %84 = load i32, ptr %83, align 4
  %85 = or i32 %81, %84
  store i32 %85, ptr %83, align 4
  %86 = load i32, ptr %7, align 4
  %87 = or i32 %86, 8
  store i32 %87, ptr %7, align 4
  br label %88

88:                                               ; preds = %75, %45, %42
  %89 = add i32 %40, 1
  %90 = load ptr, ptr %39, align 4
  %91 = icmp eq ptr %90, %33
  br i1 %91, label %92, label %38

92:                                               ; preds = %88, %31, %25
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #21
  %93 = getelementptr inbounds %struct.lan78xx_priv, ptr %4, i32 0, i32 7
  %94 = load ptr, ptr @system_wq, align 4
  %95 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %94, ptr noundef %93) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan78xx_set_mac_addr(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %52

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %52

13:                                               ; preds = %8
  %14 = getelementptr %struct.sockaddr, ptr %1, i32 0, i32 1, i32 4
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = or i32 %10, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %52, label %19

19:                                               ; preds = %13
  tail call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef %9, i32 noundef 6) #21
  %20 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %21 = load ptr, ptr %20, align 32
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr i8, ptr %21, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 8
  %28 = or i32 %27, %23
  %29 = getelementptr i8, ptr %21, i32 2
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 16
  %33 = or i32 %28, %32
  %34 = getelementptr i8, ptr %21, i32 3
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl nuw i32 %36, 24
  %38 = or i32 %33, %37
  %39 = getelementptr i8, ptr %21, i32 4
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr i8, ptr %21, i32 5
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 8
  %46 = or i32 %45, %41
  %47 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %3, i32 noundef 284, i32 noundef %38)
  %48 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %3, i32 noundef 280, i32 noundef %46)
  %49 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %3, i32 noundef 1028, i32 noundef %38)
  %50 = or i32 %46, -2147483648
  %51 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %3, i32 noundef 1024, i32 noundef %50)
  br label %52

52:                                               ; preds = %19, %13, %8, %2
  %53 = phi i32 [ 0, %19 ], [ -16, %2 ], [ -99, %13 ], [ -99, %8 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl_running(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan78xx_change_mtu(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = add i32 %1, 18
  %5 = getelementptr i8, ptr %0, i32 1932
  %6 = load i32, ptr %5, align 4
  %7 = urem i32 %4, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 1416
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @usb_autopm_get_interface(ptr noundef %11) #21
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  tail call fastcc void @lan78xx_set_rx_max_frame_length(ptr noundef %3, i32 noundef %4)
  %15 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 %1, ptr %15, align 4
  %16 = load ptr, ptr %10, align 8
  tail call void @usb_autopm_put_interface(ptr noundef %16) #21
  br label %17

17:                                               ; preds = %14, %9, %2
  %18 = phi i32 [ 0, %14 ], [ -33, %2 ], [ %12, %9 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lan78xx_tx_timeout(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1524
  tail call fastcc void @unlink_urbs(ptr noundef %3)
  %4 = getelementptr i8, ptr %0, i32 1560
  %5 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %4) #21
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @__napi_schedule(ptr noundef %4) #21
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan78xx_vlan_rx_add_vid(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1956
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = lshr i16 %2, 5
  %8 = and i16 %7, 127
  %9 = and i16 %2, 31
  %10 = zext i16 %9 to i32
  %11 = shl nuw i32 1, %10
  %12 = zext i16 %8 to i32
  %13 = getelementptr %struct.lan78xx_priv, ptr %6, i32 0, i32 4, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.lan78xx_priv, ptr %6, i32 0, i32 8
  %17 = load ptr, ptr @system_wq, align 4
  %18 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %17, ptr noundef %16) #21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan78xx_vlan_rx_kill_vid(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1956
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = lshr i16 %2, 5
  %8 = and i16 %7, 127
  %9 = and i16 %2, 31
  %10 = zext i16 %9 to i32
  %11 = shl nuw i32 1, %10
  %12 = xor i32 %11, -1
  %13 = zext i16 %8 to i32
  %14 = getelementptr %struct.lan78xx_priv, ptr %6, i32 0, i32 4, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.lan78xx_priv, ptr %6, i32 0, i32 8
  %18 = load ptr, ptr @system_wq, align 4
  %19 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %18, ptr noundef %17) #21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan78xx_set_features(ptr noundef %0, i64 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1956
  %4 = load i32, ptr %3, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.lan78xx_priv, ptr %5, i32 0, i32 6
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #21
  %8 = and i64 %1, 1099511627776
  %9 = icmp eq i64 %8, 0
  %10 = getelementptr inbounds %struct.lan78xx_priv, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, -30881
  %13 = select i1 %9, i32 0, i32 30720
  %14 = or i32 %12, %13
  %15 = trunc i64 %1 to i32
  %16 = lshr i32 %15, 1
  %17 = and i32 %16, 128
  %18 = or i32 %14, %17
  %19 = getelementptr inbounds %struct.lan78xx_priv, ptr %5, i32 0, i32 1
  %20 = trunc i64 %1 to i32
  %21 = lshr i32 %20, 4
  %22 = and i32 %21, 32
  %23 = or i32 %18, %22
  store i32 %23, ptr %19, align 4
  %24 = getelementptr i8, ptr %0, i32 1408
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #21
  %25 = getelementptr inbounds %struct.lan78xx_priv, ptr %5, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %24, i32 noundef 176, i32 noundef %26)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lan78xx_start_tx_path(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 0, ptr %3, align 4, !annotation !13
  %4 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 264, ptr noundef nonnull %3) #21
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  br label %23

7:                                                ; preds = %1
  %8 = load i32, ptr %3, align 4
  %9 = or i32 %8, 1
  %10 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 264, i32 noundef %9) #21
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 0) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  %12 = icmp slt i32 %10, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  store i32 0, ptr %2, align 4, !annotation !13
  %14 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 196, ptr noundef nonnull %2) #21
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %2, align 4
  %18 = or i32 %17, -2147483648
  %19 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 196, i32 noundef %18) #21
  %20 = tail call i32 @llvm.smin.i32(i32 %19, i32 0) #21
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i32 [ %14, %13 ], [ %20, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %23

23:                                               ; preds = %21, %7, %6
  %24 = phi i32 [ %11, %7 ], [ %22, %21 ], [ %4, %6 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lan78xx_start_rx_path(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 0, ptr %3, align 4, !annotation !13
  %4 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 192, ptr noundef nonnull %3) #21
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  br label %23

7:                                                ; preds = %1
  %8 = load i32, ptr %3, align 4
  %9 = or i32 %8, -2147483648
  %10 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 192, i32 noundef %9) #21
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 0) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  %12 = icmp slt i32 %10, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  store i32 0, ptr %2, align 4, !annotation !13
  %14 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 260, ptr noundef nonnull %2) #21
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %2, align 4
  %18 = or i32 %17, 1
  %19 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 260, i32 noundef %18) #21
  %20 = tail call i32 @llvm.smin.i32(i32 %19, i32 0) #21
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i32 [ %14, %13 ], [ %20, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %23

23:                                               ; preds = %21, %7, %6
  %24 = phi i32 [ %11, %7 ], [ %22, %21 ], [ %4, %6 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lan78xx_terminate_urbs(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.wait_queue_head, align 4
  %3 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #21
  %4 = getelementptr inbounds %struct.wait_queue_head, ptr %2, i32 0, i32 1
  store i32 0, ptr %2, align 4
  store ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.wait_queue_head, ptr %2, i32 0, i32 1, i32 1
  store ptr %4, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #21
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  %7 = tail call ptr @llvm.thread.pointer() #21
  store i32 0, ptr %3, align 4
  store ptr %7, ptr %6, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  store ptr @default_wake_function, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  store ptr null, ptr %10, align 4
  call void @add_wait_queue(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %11 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 1
  store volatile i32 2, ptr %11, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  %12 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 29
  store ptr %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 14
  call fastcc void @unlink_urbs(ptr noundef %13)
  %14 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 10
  call fastcc void @unlink_urbs(ptr noundef %14)
  br label %15

15:                                               ; preds = %21, %1
  %16 = load ptr, ptr %14, align 4
  %17 = icmp eq ptr %16, %14
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load ptr, ptr %13, align 4
  %20 = icmp eq ptr %19, %13
  br i1 %20, label %23, label %21

21:                                               ; preds = %18, %15
  %22 = call i32 @schedule_timeout(i32 noundef 1) #21
  store volatile i32 2, ptr %11, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !21
  br label %15

23:                                               ; preds = %18
  store volatile i32 0, ptr %11, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !22
  store ptr null, ptr %12, align 4
  call void @remove_wait_queue(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %24 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 9
  br label %29

29:                                               ; preds = %29, %27
  %30 = call ptr @skb_dequeue(ptr noundef %24) #21
  %31 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 16
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 17
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 14
  store ptr %32, ptr %34, align 8
  %35 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 5
  store i32 0, ptr %35, align 8
  %36 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 6
  store i32 0, ptr %36, align 4
  call void @skb_queue_tail(ptr noundef %28, ptr noundef %30) #21
  %37 = load ptr, ptr %24, align 4
  %38 = icmp eq ptr %37, %24
  br i1 %38, label %39, label %29

39:                                               ; preds = %29, %23
  %40 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 12
  call void @skb_queue_purge(ptr noundef %40) #21
  %41 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 15
  call void @skb_queue_purge(ptr noundef %41) #21
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lan78xx_stop_hw(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store i32 0, ptr %5, align 4, !annotation !13
  %6 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4
  %10 = and i32 %9, %2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %8
  %13 = xor i32 %2, -1
  %14 = and i32 %9, %13
  store i32 %14, ptr %5, align 4
  %15 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef %1, i32 noundef %14)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %12
  %18 = load volatile i32, ptr @jiffies, align 64
  %19 = add i32 %18, 10
  br label %20

20:                                               ; preds = %27, %17
  %21 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5)
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %5, align 4
  %25 = and i32 %24, %3
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  tail call void @msleep(i32 noundef 1) #21
  %28 = load volatile i32, ptr @jiffies, align 64
  %29 = sub i32 %19, %28
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %20, label %31

31:                                               ; preds = %27, %23, %20, %12, %8, %4
  %32 = phi i32 [ %6, %4 ], [ %15, %12 ], [ 0, %8 ], [ 0, %23 ], [ -62, %27 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lan78xx_set_rx_max_frame_length(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 0, ptr %3, align 4, !annotation !13
  %4 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 260, ptr noundef nonnull %3)
  %5 = load i32, ptr %3, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = and i32 %5, -2
  %10 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 260, i32 noundef %9)
  %11 = and i32 %5, -1073676290
  %12 = shl i32 %1, 16
  %13 = add i32 %12, 262144
  %14 = and i32 %13, 1073676288
  %15 = or i32 %11, %14
  %16 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 260, i32 noundef %15)
  %17 = or i32 %15, 1
  br label %24

18:                                               ; preds = %2
  %19 = and i32 %5, -1073676289
  %20 = shl i32 %1, 16
  %21 = add i32 %20, 262144
  %22 = and i32 %21, 1073676288
  %23 = or i32 %19, %22
  br label %24

24:                                               ; preds = %18, %8
  %25 = phi i32 [ %23, %18 ], [ %17, %8 ]
  %26 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 260, i32 noundef %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lan78xx_get_drvinfo(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(32) @str, i32 noundef 32, i1 false)
  %4 = getelementptr i8, ptr %0, i32 1412
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 4
  %7 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 12
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.usb_bus, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 1
  %12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %6, i32 noundef 32, ptr noundef nonnull @.str.22, ptr noundef %10, ptr noundef %11) #21
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @lan78xx_get_regs_len(ptr nocapture noundef readonly %0) #12 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, i32 76, i32 204
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lan78xx_get_regs(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = tail call fastcc i32 @lan78xx_read_reg(ptr noundef %4, i32 noundef 0, ptr noundef %2)
  %6 = getelementptr i32, ptr %2, i32 1
  %7 = tail call fastcc i32 @lan78xx_read_reg(ptr noundef %4, i32 noundef 12, ptr noundef %6)
  %8 = getelementptr i32, ptr %2, i32 2
  %9 = tail call fastcc i32 @lan78xx_read_reg(ptr noundef %4, i32 noundef 16, ptr noundef %8)
  %10 = getelementptr i32, ptr %2, i32 3
  %11 = tail call fastcc i32 @lan78xx_read_reg(ptr noundef %4, i32 noundef 20, ptr noundef %10)
  %12 = getelementptr i32, ptr %2, i32 4
  %13 = tail call fastcc i32 @lan78xx_read_reg(ptr noundef %4, i32 noundef 64, ptr noundef %12)
  %14 = getelementptr i32, ptr %2, i32 5
  %15 = tail call fastcc i32 @lan78xx_read_reg(ptr noundef %4, i32 noundef 68, ptr noundef %14)
  %16 = getelementptr i32, ptr %2, i32 6
  %17 = tail call fastcc i32 @lan78xx_read_reg(ptr noundef %4, i32 noundef 168, ptr noundef %16)
  %18 = getelementptr i32, ptr %2, i32 7
  %19 = tail call fastcc i32 @lan78xx_read_reg(ptr noundef %4, i32 noundef 180, ptr noundef %18)
  %20 = getelementptr i32, ptr %2, i32 8
  %21 = tail call fastcc i32 @lan78xx_read_reg(ptr noundef %4, i32 noundef 256, ptr noundef %20)
  %22 = getelementptr i32, ptr %2, i32 9
  %23 = tail call fastcc i32 @lan78xx_read_reg(ptr noundef %4, i32 noundef 260, ptr noundef %22)
  %24 = getelementptr i32, ptr %2, i32 10
  %25 = tail call fastcc i32 @lan78xx_read_reg(ptr noundef %4, i32 noundef 264, ptr noundef %24)
  %26 = getelementptr i32, ptr %2, i32 11
  %27 = tail call fastcc i32 @lan78xx_read_reg(ptr noundef %4, i32 noundef 268, ptr noundef %26)
  %28 = getelementptr i32, ptr %2, i32 12
  %29 = tail call fastcc i32 @lan78xx_read_reg(ptr noundef %4, i32 noundef 276, ptr noundef %28)
  %30 = getelementptr i32, ptr %2, i32 13
  %31 = tail call fastcc i32 @lan78xx_read_reg(ptr noundef %4, i32 noundef 288, ptr noundef %30)
  %32 = getelementptr i32, ptr %2, i32 14
  %33 = tail call fastcc i32 @lan78xx_read_reg(ptr noundef %4, i32 noundef 292, ptr noundef %32)
  %34 = getelementptr i32, ptr %2, i32 15
  %35 = tail call fastcc i32 @lan78xx_read_reg(ptr noundef %4, i32 noundef 304, ptr noundef %34)
  %36 = getelementptr i32, ptr %2, i32 16
  %37 = tail call fastcc i32 @lan78xx_read_reg(ptr noundef %4, i32 noundef 308, ptr noundef %36)
  %38 = getelementptr i32, ptr %2, i32 17
  %39 = tail call fastcc i32 @lan78xx_read_reg(ptr noundef %4, i32 noundef 312, ptr noundef %38)
  %40 = getelementptr i32, ptr %2, i32 18
  %41 = tail call fastcc i32 @lan78xx_read_reg(ptr noundef %4, i32 noundef 320, ptr noundef %40)
  %42 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %65, label %45

45:                                               ; preds = %3
  %46 = getelementptr inbounds %struct.mdio_device, ptr %43, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.mdio_device, ptr %43, i32 0, i32 6
  %49 = load i32, ptr %48, align 8
  %50 = tail call i32 @mdiobus_read(ptr noundef %47, i32 noundef %49, i32 noundef 0) #21
  %51 = getelementptr i32, ptr %2, i32 19
  store i32 %50, ptr %51, align 4
  br label %52

52:                                               ; preds = %52, %45
  %53 = phi i32 [ 1, %45 ], [ %63, %52 ]
  %54 = phi i32 [ 19, %45 ], [ %55, %52 ]
  %55 = add nuw nsw i32 %54, 1
  %56 = load ptr, ptr %42, align 8
  %57 = getelementptr inbounds %struct.mdio_device, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.mdio_device, ptr %56, i32 0, i32 6
  %60 = load i32, ptr %59, align 8
  %61 = tail call i32 @mdiobus_read(ptr noundef %58, i32 noundef %60, i32 noundef %53) #21
  %62 = getelementptr i32, ptr %2, i32 %55
  store i32 %61, ptr %62, align 4
  %63 = add nuw nsw i32 %53, 1
  %64 = icmp eq i32 %63, 32
  br i1 %64, label %65, label %52

65:                                               ; preds = %52, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lan78xx_get_wol(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 0, ptr %3, align 4, !annotation !13
  %4 = getelementptr i8, ptr %0, i32 1956
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr i8, ptr %0, i32 1416
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @usb_autopm_get_interface(ptr noundef %8) #21
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %0, i32 1408
  %13 = call fastcc i32 @lan78xx_read_reg(ptr noundef %12, i32 noundef 128, ptr noundef nonnull %3)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17, !prof !16

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  store i32 0, ptr %16, align 4
  br label %26

17:                                               ; preds = %11
  %18 = load i32, ptr %3, align 4
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  br i1 %20, label %25, label %22

22:                                               ; preds = %17
  store i32 63, ptr %21, align 4
  %23 = getelementptr inbounds %struct.lan78xx_priv, ptr %6, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  br label %26

25:                                               ; preds = %17
  store i32 0, ptr %21, align 4
  br label %26

26:                                               ; preds = %25, %22, %15
  %27 = phi i32 [ %24, %22 ], [ 0, %25 ], [ 0, %15 ]
  %28 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  store i32 %27, ptr %28, align 4
  %29 = load ptr, ptr %7, align 8
  tail call void @usb_autopm_put_interface(ptr noundef %29) #21
  br label %30

30:                                               ; preds = %26, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan78xx_set_wol(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1956
  %4 = load i32, ptr %3, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr i8, ptr %0, i32 1416
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @usb_autopm_get_interface(ptr noundef %7) #21
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %12, 64
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.lan78xx_priv, ptr %5, i32 0, i32 9
  store i32 %12, ptr %15, align 4
  %16 = getelementptr i8, ptr %0, i32 1412
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  %19 = load i32, ptr %11, align 4
  %20 = icmp ne i32 %19, 0
  %21 = tail call i32 @device_set_wakeup_enable(ptr noundef %18, i1 noundef zeroext %20) #21
  %22 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %23 = load ptr, ptr %22, align 8
  %24 = tail call i32 @phy_ethtool_set_wol(ptr noundef %23, ptr noundef %1) #21
  %25 = load ptr, ptr %6, align 8
  tail call void @usb_autopm_put_interface(ptr noundef %25) #21
  br label %26

26:                                               ; preds = %14, %10, %2
  %27 = phi i32 [ %8, %14 ], [ %8, %2 ], [ -22, %10 ]
  ret i32 %27
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @lan78xx_get_msglevel(ptr nocapture noundef readonly %0) #12 {
  %2 = getelementptr i8, ptr %0, i32 1820
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @lan78xx_set_msglevel(ptr nocapture noundef writeonly %0, i32 noundef %1) #13 {
  %3 = getelementptr i8, ptr %0, i32 1820
  store i32 %1, ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan78xx_get_link(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %4) #21
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.phy_driver, ptr %7, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %5) #21
  br label %17

15:                                               ; preds = %9
  %16 = tail call i32 @genphy_read_status(ptr noundef %5) #21
  br label %17

17:                                               ; preds = %15, %13, %1
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.phy_device, ptr %18, i32 0, i32 4
  %20 = load i16, ptr %19, align 8
  %21 = lshr i16 %20, 13
  %22 = and i16 %21, 1
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds %struct.phy_device, ptr %18, i32 0, i32 28
  tail call void @mutex_unlock(ptr noundef %24) #21
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @lan78xx_ethtool_get_eeprom_len(ptr nocapture noundef readnone %0) #14 {
  ret i32 512
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan78xx_ethtool_get_eeprom(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1416
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @usb_autopm_get_interface(ptr noundef %5) #21
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 1408
  %10 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 1
  store i32 30885, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = tail call fastcc i32 @lan78xx_read_raw_eeprom(ptr noundef %9, i32 noundef %12, i32 noundef %14, ptr noundef %2)
  %16 = load ptr, ptr %4, align 8
  tail call void @usb_autopm_put_interface(ptr noundef %16) #21
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %15, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan78xx_ethtool_set_eeprom(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr i8, ptr %0, i32 1408
  %9 = getelementptr i8, ptr %0, i32 1416
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @usb_autopm_get_interface(ptr noundef %10) #21
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %123

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %120 [
    i32 30885, label %16
    i32 30963, label %107
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  store i32 0, ptr %7, align 4, !annotation !13
  %21 = call fastcc i32 @lan78xx_read_reg(ptr noundef %8, i32 noundef 16, ptr noundef nonnull %7) #21
  %22 = load i32, ptr %7, align 4
  %23 = getelementptr i8, ptr %0, i32 1984
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 30720
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = and i32 %22, -3145729
  store i32 %27, ptr %7, align 4
  %28 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %8, i32 noundef 16, i32 noundef %27) #21
  br label %29

29:                                               ; preds = %26, %16
  %30 = load volatile i32, ptr @jiffies, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  store i32 0, ptr %6, align 4, !annotation !13
  %31 = add i32 %30, 100
  br label %32

32:                                               ; preds = %38, %29
  %33 = call fastcc i32 @lan78xx_read_reg(ptr noundef %8, i32 noundef 64, ptr noundef nonnull %6) #21
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %44, label %35, !prof !16

35:                                               ; preds = %32
  %36 = load i32, ptr %6, align 4
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  tail call void @usleep_range_state(i32 noundef 40, i32 noundef 100, i32 noundef 2) #21
  %39 = load volatile i32, ptr @jiffies, align 64
  %40 = sub i32 %31, %39
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %32, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %43, ptr noundef nonnull @.str.23) #22
  br label %44

44:                                               ; preds = %42, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  br label %100

45:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  %46 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %8, i32 noundef 64, i32 noundef -1610612736) #21
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %100, label %48, !prof !16

48:                                               ; preds = %45
  %49 = load volatile i32, ptr @jiffies, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store i32 0, ptr %5, align 4, !annotation !13
  %50 = add i32 %49, 100
  br label %51

51:                                               ; preds = %57, %48
  %52 = call fastcc i32 @lan78xx_read_reg(ptr noundef %8, i32 noundef 64, ptr noundef nonnull %5) #21
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %63, label %54, !prof !16

54:                                               ; preds = %51
  %55 = load i32, ptr %5, align 4
  %56 = and i32 %55, -2147482624
  switch i32 %56, label %61 [
    i32 -2147483648, label %57
    i32 0, label %64
  ]

57:                                               ; preds = %54
  tail call void @usleep_range_state(i32 noundef 40, i32 noundef 100, i32 noundef 2) #21
  %58 = load volatile i32, ptr @jiffies, align 64
  %59 = sub i32 %50, %58
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %51, label %61

61:                                               ; preds = %57, %54
  %62 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %62, ptr noundef nonnull @.str.24) #22
  br label %63

63:                                               ; preds = %61, %51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  br label %100

64:                                               ; preds = %54
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  %65 = icmp eq i32 %20, 0
  br i1 %65, label %100, label %66

66:                                               ; preds = %96, %64
  %67 = phi i32 [ %98, %96 ], [ 0, %64 ]
  %68 = phi i32 [ %97, %96 ], [ %18, %64 ]
  %69 = getelementptr i8, ptr %2, i32 %67
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %8, i32 noundef 68, i32 noundef %71) #21
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %100, label %74

74:                                               ; preds = %66
  %75 = and i32 %68, 511
  %76 = or i32 %75, -1342177280
  %77 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %8, i32 noundef 64, i32 noundef %76) #21
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %100, label %79

79:                                               ; preds = %74
  %80 = load volatile i32, ptr @jiffies, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store i32 0, ptr %4, align 4, !annotation !13
  %81 = add i32 %80, 100
  br label %82

82:                                               ; preds = %88, %79
  %83 = call fastcc i32 @lan78xx_read_reg(ptr noundef %8, i32 noundef 64, ptr noundef nonnull %4) #21
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %94, label %85, !prof !16

85:                                               ; preds = %82
  %86 = load i32, ptr %4, align 4
  %87 = and i32 %86, -2147482624
  switch i32 %87, label %92 [
    i32 -2147483648, label %88
    i32 0, label %96
  ]

88:                                               ; preds = %85
  tail call void @usleep_range_state(i32 noundef 40, i32 noundef 100, i32 noundef 2) #21
  %89 = load volatile i32, ptr @jiffies, align 64
  %90 = sub i32 %81, %89
  %91 = icmp sgt i32 %90, -1
  br i1 %91, label %82, label %92

92:                                               ; preds = %88, %85
  store i32 %76, ptr %7, align 4
  %93 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %93, ptr noundef nonnull @.str.24) #22
  br label %95

94:                                               ; preds = %82
  store i32 %76, ptr %7, align 4
  br label %95

95:                                               ; preds = %94, %92
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  br label %100

96:                                               ; preds = %85
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  %97 = add i32 %68, 1
  %98 = add nuw i32 %67, 1
  %99 = icmp eq i32 %98, %20
  br i1 %99, label %100, label %66

100:                                              ; preds = %96, %95, %74, %66, %64, %63, %45, %44
  %101 = phi i32 [ -5, %45 ], [ -5, %44 ], [ -5, %63 ], [ -5, %95 ], [ 0, %64 ], [ -5, %66 ], [ 0, %96 ], [ -5, %74 ]
  %102 = load i32, ptr %23, align 8
  %103 = icmp eq i32 %102, 30720
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %8, i32 noundef 16, i32 noundef %22) #21
  br label %106

106:                                              ; preds = %104, %100
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  br label %120

107:                                              ; preds = %13
  %108 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 3
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 512
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load i8, ptr %2, align 1
  %117 = icmp eq i8 %116, -13
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = tail call fastcc i32 @lan78xx_write_raw_otp(ptr noundef %8, ptr noundef %2)
  br label %120

120:                                              ; preds = %118, %115, %111, %107, %106, %13
  %121 = phi i32 [ %101, %106 ], [ %119, %118 ], [ 0, %115 ], [ 0, %111 ], [ 0, %107 ], [ 0, %13 ]
  %122 = load ptr, ptr %9, align 8
  tail call void @usb_autopm_put_interface(ptr noundef %122) #21
  br label %123

123:                                              ; preds = %120, %3
  %124 = phi i32 [ %121, %120 ], [ %11, %3 ]
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lan78xx_get_pause(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca %struct.ethtool_link_ksettings, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %3, i8 0, i32 88, i1 false), !annotation !13
  call void @phy_ethtool_ksettings_get(ptr noundef %5, ptr noundef nonnull %3) #21
  %6 = getelementptr i8, ptr %0, i32 2000
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  %9 = getelementptr i8, ptr %0, i32 2004
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  store i32 1, ptr %14, align 4
  %15 = load i8, ptr %9, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi i8 [ %15, %13 ], [ %10, %2 ]
  %18 = and i8 %17, 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  store i32 1, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %16
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan78xx_set_pause(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.ethtool_link_ksettings, align 4
  %4 = alloca [3 x i32], align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %3, i8 0, i32 88, i1 false), !annotation !13
  call void @phy_ethtool_ksettings_get(ptr noundef %6, ptr noundef nonnull %3) #21
  %7 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.ethtool_link_settings, ptr %3, i32 0, i32 5
  %11 = load i8, ptr %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = select i1 %9, i1 true, i1 %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %2
  %15 = getelementptr i8, ptr %0, i32 2004
  store i8 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i8 0, i8 2
  store i8 %19, ptr %15, align 4
  %20 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %14
  %24 = or i8 %19, 1
  store i8 %24, ptr %15, align 4
  br label %25

25:                                               ; preds = %23, %14
  %26 = phi i8 [ %24, %23 ], [ %19, %14 ]
  %27 = icmp eq i8 %11, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  %29 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %3, i32 0, i32 1, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, -24577
  store i32 %31, ptr %29, align 4
  %32 = zext i8 %26 to i32
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i16 0, i16 24576
  %36 = and i32 %32, 1
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr inbounds i8, ptr %4, i32 4
  store i64 0, ptr %38, align 4
  %39 = xor i16 %35, 16384
  %40 = select i1 %37, i16 %35, i16 %39
  %41 = zext i16 %40 to i32
  store i32 %41, ptr %4, align 4
  call void @__bitmap_or(ptr noundef %29, ptr noundef nonnull %4, ptr noundef %29, i32 noundef 92) #21
  %42 = call i32 @phy_ethtool_ksettings_set(ptr noundef %6, ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  br label %43

43:                                               ; preds = %28, %25
  %44 = load i32, ptr %7, align 4
  %45 = getelementptr i8, ptr %0, i32 2000
  store i32 %44, ptr %45, align 8
  br label %46

46:                                               ; preds = %43, %2
  %47 = phi i32 [ 0, %43 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #21
  ret i32 %47
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @lan78xx_get_strings(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #15 {
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(1504) %2, ptr noundef nonnull align 1 dereferenceable(1504) @lan78xx_gstrings, i32 1504, i1 false)
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lan78xx_get_stats(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1408
  tail call fastcc void @lan78xx_update_stats(ptr noundef %4)
  %5 = getelementptr i8, ptr %0, i32 2016
  tail call void @mutex_lock(ptr noundef %5) #21
  %6 = getelementptr i8, ptr %0, i32 2600
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(376) %2, ptr noundef align 8 dereferenceable(376) %6, i32 376, i1 false)
  tail call void @mutex_unlock(ptr noundef %5) #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @lan78xx_get_sset_count(ptr nocapture noundef readnone %0, i32 noundef %1) #14 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i32 47, i32 -95
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan78xx_get_eee(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 0, ptr %3, align 4, !annotation !13
  %7 = getelementptr i8, ptr %0, i32 1416
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @usb_autopm_get_interface(ptr noundef %8) #21
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %2
  %12 = tail call i32 @phy_ethtool_get_eee(ptr noundef %6, ptr noundef %1) #21
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %11
  %15 = call fastcc i32 @lan78xx_read_reg(ptr noundef %4, i32 noundef 256, ptr noundef nonnull %3)
  %16 = load i32, ptr %3, align 4
  %17 = and i32 %16, 131072
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 5
  store i32 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, %22
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 4
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 6
  store i32 1, ptr %29, align 4
  %30 = call fastcc i32 @lan78xx_read_reg(ptr noundef %4, i32 noundef 304, ptr noundef nonnull %3)
  %31 = load i32, ptr %3, align 4
  %32 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 7
  store i32 %31, ptr %32, align 4
  br label %35

33:                                               ; preds = %14
  %34 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %34, i8 0, i64 16, i1 false)
  br label %35

35:                                               ; preds = %33, %19, %11
  %36 = phi i32 [ %12, %11 ], [ 0, %33 ], [ 0, %19 ]
  %37 = load ptr, ptr %7, align 8
  tail call void @usb_autopm_put_interface(ptr noundef %37) #21
  br label %38

38:                                               ; preds = %35, %2
  %39 = phi i32 [ %36, %35 ], [ %9, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan78xx_set_eee(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 0, ptr %3, align 4, !annotation !13
  %5 = getelementptr i8, ptr %0, i32 1416
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @usb_autopm_get_interface(ptr noundef %6) #21
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = call fastcc i32 @lan78xx_read_reg(ptr noundef %4, i32 noundef 256, ptr noundef nonnull %3)
  %14 = load i32, ptr %3, align 4
  br i1 %12, label %24, label %15

15:                                               ; preds = %9
  %16 = or i32 %14, 131072
  %17 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %4, i32 noundef 256, i32 noundef %16)
  %18 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i32 @phy_ethtool_set_eee(ptr noundef %19, ptr noundef %1) #21
  %21 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %4, i32 noundef 304, i32 noundef %22)
  br label %27

24:                                               ; preds = %9
  %25 = and i32 %14, -131073
  %26 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %4, i32 noundef 256, i32 noundef %25)
  br label %27

27:                                               ; preds = %24, %15
  %28 = load ptr, ptr %5, align 8
  tail call void @usb_autopm_put_interface(ptr noundef %28) #21
  br label %29

29:                                               ; preds = %27, %2
  %30 = phi i32 [ 0, %27 ], [ %7, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan78xx_get_link_ksettings(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i32 1416
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @usb_autopm_get_interface(ptr noundef %6) #21
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  tail call void @phy_ethtool_ksettings_get(ptr noundef %4, ptr noundef %1) #21
  %10 = load ptr, ptr %5, align 8
  tail call void @usb_autopm_put_interface(ptr noundef %10) #21
  br label %11

11:                                               ; preds = %9, %2
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan78xx_set_link_ksettings(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i32 1416
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @usb_autopm_get_interface(ptr noundef %6) #21
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @phy_ethtool_ksettings_set(ptr noundef %4, ptr noundef %1) #21
  %11 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 5
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.mdio_device, ptr %4, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.mdio_device, ptr %4, i32 0, i32 6
  %18 = load i32, ptr %17, align 8
  %19 = tail call i32 @mdiobus_read(ptr noundef %16, i32 noundef %18, i32 noundef 0) #21
  %20 = trunc i32 %19 to i16
  %21 = or i16 %20, 16384
  %22 = load ptr, ptr %15, align 8
  %23 = load i32, ptr %17, align 8
  %24 = tail call i32 @mdiobus_write(ptr noundef %22, i32 noundef %23, i32 noundef 0, i16 noundef zeroext %21) #21
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #21
  %26 = load ptr, ptr %15, align 8
  %27 = load i32, ptr %17, align 8
  %28 = tail call i32 @mdiobus_write(ptr noundef %26, i32 noundef %27, i32 noundef 0, i16 noundef zeroext %20) #21
  br label %29

29:                                               ; preds = %14, %9
  %30 = load ptr, ptr %5, align 8
  tail call void @usb_autopm_put_interface(ptr noundef %30) #21
  br label %31

31:                                               ; preds = %29, %2
  %32 = phi i32 [ %10, %29 ], [ %7, %2 ]
  ret i32 %32
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_wol(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lan78xx_read_raw_eeprom(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  store i32 0, ptr %7, align 4, !annotation !13
  %8 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %7)
  %9 = load i32, ptr %7, align 4
  %10 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 36
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 30720
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = and i32 %9, -3145729
  %15 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 16, i32 noundef %14)
  br label %16

16:                                               ; preds = %13, %4
  %17 = load volatile i32, ptr @jiffies, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  store i32 0, ptr %6, align 4, !annotation !13
  %18 = add i32 %17, 100
  br label %19

19:                                               ; preds = %25, %16
  %20 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 64, ptr noundef nonnull %6) #21
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %31, label %22, !prof !16

22:                                               ; preds = %19
  %23 = load i32, ptr %6, align 4
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  tail call void @usleep_range_state(i32 noundef 40, i32 noundef 100, i32 noundef 2) #21
  %26 = load volatile i32, ptr @jiffies, align 64
  %27 = sub i32 %18, %26
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %19, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %30, ptr noundef nonnull @.str.23) #22
  br label %31

31:                                               ; preds = %29, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  br label %73

32:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  %33 = icmp eq i32 %2, 0
  br i1 %33, label %67, label %34

34:                                               ; preds = %60, %32
  %35 = phi i32 [ %65, %60 ], [ 0, %32 ]
  %36 = phi i32 [ %64, %60 ], [ %1, %32 ]
  %37 = and i32 %36, 511
  %38 = or i32 %37, -2147483648
  store i32 %38, ptr %7, align 4
  %39 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 64, i32 noundef %38)
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %67, label %41, !prof !16

41:                                               ; preds = %34
  %42 = load volatile i32, ptr @jiffies, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store i32 0, ptr %5, align 4, !annotation !13
  %43 = add i32 %42, 100
  br label %44

44:                                               ; preds = %50, %41
  %45 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 64, ptr noundef nonnull %5) #21
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %56, label %47, !prof !16

47:                                               ; preds = %44
  %48 = load i32, ptr %5, align 4
  %49 = and i32 %48, -2147482624
  switch i32 %49, label %54 [
    i32 -2147483648, label %50
    i32 0, label %57
  ]

50:                                               ; preds = %47
  tail call void @usleep_range_state(i32 noundef 40, i32 noundef 100, i32 noundef 2) #21
  %51 = load volatile i32, ptr @jiffies, align 64
  %52 = sub i32 %43, %51
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %44, label %54

54:                                               ; preds = %50, %47
  %55 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %55, ptr noundef nonnull @.str.24) #22
  br label %56

56:                                               ; preds = %54, %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  br label %67

57:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  %58 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 68, ptr noundef nonnull %7)
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %67, label %60, !prof !16

60:                                               ; preds = %57
  %61 = load i32, ptr %7, align 4
  %62 = trunc i32 %61 to i8
  %63 = getelementptr i8, ptr %3, i32 %35
  store i8 %62, ptr %63, align 1
  %64 = add i32 %36, 1
  %65 = add nuw i32 %35, 1
  %66 = icmp eq i32 %65, %2
  br i1 %66, label %67, label %34

67:                                               ; preds = %60, %57, %56, %34, %32
  %68 = phi i32 [ -5, %56 ], [ 0, %32 ], [ -5, %34 ], [ -5, %57 ], [ 0, %60 ]
  %69 = load i32, ptr %10, align 8
  %70 = icmp eq i32 %69, 30720
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 16, i32 noundef %9)
  br label %73

73:                                               ; preds = %71, %67, %31
  %74 = phi i32 [ %68, %71 ], [ %68, %67 ], [ -5, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lan78xx_write_raw_otp(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 0, ptr %3, align 4, !annotation !13
  %4 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 4096, ptr noundef nonnull %3)
  %5 = load i32, ptr %3, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 4096, i32 noundef 0)
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = add i32 %10, 100
  br label %12

12:                                               ; preds = %18, %8
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #21
  %14 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 4096, ptr noundef nonnull %3)
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = sub i32 %11, %15
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %51, label %18

18:                                               ; preds = %12
  %19 = load i32, ptr %3, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %12

22:                                               ; preds = %18, %2
  %23 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 4116, i32 noundef 1)
  br label %24

24:                                               ; preds = %48, %22
  %25 = phi i32 [ 0, %22 ], [ %49, %48 ]
  %26 = lshr i32 %25, 8
  %27 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 4100, i32 noundef %26)
  %28 = and i32 %25, 255
  %29 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 4104, i32 noundef %28)
  %30 = getelementptr i8, ptr %1, i32 %25
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 4112, i32 noundef %32)
  %34 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 4132, i32 noundef 8)
  %35 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 4136, i32 noundef 1)
  %36 = load volatile i32, ptr @jiffies, align 64
  %37 = add i32 %36, 100
  br label %38

38:                                               ; preds = %44, %24
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #21
  %40 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 4144, ptr noundef nonnull %3)
  %41 = load volatile i32, ptr @jiffies, align 64
  %42 = sub i32 %37, %41
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %38
  %45 = load i32, ptr %3, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %38

48:                                               ; preds = %44
  %49 = add nuw nsw i32 %25, 1
  %50 = icmp eq i32 %49, 512
  br i1 %50, label %54, label %24

51:                                               ; preds = %38, %12
  %52 = phi ptr [ @.str.26, %38 ], [ @.str.25, %12 ]
  %53 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %53, ptr noundef nonnull %52) #22
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i32 [ -5, %51 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_eee(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_eee(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lan78xx_deferred_multicast_write(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -872
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -864
  tail call fastcc void @lan78xx_dataport_write(ptr noundef %3, i32 noundef 128, i32 noundef 16, ptr noundef %4)
  %5 = getelementptr i8, ptr %0, i32 -800
  br label %6

6:                                                ; preds = %6, %1
  %7 = phi i32 [ 1, %1 ], [ %18, %6 ]
  %8 = shl i32 %7, 3
  %9 = add nuw nsw i32 %8, 1024
  %10 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %3, i32 noundef %9, i32 noundef 0)
  %11 = add nuw nsw i32 %8, 1028
  %12 = getelementptr [33 x [2 x i32]], ptr %5, i32 0, i32 %7
  %13 = getelementptr [2 x i32], ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %3, i32 noundef %11, i32 noundef %14)
  %16 = load i32, ptr %12, align 4
  %17 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %3, i32 noundef %9, i32 noundef %16)
  %18 = add nuw nsw i32 %7, 1
  %19 = icmp eq i32 %18, 33
  br i1 %19, label %20, label %6

20:                                               ; preds = %6
  %21 = getelementptr i8, ptr %0, i32 -868
  %22 = load i32, ptr %21, align 4
  %23 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %3, i32 noundef 176, i32 noundef %22)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lan78xx_deferred_vlan_write(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -888
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -552
  tail call fastcc void @lan78xx_dataport_write(ptr noundef %3, i32 noundef 0, i32 noundef 128, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lan78xx_reset(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca [6 x i32], align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [6 x i8], align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 33
  %15 = load i32, ptr %14, align 4
  %16 = inttoptr i32 %15 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #21
  store i32 0, ptr %12, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #21
  store i8 0, ptr %13, align 1, !annotation !13
  %17 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %12)
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %336, label %19

19:                                               ; preds = %1
  %20 = load i32, ptr %12, align 4
  %21 = or i32 %20, 2
  store i32 %21, ptr %12, align 4
  %22 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 16, i32 noundef %21)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %336, label %24

24:                                               ; preds = %19
  %25 = load volatile i32, ptr @jiffies, align 64
  %26 = add i32 %25, 100
  br label %27

27:                                               ; preds = %37, %24
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #21
  %29 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %12)
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %336, label %31

31:                                               ; preds = %27
  %32 = load volatile i32, ptr @jiffies, align 64
  %33 = sub i32 %26, %32
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %36, ptr noundef nonnull @.str.36) #22
  br label %336

37:                                               ; preds = %31
  %38 = load i32, ptr %12, align 4
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %27

41:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #21
  store i32 0, ptr %9, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #21
  store i32 0, ptr %10, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %11) #21
  %42 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 284, ptr noundef nonnull %9) #21
  %43 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 280, ptr noundef nonnull %10) #21
  %44 = load i32, ptr %9, align 4
  %45 = trunc i32 %44 to i8
  store i8 %45, ptr %11, align 4
  %46 = lshr i32 %44, 8
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 1
  store i8 %47, ptr %48, align 1
  %49 = lshr i32 %44, 16
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 2
  store i8 %50, ptr %51, align 2
  %52 = lshr i32 %44, 24
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 3
  store i8 %53, ptr %54, align 1
  %55 = load i32, ptr %10, align 4
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 4
  store i8 %56, ptr %57, align 4
  %58 = lshr i32 %55, 8
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 5
  store i8 %59, ptr %60, align 1
  %61 = load i32, ptr %11, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %41
  %65 = load i16, ptr %57, align 4
  %66 = zext i16 %65 to i32
  %67 = or i32 %61, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %135

69:                                               ; preds = %64, %41
  %70 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.usb_device, ptr %71, i32 0, i32 15
  %73 = call i32 @eth_platform_get_mac_address(ptr noundef %72, ptr noundef nonnull %11) #21
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i8, ptr %11, align 4
  br label %112

77:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #21
  store i8 0, ptr %8, align 1, !annotation !13
  %78 = call fastcc i32 @lan78xx_read_raw_eeprom(ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %8) #21
  %79 = icmp eq i32 %78, 0
  %80 = load i8, ptr %8, align 1
  %81 = icmp eq i8 %80, -91
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #21
  br label %87

84:                                               ; preds = %77
  %85 = call fastcc i32 @lan78xx_read_raw_eeprom(ptr noundef %0, i32 noundef 1, i32 noundef 6, ptr noundef nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #21
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %84, %83
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #21
  store i8 0, ptr %7, align 1, !annotation !13
  %88 = call fastcc i32 @lan78xx_read_raw_otp(ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %7) #21
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i8, ptr %7, align 1
  switch i8 %91, label %93 [
    i8 -9, label %92
    i8 -13, label %94
  ]

92:                                               ; preds = %90
  br label %94

93:                                               ; preds = %90, %87
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #21
  br label %108

94:                                               ; preds = %92, %90
  %95 = phi i32 [ 1, %90 ], [ 257, %92 ]
  %96 = call fastcc i32 @lan78xx_read_raw_otp(ptr noundef %0, i32 noundef %95, i32 noundef 6, ptr noundef nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #21
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %94, %84
  %99 = load i32, ptr %11, align 4
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = trunc i32 %99 to i8
  %104 = load i16, ptr %57, align 4
  %105 = zext i16 %104 to i32
  %106 = or i32 %99, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %102, %98, %94, %93
  call void @get_random_bytes(ptr noundef nonnull %11, i32 noundef 6) #21
  %109 = load i8, ptr %11, align 4
  %110 = and i8 %109, -4
  %111 = or i8 %110, 2
  store i8 %111, ptr %11, align 4
  br label %112

112:                                              ; preds = %108, %102, %75
  %113 = phi i8 [ %76, %75 ], [ %103, %102 ], [ %111, %108 ]
  %114 = zext i8 %113 to i32
  %115 = load i8, ptr %48, align 1
  %116 = zext i8 %115 to i32
  %117 = shl nuw nsw i32 %116, 8
  %118 = or i32 %117, %114
  %119 = load i8, ptr %51, align 2
  %120 = zext i8 %119 to i32
  %121 = shl nuw nsw i32 %120, 16
  %122 = or i32 %118, %121
  %123 = load i8, ptr %54, align 1
  %124 = zext i8 %123 to i32
  %125 = shl nuw i32 %124, 24
  %126 = or i32 %122, %125
  %127 = load i8, ptr %57, align 4
  %128 = zext i8 %127 to i32
  %129 = load i8, ptr %60, align 1
  %130 = zext i8 %129 to i32
  %131 = shl nuw nsw i32 %130, 8
  %132 = or i32 %131, %128
  %133 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 284, i32 noundef %126) #21
  %134 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 280, i32 noundef %132) #21
  br label %135

135:                                              ; preds = %112, %64
  %136 = phi i32 [ %132, %112 ], [ %55, %64 ]
  %137 = phi i32 [ %126, %112 ], [ %44, %64 ]
  %138 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 1028, i32 noundef %137) #21
  %139 = or i32 %136, -2147483648
  %140 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 1024, i32 noundef %139) #21
  %141 = load ptr, ptr %0, align 8
  call void @dev_addr_mod(ptr noundef %141, i32 noundef 0, ptr noundef nonnull %11, i32 noundef 6) #21
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #21
  %142 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %12)
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %336, label %144

144:                                              ; preds = %135
  %145 = load i32, ptr %12, align 4
  %146 = lshr i32 %145, 16
  %147 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 36
  store i32 %146, ptr %147, align 8
  %148 = and i32 %145, 65535
  %149 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 37
  store i32 %148, ptr %149, align 4
  %150 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 128, ptr noundef nonnull %12)
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %336, label %152

152:                                              ; preds = %144
  %153 = load i32, ptr %12, align 4
  %154 = or i32 %153, 64
  store i32 %154, ptr %12, align 4
  %155 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 128, i32 noundef %154)
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %336, label %157

157:                                              ; preds = %152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store i32 0, ptr %4, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false) #21
  %158 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 132, ptr noundef nonnull %4) #21
  %159 = load i32, ptr %4, align 4
  %160 = and i32 %159, 256
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %216, label %162

162:                                              ; preds = %157
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #21
  store i16 0, ptr %6, align 2, !annotation !13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #21
  store i8 0, ptr %3, align 1, !annotation !13
  %163 = call fastcc i32 @lan78xx_read_raw_eeprom(ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %3) #21
  %164 = icmp eq i32 %163, 0
  %165 = load i8, ptr %3, align 1
  %166 = icmp eq i8 %165, -91
  %167 = select i1 %164, i1 %166, i1 false
  br i1 %167, label %169, label %168

168:                                              ; preds = %162
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #21
  br label %182

169:                                              ; preds = %162
  %170 = call fastcc i32 @lan78xx_read_raw_eeprom(ptr noundef %0, i32 noundef 63, i32 noundef 2, ptr noundef nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #21
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %169
  %173 = load i8, ptr %6, align 2
  %174 = icmp eq i8 %173, 24
  br i1 %174, label %175, label %204

175:                                              ; preds = %172
  %176 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  %177 = load i8, ptr %176, align 1
  %178 = zext i8 %177 to i32
  %179 = shl nuw nsw i32 %178, 1
  %180 = call fastcc i32 @lan78xx_read_raw_eeprom(ptr noundef %0, i32 noundef %179, i32 noundef 24, ptr noundef nonnull %5) #21
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %203, label %204

182:                                              ; preds = %169, %168
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #21
  store i8 0, ptr %2, align 1, !annotation !13
  %183 = call fastcc i32 @lan78xx_read_raw_otp(ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %2) #21
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load i8, ptr %2, align 1
  switch i8 %186, label %188 [
    i8 -9, label %187
    i8 -13, label %189
  ]

187:                                              ; preds = %185
  br label %189

188:                                              ; preds = %185, %182
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #21
  br label %204

189:                                              ; preds = %187, %185
  %190 = phi i32 [ 63, %185 ], [ 319, %187 ]
  %191 = call fastcc i32 @lan78xx_read_raw_otp(ptr noundef %0, i32 noundef %190, i32 noundef 2, ptr noundef nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #21
  %192 = icmp eq i32 %191, 0
  %193 = load i8, ptr %6, align 2
  %194 = icmp eq i8 %193, 24
  %195 = select i1 %192, i1 %194, i1 false
  br i1 %195, label %196, label %204

196:                                              ; preds = %189
  %197 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  %198 = load i8, ptr %197, align 1
  %199 = zext i8 %198 to i32
  %200 = shl nuw nsw i32 %199, 1
  %201 = call fastcc i32 @lan78xx_read_raw_otp(ptr noundef %0, i32 noundef %200, i32 noundef 24, ptr noundef nonnull %5) #21
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %196, %175
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #21
  br label %229

204:                                              ; preds = %196, %189, %188, %175, %172
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #21
  %205 = load i32, ptr %5, align 4
  %206 = getelementptr inbounds [6 x i32], ptr %5, i32 0, i32 1
  %207 = load i32, ptr %206, align 4
  %208 = getelementptr inbounds [6 x i32], ptr %5, i32 0, i32 2
  %209 = load i32, ptr %208, align 4
  %210 = getelementptr inbounds [6 x i32], ptr %5, i32 0, i32 3
  %211 = load i32, ptr %210, align 4
  %212 = getelementptr inbounds [6 x i32], ptr %5, i32 0, i32 4
  %213 = load i32, ptr %212, align 4
  %214 = getelementptr inbounds [6 x i32], ptr %5, i32 0, i32 5
  %215 = load i32, ptr %214, align 4
  br label %216

216:                                              ; preds = %204, %157
  %217 = phi i32 [ %215, %204 ], [ 0, %157 ]
  %218 = phi i32 [ %213, %204 ], [ 0, %157 ]
  %219 = phi i32 [ %211, %204 ], [ 0, %157 ]
  %220 = phi i32 [ %209, %204 ], [ 0, %157 ]
  %221 = phi i32 [ %207, %204 ], [ 0, %157 ]
  %222 = phi i32 [ %205, %204 ], [ 0, %157 ]
  %223 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 224, i32 noundef %222) #21
  %224 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 228, i32 noundef %221) #21
  %225 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 232, i32 noundef %220) #21
  %226 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 236, i32 noundef %219) #21
  %227 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 240, i32 noundef %218) #21
  %228 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 244, i32 noundef %217) #21
  br label %229

229:                                              ; preds = %216, %203
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  %230 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 27
  %231 = load i32, ptr %230, align 4
  %232 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 144, i32 noundef %231)
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %336, label %234

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 26
  %236 = load i32, ptr %235, align 8
  %237 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 148, i32 noundef %236)
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %336, label %239

239:                                              ; preds = %234
  %240 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %12)
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %336, label %242

242:                                              ; preds = %239
  %243 = load i32, ptr %12, align 4
  %244 = or i32 %243, 16
  store i32 %244, ptr %12, align 4
  %245 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 16, i32 noundef %244)
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %336, label %247

247:                                              ; preds = %242
  %248 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 128, ptr noundef nonnull %12)
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %336, label %250

250:                                              ; preds = %247
  %251 = load i32, ptr %12, align 4
  %252 = or i32 %251, 32
  store i32 %252, ptr %12, align 4
  %253 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 128, i32 noundef %252)
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %336, label %255

255:                                              ; preds = %250
  store i32 23, ptr %12, align 4
  %256 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 200, i32 noundef 23)
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %336, label %258

258:                                              ; preds = %255
  store i32 23, ptr %12, align 4
  %259 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 204, i32 noundef 23)
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %336, label %261

261:                                              ; preds = %258
  %262 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 12, i32 noundef -1)
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %336, label %264

264:                                              ; preds = %261
  %265 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 268, i32 noundef 0)
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %336, label %267

267:                                              ; preds = %264
  %268 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 208, i32 noundef 0)
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %336, label %270

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct.lan78xx_priv, ptr %16, i32 0, i32 1
  %272 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 176, ptr noundef %271)
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %336, label %274

274:                                              ; preds = %270
  %275 = load i32, ptr %271, align 4
  %276 = or i32 %275, 1026
  store i32 %276, ptr %271, align 4
  %277 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 176, i32 noundef %276)
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %336, label %279

279:                                              ; preds = %274
  %280 = load ptr, ptr %0, align 8
  %281 = getelementptr inbounds %struct.net_device, ptr %280, i32 0, i32 23
  %282 = load i64, ptr %281, align 16
  %283 = call i32 @lan78xx_set_features(ptr noundef %280, i64 noundef %282)
  %284 = load ptr, ptr %0, align 8
  call void @lan78xx_set_multicast(ptr noundef %284)
  %285 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 20, ptr noundef nonnull %12)
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %336, label %287

287:                                              ; preds = %279
  %288 = load i32, ptr %12, align 4
  %289 = or i32 %288, 16
  store i32 %289, ptr %12, align 4
  %290 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 20, i32 noundef %289)
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %336, label %292

292:                                              ; preds = %287
  %293 = load volatile i32, ptr @jiffies, align 64
  %294 = add i32 %293, 100
  br label %295

295:                                              ; preds = %305, %292
  %296 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %296(i32 noundef 214748000) #21
  %297 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 20, ptr noundef nonnull %12)
  %298 = icmp slt i32 %297, 0
  br i1 %298, label %336, label %299

299:                                              ; preds = %295
  %300 = load volatile i32, ptr @jiffies, align 64
  %301 = sub i32 %294, %300
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %299
  %304 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %304, ptr noundef nonnull @.str.37) #22
  br label %336

305:                                              ; preds = %299
  %306 = load i32, ptr %12, align 4
  %307 = and i32 %306, 144
  %308 = icmp eq i32 %307, 128
  br i1 %308, label %309, label %295

309:                                              ; preds = %305
  %310 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 256, ptr noundef nonnull %12)
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %336, label %312

312:                                              ; preds = %309
  %313 = load i32, ptr %147, align 8
  switch i32 %313, label %327 [
    i32 30721, label %314
    i32 30720, label %317
  ]

314:                                              ; preds = %312
  %315 = load i32, ptr %12, align 4
  %316 = and i32 %315, -524289
  store i32 %316, ptr %12, align 4
  br label %327

317:                                              ; preds = %312
  %318 = call fastcc i32 @lan78xx_read_raw_eeprom(ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %13)
  %319 = icmp eq i32 %318, 0
  %320 = load i8, ptr %13, align 1
  %321 = icmp ne i8 %320, -91
  %322 = select i1 %319, i1 %321, i1 false
  br i1 %322, label %323, label %327

323:                                              ; preds = %317
  %324 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %324, ptr noundef nonnull @.str.38) #22
  %325 = load i32, ptr %12, align 4
  %326 = or i32 %325, 6144
  store i32 %326, ptr %12, align 4
  br label %327

327:                                              ; preds = %323, %317, %314, %312
  %328 = load i32, ptr %12, align 4
  %329 = call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 256, i32 noundef %328)
  %330 = icmp slt i32 %329, 0
  br i1 %330, label %336, label %331

331:                                              ; preds = %327
  %332 = load ptr, ptr %0, align 8
  %333 = getelementptr inbounds %struct.net_device, ptr %332, i32 0, i32 20
  %334 = load i32, ptr %333, align 4
  %335 = add i32 %334, 18
  call fastcc void @lan78xx_set_rx_max_frame_length(ptr noundef %0, i32 noundef %335)
  br label %336

336:                                              ; preds = %331, %327, %309, %303, %295, %287, %279, %274, %270, %267, %264, %261, %258, %255, %250, %247, %242, %239, %234, %229, %152, %144, %135, %35, %27, %19, %1
  %337 = phi i32 [ -110, %35 ], [ -110, %303 ], [ 0, %331 ], [ %17, %1 ], [ %22, %19 ], [ %142, %135 ], [ %150, %144 ], [ %155, %152 ], [ %232, %229 ], [ %237, %234 ], [ %240, %239 ], [ %245, %242 ], [ %248, %247 ], [ %253, %250 ], [ %256, %255 ], [ %259, %258 ], [ %262, %261 ], [ %265, %264 ], [ %268, %267 ], [ %272, %270 ], [ %277, %274 ], [ %285, %279 ], [ %290, %287 ], [ %310, %309 ], [ %329, %327 ], [ %297, %295 ], [ %29, %27 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #21
  ret i32 %337
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lan78xx_dataport_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 33
  %9 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  store i32 0, ptr %7, align 4, !annotation !13
  %10 = getelementptr inbounds %struct.lan78xx_net, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @usb_autopm_get_interface(ptr noundef %11) #21
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %63, label %14

14:                                               ; preds = %4
  %15 = inttoptr i32 %9 to ptr
  %16 = getelementptr inbounds %struct.lan78xx_priv, ptr %15, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %16) #21
  br label %17

17:                                               ; preds = %25, %14
  %18 = phi i32 [ 0, %14 ], [ %26, %25 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  store i32 0, ptr %6, align 4, !annotation !13
  %19 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 36, ptr noundef nonnull %6) #21
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22, !prof !16

21:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  br label %61

22:                                               ; preds = %17
  %23 = load i32, ptr %6, align 4
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  tail call void @usleep_range_state(i32 noundef 40, i32 noundef 100, i32 noundef 2) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  %26 = add nuw nsw i32 %18, 1
  %27 = icmp eq i32 %26, 100
  br i1 %27, label %28, label %17

28:                                               ; preds = %25
  %29 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %29, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.lan78xx_dataport_wait_not_busy) #22
  br label %61

30:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  %31 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 36, ptr noundef nonnull %7)
  %32 = load i32, ptr %7, align 4
  %33 = and i32 %32, -16
  %34 = or i32 %33, 1
  store i32 %34, ptr %7, align 4
  %35 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 36, i32 noundef %34)
  %36 = icmp eq i32 %2, 0
  br i1 %36, label %61, label %37

37:                                               ; preds = %58, %30
  %38 = phi i32 [ %59, %58 ], [ 0, %30 ]
  %39 = add i32 %38, %1
  %40 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 44, i32 noundef %39)
  %41 = getelementptr i32, ptr %3, i32 %38
  %42 = load i32, ptr %41, align 4
  %43 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 48, i32 noundef %42)
  %44 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 40, i32 noundef 1)
  br label %45

45:                                               ; preds = %53, %37
  %46 = phi i32 [ 0, %37 ], [ %54, %53 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store i32 0, ptr %5, align 4, !annotation !13
  %47 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 36, ptr noundef nonnull %5) #21
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50, !prof !16

49:                                               ; preds = %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  br label %61

50:                                               ; preds = %45
  %51 = load i32, ptr %5, align 4
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  tail call void @usleep_range_state(i32 noundef 40, i32 noundef 100, i32 noundef 2) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  %54 = add nuw nsw i32 %46, 1
  %55 = icmp eq i32 %54, 100
  br i1 %55, label %56, label %45

56:                                               ; preds = %53
  %57 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %57, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.lan78xx_dataport_wait_not_busy) #22
  br label %61

58:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  %59 = add nuw i32 %38, 1
  %60 = icmp eq i32 %59, %2
  br i1 %60, label %61, label %37

61:                                               ; preds = %58, %56, %49, %30, %28, %21
  tail call void @mutex_unlock(ptr noundef %16) #21
  %62 = load ptr, ptr %10, align 8
  tail call void @usb_autopm_put_interface(ptr noundef %62) #21
  br label %63

63:                                               ; preds = %61, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @lan78xx_irq_mask(ptr nocapture noundef readonly %0) #17 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = shl nuw i32 1, %5
  %7 = xor i32 %6, -1
  %8 = getelementptr inbounds %struct.irq_domain_data, ptr %3, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  store i32 %10, ptr %8, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @lan78xx_irq_unmask(ptr nocapture noundef readonly %0) #17 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = shl nuw i32 1, %5
  %7 = getelementptr inbounds %struct.irq_domain_data, ptr %3, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, %6
  store i32 %9, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lan78xx_irq_bus_lock(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_domain_data, ptr %3, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %4) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lan78xx_irq_bus_sync_unlock(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -1568
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  store i32 0, ptr %2, align 4, !annotation !13
  %6 = call fastcc i32 @lan78xx_read_reg(ptr noundef %5, i32 noundef 152, ptr noundef nonnull %2)
  %7 = load i32, ptr %2, align 4
  %8 = getelementptr inbounds %struct.irq_domain_data, ptr %4, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %5, i32 noundef 152, i32 noundef %9)
  br label %13

13:                                               ; preds = %11, %1
  %14 = getelementptr inbounds %struct.irq_domain_data, ptr %4, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %14) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irq_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %5) #21
  %7 = getelementptr inbounds %struct.irq_domain_data, ptr %5, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.irq_domain_data, ptr %5, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef %8, ptr noundef %10, ptr noundef null) #21
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 1024) #21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @irq_unmap(ptr nocapture noundef readnone %0, i32 noundef %1) #2 {
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #21
  %3 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef null) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_platform_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lan78xx_read_raw_otp(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #2 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store i32 0, ptr %5, align 4, !annotation !13
  %6 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 4096, ptr noundef nonnull %5)
  %7 = load i32, ptr %5, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %4
  %11 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 4096, i32 noundef 0)
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = add i32 %12, 100
  br label %14

14:                                               ; preds = %19, %10
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 10, i32 noundef 2) #21
  %15 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 4096, ptr noundef nonnull %5)
  %16 = load volatile i32, ptr @jiffies, align 64
  %17 = sub i32 %13, %16
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %54, label %19

19:                                               ; preds = %14
  %20 = load i32, ptr %5, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %14

23:                                               ; preds = %19, %4
  %24 = icmp eq i32 %2, 0
  br i1 %24, label %57, label %25

25:                                               ; preds = %47, %23
  %26 = phi i32 [ %52, %47 ], [ 0, %23 ]
  %27 = add i32 %26, %1
  %28 = lshr i32 %27, 8
  %29 = and i32 %28, 31
  %30 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 4100, i32 noundef %29)
  %31 = and i32 %27, 255
  %32 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 4104, i32 noundef %31)
  %33 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 4128, i32 noundef 1)
  %34 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %0, i32 noundef 4136, i32 noundef 1)
  %35 = load volatile i32, ptr @jiffies, align 64
  %36 = add i32 %35, 100
  br label %37

37:                                               ; preds = %43, %25
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #21
  %39 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 4144, ptr noundef nonnull %5)
  %40 = load volatile i32, ptr @jiffies, align 64
  %41 = sub i32 %36, %40
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %37
  %44 = load i32, ptr %5, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %37

47:                                               ; preds = %43
  %48 = call fastcc i32 @lan78xx_read_reg(ptr noundef %0, i32 noundef 4120, ptr noundef nonnull %5)
  %49 = load i32, ptr %5, align 4
  %50 = trunc i32 %49 to i8
  %51 = getelementptr i8, ptr %3, i32 %26
  store i8 %50, ptr %51, align 1
  %52 = add nuw i32 %26, 1
  %53 = icmp eq i32 %52, %2
  br i1 %53, label %57, label %25

54:                                               ; preds = %37, %14
  %55 = phi ptr [ @.str.40, %37 ], [ @.str.39, %14 ]
  %56 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %56, ptr noundef nonnull %55) #22
  br label %57

57:                                               ; preds = %54, %47, %23
  %58 = phi i32 [ 0, %23 ], [ -5, %54 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan78xx_mdiobus_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  store i32 0, ptr %6, align 4, !annotation !13
  %9 = getelementptr inbounds %struct.lan78xx_net, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @usb_autopm_get_interface(ptr noundef %10) #21
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %58, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.lan78xx_net, ptr %8, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %14) #21
  %15 = load volatile i32, ptr @jiffies, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store i32 0, ptr %5, align 4, !annotation !13
  %16 = add i32 %15, 100
  br label %17

17:                                               ; preds = %24, %13
  %18 = call fastcc i32 @lan78xx_read_reg(ptr noundef %8, i32 noundef 288, ptr noundef nonnull %5) #21
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %28, label %20, !prof !16

20:                                               ; preds = %17
  %21 = load i32, ptr %5, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load volatile i32, ptr @jiffies, align 64
  %26 = sub i32 %16, %25
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %17, label %28

28:                                               ; preds = %24, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  br label %55

29:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  %30 = shl i32 %1, 11
  %31 = and i32 %30, 63488
  %32 = shl i32 %2, 6
  %33 = and i32 %32, 1984
  %34 = or i32 %31, %33
  %35 = or i32 %34, 1
  %36 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %8, i32 noundef 288, i32 noundef %35)
  %37 = load volatile i32, ptr @jiffies, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store i32 0, ptr %4, align 4, !annotation !13
  %38 = add i32 %37, 100
  br label %39

39:                                               ; preds = %46, %29
  %40 = call fastcc i32 @lan78xx_read_reg(ptr noundef %8, i32 noundef 288, ptr noundef nonnull %4) #21
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %50, label %42, !prof !16

42:                                               ; preds = %39
  %43 = load i32, ptr %4, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load volatile i32, ptr @jiffies, align 64
  %48 = sub i32 %38, %47
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %39, label %50

50:                                               ; preds = %46, %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  br label %55

51:                                               ; preds = %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  %52 = call fastcc i32 @lan78xx_read_reg(ptr noundef %8, i32 noundef 292, ptr noundef nonnull %6)
  %53 = load i32, ptr %6, align 4
  %54 = and i32 %53, 65535
  br label %55

55:                                               ; preds = %51, %50, %28
  %56 = phi i32 [ %54, %51 ], [ -5, %28 ], [ -5, %50 ]
  tail call void @mutex_unlock(ptr noundef %14) #21
  %57 = load ptr, ptr %9, align 8
  tail call void @usb_autopm_put_interface(ptr noundef %57) #21
  br label %58

58:                                               ; preds = %55, %3
  %59 = phi i32 [ %56, %55 ], [ %11, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan78xx_mdiobus_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.lan78xx_net, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @usb_autopm_get_interface(ptr noundef %10) #21
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %55, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.lan78xx_net, ptr %8, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %14) #21
  %15 = load volatile i32, ptr @jiffies, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  store i32 0, ptr %6, align 4, !annotation !13
  %16 = add i32 %15, 100
  br label %17

17:                                               ; preds = %24, %13
  %18 = call fastcc i32 @lan78xx_read_reg(ptr noundef %8, i32 noundef 288, ptr noundef nonnull %6) #21
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %28, label %20, !prof !16

20:                                               ; preds = %17
  %21 = load i32, ptr %6, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load volatile i32, ptr @jiffies, align 64
  %26 = sub i32 %16, %25
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %17, label %28

28:                                               ; preds = %24, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  br label %53

29:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  %30 = zext i16 %3 to i32
  %31 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %8, i32 noundef 292, i32 noundef %30)
  %32 = shl i32 %1, 11
  %33 = and i32 %32, 63488
  %34 = shl i32 %2, 6
  %35 = and i32 %34, 1984
  %36 = or i32 %33, %35
  %37 = or i32 %36, 3
  %38 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %8, i32 noundef 288, i32 noundef %37)
  %39 = load volatile i32, ptr @jiffies, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store i32 0, ptr %5, align 4, !annotation !13
  %40 = add i32 %39, 100
  br label %41

41:                                               ; preds = %48, %29
  %42 = call fastcc i32 @lan78xx_read_reg(ptr noundef %8, i32 noundef 288, ptr noundef nonnull %5) #21
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %52, label %44, !prof !16

44:                                               ; preds = %41
  %45 = load i32, ptr %5, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load volatile i32, ptr @jiffies, align 64
  %50 = sub i32 %40, %49
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %41, label %52

52:                                               ; preds = %48, %44, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  br label %53

53:                                               ; preds = %52, %28
  tail call void @mutex_unlock(ptr noundef %14) #21
  %54 = load ptr, ptr %9, align 8
  tail call void @usb_autopm_put_interface(ptr noundef %54) #21
  br label %55

55:                                               ; preds = %53, %4
  %56 = phi i32 [ 0, %53 ], [ %11, %4 ]
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_find_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_connect_direct(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lan78xx_link_status_change(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 4
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 4096
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %46

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 100
  br i1 %11, label %12, label %46

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 6
  %16 = load i32, ptr %15, align 8
  %17 = tail call i32 @mdiobus_read(ptr noundef %14, i32 noundef %16, i32 noundef 25) #21
  %18 = trunc i32 %17 to i16
  %19 = and i16 %18, 32767
  %20 = load ptr, ptr %13, align 8
  %21 = load i32, ptr %15, align 8
  %22 = tail call i32 @mdiobus_write(ptr noundef %20, i32 noundef %21, i32 noundef 25, i16 noundef zeroext %19) #21
  %23 = load ptr, ptr %13, align 8
  %24 = load i32, ptr %15, align 8
  %25 = tail call i32 @mdiobus_read(ptr noundef %23, i32 noundef %24, i32 noundef 0) #21
  %26 = trunc i32 %25 to i16
  %27 = and i16 %26, -8257
  %28 = load ptr, ptr %13, align 8
  %29 = load i32, ptr %15, align 8
  %30 = tail call i32 @mdiobus_write(ptr noundef %28, i32 noundef %29, i32 noundef 0, i16 noundef zeroext %27) #21
  %31 = or i16 %27, 8192
  %32 = load ptr, ptr %13, align 8
  %33 = load i32, ptr %15, align 8
  %34 = tail call i32 @mdiobus_write(ptr noundef %32, i32 noundef %33, i32 noundef 0, i16 noundef zeroext %31) #21
  %35 = load ptr, ptr %13, align 8
  %36 = load i32, ptr %15, align 8
  %37 = tail call i32 @mdiobus_read(ptr noundef %35, i32 noundef %36, i32 noundef 26) #21
  %38 = load ptr, ptr %13, align 8
  %39 = load i32, ptr %15, align 8
  %40 = tail call i32 @mdiobus_read(ptr noundef %38, i32 noundef %39, i32 noundef 25) #21
  %41 = trunc i32 %40 to i16
  %42 = or i16 %41, -32768
  %43 = load ptr, ptr %13, align 8
  %44 = load i32, ptr %15, align 8
  %45 = tail call i32 @mdiobus_write(ptr noundef %43, i32 noundef %44, i32 noundef 25, i16 noundef zeroext %42) #21
  br label %46

46:                                               ; preds = %12, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fixed_phy_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_unregister_fixup_for_uid(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_remove_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fixed_phy_register(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_register_fixup_for_uid(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ksz9031rnx_fixup(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 2, i32 noundef 4, i16 noundef zeroext 119) #21
  %5 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 2, i32 noundef 5, i16 noundef zeroext 30583) #21
  %6 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 2, i32 noundef 8, i16 noundef zeroext 511) #21
  %7 = getelementptr i8, ptr %3, i32 1996
  store i32 11, ptr %7, align 4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan8835_fixup(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  %5 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32784) #21
  %6 = trunc i32 %5 to i16
  %7 = and i16 %6, -6145
  %8 = or i16 %7, 2048
  %9 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32784, i16 noundef zeroext %8) #21
  %10 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %4, i32 noundef 296, i32 noundef 2)
  %11 = tail call fastcc i32 @lan78xx_write_reg(ptr noundef %4, i32 noundef 1800, i32 noundef 15616)
  %12 = getelementptr i8, ptr %3, i32 1996
  store i32 12, ptr %12, align 4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_mmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_scuttle_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc zeroext i16 @lan78xx_wakeframe_crc16(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #20 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %74

4:                                                ; preds = %4, %2
  %5 = phi i16 [ %70, %4 ], [ -1, %2 ]
  %6 = phi i32 [ %72, %4 ], [ 0, %2 ]
  %7 = phi ptr [ %71, %4 ], [ %0, %2 ]
  %8 = load i8, ptr %7, align 1
  %9 = lshr i16 %5, 15
  %10 = shl i16 %5, 1
  %11 = and i8 %8, 1
  %12 = zext i8 %11 to i16
  %13 = icmp eq i16 %9, %12
  %14 = xor i16 %10, -32763
  %15 = select i1 %13, i16 %10, i16 %14
  %16 = lshr i8 %8, 1
  %17 = lshr i16 %15, 15
  %18 = shl i16 %15, 1
  %19 = and i8 %16, 1
  %20 = zext i8 %19 to i16
  %21 = icmp eq i16 %17, %20
  %22 = xor i16 %18, -32763
  %23 = select i1 %21, i16 %18, i16 %22
  %24 = lshr i8 %8, 2
  %25 = lshr i16 %23, 15
  %26 = shl i16 %23, 1
  %27 = and i8 %24, 1
  %28 = zext i8 %27 to i16
  %29 = icmp eq i16 %25, %28
  %30 = xor i16 %26, -32763
  %31 = select i1 %29, i16 %26, i16 %30
  %32 = lshr i8 %8, 3
  %33 = lshr i16 %31, 15
  %34 = shl i16 %31, 1
  %35 = and i8 %32, 1
  %36 = zext i8 %35 to i16
  %37 = icmp eq i16 %33, %36
  %38 = xor i16 %34, -32763
  %39 = select i1 %37, i16 %34, i16 %38
  %40 = lshr i8 %8, 4
  %41 = lshr i16 %39, 15
  %42 = shl i16 %39, 1
  %43 = and i8 %40, 1
  %44 = zext i8 %43 to i16
  %45 = icmp eq i16 %41, %44
  %46 = xor i16 %42, -32763
  %47 = select i1 %45, i16 %42, i16 %46
  %48 = lshr i8 %8, 5
  %49 = lshr i16 %47, 15
  %50 = shl i16 %47, 1
  %51 = and i8 %48, 1
  %52 = zext i8 %51 to i16
  %53 = icmp eq i16 %49, %52
  %54 = xor i16 %50, -32763
  %55 = select i1 %53, i16 %50, i16 %54
  %56 = lshr i8 %8, 6
  %57 = lshr i16 %55, 15
  %58 = shl i16 %55, 1
  %59 = and i8 %56, 1
  %60 = zext i8 %59 to i16
  %61 = icmp eq i16 %57, %60
  %62 = xor i16 %58, -32763
  %63 = select i1 %61, i16 %58, i16 %62
  %64 = lshr i8 %8, 7
  %65 = lshr i16 %63, 15
  %66 = shl i16 %63, 1
  %67 = zext i8 %64 to i16
  %68 = icmp eq i16 %65, %67
  %69 = xor i16 %66, -32763
  %70 = select i1 %68, i16 %66, i16 %69
  %71 = getelementptr i8, ptr %7, i32 1
  %72 = add nuw nsw i32 %6, 1
  %73 = icmp eq i32 %72, %1
  br i1 %73, label %74, label %4

74:                                               ; preds = %4, %2
  %75 = phi i16 [ -1, %2 ], [ %70, %4 ]
  ret i16 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_from_anchor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #21 = { nounwind }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind allocsize(2) }
attributes #25 = { nounwind readonly willreturn }
attributes #26 = { nounwind readnone }

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
!8 = !{i64 2149046081}
!9 = !{i64 2149041905}
!10 = !{i64 2149041980, i64 2149042007, i64 2149042054, i64 2149042076, i64 2149042104, i64 2149042124}
!11 = !{i64 567863}
!12 = !{i64 2149070225}
!13 = !{!"auto-init"}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{!"branch_weights", i32 2000, i32 2002}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 568053}
!18 = !{i64 2149069084}
!19 = !{i64 7201700}
!20 = !{i64 2157496807}
!21 = !{i64 2157499633}
!22 = !{i64 2157503012}
