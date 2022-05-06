; ModuleID = '/llk/IR/drivers/net/usb/ax88179_178a.c_pt.bc'
source_filename = "../drivers/net/usb/ax88179_178a.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.driver_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.anon.116 = type { i8, i8, i8, i8, i8 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.usbnet = type { ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.mutex, i8, i8, i8, i16, i16, i8, i32, i32, ptr, i32, %struct.timer_list, ptr, ptr, i32, [5 x i32], i32, i32, i32, %struct.mii_if_info, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, %struct.mutex, %struct.usb_anchor, %struct.tasklet_struct, %struct.work_struct, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.113, i32, %struct.spinlock }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.115, i32 }
%union.anon.115 = type { ptr }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.95, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.112, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.95 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.112 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.ax88179_data = type { i8, i8, i16, i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.96, %union.anon.97 }
%union.anon.96 = type { [16 x i8] }
%union.anon.97 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_cmd = type { i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i16, i8, i8, i32, [2 x i32] }

@__initcall__kmod_ax88179_178a__335_1933_ax88179_178a_driver_init6 = internal global ptr @ax88179_178a_driver_init, section ".initcall6.init", align 4
@ax88179_178a_driver = internal global %struct.usb_driver { ptr @.str, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @ax88179_suspend, ptr @ax88179_resume, ptr @ax88179_resume, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 6 }, align 4
@__exitcall_ax88179_178a_driver_exit = internal global ptr @ax88179_178a_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description336 = internal constant [86 x i8] c"ax88179_178a.description=ASIX AX88179/178A based USB 3.0/2.0 Gigabit Ethernet Devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file337 = internal constant [47 x i8] c"ax88179_178a.file=drivers/net/usb/ax88179_178a\00", section ".modinfo", align 1
@__UNIQUE_ID_license338 = internal constant [25 x i8] c"ax88179_178a.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"ax88179_178a\00", align 1
@products = internal constant [11 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2965, i16 6032, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88179_info to i32) }, %struct.usb_device_id { i16 3, i16 2965, i16 6026, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88178a_info to i32) }, %struct.usb_device_id { i16 3, i16 1204, i16 13840, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @cypress_GX3_info to i32) }, %struct.usb_device_id { i16 3, i16 8193, i16 18944, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @dlink_dub1312_info to i32) }, %struct.usb_device_id { i16 3, i16 3574, i16 114, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @sitecom_info to i32) }, %struct.usb_device_id { i16 3, i16 1256, i16 -24320, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @samsung_info to i32) }, %struct.usb_device_id { i16 3, i16 6127, i16 12363, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @lenovo_info to i32) }, %struct.usb_device_id { i16 3, i16 1293, i16 296, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @belkin_info to i32) }, %struct.usb_device_id { i16 3, i16 2352, i16 2579, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @toshiba_info to i32) }, %struct.usb_device_id { i16 3, i16 1809, i16 377, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @mct_info to i32) }, %struct.usb_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to read reg index 0x%04x: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to write reg index 0x%04x: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ax88179_info = internal constant %struct.driver_info { ptr @.str.3, i32 96, ptr @ax88179_bind, ptr @ax88179_unbind, ptr @ax88179_reset, ptr @ax88179_stop, ptr null, ptr null, ptr @ax88179_status, ptr @ax88179_link_reset, ptr @ax88179_rx_fixup, ptr @ax88179_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, align 4
@ax88178a_info = internal constant %struct.driver_info { ptr @.str.9, i32 96, ptr @ax88179_bind, ptr @ax88179_unbind, ptr @ax88179_reset, ptr @ax88179_stop, ptr null, ptr null, ptr @ax88179_status, ptr @ax88179_link_reset, ptr @ax88179_rx_fixup, ptr @ax88179_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, align 4
@cypress_GX3_info = internal constant %struct.driver_info { ptr @.str.10, i32 96, ptr @ax88179_bind, ptr @ax88179_unbind, ptr @ax88179_reset, ptr @ax88179_stop, ptr null, ptr null, ptr @ax88179_status, ptr @ax88179_link_reset, ptr @ax88179_rx_fixup, ptr @ax88179_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, align 4
@dlink_dub1312_info = internal constant %struct.driver_info { ptr @.str.11, i32 96, ptr @ax88179_bind, ptr @ax88179_unbind, ptr @ax88179_reset, ptr @ax88179_stop, ptr null, ptr null, ptr @ax88179_status, ptr @ax88179_link_reset, ptr @ax88179_rx_fixup, ptr @ax88179_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, align 4
@sitecom_info = internal constant %struct.driver_info { ptr @.str.12, i32 96, ptr @ax88179_bind, ptr @ax88179_unbind, ptr @ax88179_reset, ptr @ax88179_stop, ptr null, ptr null, ptr @ax88179_status, ptr @ax88179_link_reset, ptr @ax88179_rx_fixup, ptr @ax88179_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, align 4
@samsung_info = internal constant %struct.driver_info { ptr @.str.13, i32 96, ptr @ax88179_bind, ptr @ax88179_unbind, ptr @ax88179_reset, ptr @ax88179_stop, ptr null, ptr null, ptr @ax88179_status, ptr @ax88179_link_reset, ptr @ax88179_rx_fixup, ptr @ax88179_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, align 4
@lenovo_info = internal constant %struct.driver_info { ptr @.str.14, i32 96, ptr @ax88179_bind, ptr @ax88179_unbind, ptr @ax88179_reset, ptr @ax88179_stop, ptr null, ptr null, ptr @ax88179_status, ptr @ax88179_link_reset, ptr @ax88179_rx_fixup, ptr @ax88179_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, align 4
@belkin_info = internal constant %struct.driver_info { ptr @.str.15, i32 96, ptr @ax88179_bind, ptr @ax88179_unbind, ptr @ax88179_reset, ptr @ax88179_stop, ptr null, ptr null, ptr @ax88179_status, ptr @ax88179_link_reset, ptr @ax88179_rx_fixup, ptr @ax88179_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, align 4
@toshiba_info = internal constant %struct.driver_info { ptr @.str.16, i32 96, ptr @ax88179_bind, ptr @ax88179_unbind, ptr @ax88179_reset, ptr @ax88179_stop, ptr null, ptr null, ptr @ax88179_status, ptr @ax88179_link_reset, ptr @ax88179_rx_fixup, ptr @ax88179_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, align 4
@mct_info = internal constant %struct.driver_info { ptr @.str.17, i32 96, ptr @ax88179_bind, ptr @ax88179_unbind, ptr @ax88179_reset, ptr @ax88179_stop, ptr null, ptr null, ptr @ax88179_status, ptr @ax88179_link_reset, ptr @ax88179_rx_fixup, ptr @ax88179_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"ASIX AX88179 USB 3.0 Gigabit Ethernet\00", align 1
@AX88179_BULKIN_SIZE = internal unnamed_addr constant [4 x %struct.anon.116] [%struct.anon.116 { i8 7, i8 79, i8 0, i8 18, i8 -1 }, %struct.anon.116 { i8 7, i8 32, i8 3, i8 22, i8 -1 }, %struct.anon.116 { i8 7, i8 -82, i8 7, i8 24, i8 -1 }, %struct.anon.116 { i8 7, i8 -52, i8 76, i8 24, i8 8 }], align 1
@ax88179_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr @ax88179_set_multicast, ptr @ax88179_set_mac_addr, ptr @eth_validate_addr, ptr null, ptr @ax88179_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @ax88179_change_mtu, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ax88179_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ax88179_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr @ax88179_get_wol, ptr @ax88179_set_wol, ptr @usbnet_get_msglevel, ptr @usbnet_set_msglevel, ptr @usbnet_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr @ax88179_get_eeprom_len, ptr @ax88179_get_eeprom, ptr @ax88179_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr @ax88179_get_eee, ptr @ax88179_set_eee, ptr null, ptr null, ptr null, ptr null, ptr @ax88179_get_link_ksettings, ptr @ax88179_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"invalid MAC address, using random\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Failed to read EEPROM at offset 0x%02x.\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Failed to write EEPROM at offset 0x%02x.\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Failed to reload EEPROM data\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.8 = private unnamed_addr constant [30 x i8] c"ax88179 - Link status is: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"ASIX AX88178A USB 2.0 Gigabit Ethernet\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"Cypress GX3 SuperSpeed to Gigabit Ethernet Controller\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"D-Link DUB-1312 USB 3.0 to Gigabit Ethernet Adapter\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Sitecom USB 3.0 to Gigabit Adapter\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Samsung USB Ethernet Adapter\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Lenovo OneLinkDock Gigabit LAN\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Belkin USB Ethernet Adapter\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Toshiba USB Ethernet Adapter\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"MCT USB 3.0 Gigabit Ethernet Adapter\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description336, ptr @__UNIQUE_ID_file337, ptr @__UNIQUE_ID_license338, ptr @__exitcall_ax88179_178a_driver_exit, ptr @__initcall__kmod_ax88179_178a__335_1933_ax88179_178a_driver_init6, ptr @ax88179_178a_driver_exit], section "llvm.metadata"
@switch.table.ax88179_led_setting.19 = private unnamed_addr constant [3 x i16] [i16 -25311, i16 -26367, i16 -28415], align 2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ax88179_178a_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @usb_register_driver(ptr noundef nonnull @ax88179_178a_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ax88179_178a_driver_exit() #0 section ".exit.text" {
  tail call void @usb_deregister(ptr noundef nonnull @ax88179_178a_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_probe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_disconnect(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88179_suspend(ptr noundef %0, [1 x i32] %1) #2 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  %9 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #12
  store i8 0, ptr %8, align 1, !annotation !8
  %11 = tail call i32 @usbnet_suspend(ptr noundef %0, [1 x i32] %1) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  store i16 0, ptr %7, align 2, !annotation !8
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

14:                                               ; preds = %2
  %15 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %10, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %7, i16 noundef zeroext 2) #12, !callees !11
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20, !prof !9

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.usbnet, ptr %10, i32 0, i32 19
  %19 = load ptr, ptr %18, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %19, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %15) #13
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i16, ptr %7, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  %22 = and i16 %21, -257
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #12
  store i16 %22, ptr %6, align 2
  %23 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %10, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %6, i16 noundef zeroext 2) #12, !callees !12
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28, !prof !9

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.usbnet, ptr %10, i32 0, i32 19
  %27 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %27, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %23) #13
  br label %28

28:                                               ; preds = %25, %20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 0, ptr %5, align 2, !annotation !8
  %29 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %10, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %5, i16 noundef zeroext 2) #12, !callees !11
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34, !prof !9

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.usbnet, ptr %10, i32 0, i32 19
  %33 = load ptr, ptr %32, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %33, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %29) #13
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i16, ptr %5, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  %36 = or i16 %35, 48
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 %36, ptr %4, align 2
  %37 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %10, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %4, i16 noundef zeroext 2) #12, !callees !12
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42, !prof !9

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.usbnet, ptr %10, i32 0, i32 19
  %41 = load ptr, ptr %40, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %41, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %37) #13
  br label %42

42:                                               ; preds = %39, %34
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  store i8 0, ptr %8, align 1
  %43 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %10, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 51, i16 noundef zeroext 1, ptr noundef nonnull %8, i16 noundef zeroext 1) #12, !callees !12
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48, !prof !9

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.usbnet, ptr %10, i32 0, i32 19
  %47 = load ptr, ptr %46, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %47, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %43) #13
  br label %48

48:                                               ; preds = %45, %42
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i16 0, ptr %3, align 2
  %49 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %10, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 11, i16 noundef zeroext 2, ptr noundef nonnull %3, i16 noundef zeroext 2) #12, !callees !12
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54, !prof !9

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.usbnet, ptr %10, i32 0, i32 19
  %53 = load ptr, ptr %52, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %53, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %49) #13
  br label %54

54:                                               ; preds = %51, %48
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88179_resume(ptr noundef %0) #2 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i8, align 1
  %10 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #12
  store i8 0, ptr %9, align 1, !annotation !8
  tail call void @usbnet_link_change(ptr noundef %11, i1 noundef zeroext false, i1 noundef zeroext false) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #12
  store i16 0, ptr %8, align 2
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

14:                                               ; preds = %1
  %15 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %11, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %8, i16 noundef zeroext 2) #12, !callees !12
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20, !prof !9

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.usbnet, ptr %11, i32 0, i32 19
  %19 = load ptr, ptr %18, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %19, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %15) #13
  br label %20

20:                                               ; preds = %17, %14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  store i16 32, ptr %7, align 2
  %22 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %11, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %7, i16 noundef zeroext 2) #12, !callees !12
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27, !prof !9

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.usbnet, ptr %11, i32 0, i32 19
  %26 = load ptr, ptr %25, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %26, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %22) #13
  br label %27

27:                                               ; preds = %24, %20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  call void @msleep(i32 noundef 200) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #12
  store i16 0, ptr %2, align 2, !annotation !8
  %28 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %11, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext 67, i16 noundef zeroext 1, ptr noundef nonnull %2, i16 noundef zeroext 2) #12, !callees !11
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33, !prof !9

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.usbnet, ptr %11, i32 0, i32 19
  %32 = load ptr, ptr %31, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %32, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %28) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  br label %68

