; ModuleID = '/llk/IR/drivers/net/ethernet/intel/e1000e/netdev.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/e1000e/netdev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.116 }
%union.anon.116 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_info = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.172, [4 x i8], i32, [60 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [56 x i8] }
%struct.anon.172 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.e1000_reg_info = type { i32, ptr }
%struct.e1000_adapter = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, ptr, [128 x i32], i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, ptr, i32, %struct.napi_struct, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, [52 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i64, i32, i32, i32, i32, i16, i32, i32, ptr, ptr, %struct.e1000_hw, %struct.spinlock, %struct.e1000_hw_stats, %struct.e1000_phy_info, %struct.e1000_phy_stats, %struct.e1000_phy_regs, %struct.e1000_ring, %struct.e1000_ring, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i16, i16, %struct.hwtstamp_config, %struct.delayed_work, ptr, i32, %struct.work_struct, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, ptr, %struct.ptp_clock_info, %struct.pm_qos_request, i32, i16, [50 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.e1000_hw = type { ptr, ptr, ptr, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon.142 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_fc_info = type { i32, i32, i16, i16, i8, i8, i32, i32 }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_bus_info = type { i32, i16 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon.142 = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { i8, [2048 x %struct.e1000_shadow_ram], i8, i8, i16, i32 }
%struct.e1000_shadow_ram = type { i16, i8 }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_phy_stats = type { i32, i32 }
%struct.e1000_phy_regs = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.e1000_ring = type { ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, [21 x i8], i32, i32, ptr, i32, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.msix_entry = type { i32, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.e1000_buffer = type { i32, ptr, %union.anon.143 }
%union.anon.143 = type { %struct.anon.144 }
%struct.anon.144 = type { i32, i16, i16, i32, i32, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.122, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.122 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.139 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.anon.145 = type { ptr, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.115, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.115 = type { %struct.atomic_t }
%struct.e1000_ps_page = type { ptr, i64 }
%struct.e1000_tx_desc = type { i64, %union.anon.162, %union.anon.164 }
%union.anon.162 = type { i32 }
%union.anon.164 = type { i32 }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.e1000_rx_desc_extended = type { %struct.anon.149 }
%struct.anon.149 = type { i64, i64 }
%struct.anon.150 = type { %struct.anon.151, %struct.anon.154 }
%struct.anon.151 = type { i32, %union.anon.152 }
%union.anon.152 = type { i32 }
%struct.anon.154 = type { i32, i16, i16 }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.105, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
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
%union.anon.105 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%union.e1000_rx_desc_packet_split = type { %struct.anon.155 }
%struct.anon.155 = type { [4 x i64] }
%struct.anon.156 = type { %struct.anon.157, %struct.anon.160, %struct.anon.161, i64 }
%struct.anon.157 = type { i32, %union.anon.158 }
%union.anon.158 = type { i32 }
%struct.anon.160 = type { i32, i16, i16 }
%struct.anon.161 = type { i16, [3 x i16] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.vlan_hdr = type { i16, i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.e1000_context_desc = type { %union.anon.166, %union.anon.168, i32, %union.anon.170 }
%union.anon.166 = type { i32 }
%union.anon.168 = type { i32 }
%union.anon.170 = type { i32 }
%struct.anon.167 = type { i8, i8, i16 }
%struct.anon.169 = type { i8, i8, i16 }
%struct.anon.171 = type { i8, i8, i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.123, %union.anon.124 }
%union.anon.123 = type { [16 x i8] }
%union.anon.124 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.mii_ioctl_data = type { i16, i16, i16, i16 }
%struct.anon.58 = type { i16, i16 }
%struct.my_u0 = type { i64, i64 }
%struct.my_u1 = type { i64, i64, i64, i64 }

@e1000e_driver_name = dso_local global [7 x i8] c"e1000e\00", align 1
@__param_str_debug = internal constant [13 x i8] c"e1000e.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 -1, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.116 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype465 = internal constant [26 x i8] c"e1000e.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug466 = internal constant [50 x i8] c"e1000e.parm=debug:Debug level (0=none,...,16=all)\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [73 x i8] c"Failed to initialize MSI-X interrupts.  Falling back to MSI interrupts.\0A\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"Failed to initialize MSI interrupts.  Falling back to legacy interrupts.\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Unable to allocate memory for the transmit descriptor ring\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"Unable to allocate memory for the receive descriptor ring\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Interrupt Throttle Rate off\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Interrupt Throttle Rate on\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Hardware Error\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Invalid PHY type setting EEE advertisement\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"EEE advertisement - unable to acquire PHY\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Interrupt allocation failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"drivers/net/ethernet/intel/e1000e/netdev.c\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"NIC Link is Down\0A\00", align 1
@__initcall__kmod_e1000e__483_7991_e1000_init_module6 = internal global ptr @e1000_init_module, section ".initcall6.init", align 4
@e1000_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, ptr @e1000e_driver_name, ptr @e1000_pci_tbl, ptr @e1000_probe, ptr @e1000_remove, ptr null, ptr null, ptr @e1000_shutdown, ptr null, ptr null, ptr null, ptr @e1000_err_handler, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @e1000_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, align 4
@__exitcall_e1000_exit_module = internal global ptr @e1000_exit_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_author484 = internal constant [56 x i8] c"e1000e.author=Intel Corporation, <linux.nics@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description485 = internal constant [52 x i8] c"e1000e.description=Intel(R) PRO/1000 Network Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file486 = internal constant [53 x i8] c"e1000e.file=drivers/net/ethernet/intel/e1000e/e1000e\00", section ".modinfo", align 1
@__UNIQUE_ID_license487 = internal constant [22 x i8] c"e1000e.license=GPL v2\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@copybreak = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"pskb_may_pull failed.\0A\00", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [48 x i8] c"Failed to restore TIMINCA clock rate delta: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"Timesync Tx Control register not set as expected\0A\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"Timesync Rx Control register not set as expected\0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"Unable to create IPMI pass-through filter\0A\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"ME firmware caused invalid TDT - resetting\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.19 = private unnamed_addr constant [70 x i8] c"Some CPU C-states have been disabled in order to enable jumbo frames\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"Rx DMA page map failed\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Rx DMA map failed\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.24 = private unnamed_addr constant [44 x i8] c"ME firmware caused invalid RDT - resetting\0A\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"Unable to allocate interrupt, Error: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"%.14s-rx-0\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"%.14s-tx-0\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.28 = private unnamed_addr constant [52 x i8] c"MSI interrupt test failed, using legacy interrupt.\0A\00", align 1
@.str.29 = private unnamed_addr constant [44 x i8] c"\016e1000e: Intel(R) PRO/1000 Network Driver\0A\00", align 1
@.str.30 = private unnamed_addr constant [55 x i8] c"\016e1000e: Copyright(c) 1999 - 2015 Intel Corporation.\0A\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"e1000e\00", align 1
@e1000_pci_tbl = internal constant [106 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 4190, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 4191, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 4260, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 4284, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 4261, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 4192, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 4313, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 4314, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 4309, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 4281, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 32902, i32 4221, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 32902, i32 4222, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 32902, i32 4223, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 32902, i32 4235, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 4236, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 4250, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 4307, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 32902, i32 4342, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 32902, i32 5388, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 32902, i32 4246, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 4282, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 4248, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 4283, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 4172, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 32902, i32 4293, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 32902, i32 4292, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 32902, i32 4170, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 32902, i32 4171, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 32902, i32 4173, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 32902, i32 4169, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 32902, i32 5377, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 32902, i32 4288, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 4290, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 4291, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 4285, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 10572, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 4325, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 4287, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 4341, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 4299, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 4300, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 4301, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 4302, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 4318, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 32902, i32 4319, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 32902, i32 5413, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 32902, i32 4330, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 4331, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 4335, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 4336, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 5378, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 5379, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 5434, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 32902, i32 5435, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 32902, i32 5466, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 32902, i32 5465, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 32902, i32 5536, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 32902, i32 5537, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 32902, i32 5538, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 32902, i32 5539, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 32902, i32 5487, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 32902, i32 5488, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 32902, i32 5559, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 32902, i32 5560, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 32902, i32 5561, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 32902, i32 5591, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 32902, i32 5592, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 32902, i32 5603, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 32902, i32 5590, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 32902, i32 5565, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 32902, i32 5566, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 32902, i32 5563, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 32902, i32 5564, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 32902, i32 5599, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 32902, i32 5600, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 32902, i32 5601, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 32902, i32 5602, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 32902, i32 3406, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 32902, i32 3407, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 32902, i32 3404, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 32902, i32 3405, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 32902, i32 3411, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 32902, i32 3413, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 32902, i32 5627, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 5628, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 5625, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 5626, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 5620, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 5621, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 3525, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 3526, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 6686, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 6687, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 6684, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 6685, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 3527, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 3528, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 21770, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 21771, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 21772, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 21773, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 21774, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 21775, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 21776, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 21777, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@e1000_err_handler = internal constant %struct.pci_error_handlers { ptr @e1000_io_error_detected, ptr null, ptr @e1000_io_slot_reset, ptr null, ptr null, ptr @e1000_io_resume }, align 4
@e1000_pm_ops = internal constant %struct.dev_pm_ops { ptr @e1000e_pm_prepare, ptr null, ptr @e1000e_pm_suspend, ptr @e1000e_pm_resume, ptr @e1000e_pm_freeze, ptr @e1000e_pm_thaw, ptr @e1000e_pm_suspend, ptr @e1000e_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @e1000e_pm_runtime_suspend, ptr @e1000e_pm_runtime_resume, ptr @e1000e_pm_runtime_idle }, align 4
@e1000_info_tbl = internal unnamed_addr constant [16 x ptr] [ptr @e1000_82571_info, ptr @e1000_82572_info, ptr @e1000_82573_info, ptr @e1000_82574_info, ptr @e1000_82583_info, ptr @e1000_es2_info, ptr @e1000_ich8_info, ptr @e1000_ich9_info, ptr @e1000_ich10_info, ptr @e1000_pch_info, ptr @e1000_pch2_info, ptr @e1000_pch_lpt_info, ptr @e1000_pch_spt_info, ptr @e1000_pch_cnp_info, ptr @e1000_pch_tgp_info, ptr @e1000_pch_adp_info], align 4
@e1000_probe.cards_found = internal unnamed_addr global i32 0, align 4
@.str.32 = private unnamed_addr constant [39 x i8] c"No usable DMA configuration, aborting\0A\00", align 1
@e1000e_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @e1000e_open, ptr @e1000e_close, ptr @e1000_xmit_frame, ptr @passthru_features_check, ptr null, ptr null, ptr @e1000e_set_rx_mode, ptr @e1000_set_mac, ptr @eth_validate_addr, ptr null, ptr @e1000_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @e1000_change_mtu, ptr null, ptr @e1000_tx_timeout, ptr @e1000e_get_stats64, ptr null, ptr null, ptr null, ptr @e1000_vlan_rx_add_vid, ptr @e1000_vlan_rx_kill_vid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @e1000_fix_features, ptr @e1000_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.33 = private unnamed_addr constant [47 x i8] c"PHY reset is blocked due to SOL/IDER session.\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"The NVM Checksum Is Not Valid\0A\00", align 1
@.str.35 = private unnamed_addr constant [42 x i8] c"NVM Read Error while reading MAC address\0A\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"Invalid MAC Address: %pM\0A\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"eth%d\00", align 1
@e1000_82571_info = external dso_local constant %struct.e1000_info, align 4
@e1000_82572_info = external dso_local constant %struct.e1000_info, align 4
@e1000_82573_info = external dso_local constant %struct.e1000_info, align 4
@e1000_82574_info = external dso_local constant %struct.e1000_info, align 4
@e1000_82583_info = external dso_local constant %struct.e1000_info, align 4
@e1000_es2_info = external dso_local constant %struct.e1000_info, align 4
@e1000_ich8_info = external dso_local constant %struct.e1000_info, align 4
@e1000_ich9_info = external dso_local constant %struct.e1000_info, align 4
@e1000_ich10_info = external dso_local constant %struct.e1000_info, align 4
@e1000_pch_info = external dso_local constant %struct.e1000_info, align 4
@e1000_pch2_info = external dso_local constant %struct.e1000_info, align 4
@e1000_pch_lpt_info = external dso_local constant %struct.e1000_info, align 4
@e1000_pch_spt_info = external dso_local constant %struct.e1000_info, align 4
@e1000_pch_cnp_info = external dso_local constant %struct.e1000_info, align 4
@e1000_pch_tgp_info = external dso_local constant %struct.e1000_info, align 4
@e1000_pch_adp_info = external dso_local constant %struct.e1000_info, align 4
@.str.38 = private unnamed_addr constant [22 x i8] c"Disabling ASPM %s %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"L0s\00", align 1
@.str.40 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"L1\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"__pskb_pull_tail failed.\0A\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"include/linux/if_vlan.h\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"checksum_partial proto=%x!\0A\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"Tx DMA map failed\0A\00", align 1
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 64
@.str.47 = private unnamed_addr constant [28 x i8] c"Error reading PHY register\0A\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"Jumbo Frames not supported.\0A\00", align 1
@.str.51 = private unnamed_addr constant [75 x i8] c"Jumbo Frames not supported on this device when CRC stripping is disabled.\0A\00", align 1
@.str.52 = private unnamed_addr constant [38 x i8] c"Unable to allocate memory for queues\0A\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"clearing Tx timestamp hang\0A\00", align 1
@.str.54 = private unnamed_addr constant [42 x i8] c"Warning: detected DSPD enabled in EEPROM\0A\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"Reset adapter unexpectedly\0A\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"Net device Info\0A\00", align 1
@.str.57 = private unnamed_addr constant [56 x i8] c"\016e1000e: Device Name     state            trans_start\0A\00", align 1
@.str.58 = private unnamed_addr constant [31 x i8] c"\016e1000e: %-15s %016lX %016lX\0A\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"Register Dump\0A\00", align 1
@.str.60 = private unnamed_addr constant [34 x i8] c"\016e1000e:  Register Name   Value\0A\00", align 1
@e1000_reg_info_tbl = internal unnamed_addr constant [34 x %struct.e1000_reg_info] [%struct.e1000_reg_info { i32 0, ptr @.str.87 }, %struct.e1000_reg_info { i32 8, ptr @.str.88 }, %struct.e1000_reg_info { i32 24, ptr @.str.89 }, %struct.e1000_reg_info { i32 192, ptr @.str.90 }, %struct.e1000_reg_info { i32 256, ptr @.str.91 }, %struct.e1000_reg_info { i32 10248, ptr @.str.92 }, %struct.e1000_reg_info { i32 10256, ptr @.str.93 }, %struct.e1000_reg_info { i32 10264, ptr @.str.94 }, %struct.e1000_reg_info { i32 10272, ptr @.str.95 }, %struct.e1000_reg_info { i32 10280, ptr @.str.96 }, %struct.e1000_reg_info { i32 8200, ptr @.str.97 }, %struct.e1000_reg_info { i32 10240, ptr @.str.98 }, %struct.e1000_reg_info { i32 10244, ptr @.str.99 }, %struct.e1000_reg_info { i32 9232, ptr @.str.100 }, %struct.e1000_reg_info { i32 9240, ptr @.str.101 }, %struct.e1000_reg_info { i32 9248, ptr @.str.102 }, %struct.e1000_reg_info { i32 9256, ptr @.str.103 }, %struct.e1000_reg_info { i32 9264, ptr @.str.104 }, %struct.e1000_reg_info { i32 1024, ptr @.str.105 }, %struct.e1000_reg_info { i32 14336, ptr @.str.106 }, %struct.e1000_reg_info { i32 14340, ptr @.str.107 }, %struct.e1000_reg_info { i32 14344, ptr @.str.108 }, %struct.e1000_reg_info { i32 14352, ptr @.str.109 }, %struct.e1000_reg_info { i32 14360, ptr @.str.110 }, %struct.e1000_reg_info { i32 14368, ptr @.str.111 }, %struct.e1000_reg_info { i32 14376, ptr @.str.112 }, %struct.e1000_reg_info { i32 14380, ptr @.str.113 }, %struct.e1000_reg_info { i32 14400, ptr @.str.114 }, %struct.e1000_reg_info { i32 13328, ptr @.str.115 }, %struct.e1000_reg_info { i32 13336, ptr @.str.116 }, %struct.e1000_reg_info { i32 13344, ptr @.str.117 }, %struct.e1000_reg_info { i32 13352, ptr @.str.118 }, %struct.e1000_reg_info { i32 13360, ptr @.str.119 }, %struct.e1000_reg_info zeroinitializer], align 4
@.str.61 = private unnamed_addr constant [17 x i8] c"Tx Ring Summary\0A\00", align 1
@.str.62 = private unnamed_addr constant [65 x i8] c"\016e1000e: Queue [NTU] [NTC] [bi(ntc)->dma  ] leng ntw timestamp\0A\00", align 1
@.str.63 = private unnamed_addr constant [49 x i8] c"\016e1000e:  %5d %5X %5X %016llX %04X %3X %016llX\0A\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"Tx Ring Dump\0A\00", align 1
@.str.65 = private unnamed_addr constant [128 x i8] c"\016e1000e: Tl[desc]     [address 63:0  ] [SpeCssSCmCsLen] [bi->dma       ] leng  ntw timestamp        bi->skb <-- Legacy format\0A\00", align 1
@.str.66 = private unnamed_addr constant [133 x i8] c"\016e1000e: Tc[desc]     [Ce CoCsIpceCoS] [MssHlRSCm0Plen] [bi->dma       ] leng  ntw timestamp        bi->skb <-- Ext Context format\0A\00", align 1
@.str.67 = private unnamed_addr constant [130 x i8] c"\016e1000e: Td[desc]     [address 63:0  ] [VlaPoRSCm1Dlen] [bi->dma       ] leng  ntw timestamp        bi->skb <-- Ext Data format\0A\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c" NTC/U\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c" NTU\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c" NTC\00", align 1
@.str.71 = private unnamed_addr constant [73 x i8] c"\016e1000e: T%c[0x%03X]    %016llX %016llX %016llX %04X  %3X %016llX %p%s\0A\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"Rx Ring Summary\0A\00", align 1
@.str.74 = private unnamed_addr constant [29 x i8] c"\016e1000e: Queue [NTU] [NTC]\0A\00", align 1
@.str.75 = private unnamed_addr constant [24 x i8] c"\016e1000e:  %5d %5X %5X\0A\00", align 1
@.str.76 = private unnamed_addr constant [14 x i8] c"Rx Ring Dump\0A\00", align 1
@.str.77 = private unnamed_addr constant [146 x i8] c"\016e1000e: R  [desc]      [buffer 0 63:0 ] [buffer 1 63:0 ] [buffer 2 63:0 ] [buffer 3 63:0 ] [bi->dma       ] [bi->skb] <-- Ext Pkt Split format\0A\00", align 1
@.str.78 = private unnamed_addr constant [150 x i8] c"\016e1000e: RWB[desc]      [ck ipid mrqhsh] [vl   l0 ee  es] [ l3  l2  l1 hs] [reserved      ] ---------------- [bi->skb] <-- Ext Rx Write-Back format\0A\00", align 1
@.str.79 = private unnamed_addr constant [80 x i8] c"\016e1000e: %s[0x%03X]     %016llX %016llX %016llX %016llX ---------------- %p%s\0A\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"RWB\00", align 1
@.str.81 = private unnamed_addr constant [71 x i8] c"\016e1000e: %s[0x%03X]     %016llX %016llX %016llX %016llX %016llX %p%s\0A\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"R  \00", align 1
@.str.83 = private unnamed_addr constant [109 x i8] c"\016e1000e: R  [desc]      [buf addr 63:0 ] [reserved 63:0 ] [bi->dma       ] [bi->skb] <-- Ext (Read) format\0A\00", align 1
@.str.84 = private unnamed_addr constant [98 x i8] c"\016e1000e: RWB[desc]      [cs ipid    mrq] [vt   ln xe  xs] [bi->skb] <-- Ext (Write-Back) format\0A\00", align 1
@.str.85 = private unnamed_addr constant [64 x i8] c"\016e1000e: %s[0x%03X]     %016llX %016llX ---------------- %p%s\0A\00", align 1
@.str.86 = private unnamed_addr constant [55 x i8] c"\016e1000e: %s[0x%03X]     %016llX %016llX %016llX %p%s\0A\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"CTRL\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"STATUS\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"CTRL_EXT\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"ICR\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"RCTL\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"RDLEN\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"RDH\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"RDT\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"RDTR\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"RXDCTL\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"ERT\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"RDBAL\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"RDBAH\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"RDFH\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"RDFT\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"RDFHS\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"RDFTS\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"RDFPC\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"TCTL\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"TDBAL\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"TDBAH\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"TDLEN\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"TDH\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"TDT\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"TIDV\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"TXDCTL\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"TADV\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"TARC\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"TDFH\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"TDFT\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"TDFHS\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"TDFTS\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"TDFPC\00", align 1
@.str.120 = private unnamed_addr constant [22 x i8] c"\016e1000e: %-15s %08x\0A\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"[0-1]\00", align 1
@.str.123 = private unnamed_addr constant [27 x i8] c"\016e1000e: %-15s %08x %08x\0A\00", align 1
@.str.124 = private unnamed_addr constant [39 x i8] c"\016e1000e: packet dump for ps_page %d:\0A\00", align 1
@.str.125 = private unnamed_addr constant [41 x i8] c"Link Speed was downgraded by SmartSpeed\0A\00", align 1
@.str.126 = private unnamed_addr constant [116 x i8] c"Autonegotiated half duplex but link partner cannot autoneg.  Try forcing full duplex if link gets many collisions.\0A\00", align 1
@.str.127 = private unnamed_addr constant [29 x i8] c"10/100 speed: disabling TSO\0A\00", align 1
@.str.128 = private unnamed_addr constant [46 x i8] c"Gigabit has been disabled, downgrading speed\0A\00", align 1
@.str.129 = private unnamed_addr constant [52 x i8] c"NIC Link is Up %d Mbps %s Duplex, Flow Control: %s\0A\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"Rx/Tx\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"Rx\00", align 1
@.str.134 = private unnamed_addr constant [3 x i8] c"Tx\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.136 = private unnamed_addr constant [424 x i8] c"Detected Hardware Unit Hang:\0A  TDH                  <%x>\0A  TDT                  <%x>\0A  next_to_use          <%x>\0A  next_to_clean        <%x>\0Abuffer_info[next_to_clean]:\0A  time_stamp           <%lx>\0A  next_to_watch        <%x>\0A  jiffies              <%lx>\0A  next_to_watch.status <%x>\0AMAC Status             <%x>\0APHY Status             <%x>\0APHY 1000BASE-T Status  <%x>\0APHY Extended Status    <%x>\0APCI Status             <%x>\0A\00", align 1
@.str.137 = private unnamed_addr constant [53 x i8] c"Try turning off Tx pause (flow control) via ethtool\0A\00", align 1
@.str.138 = private unnamed_addr constant [30 x i8] c"(PCI Express:2.5GT/s:%s) %pM\0A\00", align 1
@.str.139 = private unnamed_addr constant [9 x i8] c"Width x4\00", align 1
@.str.140 = private unnamed_addr constant [9 x i8] c"Width x1\00", align 1
@.str.141 = private unnamed_addr constant [36 x i8] c"Intel(R) PRO/%s Network Connection\0A\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"10/100\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"1000\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.145 = private unnamed_addr constant [30 x i8] c"MAC: %d, PHY: %d, PBA No: %s\0A\00", align 1
@.str.146 = private unnamed_addr constant [34 x i8] c"\016e1000e: EEE TX LPI TIMER: %08X\0A\00", align 1
@.str.147 = private unnamed_addr constant [23 x i8] c"Could not acquire PHY\0A\00", align 1
@.str.148 = private unnamed_addr constant [35 x i8] c"Could not set PHY Host Wakeup bit\0A\00", align 1
@.str.149 = private unnamed_addr constant [42 x i8] c"Cannot re-enable PCI device after reset.\0A\00", align 1
@pm_suspend_global_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.150 = private unnamed_addr constant [52 x i8] c"DPG_EXIT_DONE took %d msec. This is a firmware bug\0A\00", align 1
@.str.151 = private unnamed_addr constant [23 x i8] c"PHY Wakeup cause - %s\0A\00", align 1
@.str.152 = private unnamed_addr constant [15 x i8] c"Unicast Packet\00", align 1
@.str.153 = private unnamed_addr constant [17 x i8] c"Multicast Packet\00", align 1
@.str.154 = private unnamed_addr constant [17 x i8] c"Broadcast Packet\00", align 1
@.str.155 = private unnamed_addr constant [13 x i8] c"Magic Packet\00", align 1
@.str.156 = private unnamed_addr constant [19 x i8] c"Link Status Change\00", align 1
@.str.157 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@.str.158 = private unnamed_addr constant [23 x i8] c"MAC Wakeup cause - %s\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author484, ptr @__UNIQUE_ID_debug466, ptr @__UNIQUE_ID_debugtype465, ptr @__UNIQUE_ID_description485, ptr @__UNIQUE_ID_file486, ptr @__UNIQUE_ID_license487, ptr @__exitcall_e1000_exit_module, ptr @__initcall__kmod_e1000e__483_7991_e1000_init_module6, ptr @__param_debug, ptr @e1000_exit_module], section "llvm.metadata"
@switch.table.e1000e_poll = private unnamed_addr constant [3 x i32] [i32 70000, i32 20000, i32 4000], align 4
@switch.table.__e1000e_disable_aspm = private unnamed_addr constant [3 x i16] [i16 3, i16 2, i16 3], align 2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__ew32(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 85
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 2048
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 23380
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %14 = and i32 %13, 16777216
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %20, %9
  %17 = phi i32 [ %18, %20 ], [ 2000, %9 ]
  %18 = add nsw i32 %17, -1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 10737400) #18
  %22 = load ptr, ptr %10, align 4
  %23 = getelementptr i8, ptr %22, i32 23380
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %25 = and i32 %24, 16777216
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %16

27:                                               ; preds = %20, %16, %9, %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %28 = getelementptr inbounds %struct.e1000_hw, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %2) #18, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_reset_interrupt_capability(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 76
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %7 = load ptr, ptr %6, align 32
  tail call void @pci_disable_msix(ptr noundef %7) #18
  %8 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %8) #18
  store ptr null, ptr %2, align 8
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 84
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 134217728
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %16 = load ptr, ptr %15, align 32
  tail call void @pci_disable_msi(ptr noundef %16) #18
  %17 = load i32, ptr %10, align 8
  %18 = and i32 %17, -134217729
  store i32 %18, ptr %10, align 8
  br label %19

19:                                               ; preds = %14, %9, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msix(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_set_interrupt_capability(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 77
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %71 [
    i32 2, label %4
    i32 1, label %59
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 84
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 1024
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %58, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 75
  store i32 3, ptr %10, align 4
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 24) #19
  %13 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 76
  store ptr %12, ptr %13, align 8
  %14 = icmp eq ptr %12, null
  br i1 %14, label %40, label %15

15:                                               ; preds = %9
  %16 = load i32, ptr %10, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %15
  %19 = getelementptr %struct.msix_entry, ptr %12, i32 0, i32 1
  store i16 0, ptr %19, align 4
  %20 = load i32, ptr %10, align 4
  %21 = icmp ugt i32 %20, 1
  br i1 %21, label %22, label %30

22:                                               ; preds = %22, %18
  %23 = phi i32 [ %27, %22 ], [ 1, %18 ]
  %24 = load ptr, ptr %13, align 8
  %25 = trunc i32 %23 to i16
  %26 = getelementptr %struct.msix_entry, ptr %24, i32 %23, i32 1
  store i16 %25, ptr %26, align 4
  %27 = add nuw i32 %23, 1
  %28 = load i32, ptr %10, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %22, label %30

30:                                               ; preds = %22, %18
  %31 = phi i32 [ %20, %18 ], [ %28, %22 ]
  %32 = load ptr, ptr %13, align 8
  br label %33

33:                                               ; preds = %30, %15
  %34 = phi ptr [ %12, %15 ], [ %32, %30 ]
  %35 = phi i32 [ 0, %15 ], [ %31, %30 ]
  %36 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %37 = load ptr, ptr %36, align 32
  %38 = tail call i32 @pci_enable_msix_range(ptr noundef %37, ptr noundef %34, i32 noundef %35, i32 noundef %35) #18
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %73, label %40

40:                                               ; preds = %33, %9
  %41 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 63
  %42 = load ptr, ptr %41, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %42, ptr noundef nonnull @.str) #20
  %43 = load ptr, ptr %13, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %47 = load ptr, ptr %46, align 32
  tail call void @pci_disable_msix(ptr noundef %47) #18
  %48 = load ptr, ptr %13, align 8
  tail call void @kfree(ptr noundef %48) #18
  store ptr null, ptr %13, align 8
  br label %58

49:                                               ; preds = %40
  %50 = load i32, ptr %5, align 8
  %51 = and i32 %50, 134217728
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %55 = load ptr, ptr %54, align 32
  tail call void @pci_disable_msi(ptr noundef %55) #18
  %56 = load i32, ptr %5, align 8
  %57 = and i32 %56, -134217729
  store i32 %57, ptr %5, align 8
  br label %58

58:                                               ; preds = %53, %49, %45, %4
  store i32 1, ptr %2, align 4
  br label %59

59:                                               ; preds = %58, %1
  %60 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %61 = load ptr, ptr %60, align 32
  %62 = tail call i32 @pci_enable_msi(ptr noundef %61) #18
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 84
  %66 = load i32, ptr %65, align 8
  %67 = or i32 %66, 134217728
  store i32 %67, ptr %65, align 8
  br label %71

68:                                               ; preds = %59
  store i32 0, ptr %2, align 4
  %69 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 63
  %70 = load ptr, ptr %69, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %70, ptr noundef nonnull @.str.1) #20
  br label %71

71:                                               ; preds = %68, %64, %1
  %72 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 75
  store i32 1, ptr %72, align 4
  br label %73

73:                                               ; preds = %71, %33
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msix_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_get_hw_control(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 84
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 23376
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %12 = or i32 %11, 8
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.e1000_adapter, ptr %13, i32 0, i32 85
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 2048
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %7
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr i8, ptr %19, i32 23380
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %22 = and i32 %21, 16777216
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %28, %18
  %25 = phi i32 [ %26, %28 ], [ 2000, %18 ]
  %26 = add nsw i32 %25, -1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 10737400) #18
  %30 = load ptr, ptr %8, align 4
  %31 = getelementptr i8, ptr %30, i32 23380
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %33 = and i32 %32, 16777216
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %24

35:                                               ; preds = %28, %24, %18, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %36 = load ptr, ptr %8, align 4
  %37 = getelementptr i8, ptr %36, i32 23376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %12) #18, !srcloc !12
  br label %72

38:                                               ; preds = %1
  %39 = and i32 %4, 32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %72, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 24
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %46 = or i32 %45, 268435456
  %47 = load ptr, ptr %2, align 4
  %48 = getelementptr inbounds %struct.e1000_adapter, ptr %47, i32 0, i32 85
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 2048
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %41
  %53 = load ptr, ptr %42, align 4
  %54 = getelementptr i8, ptr %53, i32 23380
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %56 = and i32 %55, 16777216
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %62, %52
  %59 = phi i32 [ %60, %62 ], [ 2000, %52 ]
  %60 = add nsw i32 %59, -1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 10737400) #18
  %64 = load ptr, ptr %42, align 4
  %65 = getelementptr i8, ptr %64, i32 23380
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %67 = and i32 %66, 16777216
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %58

69:                                               ; preds = %62, %58, %52, %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %70 = load ptr, ptr %42, align 4
  %71 = getelementptr i8, ptr %70, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %46) #18, !srcloc !12
  br label %72

72:                                               ; preds = %69, %38, %35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_release_hw_control(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 84
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 23376
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %12 = and i32 %11, -9
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.e1000_adapter, ptr %13, i32 0, i32 85
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 2048
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %7
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr i8, ptr %19, i32 23380
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %22 = and i32 %21, 16777216
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %28, %18
  %25 = phi i32 [ %26, %28 ], [ 2000, %18 ]
  %26 = add nsw i32 %25, -1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 10737400) #18
  %30 = load ptr, ptr %8, align 4
  %31 = getelementptr i8, ptr %30, i32 23380
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %33 = and i32 %32, 16777216
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %24

35:                                               ; preds = %28, %24, %18, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %36 = load ptr, ptr %8, align 4
  %37 = getelementptr i8, ptr %36, i32 23376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %12) #18, !srcloc !12
  br label %72

38:                                               ; preds = %1
  %39 = and i32 %4, 32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %72, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 24
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %46 = and i32 %45, -268435457
  %47 = load ptr, ptr %2, align 4
  %48 = getelementptr inbounds %struct.e1000_adapter, ptr %47, i32 0, i32 85
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 2048
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %41
  %53 = load ptr, ptr %42, align 4
  %54 = getelementptr i8, ptr %53, i32 23380
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %56 = and i32 %55, 16777216
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %62, %52
  %59 = phi i32 [ %60, %62 ], [ 2000, %52 ]
  %60 = add nsw i32 %59, -1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 10737400) #18
  %64 = load ptr, ptr %42, align 4
  %65 = getelementptr i8, ptr %64, i32 23380
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %67 = and i32 %66, 16777216
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %58

69:                                               ; preds = %62, %58, %52, %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %70 = load ptr, ptr %42, align 4
  %71 = getelementptr i8, ptr %70, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %46) #18, !srcloc !12
  br label %72

72:                                               ; preds = %69, %38, %35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_setup_tx_resources(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = mul i32 %4, 28
  %6 = tail call noalias ptr @vzalloc(i32 noundef %5) #21
  %7 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 9
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %1
  %10 = load i32, ptr %3, align 4
  %11 = shl i32 %10, 4
  %12 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 3
  %13 = add i32 %11, 4095
  %14 = and i32 %13, -4096
  store i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 64
  %16 = load ptr, ptr %15, align 32
  %17 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %18 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 2
  %19 = tail call ptr @dma_alloc_attrs(ptr noundef %17, i32 noundef %14, ptr noundef %18, i32 noundef 3264, i32 noundef 0) #18
  %20 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %9
  %23 = load ptr, ptr %7, align 4
  br label %27

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 5
  store i16 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 6
  store i16 0, ptr %26, align 2
  br label %31

27:                                               ; preds = %22, %1
  %28 = phi ptr [ %23, %22 ], [ null, %1 ]
  tail call void @vfree(ptr noundef %28) #18
  %29 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 63
  %30 = load ptr, ptr %29, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.2) #20
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i32 [ -12, %27 ], [ 0, %24 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_setup_rx_resources(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = mul i32 %4, 28
  %6 = tail call noalias ptr @vzalloc(i32 noundef %5) #21
  %7 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 9
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %57, label %9

9:                                                ; preds = %1
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 48) #19
  %15 = getelementptr %struct.e1000_buffer, ptr %6, i32 0, i32 2
  store ptr %14, ptr %15, align 4
  %16 = icmp eq ptr %14, null
  br i1 %16, label %46, label %17

17:                                               ; preds = %22, %12
  %18 = phi i32 [ %19, %22 ], [ 0, %12 ]
  %19 = add nuw i32 %18, 1
  %20 = load i32, ptr %3, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load ptr, ptr %7, align 4
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 48) #19
  %26 = getelementptr %struct.e1000_buffer, ptr %23, i32 %19, i32 2
  store ptr %25, ptr %26, align 4
  %27 = icmp eq ptr %25, null
  br i1 %27, label %46, label %17

28:                                               ; preds = %17
  %29 = shl i32 %20, 5
  %30 = add i32 %29, 4095
  %31 = and i32 %30, -4096
  br label %32

32:                                               ; preds = %28, %9
  %33 = phi i32 [ 0, %9 ], [ %31, %28 ]
  %34 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 3
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 64
  %36 = load ptr, ptr %35, align 32
  %37 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %38 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 2
  %39 = tail call ptr @dma_alloc_attrs(ptr noundef %37, i32 noundef %33, ptr noundef %38, i32 noundef 3264, i32 noundef 0) #18
  %40 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 1
  store ptr %39, ptr %40, align 4
  %41 = icmp eq ptr %39, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 6
  store i16 0, ptr %43, align 2
  %44 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 5
  store i16 0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 15
  store ptr null, ptr %45, align 4
  br label %61

46:                                               ; preds = %32, %22, %12
  %47 = load i32, ptr %3, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %49, %46
  %50 = phi i32 [ %54, %49 ], [ 0, %46 ]
  %51 = load ptr, ptr %7, align 4
  %52 = getelementptr %struct.e1000_buffer, ptr %51, i32 %50, i32 2
  %53 = load ptr, ptr %52, align 4
  tail call void @kfree(ptr noundef %53) #18
  %54 = add nuw i32 %50, 1
  %55 = load i32, ptr %3, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %49, label %57

57:                                               ; preds = %49, %46, %1
  %58 = load ptr, ptr %7, align 4
  tail call void @vfree(ptr noundef %58) #18
  %59 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 63
  %60 = load ptr, ptr %59, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %60, ptr noundef nonnull @.str.3) #20
  br label %61

61:                                               ; preds = %57, %42
  %62 = phi i32 [ -12, %57 ], [ 0, %42 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_free_tx_resources(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 64
  %4 = load ptr, ptr %3, align 32
  tail call fastcc void @e1000_clean_tx_ring(ptr noundef %0)
  %5 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  tail call void @vfree(ptr noundef %6) #18
  store ptr null, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %8 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef 0) #18
  store ptr null, ptr %10, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @e1000_clean_tx_ring(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %32, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 9
  br label %8

8:                                                ; preds = %27, %6
  %9 = phi i32 [ 0, %6 ], [ %29, %27 ]
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr %struct.e1000_buffer, ptr %10, i32 %9
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.e1000_adapter, ptr %15, i32 0, i32 64
  %17 = load ptr, ptr %16, align 32
  %18 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %19 = getelementptr %struct.e1000_buffer, ptr %10, i32 %9, i32 2, i32 0, i32 1
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %18, i32 noundef %12, i32 noundef %21, i32 noundef 1, i32 noundef 0) #18
  store i32 0, ptr %11, align 4
  br label %22

22:                                               ; preds = %14, %8
  %23 = getelementptr %struct.e1000_buffer, ptr %10, i32 %9, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %24, i32 noundef 0) #18
  store ptr null, ptr %23, align 4
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr %struct.e1000_buffer, ptr %10, i32 %9, i32 2
  store i32 0, ptr %28, align 4
  %29 = add nuw i32 %9, 1
  %30 = load i32, ptr %3, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %8, label %32

32:                                               ; preds = %27, %1
  %33 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 63
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 87
  %36 = load ptr, ptr %35, align 64
  %37 = getelementptr inbounds %struct.netdev_queue, ptr %36, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %37) #18
  %38 = getelementptr inbounds %struct.netdev_queue, ptr %36, i32 0, i32 14
  tail call void @dql_reset(ptr noundef %38) #18
  %39 = load i32, ptr %3, align 4
  %40 = mul i32 %39, 28
  %41 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 9
  %42 = load ptr, ptr %41, align 4
  tail call void @llvm.memset.p0.i32(ptr align 4 %42, i8 0, i32 %40, i1 false)
  %43 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %44, i8 0, i32 %46, i1 false)
  %47 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 5
  store i16 0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 6
  store i16 0, ptr %48, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_free_rx_resources(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 64
  %4 = load ptr, ptr %3, align 32
  tail call fastcc void @e1000_clean_rx_ring(ptr noundef %0)
  %5 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 9
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ 0, %8 ], [ %15, %10 ]
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr %struct.e1000_buffer, ptr %12, i32 %11, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void @kfree(ptr noundef %14) #18
  %15 = add nuw i32 %11, 1
  %16 = load i32, ptr %5, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %10, label %18

18:                                               ; preds = %10, %1
  %19 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  tail call void @vfree(ptr noundef %20) #18
  store ptr null, ptr %19, align 4
  %21 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %22 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  tail call void @dma_free_attrs(ptr noundef %21, i32 noundef %23, ptr noundef %25, i32 noundef %27, i32 noundef 0) #18
  store ptr null, ptr %24, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @e1000_clean_rx_ring(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %145, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 64
  %8 = load ptr, ptr %7, align 32
  %9 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 9
  %10 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 46
  %11 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %12 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 60
  %13 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 8
  br label %14

14:                                               ; preds = %141, %6
  %15 = phi i32 [ 0, %6 ], [ %142, %141 ]
  %16 = load ptr, ptr %9, align 4
  %17 = getelementptr %struct.e1000_buffer, ptr %16, i32 %15
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %10, align 64
  %22 = icmp eq ptr %21, @e1000_clean_rx_irq
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, ptr %13, align 4
  br label %32

25:                                               ; preds = %20
  %26 = icmp eq ptr %21, @e1000_clean_jumbo_rx_irq
  br i1 %26, label %32, label %27

27:                                               ; preds = %25
  %28 = icmp eq ptr %21, @e1000_clean_rx_irq_ps
  br i1 %28, label %29, label %34

29:                                               ; preds = %27
  %30 = load i16, ptr %12, align 16
  %31 = zext i16 %30 to i32
  br label %32

32:                                               ; preds = %29, %25, %23
  %33 = phi i32 [ %31, %29 ], [ %24, %23 ], [ 4096, %25 ]
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %18, i32 noundef %33, i32 noundef 2, i32 noundef 0) #18
  br label %34

34:                                               ; preds = %32, %27
  store i32 0, ptr %17, align 4
  br label %35

35:                                               ; preds = %34, %14
  %36 = getelementptr %struct.e1000_buffer, ptr %16, i32 %15, i32 2
  %37 = getelementptr inbounds %struct.anon.145, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %58, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 1
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45, !prof !13

45:                                               ; preds = %40
  %46 = add i32 %42, -1
  br label %49

47:                                               ; preds = %40
  %48 = ptrtoint ptr %38 to i32
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = inttoptr i32 %50 to ptr
  %52 = getelementptr inbounds %struct.page, ptr %51, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #18, !srcloc !15
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 1, ptr elementtype(i32) %52) #18, !srcloc !16
  %54 = extractvalue { i32, i32 } %53, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  tail call void @__put_page(ptr noundef %51) #18
  br label %57

57:                                               ; preds = %56, %49
  store ptr null, ptr %37, align 4
  br label %58

58:                                               ; preds = %57, %35
  %59 = getelementptr %struct.e1000_buffer, ptr %16, i32 %15, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  tail call void @consume_skb(ptr noundef nonnull %60) #18
  store ptr null, ptr %59, align 4
  br label %63

63:                                               ; preds = %62, %58
  %64 = load ptr, ptr %36, align 4
  %65 = load ptr, ptr %64, align 8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %141, label %67

67:                                               ; preds = %63
  %68 = getelementptr %struct.e1000_ps_page, ptr %64, i32 0, i32 1
  %69 = load i64, ptr %68, align 8
  %70 = trunc i64 %69 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %70, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #18
  store i64 0, ptr %68, align 8
  %71 = load ptr, ptr %64, align 8
  %72 = getelementptr inbounds %struct.page, ptr %71, i32 0, i32 1
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76, !prof !13

76:                                               ; preds = %67
  %77 = add i32 %73, -1
  br label %80

78:                                               ; preds = %67
  %79 = ptrtoint ptr %71 to i32
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  %82 = inttoptr i32 %81 to ptr
  %83 = getelementptr inbounds %struct.page, ptr %82, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %83) #18, !srcloc !15
  %84 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %83, ptr %83, i32 1, ptr elementtype(i32) %83) #18, !srcloc !16
  %85 = extractvalue { i32, i32 } %84, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  tail call void @__put_page(ptr noundef %82) #18
  br label %88

88:                                               ; preds = %87, %80
  store ptr null, ptr %64, align 8
  %89 = load ptr, ptr %36, align 4
  %90 = getelementptr %struct.e1000_ps_page, ptr %89, i32 1
  %91 = load ptr, ptr %90, align 8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %141, label %93

93:                                               ; preds = %88
  %94 = getelementptr %struct.e1000_ps_page, ptr %89, i32 1, i32 1
  %95 = load i64, ptr %94, align 8
  %96 = trunc i64 %95 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %96, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #18
  store i64 0, ptr %94, align 8
  %97 = load ptr, ptr %90, align 8
  %98 = getelementptr inbounds %struct.page, ptr %97, i32 0, i32 1
  %99 = load volatile i32, ptr %98, align 4
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102, !prof !13

102:                                              ; preds = %93
  %103 = add i32 %99, -1
  br label %106

104:                                              ; preds = %93
  %105 = ptrtoint ptr %97 to i32
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = inttoptr i32 %107 to ptr
  %109 = getelementptr inbounds %struct.page, ptr %108, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %109) #18, !srcloc !15
  %110 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %109, ptr %109, i32 1, ptr elementtype(i32) %109) #18, !srcloc !16
  %111 = extractvalue { i32, i32 } %110, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  tail call void @__put_page(ptr noundef %108) #18
  br label %114

114:                                              ; preds = %113, %106
  store ptr null, ptr %90, align 8
  %115 = load ptr, ptr %36, align 4
  %116 = getelementptr %struct.e1000_ps_page, ptr %115, i32 2
  %117 = load ptr, ptr %116, align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %141, label %119

119:                                              ; preds = %114
  %120 = getelementptr %struct.e1000_ps_page, ptr %115, i32 2, i32 1
  %121 = load i64, ptr %120, align 8
  %122 = trunc i64 %121 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %122, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #18
  store i64 0, ptr %120, align 8
  %123 = load ptr, ptr %116, align 8
  %124 = getelementptr inbounds %struct.page, ptr %123, i32 0, i32 1
  %125 = load volatile i32, ptr %124, align 4
  %126 = and i32 %125, 1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128, !prof !13

128:                                              ; preds = %119
  %129 = add i32 %125, -1
  br label %132

130:                                              ; preds = %119
  %131 = ptrtoint ptr %123 to i32
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  %134 = inttoptr i32 %133 to ptr
  %135 = getelementptr inbounds %struct.page, ptr %134, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %135) #18, !srcloc !15
  %136 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %135, ptr %135, i32 1, ptr elementtype(i32) %135) #18, !srcloc !16
  %137 = extractvalue { i32, i32 } %136, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  tail call void @__put_page(ptr noundef %134) #18
  br label %140

140:                                              ; preds = %139, %132
  store ptr null, ptr %116, align 8
  br label %141

141:                                              ; preds = %140, %114, %88, %63
  %142 = add nuw i32 %15, 1
  %143 = load i32, ptr %3, align 4
  %144 = icmp ult i32 %142, %143
  br i1 %144, label %14, label %145

145:                                              ; preds = %141, %1
  %146 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 15
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  tail call void @consume_skb(ptr noundef nonnull %147) #18
  store ptr null, ptr %146, align 4
  br label %150

150:                                              ; preds = %149, %145
  %151 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 1
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 3
  %154 = load i32, ptr %153, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %152, i8 0, i32 %154, i1 false)
  %155 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 6
  store i16 0, ptr %155, align 2
  %156 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 5
  store i16 0, ptr %156, align 4
  %157 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 85
  %158 = load i32, ptr %157, align 4
  %159 = and i32 %158, -5
  store i32 %159, ptr %157, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_write_itr(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = shl i32 %1, 8
  %7 = udiv i32 1000000000, %6
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ %7, %5 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 76
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 75
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %56, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ 0, %17 ], [ %25, %19 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !18
  tail call void @arm_heavy_mb() #18
  %21 = load ptr, ptr %18, align 4
  %22 = shl i32 %20, 2
  %23 = add i32 %22, 232
  %24 = getelementptr i8, ptr %21, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %9) #18, !srcloc !12
  %25 = add nuw i32 %20, 1
  %26 = load i32, ptr %14, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %19, label %56

28:                                               ; preds = %8
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr inbounds %struct.e1000_adapter, ptr %29, i32 0, i32 85
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 2048
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 23380
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %39 = and i32 %38, 16777216
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %45, %34
  %42 = phi i32 [ %43, %45 ], [ 2000, %34 ]
  %43 = add nsw i32 %42, -1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 10737400) #18
  %47 = load ptr, ptr %35, align 4
  %48 = getelementptr i8, ptr %47, i32 23380
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %50 = and i32 %49, 16777216
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %41

52:                                               ; preds = %45, %41, %34, %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %53 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %9) #18, !srcloc !12
  br label %56

56:                                               ; preds = %52, %19, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_get_base_timinca(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %4 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 10
  br i1 %6, label %7, label %58

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 46612
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %56

14:                                               ; preds = %7
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr i8, ptr %15, i32 46624
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %14
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr i8, ptr %21, i32 228
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %20
  %27 = or i32 %23, 1
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr inbounds %struct.e1000_adapter, ptr %28, i32 0, i32 85
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 2048
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %8, align 4
  %35 = getelementptr i8, ptr %34, i32 23380
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %37 = and i32 %36, 16777216
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %43, %33
  %40 = phi i32 [ %41, %43 ], [ 2000, %33 ]
  %41 = add nsw i32 %40, -1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 10737400) #18
  %45 = load ptr, ptr %8, align 4
  %46 = getelementptr i8, ptr %45, i32 23380
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %48 = and i32 %47, 16777216
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %39

50:                                               ; preds = %43, %39, %33, %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %51 = load ptr, ptr %8, align 4
  %52 = getelementptr i8, ptr %51, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %27) #18, !srcloc !12
  %53 = load ptr, ptr %8, align 4
  %54 = getelementptr i8, ptr %53, i32 8
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  br label %56

56:                                               ; preds = %50, %20, %14, %7
  %57 = load i32, ptr %4, align 4
  br label %58

58:                                               ; preds = %56, %2
  %59 = phi i32 [ %57, %56 ], [ %5, %2 ]
  switch i32 %59, label %93 [
    i32 10, label %60
    i32 11, label %62
    i32 12, label %72
    i32 13, label %74
    i32 14, label %74
    i32 15, label %74
    i32 16, label %74
    i32 17, label %74
    i32 3, label %84
    i32 4, label %84
  ]

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 98, i32 3
  store i32 19, ptr %61, align 4
  br label %86

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 46624
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %67 = and i32 %66, 32
  %68 = icmp eq i32 %67, 0
  %69 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 98, i32 3
  br i1 %68, label %71, label %70

70:                                               ; preds = %62
  store i32 19, ptr %69, align 4
  br label %86

71:                                               ; preds = %62
  store i32 18, ptr %69, align 4
  br label %86

72:                                               ; preds = %58
  %73 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 98, i32 3
  store i32 14, ptr %73, align 4
  br label %86

74:                                               ; preds = %58, %58, %58, %58, %58
  %75 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i8, ptr %76, i32 46624
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %79 = and i32 %78, 32
  %80 = icmp eq i32 %79, 0
  %81 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 98, i32 3
  br i1 %80, label %83, label %82

82:                                               ; preds = %74
  store i32 14, ptr %81, align 4
  br label %86

83:                                               ; preds = %74
  store i32 19, ptr %81, align 4
  br label %86

84:                                               ; preds = %58, %58
  %85 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 98, i32 3
  store i32 18, ptr %85, align 4
  br label %86

86:                                               ; preds = %84, %83, %82, %72, %71, %70, %60
  %87 = phi i32 [ 40, %84 ], [ 125, %82 ], [ 26, %83 ], [ 125, %72 ], [ 125, %70 ], [ 40, %71 ], [ 125, %60 ]
  %88 = phi i32 [ 16777216, %84 ], [ 50331648, %82 ], [ 16777216, %83 ], [ 50331648, %72 ], [ 50331648, %70 ], [ 16777216, %71 ], [ 50331648, %60 ]
  %89 = phi i32 [ 18, %84 ], [ 14, %82 ], [ 19, %83 ], [ 14, %72 ], [ 17, %70 ], [ 18, %71 ], [ 17, %60 ]
  %90 = shl nuw nsw i32 %87, %89
  %91 = and i32 %90, 16777214
  %92 = or i32 %91, %88
  store i32 %92, ptr %1, align 4
  br label %93

93:                                               ; preds = %86, %58
  %94 = phi i32 [ 0, %86 ], [ -22, %58 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_power_up_phy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4(ptr noundef %2) #18
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %2) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %5 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 4
  %6 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 81
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.e1000_adapter, ptr %8, i32 0, i32 85
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 2048
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 23380
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %18 = and i32 %17, 16777216
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %24, %13
  %21 = phi i32 [ %22, %24 ], [ 2000, %13 ]
  %22 = add nsw i32 %21, -1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 10737400) #18
  %26 = load ptr, ptr %14, align 4
  %27 = getelementptr i8, ptr %26, i32 23380
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %29 = and i32 %28, 16777216
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %20

31:                                               ; preds = %24, %20, %13, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %32 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %7) #18, !srcloc !12
  %35 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 61
  %36 = load i32, ptr %35, align 4
  %37 = icmp ugt i32 %36, 1522
  br i1 %37, label %38, label %84

38:                                               ; preds = %31
  %39 = load ptr, ptr %32, align 4
  %40 = getelementptr i8, ptr %39, i32 4096
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %42 = lshr i32 %41, 16
  %43 = and i32 %41, 65535
  %44 = load i32, ptr %35, align 4
  %45 = shl i32 %44, 1
  %46 = add i32 %45, 1047
  %47 = lshr i32 %46, 10
  %48 = add i32 %44, 1023
  %49 = lshr i32 %48, 10
  %50 = icmp ugt i32 %47, %42
  br i1 %50, label %51, label %57

51:                                               ; preds = %38
  %52 = sub nsw i32 %47, %42
  %53 = icmp ugt i32 %43, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = sub nsw i32 %43, %52
  %56 = tail call i32 @llvm.umax.i32(i32 %55, i32 %49)
  br label %57

57:                                               ; preds = %54, %51, %38
  %58 = phi i32 [ %43, %51 ], [ %43, %38 ], [ %56, %54 ]
  %59 = load ptr, ptr %4, align 4
  %60 = getelementptr inbounds %struct.e1000_adapter, ptr %59, i32 0, i32 85
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 2048
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %81, label %64

64:                                               ; preds = %57
  %65 = load ptr, ptr %32, align 4
  %66 = getelementptr i8, ptr %65, i32 23380
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %68 = and i32 %67, 16777216
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %74, %64
  %71 = phi i32 [ %72, %74 ], [ 2000, %64 ]
  %72 = add nsw i32 %71, -1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 10737400) #18
  %76 = load ptr, ptr %32, align 4
  %77 = getelementptr i8, ptr %76, i32 23380
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %79 = and i32 %78, 16777216
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %70

81:                                               ; preds = %74, %70, %64, %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %82 = load ptr, ptr %32, align 4
  %83 = getelementptr i8, ptr %82, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %58) #18, !srcloc !12
  br label %84

84:                                               ; preds = %81, %31
  %85 = phi i32 [ %58, %81 ], [ %7, %31 ]
  %86 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 84
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 262144
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i16 1664, i16 -1
  %91 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 4, i32 2
  store i16 %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 4, i32 4
  store i8 1, ptr %92, align 4
  %93 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 4, i32 7
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 4, i32 6
  store i32 %94, ptr %95, align 4
  %96 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 3
  %97 = load i32, ptr %96, align 4
  switch i32 %97, label %131 [
    i32 7, label %98
    i32 8, label %98
    i32 9, label %141
    i32 10, label %151
    i32 11, label %151
    i32 12, label %151
    i32 13, label %151
    i32 14, label %151
    i32 15, label %151
    i32 16, label %151
    i32 17, label %151
  ]

98:                                               ; preds = %84, %84
  %99 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 63
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.net_device, ptr %100, i32 0, i32 20
  %102 = load i32, ptr %101, align 4
  %103 = icmp ugt i32 %102, 1500
  br i1 %103, label %104, label %131

104:                                              ; preds = %98
  %105 = load ptr, ptr %4, align 4
  %106 = getelementptr inbounds %struct.e1000_adapter, ptr %105, i32 0, i32 85
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, 2048
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %127, label %110

110:                                              ; preds = %104
  %111 = load ptr, ptr %32, align 4
  %112 = getelementptr i8, ptr %111, i32 23380
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %114 = and i32 %113, 16777216
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %120, %110
  %117 = phi i32 [ %118, %120 ], [ 2000, %110 ]
  %118 = add nsw i32 %117, -1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %116
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %121(i32 noundef 10737400) #18
  %122 = load ptr, ptr %32, align 4
  %123 = getelementptr i8, ptr %122, i32 23380
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %125 = and i32 %124, 16777216
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %116

127:                                              ; preds = %120, %116, %110, %104
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %128 = load ptr, ptr %32, align 4
  %129 = getelementptr i8, ptr %128, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 14) #18, !srcloc !12
  store i32 10240, ptr %5, align 4
  %130 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 4, i32 1
  store i32 10232, ptr %130, align 4
  br label %187

131:                                              ; preds = %98, %84
  %132 = shl i32 %85, 10
  %133 = mul i32 %85, 9216
  %134 = udiv i32 %133, 10
  %135 = load i32, ptr %35, align 4
  %136 = sub i32 %132, %135
  %137 = tail call i32 @llvm.umin.i32(i32 %134, i32 %136)
  %138 = and i32 %137, 65528
  store i32 %138, ptr %5, align 4
  %139 = add nsw i32 %138, -8
  %140 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 4, i32 1
  store i32 %139, ptr %140, align 4
  br label %187

141:                                              ; preds = %84
  %142 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 63
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.net_device, ptr %143, i32 0, i32 20
  %145 = load i32, ptr %144, align 4
  %146 = icmp ugt i32 %145, 1500
  %147 = select i1 %146, i32 13568, i32 20480
  %148 = select i1 %146, i32 5376, i32 12288
  store i32 %147, ptr %5, align 4
  %149 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 4, i32 1
  store i32 %148, ptr %149, align 4
  %150 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 4, i32 3
  store i16 4096, ptr %150, align 2
  br label %187

151:                                              ; preds = %84, %84, %84, %84, %84, %84, %84, %84
  %152 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 4, i32 3
  store i16 -1, ptr %152, align 2
  store i16 -1, ptr %91, align 4
  %153 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 63
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.net_device, ptr %154, i32 0, i32 20
  %156 = load i32, ptr %155, align 4
  %157 = icmp ult i32 %156, 1501
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  store i32 23584, ptr %5, align 4
  %159 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 4, i32 1
  store i32 20552, ptr %159, align 4
  br label %187

160:                                              ; preds = %151
  %161 = load ptr, ptr %4, align 4
  %162 = getelementptr inbounds %struct.e1000_adapter, ptr %161, i32 0, i32 85
  %163 = load i32, ptr %162, align 4
  %164 = and i32 %163, 2048
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %183, label %166

166:                                              ; preds = %160
  %167 = load ptr, ptr %32, align 4
  %168 = getelementptr i8, ptr %167, i32 23380
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %168) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %170 = and i32 %169, 16777216
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %183, label %172

172:                                              ; preds = %176, %166
  %173 = phi i32 [ %174, %176 ], [ 2000, %166 ]
  %174 = add nsw i32 %173, -1
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %177(i32 noundef 10737400) #18
  %178 = load ptr, ptr %32, align 4
  %179 = getelementptr i8, ptr %178, i32 23380
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %179) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %181 = and i32 %180, 16777216
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %172

183:                                              ; preds = %176, %172, %166, %160
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %184 = load ptr, ptr %32, align 4
  %185 = getelementptr i8, ptr %184, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %185, i32 14) #18, !srcloc !12
  store i32 12896, ptr %5, align 4
  %186 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 4, i32 1
  store i32 11464, ptr %186, align 4
  br label %187

187:                                              ; preds = %183, %158, %141, %131, %127
  %188 = phi i32 [ %85, %131 ], [ %85, %158 ], [ 14, %183 ], [ %85, %141 ], [ 14, %127 ]
  %189 = load ptr, ptr %32, align 4
  %190 = getelementptr i8, ptr %189, i32 4096
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %190) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %192 = lshr i32 %191, 6
  %193 = and i32 %192, 67107840
  %194 = add nsw i32 %193, -96
  %195 = tail call i32 @llvm.umin.i32(i32 %194, i32 24576)
  %196 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 19
  store i32 %195, ptr %196, align 4
  %197 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 15
  %198 = load i32, ptr %197, align 8
  %199 = and i32 %198, 3
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %227, label %201

201:                                              ; preds = %187
  %202 = load i32, ptr %35, align 4
  %203 = shl i32 %202, 1
  %204 = shl i32 %188, 10
  %205 = icmp ugt i32 %203, %204
  %206 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 85
  %207 = load i32, ptr %206, align 4
  %208 = and i32 %207, 256
  %209 = icmp eq i32 %208, 0
  br i1 %205, label %210, label %217

210:                                              ; preds = %201
  br i1 %209, label %211, label %227

211:                                              ; preds = %210
  %212 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %213 = load ptr, ptr %212, align 32
  %214 = getelementptr inbounds %struct.pci_dev, ptr %213, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %214, ptr noundef nonnull @.str.4) #20
  %215 = load i32, ptr %206, align 4
  %216 = or i32 %215, 256
  store i32 %216, ptr %206, align 4
  br label %225

217:                                              ; preds = %201
  br i1 %209, label %227, label %218

218:                                              ; preds = %217
  %219 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %220 = load ptr, ptr %219, align 32
  %221 = getelementptr inbounds %struct.pci_dev, ptr %220, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %221, ptr noundef nonnull @.str.5) #20
  %222 = load i32, ptr %206, align 4
  %223 = and i32 %222, -257
  store i32 %223, ptr %206, align 4
  %224 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 14
  store i32 20000, ptr %224, align 4
  br label %225

225:                                              ; preds = %218, %211
  %226 = phi i32 [ 0, %211 ], [ 20000, %218 ]
  tail call void @e1000e_write_itr(ptr noundef %0, i32 noundef %226)
  br label %227

227:                                              ; preds = %225, %217, %210, %187
  %228 = load i32, ptr %96, align 4
  %229 = icmp ugt i32 %228, 11
  br i1 %229, label %230, label %231

230:                                              ; preds = %227
  tail call fastcc void @e1000_flush_desc_rings(ptr noundef %0)
  br label %231

231:                                              ; preds = %230, %227
  %232 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 13
  %233 = load ptr, ptr %232, align 4
  %234 = tail call i32 %233(ptr noundef %4) #18
  %235 = load i32, ptr %86, align 8
  %236 = and i32 %235, 1
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %231
  tail call void @e1000e_get_hw_control(ptr noundef %0)
  br label %239

239:                                              ; preds = %238, %231
  %240 = load ptr, ptr %4, align 4
  %241 = getelementptr inbounds %struct.e1000_adapter, ptr %240, i32 0, i32 85
  %242 = load i32, ptr %241, align 4
  %243 = and i32 %242, 2048
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %262, label %245

245:                                              ; preds = %239
  %246 = load ptr, ptr %32, align 4
  %247 = getelementptr i8, ptr %246, i32 23380
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %247) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %249 = and i32 %248, 16777216
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %262, label %251

251:                                              ; preds = %255, %245
  %252 = phi i32 [ %253, %255 ], [ 2000, %245 ]
  %253 = add nsw i32 %252, -1
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %262, label %255

255:                                              ; preds = %251
  %256 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %256(i32 noundef 10737400) #18
  %257 = load ptr, ptr %32, align 4
  %258 = getelementptr i8, ptr %257, i32 23380
  %259 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %258) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %260 = and i32 %259, 16777216
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %251

262:                                              ; preds = %255, %251, %245, %239
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %263 = load ptr, ptr %32, align 4
  %264 = getelementptr i8, ptr %263, i32 22528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %264, i32 0) #18, !srcloc !12
  %265 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 14
  %266 = load ptr, ptr %265, align 4
  %267 = tail call i32 %266(ptr noundef %4) #18
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %272, label %269

269:                                              ; preds = %262
  %270 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 63
  %271 = load ptr, ptr %270, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %271, ptr noundef nonnull @.str.6) #20
  br label %272

272:                                              ; preds = %269, %262
  tail call fastcc void @e1000_update_mng_vlan(ptr noundef %0)
  %273 = load ptr, ptr %4, align 4
  %274 = getelementptr inbounds %struct.e1000_adapter, ptr %273, i32 0, i32 85
  %275 = load i32, ptr %274, align 4
  %276 = and i32 %275, 2048
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %295, label %278

278:                                              ; preds = %272
  %279 = load ptr, ptr %32, align 4
  %280 = getelementptr i8, ptr %279, i32 23380
  %281 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %280) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %282 = and i32 %281, 16777216
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %295, label %284

284:                                              ; preds = %288, %278
  %285 = phi i32 [ %286, %288 ], [ 2000, %278 ]
  %286 = add nsw i32 %285, -1
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %295, label %288

288:                                              ; preds = %284
  %289 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %289(i32 noundef 10737400) #18
  %290 = load ptr, ptr %32, align 4
  %291 = getelementptr i8, ptr %290, i32 23380
  %292 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %291) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %293 = and i32 %292, 16777216
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %284

295:                                              ; preds = %288, %284, %278, %272
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %296 = load ptr, ptr %32, align 4
  %297 = getelementptr i8, ptr %296, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %297, i32 33024) #18, !srcloc !12
  tail call void @e1000e_reset_adaptive(ptr noundef %4) #18
  %298 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 101
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  store i32 0, ptr %2, align 4, !annotation !19
  %299 = load i32, ptr %86, align 8
  %300 = and i32 %299, 16384
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %354, label %302

302:                                              ; preds = %295
  %303 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 101, i32 10
  %304 = load ptr, ptr %303, align 4
  %305 = icmp eq ptr %304, null
  br i1 %305, label %306, label %336

306:                                              ; preds = %302
  %307 = call i32 @e1000e_get_base_timinca(ptr noundef %0, ptr noundef nonnull %2) #18
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %341

309:                                              ; preds = %306
  %310 = load i32, ptr %2, align 4
  %311 = load ptr, ptr %4, align 4
  %312 = getelementptr inbounds %struct.e1000_adapter, ptr %311, i32 0, i32 85
  %313 = load i32, ptr %312, align 4
  %314 = and i32 %313, 2048
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %333, label %316

316:                                              ; preds = %309
  %317 = load ptr, ptr %32, align 4
  %318 = getelementptr i8, ptr %317, i32 23380
  %319 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %318) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %320 = and i32 %319, 16777216
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %333, label %322

322:                                              ; preds = %326, %316
  %323 = phi i32 [ %324, %326 ], [ 2000, %316 ]
  %324 = add nsw i32 %323, -1
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %333, label %326

326:                                              ; preds = %322
  %327 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %327(i32 noundef 10737400) #18
  %328 = load ptr, ptr %32, align 4
  %329 = getelementptr i8, ptr %328, i32 23380
  %330 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %329) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %331 = and i32 %330, 16777216
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %322

333:                                              ; preds = %326, %322, %316, %309
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %334 = load ptr, ptr %32, align 4
  %335 = getelementptr i8, ptr %334, i32 46600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %335, i32 %310) #18, !srcloc !12
  br label %346

336:                                              ; preds = %302
  %337 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 103
  %338 = load i32, ptr %337, align 8
  %339 = tail call i32 %304(ptr noundef %298, i32 noundef %338) #18
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %346, label %341

341:                                              ; preds = %336, %306
  %342 = phi i32 [ %339, %336 ], [ %307, %306 ]
  %343 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %344 = load ptr, ptr %343, align 32
  %345 = getelementptr inbounds %struct.pci_dev, ptr %344, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %345, ptr noundef nonnull @.str.14, i32 noundef %342) #20
  br label %354

346:                                              ; preds = %336, %333
  %347 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 97
  %348 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %347) #18
  %349 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 99
  %350 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 98
  %351 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #18
  tail call void @timecounter_init(ptr noundef %349, ptr noundef %350, i64 noundef %351) #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %347, i32 noundef %348) #18
  %352 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 92
  %353 = tail call fastcc i32 @e1000e_config_hwtstamp(ptr noundef %0, ptr noundef %352) #18
  br label %354

354:                                              ; preds = %346, %341, %295
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  %355 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 85
  %356 = load i32, ptr %355, align 4
  %357 = and i32 %356, 32
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %389, label %359

359:                                              ; preds = %354
  %360 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5
  %361 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 1
  %362 = load i32, ptr %361, align 4
  switch i32 %362, label %364 [
    i32 11, label %368
    i32 12, label %363
  ]

363:                                              ; preds = %359
  br label %368

364:                                              ; preds = %359
  %365 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %366 = load ptr, ptr %365, align 32
  %367 = getelementptr inbounds %struct.pci_dev, ptr %366, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %367, ptr noundef nonnull @.str.7) #20
  br label %488

368:                                              ; preds = %363, %359
  %369 = phi i16 [ -32767, %363 ], [ 1038, %359 ]
  %370 = load ptr, ptr %360, align 4
  %371 = tail call i32 %370(ptr noundef %4) #18
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %377, label %373

373:                                              ; preds = %368
  %374 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %375 = load ptr, ptr %374, align 32
  %376 = getelementptr inbounds %struct.pci_dev, ptr %375, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %376, ptr noundef nonnull @.str.8) #20
  br label %488

377:                                              ; preds = %368
  %378 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 9, i32 0, i32 3
  %379 = load i8, ptr %378, align 1, !range !20
  %380 = icmp eq i8 %379, 0
  br i1 %380, label %381, label %384

381:                                              ; preds = %377
  %382 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 104
  %383 = load i16, ptr %382, align 4
  br label %384

384:                                              ; preds = %381, %377
  %385 = phi i16 [ %383, %381 ], [ 0, %377 ]
  %386 = tail call i32 @e1000_write_emi_reg_locked(ptr noundef %4, i16 noundef zeroext %369, i16 noundef zeroext %385) #18
  %387 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 13
  %388 = load ptr, ptr %387, align 4
  tail call void %388(ptr noundef %4) #18
  br label %389

389:                                              ; preds = %384, %354
  %390 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 63
  %391 = load ptr, ptr %390, align 4
  %392 = getelementptr inbounds %struct.net_device, ptr %391, i32 0, i32 6
  %393 = load volatile i32, ptr %392, align 4
  %394 = and i32 %393, 1
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %406

396:                                              ; preds = %389
  %397 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 13
  %398 = load volatile i32, ptr %397, align 4
  %399 = and i32 %398, 1
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %406

401:                                              ; preds = %396
  %402 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 21
  %403 = load ptr, ptr %402, align 4
  %404 = icmp eq ptr %403, null
  br i1 %404, label %406, label %405

405:                                              ; preds = %401
  tail call void %403(ptr noundef %4) #18
  br label %406

406:                                              ; preds = %405, %401, %396, %389
  %407 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 8
  %408 = load ptr, ptr %407, align 4
  %409 = tail call i32 %408(ptr noundef %4) #18
  %410 = load i32, ptr %86, align 8
  %411 = and i32 %410, 67110912
  %412 = icmp eq i32 %411, 2048
  br i1 %412, label %413, label %422

413:                                              ; preds = %406
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #18
  store i16 0, ptr %3, align 2
  %414 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 10
  %415 = load ptr, ptr %414, align 4
  %416 = call i32 %415(ptr noundef %4, i32 noundef 25, ptr noundef nonnull %3) #18
  %417 = load i16, ptr %3, align 2
  %418 = and i16 %417, -2
  store i16 %418, ptr %3, align 2
  %419 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 17
  %420 = load ptr, ptr %419, align 4
  %421 = call i32 %420(ptr noundef %4, i32 noundef 25, i16 noundef zeroext %418) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #18
  br label %422

422:                                              ; preds = %413, %406
  %423 = load i32, ptr %96, align 4
  %424 = icmp ugt i32 %423, 11
  br i1 %424, label %425, label %488

425:                                              ; preds = %422
  %426 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 77
  %427 = load i32, ptr %426, align 4
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %488

429:                                              ; preds = %425
  %430 = load ptr, ptr %32, align 4
  %431 = getelementptr i8, ptr %430, i32 228
  %432 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %431) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %433 = or i32 %432, 4
  %434 = load ptr, ptr %4, align 4
  %435 = getelementptr inbounds %struct.e1000_adapter, ptr %434, i32 0, i32 85
  %436 = load i32, ptr %435, align 4
  %437 = and i32 %436, 2048
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %456, label %439

439:                                              ; preds = %429
  %440 = load ptr, ptr %32, align 4
  %441 = getelementptr i8, ptr %440, i32 23380
  %442 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %441) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %443 = and i32 %442, 16777216
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %456, label %445

445:                                              ; preds = %449, %439
  %446 = phi i32 [ %447, %449 ], [ 2000, %439 ]
  %447 = add nsw i32 %446, -1
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %456, label %449

449:                                              ; preds = %445
  %450 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %450(i32 noundef 10737400) #18
  %451 = load ptr, ptr %32, align 4
  %452 = getelementptr i8, ptr %451, i32 23380
  %453 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %452) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %454 = and i32 %453, 16777216
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %445

456:                                              ; preds = %449, %445, %439, %429
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %457 = load ptr, ptr %32, align 4
  %458 = getelementptr i8, ptr %457, i32 228
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %458, i32 %433) #18, !srcloc !12
  %459 = load ptr, ptr %32, align 4
  %460 = getelementptr i8, ptr %459, i32 23476
  %461 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %460) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %462 = or i32 %461, 6144
  %463 = load ptr, ptr %4, align 4
  %464 = getelementptr inbounds %struct.e1000_adapter, ptr %463, i32 0, i32 85
  %465 = load i32, ptr %464, align 4
  %466 = and i32 %465, 2048
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %485, label %468

468:                                              ; preds = %456
  %469 = load ptr, ptr %32, align 4
  %470 = getelementptr i8, ptr %469, i32 23380
  %471 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %470) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %472 = and i32 %471, 16777216
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %485, label %474

474:                                              ; preds = %478, %468
  %475 = phi i32 [ %476, %478 ], [ 2000, %468 ]
  %476 = add nsw i32 %475, -1
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %485, label %478

478:                                              ; preds = %474
  %479 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %479(i32 noundef 10737400) #18
  %480 = load ptr, ptr %32, align 4
  %481 = getelementptr i8, ptr %480, i32 23380
  %482 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %481) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %483 = and i32 %482, 16777216
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %485, label %474

485:                                              ; preds = %478, %474, %468, %456
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %486 = load ptr, ptr %32, align 4
  %487 = getelementptr i8, ptr %486, i32 23476
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %487, i32 %462) #18, !srcloc !12
  br label %488

488:                                              ; preds = %485, %425, %422, %373, %364
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @e1000_flush_desc_rings(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #18
  store i16 0, ptr %2, align 2, !annotation !19
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %4 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 23484
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %8 = or i32 %7, 8192
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.e1000_adapter, ptr %9, i32 0, i32 85
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 2048
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %1
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 23380
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %18 = and i32 %17, 16777216
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %24, %14
  %21 = phi i32 [ %22, %24 ], [ 2000, %14 ]
  %22 = add nsw i32 %21, -1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 10737400) #18
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr i8, ptr %26, i32 23380
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %29 = and i32 %28, 16777216
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %20

31:                                               ; preds = %24, %20, %14, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr i8, ptr %32, i32 23484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %8) #18, !srcloc !12
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr i8, ptr %34, i32 14344
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %37 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %38 = load ptr, ptr %37, align 32
  %39 = call i32 @pci_read_config_word(ptr noundef %38, i32 noundef 228, ptr noundef nonnull %2) #18
  %40 = load i16, ptr %2, align 2
  %41 = and i16 %40, 256
  %42 = icmp ne i16 %41, 0
  %43 = icmp ne i32 %36, 0
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %249

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 18
  %47 = load ptr, ptr %46, align 64
  %48 = load ptr, ptr %4, align 4
  %49 = getelementptr i8, ptr %48, i32 1024
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %51 = or i32 %50, 2
  %52 = load ptr, ptr %3, align 4
  %53 = getelementptr inbounds %struct.e1000_adapter, ptr %52, i32 0, i32 85
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 2048
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %45
  %58 = load ptr, ptr %4, align 4
  %59 = getelementptr i8, ptr %58, i32 23380
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %61 = and i32 %60, 16777216
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %67, %57
  %64 = phi i32 [ %65, %67 ], [ 2000, %57 ]
  %65 = add nsw i32 %64, -1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %68(i32 noundef 10737400) #18
  %69 = load ptr, ptr %4, align 4
  %70 = getelementptr i8, ptr %69, i32 23380
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %72 = and i32 %71, 16777216
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %63

74:                                               ; preds = %67, %63, %57, %45
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %75 = load ptr, ptr %4, align 4
  %76 = getelementptr i8, ptr %75, i32 1024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %51) #18, !srcloc !12
  %77 = load ptr, ptr %4, align 4
  %78 = getelementptr i8, ptr %77, i32 14360
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %80 = getelementptr inbounds %struct.e1000_ring, ptr %47, i32 0, i32 5
  %81 = load i16, ptr %80, align 4
  %82 = zext i16 %81 to i32
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %85, label %84, !prof !13

84:                                               ; preds = %74
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/intel/e1000e/netdev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3821, 0\0A.popsection", ""() #18, !srcloc !21
  unreachable

85:                                               ; preds = %74
  %86 = getelementptr inbounds %struct.e1000_ring, ptr %47, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr %struct.e1000_tx_desc, ptr %87, i32 %79
  %89 = getelementptr inbounds %struct.e1000_ring, ptr %47, i32 0, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = zext i32 %90 to i64
  store i64 %91, ptr %88, align 8
  %92 = getelementptr %struct.e1000_tx_desc, ptr %87, i32 %79, i32 1
  store i32 33554944, ptr %92, align 8
  %93 = getelementptr %struct.e1000_tx_desc, ptr %87, i32 %79, i32 2
  store i32 0, ptr %93, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !22
  call void @arm_heavy_mb() #18
  %94 = load i16, ptr %80, align 4
  %95 = add i16 %94, 1
  %96 = zext i16 %95 to i32
  %97 = getelementptr inbounds %struct.e1000_ring, ptr %47, i32 0, i32 4
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, %96
  %100 = select i1 %99, i16 0, i16 %95
  store i16 %100, ptr %80, align 4
  %101 = load ptr, ptr %3, align 4
  %102 = getelementptr inbounds %struct.e1000_adapter, ptr %101, i32 0, i32 85
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, 2048
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %123, label %106

106:                                              ; preds = %85
  %107 = load ptr, ptr %4, align 4
  %108 = getelementptr i8, ptr %107, i32 23380
  %109 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %110 = and i32 %109, 16777216
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %123, label %112

112:                                              ; preds = %116, %106
  %113 = phi i32 [ %114, %116 ], [ 2000, %106 ]
  %114 = add nsw i32 %113, -1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %112
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %117(i32 noundef 10737400) #18
  %118 = load ptr, ptr %4, align 4
  %119 = getelementptr i8, ptr %118, i32 23380
  %120 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %121 = and i32 %120, 16777216
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %112

123:                                              ; preds = %116, %112, %106, %85
  %124 = zext i16 %100 to i32
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %125 = load ptr, ptr %4, align 4
  %126 = getelementptr i8, ptr %125, i32 14360
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %124) #18, !srcloc !12
  call void @usleep_range_state(i32 noundef 200, i32 noundef 250, i32 noundef 2) #18
  %127 = load ptr, ptr %37, align 32
  %128 = call i32 @pci_read_config_word(ptr noundef %127, i32 noundef 228, ptr noundef nonnull %2) #18
  %129 = load i16, ptr %2, align 2
  %130 = and i16 %129, 256
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %249, label %132

132:                                              ; preds = %123
  %133 = load ptr, ptr %4, align 4
  %134 = getelementptr i8, ptr %133, i32 256
  %135 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %136 = and i32 %135, -3
  %137 = load ptr, ptr %3, align 4
  %138 = getelementptr inbounds %struct.e1000_adapter, ptr %137, i32 0, i32 85
  %139 = load i32, ptr %138, align 4
  %140 = and i32 %139, 2048
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %159, label %142

142:                                              ; preds = %132
  %143 = load ptr, ptr %4, align 4
  %144 = getelementptr i8, ptr %143, i32 23380
  %145 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %146 = and i32 %145, 16777216
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %159, label %148

148:                                              ; preds = %152, %142
  %149 = phi i32 [ %150, %152 ], [ 2000, %142 ]
  %150 = add nsw i32 %149, -1
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %159, label %152

152:                                              ; preds = %148
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %153(i32 noundef 10737400) #18
  %154 = load ptr, ptr %4, align 4
  %155 = getelementptr i8, ptr %154, i32 23380
  %156 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %157 = and i32 %156, 16777216
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %148

159:                                              ; preds = %152, %148, %142, %132
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %160 = load ptr, ptr %4, align 4
  %161 = getelementptr i8, ptr %160, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 %136) #18, !srcloc !12
  %162 = load ptr, ptr %4, align 4
  %163 = getelementptr i8, ptr %162, i32 8
  %164 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %163) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #18
  %165 = load ptr, ptr %4, align 4
  %166 = getelementptr i8, ptr %165, i32 10280
  %167 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %166) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %168 = and i32 %167, -16793600
  %169 = or i32 %168, 16777503
  %170 = load ptr, ptr %3, align 4
  %171 = getelementptr inbounds %struct.e1000_adapter, ptr %170, i32 0, i32 85
  %172 = load i32, ptr %171, align 4
  %173 = and i32 %172, 2048
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %192, label %175

175:                                              ; preds = %159
  %176 = load ptr, ptr %4, align 4
  %177 = getelementptr i8, ptr %176, i32 23380
  %178 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %179 = and i32 %178, 16777216
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %192, label %181

181:                                              ; preds = %185, %175
  %182 = phi i32 [ %183, %185 ], [ 2000, %175 ]
  %183 = add nsw i32 %182, -1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %192, label %185

185:                                              ; preds = %181
  %186 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %186(i32 noundef 10737400) #18
  %187 = load ptr, ptr %4, align 4
  %188 = getelementptr i8, ptr %187, i32 23380
  %189 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %190 = and i32 %189, 16777216
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %181

192:                                              ; preds = %185, %181, %175, %159
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %193 = load ptr, ptr %4, align 4
  %194 = getelementptr i8, ptr %193, i32 10280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %194, i32 %169) #18, !srcloc !12
  %195 = or i32 %135, 2
  %196 = load ptr, ptr %3, align 4
  %197 = getelementptr inbounds %struct.e1000_adapter, ptr %196, i32 0, i32 85
  %198 = load i32, ptr %197, align 4
  %199 = and i32 %198, 2048
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %218, label %201

201:                                              ; preds = %192
  %202 = load ptr, ptr %4, align 4
  %203 = getelementptr i8, ptr %202, i32 23380
  %204 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %203) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %205 = and i32 %204, 16777216
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %218, label %207

207:                                              ; preds = %211, %201
  %208 = phi i32 [ %209, %211 ], [ 2000, %201 ]
  %209 = add nsw i32 %208, -1
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %218, label %211

211:                                              ; preds = %207
  %212 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %212(i32 noundef 10737400) #18
  %213 = load ptr, ptr %4, align 4
  %214 = getelementptr i8, ptr %213, i32 23380
  %215 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %214) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %216 = and i32 %215, 16777216
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %207

218:                                              ; preds = %211, %207, %201, %192
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %219 = load ptr, ptr %4, align 4
  %220 = getelementptr i8, ptr %219, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 %195) #18, !srcloc !12
  %221 = load ptr, ptr %4, align 4
  %222 = getelementptr i8, ptr %221, i32 8
  %223 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %222) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #18
  %224 = load ptr, ptr %3, align 4
  %225 = getelementptr inbounds %struct.e1000_adapter, ptr %224, i32 0, i32 85
  %226 = load i32, ptr %225, align 4
  %227 = and i32 %226, 2048
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %246, label %229

229:                                              ; preds = %218
  %230 = load ptr, ptr %4, align 4
  %231 = getelementptr i8, ptr %230, i32 23380
  %232 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %231) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %233 = and i32 %232, 16777216
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %246, label %235

235:                                              ; preds = %239, %229
  %236 = phi i32 [ %237, %239 ], [ 2000, %229 ]
  %237 = add nsw i32 %236, -1
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %246, label %239

239:                                              ; preds = %235
  %240 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %240(i32 noundef 10737400) #18
  %241 = load ptr, ptr %4, align 4
  %242 = getelementptr i8, ptr %241, i32 23380
  %243 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %242) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %244 = and i32 %243, 16777216
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %235

246:                                              ; preds = %239, %235, %229, %218
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %247 = load ptr, ptr %4, align 4
  %248 = getelementptr i8, ptr %247, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %248, i32 %136) #18, !srcloc !12
  br label %249

249:                                              ; preds = %246, %123, %31
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @e1000_update_mng_vlan(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 63
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 8, i32 3
  %5 = load i16, ptr %4, align 2
  %6 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 9
  %7 = load i16, ptr %6, align 8
  %8 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 8, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %45, label %12

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %3, i32 2532
  %14 = getelementptr i8, ptr %3, i32 3472
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = getelementptr i8, ptr %3, i32 2024
  %20 = load i16, ptr %19, align 8
  %21 = icmp eq i16 %20, %5
  br i1 %21, label %44, label %22

22:                                               ; preds = %18, %12
  %23 = getelementptr i8, ptr %3, i32 12584
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  %27 = zext i16 %5 to i32
  br i1 %26, label %42, label %28

28:                                               ; preds = %22
  %29 = lshr i32 %27, 5
  %30 = and i32 %29, 127
  %31 = getelementptr i8, ptr %3, i32 2536
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 22016
  %34 = shl nuw nsw i32 %30, 2
  %35 = getelementptr i8, ptr %33, i32 %34
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !23
  %37 = and i32 %27, 31
  %38 = shl nuw i32 1, %37
  %39 = or i32 %36, %38
  %40 = getelementptr i8, ptr %3, i32 2616
  %41 = load ptr, ptr %40, align 4
  tail call void %41(ptr noundef %13, i32 noundef %30, i32 noundef %39) #18
  br label %42

42:                                               ; preds = %28, %22
  %43 = getelementptr i8, ptr %3, i32 1504
  tail call void @_set_bit(i32 noundef %27, ptr noundef %43) #18
  br label %44

44:                                               ; preds = %42, %18
  store i16 %5, ptr %6, align 8
  br label %45

45:                                               ; preds = %44, %1
  %46 = icmp eq i16 %7, -1
  %47 = icmp eq i16 %5, %7
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %84, label %49

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %3, i32 1408
  %51 = getelementptr i8, ptr %3, i32 2532
  %52 = getelementptr i8, ptr %3, i32 3472
  %53 = load i8, ptr %52, align 4
  %54 = and i8 %53, 2
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %49
  %57 = getelementptr i8, ptr %3, i32 2024
  %58 = load i16, ptr %57, align 8
  %59 = icmp eq i16 %58, %7
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  tail call void @e1000e_release_hw_control(ptr noundef %50) #18
  br label %84

61:                                               ; preds = %56, %49
  %62 = getelementptr i8, ptr %3, i32 12584
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 4
  %65 = icmp eq i32 %64, 0
  %66 = zext i16 %7 to i32
  br i1 %65, label %82, label %67

67:                                               ; preds = %61
  %68 = lshr i32 %66, 5
  %69 = and i32 %68, 127
  %70 = getelementptr i8, ptr %3, i32 2536
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr i8, ptr %71, i32 22016
  %73 = shl nuw nsw i32 %69, 2
  %74 = getelementptr i8, ptr %72, i32 %73
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !24
  %76 = and i32 %66, 31
  %77 = shl nuw i32 1, %76
  %78 = xor i32 %77, -1
  %79 = and i32 %75, %78
  %80 = getelementptr i8, ptr %3, i32 2616
  %81 = load ptr, ptr %80, align 4
  tail call void %81(ptr noundef %51, i32 noundef %69, i32 noundef %79) #18
  br label %82

82:                                               ; preds = %67, %61
  %83 = getelementptr i8, ptr %3, i32 1504
  tail call void @_clear_bit(i32 noundef %66, ptr noundef %83) #18
  br label %84

84:                                               ; preds = %82, %60, %45
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_reset_adaptive(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_write_emi_reg_locked(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_up(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @e1000_configure(ptr noundef %0)
  %2 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #18
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 76
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call fastcc void @e1000_configure_msix(ptr noundef %0)
  br label %7

7:                                                ; preds = %6, %1
  tail call fastcc void @e1000_irq_enable(ptr noundef %0)
  tail call fastcc void @e1000e_trigger_lsc(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @e1000_configure(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [10 x i32], align 4
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 48
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 63
  %6 = load ptr, ptr %5, align 4
  tail call void @e1000e_set_rx_mode(ptr noundef %6)
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr i8, ptr %7, i32 2532
  %9 = getelementptr i8, ptr %7, i32 3472
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 2
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %7, i32 2024
  %15 = load i16, ptr %14, align 8
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %13, %1
  %18 = getelementptr i8, ptr %7, i32 12584
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %7, i32 2536
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 22016
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !23
  %27 = or i32 %26, 1
  %28 = getelementptr i8, ptr %7, i32 2616
  %29 = load ptr, ptr %28, align 4
  tail call void %29(ptr noundef %8, i32 noundef 0, i32 noundef %27) #18
  br label %30

30:                                               ; preds = %22, %17
  %31 = getelementptr i8, ptr %7, i32 1504
  tail call void @_set_bit(i32 noundef 0, ptr noundef %31) #18
  br label %32

32:                                               ; preds = %30, %13
  %33 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 6
  %34 = tail call i32 @_find_next_bit_le(ptr noundef %33, i32 noundef 4096, i32 noundef 0) #18
  %35 = and i32 %34, 65535
  %36 = icmp ult i32 %35, 4096
  br i1 %36, label %37, label %78

37:                                               ; preds = %73, %32
  %38 = phi i32 [ %76, %73 ], [ %35, %32 ]
  %39 = phi i32 [ %75, %73 ], [ %34, %32 ]
  %40 = load ptr, ptr %5, align 4
  %41 = getelementptr i8, ptr %40, i32 2532
  %42 = getelementptr i8, ptr %40, i32 3472
  %43 = load i8, ptr %42, align 4
  %44 = and i8 %43, 2
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %37
  %47 = trunc i32 %39 to i16
  %48 = getelementptr i8, ptr %40, i32 2024
  %49 = load i16, ptr %48, align 8
  %50 = icmp eq i16 %49, %47
  br i1 %50, label %73, label %51

51:                                               ; preds = %46, %37
  %52 = getelementptr i8, ptr %40, i32 12584
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 4
  %55 = icmp eq i32 %54, 0
  %56 = and i32 %39, 65535
  br i1 %55, label %71, label %57

57:                                               ; preds = %51
  %58 = lshr i32 %39, 5
  %59 = and i32 %58, 127
  %60 = getelementptr i8, ptr %40, i32 2536
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 22016
  %63 = shl nuw nsw i32 %59, 2
  %64 = getelementptr i8, ptr %62, i32 %63
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !23
  %66 = and i32 %39, 31
  %67 = shl nuw i32 1, %66
  %68 = or i32 %65, %67
  %69 = getelementptr i8, ptr %40, i32 2616
  %70 = load ptr, ptr %69, align 4
  tail call void %70(ptr noundef %41, i32 noundef %59, i32 noundef %68) #18
  br label %71

71:                                               ; preds = %57, %51
  %72 = getelementptr i8, ptr %40, i32 1504
  tail call void @_set_bit(i32 noundef %56, ptr noundef %72) #18
  br label %73

73:                                               ; preds = %71, %46
  %74 = add nuw nsw i32 %38, 1
  %75 = tail call i32 @_find_next_bit_le(ptr noundef %33, i32 noundef 4096, i32 noundef %74) #18
  %76 = and i32 %75, 65535
  %77 = icmp ult i32 %76, 4096
  br i1 %77, label %37, label %78

78:                                               ; preds = %73, %32
  tail call fastcc void @e1000_init_manageability_pt(ptr noundef %0)
  %79 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %80 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 18
  %81 = load ptr, ptr %80, align 64
  %82 = getelementptr inbounds %struct.e1000_ring, ptr %81, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.e1000_ring, ptr %81, i32 0, i32 4
  %85 = load i32, ptr %84, align 4
  %86 = shl i32 %85, 4
  %87 = load ptr, ptr %79, align 4
  %88 = getelementptr inbounds %struct.e1000_adapter, ptr %87, i32 0, i32 85
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, 2048
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %110, label %92

92:                                               ; preds = %78
  %93 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr i8, ptr %94, i32 23380
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %97 = and i32 %96, 16777216
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %103, %92
  %100 = phi i32 [ %101, %103 ], [ 2000, %92 ]
  %101 = add nsw i32 %100, -1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 10737400) #18
  %105 = load ptr, ptr %93, align 4
  %106 = getelementptr i8, ptr %105, i32 23380
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %108 = and i32 %107, 16777216
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %99

110:                                              ; preds = %103, %99, %92, %78
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %111 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr i8, ptr %112, i32 14336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %83) #18, !srcloc !12
  %114 = load ptr, ptr %79, align 4
  %115 = getelementptr inbounds %struct.e1000_adapter, ptr %114, i32 0, i32 85
  %116 = load i32, ptr %115, align 4
  %117 = and i32 %116, 2048
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %136, label %119

119:                                              ; preds = %110
  %120 = load ptr, ptr %111, align 4
  %121 = getelementptr i8, ptr %120, i32 23380
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %123 = and i32 %122, 16777216
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %136, label %125

125:                                              ; preds = %129, %119
  %126 = phi i32 [ %127, %129 ], [ 2000, %119 ]
  %127 = add nsw i32 %126, -1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %125
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %130(i32 noundef 10737400) #18
  %131 = load ptr, ptr %111, align 4
  %132 = getelementptr i8, ptr %131, i32 23380
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %134 = and i32 %133, 16777216
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %125

136:                                              ; preds = %129, %125, %119, %110
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %137 = load ptr, ptr %111, align 4
  %138 = getelementptr i8, ptr %137, i32 14340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 0) #18, !srcloc !12
  %139 = load ptr, ptr %79, align 4
  %140 = getelementptr inbounds %struct.e1000_adapter, ptr %139, i32 0, i32 85
  %141 = load i32, ptr %140, align 4
  %142 = and i32 %141, 2048
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %161, label %144

144:                                              ; preds = %136
  %145 = load ptr, ptr %111, align 4
  %146 = getelementptr i8, ptr %145, i32 23380
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %148 = and i32 %147, 16777216
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %161, label %150

150:                                              ; preds = %154, %144
  %151 = phi i32 [ %152, %154 ], [ 2000, %144 ]
  %152 = add nsw i32 %151, -1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %150
  %155 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %155(i32 noundef 10737400) #18
  %156 = load ptr, ptr %111, align 4
  %157 = getelementptr i8, ptr %156, i32 23380
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %159 = and i32 %158, 16777216
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %150

161:                                              ; preds = %154, %150, %144, %136
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %162 = load ptr, ptr %111, align 4
  %163 = getelementptr i8, ptr %162, i32 14344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 %86) #18, !srcloc !12
  %164 = load ptr, ptr %79, align 4
  %165 = getelementptr inbounds %struct.e1000_adapter, ptr %164, i32 0, i32 85
  %166 = load i32, ptr %165, align 4
  %167 = and i32 %166, 2048
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %186, label %169

169:                                              ; preds = %161
  %170 = load ptr, ptr %111, align 4
  %171 = getelementptr i8, ptr %170, i32 23380
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %173 = and i32 %172, 16777216
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %186, label %175

175:                                              ; preds = %179, %169
  %176 = phi i32 [ %177, %179 ], [ 2000, %169 ]
  %177 = add nsw i32 %176, -1
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %186, label %179

179:                                              ; preds = %175
  %180 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %180(i32 noundef 10737400) #18
  %181 = load ptr, ptr %111, align 4
  %182 = getelementptr i8, ptr %181, i32 23380
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %182) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %184 = and i32 %183, 16777216
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %175

186:                                              ; preds = %179, %175, %169, %161
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %187 = load ptr, ptr %111, align 4
  %188 = getelementptr i8, ptr %187, i32 14352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 0) #18, !srcloc !12
  %189 = load ptr, ptr %79, align 4
  %190 = getelementptr inbounds %struct.e1000_adapter, ptr %189, i32 0, i32 85
  %191 = load i32, ptr %190, align 4
  %192 = and i32 %191, 2048
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %211, label %194

194:                                              ; preds = %186
  %195 = load ptr, ptr %111, align 4
  %196 = getelementptr i8, ptr %195, i32 23380
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %196) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %198 = and i32 %197, 16777216
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %211, label %200

200:                                              ; preds = %204, %194
  %201 = phi i32 [ %202, %204 ], [ 2000, %194 ]
  %202 = add nsw i32 %201, -1
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %211, label %204

204:                                              ; preds = %200
  %205 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %205(i32 noundef 10737400) #18
  %206 = load ptr, ptr %111, align 4
  %207 = getelementptr i8, ptr %206, i32 23380
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %207) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %209 = and i32 %208, 16777216
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %200

211:                                              ; preds = %204, %200, %194, %186
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %212 = load ptr, ptr %111, align 4
  %213 = getelementptr i8, ptr %212, i32 14360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 0) #18, !srcloc !12
  %214 = load ptr, ptr %111, align 4
  %215 = getelementptr i8, ptr %214, i32 14352
  %216 = getelementptr inbounds %struct.e1000_ring, ptr %81, i32 0, i32 7
  store ptr %215, ptr %216, align 4
  %217 = load ptr, ptr %111, align 4
  %218 = getelementptr i8, ptr %217, i32 14360
  %219 = getelementptr inbounds %struct.e1000_ring, ptr %81, i32 0, i32 8
  store ptr %218, ptr %219, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !25
  tail call void @arm_heavy_mb() #18
  %220 = load ptr, ptr %216, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 0) #18, !srcloc !12
  %221 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 85
  %222 = load i32, ptr %221, align 4
  %223 = and i32 %222, 2048
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %211
  tail call fastcc void @e1000e_update_tdt_wa(ptr noundef %81, i32 noundef 0) #18
  br label %228

226:                                              ; preds = %211
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !26
  tail call void @arm_heavy_mb() #18
  %227 = load ptr, ptr %219, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %227, i32 0) #18, !srcloc !12
  br label %228

228:                                              ; preds = %226, %225
  %229 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 28
  %230 = load i32, ptr %229, align 4
  %231 = load ptr, ptr %79, align 4
  %232 = getelementptr inbounds %struct.e1000_adapter, ptr %231, i32 0, i32 85
  %233 = load i32, ptr %232, align 4
  %234 = and i32 %233, 2048
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %253, label %236

236:                                              ; preds = %228
  %237 = load ptr, ptr %111, align 4
  %238 = getelementptr i8, ptr %237, i32 23380
  %239 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %238) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %240 = and i32 %239, 16777216
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %253, label %242

242:                                              ; preds = %246, %236
  %243 = phi i32 [ %244, %246 ], [ 2000, %236 ]
  %244 = add nsw i32 %243, -1
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %253, label %246

246:                                              ; preds = %242
  %247 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %247(i32 noundef 10737400) #18
  %248 = load ptr, ptr %111, align 4
  %249 = getelementptr i8, ptr %248, i32 23380
  %250 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %249) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %251 = and i32 %250, 16777216
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %242

253:                                              ; preds = %246, %242, %236, %228
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %254 = load ptr, ptr %111, align 4
  %255 = getelementptr i8, ptr %254, i32 14368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %255, i32 %230) #18, !srcloc !12
  %256 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 29
  %257 = load i32, ptr %256, align 8
  %258 = load ptr, ptr %79, align 4
  %259 = getelementptr inbounds %struct.e1000_adapter, ptr %258, i32 0, i32 85
  %260 = load i32, ptr %259, align 4
  %261 = and i32 %260, 2048
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %280, label %263

263:                                              ; preds = %253
  %264 = load ptr, ptr %111, align 4
  %265 = getelementptr i8, ptr %264, i32 23380
  %266 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %265) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %267 = and i32 %266, 16777216
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %280, label %269

269:                                              ; preds = %273, %263
  %270 = phi i32 [ %271, %273 ], [ 2000, %263 ]
  %271 = add nsw i32 %270, -1
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %280, label %273

273:                                              ; preds = %269
  %274 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %274(i32 noundef 10737400) #18
  %275 = load ptr, ptr %111, align 4
  %276 = getelementptr i8, ptr %275, i32 23380
  %277 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %276) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %278 = and i32 %277, 16777216
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %269

280:                                              ; preds = %273, %269, %263, %253
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %281 = load ptr, ptr %111, align 4
  %282 = getelementptr i8, ptr %281, i32 14380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %282, i32 %257) #18, !srcloc !12
  %283 = load i32, ptr %221, align 4
  %284 = and i32 %283, 64
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %317, label %286

286:                                              ; preds = %280
  %287 = load ptr, ptr %111, align 4
  %288 = getelementptr i8, ptr %287, i32 14376
  %289 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %288) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %290 = and i32 %289, -25116480
  %291 = or i32 %290, 21037343
  %292 = load ptr, ptr %79, align 4
  %293 = getelementptr inbounds %struct.e1000_adapter, ptr %292, i32 0, i32 85
  %294 = load i32, ptr %293, align 4
  %295 = and i32 %294, 2048
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %314, label %297

297:                                              ; preds = %286
  %298 = load ptr, ptr %111, align 4
  %299 = getelementptr i8, ptr %298, i32 23380
  %300 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %299) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %301 = and i32 %300, 16777216
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %314, label %303

303:                                              ; preds = %307, %297
  %304 = phi i32 [ %305, %307 ], [ 2000, %297 ]
  %305 = add nsw i32 %304, -1
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %314, label %307

307:                                              ; preds = %303
  %308 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %308(i32 noundef 10737400) #18
  %309 = load ptr, ptr %111, align 4
  %310 = getelementptr i8, ptr %309, i32 23380
  %311 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %310) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %312 = and i32 %311, 16777216
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %303

314:                                              ; preds = %307, %303, %297, %286
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %315 = load ptr, ptr %111, align 4
  %316 = getelementptr i8, ptr %315, i32 14376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %316, i32 %291) #18, !srcloc !12
  br label %317

317:                                              ; preds = %314, %280
  %318 = load ptr, ptr %111, align 4
  %319 = getelementptr i8, ptr %318, i32 14376
  %320 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %319) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %321 = load ptr, ptr %79, align 4
  %322 = getelementptr inbounds %struct.e1000_adapter, ptr %321, i32 0, i32 85
  %323 = load i32, ptr %322, align 4
  %324 = and i32 %323, 2048
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %343, label %326

326:                                              ; preds = %317
  %327 = load ptr, ptr %111, align 4
  %328 = getelementptr i8, ptr %327, i32 23380
  %329 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %328) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %330 = and i32 %329, 16777216
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %343, label %332

332:                                              ; preds = %336, %326
  %333 = phi i32 [ %334, %336 ], [ 2000, %326 ]
  %334 = add nsw i32 %333, -1
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %343, label %336

336:                                              ; preds = %332
  %337 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %337(i32 noundef 10737400) #18
  %338 = load ptr, ptr %111, align 4
  %339 = getelementptr i8, ptr %338, i32 23380
  %340 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %339) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %341 = and i32 %340, 16777216
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %332

343:                                              ; preds = %336, %332, %326, %317
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %344 = load ptr, ptr %111, align 4
  %345 = getelementptr i8, ptr %344, i32 14632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %345, i32 %320) #18, !srcloc !12
  %346 = load ptr, ptr %111, align 4
  %347 = getelementptr i8, ptr %346, i32 1024
  %348 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %347) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %349 = and i32 %348, -16781305
  %350 = or i32 %349, 16777464
  %351 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 84
  %352 = load i32, ptr %351, align 8
  %353 = and i32 %352, 4194304
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %386, label %355

355:                                              ; preds = %343
  %356 = load ptr, ptr %111, align 4
  %357 = getelementptr i8, ptr %356, i32 14400
  %358 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %357) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %359 = or i32 %358, 2097152
  %360 = load ptr, ptr %79, align 4
  %361 = getelementptr inbounds %struct.e1000_adapter, ptr %360, i32 0, i32 85
  %362 = load i32, ptr %361, align 4
  %363 = and i32 %362, 2048
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %382, label %365

365:                                              ; preds = %355
  %366 = load ptr, ptr %111, align 4
  %367 = getelementptr i8, ptr %366, i32 23380
  %368 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %367) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %369 = and i32 %368, 16777216
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %382, label %371

371:                                              ; preds = %375, %365
  %372 = phi i32 [ %373, %375 ], [ 2000, %365 ]
  %373 = add nsw i32 %372, -1
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %382, label %375

375:                                              ; preds = %371
  %376 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %376(i32 noundef 10737400) #18
  %377 = load ptr, ptr %111, align 4
  %378 = getelementptr i8, ptr %377, i32 23380
  %379 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %378) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %380 = and i32 %379, 16777216
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %371

382:                                              ; preds = %375, %371, %365, %355
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %383 = load ptr, ptr %111, align 4
  %384 = getelementptr i8, ptr %383, i32 14400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %384, i32 %359) #18, !srcloc !12
  %385 = load i32, ptr %351, align 8
  br label %386

386:                                              ; preds = %382, %343
  %387 = phi i32 [ %385, %382 ], [ %352, %343 ]
  %388 = and i32 %387, 8388608
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %449, label %390

390:                                              ; preds = %386
  %391 = load ptr, ptr %111, align 4
  %392 = getelementptr i8, ptr %391, i32 14400
  %393 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %392) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %394 = or i32 %393, 1
  %395 = load ptr, ptr %79, align 4
  %396 = getelementptr inbounds %struct.e1000_adapter, ptr %395, i32 0, i32 85
  %397 = load i32, ptr %396, align 4
  %398 = and i32 %397, 2048
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %417, label %400

400:                                              ; preds = %390
  %401 = load ptr, ptr %111, align 4
  %402 = getelementptr i8, ptr %401, i32 23380
  %403 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %402) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %404 = and i32 %403, 16777216
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %417, label %406

406:                                              ; preds = %410, %400
  %407 = phi i32 [ %408, %410 ], [ 2000, %400 ]
  %408 = add nsw i32 %407, -1
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %417, label %410

410:                                              ; preds = %406
  %411 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %411(i32 noundef 10737400) #18
  %412 = load ptr, ptr %111, align 4
  %413 = getelementptr i8, ptr %412, i32 23380
  %414 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %413) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %415 = and i32 %414, 16777216
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %406

417:                                              ; preds = %410, %406, %400, %390
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %418 = load ptr, ptr %111, align 4
  %419 = getelementptr i8, ptr %418, i32 14400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %419, i32 %394) #18, !srcloc !12
  %420 = load ptr, ptr %111, align 4
  %421 = getelementptr i8, ptr %420, i32 14656
  %422 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %421) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %423 = or i32 %422, 1
  %424 = load ptr, ptr %79, align 4
  %425 = getelementptr inbounds %struct.e1000_adapter, ptr %424, i32 0, i32 85
  %426 = load i32, ptr %425, align 4
  %427 = and i32 %426, 2048
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %446, label %429

429:                                              ; preds = %417
  %430 = load ptr, ptr %111, align 4
  %431 = getelementptr i8, ptr %430, i32 23380
  %432 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %431) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %433 = and i32 %432, 16777216
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %446, label %435

435:                                              ; preds = %439, %429
  %436 = phi i32 [ %437, %439 ], [ 2000, %429 ]
  %437 = add nsw i32 %436, -1
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %446, label %439

439:                                              ; preds = %435
  %440 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %440(i32 noundef 10737400) #18
  %441 = load ptr, ptr %111, align 4
  %442 = getelementptr i8, ptr %441, i32 23380
  %443 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %442) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %444 = and i32 %443, 16777216
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %435

446:                                              ; preds = %439, %435, %429, %417
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %447 = load ptr, ptr %111, align 4
  %448 = getelementptr i8, ptr %447, i32 14656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %448, i32 %423) #18, !srcloc !12
  br label %449

449:                                              ; preds = %446, %386
  %450 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 24
  %451 = load i32, ptr %229, align 4
  %452 = icmp eq i32 %451, 0
  %453 = select i1 %452, i32 184549376, i32 -1962934272
  store i32 %453, ptr %450, align 4
  %454 = load ptr, ptr %79, align 4
  %455 = getelementptr inbounds %struct.e1000_adapter, ptr %454, i32 0, i32 85
  %456 = load i32, ptr %455, align 4
  %457 = and i32 %456, 2048
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %476, label %459

459:                                              ; preds = %449
  %460 = load ptr, ptr %111, align 4
  %461 = getelementptr i8, ptr %460, i32 23380
  %462 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %461) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %463 = and i32 %462, 16777216
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %476, label %465

465:                                              ; preds = %469, %459
  %466 = phi i32 [ %467, %469 ], [ 2000, %459 ]
  %467 = add nsw i32 %466, -1
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %476, label %469

469:                                              ; preds = %465
  %470 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %470(i32 noundef 10737400) #18
  %471 = load ptr, ptr %111, align 4
  %472 = getelementptr i8, ptr %471, i32 23380
  %473 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %472) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %474 = and i32 %473, 16777216
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %465

476:                                              ; preds = %469, %465, %459, %449
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %477 = load ptr, ptr %111, align 4
  %478 = getelementptr i8, ptr %477, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %478, i32 %350) #18, !srcloc !12
  %479 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 0, i32 19
  %480 = load ptr, ptr %479, align 4
  tail call void %480(ptr noundef %79) #18
  %481 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 3
  %482 = load i32, ptr %481, align 4
  %483 = icmp eq i32 %482, 12
  br i1 %483, label %484, label %544

484:                                              ; preds = %476
  %485 = load ptr, ptr %111, align 4
  %486 = getelementptr i8, ptr %485, i32 3880
  %487 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %486) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %488 = or i32 %487, 65536
  %489 = load ptr, ptr %79, align 4
  %490 = getelementptr inbounds %struct.e1000_adapter, ptr %489, i32 0, i32 85
  %491 = load i32, ptr %490, align 4
  %492 = and i32 %491, 2048
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %511, label %494

494:                                              ; preds = %484
  %495 = load ptr, ptr %111, align 4
  %496 = getelementptr i8, ptr %495, i32 23380
  %497 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %496) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %498 = and i32 %497, 16777216
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %511, label %500

500:                                              ; preds = %504, %494
  %501 = phi i32 [ %502, %504 ], [ 2000, %494 ]
  %502 = add nsw i32 %501, -1
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %511, label %504

504:                                              ; preds = %500
  %505 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %505(i32 noundef 10737400) #18
  %506 = load ptr, ptr %111, align 4
  %507 = getelementptr i8, ptr %506, i32 23380
  %508 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %507) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %509 = and i32 %508, 16777216
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %511, label %500

511:                                              ; preds = %504, %500, %494, %484
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %512 = load ptr, ptr %111, align 4
  %513 = getelementptr i8, ptr %512, i32 3880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %513, i32 %488) #18, !srcloc !12
  %514 = load ptr, ptr %111, align 4
  %515 = getelementptr i8, ptr %514, i32 14400
  %516 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %515) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %517 = and i32 %516, -805306369
  %518 = or i32 %517, 536870912
  %519 = load ptr, ptr %79, align 4
  %520 = getelementptr inbounds %struct.e1000_adapter, ptr %519, i32 0, i32 85
  %521 = load i32, ptr %520, align 4
  %522 = and i32 %521, 2048
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %541, label %524

524:                                              ; preds = %511
  %525 = load ptr, ptr %111, align 4
  %526 = getelementptr i8, ptr %525, i32 23380
  %527 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %526) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %528 = and i32 %527, 16777216
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %541, label %530

530:                                              ; preds = %534, %524
  %531 = phi i32 [ %532, %534 ], [ 2000, %524 ]
  %532 = add nsw i32 %531, -1
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %541, label %534

534:                                              ; preds = %530
  %535 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %535(i32 noundef 10737400) #18
  %536 = load ptr, ptr %111, align 4
  %537 = getelementptr i8, ptr %536, i32 23380
  %538 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %537) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %539 = and i32 %538, 16777216
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %541, label %530

541:                                              ; preds = %534, %530, %524, %511
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %542 = load ptr, ptr %111, align 4
  %543 = getelementptr i8, ptr %542, i32 14400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %543, i32 %518) #18, !srcloc !12
  br label %544

544:                                              ; preds = %541, %476
  %545 = load ptr, ptr %5, align 4
  %546 = getelementptr inbounds %struct.net_device, ptr %545, i32 0, i32 23
  %547 = load i64, ptr %546, align 16
  %548 = and i64 %547, 549755813888
  %549 = icmp eq i64 %548, 0
  br i1 %549, label %670, label %550

550:                                              ; preds = %544
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %2, i8 0, i32 40, i1 false) #18, !annotation !19
  call void @netdev_rss_key_fill(ptr noundef nonnull %2, i32 noundef 40) #18
  br label %551

551:                                              ; preds = %579, %550
  %552 = phi i32 [ 0, %550 ], [ %582, %579 ]
  %553 = shl i32 %552, 2
  %554 = add nuw nsw i32 %553, 23680
  %555 = getelementptr [10 x i32], ptr %2, i32 0, i32 %552
  %556 = load i32, ptr %555, align 4
  %557 = load ptr, ptr %79, align 4
  %558 = getelementptr inbounds %struct.e1000_adapter, ptr %557, i32 0, i32 85
  %559 = load i32, ptr %558, align 4
  %560 = and i32 %559, 2048
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %579, label %562

562:                                              ; preds = %551
  %563 = load ptr, ptr %111, align 4
  %564 = getelementptr i8, ptr %563, i32 23380
  %565 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %564) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %566 = and i32 %565, 16777216
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %579, label %568

568:                                              ; preds = %572, %562
  %569 = phi i32 [ %570, %572 ], [ 2000, %562 ]
  %570 = add nsw i32 %569, -1
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %579, label %572

572:                                              ; preds = %568
  %573 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %573(i32 noundef 10737400) #18
  %574 = load ptr, ptr %111, align 4
  %575 = getelementptr i8, ptr %574, i32 23380
  %576 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %575) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %577 = and i32 %576, 16777216
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %579, label %568

579:                                              ; preds = %572, %568, %562, %551
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %580 = load ptr, ptr %111, align 4
  %581 = getelementptr i8, ptr %580, i32 %554
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %581, i32 %556) #18, !srcloc !12
  %582 = add nuw nsw i32 %552, 1
  %583 = icmp eq i32 %582, 10
  br i1 %583, label %584, label %551

584:                                              ; preds = %610, %579
  %585 = phi i32 [ %613, %610 ], [ 0, %579 ]
  %586 = shl i32 %585, 2
  %587 = add nuw nsw i32 %586, 23552
  %588 = load ptr, ptr %79, align 4
  %589 = getelementptr inbounds %struct.e1000_adapter, ptr %588, i32 0, i32 85
  %590 = load i32, ptr %589, align 4
  %591 = and i32 %590, 2048
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %610, label %593

593:                                              ; preds = %584
  %594 = load ptr, ptr %111, align 4
  %595 = getelementptr i8, ptr %594, i32 23380
  %596 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %595) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %597 = and i32 %596, 16777216
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %610, label %599

599:                                              ; preds = %603, %593
  %600 = phi i32 [ %601, %603 ], [ 2000, %593 ]
  %601 = add nsw i32 %600, -1
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %610, label %603

603:                                              ; preds = %599
  %604 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %604(i32 noundef 10737400) #18
  %605 = load ptr, ptr %111, align 4
  %606 = getelementptr i8, ptr %605, i32 23380
  %607 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %606) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %608 = and i32 %607, 16777216
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %610, label %599

610:                                              ; preds = %603, %599, %593, %584
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %611 = load ptr, ptr %111, align 4
  %612 = getelementptr i8, ptr %611, i32 %587
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %612, i32 0) #18, !srcloc !12
  %613 = add nuw nsw i32 %585, 1
  %614 = icmp eq i32 %613, 32
  br i1 %614, label %615, label %584

615:                                              ; preds = %610
  %616 = load ptr, ptr %111, align 4
  %617 = getelementptr i8, ptr %616, i32 20480
  %618 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %617) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %619 = or i32 %618, 8192
  %620 = load ptr, ptr %79, align 4
  %621 = getelementptr inbounds %struct.e1000_adapter, ptr %620, i32 0, i32 85
  %622 = load i32, ptr %621, align 4
  %623 = and i32 %622, 2048
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %642, label %625

625:                                              ; preds = %615
  %626 = load ptr, ptr %111, align 4
  %627 = getelementptr i8, ptr %626, i32 23380
  %628 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %627) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %629 = and i32 %628, 16777216
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %642, label %631

631:                                              ; preds = %635, %625
  %632 = phi i32 [ %633, %635 ], [ 2000, %625 ]
  %633 = add nsw i32 %632, -1
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %642, label %635

635:                                              ; preds = %631
  %636 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %636(i32 noundef 10737400) #18
  %637 = load ptr, ptr %111, align 4
  %638 = getelementptr i8, ptr %637, i32 23380
  %639 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %638) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %640 = and i32 %639, 16777216
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %642, label %631

642:                                              ; preds = %635, %631, %625, %615
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %643 = load ptr, ptr %111, align 4
  %644 = getelementptr i8, ptr %643, i32 20480
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %644, i32 %619) #18, !srcloc !12
  %645 = load ptr, ptr %79, align 4
  %646 = getelementptr inbounds %struct.e1000_adapter, ptr %645, i32 0, i32 85
  %647 = load i32, ptr %646, align 4
  %648 = and i32 %647, 2048
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %667, label %650

650:                                              ; preds = %642
  %651 = load ptr, ptr %111, align 4
  %652 = getelementptr i8, ptr %651, i32 23380
  %653 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %652) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %654 = and i32 %653, 16777216
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %667, label %656

656:                                              ; preds = %660, %650
  %657 = phi i32 [ %658, %660 ], [ 2000, %650 ]
  %658 = add nsw i32 %657, -1
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %667, label %660

660:                                              ; preds = %656
  %661 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %661(i32 noundef 10737400) #18
  %662 = load ptr, ptr %111, align 4
  %663 = getelementptr i8, ptr %662, i32 23380
  %664 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %663) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %665 = and i32 %664, 16777216
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %667, label %656

667:                                              ; preds = %660, %656, %650, %642
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %668 = load ptr, ptr %111, align 4
  %669 = getelementptr i8, ptr %668, i32 22552
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %669, i32 3604480) #18, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #18
  br label %670

670:                                              ; preds = %667, %544
  call fastcc void @e1000_setup_rctl(ptr noundef %0)
  %671 = load ptr, ptr %3, align 8
  %672 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 59
  %673 = load i32, ptr %672, align 4
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %680, label %675

675:                                              ; preds = %670
  %676 = getelementptr inbounds %struct.e1000_ring, ptr %671, i32 0, i32 4
  %677 = load i32, ptr %676, align 4
  %678 = shl i32 %677, 5
  %679 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 46
  store ptr @e1000_clean_rx_irq_ps, ptr %679, align 64
  br label %691

680:                                              ; preds = %670
  %681 = load ptr, ptr %5, align 4
  %682 = getelementptr inbounds %struct.net_device, ptr %681, i32 0, i32 20
  %683 = load i32, ptr %682, align 4
  %684 = icmp ugt i32 %683, 1518
  %685 = getelementptr inbounds %struct.e1000_ring, ptr %671, i32 0, i32 4
  %686 = load i32, ptr %685, align 4
  %687 = shl i32 %686, 4
  %688 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 46
  br i1 %684, label %689, label %690

689:                                              ; preds = %680
  store ptr @e1000_clean_jumbo_rx_irq, ptr %688, align 64
  br label %691

690:                                              ; preds = %680
  store ptr @e1000_clean_rx_irq, ptr %688, align 64
  br label %691

691:                                              ; preds = %690, %689, %675
  %692 = phi ptr [ @e1000_alloc_jumbo_rx_buffers, %689 ], [ @e1000_alloc_rx_buffers, %690 ], [ @e1000_alloc_rx_buffers_ps, %675 ]
  %693 = phi i32 [ %687, %689 ], [ %687, %690 ], [ %678, %675 ]
  %694 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 47
  store ptr %692, ptr %694, align 4
  %695 = load ptr, ptr %111, align 4
  %696 = getelementptr i8, ptr %695, i32 256
  %697 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %696) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %698 = load i32, ptr %221, align 4
  %699 = and i32 %698, 1024
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %701, label %728

701:                                              ; preds = %691
  %702 = and i32 %697, -3
  %703 = load ptr, ptr %79, align 4
  %704 = getelementptr inbounds %struct.e1000_adapter, ptr %703, i32 0, i32 85
  %705 = load i32, ptr %704, align 4
  %706 = and i32 %705, 2048
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %725, label %708

708:                                              ; preds = %701
  %709 = load ptr, ptr %111, align 4
  %710 = getelementptr i8, ptr %709, i32 23380
  %711 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %710) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %712 = and i32 %711, 16777216
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %725, label %714

714:                                              ; preds = %718, %708
  %715 = phi i32 [ %716, %718 ], [ 2000, %708 ]
  %716 = add nsw i32 %715, -1
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %725, label %718

718:                                              ; preds = %714
  %719 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %719(i32 noundef 10737400) #18
  %720 = load ptr, ptr %111, align 4
  %721 = getelementptr i8, ptr %720, i32 23380
  %722 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %721) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %723 = and i32 %722, 16777216
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %725, label %714

725:                                              ; preds = %718, %714, %708, %701
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %726 = load ptr, ptr %111, align 4
  %727 = getelementptr i8, ptr %726, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %727, i32 %702) #18, !srcloc !12
  br label %728

728:                                              ; preds = %725, %691
  %729 = load ptr, ptr %111, align 4
  %730 = getelementptr i8, ptr %729, i32 8
  %731 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %730) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #18
  %732 = load i32, ptr %221, align 4
  %733 = and i32 %732, 64
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %786, label %735

735:                                              ; preds = %728
  %736 = load ptr, ptr %79, align 4
  %737 = getelementptr inbounds %struct.e1000_adapter, ptr %736, i32 0, i32 85
  %738 = load i32, ptr %737, align 4
  %739 = and i32 %738, 2048
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %758, label %741

741:                                              ; preds = %735
  %742 = load ptr, ptr %111, align 4
  %743 = getelementptr i8, ptr %742, i32 23380
  %744 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %743) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %745 = and i32 %744, 16777216
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %758, label %747

747:                                              ; preds = %751, %741
  %748 = phi i32 [ %749, %751 ], [ 2000, %741 ]
  %749 = add nsw i32 %748, -1
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %758, label %751

751:                                              ; preds = %747
  %752 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %752(i32 noundef 10737400) #18
  %753 = load ptr, ptr %111, align 4
  %754 = getelementptr i8, ptr %753, i32 23380
  %755 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %754) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %756 = and i32 %755, 16777216
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %758, label %747

758:                                              ; preds = %751, %747, %741, %735
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %759 = load ptr, ptr %111, align 4
  %760 = getelementptr i8, ptr %759, i32 10280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %760, i32 17040416) #18, !srcloc !12
  %761 = load ptr, ptr %79, align 4
  %762 = getelementptr inbounds %struct.e1000_adapter, ptr %761, i32 0, i32 85
  %763 = load i32, ptr %762, align 4
  %764 = and i32 %763, 2048
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %783, label %766

766:                                              ; preds = %758
  %767 = load ptr, ptr %111, align 4
  %768 = getelementptr i8, ptr %767, i32 23380
  %769 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %768) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %770 = and i32 %769, 16777216
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %783, label %772

772:                                              ; preds = %776, %766
  %773 = phi i32 [ %774, %776 ], [ 2000, %766 ]
  %774 = add nsw i32 %773, -1
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %783, label %776

776:                                              ; preds = %772
  %777 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %777(i32 noundef 10737400) #18
  %778 = load ptr, ptr %111, align 4
  %779 = getelementptr i8, ptr %778, i32 23380
  %780 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %779) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %781 = and i32 %780, 16777216
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %783, label %772

783:                                              ; preds = %776, %772, %766, %758
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %784 = load ptr, ptr %111, align 4
  %785 = getelementptr i8, ptr %784, i32 10536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %785, i32 17040416) #18, !srcloc !12
  br label %786

786:                                              ; preds = %783, %728
  %787 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 49
  %788 = load i32, ptr %787, align 4
  %789 = load ptr, ptr %79, align 4
  %790 = getelementptr inbounds %struct.e1000_adapter, ptr %789, i32 0, i32 85
  %791 = load i32, ptr %790, align 4
  %792 = and i32 %791, 2048
  %793 = icmp eq i32 %792, 0
  br i1 %793, label %811, label %794

794:                                              ; preds = %786
  %795 = load ptr, ptr %111, align 4
  %796 = getelementptr i8, ptr %795, i32 23380
  %797 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %796) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %798 = and i32 %797, 16777216
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %811, label %800

800:                                              ; preds = %804, %794
  %801 = phi i32 [ %802, %804 ], [ 2000, %794 ]
  %802 = add nsw i32 %801, -1
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %811, label %804

804:                                              ; preds = %800
  %805 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %805(i32 noundef 10737400) #18
  %806 = load ptr, ptr %111, align 4
  %807 = getelementptr i8, ptr %806, i32 23380
  %808 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %807) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %809 = and i32 %808, 16777216
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %811, label %800

811:                                              ; preds = %804, %800, %794, %786
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %812 = load ptr, ptr %111, align 4
  %813 = getelementptr i8, ptr %812, i32 10272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %813, i32 %788) #18, !srcloc !12
  %814 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 50
  %815 = load i32, ptr %814, align 16
  %816 = load ptr, ptr %79, align 4
  %817 = getelementptr inbounds %struct.e1000_adapter, ptr %816, i32 0, i32 85
  %818 = load i32, ptr %817, align 4
  %819 = and i32 %818, 2048
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %838, label %821

821:                                              ; preds = %811
  %822 = load ptr, ptr %111, align 4
  %823 = getelementptr i8, ptr %822, i32 23380
  %824 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %823) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %825 = and i32 %824, 16777216
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %838, label %827

827:                                              ; preds = %831, %821
  %828 = phi i32 [ %829, %831 ], [ 2000, %821 ]
  %829 = add nsw i32 %828, -1
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %838, label %831

831:                                              ; preds = %827
  %832 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %832(i32 noundef 10737400) #18
  %833 = load ptr, ptr %111, align 4
  %834 = getelementptr i8, ptr %833, i32 23380
  %835 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %834) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %836 = and i32 %835, 16777216
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %838, label %827

838:                                              ; preds = %831, %827, %821, %811
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %839 = load ptr, ptr %111, align 4
  %840 = getelementptr i8, ptr %839, i32 10284
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %840, i32 %815) #18, !srcloc !12
  %841 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 15
  %842 = load i32, ptr %841, align 8
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %849, label %844

844:                                              ; preds = %838
  %845 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 14
  %846 = load i32, ptr %845, align 4
  %847 = icmp eq i32 %846, 0
  br i1 %847, label %849, label %848

848:                                              ; preds = %844
  call void @e1000e_write_itr(ptr noundef %0, i32 noundef %846) #18
  br label %849

849:                                              ; preds = %848, %844, %838
  %850 = load ptr, ptr %111, align 4
  %851 = getelementptr i8, ptr %850, i32 24
  %852 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %851) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %853 = or i32 %852, 134217728
  %854 = load ptr, ptr %79, align 4
  %855 = getelementptr inbounds %struct.e1000_adapter, ptr %854, i32 0, i32 85
  %856 = load i32, ptr %855, align 4
  %857 = and i32 %856, 2048
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %876, label %859

859:                                              ; preds = %849
  %860 = load ptr, ptr %111, align 4
  %861 = getelementptr i8, ptr %860, i32 23380
  %862 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %861) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %863 = and i32 %862, 16777216
  %864 = icmp eq i32 %863, 0
  br i1 %864, label %876, label %865

865:                                              ; preds = %869, %859
  %866 = phi i32 [ %867, %869 ], [ 2000, %859 ]
  %867 = add nsw i32 %866, -1
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %876, label %869

869:                                              ; preds = %865
  %870 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %870(i32 noundef 10737400) #18
  %871 = load ptr, ptr %111, align 4
  %872 = getelementptr i8, ptr %871, i32 23380
  %873 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %872) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %874 = and i32 %873, 16777216
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %876, label %865

876:                                              ; preds = %869, %865, %859, %849
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %877 = load ptr, ptr %111, align 4
  %878 = getelementptr i8, ptr %877, i32 224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %878, i32 -1) #18, !srcloc !12
  %879 = load ptr, ptr %79, align 4
  %880 = getelementptr inbounds %struct.e1000_adapter, ptr %879, i32 0, i32 85
  %881 = load i32, ptr %880, align 4
  %882 = and i32 %881, 2048
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %901, label %884

884:                                              ; preds = %876
  %885 = load ptr, ptr %111, align 4
  %886 = getelementptr i8, ptr %885, i32 23380
  %887 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %886) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %888 = and i32 %887, 16777216
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %901, label %890

890:                                              ; preds = %894, %884
  %891 = phi i32 [ %892, %894 ], [ 2000, %884 ]
  %892 = add nsw i32 %891, -1
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %901, label %894

894:                                              ; preds = %890
  %895 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %895(i32 noundef 10737400) #18
  %896 = load ptr, ptr %111, align 4
  %897 = getelementptr i8, ptr %896, i32 23380
  %898 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %897) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %899 = and i32 %898, 16777216
  %900 = icmp eq i32 %899, 0
  br i1 %900, label %901, label %890

901:                                              ; preds = %894, %890, %884, %876
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %902 = load ptr, ptr %111, align 4
  %903 = getelementptr i8, ptr %902, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %903, i32 %853) #18, !srcloc !12
  %904 = load ptr, ptr %111, align 4
  %905 = getelementptr i8, ptr %904, i32 8
  %906 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %905) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %907 = getelementptr inbounds %struct.e1000_ring, ptr %671, i32 0, i32 2
  %908 = load i32, ptr %907, align 4
  %909 = load ptr, ptr %79, align 4
  %910 = getelementptr inbounds %struct.e1000_adapter, ptr %909, i32 0, i32 85
  %911 = load i32, ptr %910, align 4
  %912 = and i32 %911, 2048
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %931, label %914

914:                                              ; preds = %901
  %915 = load ptr, ptr %111, align 4
  %916 = getelementptr i8, ptr %915, i32 23380
  %917 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %916) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %918 = and i32 %917, 16777216
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %931, label %920

920:                                              ; preds = %924, %914
  %921 = phi i32 [ %922, %924 ], [ 2000, %914 ]
  %922 = add nsw i32 %921, -1
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %931, label %924

924:                                              ; preds = %920
  %925 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %925(i32 noundef 10737400) #18
  %926 = load ptr, ptr %111, align 4
  %927 = getelementptr i8, ptr %926, i32 23380
  %928 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %927) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %929 = and i32 %928, 16777216
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %931, label %920

931:                                              ; preds = %924, %920, %914, %901
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %932 = load ptr, ptr %111, align 4
  %933 = getelementptr i8, ptr %932, i32 10240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %933, i32 %908) #18, !srcloc !12
  %934 = load ptr, ptr %79, align 4
  %935 = getelementptr inbounds %struct.e1000_adapter, ptr %934, i32 0, i32 85
  %936 = load i32, ptr %935, align 4
  %937 = and i32 %936, 2048
  %938 = icmp eq i32 %937, 0
  br i1 %938, label %956, label %939

939:                                              ; preds = %931
  %940 = load ptr, ptr %111, align 4
  %941 = getelementptr i8, ptr %940, i32 23380
  %942 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %941) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %943 = and i32 %942, 16777216
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %956, label %945

945:                                              ; preds = %949, %939
  %946 = phi i32 [ %947, %949 ], [ 2000, %939 ]
  %947 = add nsw i32 %946, -1
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %956, label %949

949:                                              ; preds = %945
  %950 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %950(i32 noundef 10737400) #18
  %951 = load ptr, ptr %111, align 4
  %952 = getelementptr i8, ptr %951, i32 23380
  %953 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %952) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %954 = and i32 %953, 16777216
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %956, label %945

956:                                              ; preds = %949, %945, %939, %931
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %957 = load ptr, ptr %111, align 4
  %958 = getelementptr i8, ptr %957, i32 10244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %958, i32 0) #18, !srcloc !12
  %959 = load ptr, ptr %79, align 4
  %960 = getelementptr inbounds %struct.e1000_adapter, ptr %959, i32 0, i32 85
  %961 = load i32, ptr %960, align 4
  %962 = and i32 %961, 2048
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %981, label %964

964:                                              ; preds = %956
  %965 = load ptr, ptr %111, align 4
  %966 = getelementptr i8, ptr %965, i32 23380
  %967 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %966) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %968 = and i32 %967, 16777216
  %969 = icmp eq i32 %968, 0
  br i1 %969, label %981, label %970

970:                                              ; preds = %974, %964
  %971 = phi i32 [ %972, %974 ], [ 2000, %964 ]
  %972 = add nsw i32 %971, -1
  %973 = icmp eq i32 %972, 0
  br i1 %973, label %981, label %974

974:                                              ; preds = %970
  %975 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %975(i32 noundef 10737400) #18
  %976 = load ptr, ptr %111, align 4
  %977 = getelementptr i8, ptr %976, i32 23380
  %978 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %977) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %979 = and i32 %978, 16777216
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %981, label %970

981:                                              ; preds = %974, %970, %964, %956
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %982 = load ptr, ptr %111, align 4
  %983 = getelementptr i8, ptr %982, i32 10248
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %983, i32 %693) #18, !srcloc !12
  %984 = load ptr, ptr %79, align 4
  %985 = getelementptr inbounds %struct.e1000_adapter, ptr %984, i32 0, i32 85
  %986 = load i32, ptr %985, align 4
  %987 = and i32 %986, 2048
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %1006, label %989

989:                                              ; preds = %981
  %990 = load ptr, ptr %111, align 4
  %991 = getelementptr i8, ptr %990, i32 23380
  %992 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %991) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %993 = and i32 %992, 16777216
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %1006, label %995

995:                                              ; preds = %999, %989
  %996 = phi i32 [ %997, %999 ], [ 2000, %989 ]
  %997 = add nsw i32 %996, -1
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %1006, label %999

999:                                              ; preds = %995
  %1000 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1000(i32 noundef 10737400) #18
  %1001 = load ptr, ptr %111, align 4
  %1002 = getelementptr i8, ptr %1001, i32 23380
  %1003 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1002) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %1004 = and i32 %1003, 16777216
  %1005 = icmp eq i32 %1004, 0
  br i1 %1005, label %1006, label %995

1006:                                             ; preds = %999, %995, %989, %981
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %1007 = load ptr, ptr %111, align 4
  %1008 = getelementptr i8, ptr %1007, i32 10256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1008, i32 0) #18, !srcloc !12
  %1009 = load ptr, ptr %79, align 4
  %1010 = getelementptr inbounds %struct.e1000_adapter, ptr %1009, i32 0, i32 85
  %1011 = load i32, ptr %1010, align 4
  %1012 = and i32 %1011, 2048
  %1013 = icmp eq i32 %1012, 0
  br i1 %1013, label %1031, label %1014

1014:                                             ; preds = %1006
  %1015 = load ptr, ptr %111, align 4
  %1016 = getelementptr i8, ptr %1015, i32 23380
  %1017 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1016) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %1018 = and i32 %1017, 16777216
  %1019 = icmp eq i32 %1018, 0
  br i1 %1019, label %1031, label %1020

1020:                                             ; preds = %1024, %1014
  %1021 = phi i32 [ %1022, %1024 ], [ 2000, %1014 ]
  %1022 = add nsw i32 %1021, -1
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1031, label %1024

1024:                                             ; preds = %1020
  %1025 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1025(i32 noundef 10737400) #18
  %1026 = load ptr, ptr %111, align 4
  %1027 = getelementptr i8, ptr %1026, i32 23380
  %1028 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1027) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %1029 = and i32 %1028, 16777216
  %1030 = icmp eq i32 %1029, 0
  br i1 %1030, label %1031, label %1020

1031:                                             ; preds = %1024, %1020, %1014, %1006
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %1032 = load ptr, ptr %111, align 4
  %1033 = getelementptr i8, ptr %1032, i32 10264
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1033, i32 0) #18, !srcloc !12
  %1034 = load ptr, ptr %111, align 4
  %1035 = getelementptr i8, ptr %1034, i32 10256
  %1036 = getelementptr inbounds %struct.e1000_ring, ptr %671, i32 0, i32 7
  store ptr %1035, ptr %1036, align 4
  %1037 = load ptr, ptr %111, align 4
  %1038 = getelementptr i8, ptr %1037, i32 10264
  %1039 = getelementptr inbounds %struct.e1000_ring, ptr %671, i32 0, i32 8
  store ptr %1038, ptr %1039, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !27
  call void @arm_heavy_mb() #18
  %1040 = load ptr, ptr %1036, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1040, i32 0) #18, !srcloc !12
  %1041 = load i32, ptr %221, align 4
  %1042 = and i32 %1041, 2048
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1045, label %1044

1044:                                             ; preds = %1031
  call fastcc void @e1000e_update_rdt_wa(ptr noundef %671, i32 noundef 0) #18
  br label %1047

1045:                                             ; preds = %1031
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !28
  call void @arm_heavy_mb() #18
  %1046 = load ptr, ptr %1039, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1046, i32 0) #18, !srcloc !12
  br label %1047

1047:                                             ; preds = %1045, %1044
  %1048 = load ptr, ptr %111, align 4
  %1049 = getelementptr i8, ptr %1048, i32 20480
  %1050 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1049) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %1051 = load ptr, ptr %5, align 4
  %1052 = getelementptr inbounds %struct.net_device, ptr %1051, i32 0, i32 23
  %1053 = load i64, ptr %1052, align 16
  %1054 = and i32 %1050, -513
  %1055 = lshr i64 %1053, 31
  %1056 = trunc i64 %1055 to i32
  %1057 = and i32 %1056, 512
  %1058 = or i32 %1057, %1054
  %1059 = load ptr, ptr %79, align 4
  %1060 = getelementptr inbounds %struct.e1000_adapter, ptr %1059, i32 0, i32 85
  %1061 = load i32, ptr %1060, align 4
  %1062 = and i32 %1061, 2048
  %1063 = icmp eq i32 %1062, 0
  br i1 %1063, label %1081, label %1064

1064:                                             ; preds = %1047
  %1065 = load ptr, ptr %111, align 4
  %1066 = getelementptr i8, ptr %1065, i32 23380
  %1067 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1066) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %1068 = and i32 %1067, 16777216
  %1069 = icmp eq i32 %1068, 0
  br i1 %1069, label %1081, label %1070

1070:                                             ; preds = %1074, %1064
  %1071 = phi i32 [ %1072, %1074 ], [ 2000, %1064 ]
  %1072 = add nsw i32 %1071, -1
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %1081, label %1074

1074:                                             ; preds = %1070
  %1075 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1075(i32 noundef 10737400) #18
  %1076 = load ptr, ptr %111, align 4
  %1077 = getelementptr i8, ptr %1076, i32 23380
  %1078 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1077) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %1079 = and i32 %1078, 16777216
  %1080 = icmp eq i32 %1079, 0
  br i1 %1080, label %1081, label %1070

1081:                                             ; preds = %1074, %1070, %1064, %1047
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %1082 = load ptr, ptr %111, align 4
  %1083 = getelementptr i8, ptr %1082, i32 20480
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1083, i32 %1058) #18, !srcloc !12
  %1084 = load ptr, ptr %5, align 4
  %1085 = getelementptr inbounds %struct.net_device, ptr %1084, i32 0, i32 20
  %1086 = load i32, ptr %1085, align 4
  %1087 = icmp ugt i32 %1086, 1500
  br i1 %1087, label %1088, label %1136

1088:                                             ; preds = %1081
  %1089 = load ptr, ptr %111, align 4
  %1090 = getelementptr i8, ptr %1089, i32 4096
  %1091 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1090) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %1092 = shl i32 %1091, 10
  %1093 = and i32 %1092, 67107840
  %1094 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 61
  %1095 = load i32, ptr %1094, align 4
  %1096 = sub i32 %1093, %1095
  %1097 = shl i32 %1096, 3
  %1098 = udiv i32 %1097, 1000
  %1099 = load i32, ptr %351, align 8
  %1100 = and i32 %1099, 512
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1132, label %1102

1102:                                             ; preds = %1088
  %1103 = load ptr, ptr %111, align 4
  %1104 = getelementptr i8, ptr %1103, i32 10280
  %1105 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1104) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %1106 = or i32 %1105, 259
  %1107 = load ptr, ptr %79, align 4
  %1108 = getelementptr inbounds %struct.e1000_adapter, ptr %1107, i32 0, i32 85
  %1109 = load i32, ptr %1108, align 4
  %1110 = and i32 %1109, 2048
  %1111 = icmp eq i32 %1110, 0
  br i1 %1111, label %1129, label %1112

1112:                                             ; preds = %1102
  %1113 = load ptr, ptr %111, align 4
  %1114 = getelementptr i8, ptr %1113, i32 23380
  %1115 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1114) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %1116 = and i32 %1115, 16777216
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %1129, label %1118

1118:                                             ; preds = %1122, %1112
  %1119 = phi i32 [ %1120, %1122 ], [ 2000, %1112 ]
  %1120 = add nsw i32 %1119, -1
  %1121 = icmp eq i32 %1120, 0
  br i1 %1121, label %1129, label %1122

1122:                                             ; preds = %1118
  %1123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1123(i32 noundef 10737400) #18
  %1124 = load ptr, ptr %111, align 4
  %1125 = getelementptr i8, ptr %1124, i32 23380
  %1126 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1125) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %1127 = and i32 %1126, 16777216
  %1128 = icmp eq i32 %1127, 0
  br i1 %1128, label %1129, label %1118

1129:                                             ; preds = %1122, %1118, %1112, %1102
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %1130 = load ptr, ptr %111, align 4
  %1131 = getelementptr i8, ptr %1130, i32 10280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1131, i32 %1106) #18, !srcloc !12
  br label %1132

1132:                                             ; preds = %1129, %1088
  %1133 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %1134 = load ptr, ptr %1133, align 32
  %1135 = getelementptr inbounds %struct.pci_dev, ptr %1134, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1135, ptr noundef nonnull @.str.19) #20
  br label %1136

1136:                                             ; preds = %1132, %1081
  %1137 = phi i32 [ %1098, %1132 ], [ -1, %1081 ]
  %1138 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 102
  call void @cpu_latency_qos_update_request(ptr noundef %1138, i32 noundef %1137) #18
  %1139 = load ptr, ptr %79, align 4
  %1140 = getelementptr inbounds %struct.e1000_adapter, ptr %1139, i32 0, i32 85
  %1141 = load i32, ptr %1140, align 4
  %1142 = and i32 %1141, 2048
  %1143 = icmp eq i32 %1142, 0
  br i1 %1143, label %1161, label %1144

1144:                                             ; preds = %1136
  %1145 = load ptr, ptr %111, align 4
  %1146 = getelementptr i8, ptr %1145, i32 23380
  %1147 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1146) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %1148 = and i32 %1147, 16777216
  %1149 = icmp eq i32 %1148, 0
  br i1 %1149, label %1161, label %1150

1150:                                             ; preds = %1154, %1144
  %1151 = phi i32 [ %1152, %1154 ], [ 2000, %1144 ]
  %1152 = add nsw i32 %1151, -1
  %1153 = icmp eq i32 %1152, 0
  br i1 %1153, label %1161, label %1154

1154:                                             ; preds = %1150
  %1155 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1155(i32 noundef 10737400) #18
  %1156 = load ptr, ptr %111, align 4
  %1157 = getelementptr i8, ptr %1156, i32 23380
  %1158 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1157) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %1159 = and i32 %1158, 16777216
  %1160 = icmp eq i32 %1159, 0
  br i1 %1160, label %1161, label %1150

1161:                                             ; preds = %1154, %1150, %1144, %1136
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %1162 = load ptr, ptr %111, align 4
  %1163 = getelementptr i8, ptr %1162, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1163, i32 %697) #18, !srcloc !12
  %1164 = load ptr, ptr %694, align 4
  %1165 = getelementptr inbounds %struct.e1000_ring, ptr %4, i32 0, i32 6
  %1166 = load i16, ptr %1165, align 2
  %1167 = zext i16 %1166 to i32
  %1168 = getelementptr inbounds %struct.e1000_ring, ptr %4, i32 0, i32 5
  %1169 = load i16, ptr %1168, align 4
  %1170 = zext i16 %1169 to i32
  %1171 = icmp ugt i16 %1166, %1169
  br i1 %1171, label %1172, label %1175

1172:                                             ; preds = %1161
  %1173 = xor i32 %1170, -1
  %1174 = add nsw i32 %1173, %1167
  br label %1181

1175:                                             ; preds = %1161
  %1176 = getelementptr inbounds %struct.e1000_ring, ptr %4, i32 0, i32 4
  %1177 = load i32, ptr %1176, align 4
  %1178 = xor i32 %1170, -1
  %1179 = add nsw i32 %1178, %1167
  %1180 = add i32 %1179, %1177
  br label %1181

1181:                                             ; preds = %1175, %1172
  %1182 = phi i32 [ %1174, %1172 ], [ %1180, %1175 ]
  call void %1164(ptr noundef %4, i32 noundef %1182, i32 noundef 3264) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @e1000_configure_msix(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 48
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 18
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 78
  store i32 0, ptr %7, align 16
  %8 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %42

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 20488
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %16 = or i32 %15, 4096
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.e1000_adapter, ptr %17, i32 0, i32 85
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 2048
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %11
  %23 = load ptr, ptr %12, align 4
  %24 = getelementptr i8, ptr %23, i32 23380
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %26 = and i32 %25, 16777216
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %32, %22
  %29 = phi i32 [ %30, %32 ], [ 2000, %22 ]
  %30 = add nsw i32 %29, -1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 10737400) #18
  %34 = load ptr, ptr %12, align 4
  %35 = getelementptr i8, ptr %34, i32 23380
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %37 = and i32 %36, 16777216
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %28

39:                                               ; preds = %32, %28, %22, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %40 = load ptr, ptr %12, align 4
  %41 = getelementptr i8, ptr %40, i32 20488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %16) #18, !srcloc !12
  br label %42

42:                                               ; preds = %39, %1
  %43 = getelementptr inbounds %struct.e1000_ring, ptr %4, i32 0, i32 11
  store i32 1048576, ptr %43, align 4
  %44 = load i32, ptr %7, align 16
  %45 = or i32 %44, 1048576
  store i32 %45, ptr %7, align 16
  %46 = getelementptr inbounds %struct.e1000_ring, ptr %4, i32 0, i32 12
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #18
  tail call void @arm_heavy_mb() #18
  br i1 %48, label %55, label %49

49:                                               ; preds = %42
  %50 = load i32, ptr %46, align 4
  %51 = shl i32 %50, 8
  %52 = udiv i32 1000000000, %51
  %53 = getelementptr inbounds %struct.e1000_ring, ptr %4, i32 0, i32 13
  %54 = load ptr, ptr %53, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #18, !srcloc !12
  br label %58

55:                                               ; preds = %42
  %56 = getelementptr inbounds %struct.e1000_ring, ptr %4, i32 0, i32 13
  %57 = load ptr, ptr %56, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 1) #18, !srcloc !12
  br label %58

58:                                               ; preds = %55, %49
  %59 = getelementptr inbounds %struct.e1000_ring, ptr %6, i32 0, i32 11
  store i32 4194304, ptr %59, align 4
  %60 = getelementptr inbounds %struct.e1000_ring, ptr %6, i32 0, i32 12
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #18
  tail call void @arm_heavy_mb() #18
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  %64 = load i32, ptr %60, align 4
  %65 = shl i32 %64, 8
  %66 = udiv i32 1000000000, %65
  %67 = getelementptr inbounds %struct.e1000_ring, ptr %6, i32 0, i32 13
  %68 = load ptr, ptr %67, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #18, !srcloc !12
  br label %72

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.e1000_ring, ptr %6, i32 0, i32 13
  %71 = load ptr, ptr %70, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 1) #18, !srcloc !12
  br label %72

72:                                               ; preds = %69, %63
  %73 = load i32, ptr %59, align 4
  %74 = load i32, ptr %7, align 16
  %75 = or i32 %74, %73
  store i32 %75, ptr %7, align 16
  %76 = load i32, ptr %46, align 4
  %77 = icmp eq i32 %76, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #18
  tail call void @arm_heavy_mb() #18
  br i1 %77, label %85, label %78

78:                                               ; preds = %72
  %79 = load i32, ptr %46, align 4
  %80 = shl i32 %79, 8
  %81 = udiv i32 1000000000, %80
  %82 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr i8, ptr %83, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %81) #18, !srcloc !12
  br label %89

85:                                               ; preds = %72
  %86 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr i8, ptr %87, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 1) #18, !srcloc !12
  br label %89

89:                                               ; preds = %85, %78
  %90 = load ptr, ptr %2, align 4
  %91 = getelementptr inbounds %struct.e1000_adapter, ptr %90, i32 0, i32 85
  %92 = load i32, ptr %91, align 4
  %93 = and i32 %92, 2048
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %113, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr i8, ptr %97, i32 23380
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %100 = and i32 %99, 16777216
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %113, label %102

102:                                              ; preds = %106, %95
  %103 = phi i32 [ %104, %106 ], [ 2000, %95 ]
  %104 = add nsw i32 %103, -1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %107(i32 noundef 10737400) #18
  %108 = load ptr, ptr %96, align 4
  %109 = getelementptr i8, ptr %108, i32 23380
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %111 = and i32 %110, 16777216
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %102

113:                                              ; preds = %106, %102, %95, %89
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %114 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr i8, ptr %115, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 -2146825976) #18, !srcloc !12
  %117 = load ptr, ptr %114, align 4
  %118 = getelementptr i8, ptr %117, i32 24
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %120 = load ptr, ptr %2, align 4
  %121 = getelementptr inbounds %struct.e1000_adapter, ptr %120, i32 0, i32 85
  %122 = load i32, ptr %121, align 4
  %123 = and i32 %122, 2048
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %142, label %125

125:                                              ; preds = %113
  %126 = load ptr, ptr %114, align 4
  %127 = getelementptr i8, ptr %126, i32 23380
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %129 = and i32 %128, 16777216
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %142, label %131

131:                                              ; preds = %135, %125
  %132 = phi i32 [ %133, %135 ], [ 2000, %125 ]
  %133 = add nsw i32 %132, -1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %131
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %136(i32 noundef 10737400) #18
  %137 = load ptr, ptr %114, align 4
  %138 = getelementptr i8, ptr %137, i32 23380
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %140 = and i32 %139, 16777216
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %131

142:                                              ; preds = %135, %131, %125, %113
  %143 = and i32 %119, 1996488703
  %144 = or i32 %143, -2130706432
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %145 = load ptr, ptr %114, align 4
  %146 = getelementptr i8, ptr %145, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %144) #18, !srcloc !12
  %147 = load ptr, ptr %114, align 4
  %148 = getelementptr i8, ptr %147, i32 8
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @e1000_irq_enable(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 76
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %64, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 78
  %8 = load i32, ptr %7, align 16
  %9 = and i32 %8, 32505856
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.e1000_adapter, ptr %10, i32 0, i32 85
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 2048
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 23380
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %20 = and i32 %19, 16777216
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %26, %15
  %23 = phi i32 [ %24, %26 ], [ 2000, %15 ]
  %24 = add nsw i32 %23, -1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 10737400) #18
  %28 = load ptr, ptr %16, align 4
  %29 = getelementptr i8, ptr %28, i32 23380
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %31 = and i32 %30, 16777216
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %22

33:                                               ; preds = %26, %22, %15, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %34 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %9) #18, !srcloc !12
  %37 = load i32, ptr %7, align 16
  %38 = or i32 %37, 17236548
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr inbounds %struct.e1000_adapter, ptr %39, i32 0, i32 85
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 2048
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %61, label %44

44:                                               ; preds = %33
  %45 = load ptr, ptr %34, align 4
  %46 = getelementptr i8, ptr %45, i32 23380
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %48 = and i32 %47, 16777216
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %54, %44
  %51 = phi i32 [ %52, %54 ], [ 2000, %44 ]
  %52 = add nsw i32 %51, -1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 10737400) #18
  %56 = load ptr, ptr %34, align 4
  %57 = getelementptr i8, ptr %56, i32 23380
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %59 = and i32 %58, 16777216
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %50

61:                                               ; preds = %54, %50, %44, %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %62 = load ptr, ptr %34, align 4
  %63 = getelementptr i8, ptr %62, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %38) #18, !srcloc !12
  br label %119

64:                                               ; preds = %1
  %65 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = icmp ugt i32 %66, 10
  %68 = load ptr, ptr %2, align 4
  %69 = getelementptr inbounds %struct.e1000_adapter, ptr %68, i32 0, i32 85
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, 2048
  %72 = icmp eq i32 %71, 0
  br i1 %67, label %73, label %96

73:                                               ; preds = %64
  br i1 %72, label %92, label %74

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i8, ptr %76, i32 23380
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %79 = and i32 %78, 16777216
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %85, %74
  %82 = phi i32 [ %83, %85 ], [ 2000, %74 ]
  %83 = add nsw i32 %82, -1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 10737400) #18
  %87 = load ptr, ptr %75, align 4
  %88 = getelementptr i8, ptr %87, i32 23380
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %90 = and i32 %89, 16777216
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %81

92:                                               ; preds = %85, %81, %74, %73
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %93 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr i8, ptr %94, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 4194461) #18, !srcloc !12
  br label %119

96:                                               ; preds = %64
  br i1 %72, label %115, label %97

97:                                               ; preds = %96
  %98 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr i8, ptr %99, i32 23380
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %102 = and i32 %101, 16777216
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %115, label %104

104:                                              ; preds = %108, %97
  %105 = phi i32 [ %106, %108 ], [ 2000, %97 ]
  %106 = add nsw i32 %105, -1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %109(i32 noundef 10737400) #18
  %110 = load ptr, ptr %98, align 4
  %111 = getelementptr i8, ptr %110, i32 23380
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %113 = and i32 %112, 16777216
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %104

115:                                              ; preds = %108, %104, %97, %96
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %116 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr i8, ptr %117, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 157) #18, !srcloc !12
  br label %119

119:                                              ; preds = %115, %92, %61
  %120 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr i8, ptr %121, i32 8
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @e1000e_trigger_lsc(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 76
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.e1000_adapter, ptr %6, i32 0, i32 85
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 2048
  %10 = icmp eq i32 %9, 0
  br i1 %5, label %34, label %11

11:                                               ; preds = %1
  br i1 %10, label %30, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 23380
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %17 = and i32 %16, 16777216
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %23, %12
  %20 = phi i32 [ %21, %23 ], [ 2000, %12 ]
  %21 = add nsw i32 %20, -1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 10737400) #18
  %25 = load ptr, ptr %13, align 4
  %26 = getelementptr i8, ptr %25, i32 23380
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %28 = and i32 %27, 16777216
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %19

30:                                               ; preds = %23, %19, %12, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %31 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 16777220) #18, !srcloc !12
  br label %57

34:                                               ; preds = %1
  br i1 %10, label %53, label %35

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 23380
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %40 = and i32 %39, 16777216
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %46, %35
  %43 = phi i32 [ %44, %46 ], [ 2000, %35 ]
  %44 = add nsw i32 %43, -1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 10737400) #18
  %48 = load ptr, ptr %36, align 4
  %49 = getelementptr i8, ptr %48, i32 23380
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %51 = and i32 %50, 16777216
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %42

53:                                               ; preds = %46, %42, %35, %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %54 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 4) #18, !srcloc !12
  br label %57

57:                                               ; preds = %53, %30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_down(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 63
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %6 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 3, ptr noundef %6) #18
  tail call void @netif_carrier_off(ptr noundef %4) #18
  %7 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 256
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %11 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 85
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1024
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %2
  %16 = and i32 %10, -3
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr inbounds %struct.e1000_adapter, ptr %17, i32 0, i32 85
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 2048
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr i8, ptr %23, i32 23380
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %26 = and i32 %25, 16777216
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %32, %22
  %29 = phi i32 [ %30, %32 ], [ 2000, %22 ]
  %30 = add nsw i32 %29, -1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 10737400) #18
  %34 = load ptr, ptr %7, align 4
  %35 = getelementptr i8, ptr %34, i32 23380
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %37 = and i32 %36, 16777216
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %28

39:                                               ; preds = %32, %28, %22, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %40 = load ptr, ptr %7, align 4
  %41 = getelementptr i8, ptr %40, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %16) #18, !srcloc !12
  br label %42

42:                                               ; preds = %39, %2
  %43 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 87
  %44 = load ptr, ptr %43, align 64
  %45 = getelementptr inbounds %struct.netdev_queue, ptr %44, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %45) #18
  %46 = load ptr, ptr %7, align 4
  %47 = getelementptr i8, ptr %46, i32 1024
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %49 = and i32 %48, -3
  %50 = load ptr, ptr %5, align 4
  %51 = getelementptr inbounds %struct.e1000_adapter, ptr %50, i32 0, i32 85
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 2048
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %42
  %56 = load ptr, ptr %7, align 4
  %57 = getelementptr i8, ptr %56, i32 23380
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %59 = and i32 %58, 16777216
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %65, %55
  %62 = phi i32 [ %63, %65 ], [ 2000, %55 ]
  %63 = add nsw i32 %62, -1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 10737400) #18
  %67 = load ptr, ptr %7, align 4
  %68 = getelementptr i8, ptr %67, i32 23380
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %70 = and i32 %69, 16777216
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %61

72:                                               ; preds = %65, %61, %55, %42
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %73 = load ptr, ptr %7, align 4
  %74 = getelementptr i8, ptr %73, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %49) #18, !srcloc !12
  %75 = load ptr, ptr %7, align 4
  %76 = getelementptr i8, ptr %75, i32 8
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #18
  tail call fastcc void @e1000_irq_disable(ptr noundef %0)
  %78 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 20, i32 1
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %82, %72
  tail call void @msleep(i32 noundef 1) #18
  %83 = load volatile i32, ptr %78, align 4
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %82

86:                                               ; preds = %82, %72
  %87 = tail call i32 @del_timer_sync(ptr noundef %0) #18
  %88 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 1
  %89 = tail call i32 @del_timer_sync(ptr noundef %88) #18
  %90 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 66
  tail call void @_raw_spin_lock(ptr noundef %90) #18
  tail call fastcc void @e1000e_update_stats(ptr noundef %0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !29
  %91 = load i16, ptr %90, align 4
  %92 = add i16 %91, 1
  store i16 %92, ptr %90, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !32
  tail call fastcc void @e1000e_flush_descriptors(ptr noundef %0)
  %93 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 10
  store i16 0, ptr %93, align 2
  %94 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 11
  store i16 0, ptr %94, align 4
  %95 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 3
  %96 = load i32, ptr %95, align 4
  %97 = icmp ugt i32 %96, 9
  br i1 %97, label %98, label %105

98:                                               ; preds = %86
  %99 = load ptr, ptr %3, align 4
  %100 = getelementptr inbounds %struct.net_device, ptr %99, i32 0, i32 20
  %101 = load i32, ptr %100, align 4
  %102 = icmp ugt i32 %101, 1500
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = tail call i32 @e1000_lv_jumbo_workaround_ich8lan(ptr noundef %5, i1 noundef zeroext false) #18
  br label %105

105:                                              ; preds = %103, %98, %86
  %106 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %107 = load ptr, ptr %106, align 32
  %108 = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 43
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  br i1 %1, label %112, label %113

112:                                              ; preds = %111
  tail call void @e1000e_reset(ptr noundef %0)
  br label %117

113:                                              ; preds = %111
  %114 = load i32, ptr %95, align 4
  %115 = icmp ugt i32 %114, 11
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  tail call fastcc void @e1000_flush_desc_rings(ptr noundef %0)
  br label %117

117:                                              ; preds = %116, %113, %112, %105
  %118 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 18
  %119 = load ptr, ptr %118, align 64
  tail call fastcc void @e1000_clean_tx_ring(ptr noundef %119)
  %120 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 48
  %121 = load ptr, ptr %120, align 8
  tail call fastcc void @e1000_clean_rx_ring(ptr noundef %121)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @e1000_irq_disable(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 85
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 2048
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 23380
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %13 = and i32 %12, 16777216
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %19, %8
  %16 = phi i32 [ %17, %19 ], [ 2000, %8 ]
  %17 = add nsw i32 %16, -1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 10737400) #18
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr i8, ptr %21, i32 23380
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %24 = and i32 %23, 16777216
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %15

26:                                               ; preds = %19, %15, %8, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %27 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 -1) #18, !srcloc !12
  %30 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 76
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %59, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %2, align 4
  %35 = getelementptr inbounds %struct.e1000_adapter, ptr %34, i32 0, i32 85
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 2048
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %27, align 4
  %41 = getelementptr i8, ptr %40, i32 23380
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %43 = and i32 %42, 16777216
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %49, %39
  %46 = phi i32 [ %47, %49 ], [ 2000, %39 ]
  %47 = add nsw i32 %46, -1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 10737400) #18
  %51 = load ptr, ptr %27, align 4
  %52 = getelementptr i8, ptr %51, i32 23380
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %54 = and i32 %53, 16777216
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %45

56:                                               ; preds = %49, %45, %39, %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %57 = load ptr, ptr %27, align 4
  %58 = getelementptr i8, ptr %57, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 0) #18, !srcloc !12
  br label %59

59:                                               ; preds = %56, %26
  %60 = load ptr, ptr %27, align 4
  %61 = getelementptr i8, ptr %60, i32 8
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %63 = load ptr, ptr %30, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %81, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 75
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %86, label %69

69:                                               ; preds = %65
  %70 = load i32, ptr %63, align 4
  tail call void @synchronize_irq(i32 noundef %70) #18
  %71 = load i32, ptr %66, align 4
  %72 = icmp ugt i32 %71, 1
  br i1 %72, label %73, label %86

73:                                               ; preds = %73, %69
  %74 = phi i32 [ %78, %73 ], [ 1, %69 ]
  %75 = load ptr, ptr %30, align 8
  %76 = getelementptr %struct.msix_entry, ptr %75, i32 %74
  %77 = load i32, ptr %76, align 4
  tail call void @synchronize_irq(i32 noundef %77) #18
  %78 = add nuw i32 %74, 1
  %79 = load i32, ptr %66, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %73, label %86

81:                                               ; preds = %59
  %82 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %83 = load ptr, ptr %82, align 32
  %84 = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 46
  %85 = load i32, ptr %84, align 4
  tail call void @synchronize_irq(i32 noundef %85) #18
  br label %86

86:                                               ; preds = %81, %73, %69, %65
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @e1000e_update_stats(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 63
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %6 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 10
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %445, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %11 = load ptr, ptr %10, align 32
  %12 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 43
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %445

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 16384
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67
  %22 = load i64, ptr %21, align 16
  %23 = add i64 %22, %20
  store i64 %23, ptr %21, align 16
  %24 = load ptr, ptr %16, align 4
  %25 = getelementptr i8, ptr %24, i32 16500
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 26
  %29 = load i64, ptr %28, align 16
  %30 = add i64 %29, %27
  store i64 %30, ptr %28, align 16
  %31 = load ptr, ptr %16, align 4
  %32 = getelementptr i8, ptr %31, i32 16520
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 30
  %36 = load i64, ptr %35, align 16
  %37 = add i64 %36, %34
  store i64 %37, ptr %35, align 16
  %38 = load ptr, ptr %16, align 4
  %39 = getelementptr i8, ptr %38, i32 16524
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %41 = load ptr, ptr %16, align 4
  %42 = getelementptr i8, ptr %41, i32 16504
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 27
  %46 = load i64, ptr %45, align 8
  %47 = add i64 %46, %44
  store i64 %47, ptr %45, align 8
  %48 = load ptr, ptr %16, align 4
  %49 = getelementptr i8, ptr %48, i32 16508
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 28
  %53 = load i64, ptr %52, align 16
  %54 = add i64 %53, %51
  store i64 %54, ptr %52, align 16
  %55 = load ptr, ptr %16, align 4
  %56 = getelementptr i8, ptr %55, i32 16556
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 35
  %60 = load i64, ptr %59, align 8
  %61 = add i64 %60, %58
  store i64 %61, ptr %59, align 8
  %62 = load ptr, ptr %16, align 4
  %63 = getelementptr i8, ptr %62, i32 16400
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 4
  %67 = load i64, ptr %66, align 16
  %68 = add i64 %67, %65
  store i64 %68, ptr %66, align 16
  %69 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 11
  %70 = load i16, ptr %69, align 4
  %71 = icmp eq i16 %70, 1
  br i1 %71, label %72, label %240

72:                                               ; preds = %15
  %73 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 85
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, 16
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %181, label %77

77:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #18
  store i16 0, ptr %2, align 2, !annotation !19
  %78 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 %79(ptr noundef %5) #18
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %180

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 8
  store i32 1, ptr %83, align 4
  %84 = call i32 @e1000e_read_phy_reg_mdic(ptr noundef %5, i32 noundef 31, ptr noundef nonnull %2) #18
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %177

86:                                               ; preds = %82
  %87 = load i16, ptr %2, align 2
  %88 = icmp eq i16 %87, 24896
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 9
  %91 = load ptr, ptr %90, align 4
  %92 = call i32 %91(ptr noundef %5, i16 noundef zeroext 24896) #18
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %177

94:                                               ; preds = %89, %86
  %95 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 12
  %96 = load ptr, ptr %95, align 4
  %97 = call i32 %96(ptr noundef %5, i32 noundef 24912, ptr noundef nonnull %2) #18
  %98 = load ptr, ptr %95, align 4
  %99 = call i32 %98(ptr noundef %5, i32 noundef 24913, ptr noundef nonnull %2) #18
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = load i16, ptr %2, align 2
  %103 = zext i16 %102 to i64
  %104 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 5
  %105 = load i64, ptr %104, align 8
  %106 = add i64 %105, %103
  store i64 %106, ptr %104, align 8
  br label %107

107:                                              ; preds = %101, %94
  %108 = load ptr, ptr %95, align 4
  %109 = call i32 %108(ptr noundef %5, i32 noundef 24914, ptr noundef nonnull %2) #18
  %110 = load ptr, ptr %95, align 4
  %111 = call i32 %110(ptr noundef %5, i32 noundef 24915, ptr noundef nonnull %2) #18
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load i16, ptr %2, align 2
  %115 = zext i16 %114 to i64
  %116 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 6
  %117 = load i64, ptr %116, align 16
  %118 = add i64 %117, %115
  store i64 %118, ptr %116, align 16
  br label %119

119:                                              ; preds = %113, %107
  %120 = load ptr, ptr %95, align 4
  %121 = call i32 %120(ptr noundef %5, i32 noundef 24916, ptr noundef nonnull %2) #18
  %122 = load ptr, ptr %95, align 4
  %123 = call i32 %122(ptr noundef %5, i32 noundef 24917, ptr noundef nonnull %2) #18
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load i16, ptr %2, align 2
  %127 = zext i16 %126 to i64
  %128 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 7
  %129 = load i64, ptr %128, align 8
  %130 = add i64 %129, %127
  store i64 %130, ptr %128, align 8
  br label %131

131:                                              ; preds = %125, %119
  %132 = load ptr, ptr %95, align 4
  %133 = call i32 %132(ptr noundef %5, i32 noundef 24919, ptr noundef nonnull %2) #18
  %134 = load ptr, ptr %95, align 4
  %135 = call i32 %134(ptr noundef %5, i32 noundef 24920, ptr noundef nonnull %2) #18
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = load i16, ptr %2, align 2
  %139 = zext i16 %138 to i64
  %140 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 8
  %141 = load i64, ptr %140, align 16
  %142 = add i64 %141, %139
  store i64 %142, ptr %140, align 16
  br label %143

143:                                              ; preds = %137, %131
  %144 = load ptr, ptr %95, align 4
  %145 = call i32 %144(ptr noundef %5, i32 noundef 24921, ptr noundef nonnull %2) #18
  %146 = load ptr, ptr %95, align 4
  %147 = call i32 %146(ptr noundef %5, i32 noundef 24922, ptr noundef nonnull %2) #18
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load i16, ptr %2, align 2
  %151 = zext i16 %150 to i32
  %152 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 4
  store i32 %151, ptr %152, align 4
  br label %153

153:                                              ; preds = %149, %143
  %154 = load ptr, ptr %95, align 4
  %155 = call i32 %154(ptr noundef %5, i32 noundef 24923, ptr noundef nonnull %2) #18
  %156 = load ptr, ptr %95, align 4
  %157 = call i32 %156(ptr noundef %5, i32 noundef 24924, ptr noundef nonnull %2) #18
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %153
  %160 = load i16, ptr %2, align 2
  %161 = zext i16 %160 to i64
  %162 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 10
  %163 = load i64, ptr %162, align 16
  %164 = add i64 %163, %161
  store i64 %164, ptr %162, align 16
  br label %165

165:                                              ; preds = %159, %153
  %166 = load ptr, ptr %95, align 4
  %167 = call i32 %166(ptr noundef %5, i32 noundef 24925, ptr noundef nonnull %2) #18
  %168 = load ptr, ptr %95, align 4
  %169 = call i32 %168(ptr noundef %5, i32 noundef 24926, ptr noundef nonnull %2) #18
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %165
  %172 = load i16, ptr %2, align 2
  %173 = zext i16 %172 to i64
  %174 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 11
  %175 = load i64, ptr %174, align 8
  %176 = add i64 %175, %173
  store i64 %176, ptr %174, align 8
  br label %177

177:                                              ; preds = %171, %165, %89, %82
  %178 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 13
  %179 = load ptr, ptr %178, align 4
  call void %179(ptr noundef %5) #18
  br label %180

180:                                              ; preds = %177, %77
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #18
  br label %233

181:                                              ; preds = %72
  %182 = load ptr, ptr %16, align 4
  %183 = getelementptr i8, ptr %182, i32 16404
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %183) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 5
  %187 = load i64, ptr %186, align 8
  %188 = add i64 %187, %185
  store i64 %188, ptr %186, align 8
  %189 = load ptr, ptr %16, align 4
  %190 = getelementptr i8, ptr %189, i32 16408
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %190) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 6
  %194 = load i64, ptr %193, align 16
  %195 = add i64 %194, %192
  store i64 %195, ptr %193, align 16
  %196 = load ptr, ptr %16, align 4
  %197 = getelementptr i8, ptr %196, i32 16412
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %197) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 7
  %201 = load i64, ptr %200, align 8
  %202 = add i64 %201, %199
  store i64 %202, ptr %200, align 8
  %203 = load ptr, ptr %16, align 4
  %204 = getelementptr i8, ptr %203, i32 16416
  %205 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %204) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 8
  %208 = load i64, ptr %207, align 16
  %209 = add i64 %208, %206
  store i64 %209, ptr %207, align 16
  %210 = load ptr, ptr %16, align 4
  %211 = getelementptr i8, ptr %210, i32 16432
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %211) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 10
  %215 = load i64, ptr %214, align 16
  %216 = add i64 %215, %213
  store i64 %216, ptr %214, align 16
  %217 = load ptr, ptr %16, align 4
  %218 = getelementptr i8, ptr %217, i32 16424
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %218) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %220 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 4
  store i32 %219, ptr %220, align 4
  %221 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 3
  %222 = load i32, ptr %221, align 4
  %223 = add i32 %222, -3
  %224 = icmp ult i32 %223, 2
  br i1 %224, label %233, label %225

225:                                              ; preds = %181
  %226 = load ptr, ptr %16, align 4
  %227 = getelementptr i8, ptr %226, i32 16436
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %227) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 11
  %231 = load i64, ptr %230, align 8
  %232 = add i64 %231, %229
  store i64 %232, ptr %230, align 8
  br label %233

233:                                              ; preds = %225, %181, %180
  %234 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 4
  %235 = load i32, ptr %234, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 9
  %238 = load i64, ptr %237, align 8
  %239 = add i64 %238, %236
  store i64 %239, ptr %237, align 8
  br label %240

240:                                              ; preds = %233, %15
  %241 = load ptr, ptr %16, align 4
  %242 = getelementptr i8, ptr %241, i32 16456
  %243 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %242) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 15
  %246 = load i64, ptr %245, align 8
  %247 = add i64 %246, %244
  store i64 %247, ptr %245, align 8
  %248 = load ptr, ptr %16, align 4
  %249 = getelementptr i8, ptr %248, i32 16460
  %250 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %249) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 16
  %253 = load i64, ptr %252, align 16
  %254 = add i64 %253, %251
  store i64 %254, ptr %252, align 16
  %255 = load ptr, ptr %16, align 4
  %256 = getelementptr i8, ptr %255, i32 16464
  %257 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %256) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 17
  %260 = load i64, ptr %259, align 8
  %261 = add i64 %260, %258
  store i64 %261, ptr %259, align 8
  %262 = load ptr, ptr %16, align 4
  %263 = getelementptr i8, ptr %262, i32 16468
  %264 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %263) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 18
  %267 = load i64, ptr %266, align 16
  %268 = add i64 %267, %265
  store i64 %268, ptr %266, align 16
  %269 = load ptr, ptr %16, align 4
  %270 = getelementptr i8, ptr %269, i32 16512
  %271 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %270) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 29
  %274 = load i64, ptr %273, align 8
  %275 = add i64 %274, %272
  store i64 %275, ptr %273, align 8
  %276 = load ptr, ptr %16, align 4
  %277 = getelementptr i8, ptr %276, i32 16528
  %278 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %277) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 31
  %281 = load i64, ptr %280, align 8
  %282 = add i64 %281, %279
  store i64 %282, ptr %280, align 8
  %283 = load ptr, ptr %16, align 4
  %284 = getelementptr i8, ptr %283, i32 16532
  %285 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %284) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %286 = load ptr, ptr %16, align 4
  %287 = getelementptr i8, ptr %286, i32 16544
  %288 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %287) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 32
  %291 = load i64, ptr %290, align 16
  %292 = add i64 %291, %289
  store i64 %292, ptr %290, align 16
  %293 = load ptr, ptr %16, align 4
  %294 = getelementptr i8, ptr %293, i32 16548
  %295 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %294) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 33
  %298 = load i64, ptr %297, align 8
  %299 = add i64 %298, %296
  store i64 %299, ptr %297, align 8
  %300 = load ptr, ptr %16, align 4
  %301 = getelementptr i8, ptr %300, i32 16624
  %302 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %301) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 50
  %305 = load i64, ptr %304, align 16
  %306 = add i64 %305, %303
  store i64 %306, ptr %304, align 16
  %307 = load ptr, ptr %16, align 4
  %308 = getelementptr i8, ptr %307, i32 16628
  %309 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %308) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 51
  %312 = load i64, ptr %311, align 8
  %313 = add i64 %312, %310
  store i64 %313, ptr %311, align 8
  %314 = load ptr, ptr %16, align 4
  %315 = getelementptr i8, ptr %314, i32 16596
  %316 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %315) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %317 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 9
  store i32 %316, ptr %317, align 4
  %318 = zext i32 %316 to i64
  %319 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 43
  %320 = load i64, ptr %319, align 8
  %321 = add i64 %320, %318
  store i64 %321, ptr %319, align 8
  %322 = load ptr, ptr %16, align 4
  %323 = getelementptr i8, ptr %322, i32 16388
  %324 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %323) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 1
  %327 = load i64, ptr %326, align 8
  %328 = add i64 %327, %325
  store i64 %328, ptr %326, align 8
  %329 = load ptr, ptr %16, align 4
  %330 = getelementptr i8, ptr %329, i32 16396
  %331 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %330) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 3
  %334 = load i64, ptr %333, align 8
  %335 = add i64 %334, %332
  store i64 %335, ptr %333, align 8
  %336 = load ptr, ptr %16, align 4
  %337 = getelementptr i8, ptr %336, i32 16444
  %338 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %337) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 13
  %341 = load i64, ptr %340, align 8
  %342 = add i64 %341, %339
  store i64 %342, ptr %340, align 8
  %343 = load ptr, ptr %16, align 4
  %344 = getelementptr i8, ptr %343, i32 16632
  %345 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %344) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 52
  %348 = load i64, ptr %347, align 16
  %349 = add i64 %348, %346
  store i64 %349, ptr %347, align 16
  %350 = load ptr, ptr %16, align 4
  %351 = getelementptr i8, ptr %350, i32 16636
  %352 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %351) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 53
  %355 = load i64, ptr %354, align 8
  %356 = add i64 %355, %353
  store i64 %356, ptr %354, align 8
  %357 = load i64, ptr %52, align 16
  %358 = trunc i64 %357 to i32
  %359 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 8
  store i32 %358, ptr %359, align 8
  %360 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 9
  %361 = load i64, ptr %360, align 8
  %362 = trunc i64 %361 to i32
  %363 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 9
  store i32 %362, ptr %363, align 4
  %364 = load i64, ptr %333, align 8
  %365 = load i64, ptr %21, align 16
  %366 = add i64 %365, %364
  %367 = load i64, ptr %326, align 8
  %368 = add i64 %366, %367
  %369 = load i64, ptr %297, align 8
  %370 = add i64 %368, %369
  %371 = load i64, ptr %59, align 8
  %372 = add i64 %370, %371
  %373 = load i64, ptr %340, align 8
  %374 = add i64 %372, %373
  %375 = trunc i64 %374 to i32
  %376 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 4
  store i32 %375, ptr %376, align 8
  %377 = load i64, ptr %297, align 8
  %378 = load i64, ptr %59, align 8
  %379 = add i64 %378, %377
  %380 = trunc i64 %379 to i32
  %381 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 10
  store i32 %380, ptr %381, align 8
  %382 = load i64, ptr %21, align 16
  %383 = trunc i64 %382 to i32
  %384 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 12
  store i32 %383, ptr %384, align 8
  %385 = load i64, ptr %326, align 8
  %386 = trunc i64 %385 to i32
  %387 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 13
  store i32 %386, ptr %387, align 4
  %388 = load i64, ptr %66, align 16
  %389 = trunc i64 %388 to i32
  %390 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 15
  store i32 %389, ptr %390, align 4
  %391 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 6
  %392 = load i64, ptr %391, align 16
  %393 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 8
  %394 = load i64, ptr %393, align 16
  %395 = add i64 %394, %392
  %396 = trunc i64 %395 to i32
  %397 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 5
  store i32 %396, ptr %397, align 4
  %398 = load i64, ptr %391, align 16
  %399 = trunc i64 %398 to i32
  %400 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 16
  store i32 %399, ptr %400, align 8
  %401 = load i64, ptr %393, align 16
  %402 = trunc i64 %401 to i32
  %403 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 20
  store i32 %402, ptr %403, align 8
  %404 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 11
  %405 = load i64, ptr %404, align 8
  %406 = trunc i64 %405 to i32
  %407 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 17
  store i32 %406, ptr %407, align 4
  %408 = load ptr, ptr %16, align 4
  %409 = getelementptr i8, ptr %408, i32 16572
  %410 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %409) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %411 = zext i32 %410 to i64
  %412 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 39
  %413 = load i64, ptr %412, align 8
  %414 = add i64 %413, %411
  store i64 %414, ptr %412, align 8
  %415 = load ptr, ptr %16, align 4
  %416 = getelementptr i8, ptr %415, i32 16564
  %417 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %416) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %418 = zext i32 %417 to i64
  %419 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 37
  %420 = load i64, ptr %419, align 8
  %421 = add i64 %420, %418
  store i64 %421, ptr %419, align 8
  %422 = load ptr, ptr %16, align 4
  %423 = getelementptr i8, ptr %422, i32 16568
  %424 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %423) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %425 = zext i32 %424 to i64
  %426 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 67, i32 38
  %427 = load i64, ptr %426, align 16
  %428 = add i64 %427, %425
  store i64 %428, ptr %426, align 16
  %429 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 3
  %430 = load i32, ptr %429, align 4
  %431 = icmp ugt i32 %430, 10
  br i1 %431, label %432, label %445

432:                                              ; preds = %240
  %433 = load ptr, ptr %16, align 4
  %434 = getelementptr i8, ptr %433, i32 4108
  %435 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %434) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %436 = and i32 %435, 255
  %437 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 22
  %438 = load i32, ptr %437, align 4
  %439 = add i32 %438, %436
  store i32 %439, ptr %437, align 4
  %440 = lshr i32 %435, 8
  %441 = and i32 %440, 255
  %442 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 21
  %443 = load i32, ptr %442, align 32
  %444 = add i32 %443, %441
  store i32 %444, ptr %442, align 32
  br label %445

445:                                              ; preds = %432, %240, %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @e1000e_flush_descriptors(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 85
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %126, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %8 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 28
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, -2147483648
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.e1000_adapter, ptr %11, i32 0, i32 85
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 2048
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 23380
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %21 = and i32 %20, 16777216
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %27, %16
  %24 = phi i32 [ %25, %27 ], [ 2000, %16 ]
  %25 = add nsw i32 %24, -1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 10737400) #18
  %29 = load ptr, ptr %17, align 4
  %30 = getelementptr i8, ptr %29, i32 23380
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %32 = and i32 %31, 16777216
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %23

34:                                               ; preds = %27, %23, %16, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %35 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 14368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %10) #18, !srcloc !12
  %38 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 49
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %39, -2147483648
  %41 = load ptr, ptr %7, align 4
  %42 = getelementptr inbounds %struct.e1000_adapter, ptr %41, i32 0, i32 85
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 2048
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %63, label %46

46:                                               ; preds = %34
  %47 = load ptr, ptr %35, align 4
  %48 = getelementptr i8, ptr %47, i32 23380
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %50 = and i32 %49, 16777216
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %56, %46
  %53 = phi i32 [ %54, %56 ], [ 2000, %46 ]
  %54 = add nsw i32 %53, -1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 10737400) #18
  %58 = load ptr, ptr %35, align 4
  %59 = getelementptr i8, ptr %58, i32 23380
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %61 = and i32 %60, 16777216
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %52

63:                                               ; preds = %56, %52, %46, %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %64 = load ptr, ptr %35, align 4
  %65 = getelementptr i8, ptr %64, i32 10272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %40) #18, !srcloc !12
  %66 = load ptr, ptr %35, align 4
  %67 = getelementptr i8, ptr %66, i32 8
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %69 = load i32, ptr %8, align 4
  %70 = or i32 %69, -2147483648
  %71 = load ptr, ptr %7, align 4
  %72 = getelementptr inbounds %struct.e1000_adapter, ptr %71, i32 0, i32 85
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 2048
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %93, label %76

76:                                               ; preds = %63
  %77 = load ptr, ptr %35, align 4
  %78 = getelementptr i8, ptr %77, i32 23380
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %80 = and i32 %79, 16777216
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %86, %76
  %83 = phi i32 [ %84, %86 ], [ 2000, %76 ]
  %84 = add nsw i32 %83, -1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 10737400) #18
  %88 = load ptr, ptr %35, align 4
  %89 = getelementptr i8, ptr %88, i32 23380
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %91 = and i32 %90, 16777216
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %82

93:                                               ; preds = %86, %82, %76, %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %94 = load ptr, ptr %35, align 4
  %95 = getelementptr i8, ptr %94, i32 14368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %70) #18, !srcloc !12
  %96 = load i32, ptr %38, align 4
  %97 = or i32 %96, -2147483648
  %98 = load ptr, ptr %7, align 4
  %99 = getelementptr inbounds %struct.e1000_adapter, ptr %98, i32 0, i32 85
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 2048
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %120, label %103

103:                                              ; preds = %93
  %104 = load ptr, ptr %35, align 4
  %105 = getelementptr i8, ptr %104, i32 23380
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %107 = and i32 %106, 16777216
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %120, label %109

109:                                              ; preds = %113, %103
  %110 = phi i32 [ %111, %113 ], [ 2000, %103 ]
  %111 = add nsw i32 %110, -1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %114(i32 noundef 10737400) #18
  %115 = load ptr, ptr %35, align 4
  %116 = getelementptr i8, ptr %115, i32 23380
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %118 = and i32 %117, 16777216
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %109

120:                                              ; preds = %113, %109, %103, %93
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %121 = load ptr, ptr %35, align 4
  %122 = getelementptr i8, ptr %121, i32 10272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %97) #18, !srcloc !12
  %123 = load ptr, ptr %35, align 4
  %124 = getelementptr i8, ptr %123, i32 8
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  br label %126

126:                                              ; preds = %120, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_lv_jumbo_workaround_ich8lan(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_reinit_locked(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 13
  %3 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %2) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %5, %1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #18
  %6 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %2) #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %5

8:                                                ; preds = %5, %1
  tail call void @e1000e_down(ptr noundef %0, i1 noundef zeroext true)
  tail call fastcc void @e1000_configure(ptr noundef %0) #18
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #18
  %9 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 76
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call fastcc void @e1000_configure_msix(ptr noundef %0) #18
  br label %13

13:                                               ; preds = %12, %8
  tail call fastcc void @e1000_irq_enable(ptr noundef %0) #18
  tail call fastcc void @e1000e_trigger_lsc(ptr noundef %0) #18
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %2) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @e1000e_read_systim(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %1) #18
  br label %5

5:                                                ; preds = %4, %2
  %6 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 46592
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  br i1 %3, label %12, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ptp_system_timestamp, ptr %1, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %11) #18
  br label %12

12:                                               ; preds = %10, %5
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr i8, ptr %13, i32 46596
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %16 = icmp ugt i32 %9, -16777217
  br i1 %16, label %17, label %31

17:                                               ; preds = %12
  br i1 %3, label %19, label %18

18:                                               ; preds = %17
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %1) #18
  br label %19

19:                                               ; preds = %18, %17
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr i8, ptr %20, i32 46592
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  br i1 %3, label %25, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ptp_system_timestamp, ptr %1, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %24) #18
  br label %25

25:                                               ; preds = %23, %19
  %26 = icmp ugt i32 %9, %22
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = load ptr, ptr %6, align 4
  %29 = getelementptr i8, ptr %28, i32 46596
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  br label %31

31:                                               ; preds = %27, %25, %12
  %32 = phi i32 [ %22, %27 ], [ %9, %25 ], [ %9, %12 ]
  %33 = phi i32 [ %30, %27 ], [ %15, %25 ], [ %15, %12 ]
  %34 = zext i32 %32 to i64
  %35 = zext i32 %33 to i64
  %36 = shl nuw i64 %35, 32
  %37 = or i64 %36, %34
  %38 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 85
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 16384
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %88, label %42

42:                                               ; preds = %31
  %43 = load ptr, ptr %6, align 4
  %44 = getelementptr i8, ptr %43, i32 46600
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %46 = and i32 %45, 16777215
  %47 = getelementptr inbounds %struct.ptp_system_timestamp, ptr %1, i32 0, i32 1
  %48 = icmp eq i32 %46, 0
  br label %49

49:                                               ; preds = %80, %42
  %50 = phi i64 [ %37, %42 ], [ %65, %80 ]
  %51 = phi i32 [ 0, %42 ], [ %85, %80 ]
  br i1 %3, label %53, label %52

52:                                               ; preds = %49
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %1) #18
  br label %53

53:                                               ; preds = %52, %49
  %54 = load ptr, ptr %6, align 4
  %55 = getelementptr i8, ptr %54, i32 46592
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %57 = zext i32 %56 to i64
  br i1 %3, label %59, label %58

58:                                               ; preds = %53
  tail call void @ktime_get_real_ts64(ptr noundef %47) #18
  br label %59

59:                                               ; preds = %58, %53
  %60 = load ptr, ptr %6, align 4
  %61 = getelementptr i8, ptr %60, i32 46596
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %63 = zext i32 %62 to i64
  %64 = shl nuw i64 %63, 32
  %65 = or i64 %64, %57
  %66 = sub i64 %65, %50
  br i1 %48, label %77, label %67

67:                                               ; preds = %59
  %68 = icmp ult i64 %66, 4294967296
  br i1 %68, label %69, label %72, !prof !13

69:                                               ; preds = %67
  %70 = trunc i64 %66 to i32
  %71 = urem i32 %70, %46
  br label %80

72:                                               ; preds = %67
  %73 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %46, i64 %66) #22, !srcloc !33
  %74 = extractvalue { i64, i64 } %73, 0
  %75 = lshr i64 %74, 32
  %76 = trunc i64 %75 to i32
  br label %80

77:                                               ; preds = %59
  %78 = icmp ne i64 %65, %50
  %79 = zext i1 %78 to i32
  br label %80

80:                                               ; preds = %77, %72, %69
  %81 = phi i32 [ %79, %77 ], [ %71, %69 ], [ %76, %72 ]
  %82 = icmp ult i64 %66, 34359738368
  %83 = icmp eq i32 %81, 0
  %84 = select i1 %82, i1 %83, i1 false
  %85 = add nuw nsw i32 %51, 1
  %86 = icmp eq i32 %85, 50
  %87 = select i1 %84, i1 true, i1 %86
  br i1 %87, label %88, label %49

88:                                               ; preds = %80, %31
  %89 = phi i64 [ %37, %31 ], [ %65, %80 ]
  ret i64 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_open(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 2528
  %4 = load ptr, ptr %3, align 32
  %5 = getelementptr i8, ptr %0, i32 2032
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %117

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %11 = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #18
  tail call void @netif_carrier_off(ptr noundef %0) #18
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %13 = load ptr, ptr %12, align 64
  %14 = getelementptr inbounds %struct.netdev_queue, ptr %13, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %14) #18
  %15 = getelementptr i8, ptr %0, i32 2048
  %16 = load ptr, ptr %15, align 64
  %17 = tail call i32 @e1000e_setup_tx_resources(ptr noundef %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %114

19:                                               ; preds = %9
  %20 = getelementptr i8, ptr %0, i32 2440
  %21 = load ptr, ptr %20, align 8
  %22 = tail call i32 @e1000e_setup_rx_resources(ptr noundef %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %99

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %0, i32 12584
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void @e1000e_get_hw_control(ptr noundef %2)
  tail call void @e1000e_reset(ptr noundef %2)
  br label %30

30:                                               ; preds = %29, %24
  %31 = getelementptr i8, ptr %0, i32 2532
  %32 = getelementptr i8, ptr %0, i32 3324
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void %33(ptr noundef %31) #18
  br label %36

36:                                               ; preds = %35, %30
  %37 = getelementptr i8, ptr %0, i32 2604
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 %38(ptr noundef %31) #18
  %40 = getelementptr i8, ptr %0, i32 2024
  store i16 -1, ptr %40, align 8
  %41 = getelementptr i8, ptr %0, i32 3472
  %42 = load i8, ptr %41, align 4
  %43 = and i8 %42, 2
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  tail call fastcc void @e1000_update_mng_vlan(ptr noundef %2)
  br label %46

46:                                               ; preds = %45, %36
  %47 = getelementptr i8, ptr %0, i32 12912
  tail call void @cpu_latency_qos_add_request(ptr noundef %47, i32 noundef -1) #18
  tail call fastcc void @e1000_configure(ptr noundef %2)
  %48 = tail call fastcc i32 @e1000_request_irq(ptr noundef %2)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = getelementptr i8, ptr %0, i32 12556
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = tail call fastcc i32 @e1000_test_msi(ptr noundef %2)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = getelementptr i8, ptr %0, i32 2524
  %59 = load ptr, ptr %58, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %59, ptr noundef nonnull @.str.9) #20
  br label %65

60:                                               ; preds = %54, %50
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %5) #18
  %61 = getelementptr i8, ptr %0, i32 2056
  tail call void @napi_enable(ptr noundef %61) #18
  tail call fastcc void @e1000_irq_enable(ptr noundef %2)
  %62 = getelementptr i8, ptr %0, i32 2289
  store i8 0, ptr %62, align 1
  %63 = getelementptr i8, ptr %0, i32 3212
  store i8 1, ptr %63, align 4
  %64 = tail call i32 @__pm_runtime_idle(ptr noundef %10, i32 noundef 5) #18
  tail call fastcc void @e1000e_trigger_lsc(ptr noundef %2)
  br label %117

65:                                               ; preds = %57, %46
  %66 = phi i32 [ %48, %46 ], [ %55, %57 ]
  tail call void @cpu_latency_qos_remove_request(ptr noundef %47) #18
  tail call void @e1000e_release_hw_control(ptr noundef %2)
  %67 = getelementptr i8, ptr %0, i32 3328
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  tail call void %68(ptr noundef %31) #18
  br label %71

71:                                               ; preds = %70, %65
  %72 = load ptr, ptr %20, align 8
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.e1000_adapter, ptr %73, i32 0, i32 64
  %75 = load ptr, ptr %74, align 32
  tail call fastcc void @e1000_clean_rx_ring(ptr noundef %72) #18
  %76 = getelementptr inbounds %struct.e1000_ring, ptr %72, i32 0, i32 4
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.e1000_ring, ptr %72, i32 0, i32 9
  br label %81

81:                                               ; preds = %81, %79
  %82 = phi i32 [ 0, %79 ], [ %86, %81 ]
  %83 = load ptr, ptr %80, align 4
  %84 = getelementptr %struct.e1000_buffer, ptr %83, i32 %82, i32 2
  %85 = load ptr, ptr %84, align 4
  tail call void @kfree(ptr noundef %85) #18
  %86 = add nuw i32 %82, 1
  %87 = load i32, ptr %76, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %81, label %89

89:                                               ; preds = %81, %71
  %90 = getelementptr inbounds %struct.e1000_ring, ptr %72, i32 0, i32 9
  %91 = load ptr, ptr %90, align 4
  tail call void @vfree(ptr noundef %91) #18
  store ptr null, ptr %90, align 4
  %92 = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  %93 = getelementptr inbounds %struct.e1000_ring, ptr %72, i32 0, i32 3
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.e1000_ring, ptr %72, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.e1000_ring, ptr %72, i32 0, i32 2
  %98 = load i32, ptr %97, align 4
  tail call void @dma_free_attrs(ptr noundef %92, i32 noundef %94, ptr noundef %96, i32 noundef %98, i32 noundef 0) #18
  store ptr null, ptr %95, align 4
  br label %99

99:                                               ; preds = %89, %19
  %100 = phi i32 [ %22, %19 ], [ %66, %89 ]
  %101 = load ptr, ptr %15, align 64
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.e1000_adapter, ptr %102, i32 0, i32 64
  %104 = load ptr, ptr %103, align 32
  tail call fastcc void @e1000_clean_tx_ring(ptr noundef %101) #18
  %105 = getelementptr inbounds %struct.e1000_ring, ptr %101, i32 0, i32 9
  %106 = load ptr, ptr %105, align 4
  tail call void @vfree(ptr noundef %106) #18
  store ptr null, ptr %105, align 4
  %107 = getelementptr inbounds %struct.pci_dev, ptr %104, i32 0, i32 44
  %108 = getelementptr inbounds %struct.e1000_ring, ptr %101, i32 0, i32 3
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr inbounds %struct.e1000_ring, ptr %101, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.e1000_ring, ptr %101, i32 0, i32 2
  %113 = load i32, ptr %112, align 4
  tail call void @dma_free_attrs(ptr noundef %107, i32 noundef %109, ptr noundef %111, i32 noundef %113, i32 noundef 0) #18
  store ptr null, ptr %110, align 4
  br label %114

114:                                              ; preds = %99, %9
  %115 = phi i32 [ %17, %9 ], [ %100, %99 ]
  tail call void @e1000e_reset(ptr noundef %2)
  %116 = tail call i32 @__pm_runtime_idle(ptr noundef %10, i32 noundef 4) #18
  br label %117

117:                                              ; preds = %114, %60, %1
  %118 = phi i32 [ %115, %114 ], [ 0, %60 ], [ -16, %1 ]
  ret i32 %118
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_add_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_request_irq(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 63
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 76
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %82, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @strlen(ptr noundef %3) #18
  %9 = icmp ult i32 %8, 11
  %10 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 48
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.e1000_ring, ptr %11, i32 0, i32 10
  br i1 %9, label %13, label %15

13:                                               ; preds = %7
  %14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %12, i32 noundef 20, ptr noundef nonnull @.str.26, ptr noundef %3) #18
  br label %16

15:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %12, ptr noundef align 64 dereferenceable(16) %3, i32 16, i1 false) #18
  br label %16

16:                                               ; preds = %15, %13
  %17 = load ptr, ptr %4, align 8
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %10, align 8
  %20 = getelementptr inbounds %struct.e1000_ring, ptr %19, i32 0, i32 10
  %21 = tail call i32 @request_threaded_irq(i32 noundef %18, ptr noundef nonnull @e1000_intr_msix_rx, ptr noundef null, i32 noundef 0, ptr noundef %20, ptr noundef %3) #18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %63

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 232
  %27 = load ptr, ptr %10, align 8
  %28 = getelementptr inbounds %struct.e1000_ring, ptr %27, i32 0, i32 13
  store ptr %26, ptr %28, align 4
  %29 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 14
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %10, align 8
  %32 = getelementptr inbounds %struct.e1000_ring, ptr %31, i32 0, i32 12
  store i32 %30, ptr %32, align 4
  %33 = tail call i32 @strlen(ptr noundef %3) #18
  %34 = icmp ult i32 %33, 11
  %35 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 18
  %36 = load ptr, ptr %35, align 64
  %37 = getelementptr inbounds %struct.e1000_ring, ptr %36, i32 0, i32 10
  br i1 %34, label %38, label %40

38:                                               ; preds = %23
  %39 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %37, i32 noundef 20, ptr noundef nonnull @.str.27, ptr noundef %3) #18
  br label %41

40:                                               ; preds = %23
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %37, ptr noundef align 64 dereferenceable(16) %3, i32 16, i1 false) #18
  br label %41

41:                                               ; preds = %40, %38
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr %struct.msix_entry, ptr %42, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %35, align 64
  %46 = getelementptr inbounds %struct.e1000_ring, ptr %45, i32 0, i32 10
  %47 = tail call i32 @request_threaded_irq(i32 noundef %44, ptr noundef nonnull @e1000_intr_msix_tx, ptr noundef null, i32 noundef 0, ptr noundef %46, ptr noundef %3) #18
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %41
  %50 = load ptr, ptr %24, align 4
  %51 = getelementptr i8, ptr %50, i32 236
  %52 = load ptr, ptr %35, align 64
  %53 = getelementptr inbounds %struct.e1000_ring, ptr %52, i32 0, i32 13
  store ptr %51, ptr %53, align 4
  %54 = load i32, ptr %29, align 4
  %55 = load ptr, ptr %35, align 64
  %56 = getelementptr inbounds %struct.e1000_ring, ptr %55, i32 0, i32 12
  store i32 %54, ptr %56, align 4
  %57 = load ptr, ptr %4, align 8
  %58 = getelementptr %struct.msix_entry, ptr %57, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = tail call i32 @request_threaded_irq(i32 noundef %59, ptr noundef nonnull @e1000_msix_other, ptr noundef null, i32 noundef 0, ptr noundef %3, ptr noundef %3) #18
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  tail call fastcc void @e1000_configure_msix(ptr noundef %0) #18
  br label %119

63:                                               ; preds = %49, %41, %16
  %64 = load ptr, ptr %4, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %68 = load ptr, ptr %67, align 32
  tail call void @pci_disable_msix(ptr noundef %68) #18
  %69 = load ptr, ptr %4, align 8
  tail call void @kfree(ptr noundef %69) #18
  store ptr null, ptr %4, align 8
  br label %80

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 84
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 134217728
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %77 = load ptr, ptr %76, align 32
  tail call void @pci_disable_msi(ptr noundef %77) #18
  %78 = load i32, ptr %71, align 8
  %79 = and i32 %78, -134217729
  store i32 %79, ptr %71, align 8
  br label %80

80:                                               ; preds = %75, %70, %66
  %81 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 77
  store i32 1, ptr %81, align 4
  tail call void @e1000e_set_interrupt_capability(ptr noundef %0)
  br label %82

82:                                               ; preds = %80, %1
  %83 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 84
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 134217728
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %110, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %89 = load ptr, ptr %88, align 32
  %90 = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 46
  %91 = load i32, ptr %90, align 4
  %92 = tail call i32 @request_threaded_irq(i32 noundef %91, ptr noundef nonnull @e1000_intr_msi, ptr noundef null, i32 noundef 0, ptr noundef %3, ptr noundef %3) #18
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %119, label %94

94:                                               ; preds = %87
  %95 = load ptr, ptr %4, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %88, align 32
  tail call void @pci_disable_msix(ptr noundef %98) #18
  %99 = load ptr, ptr %4, align 8
  tail call void @kfree(ptr noundef %99) #18
  store ptr null, ptr %4, align 8
  br label %108

100:                                              ; preds = %94
  %101 = load i32, ptr %83, align 8
  %102 = and i32 %101, 134217728
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr %88, align 32
  tail call void @pci_disable_msi(ptr noundef %105) #18
  %106 = load i32, ptr %83, align 8
  %107 = and i32 %106, -134217729
  store i32 %107, ptr %83, align 8
  br label %108

108:                                              ; preds = %104, %100, %97
  %109 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 77
  store i32 0, ptr %109, align 4
  br label %110

110:                                              ; preds = %108, %82
  %111 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %112 = load ptr, ptr %111, align 32
  %113 = getelementptr inbounds %struct.pci_dev, ptr %112, i32 0, i32 46
  %114 = load i32, ptr %113, align 4
  %115 = tail call i32 @request_threaded_irq(i32 noundef %114, ptr noundef nonnull @e1000_intr, ptr noundef null, i32 noundef 128, ptr noundef %3, ptr noundef %3) #18
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %110
  %118 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %118, ptr noundef nonnull @.str.25, i32 noundef %115) #20
  br label %119

119:                                              ; preds = %117, %110, %87, %62
  %120 = phi i32 [ 0, %62 ], [ 0, %87 ], [ %115, %117 ], [ 0, %110 ]
  ret i32 %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_test_msi(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #18
  store i16 0, ptr %2, align 2, !annotation !19
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 84
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 134217728
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %125, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %9 = load ptr, ptr %8, align 32
  %10 = call i32 @pci_read_config_word(ptr noundef %9, i32 noundef 4, ptr noundef nonnull %2) #18
  %11 = load i16, ptr %2, align 2
  %12 = and i16 %11, 256
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr %8, align 32
  %16 = and i16 %11, -257
  %17 = call i32 @pci_write_config_word(ptr noundef %15, i32 noundef 4, i16 noundef zeroext %16) #18
  br label %18

18:                                               ; preds = %14, %7
  %19 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 63
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %22 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 192
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %26 = load ptr, ptr %19, align 4
  %27 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 76
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %18
  %31 = load i32, ptr %28, align 4
  %32 = call ptr @free_irq(i32 noundef %31, ptr noundef %26) #18
  %33 = load ptr, ptr %27, align 8
  %34 = getelementptr %struct.msix_entry, ptr %33, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = call ptr @free_irq(i32 noundef %35, ptr noundef %26) #18
  %37 = load ptr, ptr %27, align 8
  %38 = getelementptr %struct.msix_entry, ptr %37, i32 2
  br label %42

39:                                               ; preds = %18
  %40 = load ptr, ptr %8, align 32
  %41 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 46
  br label %42

42:                                               ; preds = %39, %30
  %43 = phi ptr [ %41, %39 ], [ %38, %30 ]
  %44 = load i32, ptr %43, align 4
  %45 = call ptr @free_irq(i32 noundef %44, ptr noundef %26) #18
  %46 = load ptr, ptr %27, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr %8, align 32
  call void @pci_disable_msix(ptr noundef %49) #18
  %50 = load ptr, ptr %27, align 8
  call void @kfree(ptr noundef %50) #18
  store ptr null, ptr %27, align 8
  %51 = load i32, ptr %3, align 8
  br label %60

52:                                               ; preds = %42
  %53 = load i32, ptr %3, align 8
  %54 = and i32 %53, 134217728
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %8, align 32
  call void @pci_disable_msi(ptr noundef %57) #18
  %58 = load i32, ptr %3, align 8
  %59 = and i32 %58, -134217729
  br label %60

60:                                               ; preds = %56, %52, %48
  %61 = phi i32 [ %51, %48 ], [ %53, %52 ], [ %59, %56 ]
  %62 = or i32 %61, -2147483648
  store i32 %62, ptr %3, align 8
  %63 = load ptr, ptr %8, align 32
  %64 = call i32 @pci_enable_msi(ptr noundef %63) #18
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %113

66:                                               ; preds = %60
  %67 = load ptr, ptr %8, align 32
  %68 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 46
  %69 = load i32, ptr %68, align 4
  %70 = call i32 @request_threaded_irq(i32 noundef %69, ptr noundef nonnull @e1000_intr_msi_test, ptr noundef null, i32 noundef 0, ptr noundef %20, ptr noundef %20) #18
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %111

72:                                               ; preds = %66
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !34
  call void @arm_heavy_mb() #18
  call fastcc void @e1000_irq_enable(ptr noundef %0) #18
  %73 = load ptr, ptr %21, align 4
  %74 = getelementptr inbounds %struct.e1000_adapter, ptr %73, i32 0, i32 85
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 2048
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %95, label %78

78:                                               ; preds = %72
  %79 = load ptr, ptr %22, align 4
  %80 = getelementptr i8, ptr %79, i32 23380
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %82 = and i32 %81, 16777216
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %88, %78
  %85 = phi i32 [ %86, %88 ], [ 2000, %78 ]
  %86 = add nsw i32 %85, -1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %89(i32 noundef 10737400) #18
  %90 = load ptr, ptr %22, align 4
  %91 = getelementptr i8, ptr %90, i32 23380
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %93 = and i32 %92, 16777216
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %84

95:                                               ; preds = %88, %84, %78, %72
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %96 = load ptr, ptr %22, align 4
  %97 = getelementptr i8, ptr %96, i32 200
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 8) #18, !srcloc !12
  %98 = load ptr, ptr %22, align 4
  %99 = getelementptr i8, ptr %98, i32 8
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  call void @msleep(i32 noundef 100) #18
  call fastcc void @e1000_irq_disable(ptr noundef %0) #18
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !35
  %101 = load i32, ptr %3, align 8
  %102 = icmp sgt i32 %101, -1
  br i1 %102, label %106, label %103

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 77
  store i32 0, ptr %104, align 4
  %105 = load ptr, ptr %19, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %105, ptr noundef nonnull @.str.28) #20
  br label %106

106:                                              ; preds = %103, %95
  %107 = load ptr, ptr %8, align 32
  %108 = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 46
  %109 = load i32, ptr %108, align 4
  %110 = call ptr @free_irq(i32 noundef %109, ptr noundef %20) #18
  br label %111

111:                                              ; preds = %106, %66
  %112 = load ptr, ptr %8, align 32
  call void @pci_disable_msi(ptr noundef %112) #18
  br label %113

113:                                              ; preds = %111, %60
  call void @e1000e_set_interrupt_capability(ptr noundef %0) #18
  %114 = call fastcc i32 @e1000_request_irq(ptr noundef %0) #18
  %115 = load i16, ptr %2, align 2
  %116 = and i16 %115, 256
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %113
  %119 = load ptr, ptr %8, align 32
  %120 = call i32 @pci_read_config_word(ptr noundef %119, i32 noundef 4, ptr noundef nonnull %2) #18
  %121 = load i16, ptr %2, align 2
  %122 = or i16 %121, 256
  store i16 %122, ptr %2, align 2
  %123 = load ptr, ptr %8, align 32
  %124 = call i32 @pci_write_config_word(ptr noundef %123, i32 noundef 4, i16 noundef zeroext %122) #18
  br label %125

125:                                              ; preds = %118, %113, %1
  %126 = phi i32 [ 0, %1 ], [ %114, %118 ], [ %114, %113 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #18
  ret i32 %126
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_remove_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @e1000e_close(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 2528
  %4 = load ptr, ptr %3, align 32
  %5 = getelementptr i8, ptr %0, i32 2032
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %1
  %10 = phi i32 [ %11, %9 ], [ 25, %1 ]
  %11 = add nsw i32 %10, -1
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #18
  %12 = load volatile i32, ptr %5, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  %15 = icmp eq i32 %11, 0
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %1
  %18 = load volatile i32, ptr %5, align 4
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21, !prof !13

21:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 4732, i32 noundef 9, ptr noundef null) #18
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %24 = tail call i32 @__pm_runtime_resume(ptr noundef %23, i32 noundef 4) #18
  %25 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %22
  tail call void @e1000e_down(ptr noundef %2, i1 noundef zeroext true)
  %30 = getelementptr i8, ptr %0, i32 2524
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %0, i32 12552
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %29
  %36 = load i32, ptr %33, align 4
  %37 = tail call ptr @free_irq(i32 noundef %36, ptr noundef %31) #18
  %38 = load ptr, ptr %32, align 8
  %39 = getelementptr %struct.msix_entry, ptr %38, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = tail call ptr @free_irq(i32 noundef %40, ptr noundef %31) #18
  %42 = load ptr, ptr %32, align 8
  %43 = getelementptr %struct.msix_entry, ptr %42, i32 2
  br label %47

44:                                               ; preds = %29
  %45 = load ptr, ptr %3, align 32
  %46 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 46
  br label %47

47:                                               ; preds = %44, %35
  %48 = phi ptr [ %46, %44 ], [ %43, %35 ]
  %49 = load i32, ptr %48, align 4
  %50 = tail call ptr @free_irq(i32 noundef %49, ptr noundef %31) #18
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %0, ptr noundef nonnull @.str.11) #20
  br label %51

51:                                               ; preds = %47, %22
  %52 = getelementptr i8, ptr %0, i32 2056
  tail call void @napi_disable(ptr noundef %52) #18
  %53 = getelementptr i8, ptr %0, i32 2048
  %54 = load ptr, ptr %53, align 64
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.e1000_adapter, ptr %55, i32 0, i32 64
  %57 = load ptr, ptr %56, align 32
  tail call fastcc void @e1000_clean_tx_ring(ptr noundef %54) #18
  %58 = getelementptr inbounds %struct.e1000_ring, ptr %54, i32 0, i32 9
  %59 = load ptr, ptr %58, align 4
  tail call void @vfree(ptr noundef %59) #18
  store ptr null, ptr %58, align 4
  %60 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %61 = getelementptr inbounds %struct.e1000_ring, ptr %54, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.e1000_ring, ptr %54, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.e1000_ring, ptr %54, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  tail call void @dma_free_attrs(ptr noundef %60, i32 noundef %62, ptr noundef %64, i32 noundef %66, i32 noundef 0) #18
  store ptr null, ptr %63, align 4
  %67 = getelementptr i8, ptr %0, i32 2440
  %68 = load ptr, ptr %67, align 8
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.e1000_adapter, ptr %69, i32 0, i32 64
  %71 = load ptr, ptr %70, align 32
  tail call fastcc void @e1000_clean_rx_ring(ptr noundef %68) #18
  %72 = getelementptr inbounds %struct.e1000_ring, ptr %68, i32 0, i32 4
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %51
  %76 = getelementptr inbounds %struct.e1000_ring, ptr %68, i32 0, i32 9
  br label %77

77:                                               ; preds = %77, %75
  %78 = phi i32 [ 0, %75 ], [ %82, %77 ]
  %79 = load ptr, ptr %76, align 4
  %80 = getelementptr %struct.e1000_buffer, ptr %79, i32 %78, i32 2
  %81 = load ptr, ptr %80, align 4
  tail call void @kfree(ptr noundef %81) #18
  %82 = add nuw i32 %78, 1
  %83 = load i32, ptr %72, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %77, label %85

85:                                               ; preds = %77, %51
  %86 = getelementptr inbounds %struct.e1000_ring, ptr %68, i32 0, i32 9
  %87 = load ptr, ptr %86, align 4
  tail call void @vfree(ptr noundef %87) #18
  store ptr null, ptr %86, align 4
  %88 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  %89 = getelementptr inbounds %struct.e1000_ring, ptr %68, i32 0, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.e1000_ring, ptr %68, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.e1000_ring, ptr %68, i32 0, i32 2
  %94 = load i32, ptr %93, align 4
  tail call void @dma_free_attrs(ptr noundef %88, i32 noundef %90, ptr noundef %92, i32 noundef %94, i32 noundef 0) #18
  store ptr null, ptr %91, align 4
  %95 = getelementptr i8, ptr %0, i32 3472
  %96 = load i8, ptr %95, align 4
  %97 = and i8 %96, 2
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %85
  tail call void @e1000e_release_hw_control(ptr noundef %2) #18
  br label %100

100:                                              ; preds = %99, %85
  %101 = getelementptr i8, ptr %0, i32 12584
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load volatile i32, ptr %5, align 4
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  tail call void @e1000e_release_hw_control(ptr noundef %2)
  br label %110

110:                                              ; preds = %109, %105, %100
  %111 = getelementptr i8, ptr %0, i32 12912
  tail call void @cpu_latency_qos_remove_request(ptr noundef %111) #18
  %112 = tail call i32 @__pm_runtime_idle(ptr noundef %23, i32 noundef 4) #18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_vlan_rx_kill_vid(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 2532
  %6 = getelementptr i8, ptr %0, i32 3472
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 2
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %0, i32 2024
  %12 = load i16, ptr %11, align 8
  %13 = icmp eq i16 %12, %2
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @e1000e_release_hw_control(ptr noundef %4)
  br label %38

15:                                               ; preds = %10, %3
  %16 = getelementptr i8, ptr %0, i32 12584
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i16 %2 to i32
  br i1 %19, label %36, label %21

21:                                               ; preds = %15
  %22 = lshr i32 %20, 5
  %23 = and i32 %22, 127
  %24 = getelementptr i8, ptr %0, i32 2536
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 22016
  %27 = shl nuw nsw i32 %23, 2
  %28 = getelementptr i8, ptr %26, i32 %27
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !24
  %30 = and i32 %20, 31
  %31 = shl nuw i32 1, %30
  %32 = xor i32 %31, -1
  %33 = and i32 %29, %32
  %34 = getelementptr i8, ptr %0, i32 2616
  %35 = load ptr, ptr %34, align 4
  tail call void %35(ptr noundef %5, i32 noundef %23, i32 noundef %33) #18
  br label %36

36:                                               ; preds = %21, %15
  %37 = getelementptr i8, ptr %0, i32 1504
  tail call void @_clear_bit(i32 noundef %20, ptr noundef %37) #18
  br label %38

38:                                               ; preds = %36, %14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @e1000e_get_stats64(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 11688
  tail call void @_raw_spin_lock(ptr noundef %4) #18
  tail call fastcc void @e1000e_update_stats(ptr noundef %3)
  %5 = getelementptr i8, ptr %0, i32 11696
  %6 = getelementptr i8, ptr %0, i32 11936
  %7 = load i64, ptr %6, align 16
  %8 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 2
  store i64 %7, ptr %8, align 8
  %9 = getelementptr i8, ptr %0, i32 11904
  %10 = load i64, ptr %9, align 16
  store i64 %10, ptr %1, align 8
  %11 = getelementptr i8, ptr %0, i32 11944
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 3
  store i64 %12, ptr %13, align 8
  %14 = getelementptr i8, ptr %0, i32 11928
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 1
  store i64 %15, ptr %16, align 8
  %17 = getelementptr i8, ptr %0, i32 11920
  %18 = load i64, ptr %17, align 16
  %19 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 8
  store i64 %18, ptr %19, align 8
  %20 = getelementptr i8, ptr %0, i32 11768
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 9
  store i64 %21, ptr %22, align 8
  %23 = getelementptr i8, ptr %0, i32 11720
  %24 = load i64, ptr %23, align 8
  %25 = load i64, ptr %5, align 16
  %26 = add i64 %25, %24
  %27 = getelementptr i8, ptr %0, i32 11704
  %28 = load i64, ptr %27, align 8
  %29 = add i64 %26, %28
  %30 = getelementptr i8, ptr %0, i32 11960
  %31 = load i64, ptr %30, align 8
  %32 = add i64 %29, %31
  %33 = getelementptr i8, ptr %0, i32 11976
  %34 = load i64, ptr %33, align 8
  %35 = add i64 %32, %34
  %36 = getelementptr i8, ptr %0, i32 11800
  %37 = load i64, ptr %36, align 8
  %38 = add i64 %35, %37
  %39 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 4
  store i64 %38, ptr %39, align 8
  %40 = load i64, ptr %30, align 8
  %41 = load i64, ptr %33, align 8
  %42 = add i64 %41, %40
  %43 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 10
  store i64 %42, ptr %43, align 8
  %44 = load i64, ptr %5, align 16
  %45 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 12
  store i64 %44, ptr %45, align 8
  %46 = load i64, ptr %27, align 8
  %47 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 13
  store i64 %46, ptr %47, align 8
  %48 = getelementptr i8, ptr %0, i32 11728
  %49 = load i64, ptr %48, align 16
  %50 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 15
  store i64 %49, ptr %50, align 8
  %51 = getelementptr i8, ptr %0, i32 11744
  %52 = load i64, ptr %51, align 16
  %53 = getelementptr i8, ptr %0, i32 11760
  %54 = load i64, ptr %53, align 16
  %55 = add i64 %54, %52
  %56 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 5
  store i64 %55, ptr %56, align 8
  %57 = load i64, ptr %51, align 16
  %58 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 16
  store i64 %57, ptr %58, align 8
  %59 = load i64, ptr %53, align 16
  %60 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 20
  store i64 %59, ptr %60, align 8
  %61 = getelementptr i8, ptr %0, i32 11784
  %62 = load i64, ptr %61, align 8
  %63 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %1, i32 0, i32 17
  store i64 %62, ptr %63, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !29
  %64 = load i16, ptr %4, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !32
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @e1000_init_module() #5 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #20
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #20
  %3 = tail call i32 @__pci_register_driver(ptr noundef nonnull @e1000_driver, ptr noundef null, ptr noundef nonnull @.str.31) #18
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @e1000_exit_module() #5 section ".exit.text" {
  tail call void @pci_unregister_driver(ptr noundef nonnull @e1000_driver) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @e1000_clean_rx_irq(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 63
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 6
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %union.e1000_rx_desc_extended, ptr %11, i32 %9
  %13 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 9
  %14 = getelementptr inbounds %struct.anon.150, ptr %12, i32 0, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %170, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 64
  %20 = load ptr, ptr %19, align 32
  %21 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 4
  %22 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %23 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 8
  %24 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 85
  %25 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 23
  %26 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 20
  %27 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 51
  %28 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 52
  %29 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 47
  %30 = load i32, ptr %1, align 4
  %31 = icmp slt i32 %30, %2
  br i1 %31, label %32, label %170

32:                                               ; preds = %18
  %33 = load ptr, ptr %13, align 4
  %34 = getelementptr %struct.e1000_buffer, ptr %33, i32 %9
  br label %38

35:                                               ; preds = %164
  %36 = load i32, ptr %1, align 4
  %37 = icmp slt i32 %36, %2
  br i1 %37, label %38, label %170

38:                                               ; preds = %35, %32
  %39 = phi i32 [ %30, %32 ], [ %36, %35 ]
  %40 = phi ptr [ %12, %32 ], [ %58, %35 ]
  %41 = phi ptr [ %34, %32 ], [ %60, %35 ]
  %42 = phi i32 [ %9, %32 ], [ %56, %35 ]
  %43 = phi i32 [ 0, %32 ], [ %165, %35 ]
  %44 = phi i32 [ 0, %32 ], [ %157, %35 ]
  %45 = phi i32 [ 0, %32 ], [ %158, %35 ]
  %46 = phi i32 [ %15, %32 ], [ %167, %35 ]
  %47 = add nsw i32 %39, 1
  store i32 %47, ptr %1, align 4
  tail call void asm sideeffect "dmb osh", "~{memory}"() #18, !srcloc !36
  %48 = getelementptr inbounds %struct.e1000_buffer, ptr %41, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  store ptr null, ptr %48, align 4
  %50 = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 17
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 -2
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %52) #18, !srcloc !37
  %53 = add i32 %42, 1
  %54 = load i32, ptr %21, align 4
  %55 = icmp eq i32 %53, %54
  %56 = select i1 %55, i32 0, i32 %53
  %57 = load ptr, ptr %10, align 4
  %58 = getelementptr %union.e1000_rx_desc_extended, ptr %57, i32 %56
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %58) #18, !srcloc !37
  %59 = load ptr, ptr %13, align 4
  %60 = getelementptr %struct.e1000_buffer, ptr %59, i32 %56
  %61 = add nsw i32 %43, 1
  %62 = load i32, ptr %41, align 4
  %63 = load i32, ptr %23, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %22, i32 noundef %62, i32 noundef %63, i32 noundef 2, i32 noundef 0) #18
  store i32 0, ptr %41, align 4
  %64 = getelementptr inbounds %struct.anon.150, ptr %40, i32 0, i32 1
  %65 = getelementptr inbounds %struct.anon.150, ptr %40, i32 0, i32 1, i32 1
  %66 = load i16, ptr %65, align 4
  %67 = zext i16 %66 to i32
  %68 = and i32 %46, 2
  %69 = icmp eq i32 %68, 0
  %70 = load i32, ptr %24, align 4
  br i1 %69, label %71, label %73, !prof !38

71:                                               ; preds = %38
  %72 = or i32 %70, 4
  store i32 %72, ptr %24, align 4
  store ptr %49, ptr %48, align 4
  br label %156

73:                                               ; preds = %38
  %74 = and i32 %70, 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  store ptr %49, ptr %48, align 4
  %77 = load i32, ptr %24, align 4
  %78 = and i32 %77, -5
  store i32 %78, ptr %24, align 4
  br label %156

79:                                               ; preds = %73
  %80 = and i32 %46, -1761607680
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = load i64, ptr %25, align 16
  %84 = and i64 %83, 17592186044416
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87, !prof !38

86:                                               ; preds = %82
  store ptr %49, ptr %48, align 4
  br label %156

87:                                               ; preds = %82, %79
  %88 = and i32 %70, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load i64, ptr %25, align 16
  %92 = and i64 %91, 8796093022208
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = add i32 %44, -4
  br label %98

96:                                               ; preds = %90
  %97 = add nsw i32 %67, -4
  br label %98

98:                                               ; preds = %96, %94, %87
  %99 = phi i32 [ %67, %87 ], [ %67, %94 ], [ %97, %96 ]
  %100 = phi i32 [ %44, %87 ], [ %95, %94 ], [ %44, %96 ]
  %101 = add i32 %100, %99
  %102 = add i32 %45, 1
  %103 = load i32, ptr @copybreak, align 4
  %104 = icmp ult i32 %99, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %98
  %106 = tail call ptr @__napi_alloc_skb(ptr noundef %26, i32 noundef %99, i32 noundef 2592) #18
  %107 = icmp eq ptr %106, null
  br i1 %107, label %115, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr %50, align 4
  %110 = getelementptr i8, ptr %109, i32 -2
  %111 = add nsw i32 %99, 2
  %112 = getelementptr inbounds %struct.sk_buff, ptr %106, i32 0, i32 17
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr i8, ptr %113, i32 -2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %114, ptr align 1 %110, i32 %111, i1 false) #18
  store ptr %49, ptr %48, align 4
  br label %115

115:                                              ; preds = %108, %105, %98
  %116 = phi ptr [ %49, %98 ], [ %106, %108 ], [ %49, %105 ]
  %117 = tail call ptr @skb_put(ptr noundef %116, i32 noundef %99) #18
  %118 = load ptr, ptr %5, align 4
  %119 = getelementptr inbounds %struct.net_device, ptr %118, i32 0, i32 23
  %120 = load i64, ptr %119, align 16
  %121 = and i64 %120, 1099511627776
  %122 = icmp ne i64 %121, 0
  %123 = and i32 %46, 4
  %124 = icmp eq i32 %123, 0
  %125 = and i1 %124, %122
  br i1 %125, label %126, label %142

126:                                              ; preds = %115
  %127 = and i32 %46, 1610612736
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i64, ptr %27, align 8
  %131 = add i64 %130, 1
  store i64 %131, ptr %27, align 8
  br label %142

132:                                              ; preds = %126
  %133 = and i32 %46, 48
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.sk_buff, ptr %116, i32 0, i32 13
  %137 = load i16, ptr %136, align 8
  %138 = and i16 %137, -97
  %139 = or i16 %138, 32
  store i16 %139, ptr %136, align 8
  %140 = load i64, ptr %28, align 32
  %141 = add i64 %140, 1
  store i64 %141, ptr %28, align 32
  br label %142

142:                                              ; preds = %135, %132, %129, %115
  %143 = load i64, ptr %25, align 16
  %144 = and i64 %143, 549755813888
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.anon.151, ptr %40, i32 0, i32 1
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr inbounds %struct.sk_buff, ptr %116, i32 0, i32 13
  %150 = load i16, ptr %149, align 8
  %151 = and i16 %150, -769
  store i16 %151, ptr %149, align 8
  %152 = getelementptr inbounds %struct.sk_buff, ptr %116, i32 0, i32 13, i32 0, i32 7
  store i32 %148, ptr %152, align 8
  br label %153

153:                                              ; preds = %146, %142
  %154 = getelementptr inbounds %struct.anon.150, ptr %40, i32 0, i32 1, i32 2
  %155 = load i16, ptr %154, align 2
  tail call fastcc void @e1000_receive_skb(ptr noundef %4, ptr noundef %6, ptr noundef %116, i32 noundef %46, i16 noundef zeroext %155)
  br label %156

156:                                              ; preds = %153, %86, %76, %71
  %157 = phi i32 [ %44, %76 ], [ %44, %71 ], [ %44, %86 ], [ %101, %153 ]
  %158 = phi i32 [ %45, %76 ], [ %45, %71 ], [ %45, %86 ], [ %102, %153 ]
  %159 = load i32, ptr %64, align 8
  %160 = and i32 %159, -256
  store i32 %160, ptr %64, align 8
  %161 = icmp sgt i32 %43, 14
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = load ptr, ptr %29, align 4
  tail call void %163(ptr noundef %0, i32 noundef %61, i32 noundef 2592) #18
  br label %164

164:                                              ; preds = %162, %156
  %165 = phi i32 [ 0, %162 ], [ %61, %156 ]
  %166 = getelementptr inbounds %struct.anon.150, ptr %58, i32 0, i32 1
  %167 = load i32, ptr %166, align 8
  %168 = and i32 %167, 1
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %35

170:                                              ; preds = %164, %35, %18, %3
  %171 = phi i32 [ %9, %3 ], [ %9, %18 ], [ %56, %164 ], [ %56, %35 ]
  %172 = phi i1 [ false, %3 ], [ %31, %18 ], [ %31, %164 ], [ %31, %35 ]
  %173 = phi i32 [ 0, %3 ], [ 0, %18 ], [ %157, %164 ], [ %157, %35 ]
  %174 = phi i32 [ 0, %3 ], [ 0, %18 ], [ %158, %164 ], [ %158, %35 ]
  %175 = trunc i32 %171 to i16
  store i16 %175, ptr %7, align 2
  %176 = and i32 %171, 65535
  %177 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 5
  %178 = load i16, ptr %177, align 4
  %179 = zext i16 %178 to i32
  %180 = icmp ult i16 %178, %175
  br i1 %180, label %181, label %184

181:                                              ; preds = %170
  %182 = xor i32 %179, -1
  %183 = add nsw i32 %176, %182
  br label %190

184:                                              ; preds = %170
  %185 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 4
  %186 = load i32, ptr %185, align 4
  %187 = xor i32 %179, -1
  %188 = add nsw i32 %176, %187
  %189 = add i32 %188, %186
  br label %190

190:                                              ; preds = %184, %181
  %191 = phi i32 [ %183, %181 ], [ %189, %184 ]
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 47
  %195 = load ptr, ptr %194, align 4
  tail call void %195(ptr noundef %0, i32 noundef %191, i32 noundef 2592) #18
  br label %196

196:                                              ; preds = %193, %190
  %197 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 32
  %198 = load i32, ptr %197, align 4
  %199 = add i32 %198, %173
  store i32 %199, ptr %197, align 4
  %200 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 33
  %201 = load i32, ptr %200, align 8
  %202 = add i32 %201, %174
  store i32 %202, ptr %200, align 8
  ret i1 %172
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @e1000_clean_jumbo_rx_irq(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 63
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 6
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %union.e1000_rx_desc_extended, ptr %11, i32 %9
  %13 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 9
  %14 = getelementptr inbounds %struct.anon.150, ptr %12, i32 0, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %348, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 64
  %20 = load ptr, ptr %19, align 32
  %21 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 4
  %22 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %23 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 23
  %24 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 15
  %25 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 51
  %26 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 52
  %27 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 47
  %28 = load i32, ptr %1, align 4
  %29 = icmp slt i32 %28, %2
  br i1 %29, label %30, label %348

30:                                               ; preds = %18
  %31 = load ptr, ptr %13, align 4
  %32 = getelementptr %struct.e1000_buffer, ptr %31, i32 %9
  br label %36

33:                                               ; preds = %342
  %34 = load i32, ptr %1, align 4
  %35 = icmp slt i32 %34, %2
  br i1 %35, label %36, label %348

36:                                               ; preds = %33, %30
  %37 = phi i32 [ %28, %30 ], [ %34, %33 ]
  %38 = phi ptr [ %12, %30 ], [ %53, %33 ]
  %39 = phi ptr [ %32, %30 ], [ %55, %33 ]
  %40 = phi i32 [ %9, %30 ], [ %51, %33 ]
  %41 = phi i32 [ 0, %30 ], [ %343, %33 ]
  %42 = phi i32 [ 0, %30 ], [ %335, %33 ]
  %43 = phi i32 [ 0, %30 ], [ %336, %33 ]
  %44 = phi i32 [ %15, %30 ], [ %345, %33 ]
  %45 = add nsw i32 %37, 1
  store i32 %45, ptr %1, align 4
  tail call void asm sideeffect "dmb osh", "~{memory}"() #18, !srcloc !39
  %46 = getelementptr inbounds %struct.e1000_buffer, ptr %39, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  store ptr null, ptr %46, align 4
  %48 = add i32 %40, 1
  %49 = load i32, ptr %21, align 4
  %50 = icmp eq i32 %48, %49
  %51 = select i1 %50, i32 0, i32 %48
  %52 = load ptr, ptr %10, align 4
  %53 = getelementptr %union.e1000_rx_desc_extended, ptr %52, i32 %51
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %53) #18, !srcloc !37
  %54 = load ptr, ptr %13, align 4
  %55 = getelementptr %struct.e1000_buffer, ptr %54, i32 %51
  %56 = add nsw i32 %41, 1
  %57 = load i32, ptr %39, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %22, i32 noundef %57, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #18
  store i32 0, ptr %39, align 4
  %58 = getelementptr inbounds %struct.anon.150, ptr %38, i32 0, i32 1
  %59 = getelementptr inbounds %struct.anon.150, ptr %38, i32 0, i32 1, i32 1
  %60 = load i16, ptr %59, align 4
  %61 = zext i16 %60 to i32
  %62 = and i32 %44, 2
  %63 = icmp eq i32 %62, 0
  %64 = and i32 %44, -1761607680
  %65 = icmp eq i32 %64, 0
  %66 = or i1 %63, %65
  br i1 %66, label %76, label %67

67:                                               ; preds = %36
  %68 = load i64, ptr %23, align 16
  %69 = and i64 %68, 17592186044416
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %76, !prof !38

71:                                               ; preds = %67
  store ptr %47, ptr %46, align 4
  %72 = load ptr, ptr %24, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %72, i32 noundef 1) #18
  br label %75

75:                                               ; preds = %74, %71
  store ptr null, ptr %24, align 4
  br label %334

76:                                               ; preds = %67, %36
  %77 = load ptr, ptr %24, align 4
  %78 = icmp eq ptr %77, null
  br i1 %63, label %79, label %158

79:                                               ; preds = %76
  br i1 %78, label %80, label %111

80:                                               ; preds = %79
  store ptr %47, ptr %24, align 4
  %81 = getelementptr inbounds %struct.e1000_buffer, ptr %39, i32 0, i32 2, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 15
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr %struct.skb_shared_info, ptr %84, i32 0, i32 12, i32 0
  store ptr %82, ptr %85, align 4
  %86 = getelementptr %struct.skb_shared_info, ptr %84, i32 0, i32 12, i32 0, i32 2
  store i32 0, ptr %86, align 4
  %87 = getelementptr %struct.skb_shared_info, ptr %84, i32 0, i32 12, i32 0, i32 1
  store i32 %61, ptr %87, align 4
  %88 = getelementptr inbounds %struct.page, ptr %82, i32 0, i32 1
  %89 = load volatile i32, ptr %88, align 4
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92, !prof !13

92:                                               ; preds = %80
  %93 = add i32 %89, -1
  br label %96

94:                                               ; preds = %80
  %95 = ptrtoint ptr %82 to i32
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = inttoptr i32 %97 to ptr
  %99 = getelementptr inbounds %struct.page, ptr %98, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = ptrtoint ptr %100 to i32
  %102 = and i32 %101, 2
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 11
  %106 = load i8, ptr %105, align 2
  %107 = or i8 %106, 64
  store i8 %107, ptr %105, align 2
  br label %108

108:                                              ; preds = %104, %96
  %109 = load ptr, ptr %83, align 4
  %110 = getelementptr inbounds %struct.skb_shared_info, ptr %109, i32 0, i32 2
  store i8 1, ptr %110, align 2
  br label %146

111:                                              ; preds = %79
  %112 = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 15
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.skb_shared_info, ptr %113, i32 0, i32 2
  %115 = load i8, ptr %114, align 2
  %116 = zext i8 %115 to i32
  %117 = getelementptr inbounds %struct.e1000_buffer, ptr %39, i32 0, i32 2, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr %struct.skb_shared_info, ptr %113, i32 0, i32 12, i32 %116
  store ptr %118, ptr %119, align 4
  %120 = getelementptr %struct.skb_shared_info, ptr %113, i32 0, i32 12, i32 %116, i32 2
  store i32 0, ptr %120, align 4
  %121 = getelementptr %struct.skb_shared_info, ptr %113, i32 0, i32 12, i32 %116, i32 1
  store i32 %61, ptr %121, align 4
  %122 = getelementptr inbounds %struct.page, ptr %118, i32 0, i32 1
  %123 = load volatile i32, ptr %122, align 4
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126, !prof !13

126:                                              ; preds = %111
  %127 = add i32 %123, -1
  br label %130

128:                                              ; preds = %111
  %129 = ptrtoint ptr %118 to i32
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i32 [ %127, %126 ], [ %129, %128 ]
  %132 = inttoptr i32 %131 to ptr
  %133 = getelementptr inbounds %struct.page, ptr %132, i32 0, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = ptrtoint ptr %134 to i32
  %136 = and i32 %135, 2
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %130
  %139 = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 11
  %140 = load i8, ptr %139, align 2
  %141 = or i8 %140, 64
  store i8 %141, ptr %139, align 2
  br label %142

142:                                              ; preds = %138, %130
  %143 = add i8 %115, 1
  %144 = load ptr, ptr %112, align 4
  %145 = getelementptr inbounds %struct.skb_shared_info, ptr %144, i32 0, i32 2
  store i8 %143, ptr %145, align 2
  store ptr %47, ptr %46, align 4
  br label %146

146:                                              ; preds = %142, %108
  %147 = load ptr, ptr %24, align 4
  %148 = getelementptr inbounds %struct.e1000_buffer, ptr %39, i32 0, i32 2, i32 0, i32 1
  store ptr null, ptr %148, align 4
  %149 = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 5
  %150 = load i32, ptr %149, align 8
  %151 = add i32 %150, %61
  store i32 %151, ptr %149, align 8
  %152 = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 6
  %153 = load i32, ptr %152, align 4
  %154 = add i32 %153, %61
  store i32 %154, ptr %152, align 4
  %155 = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 18
  %156 = load i32, ptr %155, align 8
  %157 = add i32 %156, 4096
  store i32 %157, ptr %155, align 8
  br label %334

158:                                              ; preds = %76
  br i1 %78, label %204, label %159

159:                                              ; preds = %158
  %160 = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 15
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.skb_shared_info, ptr %161, i32 0, i32 2
  %163 = load i8, ptr %162, align 2
  %164 = zext i8 %163 to i32
  %165 = getelementptr inbounds %struct.e1000_buffer, ptr %39, i32 0, i32 2, i32 0, i32 1
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr %struct.skb_shared_info, ptr %161, i32 0, i32 12, i32 %164
  store ptr %166, ptr %167, align 4
  %168 = getelementptr %struct.skb_shared_info, ptr %161, i32 0, i32 12, i32 %164, i32 2
  store i32 0, ptr %168, align 4
  %169 = getelementptr %struct.skb_shared_info, ptr %161, i32 0, i32 12, i32 %164, i32 1
  store i32 %61, ptr %169, align 4
  %170 = getelementptr inbounds %struct.page, ptr %166, i32 0, i32 1
  %171 = load volatile i32, ptr %170, align 4
  %172 = and i32 %171, 1
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %176, label %174, !prof !13

174:                                              ; preds = %159
  %175 = add i32 %171, -1
  br label %178

176:                                              ; preds = %159
  %177 = ptrtoint ptr %166 to i32
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i32 [ %175, %174 ], [ %177, %176 ]
  %180 = inttoptr i32 %179 to ptr
  %181 = getelementptr inbounds %struct.page, ptr %180, i32 0, i32 1
  %182 = load ptr, ptr %181, align 4
  %183 = ptrtoint ptr %182 to i32
  %184 = and i32 %183, 2
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %178
  %187 = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 11
  %188 = load i8, ptr %187, align 2
  %189 = or i8 %188, 64
  store i8 %189, ptr %187, align 2
  br label %190

190:                                              ; preds = %186, %178
  %191 = add i8 %163, 1
  %192 = load ptr, ptr %160, align 4
  %193 = getelementptr inbounds %struct.skb_shared_info, ptr %192, i32 0, i32 2
  store i8 %191, ptr %193, align 2
  store ptr %47, ptr %46, align 4
  %194 = load ptr, ptr %24, align 4
  store ptr null, ptr %24, align 4
  store ptr null, ptr %165, align 4
  %195 = getelementptr inbounds %struct.sk_buff, ptr %194, i32 0, i32 5
  %196 = load i32, ptr %195, align 8
  %197 = add i32 %196, %61
  store i32 %197, ptr %195, align 8
  %198 = getelementptr inbounds %struct.sk_buff, ptr %194, i32 0, i32 6
  %199 = load i32, ptr %198, align 4
  %200 = add i32 %199, %61
  store i32 %200, ptr %198, align 4
  %201 = getelementptr inbounds %struct.sk_buff, ptr %194, i32 0, i32 18
  %202 = load i32, ptr %201, align 8
  %203 = add i32 %202, 4096
  store i32 %203, ptr %201, align 8
  br label %277

204:                                              ; preds = %158
  %205 = load i32, ptr @copybreak, align 4
  %206 = icmp ult i32 %205, %61
  br i1 %206, label %237, label %207

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 6
  %209 = load i32, ptr %208, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 15
  %213 = load ptr, ptr %212, align 4
  %214 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 14
  %215 = load ptr, ptr %214, align 8
  %216 = ptrtoint ptr %213 to i32
  %217 = ptrtoint ptr %215 to i32
  %218 = sub i32 %216, %217
  br label %219

219:                                              ; preds = %211, %207
  %220 = phi i32 [ %218, %211 ], [ 0, %207 ]
  %221 = icmp ult i32 %220, %61
  br i1 %221, label %237, label %222

222:                                              ; preds = %219
  %223 = getelementptr inbounds %struct.e1000_buffer, ptr %39, i32 0, i32 2, i32 0, i32 1
  %224 = load ptr, ptr %223, align 4
  %225 = load i32, ptr @pgprot_kernel, align 4
  %226 = or i32 %225, 512
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !40
  %227 = tail call ptr @llvm.thread.pointer() #18
  %228 = getelementptr inbounds %struct.task_struct, ptr %227, i32 0, i32 149
  %229 = load i32, ptr %228, align 8
  %230 = add i32 %229, 1
  store i32 %230, ptr %228, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !41
  %231 = tail call ptr @__kmap_local_page_prot(ptr noundef %224, i32 noundef %226) #18
  %232 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 14
  %233 = load ptr, ptr %232, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %233, ptr align 1 %231, i32 %61, i1 false)
  tail call void @kunmap_local_indexed(ptr noundef %231) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !42
  %234 = load i32, ptr %228, align 8
  %235 = add i32 %234, -1
  store i32 %235, ptr %228, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !43
  %236 = tail call ptr @skb_put(ptr noundef %47, i32 noundef %61) #18
  br label %277

237:                                              ; preds = %219, %204
  %238 = getelementptr inbounds %struct.e1000_buffer, ptr %39, i32 0, i32 2, i32 0, i32 1
  %239 = load ptr, ptr %238, align 4
  %240 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 15
  %241 = load ptr, ptr %240, align 4
  %242 = getelementptr %struct.skb_shared_info, ptr %241, i32 0, i32 12, i32 0
  store ptr %239, ptr %242, align 4
  %243 = getelementptr %struct.skb_shared_info, ptr %241, i32 0, i32 12, i32 0, i32 2
  store i32 0, ptr %243, align 4
  %244 = getelementptr %struct.skb_shared_info, ptr %241, i32 0, i32 12, i32 0, i32 1
  store i32 %61, ptr %244, align 4
  %245 = getelementptr inbounds %struct.page, ptr %239, i32 0, i32 1
  %246 = load volatile i32, ptr %245, align 4
  %247 = and i32 %246, 1
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %251, label %249, !prof !13

249:                                              ; preds = %237
  %250 = add i32 %246, -1
  br label %253

251:                                              ; preds = %237
  %252 = ptrtoint ptr %239 to i32
  br label %253

253:                                              ; preds = %251, %249
  %254 = phi i32 [ %250, %249 ], [ %252, %251 ]
  %255 = inttoptr i32 %254 to ptr
  %256 = getelementptr inbounds %struct.page, ptr %255, i32 0, i32 1
  %257 = load ptr, ptr %256, align 4
  %258 = ptrtoint ptr %257 to i32
  %259 = and i32 %258, 2
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %265, label %261

261:                                              ; preds = %253
  %262 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 11
  %263 = load i8, ptr %262, align 2
  %264 = or i8 %263, 64
  store i8 %264, ptr %262, align 2
  br label %265

265:                                              ; preds = %261, %253
  %266 = load ptr, ptr %240, align 4
  %267 = getelementptr inbounds %struct.skb_shared_info, ptr %266, i32 0, i32 2
  store i8 1, ptr %267, align 2
  store ptr null, ptr %238, align 4
  %268 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 5
  %269 = load i32, ptr %268, align 8
  %270 = add i32 %269, %61
  store i32 %270, ptr %268, align 8
  %271 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 6
  %272 = load i32, ptr %271, align 4
  %273 = add i32 %272, %61
  store i32 %273, ptr %271, align 4
  %274 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 18
  %275 = load i32, ptr %274, align 8
  %276 = add i32 %275, 4096
  store i32 %276, ptr %274, align 8
  br label %277

277:                                              ; preds = %265, %222, %190
  %278 = phi ptr [ %194, %190 ], [ %47, %222 ], [ %47, %265 ]
  %279 = load ptr, ptr %5, align 4
  %280 = getelementptr inbounds %struct.net_device, ptr %279, i32 0, i32 23
  %281 = load i64, ptr %280, align 16
  %282 = and i64 %281, 1099511627776
  %283 = icmp ne i64 %282, 0
  %284 = and i32 %44, 4
  %285 = icmp eq i32 %284, 0
  %286 = and i1 %285, %283
  br i1 %286, label %287, label %303

287:                                              ; preds = %277
  %288 = and i32 %44, 1610612736
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %293, label %290

290:                                              ; preds = %287
  %291 = load i64, ptr %25, align 8
  %292 = add i64 %291, 1
  store i64 %292, ptr %25, align 8
  br label %303

293:                                              ; preds = %287
  %294 = and i32 %44, 48
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %303, label %296

296:                                              ; preds = %293
  %297 = getelementptr inbounds %struct.sk_buff, ptr %278, i32 0, i32 13
  %298 = load i16, ptr %297, align 8
  %299 = and i16 %298, -97
  %300 = or i16 %299, 32
  store i16 %300, ptr %297, align 8
  %301 = load i64, ptr %26, align 32
  %302 = add i64 %301, 1
  store i64 %302, ptr %26, align 32
  br label %303

303:                                              ; preds = %296, %293, %290, %277
  %304 = load i64, ptr %23, align 16
  %305 = and i64 %304, 549755813888
  %306 = icmp eq i64 %305, 0
  br i1 %306, label %314, label %307

307:                                              ; preds = %303
  %308 = getelementptr inbounds %struct.anon.151, ptr %38, i32 0, i32 1
  %309 = load i32, ptr %308, align 4
  %310 = getelementptr inbounds %struct.sk_buff, ptr %278, i32 0, i32 13
  %311 = load i16, ptr %310, align 8
  %312 = and i16 %311, -769
  store i16 %312, ptr %310, align 8
  %313 = getelementptr inbounds %struct.sk_buff, ptr %278, i32 0, i32 13, i32 0, i32 7
  store i32 %309, ptr %313, align 8
  br label %314

314:                                              ; preds = %307, %303
  %315 = getelementptr inbounds %struct.sk_buff, ptr %278, i32 0, i32 5
  %316 = load i32, ptr %315, align 8
  %317 = add i32 %316, %42
  %318 = add i32 %43, 1
  %319 = getelementptr inbounds %struct.sk_buff, ptr %278, i32 0, i32 6
  %320 = load i32, ptr %319, align 4
  %321 = sub i32 %316, %320
  %322 = icmp ugt i32 %321, 13
  br i1 %322, label %331, label %323, !prof !13

323:                                              ; preds = %314
  %324 = icmp ult i32 %316, 14
  br i1 %324, label %329, label %325, !prof !38

325:                                              ; preds = %323
  %326 = sub nuw nsw i32 14, %321
  %327 = tail call ptr @__pskb_pull_tail(ptr noundef %278, i32 noundef %326) #18
  %328 = icmp eq ptr %327, null
  br i1 %328, label %329, label %331

329:                                              ; preds = %325, %323
  %330 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %330, ptr noundef nonnull @.str.12) #20
  tail call void @__dev_kfree_skb_irq(ptr noundef %278, i32 noundef 1) #18
  br label %334

331:                                              ; preds = %325, %314
  %332 = getelementptr inbounds %struct.anon.150, ptr %38, i32 0, i32 1, i32 2
  %333 = load i16, ptr %332, align 2
  tail call fastcc void @e1000_receive_skb(ptr noundef %4, ptr noundef %6, ptr noundef %278, i32 noundef %44, i16 noundef zeroext %333)
  br label %334

334:                                              ; preds = %331, %329, %146, %75
  %335 = phi i32 [ %42, %75 ], [ %317, %331 ], [ %317, %329 ], [ %42, %146 ]
  %336 = phi i32 [ %43, %75 ], [ %318, %331 ], [ %318, %329 ], [ %43, %146 ]
  %337 = load i32, ptr %58, align 8
  %338 = and i32 %337, -256
  store i32 %338, ptr %58, align 8
  %339 = icmp sgt i32 %41, 14
  br i1 %339, label %340, label %342, !prof !38

340:                                              ; preds = %334
  %341 = load ptr, ptr %27, align 4
  tail call void %341(ptr noundef %0, i32 noundef %56, i32 noundef 2592) #18
  br label %342

342:                                              ; preds = %340, %334
  %343 = phi i32 [ 0, %340 ], [ %56, %334 ]
  %344 = getelementptr inbounds %struct.anon.150, ptr %53, i32 0, i32 1
  %345 = load i32, ptr %344, align 8
  %346 = and i32 %345, 1
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %33

348:                                              ; preds = %342, %33, %18, %3
  %349 = phi i32 [ %9, %3 ], [ %9, %18 ], [ %51, %342 ], [ %51, %33 ]
  %350 = phi i1 [ false, %3 ], [ %29, %18 ], [ %29, %342 ], [ %29, %33 ]
  %351 = phi i32 [ 0, %3 ], [ 0, %18 ], [ %335, %342 ], [ %335, %33 ]
  %352 = phi i32 [ 0, %3 ], [ 0, %18 ], [ %336, %342 ], [ %336, %33 ]
  %353 = trunc i32 %349 to i16
  store i16 %353, ptr %7, align 2
  %354 = and i32 %349, 65535
  %355 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 5
  %356 = load i16, ptr %355, align 4
  %357 = zext i16 %356 to i32
  %358 = icmp ult i16 %356, %353
  br i1 %358, label %359, label %362

359:                                              ; preds = %348
  %360 = xor i32 %357, -1
  %361 = add nsw i32 %354, %360
  br label %368

362:                                              ; preds = %348
  %363 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 4
  %364 = load i32, ptr %363, align 4
  %365 = xor i32 %357, -1
  %366 = add nsw i32 %354, %365
  %367 = add i32 %366, %364
  br label %368

368:                                              ; preds = %362, %359
  %369 = phi i32 [ %361, %359 ], [ %367, %362 ]
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %374, label %371

371:                                              ; preds = %368
  %372 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 47
  %373 = load ptr, ptr %372, align 4
  tail call void %373(ptr noundef %0, i32 noundef %369, i32 noundef 2592) #18
  br label %374

374:                                              ; preds = %371, %368
  %375 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 32
  %376 = load i32, ptr %375, align 4
  %377 = add i32 %376, %351
  store i32 %377, ptr %375, align 4
  %378 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 33
  %379 = load i32, ptr %378, align 8
  %380 = add i32 %379, %352
  store i32 %380, ptr %378, align 8
  ret i1 %350
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @e1000_clean_rx_irq_ps(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 63
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 6
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %union.e1000_rx_desc_packet_split, ptr %11, i32 %9
  %13 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 9
  %14 = getelementptr inbounds %struct.anon.156, ptr %12, i32 0, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %278, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 64
  %20 = load ptr, ptr %19, align 32
  %21 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 4
  %22 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %23 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 60
  %24 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 85
  %25 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 23
  %26 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 51
  %27 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 52
  %28 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 53
  %29 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 47
  %30 = load i32, ptr %1, align 4
  %31 = icmp slt i32 %30, %2
  br i1 %31, label %32, label %278

32:                                               ; preds = %18
  %33 = load ptr, ptr %13, align 4
  %34 = getelementptr %struct.e1000_buffer, ptr %33, i32 %9
  br label %38

35:                                               ; preds = %272
  %36 = load i32, ptr %1, align 4
  %37 = icmp slt i32 %36, %2
  br i1 %37, label %38, label %278

38:                                               ; preds = %35, %32
  %39 = phi i32 [ %30, %32 ], [ %36, %35 ]
  %40 = phi ptr [ %12, %32 ], [ %59, %35 ]
  %41 = phi ptr [ %34, %32 ], [ %61, %35 ]
  %42 = phi i32 [ %9, %32 ], [ %57, %35 ]
  %43 = phi i32 [ 0, %32 ], [ %273, %35 ]
  %44 = phi i32 [ 0, %32 ], [ %265, %35 ]
  %45 = phi i32 [ 0, %32 ], [ %266, %35 ]
  %46 = phi ptr [ %14, %32 ], [ %274, %35 ]
  %47 = phi i32 [ %15, %32 ], [ %275, %35 ]
  %48 = add nsw i32 %39, 1
  store i32 %48, ptr %1, align 4
  %49 = getelementptr inbounds %struct.e1000_buffer, ptr %41, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  tail call void asm sideeffect "dmb osh", "~{memory}"() #18, !srcloc !44
  %51 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 17
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 -2
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %53) #18, !srcloc !37
  %54 = add i32 %42, 1
  %55 = load i32, ptr %21, align 4
  %56 = icmp eq i32 %54, %55
  %57 = select i1 %56, i32 0, i32 %54
  %58 = load ptr, ptr %10, align 4
  %59 = getelementptr %union.e1000_rx_desc_packet_split, ptr %58, i32 %57
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %59) #18, !srcloc !37
  %60 = load ptr, ptr %13, align 4
  %61 = getelementptr %struct.e1000_buffer, ptr %60, i32 %57
  %62 = add nsw i32 %43, 1
  %63 = load i32, ptr %41, align 4
  %64 = load i16, ptr %23, align 16
  %65 = zext i16 %64 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %22, i32 noundef %63, i32 noundef %65, i32 noundef 2, i32 noundef 0) #18
  store i32 0, ptr %41, align 4
  %66 = and i32 %47, 2
  %67 = icmp eq i32 %66, 0
  %68 = load i32, ptr %24, align 4
  br i1 %67, label %72, label %69

69:                                               ; preds = %38
  %70 = and i32 %68, 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %74

72:                                               ; preds = %38
  %73 = or i32 %68, 4
  store i32 %73, ptr %24, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %50, i32 noundef 1) #18
  br label %264

74:                                               ; preds = %69
  tail call void @__dev_kfree_skb_irq(ptr noundef %50, i32 noundef 1) #18
  %75 = load i32, ptr %24, align 4
  %76 = and i32 %75, -5
  store i32 %76, ptr %24, align 4
  br label %264

77:                                               ; preds = %69
  %78 = and i32 %47, -1761607680
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = load i64, ptr %25, align 16
  %82 = and i64 %81, 17592186044416
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85, !prof !38

84:                                               ; preds = %80
  tail call void @__dev_kfree_skb_irq(ptr noundef %50, i32 noundef 1) #18
  br label %264

85:                                               ; preds = %80, %77
  %86 = getelementptr inbounds %struct.anon.156, ptr %40, i32 0, i32 1, i32 1
  %87 = load i16, ptr %86, align 4
  %88 = zext i16 %87 to i32
  %89 = icmp eq i16 %87, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  tail call void @__dev_kfree_skb_irq(ptr noundef %50, i32 noundef 1) #18
  br label %264

91:                                               ; preds = %85
  %92 = tail call ptr @skb_put(ptr noundef %50, i32 noundef %88) #18
  %93 = getelementptr inbounds %struct.anon.156, ptr %40, i32 0, i32 2
  %94 = getelementptr inbounds %struct.anon.156, ptr %40, i32 0, i32 2, i32 1
  %95 = load i16, ptr %94, align 2
  %96 = zext i16 %95 to i32
  %97 = icmp eq i16 %95, 0
  %98 = load i32, ptr @copybreak, align 4
  %99 = icmp ult i32 %98, %96
  %100 = select i1 %97, i1 true, i1 %99
  br i1 %100, label %138, label %101

101:                                              ; preds = %91
  %102 = add nuw nsw i32 %96, %88
  %103 = load i16, ptr %23, align 16
  %104 = zext i16 %103 to i32
  %105 = icmp ugt i32 %102, %104
  br i1 %105, label %138, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.e1000_buffer, ptr %41, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.e1000_ps_page, ptr %108, i32 0, i32 1
  %110 = load i64, ptr %109, align 8
  %111 = trunc i64 %110 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %22, i32 noundef %111, i32 noundef 4096, i32 noundef 2) #18
  %112 = load ptr, ptr %108, align 8
  %113 = load i32, ptr @pgprot_kernel, align 4
  %114 = or i32 %113, 512
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !40
  %115 = tail call ptr @llvm.thread.pointer() #18
  %116 = getelementptr inbounds %struct.task_struct, ptr %115, i32 0, i32 149
  %117 = load i32, ptr %116, align 8
  %118 = add i32 %117, 1
  store i32 %118, ptr %116, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !41
  %119 = tail call ptr @__kmap_local_page_prot(ptr noundef %112, i32 noundef %114) #18
  %120 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 14
  %121 = load ptr, ptr %120, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %121, ptr align 1 %119, i32 %96, i1 false)
  tail call void @kunmap_local_indexed(ptr noundef %119) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !42
  %122 = load i32, ptr %116, align 8
  %123 = add i32 %122, -1
  store i32 %123, ptr %116, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !43
  %124 = load i64, ptr %109, align 8
  %125 = trunc i64 %124 to i32
  tail call void @dma_sync_single_for_device(ptr noundef %22, i32 noundef %125, i32 noundef 4096, i32 noundef 2) #18
  %126 = load i32, ptr %24, align 4
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %106
  %130 = load i64, ptr %25, align 16
  %131 = and i64 %130, 8796093022208
  %132 = icmp eq i64 %131, 0
  %133 = add nsw i32 %96, -4
  %134 = select i1 %132, i32 %133, i32 %96
  br label %135

135:                                              ; preds = %129, %106
  %136 = phi i32 [ %96, %106 ], [ %134, %129 ]
  %137 = tail call ptr @skb_put(ptr noundef %50, i32 noundef %136) #18
  br label %215

138:                                              ; preds = %101, %91
  %139 = getelementptr inbounds %struct.e1000_buffer, ptr %41, i32 0, i32 2
  %140 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 15
  %141 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 11
  %142 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 5
  %143 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 6
  %144 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 18
  br label %145

145:                                              ; preds = %181, %138
  %146 = phi i32 [ 0, %138 ], [ %192, %181 ]
  %147 = getelementptr %struct.anon.156, ptr %40, i32 0, i32 2, i32 1, i32 %146
  %148 = load i16, ptr %147, align 2
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %194, label %150

150:                                              ; preds = %145
  %151 = zext i16 %148 to i32
  %152 = load ptr, ptr %139, align 4
  %153 = getelementptr %struct.e1000_ps_page, ptr %152, i32 %146
  %154 = getelementptr %struct.e1000_ps_page, ptr %152, i32 %146, i32 1
  %155 = load i64, ptr %154, align 8
  %156 = trunc i64 %155 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %22, i32 noundef %156, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #18
  store i64 0, ptr %154, align 8
  %157 = load ptr, ptr %153, align 8
  %158 = load ptr, ptr %140, align 4
  %159 = getelementptr %struct.skb_shared_info, ptr %158, i32 0, i32 12, i32 %146
  store ptr %157, ptr %159, align 4
  %160 = getelementptr %struct.skb_shared_info, ptr %158, i32 0, i32 12, i32 %146, i32 2
  store i32 0, ptr %160, align 4
  %161 = getelementptr %struct.skb_shared_info, ptr %158, i32 0, i32 12, i32 %146, i32 1
  store i32 %151, ptr %161, align 4
  %162 = getelementptr inbounds %struct.page, ptr %157, i32 0, i32 1
  %163 = load volatile i32, ptr %162, align 4
  %164 = and i32 %163, 1
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %168, label %166, !prof !13

166:                                              ; preds = %150
  %167 = add i32 %163, -1
  br label %170

168:                                              ; preds = %150
  %169 = ptrtoint ptr %157 to i32
  br label %170

170:                                              ; preds = %168, %166
  %171 = phi i32 [ %167, %166 ], [ %169, %168 ]
  %172 = inttoptr i32 %171 to ptr
  %173 = getelementptr inbounds %struct.page, ptr %172, i32 0, i32 1
  %174 = load ptr, ptr %173, align 4
  %175 = ptrtoint ptr %174 to i32
  %176 = and i32 %175, 2
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %170
  %179 = load i8, ptr %141, align 2
  %180 = or i8 %179, 64
  store i8 %180, ptr %141, align 2
  br label %181

181:                                              ; preds = %178, %170
  %182 = trunc i32 %146 to i8
  %183 = add nuw nsw i8 %182, 1
  %184 = load ptr, ptr %140, align 4
  %185 = getelementptr inbounds %struct.skb_shared_info, ptr %184, i32 0, i32 2
  store i8 %183, ptr %185, align 2
  store ptr null, ptr %153, align 8
  %186 = load i32, ptr %142, align 8
  %187 = add i32 %186, %151
  store i32 %187, ptr %142, align 8
  %188 = load i32, ptr %143, align 4
  %189 = add i32 %188, %151
  store i32 %189, ptr %143, align 4
  %190 = load i32, ptr %144, align 8
  %191 = add i32 %190, 4096
  store i32 %191, ptr %144, align 8
  %192 = add nuw nsw i32 %146, 1
  %193 = icmp eq i32 %192, 3
  br i1 %193, label %194, label %145

194:                                              ; preds = %181, %145
  %195 = load i32, ptr %24, align 4
  %196 = and i32 %195, 1
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %215

198:                                              ; preds = %194
  %199 = load i64, ptr %25, align 16
  %200 = and i64 %199, 8796093022208
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %198
  %203 = load i32, ptr %142, align 8
  %204 = add i32 %203, -4
  %205 = icmp ugt i32 %203, 3
  br i1 %205, label %206, label %215

206:                                              ; preds = %202
  %207 = load i32, ptr %143, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %206
  %210 = tail call i32 @___pskb_trim(ptr noundef %50, i32 noundef %204) #18
  br label %215

211:                                              ; preds = %206
  store i32 %204, ptr %142, align 8
  %212 = load ptr, ptr %51, align 4
  %213 = getelementptr i8, ptr %212, i32 %204
  %214 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 14
  store ptr %213, ptr %214, align 8
  br label %215

215:                                              ; preds = %211, %209, %202, %198, %194, %135
  %216 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 5
  %217 = load i32, ptr %216, align 8
  %218 = add i32 %217, %44
  %219 = add i32 %45, 1
  %220 = load ptr, ptr %5, align 4
  %221 = getelementptr inbounds %struct.net_device, ptr %220, i32 0, i32 23
  %222 = load i64, ptr %221, align 16
  %223 = and i64 %222, 1099511627776
  %224 = icmp ne i64 %223, 0
  %225 = and i32 %47, 4
  %226 = icmp eq i32 %225, 0
  %227 = and i1 %226, %224
  br i1 %227, label %228, label %244

228:                                              ; preds = %215
  %229 = and i32 %47, 1610612736
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %234, label %231

231:                                              ; preds = %228
  %232 = load i64, ptr %26, align 8
  %233 = add i64 %232, 1
  store i64 %233, ptr %26, align 8
  br label %244

234:                                              ; preds = %228
  %235 = and i32 %47, 48
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %244, label %237

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 13
  %239 = load i16, ptr %238, align 8
  %240 = and i16 %239, -97
  %241 = or i16 %240, 32
  store i16 %241, ptr %238, align 8
  %242 = load i64, ptr %27, align 32
  %243 = add i64 %242, 1
  store i64 %243, ptr %27, align 32
  br label %244

244:                                              ; preds = %237, %234, %231, %215
  %245 = load i64, ptr %25, align 16
  %246 = and i64 %245, 549755813888
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %255, label %248

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.anon.157, ptr %40, i32 0, i32 1
  %250 = load i32, ptr %249, align 4
  %251 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 13
  %252 = load i16, ptr %251, align 8
  %253 = and i16 %252, -769
  store i16 %253, ptr %251, align 8
  %254 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 13, i32 0, i32 7
  store i32 %250, ptr %254, align 8
  br label %255

255:                                              ; preds = %248, %244
  %256 = load i16, ptr %93, align 8
  %257 = icmp sgt i16 %256, -1
  br i1 %257, label %261, label %258

258:                                              ; preds = %255
  %259 = load i64, ptr %28, align 8
  %260 = add i64 %259, 1
  store i64 %260, ptr %28, align 8
  br label %261

261:                                              ; preds = %258, %255
  %262 = getelementptr inbounds %struct.anon.156, ptr %40, i32 0, i32 1, i32 2
  %263 = load i16, ptr %262, align 2
  tail call fastcc void @e1000_receive_skb(ptr noundef %4, ptr noundef %6, ptr noundef %50, i32 noundef %47, i16 noundef zeroext %263)
  br label %264

264:                                              ; preds = %261, %90, %84, %74, %72
  %265 = phi i32 [ %44, %74 ], [ %44, %72 ], [ %44, %84 ], [ %218, %261 ], [ %44, %90 ]
  %266 = phi i32 [ %45, %74 ], [ %45, %72 ], [ %45, %84 ], [ %219, %261 ], [ %45, %90 ]
  %267 = load i32, ptr %46, align 8
  %268 = and i32 %267, -256
  store i32 %268, ptr %46, align 8
  store ptr null, ptr %49, align 4
  %269 = icmp sgt i32 %43, 14
  br i1 %269, label %270, label %272

270:                                              ; preds = %264
  %271 = load ptr, ptr %29, align 4
  tail call void %271(ptr noundef %0, i32 noundef %62, i32 noundef 2592) #18
  br label %272

272:                                              ; preds = %270, %264
  %273 = phi i32 [ 0, %270 ], [ %62, %264 ]
  %274 = getelementptr inbounds %struct.anon.156, ptr %59, i32 0, i32 1
  %275 = load i32, ptr %274, align 8
  %276 = and i32 %275, 1
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %35

278:                                              ; preds = %272, %35, %18, %3
  %279 = phi i32 [ %9, %3 ], [ %9, %18 ], [ %57, %272 ], [ %57, %35 ]
  %280 = phi i1 [ false, %3 ], [ %31, %18 ], [ %31, %272 ], [ %31, %35 ]
  %281 = phi i32 [ 0, %3 ], [ 0, %18 ], [ %265, %272 ], [ %265, %35 ]
  %282 = phi i32 [ 0, %3 ], [ 0, %18 ], [ %266, %272 ], [ %266, %35 ]
  %283 = trunc i32 %279 to i16
  store i16 %283, ptr %7, align 2
  %284 = and i32 %279, 65535
  %285 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 5
  %286 = load i16, ptr %285, align 4
  %287 = zext i16 %286 to i32
  %288 = icmp ult i16 %286, %283
  br i1 %288, label %289, label %292

289:                                              ; preds = %278
  %290 = xor i32 %287, -1
  %291 = add nsw i32 %284, %290
  br label %298

292:                                              ; preds = %278
  %293 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 4
  %294 = load i32, ptr %293, align 4
  %295 = xor i32 %287, -1
  %296 = add nsw i32 %284, %295
  %297 = add i32 %296, %294
  br label %298

298:                                              ; preds = %292, %289
  %299 = phi i32 [ %291, %289 ], [ %297, %292 ]
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %304, label %301

301:                                              ; preds = %298
  %302 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 47
  %303 = load ptr, ptr %302, align 4
  tail call void %303(ptr noundef %0, i32 noundef %299, i32 noundef 2592) #18
  br label %304

304:                                              ; preds = %301, %298
  %305 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 32
  %306 = load i32, ptr %305, align 4
  %307 = add i32 %306, %281
  store i32 %307, ptr %305, align 4
  %308 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 33
  %309 = load i32, ptr %308, align 8
  %310 = add i32 %309, %282
  store i32 %310, ptr %308, align 8
  ret i1 %280
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @e1000_receive_skb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 noundef zeroext %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 84
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 16384
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %3, 256
  %11 = icmp eq i32 %10, 0
  %12 = or i1 %11, %9
  br i1 %12, label %41, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 46624
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %14, align 4
  %22 = getelementptr i8, ptr %21, i32 46628
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %24 = zext i32 %23 to i64
  %25 = load ptr, ptr %14, align 4
  %26 = getelementptr i8, ptr %25, i32 46632
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %28 = zext i32 %27 to i64
  %29 = shl nuw i64 %28, 32
  %30 = or i64 %29, %24
  %31 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.skb_shared_info, ptr %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 97
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %34) #18
  %36 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 99
  %37 = tail call i64 @timecounter_cyc2time(ptr noundef %36, i64 noundef %30) #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %35) #18
  store i64 %37, ptr %33, align 8
  %38 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 85
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, -8193
  store i32 %40, ptr %38, align 4
  br label %41

41:                                               ; preds = %20, %13, %5
  %42 = tail call zeroext i16 @eth_type_trans(ptr noundef %2, ptr noundef %1) #18
  %43 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 16
  store i16 %42, ptr %43, align 8
  %44 = and i32 %3, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 8
  store i16 129, ptr %47, align 4
  %48 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 9
  store i16 %4, ptr %48, align 2
  %49 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 3
  %50 = load i16, ptr %49, align 2
  %51 = or i16 %50, 1
  store i16 %51, ptr %49, align 2
  br label %52

52:                                               ; preds = %46, %41
  %53 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 20
  %54 = tail call i32 @napi_gro_receive(ptr noundef %53, ptr noundef %2) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_cyc2time(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_vlan_rx_add_vid(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 2532
  %5 = getelementptr i8, ptr %0, i32 3472
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %0, i32 2024
  %11 = load i16, ptr %10, align 8
  %12 = icmp eq i16 %11, %2
  br i1 %12, label %35, label %13

13:                                               ; preds = %9, %3
  %14 = getelementptr i8, ptr %0, i32 12584
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i16 %2 to i32
  br i1 %17, label %33, label %19

19:                                               ; preds = %13
  %20 = lshr i32 %18, 5
  %21 = and i32 %20, 127
  %22 = getelementptr i8, ptr %0, i32 2536
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 22016
  %25 = shl nuw nsw i32 %21, 2
  %26 = getelementptr i8, ptr %24, i32 %25
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !23
  %28 = and i32 %18, 31
  %29 = shl nuw i32 1, %28
  %30 = or i32 %27, %29
  %31 = getelementptr i8, ptr %0, i32 2616
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef %4, i32 noundef %21, i32 noundef %30) #18
  br label %33

33:                                               ; preds = %19, %13
  %34 = getelementptr i8, ptr %0, i32 1504
  tail call void @_set_bit(i32 noundef %18, ptr noundef %34) #18
  br label %35

35:                                               ; preds = %33, %9
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @timecounter_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000e_config_hwtstamp(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %4 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 84
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 16384
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %170, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.hwtstamp_config, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %170 [
    i32 0, label %11
    i32 1, label %12
  ]

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi i32 [ 16, %8 ], [ 0, %11 ]
  %14 = getelementptr inbounds %struct.hwtstamp_config, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %170 [
    i32 0, label %24
    i32 4, label %16
    i32 5, label %17
    i32 10, label %18
    i32 11, label %19
    i32 7, label %20
    i32 13, label %20
    i32 8, label %21
    i32 14, label %21
    i32 6, label %22
    i32 9, label %22
    i32 12, label %22
    i32 3, label %23
    i32 15, label %23
    i32 1, label %23
  ]

16:                                               ; preds = %12
  br label %24

17:                                               ; preds = %12
  br label %24

18:                                               ; preds = %12
  br label %24

19:                                               ; preds = %12
  br label %24

20:                                               ; preds = %12, %12
  br label %24

21:                                               ; preds = %12, %12
  br label %24

22:                                               ; preds = %12, %12, %12
  store i32 12, ptr %14, align 4
  br label %24

23:                                               ; preds = %12, %12, %12
  store i32 1, ptr %14, align 4
  br label %24

24:                                               ; preds = %23, %22, %21, %20, %19, %18, %17, %16, %12
  %25 = phi i32 [ 24, %23 ], [ 26, %22 ], [ 20, %21 ], [ 20, %20 ], [ 16, %19 ], [ 16, %18 ], [ 18, %17 ], [ 18, %16 ], [ %15, %12 ]
  %26 = phi i32 [ 0, %23 ], [ 0, %22 ], [ 16777216, %21 ], [ 0, %20 ], [ 16777216, %19 ], [ 0, %18 ], [ 65536, %17 ], [ 0, %16 ], [ %15, %12 ]
  %27 = phi i32 [ 16129, %23 ], [ 16129, %22 ], [ 16129, %21 ], [ 16129, %20 ], [ 0, %19 ], [ 0, %18 ], [ 16129, %17 ], [ 16129, %16 ], [ %15, %12 ]
  %28 = phi i1 [ true, %23 ], [ true, %22 ], [ true, %21 ], [ true, %20 ], [ true, %19 ], [ true, %18 ], [ false, %17 ], [ false, %16 ], [ false, %12 ]
  %29 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 92
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(12) %29, ptr noundef align 4 dereferenceable(12) %1, i32 12, i1 false)
  %30 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 46612
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %34 = and i32 %33, -17
  %35 = or i32 %34, %13
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.e1000_adapter, ptr %36, i32 0, i32 85
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 2048
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %24
  %42 = load ptr, ptr %30, align 4
  %43 = getelementptr i8, ptr %42, i32 23380
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %45 = and i32 %44, 16777216
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %51, %41
  %48 = phi i32 [ %49, %51 ], [ 2000, %41 ]
  %49 = add nsw i32 %48, -1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 10737400) #18
  %53 = load ptr, ptr %30, align 4
  %54 = getelementptr i8, ptr %53, i32 23380
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %56 = and i32 %55, 16777216
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %47

58:                                               ; preds = %51, %47, %41, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %59 = load ptr, ptr %30, align 4
  %60 = getelementptr i8, ptr %59, i32 46612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %35) #18, !srcloc !12
  %61 = load ptr, ptr %30, align 4
  %62 = getelementptr i8, ptr %61, i32 46612
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %64 = and i32 %63, 16
  %65 = icmp eq i32 %64, %13
  br i1 %65, label %69, label %66

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 63
  %68 = load ptr, ptr %67, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %68, ptr noundef nonnull @.str.15) #20
  br label %170

69:                                               ; preds = %58
  %70 = load ptr, ptr %30, align 4
  %71 = getelementptr i8, ptr %70, i32 46624
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %73 = and i32 %72, -31
  %74 = or i32 %73, %25
  %75 = load ptr, ptr %3, align 4
  %76 = getelementptr inbounds %struct.e1000_adapter, ptr %75, i32 0, i32 85
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 2048
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %97, label %80

80:                                               ; preds = %69
  %81 = load ptr, ptr %30, align 4
  %82 = getelementptr i8, ptr %81, i32 23380
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %84 = and i32 %83, 16777216
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %90, %80
  %87 = phi i32 [ %88, %90 ], [ 2000, %80 ]
  %88 = add nsw i32 %87, -1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 10737400) #18
  %92 = load ptr, ptr %30, align 4
  %93 = getelementptr i8, ptr %92, i32 23380
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %95 = and i32 %94, 16777216
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %86

97:                                               ; preds = %90, %86, %80, %69
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %98 = load ptr, ptr %30, align 4
  %99 = getelementptr i8, ptr %98, i32 46624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %74) #18, !srcloc !12
  %100 = load ptr, ptr %30, align 4
  %101 = getelementptr i8, ptr %100, i32 46624
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %103 = and i32 %102, 30
  %104 = icmp eq i32 %103, %25
  br i1 %104, label %108, label %105

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 63
  %107 = load ptr, ptr %106, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %107, ptr noundef nonnull @.str.16) #20
  br label %170

108:                                              ; preds = %97
  %109 = or i32 %26, 35063
  %110 = select i1 %28, i32 %109, i32 %26
  %111 = load ptr, ptr %3, align 4
  %112 = getelementptr inbounds %struct.e1000_adapter, ptr %111, i32 0, i32 85
  %113 = load i32, ptr %112, align 4
  %114 = and i32 %113, 2048
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %133, label %116

116:                                              ; preds = %108
  %117 = load ptr, ptr %30, align 4
  %118 = getelementptr i8, ptr %117, i32 23380
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %120 = and i32 %119, 16777216
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %133, label %122

122:                                              ; preds = %126, %116
  %123 = phi i32 [ %124, %126 ], [ 2000, %116 ]
  %124 = add nsw i32 %123, -1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %122
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %127(i32 noundef 10737400) #18
  %128 = load ptr, ptr %30, align 4
  %129 = getelementptr i8, ptr %128, i32 23380
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %129) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %131 = and i32 %130, 16777216
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %122

133:                                              ; preds = %126, %122, %116, %108
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %134 = load ptr, ptr %30, align 4
  %135 = getelementptr i8, ptr %134, i32 46644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %110) #18, !srcloc !12
  %136 = load ptr, ptr %3, align 4
  %137 = getelementptr inbounds %struct.e1000_adapter, ptr %136, i32 0, i32 85
  %138 = load i32, ptr %137, align 4
  %139 = and i32 %138, 2048
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %158, label %141

141:                                              ; preds = %133
  %142 = load ptr, ptr %30, align 4
  %143 = getelementptr i8, ptr %142, i32 23380
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %145 = and i32 %144, 16777216
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %158, label %147

147:                                              ; preds = %151, %141
  %148 = phi i32 [ %149, %151 ], [ 2000, %141 ]
  %149 = add nsw i32 %148, -1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %147
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %152(i32 noundef 10737400) #18
  %153 = load ptr, ptr %30, align 4
  %154 = getelementptr i8, ptr %153, i32 23380
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %156 = and i32 %155, 16777216
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %147

158:                                              ; preds = %151, %147, %141, %133
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %159 = load ptr, ptr %30, align 4
  %160 = getelementptr i8, ptr %159, i32 46648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %27) #18, !srcloc !12
  %161 = load ptr, ptr %30, align 4
  %162 = getelementptr i8, ptr %161, i32 8
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %164 = load ptr, ptr %30, align 4
  %165 = getelementptr i8, ptr %164, i32 46632
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %165) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %167 = load ptr, ptr %30, align 4
  %168 = getelementptr i8, ptr %167, i32 46620
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %168) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  br label %170

170:                                              ; preds = %158, %105, %66, %12, %8, %2
  %171 = phi i32 [ -11, %66 ], [ -11, %105 ], [ 0, %158 ], [ -22, %2 ], [ -34, %8 ], [ -34, %12 ]
  ret i32 %171
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000e_set_rx_mode(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 2532
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 18
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 15
  %10 = load i16, ptr %9, align 8
  %11 = and i16 %10, 7
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %363, label %13

13:                                               ; preds = %8, %1
  %14 = getelementptr i8, ptr %0, i32 2536
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 256
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %18 = and i32 %17, -25
  %19 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 256
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %100, label %23

23:                                               ; preds = %13
  %24 = or i32 %17, 24
  %25 = getelementptr i8, ptr %0, i32 2524
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %0, i32 12584
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %283, label %31

31:                                               ; preds = %23
  %32 = load ptr, ptr %14, align 4
  %33 = getelementptr i8, ptr %32, i32 256
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %35 = and i32 %34, -786433
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr inbounds %struct.e1000_adapter, ptr %36, i32 0, i32 85
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 2048
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %31
  %42 = load ptr, ptr %14, align 4
  %43 = getelementptr i8, ptr %42, i32 23380
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %45 = and i32 %44, 16777216
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %51, %41
  %48 = phi i32 [ %49, %51 ], [ 2000, %41 ]
  %49 = add nsw i32 %48, -1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 10737400) #18
  %53 = load ptr, ptr %14, align 4
  %54 = getelementptr i8, ptr %53, i32 23380
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %56 = and i32 %55, 16777216
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %47

58:                                               ; preds = %51, %47, %41, %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %59 = load ptr, ptr %14, align 4
  %60 = getelementptr i8, ptr %59, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %35) #18, !srcloc !12
  %61 = getelementptr i8, ptr %0, i32 2024
  %62 = load i16, ptr %61, align 8
  %63 = icmp eq i16 %62, -1
  br i1 %63, label %283, label %64

64:                                               ; preds = %58
  %65 = getelementptr i8, ptr %26, i32 1408
  %66 = getelementptr i8, ptr %26, i32 2532
  %67 = getelementptr i8, ptr %26, i32 3472
  %68 = load i8, ptr %67, align 4
  %69 = and i8 %68, 2
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %64
  %72 = getelementptr i8, ptr %26, i32 2024
  %73 = load i16, ptr %72, align 8
  %74 = icmp eq i16 %73, %62
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  tail call void @e1000e_release_hw_control(ptr noundef %65) #18
  br label %99

76:                                               ; preds = %71, %64
  %77 = getelementptr i8, ptr %26, i32 12584
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 4
  %80 = icmp eq i32 %79, 0
  %81 = zext i16 %62 to i32
  br i1 %80, label %97, label %82

82:                                               ; preds = %76
  %83 = lshr i32 %81, 5
  %84 = and i32 %83, 127
  %85 = getelementptr i8, ptr %26, i32 2536
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr i8, ptr %86, i32 22016
  %88 = shl nuw nsw i32 %84, 2
  %89 = getelementptr i8, ptr %87, i32 %88
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !24
  %91 = and i32 %81, 31
  %92 = shl nuw i32 1, %91
  %93 = xor i32 %92, -1
  %94 = and i32 %90, %93
  %95 = getelementptr i8, ptr %26, i32 2616
  %96 = load ptr, ptr %95, align 4
  tail call void %96(ptr noundef %66, i32 noundef %84, i32 noundef %94) #18
  br label %97

97:                                               ; preds = %82, %76
  %98 = getelementptr i8, ptr %26, i32 1504
  tail call void @_clear_bit(i32 noundef %81, ptr noundef %98) #18
  br label %99

99:                                               ; preds = %97, %75
  store i16 -1, ptr %61, align 8
  br label %283

100:                                              ; preds = %13
  %101 = and i32 %20, 512
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = or i32 %18, 16
  br label %140

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  %107 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = getelementptr i8, ptr %0, i32 2592
  %112 = load ptr, ptr %111, align 4
  tail call void %112(ptr noundef %2, ptr noundef null, i32 noundef 0) #18
  br label %140

113:                                              ; preds = %105
  %114 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %108, i32 6) #18
  %115 = extractvalue { i32, i1 } %114, 1
  br i1 %115, label %138, label %116, !prof !38

116:                                              ; preds = %113
  %117 = extractvalue { i32, i1 } %114, 0
  %118 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %117, i32 noundef 2848) #21
  %119 = icmp eq ptr %118, null
  br i1 %119, label %138, label %120

120:                                              ; preds = %116
  %121 = load ptr, ptr %106, align 4
  %122 = icmp eq ptr %121, %106
  br i1 %122, label %132, label %123

123:                                              ; preds = %123, %120
  %124 = phi ptr [ %130, %123 ], [ %121, %120 ]
  %125 = phi i32 [ %126, %123 ], [ 0, %120 ]
  %126 = add i32 %125, 1
  %127 = mul i32 %125, 6
  %128 = getelementptr i8, ptr %118, i32 %127
  %129 = getelementptr inbounds %struct.netdev_hw_addr, ptr %124, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %128, ptr noundef align 4 dereferenceable(6) %129, i32 6, i1 false) #18
  %130 = load ptr, ptr %124, align 4
  %131 = icmp eq ptr %130, %106
  br i1 %131, label %132, label %123

132:                                              ; preds = %123, %120
  %133 = phi i32 [ 0, %120 ], [ %126, %123 ]
  %134 = getelementptr i8, ptr %0, i32 2592
  %135 = load ptr, ptr %134, align 4
  tail call void %135(ptr noundef %2, ptr noundef nonnull %118, i32 noundef %133) #18
  tail call void @kfree(ptr noundef nonnull %118) #18
  %136 = load i32, ptr %107, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %132, %116, %113
  %139 = or i32 %18, 16
  br label %140

140:                                              ; preds = %138, %132, %110, %103
  %141 = phi i32 [ %104, %103 ], [ %139, %138 ], [ %18, %132 ], [ %18, %110 ]
  %142 = getelementptr i8, ptr %0, i32 12584
  %143 = load i32, ptr %142, align 8
  %144 = and i32 %143, 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %177, label %146

146:                                              ; preds = %140
  %147 = load ptr, ptr %14, align 4
  %148 = getelementptr i8, ptr %147, i32 256
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %150 = and i32 %149, -786433
  %151 = or i32 %150, 262144
  %152 = load ptr, ptr %2, align 4
  %153 = getelementptr inbounds %struct.e1000_adapter, ptr %152, i32 0, i32 85
  %154 = load i32, ptr %153, align 4
  %155 = and i32 %154, 2048
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %174, label %157

157:                                              ; preds = %146
  %158 = load ptr, ptr %14, align 4
  %159 = getelementptr i8, ptr %158, i32 23380
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %159) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %161 = and i32 %160, 16777216
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %174, label %163

163:                                              ; preds = %167, %157
  %164 = phi i32 [ %165, %167 ], [ 2000, %157 ]
  %165 = add nsw i32 %164, -1
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %174, label %167

167:                                              ; preds = %163
  %168 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %168(i32 noundef 10737400) #18
  %169 = load ptr, ptr %14, align 4
  %170 = getelementptr i8, ptr %169, i32 23380
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %172 = and i32 %171, 16777216
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %163

174:                                              ; preds = %167, %163, %157, %146
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %175 = load ptr, ptr %14, align 4
  %176 = getelementptr i8, ptr %175, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %151) #18, !srcloc !12
  br label %177

177:                                              ; preds = %174, %140
  %178 = getelementptr i8, ptr %0, i32 2632
  %179 = load ptr, ptr %178, align 4
  %180 = tail call i32 %179(ptr noundef %2) #18
  %181 = load i32, ptr %142, align 8
  %182 = and i32 %181, 2097152
  %183 = icmp eq i32 %182, 0
  %184 = select i1 %183, i32 -1, i32 -2
  %185 = add i32 %184, %180
  %186 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 60
  %187 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 60, i32 1
  %188 = load i32, ptr %187, align 4
  %189 = icmp ugt i32 %188, %185
  br i1 %189, label %281, label %190

190:                                              ; preds = %177
  %191 = icmp ne i32 %188, 0
  %192 = icmp ne i32 %185, 0
  %193 = select i1 %191, i1 %192, i1 false
  br i1 %193, label %194, label %211

194:                                              ; preds = %190
  %195 = getelementptr i8, ptr %0, i32 2624
  br label %196

196:                                              ; preds = %204, %194
  %197 = phi ptr [ %200, %204 ], [ %186, %194 ]
  %198 = phi i32 [ %210, %204 ], [ 0, %194 ]
  %199 = phi i32 [ %207, %204 ], [ %185, %194 ]
  %200 = load ptr, ptr %197, align 4
  %201 = icmp eq ptr %200, %186
  br i1 %201, label %211, label %202

202:                                              ; preds = %196
  %203 = icmp eq i32 %199, 0
  br i1 %203, label %275, label %204

204:                                              ; preds = %202
  %205 = load ptr, ptr %195, align 4
  %206 = getelementptr inbounds %struct.netdev_hw_addr, ptr %200, i32 0, i32 2
  %207 = add i32 %199, -1
  %208 = tail call i32 %205(ptr noundef %2, ptr noundef %206, i32 noundef %199) #18
  %209 = icmp slt i32 %208, 0
  %210 = add i32 %198, 1
  br i1 %209, label %281, label %196

211:                                              ; preds = %196, %190
  %212 = phi i32 [ 0, %190 ], [ %198, %196 ]
  %213 = phi i32 [ %185, %190 ], [ %199, %196 ]
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %275, label %215

215:                                              ; preds = %270, %211
  %216 = phi i32 [ %273, %270 ], [ %213, %211 ]
  %217 = icmp ult i32 %216, 16
  %218 = shl i32 %216, 3
  %219 = select i1 %217, i32 21508, i32 21604
  %220 = add i32 %219, %218
  %221 = load ptr, ptr %2, align 4
  %222 = getelementptr inbounds %struct.e1000_adapter, ptr %221, i32 0, i32 85
  %223 = load i32, ptr %222, align 4
  %224 = and i32 %223, 2048
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %243, label %226

226:                                              ; preds = %215
  %227 = load ptr, ptr %14, align 4
  %228 = getelementptr i8, ptr %227, i32 23380
  %229 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %228) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %230 = and i32 %229, 16777216
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %243, label %232

232:                                              ; preds = %236, %226
  %233 = phi i32 [ %234, %236 ], [ 2000, %226 ]
  %234 = add nsw i32 %233, -1
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %243, label %236

236:                                              ; preds = %232
  %237 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %237(i32 noundef 10737400) #18
  %238 = load ptr, ptr %14, align 4
  %239 = getelementptr i8, ptr %238, i32 23380
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %239) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %241 = and i32 %240, 16777216
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %232

243:                                              ; preds = %236, %232, %226, %215
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %244 = load ptr, ptr %14, align 4
  %245 = getelementptr i8, ptr %244, i32 %220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %245, i32 0) #18, !srcloc !12
  %246 = select i1 %217, i32 21504, i32 21600
  %247 = add i32 %246, %218
  %248 = load ptr, ptr %2, align 4
  %249 = getelementptr inbounds %struct.e1000_adapter, ptr %248, i32 0, i32 85
  %250 = load i32, ptr %249, align 4
  %251 = and i32 %250, 2048
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %270, label %253

253:                                              ; preds = %243
  %254 = load ptr, ptr %14, align 4
  %255 = getelementptr i8, ptr %254, i32 23380
  %256 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %255) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %257 = and i32 %256, 16777216
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %270, label %259

259:                                              ; preds = %263, %253
  %260 = phi i32 [ %261, %263 ], [ 2000, %253 ]
  %261 = add nsw i32 %260, -1
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %270, label %263

263:                                              ; preds = %259
  %264 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %264(i32 noundef 10737400) #18
  %265 = load ptr, ptr %14, align 4
  %266 = getelementptr i8, ptr %265, i32 23380
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %266) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %268 = and i32 %267, 16777216
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %259

270:                                              ; preds = %263, %259, %253, %243
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %271 = load ptr, ptr %14, align 4
  %272 = getelementptr i8, ptr %271, i32 %247
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %272, i32 0) #18, !srcloc !12
  %273 = add i32 %216, -1
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %215

275:                                              ; preds = %270, %211, %202
  %276 = phi i32 [ %212, %211 ], [ %212, %270 ], [ %185, %202 ]
  %277 = load ptr, ptr %14, align 4
  %278 = getelementptr i8, ptr %277, i32 8
  %279 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %278) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %280 = icmp slt i32 %276, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %275, %204, %177
  %282 = or i32 %141, 8
  br label %283

283:                                              ; preds = %281, %275, %99, %58, %23
  %284 = phi i32 [ %24, %23 ], [ %24, %58 ], [ %24, %99 ], [ %282, %281 ], [ %141, %275 ]
  %285 = load ptr, ptr %2, align 4
  %286 = getelementptr inbounds %struct.e1000_adapter, ptr %285, i32 0, i32 85
  %287 = load i32, ptr %286, align 4
  %288 = and i32 %287, 2048
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %307, label %290

290:                                              ; preds = %283
  %291 = load ptr, ptr %14, align 4
  %292 = getelementptr i8, ptr %291, i32 23380
  %293 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %292) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %294 = and i32 %293, 16777216
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %307, label %296

296:                                              ; preds = %300, %290
  %297 = phi i32 [ %298, %300 ], [ 2000, %290 ]
  %298 = add nsw i32 %297, -1
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %307, label %300

300:                                              ; preds = %296
  %301 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %301(i32 noundef 10737400) #18
  %302 = load ptr, ptr %14, align 4
  %303 = getelementptr i8, ptr %302, i32 23380
  %304 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %303) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %305 = and i32 %304, 16777216
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %296

307:                                              ; preds = %300, %296, %290, %283
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %308 = load ptr, ptr %14, align 4
  %309 = getelementptr i8, ptr %308, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %309, i32 %284) #18, !srcloc !12
  %310 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %311 = load i64, ptr %310, align 16
  %312 = and i64 %311, 256
  %313 = icmp eq i64 %312, 0
  %314 = load ptr, ptr %14, align 4
  %315 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %314) #18
  tail call void asm sideeffect "dsb ", "~{memory}"() #18
  %316 = load ptr, ptr %2, align 4
  %317 = getelementptr inbounds %struct.e1000_adapter, ptr %316, i32 0, i32 85
  %318 = load i32, ptr %317, align 4
  %319 = and i32 %318, 2048
  %320 = icmp eq i32 %319, 0
  br i1 %313, label %342, label %321

321:                                              ; preds = %307
  br i1 %320, label %339, label %322

322:                                              ; preds = %321
  %323 = load ptr, ptr %14, align 4
  %324 = getelementptr i8, ptr %323, i32 23380
  %325 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %324) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %326 = and i32 %325, 16777216
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %339, label %328

328:                                              ; preds = %332, %322
  %329 = phi i32 [ %330, %332 ], [ 2000, %322 ]
  %330 = add nsw i32 %329, -1
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %339, label %332

332:                                              ; preds = %328
  %333 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %333(i32 noundef 10737400) #18
  %334 = load ptr, ptr %14, align 4
  %335 = getelementptr i8, ptr %334, i32 23380
  %336 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %335) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %337 = and i32 %336, 16777216
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %328

339:                                              ; preds = %332, %328, %322, %321
  %340 = or i32 %315, 1073741824
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %341 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %341, i32 %340) #18, !srcloc !12
  br label %363

342:                                              ; preds = %307
  br i1 %320, label %360, label %343

343:                                              ; preds = %342
  %344 = load ptr, ptr %14, align 4
  %345 = getelementptr i8, ptr %344, i32 23380
  %346 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %345) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %347 = and i32 %346, 16777216
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %360, label %349

349:                                              ; preds = %353, %343
  %350 = phi i32 [ %351, %353 ], [ 2000, %343 ]
  %351 = add nsw i32 %350, -1
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %360, label %353

353:                                              ; preds = %349
  %354 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %354(i32 noundef 10737400) #18
  %355 = load ptr, ptr %14, align 4
  %356 = getelementptr i8, ptr %355, i32 23380
  %357 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %356) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %358 = and i32 %357, 16777216
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %349

360:                                              ; preds = %353, %349, %343, %342
  %361 = and i32 %315, -1073741825
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %362 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %362, i32 %361) #18, !srcloc !12
  br label %363

363:                                              ; preds = %360, %339, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @e1000_init_manageability_pt(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 84
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 1048576
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %234, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 22560
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %12 = or i32 %11, 2097152
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr i8, ptr %13, i32 22624
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %16 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -3
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %20, label %109

20:                                               ; preds = %7
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr i8, ptr %21, i32 22672
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %24 = and i32 %23, -3073
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne i32 %23, 0
  %27 = and i1 %25, %26
  %28 = zext i1 %27 to i32
  %29 = or i32 %15, %28
  %30 = select i1 %25, i32 %23, i32 0
  %31 = load ptr, ptr %8, align 4
  %32 = getelementptr i8, ptr %31, i32 22676
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %34 = and i32 %33, -3073
  %35 = icmp eq i32 %34, 0
  %36 = icmp eq i32 %33, 0
  %37 = select i1 %36, i32 0, i32 2
  %38 = select i1 %35, i32 %37, i32 0
  %39 = or i32 %29, %38
  %40 = select i1 %35, i32 %33, i32 0
  %41 = or i32 %30, %40
  %42 = load ptr, ptr %8, align 4
  %43 = getelementptr i8, ptr %42, i32 22680
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %45 = and i32 %44, -3073
  %46 = icmp eq i32 %45, 0
  %47 = icmp eq i32 %44, 0
  %48 = select i1 %47, i32 0, i32 4
  %49 = select i1 %46, i32 %48, i32 0
  %50 = or i32 %39, %49
  %51 = select i1 %46, i32 %44, i32 0
  %52 = or i32 %41, %51
  %53 = load ptr, ptr %8, align 4
  %54 = getelementptr i8, ptr %53, i32 22684
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %56 = and i32 %55, -3073
  %57 = icmp eq i32 %56, 0
  %58 = icmp eq i32 %55, 0
  %59 = select i1 %58, i32 0, i32 8
  %60 = select i1 %57, i32 %59, i32 0
  %61 = or i32 %50, %60
  %62 = select i1 %57, i32 %55, i32 0
  %63 = or i32 %52, %62
  %64 = load ptr, ptr %8, align 4
  %65 = getelementptr i8, ptr %64, i32 22688
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %67 = and i32 %66, -3073
  %68 = icmp eq i32 %67, 0
  %69 = icmp eq i32 %66, 0
  %70 = select i1 %69, i32 0, i32 16
  %71 = select i1 %68, i32 %70, i32 0
  %72 = or i32 %61, %71
  %73 = select i1 %68, i32 %66, i32 0
  %74 = or i32 %63, %73
  %75 = load ptr, ptr %8, align 4
  %76 = getelementptr i8, ptr %75, i32 22692
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %78 = and i32 %77, -3073
  %79 = icmp eq i32 %78, 0
  %80 = icmp eq i32 %77, 0
  %81 = select i1 %80, i32 0, i32 32
  %82 = select i1 %79, i32 %81, i32 0
  %83 = or i32 %72, %82
  %84 = select i1 %79, i32 %77, i32 0
  %85 = or i32 %74, %84
  %86 = load ptr, ptr %8, align 4
  %87 = getelementptr i8, ptr %86, i32 22696
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %89 = and i32 %88, -3073
  %90 = icmp eq i32 %89, 0
  %91 = icmp eq i32 %88, 0
  %92 = select i1 %91, i32 0, i32 64
  %93 = select i1 %90, i32 %92, i32 0
  %94 = or i32 %83, %93
  %95 = select i1 %90, i32 %88, i32 0
  %96 = or i32 %85, %95
  %97 = load ptr, ptr %8, align 4
  %98 = getelementptr i8, ptr %97, i32 22700
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %100 = and i32 %99, -3073
  %101 = icmp eq i32 %100, 0
  %102 = icmp eq i32 %99, 0
  %103 = select i1 %102, i32 0, i32 128
  %104 = select i1 %101, i32 %103, i32 0
  %105 = or i32 %94, %104
  %106 = select i1 %101, i32 %99, i32 0
  %107 = or i32 %96, %106
  %108 = icmp eq i32 %107, 3072
  br i1 %108, label %182, label %111

109:                                              ; preds = %7
  %110 = or i32 %15, 96
  br label %182

111:                                              ; preds = %20
  %112 = load ptr, ptr %8, align 4
  %113 = getelementptr i8, ptr %112, i32 22672
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %151, label %116

116:                                              ; preds = %111
  %117 = load ptr, ptr %8, align 4
  %118 = getelementptr i8, ptr %117, i32 22676
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %151, label %121

121:                                              ; preds = %116
  %122 = load ptr, ptr %8, align 4
  %123 = getelementptr i8, ptr %122, i32 22680
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %151, label %126

126:                                              ; preds = %121
  %127 = load ptr, ptr %8, align 4
  %128 = getelementptr i8, ptr %127, i32 22684
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %151, label %131

131:                                              ; preds = %126
  %132 = load ptr, ptr %8, align 4
  %133 = getelementptr i8, ptr %132, i32 22688
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %151, label %136

136:                                              ; preds = %131
  %137 = load ptr, ptr %8, align 4
  %138 = getelementptr i8, ptr %137, i32 22692
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %151, label %141

141:                                              ; preds = %136
  %142 = load ptr, ptr %8, align 4
  %143 = getelementptr i8, ptr %142, i32 22696
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %141
  %147 = load ptr, ptr %8, align 4
  %148 = getelementptr i8, ptr %147, i32 22700
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %179

151:                                              ; preds = %146, %141, %136, %131, %126, %121, %116, %111
  %152 = phi i32 [ 22672, %111 ], [ 22676, %116 ], [ 22680, %121 ], [ 22684, %126 ], [ 22688, %131 ], [ 22692, %136 ], [ 22696, %141 ], [ 22700, %146 ]
  %153 = load ptr, ptr %2, align 4
  %154 = getelementptr inbounds %struct.e1000_adapter, ptr %153, i32 0, i32 85
  %155 = load i32, ptr %154, align 4
  %156 = and i32 %155, 2048
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %175, label %158

158:                                              ; preds = %151
  %159 = load ptr, ptr %8, align 4
  %160 = getelementptr i8, ptr %159, i32 23380
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %162 = and i32 %161, 16777216
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %175, label %164

164:                                              ; preds = %168, %158
  %165 = phi i32 [ %166, %168 ], [ 2000, %158 ]
  %166 = add nsw i32 %165, -1
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %175, label %168

168:                                              ; preds = %164
  %169 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %169(i32 noundef 10737400) #18
  %170 = load ptr, ptr %8, align 4
  %171 = getelementptr i8, ptr %170, i32 23380
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %173 = and i32 %172, 16777216
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %164

175:                                              ; preds = %168, %164, %158, %151
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %176 = load ptr, ptr %8, align 4
  %177 = getelementptr i8, ptr %176, i32 %152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 3072) #18, !srcloc !12
  %178 = or i32 %105, 2
  br label %182

179:                                              ; preds = %146
  %180 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 63
  %181 = load ptr, ptr %180, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %181, ptr noundef nonnull @.str.17) #20
  br label %182

182:                                              ; preds = %179, %175, %109, %20
  %183 = phi i32 [ %110, %109 ], [ %105, %20 ], [ %178, %175 ], [ %105, %179 ]
  %184 = load ptr, ptr %2, align 4
  %185 = getelementptr inbounds %struct.e1000_adapter, ptr %184, i32 0, i32 85
  %186 = load i32, ptr %185, align 4
  %187 = and i32 %186, 2048
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %206, label %189

189:                                              ; preds = %182
  %190 = load ptr, ptr %8, align 4
  %191 = getelementptr i8, ptr %190, i32 23380
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %191) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %193 = and i32 %192, 16777216
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %206, label %195

195:                                              ; preds = %199, %189
  %196 = phi i32 [ %197, %199 ], [ 2000, %189 ]
  %197 = add nsw i32 %196, -1
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %206, label %199

199:                                              ; preds = %195
  %200 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %200(i32 noundef 10737400) #18
  %201 = load ptr, ptr %8, align 4
  %202 = getelementptr i8, ptr %201, i32 23380
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %202) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %204 = and i32 %203, 16777216
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %195

206:                                              ; preds = %199, %195, %189, %182
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %207 = load ptr, ptr %8, align 4
  %208 = getelementptr i8, ptr %207, i32 22624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %208, i32 %183) #18, !srcloc !12
  %209 = load ptr, ptr %2, align 4
  %210 = getelementptr inbounds %struct.e1000_adapter, ptr %209, i32 0, i32 85
  %211 = load i32, ptr %210, align 4
  %212 = and i32 %211, 2048
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %231, label %214

214:                                              ; preds = %206
  %215 = load ptr, ptr %8, align 4
  %216 = getelementptr i8, ptr %215, i32 23380
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %216) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %218 = and i32 %217, 16777216
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %231, label %220

220:                                              ; preds = %224, %214
  %221 = phi i32 [ %222, %224 ], [ 2000, %214 ]
  %222 = add nsw i32 %221, -1
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %231, label %224

224:                                              ; preds = %220
  %225 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %225(i32 noundef 10737400) #18
  %226 = load ptr, ptr %8, align 4
  %227 = getelementptr i8, ptr %226, i32 23380
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %227) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %229 = and i32 %228, 16777216
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %220

231:                                              ; preds = %224, %220, %214, %206
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %232 = load ptr, ptr %8, align 4
  %233 = getelementptr i8, ptr %232, i32 22560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %233, i32 %12) #18, !srcloc !12
  br label %234

234:                                              ; preds = %231, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @e1000_setup_rctl(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %4 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 9
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 63
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 20
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 1500
  %13 = tail call i32 @e1000_lv_jumbo_workaround_ich8lan(ptr noundef %3, i1 noundef zeroext %12) #18
  br label %14

14:                                               ; preds = %7, %1
  %15 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 256
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %19 = and i32 %18, -45063
  %20 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = shl i32 %21, 12
  %23 = or i32 %19, %22
  %24 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 63
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 20
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %27, 1501
  %29 = and i32 %23, -32807
  %30 = or i32 %29, 32770
  %31 = or i32 %23, 32802
  %32 = select i1 %28, i32 %30, i32 %31
  %33 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 85
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %34, 26
  %36 = and i32 %35, 67108864
  %37 = or i32 %36, %32
  %38 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp ne i32 %39, 10
  %41 = and i32 %32, 32
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %40, i1 true, i1 %42
  br i1 %43, label %66, label %44

44:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #18
  store i16 0, ptr %2, align 2, !annotation !19
  %45 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 10
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 %46(ptr noundef %3, i32 noundef 24666, ptr noundef nonnull %2) #18
  %48 = load i16, ptr %2, align 2
  %49 = and i16 %48, -8
  %50 = or i16 %49, 4
  store i16 %50, ptr %2, align 2
  %51 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 17
  %52 = load ptr, ptr %51, align 4
  %53 = call i32 %52(ptr noundef %3, i32 noundef 24666, i16 noundef zeroext %50) #18
  %54 = load ptr, ptr %45, align 4
  %55 = call i32 %54(ptr noundef %3, i32 noundef 22, ptr noundef nonnull %2) #18
  %56 = load i16, ptr %2, align 2
  %57 = and i16 %56, 4095
  %58 = or i16 %57, 16384
  store i16 %58, ptr %2, align 2
  %59 = load ptr, ptr %51, align 4
  %60 = call i32 %59(ptr noundef %3, i32 noundef 16, i16 noundef zeroext 10275) #18
  %61 = load ptr, ptr %51, align 4
  %62 = call i32 %61(ptr noundef %3, i32 noundef 17, i16 noundef zeroext 3) #18
  %63 = load i16, ptr %2, align 2
  %64 = load ptr, ptr %51, align 4
  %65 = call i32 %64(ptr noundef %3, i32 noundef 22, i16 noundef zeroext %63) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #18
  br label %66

66:                                               ; preds = %44, %14
  %67 = and i32 %37, -33751045
  %68 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 8
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, -2048
  %71 = call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 21)
  switch i32 %71, label %78 [
    i32 7, label %76
    i32 1, label %72
    i32 3, label %74
  ]

72:                                               ; preds = %66
  %73 = or i32 %37, 33751040
  br label %78

74:                                               ; preds = %66
  %75 = or i32 %67, 33685504
  br label %78

76:                                               ; preds = %66
  %77 = or i32 %67, 33619968
  br label %78

78:                                               ; preds = %76, %74, %72, %66
  %79 = phi i32 [ %75, %74 ], [ %73, %72 ], [ %77, %76 ], [ %67, %66 ]
  %80 = load ptr, ptr %15, align 4
  %81 = getelementptr i8, ptr %80, i32 20488
  %82 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %83 = or i32 %82, 32768
  %84 = load ptr, ptr %3, align 4
  %85 = getelementptr inbounds %struct.e1000_adapter, ptr %84, i32 0, i32 85
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 2048
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %106, label %89

89:                                               ; preds = %78
  %90 = load ptr, ptr %15, align 4
  %91 = getelementptr i8, ptr %90, i32 23380
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %93 = and i32 %92, 16777216
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %99, %89
  %96 = phi i32 [ %97, %99 ], [ 2000, %89 ]
  %97 = add nsw i32 %96, -1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %100(i32 noundef 10737400) #18
  %101 = load ptr, ptr %15, align 4
  %102 = getelementptr i8, ptr %101, i32 23380
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %104 = and i32 %103, 16777216
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %95

106:                                              ; preds = %99, %95, %89, %78
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %107 = load ptr, ptr %15, align 4
  %108 = getelementptr i8, ptr %107, i32 20488
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %83) #18, !srcloc !12
  %109 = load ptr, ptr %24, align 4
  %110 = getelementptr inbounds %struct.net_device, ptr %109, i32 0, i32 20
  %111 = load i32, ptr %110, align 4
  %112 = lshr i32 %111, 12
  %113 = and i32 %111, 4095
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i32
  %116 = add nuw nsw i32 %112, %115
  %117 = icmp ugt i32 %116, 3
  %118 = and i32 %79, 32
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %117, i1 true, i1 %119
  %121 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 59
  br i1 %120, label %122, label %123

122:                                              ; preds = %106
  store i32 0, ptr %121, align 4
  br label %167

123:                                              ; preds = %106
  store i32 %116, ptr %121, align 4
  %124 = icmp eq i32 %116, 0
  br i1 %124, label %167, label %125

125:                                              ; preds = %123
  %126 = or i32 %79, 1024
  %127 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 60
  %128 = load i16, ptr %127, align 16
  %129 = lshr i16 %128, 7
  %130 = zext i16 %129 to i32
  switch i32 %116, label %139 [
    i32 3, label %131
    i32 2, label %133
    i32 1, label %136
  ]

131:                                              ; preds = %125
  %132 = or i32 %130, 67108864
  br label %133

133:                                              ; preds = %131, %125
  %134 = phi i32 [ %130, %125 ], [ %132, %131 ]
  %135 = or i32 %134, 262144
  br label %136

136:                                              ; preds = %133, %125
  %137 = phi i32 [ %130, %125 ], [ %135, %133 ]
  %138 = or i32 %137, 1024
  br label %139

139:                                              ; preds = %136, %125
  %140 = phi i32 [ %130, %125 ], [ %138, %136 ]
  %141 = load ptr, ptr %3, align 4
  %142 = getelementptr inbounds %struct.e1000_adapter, ptr %141, i32 0, i32 85
  %143 = load i32, ptr %142, align 4
  %144 = and i32 %143, 2048
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %163, label %146

146:                                              ; preds = %139
  %147 = load ptr, ptr %15, align 4
  %148 = getelementptr i8, ptr %147, i32 23380
  %149 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %150 = and i32 %149, 16777216
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %163, label %152

152:                                              ; preds = %156, %146
  %153 = phi i32 [ %154, %156 ], [ 2000, %146 ]
  %154 = add nsw i32 %153, -1
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %152
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %157(i32 noundef 10737400) #18
  %158 = load ptr, ptr %15, align 4
  %159 = getelementptr i8, ptr %158, i32 23380
  %160 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %159) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %161 = and i32 %160, 16777216
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %152

163:                                              ; preds = %156, %152, %146, %139
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %164 = load ptr, ptr %15, align 4
  %165 = getelementptr i8, ptr %164, i32 8560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %140) #18, !srcloc !12
  %166 = load ptr, ptr %24, align 4
  br label %167

167:                                              ; preds = %163, %123, %122
  %168 = phi ptr [ %166, %163 ], [ %109, %123 ], [ %109, %122 ]
  %169 = phi i32 [ %126, %163 ], [ %79, %123 ], [ %79, %122 ]
  %170 = getelementptr inbounds %struct.net_device, ptr %168, i32 0, i32 23
  %171 = load i64, ptr %170, align 16
  %172 = load ptr, ptr %3, align 4
  %173 = getelementptr inbounds %struct.e1000_adapter, ptr %172, i32 0, i32 85
  %174 = load i32, ptr %173, align 4
  %175 = and i32 %174, 2048
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %194, label %177

177:                                              ; preds = %167
  %178 = load ptr, ptr %15, align 4
  %179 = getelementptr i8, ptr %178, i32 23380
  %180 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %179) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %181 = and i32 %180, 16777216
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %194, label %183

183:                                              ; preds = %187, %177
  %184 = phi i32 [ %185, %187 ], [ 2000, %177 ]
  %185 = add nsw i32 %184, -1
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %194, label %187

187:                                              ; preds = %183
  %188 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %188(i32 noundef 10737400) #18
  %189 = load ptr, ptr %15, align 4
  %190 = getelementptr i8, ptr %189, i32 23380
  %191 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %190) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %192 = and i32 %191, 16777216
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %183

194:                                              ; preds = %187, %183, %177, %167
  %195 = and i64 %171, 17592186044416
  %196 = icmp eq i64 %195, 0
  %197 = and i32 %169, -13402117
  %198 = or i32 %197, 8421380
  %199 = select i1 %196, i32 %169, i32 %198
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %200 = load ptr, ptr %15, align 4
  %201 = getelementptr i8, ptr %200, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 %199) #18, !srcloc !12
  %202 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 84
  %203 = load i32, ptr %202, align 8
  %204 = and i32 %203, -1073741825
  store i32 %204, ptr %202, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @e1000e_update_tdt_wa(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 65
  %5 = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 65, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 23380
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %9 = and i32 %8, 16777216
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %15, %2
  %12 = phi i32 [ %13, %15 ], [ 2000, %2 ]
  %13 = add nsw i32 %12, -1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 10737400) #18
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr i8, ptr %17, i32 23380
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %20 = and i32 %19, 16777216
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %11

22:                                               ; preds = %15, %11, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !45
  tail call void @arm_heavy_mb() #18
  %23 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %1) #18, !srcloc !12
  %25 = load ptr, ptr %23, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !46
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %38, label %28, !prof !13

28:                                               ; preds = %22
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr i8, ptr %29, i32 1024
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %32 = and i32 %31, -3
  tail call void @__ew32(ptr noundef %4, i32 noundef 1024, i32 noundef %32)
  %33 = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 63
  %34 = load ptr, ptr %33, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %34, ptr noundef nonnull @.str.18) #20
  %35 = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 3
  %36 = load ptr, ptr @system_wq, align 4
  %37 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %36, ptr noundef %35) #18
  br label %38

38:                                               ; preds = %28, %22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rss_key_fill(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_alloc_rx_buffers_ps(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 63
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 64
  %8 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 5
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  %11 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 9
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %174, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr %struct.e1000_buffer, ptr %14, i32 %10
  %16 = load ptr, ptr %7, align 32
  %17 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 1
  %18 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 59
  %19 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %20 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 60
  %21 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44, i32 3
  %22 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 85
  %23 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 8
  %24 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 4
  br label %25

25:                                               ; preds = %166, %13
  %26 = phi i32 [ %1, %13 ], [ %29, %166 ]
  %27 = phi i32 [ %10, %13 ], [ %170, %166 ]
  %28 = phi ptr [ %15, %13 ], [ %172, %166 ]
  %29 = add i32 %26, -1
  %30 = load ptr, ptr %17, align 4
  %31 = getelementptr %union.e1000_rx_desc_packet_split, ptr %30, i32 %27
  %32 = getelementptr inbounds %struct.e1000_buffer, ptr %28, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %18, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %60, label %36

36:                                               ; preds = %25
  %37 = load ptr, ptr %33, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = getelementptr %struct.e1000_ps_page, ptr %33, i32 0, i32 1
  %41 = load i64, ptr %40, align 8
  br label %60

42:                                               ; preds = %36
  %43 = tail call ptr @__alloc_pages(i32 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef null) #18
  store ptr %43, ptr %33, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %94, %73, %42
  %46 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 56
  %47 = load i32, ptr %46, align 64
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 64
  br label %174

49:                                               ; preds = %42
  %50 = tail call i32 @dma_map_page_attrs(ptr noundef %19, ptr noundef nonnull %43, i32 noundef 0, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #18
  %51 = zext i32 %50 to i64
  %52 = getelementptr %struct.e1000_ps_page, ptr %33, i32 0, i32 1
  store i64 %51, ptr %52, align 8
  %53 = icmp eq i32 %50, -1
  br i1 %53, label %54, label %60

54:                                               ; preds = %97, %76, %49
  %55 = load ptr, ptr %7, align 32
  %56 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.20) #20
  %57 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 57
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 4
  br label %174

60:                                               ; preds = %49, %39, %25
  %61 = phi i64 [ -1, %25 ], [ %41, %39 ], [ %51, %49 ]
  %62 = getelementptr [4 x i64], ptr %31, i32 0, i32 1
  store i64 %61, ptr %62, align 8
  %63 = load ptr, ptr %32, align 4
  %64 = getelementptr %struct.e1000_ps_page, ptr %63, i32 1
  %65 = load i32, ptr %18, align 4
  %66 = icmp ugt i32 %65, 1
  br i1 %66, label %67, label %81

67:                                               ; preds = %60
  %68 = load ptr, ptr %64, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = getelementptr %struct.e1000_ps_page, ptr %63, i32 1, i32 1
  %72 = load i64, ptr %71, align 8
  br label %81

73:                                               ; preds = %67
  %74 = tail call ptr @__alloc_pages(i32 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef null) #18
  store ptr %74, ptr %64, align 8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %45, label %76

76:                                               ; preds = %73
  %77 = tail call i32 @dma_map_page_attrs(ptr noundef %19, ptr noundef nonnull %74, i32 noundef 0, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #18
  %78 = zext i32 %77 to i64
  %79 = getelementptr %struct.e1000_ps_page, ptr %63, i32 1, i32 1
  store i64 %78, ptr %79, align 8
  %80 = icmp eq i32 %77, -1
  br i1 %80, label %54, label %81

81:                                               ; preds = %76, %70, %60
  %82 = phi i64 [ -1, %60 ], [ %72, %70 ], [ %78, %76 ]
  %83 = getelementptr [4 x i64], ptr %31, i32 0, i32 2
  store i64 %82, ptr %83, align 8
  %84 = load ptr, ptr %32, align 4
  %85 = getelementptr %struct.e1000_ps_page, ptr %84, i32 2
  %86 = load i32, ptr %18, align 4
  %87 = icmp ugt i32 %86, 2
  br i1 %87, label %88, label %102

88:                                               ; preds = %81
  %89 = load ptr, ptr %85, align 8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = getelementptr %struct.e1000_ps_page, ptr %84, i32 2, i32 1
  %93 = load i64, ptr %92, align 8
  br label %102

94:                                               ; preds = %88
  %95 = tail call ptr @__alloc_pages(i32 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef null) #18
  store ptr %95, ptr %85, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %45, label %97

97:                                               ; preds = %94
  %98 = tail call i32 @dma_map_page_attrs(ptr noundef %19, ptr noundef nonnull %95, i32 noundef 0, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #18
  %99 = zext i32 %98 to i64
  %100 = getelementptr %struct.e1000_ps_page, ptr %84, i32 2, i32 1
  store i64 %99, ptr %100, align 8
  %101 = icmp eq i32 %98, -1
  br i1 %101, label %54, label %102

102:                                              ; preds = %97, %91, %81
  %103 = phi i64 [ -1, %81 ], [ %93, %91 ], [ %99, %97 ]
  %104 = getelementptr [4 x i64], ptr %31, i32 0, i32 3
  store i64 %103, ptr %104, align 8
  %105 = load i16, ptr %20, align 16
  %106 = zext i16 %105 to i32
  %107 = add nuw nsw i32 %106, 2
  %108 = tail call ptr @__netdev_alloc_skb(ptr noundef %6, i32 noundef %107, i32 noundef %2) #18
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %102
  %111 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 56
  %112 = load i32, ptr %111, align 64
  %113 = add i32 %112, 1
  store i32 %113, ptr %111, align 64
  br label %174

114:                                              ; preds = %102
  %115 = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 17
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr i8, ptr %116, i32 2
  store ptr %117, ptr %115, align 4
  %118 = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 14
  %119 = load ptr, ptr %118, align 8
  %120 = getelementptr i8, ptr %119, i32 2
  store ptr %120, ptr %118, align 8
  %121 = getelementptr inbounds %struct.e1000_buffer, ptr %28, i32 0, i32 1
  store ptr %108, ptr %121, align 4
  %122 = load ptr, ptr %115, align 4
  %123 = load i16, ptr %20, align 16
  %124 = zext i16 %123 to i32
  %125 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %122) #18
  %126 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %127 = xor i1 %126, true
  %128 = select i1 %125, i1 %127, i1 false
  br i1 %128, label %129, label %137, !prof !38

129:                                              ; preds = %114
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %130 = tail call ptr @dev_driver_string(ptr noundef %19) #18
  %131 = load ptr, ptr %21, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = load ptr, ptr %19, align 4
  br label %135

135:                                              ; preds = %133, %129
  %136 = phi ptr [ %134, %133 ], [ %131, %129 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef %130, ptr noundef %136) #18
  br label %137

137:                                              ; preds = %135, %114
  br i1 %125, label %138, label %139

138:                                              ; preds = %137
  store i32 -1, ptr %28, align 4
  br label %148

139:                                              ; preds = %137
  %140 = load ptr, ptr @mem_map, align 4
  %141 = ptrtoint ptr %122 to i32
  %142 = add i32 %141, 1073741824
  %143 = lshr i32 %142, 12
  %144 = getelementptr %struct.page, ptr %140, i32 %143
  %145 = and i32 %141, 4095
  %146 = tail call i32 @dma_map_page_attrs(ptr noundef %19, ptr noundef %144, i32 noundef %145, i32 noundef %124, i32 noundef 2, i32 noundef 0) #18
  store i32 %146, ptr %28, align 4
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %153

148:                                              ; preds = %139, %138
  %149 = getelementptr inbounds %struct.e1000_buffer, ptr %28, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.21) #20
  %150 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 57
  %151 = load i32, ptr %150, align 4
  %152 = add i32 %151, 1
  store i32 %152, ptr %150, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %108, i32 noundef 1) #18
  store ptr null, ptr %149, align 4
  br label %174

153:                                              ; preds = %139
  %154 = zext i32 %146 to i64
  store i64 %154, ptr %31, align 8
  %155 = and i32 %27, 15
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %166, !prof !38

157:                                              ; preds = %153
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !47
  tail call void @arm_heavy_mb() #18
  %158 = load i32, ptr %22, align 4
  %159 = and i32 %158, 2048
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %157
  %162 = shl i32 %27, 1
  tail call fastcc void @e1000e_update_rdt_wa(ptr noundef %0, i32 noundef %162)
  br label %166

163:                                              ; preds = %157
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !48
  tail call void @arm_heavy_mb() #18
  %164 = shl i32 %27, 1
  %165 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %164) #18, !srcloc !12
  br label %166

166:                                              ; preds = %163, %161, %153
  %167 = add i32 %27, 1
  %168 = load i32, ptr %24, align 4
  %169 = icmp eq i32 %167, %168
  %170 = select i1 %169, i32 0, i32 %167
  %171 = load ptr, ptr %11, align 4
  %172 = getelementptr %struct.e1000_buffer, ptr %171, i32 %170
  %173 = icmp eq i32 %29, 0
  br i1 %173, label %174, label %25

174:                                              ; preds = %166, %148, %110, %54, %45, %3
  %175 = phi i32 [ %27, %110 ], [ %27, %148 ], [ %27, %54 ], [ %27, %45 ], [ %10, %3 ], [ %170, %166 ]
  %176 = trunc i32 %175 to i16
  store i16 %176, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_alloc_jumbo_rx_buffers(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 63
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 5
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 9
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %71, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr %struct.e1000_buffer, ptr %13, i32 %9
  %15 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 64
  %16 = load ptr, ptr %15, align 32
  %17 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %18 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 1
  %19 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 4
  br label %20

20:                                               ; preds = %62, %12
  %21 = phi i32 [ %1, %12 ], [ %24, %62 ]
  %22 = phi i32 [ %9, %12 ], [ %63, %62 ]
  %23 = phi ptr [ %14, %12 ], [ %65, %62 ]
  %24 = add i32 %21, -1
  %25 = getelementptr inbounds %struct.e1000_buffer, ptr %23, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  tail call void @skb_trim(ptr noundef nonnull %26, i32 noundef 0) #18
  br label %39

29:                                               ; preds = %20
  %30 = tail call ptr @__netdev_alloc_skb(ptr noundef %6, i32 noundef 242, i32 noundef %2) #18
  %31 = icmp eq ptr %30, null
  br i1 %31, label %67, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 17
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 2
  store ptr %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 14
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr i8, ptr %37, i32 2
  store ptr %38, ptr %36, align 8
  store ptr %30, ptr %25, align 4
  br label %39

39:                                               ; preds = %32, %28
  %40 = getelementptr inbounds %struct.e1000_buffer, ptr %23, i32 0, i32 2, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = tail call ptr @__alloc_pages(i32 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef null) #18
  store ptr %44, ptr %40, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %67, label %46, !prof !38

46:                                               ; preds = %43, %39
  %47 = phi ptr [ %44, %43 ], [ %41, %39 ]
  %48 = load i32, ptr %23, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = tail call i32 @dma_map_page_attrs(ptr noundef %17, ptr noundef nonnull %47, i32 noundef 0, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #18
  store i32 %51, ptr %23, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %67, label %53

53:                                               ; preds = %50, %46
  %54 = phi i32 [ %51, %50 ], [ %48, %46 ]
  %55 = load ptr, ptr %18, align 4
  %56 = getelementptr %union.e1000_rx_desc_extended, ptr %55, i32 %22
  %57 = zext i32 %54 to i64
  store i64 %57, ptr %56, align 8
  %58 = add i32 %22, 1
  %59 = load i32, ptr %19, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62, !prof !38

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %53
  %63 = phi i32 [ 0, %61 ], [ %58, %53 ]
  %64 = load ptr, ptr %10, align 4
  %65 = getelementptr %struct.e1000_buffer, ptr %64, i32 %63
  %66 = icmp eq i32 %24, 0
  br i1 %66, label %71, label %20

67:                                               ; preds = %50, %43, %29
  %68 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 56
  %69 = load i32, ptr %68, align 64
  %70 = add i32 %69, 1
  store i32 %70, ptr %68, align 64
  br label %71

71:                                               ; preds = %67, %62, %3
  %72 = phi i32 [ %9, %3 ], [ %22, %67 ], [ %63, %62 ]
  %73 = load i16, ptr %7, align 4
  %74 = zext i16 %73 to i32
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %93, label %76, !prof !38

76:                                               ; preds = %71
  %77 = trunc i32 %72 to i16
  store i16 %77, ptr %7, align 4
  %78 = icmp eq i32 %72, 0
  br i1 %78, label %79, label %82, !prof !38

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 4
  %81 = load i32, ptr %80, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi i32 [ %81, %79 ], [ %72, %76 ]
  %84 = add i32 %83, -1
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !49
  tail call void @arm_heavy_mb() #18
  %85 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 85
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 2048
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %82
  tail call fastcc void @e1000e_update_rdt_wa(ptr noundef %0, i32 noundef %84)
  br label %93

90:                                               ; preds = %82
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !50
  tail call void @arm_heavy_mb() #18
  %91 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 8
  %92 = load ptr, ptr %91, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %84) #18, !srcloc !12
  br label %93

93:                                               ; preds = %90, %89, %71
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_alloc_rx_buffers(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 63
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 8
  %8 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 5
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  %11 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 9
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %102, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr %struct.e1000_buffer, ptr %14, i32 %10
  %16 = load i32, ptr %7, align 4
  %17 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 64
  %18 = load ptr, ptr %17, align 32
  %19 = add i32 %16, 2
  %20 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %21 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44, i32 3
  %22 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 1
  %23 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 85
  %24 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 8
  %25 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 4
  br label %26

26:                                               ; preds = %94, %13
  %27 = phi i32 [ %1, %13 ], [ %30, %94 ]
  %28 = phi i32 [ %10, %13 ], [ %98, %94 ]
  %29 = phi ptr [ %15, %13 ], [ %100, %94 ]
  %30 = add i32 %27, -1
  %31 = getelementptr inbounds %struct.e1000_buffer, ptr %29, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  tail call void @skb_trim(ptr noundef nonnull %32, i32 noundef 0) #18
  br label %49

35:                                               ; preds = %26
  %36 = tail call ptr @__netdev_alloc_skb(ptr noundef %6, i32 noundef %19, i32 noundef %2) #18
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 56
  %40 = load i32, ptr %39, align 64
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 64
  br label %102

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 17
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 2
  store ptr %45, ptr %43, align 4
  %46 = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 14
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr i8, ptr %47, i32 2
  store ptr %48, ptr %46, align 8
  store ptr %36, ptr %31, align 4
  br label %49

49:                                               ; preds = %42, %34
  %50 = phi ptr [ %32, %34 ], [ %36, %42 ]
  %51 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 17
  %52 = load ptr, ptr %51, align 4
  %53 = load i32, ptr %7, align 4
  %54 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %52) #18
  %55 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %56 = xor i1 %55, true
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %66, !prof !38

58:                                               ; preds = %49
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %59 = tail call ptr @dev_driver_string(ptr noundef %20) #18
  %60 = load ptr, ptr %21, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load ptr, ptr %20, align 4
  br label %64

64:                                               ; preds = %62, %58
  %65 = phi ptr [ %63, %62 ], [ %60, %58 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef %59, ptr noundef %65) #18
  br label %66

66:                                               ; preds = %64, %49
  br i1 %54, label %67, label %68

67:                                               ; preds = %66
  store i32 -1, ptr %29, align 4
  br label %77

68:                                               ; preds = %66
  %69 = load ptr, ptr @mem_map, align 4
  %70 = ptrtoint ptr %52 to i32
  %71 = add i32 %70, 1073741824
  %72 = lshr i32 %71, 12
  %73 = getelementptr %struct.page, ptr %69, i32 %72
  %74 = and i32 %70, 4095
  %75 = tail call i32 @dma_map_page_attrs(ptr noundef %20, ptr noundef %73, i32 noundef %74, i32 noundef %53, i32 noundef 2, i32 noundef 0) #18
  store i32 %75, ptr %29, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %81

77:                                               ; preds = %68, %67
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.21) #20
  %78 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 57
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %78, align 4
  br label %102

81:                                               ; preds = %68
  %82 = load ptr, ptr %22, align 4
  %83 = getelementptr %union.e1000_rx_desc_extended, ptr %82, i32 %28
  %84 = zext i32 %75 to i64
  store i64 %84, ptr %83, align 8
  %85 = and i32 %28, 15
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %94, !prof !38

87:                                               ; preds = %81
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !51
  tail call void @arm_heavy_mb() #18
  %88 = load i32, ptr %23, align 4
  %89 = and i32 %88, 2048
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  tail call fastcc void @e1000e_update_rdt_wa(ptr noundef %0, i32 noundef %28)
  br label %94

92:                                               ; preds = %87
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !52
  tail call void @arm_heavy_mb() #18
  %93 = load ptr, ptr %24, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %28) #18, !srcloc !12
  br label %94

94:                                               ; preds = %92, %91, %81
  %95 = add i32 %28, 1
  %96 = load i32, ptr %25, align 4
  %97 = icmp eq i32 %95, %96
  %98 = select i1 %97, i32 0, i32 %95
  %99 = load ptr, ptr %11, align 4
  %100 = getelementptr %struct.e1000_buffer, ptr %99, i32 %98
  %101 = icmp eq i32 %30, 0
  br i1 %101, label %102, label %26

102:                                              ; preds = %94, %77, %38, %3
  %103 = phi i32 [ %28, %77 ], [ %28, %38 ], [ %10, %3 ], [ %98, %94 ]
  %104 = trunc i32 %103 to i16
  store i16 %104, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @e1000e_update_rdt_wa(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 65
  %5 = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 65, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 23380
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %9 = and i32 %8, 16777216
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %15, %2
  %12 = phi i32 [ %13, %15 ], [ 2000, %2 ]
  %13 = add nsw i32 %12, -1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 10737400) #18
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr i8, ptr %17, i32 23380
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %20 = and i32 %19, 16777216
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %11

22:                                               ; preds = %15, %11, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !53
  tail call void @arm_heavy_mb() #18
  %23 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %1) #18, !srcloc !12
  %25 = load ptr, ptr %23, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !54
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %38, label %28, !prof !13

28:                                               ; preds = %22
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr i8, ptr %29, i32 256
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %32 = and i32 %31, -3
  tail call void @__ew32(ptr noundef %4, i32 noundef 256, i32 noundef %32)
  %33 = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 63
  %34 = load ptr, ptr %33, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %34, ptr noundef nonnull @.str.24) #20
  %35 = getelementptr inbounds %struct.e1000_adapter, ptr %3, i32 0, i32 3
  %36 = load ptr, ptr @system_wq, align 4
  %37 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %36, ptr noundef %35) #18
  br label %38

38:                                               ; preds = %28, %22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_update_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_intr_msi(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = getelementptr i8, ptr %1, i32 2532
  %5 = getelementptr i8, ptr %1, i32 2536
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 192
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %77, label %11

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %1, i32 3212
  store i8 1, ptr %12, align 4
  %13 = getelementptr i8, ptr %1, i32 12584
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 33554432
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i8, ptr %18, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = getelementptr i8, ptr %1, i32 12592
  %25 = load ptr, ptr @system_wq, align 4
  %26 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %25, ptr noundef %24) #18
  br label %27

27:                                               ; preds = %23, %17, %11
  %28 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %27
  %33 = load i32, ptr %13, align 8
  %34 = and i32 %33, 16777216
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %68, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr i8, ptr %37, i32 256
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %40 = and i32 %39, -3
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr inbounds %struct.e1000_adapter, ptr %41, i32 0, i32 85
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 2048
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %63, label %46

46:                                               ; preds = %36
  %47 = load ptr, ptr %5, align 4
  %48 = getelementptr i8, ptr %47, i32 23380
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %50 = and i32 %49, 16777216
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %56, %46
  %53 = phi i32 [ %54, %56 ], [ 2000, %46 ]
  %54 = add nsw i32 %53, -1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 10737400) #18
  %58 = load ptr, ptr %5, align 4
  %59 = getelementptr i8, ptr %58, i32 23380
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %61 = and i32 %60, 16777216
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %52

63:                                               ; preds = %56, %52, %46, %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %64 = load ptr, ptr %5, align 4
  %65 = getelementptr i8, ptr %64, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %40) #18, !srcloc !12
  %66 = load i32, ptr %13, align 8
  %67 = or i32 %66, 1073741824
  store i32 %67, ptr %13, align 8
  br label %68

68:                                               ; preds = %63, %32, %27
  %69 = getelementptr i8, ptr %1, i32 2032
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load volatile i32, ptr @jiffies, align 64
  %75 = add i32 %74, 1
  %76 = tail call i32 @mod_timer(ptr noundef %3, i32 noundef %75) #18
  br label %77

77:                                               ; preds = %73, %68, %2
  %78 = and i32 %8, 4194304
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %100, label %80

80:                                               ; preds = %77
  %81 = getelementptr i8, ptr %1, i32 2648
  %82 = load i32, ptr %81, align 4
  %83 = icmp ugt i32 %82, 10
  br i1 %83, label %84, label %100

84:                                               ; preds = %80
  %85 = load ptr, ptr %5, align 4
  %86 = getelementptr i8, ptr %85, i32 4108
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %88 = and i32 %87, 255
  %89 = getelementptr i8, ptr %1, i32 2276
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, %88
  store i32 %91, ptr %89, align 4
  %92 = lshr i32 %87, 8
  %93 = and i32 %92, 255
  %94 = getelementptr i8, ptr %1, i32 2272
  %95 = load i32, ptr %94, align 32
  %96 = add i32 %95, %93
  store i32 %96, ptr %94, align 32
  %97 = getelementptr i8, ptr %1, i32 1468
  %98 = load ptr, ptr @system_wq, align 4
  %99 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %98, ptr noundef %97) #18
  br label %105

100:                                              ; preds = %80, %77
  %101 = getelementptr i8, ptr %1, i32 2056
  %102 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %101) #18
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = getelementptr i8, ptr %1, i32 2300
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %104, i8 0, i64 16, i1 false)
  tail call void @__napi_schedule(ptr noundef %101) #18
  br label %105

105:                                              ; preds = %103, %100, %84
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_intr(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = getelementptr i8, ptr %1, i32 2532
  %5 = getelementptr i8, ptr %1, i32 2536
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 192
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %113, label %10

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %1, i32 2032
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 8
  %14 = icmp ne i32 %13, 0
  %15 = icmp sgt i32 %8, -1
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %113, label %17

17:                                               ; preds = %10
  %18 = and i32 %8, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %85, label %20

20:                                               ; preds = %17
  %21 = getelementptr i8, ptr %1, i32 3212
  store i8 1, ptr %21, align 4
  %22 = getelementptr i8, ptr %1, i32 12584
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 33554432
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %20
  %27 = load ptr, ptr %5, align 4
  %28 = getelementptr i8, ptr %27, i32 8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = getelementptr i8, ptr %1, i32 12592
  %34 = load ptr, ptr @system_wq, align 4
  %35 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %34, ptr noundef %33) #18
  br label %36

36:                                               ; preds = %32, %26, %20
  %37 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %77

41:                                               ; preds = %36
  %42 = load i32, ptr %22, align 8
  %43 = and i32 %42, 16777216
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %77, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %5, align 4
  %47 = getelementptr i8, ptr %46, i32 256
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %49 = and i32 %48, -3
  %50 = load ptr, ptr %4, align 4
  %51 = getelementptr inbounds %struct.e1000_adapter, ptr %50, i32 0, i32 85
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 2048
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %45
  %56 = load ptr, ptr %5, align 4
  %57 = getelementptr i8, ptr %56, i32 23380
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %59 = and i32 %58, 16777216
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %65, %55
  %62 = phi i32 [ %63, %65 ], [ 2000, %55 ]
  %63 = add nsw i32 %62, -1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 10737400) #18
  %67 = load ptr, ptr %5, align 4
  %68 = getelementptr i8, ptr %67, i32 23380
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %70 = and i32 %69, 16777216
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %61

72:                                               ; preds = %65, %61, %55, %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %73 = load ptr, ptr %5, align 4
  %74 = getelementptr i8, ptr %73, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %49) #18, !srcloc !12
  %75 = load i32, ptr %22, align 8
  %76 = or i32 %75, 1073741824
  store i32 %76, ptr %22, align 8
  br label %77

77:                                               ; preds = %72, %41, %36
  %78 = load volatile i32, ptr %11, align 4
  %79 = and i32 %78, 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load volatile i32, ptr @jiffies, align 64
  %83 = add i32 %82, 1
  %84 = tail call i32 @mod_timer(ptr noundef %3, i32 noundef %83) #18
  br label %85

85:                                               ; preds = %81, %77, %17
  %86 = and i32 %8, 4194304
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %108, label %88

88:                                               ; preds = %85
  %89 = getelementptr i8, ptr %1, i32 2648
  %90 = load i32, ptr %89, align 4
  %91 = icmp ugt i32 %90, 10
  br i1 %91, label %92, label %108

92:                                               ; preds = %88
  %93 = load ptr, ptr %5, align 4
  %94 = getelementptr i8, ptr %93, i32 4108
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %96 = and i32 %95, 255
  %97 = getelementptr i8, ptr %1, i32 2276
  %98 = load i32, ptr %97, align 4
  %99 = add i32 %98, %96
  store i32 %99, ptr %97, align 4
  %100 = lshr i32 %95, 8
  %101 = and i32 %100, 255
  %102 = getelementptr i8, ptr %1, i32 2272
  %103 = load i32, ptr %102, align 32
  %104 = add i32 %103, %101
  store i32 %104, ptr %102, align 32
  %105 = getelementptr i8, ptr %1, i32 1468
  %106 = load ptr, ptr @system_wq, align 4
  %107 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %106, ptr noundef %105) #18
  br label %113

108:                                              ; preds = %88, %85
  %109 = getelementptr i8, ptr %1, i32 2056
  %110 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %109) #18
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = getelementptr i8, ptr %1, i32 2300
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %112, i8 0, i64 16, i1 false)
  tail call void @__napi_schedule(ptr noundef %109) #18
  br label %113

113:                                              ; preds = %111, %108, %92, %10, %2
  %114 = phi i32 [ 1, %92 ], [ 0, %10 ], [ 0, %2 ], [ 1, %111 ], [ 1, %108 ]
  ret i32 %114
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_intr_msix_rx(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 2440
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.e1000_ring, ptr %4, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.e1000_ring, ptr %4, i32 0, i32 12
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = shl i32 %10, 8
  %14 = udiv i32 1000000000, %13
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i32 [ %14, %12 ], [ 0, %8 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !55
  tail call void @arm_heavy_mb() #18
  %17 = getelementptr inbounds %struct.e1000_ring, ptr %4, i32 0, i32 13
  %18 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #18, !srcloc !12
  store i32 0, ptr %5, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = getelementptr i8, ptr %1, i32 2056
  %21 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %20) #18
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = getelementptr i8, ptr %1, i32 2308
  store i32 0, ptr %23, align 4
  %24 = getelementptr i8, ptr %1, i32 2312
  store i32 0, ptr %24, align 8
  tail call void @__napi_schedule(ptr noundef %20) #18
  br label %25

25:                                               ; preds = %22, %19
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_intr_msix_tx(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 2532
  %4 = getelementptr i8, ptr %1, i32 2048
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr i8, ptr %1, i32 2300
  store i32 0, ptr %6, align 4
  %7 = getelementptr i8, ptr %1, i32 2304
  store i32 0, ptr %7, align 64
  %8 = tail call fastcc zeroext i1 @e1000_clean_tx_irq(ptr noundef %5)
  br i1 %8, label %39, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.e1000_ring, ptr %5, i32 0, i32 11
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.e1000_adapter, ptr %12, i32 0, i32 85
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 2048
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %9
  %18 = getelementptr i8, ptr %1, i32 2536
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 23380
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %22 = and i32 %21, 16777216
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %28, %17
  %25 = phi i32 [ %26, %28 ], [ 2000, %17 ]
  %26 = add nsw i32 %25, -1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 10737400) #18
  %30 = load ptr, ptr %18, align 4
  %31 = getelementptr i8, ptr %30, i32 23380
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %33 = and i32 %32, 16777216
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %24

35:                                               ; preds = %28, %24, %17, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %36 = getelementptr i8, ptr %1, i32 2536
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %11) #18, !srcloc !12
  br label %39

39:                                               ; preds = %35, %2
  %40 = getelementptr i8, ptr %1, i32 2032
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %75

44:                                               ; preds = %39
  %45 = load ptr, ptr %4, align 64
  %46 = getelementptr inbounds %struct.e1000_ring, ptr %45, i32 0, i32 11
  %47 = load i32, ptr %46, align 4
  %48 = load ptr, ptr %3, align 4
  %49 = getelementptr inbounds %struct.e1000_adapter, ptr %48, i32 0, i32 85
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 2048
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %44
  %54 = getelementptr i8, ptr %1, i32 2536
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 23380
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %58 = and i32 %57, 16777216
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %64, %53
  %61 = phi i32 [ %62, %64 ], [ 2000, %53 ]
  %62 = add nsw i32 %61, -1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 10737400) #18
  %66 = load ptr, ptr %54, align 4
  %67 = getelementptr i8, ptr %66, i32 23380
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %69 = and i32 %68, 16777216
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %60

71:                                               ; preds = %64, %60, %53, %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %72 = getelementptr i8, ptr %1, i32 2536
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i8, ptr %73, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %47) #18, !srcloc !12
  br label %75

75:                                               ; preds = %71, %39
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_msix_other(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = getelementptr i8, ptr %1, i32 2532
  %5 = getelementptr i8, ptr %1, i32 2536
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 192
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %9 = getelementptr i8, ptr %1, i32 12560
  %10 = load i32, ptr %9, align 16
  %11 = and i32 %10, %8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.e1000_adapter, ptr %14, i32 0, i32 85
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 2048
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr i8, ptr %20, i32 23380
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %23 = and i32 %22, 16777216
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %29, %19
  %26 = phi i32 [ %27, %29 ], [ 2000, %19 ]
  %27 = add nsw i32 %26, -1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 10737400) #18
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr i8, ptr %31, i32 23380
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %34 = and i32 %33, 16777216
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %25

36:                                               ; preds = %29, %25, %19, %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr i8, ptr %37, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %11) #18, !srcloc !12
  br label %39

39:                                               ; preds = %36, %2
  %40 = and i32 %8, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %39
  %43 = getelementptr i8, ptr %1, i32 3212
  store i8 1, ptr %43, align 4
  %44 = getelementptr i8, ptr %1, i32 2032
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load volatile i32, ptr @jiffies, align 64
  %50 = add i32 %49, 1
  %51 = tail call i32 @mod_timer(ptr noundef %3, i32 noundef %50) #18
  br label %52

52:                                               ; preds = %48, %42, %39
  %53 = getelementptr i8, ptr %1, i32 2032
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %54, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %83

57:                                               ; preds = %52
  %58 = load ptr, ptr %4, align 4
  %59 = getelementptr inbounds %struct.e1000_adapter, ptr %58, i32 0, i32 85
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 2048
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %80, label %63

63:                                               ; preds = %57
  %64 = load ptr, ptr %5, align 4
  %65 = getelementptr i8, ptr %64, i32 23380
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %67 = and i32 %66, 16777216
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %73, %63
  %70 = phi i32 [ %71, %73 ], [ 2000, %63 ]
  %71 = add nsw i32 %70, -1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 10737400) #18
  %75 = load ptr, ptr %5, align 4
  %76 = getelementptr i8, ptr %75, i32 23380
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %78 = and i32 %77, 16777216
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %69

80:                                               ; preds = %73, %69, %63, %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %81 = load ptr, ptr %5, align 4
  %82 = getelementptr i8, ptr %81, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 17236548) #18, !srcloc !12
  br label %83

83:                                               ; preds = %80, %52
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @e1000_clean_tx_irq(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 63
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 6
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.e1000_buffer, ptr %9, i32 %7, i32 2, i32 0, i32 2
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 4
  %16 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 5
  %17 = getelementptr %struct.e1000_tx_desc, ptr %14, i32 %12, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %160, label %21

21:                                               ; preds = %1
  %22 = load i32, ptr %15, align 4
  br label %23

23:                                               ; preds = %89, %21
  %24 = phi i32 [ %81, %89 ], [ %22, %21 ]
  %25 = phi i32 [ %61, %89 ], [ 0, %21 ]
  %26 = phi i32 [ %60, %89 ], [ 0, %21 ]
  %27 = phi i32 [ %59, %89 ], [ 0, %21 ]
  %28 = phi i32 [ %84, %89 ], [ 0, %21 ]
  %29 = phi i32 [ %93, %89 ], [ %12, %21 ]
  %30 = phi i32 [ %83, %89 ], [ %7, %21 ]
  %31 = icmp ult i32 %28, %24
  br i1 %31, label %32, label %99

32:                                               ; preds = %23
  tail call void asm sideeffect "dmb osh", "~{memory}"() #18, !srcloc !56
  br label %33

33:                                               ; preds = %77, %32
  %34 = phi i32 [ %25, %32 ], [ %61, %77 ]
  %35 = phi i32 [ %26, %32 ], [ %60, %77 ]
  %36 = phi i32 [ %27, %32 ], [ %59, %77 ]
  %37 = phi i32 [ %28, %32 ], [ %84, %77 ]
  %38 = phi i32 [ %30, %32 ], [ %83, %77 ]
  %39 = load ptr, ptr %13, align 4
  %40 = load ptr, ptr %8, align 4
  %41 = getelementptr %struct.e1000_buffer, ptr %40, i32 %38
  %42 = icmp eq i32 %38, %29
  br i1 %42, label %43, label %58

43:                                               ; preds = %33
  %44 = getelementptr %struct.e1000_buffer, ptr %40, i32 %29, i32 2
  %45 = getelementptr inbounds %struct.anon.144, ptr %44, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %35
  %48 = getelementptr inbounds %struct.anon.144, ptr %44, i32 0, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, %36
  %51 = getelementptr %struct.e1000_buffer, ptr %40, i32 %29, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 5
  %56 = load i32, ptr %55, align 8
  %57 = add i32 %56, %34
  br label %58

58:                                               ; preds = %54, %43, %33
  %59 = phi i32 [ %50, %54 ], [ %50, %43 ], [ %36, %33 ]
  %60 = phi i32 [ %47, %54 ], [ %47, %43 ], [ %35, %33 ]
  %61 = phi i32 [ %57, %54 ], [ %34, %43 ], [ %34, %33 ]
  %62 = load i32, ptr %41, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %58
  %65 = load ptr, ptr %0, align 4
  %66 = getelementptr inbounds %struct.e1000_adapter, ptr %65, i32 0, i32 64
  %67 = load ptr, ptr %66, align 32
  %68 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  %69 = getelementptr %struct.e1000_buffer, ptr %40, i32 %38, i32 2, i32 0, i32 1
  %70 = load i16, ptr %69, align 4
  %71 = zext i16 %70 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %68, i32 noundef %62, i32 noundef %71, i32 noundef 1, i32 noundef 0) #18
  store i32 0, ptr %41, align 4
  br label %72

72:                                               ; preds = %64, %58
  %73 = getelementptr %struct.e1000_buffer, ptr %40, i32 %38, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %74, i32 noundef 0) #18
  store ptr null, ptr %73, align 4
  br label %77

77:                                               ; preds = %76, %72
  %78 = getelementptr %struct.e1000_buffer, ptr %40, i32 %38, i32 2
  store i32 0, ptr %78, align 4
  %79 = getelementptr %struct.e1000_tx_desc, ptr %39, i32 %38, i32 2
  store i32 0, ptr %79, align 4
  %80 = add i32 %38, 1
  %81 = load i32, ptr %15, align 4
  %82 = icmp eq i32 %80, %81
  %83 = select i1 %82, i32 0, i32 %80
  %84 = add i32 %37, 1
  br i1 %42, label %85, label %33

85:                                               ; preds = %77
  %86 = load i16, ptr %16, align 4
  %87 = zext i16 %86 to i32
  %88 = icmp eq i32 %83, %87
  br i1 %88, label %99, label %89

89:                                               ; preds = %85
  %90 = load ptr, ptr %8, align 4
  %91 = getelementptr %struct.e1000_buffer, ptr %90, i32 %83, i32 2, i32 0, i32 2
  %92 = load i16, ptr %91, align 2
  %93 = zext i16 %92 to i32
  %94 = load ptr, ptr %13, align 4
  %95 = getelementptr %struct.e1000_tx_desc, ptr %94, i32 %93, i32 2
  %96 = load i32, ptr %95, align 4
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %23

99:                                               ; preds = %89, %85, %23
  %100 = phi i32 [ %30, %23 ], [ %83, %89 ], [ %83, %85 ]
  %101 = phi i32 [ %28, %23 ], [ %84, %89 ], [ %84, %85 ]
  %102 = phi i32 [ %27, %23 ], [ %59, %89 ], [ %59, %85 ]
  %103 = phi i32 [ %26, %23 ], [ %60, %89 ], [ %60, %85 ]
  %104 = phi i32 [ %25, %23 ], [ %61, %89 ], [ %61, %85 ]
  %105 = trunc i32 %100 to i16
  store i16 %105, ptr %5, align 2
  %106 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 87
  %107 = load ptr, ptr %106, align 64
  %108 = icmp eq i32 %104, 0
  br i1 %108, label %121, label %109, !prof !38

109:                                              ; preds = %99
  %110 = getelementptr inbounds %struct.netdev_queue, ptr %107, i32 0, i32 14
  tail call void @dql_completed(ptr noundef %110, i32 noundef %104) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !57
  %111 = getelementptr inbounds %struct.netdev_queue, ptr %107, i32 0, i32 14, i32 1
  %112 = load volatile i32, ptr %111, align 4
  %113 = load volatile i32, ptr %110, align 64
  %114 = sub i32 %112, %113
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %121, label %116, !prof !38

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.netdev_queue, ptr %107, i32 0, i32 12
  %118 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %117) #18
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  tail call void @netif_schedule_queue(ptr noundef %107) #18
  br label %121

121:                                              ; preds = %120, %116, %109, %99
  %122 = icmp eq i32 %101, 0
  br i1 %122, label %160, label %123

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 6
  %125 = load volatile i32, ptr %124, align 4
  %126 = and i32 %125, 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %160

128:                                              ; preds = %123
  %129 = load i16, ptr %5, align 2
  %130 = zext i16 %129 to i32
  %131 = load i16, ptr %16, align 4
  %132 = zext i16 %131 to i32
  %133 = icmp ugt i16 %129, %131
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = xor i32 %132, -1
  %136 = add nsw i32 %135, %130
  br label %142

137:                                              ; preds = %128
  %138 = load i32, ptr %15, align 4
  %139 = xor i32 %132, -1
  %140 = add nsw i32 %139, %130
  %141 = add i32 %140, %138
  br label %142

142:                                              ; preds = %137, %134
  %143 = phi i32 [ %136, %134 ], [ %141, %137 ]
  %144 = icmp sgt i32 %143, 31
  br i1 %144, label %145, label %160

145:                                              ; preds = %142
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !58
  %146 = load ptr, ptr %106, align 64
  %147 = getelementptr inbounds %struct.netdev_queue, ptr %146, i32 0, i32 12
  %148 = load volatile i32, ptr %147, align 4
  %149 = and i32 %148, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %160, label %151

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 13
  %153 = load volatile i32, ptr %152, align 4
  %154 = and i32 %153, 8
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  tail call void @netif_tx_wake_queue(ptr noundef %146) #18
  %157 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 23
  %158 = load i32, ptr %157, align 8
  %159 = add i32 %158, 1
  store i32 %159, ptr %157, align 8
  br label %160

160:                                              ; preds = %156, %151, %145, %142, %123, %121, %1
  %161 = phi i32 [ %100, %145 ], [ %100, %151 ], [ %100, %156 ], [ %100, %142 ], [ %100, %123 ], [ %100, %121 ], [ %7, %1 ]
  %162 = phi i32 [ %101, %145 ], [ %101, %151 ], [ %101, %156 ], [ %101, %142 ], [ %101, %123 ], [ 0, %121 ], [ 0, %1 ]
  %163 = phi i32 [ %102, %145 ], [ %102, %151 ], [ %102, %156 ], [ %102, %142 ], [ %102, %123 ], [ %102, %121 ], [ 0, %1 ]
  %164 = phi i32 [ %103, %145 ], [ %103, %151 ], [ %103, %156 ], [ %103, %142 ], [ %103, %123 ], [ %103, %121 ], [ 0, %1 ]
  %165 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 25
  %166 = load i8, ptr %165, align 16, !range !20
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %195, label %168

168:                                              ; preds = %160
  store i8 0, ptr %165, align 16
  %169 = load ptr, ptr %8, align 4
  %170 = getelementptr %struct.e1000_buffer, ptr %169, i32 %161, i32 2
  %171 = load i32, ptr %170, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %193, label %173

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 27
  %175 = load i8, ptr %174, align 2
  %176 = zext i8 %175 to i32
  %177 = mul nuw nsw i32 %176, 100
  %178 = load volatile i32, ptr @jiffies, align 64
  %179 = sub i32 %171, %178
  %180 = add i32 %179, %177
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %193

182:                                              ; preds = %173
  %183 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 65, i32 1
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr i8, ptr %184, i32 8
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %185) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %187 = and i32 %186, 16
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %182
  %190 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 88
  %191 = load ptr, ptr @system_wq, align 4
  %192 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %191, ptr noundef %190) #18
  br label %195

193:                                              ; preds = %182, %173, %168
  %194 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 26
  store i8 0, ptr %194, align 1
  br label %195

195:                                              ; preds = %193, %189, %160
  %196 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 30
  %197 = load i32, ptr %196, align 4
  %198 = add i32 %197, %163
  store i32 %198, ptr %196, align 4
  %199 = getelementptr inbounds %struct.e1000_adapter, ptr %2, i32 0, i32 31
  %200 = load i32, ptr %199, align 64
  %201 = add i32 %200, %164
  store i32 %201, ptr %199, align 64
  %202 = load i32, ptr %15, align 4
  %203 = icmp ult i32 %162, %202
  ret i1 %203
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_intr_msi_test(i32 noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 2536
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 192
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %1, i32 12584
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 2147483647
  store i32 %12, ptr %10, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !59
  tail call void @arm_heavy_mb() #18
  br label %13

13:                                               ; preds = %9, %2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_read_phy_reg_mdic(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.pci_device_id, ptr %1, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [16 x ptr], ptr @e1000_info_tbl, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #18
  store i16 0, ptr %3, align 2
  %8 = getelementptr inbounds %struct.e1000_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = trunc i32 %9 to i16
  %11 = lshr i16 %10, 7
  %12 = and i16 %11, 1
  %13 = lshr i16 %10, 2
  %14 = and i16 %13, 2
  %15 = or i16 %14, %12
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  tail call fastcc void @__e1000e_disable_aspm(ptr noundef %0, i16 noundef zeroext %15, i32 noundef 0) #18
  br label %18

18:                                               ; preds = %17, %2
  %19 = tail call i32 @pci_enable_device_mem(ptr noundef %0) #18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %416

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %23 = tail call i32 @dma_set_mask(ptr noundef %22, i64 noundef -1) #18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @dma_set_mask(ptr noundef %22, i64 noundef 4294967295) #18
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.32) #20
  br label %414

29:                                               ; preds = %25, %21
  %30 = phi i64 [ -1, %21 ], [ 4294967295, %25 ]
  %31 = tail call i32 @dma_set_coherent_mask(ptr noundef %22, i64 noundef %30) #18
  %32 = tail call i32 @pci_select_bars(ptr noundef %0, i32 noundef 512) #18
  %33 = tail call i32 @pci_request_selected_regions_exclusive(ptr noundef %0, i32 noundef %32, ptr noundef nonnull @e1000e_driver_name) #18
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %414

35:                                               ; preds = %29
  tail call void @pci_set_master(ptr noundef %0) #18
  %36 = tail call i32 @pci_save_state(ptr noundef %0) #18
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %411

38:                                               ; preds = %35
  %39 = tail call ptr @alloc_etherdev_mqs(i32 noundef 11584, i32 noundef 1, i32 noundef 1) #18
  %40 = icmp eq ptr %39, null
  br i1 %40, label %411, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 111, i32 1
  store ptr %22, ptr %42, align 4
  %43 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 46
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 59
  store i32 %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  store ptr %39, ptr %46, align 8
  %47 = getelementptr i8, ptr %39, i32 1408
  %48 = getelementptr i8, ptr %39, i32 2532
  %49 = getelementptr i8, ptr %39, i32 2524
  store ptr %39, ptr %49, align 4
  %50 = getelementptr i8, ptr %39, i32 2528
  store ptr %0, ptr %50, align 32
  %51 = getelementptr i8, ptr %39, i32 1500
  store ptr %7, ptr %51, align 4
  %52 = getelementptr inbounds %struct.e1000_info, ptr %7, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr i8, ptr %39, i32 12572
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.e1000_info, ptr %7, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr i8, ptr %39, i32 12584
  store i32 %56, ptr %57, align 8
  %58 = load i32, ptr %8, align 4
  %59 = getelementptr i8, ptr %39, i32 12588
  store i32 %58, ptr %59, align 4
  store ptr %47, ptr %48, align 4
  %60 = load i32, ptr %7, align 4
  %61 = getelementptr i8, ptr %39, i32 2544
  %62 = getelementptr i8, ptr %39, i32 2648
  store i32 %60, ptr %62, align 4
  %63 = getelementptr inbounds %struct.e1000_info, ptr %7, i32 0, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr i8, ptr %39, i32 12576
  store i32 %64, ptr %65, align 32
  %66 = load i32, ptr @debug, align 4
  %67 = icmp ugt i32 %66, 31
  br i1 %67, label %73, label %68

68:                                               ; preds = %41
  %69 = icmp eq i32 %66, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %68
  %71 = shl nsw i32 -1, %66
  %72 = xor i32 %71, -1
  br label %73

73:                                               ; preds = %70, %68, %41
  %74 = phi i32 [ %72, %70 ], [ 7, %41 ], [ 0, %68 ]
  %75 = getelementptr i8, ptr %39, i32 12544
  store i32 %74, ptr %75, align 64
  %76 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %77 = load i32, ptr %76, align 8
  %78 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  %81 = sub i32 1, %77
  %82 = add i32 %81, %79
  %83 = select i1 %80, i32 0, i32 %82
  %84 = tail call ptr @ioremap(i32 noundef %77, i32 noundef %83) #18
  %85 = getelementptr i8, ptr %39, i32 2536
  store ptr %84, ptr %85, align 4
  %86 = icmp eq ptr %84, null
  br i1 %86, label %409, label %87

87:                                               ; preds = %73
  %88 = load i32, ptr %57, align 8
  %89 = and i32 %88, 2
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %111, label %91

91:                                               ; preds = %87
  %92 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1
  %93 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 3
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, 512
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %111, label %97

97:                                               ; preds = %91
  %98 = load i32, ptr %62, align 4
  %99 = icmp ult i32 %98, 12
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load i32, ptr %92, align 8
  %102 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  %105 = sub i32 1, %101
  %106 = add i32 %105, %103
  %107 = select i1 %104, i32 0, i32 %106
  %108 = tail call ptr @ioremap(i32 noundef %101, i32 noundef %107) #18
  %109 = getelementptr i8, ptr %39, i32 2540
  store ptr %108, ptr %109, align 4
  %110 = icmp eq ptr %108, null
  br i1 %110, label %406, label %111

111:                                              ; preds = %100, %97, %91, %87
  %112 = load i32, ptr %59, align 4
  %113 = and i32 %112, 32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  %116 = getelementptr i8, ptr %39, i32 12940
  store i16 6, ptr %116, align 4
  br label %117

117:                                              ; preds = %115, %111
  %118 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 16
  store ptr @e1000e_netdev_ops, ptr %118, align 8
  tail call void @e1000e_set_ethtool_ops(ptr noundef nonnull %39) #18
  %119 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 96
  store i32 500, ptr %119, align 8
  %120 = getelementptr i8, ptr %39, i32 2056
  tail call void @netif_napi_add(ptr noundef nonnull %39, ptr noundef %120, ptr noundef nonnull @e1000e_poll, i32 noundef 64) #18
  %121 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 3
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load ptr, ptr %22, align 4
  br label %126

126:                                              ; preds = %124, %117
  %127 = phi ptr [ %125, %124 ], [ %122, %117 ]
  %128 = tail call i32 @strlcpy(ptr noundef nonnull %39, ptr noundef %127, i32 noundef 16) #18
  %129 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 4
  store i32 %77, ptr %129, align 4
  %130 = add i32 %83, %77
  %131 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 3
  store i32 %130, ptr %131, align 8
  %132 = load i32, ptr @e1000_probe.cards_found, align 4
  %133 = add i32 %132, 1
  store i32 %133, ptr @e1000_probe.cards_found, align 4
  %134 = getelementptr i8, ptr %39, i32 2016
  store i32 %132, ptr %134, align 32
  tail call void @e1000e_check_options(ptr noundef %47) #18
  %135 = tail call fastcc i32 @e1000_sw_init(ptr noundef %47)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %396

137:                                              ; preds = %126
  %138 = getelementptr inbounds %struct.e1000_info, ptr %7, i32 0, i32 6
  %139 = load ptr, ptr %138, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(92) %61, ptr noundef align 4 dereferenceable(92) %139, i32 92, i1 false)
  %140 = getelementptr i8, ptr %39, i32 3400
  %141 = getelementptr inbounds %struct.e1000_info, ptr %7, i32 0, i32 8
  %142 = load ptr, ptr %141, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %140, ptr noundef align 4 dereferenceable(32) %142, i32 32, i1 false)
  %143 = getelementptr i8, ptr %39, i32 3244
  %144 = getelementptr inbounds %struct.e1000_info, ptr %7, i32 0, i32 7
  %145 = load ptr, ptr %144, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(88) %143, ptr noundef align 4 dereferenceable(88) %145, i32 88, i1 false)
  %146 = getelementptr inbounds %struct.e1000_info, ptr %7, i32 0, i32 5
  %147 = load ptr, ptr %146, align 4
  %148 = tail call i32 %147(ptr noundef %47) #18
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %390

150:                                              ; preds = %137
  %151 = load i32, ptr %57, align 8
  %152 = and i32 %151, 768
  %153 = icmp eq i32 %152, 768
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = load i32, ptr %62, align 4
  %156 = icmp ult i32 %155, 12
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  tail call void @e1000e_write_protect_nvm_ich8lan(ptr noundef %48) #18
  br label %158

158:                                              ; preds = %157, %154, %150
  %159 = getelementptr i8, ptr %39, i32 2572
  %160 = load ptr, ptr %159, align 4
  %161 = tail call i32 %160(ptr noundef %48) #18
  %162 = getelementptr i8, ptr %39, i32 3396
  store i8 0, ptr %162, align 4
  %163 = getelementptr i8, ptr %39, i32 3376
  %164 = load i32, ptr %163, align 4
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %166, label %170

166:                                              ; preds = %158
  %167 = getelementptr i8, ptr %39, i32 3390
  store i8 0, ptr %167, align 2
  %168 = getelementptr i8, ptr %39, i32 3391
  store i8 0, ptr %168, align 1
  %169 = getelementptr i8, ptr %39, i32 3344
  store i32 0, ptr %169, align 4
  br label %170

170:                                              ; preds = %166, %158
  %171 = getelementptr i8, ptr %39, i32 3256
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %178, label %174

174:                                              ; preds = %170
  %175 = tail call i32 %172(ptr noundef %48) #18
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %174
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.33) #20
  br label %178

178:                                              ; preds = %177, %174, %170
  %179 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 23
  store i64 1649268556169, ptr %179, align 16
  %180 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 24
  %181 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 15
  %182 = load i64, ptr %181, align 16
  %183 = or i64 %182, 16384
  store i64 %183, ptr %181, align 16
  store i64 28037547622793, ptr %180, align 8
  %184 = load i32, ptr %57, align 8
  %185 = and i32 %184, 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %178
  store i64 1649268556681, ptr %179, align 16
  br label %188

188:                                              ; preds = %187, %178
  %189 = phi i64 [ 1649268556713, %187 ], [ 1649268556201, %178 ]
  %190 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 26
  %191 = load i64, ptr %190, align 8
  %192 = or i64 %191, 1114121
  store i64 %192, ptr %190, align 8
  %193 = or i64 %182, 20480
  store i64 %193, ptr %181, align 16
  br i1 %24, label %194, label %196

194:                                              ; preds = %188
  store i64 %189, ptr %179, align 16
  %195 = or i64 %191, 1114153
  store i64 %195, ptr %190, align 8
  br label %196

196:                                              ; preds = %194, %188
  %197 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 30
  store i32 68, ptr %197, align 8
  %198 = load i32, ptr %65, align 32
  %199 = add i32 %198, -22
  %200 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 31
  store i32 %199, ptr %200, align 4
  %201 = tail call zeroext i1 @e1000e_enable_mng_pass_thru(ptr noundef %48) #18
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = load i32, ptr %57, align 8
  %204 = or i32 %203, 1048576
  store i32 %204, ptr %57, align 8
  br label %205

205:                                              ; preds = %202, %196
  %206 = getelementptr i8, ptr %39, i32 2596
  %207 = load ptr, ptr %206, align 4
  %208 = tail call i32 %207(ptr noundef %48) #18
  %209 = getelementptr i8, ptr %39, i32 3424
  %210 = load ptr, ptr %209, align 4
  %211 = tail call i32 %210(ptr noundef %48) #18
  %212 = icmp sgt i32 %211, -1
  br i1 %212, label %222, label %213

213:                                              ; preds = %205
  %214 = load ptr, ptr %209, align 4
  %215 = tail call i32 %214(ptr noundef %48) #18
  %216 = icmp sgt i32 %215, -1
  br i1 %216, label %222, label %217

217:                                              ; preds = %213
  %218 = load ptr, ptr %209, align 4
  %219 = tail call i32 %218(ptr noundef %48) #18
  %220 = icmp sgt i32 %219, -1
  br i1 %220, label %222, label %221

221:                                              ; preds = %217
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.34) #20
  br label %379

222:                                              ; preds = %217, %213, %205
  tail call fastcc void @e1000_eeprom_checks(ptr noundef %47)
  %223 = getelementptr i8, ptr %39, i32 2628
  %224 = load ptr, ptr %223, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %228, label %226

226:                                              ; preds = %222
  %227 = tail call i32 %224(ptr noundef %48) #18
  br label %230

228:                                              ; preds = %222
  %229 = tail call i32 @e1000_read_mac_addr_generic(ptr noundef %48) #18
  br label %230

230:                                              ; preds = %228, %226
  %231 = phi i32 [ %227, %226 ], [ %229, %228 ]
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %230
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.35) #20
  br label %234

234:                                              ; preds = %233, %230
  %235 = getelementptr i8, ptr %39, i32 2636
  tail call void @dev_addr_mod(ptr noundef nonnull %39, i32 noundef 0, ptr noundef %235, i32 noundef 6) #18
  %236 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 72
  %237 = load ptr, ptr %236, align 32
  %238 = load i32, ptr %237, align 4
  %239 = and i32 %238, 1
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %234
  %242 = getelementptr i8, ptr %237, i32 4
  %243 = load i16, ptr %242, align 2
  %244 = zext i16 %243 to i32
  %245 = or i32 %238, %244
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %241, %234
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.36, ptr noundef %237) #20
  br label %379

248:                                              ; preds = %241
  tail call void @init_timer_key(ptr noundef %47, ptr noundef nonnull @e1000_watchdog, i32 noundef 0, ptr noundef null, ptr noundef null) #18
  %249 = getelementptr i8, ptr %39, i32 1428
  tail call void @init_timer_key(ptr noundef %249, ptr noundef nonnull @e1000_update_phy_info, i32 noundef 0, ptr noundef null, ptr noundef null) #18
  %250 = getelementptr i8, ptr %39, i32 1468
  store i32 -32, ptr %250, align 4
  %251 = getelementptr i8, ptr %39, i32 1472
  store volatile ptr %251, ptr %251, align 4
  %252 = getelementptr i8, ptr %39, i32 1476
  store ptr %251, ptr %252, align 4
  %253 = getelementptr i8, ptr %39, i32 1480
  store ptr @e1000_reset_task, ptr %253, align 4
  %254 = getelementptr i8, ptr %39, i32 1484
  store i32 -32, ptr %254, align 4
  %255 = getelementptr i8, ptr %39, i32 1488
  store volatile ptr %255, ptr %255, align 4
  %256 = getelementptr i8, ptr %39, i32 1492
  store ptr %255, ptr %256, align 4
  %257 = getelementptr i8, ptr %39, i32 1496
  store ptr @e1000_watchdog_task, ptr %257, align 4
  %258 = getelementptr i8, ptr %39, i32 12592
  store i32 -32, ptr %258, align 16
  %259 = getelementptr i8, ptr %39, i32 12596
  store volatile ptr %259, ptr %259, align 4
  %260 = getelementptr i8, ptr %39, i32 12600
  store ptr %259, ptr %260, align 4
  %261 = getelementptr i8, ptr %39, i32 12604
  store ptr @e1000e_downshift_workaround, ptr %261, align 4
  %262 = getelementptr i8, ptr %39, i32 12608
  store i32 -32, ptr %262, align 64
  %263 = getelementptr i8, ptr %39, i32 12612
  store volatile ptr %263, ptr %263, align 4
  %264 = getelementptr i8, ptr %39, i32 12616
  store ptr %263, ptr %264, align 4
  %265 = getelementptr i8, ptr %39, i32 12620
  store ptr @e1000e_update_phy_task, ptr %265, align 4
  %266 = getelementptr i8, ptr %39, i32 12624
  store i32 -32, ptr %266, align 16
  %267 = getelementptr i8, ptr %39, i32 12628
  store volatile ptr %267, ptr %267, align 4
  %268 = getelementptr i8, ptr %39, i32 12632
  store ptr %267, ptr %268, align 4
  %269 = getelementptr i8, ptr %39, i32 12636
  store ptr @e1000_print_hw_hang, ptr %269, align 4
  %270 = getelementptr i8, ptr %39, i32 3210
  store i8 1, ptr %270, align 2
  %271 = getelementptr i8, ptr %39, i32 12580
  store i8 1, ptr %271, align 4
  %272 = getelementptr i8, ptr %39, i32 3240
  store i32 255, ptr %272, align 4
  %273 = getelementptr i8, ptr %39, i32 3236
  store i32 255, ptr %273, align 4
  %274 = getelementptr i8, ptr %39, i32 3380
  store i16 47, ptr %274, align 4
  %275 = load i32, ptr %57, align 8
  %276 = and i32 %275, 32768
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %291, label %278

278:                                              ; preds = %248
  %279 = load ptr, ptr %85, align 4
  %280 = getelementptr i8, ptr %279, i32 22528
  %281 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %280) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %282 = trunc i32 %281 to i16
  store i16 %282, ptr %3, align 2
  %283 = load i32, ptr %62, align 4
  %284 = icmp ult i32 %283, 9
  %285 = and i32 %281, 256
  %286 = icmp eq i32 %285, 0
  %287 = select i1 %284, i1 true, i1 %286
  br i1 %287, label %308, label %288

288:                                              ; preds = %278
  %289 = load i32, ptr %59, align 4
  %290 = or i32 %289, 2
  store i32 %290, ptr %59, align 4
  br label %308

291:                                              ; preds = %248
  %292 = and i32 %275, 65536
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %308, label %294

294:                                              ; preds = %291
  %295 = and i32 %275, 131072
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %301, label %297

297:                                              ; preds = %294
  %298 = getelementptr i8, ptr %39, i32 3464
  %299 = load i16, ptr %298, align 4
  %300 = icmp eq i16 %299, 1
  br i1 %300, label %302, label %301

301:                                              ; preds = %297, %294
  br label %302

302:                                              ; preds = %301, %297
  %303 = phi i16 [ 36, %301 ], [ 20, %297 ]
  %304 = getelementptr i8, ptr %39, i32 3404
  %305 = load ptr, ptr %304, align 4
  %306 = call i32 %305(ptr noundef %48, i16 noundef zeroext %303, i16 noundef zeroext 1, ptr noundef nonnull %3) #18
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %318

308:                                              ; preds = %302, %291, %288, %278
  %309 = phi i32 [ 1024, %302 ], [ 1024, %291 ], [ 1, %278 ], [ 1, %288 ]
  %310 = load i16, ptr %3, align 2
  %311 = zext i16 %310 to i32
  %312 = and i32 %309, %311
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %318, label %314

314:                                              ; preds = %308
  %315 = getelementptr i8, ptr %39, i32 12564
  %316 = load i32, ptr %315, align 4
  %317 = or i32 %316, 2
  store i32 %317, ptr %315, align 4
  br label %318

318:                                              ; preds = %314, %308, %302
  %319 = load i32, ptr %57, align 8
  %320 = and i32 %319, 8
  %321 = icmp eq i32 %320, 0
  %322 = getelementptr i8, ptr %39, i32 12564
  br i1 %321, label %323, label %327

323:                                              ; preds = %318
  store i32 0, ptr %322, align 4
  %324 = getelementptr i8, ptr %39, i32 12568
  store i32 0, ptr %324, align 8
  %325 = and i32 %319, 1048576
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %334, label %338

327:                                              ; preds = %318
  %328 = load i32, ptr %322, align 4
  %329 = getelementptr i8, ptr %39, i32 12568
  store i32 %328, ptr %329, align 8
  %330 = icmp eq i32 %328, 0
  %331 = and i32 %319, 1048576
  %332 = icmp eq i32 %331, 0
  %333 = select i1 %330, i1 %332, i1 false
  br i1 %333, label %334, label %338

334:                                              ; preds = %327, %323
  %335 = getelementptr i8, ptr %39, i32 2552
  %336 = load ptr, ptr %335, align 4
  %337 = call zeroext i1 %336(ptr noundef %48) #18
  br i1 %337, label %338, label %340

338:                                              ; preds = %334, %327, %323
  %339 = call i32 @device_wakeup_enable(ptr noundef %22) #18
  br label %340

340:                                              ; preds = %338, %334
  %341 = getelementptr i8, ptr %39, i32 2030
  %342 = getelementptr i8, ptr %39, i32 3404
  %343 = load ptr, ptr %342, align 4
  %344 = call i32 %343(ptr noundef %48, i16 noundef zeroext 5, i16 noundef zeroext 1, ptr noundef %341) #18
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %347, label %346

346:                                              ; preds = %340
  store i16 0, ptr %341, align 2
  br label %347

347:                                              ; preds = %346, %340
  call void @e1000e_ptp_init(ptr noundef %47) #18
  call void @e1000e_reset(ptr noundef %47)
  %348 = load i32, ptr %57, align 8
  %349 = and i32 %348, 1
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %347
  call void @e1000e_get_hw_control(ptr noundef %47)
  br label %352

352:                                              ; preds = %351, %347
  %353 = load i32, ptr %62, align 4
  %354 = icmp ugt i32 %353, 12
  br i1 %354, label %355, label %358

355:                                              ; preds = %352
  %356 = load i32, ptr %59, align 4
  %357 = or i32 %356, 32768
  store i32 %357, ptr %59, align 4
  br label %358

358:                                              ; preds = %355, %352
  %359 = call i32 @strlcpy(ptr noundef nonnull %39, ptr noundef nonnull @.str.37, i32 noundef 16) #18
  %360 = call i32 @register_netdev(ptr noundef nonnull %39) #18
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %374

362:                                              ; preds = %358
  call void @netif_carrier_off(ptr noundef nonnull %39) #18
  call fastcc void @e1000_print_device_info(ptr noundef %47)
  %363 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 2
  store i32 2, ptr %363, align 8
  %364 = call zeroext i1 @pci_dev_run_wake(ptr noundef %0) #18
  br i1 %364, label %365, label %416

365:                                              ; preds = %362
  %366 = load i32, ptr %62, align 4
  %367 = icmp eq i32 %366, 13
  br i1 %367, label %416, label %368

368:                                              ; preds = %365
  %369 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !60
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %369) #18, !srcloc !15
  %370 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %369, ptr %369, i32 0, i32 -1, ptr elementtype(i32) %369) #18, !srcloc !61
  %371 = extractvalue { i32, i32, i32 } %370, 0
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %416, label %373

373:                                              ; preds = %368
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !62
  br label %416

374:                                              ; preds = %358
  %375 = load i32, ptr %57, align 8
  %376 = and i32 %375, 1
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %374
  call void @e1000e_release_hw_control(ptr noundef %47)
  br label %379

379:                                              ; preds = %378, %374, %247, %221
  %380 = phi i32 [ %360, %374 ], [ %360, %378 ], [ -5, %247 ], [ -5, %221 ]
  %381 = load ptr, ptr %171, align 4
  %382 = icmp eq ptr %381, null
  br i1 %382, label %390, label %383

383:                                              ; preds = %379
  %384 = call i32 %381(ptr noundef %48) #18
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %383
  %387 = getelementptr i8, ptr %39, i32 3300
  %388 = load ptr, ptr %387, align 4
  %389 = call i32 %388(ptr noundef %48) #18
  br label %390

390:                                              ; preds = %386, %383, %379, %137
  %391 = phi i32 [ %148, %137 ], [ %380, %383 ], [ %380, %386 ], [ %380, %379 ]
  %392 = getelementptr i8, ptr %39, i32 2048
  %393 = load ptr, ptr %392, align 64
  call void @kfree(ptr noundef %393) #18
  %394 = getelementptr i8, ptr %39, i32 2440
  %395 = load ptr, ptr %394, align 8
  call void @kfree(ptr noundef %395) #18
  br label %396

396:                                              ; preds = %390, %126
  %397 = phi i32 [ %135, %126 ], [ %391, %390 ]
  %398 = getelementptr i8, ptr %39, i32 2540
  %399 = load ptr, ptr %398, align 4
  %400 = icmp eq ptr %399, null
  br i1 %400, label %405, label %401

401:                                              ; preds = %396
  %402 = load i32, ptr %62, align 4
  %403 = icmp ult i32 %402, 12
  br i1 %403, label %404, label %405

404:                                              ; preds = %401
  call void @iounmap(ptr noundef nonnull %399) #18
  br label %405

405:                                              ; preds = %404, %401, %396
  call void @e1000e_reset_interrupt_capability(ptr noundef %47)
  br label %406

406:                                              ; preds = %405, %100
  %407 = phi i32 [ %397, %405 ], [ -5, %100 ]
  %408 = load ptr, ptr %85, align 4
  call void @iounmap(ptr noundef %408) #18
  br label %409

409:                                              ; preds = %406, %73
  %410 = phi i32 [ %407, %406 ], [ -5, %73 ]
  call void @free_netdev(ptr noundef nonnull %39) #18
  br label %411

411:                                              ; preds = %409, %38, %35
  %412 = phi i32 [ %36, %35 ], [ %410, %409 ], [ -12, %38 ]
  %413 = call i32 @pci_select_bars(ptr noundef %0, i32 noundef 512) #18
  call void @pci_release_selected_regions(ptr noundef %0, i32 noundef %413) #18
  br label %414

414:                                              ; preds = %411, %29, %28
  %415 = phi i32 [ %26, %28 ], [ %33, %29 ], [ %412, %411 ]
  call void @pci_disable_device(ptr noundef %0) #18
  br label %416

416:                                              ; preds = %414, %373, %368, %365, %362, %18
  %417 = phi i32 [ %415, %414 ], [ %19, %18 ], [ 0, %365 ], [ 0, %362 ], [ 0, %368 ], [ 0, %373 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #18
  ret i32 %417
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  tail call void @e1000e_ptp_remove(ptr noundef %4) #18
  %5 = getelementptr i8, ptr %3, i32 2032
  tail call void @_set_bit(i32 noundef 3, ptr noundef %5) #18
  %6 = tail call i32 @del_timer_sync(ptr noundef %4) #18
  %7 = getelementptr i8, ptr %3, i32 1428
  %8 = tail call i32 @del_timer_sync(ptr noundef %7) #18
  %9 = getelementptr i8, ptr %3, i32 1468
  %10 = tail call zeroext i1 @cancel_work_sync(ptr noundef %9) #18
  %11 = getelementptr i8, ptr %3, i32 1484
  %12 = tail call zeroext i1 @cancel_work_sync(ptr noundef %11) #18
  %13 = getelementptr i8, ptr %3, i32 12592
  %14 = tail call zeroext i1 @cancel_work_sync(ptr noundef %13) #18
  %15 = getelementptr i8, ptr %3, i32 12608
  %16 = tail call zeroext i1 @cancel_work_sync(ptr noundef %15) #18
  %17 = getelementptr i8, ptr %3, i32 12624
  %18 = tail call zeroext i1 @cancel_work_sync(ptr noundef %17) #18
  %19 = getelementptr i8, ptr %3, i32 12584
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 16384
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %1
  %24 = getelementptr i8, ptr %3, i32 12712
  %25 = tail call zeroext i1 @cancel_work_sync(ptr noundef %24) #18
  %26 = getelementptr i8, ptr %3, i32 12704
  %27 = load ptr, ptr %26, align 32
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %27, i32 noundef 0) #18
  store ptr null, ptr %26, align 32
  br label %30

30:                                               ; preds = %29, %23, %1
  tail call void @unregister_netdev(ptr noundef %3) #18
  %31 = tail call zeroext i1 @pci_dev_run_wake(ptr noundef %0) #18
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #18, !srcloc !15
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #18, !srcloc !63
  br label %35

35:                                               ; preds = %32, %30
  tail call void @e1000e_release_hw_control(ptr noundef %4)
  %36 = getelementptr i8, ptr %3, i32 12552
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %3, i32 2528
  %41 = load ptr, ptr %40, align 32
  tail call void @pci_disable_msix(ptr noundef %41) #18
  %42 = load ptr, ptr %36, align 8
  tail call void @kfree(ptr noundef %42) #18
  store ptr null, ptr %36, align 8
  br label %52

43:                                               ; preds = %35
  %44 = load i32, ptr %19, align 8
  %45 = and i32 %44, 134217728
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = getelementptr i8, ptr %3, i32 2528
  %49 = load ptr, ptr %48, align 32
  tail call void @pci_disable_msi(ptr noundef %49) #18
  %50 = load i32, ptr %19, align 8
  %51 = and i32 %50, -134217729
  store i32 %51, ptr %19, align 8
  br label %52

52:                                               ; preds = %47, %43, %39
  %53 = getelementptr i8, ptr %3, i32 2048
  %54 = load ptr, ptr %53, align 64
  tail call void @kfree(ptr noundef %54) #18
  %55 = getelementptr i8, ptr %3, i32 2440
  %56 = load ptr, ptr %55, align 8
  tail call void @kfree(ptr noundef %56) #18
  %57 = getelementptr i8, ptr %3, i32 2536
  %58 = load ptr, ptr %57, align 4
  tail call void @iounmap(ptr noundef %58) #18
  %59 = getelementptr i8, ptr %3, i32 2540
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %52
  %63 = getelementptr i8, ptr %3, i32 2648
  %64 = load i32, ptr %63, align 4
  %65 = icmp ult i32 %64, 12
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  tail call void @iounmap(ptr noundef nonnull %60) #18
  br label %67

67:                                               ; preds = %66, %62, %52
  %68 = tail call i32 @pci_select_bars(ptr noundef %0, i32 noundef 512) #18
  tail call void @pci_release_selected_regions(ptr noundef %0, i32 noundef %68) #18
  tail call void @free_netdev(ptr noundef %3) #18
  tail call void @pci_disable_device(ptr noundef %0) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 2532
  %5 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 111, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #18
  %8 = getelementptr i8, ptr %3, i32 3244
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %4) #18
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %3, i32 2536
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 252
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %17 = lshr i32 %16, 24
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, i32 noundef %17) #20
  %19 = getelementptr i8, ptr %3, i32 3296
  %20 = load ptr, ptr %19, align 4
  tail call void %20(ptr noundef %4) #18
  br label %21

21:                                               ; preds = %12, %1
  %22 = load ptr, ptr %5, align 4
  %23 = tail call i32 @__pm_runtime_idle(ptr noundef %22, i32 noundef 4) #18
  %24 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %25 = tail call i32 @e1000e_pm_freeze(ptr noundef %24)
  %26 = tail call fastcc i32 @__e1000_shutdown(ptr noundef %0, i1 noundef zeroext false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device_mem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_select_bars(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_selected_regions_exclusive(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_set_ethtool_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000e_poll(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 476
  %5 = getelementptr i8, ptr %0, i32 468
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store i32 0, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 1408
  %8 = getelementptr i8, ptr %6, i32 12552
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %6, i32 2048
  %13 = load ptr, ptr %12, align 64
  br label %29

14:                                               ; preds = %2
  %15 = getelementptr i8, ptr %6, i32 2440
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.e1000_ring, ptr %16, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %6, i32 2048
  %20 = load ptr, ptr %19, align 64
  %21 = getelementptr inbounds %struct.e1000_ring, ptr %20, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, %18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = getelementptr i8, ptr %6, i32 2432
  %27 = load ptr, ptr %26, align 64
  %28 = call zeroext i1 %27(ptr noundef %16, ptr noundef nonnull %3, i32 noundef %1) #18
  br label %37

29:                                               ; preds = %14, %11
  %30 = phi ptr [ %13, %11 ], [ %20, %14 ]
  %31 = tail call fastcc zeroext i1 @e1000_clean_tx_irq(ptr noundef %30)
  %32 = getelementptr i8, ptr %6, i32 2432
  %33 = load ptr, ptr %32, align 64
  %34 = getelementptr i8, ptr %6, i32 2440
  %35 = load ptr, ptr %34, align 8
  %36 = call zeroext i1 %33(ptr noundef %35, ptr noundef nonnull %3, i32 noundef %1) #18
  br i1 %31, label %37, label %226

37:                                               ; preds = %29, %25
  %38 = phi ptr [ %15, %25 ], [ %34, %29 ]
  %39 = load i32, ptr %3, align 4
  %40 = icmp eq i32 %39, %1
  br i1 %40, label %226, label %41

41:                                               ; preds = %37
  %42 = call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %39) #18
  br i1 %42, label %43, label %224, !prof !13

43:                                               ; preds = %41
  %44 = getelementptr i8, ptr %6, i32 2040
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 3
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %184, label %48

48:                                               ; preds = %43
  %49 = getelementptr i8, ptr %6, i32 2036
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr i8, ptr %6, i32 2026
  %52 = load i16, ptr %51, align 2
  %53 = icmp eq i16 %52, 1000
  br i1 %53, label %54, label %167

54:                                               ; preds = %48
  %55 = getelementptr i8, ptr %6, i32 12588
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 256
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %167

59:                                               ; preds = %54
  %60 = getelementptr i8, ptr %6, i32 2044
  %61 = load i16, ptr %60, align 4
  %62 = getelementptr i8, ptr %6, i32 2304
  %63 = load i32, ptr %62, align 64
  %64 = getelementptr i8, ptr %6, i32 2300
  %65 = load i32, ptr %64, align 4
  %66 = zext i16 %61 to i32
  %67 = icmp eq i32 %63, 0
  br i1 %67, label %104, label %68

68:                                               ; preds = %59
  switch i16 %61, label %104 [
    i16 0, label %69
    i16 1, label %77
    i16 2, label %96
  ]

69:                                               ; preds = %68
  %70 = sdiv i32 %65, %63
  %71 = icmp sgt i32 %70, 8000
  br i1 %71, label %104, label %72

72:                                               ; preds = %69
  %73 = icmp slt i32 %63, 5
  %74 = icmp sgt i32 %65, 512
  %75 = and i1 %73, %74
  %76 = zext i1 %75 to i32
  br label %104

77:                                               ; preds = %68
  %78 = icmp sgt i32 %65, 10000
  %79 = sdiv i32 %65, %63
  br i1 %78, label %80, label %89

80:                                               ; preds = %77
  %81 = icmp sgt i32 %79, 8000
  br i1 %81, label %104, label %82

82:                                               ; preds = %80
  %83 = icmp slt i32 %63, 10
  %84 = icmp sgt i32 %79, 1200
  %85 = or i1 %83, %84
  br i1 %85, label %104, label %86

86:                                               ; preds = %82
  %87 = icmp ult i32 %63, 36
  %88 = zext i1 %87 to i32
  br label %104

89:                                               ; preds = %77
  %90 = icmp sgt i32 %79, 2000
  br i1 %90, label %104, label %91

91:                                               ; preds = %89
  %92 = icmp sgt i32 %63, 2
  %93 = icmp sgt i32 %65, 511
  %94 = or i1 %92, %93
  %95 = zext i1 %94 to i32
  br label %104

96:                                               ; preds = %68
  %97 = icmp sgt i32 %65, 25000
  br i1 %97, label %98, label %101

98:                                               ; preds = %96
  %99 = icmp sgt i32 %63, 35
  %100 = select i1 %99, i32 1, i32 2
  br label %104

101:                                              ; preds = %96
  %102 = icmp slt i32 %65, 6000
  %103 = select i1 %102, i32 1, i32 2
  br label %104

104:                                              ; preds = %101, %98, %91, %89, %86, %82, %80, %72, %69, %68, %59
  %105 = phi i32 [ %66, %59 ], [ %66, %68 ], [ 2, %69 ], [ %76, %72 ], [ 2, %80 ], [ 2, %82 ], [ %88, %86 ], [ 2, %89 ], [ %95, %91 ], [ %100, %98 ], [ %103, %101 ]
  %106 = trunc i32 %105 to i16
  %107 = icmp eq i32 %45, 3
  %108 = icmp eq i32 %105, 0
  %109 = select i1 %107, i1 %108, i1 false
  %110 = select i1 %109, i16 1, i16 %106
  store i16 %110, ptr %60, align 4
  %111 = getelementptr i8, ptr %6, i32 2046
  %112 = load i16, ptr %111, align 2
  %113 = getelementptr i8, ptr %6, i32 2312
  %114 = load i32, ptr %113, align 8
  %115 = getelementptr i8, ptr %6, i32 2308
  %116 = load i32, ptr %115, align 4
  %117 = zext i16 %112 to i32
  %118 = icmp eq i32 %114, 0
  br i1 %118, label %155, label %119

119:                                              ; preds = %104
  switch i16 %112, label %155 [
    i16 0, label %120
    i16 1, label %128
    i16 2, label %147
  ]

120:                                              ; preds = %119
  %121 = sdiv i32 %116, %114
  %122 = icmp sgt i32 %121, 8000
  br i1 %122, label %155, label %123

123:                                              ; preds = %120
  %124 = icmp slt i32 %114, 5
  %125 = icmp sgt i32 %116, 512
  %126 = and i1 %124, %125
  %127 = zext i1 %126 to i32
  br label %155

128:                                              ; preds = %119
  %129 = icmp sgt i32 %116, 10000
  %130 = sdiv i32 %116, %114
  br i1 %129, label %131, label %140

131:                                              ; preds = %128
  %132 = icmp sgt i32 %130, 8000
  br i1 %132, label %155, label %133

133:                                              ; preds = %131
  %134 = icmp slt i32 %114, 10
  %135 = icmp sgt i32 %130, 1200
  %136 = or i1 %134, %135
  br i1 %136, label %155, label %137

137:                                              ; preds = %133
  %138 = icmp ult i32 %114, 36
  %139 = zext i1 %138 to i32
  br label %155

140:                                              ; preds = %128
  %141 = icmp sgt i32 %130, 2000
  br i1 %141, label %155, label %142

142:                                              ; preds = %140
  %143 = icmp sgt i32 %114, 2
  %144 = icmp sgt i32 %116, 511
  %145 = or i1 %143, %144
  %146 = zext i1 %145 to i32
  br label %155

147:                                              ; preds = %119
  %148 = icmp sgt i32 %116, 25000
  br i1 %148, label %149, label %152

149:                                              ; preds = %147
  %150 = icmp sgt i32 %114, 35
  %151 = select i1 %150, i32 1, i32 2
  br label %155

152:                                              ; preds = %147
  %153 = icmp slt i32 %116, 6000
  %154 = select i1 %153, i32 1, i32 2
  br label %155

155:                                              ; preds = %152, %149, %142, %140, %137, %133, %131, %123, %120, %119, %104
  %156 = phi i32 [ %117, %104 ], [ %117, %119 ], [ 2, %120 ], [ %127, %123 ], [ 2, %131 ], [ 2, %133 ], [ %139, %137 ], [ 2, %140 ], [ %146, %142 ], [ %151, %149 ], [ %154, %152 ]
  %157 = trunc i32 %156 to i16
  %158 = icmp eq i32 %156, 0
  %159 = select i1 %107, i1 %158, i1 false
  %160 = select i1 %159, i16 1, i16 %157
  store i16 %160, ptr %111, align 2
  %161 = call i16 @llvm.umax.i16(i16 %160, i16 %110) #18
  %162 = icmp ult i16 %161, 3
  br i1 %162, label %163, label %184

163:                                              ; preds = %155
  %164 = sext i16 %161 to i32
  %165 = getelementptr inbounds [3 x i32], ptr @switch.table.e1000e_poll, i32 0, i32 %164
  %166 = load i32, ptr %165, align 4
  br label %167

167:                                              ; preds = %163, %54, %48
  %168 = phi i32 [ 4000, %48 ], [ 0, %54 ], [ %166, %163 ]
  %169 = icmp eq i32 %168, %50
  br i1 %169, label %184, label %170

170:                                              ; preds = %167
  %171 = icmp ugt i32 %168, %50
  %172 = lshr exact i32 %168, 2
  %173 = add i32 %172, %50
  %174 = call i32 @llvm.umin.i32(i32 %173, i32 %168) #18
  %175 = select i1 %171, i32 %174, i32 %168
  store i32 %175, ptr %49, align 4
  %176 = load ptr, ptr %38, align 8
  %177 = getelementptr inbounds %struct.e1000_ring, ptr %176, i32 0, i32 12
  store i32 %175, ptr %177, align 4
  %178 = load ptr, ptr %8, align 8
  %179 = icmp eq ptr %178, null
  br i1 %179, label %183, label %180

180:                                              ; preds = %170
  %181 = load ptr, ptr %38, align 8
  %182 = getelementptr inbounds %struct.e1000_ring, ptr %181, i32 0, i32 14
  store i32 1, ptr %182, align 4
  br label %184

183:                                              ; preds = %170
  call void @e1000e_write_itr(ptr noundef %7, i32 noundef %175) #18
  br label %184

184:                                              ; preds = %183, %180, %167, %155, %43
  %185 = getelementptr i8, ptr %6, i32 2032
  %186 = load volatile i32, ptr %185, align 4
  %187 = and i32 %186, 8
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %224

189:                                              ; preds = %184
  %190 = load ptr, ptr %8, align 8
  %191 = icmp eq ptr %190, null
  br i1 %191, label %223, label %192

192:                                              ; preds = %189
  %193 = load ptr, ptr %38, align 8
  %194 = getelementptr inbounds %struct.e1000_ring, ptr %193, i32 0, i32 11
  %195 = load i32, ptr %194, align 4
  %196 = load ptr, ptr %4, align 4
  %197 = getelementptr inbounds %struct.e1000_adapter, ptr %196, i32 0, i32 85
  %198 = load i32, ptr %197, align 4
  %199 = and i32 %198, 2048
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %219, label %201

201:                                              ; preds = %192
  %202 = getelementptr i8, ptr %0, i32 480
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr i8, ptr %203, i32 23380
  %205 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %204) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %206 = and i32 %205, 16777216
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %219, label %208

208:                                              ; preds = %212, %201
  %209 = phi i32 [ %210, %212 ], [ 2000, %201 ]
  %210 = add nsw i32 %209, -1
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %219, label %212

212:                                              ; preds = %208
  %213 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %213(i32 noundef 10737400) #18
  %214 = load ptr, ptr %202, align 4
  %215 = getelementptr i8, ptr %214, i32 23380
  %216 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %215) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %217 = and i32 %216, 16777216
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %208

219:                                              ; preds = %212, %208, %201, %192
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %220 = getelementptr i8, ptr %0, i32 480
  %221 = load ptr, ptr %220, align 4
  %222 = getelementptr i8, ptr %221, i32 208
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %222, i32 %195) #18, !srcloc !12
  br label %224

223:                                              ; preds = %189
  call fastcc void @e1000_irq_enable(ptr noundef %7)
  br label %224

224:                                              ; preds = %223, %219, %184, %41
  %225 = load i32, ptr %3, align 4
  br label %226

226:                                              ; preds = %224, %37, %29
  %227 = phi i32 [ %225, %224 ], [ %1, %37 ], [ %1, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  ret i32 %227
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_check_options(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_sw_init(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 63
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 8
  store i32 1522, ptr %4, align 4
  %5 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 60
  store i16 128, ptr %5, align 16
  %6 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 22
  %9 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 61
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 62
  store i32 64, ptr %10, align 8
  %11 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 90
  store i16 256, ptr %11, align 4
  %12 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 91
  store i16 256, ptr %12, align 2
  %13 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 66
  store i32 0, ptr %13, align 8
  tail call void @e1000e_set_interrupt_capability(ptr noundef %0)
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 80) #19
  %16 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 18
  store ptr %15, ptr %16, align 64
  %17 = icmp eq ptr %15, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %1
  %19 = load i16, ptr %11, align 4
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds %struct.e1000_ring, ptr %15, i32 0, i32 4
  store i32 %20, ptr %21, align 8
  store ptr %0, ptr %15, align 8
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 80) #19
  %24 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 48
  store ptr %23, ptr %24, align 8
  %25 = icmp eq ptr %23, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %18, %1
  %27 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %27, ptr noundef nonnull @.str.52) #20
  %28 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 48
  %29 = load ptr, ptr %28, align 8
  tail call void @kfree(ptr noundef %29) #18
  %30 = load ptr, ptr %16, align 64
  tail call void @kfree(ptr noundef %30) #18
  br label %50

31:                                               ; preds = %18
  %32 = load i16, ptr %12, align 2
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds %struct.e1000_ring, ptr %23, i32 0, i32 4
  store i32 %33, ptr %34, align 8
  store ptr %0, ptr %23, align 8
  %35 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 84
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 16384
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 98
  store ptr @e1000e_cyclecounter_read, ptr %40, align 64
  %41 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 98, i32 1
  store i64 -1, ptr %41, align 8
  %42 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 98, i32 2
  store i32 1, ptr %42, align 16
  %43 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 97
  store i32 0, ptr %43, align 8
  %44 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 96
  store i32 -32, ptr %44, align 8
  %45 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 96, i32 1
  store volatile ptr %45, ptr %45, align 4
  %46 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 96, i32 1, i32 1
  store ptr %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 96, i32 2
  store ptr @e1000e_tx_hwtstamp_work, ptr %47, align 4
  br label %48

48:                                               ; preds = %39, %31
  tail call fastcc void @e1000_irq_disable(ptr noundef %0)
  %49 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 3, ptr noundef %49) #18
  br label %50

50:                                               ; preds = %48, %26
  %51 = phi i32 [ 0, %48 ], [ -12, %26 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_write_protect_nvm_ich8lan(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @e1000e_enable_mng_pass_thru(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @e1000_eeprom_checks(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #18
  store i16 0, ptr %2, align 2
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %8 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef %7, i16 noundef zeroext 15, i16 noundef zeroext 1, ptr noundef nonnull %2) #18
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %6
  %13 = load i16, ptr %2, align 2
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %18 = load ptr, ptr %17, align 32
  %19 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.54) #20
  br label %20

20:                                               ; preds = %16, %12, %6, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_watchdog(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr @system_wq, align 4
  %4 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %2) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_update_phy_info(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 604
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 11180
  %8 = load ptr, ptr @system_wq, align 4
  %9 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %8, ptr noundef %7) #18
  br label %10

10:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_reset_task(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -60
  tail call void @rtnl_lock() #18
  %3 = getelementptr i8, ptr %0, i32 564
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 11116
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 1073741824
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  tail call fastcc void @e1000e_dump(ptr noundef %2)
  %13 = getelementptr i8, ptr %0, i32 1056
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.55) #20
  br label %15

15:                                               ; preds = %12, %7
  tail call void @e1000e_reinit_locked(ptr noundef %2)
  br label %16

16:                                               ; preds = %15, %1
  tail call void @rtnl_unlock() #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_watchdog_task(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = getelementptr i8, ptr %0, i32 -76
  %4 = getelementptr i8, ptr %0, i32 1040
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 1048
  %7 = getelementptr i8, ptr %0, i32 564
  %8 = load ptr, ptr %7, align 64
  %9 = getelementptr i8, ptr %0, i32 548
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %568

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %0, i32 1892
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %16 [
    i32 1, label %19
    i32 2, label %29
    i32 3, label %39
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %18 = load volatile i32, ptr %17, align 4
  br label %110

19:                                               ; preds = %13
  %20 = getelementptr i8, ptr %0, i32 1728
  %21 = load i8, ptr %20, align 4, !range !20
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %62, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %0, i32 1072
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef %6) #18
  %27 = load i8, ptr %20, align 4, !range !20
  %28 = icmp eq i8 %27, 0
  br label %46

29:                                               ; preds = %13
  %30 = getelementptr i8, ptr %0, i32 1072
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef %6) #18
  %33 = getelementptr i8, ptr %0, i32 1052
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %37 = and i32 %36, 2
  %38 = icmp ne i32 %37, 0
  br label %46

39:                                               ; preds = %13
  %40 = getelementptr i8, ptr %0, i32 1072
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 %41(ptr noundef %6) #18
  %43 = getelementptr i8, ptr %0, i32 1730
  %44 = load i8, ptr %43, align 2, !range !20
  %45 = icmp ne i8 %44, 0
  br label %46

46:                                               ; preds = %39, %29, %23
  %47 = phi i1 [ %45, %39 ], [ %38, %29 ], [ %28, %23 ]
  %48 = phi i32 [ %42, %39 ], [ %32, %29 ], [ %26, %23 ]
  %49 = icmp eq i32 %48, -2
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = getelementptr i8, ptr %0, i32 1848
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 6
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = getelementptr i8, ptr %0, i32 1052
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %58 = and i32 %57, 64
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %61, ptr noundef nonnull @.str.128) #20
  br label %62

62:                                               ; preds = %60, %54, %50, %46, %19
  %63 = phi i1 [ %47, %60 ], [ %47, %54 ], [ %47, %50 ], [ %47, %46 ], [ true, %19 ]
  %64 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %65, 4
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i1 %63, i1 false
  br i1 %68, label %69, label %110

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 111, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = tail call i32 @__pm_runtime_resume(ptr noundef %71, i32 noundef 0) #18
  %73 = getelementptr i8, ptr %0, i32 11100
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 1090519040
  %76 = icmp eq i32 %75, 1090519040
  br i1 %76, label %77, label %349

77:                                               ; preds = %69
  %78 = getelementptr i8, ptr %0, i32 1052
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %79, i32 256
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %82 = or i32 %81, 2
  %83 = load ptr, ptr %6, align 4
  %84 = getelementptr inbounds %struct.e1000_adapter, ptr %83, i32 0, i32 85
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 2048
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %105, label %88

88:                                               ; preds = %77
  %89 = load ptr, ptr %78, align 4
  %90 = getelementptr i8, ptr %89, i32 23380
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %92 = and i32 %91, 16777216
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %105, label %94

94:                                               ; preds = %98, %88
  %95 = phi i32 [ %96, %98 ], [ 2000, %88 ]
  %96 = add nsw i32 %95, -1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %99(i32 noundef 10737400) #18
  %100 = load ptr, ptr %78, align 4
  %101 = getelementptr i8, ptr %100, i32 23380
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %103 = and i32 %102, 16777216
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %94

105:                                              ; preds = %98, %94, %88, %77
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %106 = load ptr, ptr %78, align 4
  %107 = getelementptr i8, ptr %106, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %82) #18, !srcloc !12
  %108 = load i32, ptr %73, align 8
  %109 = and i32 %108, -1073741825
  store i32 %109, ptr %73, align 8
  br label %349

110:                                              ; preds = %62, %16
  %111 = phi ptr [ %17, %16 ], [ %64, %62 ]
  %112 = phi i1 [ false, %16 ], [ %63, %62 ]
  %113 = tail call zeroext i1 @e1000e_enable_tx_pkt_filtering(ptr noundef %6) #18
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = getelementptr i8, ptr %0, i32 540
  %116 = load i16, ptr %115, align 8
  %117 = getelementptr i8, ptr %0, i32 1990
  %118 = load i16, ptr %117, align 2
  %119 = icmp eq i16 %116, %118
  br i1 %119, label %121, label %120

120:                                              ; preds = %114
  tail call fastcc void @e1000_update_mng_vlan(ptr noundef %3)
  br label %121

121:                                              ; preds = %120, %114, %110
  %122 = load volatile i32, ptr %111, align 4
  %123 = and i32 %122, 4
  %124 = icmp eq i32 %123, 0
  br i1 %112, label %125, label %322

125:                                              ; preds = %121
  br i1 %124, label %349, label %126

126:                                              ; preds = %125
  %127 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 111, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = tail call i32 @__pm_runtime_resume(ptr noundef %128, i32 noundef 0) #18
  %130 = getelementptr i8, ptr %0, i32 1052
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr i8, ptr %131, i32 23380
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %134 = and i32 %133, 32768
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %157, label %136

136:                                              ; preds = %126
  %137 = load ptr, ptr %130, align 4
  %138 = getelementptr i8, ptr %137, i32 8
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %140 = and i32 %139, 1073741824
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %157, label %142

142:                                              ; preds = %136
  %143 = getelementptr i8, ptr %0, i32 1816
  br label %144

144:                                              ; preds = %147, %142
  %145 = phi i32 [ 0, %142 ], [ %148, %147 ]
  %146 = icmp eq i32 %145, 100
  br i1 %146, label %157, label %147

147:                                              ; preds = %144
  %148 = add nuw nsw i32 %145, 1
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #18
  %149 = load ptr, ptr %130, align 4
  %150 = getelementptr i8, ptr %149, i32 8
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %152 = and i32 %151, 1073741824
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %144

154:                                              ; preds = %147
  %155 = load ptr, ptr %143, align 4
  %156 = tail call i32 %155(ptr noundef %6) #18
  br label %157

157:                                              ; preds = %154, %144, %136, %126
  tail call fastcc void @e1000_phy_read_status(ptr noundef %3)
  %158 = getelementptr i8, ptr %0, i32 1096
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr i8, ptr %0, i32 542
  %161 = getelementptr i8, ptr %0, i32 544
  %162 = tail call i32 %159(ptr noundef %6, ptr noundef %160, ptr noundef %161) #18
  %163 = load ptr, ptr %130, align 4
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %163) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %165 = load ptr, ptr %4, align 4
  %166 = load i16, ptr %160, align 2
  %167 = load i16, ptr %161, align 4
  %168 = and i32 %164, 268435456
  %169 = icmp eq i32 %168, 0
  %170 = and i32 %164, 134217728
  %171 = icmp eq i32 %170, 0
  %172 = and i32 %164, 402653184
  %173 = icmp eq i32 %172, 402653184
  %174 = select i1 %169, ptr @.str.135, ptr @.str.134
  %175 = select i1 %171, ptr %174, ptr @.str.133
  %176 = select i1 %173, ptr @.str.132, ptr %175
  %177 = icmp eq i16 %167, 2
  %178 = select i1 %177, ptr @.str.130, ptr @.str.131
  %179 = zext i16 %166 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %165, ptr noundef nonnull @.str.129, i32 noundef %179, ptr noundef nonnull %178, ptr noundef nonnull %176) #20
  %180 = tail call i32 @e1000e_check_downshift(ptr noundef %6) #18
  %181 = getelementptr i8, ptr %0, i32 1911
  %182 = load i8, ptr %181, align 1, !range !20
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %157
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %5, ptr noundef nonnull @.str.125) #20
  br label %185

185:                                              ; preds = %184, %157
  %186 = getelementptr i8, ptr %0, i32 1848
  %187 = load i32, ptr %186, align 4
  switch i32 %187, label %207 [
    i32 6, label %188
    i32 8, label %188
  ]

188:                                              ; preds = %185, %185
  %189 = getelementptr i8, ptr %0, i32 1726
  %190 = load i8, ptr %189, align 2, !range !20
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %207, label %192

192:                                              ; preds = %188
  %193 = load i16, ptr %160, align 2
  switch i16 %193, label %209 [
    i16 10, label %194
    i16 100, label %194
  ]

194:                                              ; preds = %192, %192
  %195 = load i16, ptr %161, align 4
  %196 = icmp eq i16 %195, 1
  br i1 %196, label %197, label %207

197:                                              ; preds = %194
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #18
  store i16 0, ptr %2, align 2, !annotation !19
  %198 = getelementptr i8, ptr %0, i32 1800
  %199 = load ptr, ptr %198, align 4
  %200 = call i32 %199(ptr noundef %6, i32 noundef 6, ptr noundef nonnull %2) #18
  %201 = load i16, ptr %2, align 2
  %202 = and i16 %201, 1
  %203 = icmp eq i16 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %197
  %205 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %205, ptr noundef nonnull @.str.126) #20
  br label %206

206:                                              ; preds = %204, %197
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #18
  br label %207

207:                                              ; preds = %206, %194, %188, %185
  %208 = load i16, ptr %160, align 2
  br label %209

209:                                              ; preds = %207, %192
  %210 = phi i16 [ %208, %207 ], [ %193, %192 ]
  %211 = getelementptr i8, ptr %0, i32 806
  store i8 1, ptr %211, align 2
  switch i16 %210, label %212 [
    i16 10, label %215
    i16 100, label %214
  ]

212:                                              ; preds = %209
  %213 = getelementptr i8, ptr %0, i32 11100
  br label %251

214:                                              ; preds = %209
  br label %215

215:                                              ; preds = %214, %209
  %216 = phi i8 [ 10, %214 ], [ 16, %209 ]
  store i8 %216, ptr %211, align 2
  %217 = getelementptr i8, ptr %0, i32 11100
  %218 = load i32, ptr %217, align 8
  %219 = and i32 %218, 4194304
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %251, label %221

221:                                              ; preds = %215
  %222 = load ptr, ptr %130, align 4
  %223 = getelementptr i8, ptr %222, i32 14400
  %224 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %223) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %225 = and i32 %224, -2097153
  %226 = load ptr, ptr %6, align 4
  %227 = getelementptr inbounds %struct.e1000_adapter, ptr %226, i32 0, i32 85
  %228 = load i32, ptr %227, align 4
  %229 = and i32 %228, 2048
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %248, label %231

231:                                              ; preds = %221
  %232 = load ptr, ptr %130, align 4
  %233 = getelementptr i8, ptr %232, i32 23380
  %234 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %233) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %235 = and i32 %234, 16777216
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %248, label %237

237:                                              ; preds = %241, %231
  %238 = phi i32 [ %239, %241 ], [ 2000, %231 ]
  %239 = add nsw i32 %238, -1
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %248, label %241

241:                                              ; preds = %237
  %242 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %242(i32 noundef 10737400) #18
  %243 = load ptr, ptr %130, align 4
  %244 = getelementptr i8, ptr %243, i32 23380
  %245 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %244) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %246 = and i32 %245, 16777216
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %237

248:                                              ; preds = %241, %237, %231, %221
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %249 = load ptr, ptr %130, align 4
  %250 = getelementptr i8, ptr %249, i32 14400
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %250, i32 %225) #18, !srcloc !12
  br label %251

251:                                              ; preds = %248, %215, %212
  %252 = phi ptr [ %213, %212 ], [ %217, %215 ], [ %217, %248 ]
  %253 = load i32, ptr %252, align 8
  %254 = and i32 %253, 536870912
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %275

256:                                              ; preds = %251
  %257 = load i16, ptr %160, align 2
  switch i16 %257, label %267 [
    i16 10, label %258
    i16 100, label %258
    i16 1000, label %263
  ]

258:                                              ; preds = %256, %256
  %259 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %259, ptr noundef nonnull @.str.127) #20
  %260 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 23
  %261 = load i64, ptr %260, align 16
  %262 = and i64 %261, -1114113
  store i64 %262, ptr %260, align 16
  br label %267

263:                                              ; preds = %256
  %264 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 23
  %265 = load i64, ptr %264, align 16
  %266 = or i64 %265, 1114112
  store i64 %266, ptr %264, align 16
  br label %267

267:                                              ; preds = %263, %258, %256
  %268 = getelementptr i8, ptr %0, i32 1164
  %269 = load i32, ptr %268, align 4
  %270 = icmp eq i32 %269, 12
  br i1 %270, label %271, label %275

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 23
  %273 = load i64, ptr %272, align 16
  %274 = and i64 %273, -1114113
  store i64 %274, ptr %272, align 16
  br label %275

275:                                              ; preds = %271, %267, %251
  %276 = load ptr, ptr %130, align 4
  %277 = getelementptr i8, ptr %276, i32 1024
  %278 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %277) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %279 = or i32 %278, 2
  %280 = load ptr, ptr %6, align 4
  %281 = getelementptr inbounds %struct.e1000_adapter, ptr %280, i32 0, i32 85
  %282 = load i32, ptr %281, align 4
  %283 = and i32 %282, 2048
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %302, label %285

285:                                              ; preds = %275
  %286 = load ptr, ptr %130, align 4
  %287 = getelementptr i8, ptr %286, i32 23380
  %288 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %287) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %289 = and i32 %288, 16777216
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %302, label %291

291:                                              ; preds = %295, %285
  %292 = phi i32 [ %293, %295 ], [ 2000, %285 ]
  %293 = add nsw i32 %292, -1
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %302, label %295

295:                                              ; preds = %291
  %296 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %296(i32 noundef 10737400) #18
  %297 = load ptr, ptr %130, align 4
  %298 = getelementptr i8, ptr %297, i32 23380
  %299 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %298) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %300 = and i32 %299, 16777216
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %291

302:                                              ; preds = %295, %291, %285, %275
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %303 = load ptr, ptr %130, align 4
  %304 = getelementptr i8, ptr %303, i32 1024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %304, i32 %279) #18, !srcloc !12
  %305 = getelementptr i8, ptr %0, i32 1764
  %306 = load ptr, ptr %305, align 4
  %307 = icmp eq ptr %306, null
  br i1 %307, label %310, label %308

308:                                              ; preds = %302
  %309 = call i32 %306(ptr noundef %6) #18
  br label %310

310:                                              ; preds = %308, %302
  %311 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 87
  %312 = load ptr, ptr %311, align 64
  call void @netif_tx_wake_queue(ptr noundef %312) #18
  call void @netif_carrier_on(ptr noundef %5) #18
  %313 = load volatile i32, ptr %9, align 4
  %314 = and i32 %313, 8
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %349

316:                                              ; preds = %310
  %317 = getelementptr i8, ptr %0, i32 -56
  %318 = load volatile i32, ptr @jiffies, align 64
  %319 = add i32 %318, 200
  %320 = call i32 @round_jiffies(i32 noundef %319) #18
  %321 = call i32 @mod_timer(ptr noundef %317, i32 noundef %320) #18
  br label %349

322:                                              ; preds = %121
  br i1 %124, label %323, label %349

323:                                              ; preds = %322
  %324 = getelementptr i8, ptr %0, i32 542
  store i16 0, ptr %324, align 2
  %325 = getelementptr i8, ptr %0, i32 544
  store i16 0, ptr %325, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %5, ptr noundef nonnull @.str.11) #20
  tail call void @netif_carrier_off(ptr noundef %5) #18
  %326 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 87
  %327 = load ptr, ptr %326, align 64
  %328 = getelementptr inbounds %struct.netdev_queue, ptr %327, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %328) #18
  %329 = load volatile i32, ptr %9, align 4
  %330 = and i32 %329, 8
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %338

332:                                              ; preds = %323
  %333 = getelementptr i8, ptr %0, i32 -56
  %334 = load volatile i32, ptr @jiffies, align 64
  %335 = add i32 %334, 200
  %336 = tail call i32 @round_jiffies(i32 noundef %335) #18
  %337 = tail call i32 @mod_timer(ptr noundef %333, i32 noundef %336) #18
  br label %338

338:                                              ; preds = %332, %323
  %339 = getelementptr i8, ptr %0, i32 11100
  %340 = load i32, ptr %339, align 8
  %341 = and i32 %340, 16777216
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %345, label %343

343:                                              ; preds = %338
  %344 = or i32 %340, 1073741824
  store i32 %344, ptr %339, align 8
  br label %349

345:                                              ; preds = %338
  %346 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 111, i32 1
  %347 = load ptr, ptr %346, align 4
  %348 = tail call i32 @pm_schedule_suspend(ptr noundef %347, i32 noundef 100) #18
  br label %349

349:                                              ; preds = %345, %343, %322, %316, %310, %125, %105, %69
  %350 = phi ptr [ %111, %310 ], [ %111, %316 ], [ %111, %125 ], [ %111, %343 ], [ %111, %345 ], [ %111, %322 ], [ %64, %69 ], [ %64, %105 ]
  %351 = getelementptr i8, ptr %0, i32 10204
  call void @_raw_spin_lock(ptr noundef %351) #18
  call fastcc void @e1000e_update_stats(ptr noundef %3)
  %352 = getelementptr i8, ptr %0, i32 10556
  %353 = load i64, ptr %352, align 8
  %354 = getelementptr i8, ptr %0, i32 836
  %355 = load i64, ptr %354, align 16
  %356 = sub i64 %353, %355
  %357 = trunc i64 %356 to i32
  %358 = getelementptr i8, ptr %0, i32 1188
  store i32 %357, ptr %358, align 4
  store i64 %353, ptr %354, align 16
  %359 = getelementptr i8, ptr %0, i32 10284
  %360 = load i64, ptr %359, align 8
  %361 = getelementptr i8, ptr %0, i32 844
  %362 = load i64, ptr %361, align 8
  %363 = sub i64 %360, %362
  %364 = trunc i64 %363 to i32
  %365 = getelementptr i8, ptr %0, i32 1168
  store i32 %364, ptr %365, align 4
  store i64 %360, ptr %361, align 8
  %366 = getelementptr i8, ptr %0, i32 10452
  %367 = load i64, ptr %366, align 16
  %368 = getelementptr i8, ptr %0, i32 1004
  %369 = load i64, ptr %368, align 8
  %370 = sub i64 %367, %369
  %371 = trunc i64 %370 to i32
  %372 = getelementptr i8, ptr %0, i32 996
  store i32 %371, ptr %372, align 16
  store i64 %367, ptr %368, align 8
  %373 = getelementptr i8, ptr %0, i32 10460
  %374 = load i64, ptr %373, align 8
  %375 = getelementptr i8, ptr %0, i32 860
  %376 = load i64, ptr %375, align 8
  %377 = sub i64 %374, %376
  %378 = trunc i64 %377 to i32
  %379 = getelementptr i8, ptr %0, i32 852
  store i32 %378, ptr %379, align 32
  store i64 %374, ptr %375, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !29
  %380 = load i16, ptr %351, align 4
  %381 = add i16 %380, 1
  store i16 %381, ptr %351, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !30
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !31
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !32
  %382 = load volatile i32, ptr %350, align 4
  %383 = and i32 %382, 4
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %413, label %385

385:                                              ; preds = %349
  %386 = getelementptr inbounds %struct.e1000_ring, ptr %8, i32 0, i32 6
  %387 = load i16, ptr %386, align 2
  %388 = zext i16 %387 to i32
  %389 = getelementptr inbounds %struct.e1000_ring, ptr %8, i32 0, i32 5
  %390 = load i16, ptr %389, align 4
  %391 = zext i16 %390 to i32
  %392 = icmp ugt i16 %387, %390
  br i1 %392, label %393, label %398

393:                                              ; preds = %385
  %394 = xor i32 %391, -1
  %395 = add nsw i32 %394, %388
  %396 = getelementptr inbounds %struct.e1000_ring, ptr %8, i32 0, i32 4
  %397 = load i32, ptr %396, align 4
  br label %404

398:                                              ; preds = %385
  %399 = getelementptr inbounds %struct.e1000_ring, ptr %8, i32 0, i32 4
  %400 = load i32, ptr %399, align 4
  %401 = xor i32 %391, -1
  %402 = add nsw i32 %401, %388
  %403 = add i32 %402, %400
  br label %404

404:                                              ; preds = %398, %393
  %405 = phi i32 [ %397, %393 ], [ %400, %398 ]
  %406 = phi i32 [ %395, %393 ], [ %403, %398 ]
  %407 = add i32 %406, 1
  %408 = icmp ult i32 %407, %405
  br i1 %408, label %409, label %413

409:                                              ; preds = %404
  %410 = getelementptr i8, ptr %0, i32 11100
  %411 = load i32, ptr %410, align 8
  %412 = or i32 %411, 1073741824
  store i32 %412, ptr %410, align 8
  br label %413

413:                                              ; preds = %409, %404, %349
  %414 = getelementptr i8, ptr %0, i32 11100
  %415 = load i32, ptr %414, align 8
  %416 = and i32 %415, 1073741824
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %422, label %418

418:                                              ; preds = %413
  %419 = getelementptr i8, ptr %0, i32 -16
  %420 = load ptr, ptr @system_wq, align 4
  %421 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %420, ptr noundef %419) #18
  br label %568

422:                                              ; preds = %413
  call void @e1000e_update_adaptive(ptr noundef %6) #18
  %423 = getelementptr i8, ptr %0, i32 556
  %424 = load i32, ptr %423, align 8
  %425 = icmp eq i32 %424, 4
  br i1 %425, label %426, label %443

426:                                              ; preds = %422
  %427 = load i32, ptr %379, align 32
  %428 = load i32, ptr %372, align 16
  %429 = add i32 %428, %427
  %430 = icmp ult i32 %429, 10000
  br i1 %430, label %441, label %431

431:                                              ; preds = %426
  %432 = icmp ugt i32 %427, %428
  %433 = sub i32 %427, %428
  %434 = sub i32 %428, %427
  %435 = select i1 %432, i32 %433, i32 %434
  %436 = udiv i32 %429, 10000
  %437 = udiv i32 %435, 10000
  %438 = mul nuw i32 %437, 6000
  %439 = udiv i32 %438, %436
  %440 = add nuw i32 %439, 2000
  br label %441

441:                                              ; preds = %431, %426
  %442 = phi i32 [ %440, %431 ], [ 8000, %426 ]
  call void @e1000e_write_itr(ptr noundef %3, i32 noundef %442)
  br label %443

443:                                              ; preds = %441, %422
  %444 = getelementptr i8, ptr %0, i32 11068
  %445 = load ptr, ptr %444, align 8
  %446 = icmp eq ptr %445, null
  br i1 %446, label %479, label %447

447:                                              ; preds = %443
  %448 = getelementptr i8, ptr %0, i32 956
  %449 = load ptr, ptr %448, align 8
  %450 = getelementptr inbounds %struct.e1000_ring, ptr %449, i32 0, i32 11
  %451 = load i32, ptr %450, align 4
  %452 = load ptr, ptr %6, align 4
  %453 = getelementptr inbounds %struct.e1000_adapter, ptr %452, i32 0, i32 85
  %454 = load i32, ptr %453, align 4
  %455 = and i32 %454, 2048
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %475, label %457

457:                                              ; preds = %447
  %458 = getelementptr i8, ptr %0, i32 1052
  %459 = load ptr, ptr %458, align 4
  %460 = getelementptr i8, ptr %459, i32 23380
  %461 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %460) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %462 = and i32 %461, 16777216
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %475, label %464

464:                                              ; preds = %468, %457
  %465 = phi i32 [ %466, %468 ], [ 2000, %457 ]
  %466 = add nsw i32 %465, -1
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %475, label %468

468:                                              ; preds = %464
  %469 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %469(i32 noundef 10737400) #18
  %470 = load ptr, ptr %458, align 4
  %471 = getelementptr i8, ptr %470, i32 23380
  %472 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %471) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %473 = and i32 %472, 16777216
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %464

475:                                              ; preds = %468, %464, %457, %447
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %476 = getelementptr i8, ptr %0, i32 1052
  %477 = load ptr, ptr %476, align 4
  %478 = getelementptr i8, ptr %477, i32 200
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %478, i32 %451) #18, !srcloc !12
  br label %507

479:                                              ; preds = %443
  %480 = load ptr, ptr %6, align 4
  %481 = getelementptr inbounds %struct.e1000_adapter, ptr %480, i32 0, i32 85
  %482 = load i32, ptr %481, align 4
  %483 = and i32 %482, 2048
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %503, label %485

485:                                              ; preds = %479
  %486 = getelementptr i8, ptr %0, i32 1052
  %487 = load ptr, ptr %486, align 4
  %488 = getelementptr i8, ptr %487, i32 23380
  %489 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %488) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %490 = and i32 %489, 16777216
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %503, label %492

492:                                              ; preds = %496, %485
  %493 = phi i32 [ %494, %496 ], [ 2000, %485 ]
  %494 = add nsw i32 %493, -1
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %503, label %496

496:                                              ; preds = %492
  %497 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %497(i32 noundef 10737400) #18
  %498 = load ptr, ptr %486, align 4
  %499 = getelementptr i8, ptr %498, i32 23380
  %500 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %499) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %501 = and i32 %500, 16777216
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %492

503:                                              ; preds = %496, %492, %485, %479
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %504 = getelementptr i8, ptr %0, i32 1052
  %505 = load ptr, ptr %504, align 4
  %506 = getelementptr i8, ptr %505, i32 200
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %506, i32 16) #18, !srcloc !12
  br label %507

507:                                              ; preds = %503, %475
  call fastcc void @e1000e_flush_descriptors(ptr noundef %3)
  %508 = getelementptr i8, ptr %0, i32 804
  store i8 1, ptr %508, align 16
  %509 = call zeroext i1 @e1000e_get_laa_state_82571(ptr noundef %6) #18
  br i1 %509, label %510, label %515

510:                                              ; preds = %507
  %511 = getelementptr i8, ptr %0, i32 1140
  %512 = load ptr, ptr %511, align 4
  %513 = getelementptr i8, ptr %0, i32 1152
  %514 = call i32 %512(ptr noundef %6, ptr noundef %513, i32 noundef 0) #18
  br label %515

515:                                              ; preds = %510, %507
  %516 = getelementptr i8, ptr %0, i32 11104
  %517 = load i32, ptr %516, align 4
  %518 = and i32 %517, 512
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %532, label %520

520:                                              ; preds = %515
  %521 = call zeroext i1 @e1000_check_phy_82574(ptr noundef %6) #18
  %522 = getelementptr i8, ptr %0, i32 11156
  br i1 %521, label %524, label %523

523:                                              ; preds = %520
  store i32 0, ptr %522, align 32
  br label %532

524:                                              ; preds = %520
  %525 = load i32, ptr %522, align 32
  %526 = add i32 %525, 1
  store i32 %526, ptr %522, align 32
  %527 = icmp sgt i32 %526, 1
  br i1 %527, label %528, label %532

528:                                              ; preds = %524
  store i32 0, ptr %522, align 32
  %529 = getelementptr i8, ptr %0, i32 -16
  %530 = load ptr, ptr @system_wq, align 4
  %531 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %530, ptr noundef %529) #18
  br label %532

532:                                              ; preds = %528, %524, %523, %515
  %533 = getelementptr i8, ptr %0, i32 11172
  %534 = load i32, ptr %533, align 8
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %559, label %536

536:                                              ; preds = %532
  %537 = load i32, ptr %516, align 4
  %538 = and i32 %537, 8192
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %556, label %540

540:                                              ; preds = %536
  %541 = getelementptr i8, ptr %0, i32 1052
  %542 = load ptr, ptr %541, align 4
  %543 = getelementptr i8, ptr %542, i32 46624
  %544 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %543) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %545 = and i32 %544, 1
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %549

547:                                              ; preds = %540
  %548 = load i32, ptr %516, align 4
  br label %556

549:                                              ; preds = %540
  %550 = load ptr, ptr %541, align 4
  %551 = getelementptr i8, ptr %550, i32 46632
  %552 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %551) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %553 = getelementptr i8, ptr %0, i32 1020
  %554 = load i32, ptr %553, align 8
  %555 = add i32 %554, 1
  store i32 %555, ptr %553, align 8
  br label %559

556:                                              ; preds = %547, %536
  %557 = phi i32 [ %548, %547 ], [ %537, %536 ]
  %558 = or i32 %557, 8192
  store i32 %558, ptr %516, align 4
  br label %559

559:                                              ; preds = %556, %549, %532
  %560 = load volatile i32, ptr %9, align 4
  %561 = and i32 %560, 8
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %563, label %568

563:                                              ; preds = %559
  %564 = load volatile i32, ptr @jiffies, align 64
  %565 = add i32 %564, 200
  %566 = call i32 @round_jiffies(i32 noundef %565) #18
  %567 = call i32 @mod_timer(ptr noundef %3, i32 noundef %566) #18
  br label %568

568:                                              ; preds = %563, %559, %418, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000e_downshift_workaround(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -10560
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -10060
  tail call void @e1000e_gig_downshift_workaround_ich8lan(ptr noundef %7) #18
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000e_update_phy_task(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -10076
  %3 = getelementptr i8, ptr %0, i32 -10576
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -9332
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %2) #18
  %11 = getelementptr i8, ptr %0, i32 -9276
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, 10
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = tail call i32 @e1000_set_eee_pchlan(ptr noundef %2) #18
  br label %16

16:                                               ; preds = %14, %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_print_hw_hang(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = getelementptr i8, ptr %0, i32 -11216
  %7 = getelementptr i8, ptr %0, i32 -10100
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 -10576
  %10 = load ptr, ptr %9, align 64
  %11 = getelementptr inbounds %struct.e1000_ring, ptr %10, i32 0, i32 6
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr inbounds %struct.e1000_ring, ptr %10, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr %struct.e1000_buffer, ptr %15, i32 %13, i32 2, i32 0, i32 2
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds %struct.e1000_ring, ptr %10, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %0, i32 -10092
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #18
  store i16 0, ptr %2, align 2, !annotation !19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #18
  store i16 0, ptr %3, align 2, !annotation !19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #18
  store i16 0, ptr %4, align 2, !annotation !19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #18
  store i16 0, ptr %5, align 2, !annotation !19
  %22 = getelementptr i8, ptr %0, i32 -10592
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %162

26:                                               ; preds = %1
  %27 = getelementptr i8, ptr %0, i32 -10335
  %28 = load i8, ptr %27, align 1, !range !20
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %99

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %0, i32 -36
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 64
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %99, label %35

35:                                               ; preds = %30
  %36 = getelementptr i8, ptr %0, i32 -10332
  %37 = load i32, ptr %36, align 4
  %38 = or i32 %37, -2147483648
  %39 = load ptr, ptr %21, align 4
  %40 = getelementptr inbounds %struct.e1000_adapter, ptr %39, i32 0, i32 85
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 2048
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %35
  %45 = getelementptr i8, ptr %0, i32 -10088
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 23380
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %49 = and i32 %48, 16777216
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %55, %44
  %52 = phi i32 [ %53, %55 ], [ 2000, %44 ]
  %53 = add nsw i32 %52, -1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 10737400) #18
  %57 = load ptr, ptr %45, align 4
  %58 = getelementptr i8, ptr %57, i32 23380
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %60 = and i32 %59, 16777216
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %51

62:                                               ; preds = %55, %51, %44, %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %63 = getelementptr i8, ptr %0, i32 -10088
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 14368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %38) #18, !srcloc !12
  %66 = load ptr, ptr %63, align 4
  %67 = getelementptr i8, ptr %66, i32 8
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %69 = load i32, ptr %36, align 4
  %70 = or i32 %69, -2147483648
  %71 = load ptr, ptr %21, align 4
  %72 = getelementptr inbounds %struct.e1000_adapter, ptr %71, i32 0, i32 85
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 2048
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %93, label %76

76:                                               ; preds = %62
  %77 = load ptr, ptr %63, align 4
  %78 = getelementptr i8, ptr %77, i32 23380
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %80 = and i32 %79, 16777216
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %86, %76
  %83 = phi i32 [ %84, %86 ], [ 2000, %76 ]
  %84 = add nsw i32 %83, -1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 10737400) #18
  %88 = load ptr, ptr %63, align 4
  %89 = getelementptr i8, ptr %88, i32 23380
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %91 = and i32 %90, 16777216
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %82

93:                                               ; preds = %86, %82, %76, %62
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %94 = load ptr, ptr %63, align 4
  %95 = getelementptr i8, ptr %94, i32 14368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %70) #18, !srcloc !12
  %96 = load ptr, ptr %63, align 4
  %97 = getelementptr i8, ptr %96, i32 8
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  store i8 1, ptr %27, align 1
  br label %162

99:                                               ; preds = %30, %26
  store i8 0, ptr %27, align 1
  %100 = getelementptr i8, ptr %0, i32 -10088
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr i8, ptr %101, i32 14352
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %104 = load ptr, ptr %100, align 4
  %105 = getelementptr i8, ptr %104, i32 14360
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %107 = icmp eq i32 %103, %106
  br i1 %107, label %162, label %108

108:                                              ; preds = %99
  %109 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 87
  %110 = load ptr, ptr %109, align 64
  %111 = getelementptr inbounds %struct.netdev_queue, ptr %110, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %111) #18
  %112 = getelementptr i8, ptr %0, i32 -9340
  %113 = load ptr, ptr %112, align 4
  %114 = call i32 %113(ptr noundef %21, i32 noundef 1, ptr noundef nonnull %2) #18
  %115 = load ptr, ptr %112, align 4
  %116 = call i32 %115(ptr noundef %21, i32 noundef 10, ptr noundef nonnull %3) #18
  %117 = load ptr, ptr %112, align 4
  %118 = call i32 %117(ptr noundef %21, i32 noundef 15, ptr noundef nonnull %4) #18
  %119 = getelementptr i8, ptr %0, i32 -10096
  %120 = load ptr, ptr %119, align 32
  %121 = call i32 @pci_read_config_word(ptr noundef %120, i32 noundef 6, ptr noundef nonnull %5) #18
  %122 = load ptr, ptr %7, align 4
  %123 = getelementptr inbounds %struct.e1000_ring, ptr %10, i32 0, i32 7
  %124 = load ptr, ptr %123, align 4
  %125 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !64
  %126 = getelementptr inbounds %struct.e1000_ring, ptr %10, i32 0, i32 8
  %127 = load ptr, ptr %126, align 4
  %128 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !65
  %129 = getelementptr inbounds %struct.e1000_ring, ptr %10, i32 0, i32 5
  %130 = load i16, ptr %129, align 4
  %131 = zext i16 %130 to i32
  %132 = load i16, ptr %11, align 2
  %133 = zext i16 %132 to i32
  %134 = load ptr, ptr %14, align 4
  %135 = getelementptr %struct.e1000_buffer, ptr %134, i32 %18, i32 2
  %136 = load i32, ptr %135, align 4
  %137 = load volatile i32, ptr @jiffies, align 64
  %138 = getelementptr %struct.e1000_tx_desc, ptr %20, i32 %18, i32 2
  %139 = load i8, ptr %138, align 4
  %140 = zext i8 %139 to i32
  %141 = load ptr, ptr %100, align 4
  %142 = getelementptr i8, ptr %141, i32 8
  %143 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %142) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %144 = load i16, ptr %2, align 2
  %145 = zext i16 %144 to i32
  %146 = load i16, ptr %3, align 2
  %147 = zext i16 %146 to i32
  %148 = load i16, ptr %4, align 2
  %149 = zext i16 %148 to i32
  %150 = load i16, ptr %5, align 2
  %151 = zext i16 %150 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %122, ptr noundef nonnull @.str.136, i32 noundef %125, i32 noundef %128, i32 noundef %131, i32 noundef %133, i32 noundef %136, i32 noundef %18, i32 noundef %137, i32 noundef %140, i32 noundef %143, i32 noundef %145, i32 noundef %147, i32 noundef %149, i32 noundef %151) #20
  call fastcc void @e1000e_dump(ptr noundef %6)
  %152 = getelementptr i8, ptr %0, i32 -9976
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, 9
  br i1 %154, label %155, label %162

155:                                              ; preds = %108
  %156 = load ptr, ptr %100, align 4
  %157 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %156) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %158 = and i32 %157, 268435456
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %155
  %161 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %161, ptr noundef nonnull @.str.137) #20
  br label %162

162:                                              ; preds = %160, %155, %108, %99, %93, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_ptp_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @e1000_print_device_info(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [11 x i8], align 1
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %4 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 63
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %2) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %2, i8 0, i32 11, i1 false), !annotation !19
  %6 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 4
  %9 = select i1 %8, ptr @.str.139, ptr @.str.140
  %10 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 72
  %11 = load ptr, ptr %10, align 32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %5, ptr noundef nonnull @.str.138, ptr noundef nonnull %9, ptr noundef %11) #20
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 7
  %16 = select i1 %15, ptr @.str.142, ptr @.str.143
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %12, ptr noundef nonnull @.str.141, ptr noundef nonnull %16) #20
  %17 = call i32 @e1000_read_pba_string_generic(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 11) #18
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = call i32 @strlcpy(ptr noundef nonnull %2, ptr noundef nonnull @.str.144, i32 noundef 11) #18
  br label %21

21:                                               ; preds = %19, %1
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 3, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %13, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %22, ptr noundef nonnull @.str.145, i32 noundef %24, i32 noundef %25, ptr noundef nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %2) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_dev_run_wake(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__e1000e_disable_aspm(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #18
  store i16 0, ptr %4, align 2, !annotation !19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #18
  store i16 0, ptr %5, align 2, !annotation !19
  %10 = zext i16 %1 to i32
  %11 = add i16 %1, -1
  %12 = icmp ult i16 %11, 3
  br i1 %12, label %13, label %59

13:                                               ; preds = %3
  %14 = sext i16 %11 to i32
  %15 = getelementptr inbounds [3 x i16], ptr @switch.table.__e1000e_disable_aspm, i32 0, i32 %14
  %16 = load i16, ptr %15, align 2
  %17 = call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %4) #18
  %18 = load i16, ptr %4, align 2
  %19 = and i16 %18, 3
  store i16 %19, ptr %4, align 2
  %20 = icmp eq ptr %9, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = and i16 %18, %16
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %59, label %34

24:                                               ; preds = %13
  %25 = call i32 @pcie_capability_read_word(ptr noundef nonnull %9, i32 noundef 16, ptr noundef nonnull %5) #18
  %26 = load i16, ptr %5, align 2
  %27 = and i16 %26, 3
  store i16 %27, ptr %5, align 2
  %28 = load i16, ptr %4, align 2
  %29 = and i16 %28, %16
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = and i16 %26, %16
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %59, label %34

34:                                               ; preds = %31, %24, %21
  %35 = phi i16 [ %29, %24 ], [ %22, %21 ], [ 0, %31 ]
  %36 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %37 = zext i16 %35 to i32
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, ptr @.str.40, ptr @.str.39
  %41 = and i32 %37, 2
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, ptr @.str.40, ptr @.str.41
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.38, ptr noundef nonnull %40, ptr noundef nonnull %43) #20
  %44 = icmp eq i32 %2, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %34
  %46 = call i32 @pci_disable_link_state_locked(ptr noundef %0, i32 noundef %10) #18
  br label %49

47:                                               ; preds = %34
  %48 = call i32 @pci_disable_link_state(ptr noundef %0, i32 noundef %10) #18
  br label %49

49:                                               ; preds = %47, %45
  %50 = call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %4) #18
  %51 = load i16, ptr %4, align 2
  %52 = and i16 %51, 3
  store i16 %52, ptr %4, align 2
  %53 = and i16 %51, %16
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = call i32 @pcie_capability_clear_and_set_word(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %16, i16 noundef zeroext 0) #18
  br i1 %20, label %59, label %57

57:                                               ; preds = %55
  %58 = call i32 @pcie_capability_clear_and_set_word(ptr noundef nonnull %9, i32 noundef 16, i16 noundef zeroext %16, i16 noundef zeroext 0) #18
  br label %59

59:                                               ; preds = %57, %55, %49, %31, %21, %3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_disable_link_state_locked(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_disable_link_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_clear_and_set_word(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_xmit_frame(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.vlan_hdr, align 4
  %4 = getelementptr i8, ptr %1, i32 2048
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %7, %9
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %12 = load i16, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  %14 = load i16, ptr %13, align 8
  %15 = zext i16 %14 to i32
  switch i16 %12, label %57 [
    i16 -22392, label %16
    i16 129, label %16
  ]

16:                                               ; preds = %2, %2
  %17 = icmp eq i16 %14, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %16
  %19 = icmp ult i16 %14, 4
  br i1 %19, label %20, label %21, !prof !38

20:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 598, i32 noundef 9, ptr noundef null) #18
  br label %57

21:                                               ; preds = %18
  %22 = add nsw i32 %15, -4
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi i32 [ %22, %21 ], [ 14, %16 ]
  %25 = icmp eq ptr %0, null
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  br label %27

27:                                               ; preds = %53, %23
  %28 = phi i32 [ %9, %23 ], [ %56, %53 ]
  %29 = phi i32 [ %7, %23 ], [ %55, %53 ]
  %30 = phi i32 [ %24, %23 ], [ %54, %53 ]
  %31 = phi i32 [ 8, %23 ], [ %46, %53 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store i32 0, ptr %3, align 4, !annotation !19
  %32 = add i32 %30, %28
  %33 = sub i32 %29, %32
  %34 = icmp sgt i32 %33, 3
  br i1 %34, label %35, label %38, !prof !13

35:                                               ; preds = %27
  %36 = load ptr, ptr %26, align 4
  %37 = getelementptr i8, ptr %36, i32 %30
  br label %43

38:                                               ; preds = %27
  br i1 %25, label %49, label %39

39:                                               ; preds = %38
  %40 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %30, ptr noundef nonnull %3, i32 noundef 4) #18
  %41 = icmp slt i32 %40, 0
  %42 = select i1 %41, ptr null, ptr %3, !prof !38
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi ptr [ %37, %35 ], [ %42, %39 ]
  %45 = icmp eq ptr %44, null
  %46 = add nsw i32 %31, -1
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %45, i1 true, i1 %47, !prof !38
  br i1 %48, label %49, label %50, !prof !38

49:                                               ; preds = %43, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  br label %57

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.vlan_hdr, ptr %44, i32 0, i32 1
  %52 = load i16, ptr %51, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  switch i16 %52, label %57 [
    i16 -22392, label %53
    i16 129, label %53
  ]

53:                                               ; preds = %50, %50
  %54 = add nsw i32 %30, 4
  %55 = load i32, ptr %6, align 8
  %56 = load i32, ptr %8, align 4
  br label %27

57:                                               ; preds = %50, %49, %20, %2
  %58 = phi i16 [ 0, %20 ], [ %12, %2 ], [ 0, %49 ], [ %52, %50 ]
  %59 = getelementptr i8, ptr %1, i32 2032
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %60, 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #18
  br label %530

64:                                               ; preds = %57
  %65 = load i32, ptr %6, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #18
  br label %530

68:                                               ; preds = %64
  %69 = icmp ult i32 %65, 17
  br i1 %69, label %70, label %84, !prof !38

70:                                               ; preds = %68
  %71 = sub nuw nsw i32 17, %65
  %72 = call i32 @__skb_pad(ptr noundef %0, i32 noundef %71, i1 noundef zeroext true) #18
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %530

74:                                               ; preds = %70
  %75 = load i32, ptr %8, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77, !prof !13

77:                                               ; preds = %74
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #18, !srcloc !66
  unreachable

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr i8, ptr %80, i32 %71
  store ptr %81, ptr %79, align 8
  %82 = load i32, ptr %6, align 8
  %83 = add i32 %82, %71
  store i32 %83, ptr %6, align 8
  br label %84

84:                                               ; preds = %78, %68
  %85 = phi i32 [ %83, %78 ], [ %65, %68 ]
  %86 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.skb_shared_info, ptr %87, i32 0, i32 4
  %89 = load i16, ptr %88, align 4
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %126, label %91

91:                                               ; preds = %84
  %92 = load i32, ptr %8, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %131, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %98 = load i16, ptr %97, align 2
  %99 = zext i16 %98 to i32
  %100 = getelementptr i8, ptr %96, i32 %99
  %101 = getelementptr inbounds %struct.tcphdr, ptr %100, i32 0, i32 4
  %102 = load i16, ptr %101, align 4
  %103 = lshr i16 %102, 2
  %104 = and i16 %103, 60
  %105 = zext i16 %104 to i32
  %106 = ptrtoint ptr %100 to i32
  %107 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %108 = load ptr, ptr %107, align 4
  %109 = ptrtoint ptr %108 to i32
  %110 = sub i32 %106, %109
  %111 = add i32 %110, %105
  %112 = and i32 %111, 255
  %113 = icmp eq i32 %112, %10
  br i1 %113, label %114, label %131

114:                                              ; preds = %94
  %115 = call i32 @llvm.umin.i32(i32 %92, i32 4)
  %116 = call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %115) #18
  %117 = icmp eq ptr %116, null
  br i1 %117, label %123, label %118

118:                                              ; preds = %114
  %119 = load i32, ptr %6, align 8
  %120 = load i32, ptr %8, align 4
  %121 = sub i32 %119, %120
  %122 = load ptr, ptr %86, align 4
  br label %131

123:                                              ; preds = %114
  %124 = getelementptr i8, ptr %1, i32 2524
  %125 = load ptr, ptr %124, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %125, ptr noundef nonnull @.str.42) #20
  call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #18
  br label %530

126:                                              ; preds = %84
  %127 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %128 = load i16, ptr %127, align 8
  %129 = and i16 %128, 96
  %130 = icmp eq i16 %129, 96
  br i1 %130, label %131, label %135

131:                                              ; preds = %126, %118, %94, %91
  %132 = phi ptr [ %87, %126 ], [ %87, %91 ], [ %87, %94 ], [ %122, %118 ]
  %133 = phi i32 [ %85, %126 ], [ %85, %91 ], [ %85, %94 ], [ %119, %118 ]
  %134 = phi i32 [ %10, %126 ], [ %10, %91 ], [ %10, %94 ], [ %121, %118 ]
  br label %135

135:                                              ; preds = %131, %126
  %136 = phi i32 [ %133, %131 ], [ %85, %126 ]
  %137 = phi ptr [ %132, %131 ], [ %87, %126 ]
  %138 = phi i32 [ %134, %131 ], [ %10, %126 ]
  %139 = phi i32 [ 2, %131 ], [ 1, %126 ]
  %140 = getelementptr i8, ptr %1, i32 2052
  %141 = load i32, ptr %140, align 4
  %142 = add i32 %141, -1
  %143 = add i32 %142, %138
  %144 = udiv i32 %143, %141
  %145 = add i32 %144, %139
  %146 = getelementptr inbounds %struct.skb_shared_info, ptr %137, i32 0, i32 2
  %147 = load i8, ptr %146, align 2
  %148 = zext i8 %147 to i32
  %149 = icmp eq i8 %147, 0
  br i1 %149, label %160, label %150

150:                                              ; preds = %150, %135
  %151 = phi i32 [ %158, %150 ], [ 0, %135 ]
  %152 = phi i32 [ %157, %150 ], [ %145, %135 ]
  %153 = getelementptr %struct.skb_shared_info, ptr %137, i32 0, i32 12, i32 %151, i32 1
  %154 = load i32, ptr %153, align 4
  %155 = add i32 %142, %154
  %156 = udiv i32 %155, %141
  %157 = add i32 %156, %152
  %158 = add nuw nsw i32 %151, 1
  %159 = icmp eq i32 %158, %148
  br i1 %159, label %160, label %150

160:                                              ; preds = %150, %135
  %161 = phi i32 [ %145, %135 ], [ %157, %150 ]
  %162 = getelementptr i8, ptr %1, i32 3215
  %163 = load i8, ptr %162, align 1, !range !20
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %214, label %165

165:                                              ; preds = %160
  %166 = getelementptr i8, ptr %1, i32 2532
  %167 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %168 = load i16, ptr %167, align 2
  %169 = and i16 %168, 1
  %170 = icmp eq i16 %169, 0
  br i1 %170, label %184, label %171

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 9
  %173 = load i16, ptr %172, align 2
  %174 = getelementptr i8, ptr %1, i32 3474
  %175 = load i16, ptr %174, align 2
  %176 = icmp eq i16 %173, %175
  br i1 %176, label %177, label %214

177:                                              ; preds = %171
  %178 = getelementptr i8, ptr %1, i32 3472
  %179 = load i8, ptr %178, align 4
  %180 = and i8 %179, 2
  %181 = icmp eq i8 %180, 0
  %182 = icmp ult i32 %136, 283
  %183 = select i1 %181, i1 true, i1 %182
  br i1 %183, label %214, label %186

184:                                              ; preds = %165
  %185 = icmp ult i32 %136, 283
  br i1 %185, label %214, label %186

186:                                              ; preds = %184, %177
  %187 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.ethhdr, ptr %188, i32 0, i32 2
  %190 = load i16, ptr %189, align 1
  %191 = icmp eq i16 %190, 8
  br i1 %191, label %192, label %214

192:                                              ; preds = %186
  %193 = getelementptr i8, ptr %188, i32 23
  %194 = load i8, ptr %193, align 1
  %195 = icmp eq i8 %194, 17
  br i1 %195, label %196, label %214

196:                                              ; preds = %192
  %197 = getelementptr i8, ptr %188, i32 14
  %198 = load i8, ptr %197, align 4
  %199 = shl i8 %198, 2
  %200 = and i8 %199, 60
  %201 = zext i8 %200 to i32
  %202 = getelementptr i8, ptr %197, i32 %201
  %203 = getelementptr inbounds %struct.udphdr, ptr %202, i32 0, i32 1
  %204 = load i16, ptr %203, align 2
  %205 = icmp eq i16 %204, 17152
  br i1 %205, label %206, label %214

206:                                              ; preds = %196
  %207 = getelementptr i8, ptr %202, i32 8
  %208 = ptrtoint ptr %207 to i32
  %209 = ptrtoint ptr %188 to i32
  %210 = add i32 %136, %209
  %211 = sub i32 %210, %208
  %212 = trunc i32 %211 to i16
  %213 = call i32 @e1000e_mng_write_dhcp_info(ptr noundef %166, ptr noundef %207, i16 noundef zeroext %212) #18
  br label %214

214:                                              ; preds = %206, %196, %192, %186, %184, %177, %171, %160
  %215 = add i32 %161, 2
  %216 = getelementptr inbounds %struct.e1000_ring, ptr %5, i32 0, i32 4
  %217 = load i32, ptr %216, align 4
  %218 = icmp ult i32 %217, %215
  br i1 %218, label %219, label %220, !prof !38

219:                                              ; preds = %214
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/intel/e1000e/netdev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5803, 0\0A.popsection", ""() #18, !srcloc !67
  unreachable

220:                                              ; preds = %214
  %221 = getelementptr inbounds %struct.e1000_ring, ptr %5, i32 0, i32 6
  %222 = load i16, ptr %221, align 2
  %223 = zext i16 %222 to i32
  %224 = getelementptr inbounds %struct.e1000_ring, ptr %5, i32 0, i32 5
  %225 = load i16, ptr %224, align 4
  %226 = zext i16 %225 to i32
  %227 = icmp ugt i16 %222, %225
  %228 = xor i32 %226, -1
  %229 = select i1 %227, i32 0, i32 %217
  %230 = add nsw i32 %228, %223
  %231 = add i32 %230, %229
  %232 = icmp slt i32 %231, %215
  br i1 %232, label %233, label %264

233:                                              ; preds = %220
  %234 = load ptr, ptr %5, align 4
  %235 = getelementptr inbounds %struct.e1000_adapter, ptr %234, i32 0, i32 63
  %236 = load ptr, ptr %235, align 4
  %237 = getelementptr inbounds %struct.net_device, ptr %236, i32 0, i32 87
  %238 = load ptr, ptr %237, align 64
  %239 = getelementptr inbounds %struct.netdev_queue, ptr %238, i32 0, i32 12
  call void @_set_bit(i32 noundef 0, ptr noundef %239) #18
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !68
  %240 = load i16, ptr %221, align 2
  %241 = zext i16 %240 to i32
  %242 = load i16, ptr %224, align 4
  %243 = zext i16 %242 to i32
  %244 = icmp ugt i16 %240, %242
  br i1 %244, label %245, label %248

245:                                              ; preds = %233
  %246 = xor i32 %243, -1
  %247 = add nsw i32 %246, %241
  br label %253

248:                                              ; preds = %233
  %249 = load i32, ptr %216, align 4
  %250 = xor i32 %243, -1
  %251 = add nsw i32 %250, %241
  %252 = add i32 %251, %249
  br label %253

253:                                              ; preds = %248, %245
  %254 = phi i32 [ %247, %245 ], [ %252, %248 ]
  %255 = icmp slt i32 %254, %215
  br i1 %255, label %530, label %256

256:                                              ; preds = %253
  %257 = load ptr, ptr %235, align 4
  %258 = getelementptr inbounds %struct.net_device, ptr %257, i32 0, i32 87
  %259 = load ptr, ptr %258, align 64
  %260 = getelementptr inbounds %struct.netdev_queue, ptr %259, i32 0, i32 12
  call void @_clear_bit(i32 noundef 0, ptr noundef %260) #18
  %261 = getelementptr inbounds %struct.e1000_adapter, ptr %234, i32 0, i32 23
  %262 = load i32, ptr %261, align 8
  %263 = add i32 %262, 1
  store i32 %263, ptr %261, align 8
  br label %264

264:                                              ; preds = %256, %220
  %265 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %266 = load i16, ptr %265, align 2
  %267 = and i16 %266, 1
  %268 = icmp eq i16 %267, 0
  br i1 %268, label %275, label %269

269:                                              ; preds = %264
  %270 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 9
  %271 = load i16, ptr %270, align 2
  %272 = zext i16 %271 to i32
  %273 = shl nuw i32 %272, 16
  %274 = or i32 %273, 2
  br label %275

275:                                              ; preds = %269, %264
  %276 = phi i32 [ %274, %269 ], [ 0, %264 ]
  %277 = load i16, ptr %224, align 4
  %278 = zext i16 %277 to i32
  %279 = load ptr, ptr %86, align 4
  %280 = getelementptr inbounds %struct.skb_shared_info, ptr %279, i32 0, i32 4
  %281 = load i16, ptr %280, align 4
  %282 = icmp eq i16 %281, 0
  br i1 %282, label %435, label %283

283:                                              ; preds = %275
  %284 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %285 = load i8, ptr %284, align 2
  %286 = and i8 %285, 1
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %302, label %288

288:                                              ; preds = %283
  %289 = getelementptr inbounds %struct.skb_shared_info, ptr %279, i32 0, i32 10
  %290 = load volatile i32, ptr %289, align 4
  %291 = and i32 %290, 65535
  %292 = ashr i32 %290, 16
  %293 = sub nsw i32 %291, %292
  %294 = icmp eq i32 %293, 1
  br i1 %294, label %302, label %295

295:                                              ; preds = %288
  %296 = call i32 @pskb_expand_head(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #18
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %381, label %298

298:                                              ; preds = %295
  %299 = load ptr, ptr %86, align 4
  %300 = getelementptr inbounds %struct.skb_shared_info, ptr %299, i32 0, i32 4
  %301 = load i16, ptr %300, align 4
  br label %302

302:                                              ; preds = %298, %288, %283
  %303 = phi i16 [ %301, %298 ], [ %281, %283 ], [ %281, %288 ]
  %304 = phi ptr [ %299, %298 ], [ %279, %283 ], [ %279, %288 ]
  %305 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %306 = load ptr, ptr %305, align 8
  %307 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %308 = load i16, ptr %307, align 2
  %309 = zext i16 %308 to i32
  %310 = getelementptr i8, ptr %306, i32 %309
  %311 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %312 = load ptr, ptr %311, align 4
  %313 = ptrtoint ptr %310 to i32
  %314 = ptrtoint ptr %312 to i32
  %315 = sub i32 %313, %314
  %316 = getelementptr inbounds %struct.tcphdr, ptr %310, i32 0, i32 4
  %317 = load i16, ptr %316, align 4
  %318 = lshr i16 %317, 2
  %319 = and i16 %318, 60
  %320 = zext i16 %319 to i32
  %321 = add i32 %315, %320
  %322 = trunc i32 %321 to i8
  %323 = icmp eq i16 %58, 8
  br i1 %323, label %324, label %356

324:                                              ; preds = %302
  %325 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %326 = load i16, ptr %325, align 4
  %327 = zext i16 %326 to i32
  %328 = getelementptr i8, ptr %306, i32 %327
  %329 = getelementptr inbounds %struct.iphdr, ptr %328, i32 0, i32 2
  store i16 0, ptr %329, align 2
  %330 = getelementptr inbounds %struct.iphdr, ptr %328, i32 0, i32 7
  store i16 0, ptr %330, align 2
  %331 = getelementptr inbounds %struct.iphdr, ptr %328, i32 0, i32 8
  %332 = load i32, ptr %331, align 4
  %333 = getelementptr inbounds %struct.iphdr, ptr %328, i32 0, i32 9
  %334 = load i32, ptr %333, align 4
  %335 = call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %334, i32 %332, i32 6) #22, !srcloc !69
  %336 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %335) #22, !srcloc !70
  %337 = xor i32 %336, -1
  %338 = lshr i32 %337, 16
  %339 = trunc i32 %338 to i16
  %340 = xor i16 %339, -1
  %341 = load ptr, ptr %305, align 8
  %342 = load i16, ptr %307, align 2
  %343 = zext i16 %342 to i32
  %344 = getelementptr i8, ptr %341, i32 %343
  %345 = getelementptr inbounds %struct.tcphdr, ptr %344, i32 0, i32 6
  store i16 %340, ptr %345, align 4
  %346 = load ptr, ptr %305, align 8
  %347 = load i16, ptr %307, align 2
  %348 = zext i16 %347 to i32
  %349 = getelementptr i8, ptr %346, i32 %348
  %350 = load ptr, ptr %311, align 4
  %351 = ptrtoint ptr %349 to i32
  %352 = ptrtoint ptr %350 to i32
  %353 = sub i32 %351, %352
  %354 = trunc i32 %353 to i16
  %355 = add i16 %354, -1
  br label %382

356:                                              ; preds = %302
  %357 = getelementptr inbounds %struct.skb_shared_info, ptr %304, i32 0, i32 8
  %358 = load i32, ptr %357, align 8
  %359 = and i32 %358, 16
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %382, label %361

361:                                              ; preds = %356
  %362 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %363 = load i16, ptr %362, align 4
  %364 = zext i16 %363 to i32
  %365 = getelementptr i8, ptr %306, i32 %364
  %366 = getelementptr inbounds %struct.ipv6hdr, ptr %365, i32 0, i32 2
  store i16 0, ptr %366, align 4
  %367 = getelementptr inbounds %struct.ipv6hdr, ptr %365, i32 0, i32 5
  %368 = getelementptr inbounds %struct.ipv6hdr, ptr %365, i32 0, i32 6
  %369 = call i32 @__csum_ipv6_magic(ptr noundef %367, ptr noundef %368, i32 noundef 0, i32 noundef 100663296, i32 noundef 0) #18
  %370 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %369) #22, !srcloc !70
  %371 = xor i32 %370, -1
  %372 = lshr i32 %371, 16
  %373 = trunc i32 %372 to i16
  %374 = xor i16 %373, -1
  %375 = getelementptr inbounds %struct.tcphdr, ptr %310, i32 0, i32 6
  store i16 %374, ptr %375, align 4
  %376 = load ptr, ptr %305, align 8
  %377 = load ptr, ptr %311, align 4
  %378 = load i16, ptr %307, align 2
  %379 = ptrtoint ptr %377 to i32
  %380 = zext i16 %378 to i32
  br label %382

381:                                              ; preds = %295
  call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #18
  br label %530

382:                                              ; preds = %361, %356, %324
  %383 = phi i32 [ %309, %356 ], [ %380, %361 ], [ %348, %324 ]
  %384 = phi i32 [ %314, %356 ], [ %379, %361 ], [ %352, %324 ]
  %385 = phi ptr [ %306, %356 ], [ %376, %361 ], [ %346, %324 ]
  %386 = phi i32 [ 620756992, %356 ], [ 620756992, %361 ], [ 654311424, %324 ]
  %387 = phi i16 [ 0, %356 ], [ 0, %361 ], [ %355, %324 ]
  %388 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %389 = load i16, ptr %388, align 4
  %390 = zext i16 %389 to i32
  %391 = getelementptr i8, ptr %385, i32 %390
  %392 = ptrtoint ptr %391 to i32
  %393 = sub i32 %392, %384
  %394 = trunc i32 %393 to i8
  %395 = getelementptr inbounds %struct.iphdr, ptr %391, i32 0, i32 7
  %396 = ptrtoint ptr %395 to i32
  %397 = sub i32 %396, %384
  %398 = trunc i32 %397 to i8
  %399 = getelementptr i8, ptr %385, i32 %383
  %400 = ptrtoint ptr %399 to i32
  %401 = sub i32 %400, %384
  %402 = trunc i32 %401 to i8
  %403 = getelementptr inbounds %struct.tcphdr, ptr %399, i32 0, i32 6
  %404 = ptrtoint ptr %403 to i32
  %405 = sub i32 %404, %384
  %406 = trunc i32 %405 to i8
  %407 = load i32, ptr %6, align 8
  %408 = and i32 %321, 255
  %409 = sub i32 %407, %408
  %410 = or i32 %409, %386
  %411 = load i16, ptr %224, align 4
  %412 = zext i16 %411 to i32
  %413 = getelementptr inbounds %struct.e1000_ring, ptr %5, i32 0, i32 1
  %414 = load ptr, ptr %413, align 4
  %415 = getelementptr %struct.e1000_context_desc, ptr %414, i32 %412
  %416 = getelementptr inbounds %struct.e1000_ring, ptr %5, i32 0, i32 9
  %417 = load ptr, ptr %416, align 4
  store i8 %394, ptr %415, align 4
  %418 = getelementptr inbounds %struct.anon.167, ptr %415, i32 0, i32 1
  store i8 %398, ptr %418, align 1
  %419 = getelementptr inbounds %struct.anon.167, ptr %415, i32 0, i32 2
  store i16 %387, ptr %419, align 2
  %420 = getelementptr %struct.e1000_context_desc, ptr %414, i32 %412, i32 1
  store i8 %402, ptr %420, align 4
  %421 = getelementptr inbounds %struct.anon.169, ptr %420, i32 0, i32 1
  store i8 %406, ptr %421, align 1
  %422 = getelementptr inbounds %struct.anon.169, ptr %420, i32 0, i32 2
  store i16 0, ptr %422, align 2
  %423 = getelementptr %struct.e1000_context_desc, ptr %414, i32 %412, i32 3
  %424 = getelementptr inbounds %struct.anon.171, ptr %423, i32 0, i32 2
  store i16 %303, ptr %424, align 2
  %425 = getelementptr inbounds %struct.anon.171, ptr %423, i32 0, i32 1
  store i8 %322, ptr %425, align 1
  %426 = getelementptr %struct.e1000_context_desc, ptr %414, i32 %412, i32 2
  store i32 %410, ptr %426, align 4
  %427 = load volatile i32, ptr @jiffies, align 64
  %428 = getelementptr %struct.e1000_buffer, ptr %417, i32 %412, i32 2
  store i32 %427, ptr %428, align 4
  %429 = getelementptr inbounds %struct.anon.144, ptr %428, i32 0, i32 2
  store i16 %411, ptr %429, align 2
  %430 = add nuw nsw i32 %412, 1
  %431 = load i32, ptr %216, align 4
  %432 = icmp eq i32 %430, %431
  %433 = trunc i32 %430 to i16
  %434 = select i1 %432, i16 0, i16 %433
  store i16 %434, ptr %224, align 4
  br label %438

435:                                              ; preds = %275
  %436 = call fastcc zeroext i1 @e1000_tx_csum(ptr noundef %5, ptr noundef %0, i16 noundef zeroext %58)
  %437 = zext i1 %436 to i32
  br label %438

438:                                              ; preds = %435, %382
  %439 = phi i32 [ %437, %435 ], [ 4, %382 ]
  %440 = or i32 %276, %439
  %441 = icmp eq i16 %58, 8
  %442 = or i32 %440, 8
  %443 = select i1 %441, i32 %442, i32 %440
  %444 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %445 = load i16, ptr %444, align 8
  %446 = and i16 %445, 4096
  %447 = icmp eq i16 %446, 0
  br i1 %447, label %450, label %448, !prof !13

448:                                              ; preds = %438
  %449 = or i32 %443, 16
  br label %450

450:                                              ; preds = %448, %438
  %451 = phi i32 [ %449, %448 ], [ %443, %438 ]
  %452 = load i32, ptr %140, align 4
  %453 = call fastcc i32 @e1000_tx_map(ptr noundef %5, ptr noundef %0, i32 noundef %278, i32 noundef %452, i32 noundef %148)
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %526, label %455

455:                                              ; preds = %450
  %456 = load ptr, ptr %86, align 4
  %457 = getelementptr inbounds %struct.skb_shared_info, ptr %456, i32 0, i32 3
  %458 = load i8, ptr %457, align 1
  %459 = and i8 %458, 1
  %460 = icmp eq i8 %459, 0
  br i1 %460, label %483, label %461, !prof !13

461:                                              ; preds = %455
  %462 = getelementptr i8, ptr %1, i32 12584
  %463 = load i32, ptr %462, align 8
  %464 = and i32 %463, 16384
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %483, label %466

466:                                              ; preds = %461
  %467 = getelementptr i8, ptr %1, i32 12704
  %468 = load ptr, ptr %467, align 32
  %469 = icmp eq ptr %468, null
  br i1 %469, label %470, label %479

470:                                              ; preds = %466
  %471 = or i8 %458, 4
  store i8 %471, ptr %457, align 1
  %472 = or i32 %451, 32
  %473 = call fastcc ptr @skb_get(ptr noundef %0)
  store ptr %0, ptr %467, align 32
  %474 = load volatile i32, ptr @jiffies, align 64
  %475 = getelementptr i8, ptr %1, i32 12708
  store i32 %474, ptr %475, align 4
  %476 = getelementptr i8, ptr %1, i32 12712
  %477 = load ptr, ptr @system_wq, align 4
  %478 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %477, ptr noundef %476) #18
  br label %483

479:                                              ; preds = %466
  %480 = getelementptr i8, ptr %1, i32 2376
  %481 = load i32, ptr %480, align 8
  %482 = add i32 %481, 1
  store i32 %482, ptr %480, align 8
  br label %483

483:                                              ; preds = %479, %470, %461, %455
  %484 = phi i32 [ %451, %479 ], [ %472, %470 ], [ %451, %461 ], [ %451, %455 ]
  %485 = load ptr, ptr %86, align 4
  %486 = getelementptr inbounds %struct.skb_shared_info, ptr %485, i32 0, i32 3
  %487 = load i8, ptr %486, align 1
  %488 = and i8 %487, 2
  %489 = icmp eq i8 %488, 0
  br i1 %489, label %491, label %490

490:                                              ; preds = %483
  call void @skb_tstamp_tx(ptr noundef %0, ptr noundef null) #18
  br label %491

491:                                              ; preds = %490, %483
  %492 = load i32, ptr %6, align 8
  call fastcc void @netdev_sent_queue(ptr noundef %1, i32 noundef %492)
  call fastcc void @e1000_tx_queue(ptr noundef %5, i32 noundef %484, i32 noundef %453)
  %493 = load i32, ptr %140, align 4
  %494 = add i32 %493, 4095
  %495 = udiv i32 %494, %493
  %496 = mul i32 %495, 17
  %497 = add i32 %496, 2
  %498 = call fastcc i32 @e1000_maybe_stop_tx(ptr noundef %5, i32 noundef %497)
  %499 = call i32 @llvm.read_register.i32(metadata !0) #18
  %500 = inttoptr i32 %499 to ptr
  %501 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %500) #16, !srcloc !71
  %502 = add i32 %501, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 10, i32 1) to i32)
  %503 = inttoptr i32 %502 to ptr
  %504 = load i8, ptr %503, align 1
  %505 = icmp eq i8 %504, 0
  br i1 %505, label %513, label %506

506:                                              ; preds = %491
  %507 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %508 = load ptr, ptr %507, align 64
  %509 = getelementptr inbounds %struct.netdev_queue, ptr %508, i32 0, i32 12
  %510 = load i32, ptr %509, align 4
  %511 = and i32 %510, 3
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %530, label %513

513:                                              ; preds = %506, %491
  %514 = getelementptr i8, ptr %1, i32 12588
  %515 = load i32, ptr %514, align 4
  %516 = and i32 %515, 2048
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %521, label %518

518:                                              ; preds = %513
  %519 = load i16, ptr %224, align 4
  %520 = zext i16 %519 to i32
  call fastcc void @e1000e_update_tdt_wa(ptr noundef %5, i32 noundef %520)
  br label %530

521:                                              ; preds = %513
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !72
  call void @arm_heavy_mb() #18
  %522 = load i16, ptr %224, align 4
  %523 = zext i16 %522 to i32
  %524 = getelementptr inbounds %struct.e1000_ring, ptr %5, i32 0, i32 8
  %525 = load ptr, ptr %524, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %525, i32 %523) #18, !srcloc !12
  br label %530

526:                                              ; preds = %450
  call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #18
  %527 = getelementptr inbounds %struct.e1000_ring, ptr %5, i32 0, i32 9
  %528 = load ptr, ptr %527, align 4
  %529 = getelementptr %struct.e1000_buffer, ptr %528, i32 %278, i32 2
  store i32 0, ptr %529, align 4
  store i16 %277, ptr %224, align 4
  br label %530

530:                                              ; preds = %526, %521, %518, %506, %381, %253, %123, %70, %67, %63
  %531 = phi i32 [ 0, %63 ], [ 0, %67 ], [ 0, %381 ], [ 0, %123 ], [ 0, %506 ], [ 0, %521 ], [ 0, %518 ], [ 0, %526 ], [ 0, %70 ], [ 16, %253 ]
  ret i32 %531
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @passthru_features_check(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_set_mac(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 2532
  %4 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %2
  %9 = getelementptr %struct.sockaddr, ptr %1, i32 0, i32 1, i32 4
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = or i32 %5, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %8
  tail call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef %4, i32 noundef 6) #18
  %15 = getelementptr i8, ptr %0, i32 2636
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 51
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %15, ptr align 2 %4, i32 %18, i1 false)
  %19 = getelementptr i8, ptr %0, i32 2624
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %3, ptr noundef %15, i32 noundef 0) #18
  %22 = getelementptr i8, ptr %0, i32 12584
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 2097152
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %14
  tail call void @e1000e_set_laa_state_82571(ptr noundef %3, i1 noundef zeroext true) #18
  %27 = load ptr, ptr %19, align 4
  %28 = getelementptr i8, ptr %0, i32 3204
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i32
  %31 = add nsw i32 %30, -1
  %32 = tail call i32 %27(ptr noundef %3, ptr noundef %15, i32 noundef %31) #18
  br label %33

33:                                               ; preds = %26, %14, %8, %2
  %34 = phi i32 [ -99, %8 ], [ 0, %26 ], [ 0, %14 ], [ -99, %2 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_ioctl(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.hwtstamp_config, align 4
  switch i32 %2, label %120 [
    i32 35143, label %5
    i32 35144, label %5
    i32 35145, label %5
    i32 35248, label %64
    i32 35249, label %104
  ]

5:                                                ; preds = %3, %3, %3
  %6 = getelementptr i8, ptr %0, i32 1408
  %7 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %8 = getelementptr i8, ptr %0, i32 3376
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %120

11:                                               ; preds = %5
  switch i32 %2, label %120 [
    i32 35143, label %12
    i32 35144, label %16
  ]

12:                                               ; preds = %11
  %13 = getelementptr i8, ptr %0, i32 3360
  %14 = load i32, ptr %13, align 4
  %15 = trunc i32 %14 to i16
  store i16 %15, ptr %7, align 2
  br label %120

16:                                               ; preds = %11
  tail call fastcc void @e1000_phy_read_status(ptr noundef %6) #18
  %17 = getelementptr inbounds %struct.mii_ioctl_data, ptr %7, i32 0, i32 1
  %18 = load i16, ptr %17, align 2
  %19 = and i16 %18, 31
  %20 = zext i16 %19 to i32
  switch i32 %20, label %120 [
    i32 0, label %21
    i32 1, label %25
    i32 2, label %29
    i32 3, label %35
    i32 4, label %40
    i32 5, label %44
    i32 6, label %48
    i32 9, label %52
    i32 10, label %56
    i32 15, label %60
  ]

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %0, i32 12364
  %23 = load i16, ptr %22, align 4
  %24 = getelementptr inbounds %struct.mii_ioctl_data, ptr %7, i32 0, i32 3
  store i16 %23, ptr %24, align 2
  br label %120

25:                                               ; preds = %16
  %26 = getelementptr i8, ptr %0, i32 12366
  %27 = load i16, ptr %26, align 2
  %28 = getelementptr inbounds %struct.mii_ioctl_data, ptr %7, i32 0, i32 3
  store i16 %27, ptr %28, align 2
  br label %120

29:                                               ; preds = %16
  %30 = getelementptr i8, ptr %0, i32 3364
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %31, 16
  %33 = trunc i32 %32 to i16
  %34 = getelementptr inbounds %struct.mii_ioctl_data, ptr %7, i32 0, i32 3
  store i16 %33, ptr %34, align 2
  br label %120

35:                                               ; preds = %16
  %36 = getelementptr i8, ptr %0, i32 3364
  %37 = load i32, ptr %36, align 4
  %38 = trunc i32 %37 to i16
  %39 = getelementptr inbounds %struct.mii_ioctl_data, ptr %7, i32 0, i32 3
  store i16 %38, ptr %39, align 2
  br label %120

40:                                               ; preds = %16
  %41 = getelementptr i8, ptr %0, i32 12368
  %42 = load i16, ptr %41, align 4
  %43 = getelementptr inbounds %struct.mii_ioctl_data, ptr %7, i32 0, i32 3
  store i16 %42, ptr %43, align 2
  br label %120

44:                                               ; preds = %16
  %45 = getelementptr i8, ptr %0, i32 12370
  %46 = load i16, ptr %45, align 2
  %47 = getelementptr inbounds %struct.mii_ioctl_data, ptr %7, i32 0, i32 3
  store i16 %46, ptr %47, align 2
  br label %120

48:                                               ; preds = %16
  %49 = getelementptr i8, ptr %0, i32 12372
  %50 = load i16, ptr %49, align 4
  %51 = getelementptr inbounds %struct.mii_ioctl_data, ptr %7, i32 0, i32 3
  store i16 %50, ptr %51, align 2
  br label %120

52:                                               ; preds = %16
  %53 = getelementptr i8, ptr %0, i32 12374
  %54 = load i16, ptr %53, align 2
  %55 = getelementptr inbounds %struct.mii_ioctl_data, ptr %7, i32 0, i32 3
  store i16 %54, ptr %55, align 2
  br label %120

56:                                               ; preds = %16
  %57 = getelementptr i8, ptr %0, i32 12376
  %58 = load i16, ptr %57, align 4
  %59 = getelementptr inbounds %struct.mii_ioctl_data, ptr %7, i32 0, i32 3
  store i16 %58, ptr %59, align 2
  br label %120

60:                                               ; preds = %16
  %61 = getelementptr i8, ptr %0, i32 12378
  %62 = load i16, ptr %61, align 2
  %63 = getelementptr inbounds %struct.mii_ioctl_data, ptr %7, i32 0, i32 3
  store i16 %62, ptr %63, align 2
  br label %120

64:                                               ; preds = %3
  %65 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #18, !annotation !19
  %66 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %67, i32 12, i32 -1090519040) #22, !srcloc !73
  %69 = extractvalue { i32, i32 } %68, 0
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %79, !prof !13

71:                                               ; preds = %64
  %72 = tail call ptr @llvm.thread.pointer() #18
  %73 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 3
  %74 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %73) #16, !srcloc !74
  %75 = and i32 %74, -13
  %76 = or i32 %75, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %76) #18, !srcloc !75
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !76
  %77 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %67, i32 noundef 12) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %74) #18, !srcloc !75
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79, !prof !13

79:                                               ; preds = %71, %64
  %80 = phi i32 [ %77, %71 ], [ 12, %64 ]
  %81 = sub i32 12, %80
  %82 = getelementptr i8, ptr %4, i32 %81
  call void @llvm.memset.p0.i32(ptr align 1 %82, i8 0, i32 %80, i1 false) #18
  br label %102

83:                                               ; preds = %71
  %84 = call fastcc i32 @e1000e_config_hwtstamp(ptr noundef %65, ptr noundef nonnull %4) #18
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.hwtstamp_config, ptr %4, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  switch i32 %88, label %90 [
    i32 7, label %89
    i32 10, label %89
    i32 13, label %89
    i32 8, label %89
    i32 11, label %89
    i32 14, label %89
  ]

89:                                               ; preds = %86, %86, %86, %86, %86, %86
  store i32 2, ptr %87, align 4
  br label %90

90:                                               ; preds = %89, %86
  %91 = load ptr, ptr %66, align 4
  %92 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %91, i32 12, i32 -1090519040) #22, !srcloc !77
  %93 = extractvalue { i32, i32 } %92, 0
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %73) #16, !srcloc !74
  %97 = and i32 %96, -13
  %98 = or i32 %97, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %98) #18, !srcloc !75
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !76
  %99 = call i32 @arm_copy_to_user(ptr noundef %91, ptr noundef nonnull %4, i32 noundef 12) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %96) #18, !srcloc !75
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !76
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, i32 0, i32 -14
  br label %102

102:                                              ; preds = %95, %90, %83, %79
  %103 = phi i32 [ %84, %83 ], [ -14, %79 ], [ -14, %90 ], [ %101, %95 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  br label %120

104:                                              ; preds = %3
  %105 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %106, i32 12, i32 -1090519040) #22, !srcloc !77
  %108 = extractvalue { i32, i32 } %107, 0
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %104
  %111 = getelementptr i8, ptr %0, i32 12648
  %112 = tail call ptr @llvm.thread.pointer() #18
  %113 = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 3
  %114 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %113) #16, !srcloc !74
  %115 = and i32 %114, -13
  %116 = or i32 %115, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %116) #18, !srcloc !75
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !76
  %117 = tail call i32 @arm_copy_to_user(ptr noundef %106, ptr noundef %111, i32 noundef 12) #18
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %114) #18, !srcloc !75
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !76
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %118, i32 0, i32 -14
  br label %120

120:                                              ; preds = %110, %104, %102, %60, %56, %52, %48, %44, %40, %35, %29, %25, %21, %16, %12, %11, %5, %3
  %121 = phi i32 [ %103, %102 ], [ -95, %3 ], [ -95, %5 ], [ -5, %16 ], [ -95, %11 ], [ 0, %21 ], [ 0, %25 ], [ 0, %29 ], [ 0, %35 ], [ 0, %40 ], [ 0, %44 ], [ 0, %48 ], [ 0, %52 ], [ 0, %56 ], [ 0, %60 ], [ 0, %12 ], [ -14, %104 ], [ %119, %110 ]
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_change_mtu(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = add i32 %1, 22
  %5 = icmp sgt i32 %1, 1500
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 12584
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 128
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %0, i32 2524
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.50) #20
  br label %66

14:                                               ; preds = %6, %2
  %15 = getelementptr i8, ptr %0, i32 2648
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 9
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %0, i32 12588
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i1 %5, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = getelementptr i8, ptr %0, i32 2524
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %26, ptr noundef nonnull @.str.51) #20
  br label %66

27:                                               ; preds = %18, %14
  %28 = getelementptr i8, ptr %0, i32 2032
  %29 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %28) #18
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %31, %27
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #18
  %32 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %28) #18
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %31

34:                                               ; preds = %31, %27
  %35 = getelementptr i8, ptr %0, i32 2516
  store i32 %4, ptr %35, align 4
  %36 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @__pm_runtime_resume(ptr noundef %38, i32 noundef 4) #18
  %40 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  tail call void @e1000e_down(ptr noundef %3, i1 noundef zeroext true)
  br label %45

45:                                               ; preds = %44, %34
  %46 = icmp slt i32 %4, 2049
  %47 = getelementptr i8, ptr %0, i32 2020
  br i1 %46, label %48, label %51

48:                                               ; preds = %45
  store i32 2048, ptr %47, align 4
  %49 = icmp sgt i32 %4, 1522
  %50 = select i1 %49, i32 2048, i32 1522
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i32 [ %50, %48 ], [ 4096, %45 ]
  store i32 %52, ptr %47, align 4
  %53 = load volatile i32, ptr %40, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  tail call fastcc void @e1000_configure(ptr noundef %3) #18
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %28) #18
  %57 = getelementptr i8, ptr %0, i32 12552
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call fastcc void @e1000_configure_msix(ptr noundef %3) #18
  br label %61

61:                                               ; preds = %60, %56
  tail call fastcc void @e1000_irq_enable(ptr noundef %3) #18
  tail call fastcc void @e1000e_trigger_lsc(ptr noundef %3) #18
  br label %63

62:                                               ; preds = %51
  tail call void @e1000e_reset(ptr noundef %3)
  br label %63

63:                                               ; preds = %62, %61
  %64 = load ptr, ptr %37, align 4
  %65 = tail call i32 @__pm_runtime_idle(ptr noundef %64, i32 noundef 4) #18
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %28) #18
  br label %66

66:                                               ; preds = %63, %24, %11
  %67 = phi i32 [ -22, %24 ], [ 0, %63 ], [ -22, %11 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_tx_timeout(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 2352
  %4 = load i32, ptr %3, align 16
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 16
  %6 = getelementptr i8, ptr %0, i32 1468
  %7 = load ptr, ptr @system_wq, align 4
  %8 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %7, ptr noundef %6) #18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i64 @e1000_fix_features(ptr nocapture noundef readonly %0, i64 noundef %1) #14 {
  %3 = getelementptr i8, ptr %0, i32 2648
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 9
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 1500
  %10 = and i64 %1, -8796093022209
  %11 = select i1 %9, i64 %10, i64 %1
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i64 [ %1, %2 ], [ %11, %6 ]
  %14 = and i64 %13, -129
  %15 = lshr i64 %13, 1
  %16 = and i64 %15, 128
  %17 = or i64 %16, %14
  ret i64 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_set_features(ptr noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %5 = load i64, ptr %4, align 16
  %6 = xor i64 %5, %1
  %7 = and i64 %6, 1114112
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 12584
  %11 = load i32, ptr %10, align 8
  %12 = or i32 %11, 536870912
  store i32 %12, ptr %10, align 8
  br label %13

13:                                               ; preds = %9, %2
  %14 = and i64 %6, 28037546508672
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %42, label %16

16:                                               ; preds = %13
  %17 = and i64 %6, 8796093022208
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %16
  %20 = and i64 %1, 8796093022208
  %21 = icmp eq i64 %20, 0
  %22 = getelementptr i8, ptr %0, i32 12588
  %23 = load i32, ptr %22, align 4
  br i1 %21, label %26, label %24

24:                                               ; preds = %19
  %25 = and i32 %23, -2
  br label %33

26:                                               ; preds = %19
  %27 = and i32 %23, 4096
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = or i32 %23, 1
  br label %33

31:                                               ; preds = %26
  %32 = and i32 %23, -2
  br label %33

33:                                               ; preds = %31, %29, %24
  %34 = phi i32 [ %25, %24 ], [ %32, %31 ], [ %30, %29 ]
  store i32 %34, ptr %22, align 4
  br label %35

35:                                               ; preds = %33, %16
  store i64 %1, ptr %4, align 16
  %36 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  tail call void @e1000e_reinit_locked(ptr noundef %3)
  br label %42

41:                                               ; preds = %35
  tail call void @e1000e_reset(ptr noundef %3)
  br label %42

42:                                               ; preds = %41, %40, %13
  %43 = phi i32 [ 0, %13 ], [ 1, %41 ], [ 1, %40 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_maybe_stop_tx(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !38

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/intel/e1000e/netdev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5803, 0\0A.popsection", ""() #18, !srcloc !67
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 6
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 5
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = icmp ugt i16 %9, %12
  %15 = xor i32 %13, -1
  %16 = select i1 %14, i32 0, i32 %4
  %17 = add i32 %16, %10
  %18 = add i32 %17, %15
  %19 = icmp slt i32 %18, %1
  br i1 %19, label %20, label %51

20:                                               ; preds = %7
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.e1000_adapter, ptr %21, i32 0, i32 63
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 87
  %25 = load ptr, ptr %24, align 64
  %26 = getelementptr inbounds %struct.netdev_queue, ptr %25, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %26) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !68
  %27 = load i16, ptr %8, align 2
  %28 = zext i16 %27 to i32
  %29 = load i16, ptr %11, align 4
  %30 = zext i16 %29 to i32
  %31 = icmp ugt i16 %27, %29
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = xor i32 %30, -1
  %34 = add nsw i32 %33, %28
  br label %40

35:                                               ; preds = %20
  %36 = load i32, ptr %3, align 4
  %37 = xor i32 %30, -1
  %38 = add nsw i32 %37, %28
  %39 = add i32 %38, %36
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %34, %32 ], [ %39, %35 ]
  %42 = icmp slt i32 %41, %1
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %22, align 4
  %45 = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 87
  %46 = load ptr, ptr %45, align 64
  %47 = getelementptr inbounds %struct.netdev_queue, ptr %46, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %47) #18
  %48 = getelementptr inbounds %struct.e1000_adapter, ptr %21, i32 0, i32 23
  %49 = load i32, ptr %48, align 8
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 8
  br label %51

51:                                               ; preds = %43, %40, %7
  %52 = phi i32 [ 0, %7 ], [ 0, %43 ], [ -16, %40 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @e1000_tx_csum(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 96
  %8 = icmp eq i16 %7, 96
  br i1 %8, label %9, label %81

9:                                                ; preds = %3
  switch i16 %2, label %32 [
    i16 8, label %10
    i16 -8826, label %21
  ]

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = getelementptr inbounds %struct.iphdr, ptr %16, i32 0, i32 6
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 6
  %20 = select i1 %19, i32 553648128, i32 536870912
  br label %40

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  %27 = getelementptr i8, ptr %23, i32 %26
  %28 = getelementptr inbounds %struct.ipv6hdr, ptr %27, i32 0, i32 3
  %29 = load i8, ptr %28, align 2
  %30 = icmp eq i8 %29, 6
  %31 = select i1 %30, i32 553648128, i32 536870912
  br label %40

32:                                               ; preds = %9
  %33 = tail call i32 @net_ratelimit() #18
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35, !prof !13

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 63
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i16 @llvm.bswap.i16(i16 %2)
  %39 = zext i16 %38 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %37, ptr noundef nonnull @.str.44, i32 noundef %39) #20
  br label %40

40:                                               ; preds = %35, %32, %21, %10
  %41 = phi i32 [ 536870912, %35 ], [ 536870912, %32 ], [ %20, %10 ], [ %31, %21 ]
  %42 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %43 = load i16, ptr %42, align 4
  %44 = zext i16 %43 to i32
  %45 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %48 = load ptr, ptr %47, align 8
  %49 = ptrtoint ptr %46 to i32
  %50 = ptrtoint ptr %48 to i32
  %51 = sub i32 %44, %49
  %52 = add i32 %51, %50
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 5
  %55 = load i16, ptr %54, align 4
  %56 = zext i16 %55 to i32
  %57 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 9
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr %struct.e1000_context_desc, ptr %60, i32 %56
  store i32 0, ptr %61, align 4
  %62 = getelementptr %struct.e1000_context_desc, ptr %60, i32 %56, i32 1
  store i8 %53, ptr %62, align 4
  %63 = getelementptr inbounds %struct.anon.58, ptr %42, i32 0, i32 1
  %64 = load i16, ptr %63, align 2
  %65 = zext i16 %64 to i32
  %66 = add i32 %52, %65
  %67 = trunc i32 %66 to i8
  %68 = getelementptr inbounds %struct.anon.169, ptr %62, i32 0, i32 1
  store i8 %67, ptr %68, align 1
  %69 = getelementptr inbounds %struct.anon.169, ptr %62, i32 0, i32 2
  store i16 0, ptr %69, align 2
  %70 = getelementptr %struct.e1000_context_desc, ptr %60, i32 %56, i32 3
  store i32 0, ptr %70, align 4
  %71 = getelementptr %struct.e1000_context_desc, ptr %60, i32 %56, i32 2
  store i32 %41, ptr %71, align 4
  %72 = load volatile i32, ptr @jiffies, align 64
  %73 = getelementptr %struct.e1000_buffer, ptr %58, i32 %56, i32 2
  store i32 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.anon.144, ptr %73, i32 0, i32 2
  store i16 %55, ptr %74, align 2
  %75 = add nuw nsw i32 %56, 1
  %76 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 4
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %75, %77
  %79 = trunc i32 %75 to i16
  %80 = select i1 %78, i16 0, i16 %79
  store i16 %80, ptr %54, align 4
  br label %81

81:                                               ; preds = %40, %3
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @e1000_tx_map(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.e1000_adapter, ptr %6, i32 0, i32 64
  %8 = load ptr, ptr %7, align 32
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %10, %12
  %14 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 5
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = icmp eq i32 %13, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 9
  %20 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %22 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44, i32 3
  %23 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 4
  br label %33

24:                                               ; preds = %74, %5
  %25 = phi i32 [ 0, %5 ], [ %76, %74 ]
  %26 = phi i32 [ %16, %5 ], [ %36, %74 ]
  %27 = icmp eq i32 %4, 0
  br i1 %27, label %129, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %30 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 4
  %31 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 9
  %32 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  br label %84

33:                                               ; preds = %78, %18
  %34 = phi i32 [ %13, %18 ], [ %75, %78 ]
  %35 = phi i32 [ 0, %18 ], [ %79, %78 ]
  %36 = phi i32 [ %16, %18 ], [ %83, %78 ]
  %37 = phi i32 [ 0, %18 ], [ %76, %78 ]
  %38 = load ptr, ptr %19, align 4
  %39 = getelementptr %struct.e1000_buffer, ptr %38, i32 %36
  %40 = tail call i32 @llvm.umin.i32(i32 %34, i32 %3)
  %41 = trunc i32 %40 to i16
  %42 = getelementptr %struct.e1000_buffer, ptr %38, i32 %36, i32 2
  %43 = getelementptr inbounds %struct.anon.144, ptr %42, i32 0, i32 1
  store i16 %41, ptr %43, align 4
  %44 = load volatile i32, ptr @jiffies, align 64
  store i32 %44, ptr %42, align 4
  %45 = trunc i32 %36 to i16
  %46 = getelementptr inbounds %struct.anon.144, ptr %42, i32 0, i32 2
  store i16 %45, ptr %46, align 2
  %47 = load ptr, ptr %21, align 4
  %48 = getelementptr i8, ptr %47, i32 %35
  %49 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %48) #18
  %50 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %51 = xor i1 %50, true
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %53, label %61, !prof !38

53:                                               ; preds = %33
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %54 = tail call ptr @dev_driver_string(ptr noundef %20) #18
  %55 = load ptr, ptr %22, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load ptr, ptr %20, align 4
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi ptr [ %58, %57 ], [ %55, %53 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef %54, ptr noundef %60) #18
  br label %61

61:                                               ; preds = %59, %33
  br i1 %49, label %62, label %64

62:                                               ; preds = %61
  store i32 -1, ptr %39, align 4
  %63 = getelementptr inbounds %struct.anon.144, ptr %42, i32 0, i32 5
  store i16 0, ptr %63, align 4
  br label %155

64:                                               ; preds = %61
  %65 = load ptr, ptr @mem_map, align 4
  %66 = ptrtoint ptr %48 to i32
  %67 = add i32 %66, 1073741824
  %68 = lshr i32 %67, 12
  %69 = getelementptr %struct.page, ptr %65, i32 %68
  %70 = and i32 %66, 4095
  %71 = tail call i32 @dma_map_page_attrs(ptr noundef %20, ptr noundef %69, i32 noundef %70, i32 noundef %40, i32 noundef 1, i32 noundef 0) #18
  store i32 %71, ptr %39, align 4
  %72 = getelementptr inbounds %struct.anon.144, ptr %42, i32 0, i32 5
  store i16 0, ptr %72, align 4
  %73 = icmp eq i32 %71, -1
  br i1 %73, label %155, label %74

74:                                               ; preds = %64
  %75 = sub i32 %34, %40
  %76 = add i32 %37, 1
  %77 = icmp eq i32 %75, 0
  br i1 %77, label %24, label %78

78:                                               ; preds = %74
  %79 = add i32 %40, %35
  %80 = add i32 %36, 1
  %81 = load i32, ptr %23, align 4
  %82 = icmp eq i32 %80, %81
  %83 = select i1 %82, i32 0, i32 %80
  br label %33

84:                                               ; preds = %124, %28
  %85 = phi i32 [ 0, %28 ], [ %127, %124 ]
  %86 = phi i32 [ %26, %28 ], [ %126, %124 ]
  %87 = phi i32 [ %25, %28 ], [ %125, %124 ]
  %88 = load ptr, ptr %29, align 4
  %89 = getelementptr %struct.skb_shared_info, ptr %88, i32 0, i32 12, i32 %85
  %90 = getelementptr %struct.skb_shared_info, ptr %88, i32 0, i32 12, i32 %85, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %124, label %93

93:                                               ; preds = %84
  %94 = getelementptr %struct.skb_shared_info, ptr %88, i32 0, i32 12, i32 %85, i32 2
  br label %95

95:                                               ; preds = %119, %93
  %96 = phi i32 [ %91, %93 ], [ %120, %119 ]
  %97 = phi i32 [ 0, %93 ], [ %121, %119 ]
  %98 = phi i32 [ %86, %93 ], [ %103, %119 ]
  %99 = phi i32 [ %87, %93 ], [ %122, %119 ]
  %100 = add i32 %98, 1
  %101 = load i32, ptr %30, align 4
  %102 = icmp eq i32 %100, %101
  %103 = select i1 %102, i32 0, i32 %100
  %104 = load ptr, ptr %31, align 4
  %105 = getelementptr %struct.e1000_buffer, ptr %104, i32 %103
  %106 = tail call i32 @llvm.umin.i32(i32 %96, i32 %3)
  %107 = trunc i32 %106 to i16
  %108 = getelementptr %struct.e1000_buffer, ptr %104, i32 %103, i32 2
  %109 = getelementptr inbounds %struct.anon.144, ptr %108, i32 0, i32 1
  store i16 %107, ptr %109, align 4
  %110 = load volatile i32, ptr @jiffies, align 64
  store i32 %110, ptr %108, align 4
  %111 = trunc i32 %103 to i16
  %112 = getelementptr inbounds %struct.anon.144, ptr %108, i32 0, i32 2
  store i16 %111, ptr %112, align 2
  %113 = load ptr, ptr %89, align 4
  %114 = load i32, ptr %94, align 4
  %115 = add i32 %114, %97
  %116 = tail call i32 @dma_map_page_attrs(ptr noundef %32, ptr noundef %113, i32 noundef %115, i32 noundef %106, i32 noundef 1, i32 noundef 0) #18
  store i32 %116, ptr %105, align 4
  %117 = getelementptr inbounds %struct.anon.144, ptr %108, i32 0, i32 5
  store i16 1, ptr %117, align 4
  %118 = icmp eq i32 %116, -1
  br i1 %118, label %155, label %119

119:                                              ; preds = %95
  %120 = sub i32 %96, %106
  %121 = add i32 %106, %97
  %122 = add i32 %99, 1
  %123 = icmp eq i32 %120, 0
  br i1 %123, label %124, label %95

124:                                              ; preds = %119, %84
  %125 = phi i32 [ %87, %84 ], [ %122, %119 ]
  %126 = phi i32 [ %86, %84 ], [ %103, %119 ]
  %127 = add nuw i32 %85, 1
  %128 = icmp eq i32 %127, %4
  br i1 %128, label %129, label %84

129:                                              ; preds = %124, %24
  %130 = phi i32 [ %25, %24 ], [ %125, %124 ]
  %131 = phi i32 [ %26, %24 ], [ %126, %124 ]
  %132 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.skb_shared_info, ptr %133, i32 0, i32 5
  %135 = load i16, ptr %134, align 2
  %136 = icmp eq i16 %135, 0
  %137 = select i1 %136, i16 1, i16 %135
  %138 = zext i16 %137 to i32
  %139 = add nsw i32 %138, -1
  %140 = load i32, ptr %9, align 8
  %141 = load i32, ptr %11, align 4
  %142 = sub i32 %140, %141
  %143 = mul i32 %139, %142
  %144 = add i32 %143, %140
  %145 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 9
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr %struct.e1000_buffer, ptr %146, i32 %131, i32 1
  store ptr %1, ptr %147, align 4
  %148 = load ptr, ptr %145, align 4
  %149 = getelementptr %struct.e1000_buffer, ptr %148, i32 %131, i32 2, i32 0, i32 3
  store i32 %138, ptr %149, align 4
  %150 = load ptr, ptr %145, align 4
  %151 = getelementptr %struct.e1000_buffer, ptr %150, i32 %131, i32 2, i32 0, i32 4
  store i32 %144, ptr %151, align 4
  %152 = trunc i32 %131 to i16
  %153 = load ptr, ptr %145, align 4
  %154 = getelementptr %struct.e1000_buffer, ptr %153, i32 %2, i32 2, i32 0, i32 2
  store i16 %152, ptr %154, align 2
  br label %195

155:                                              ; preds = %95, %64, %62
  %156 = phi i32 [ %37, %62 ], [ %99, %95 ], [ %37, %64 ]
  %157 = phi i32 [ %36, %62 ], [ %103, %95 ], [ %36, %64 ]
  %158 = phi ptr [ %39, %62 ], [ %105, %95 ], [ %39, %64 ]
  %159 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %159, ptr noundef nonnull @.str.45) #20
  store i32 0, ptr %158, align 4
  %160 = icmp ult i32 %156, 2
  br i1 %160, label %195, label %161

161:                                              ; preds = %155
  %162 = add i32 %156, -1
  %163 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 4
  %164 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 9
  br label %165

165:                                              ; preds = %192, %161
  %166 = phi i32 [ %162, %161 ], [ %168, %192 ]
  %167 = phi i32 [ %157, %161 ], [ %174, %192 ]
  %168 = add i32 %166, -1
  %169 = icmp eq i32 %167, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = load i32, ptr %163, align 4
  br label %172

172:                                              ; preds = %170, %165
  %173 = phi i32 [ %171, %170 ], [ %167, %165 ]
  %174 = add i32 %173, -1
  %175 = load ptr, ptr %164, align 4
  %176 = getelementptr %struct.e1000_buffer, ptr %175, i32 %174
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %187, label %179

179:                                              ; preds = %172
  %180 = load ptr, ptr %0, align 4
  %181 = getelementptr inbounds %struct.e1000_adapter, ptr %180, i32 0, i32 64
  %182 = load ptr, ptr %181, align 32
  %183 = getelementptr inbounds %struct.pci_dev, ptr %182, i32 0, i32 44
  %184 = getelementptr %struct.e1000_buffer, ptr %175, i32 %174, i32 2, i32 0, i32 1
  %185 = load i16, ptr %184, align 4
  %186 = zext i16 %185 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %183, i32 noundef %177, i32 noundef %186, i32 noundef 1, i32 noundef 0) #18
  store i32 0, ptr %176, align 4
  br label %187

187:                                              ; preds = %179, %172
  %188 = getelementptr %struct.e1000_buffer, ptr %175, i32 %174, i32 1
  %189 = load ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %192, label %191

191:                                              ; preds = %187
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %189, i32 noundef 1) #18
  store ptr null, ptr %188, align 4
  br label %192

192:                                              ; preds = %191, %187
  %193 = getelementptr %struct.e1000_buffer, ptr %175, i32 %174, i32 2
  store i32 0, ptr %193, align 4
  %194 = icmp eq i32 %168, 0
  br i1 %194, label %195, label %165

195:                                              ; preds = %192, %155, %129
  %196 = phi i32 [ %130, %129 ], [ 0, %155 ], [ 0, %192 ]
  ret i32 %196
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @skb_get(ptr noundef returned %0) unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #18, !srcloc !15
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #18, !srcloc !78
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !38

6:                                                ; preds = %1
  %7 = add i32 %4, 1
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !13

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 2, %1 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %11) #18
  br label %12

12:                                               ; preds = %10, %6
  ret ptr %0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @netdev_sent_queue(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #15 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 14
  %6 = icmp ugt i32 %1, 268435455
  br i1 %6, label %7, label %8, !prof !38

7:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #18, !srcloc !79
  unreachable

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 14, i32 2
  store i32 %1, ptr %9, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !80
  %10 = load i32, ptr %5, align 64
  %11 = add i32 %10, %1
  store i32 %11, ptr %5, align 64
  %12 = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 14, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = load volatile i32, ptr %5, align 64
  %15 = sub i32 %13, %14
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %24, label %17, !prof !13

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 1, ptr noundef %18) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !81
  %19 = load volatile i32, ptr %12, align 4
  %20 = load volatile i32, ptr %5, align 64
  %21 = sub i32 %19, %20
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %24, !prof !38

23:                                               ; preds = %17
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %18) #18
  br label %24

24:                                               ; preds = %23, %17, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @e1000_tx_queue(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = and i32 %1, 4
  %6 = icmp eq i32 %5, 0
  %7 = and i32 %1, 8
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 512, i32 768
  %10 = select i1 %6, i32 0, i32 %9
  %11 = select i1 %6, i32 33554432, i32 638582784
  %12 = and i32 %1, 1
  %13 = icmp eq i32 %12, 0
  %14 = or i32 %11, 537919488
  %15 = shl nuw nsw i32 %12, 9
  %16 = select i1 %13, i32 %11, i32 %14
  %17 = and i32 %1, 2
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %1, -65536
  %20 = select i1 %18, i32 0, i32 %19
  %21 = or i32 %20, %15
  %22 = or i32 %21, %10
  %23 = shl nuw nsw i32 %17, 29
  %24 = or i32 %16, %23
  %25 = and i32 %1, 16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27, !prof !13

27:                                               ; preds = %3
  %28 = and i32 %24, 1678770176
  br label %29

29:                                               ; preds = %27, %3
  %30 = phi i32 [ %28, %27 ], [ %24, %3 ]
  %31 = and i32 %1, 32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33, !prof !13

33:                                               ; preds = %29
  %34 = or i32 %30, 537919488
  %35 = or i32 %22, 16
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i32 [ %35, %33 ], [ %22, %29 ]
  %38 = phi i32 [ %34, %33 ], [ %30, %29 ]
  %39 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 5
  %40 = load i16, ptr %39, align 4
  %41 = zext i16 %40 to i32
  %42 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 9
  %43 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 1
  %44 = getelementptr inbounds %struct.e1000_ring, ptr %0, i32 0, i32 4
  br label %45

45:                                               ; preds = %45, %36
  %46 = phi i32 [ %2, %36 ], [ %64, %45 ]
  %47 = phi i32 [ %41, %36 ], [ %63, %45 ]
  %48 = load ptr, ptr %42, align 4
  %49 = getelementptr %struct.e1000_buffer, ptr %48, i32 %47
  %50 = load ptr, ptr %43, align 4
  %51 = getelementptr %struct.e1000_tx_desc, ptr %50, i32 %47
  %52 = load i32, ptr %49, align 4
  %53 = zext i32 %52 to i64
  store i64 %53, ptr %51, align 8
  %54 = getelementptr %struct.e1000_buffer, ptr %48, i32 %47, i32 2, i32 0, i32 1
  %55 = load i16, ptr %54, align 4
  %56 = zext i16 %55 to i32
  %57 = or i32 %38, %56
  %58 = getelementptr %struct.e1000_tx_desc, ptr %50, i32 %47, i32 1
  store i32 %57, ptr %58, align 8
  %59 = getelementptr %struct.e1000_tx_desc, ptr %50, i32 %47, i32 2
  store i32 %37, ptr %59, align 4
  %60 = add i32 %47, 1
  %61 = load i32, ptr %44, align 4
  %62 = icmp eq i32 %60, %61
  %63 = select i1 %62, i32 0, i32 %60
  %64 = add i32 %46, -1
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %45, label %66

66:                                               ; preds = %45
  %67 = getelementptr inbounds %struct.e1000_adapter, ptr %4, i32 0, i32 24
  %68 = load i32, ptr %67, align 4
  %69 = or i32 %68, %57
  br i1 %26, label %72, label %70, !prof !13

70:                                               ; preds = %66
  %71 = and i32 %69, -33554433
  br label %72

72:                                               ; preds = %70, %66
  %73 = phi i32 [ %71, %70 ], [ %69, %66 ]
  store i32 %73, ptr %58, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !82
  tail call void @arm_heavy_mb() #18
  %74 = trunc i32 %63 to i16
  store i16 %74, ptr %39, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_mng_write_dhcp_info(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_set_laa_state_82571(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @e1000_phy_read_status(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 70
  %4 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %5 = load ptr, ptr %4, align 32
  %6 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 11, i32 18
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 11, i32 15
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 7
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %63, label %16

16:                                               ; preds = %11, %1
  %17 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %63, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %63

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 5, i32 0, i32 10
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %2, i32 noundef 0, ptr noundef %3) #18
  %31 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 70, i32 1
  %32 = load ptr, ptr %28, align 4
  %33 = tail call i32 %32(ptr noundef %2, i32 noundef 1, ptr noundef %31) #18
  %34 = or i32 %33, %30
  %35 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 70, i32 2
  %36 = load ptr, ptr %28, align 4
  %37 = tail call i32 %36(ptr noundef %2, i32 noundef 4, ptr noundef %35) #18
  %38 = or i32 %34, %37
  %39 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 70, i32 3
  %40 = load ptr, ptr %28, align 4
  %41 = tail call i32 %40(ptr noundef %2, i32 noundef 5, ptr noundef %39) #18
  %42 = or i32 %38, %41
  %43 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 70, i32 4
  %44 = load ptr, ptr %28, align 4
  %45 = tail call i32 %44(ptr noundef %2, i32 noundef 6, ptr noundef %43) #18
  %46 = or i32 %42, %45
  %47 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 70, i32 5
  %48 = load ptr, ptr %28, align 4
  %49 = tail call i32 %48(ptr noundef %2, i32 noundef 9, ptr noundef %47) #18
  %50 = or i32 %46, %49
  %51 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 70, i32 6
  %52 = load ptr, ptr %28, align 4
  %53 = tail call i32 %52(ptr noundef %2, i32 noundef 10, ptr noundef %51) #18
  %54 = or i32 %50, %53
  %55 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 70, i32 7
  %56 = load ptr, ptr %28, align 4
  %57 = tail call i32 %56(ptr noundef %2, i32 noundef 15, ptr noundef %55) #18
  %58 = or i32 %54, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %27
  %61 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 63
  %62 = load ptr, ptr %61, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %62, ptr noundef nonnull @.str.47) #20
  br label %71

63:                                               ; preds = %23, %16, %11
  store i16 4416, ptr %3, align 2
  %64 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 70, i32 1
  store i16 30985, ptr %64, align 2
  %65 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 70, i32 2
  store i16 3553, ptr %65, align 2
  %66 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 70, i32 3
  store i16 0, ptr %66, align 2
  %67 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 70, i32 4
  store i16 4, ptr %67, align 2
  %68 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 70, i32 5
  store i16 512, ptr %68, align 2
  %69 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 70, i32 6
  store i16 0, ptr %69, align 2
  %70 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 70, i32 7
  store i16 12288, ptr %70, align 2
  br label %71

71:                                               ; preds = %63, %60, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @e1000e_cyclecounter_read(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -11328
  %3 = tail call i64 @e1000e_read_systim(ptr noundef %2, ptr noundef null)
  ret i64 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000e_tx_hwtstamp_work(ptr noundef %0) #0 {
  %2 = alloca %struct.skb_shared_hwtstamps, align 8
  %3 = getelementptr i8, ptr %0, i32 -10176
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 46612
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -8
  %11 = load ptr, ptr %10, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 46616
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %15 = zext i32 %14 to i64
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr i8, ptr %16, i32 46620
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %19 = zext i32 %18 to i64
  %20 = shl nuw i64 %19, 32
  %21 = or i64 %20, %15
  %22 = getelementptr i8, ptr %0, i32 16
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #18
  %24 = getelementptr i8, ptr %0, i32 48
  %25 = tail call i64 @timecounter_cyc2time(ptr noundef %24, i64 noundef %21) #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %23) #18
  store i64 %25, ptr %2, align 8
  store ptr null, ptr %10, align 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !83
  tail call void @arm_heavy_mb() #18
  call void @skb_tstamp_tx(ptr noundef %11, ptr noundef nonnull %2) #18
  call void @__dev_kfree_skb_any(ptr noundef %11, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  br label %48

26:                                               ; preds = %1
  %27 = getelementptr i8, ptr %0, i32 -4
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i8, ptr %0, i32 -10422
  %30 = load i8, ptr %29, align 2
  %31 = zext i8 %30 to i32
  %32 = mul nuw nsw i32 %31, 100
  %33 = load volatile i32, ptr @jiffies, align 64
  %34 = sub i32 %28, %33
  %35 = add i32 %34, %32
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %26
  %38 = getelementptr i8, ptr %0, i32 -8
  %39 = load ptr, ptr %38, align 32
  tail call void @__dev_kfree_skb_any(ptr noundef %39, i32 noundef 1) #18
  store ptr null, ptr %38, align 32
  %40 = getelementptr i8, ptr %0, i32 -10340
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 4
  %43 = getelementptr i8, ptr %0, i32 -10188
  %44 = load ptr, ptr %43, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %44, ptr noundef nonnull @.str.53) #20
  br label %48

45:                                               ; preds = %26
  %46 = load ptr, ptr @system_wq, align 4
  %47 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %46, ptr noundef %0) #18
  br label %48

48:                                               ; preds = %45, %37, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_read_mac_addr_generic(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @e1000e_dump(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [16 x i8], align 1
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 63
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 18
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 48
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 74
  %10 = load i32, ptr %9, align 64
  %11 = and i32 %10, 8192
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %302, label %13

13:                                               ; preds = %1
  %14 = icmp eq ptr %4, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %17 = load ptr, ptr %16, align 32
  %18 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.56) #20
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #20
  %20 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @dev_trans_start(ptr noundef nonnull %4) #18
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull %4, i32 noundef %21, i32 noundef %22) #20
  br label %24

24:                                               ; preds = %15, %13
  %25 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 64
  %26 = load ptr, ptr %25, align 32
  %27 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.59) #20
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #20
  %29 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 65, i32 1
  br label %30

30:                                               ; preds = %67, %24
  %31 = phi ptr [ @.str.87, %24 ], [ %70, %67 ]
  %32 = phi ptr [ getelementptr inbounds ([34 x %struct.e1000_reg_info], ptr @e1000_reg_info_tbl, i32 0, i32 0, i32 1), %24 ], [ %69, %67 ]
  %33 = phi ptr [ @e1000_reg_info_tbl, %24 ], [ %68, %67 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %2, i8 0, i32 16, i1 false) #18, !annotation !19
  %34 = load i32, ptr %33, align 4
  switch i32 %34, label %56 [
    i32 10280, label %49
    i32 14376, label %42
    i32 14400, label %35
  ]

35:                                               ; preds = %30
  %36 = load ptr, ptr %29, align 4
  %37 = getelementptr i8, ptr %36, i32 14400
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %39 = load ptr, ptr %29, align 4
  %40 = getelementptr i8, ptr %39, i32 14656
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  br label %61

42:                                               ; preds = %30
  %43 = load ptr, ptr %29, align 4
  %44 = getelementptr i8, ptr %43, i32 14376
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %46 = load ptr, ptr %29, align 4
  %47 = getelementptr i8, ptr %46, i32 14632
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  br label %61

49:                                               ; preds = %30
  %50 = load ptr, ptr %29, align 4
  %51 = getelementptr i8, ptr %50, i32 10280
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %53 = load ptr, ptr %29, align 4
  %54 = getelementptr i8, ptr %53, i32 10536
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  br label %61

56:                                               ; preds = %30
  %57 = load ptr, ptr %29, align 4
  %58 = getelementptr i8, ptr %57, i32 %34
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull %31, i32 noundef %59) #20
  br label %67

61:                                               ; preds = %49, %42, %35
  %62 = phi i32 [ %38, %35 ], [ %45, %42 ], [ %52, %49 ]
  %63 = phi i32 [ %41, %35 ], [ %48, %42 ], [ %55, %49 ]
  %64 = load ptr, ptr %32, align 4
  %65 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull @.str.121, ptr noundef %64, ptr noundef nonnull @.str.122) #18
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull %2, i32 noundef %62, i32 noundef %63) #20
  br label %67

67:                                               ; preds = %61, %56
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #18
  %68 = getelementptr %struct.e1000_reg_info, ptr %33, i32 1
  %69 = getelementptr %struct.e1000_reg_info, ptr %33, i32 1, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %30

72:                                               ; preds = %67
  br i1 %14, label %302, label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 6
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %302, label %78

78:                                               ; preds = %73
  %79 = load ptr, ptr %25, align 32
  %80 = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.61) #20
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #20
  %82 = getelementptr inbounds %struct.e1000_ring, ptr %6, i32 0, i32 9
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.e1000_ring, ptr %6, i32 0, i32 6
  %85 = load i16, ptr %84, align 2
  %86 = zext i16 %85 to i32
  %87 = getelementptr %struct.e1000_buffer, ptr %83, i32 %86
  %88 = getelementptr inbounds %struct.e1000_ring, ptr %6, i32 0, i32 5
  %89 = load i16, ptr %88, align 4
  %90 = zext i16 %89 to i32
  %91 = load i32, ptr %87, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr %struct.e1000_buffer, ptr %83, i32 %86, i32 2
  %94 = getelementptr inbounds %struct.anon.144, ptr %93, i32 0, i32 1
  %95 = load i16, ptr %94, align 4
  %96 = zext i16 %95 to i32
  %97 = getelementptr inbounds %struct.anon.144, ptr %93, i32 0, i32 2
  %98 = load i16, ptr %97, align 2
  %99 = zext i16 %98 to i32
  %100 = load i32, ptr %93, align 4
  %101 = zext i32 %100 to i64
  %102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef 0, i32 noundef %90, i32 noundef %86, i64 noundef %92, i32 noundef %96, i32 noundef %99, i64 noundef %101) #20
  %103 = load i32, ptr %9, align 64
  %104 = and i32 %103, 1024
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %172, label %106

106:                                              ; preds = %78
  %107 = load ptr, ptr %25, align 32
  %108 = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %108, ptr noundef nonnull @.str.64) #20
  %109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #20
  %110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #20
  %111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #20
  %112 = getelementptr inbounds %struct.e1000_ring, ptr %6, i32 0, i32 4
  %113 = getelementptr inbounds %struct.e1000_ring, ptr %6, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %172, label %116

116:                                              ; preds = %168, %106
  %117 = phi ptr [ %170, %168 ], [ %114, %106 ]
  %118 = phi i32 [ %169, %168 ], [ 0, %106 ]
  %119 = load i32, ptr %112, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %172

121:                                              ; preds = %116
  %122 = getelementptr %struct.e1000_tx_desc, ptr %117, i32 %118
  %123 = load ptr, ptr %82, align 4
  %124 = getelementptr %struct.e1000_buffer, ptr %123, i32 %118
  %125 = load i16, ptr %88, align 4
  %126 = zext i16 %125 to i32
  %127 = icmp eq i32 %118, %126
  %128 = load i16, ptr %84, align 2
  %129 = zext i16 %128 to i32
  %130 = icmp eq i32 %118, %129
  %131 = select i1 %130, ptr @.str.70, ptr @.str.40
  %132 = select i1 %130, ptr @.str.68, ptr @.str.69
  %133 = select i1 %127, ptr %132, ptr %131
  %134 = getelementptr inbounds %struct.my_u0, ptr %122, i32 0, i32 1
  %135 = load i64, ptr %134, align 8
  %136 = and i64 %135, 536870912
  %137 = icmp eq i64 %136, 0
  %138 = and i64 %135, 1048576
  %139 = icmp eq i64 %138, 0
  %140 = select i1 %139, i32 99, i32 100
  %141 = select i1 %137, i32 108, i32 %140
  %142 = load i64, ptr %122, align 8
  %143 = load i32, ptr %124, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr %struct.e1000_buffer, ptr %123, i32 %118, i32 2
  %146 = getelementptr inbounds %struct.anon.144, ptr %145, i32 0, i32 1
  %147 = load i16, ptr %146, align 4
  %148 = zext i16 %147 to i32
  %149 = getelementptr inbounds %struct.anon.144, ptr %145, i32 0, i32 2
  %150 = load i16, ptr %149, align 2
  %151 = zext i16 %150 to i32
  %152 = load i32, ptr %145, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr %struct.e1000_buffer, ptr %123, i32 %118, i32 1
  %155 = load ptr, ptr %154, align 4
  %156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %141, i32 noundef %118, i64 noundef %142, i64 noundef %135, i64 noundef %144, i32 noundef %148, i32 noundef %151, i64 noundef %153, ptr noundef %155, ptr noundef nonnull %133) #20
  %157 = load i32, ptr %9, align 64
  %158 = and i32 %157, 4096
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %168, label %160

160:                                              ; preds = %121
  %161 = load ptr, ptr %154, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %168, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.sk_buff, ptr %161, i32 0, i32 17
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.sk_buff, ptr %161, i32 0, i32 5
  %167 = load i32, ptr %166, align 8
  call void @print_hex_dump(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.40, i32 noundef 1, i32 noundef 16, i32 noundef 1, ptr noundef %165, i32 noundef %167, i1 noundef zeroext true) #18
  br label %168

168:                                              ; preds = %163, %160, %121
  %169 = add nuw i32 %118, 1
  %170 = load ptr, ptr %113, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %116

172:                                              ; preds = %168, %116, %106, %78
  %173 = load ptr, ptr %25, align 32
  %174 = getelementptr inbounds %struct.pci_dev, ptr %173, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %174, ptr noundef nonnull @.str.73) #20
  %175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #20
  %176 = getelementptr inbounds %struct.e1000_ring, ptr %8, i32 0, i32 5
  %177 = load i16, ptr %176, align 4
  %178 = zext i16 %177 to i32
  %179 = getelementptr inbounds %struct.e1000_ring, ptr %8, i32 0, i32 6
  %180 = load i16, ptr %179, align 2
  %181 = zext i16 %180 to i32
  %182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef 0, i32 noundef %178, i32 noundef %181) #20
  %183 = load i32, ptr %9, align 64
  %184 = and i32 %183, 2048
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %302, label %186

186:                                              ; preds = %172
  %187 = load ptr, ptr %25, align 32
  %188 = getelementptr inbounds %struct.pci_dev, ptr %187, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %188, ptr noundef nonnull @.str.76) #20
  %189 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 59
  %190 = load i32, ptr %189, align 4
  %191 = add i32 %190, -1
  %192 = icmp ult i32 %191, 3
  br i1 %192, label %193, label %246

193:                                              ; preds = %186
  %194 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #20
  %195 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #20
  %196 = getelementptr inbounds %struct.e1000_ring, ptr %8, i32 0, i32 4
  %197 = load i32, ptr %196, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %302, label %199

199:                                              ; preds = %193
  %200 = getelementptr inbounds %struct.e1000_ring, ptr %8, i32 0, i32 9
  %201 = getelementptr inbounds %struct.e1000_ring, ptr %8, i32 0, i32 1
  br label %202

202:                                              ; preds = %242, %199
  %203 = phi i32 [ 0, %199 ], [ %243, %242 ]
  %204 = load ptr, ptr %200, align 4
  %205 = getelementptr %struct.e1000_buffer, ptr %204, i32 %203
  %206 = load ptr, ptr %201, align 4
  %207 = getelementptr %union.e1000_rx_desc_packet_split, ptr %206, i32 %203
  %208 = getelementptr inbounds %struct.anon.156, ptr %207, i32 0, i32 1
  %209 = load i32, ptr %208, align 8
  %210 = load i16, ptr %176, align 4
  %211 = zext i16 %210 to i32
  %212 = icmp eq i32 %203, %211
  br i1 %212, label %218, label %213

213:                                              ; preds = %202
  %214 = load i16, ptr %179, align 2
  %215 = zext i16 %214 to i32
  %216 = icmp eq i32 %203, %215
  %217 = select i1 %216, ptr @.str.70, ptr @.str.40
  br label %218

218:                                              ; preds = %213, %202
  %219 = phi ptr [ @.str.69, %202 ], [ %217, %213 ]
  %220 = and i32 %209, 1
  %221 = icmp eq i32 %220, 0
  %222 = load i64, ptr %207, align 8
  %223 = load i64, ptr %208, align 8
  %224 = getelementptr inbounds %struct.my_u1, ptr %207, i32 0, i32 2
  %225 = load i64, ptr %224, align 8
  %226 = getelementptr inbounds %struct.my_u1, ptr %207, i32 0, i32 3
  %227 = load i64, ptr %226, align 8
  br i1 %221, label %232, label %228

228:                                              ; preds = %218
  %229 = getelementptr %struct.e1000_buffer, ptr %204, i32 %203, i32 1
  %230 = load ptr, ptr %229, align 4
  %231 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef %203, i64 noundef %222, i64 noundef %223, i64 noundef %225, i64 noundef %227, ptr noundef %230, ptr noundef nonnull %219) #20
  br label %242

232:                                              ; preds = %218
  %233 = load i32, ptr %205, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr %struct.e1000_buffer, ptr %204, i32 %203, i32 1
  %236 = load ptr, ptr %235, align 4
  %237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef %203, i64 noundef %222, i64 noundef %223, i64 noundef %225, i64 noundef %227, i64 noundef %234, ptr noundef %236, ptr noundef nonnull %219) #20
  %238 = load i32, ptr %9, align 64
  %239 = and i32 %238, 4096
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %232
  call fastcc void @e1000e_dump_ps_pages(ptr noundef %0, ptr noundef %205)
  br label %242

242:                                              ; preds = %241, %232, %228
  %243 = add nuw i32 %203, 1
  %244 = load i32, ptr %196, align 4
  %245 = icmp ult i32 %243, %244
  br i1 %245, label %202, label %302

246:                                              ; preds = %186
  %247 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #20
  %248 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #20
  %249 = getelementptr inbounds %struct.e1000_ring, ptr %8, i32 0, i32 4
  %250 = load i32, ptr %249, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %302, label %252

252:                                              ; preds = %246
  %253 = getelementptr inbounds %struct.e1000_ring, ptr %8, i32 0, i32 9
  %254 = getelementptr inbounds %struct.e1000_ring, ptr %8, i32 0, i32 1
  %255 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 8
  br label %256

256:                                              ; preds = %298, %252
  %257 = phi i32 [ 0, %252 ], [ %299, %298 ]
  %258 = load ptr, ptr %253, align 4
  %259 = getelementptr %struct.e1000_buffer, ptr %258, i32 %257
  %260 = load ptr, ptr %254, align 4
  %261 = getelementptr %union.e1000_rx_desc_extended, ptr %260, i32 %257
  %262 = getelementptr inbounds %struct.anon.150, ptr %261, i32 0, i32 1
  %263 = load i32, ptr %262, align 8
  %264 = load i16, ptr %176, align 4
  %265 = zext i16 %264 to i32
  %266 = icmp eq i32 %257, %265
  br i1 %266, label %272, label %267

267:                                              ; preds = %256
  %268 = load i16, ptr %179, align 2
  %269 = zext i16 %268 to i32
  %270 = icmp eq i32 %257, %269
  %271 = select i1 %270, ptr @.str.70, ptr @.str.40
  br label %272

272:                                              ; preds = %267, %256
  %273 = phi ptr [ @.str.69, %256 ], [ %271, %267 ]
  %274 = and i32 %263, 1
  %275 = icmp eq i32 %274, 0
  %276 = load i64, ptr %261, align 8
  %277 = load i64, ptr %262, align 8
  br i1 %275, label %282, label %278

278:                                              ; preds = %272
  %279 = getelementptr %struct.e1000_buffer, ptr %258, i32 %257, i32 1
  %280 = load ptr, ptr %279, align 4
  %281 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.80, i32 noundef %257, i64 noundef %276, i64 noundef %277, ptr noundef %280, ptr noundef nonnull %273) #20
  br label %298

282:                                              ; preds = %272
  %283 = load i32, ptr %259, align 4
  %284 = zext i32 %283 to i64
  %285 = getelementptr %struct.e1000_buffer, ptr %258, i32 %257, i32 1
  %286 = load ptr, ptr %285, align 4
  %287 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.82, i32 noundef %257, i64 noundef %276, i64 noundef %277, i64 noundef %284, ptr noundef %286, ptr noundef nonnull %273) #20
  %288 = load i32, ptr %9, align 64
  %289 = and i32 %288, 4096
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %298, label %291

291:                                              ; preds = %282
  %292 = load ptr, ptr %285, align 4
  %293 = icmp eq ptr %292, null
  br i1 %293, label %298, label %294

294:                                              ; preds = %291
  %295 = getelementptr inbounds %struct.sk_buff, ptr %292, i32 0, i32 17
  %296 = load ptr, ptr %295, align 4
  %297 = load i32, ptr %255, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.40, i32 noundef 1, i32 noundef 16, i32 noundef 1, ptr noundef %296, i32 noundef %297, i1 noundef zeroext true) #18
  br label %298

298:                                              ; preds = %294, %291, %282, %278
  %299 = add nuw i32 %257, 1
  %300 = load i32, ptr %249, align 4
  %301 = icmp ult i32 %299, %300
  br i1 %301, label %256, label %302

302:                                              ; preds = %298, %246, %242, %193, %172, %73, %72, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_trans_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @e1000e_dump_ps_pages(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.e1000_adapter, ptr %0, i32 0, i32 59
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.e1000_buffer, ptr %1, i32 0, i32 2
  br label %8

8:                                                ; preds = %20, %6
  %9 = phi i32 [ %4, %6 ], [ %21, %20 ]
  %10 = phi i32 [ 0, %6 ], [ %22, %20 ]
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr %struct.e1000_ps_page, ptr %11, i32 %10
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %10) #20
  %17 = load ptr, ptr %12, align 8
  %18 = tail call ptr @page_address(ptr noundef %17) #18
  tail call void @print_hex_dump(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.40, i32 noundef 1, i32 noundef 16, i32 noundef 1, ptr noundef %18, i32 noundef 4096, i1 noundef zeroext true) #18
  %19 = load i32, ptr %3, align 4
  br label %20

20:                                               ; preds = %15, %8
  %21 = phi i32 [ %9, %8 ], [ %19, %15 ]
  %22 = add nuw i32 %10, 1
  %23 = icmp ult i32 %22, %21
  br i1 %23, label %8, label %24

24:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @e1000e_enable_tx_pkt_filtering(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_check_downshift(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_schedule_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_update_adaptive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @e1000e_get_laa_state_82571(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @e1000_check_phy_82574(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_gig_downshift_workaround_ich8lan(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_set_eee_pchlan(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_read_pba_string_generic(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_selected_regions(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_ptp_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000e_pm_freeze(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  tail call void @rtnl_lock() #18
  %5 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  tail call void @netif_device_detach(ptr noundef %3) #18
  br i1 %8, label %54, label %9

9:                                                ; preds = %1
  %10 = load volatile i32, ptr %5, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %54, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %3, i32 2032
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %13
  %19 = phi i32 [ %20, %18 ], [ 25, %13 ]
  %20 = add nsw i32 %19, -1
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #18
  %21 = load volatile i32, ptr %14, align 4
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  %24 = icmp eq i32 %20, 0
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %13
  %27 = load volatile i32, ptr %14, align 4
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30, !prof !13

30:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 6629, i32 noundef 9, ptr noundef null) #18
  br label %31

31:                                               ; preds = %30, %26
  tail call void @e1000e_down(ptr noundef %4, i1 noundef zeroext false)
  %32 = getelementptr i8, ptr %3, i32 2524
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %3, i32 12552
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %31
  %38 = load i32, ptr %35, align 4
  %39 = tail call ptr @free_irq(i32 noundef %38, ptr noundef %33) #18
  %40 = load ptr, ptr %34, align 8
  %41 = getelementptr %struct.msix_entry, ptr %40, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = tail call ptr @free_irq(i32 noundef %42, ptr noundef %33) #18
  %44 = load ptr, ptr %34, align 8
  %45 = getelementptr %struct.msix_entry, ptr %44, i32 2
  br label %50

46:                                               ; preds = %31
  %47 = getelementptr i8, ptr %3, i32 2528
  %48 = load ptr, ptr %47, align 32
  %49 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 46
  br label %50

50:                                               ; preds = %46, %37
  %51 = phi ptr [ %49, %46 ], [ %45, %37 ]
  %52 = load i32, ptr %51, align 4
  %53 = tail call ptr @free_irq(i32 noundef %52, ptr noundef %33) #18
  br label %54

54:                                               ; preds = %50, %9, %1
  tail call void @rtnl_unlock() #18
  %55 = getelementptr i8, ptr %3, i32 12552
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr i8, ptr %3, i32 2528
  %60 = load ptr, ptr %59, align 32
  tail call void @pci_disable_msix(ptr noundef %60) #18
  %61 = load ptr, ptr %55, align 8
  tail call void @kfree(ptr noundef %61) #18
  store ptr null, ptr %55, align 8
  br label %72

62:                                               ; preds = %54
  %63 = getelementptr i8, ptr %3, i32 12584
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 134217728
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = getelementptr i8, ptr %3, i32 2528
  %69 = load ptr, ptr %68, align 32
  tail call void @pci_disable_msi(ptr noundef %69) #18
  %70 = load i32, ptr %63, align 8
  %71 = and i32 %70, -134217729
  store i32 %71, ptr %63, align 8
  br label %72

72:                                               ; preds = %67, %62, %58
  %73 = getelementptr i8, ptr %3, i32 2532
  %74 = tail call i32 @e1000e_disable_pcie_master(ptr noundef %73) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__e1000_shutdown(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 1408
  %10 = getelementptr i8, ptr %8, i32 2532
  br i1 %1, label %23, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 6
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %8, i32 12568
  %22 = load i32, ptr %21, align 8
  br label %23

23:                                               ; preds = %20, %16, %11, %2
  %24 = phi i32 [ %22, %20 ], [ 1, %2 ], [ 0, %16 ], [ 0, %11 ]
  %25 = getelementptr i8, ptr %8, i32 2536
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  %31 = and i32 %24, -2
  %32 = select i1 %30, i32 %24, i32 %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %364, label %34

34:                                               ; preds = %23
  tail call fastcc void @e1000_setup_rctl(ptr noundef %9)
  tail call void @e1000e_set_rx_mode(ptr noundef %8)
  %35 = and i32 %32, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %67, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %25, align 4
  %39 = getelementptr i8, ptr %38, i32 256
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %41 = or i32 %40, 16
  %42 = load ptr, ptr %10, align 4
  %43 = getelementptr inbounds %struct.e1000_adapter, ptr %42, i32 0, i32 85
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 2048
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %37
  %48 = load ptr, ptr %25, align 4
  %49 = getelementptr i8, ptr %48, i32 23380
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %51 = and i32 %50, 16777216
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %57, %47
  %54 = phi i32 [ %55, %57 ], [ 2000, %47 ]
  %55 = add nsw i32 %54, -1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 10737400) #18
  %59 = load ptr, ptr %25, align 4
  %60 = getelementptr i8, ptr %59, i32 23380
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %62 = and i32 %61, 16777216
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %53

64:                                               ; preds = %57, %53, %47, %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %65 = load ptr, ptr %25, align 4
  %66 = getelementptr i8, ptr %65, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %41) #18, !srcloc !12
  br label %67

67:                                               ; preds = %64, %34
  %68 = load ptr, ptr %25, align 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %70 = getelementptr i8, ptr %8, i32 12588
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 2
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i32 3145728, i32 1048576
  %75 = or i32 %74, %69
  %76 = load ptr, ptr %10, align 4
  %77 = getelementptr inbounds %struct.e1000_adapter, ptr %76, i32 0, i32 85
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 2048
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %98, label %81

81:                                               ; preds = %67
  %82 = load ptr, ptr %25, align 4
  %83 = getelementptr i8, ptr %82, i32 23380
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %85 = and i32 %84, 16777216
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %91, %81
  %88 = phi i32 [ %89, %91 ], [ 2000, %81 ]
  %89 = add nsw i32 %88, -1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 10737400) #18
  %93 = load ptr, ptr %25, align 4
  %94 = getelementptr i8, ptr %93, i32 23380
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %96 = and i32 %95, 16777216
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %87

98:                                               ; preds = %91, %87, %81, %67
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %99 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %75) #18, !srcloc !12
  %100 = getelementptr i8, ptr %8, i32 3376
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, -2
  %103 = icmp eq i32 %102, 2
  br i1 %103, label %104, label %134

104:                                              ; preds = %98
  %105 = load ptr, ptr %25, align 4
  %106 = getelementptr i8, ptr %105, i32 24
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %108 = or i32 %107, 128
  %109 = load ptr, ptr %10, align 4
  %110 = getelementptr inbounds %struct.e1000_adapter, ptr %109, i32 0, i32 85
  %111 = load i32, ptr %110, align 4
  %112 = and i32 %111, 2048
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %131, label %114

114:                                              ; preds = %104
  %115 = load ptr, ptr %25, align 4
  %116 = getelementptr i8, ptr %115, i32 23380
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %118 = and i32 %117, 16777216
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %131, label %120

120:                                              ; preds = %124, %114
  %121 = phi i32 [ %122, %124 ], [ 2000, %114 ]
  %122 = add nsw i32 %121, -1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %131, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %125(i32 noundef 10737400) #18
  %126 = load ptr, ptr %25, align 4
  %127 = getelementptr i8, ptr %126, i32 23380
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %129 = and i32 %128, 16777216
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %120

131:                                              ; preds = %124, %120, %114, %104
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %132 = load ptr, ptr %25, align 4
  %133 = getelementptr i8, ptr %132, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %108) #18, !srcloc !12
  br label %134

134:                                              ; preds = %131, %98
  br i1 %1, label %144, label %135

135:                                              ; preds = %134
  %136 = getelementptr i8, ptr %8, i32 3324
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %135
  tail call void %137(ptr noundef %10) #18
  br label %140

140:                                              ; preds = %139, %135
  %141 = getelementptr i8, ptr %8, i32 2604
  %142 = load ptr, ptr %141, align 4
  %143 = tail call i32 %142(ptr noundef %10) #18
  br label %144

144:                                              ; preds = %140, %134
  %145 = getelementptr i8, ptr %8, i32 12584
  %146 = load i32, ptr %145, align 8
  %147 = and i32 %146, 512
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %144
  tail call void @e1000_suspend_workarounds_ich8lan(ptr noundef %10) #18
  br label %150

150:                                              ; preds = %149, %144
  %151 = load i32, ptr %70, align 4
  %152 = and i32 %151, 2
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %313, label %154

154:                                              ; preds = %150
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #18
  store i16 0, ptr %3, align 2, !annotation !19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #18
  store i16 0, ptr %4, align 2, !annotation !19
  tail call void @e1000_copy_rx_addrs_to_phy_ich8lan(ptr noundef %10) #18
  %155 = getelementptr i8, ptr %8, i32 3244
  %156 = load ptr, ptr %155, align 4
  %157 = tail call i32 %156(ptr noundef %10) #18
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = getelementptr i8, ptr %8, i32 2524
  %161 = load ptr, ptr %160, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %161, ptr noundef nonnull @.str.147) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #18
  br label %506

162:                                              ; preds = %154
  %163 = call i32 @e1000_enable_phy_wakeup_reg_access_bm(ptr noundef %10, ptr noundef nonnull %4) #18
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %306

165:                                              ; preds = %162
  %166 = getelementptr i8, ptr %8, i32 2690
  %167 = load i16, ptr %166, align 2
  %168 = icmp eq i16 %167, 0
  br i1 %168, label %197, label %169

169:                                              ; preds = %165
  %170 = getelementptr i8, ptr %8, i32 3320
  br label %171

171:                                              ; preds = %171, %169
  %172 = phi i32 [ 0, %169 ], [ %193, %171 ]
  %173 = load ptr, ptr %25, align 4
  %174 = getelementptr i8, ptr %173, i32 20992
  %175 = shl i32 %172, 2
  %176 = getelementptr i8, ptr %174, i32 %175
  %177 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %176) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !84
  %178 = load ptr, ptr %170, align 4
  %179 = shl nuw i32 %172, 1
  %180 = and i32 %179, 30
  %181 = shl i32 %172, 17
  %182 = add i32 %181, 8388608
  %183 = and i32 %182, -2097152
  %184 = or i32 %183, %180
  %185 = or i32 %184, 25600
  %186 = trunc i32 %177 to i16
  %187 = call i32 %178(ptr noundef %10, i32 noundef %185, i16 noundef zeroext %186) #18
  %188 = load ptr, ptr %170, align 4
  %189 = or i32 %184, 25601
  %190 = lshr i32 %177, 16
  %191 = trunc i32 %190 to i16
  %192 = call i32 %188(ptr noundef %10, i32 noundef %189, i16 noundef zeroext %191) #18
  %193 = add nuw nsw i32 %172, 1
  %194 = load i16, ptr %166, align 2
  %195 = zext i16 %194 to i32
  %196 = icmp ult i32 %193, %195
  br i1 %196, label %171, label %197

197:                                              ; preds = %171, %165
  %198 = getelementptr i8, ptr %8, i32 3292
  %199 = load ptr, ptr %198, align 4
  %200 = call i32 %199(ptr noundef %10, i32 noundef 25600, ptr noundef nonnull %3) #18
  %201 = load ptr, ptr %25, align 4
  %202 = getelementptr i8, ptr %201, i32 256
  %203 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %202) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %204 = load i16, ptr %3, align 2
  %205 = trunc i32 %203 to i16
  %206 = lshr i16 %205, 3
  %207 = and i16 %206, 1
  %208 = trunc i32 %203 to i16
  %209 = lshr i16 %208, 3
  %210 = and i16 %209, 2
  %211 = and i16 %204, -25
  %212 = or i16 %207, %211
  %213 = and i32 %203, 12288
  %214 = icmp eq i32 %213, 0
  %215 = lshr exact i32 %213, 9
  %216 = trunc i32 %215 to i16
  %217 = select i1 %214, i16 0, i16 %216
  %218 = lshr i16 %208, 10
  %219 = and i16 %218, 32
  %220 = lshr i32 %203, 17
  %221 = trunc i32 %220 to i16
  %222 = and i16 %221, 64
  %223 = or i16 %219, %210
  %224 = or i16 %223, %222
  %225 = or i16 %224, %217
  %226 = or i16 %225, %212
  store i16 %226, ptr %3, align 2
  %227 = load ptr, ptr %25, align 4
  %228 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %227) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %229 = and i32 %228, 134217728
  %230 = icmp eq i32 %229, 0
  %231 = load i16, ptr %3, align 2
  br i1 %230, label %234, label %232

232:                                              ; preds = %197
  %233 = or i16 %231, 128
  store i16 %233, ptr %3, align 2
  br label %234

234:                                              ; preds = %232, %197
  %235 = phi i16 [ %233, %232 ], [ %231, %197 ]
  %236 = getelementptr i8, ptr %8, i32 3320
  %237 = load ptr, ptr %236, align 4
  %238 = call i32 %237(ptr noundef %10, i32 noundef 25600, i16 noundef zeroext %235) #18
  %239 = and i32 %32, 3
  %240 = icmp eq i32 %239, 0
  %241 = select i1 %240, i32 2, i32 3
  %242 = load ptr, ptr %10, align 4
  %243 = getelementptr inbounds %struct.e1000_adapter, ptr %242, i32 0, i32 85
  %244 = load i32, ptr %243, align 4
  %245 = and i32 %244, 2048
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %264, label %247

247:                                              ; preds = %234
  %248 = load ptr, ptr %25, align 4
  %249 = getelementptr i8, ptr %248, i32 23380
  %250 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %249) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %251 = and i32 %250, 16777216
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %264, label %253

253:                                              ; preds = %257, %247
  %254 = phi i32 [ %255, %257 ], [ 2000, %247 ]
  %255 = add nsw i32 %254, -1
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %264, label %257

257:                                              ; preds = %253
  %258 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %258(i32 noundef 10737400) #18
  %259 = load ptr, ptr %25, align 4
  %260 = getelementptr i8, ptr %259, i32 23380
  %261 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %260) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %262 = and i32 %261, 16777216
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %253

264:                                              ; preds = %257, %253, %247, %234
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %265 = load ptr, ptr %25, align 4
  %266 = getelementptr i8, ptr %265, i32 22536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %266, i32 %32) #18, !srcloc !12
  %267 = or i32 %241, 268
  %268 = load ptr, ptr %10, align 4
  %269 = getelementptr inbounds %struct.e1000_adapter, ptr %268, i32 0, i32 85
  %270 = load i32, ptr %269, align 4
  %271 = and i32 %270, 2048
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %290, label %273

273:                                              ; preds = %264
  %274 = load ptr, ptr %25, align 4
  %275 = getelementptr i8, ptr %274, i32 23380
  %276 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %275) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %277 = and i32 %276, 16777216
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %290, label %279

279:                                              ; preds = %283, %273
  %280 = phi i32 [ %281, %283 ], [ 2000, %273 ]
  %281 = add nsw i32 %280, -1
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %290, label %283

283:                                              ; preds = %279
  %284 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %284(i32 noundef 10737400) #18
  %285 = load ptr, ptr %25, align 4
  %286 = getelementptr i8, ptr %285, i32 23380
  %287 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %286) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %288 = and i32 %287, 16777216
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %279

290:                                              ; preds = %283, %279, %273, %264
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %291 = load ptr, ptr %25, align 4
  %292 = getelementptr i8, ptr %291, i32 22528
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %292, i32 %267) #18, !srcloc !12
  %293 = load ptr, ptr %236, align 4
  %294 = trunc i32 %32 to i16
  %295 = call i32 %293(ptr noundef %10, i32 noundef 25602, i16 noundef zeroext %294) #18
  %296 = load ptr, ptr %236, align 4
  %297 = trunc i32 %241 to i16
  %298 = call i32 %296(ptr noundef %10, i32 noundef 25601, i16 noundef zeroext %297) #18
  %299 = load i16, ptr %4, align 2
  %300 = or i16 %299, 20
  store i16 %300, ptr %4, align 2
  %301 = call i32 @e1000_disable_phy_wakeup_reg_access_bm(ptr noundef %10, ptr noundef nonnull %4) #18
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %310, label %303

303:                                              ; preds = %290
  %304 = getelementptr i8, ptr %8, i32 2524
  %305 = load ptr, ptr %304, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %305, ptr noundef nonnull @.str.148) #20
  br label %306

306:                                              ; preds = %303, %162
  %307 = phi i32 [ %301, %303 ], [ %163, %162 ]
  %308 = getelementptr i8, ptr %8, i32 3296
  %309 = load ptr, ptr %308, align 4
  call void %309(ptr noundef %10) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #18
  br label %506

310:                                              ; preds = %290
  %311 = getelementptr i8, ptr %8, i32 3296
  %312 = load ptr, ptr %311, align 4
  call void %312(ptr noundef %10) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #18
  br label %419

313:                                              ; preds = %150
  %314 = load ptr, ptr %10, align 4
  %315 = getelementptr inbounds %struct.e1000_adapter, ptr %314, i32 0, i32 85
  %316 = load i32, ptr %315, align 4
  %317 = and i32 %316, 2048
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %336, label %319

319:                                              ; preds = %313
  %320 = load ptr, ptr %25, align 4
  %321 = getelementptr i8, ptr %320, i32 23380
  %322 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %321) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %323 = and i32 %322, 16777216
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %336, label %325

325:                                              ; preds = %329, %319
  %326 = phi i32 [ %327, %329 ], [ 2000, %319 ]
  %327 = add nsw i32 %326, -1
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %336, label %329

329:                                              ; preds = %325
  %330 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %330(i32 noundef 10737400) #18
  %331 = load ptr, ptr %25, align 4
  %332 = getelementptr i8, ptr %331, i32 23380
  %333 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %332) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %334 = and i32 %333, 16777216
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %325

336:                                              ; preds = %329, %325, %319, %313
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %337 = load ptr, ptr %25, align 4
  %338 = getelementptr i8, ptr %337, i32 22536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %338, i32 %32) #18, !srcloc !12
  %339 = load ptr, ptr %10, align 4
  %340 = getelementptr inbounds %struct.e1000_adapter, ptr %339, i32 0, i32 85
  %341 = load i32, ptr %340, align 4
  %342 = and i32 %341, 2048
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %361, label %344

344:                                              ; preds = %336
  %345 = load ptr, ptr %25, align 4
  %346 = getelementptr i8, ptr %345, i32 23380
  %347 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %346) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %348 = and i32 %347, 16777216
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %361, label %350

350:                                              ; preds = %354, %344
  %351 = phi i32 [ %352, %354 ], [ 2000, %344 ]
  %352 = add nsw i32 %351, -1
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %361, label %354

354:                                              ; preds = %350
  %355 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %355(i32 noundef 10737400) #18
  %356 = load ptr, ptr %25, align 4
  %357 = getelementptr i8, ptr %356, i32 23380
  %358 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %357) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %359 = and i32 %358, 16777216
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %350

361:                                              ; preds = %354, %350, %344, %336
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %362 = load ptr, ptr %25, align 4
  %363 = getelementptr i8, ptr %362, i32 22528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %363, i32 2) #18, !srcloc !12
  br label %419

364:                                              ; preds = %23
  %365 = load ptr, ptr %10, align 4
  %366 = getelementptr inbounds %struct.e1000_adapter, ptr %365, i32 0, i32 85
  %367 = load i32, ptr %366, align 4
  %368 = and i32 %367, 2048
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %387, label %370

370:                                              ; preds = %364
  %371 = load ptr, ptr %25, align 4
  %372 = getelementptr i8, ptr %371, i32 23380
  %373 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %372) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %374 = and i32 %373, 16777216
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %387, label %376

376:                                              ; preds = %380, %370
  %377 = phi i32 [ %378, %380 ], [ 2000, %370 ]
  %378 = add nsw i32 %377, -1
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %387, label %380

380:                                              ; preds = %376
  %381 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %381(i32 noundef 10737400) #18
  %382 = load ptr, ptr %25, align 4
  %383 = getelementptr i8, ptr %382, i32 23380
  %384 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %383) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %385 = and i32 %384, 16777216
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %376

387:                                              ; preds = %380, %376, %370, %364
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %388 = load ptr, ptr %25, align 4
  %389 = getelementptr i8, ptr %388, i32 22528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %389, i32 0) #18, !srcloc !12
  %390 = load ptr, ptr %10, align 4
  %391 = getelementptr inbounds %struct.e1000_adapter, ptr %390, i32 0, i32 85
  %392 = load i32, ptr %391, align 4
  %393 = and i32 %392, 2048
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %412, label %395

395:                                              ; preds = %387
  %396 = load ptr, ptr %25, align 4
  %397 = getelementptr i8, ptr %396, i32 23380
  %398 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %397) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %399 = and i32 %398, 16777216
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %412, label %401

401:                                              ; preds = %405, %395
  %402 = phi i32 [ %403, %405 ], [ 2000, %395 ]
  %403 = add nsw i32 %402, -1
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %412, label %405

405:                                              ; preds = %401
  %406 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %406(i32 noundef 10737400) #18
  %407 = load ptr, ptr %25, align 4
  %408 = getelementptr i8, ptr %407, i32 23380
  %409 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %408) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %410 = and i32 %409, 16777216
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %401

412:                                              ; preds = %405, %401, %395, %387
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %413 = load ptr, ptr %25, align 4
  %414 = getelementptr i8, ptr %413, i32 22536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %414, i32 0) #18, !srcloc !12
  %415 = getelementptr i8, ptr %8, i32 3328
  %416 = load ptr, ptr %415, align 4
  %417 = icmp eq ptr %416, null
  br i1 %417, label %419, label %418

418:                                              ; preds = %412
  tail call void %416(ptr noundef %10) #18
  br label %419

419:                                              ; preds = %418, %412, %361, %310
  %420 = getelementptr i8, ptr %8, i32 3244
  %421 = getelementptr i8, ptr %8, i32 3332
  %422 = load i32, ptr %421, align 4
  %423 = icmp eq i32 %422, 6
  br i1 %423, label %424, label %425

424:                                              ; preds = %419
  call void @e1000e_igp3_phy_powerdown_workaround_ich8lan(ptr noundef %10) #18
  br label %437

425:                                              ; preds = %419
  %426 = getelementptr i8, ptr %8, i32 2648
  %427 = load i32, ptr %426, align 4
  %428 = icmp ugt i32 %427, 10
  br i1 %428, label %429, label %437

429:                                              ; preds = %425
  %430 = and i32 %32, 28
  %431 = icmp ne i32 %430, 0
  %432 = or i1 %33, %431
  br i1 %432, label %437, label %433

433:                                              ; preds = %429
  %434 = xor i1 %1, true
  %435 = call i32 @e1000_enable_ulp_lpt_lp(ptr noundef %10, i1 noundef zeroext %434) #18
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %506

437:                                              ; preds = %433, %429, %425, %424
  %438 = load i32, ptr %421, align 4
  %439 = icmp ugt i32 %438, 11
  br i1 %439, label %440, label %485

440:                                              ; preds = %437
  %441 = getelementptr i8, ptr %8, i32 12940
  %442 = load i16, ptr %441, align 4
  %443 = icmp eq i16 %442, 0
  br i1 %443, label %485, label %444

444:                                              ; preds = %440
  %445 = getelementptr i8, ptr %8, i32 11680
  %446 = load i16, ptr %445, align 4
  %447 = icmp eq i16 %446, 0
  br i1 %447, label %485, label %448

448:                                              ; preds = %444
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #18
  store i16 0, ptr %5, align 2
  %449 = load ptr, ptr %420, align 4
  %450 = call i32 %449(ptr noundef %10) #18
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %482

452:                                              ; preds = %448
  %453 = getelementptr i8, ptr %8, i32 3288
  %454 = load ptr, ptr %453, align 4
  %455 = call i32 %454(ptr noundef %10, i32 noundef 24724, ptr noundef nonnull %5) #18
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %482

457:                                              ; preds = %452
  %458 = load i16, ptr %441, align 4
  %459 = load i16, ptr %445, align 4
  %460 = and i16 %458, 2
  %461 = and i16 %460, %459
  %462 = icmp eq i16 %461, 0
  br i1 %462, label %468, label %463

463:                                              ; preds = %457
  %464 = load i16, ptr %5, align 2
  %465 = or i16 %464, 8192
  store i16 %465, ptr %5, align 2
  %466 = load i16, ptr %441, align 4
  %467 = load i16, ptr %445, align 4
  br label %468

468:                                              ; preds = %463, %457
  %469 = phi i16 [ %467, %463 ], [ %459, %457 ]
  %470 = phi i16 [ %466, %463 ], [ %458, %457 ]
  %471 = and i16 %470, 4
  %472 = and i16 %471, %469
  %473 = icmp eq i16 %472, 0
  %474 = load i16, ptr %5, align 2
  br i1 %473, label %477, label %475

475:                                              ; preds = %468
  %476 = or i16 %474, 16384
  store i16 %476, ptr %5, align 2
  br label %477

477:                                              ; preds = %475, %468
  %478 = phi i16 [ %476, %475 ], [ %474, %468 ]
  %479 = getelementptr i8, ptr %8, i32 3316
  %480 = load ptr, ptr %479, align 4
  %481 = call i32 %480(ptr noundef %10, i32 noundef 24724, i16 noundef zeroext %478) #18
  br label %482

482:                                              ; preds = %477, %452, %448
  %483 = getelementptr i8, ptr %8, i32 3296
  %484 = load ptr, ptr %483, align 4
  call void %484(ptr noundef %10) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #18
  br label %485

485:                                              ; preds = %482, %444, %440, %437
  call void @e1000e_release_hw_control(ptr noundef %9)
  call void @pci_clear_master(ptr noundef %0) #18
  %486 = getelementptr i8, ptr %8, i32 12584
  %487 = load i32, ptr %486, align 8
  %488 = and i32 %487, 8192
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %506, label %490

490:                                              ; preds = %485
  %491 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %492 = load ptr, ptr %491, align 8
  %493 = getelementptr inbounds %struct.pci_bus, ptr %492, i32 0, i32 4
  %494 = load ptr, ptr %493, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #18
  store i16 0, ptr %6, align 2, !annotation !19
  %495 = icmp eq ptr %494, null
  br i1 %495, label %505, label %496

496:                                              ; preds = %490
  %497 = call i32 @pcie_capability_read_word(ptr noundef nonnull %494, i32 noundef 8, ptr noundef nonnull %6) #18
  %498 = load i16, ptr %6, align 2
  %499 = and i16 %498, -2
  %500 = call i32 @pcie_capability_write_word(ptr noundef nonnull %494, i32 noundef 8, i16 noundef zeroext %499) #18
  %501 = call i32 @pci_save_state(ptr noundef %0) #18
  %502 = call i32 @pci_prepare_to_sleep(ptr noundef %0) #18
  %503 = load i16, ptr %6, align 2
  %504 = call i32 @pcie_capability_write_word(ptr noundef nonnull %494, i32 noundef 8, i16 noundef zeroext %503) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #18
  br label %506

505:                                              ; preds = %490
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #18
  br label %506

506:                                              ; preds = %505, %496, %485, %433, %306, %159
  %507 = phi i32 [ %435, %433 ], [ 0, %505 ], [ 0, %496 ], [ 0, %485 ], [ %157, %159 ], [ %307, %306 ]
  ret i32 %507
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000e_disable_pcie_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_suspend_workarounds_ich8lan(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_igp3_phy_powerdown_workaround_ich8lan(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_enable_ulp_lpt_lp(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_write_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_prepare_to_sleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_copy_rx_addrs_to_phy_ich8lan(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_enable_phy_wakeup_reg_access_bm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_disable_phy_wakeup_reg_access_bm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_io_error_detected(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %4 = tail call i32 @e1000e_pm_freeze(ptr noundef %3)
  %5 = icmp eq i32 %1, 3
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @pci_disable_device(ptr noundef %0) #18
  br label %7

7:                                                ; preds = %6, %2
  %8 = phi i32 [ 3, %6 ], [ 4, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000_io_slot_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  %5 = getelementptr i8, ptr %3, i32 2532
  %6 = getelementptr i8, ptr %3, i32 12588
  %7 = load i32, ptr %6, align 4
  %8 = trunc i32 %7 to i16
  %9 = lshr i16 %8, 7
  %10 = and i16 %9, 1
  %11 = lshr i16 %8, 2
  %12 = and i16 %11, 2
  %13 = or i16 %12, %10
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call fastcc void @__e1000e_disable_aspm(ptr noundef %0, i16 noundef zeroext %13, i32 noundef 1) #18
  br label %16

16:                                               ; preds = %15, %1
  %17 = tail call i32 @pci_enable_device_mem(ptr noundef %0) #18
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.149) #20
  br label %54

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %23 = load i40, ptr %22, align 1
  %24 = or i40 %23, 2097152
  store i40 %24, ptr %22, align 1
  tail call void @pci_restore_state(ptr noundef %0) #18
  tail call void @pci_set_master(ptr noundef %0) #18
  %25 = tail call i32 @pci_enable_wake(ptr noundef %0, i32 noundef 3, i1 noundef zeroext false) #18
  %26 = tail call i32 @pci_enable_wake(ptr noundef %0, i32 noundef 4, i1 noundef zeroext false) #18
  tail call void @e1000e_reset(ptr noundef %4)
  %27 = load ptr, ptr %5, align 4
  %28 = getelementptr inbounds %struct.e1000_adapter, ptr %27, i32 0, i32 85
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 2048
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %21
  %33 = getelementptr i8, ptr %3, i32 2536
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 23380
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %37 = and i32 %36, 16777216
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %43, %32
  %40 = phi i32 [ %41, %43 ], [ 2000, %32 ]
  %41 = add nsw i32 %40, -1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 10737400) #18
  %45 = load ptr, ptr %33, align 4
  %46 = getelementptr i8, ptr %45, i32 23380
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %48 = and i32 %47, 16777216
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %39

50:                                               ; preds = %43, %39, %32, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %51 = getelementptr i8, ptr %3, i32 2536
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 22544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 -1) #18, !srcloc !12
  br label %54

54:                                               ; preds = %50, %19
  %55 = phi i32 [ 4, %19 ], [ 5, %50 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @e1000_io_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  tail call fastcc void @e1000_init_manageability_pt(ptr noundef %4)
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %6 = tail call i32 @e1000e_pm_thaw(ptr noundef %5)
  %7 = getelementptr i8, ptr %3, i32 12584
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void @e1000e_get_hw_control(ptr noundef %4)
  br label %12

12:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_wake(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000e_pm_thaw(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  tail call void @e1000e_set_interrupt_capability(ptr noundef %4)
  tail call void @rtnl_lock() #18
  %5 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = tail call fastcc i32 @e1000_request_irq(ptr noundef %4)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  tail call fastcc void @e1000_configure(ptr noundef %4) #18
  %13 = getelementptr i8, ptr %3, i32 2032
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %13) #18
  %14 = getelementptr i8, ptr %3, i32 12552
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call fastcc void @e1000_configure_msix(ptr noundef %4) #18
  br label %18

18:                                               ; preds = %17, %12
  tail call fastcc void @e1000_irq_enable(ptr noundef %4) #18
  tail call fastcc void @e1000e_trigger_lsc(ptr noundef %4) #18
  br label %19

19:                                               ; preds = %18, %1
  tail call void @netif_device_attach(ptr noundef %3) #18
  br label %20

20:                                               ; preds = %19, %9
  %21 = phi i32 [ %10, %9 ], [ 0, %19 ]
  tail call void @rtnl_unlock() #18
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @e1000e_pm_prepare(ptr nocapture noundef readonly %0) #17 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 7
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load i32, ptr @pm_suspend_global_flags, align 4
  %12 = and i32 %11, 1
  br label %13

13:                                               ; preds = %10, %5, %1
  %14 = phi i32 [ 0, %5 ], [ %12, %10 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000e_pm_suspend(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = getelementptr i8, ptr %0, i32 -136
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 2532
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #18
  store i16 0, ptr %3, align 2, !annotation !19
  %8 = getelementptr i8, ptr %6, i32 2536
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 23380
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %12 = and i32 %11, 32768
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %1
  %15 = getelementptr i8, ptr %6, i32 2648
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 14
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %6, i32 3284
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 %20(ptr noundef %7, i32 noundef 24730, ptr noundef nonnull %3) #18
  %22 = load i16, ptr %3, align 2
  %23 = or i16 %22, 4096
  store i16 %23, ptr %3, align 2
  %24 = getelementptr i8, ptr %6, i32 3312
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 %25(ptr noundef %7, i32 noundef 24730, i16 noundef zeroext %23) #18
  %27 = getelementptr i8, ptr %6, i32 3394
  store i8 1, ptr %27, align 2
  br label %28

28:                                               ; preds = %18, %14, %1
  %29 = load ptr, ptr %5, align 8
  %30 = getelementptr i8, ptr %29, i32 2532
  %31 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 111, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 @__pm_runtime_resume(ptr noundef %32, i32 noundef 4) #18
  %34 = getelementptr i8, ptr %29, i32 3244
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 %35(ptr noundef %30) #18
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %28
  %39 = getelementptr i8, ptr %29, i32 2536
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 252
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %43 = lshr i32 %42, 24
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, i32 noundef %43) #20
  %45 = getelementptr i8, ptr %29, i32 3296
  %46 = load ptr, ptr %45, align 4
  call void %46(ptr noundef %30) #18
  br label %47

47:                                               ; preds = %38, %28
  %48 = load ptr, ptr %31, align 4
  %49 = call i32 @__pm_runtime_idle(ptr noundef %48, i32 noundef 4) #18
  %50 = call i32 @e1000e_pm_freeze(ptr noundef %0)
  %51 = call fastcc i32 @__e1000_shutdown(ptr noundef %4, i1 noundef zeroext false)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = call i32 @e1000e_pm_thaw(ptr noundef %0)
  br label %789

55:                                               ; preds = %47
  %56 = getelementptr i8, ptr %6, i32 12588
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 32768
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %789, label %60

60:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #18
  store i16 0, ptr %2, align 2, !annotation !19
  %61 = load ptr, ptr %8, align 4
  %62 = getelementptr i8, ptr %61, i32 23380
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %64 = and i32 %63, 32768
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %101, label %66

66:                                               ; preds = %60
  %67 = getelementptr i8, ptr %6, i32 2648
  %68 = load i32, ptr %67, align 4
  %69 = icmp ugt i32 %68, 14
  br i1 %69, label %70, label %101

70:                                               ; preds = %66
  %71 = load ptr, ptr %8, align 4
  %72 = getelementptr i8, ptr %71, i32 23376
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %74 = and i32 %73, -4
  %75 = or i32 %74, 1
  %76 = load ptr, ptr %7, align 4
  %77 = getelementptr inbounds %struct.e1000_adapter, ptr %76, i32 0, i32 85
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 2048
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %98, label %81

81:                                               ; preds = %70
  %82 = load ptr, ptr %8, align 4
  %83 = getelementptr i8, ptr %82, i32 23380
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %85 = and i32 %84, 16777216
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %91, %81
  %88 = phi i32 [ %89, %91 ], [ 2000, %81 ]
  %89 = add nsw i32 %88, -1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %92(i32 noundef 10737400) #18
  %93 = load ptr, ptr %8, align 4
  %94 = getelementptr i8, ptr %93, i32 23380
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %96 = and i32 %95, 16777216
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %87

98:                                               ; preds = %91, %87, %81, %70
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %99 = load ptr, ptr %8, align 4
  %100 = getelementptr i8, ptr %99, i32 23376
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %75) #18, !srcloc !12
  br label %419

101:                                              ; preds = %66, %60
  %102 = getelementptr i8, ptr %6, i32 3284
  %103 = load ptr, ptr %102, align 4
  %104 = call i32 %103(ptr noundef %7, i32 noundef 24657, ptr noundef nonnull %2) #18
  %105 = load i16, ptr %2, align 2
  %106 = and i16 %105, -1537
  %107 = or i16 %106, 1024
  store i16 %107, ptr %2, align 2
  %108 = getelementptr i8, ptr %6, i32 3312
  %109 = load ptr, ptr %108, align 4
  %110 = call i32 %109(ptr noundef %7, i32 noundef 24657, i16 noundef zeroext %107) #18
  %111 = load ptr, ptr %102, align 4
  %112 = call i32 %111(ptr noundef %7, i32 noundef 24733, ptr noundef nonnull %2) #18
  %113 = load i16, ptr %2, align 2
  %114 = or i16 %113, 32
  store i16 %114, ptr %2, align 2
  %115 = load ptr, ptr %108, align 4
  %116 = call i32 %115(ptr noundef %7, i32 noundef 24733, i16 noundef zeroext %114) #18
  %117 = load ptr, ptr %102, align 4
  %118 = call i32 %117(ptr noundef %7, i32 noundef 24631, ptr noundef nonnull %2) #18
  %119 = load i16, ptr %2, align 2
  %120 = or i16 %119, 1
  store i16 %120, ptr %2, align 2
  %121 = load ptr, ptr %108, align 4
  %122 = call i32 %121(ptr noundef %7, i32 noundef 24631, i16 noundef zeroext %120) #18
  %123 = load ptr, ptr %8, align 4
  %124 = getelementptr i8, ptr %123, i32 24
  %125 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %126 = or i32 %125, 2048
  %127 = load ptr, ptr %7, align 4
  %128 = getelementptr inbounds %struct.e1000_adapter, ptr %127, i32 0, i32 85
  %129 = load i32, ptr %128, align 4
  %130 = and i32 %129, 2048
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %149, label %132

132:                                              ; preds = %101
  %133 = load ptr, ptr %8, align 4
  %134 = getelementptr i8, ptr %133, i32 23380
  %135 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %136 = and i32 %135, 16777216
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %142, %132
  %139 = phi i32 [ %140, %142 ], [ 2000, %132 ]
  %140 = add nsw i32 %139, -1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %138
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %143(i32 noundef 10737400) #18
  %144 = load ptr, ptr %8, align 4
  %145 = getelementptr i8, ptr %144, i32 23380
  %146 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %147 = and i32 %146, 16777216
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %138

149:                                              ; preds = %142, %138, %132, %101
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %150 = load ptr, ptr %8, align 4
  %151 = getelementptr i8, ptr %150, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 %126) #18, !srcloc !12
  %152 = load ptr, ptr %102, align 4
  %153 = call i32 %152(ptr noundef %7, i32 noundef 24628, ptr noundef nonnull %2) #18
  %154 = load i16, ptr %2, align 2
  %155 = or i16 %154, 897
  store i16 %155, ptr %2, align 2
  %156 = load ptr, ptr %108, align 4
  %157 = call i32 %156(ptr noundef %7, i32 noundef 24628, i16 noundef zeroext %155) #18
  %158 = load ptr, ptr %8, align 4
  %159 = getelementptr i8, ptr %158, i32 3840
  %160 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %159) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %161 = or i32 %160, 128
  %162 = load ptr, ptr %7, align 4
  %163 = getelementptr inbounds %struct.e1000_adapter, ptr %162, i32 0, i32 85
  %164 = load i32, ptr %163, align 4
  %165 = and i32 %164, 2048
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %184, label %167

167:                                              ; preds = %149
  %168 = load ptr, ptr %8, align 4
  %169 = getelementptr i8, ptr %168, i32 23380
  %170 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %171 = and i32 %170, 16777216
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %184, label %173

173:                                              ; preds = %177, %167
  %174 = phi i32 [ %175, %177 ], [ 2000, %167 ]
  %175 = add nsw i32 %174, -1
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %173
  %178 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %178(i32 noundef 10737400) #18
  %179 = load ptr, ptr %8, align 4
  %180 = getelementptr i8, ptr %179, i32 23380
  %181 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %180) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %182 = and i32 %181, 16777216
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %173

184:                                              ; preds = %177, %173, %167, %149
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %185 = load ptr, ptr %8, align 4
  %186 = getelementptr i8, ptr %185, i32 3840
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %161) #18, !srcloc !12
  %187 = load ptr, ptr %8, align 4
  %188 = getelementptr i8, ptr %187, i32 228
  %189 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %190 = or i32 %189, 4194304
  %191 = load ptr, ptr %7, align 4
  %192 = getelementptr inbounds %struct.e1000_adapter, ptr %191, i32 0, i32 85
  %193 = load i32, ptr %192, align 4
  %194 = and i32 %193, 2048
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %213, label %196

196:                                              ; preds = %184
  %197 = load ptr, ptr %8, align 4
  %198 = getelementptr i8, ptr %197, i32 23380
  %199 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %198) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %200 = and i32 %199, 16777216
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %213, label %202

202:                                              ; preds = %206, %196
  %203 = phi i32 [ %204, %206 ], [ 2000, %196 ]
  %204 = add nsw i32 %203, -1
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %213, label %206

206:                                              ; preds = %202
  %207 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %207(i32 noundef 10737400) #18
  %208 = load ptr, ptr %8, align 4
  %209 = getelementptr i8, ptr %208, i32 23380
  %210 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %209) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %211 = and i32 %210, 16777216
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %202

213:                                              ; preds = %206, %202, %196, %184
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %214 = load ptr, ptr %8, align 4
  %215 = getelementptr i8, ptr %214, i32 228
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 %190) #18, !srcloc !12
  %216 = load ptr, ptr %8, align 4
  %217 = getelementptr i8, ptr %216, i32 4012
  %218 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %217) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %219 = or i32 %218, 4
  %220 = load ptr, ptr %7, align 4
  %221 = getelementptr inbounds %struct.e1000_adapter, ptr %220, i32 0, i32 85
  %222 = load i32, ptr %221, align 4
  %223 = and i32 %222, 2048
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %242, label %225

225:                                              ; preds = %213
  %226 = load ptr, ptr %8, align 4
  %227 = getelementptr i8, ptr %226, i32 23380
  %228 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %227) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %229 = and i32 %228, 16777216
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %242, label %231

231:                                              ; preds = %235, %225
  %232 = phi i32 [ %233, %235 ], [ 2000, %225 ]
  %233 = add nsw i32 %232, -1
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %242, label %235

235:                                              ; preds = %231
  %236 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %236(i32 noundef 10737400) #18
  %237 = load ptr, ptr %8, align 4
  %238 = getelementptr i8, ptr %237, i32 23380
  %239 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %238) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %240 = and i32 %239, 16777216
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %231

242:                                              ; preds = %235, %231, %225, %213
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %243 = load ptr, ptr %8, align 4
  %244 = getelementptr i8, ptr %243, i32 4012
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 %219) #18, !srcloc !12
  %245 = load ptr, ptr %8, align 4
  %246 = getelementptr i8, ptr %245, i32 23488
  %247 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %246) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %248 = or i32 %247, 4096
  %249 = load ptr, ptr %7, align 4
  %250 = getelementptr inbounds %struct.e1000_adapter, ptr %249, i32 0, i32 85
  %251 = load i32, ptr %250, align 4
  %252 = and i32 %251, 2048
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %271, label %254

254:                                              ; preds = %242
  %255 = load ptr, ptr %8, align 4
  %256 = getelementptr i8, ptr %255, i32 23380
  %257 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %256) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %258 = and i32 %257, 16777216
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %271, label %260

260:                                              ; preds = %264, %254
  %261 = phi i32 [ %262, %264 ], [ 2000, %254 ]
  %262 = add nsw i32 %261, -1
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %271, label %264

264:                                              ; preds = %260
  %265 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %265(i32 noundef 10737400) #18
  %266 = load ptr, ptr %8, align 4
  %267 = getelementptr i8, ptr %266, i32 23380
  %268 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %267) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %269 = and i32 %268, 16777216
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %260

271:                                              ; preds = %264, %260, %254, %242
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %272 = load ptr, ptr %8, align 4
  %273 = getelementptr i8, ptr %272, i32 23488
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %273, i32 %248) #18, !srcloc !12
  %274 = load ptr, ptr %8, align 4
  %275 = getelementptr i8, ptr %274, i32 23476
  %276 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %275) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %277 = and i32 %276, -268435457
  %278 = load ptr, ptr %7, align 4
  %279 = getelementptr inbounds %struct.e1000_adapter, ptr %278, i32 0, i32 85
  %280 = load i32, ptr %279, align 4
  %281 = and i32 %280, 2048
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %300, label %283

283:                                              ; preds = %271
  %284 = load ptr, ptr %8, align 4
  %285 = getelementptr i8, ptr %284, i32 23380
  %286 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %285) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %287 = and i32 %286, 16777216
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %300, label %289

289:                                              ; preds = %293, %283
  %290 = phi i32 [ %291, %293 ], [ 2000, %283 ]
  %291 = add nsw i32 %290, -1
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %300, label %293

293:                                              ; preds = %289
  %294 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %294(i32 noundef 10737400) #18
  %295 = load ptr, ptr %8, align 4
  %296 = getelementptr i8, ptr %295, i32 23380
  %297 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %296) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %298 = and i32 %297, 16777216
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %289

300:                                              ; preds = %293, %289, %283, %271
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %301 = load ptr, ptr %8, align 4
  %302 = getelementptr i8, ptr %301, i32 23476
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %302, i32 %277) #18, !srcloc !12
  %303 = load ptr, ptr %8, align 4
  %304 = getelementptr i8, ptr %303, i32 16
  %305 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %304) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %306 = or i32 %305, -2147483648
  %307 = load ptr, ptr %7, align 4
  %308 = getelementptr inbounds %struct.e1000_adapter, ptr %307, i32 0, i32 85
  %309 = load i32, ptr %308, align 4
  %310 = and i32 %309, 2048
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %329, label %312

312:                                              ; preds = %300
  %313 = load ptr, ptr %8, align 4
  %314 = getelementptr i8, ptr %313, i32 23380
  %315 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %314) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %316 = and i32 %315, 16777216
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %329, label %318

318:                                              ; preds = %322, %312
  %319 = phi i32 [ %320, %322 ], [ 2000, %312 ]
  %320 = add nsw i32 %319, -1
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %329, label %322

322:                                              ; preds = %318
  %323 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %323(i32 noundef 10737400) #18
  %324 = load ptr, ptr %8, align 4
  %325 = getelementptr i8, ptr %324, i32 23380
  %326 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %325) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %327 = and i32 %326, 16777216
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %318

329:                                              ; preds = %322, %318, %312, %300
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %330 = load ptr, ptr %8, align 4
  %331 = getelementptr i8, ptr %330, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %331, i32 %306) #18, !srcloc !12
  %332 = load ptr, ptr %8, align 4
  %333 = getelementptr i8, ptr %332, i32 23472
  %334 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %333) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %335 = or i32 %334, 512
  %336 = load ptr, ptr %7, align 4
  %337 = getelementptr inbounds %struct.e1000_adapter, ptr %336, i32 0, i32 85
  %338 = load i32, ptr %337, align 4
  %339 = and i32 %338, 2048
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %358, label %341

341:                                              ; preds = %329
  %342 = load ptr, ptr %8, align 4
  %343 = getelementptr i8, ptr %342, i32 23380
  %344 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %343) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %345 = and i32 %344, 16777216
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %358, label %347

347:                                              ; preds = %351, %341
  %348 = phi i32 [ %349, %351 ], [ 2000, %341 ]
  %349 = add nsw i32 %348, -1
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %358, label %351

351:                                              ; preds = %347
  %352 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %352(i32 noundef 10737400) #18
  %353 = load ptr, ptr %8, align 4
  %354 = getelementptr i8, ptr %353, i32 23380
  %355 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %354) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %356 = and i32 %355, 16777216
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %347

358:                                              ; preds = %351, %347, %341, %329
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %359 = load ptr, ptr %8, align 4
  %360 = getelementptr i8, ptr %359, i32 23472
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %360, i32 %335) #18, !srcloc !12
  %361 = load ptr, ptr %8, align 4
  %362 = getelementptr i8, ptr %361, i32 24
  %363 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %362) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %364 = or i32 %363, 524288
  %365 = load ptr, ptr %7, align 4
  %366 = getelementptr inbounds %struct.e1000_adapter, ptr %365, i32 0, i32 85
  %367 = load i32, ptr %366, align 4
  %368 = and i32 %367, 2048
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %387, label %370

370:                                              ; preds = %358
  %371 = load ptr, ptr %8, align 4
  %372 = getelementptr i8, ptr %371, i32 23380
  %373 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %372) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %374 = and i32 %373, 16777216
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %387, label %376

376:                                              ; preds = %380, %370
  %377 = phi i32 [ %378, %380 ], [ 2000, %370 ]
  %378 = add nsw i32 %377, -1
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %387, label %380

380:                                              ; preds = %376
  %381 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %381(i32 noundef 10737400) #18
  %382 = load ptr, ptr %8, align 4
  %383 = getelementptr i8, ptr %382, i32 23380
  %384 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %383) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %385 = and i32 %384, 16777216
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %376

387:                                              ; preds = %380, %376, %370, %358
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %388 = load ptr, ptr %8, align 4
  %389 = getelementptr i8, ptr %388, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %389, i32 %364) #18, !srcloc !12
  %390 = load ptr, ptr %8, align 4
  %391 = getelementptr i8, ptr %390, i32 20
  %392 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %391) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %393 = or i32 %392, 128
  %394 = load ptr, ptr %7, align 4
  %395 = getelementptr inbounds %struct.e1000_adapter, ptr %394, i32 0, i32 85
  %396 = load i32, ptr %395, align 4
  %397 = and i32 %396, 2048
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %416, label %399

399:                                              ; preds = %387
  %400 = load ptr, ptr %8, align 4
  %401 = getelementptr i8, ptr %400, i32 23380
  %402 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %401) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %403 = and i32 %402, 16777216
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %416, label %405

405:                                              ; preds = %409, %399
  %406 = phi i32 [ %407, %409 ], [ 2000, %399 ]
  %407 = add nsw i32 %406, -1
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %416, label %409

409:                                              ; preds = %405
  %410 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %410(i32 noundef 10737400) #18
  %411 = load ptr, ptr %8, align 4
  %412 = getelementptr i8, ptr %411, i32 23380
  %413 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %412) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %414 = and i32 %413, 16777216
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %405

416:                                              ; preds = %409, %405, %399, %387
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %417 = load ptr, ptr %8, align 4
  %418 = getelementptr i8, ptr %417, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %418, i32 %393) #18, !srcloc !12
  br label %419

419:                                              ; preds = %416, %98
  %420 = load ptr, ptr %8, align 4
  %421 = getelementptr i8, ptr %420, i32 228
  %422 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %421) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %423 = and i32 %422, 2147483646
  %424 = or i32 %423, -2147483648
  %425 = load ptr, ptr %7, align 4
  %426 = getelementptr inbounds %struct.e1000_adapter, ptr %425, i32 0, i32 85
  %427 = load i32, ptr %426, align 4
  %428 = and i32 %427, 2048
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %447, label %430

430:                                              ; preds = %419
  %431 = load ptr, ptr %8, align 4
  %432 = getelementptr i8, ptr %431, i32 23380
  %433 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %432) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %434 = and i32 %433, 16777216
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %447, label %436

436:                                              ; preds = %440, %430
  %437 = phi i32 [ %438, %440 ], [ 2000, %430 ]
  %438 = add nsw i32 %437, -1
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %447, label %440

440:                                              ; preds = %436
  %441 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %441(i32 noundef 10737400) #18
  %442 = load ptr, ptr %8, align 4
  %443 = getelementptr i8, ptr %442, i32 23380
  %444 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %443) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %445 = and i32 %444, 16777216
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %436

447:                                              ; preds = %440, %436, %430, %419
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %448 = load ptr, ptr %8, align 4
  %449 = getelementptr i8, ptr %448, i32 228
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %449, i32 %424) #18, !srcloc !12
  %450 = load ptr, ptr %8, align 4
  %451 = getelementptr i8, ptr %450, i32 24
  %452 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %451) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %453 = or i32 %452, 8
  %454 = load ptr, ptr %7, align 4
  %455 = getelementptr inbounds %struct.e1000_adapter, ptr %454, i32 0, i32 85
  %456 = load i32, ptr %455, align 4
  %457 = and i32 %456, 2048
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %476, label %459

459:                                              ; preds = %447
  %460 = load ptr, ptr %8, align 4
  %461 = getelementptr i8, ptr %460, i32 23380
  %462 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %461) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %463 = and i32 %462, 16777216
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %476, label %465

465:                                              ; preds = %469, %459
  %466 = phi i32 [ %467, %469 ], [ 2000, %459 ]
  %467 = add nsw i32 %466, -1
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %476, label %469

469:                                              ; preds = %465
  %470 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %470(i32 noundef 10737400) #18
  %471 = load ptr, ptr %8, align 4
  %472 = getelementptr i8, ptr %471, i32 23380
  %473 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %472) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %474 = and i32 %473, 16777216
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %465

476:                                              ; preds = %469, %465, %459, %447
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %477 = load ptr, ptr %8, align 4
  %478 = getelementptr i8, ptr %477, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %478, i32 %453) #18, !srcloc !12
  %479 = load ptr, ptr %8, align 4
  %480 = getelementptr i8, ptr %479, i32 13328
  %481 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %480) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %509, label %483

483:                                              ; preds = %476
  %484 = load ptr, ptr %7, align 4
  %485 = getelementptr inbounds %struct.e1000_adapter, ptr %484, i32 0, i32 85
  %486 = load i32, ptr %485, align 4
  %487 = and i32 %486, 2048
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %506, label %489

489:                                              ; preds = %483
  %490 = load ptr, ptr %8, align 4
  %491 = getelementptr i8, ptr %490, i32 23380
  %492 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %491) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %493 = and i32 %492, 16777216
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %506, label %495

495:                                              ; preds = %499, %489
  %496 = phi i32 [ %497, %499 ], [ 2000, %489 ]
  %497 = add nsw i32 %496, -1
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %506, label %499

499:                                              ; preds = %495
  %500 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %500(i32 noundef 10737400) #18
  %501 = load ptr, ptr %8, align 4
  %502 = getelementptr i8, ptr %501, i32 23380
  %503 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %502) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %504 = and i32 %503, 16777216
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %495

506:                                              ; preds = %499, %495, %489, %483
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %507 = load ptr, ptr %8, align 4
  %508 = getelementptr i8, ptr %507, i32 13328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %508, i32 0) #18, !srcloc !12
  br label %509

509:                                              ; preds = %506, %476
  %510 = load ptr, ptr %8, align 4
  %511 = getelementptr i8, ptr %510, i32 13336
  %512 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %511) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %540, label %514

514:                                              ; preds = %509
  %515 = load ptr, ptr %7, align 4
  %516 = getelementptr inbounds %struct.e1000_adapter, ptr %515, i32 0, i32 85
  %517 = load i32, ptr %516, align 4
  %518 = and i32 %517, 2048
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %537, label %520

520:                                              ; preds = %514
  %521 = load ptr, ptr %8, align 4
  %522 = getelementptr i8, ptr %521, i32 23380
  %523 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %522) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %524 = and i32 %523, 16777216
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %537, label %526

526:                                              ; preds = %530, %520
  %527 = phi i32 [ %528, %530 ], [ 2000, %520 ]
  %528 = add nsw i32 %527, -1
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %537, label %530

530:                                              ; preds = %526
  %531 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %531(i32 noundef 10737400) #18
  %532 = load ptr, ptr %8, align 4
  %533 = getelementptr i8, ptr %532, i32 23380
  %534 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %533) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %535 = and i32 %534, 16777216
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %537, label %526

537:                                              ; preds = %530, %526, %520, %514
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %538 = load ptr, ptr %8, align 4
  %539 = getelementptr i8, ptr %538, i32 13336
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %539, i32 0) #18, !srcloc !12
  br label %540

540:                                              ; preds = %537, %509
  %541 = load ptr, ptr %8, align 4
  %542 = getelementptr i8, ptr %541, i32 13344
  %543 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %542) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %571, label %545

545:                                              ; preds = %540
  %546 = load ptr, ptr %7, align 4
  %547 = getelementptr inbounds %struct.e1000_adapter, ptr %546, i32 0, i32 85
  %548 = load i32, ptr %547, align 4
  %549 = and i32 %548, 2048
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %568, label %551

551:                                              ; preds = %545
  %552 = load ptr, ptr %8, align 4
  %553 = getelementptr i8, ptr %552, i32 23380
  %554 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %553) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %555 = and i32 %554, 16777216
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %568, label %557

557:                                              ; preds = %561, %551
  %558 = phi i32 [ %559, %561 ], [ 2000, %551 ]
  %559 = add nsw i32 %558, -1
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %568, label %561

561:                                              ; preds = %557
  %562 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %562(i32 noundef 10737400) #18
  %563 = load ptr, ptr %8, align 4
  %564 = getelementptr i8, ptr %563, i32 23380
  %565 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %564) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %566 = and i32 %565, 16777216
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %557

568:                                              ; preds = %561, %557, %551, %545
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %569 = load ptr, ptr %8, align 4
  %570 = getelementptr i8, ptr %569, i32 13344
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %570, i32 0) #18, !srcloc !12
  br label %571

571:                                              ; preds = %568, %540
  %572 = load ptr, ptr %8, align 4
  %573 = getelementptr i8, ptr %572, i32 13352
  %574 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %573) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %602, label %576

576:                                              ; preds = %571
  %577 = load ptr, ptr %7, align 4
  %578 = getelementptr inbounds %struct.e1000_adapter, ptr %577, i32 0, i32 85
  %579 = load i32, ptr %578, align 4
  %580 = and i32 %579, 2048
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %599, label %582

582:                                              ; preds = %576
  %583 = load ptr, ptr %8, align 4
  %584 = getelementptr i8, ptr %583, i32 23380
  %585 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %584) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %586 = and i32 %585, 16777216
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %599, label %588

588:                                              ; preds = %592, %582
  %589 = phi i32 [ %590, %592 ], [ 2000, %582 ]
  %590 = add nsw i32 %589, -1
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %599, label %592

592:                                              ; preds = %588
  %593 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %593(i32 noundef 10737400) #18
  %594 = load ptr, ptr %8, align 4
  %595 = getelementptr i8, ptr %594, i32 23380
  %596 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %595) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %597 = and i32 %596, 16777216
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %599, label %588

599:                                              ; preds = %592, %588, %582, %576
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %600 = load ptr, ptr %8, align 4
  %601 = getelementptr i8, ptr %600, i32 13352
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %601, i32 0) #18, !srcloc !12
  br label %602

602:                                              ; preds = %599, %571
  %603 = load ptr, ptr %8, align 4
  %604 = getelementptr i8, ptr %603, i32 13360
  %605 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %604) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %633, label %607

607:                                              ; preds = %602
  %608 = load ptr, ptr %7, align 4
  %609 = getelementptr inbounds %struct.e1000_adapter, ptr %608, i32 0, i32 85
  %610 = load i32, ptr %609, align 4
  %611 = and i32 %610, 2048
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %630, label %613

613:                                              ; preds = %607
  %614 = load ptr, ptr %8, align 4
  %615 = getelementptr i8, ptr %614, i32 23380
  %616 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %615) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %617 = and i32 %616, 16777216
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %630, label %619

619:                                              ; preds = %623, %613
  %620 = phi i32 [ %621, %623 ], [ 2000, %613 ]
  %621 = add nsw i32 %620, -1
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %630, label %623

623:                                              ; preds = %619
  %624 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %624(i32 noundef 10737400) #18
  %625 = load ptr, ptr %8, align 4
  %626 = getelementptr i8, ptr %625, i32 23380
  %627 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %626) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %628 = and i32 %627, 16777216
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %630, label %619

630:                                              ; preds = %623, %619, %613, %607
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %631 = load ptr, ptr %8, align 4
  %632 = getelementptr i8, ptr %631, i32 13360
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %632, i32 0) #18, !srcloc !12
  br label %633

633:                                              ; preds = %630, %602
  %634 = load ptr, ptr %8, align 4
  %635 = getelementptr i8, ptr %634, i32 9232
  %636 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %635) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %664, label %638

638:                                              ; preds = %633
  %639 = load ptr, ptr %7, align 4
  %640 = getelementptr inbounds %struct.e1000_adapter, ptr %639, i32 0, i32 85
  %641 = load i32, ptr %640, align 4
  %642 = and i32 %641, 2048
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %661, label %644

644:                                              ; preds = %638
  %645 = load ptr, ptr %8, align 4
  %646 = getelementptr i8, ptr %645, i32 23380
  %647 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %646) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %648 = and i32 %647, 16777216
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %661, label %650

650:                                              ; preds = %654, %644
  %651 = phi i32 [ %652, %654 ], [ 2000, %644 ]
  %652 = add nsw i32 %651, -1
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %661, label %654

654:                                              ; preds = %650
  %655 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %655(i32 noundef 10737400) #18
  %656 = load ptr, ptr %8, align 4
  %657 = getelementptr i8, ptr %656, i32 23380
  %658 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %657) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %659 = and i32 %658, 16777216
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %661, label %650

661:                                              ; preds = %654, %650, %644, %638
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %662 = load ptr, ptr %8, align 4
  %663 = getelementptr i8, ptr %662, i32 9232
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %663, i32 0) #18, !srcloc !12
  br label %664

664:                                              ; preds = %661, %633
  %665 = load ptr, ptr %8, align 4
  %666 = getelementptr i8, ptr %665, i32 9240
  %667 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %666) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %695, label %669

669:                                              ; preds = %664
  %670 = load ptr, ptr %7, align 4
  %671 = getelementptr inbounds %struct.e1000_adapter, ptr %670, i32 0, i32 85
  %672 = load i32, ptr %671, align 4
  %673 = and i32 %672, 2048
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %692, label %675

675:                                              ; preds = %669
  %676 = load ptr, ptr %8, align 4
  %677 = getelementptr i8, ptr %676, i32 23380
  %678 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %677) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %679 = and i32 %678, 16777216
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %692, label %681

681:                                              ; preds = %685, %675
  %682 = phi i32 [ %683, %685 ], [ 2000, %675 ]
  %683 = add nsw i32 %682, -1
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %692, label %685

685:                                              ; preds = %681
  %686 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %686(i32 noundef 10737400) #18
  %687 = load ptr, ptr %8, align 4
  %688 = getelementptr i8, ptr %687, i32 23380
  %689 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %688) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %690 = and i32 %689, 16777216
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %692, label %681

692:                                              ; preds = %685, %681, %675, %669
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %693 = load ptr, ptr %8, align 4
  %694 = getelementptr i8, ptr %693, i32 9240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %694, i32 0) #18, !srcloc !12
  br label %695

695:                                              ; preds = %692, %664
  %696 = load ptr, ptr %8, align 4
  %697 = getelementptr i8, ptr %696, i32 9248
  %698 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %697) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %726, label %700

700:                                              ; preds = %695
  %701 = load ptr, ptr %7, align 4
  %702 = getelementptr inbounds %struct.e1000_adapter, ptr %701, i32 0, i32 85
  %703 = load i32, ptr %702, align 4
  %704 = and i32 %703, 2048
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %723, label %706

706:                                              ; preds = %700
  %707 = load ptr, ptr %8, align 4
  %708 = getelementptr i8, ptr %707, i32 23380
  %709 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %708) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %710 = and i32 %709, 16777216
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %723, label %712

712:                                              ; preds = %716, %706
  %713 = phi i32 [ %714, %716 ], [ 2000, %706 ]
  %714 = add nsw i32 %713, -1
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %723, label %716

716:                                              ; preds = %712
  %717 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %717(i32 noundef 10737400) #18
  %718 = load ptr, ptr %8, align 4
  %719 = getelementptr i8, ptr %718, i32 23380
  %720 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %719) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %721 = and i32 %720, 16777216
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %723, label %712

723:                                              ; preds = %716, %712, %706, %700
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %724 = load ptr, ptr %8, align 4
  %725 = getelementptr i8, ptr %724, i32 9248
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %725, i32 0) #18, !srcloc !12
  br label %726

726:                                              ; preds = %723, %695
  %727 = load ptr, ptr %8, align 4
  %728 = getelementptr i8, ptr %727, i32 9256
  %729 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %728) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %757, label %731

731:                                              ; preds = %726
  %732 = load ptr, ptr %7, align 4
  %733 = getelementptr inbounds %struct.e1000_adapter, ptr %732, i32 0, i32 85
  %734 = load i32, ptr %733, align 4
  %735 = and i32 %734, 2048
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %754, label %737

737:                                              ; preds = %731
  %738 = load ptr, ptr %8, align 4
  %739 = getelementptr i8, ptr %738, i32 23380
  %740 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %739) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %741 = and i32 %740, 16777216
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %754, label %743

743:                                              ; preds = %747, %737
  %744 = phi i32 [ %745, %747 ], [ 2000, %737 ]
  %745 = add nsw i32 %744, -1
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %754, label %747

747:                                              ; preds = %743
  %748 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %748(i32 noundef 10737400) #18
  %749 = load ptr, ptr %8, align 4
  %750 = getelementptr i8, ptr %749, i32 23380
  %751 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %750) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %752 = and i32 %751, 16777216
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %754, label %743

754:                                              ; preds = %747, %743, %737, %731
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %755 = load ptr, ptr %8, align 4
  %756 = getelementptr i8, ptr %755, i32 9256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %756, i32 0) #18, !srcloc !12
  br label %757

757:                                              ; preds = %754, %726
  %758 = load ptr, ptr %8, align 4
  %759 = getelementptr i8, ptr %758, i32 9264
  %760 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %759) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %788, label %762

762:                                              ; preds = %757
  %763 = load ptr, ptr %7, align 4
  %764 = getelementptr inbounds %struct.e1000_adapter, ptr %763, i32 0, i32 85
  %765 = load i32, ptr %764, align 4
  %766 = and i32 %765, 2048
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %785, label %768

768:                                              ; preds = %762
  %769 = load ptr, ptr %8, align 4
  %770 = getelementptr i8, ptr %769, i32 23380
  %771 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %770) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %772 = and i32 %771, 16777216
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %785, label %774

774:                                              ; preds = %778, %768
  %775 = phi i32 [ %776, %778 ], [ 2000, %768 ]
  %776 = add nsw i32 %775, -1
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %785, label %778

778:                                              ; preds = %774
  %779 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %779(i32 noundef 10737400) #18
  %780 = load ptr, ptr %8, align 4
  %781 = getelementptr i8, ptr %780, i32 23380
  %782 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %781) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %783 = and i32 %782, 16777216
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %785, label %774

785:                                              ; preds = %778, %774, %768, %762
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %786 = load ptr, ptr %8, align 4
  %787 = getelementptr i8, ptr %786, i32 9264
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %787, i32 0) #18, !srcloc !12
  br label %788

788:                                              ; preds = %785, %757
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #18
  br label %789

789:                                              ; preds = %788, %55, %53
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #18
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000e_pm_resume(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = getelementptr i8, ptr %0, i32 -136
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 2532
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #18
  store i16 0, ptr %3, align 2, !annotation !19
  %8 = getelementptr i8, ptr %6, i32 12588
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 32768
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %426, label %12

12:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #18
  store i16 0, ptr %2, align 2, !annotation !19
  %13 = getelementptr i8, ptr %6, i32 2536
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 23380
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %17 = and i32 %16, 32768
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %83, label %19

19:                                               ; preds = %12
  %20 = getelementptr i8, ptr %6, i32 2648
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, 14
  br i1 %22, label %23, label %83

23:                                               ; preds = %19
  %24 = load ptr, ptr %13, align 4
  %25 = getelementptr i8, ptr %24, i32 23376
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %27 = and i32 %26, -4
  %28 = or i32 %27, 2
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr inbounds %struct.e1000_adapter, ptr %29, i32 0, i32 85
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 2048
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %23
  %35 = load ptr, ptr %13, align 4
  %36 = getelementptr i8, ptr %35, i32 23380
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %38 = and i32 %37, 16777216
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %44, %34
  %41 = phi i32 [ %42, %44 ], [ 2000, %34 ]
  %42 = add nsw i32 %41, -1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 10737400) #18
  %46 = load ptr, ptr %13, align 4
  %47 = getelementptr i8, ptr %46, i32 23380
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %49 = and i32 %48, 16777216
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %40

51:                                               ; preds = %44, %40, %34, %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %52 = load ptr, ptr %13, align 4
  %53 = getelementptr i8, ptr %52, i32 23376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %28) #18, !srcloc !12
  %54 = load ptr, ptr %13, align 4
  %55 = getelementptr i8, ptr %54, i32 23384
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %366

59:                                               ; preds = %68, %51
  %60 = phi i32 [ %69, %68 ], [ 0, %51 ]
  %61 = phi i8 [ %66, %68 ], [ 0, %51 ]
  %62 = icmp ugt i32 %60, 100
  %63 = and i8 %61, 1
  %64 = icmp eq i8 %63, 0
  %65 = select i1 %62, i1 %64, i1 false
  %66 = select i1 %65, i8 1, i8 %61
  %67 = icmp eq i32 %60, 250
  br i1 %67, label %75, label %68

68:                                               ; preds = %59
  %69 = add nuw nsw i32 %60, 1
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #18
  %70 = load ptr, ptr %13, align 4
  %71 = getelementptr i8, ptr %70, i32 23384
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %59, label %75

75:                                               ; preds = %68, %59
  %76 = phi i32 [ %69, %68 ], [ 251, %59 ]
  %77 = and i8 %66, 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %366, label %79

79:                                               ; preds = %75
  %80 = getelementptr i8, ptr %6, i32 2524
  %81 = load ptr, ptr %80, align 4
  %82 = mul i32 %76, 10
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %81, ptr noundef nonnull @.str.150, i32 noundef %82) #20
  br label %366

83:                                               ; preds = %19, %12
  %84 = load ptr, ptr %13, align 4
  %85 = getelementptr i8, ptr %84, i32 228
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %87 = and i32 %86, -4194305
  %88 = load ptr, ptr %7, align 4
  %89 = getelementptr inbounds %struct.e1000_adapter, ptr %88, i32 0, i32 85
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, 2048
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %110, label %93

93:                                               ; preds = %83
  %94 = load ptr, ptr %13, align 4
  %95 = getelementptr i8, ptr %94, i32 23380
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %97 = and i32 %96, 16777216
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %103, %93
  %100 = phi i32 [ %101, %103 ], [ 2000, %93 ]
  %101 = add nsw i32 %100, -1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 10737400) #18
  %105 = load ptr, ptr %13, align 4
  %106 = getelementptr i8, ptr %105, i32 23380
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %108 = and i32 %107, 16777216
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %99

110:                                              ; preds = %103, %99, %93, %83
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %111 = load ptr, ptr %13, align 4
  %112 = getelementptr i8, ptr %111, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %87) #18, !srcloc !12
  %113 = load ptr, ptr %13, align 4
  %114 = getelementptr i8, ptr %113, i32 23472
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %116 = and i32 %115, -513
  %117 = load ptr, ptr %7, align 4
  %118 = getelementptr inbounds %struct.e1000_adapter, ptr %117, i32 0, i32 85
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, 2048
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %139, label %122

122:                                              ; preds = %110
  %123 = load ptr, ptr %13, align 4
  %124 = getelementptr i8, ptr %123, i32 23380
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %126 = and i32 %125, 16777216
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %139, label %128

128:                                              ; preds = %132, %122
  %129 = phi i32 [ %130, %132 ], [ 2000, %122 ]
  %130 = add nsw i32 %129, -1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %128
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %133(i32 noundef 10737400) #18
  %134 = load ptr, ptr %13, align 4
  %135 = getelementptr i8, ptr %134, i32 23380
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %137 = and i32 %136, 16777216
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %128

139:                                              ; preds = %132, %128, %122, %110
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %140 = load ptr, ptr %13, align 4
  %141 = getelementptr i8, ptr %140, i32 23472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %116) #18, !srcloc !12
  %142 = load ptr, ptr %13, align 4
  %143 = getelementptr i8, ptr %142, i32 16
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %145 = and i32 %144, 2147483647
  %146 = load ptr, ptr %7, align 4
  %147 = getelementptr inbounds %struct.e1000_adapter, ptr %146, i32 0, i32 85
  %148 = load i32, ptr %147, align 4
  %149 = and i32 %148, 2048
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %168, label %151

151:                                              ; preds = %139
  %152 = load ptr, ptr %13, align 4
  %153 = getelementptr i8, ptr %152, i32 23380
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %155 = and i32 %154, 16777216
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %168, label %157

157:                                              ; preds = %161, %151
  %158 = phi i32 [ %159, %161 ], [ 2000, %151 ]
  %159 = add nsw i32 %158, -1
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %157
  %162 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %162(i32 noundef 10737400) #18
  %163 = load ptr, ptr %13, align 4
  %164 = getelementptr i8, ptr %163, i32 23380
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %166 = and i32 %165, 16777216
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %157

168:                                              ; preds = %161, %157, %151, %139
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %169 = load ptr, ptr %13, align 4
  %170 = getelementptr i8, ptr %169, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %145) #18, !srcloc !12
  %171 = load ptr, ptr %13, align 4
  %172 = getelementptr i8, ptr %171, i32 23476
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %172) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %174 = or i32 %173, 268435456
  %175 = load ptr, ptr %7, align 4
  %176 = getelementptr inbounds %struct.e1000_adapter, ptr %175, i32 0, i32 85
  %177 = load i32, ptr %176, align 4
  %178 = and i32 %177, 2048
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %197, label %180

180:                                              ; preds = %168
  %181 = load ptr, ptr %13, align 4
  %182 = getelementptr i8, ptr %181, i32 23380
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %182) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %184 = and i32 %183, 16777216
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %197, label %186

186:                                              ; preds = %190, %180
  %187 = phi i32 [ %188, %190 ], [ 2000, %180 ]
  %188 = add nsw i32 %187, -1
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %197, label %190

190:                                              ; preds = %186
  %191 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %191(i32 noundef 10737400) #18
  %192 = load ptr, ptr %13, align 4
  %193 = getelementptr i8, ptr %192, i32 23380
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %193) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %195 = and i32 %194, 16777216
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %186

197:                                              ; preds = %190, %186, %180, %168
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %198 = load ptr, ptr %13, align 4
  %199 = getelementptr i8, ptr %198, i32 23476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 %174) #18, !srcloc !12
  %200 = load ptr, ptr %13, align 4
  %201 = getelementptr i8, ptr %200, i32 23488
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %201) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %203 = and i32 %202, -4097
  %204 = load ptr, ptr %7, align 4
  %205 = getelementptr inbounds %struct.e1000_adapter, ptr %204, i32 0, i32 85
  %206 = load i32, ptr %205, align 4
  %207 = and i32 %206, 2048
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %226, label %209

209:                                              ; preds = %197
  %210 = load ptr, ptr %13, align 4
  %211 = getelementptr i8, ptr %210, i32 23380
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %211) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %213 = and i32 %212, 16777216
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %226, label %215

215:                                              ; preds = %219, %209
  %216 = phi i32 [ %217, %219 ], [ 2000, %209 ]
  %217 = add nsw i32 %216, -1
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %226, label %219

219:                                              ; preds = %215
  %220 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %220(i32 noundef 10737400) #18
  %221 = load ptr, ptr %13, align 4
  %222 = getelementptr i8, ptr %221, i32 23380
  %223 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %222) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %224 = and i32 %223, 16777216
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %215

226:                                              ; preds = %219, %215, %209, %197
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %227 = load ptr, ptr %13, align 4
  %228 = getelementptr i8, ptr %227, i32 23488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 %203) #18, !srcloc !12
  %229 = load ptr, ptr %13, align 4
  %230 = getelementptr i8, ptr %229, i32 4012
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %230) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %232 = and i32 %231, -5
  %233 = load ptr, ptr %7, align 4
  %234 = getelementptr inbounds %struct.e1000_adapter, ptr %233, i32 0, i32 85
  %235 = load i32, ptr %234, align 4
  %236 = and i32 %235, 2048
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %255, label %238

238:                                              ; preds = %226
  %239 = load ptr, ptr %13, align 4
  %240 = getelementptr i8, ptr %239, i32 23380
  %241 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %240) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %242 = and i32 %241, 16777216
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %255, label %244

244:                                              ; preds = %248, %238
  %245 = phi i32 [ %246, %248 ], [ 2000, %238 ]
  %246 = add nsw i32 %245, -1
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %255, label %248

248:                                              ; preds = %244
  %249 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %249(i32 noundef 10737400) #18
  %250 = load ptr, ptr %13, align 4
  %251 = getelementptr i8, ptr %250, i32 23380
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %251) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %253 = and i32 %252, 16777216
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %244

255:                                              ; preds = %248, %244, %238, %226
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %256 = load ptr, ptr %13, align 4
  %257 = getelementptr i8, ptr %256, i32 4012
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %257, i32 %232) #18, !srcloc !12
  %258 = load ptr, ptr %13, align 4
  %259 = getelementptr i8, ptr %258, i32 24
  %260 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %259) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %261 = and i32 %260, -524289
  %262 = load ptr, ptr %7, align 4
  %263 = getelementptr inbounds %struct.e1000_adapter, ptr %262, i32 0, i32 85
  %264 = load i32, ptr %263, align 4
  %265 = and i32 %264, 2048
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %284, label %267

267:                                              ; preds = %255
  %268 = load ptr, ptr %13, align 4
  %269 = getelementptr i8, ptr %268, i32 23380
  %270 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %269) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %271 = and i32 %270, 16777216
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %284, label %273

273:                                              ; preds = %277, %267
  %274 = phi i32 [ %275, %277 ], [ 2000, %267 ]
  %275 = add nsw i32 %274, -1
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %284, label %277

277:                                              ; preds = %273
  %278 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %278(i32 noundef 10737400) #18
  %279 = load ptr, ptr %13, align 4
  %280 = getelementptr i8, ptr %279, i32 23380
  %281 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %280) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %282 = and i32 %281, 16777216
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %273

284:                                              ; preds = %277, %273, %267, %255
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %285 = load ptr, ptr %13, align 4
  %286 = getelementptr i8, ptr %285, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %286, i32 %261) #18, !srcloc !12
  %287 = load ptr, ptr %13, align 4
  %288 = getelementptr i8, ptr %287, i32 20
  %289 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %288) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %290 = and i32 %289, -129
  %291 = load ptr, ptr %7, align 4
  %292 = getelementptr inbounds %struct.e1000_adapter, ptr %291, i32 0, i32 85
  %293 = load i32, ptr %292, align 4
  %294 = and i32 %293, 2048
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %313, label %296

296:                                              ; preds = %284
  %297 = load ptr, ptr %13, align 4
  %298 = getelementptr i8, ptr %297, i32 23380
  %299 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %298) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %300 = and i32 %299, 16777216
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %313, label %302

302:                                              ; preds = %306, %296
  %303 = phi i32 [ %304, %306 ], [ 2000, %296 ]
  %304 = add nsw i32 %303, -1
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %313, label %306

306:                                              ; preds = %302
  %307 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %307(i32 noundef 10737400) #18
  %308 = load ptr, ptr %13, align 4
  %309 = getelementptr i8, ptr %308, i32 23380
  %310 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %309) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %311 = and i32 %310, 16777216
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %302

313:                                              ; preds = %306, %302, %296, %284
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %314 = load ptr, ptr %13, align 4
  %315 = getelementptr i8, ptr %314, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %315, i32 %290) #18, !srcloc !12
  %316 = getelementptr i8, ptr %6, i32 3284
  %317 = load ptr, ptr %316, align 4
  %318 = call i32 %317(ptr noundef %7, i32 noundef 24657, ptr noundef nonnull %2) #18
  %319 = load i16, ptr %2, align 2
  %320 = and i16 %319, -1537
  %321 = or i16 %320, 512
  store i16 %321, ptr %2, align 2
  %322 = getelementptr i8, ptr %6, i32 3312
  %323 = load ptr, ptr %322, align 4
  %324 = call i32 %323(ptr noundef %7, i32 noundef 24657, i16 noundef zeroext %321) #18
  %325 = load ptr, ptr %316, align 4
  %326 = call i32 %325(ptr noundef %7, i32 noundef 24733, ptr noundef nonnull %2) #18
  %327 = load i16, ptr %2, align 2
  %328 = and i16 %327, -33
  store i16 %328, ptr %2, align 2
  %329 = load ptr, ptr %322, align 4
  %330 = call i32 %329(ptr noundef %7, i32 noundef 24733, i16 noundef zeroext %328) #18
  %331 = load ptr, ptr %316, align 4
  %332 = call i32 %331(ptr noundef %7, i32 noundef 24631, ptr noundef nonnull %2) #18
  %333 = load i16, ptr %2, align 2
  %334 = and i16 %333, -2
  store i16 %334, ptr %2, align 2
  %335 = load ptr, ptr %322, align 4
  %336 = call i32 %335(ptr noundef %7, i32 noundef 24631, i16 noundef zeroext %334) #18
  %337 = load ptr, ptr %13, align 4
  %338 = getelementptr i8, ptr %337, i32 24
  %339 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %338) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %340 = and i32 %339, -2049
  %341 = load ptr, ptr %7, align 4
  %342 = getelementptr inbounds %struct.e1000_adapter, ptr %341, i32 0, i32 85
  %343 = load i32, ptr %342, align 4
  %344 = and i32 %343, 2048
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %363, label %346

346:                                              ; preds = %313
  %347 = load ptr, ptr %13, align 4
  %348 = getelementptr i8, ptr %347, i32 23380
  %349 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %348) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %350 = and i32 %349, 16777216
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %363, label %352

352:                                              ; preds = %356, %346
  %353 = phi i32 [ %354, %356 ], [ 2000, %346 ]
  %354 = add nsw i32 %353, -1
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %363, label %356

356:                                              ; preds = %352
  %357 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %357(i32 noundef 10737400) #18
  %358 = load ptr, ptr %13, align 4
  %359 = getelementptr i8, ptr %358, i32 23380
  %360 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %359) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %361 = and i32 %360, 16777216
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %352

363:                                              ; preds = %356, %352, %346, %313
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %364 = load ptr, ptr %13, align 4
  %365 = getelementptr i8, ptr %364, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %365, i32 %340) #18, !srcloc !12
  br label %366

366:                                              ; preds = %363, %79, %75, %51
  %367 = load ptr, ptr %13, align 4
  %368 = getelementptr i8, ptr %367, i32 24
  %369 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %368) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %370 = and i32 %369, -9
  %371 = load ptr, ptr %7, align 4
  %372 = getelementptr inbounds %struct.e1000_adapter, ptr %371, i32 0, i32 85
  %373 = load i32, ptr %372, align 4
  %374 = and i32 %373, 2048
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %393, label %376

376:                                              ; preds = %366
  %377 = load ptr, ptr %13, align 4
  %378 = getelementptr i8, ptr %377, i32 23380
  %379 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %378) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %380 = and i32 %379, 16777216
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %393, label %382

382:                                              ; preds = %386, %376
  %383 = phi i32 [ %384, %386 ], [ 2000, %376 ]
  %384 = add nsw i32 %383, -1
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %393, label %386

386:                                              ; preds = %382
  %387 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %387(i32 noundef 10737400) #18
  %388 = load ptr, ptr %13, align 4
  %389 = getelementptr i8, ptr %388, i32 23380
  %390 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %389) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %391 = and i32 %390, 16777216
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %382

393:                                              ; preds = %386, %382, %376, %366
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %394 = load ptr, ptr %13, align 4
  %395 = getelementptr i8, ptr %394, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %395, i32 %370) #18, !srcloc !12
  %396 = load ptr, ptr %13, align 4
  %397 = getelementptr i8, ptr %396, i32 228
  %398 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %397) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %399 = load ptr, ptr %7, align 4
  %400 = getelementptr inbounds %struct.e1000_adapter, ptr %399, i32 0, i32 85
  %401 = load i32, ptr %400, align 4
  %402 = and i32 %401, 2048
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %421, label %404

404:                                              ; preds = %393
  %405 = load ptr, ptr %13, align 4
  %406 = getelementptr i8, ptr %405, i32 23380
  %407 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %406) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %408 = and i32 %407, 16777216
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %421, label %410

410:                                              ; preds = %414, %404
  %411 = phi i32 [ %412, %414 ], [ 2000, %404 ]
  %412 = add nsw i32 %411, -1
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %421, label %414

414:                                              ; preds = %410
  %415 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %415(i32 noundef 10737400) #18
  %416 = load ptr, ptr %13, align 4
  %417 = getelementptr i8, ptr %416, i32 23380
  %418 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %417) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %419 = and i32 %418, 16777216
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %410

421:                                              ; preds = %414, %410, %404, %393
  %422 = and i32 %398, 2147483646
  %423 = or i32 %422, 1
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  call void @arm_heavy_mb() #18
  %424 = load ptr, ptr %13, align 4
  %425 = getelementptr i8, ptr %424, i32 228
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %425, i32 %423) #18, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #18
  br label %426

426:                                              ; preds = %421, %1
  call fastcc void @__e1000_resume(ptr noundef %4)
  %427 = getelementptr i8, ptr %6, i32 2536
  %428 = load ptr, ptr %427, align 4
  %429 = getelementptr i8, ptr %428, i32 23380
  %430 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %429) #18, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %431 = and i32 %430, 32768
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %447, label %433

433:                                              ; preds = %426
  %434 = getelementptr i8, ptr %6, i32 2648
  %435 = load i32, ptr %434, align 4
  %436 = icmp ugt i32 %435, 14
  br i1 %436, label %437, label %447

437:                                              ; preds = %433
  %438 = getelementptr i8, ptr %6, i32 3284
  %439 = load ptr, ptr %438, align 4
  %440 = call i32 %439(ptr noundef %7, i32 noundef 24730, ptr noundef nonnull %3) #18
  %441 = load i16, ptr %3, align 2
  %442 = and i16 %441, -4097
  store i16 %442, ptr %3, align 2
  %443 = getelementptr i8, ptr %6, i32 3312
  %444 = load ptr, ptr %443, align 4
  %445 = call i32 %444(ptr noundef %7, i32 noundef 24730, i16 noundef zeroext %442) #18
  %446 = getelementptr i8, ptr %6, i32 3394
  store i8 0, ptr %446, align 2
  br label %447

447:                                              ; preds = %437, %433, %426
  %448 = call i32 @e1000e_pm_thaw(ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #18
  ret i32 %448
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000e_pm_runtime_suspend(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -136
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1408
  %6 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 14
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %4, i32 2032
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %15, %10
  %16 = phi i32 [ %17, %15 ], [ 25, %10 ]
  %17 = add nsw i32 %16, -1
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #18
  %18 = load volatile i32, ptr %11, align 4
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  %21 = icmp eq i32 %17, 0
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %23, label %15

23:                                               ; preds = %15, %10
  %24 = load volatile i32, ptr %11, align 4
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27, !prof !13

27:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 7097, i32 noundef 9, ptr noundef null) #18
  br label %28

28:                                               ; preds = %27, %23
  tail call void @e1000e_down(ptr noundef %5, i1 noundef zeroext false)
  br label %29

29:                                               ; preds = %28, %1
  %30 = tail call fastcc i32 @__e1000_shutdown(ptr noundef %2, i1 noundef zeroext true)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr i8, ptr %33, i32 1408
  tail call fastcc void @__e1000_resume(ptr noundef %2) #18
  %35 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 14
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  tail call fastcc void @e1000_configure(ptr noundef %34) #18
  %40 = getelementptr i8, ptr %33, i32 2032
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %40) #18
  %41 = getelementptr i8, ptr %33, i32 12552
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  tail call fastcc void @e1000_configure_msix(ptr noundef %34) #18
  br label %45

45:                                               ; preds = %44, %39
  tail call fastcc void @e1000_irq_enable(ptr noundef %34) #18
  tail call fastcc void @e1000e_trigger_lsc(ptr noundef %34) #18
  br label %46

46:                                               ; preds = %45, %32, %29
  %47 = phi i32 [ 0, %29 ], [ -16, %32 ], [ -16, %45 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000e_pm_runtime_resume(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -136
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1408
  tail call fastcc void @__e1000_resume(ptr noundef %2)
  %6 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 14
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  tail call fastcc void @e1000_configure(ptr noundef %5) #18
  %11 = getelementptr i8, ptr %4, i32 2032
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %11) #18
  %12 = getelementptr i8, ptr %4, i32 12552
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call fastcc void @e1000_configure_msix(ptr noundef %5) #18
  br label %16

16:                                               ; preds = %15, %10
  tail call fastcc void @e1000_irq_enable(ptr noundef %5) #18
  tail call fastcc void @e1000e_trigger_lsc(ptr noundef %5) #18
  br label %17

17:                                               ; preds = %16, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @e1000e_pm_runtime_idle(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 11680
  %5 = load i16, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 2532
  %7 = getelementptr i8, ptr %3, i32 3376
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %54 [
    i32 1, label %9
    i32 2, label %19
    i32 3, label %29
  ]

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %3, i32 3212
  %11 = load i8, ptr %10, align 4, !range !20
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %56, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %3, i32 2556
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %6) #18
  %17 = load i8, ptr %10, align 4, !range !20
  %18 = icmp eq i8 %17, 0
  br label %36

19:                                               ; preds = %1
  %20 = getelementptr i8, ptr %3, i32 2556
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %6) #18
  %23 = getelementptr i8, ptr %3, i32 2536
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %27 = and i32 %26, 2
  %28 = icmp ne i32 %27, 0
  br label %36

29:                                               ; preds = %1
  %30 = getelementptr i8, ptr %3, i32 2556
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef %6) #18
  %33 = getelementptr i8, ptr %3, i32 3214
  %34 = load i8, ptr %33, align 2, !range !20
  %35 = icmp ne i8 %34, 0
  br label %36

36:                                               ; preds = %29, %19, %13
  %37 = phi i1 [ %35, %29 ], [ %28, %19 ], [ %18, %13 ]
  %38 = phi i32 [ %32, %29 ], [ %22, %19 ], [ %16, %13 ]
  %39 = icmp eq i32 %38, -2
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %3, i32 3332
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 6
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %3, i32 2536
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %48 = and i32 %47, 64
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = getelementptr i8, ptr %3, i32 2524
  %52 = load ptr, ptr %51, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %52, ptr noundef nonnull @.str.128) #20
  br i1 %37, label %56, label %54

53:                                               ; preds = %44, %40, %36
  br i1 %37, label %56, label %54

54:                                               ; preds = %53, %50, %1
  store i16 %5, ptr %4, align 4
  %55 = tail call i32 @pm_schedule_suspend(ptr noundef %0, i32 noundef 5000) #18
  br label %56

56:                                               ; preds = %54, %53, %50, %9
  ret i32 -16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__e1000_resume(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1408
  %6 = getelementptr i8, ptr %4, i32 2532
  %7 = getelementptr i8, ptr %4, i32 12588
  %8 = load i32, ptr %7, align 4
  %9 = trunc i32 %8 to i16
  %10 = lshr i16 %9, 7
  %11 = and i16 %10, 1
  %12 = lshr i16 %9, 2
  %13 = and i16 %12, 2
  %14 = or i16 %13, %11
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call fastcc void @__e1000e_disable_aspm(ptr noundef %0, i16 noundef zeroext %14, i32 noundef 0) #18
  br label %17

17:                                               ; preds = %16, %1
  tail call void @pci_set_master(ptr noundef %0) #18
  %18 = getelementptr i8, ptr %4, i32 2648
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 9
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call void @e1000_resume_workarounds_pchlan(ptr noundef %6) #18
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr i8, ptr %4, i32 3324
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void %24(ptr noundef %6) #18
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr i8, ptr %4, i32 2604
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %6) #18
  %31 = load i32, ptr %7, align 4
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %65, label %34

34:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #18
  store i16 0, ptr %2, align 2, !annotation !19
  %35 = getelementptr i8, ptr %4, i32 3284
  %36 = load ptr, ptr %35, align 4
  %37 = call i32 %36(ptr noundef %6, i32 noundef 25603, ptr noundef nonnull %2) #18
  %38 = load i16, ptr %2, align 2
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %61, label %40

40:                                               ; preds = %34
  %41 = getelementptr i8, ptr %4, i32 2524
  %42 = load ptr, ptr %41, align 4
  %43 = zext i16 %38 to i32
  %44 = and i32 %43, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = and i32 %43, 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = and i32 %43, 16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = and i32 %43, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = and i32 %43, 1
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, ptr @.str.157, ptr @.str.156
  br label %59

59:                                               ; preds = %55, %52, %49, %46, %40
  %60 = phi ptr [ @.str.152, %40 ], [ @.str.153, %46 ], [ @.str.154, %49 ], [ %58, %55 ], [ @.str.155, %52 ]
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %42, ptr noundef nonnull @.str.151, ptr noundef nonnull %60) #20
  br label %61

61:                                               ; preds = %59, %34
  %62 = getelementptr i8, ptr %4, i32 3312
  %63 = load ptr, ptr %62, align 4
  %64 = call i32 %63(ptr noundef %6, i32 noundef 25603, i16 noundef zeroext -1) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #18
  br label %117

65:                                               ; preds = %27
  %66 = getelementptr i8, ptr %4, i32 2536
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i8, ptr %67, i32 22544
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %91, label %71

71:                                               ; preds = %65
  %72 = getelementptr i8, ptr %4, i32 2524
  %73 = load ptr, ptr %72, align 4
  %74 = and i32 %69, 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = and i32 %69, 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = and i32 %69, 16
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = and i32 %69, 2
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = and i32 %69, 1
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, ptr @.str.157, ptr @.str.156
  br label %89

89:                                               ; preds = %85, %82, %79, %76, %71
  %90 = phi ptr [ @.str.152, %71 ], [ @.str.153, %76 ], [ @.str.154, %79 ], [ %88, %85 ], [ @.str.155, %82 ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %73, ptr noundef nonnull @.str.158, ptr noundef nonnull %90) #20
  br label %91

91:                                               ; preds = %89, %65
  %92 = load ptr, ptr %6, align 4
  %93 = getelementptr inbounds %struct.e1000_adapter, ptr %92, i32 0, i32 85
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, 2048
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %114, label %97

97:                                               ; preds = %91
  %98 = load ptr, ptr %66, align 4
  %99 = getelementptr i8, ptr %98, i32 23380
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %101 = and i32 %100, 16777216
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %114, label %103

103:                                              ; preds = %107, %97
  %104 = phi i32 [ %105, %107 ], [ 2000, %97 ]
  %105 = add nsw i32 %104, -1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %108(i32 noundef 10737400) #18
  %109 = load ptr, ptr %66, align 4
  %110 = getelementptr i8, ptr %109, i32 23380
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #18, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !10
  %112 = and i32 %111, 16777216
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %103

114:                                              ; preds = %107, %103, %97, %91
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !11
  tail call void @arm_heavy_mb() #18
  %115 = load ptr, ptr %66, align 4
  %116 = getelementptr i8, ptr %115, i32 22544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 -1) #18, !srcloc !12
  br label %117

117:                                              ; preds = %114, %61
  call void @e1000e_reset(ptr noundef %5)
  call fastcc void @e1000_init_manageability_pt(ptr noundef %5)
  %118 = getelementptr i8, ptr %4, i32 12584
  %119 = load i32, ptr %118, align 8
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  call void @e1000e_get_hw_control(ptr noundef %5)
  br label %123

123:                                              ; preds = %122, %117
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_resume_workarounds_pchlan(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nounwind readonly }
attributes #17 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind readnone }

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
!9 = !{i64 4044448}
!10 = !{i64 2157153838}
!11 = !{i64 2157159531}
!12 = !{i64 4044030}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148372507}
!15 = !{i64 770442, i64 2148260413, i64 2148260439, i64 2148260486, i64 2148260508, i64 2148260536, i64 2148260556}
!16 = !{i64 2148274869, i64 2148274901, i64 2148274930, i64 2148274964, i64 2148274995, i64 2148275018}
!17 = !{i64 2148372710}
!18 = !{i64 2157231987}
!19 = !{!"auto-init"}
!20 = !{i8 0, i8 2}
!21 = !{i64 2157261356, i64 2157261864, i64 2157261393, i64 2157261449, i64 2157261483, i64 2157261507, i64 2157261548, i64 2157261569, i64 2157261597, i64 2157261631}
!22 = !{i64 2157262470}
!23 = !{i64 2157234602}
!24 = !{i64 2157235398}
!25 = !{i64 2157239325}
!26 = !{i64 2157239709}
!27 = !{i64 2157247080}
!28 = !{i64 2157247464}
!29 = !{i64 2149154967}
!30 = !{i64 2149150791}
!31 = !{i64 2149150866, i64 2149150893, i64 2149150940, i64 2149150962, i64 2149150990, i64 2149151010}
!32 = !{i64 2149177970}
!33 = !{i64 2148118844, i64 2148119124, i64 2148119458, i64 2148119792}
!34 = !{i64 2157289604}
!35 = !{i64 2157289824}
!36 = !{i64 2157193300}
!37 = !{i64 770260}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 2157212609}
!40 = !{i64 2153469340}
!41 = !{i64 2152868112}
!42 = !{i64 2152868319}
!43 = !{i64 2153471965}
!44 = !{i64 2157207547}
!45 = !{i64 2157187350}
!46 = !{i64 2157187995}
!47 = !{i64 2157191308}
!48 = !{i64 2157191578}
!49 = !{i64 2157192359}
!50 = !{i64 2157192624}
!51 = !{i64 2157189126}
!52 = !{i64 2157189391}
!53 = !{i64 2157186299}
!54 = !{i64 2157186944}
!55 = !{i64 2157220550}
!56 = !{i64 2157206320}
!57 = !{i64 2155058785}
!58 = !{i64 2157206669}
!59 = !{i64 2157289353}
!60 = !{i64 2148271335}
!61 = !{i64 757011, i64 757036, i64 757058, i64 757074, i64 757086, i64 757106, i64 757130, i64 757146, i64 757158}
!62 = !{i64 2148271461}
!63 = !{i64 2148271828, i64 2148271854, i64 2148271883, i64 2148271917, i64 2148271948, i64 2148271971}
!64 = !{i64 2157203316}
!65 = !{i64 2157203638}
!66 = !{i64 2154359544, i64 2154360032, i64 2154359581, i64 2154359637, i64 2154359671, i64 2154359695, i64 2154359736, i64 2154359757, i64 2154359785, i64 2154359819}
!67 = !{i64 2157311018, i64 2157311526, i64 2157311055, i64 2157311111, i64 2157311145, i64 2157311169, i64 2157311210, i64 2157311231, i64 2157311259, i64 2157311293}
!68 = !{i64 2157310639}
!69 = !{i64 6703638, i64 6703679, i64 6703765}
!70 = !{i64 6702536}
!71 = !{i64 694820}
!72 = !{i64 2157315288}
!73 = !{i64 2152865606, i64 2152865631}
!74 = !{i64 5361718}
!75 = !{i64 5361915}
!76 = !{i64 2152847194}
!77 = !{i64 2152866184, i64 2152866209}
!78 = !{i64 2148273286, i64 2148273318, i64 2148273347, i64 2148273381, i64 2148273412, i64 2148273435}
!79 = !{i64 2153708553, i64 2153709053, i64 2153708590, i64 2153708646, i64 2153708680, i64 2153708704, i64 2153708745, i64 2153708766, i64 2153708794, i64 2153708828}
!80 = !{i64 2153709333}
!81 = !{i64 2155057740}
!82 = !{i64 2157310135}
!83 = !{i64 2157205439}
!84 = !{i64 2157318451}