33:                                               ; preds = %27
  %34 = load i16, ptr %2, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  %35 = icmp eq i16 %34, -1
  %36 = and i16 %34, 256
  %37 = icmp eq i16 %36, 0
  %38 = or i1 %35, %37
  br i1 %38, label %68, label %39

39:                                               ; preds = %33
  store i8 0, ptr %6, align 1
  %40 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %11, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 51, i16 noundef zeroext 1, ptr noundef nonnull %6, i16 noundef zeroext 1) #12, !callees !11
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45, !prof !9

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.usbnet, ptr %11, i32 0, i32 19
  %44 = load ptr, ptr %43, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %44, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %40) #13
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i8, ptr %6, align 1
  %47 = or i8 %46, 8
  store i8 %47, ptr %6, align 1
  %48 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %11, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 51, i16 noundef zeroext 1, ptr noundef nonnull %6, i16 noundef zeroext 1) #12, !callees !12
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53, !prof !9

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.usbnet, ptr %11, i32 0, i32 19
  %52 = load ptr, ptr %51, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %52, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %48) #13
  br label %53

53:                                               ; preds = %50, %45
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i16 0, ptr %3, align 2, !annotation !8
  %54 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %11, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %3, i16 noundef zeroext 2) #12, !callees !11
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59, !prof !9

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.usbnet, ptr %11, i32 0, i32 19
  %58 = load ptr, ptr %57, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %58, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %54) #13
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i16, ptr %3, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  %61 = or i16 %60, 4096
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 %61, ptr %4, align 2
  %62 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %11, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %4, i16 noundef zeroext 2) #12, !callees !12
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67, !prof !9

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.usbnet, ptr %11, i32 0, i32 19
  %66 = load ptr, ptr %65, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %66, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %62) #13
  br label %67

67:                                               ; preds = %64, %59
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  br label %68

68:                                               ; preds = %67, %33, %30
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  %69 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %11, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 51, i16 noundef zeroext 1, ptr noundef nonnull %9, i16 noundef zeroext 1) #12, !callees !11
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74, !prof !9

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.usbnet, ptr %11, i32 0, i32 19
  %73 = load ptr, ptr %72, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %73, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %69) #13
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i8, ptr %9, align 1
  %76 = or i8 %75, 3
  store i8 %76, ptr %9, align 1
  %77 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %11, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 51, i16 noundef zeroext 1, ptr noundef nonnull %9, i16 noundef zeroext 1) #12, !callees !12
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82, !prof !9

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.usbnet, ptr %11, i32 0, i32 19
  %81 = load ptr, ptr %80, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %81, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %77) #13
  br label %82

82:                                               ; preds = %79, %74
  call void @msleep(i32 noundef 100) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 938, ptr %5, align 2
  %83 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %11, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 11, i16 noundef zeroext 2, ptr noundef nonnull %5, i16 noundef zeroext 2) #12, !callees !12
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88, !prof !9

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.usbnet, ptr %11, i32 0, i32 19
  %87 = load ptr, ptr %86, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %87, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %83) #13
  br label %88

88:                                               ; preds = %85, %82
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  %89 = call i32 @usbnet_resume(ptr noundef %0) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #12
  ret i32 %89
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd_nopm(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd_nopm(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_link_change(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88179_bind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca [5 x i8], align 2
  %8 = alloca %struct.ethtool_eee, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %7) #12
  %9 = getelementptr inbounds i8, ptr %7, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(5) %9, i8 0, i32 3, i1 false), !annotation !8
  %10 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %8, i8 0, i32 40, i1 false), !annotation !8
  %11 = tail call i32 @usbnet_get_endpoints(ptr noundef %0, ptr noundef %1) #12
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(6) %10, i8 0, i32 6, i1 false)
  store i16 0, ptr %7, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #12
  store i16 0, ptr %6, align 2
  %12 = icmp eq ptr %0, null
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

14:                                               ; preds = %2
  %15 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %6, i16 noundef zeroext 2) #12, !callees !12
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20, !prof !9

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %19 = load ptr, ptr %18, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %19, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %15) #13
  br label %20

20:                                               ; preds = %17, %14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  store i16 32, ptr %7, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 32, ptr %5, align 2
  %21 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %5, i16 noundef zeroext 2) #12, !callees !12
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26, !prof !9

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %25 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %21) #13
  br label %26

26:                                               ; preds = %23, %20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @msleep(i32 noundef 200) #12
  store i8 3, ptr %7, align 2
  %27 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 51, i16 noundef zeroext 1, ptr noundef nonnull %7, i16 noundef zeroext 1) #12, !callees !12
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32, !prof !9

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %31 = load ptr, ptr %30, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %31, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %27) #13
  br label %32

32:                                               ; preds = %29, %26
  call void @msleep(i32 noundef 100) #12
  call fastcc void @ax88179_get_mac_addr(ptr noundef nonnull %0)
  %33 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 49
  %36 = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 72
  %37 = load ptr, ptr %36, align 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %35, ptr noundef align 1 dereferenceable(6) %37, i32 6, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(5) %7, ptr noundef nonnull align 1 dereferenceable(5) @AX88179_BULKIN_SIZE, i32 5, i1 false)
  %38 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 46, i16 noundef zeroext 5, ptr noundef nonnull %7, i16 noundef zeroext 5) #12, !callees !12
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42, !prof !9

40:                                               ; preds = %32
  %41 = load ptr, ptr %33, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %41, ptr noundef nonnull @.str.2, i32 noundef 5, i32 noundef %38) #13
  br label %42

42:                                               ; preds = %40, %32
  %43 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 24
  store i32 20480, ptr %43, align 4
  store i8 52, ptr %7, align 2
  %44 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 85, i16 noundef zeroext 1, ptr noundef nonnull %7, i16 noundef zeroext 1) #12, !callees !12
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48, !prof !9

46:                                               ; preds = %42
  %47 = load ptr, ptr %33, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %47, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %44) #13
  br label %48

48:                                               ; preds = %46, %42
  store i8 82, ptr %7, align 2
  %49 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 84, i16 noundef zeroext 1, ptr noundef nonnull %7, i16 noundef zeroext 1) #12, !callees !12
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53, !prof !9

51:                                               ; preds = %48
  %52 = load ptr, ptr %33, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %52, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %49) #13
  br label %53

53:                                               ; preds = %51, %48
  %54 = load ptr, ptr %33, align 4
  %55 = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 16
  store ptr @ax88179_netdev_ops, ptr %55, align 8
  %56 = load ptr, ptr %33, align 4
  %57 = getelementptr inbounds %struct.net_device, ptr %56, i32 0, i32 42
  store ptr @ax88179_ethtool_ops, ptr %57, align 8
  %58 = load ptr, ptr %33, align 4
  %59 = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 21
  store i16 8, ptr %59, align 8
  %60 = load ptr, ptr %33, align 4
  %61 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 31
  store i32 4088, ptr %61, align 4
  %62 = load ptr, ptr %33, align 4
  %63 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25
  %64 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25, i32 5
  store ptr %62, ptr %64, align 4
  %65 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25, i32 6
  store ptr @ax88179_mdio_read, ptr %65, align 4
  %66 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25, i32 7
  store ptr @ax88179_mdio_write, ptr %66, align 4
  %67 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25, i32 2
  store i32 255, ptr %67, align 4
  %68 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25, i32 3
  store i32 255, ptr %68, align 4
  store i32 3, ptr %63, align 4
  %69 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25, i32 4
  %70 = load i8, ptr %69, align 4
  %71 = or i8 %70, 4
  store i8 %71, ptr %69, align 4
  %72 = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 23
  %73 = load i64, ptr %72, align 16
  %74 = or i64 %73, 1099511693331
  store i64 %74, ptr %72, align 16
  %75 = load ptr, ptr %33, align 4
  %76 = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 23
  %77 = load i64, ptr %76, align 16
  %78 = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 24
  %79 = load i64, ptr %78, align 8
  %80 = or i64 %79, %77
  store i64 %80, ptr %78, align 8
  %81 = load ptr, ptr %33, align 4
  %82 = getelementptr inbounds %struct.net_device, ptr %81, i32 0, i32 115
  store volatile i32 16384, ptr %82, align 32
  store i8 103, ptr %7, align 2
  %83 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 52, i16 noundef zeroext 1, ptr noundef nonnull %7, i16 noundef zeroext 1) #12, !callees !12
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87, !prof !9

85:                                               ; preds = %53
  %86 = load ptr, ptr %33, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %86, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %83) #13
  br label %87

87:                                               ; preds = %85, %53
  store i8 103, ptr %7, align 2
  %88 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 53, i16 noundef zeroext 1, ptr noundef nonnull %7, i16 noundef zeroext 1) #12, !callees !12
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92, !prof !9

90:                                               ; preds = %87
  %91 = load ptr, ptr %33, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %91, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %88) #13
  br label %92

92:                                               ; preds = %90, %87
  store i16 938, ptr %7, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 938, ptr %4, align 2
  %93 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 11, i16 noundef zeroext 2, ptr noundef nonnull %4, i16 noundef zeroext 2) #12, !callees !12
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97, !prof !9

95:                                               ; preds = %92
  %96 = load ptr, ptr %33, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %96, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %93) #13
  br label %97

97:                                               ; preds = %95, %92
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  store i8 100, ptr %7, align 2
  %98 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 36, i16 noundef zeroext 1, ptr noundef nonnull %7, i16 noundef zeroext 1) #12, !callees !12
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102, !prof !9

100:                                              ; preds = %97
  %101 = load ptr, ptr %33, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %101, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %98) #13
  br label %102

102:                                              ; preds = %100, %97
  store i16 307, ptr %7, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i16 307, ptr %3, align 2
  %103 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %3, i16 noundef zeroext 2) #12, !callees !12
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107, !prof !9

105:                                              ; preds = %102
  %106 = load ptr, ptr %33, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %106, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %103) #13
  br label %107

107:                                              ; preds = %105, %102
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  call fastcc void @ax88179_led_setting(ptr noundef nonnull %0)
  store i8 0, ptr %10, align 2
  %108 = getelementptr inbounds %struct.ax88179_data, ptr %10, i32 0, i32 1
  store i8 0, ptr %108, align 1
  call fastcc void @ax88179_disable_eee(ptr noundef nonnull %0)
  %109 = call fastcc i32 @ax88179_ethtool_get_eee(ptr noundef nonnull %0, ptr noundef nonnull %8)
  %110 = getelementptr inbounds %struct.ethtool_eee, ptr %8, i32 0, i32 2
  store i32 0, ptr %110, align 4
  %111 = call fastcc i32 @ax88179_ethtool_set_eee(ptr noundef nonnull %0, ptr noundef nonnull %8)
  %112 = call i32 @mii_nway_restart(ptr noundef %63) #12
  call void @usbnet_link_change(ptr noundef nonnull %0, i1 noundef zeroext false, i1 noundef zeroext false) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %7) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ax88179_unbind(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

8:                                                ; preds = %2
  %9 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 11, i16 noundef zeroext 2, ptr noundef nonnull %4, i16 noundef zeroext 2) #12, !callees !12
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14, !prof !9

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %13, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %9) #13
  br label %14

14:                                               ; preds = %11, %8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %5, align 2
  %15 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 51, i16 noundef zeroext 1, ptr noundef nonnull %5, i16 noundef zeroext 1) #12, !callees !12
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20, !prof !9

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %19 = load ptr, ptr %18, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %19, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %15) #13
  br label %20

20:                                               ; preds = %17, %14
  store i16 0, ptr %5, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i16 0, ptr %3, align 2
  %21 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %3, i16 noundef zeroext 2) #12, !callees !12
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26, !prof !9

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %25 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %21) #13
  br label %26

26:                                               ; preds = %23, %20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88179_reset(ptr noundef %0) #2 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca [5 x i8], align 2
  %11 = alloca %struct.ethtool_eee, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %10) #12
  %12 = getelementptr inbounds i8, ptr %10, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(5) %12, i8 0, i32 3, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %11, i8 0, i32 40, i1 false), !annotation !8
  store i16 0, ptr %10, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #12
  store i16 0, ptr %9, align 2
  %13 = icmp eq ptr %0, null
  br i1 %13, label %14, label %15, !prof !9

14:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

15:                                               ; preds = %1
  %16 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %9, i16 noundef zeroext 2) #12, !callees !12
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21, !prof !9

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %20 = load ptr, ptr %19, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %20, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %16) #13
  br label %21

21:                                               ; preds = %18, %15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  store i16 32, ptr %10, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #12
  store i16 32, ptr %8, align 2
  %22 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %8, i16 noundef zeroext 2) #12, !callees !12
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27, !prof !9

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %26 = load ptr, ptr %25, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %26, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %22) #13
  br label %27

27:                                               ; preds = %24, %21
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  call void @msleep(i32 noundef 200) #12
  store i8 3, ptr %10, align 2
  %28 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 51, i16 noundef zeroext 1, ptr noundef nonnull %10, i16 noundef zeroext 1) #12, !callees !12
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33, !prof !9

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %32 = load ptr, ptr %31, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %32, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %28) #13
  br label %33

33:                                               ; preds = %30, %27
  call void @msleep(i32 noundef 100) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #12
  store i16 0, ptr %2, align 2
  %34 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext 67, i16 noundef zeroext 1, ptr noundef nonnull %2, i16 noundef zeroext 2) #12, !callees !11
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39, !prof !9

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %38 = load ptr, ptr %37, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %38, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %34) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  br label %74

39:                                               ; preds = %33
  %40 = load i16, ptr %2, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  %41 = icmp eq i16 %40, -1
  %42 = and i16 %40, 256
  %43 = icmp eq i16 %42, 0
  %44 = or i1 %41, %43
  br i1 %44, label %74, label %45

45:                                               ; preds = %39
  store i8 0, ptr %7, align 1
  %46 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 51, i16 noundef zeroext 1, ptr noundef nonnull %7, i16 noundef zeroext 1) #12, !callees !11
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51, !prof !9

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %50 = load ptr, ptr %49, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %50, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %46) #13
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i8, ptr %7, align 1
  %53 = or i8 %52, 8
  store i8 %53, ptr %7, align 1
  %54 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 51, i16 noundef zeroext 1, ptr noundef nonnull %7, i16 noundef zeroext 1) #12, !callees !12
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59, !prof !9

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %58 = load ptr, ptr %57, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %58, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %54) #13
  br label %59

59:                                               ; preds = %56, %51
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i16 0, ptr %3, align 2
  %60 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %3, i16 noundef zeroext 2) #12, !callees !11
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65, !prof !9

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %64 = load ptr, ptr %63, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %64, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %60) #13
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i16, ptr %3, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  %67 = or i16 %66, 4096
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 %67, ptr %4, align 2
  %68 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %4, i16 noundef zeroext 2) #12, !callees !12
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73, !prof !9

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %72 = load ptr, ptr %71, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %72, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %68) #13
  br label %73

73:                                               ; preds = %70, %65
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  br label %74

74:                                               ; preds = %73, %39, %36
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #12
  call fastcc void @ax88179_get_mac_addr(ptr noundef nonnull %0)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(5) %10, ptr noundef nonnull align 1 dereferenceable(5) @AX88179_BULKIN_SIZE, i32 5, i1 false)
  %75 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 46, i16 noundef zeroext 5, ptr noundef nonnull %10, i16 noundef zeroext 5) #12, !callees !12
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80, !prof !9

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %79 = load ptr, ptr %78, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %79, ptr noundef nonnull @.str.2, i32 noundef 5, i32 noundef %75) #13
  br label %80

80:                                               ; preds = %77, %74
  %81 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 24
  store i32 20480, ptr %81, align 4
  store i8 52, ptr %10, align 2
  %82 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 85, i16 noundef zeroext 1, ptr noundef nonnull %10, i16 noundef zeroext 1) #12, !callees !12
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87, !prof !9

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %86 = load ptr, ptr %85, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %86, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %82) #13
  br label %87

87:                                               ; preds = %84, %80
  store i8 82, ptr %10, align 2
  %88 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 84, i16 noundef zeroext 1, ptr noundef nonnull %10, i16 noundef zeroext 1) #12, !callees !12
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93, !prof !9

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %92 = load ptr, ptr %91, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %92, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %88) #13
  br label %93

93:                                               ; preds = %90, %87
  %94 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.net_device, ptr %95, i32 0, i32 23
  %97 = load i64, ptr %96, align 16
  %98 = or i64 %97, 1099511627794
  store i64 %98, ptr %96, align 16
  %99 = load ptr, ptr %94, align 4
  %100 = getelementptr inbounds %struct.net_device, ptr %99, i32 0, i32 24
  %101 = load i64, ptr %100, align 8
  %102 = or i64 %101, 1099511627794
  store i64 %102, ptr %100, align 8
  store i8 103, ptr %10, align 2
  %103 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 52, i16 noundef zeroext 1, ptr noundef nonnull %10, i16 noundef zeroext 1) #12, !callees !12
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107, !prof !9

105:                                              ; preds = %93
  %106 = load ptr, ptr %94, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %106, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %103) #13
  br label %107

107:                                              ; preds = %105, %93
  store i8 103, ptr %10, align 2
  %108 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 53, i16 noundef zeroext 1, ptr noundef nonnull %10, i16 noundef zeroext 1) #12, !callees !12
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112, !prof !9

110:                                              ; preds = %107
  %111 = load ptr, ptr %94, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %111, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %108) #13
  br label %112

112:                                              ; preds = %110, %107
  store i16 938, ptr %10, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #12
  store i16 938, ptr %6, align 2
  %113 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 11, i16 noundef zeroext 2, ptr noundef nonnull %6, i16 noundef zeroext 2) #12, !callees !12
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117, !prof !9

115:                                              ; preds = %112
  %116 = load ptr, ptr %94, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %116, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %113) #13
  br label %117

117:                                              ; preds = %115, %112
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  store i8 100, ptr %10, align 2
  %118 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 36, i16 noundef zeroext 1, ptr noundef nonnull %10, i16 noundef zeroext 1) #12, !callees !12
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122, !prof !9

120:                                              ; preds = %117
  %121 = load ptr, ptr %94, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %121, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %118) #13
  br label %122

122:                                              ; preds = %120, %117
  store i16 307, ptr %10, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 307, ptr %5, align 2
  %123 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %5, i16 noundef zeroext 2) #12, !callees !12
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127, !prof !9

125:                                              ; preds = %122
  %126 = load ptr, ptr %94, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %126, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %123) #13
  br label %127

127:                                              ; preds = %125, %122
  %128 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call fastcc void @ax88179_led_setting(ptr noundef nonnull %0)
  store i8 0, ptr %128, align 2
  %129 = getelementptr inbounds %struct.ax88179_data, ptr %128, i32 0, i32 1
  store i8 0, ptr %129, align 1
  call fastcc void @ax88179_disable_eee(ptr noundef nonnull %0)
  %130 = call fastcc i32 @ax88179_ethtool_get_eee(ptr noundef nonnull %0, ptr noundef nonnull %11)
  %131 = getelementptr inbounds %struct.ethtool_eee, ptr %11, i32 0, i32 2
  store i32 0, ptr %131, align 4
  %132 = call fastcc i32 @ax88179_ethtool_set_eee(ptr noundef nonnull %0, ptr noundef nonnull %11)
  %133 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25
  %134 = call i32 @mii_nway_restart(ptr noundef %133) #12
  call void @usbnet_link_change(ptr noundef nonnull %0, i1 noundef zeroext false, i1 noundef zeroext false) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %10) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88179_stop(ptr noundef %0) #2 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i16 0, ptr %3, align 2
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !9

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

6:                                                ; preds = %1
  %7 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %3, i16 noundef zeroext 2) #12, !callees !11
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12, !prof !9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %11 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %7) #13
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i16, ptr %3, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  %14 = and i16 %13, -257
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #12
  store i16 %14, ptr %2, align 2
  %15 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %2, i16 noundef zeroext 2) #12, !callees !12
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20, !prof !9

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %19 = load ptr, ptr %18, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %19, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %15) #13
  br label %20

20:                                               ; preds = %17, %12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ax88179_status(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 8
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 6
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %9, 65536
  %17 = icmp eq i32 %16, 0
  %18 = xor i1 %17, %15
  br i1 %18, label %24, label %19

19:                                               ; preds = %6
  %20 = lshr i32 %9, 16
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  tail call void @usbnet_link_change(ptr noundef %0, i1 noundef zeroext %22, i1 noundef zeroext true) #12
  %23 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %23, ptr noundef nonnull @.str.8, i32 noundef %21) #13
  br label %24

24:                                               ; preds = %19, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88179_link_reset(ptr noundef %0) #2 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca [5 x i8], align 1
  %8 = alloca i8, align 1
  %9 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %7, i8 0, i32 5, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #12
  store i8 0, ptr %8, align 1, !annotation !8
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = add i32 %10, 10
  %12 = icmp eq ptr %0, null
  %13 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %14 = getelementptr inbounds %struct.ax88179_data, ptr %9, i32 0, i32 2
  br label %15

15:                                               ; preds = %37, %1
  %16 = phi i32 [ 1073741824, %1 ], [ %38, %37 ]
  %17 = and i32 %16, 1073741824
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %42, label %19

19:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #12
  store i16 0, ptr %6, align 2
  br i1 %12, label %20, label %21, !prof !9

20:                                               ; preds = %19
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

21:                                               ; preds = %19
  %22 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 11, i16 noundef zeroext 2, ptr noundef nonnull %6, i16 noundef zeroext 2) #12, !callees !12
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26, !prof !9

24:                                               ; preds = %21
  %25 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %22) #13
  br label %26

26:                                               ; preds = %24, %21
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  %27 = load i16, ptr %14, align 2
  store i16 %27, ptr %5, align 2
  %28 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 11, i16 noundef zeroext 2, ptr noundef nonnull %5, i16 noundef zeroext 2) #12, !callees !12
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32, !prof !9

30:                                               ; preds = %26
  %31 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %31, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %28) #13
  br label %32

32:                                               ; preds = %30, %26
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4
  %33 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -127, i8 noundef zeroext -64, i16 noundef zeroext 140, i16 noundef zeroext 0, ptr noundef nonnull %4, i16 noundef zeroext 4) #12, !callees !11
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37, !prof !9

35:                                               ; preds = %32
  %36 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %36, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %33) #13
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %39 = load volatile i32, ptr @jiffies, align 64
  %40 = sub i32 %11, %39
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %107, label %15

42:                                               ; preds = %15
  br i1 %12, label %43, label %44, !prof !9

43:                                               ; preds = %42
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

44:                                               ; preds = %42
  %45 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 2, i16 noundef zeroext 1, ptr noundef nonnull %8, i16 noundef zeroext 1) #12, !callees !11
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49, !prof !9

47:                                               ; preds = %44
  %48 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %48, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %45) #13
  br label %49

49:                                               ; preds = %47, %44
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i16 0, ptr %3, align 2
  %50 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 3, i16 noundef zeroext 17, ptr noundef nonnull %3, i16 noundef zeroext 2) #12, !callees !11
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54, !prof !9

52:                                               ; preds = %49
  %53 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %53, ptr noundef nonnull @.str.1, i32 noundef 17, i32 noundef %50) #13
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i16, ptr %3, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  %56 = and i16 %55, 1024
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %107, label %58

58:                                               ; preds = %54
  %59 = and i16 %55, -16384
  switch i16 %59, label %82 [
    i16 -32768, label %60
    i16 16384, label %76
  ]

60:                                               ; preds = %58
  %61 = load ptr, ptr %13, align 4
  %62 = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 20
  %63 = load i32, ptr %62, align 4
  %64 = icmp ugt i32 %63, 1500
  %65 = select i1 %64, i16 -32391, i16 313
  %66 = load i8, ptr %8, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %60
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %7, ptr noundef nonnull align 1 dereferenceable(5) @AX88179_BULKIN_SIZE, i32 5, i1 false)
  br label %83

71:                                               ; preds = %60
  %72 = and i32 %67, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %7, ptr noundef align 1 dereferenceable(5) getelementptr inbounds ([4 x %struct.anon.116], ptr @AX88179_BULKIN_SIZE, i32 0, i32 1), i32 5, i1 false)
  br label %83

75:                                               ; preds = %71
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %7, ptr noundef align 1 dereferenceable(5) getelementptr inbounds ([4 x %struct.anon.116], ptr @AX88179_BULKIN_SIZE, i32 0, i32 3), i32 5, i1 false)
  br label %83

76:                                               ; preds = %58
  %77 = load i8, ptr %8, align 1
  %78 = and i8 %77, 6
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %7, ptr noundef align 1 dereferenceable(5) getelementptr inbounds ([4 x %struct.anon.116], ptr @AX88179_BULKIN_SIZE, i32 0, i32 2), i32 5, i1 false)
  br label %83

81:                                               ; preds = %76
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %7, ptr noundef align 1 dereferenceable(5) getelementptr inbounds ([4 x %struct.anon.116], ptr @AX88179_BULKIN_SIZE, i32 0, i32 3), i32 5, i1 false)
  br label %83

82:                                               ; preds = %58
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %7, ptr noundef align 1 dereferenceable(5) getelementptr inbounds ([4 x %struct.anon.116], ptr @AX88179_BULKIN_SIZE, i32 0, i32 3), i32 5, i1 false)
  br label %83

83:                                               ; preds = %82, %81, %80, %75, %74, %70
  %84 = phi i16 [ 304, %82 ], [ 816, %81 ], [ 816, %80 ], [ %65, %75 ], [ %65, %74 ], [ %65, %70 ]
  %85 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 46, i16 noundef zeroext 5, ptr noundef nonnull %7, i16 noundef zeroext 5) #12, !callees !12
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89, !prof !9

87:                                               ; preds = %83
  %88 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %88, ptr noundef nonnull @.str.2, i32 noundef 5, i32 noundef %85) #13
  br label %89

89:                                               ; preds = %87, %83
  %90 = getelementptr inbounds [5 x i8], ptr %7, i32 0, i32 3
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = shl nuw nsw i32 %92, 10
  %94 = add nuw nsw i32 %93, 2048
  %95 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 24
  store i32 %94, ptr %95, align 4
  %96 = lshr i16 %55, 12
  %97 = and i16 %96, 2
  %98 = or i16 %84, %97
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #12
  store i16 %98, ptr %2, align 2
  %99 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %2, i16 noundef zeroext 2) #12, !callees !12
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103, !prof !9

101:                                              ; preds = %89
  %102 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %102, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %99) #13
  br label %103

103:                                              ; preds = %101, %89
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  %104 = call fastcc i32 @ax88179_chk_eee(ptr noundef nonnull %0)
  %105 = trunc i32 %104 to i8
  store i8 %105, ptr %9, align 2
  %106 = load ptr, ptr %13, align 4
  call void @netif_carrier_on(ptr noundef %106) #12
  br label %107

107:                                              ; preds = %103, %54, %37
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %7) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88179_rx_fixup(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %78, label %6

6:                                                ; preds = %2
  %7 = add i32 %4, -4
  tail call void @skb_trim(ptr noundef %1, i32 noundef %7) #12
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %9 = load ptr, ptr %8, align 8
  %10 = load i32, ptr %9, align 1
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %78, label %13

13:                                               ; preds = %6
  %14 = lshr i32 %10, 16
  %15 = shl nuw nsw i32 %11, 1
  %16 = add nuw nsw i32 %15, %14
  %17 = load i32, ptr %3, align 8
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %78, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 %14
  tail call void @skb_trim(ptr noundef %1, i32 noundef %14) #12
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 8191
  %26 = load i32, ptr %3, align 8
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %78, label %28

28:                                               ; preds = %70, %19
  %29 = phi i32 [ %75, %70 ], [ %25, %19 ]
  %30 = phi i32 [ %73, %70 ], [ %23, %19 ]
  %31 = phi ptr [ %72, %70 ], [ %22, %19 ]
  %32 = phi i32 [ %71, %70 ], [ %11, %19 ]
  %33 = and i32 %30, -1610612736
  %34 = icmp eq i32 %33, 0
  %35 = icmp ugt i32 %29, 15
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %37, label %65

37:                                               ; preds = %28
  %38 = icmp eq i32 %32, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %37
  %40 = tail call ptr @skb_clone(ptr noundef %1, i32 noundef 2592) #12
  %41 = icmp eq ptr %40, null
  br i1 %41, label %78, label %42

42:                                               ; preds = %39, %37
  %43 = phi ptr [ %40, %39 ], [ %1, %37 ]
  %44 = getelementptr inbounds %struct.sk_buff, ptr %43, i32 0, i32 5
  store i32 %29, ptr %44, align 8
  %45 = tail call ptr @skb_pull(ptr noundef %43, i32 noundef 2) #12
  %46 = load i32, ptr %44, align 8
  %47 = getelementptr inbounds %struct.sk_buff, ptr %43, i32 0, i32 17
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 %46
  %50 = getelementptr inbounds %struct.sk_buff, ptr %43, i32 0, i32 14
  store ptr %49, ptr %50, align 8
  %51 = add nuw nsw i32 %29, 176
  %52 = getelementptr inbounds %struct.sk_buff, ptr %43, i32 0, i32 18
  store i32 %51, ptr %52, align 8
  %53 = getelementptr inbounds %struct.sk_buff, ptr %43, i32 0, i32 13
  %54 = load i16, ptr %53, align 8
  %55 = and i16 %54, -97
  store i16 %55, ptr %53, align 8
  %56 = load i32, ptr %31, align 4
  %57 = and i32 %56, 3
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %42
  %60 = and i32 %56, 28
  switch i32 %60, label %63 [
    i32 16, label %61
    i32 4, label %61
  ]

61:                                               ; preds = %59, %59
  %62 = or i16 %55, 32
  store i16 %62, ptr %53, align 8
  br label %63

63:                                               ; preds = %61, %59, %42
  br i1 %38, label %78, label %64

64:                                               ; preds = %63
  tail call void @usbnet_skb_return(ptr noundef %0, ptr noundef %43) #12
  br label %65

65:                                               ; preds = %64, %28
  %66 = add nuw nsw i32 %29, 7
  %67 = and i32 %66, 16376
  %68 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef %67) #12
  %69 = icmp eq ptr %68, null
  br i1 %69, label %78, label %70

70:                                               ; preds = %65
  %71 = add i32 %32, -1
  %72 = getelementptr i32, ptr %31, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = lshr i32 %73, 16
  %75 = and i32 %74, 8191
  %76 = load i32, ptr %3, align 8
  %77 = icmp ugt i32 %75, %76
  br i1 %77, label %78, label %28

78:                                               ; preds = %70, %65, %63, %39, %19, %13, %6, %2
  %79 = phi i32 [ 0, %2 ], [ 0, %6 ], [ 0, %13 ], [ 0, %19 ], [ 0, %65 ], [ 0, %70 ], [ 0, %39 ], [ 1, %63 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ax88179_tx_fixup(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 4
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = add i32 %7, 8
  %14 = urem i32 %13, %5
  %15 = icmp eq i32 %14, 0
  %16 = or i32 %12, -2147450880
  %17 = select i1 %15, i32 %16, i32 %12
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %21 = load ptr, ptr %20, align 8
  %22 = ptrtoint ptr %19 to i32
  %23 = ptrtoint ptr %21 to i32
  %24 = sub i32 %22, %23
  %25 = add i32 %24, -8
  %26 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 23
  %29 = load i64, ptr %28, align 16
  %30 = and i64 %29, 1
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %34) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %73, label %39

39:                                               ; preds = %36, %32, %3
  %40 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %41 = load i8, ptr %40, align 2
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %8, align 4
  %46 = getelementptr inbounds %struct.skb_shared_info, ptr %45, i32 0, i32 10
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %47, 65535
  %49 = ashr i32 %47, 16
  %50 = sub nsw i32 %48, %49
  %51 = icmp ne i32 %50, 1
  br label %52

52:                                               ; preds = %44, %39
  %53 = phi i1 [ %51, %44 ], [ false, %39 ]
  %54 = icmp slt i32 %25, 0
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = lshr i32 %25, 28
  %58 = and i32 %57, 8
  %59 = tail call i32 @pskb_expand_head(ptr noundef %1, i32 noundef %58, i32 noundef 0, i32 noundef 2592) #12
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #12
  br label %73

62:                                               ; preds = %56, %52
  %63 = tail call ptr @skb_push(ptr noundef %1, i32 noundef 8) #12
  store i32 %7, ptr %63, align 1
  %64 = getelementptr i8, ptr %63, i32 4
  store i32 %17, ptr %64, align 1
  %65 = load ptr, ptr %8, align 4
  %66 = getelementptr inbounds %struct.skb_shared_info, ptr %65, i32 0, i32 5
  %67 = load i16, ptr %66, align 2
  %68 = icmp eq i16 %67, 0
  %69 = select i1 %68, i16 1, i16 %67
  %70 = zext i16 %69 to i32
  %71 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  store i32 0, ptr %72, align 4
  br label %73

73:                                               ; preds = %62, %61, %36
  %74 = phi ptr [ null, %61 ], [ %1, %62 ], [ null, %36 ]
  ret ptr %74
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ax88179_get_mac_addr(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [6 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %3, i8 0, i64 6, i1 false)
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  %6 = call i32 @eth_platform_get_mac_address(ptr noundef %5, ptr noundef nonnull %3) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = icmp eq ptr %0, null
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %8
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

11:                                               ; preds = %8
  %12 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 16, i16 noundef zeroext 6, ptr noundef nonnull %3, i16 noundef zeroext 6) #12, !callees !11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17, !prof !9

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %16 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.1, i32 noundef 6, i32 noundef %12) #13
  br label %17

17:                                               ; preds = %14, %11, %1
  %18 = load i32, ptr %3, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = getelementptr inbounds i8, ptr %3, i32 4
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  %25 = or i32 %18, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %29 = load ptr, ptr %28, align 4
  call void @dev_addr_mod(ptr noundef %29, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 6) #12
  br label %38

30:                                               ; preds = %21, %17
  %31 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %32 = load ptr, ptr %31, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %32, ptr noundef nonnull @.str.4) #13
  %33 = load ptr, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false) #12, !annotation !8
  call void @get_random_bytes(ptr noundef nonnull %2, i32 noundef 6) #12
  %34 = load i8, ptr %2, align 1
  %35 = and i8 %34, -4
  %36 = or i8 %35, 2
  store i8 %36, ptr %2, align 1
  call void @dev_addr_mod(ptr noundef %33, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 6) #12
  %37 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 50
  store i8 1, ptr %37, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  br label %38

38:                                               ; preds = %30, %27
  %39 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %40 = icmp eq ptr %0, null
  br i1 %40, label %41, label %42, !prof !9

41:                                               ; preds = %38
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

42:                                               ; preds = %38
  %43 = load ptr, ptr %39, align 4
  %44 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 72
  %45 = load ptr, ptr %44, align 32
  %46 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 16, i16 noundef zeroext 6, ptr noundef %45, i16 noundef zeroext 6) #12, !callees !12
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50, !prof !9

48:                                               ; preds = %42
  %49 = load ptr, ptr %39, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %49, ptr noundef nonnull @.str.2, i32 noundef 6, i32 noundef %46) #13
  br label %50

50:                                               ; preds = %48, %42
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88179_mdio_read(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i16, align 2
  %5 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

8:                                                ; preds = %3
  %9 = trunc i32 %2 to i16
  %10 = trunc i32 %1 to i16
  %11 = call i32 @usbnet_read_cmd(ptr noundef nonnull %5, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext %10, i16 noundef zeroext %9, ptr noundef nonnull %4, i16 noundef zeroext 2) #12, !callees !11
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17, !prof !9

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %0, i32 1512
  %15 = load ptr, ptr %14, align 4
  %16 = and i32 %2, 65535
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %15, ptr noundef nonnull @.str.1, i32 noundef %16, i32 noundef %11) #13
  br label %17

17:                                               ; preds = %13, %8
  %18 = load i16, ptr %4, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  %19 = zext i16 %18 to i32
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ax88179_mdio_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca i16, align 2
  %6 = getelementptr i8, ptr %0, i32 1408
  %7 = trunc i32 %3 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 %7, ptr %5, align 2
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

10:                                               ; preds = %4
  %11 = trunc i32 %2 to i16
  %12 = trunc i32 %1 to i16
  %13 = call i32 @usbnet_write_cmd(ptr noundef nonnull %6, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext %12, i16 noundef zeroext %11, ptr noundef nonnull %5, i16 noundef zeroext 2) #12, !callees !12
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %19, !prof !9

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %0, i32 1512
  %17 = load ptr, ptr %16, align 4
  %18 = and i32 %2, 65535
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %17, ptr noundef nonnull @.str.2, i32 noundef %18, i32 noundef %13) #13
  br label %19

19:                                               ; preds = %15, %10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ax88179_led_setting(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca [64 x i8], align 1
  %12 = alloca i16, align 2
  %13 = alloca i8, align 1
  %14 = alloca [20 x i8], align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #12
  store i8 0, ptr %15, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #12
  store i8 0, ptr %16, align 1
  %17 = icmp eq ptr %0, null
  br i1 %17, label %18, label %19, !prof !9

18:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

19:                                               ; preds = %1
  %20 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 3, i16 noundef zeroext 1, ptr noundef nonnull %16, i16 noundef zeroext 1) #12, !callees !11
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25, !prof !9

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %24 = load ptr, ptr %23, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %24, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %20) #13
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i8, ptr %16, align 1
  %27 = and i8 %26, 4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  store i8 -32, ptr %16, align 1
  %30 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 37, i16 noundef zeroext 1, ptr noundef nonnull %16, i16 noundef zeroext 1) #12, !callees !12
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34, !prof !9

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  br label %332

34:                                               ; preds = %29, %25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %14) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %14, i8 0, i32 20, i1 false) #12, !annotation !8
  %35 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  br label %39

36:                                               ; preds = %70
  %37 = add nuw nsw i32 %40, 1
  %38 = icmp eq i32 %37, 6
  br i1 %38, label %75, label %39

39:                                               ; preds = %36, %34
  %40 = phi i32 [ 0, %34 ], [ %37, %36 ]
  %41 = trunc i32 %40 to i8
  store i8 %41, ptr %13, align 1
  %42 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 7, i16 noundef zeroext 1, ptr noundef nonnull %13, i16 noundef zeroext 1) #12, !callees !12
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %152, label %44, !prof !9

44:                                               ; preds = %39
  store i8 4, ptr %13, align 1
  %45 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 10, i16 noundef zeroext 1, ptr noundef nonnull %13, i16 noundef zeroext 1) #12, !callees !12
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %152, label %47, !prof !9

47:                                               ; preds = %44
  %48 = load volatile i32, ptr @jiffies, align 64
  %49 = add i32 %48, 10
  br label %50

50:                                               ; preds = %59, %47
  %51 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 10, i16 noundef zeroext 1, ptr noundef nonnull %13, i16 noundef zeroext 1) #12, !callees !11
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55, !prof !9

53:                                               ; preds = %50
  %54 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %54, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %51) #13
  br label %55

55:                                               ; preds = %53, %50
  %56 = load volatile i32, ptr @jiffies, align 64
  %57 = sub i32 %49, %56
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %155, label %59

59:                                               ; preds = %55
  %60 = load i8, ptr %13, align 1
  %61 = and i8 %60, 16
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %50

63:                                               ; preds = %59
  %64 = shl nuw nsw i32 %40, 1
  %65 = getelementptr [20 x i8], ptr %14, i32 0, i32 %64
  %66 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 8, i16 noundef zeroext 2, ptr noundef %65, i16 noundef zeroext 2) #12, !callees !11
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70, !prof !9

68:                                               ; preds = %63
  %69 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %69, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %66) #13
  br label %70

70:                                               ; preds = %68, %63
  %71 = icmp eq i32 %40, 0
  %72 = load i8, ptr %14, align 1
  %73 = icmp eq i8 %72, -1
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %155, label %36

75:                                               ; preds = %36
  %76 = getelementptr inbounds [20 x i8], ptr %14, i32 0, i32 6
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = getelementptr inbounds [20 x i8], ptr %14, i32 0, i32 7
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i32
  %82 = add nuw nsw i32 %81, %78
  %83 = getelementptr inbounds [20 x i8], ptr %14, i32 0, i32 8
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i32
  %86 = add nuw nsw i32 %82, %85
  %87 = getelementptr inbounds [20 x i8], ptr %14, i32 0, i32 9
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = add nuw nsw i32 %86, %89
  %91 = lshr i32 %90, 8
  %92 = and i32 %90, 255
  %93 = getelementptr inbounds [20 x i8], ptr %14, i32 0, i32 10
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  %96 = add nuw nsw i32 %92, %95
  %97 = add nuw nsw i32 %96, %91
  %98 = icmp eq i32 %97, 255
  br i1 %98, label %99, label %155

99:                                               ; preds = %75
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #12
  store i8 66, ptr %16, align 1
  %100 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 7, i16 noundef zeroext 1, ptr noundef nonnull %16, i16 noundef zeroext 1) #12, !callees !12
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %332, label %102, !prof !9

102:                                              ; preds = %99
  store i8 4, ptr %16, align 1
  %103 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 10, i16 noundef zeroext 1, ptr noundef nonnull %16, i16 noundef zeroext 1) #12, !callees !12
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %332, label %105, !prof !9

105:                                              ; preds = %102
  %106 = load volatile i32, ptr @jiffies, align 64
  %107 = add i32 %106, 10
  br label %108

108:                                              ; preds = %117, %105
  %109 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 10, i16 noundef zeroext 1, ptr noundef nonnull %16, i16 noundef zeroext 1) #12, !callees !11
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113, !prof !9

111:                                              ; preds = %108
  %112 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %112, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %109) #13
  br label %113

113:                                              ; preds = %111, %108
  %114 = load volatile i32, ptr @jiffies, align 64
  %115 = sub i32 %107, %114
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %336, label %117

117:                                              ; preds = %113
  %118 = load i8, ptr %16, align 1
  %119 = and i8 %118, 16
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %108

121:                                              ; preds = %117
  %122 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 9, i16 noundef zeroext 1, ptr noundef nonnull %16, i16 noundef zeroext 1) #12, !callees !11
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126, !prof !9

124:                                              ; preds = %121
  %125 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %125, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %122) #13
  br label %126

126:                                              ; preds = %124, %121
  %127 = load i8, ptr %16, align 1
  %128 = zext i8 %127 to i16
  %129 = shl nuw i16 %128, 8
  %130 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 8, i16 noundef zeroext 1, ptr noundef nonnull %16, i16 noundef zeroext 1) #12, !callees !11
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134, !prof !9

132:                                              ; preds = %126
  %133 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %133, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %130) #13
  br label %134

134:                                              ; preds = %132, %126
  %135 = load i8, ptr %16, align 1
  %136 = zext i8 %135 to i16
  %137 = or i16 %129, %136
  %138 = icmp eq i16 %137, -1
  %139 = icmp sgt i16 %129, -1
  %140 = or i1 %139, %138
  br i1 %140, label %141, label %229

141:                                              ; preds = %134
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #12
  store i16 0, ptr %12, align 2
  %142 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext 60, i16 noundef zeroext 1, ptr noundef nonnull %12, i16 noundef zeroext 2) #12, !callees !11
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146, !prof !9

144:                                              ; preds = %141
  %145 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %145, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %142) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #12
  br label %229

146:                                              ; preds = %141
  %147 = load i16, ptr %12, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #12
  %148 = lshr i16 %147, 8
  %149 = trunc i16 %148 to i8
  %150 = add i8 %149, 4
  %151 = icmp ult i8 %150, 3
  br i1 %151, label %217, label %229

152:                                              ; preds = %44, %39
  %153 = phi i32 [ %42, %39 ], [ %45, %44 ]
  %154 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %154, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %153) #13
  br label %155

155:                                              ; preds = %152, %75, %70, %55
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %11, i8 0, i32 64, i1 false) #12, !annotation !8
  %156 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 64, ptr noundef nonnull %11, i16 noundef zeroext 64) #12, !callees !11
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %160, !prof !9

158:                                              ; preds = %155
  %159 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %159, ptr noundef nonnull @.str.1, i32 noundef 64, i32 noundef %156) #13
  br label %206

160:                                              ; preds = %155
  %161 = load i8, ptr %11, align 1
  %162 = icmp eq i8 %161, -1
  br i1 %162, label %206, label %163

163:                                              ; preds = %160
  %164 = zext i8 %161 to i16
  br label %167

165:                                              ; preds = %167
  %166 = icmp ugt i16 %173, 255
  br i1 %166, label %176, label %182

167:                                              ; preds = %167, %163
  %168 = phi i32 [ 1, %163 ], [ %174, %167 ]
  %169 = phi i16 [ %164, %163 ], [ %173, %167 ]
  %170 = getelementptr [64 x i8], ptr %11, i32 0, i32 %168
  %171 = load i8, ptr %170, align 1
  %172 = zext i8 %171 to i16
  %173 = add i16 %169, %172
  %174 = add nuw nsw i32 %168, 1
  %175 = icmp eq i32 %174, 64
  br i1 %175, label %165, label %167

176:                                              ; preds = %176, %165
  %177 = phi i16 [ %180, %176 ], [ %173, %165 ]
  %178 = and i16 %177, 255
  %179 = lshr i16 %177, 8
  %180 = add nuw nsw i16 %178, %179
  %181 = icmp ugt i16 %180, 255
  br i1 %181, label %176, label %182

182:                                              ; preds = %176, %165
  %183 = phi i16 [ %173, %165 ], [ %180, %176 ]
  %184 = icmp eq i16 %183, 255
  br i1 %184, label %185, label %206

185:                                              ; preds = %182
  %186 = getelementptr inbounds [64 x i8], ptr %11, i32 0, i32 51
  %187 = load i8, ptr %186, align 1
  %188 = zext i8 %187 to i16
  %189 = shl nuw i16 %188, 8
  %190 = getelementptr inbounds [64 x i8], ptr %11, i32 0, i32 52
  %191 = load i8, ptr %190, align 1
  %192 = zext i8 %191 to i16
  %193 = or i16 %189, %192
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #12
  %194 = icmp sgt i16 %193, -2
  br i1 %194, label %195, label %229

195:                                              ; preds = %185
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #12
  store i16 0, ptr %10, align 2
  %196 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext 60, i16 noundef zeroext 1, ptr noundef nonnull %10, i16 noundef zeroext 2) #12, !callees !11
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %200, !prof !9

198:                                              ; preds = %195
  %199 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %199, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %196) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #12
  br label %229

200:                                              ; preds = %195
  %201 = load i16, ptr %10, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #12
  %202 = lshr i16 %201, 8
  %203 = trunc i16 %202 to i8
  %204 = add i8 %203, 4
  %205 = icmp ult i8 %204, 3
  br i1 %205, label %221, label %229

206:                                              ; preds = %182, %160, %158
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #12
  store i16 0, ptr %9, align 2
  %207 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext 60, i16 noundef zeroext 1, ptr noundef nonnull %9, i16 noundef zeroext 2) #12, !callees !11
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %211, !prof !9

209:                                              ; preds = %206
  %210 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %210, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %207) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  br label %229

211:                                              ; preds = %206
  %212 = load i16, ptr %9, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  %213 = lshr i16 %212, 8
  %214 = trunc i16 %213 to i8
  %215 = add i8 %214, 4
  %216 = icmp ult i8 %215, 3
  br i1 %216, label %225, label %229

217:                                              ; preds = %146
  %218 = sext i8 %150 to i32
  %219 = getelementptr inbounds [3 x i16], ptr @switch.table.ax88179_led_setting.19, i32 0, i32 %218
  %220 = load i16, ptr %219, align 2
  br label %229

221:                                              ; preds = %200
  %222 = sext i8 %204 to i32
  %223 = getelementptr inbounds [3 x i16], ptr @switch.table.ax88179_led_setting.19, i32 0, i32 %222
  %224 = load i16, ptr %223, align 2
  br label %229

225:                                              ; preds = %211
  %226 = sext i8 %215 to i32
  %227 = getelementptr inbounds [3 x i16], ptr @switch.table.ax88179_led_setting.19, i32 0, i32 %226
  %228 = load i16, ptr %227, align 2
  br label %229

229:                                              ; preds = %225, %221, %217, %211, %209, %200, %198, %185, %146, %144, %134
  %230 = phi i16 [ %137, %134 ], [ %193, %185 ], [ %137, %144 ], [ -16959, %146 ], [ %193, %198 ], [ -16959, %200 ], [ 0, %209 ], [ -16959, %211 ], [ %220, %217 ], [ %224, %221 ], [ %228, %225 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #12
  store i16 7, ptr %8, align 2
  %231 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 31, ptr noundef nonnull %8, i16 noundef zeroext 2) #12, !callees !12
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %235, !prof !9

233:                                              ; preds = %229
  %234 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %234, ptr noundef nonnull @.str.2, i32 noundef 31, i32 noundef %231) #13
  br label %235

235:                                              ; preds = %233, %229
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  store i16 44, ptr %7, align 2
  %236 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 30, ptr noundef nonnull %7, i16 noundef zeroext 2) #12, !callees !12
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %240, !prof !9

238:                                              ; preds = %235
  %239 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %239, ptr noundef nonnull @.str.2, i32 noundef 30, i32 noundef %236) #13
  br label %240

240:                                              ; preds = %238, %235
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #12
  store i16 0, ptr %6, align 2
  %241 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 3, i16 noundef zeroext 26, ptr noundef nonnull %6, i16 noundef zeroext 2) #12, !callees !11
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %245, !prof !9

243:                                              ; preds = %240
  %244 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %244, ptr noundef nonnull @.str.1, i32 noundef 26, i32 noundef %241) #13
  br label %245

245:                                              ; preds = %243, %240
  %246 = load i16, ptr %6, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 0, ptr %5, align 2
  %247 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 3, i16 noundef zeroext 28, ptr noundef nonnull %5, i16 noundef zeroext 2) #12, !callees !11
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %249, label %251, !prof !9

249:                                              ; preds = %245
  %250 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %250, ptr noundef nonnull @.str.1, i32 noundef 28, i32 noundef %247) #13
  br label %251

251:                                              ; preds = %249, %245
  %252 = load i16, ptr %5, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  %253 = and i16 %246, -113
  %254 = and i16 %252, -1912
  %255 = shl i16 %230, 4
  %256 = and i16 %255, 16
  %257 = and i16 %230, 32
  %258 = lshr i16 %230, 4
  %259 = and i16 %258, 64
  %260 = or i16 %256, %257
  %261 = or i16 %260, %259
  %262 = or i16 %261, %253
  %263 = lshr i16 %230, 1
  %264 = and i16 %263, 1
  %265 = lshr i16 %230, 2
  %266 = and i16 %265, 16
  %267 = lshr i16 %230, 3
  %268 = and i16 %267, 256
  %269 = and i16 %263, 2
  %270 = and i16 %265, 32
  %271 = and i16 %267, 512
  %272 = and i16 %263, 4
  %273 = and i16 %265, 64
  %274 = and i16 %267, 1024
  %275 = or i16 %266, %264
  %276 = or i16 %275, %268
  %277 = or i16 %276, %269
  %278 = or i16 %277, %270
  %279 = or i16 %278, %271
  %280 = or i16 %279, %272
  %281 = or i16 %280, %273
  %282 = or i16 %281, %274
  %283 = or i16 %282, %254
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 %262, ptr %4, align 2
  %284 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 26, ptr noundef nonnull %4, i16 noundef zeroext 2) #12, !callees !12
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %286, label %288, !prof !9

286:                                              ; preds = %251
  %287 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %287, ptr noundef nonnull @.str.2, i32 noundef 26, i32 noundef %284) #13
  br label %288

288:                                              ; preds = %286, %251
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i16 %283, ptr %3, align 2
  %289 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 28, ptr noundef nonnull %3, i16 noundef zeroext 2) #12, !callees !12
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %291, label %293, !prof !9

291:                                              ; preds = %288
  %292 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %292, ptr noundef nonnull @.str.2, i32 noundef 28, i32 noundef %289) #13
  br label %293

293:                                              ; preds = %291, %288
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #12
  store i16 0, ptr %2, align 2
  %294 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 31, ptr noundef nonnull %2, i16 noundef zeroext 2) #12, !callees !12
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %296, label %298, !prof !9

296:                                              ; preds = %293
  %297 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %297, ptr noundef nonnull @.str.2, i32 noundef 31, i32 noundef %294) #13
  br label %298

298:                                              ; preds = %296, %293
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  store i8 0, ptr %15, align 1
  %299 = zext i16 %230 to i32
  %300 = and i32 %299, 16
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %303, label %302

302:                                              ; preds = %298
  store i8 1, ptr %15, align 1
  br label %307

303:                                              ; preds = %298
  %304 = and i32 %299, 31
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %303
  store i8 2, ptr %15, align 1
  br label %307

307:                                              ; preds = %306, %303, %302
  %308 = phi i8 [ 0, %303 ], [ 2, %306 ], [ 1, %302 ]
  %309 = and i32 %299, 512
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %313, label %311

311:                                              ; preds = %307
  %312 = or i8 %308, 4
  store i8 %312, ptr %15, align 1
  br label %318

313:                                              ; preds = %307
  %314 = and i32 %299, 992
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %313
  %317 = or i8 %308, 8
  store i8 %317, ptr %15, align 1
  br label %318

318:                                              ; preds = %316, %313, %311
  %319 = phi i8 [ %308, %313 ], [ %317, %316 ], [ %312, %311 ]
  %320 = and i32 %299, 16384
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %324, label %322

322:                                              ; preds = %318
  %323 = or i8 %319, 16
  store i8 %323, ptr %15, align 1
  br label %329

324:                                              ; preds = %318
  %325 = and i32 %299, 31744
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %329

327:                                              ; preds = %324
  %328 = or i8 %319, 32
  store i8 %328, ptr %15, align 1
  br label %329

329:                                              ; preds = %327, %324, %322
  %330 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 115, i16 noundef zeroext 1, ptr noundef nonnull %15, i16 noundef zeroext 1) #12, !callees !12
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %332, label %336, !prof !9

332:                                              ; preds = %329, %102, %99, %32
  %333 = phi ptr [ %33, %32 ], [ %35, %99 ], [ %35, %102 ], [ %35, %329 ]
  %334 = phi i32 [ %30, %32 ], [ %100, %99 ], [ %103, %102 ], [ %330, %329 ]
  %335 = load ptr, ptr %333, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %335, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %334) #13
  br label %336

336:                                              ; preds = %332, %329, %113
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ax88179_disable_eee(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 3, ptr %4, align 2
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

7:                                                ; preds = %1
  %8 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 31, ptr noundef nonnull %4, i16 noundef zeroext 2) #12, !callees !12
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13, !prof !9

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %12 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.2, i32 noundef 31, i32 noundef %8) #13
  br label %13

13:                                               ; preds = %10, %7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i16 12870, ptr %3, align 2
  %14 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 25, ptr noundef nonnull %3, i16 noundef zeroext 2) #12, !callees !12
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19, !prof !9

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %18 = load ptr, ptr %17, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.2, i32 noundef 25, i32 noundef %14) #13
  br label %19

19:                                               ; preds = %16, %13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #12
  store i16 0, ptr %2, align 2
  %20 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 31, ptr noundef nonnull %2, i16 noundef zeroext 2) #12, !callees !12
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25, !prof !9

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %24 = load ptr, ptr %23, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %24, ptr noundef nonnull @.str.2, i32 noundef 31, i32 noundef %20) #13
  br label %25

25:                                               ; preds = %22, %19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ax88179_ethtool_get_eee(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  tail call fastcc void @ax88179_phy_mmd_indirect(ptr noundef %0, i16 noundef zeroext 20, i16 noundef zeroext 3) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 0, ptr %5, align 2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

8:                                                ; preds = %2
  %9 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 3, i16 noundef zeroext 14, ptr noundef nonnull %5, i16 noundef zeroext 2) #12, !callees !11
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14, !prof !9

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %13, ptr noundef nonnull @.str.1, i32 noundef 14, i32 noundef %9) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  br label %81

14:                                               ; preds = %8
  %15 = load i16, ptr %5, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  %16 = zext i16 %15 to i32
  %17 = shl nuw nsw i32 %16, 2
  %18 = and i32 %17, 8
  %19 = shl nuw nsw i32 %16, 3
  %20 = and i32 %19, 32
  %21 = or i32 %20, %18
  %22 = shl nuw nsw i32 %16, 9
  %23 = and i32 %22, 4096
  %24 = or i32 %21, %23
  %25 = shl nuw nsw i32 %16, 13
  %26 = and i32 %25, 131072
  %27 = or i32 %24, %26
  %28 = and i32 %25, 262144
  %29 = or i32 %27, %28
  %30 = and i32 %25, 524288
  %31 = or i32 %29, %30
  %32 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 1
  store i32 %31, ptr %32, align 4
  call fastcc void @ax88179_phy_mmd_indirect(ptr noundef nonnull %0, i16 noundef zeroext 60, i16 noundef zeroext 7) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2
  %33 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 3, i16 noundef zeroext 14, ptr noundef nonnull %4, i16 noundef zeroext 2) #12, !callees !11
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38, !prof !9

35:                                               ; preds = %14
  %36 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %37 = load ptr, ptr %36, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %37, ptr noundef nonnull @.str.1, i32 noundef 14, i32 noundef %33) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  br label %81

38:                                               ; preds = %14
  %39 = load i16, ptr %4, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  %40 = zext i16 %39 to i32
  %41 = shl nuw nsw i32 %40, 2
  %42 = and i32 %41, 8
  %43 = shl nuw nsw i32 %40, 3
  %44 = and i32 %43, 32
  %45 = or i32 %44, %42
  %46 = shl nuw nsw i32 %40, 9
  %47 = and i32 %46, 4096
  %48 = or i32 %45, %47
  %49 = shl nuw nsw i32 %40, 13
  %50 = and i32 %49, 131072
  %51 = or i32 %48, %50
  %52 = and i32 %49, 262144
  %53 = or i32 %51, %52
  %54 = and i32 %49, 524288
  %55 = or i32 %53, %54
  %56 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 2
  store i32 %55, ptr %56, align 4
  call fastcc void @ax88179_phy_mmd_indirect(ptr noundef nonnull %0, i16 noundef zeroext 61, i16 noundef zeroext 7) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i16 0, ptr %3, align 2
  %57 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 3, i16 noundef zeroext 14, ptr noundef nonnull %3, i16 noundef zeroext 2) #12, !callees !11
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62, !prof !9

59:                                               ; preds = %38
  %60 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %61 = load ptr, ptr %60, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %61, ptr noundef nonnull @.str.1, i32 noundef 14, i32 noundef %57) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  br label %81

62:                                               ; preds = %38
  %63 = load i16, ptr %3, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  %64 = zext i16 %63 to i32
  %65 = shl nuw nsw i32 %64, 2
  %66 = and i32 %65, 8
  %67 = shl nuw nsw i32 %64, 3
  %68 = and i32 %67, 32
  %69 = or i32 %68, %66
  %70 = shl nuw nsw i32 %64, 9
  %71 = and i32 %70, 4096
  %72 = or i32 %69, %71
  %73 = shl nuw nsw i32 %64, 13
  %74 = and i32 %73, 131072
  %75 = or i32 %72, %74
  %76 = and i32 %73, 262144
  %77 = or i32 %75, %76
  %78 = and i32 %73, 524288
  %79 = or i32 %77, %78
  %80 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 3
  store i32 %79, ptr %80, align 4
  br label %81

81:                                               ; preds = %62, %59, %35, %11
  %82 = phi i32 [ 0, %62 ], [ %9, %11 ], [ %33, %35 ], [ %57, %59 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ax88179_ethtool_set_eee(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = trunc i32 %5 to i16
  %7 = lshr i16 %6, 2
  %8 = and i16 %7, 2
  %9 = lshr i16 %6, 3
  %10 = and i16 %9, 4
  %11 = or i16 %10, %8
  %12 = lshr i16 %6, 9
  %13 = and i16 %12, 8
  %14 = or i16 %11, %13
  %15 = lshr i32 %5, 13
  %16 = trunc i32 %15 to i16
  %17 = and i16 %16, 16
  %18 = or i16 %14, %17
  %19 = and i16 %16, 32
  %20 = or i16 %18, %19
  %21 = and i16 %16, 64
  %22 = or i16 %20, %21
  tail call fastcc void @ax88179_phy_mmd_indirect(ptr noundef %0, i16 noundef zeroext 60, i16 noundef zeroext 7) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i16 %22, ptr %3, align 2
  %23 = icmp eq ptr %0, null
  br i1 %23, label %24, label %25, !prof !9

24:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

25:                                               ; preds = %2
  %26 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 14, ptr noundef nonnull %3, i16 noundef zeroext 2) #12, !callees !12
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31, !prof !9

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %30 = load ptr, ptr %29, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %30, ptr noundef nonnull @.str.2, i32 noundef 14, i32 noundef %26) #13
  br label %31

31:                                               ; preds = %28, %25
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  %32 = call i32 @llvm.smin.i32(i32 %26, i32 0) #12
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_platform_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_start_xmit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ax88179_set_multicast(ptr noundef %0) #2 {
  %2 = alloca i16, align 2
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1532
  %5 = getelementptr i8, ptr %0, i32 1522
  store i16 648, ptr %5, align 2
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %42

10:                                               ; preds = %1
  %11 = and i32 %7, 512
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  %15 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, 64
  br i1 %17, label %42, label %18

18:                                               ; preds = %13
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %18
  store i64 0, ptr %4, align 1
  %21 = load ptr, ptr %14, align 4
  %22 = icmp eq ptr %21, %14
  br i1 %22, label %38, label %23

23:                                               ; preds = %23, %20
  %24 = phi ptr [ %36, %23 ], [ %21, %20 ]
  %25 = getelementptr inbounds %struct.netdev_hw_addr, ptr %24, i32 0, i32 2
  %26 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %25, i32 noundef 6) #14
  %27 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %26) #15, !srcloc !14
  %28 = lshr i32 %27, 26
  %29 = and i32 %28, 7
  %30 = shl nuw nsw i32 1, %29
  %31 = lshr i32 %27, 29
  %32 = getelementptr i8, ptr %4, i32 %31
  %33 = load i8, ptr %32, align 1
  %34 = trunc i32 %30 to i8
  %35 = or i8 %33, %34
  store i8 %35, ptr %32, align 1
  %36 = load ptr, ptr %24, align 4
  %37 = icmp eq ptr %36, %14
  br i1 %37, label %38, label %23

38:                                               ; preds = %23, %20
  %39 = tail call i32 @usbnet_write_cmd_async(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 22, i16 noundef zeroext 8, ptr noundef %4, i16 noundef zeroext 8) #12
  %40 = load i16, ptr %5, align 2
  %41 = or i16 %40, 16
  br label %42

42:                                               ; preds = %38, %13, %10, %1
  %43 = phi i16 [ %41, %38 ], [ 649, %1 ], [ 650, %13 ], [ 650, %10 ]
  store i16 %43, ptr %5, align 2
  br label %44

44:                                               ; preds = %42, %18
  %45 = phi i16 [ 648, %18 ], [ %43, %42 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #12
  store i16 %45, ptr %2, align 2
  %46 = call i32 @usbnet_write_cmd_async(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 11, i16 noundef zeroext 2, ptr noundef nonnull %2, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88179_set_mac_addr(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %8
  %14 = getelementptr %struct.sockaddr, ptr %1, i32 0, i32 1, i32 4
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = or i32 %10, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %13
  tail call void @dev_addr_mod(ptr noundef %0, i32 noundef 0, ptr noundef %9, i32 noundef 6) #12
  %20 = icmp eq ptr %3, null
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %24 = load ptr, ptr %23, align 32
  %25 = tail call i32 @usbnet_write_cmd(ptr noundef nonnull %3, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 16, i16 noundef zeroext 6, ptr noundef %24, i16 noundef zeroext 6) #12, !callees !12
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30, !prof !9

27:                                               ; preds = %22
  %28 = getelementptr i8, ptr %0, i32 1512
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %29, ptr noundef nonnull @.str.2, i32 noundef 6, i32 noundef %25) #13
  br label %30

30:                                               ; preds = %27, %22
  %31 = tail call i32 @llvm.smin.i32(i32 %25, i32 0)
  br label %32

32:                                               ; preds = %30, %13, %8, %2
  %33 = phi i32 [ -16, %2 ], [ -99, %13 ], [ %31, %30 ], [ -99, %8 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88179_ioctl(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1552
  %5 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %6 = tail call i32 @generic_mii_ioctl(ptr noundef %4, ptr noundef %5, i32 noundef %2, ptr noundef null) #12
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88179_change_mtu(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = getelementptr i8, ptr %0, i32 1408
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 19
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = add i32 %11, %1
  %13 = getelementptr i8, ptr %0, i32 1544
  store i32 %12, ptr %13, align 4
  %14 = icmp ugt i32 %1, 1500
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #12
  store i16 0, ptr %6, align 2
  %16 = icmp eq ptr %7, null
  br i1 %16, label %17, label %18, !prof !9

17:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

18:                                               ; preds = %15
  %19 = call i32 @usbnet_read_cmd(ptr noundef nonnull %7, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %6, i16 noundef zeroext 2) #12, !callees !11
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24, !prof !9

21:                                               ; preds = %18
  %22 = getelementptr i8, ptr %0, i32 1512
  %23 = load ptr, ptr %22, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %23, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %19) #13
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i16, ptr %6, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  %26 = or i16 %25, -32704
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 %26, ptr %5, align 2
  %27 = call i32 @usbnet_write_cmd(ptr noundef nonnull %7, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %5, i16 noundef zeroext 2) #12, !callees !12
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32, !prof !9

29:                                               ; preds = %24
  %30 = getelementptr i8, ptr %0, i32 1512
  %31 = load ptr, ptr %30, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %31, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %27) #13
  br label %32

32:                                               ; preds = %29, %24
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  br label %51

33:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2
  %34 = icmp eq ptr %7, null
  br i1 %34, label %35, label %36, !prof !9

35:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

36:                                               ; preds = %33
  %37 = call i32 @usbnet_read_cmd(ptr noundef nonnull %7, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %4, i16 noundef zeroext 2) #12, !callees !11
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42, !prof !9

39:                                               ; preds = %36
  %40 = getelementptr i8, ptr %0, i32 1512
  %41 = load ptr, ptr %40, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %41, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %37) #13
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i16, ptr %4, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  %44 = and i16 %43, 32703
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i16 %44, ptr %3, align 2
  %45 = call i32 @usbnet_write_cmd(ptr noundef nonnull %7, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %3, i16 noundef zeroext 2) #12, !callees !12
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50, !prof !9

47:                                               ; preds = %42
  %48 = getelementptr i8, ptr %0, i32 1512
  %49 = load ptr, ptr %48, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %49, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %45) #13
  br label %50

50:                                               ; preds = %47, %42
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  br label %51

51:                                               ; preds = %50, %32
  call void @usbnet_update_max_qlen(ptr noundef nonnull %7) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_tx_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88179_set_features(ptr noundef %0, i64 noundef %1) #2 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  store i8 0, ptr %3, align 1, !annotation !8
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 23
  %6 = load i64, ptr %5, align 16
  %7 = xor i64 %6, %1
  %8 = and i64 %7, 2
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = icmp eq ptr %4, null
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

13:                                               ; preds = %10
  %14 = call i32 @usbnet_read_cmd(ptr noundef nonnull %4, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 53, i16 noundef zeroext 1, ptr noundef nonnull %3, i16 noundef zeroext 1) #12, !callees !11
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19, !prof !9

16:                                               ; preds = %13
  %17 = getelementptr i8, ptr %0, i32 1512
  %18 = load ptr, ptr %17, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %14) #13
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i8, ptr %3, align 1
  %21 = xor i8 %20, 6
  store i8 %21, ptr %3, align 1
  %22 = call i32 @usbnet_write_cmd(ptr noundef nonnull %4, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 53, i16 noundef zeroext 1, ptr noundef nonnull %3, i16 noundef zeroext 1) #12, !callees !12
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27, !prof !9

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %0, i32 1512
  %26 = load ptr, ptr %25, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %26, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %22) #13
  br label %27

27:                                               ; preds = %24, %19, %2
  %28 = and i64 %7, 16
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %27
  %31 = icmp eq ptr %4, null
  br i1 %31, label %32, label %33, !prof !9

32:                                               ; preds = %30
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

33:                                               ; preds = %30
  %34 = call i32 @usbnet_read_cmd(ptr noundef nonnull %4, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 53, i16 noundef zeroext 1, ptr noundef nonnull %3, i16 noundef zeroext 1) #12, !callees !11
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39, !prof !9

36:                                               ; preds = %33
  %37 = getelementptr i8, ptr %0, i32 1512
  %38 = load ptr, ptr %37, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %38, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %34) #13
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i8, ptr %3, align 1
  %41 = xor i8 %40, 96
  store i8 %41, ptr %3, align 1
  %42 = call i32 @usbnet_write_cmd(ptr noundef nonnull %4, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 53, i16 noundef zeroext 1, ptr noundef nonnull %3, i16 noundef zeroext 1) #12, !callees !12
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47, !prof !9

44:                                               ; preds = %39
  %45 = getelementptr i8, ptr %0, i32 1512
  %46 = load ptr, ptr %45, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %46, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %42) #13
  br label %47

47:                                               ; preds = %44, %39, %27
  %48 = and i64 %7, 1099511627776
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %47
  %51 = icmp eq ptr %4, null
  br i1 %51, label %52, label %53, !prof !9

52:                                               ; preds = %50
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

53:                                               ; preds = %50
  %54 = call i32 @usbnet_read_cmd(ptr noundef nonnull %4, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 52, i16 noundef zeroext 1, ptr noundef nonnull %3, i16 noundef zeroext 1) #12, !callees !11
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59, !prof !9

56:                                               ; preds = %53
  %57 = getelementptr i8, ptr %0, i32 1512
  %58 = load ptr, ptr %57, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %58, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %54) #13
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i8, ptr %3, align 1
  %61 = xor i8 %60, 103
  store i8 %61, ptr %3, align 1
  %62 = call i32 @usbnet_write_cmd(ptr noundef nonnull %4, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 52, i16 noundef zeroext 1, ptr noundef nonnull %3, i16 noundef zeroext 1) #12, !callees !12
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67, !prof !9

64:                                               ; preds = %59
  %65 = getelementptr i8, ptr %0, i32 1512
  %66 = load ptr, ptr %65, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %66, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %62) #13
  br label %67

67:                                               ; preds = %64, %59, %47
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd_async(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_update_max_qlen(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ax88179_get_wol(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  store i8 0, ptr %3, align 1, !annotation !8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

7:                                                ; preds = %2
  %8 = call i32 @usbnet_read_cmd(ptr noundef nonnull %4, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 36, i16 noundef zeroext 1, ptr noundef nonnull %3, i16 noundef zeroext 1) #12, !callees !11
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %15, !prof !9

10:                                               ; preds = %7
  %11 = getelementptr i8, ptr %0, i32 1512
  %12 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %8) #13
  %13 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  store i32 0, ptr %14, align 4
  br label %26

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  store i32 33, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %18 = load i8, ptr %3, align 1
  %19 = lshr i8 %18, 1
  %20 = and i8 %19, 1
  %21 = zext i8 %20 to i32
  store i32 %21, ptr %17, align 4
  %22 = and i8 %18, 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %15
  %25 = or i32 %21, 32
  store i32 %25, ptr %17, align 4
  br label %26

26:                                               ; preds = %24, %15, %10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88179_set_wol(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i8, align 1
  %4 = getelementptr i8, ptr %0, i32 1408
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  store i8 0, ptr %3, align 1
  %5 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, -34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %2
  %10 = and i32 %6, 33
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = and i32 %6, 32
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %6, 1
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i8 4, i8 6
  %18 = select i1 %14, i8 2, i8 %17
  store i8 %18, ptr %3, align 1
  br label %19

19:                                               ; preds = %12, %9
  %20 = icmp eq ptr %4, null
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

22:                                               ; preds = %19
  %23 = call i32 @usbnet_write_cmd(ptr noundef nonnull %4, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 36, i16 noundef zeroext 1, ptr noundef nonnull %3, i16 noundef zeroext 1) #12, !callees !12
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28, !prof !9

25:                                               ; preds = %22
  %26 = getelementptr i8, ptr %0, i32 1512
  %27 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %27, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %23) #13
  br label %28

28:                                               ; preds = %25, %22, %2
  %29 = phi i32 [ -22, %2 ], [ 0, %22 ], [ -22, %25 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_msglevel(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_set_msglevel(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ax88179_get_eeprom_len(ptr nocapture noundef readnone %0) #8 {
  ret i32 256
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88179_get_eeprom(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %49, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 1
  store i32 395316117, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 1
  %13 = add i32 %6, -1
  %14 = add i32 %13, %11
  %15 = lshr i32 %14, 1
  %16 = sub nsw i32 %15, %12
  %17 = add i32 %16, 1
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 2) #12
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %49, label %20, !prof !9

20:                                               ; preds = %8
  %21 = extractvalue { i32, i1 } %18, 0
  %22 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 3264) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %20
  %25 = icmp ult i32 %15, %12
  br i1 %25, label %42, label %26

26:                                               ; preds = %24
  %27 = icmp eq ptr %4, null
  br i1 %27, label %38, label %31, !prof !9

28:                                               ; preds = %31
  %29 = add i32 %32, 1
  %30 = icmp sgt i32 %29, %15
  br i1 %30, label %42, label %31

31:                                               ; preds = %28, %26
  %32 = phi i32 [ %29, %28 ], [ %12, %26 ]
  %33 = sub i32 %32, %12
  %34 = getelementptr i16, ptr %22, i32 %33
  %35 = trunc i32 %32 to i16
  %36 = tail call i32 @usbnet_read_cmd(ptr noundef nonnull %4, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext %35, i16 noundef zeroext 1, ptr noundef %34, i16 noundef zeroext 2) #12, !callees !11
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %39, label %28, !prof !9

38:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

39:                                               ; preds = %31
  %40 = getelementptr i8, ptr %0, i32 1512
  %41 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %41, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %36) #13
  br label %47

42:                                               ; preds = %28, %24
  %43 = load i32, ptr %10, align 4
  %44 = and i32 %43, 1
  %45 = getelementptr i8, ptr %22, i32 %44
  %46 = load i32, ptr %5, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 1 %45, i32 %46, i1 false)
  br label %47

47:                                               ; preds = %42, %39
  %48 = phi i32 [ 0, %42 ], [ -5, %39 ]
  tail call void @kfree(ptr noundef nonnull %22) #12
  br label %49

49:                                               ; preds = %47, %20, %8, %3
  %50 = phi i32 [ -22, %3 ], [ -12, %20 ], [ -12, %8 ], [ %48, %47 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88179_set_eeprom(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = getelementptr i8, ptr %0, i32 1408
  %8 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %103, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 395316117
  br i1 %14, label %15, label %103

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = lshr i32 %17, 1
  %19 = add i32 %9, -1
  %20 = add i32 %19, %17
  %21 = lshr i32 %20, 1
  %22 = sub nsw i32 %21, %18
  %23 = add i32 %22, 1
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 2) #12
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %103, label %26, !prof !9

26:                                               ; preds = %15
  %27 = extractvalue { i32, i1 } %24, 0
  %28 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %27, i32 noundef 3264) #16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %103, label %30

30:                                               ; preds = %26
  %31 = load i32, ptr %16, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #12
  store i16 0, ptr %6, align 2
  %35 = icmp eq ptr %7, null
  br i1 %35, label %36, label %37, !prof !9

36:                                               ; preds = %34
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

37:                                               ; preds = %34
  %38 = trunc i32 %18 to i16
  %39 = call i32 @usbnet_read_cmd(ptr noundef nonnull %7, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext %38, i16 noundef zeroext 1, ptr noundef nonnull %6, i16 noundef zeroext 2) #12, !callees !11
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %44, label %41, !prof !9

41:                                               ; preds = %37
  %42 = load i16, ptr %6, align 2
  store i16 %42, ptr %28, align 64
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  %43 = load i32, ptr %16, align 4
  br label %48

44:                                               ; preds = %37
  %45 = getelementptr i8, ptr %0, i32 1512
  %46 = load ptr, ptr %45, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %46, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %39) #13
  %47 = load i16, ptr %6, align 2
  store i16 %47, ptr %28, align 64
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %18) #13
  br label %101

48:                                               ; preds = %41, %30
  %49 = phi i32 [ %43, %41 ], [ %31, %30 ]
  %50 = load i32, ptr %8, align 4
  %51 = add i32 %50, %49
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %48
  %55 = getelementptr i16, ptr %28, i32 %22
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 0, ptr %5, align 2
  %56 = icmp eq ptr %7, null
  br i1 %56, label %57, label %58, !prof !9

57:                                               ; preds = %54
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

58:                                               ; preds = %54
  %59 = trunc i32 %21 to i16
  %60 = call i32 @usbnet_read_cmd(ptr noundef nonnull %7, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext %59, i16 noundef zeroext 1, ptr noundef nonnull %5, i16 noundef zeroext 2) #12, !callees !11
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %66, label %62, !prof !9

62:                                               ; preds = %58
  %63 = load i16, ptr %5, align 2
  store i16 %63, ptr %55, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  %64 = load i32, ptr %16, align 4
  %65 = load i32, ptr %8, align 4
  br label %70

66:                                               ; preds = %58
  %67 = getelementptr i8, ptr %0, i32 1512
  %68 = load ptr, ptr %67, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %68, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %60) #13
  %69 = load i16, ptr %5, align 2
  store i16 %69, ptr %55, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %21) #13
  br label %101

70:                                               ; preds = %62, %48
  %71 = phi i32 [ %65, %62 ], [ %50, %48 ]
  %72 = phi i32 [ %64, %62 ], [ %49, %48 ]
  %73 = and i32 %72, 1
  %74 = getelementptr i8, ptr %28, i32 %73
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %74, ptr align 1 %2, i32 %71, i1 false)
  %75 = icmp ult i32 %21, %18
  %76 = icmp eq ptr %7, null
  br i1 %75, label %93, label %77

77:                                               ; preds = %90, %70
  %78 = phi i32 [ %91, %90 ], [ %18, %70 ]
  %79 = sub i32 %78, %18
  %80 = getelementptr i16, ptr %28, i32 %79
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  %81 = load i16, ptr %80, align 2
  store i16 %81, ptr %4, align 2
  br i1 %76, label %82, label %83, !prof !9

82:                                               ; preds = %77
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

83:                                               ; preds = %77
  %84 = trunc i32 %78 to i16
  %85 = call i32 @usbnet_write_cmd(ptr noundef nonnull %7, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext %84, i16 noundef zeroext 1, ptr noundef nonnull %4, i16 noundef zeroext 2) #12, !callees !12
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90, !prof !9

87:                                               ; preds = %83
  %88 = getelementptr i8, ptr %0, i32 1512
  %89 = load ptr, ptr %88, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %89, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %85) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %78) #13
  br label %101

90:                                               ; preds = %83
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @msleep(i32 noundef 20) #12
  %91 = add i32 %78, 1
  %92 = icmp sgt i32 %91, %21
  br i1 %92, label %95, label %77

93:                                               ; preds = %70
  br i1 %76, label %94, label %95, !prof !9

94:                                               ; preds = %93
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

95:                                               ; preds = %93, %90
  %96 = call i32 @usbnet_write_cmd(ptr noundef nonnull %7, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #12, !callees !12
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %101, !prof !9

98:                                               ; preds = %95
  %99 = getelementptr i8, ptr %0, i32 1512
  %100 = load ptr, ptr %99, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %100, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef %96) #13
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.7) #13
  br label %101

101:                                              ; preds = %98, %95, %87, %66, %44
  %102 = phi i32 [ %39, %44 ], [ %60, %66 ], [ %85, %87 ], [ %96, %98 ], [ 0, %95 ]
  call void @kfree(ptr noundef nonnull %28) #12
  br label %103

103:                                              ; preds = %101, %26, %15, %11, %3
  %104 = phi i32 [ %102, %101 ], [ -22, %3 ], [ -22, %11 ], [ -12, %26 ], [ -12, %15 ]
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88179_get_eee(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1520
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 5
  store i32 %6, ptr %7, align 4
  %8 = getelementptr i8, ptr %0, i32 1521
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 4
  store i32 %10, ptr %11, align 4
  %12 = tail call fastcc i32 @ax88179_ethtool_get_eee(ptr noundef %3, ptr noundef %1)
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88179_set_eee(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = getelementptr i8, ptr %0, i32 1408
  %9 = getelementptr i8, ptr %0, i32 1520
  %10 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = trunc i32 %11 to i8
  store i8 %12, ptr %9, align 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  tail call fastcc void @ax88179_disable_eee(ptr noundef %8)
  br label %53

15:                                               ; preds = %2
  %16 = tail call fastcc i32 @ax88179_chk_eee(ptr noundef %8)
  %17 = trunc i32 %16 to i8
  store i8 %17, ptr %9, align 2
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %59, label %19

19:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  store i16 3, ptr %7, align 2
  %20 = icmp eq ptr %8, null
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

22:                                               ; preds = %19
  %23 = call i32 @usbnet_write_cmd(ptr noundef nonnull %8, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 31, ptr noundef nonnull %7, i16 noundef zeroext 2) #12, !callees !12
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28, !prof !9

25:                                               ; preds = %22
  %26 = getelementptr i8, ptr %0, i32 1512
  %27 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %27, ptr noundef nonnull @.str.2, i32 noundef 31, i32 noundef %23) #13
  br label %28

28:                                               ; preds = %25, %22
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #12
  store i16 12871, ptr %6, align 2
  %29 = call i32 @usbnet_write_cmd(ptr noundef nonnull %8, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 25, ptr noundef nonnull %6, i16 noundef zeroext 2) #12, !callees !12
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34, !prof !9

31:                                               ; preds = %28
  %32 = getelementptr i8, ptr %0, i32 1512
  %33 = load ptr, ptr %32, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %33, ptr noundef nonnull @.str.2, i32 noundef 25, i32 noundef %29) #13
  br label %34

34:                                               ; preds = %31, %28
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 5, ptr %5, align 2
  %35 = call i32 @usbnet_write_cmd(ptr noundef nonnull %8, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 31, ptr noundef nonnull %5, i16 noundef zeroext 2) #12, !callees !12
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40, !prof !9

37:                                               ; preds = %34
  %38 = getelementptr i8, ptr %0, i32 1512
  %39 = load ptr, ptr %38, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %39, ptr noundef nonnull @.str.2, i32 noundef 31, i32 noundef %35) #13
  br label %40

40:                                               ; preds = %37, %34
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 1664, ptr %4, align 2
  %41 = call i32 @usbnet_write_cmd(ptr noundef nonnull %8, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 1, ptr noundef nonnull %4, i16 noundef zeroext 2) #12, !callees !12
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46, !prof !9

43:                                               ; preds = %40
  %44 = getelementptr i8, ptr %0, i32 1512
  %45 = load ptr, ptr %44, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %45, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef %41) #13
  br label %46

46:                                               ; preds = %43, %40
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i16 0, ptr %3, align 2
  %47 = call i32 @usbnet_write_cmd(ptr noundef nonnull %8, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 31, ptr noundef nonnull %3, i16 noundef zeroext 2) #12, !callees !12
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52, !prof !9

49:                                               ; preds = %46
  %50 = getelementptr i8, ptr %0, i32 1512
  %51 = load ptr, ptr %50, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %51, ptr noundef nonnull @.str.2, i32 noundef 31, i32 noundef %47) #13
  br label %52

52:                                               ; preds = %49, %46
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  br label %53

53:                                               ; preds = %52, %14
  %54 = call fastcc i32 @ax88179_ethtool_set_eee(ptr noundef %8, ptr noundef %1)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = getelementptr i8, ptr %0, i32 1552
  %58 = call i32 @mii_nway_restart(ptr noundef %57) #12
  call void @usbnet_link_change(ptr noundef %8, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %59

59:                                               ; preds = %56, %53, %15
  %60 = phi i32 [ 0, %56 ], [ -95, %15 ], [ %54, %53 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88179_get_link_ksettings(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1552
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %3, ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ax88179_set_link_ksettings(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1552
  %4 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %3, ptr noundef %1) #12
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ax88179_chk_eee(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca %struct.ethtool_cmd, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #12
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %6, i8 0, i32 40, i1 false)
  store i32 1, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21
  %8 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25
  call void @mii_ethtool_gset(ptr noundef %8, ptr noundef nonnull %5) #12
  %9 = getelementptr inbounds %struct.ethtool_cmd, ptr %5, i32 0, i32 4
  %10 = load i8, ptr %9, align 2
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %83, label %13

13:                                               ; preds = %1
  call fastcc void @ax88179_phy_mmd_indirect(ptr noundef %0, i16 noundef zeroext 20, i16 noundef zeroext 3) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2
  %14 = icmp eq ptr %0, null
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %13
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

16:                                               ; preds = %13
  %17 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 3, i16 noundef zeroext 14, ptr noundef nonnull %4, i16 noundef zeroext 2) #12, !callees !11
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23, !prof !9

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %21 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %21, ptr noundef nonnull @.str.1, i32 noundef 14, i32 noundef %17) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  %22 = getelementptr inbounds %struct.ax88179_data, ptr %7, i32 0, i32 1
  store i8 0, ptr %22, align 1
  br label %85

23:                                               ; preds = %16
  %24 = load i16, ptr %4, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  %25 = zext i16 %24 to i32
  %26 = shl nuw nsw i32 %25, 2
  %27 = and i32 %26, 8
  %28 = shl nuw nsw i32 %25, 3
  %29 = and i32 %28, 32
  %30 = or i32 %29, %27
  %31 = shl nuw nsw i32 %25, 9
  %32 = and i32 %31, 4096
  %33 = or i32 %30, %32
  %34 = shl nuw nsw i32 %25, 13
  %35 = and i32 %34, 131072
  %36 = or i32 %33, %35
  %37 = and i32 %34, 262144
  %38 = or i32 %36, %37
  %39 = and i32 %34, 524288
  %40 = or i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %23
  %43 = getelementptr inbounds %struct.ax88179_data, ptr %7, i32 0, i32 1
  store i8 0, ptr %43, align 1
  br label %85

44:                                               ; preds = %23
  call fastcc void @ax88179_phy_mmd_indirect(ptr noundef nonnull %0, i16 noundef zeroext 61, i16 noundef zeroext 7) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i16 0, ptr %3, align 2
  %45 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 3, i16 noundef zeroext 14, ptr noundef nonnull %3, i16 noundef zeroext 2) #12, !callees !11
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51, !prof !9

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %49 = load ptr, ptr %48, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %49, ptr noundef nonnull @.str.1, i32 noundef 14, i32 noundef %45) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  %50 = getelementptr inbounds %struct.ax88179_data, ptr %7, i32 0, i32 1
  store i8 0, ptr %50, align 1
  br label %85

51:                                               ; preds = %44
  %52 = load i16, ptr %3, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  call fastcc void @ax88179_phy_mmd_indirect(ptr noundef nonnull %0, i16 noundef zeroext 60, i16 noundef zeroext 7) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #12
  store i16 0, ptr %2, align 2
  %53 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 3, i16 noundef zeroext 14, ptr noundef nonnull %2, i16 noundef zeroext 2) #12, !callees !11
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59, !prof !9

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %57 = load ptr, ptr %56, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %57, ptr noundef nonnull @.str.1, i32 noundef 14, i32 noundef %53) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  %58 = getelementptr inbounds %struct.ax88179_data, ptr %7, i32 0, i32 1
  store i8 0, ptr %58, align 1
  br label %85

59:                                               ; preds = %51
  %60 = load i16, ptr %2, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  %61 = zext i16 %60 to i32
  %62 = shl nuw nsw i32 %61, 2
  %63 = and i32 %62, 8
  %64 = shl nuw nsw i32 %61, 3
  %65 = and i32 %64, 32
  %66 = or i32 %65, %63
  %67 = zext i16 %52 to i32
  %68 = shl nuw nsw i32 %67, 2
  %69 = and i32 %68, 8
  %70 = shl nuw nsw i32 %67, 3
  %71 = and i32 %70, 32
  %72 = or i32 %71, %69
  %73 = getelementptr inbounds %struct.ethtool_cmd, ptr %5, i32 0, i32 3
  %74 = load i16, ptr %73, align 4
  %75 = icmp eq i16 %74, 1000
  %76 = select i1 %75, i32 32, i32 8
  %77 = and i32 %66, %72
  %78 = and i32 %77, %76
  %79 = icmp eq i32 %78, 0
  %80 = getelementptr inbounds %struct.ax88179_data, ptr %7, i32 0, i32 1
  br i1 %79, label %81, label %82

81:                                               ; preds = %59
  store i8 0, ptr %80, align 1
  br label %85

82:                                               ; preds = %59
  store i8 1, ptr %80, align 1
  br label %85

83:                                               ; preds = %1
  %84 = getelementptr inbounds %struct.ax88179_data, ptr %7, i32 0, i32 1
  store i8 0, ptr %84, align 1
  br label %85

85:                                               ; preds = %83, %82, %81, %55, %47, %42, %19
  %86 = phi i32 [ 0, %83 ], [ 0, %19 ], [ 0, %47 ], [ 0, %55 ], [ 1, %82 ], [ 0, %81 ], [ 0, %42 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #12
  ret i32 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_gset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ax88179_phy_mmd_indirect(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #11 {
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #12
  store i16 %2, ptr %6, align 2
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/ax88179_178a.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

9:                                                ; preds = %3
  %10 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 13, ptr noundef nonnull %6, i16 noundef zeroext 2) #12, !callees !12
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15, !prof !9

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %14 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.2, i32 noundef 13, i32 noundef %10) #13
  br label %15

15:                                               ; preds = %12, %9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 %1, ptr %5, align 2
  %16 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 14, ptr noundef nonnull %5, i16 noundef zeroext 2) #12, !callees !12
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21, !prof !9

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %20 = load ptr, ptr %19, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %20, ptr noundef nonnull @.str.2, i32 noundef 14, i32 noundef %16) #13
  br label %21

21:                                               ; preds = %18, %15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  %22 = or i16 %2, 16384
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 %22, ptr %4, align 2
  %23 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 13, ptr noundef nonnull %4, i16 noundef zeroext 2) #12, !callees !12
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28, !prof !9

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %27 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %27, ptr noundef nonnull @.str.2, i32 noundef 13, i32 noundef %23) #13
  br label %28

28:                                               ; preds = %25, %21
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_skb_return(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2155227694, i64 2155228189, i64 2155227731, i64 2155227787, i64 2155227821, i64 2155227845, i64 2155227886, i64 2155227907, i64 2155227935, i64 2155227969}
!11 = !{ptr @usbnet_read_cmd, ptr @usbnet_read_cmd_nopm}
!12 = !{ptr @usbnet_write_cmd, ptr @usbnet_write_cmd_nopm}
!13 = !{i64 2155228784, i64 2155229279, i64 2155228821, i64 2155228877, i64 2155228911, i64 2155228935, i64 2155228976, i64 2155228997, i64 2155229025, i64 2155229059}
!14 = !{i64 7129784}
