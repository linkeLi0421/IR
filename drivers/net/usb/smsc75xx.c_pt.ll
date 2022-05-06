; ModuleID = '/llk/IR/drivers/net/usb/smsc75xx.c_pt.bc'
source_filename = "../drivers/net/usb/smsc75xx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.90 }
%union.anon.90 = type { ptr }
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
%struct.driver_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.lock_class_key = type {}
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.smsc75xx_priv = type { ptr, i32, i32, [16 x i32], %struct.mutex, %struct.spinlock, %struct.work_struct, i8 }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i16, i8, i8, i32, [2 x i32] }
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
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ifreq = type { %union.anon.96, %union.anon.97 }
%union.anon.96 = type { [16 x i8] }
%union.anon.97 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }

@__param_str_turbo_mode = internal constant [20 x i8] c"smsc75xx.turbo_mode\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@turbo_mode = internal global i8 1, align 1
@__param_turbo_mode = internal constant %struct.kernel_param { ptr @__param_str_turbo_mode, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.90 { ptr @turbo_mode } }, section "__param", align 4
@__UNIQUE_ID_turbo_modetype335 = internal constant [34 x i8] c"smsc75xx.parmtype=turbo_mode:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_turbo_mode336 = internal constant [67 x i8] c"smsc75xx.parm=turbo_mode:Enable multiple frames per Rx transaction\00", section ".modinfo", align 1
@__initcall__kmod_smsc75xx__339_2340_smsc75xx_driver_init6 = internal global ptr @smsc75xx_driver_init, section ".initcall6.init", align 4
@smsc75xx_driver = internal global %struct.usb_driver { ptr @.str, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @smsc75xx_suspend, ptr @smsc75xx_resume, ptr @smsc75xx_resume, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 6 }, align 4
@__exitcall_smsc75xx_driver_exit = internal global ptr @smsc75xx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author340 = internal constant [26 x i8] c"smsc75xx.author=Nancy Lin\00", section ".modinfo", align 1
@__UNIQUE_ID_author341 = internal constant [66 x i8] c"smsc75xx.author=Steve Glendinning <steve.glendinning@shawell.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description342 = internal constant [63 x i8] c"smsc75xx.description=SMSC75XX USB 2.0 Gigabit Ethernet Devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file343 = internal constant [39 x i8] c"smsc75xx.file=drivers/net/usb/smsc75xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license344 = internal constant [21 x i8] c"smsc75xx.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"smsc75xx\00", align 1
@products = internal constant [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1060, i16 29952, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc75xx_info to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 29957, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @smsc75xx_info to i32) }, %struct.usb_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"usbnet_suspend error\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"error during last resume\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"entering SUSPEND2 mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Error reading WUCSR\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Error writing WUCSR\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Error reading PMT_CTL\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Error writing PMT_CTL\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"error enabling PHY wakeup ints\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"entering SUSPEND1 mode\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Error reading PHY_MODE_CTRL_STS\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Error writing WUF_CFGX\0A\00", align 1
@__const.smsc75xx_suspend.mcast = private unnamed_addr constant [3 x i8] c"\01\00^", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"enabling multicast detection\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Error writing wakeup filter\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"enabling ARP detection\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"enabling packet match detection\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"disabling packet match detection\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"enabling PHY wakeup\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"enabling magic packet wakeup\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"enabling broadcast detection\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"enabling unicast detection\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"Failed to read MAC_RX: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"Failed to write MAC_RX: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"entering SUSPEND0 mode\0A\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"Error reading MII_BMSR\0A\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"Error reading FCT_RX_CTL\0A\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"Failed to read reg index 0x%08x: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"Failed to write reg index 0x%08x: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"Error reading PHY_INT_SRC\0A\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"Error reading PHY_INT_MASK\0A\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"MII is busy in smsc75xx_mdio_read\0A\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"Error writing MII_ACCESS\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"Timed out reading MII reg %02X\0A\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"Error reading MII_DATA\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.34 = private unnamed_addr constant [26 x i8] c"Error reading MII_ACCESS\0A\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"MII is busy in smsc75xx_mdio_write\0A\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"Error writing MII_DATA\0A\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"Timed out writing MII reg %02X\0A\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"Error writing WUF_MASKX\0A\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"resuming from SUSPEND2\0A\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"device not ready in smsc75xx_resume\0A\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"Failed to read PMT_CTL: %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"timeout waiting for device ready\0A\00", align 1
@smsc75xx_info = internal constant %struct.driver_info { ptr @.str.43, i32 2592, ptr @smsc75xx_bind, ptr @smsc75xx_unbind, ptr @smsc75xx_reset, ptr null, ptr null, ptr @smsc75xx_manage_power, ptr @smsc75xx_status, ptr @smsc75xx_link_reset, ptr @smsc75xx_rx_fixup, ptr @smsc75xx_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, align 4
@.str.43 = private unnamed_addr constant [34 x i8] c"smsc75xx USB 2.0 Gigabit Ethernet\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"\016smsc75xx v1.0.0\0A\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"usbnet_get_endpoints failed: %d\0A\00", align 1
@smsc75xx_bind.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"&pdata->dataport_mutex\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"device not ready in smsc75xx_bind\0A\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"smsc75xx_reset error %d\0A\00", align 1
@smsc75xx_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr @smsc75xx_set_multicast, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @smsc75xx_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @smsc75xx_change_mtu, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smsc75xx_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@smsc75xx_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @usbnet_get_drvinfo, ptr null, ptr null, ptr @smsc75xx_ethtool_get_wol, ptr @smsc75xx_ethtool_set_wol, ptr @usbnet_get_msglevel, ptr @usbnet_set_msglevel, ptr @usbnet_nway_reset, ptr @usbnet_get_link, ptr null, ptr @smsc75xx_ethtool_get_eeprom_len, ptr @smsc75xx_ethtool_get_eeprom, ptr @smsc75xx_ethtool_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_get_link_ksettings_mii, ptr @usbnet_set_link_ksettings_mii, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.49 = private unnamed_addr constant [23 x i8] c"Error writing RFE_CRL\0A\00", align 1
@.str.50 = private unnamed_addr constant [39 x i8] c"smsc75xx_dataport_write busy on entry\0A\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"Error reading DP_SEL\0A\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"Error writing DP_SEL\0A\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"Error writing DP_ADDR\0A\00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"Error writing DP_DATA\0A\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"Error writing DP_CMD\0A\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"smsc75xx_dataport_write timeout\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.57 = private unnamed_addr constant [43 x i8] c"smsc75xx_dataport_wait_not_busy timed out\0A\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"Error writing E2P_CMD\0A\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"Error reading E2P_DATA\0A\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"Error reading E2P_CMD\0A\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"EEPROM is busy\0A\00", align 1
@.str.62 = private unnamed_addr constant [31 x i8] c"EEPROM read operation timeout\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.63 = private unnamed_addr constant [35 x i8] c"Failed to set mac rx frame length\0A\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"Error writing RFE_CTL\0A\00", align 1
@.str.65 = private unnamed_addr constant [35 x i8] c"device_set_wakeup_enable error %d\0A\00", align 1
@.str.66 = private unnamed_addr constant [36 x i8] c"EEPROM: magic value mismatch: 0x%x\0A\00", align 1
@.str.67 = private unnamed_addr constant [24 x i8] c"Error writing E2P_DATA\0A\00", align 1
@.str.68 = private unnamed_addr constant [36 x i8] c"device not ready in smsc75xx_reset\0A\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"Failed to read HW_CFG: %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"Failed to write HW_CFG: %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [37 x i8] c"timeout on completion of Lite Reset\0A\00", align 1
@.str.72 = private unnamed_addr constant [29 x i8] c"Failed to write PMT_CTL: %d\0A\00", align 1
@.str.73 = private unnamed_addr constant [31 x i8] c"timeout waiting for PHY Reset\0A\00", align 1
@.str.74 = private unnamed_addr constant [27 x i8] c"Failed to set mac address\0A\00", align 1
@.str.75 = private unnamed_addr constant [31 x i8] c"Failed to write BURST_CAP: %d\0A\00", align 1
@.str.76 = private unnamed_addr constant [30 x i8] c"Failed to read BURST_CAP: %d\0A\00", align 1
@.str.77 = private unnamed_addr constant [33 x i8] c"Failed to write BULK_IN_DLY: %d\0A\00", align 1
@.str.78 = private unnamed_addr constant [32 x i8] c"Failed to read BULK_IN_DLY: %d\0A\00", align 1
@.str.79 = private unnamed_addr constant [37 x i8] c"Failed to write FCT_RX_FIFO_END: %d\0A\00", align 1
@.str.80 = private unnamed_addr constant [37 x i8] c"Failed to write FCT_TX_FIFO_END: %d\0A\00", align 1
@.str.81 = private unnamed_addr constant [29 x i8] c"Failed to write INT_STS: %d\0A\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"Failed to read ID_REV: %d\0A\00", align 1
@.str.83 = private unnamed_addr constant [28 x i8] c"Failed to read E2P_CMD: %d\0A\00", align 1
@.str.84 = private unnamed_addr constant [33 x i8] c"Failed to read LED_GPIO_CFG: %d\0A\00", align 1
@.str.85 = private unnamed_addr constant [34 x i8] c"Failed to write LED_GPIO_CFG: %d\0A\00", align 1
@.str.86 = private unnamed_addr constant [26 x i8] c"Failed to write FLOW: %d\0A\00", align 1
@.str.87 = private unnamed_addr constant [30 x i8] c"Failed to write FCT_FLOW: %d\0A\00", align 1
@.str.88 = private unnamed_addr constant [28 x i8] c"Failed to read RFE_CTL: %d\0A\00", align 1
@.str.89 = private unnamed_addr constant [29 x i8] c"Failed to write RFE_CTL: %d\0A\00", align 1
@.str.90 = private unnamed_addr constant [30 x i8] c"Failed to initialize PHY: %d\0A\00", align 1
@.str.91 = private unnamed_addr constant [31 x i8] c"Failed to read INT_EP_CTL: %d\0A\00", align 1
@.str.92 = private unnamed_addr constant [32 x i8] c"Failed to write INT_EP_CTL: %d\0A\00", align 1
@.str.93 = private unnamed_addr constant [27 x i8] c"Failed to read MAC_CR: %d\0A\00", align 1
@.str.94 = private unnamed_addr constant [28 x i8] c"Failed to write MAC_CR: %d\0A\00", align 1
@.str.95 = private unnamed_addr constant [27 x i8] c"Failed to read MAC_TX: %d\0A\00", align 1
@.str.96 = private unnamed_addr constant [28 x i8] c"Failed to write MAC_TX: %d\0A\00", align 1
@.str.97 = private unnamed_addr constant [31 x i8] c"Failed to read FCT_TX_CTL: %d\0A\00", align 1
@.str.98 = private unnamed_addr constant [32 x i8] c"Failed to write FCT_TX_CTL: %d\0A\00", align 1
@.str.99 = private unnamed_addr constant [35 x i8] c"Failed to set max rx frame length\0A\00", align 1
@.str.100 = private unnamed_addr constant [31 x i8] c"Failed to read FCT_RX_CTL: %d\0A\00", align 1
@.str.101 = private unnamed_addr constant [32 x i8] c"Failed to write FCT_RX_CTL: %d\0A\00", align 1
@.str.102 = private unnamed_addr constant [30 x i8] c"Failed to write RX_ADDRH: %d\0A\00", align 1
@.str.103 = private unnamed_addr constant [30 x i8] c"Failed to write RX_ADDRL: %d\0A\00", align 1
@.str.104 = private unnamed_addr constant [32 x i8] c"Failed to write ADDR_FILTX: %d\0A\00", align 1
@.str.105 = private unnamed_addr constant [34 x i8] c"Failed to write ADDR_FILTX+4: %d\0A\00", align 1
@.str.106 = private unnamed_addr constant [24 x i8] c"Error reading MII_BMCR\0A\00", align 1
@.str.107 = private unnamed_addr constant [22 x i8] c"timeout on PHY Reset\0A\00", align 1
@.str.108 = private unnamed_addr constant [33 x i8] c"Timeout waiting for PHY link up\0A\00", align 1
@.str.109 = private unnamed_addr constant [26 x i8] c"unexpected urb length %d\0A\00", align 1
@.str.110 = private unnamed_addr constant [38 x i8] c"unexpected interrupt, intdata=0x%08X\0A\00", align 1
@.str.111 = private unnamed_addr constant [23 x i8] c"Error writing INT_STS\0A\00", align 1
@.str.112 = private unnamed_addr constant [20 x i8] c"Error writing FLOW\0A\00", align 1
@.str.113 = private unnamed_addr constant [24 x i8] c"Error writing FCT_FLOW\0A\00", align 1
@.str.114 = private unnamed_addr constant [22 x i8] c"Error allocating skb\0A\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author340, ptr @__UNIQUE_ID_author341, ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_file343, ptr @__UNIQUE_ID_license344, ptr @__UNIQUE_ID_turbo_mode336, ptr @__UNIQUE_ID_turbo_modetype335, ptr @__exitcall_smsc75xx_driver_exit, ptr @__initcall__kmod_smsc75xx__339_2340_smsc75xx_driver_init6, ptr @__param_turbo_mode, ptr @smsc75xx_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @smsc75xx_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @usb_register_driver(ptr noundef nonnull @smsc75xx_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @smsc75xx_driver_exit() #0 section ".exit.text" {
  tail call void @usb_deregister(ptr noundef nonnull @smsc75xx_driver) #12
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
define internal i32 @smsc75xx_suspend(ptr noundef %0, [1 x i32] %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i8], align 1
  %14 = alloca [2 x i8], align 2
  %15 = extractvalue [1 x i32] %1, 0
  %16 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.usbnet, ptr %17, i32 0, i32 21
  %19 = load i32, ptr %18, align 4
  %20 = inttoptr i32 %19 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #12
  store i32 0, ptr %12, align 4, !annotation !8
  %21 = tail call i32 @usbnet_suspend(ptr noundef %0, [1 x i32] %1) #12
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.usbnet, ptr %17, i32 0, i32 19
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.1) #13
  br label %399

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.smsc75xx_priv, ptr %20, i32 0, i32 7
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.usbnet, ptr %17, i32 0, i32 19
  %32 = load ptr, ptr %31, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %32, ptr noundef nonnull @.str.2) #13
  store i8 0, ptr %27, align 4
  br label %33

33:                                               ; preds = %30, %26
  %34 = getelementptr inbounds %struct.usbnet, ptr %17, i32 0, i32 25
  %35 = getelementptr inbounds %struct.usbnet, ptr %17, i32 0, i32 19
  %36 = load ptr, ptr %35, align 4
  %37 = load i32, ptr %34, align 4
  %38 = tail call fastcc i32 @smsc75xx_mdio_read_nopm(ptr noundef %36, i32 noundef %37, i32 noundef 1) #12
  %39 = icmp slt i32 %38, 0
  %40 = load ptr, ptr %35, align 4
  br i1 %39, label %41, label %42

41:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %40, ptr noundef nonnull @.str.24) #13
  br label %51

42:                                               ; preds = %33
  %43 = load i32, ptr %34, align 4
  %44 = tail call fastcc i32 @smsc75xx_mdio_read_nopm(ptr noundef %40, i32 noundef %43, i32 noundef 1) #12
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %47, ptr noundef nonnull @.str.24) #13
  br label %51

48:                                               ; preds = %42
  %49 = lshr i32 %44, 2
  %50 = and i32 %49, 1
  br label %51

51:                                               ; preds = %48, %46, %41
  %52 = phi i32 [ %38, %41 ], [ %44, %46 ], [ %50, %48 ]
  %53 = icmp eq i32 %15, 1026
  br i1 %53, label %54, label %117

54:                                               ; preds = %51
  %55 = load ptr, ptr %35, align 4
  %56 = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 6
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = tail call fastcc i32 @smsc75xx_enter_suspend2(ptr noundef %17) #12
  br label %391

62:                                               ; preds = %54
  %63 = icmp eq i32 %52, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %62
  %65 = tail call fastcc i32 @smsc75xx_enable_phy_wakeup_interrupts(ptr noundef %17, i16 noundef zeroext 64) #12
  %66 = icmp slt i32 %65, 0
  %67 = load ptr, ptr %35, align 4
  br i1 %66, label %68, label %69

68:                                               ; preds = %64
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %67, ptr noundef nonnull @.str.8) #13
  br label %391

69:                                               ; preds = %64
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %67, ptr noundef nonnull @.str.9) #13
  %70 = tail call fastcc i32 @smsc75xx_enter_suspend1(ptr noundef %17) #12
  br label %391

71:                                               ; preds = %62
  %72 = tail call fastcc i32 @smsc75xx_enable_phy_wakeup_interrupts(ptr noundef %17, i16 noundef zeroext 16) #12
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %75, ptr noundef nonnull @.str.8) #13
  br label %391

76:                                               ; preds = %71
  %77 = load i32, ptr %18, align 4
  %78 = inttoptr i32 %77 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #12
  store i32 0, ptr %11, align 4, !annotation !8
  %79 = icmp eq ptr %17, null
  br i1 %79, label %80, label %81, !prof !9

80:                                               ; preds = %76
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

81:                                               ; preds = %76
  %82 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %17, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 144, ptr noundef nonnull %11, i16 noundef zeroext 4) #12, !callees !11
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87, !prof !9

84:                                               ; preds = %81
  %85 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %85, ptr noundef nonnull @.str.26, i32 noundef 144, i32 noundef %82) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  %86 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %86, ptr noundef nonnull @.str.25) #13
  br label %391

87:                                               ; preds = %81
  %88 = load i32, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  %89 = and i32 %88, 65535
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %391

91:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  store i32 0, ptr %10, align 4, !annotation !8
  %92 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %17, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %10, i16 noundef zeroext 4) #12, !callees !11
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %97, !prof !9

94:                                               ; preds = %91
  %95 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %95, ptr noundef nonnull @.str.26, i32 noundef 20, i32 noundef %92) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  %96 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %96, ptr noundef nonnull @.str.6) #13
  br label %391

97:                                               ; preds = %91
  %98 = load i32, ptr %10, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  %99 = and i32 %98, -372
  %100 = or i32 %99, 352
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  store i32 %100, ptr %9, align 4
  %101 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %17, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %9, i16 noundef zeroext 4) #12, !callees !12
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %106, !prof !9

103:                                              ; preds = %97
  %104 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %104, ptr noundef nonnull @.str.27, i32 noundef 20, i32 noundef %101) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  %105 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %105, ptr noundef nonnull @.str.7) #13
  br label %391

106:                                              ; preds = %97
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  %107 = or i32 %99, 354
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 %107, ptr %8, align 4
  %108 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %17, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %8, i16 noundef zeroext 4) #12, !callees !12
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113, !prof !9

110:                                              ; preds = %106
  %111 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %111, ptr noundef nonnull @.str.27, i32 noundef 20, i32 noundef %108) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  %112 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %112, ptr noundef nonnull @.str.7) #13
  br label %391

113:                                              ; preds = %106
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  %114 = getelementptr inbounds %struct.smsc75xx_priv, ptr %78, i32 0, i32 7
  %115 = load i8, ptr %114, align 4
  %116 = or i8 %115, 8
  store i8 %116, ptr %114, align 4
  br label %399

117:                                              ; preds = %51
  %118 = getelementptr inbounds %struct.smsc75xx_priv, ptr %20, i32 0, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, 63
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %117
  %123 = icmp eq i32 %52, 0
  %124 = and i32 %119, 1
  %125 = icmp eq i32 %124, 0
  %126 = select i1 %123, i1 %125, i1 false
  br i1 %126, label %127, label %161

127:                                              ; preds = %122, %117
  %128 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %128, ptr noundef nonnull @.str.3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !8
  %129 = icmp eq ptr %17, null
  br i1 %129, label %130, label %131, !prof !9

130:                                              ; preds = %127
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

131:                                              ; preds = %127
  %132 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %17, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 320, ptr noundef nonnull %7, i16 noundef zeroext 4) #12, !callees !11
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %137, !prof !9

134:                                              ; preds = %131
  %135 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %135, ptr noundef nonnull @.str.26, i32 noundef 320, i32 noundef %132) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %136 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %136, ptr noundef nonnull @.str.4) #13
  br label %391

137:                                              ; preds = %131
  %138 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %139 = and i32 %138, -7
  store i32 %139, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 %139, ptr %6, align 4
  %140 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %17, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 320, ptr noundef nonnull %6, i16 noundef zeroext 4) #12, !callees !12
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %145, !prof !9

142:                                              ; preds = %137
  %143 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %143, ptr noundef nonnull @.str.27, i32 noundef 320, i32 noundef %140) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %144 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %144, ptr noundef nonnull @.str.5) #13
  br label %391

145:                                              ; preds = %137
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !8
  %146 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %17, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %5, i16 noundef zeroext 4) #12, !callees !11
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %151, !prof !9

148:                                              ; preds = %145
  %149 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %149, ptr noundef nonnull @.str.26, i32 noundef 20, i32 noundef %146) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %150 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %150, ptr noundef nonnull @.str.6) #13
  br label %391

151:                                              ; preds = %145
  %152 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %153 = and i32 %152, -13
  store i32 %153, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 %153, ptr %4, align 4
  %154 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %17, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %4, i16 noundef zeroext 4) #12, !callees !12
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %159, !prof !9

156:                                              ; preds = %151
  %157 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %157, ptr noundef nonnull @.str.27, i32 noundef 20, i32 noundef %154) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %158 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %158, ptr noundef nonnull @.str.7) #13
  br label %391

159:                                              ; preds = %151
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %160 = call fastcc i32 @smsc75xx_enter_suspend2(ptr noundef nonnull %17)
  br label %391

161:                                              ; preds = %122
  br i1 %125, label %183, label %162

162:                                              ; preds = %161
  %163 = tail call fastcc i32 @smsc75xx_enable_phy_wakeup_interrupts(ptr noundef %17, i16 noundef zeroext 80)
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %166, ptr noundef nonnull @.str.8) #13
  br label %391

167:                                              ; preds = %162
  br i1 %123, label %170, label %168

168:                                              ; preds = %167
  %169 = load i32, ptr %118, align 4
  br label %183

170:                                              ; preds = %167
  %171 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %171, ptr noundef nonnull @.str.9) #13
  %172 = load ptr, ptr %35, align 4
  %173 = load i32, ptr %34, align 4
  %174 = tail call fastcc i32 @smsc75xx_mdio_read_nopm(ptr noundef %172, i32 noundef %173, i32 noundef 17)
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %170
  %177 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %177, ptr noundef nonnull @.str.10) #13
  br label %391

178:                                              ; preds = %170
  %179 = or i32 %174, 8192
  %180 = load ptr, ptr %35, align 4
  %181 = load i32, ptr %34, align 4
  tail call fastcc void @smsc75xx_mdio_write_nopm(ptr noundef %180, i32 noundef %181, i32 noundef 17, i32 noundef %179)
  %182 = tail call fastcc i32 @smsc75xx_enter_suspend1(ptr noundef %17)
  br label %391

183:                                              ; preds = %168, %161
  %184 = phi i32 [ %169, %168 ], [ %119, %161 ]
  %185 = and i32 %184, 20
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %277, label %187

187:                                              ; preds = %183
  %188 = icmp eq ptr %17, null
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  br i1 %188, label %189, label %190, !prof !9

189:                                              ; preds = %187
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

190:                                              ; preds = %187
  store i32 0, ptr %3, align 4
  %191 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %17, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 324, ptr noundef nonnull %3, i16 noundef zeroext 4) #12, !callees !12
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %198, !prof !9

193:                                              ; preds = %216, %213, %210, %207, %204, %201, %198, %190
  %194 = phi i32 [ 324, %190 ], [ 328, %198 ], [ 332, %201 ], [ 336, %204 ], [ 340, %207 ], [ 344, %210 ], [ 348, %213 ], [ 352, %216 ]
  %195 = phi i32 [ %191, %190 ], [ %199, %198 ], [ %202, %201 ], [ %205, %204 ], [ %208, %207 ], [ %211, %210 ], [ %214, %213 ], [ %217, %216 ]
  %196 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %196, ptr noundef nonnull @.str.27, i32 noundef %194, i32 noundef %195) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %197 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %197, ptr noundef nonnull @.str.11) #13
  br label %391

198:                                              ; preds = %190
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4
  %199 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %17, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 328, ptr noundef nonnull %3, i16 noundef zeroext 4) #12, !callees !12
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %193, label %201, !prof !9

201:                                              ; preds = %198
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4
  %202 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %17, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 332, ptr noundef nonnull %3, i16 noundef zeroext 4) #12, !callees !12
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %193, label %204, !prof !9

204:                                              ; preds = %201
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4
  %205 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %17, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 336, ptr noundef nonnull %3, i16 noundef zeroext 4) #12, !callees !12
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %193, label %207, !prof !9

207:                                              ; preds = %204
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4
  %208 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %17, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 340, ptr noundef nonnull %3, i16 noundef zeroext 4) #12, !callees !12
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %193, label %210, !prof !9

210:                                              ; preds = %207
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4
  %211 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %17, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 344, ptr noundef nonnull %3, i16 noundef zeroext 4) #12, !callees !12
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %193, label %213, !prof !9

213:                                              ; preds = %210
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4
  %214 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %17, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 348, ptr noundef nonnull %3, i16 noundef zeroext 4) #12, !callees !12
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %193, label %216, !prof !9

216:                                              ; preds = %213
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4
  %217 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %17, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 352, ptr noundef nonnull %3, i16 noundef zeroext 4) #12, !callees !12
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %193, label %219, !prof !9

219:                                              ; preds = %216
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %220 = load i32, ptr %118, align 4
  %221 = and i32 %220, 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %236, label %223

223:                                              ; preds = %219
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %13) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %13, ptr noundef nonnull align 1 dereferenceable(3) @__const.smsc75xx_suspend.mcast, i32 3, i1 false)
  %224 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %224, ptr noundef nonnull @.str.12) #13
  %225 = call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef nonnull %13, i32 noundef 3) #12
  %226 = zext i16 %225 to i32
  %227 = call i32 asm "rbit $0, $1", "=r,r"(i32 %226) #14, !srcloc !14
  %228 = lshr i32 %227, 16
  %229 = or i32 %228, -2113929216
  store i32 %229, ptr %12, align 4
  %230 = call fastcc i32 @smsc75xx_write_wuff(ptr noundef nonnull %17, i32 noundef 0, i32 noundef %229, i32 noundef 7)
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %223
  %233 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %233, ptr noundef nonnull @.str.13) #13
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %13) #12
  br label %391

234:                                              ; preds = %223
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %13) #12
  %235 = load i32, ptr %118, align 4
  br label %236

236:                                              ; preds = %234, %219
  %237 = phi i32 [ %235, %234 ], [ %220, %219 ]
  %238 = phi i32 [ 1, %234 ], [ 0, %219 ]
  %239 = and i32 %237, 16
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %253, label %241

241:                                              ; preds = %236
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #12
  store i16 1544, ptr %14, align 2
  %242 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %242, ptr noundef nonnull @.str.14) #13
  %243 = call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef nonnull %14, i32 noundef 2) #12
  %244 = zext i16 %243 to i32
  %245 = call i32 asm "rbit $0, $1", "=r,r"(i32 %244) #14, !srcloc !14
  %246 = lshr i32 %245, 16
  %247 = or i32 %246, -2096365568
  store i32 %247, ptr %12, align 4
  %248 = call fastcc i32 @smsc75xx_write_wuff(ptr noundef nonnull %17, i32 noundef %238, i32 noundef %247, i32 noundef 3)
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %241
  %251 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %251, ptr noundef nonnull @.str.13) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #12
  br label %391

252:                                              ; preds = %241
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #12
  br label %253

253:                                              ; preds = %252, %236
  %254 = call fastcc i32 @smsc75xx_read_reg_nopm(ptr noundef nonnull %17, i32 noundef 320, ptr noundef nonnull %12)
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %253
  %257 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %257, ptr noundef nonnull @.str.4) #13
  br label %391

258:                                              ; preds = %253
  %259 = load i32, ptr %12, align 4
  %260 = or i32 %259, 64
  store i32 %260, ptr %12, align 4
  %261 = call fastcc i32 @smsc75xx_write_reg_nopm(ptr noundef nonnull %17, i32 noundef 320, i32 noundef %260)
  %262 = icmp slt i32 %261, 0
  %263 = load ptr, ptr %35, align 4
  br i1 %262, label %264, label %265

264:                                              ; preds = %258
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %263, ptr noundef nonnull @.str.5) #13
  br label %391

265:                                              ; preds = %258
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %263, ptr noundef nonnull @.str.15) #13
  %266 = call fastcc i32 @smsc75xx_read_reg_nopm(ptr noundef nonnull %17, i32 noundef 320, ptr noundef nonnull %12)
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %265
  %269 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %269, ptr noundef nonnull @.str.4) #13
  br label %391

270:                                              ; preds = %265
  %271 = load i32, ptr %12, align 4
  %272 = or i32 %271, 4
  store i32 %272, ptr %12, align 4
  %273 = call fastcc i32 @smsc75xx_write_reg_nopm(ptr noundef nonnull %17, i32 noundef 320, i32 noundef %272)
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %290

275:                                              ; preds = %270
  %276 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %276, ptr noundef nonnull @.str.5) #13
  br label %391

277:                                              ; preds = %183
  %278 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %278, ptr noundef nonnull @.str.16) #13
  %279 = call fastcc i32 @smsc75xx_read_reg_nopm(ptr noundef %17, i32 noundef 320, ptr noundef nonnull %12)
  %280 = icmp slt i32 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %277
  %282 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %282, ptr noundef nonnull @.str.4) #13
  br label %391

283:                                              ; preds = %277
  %284 = load i32, ptr %12, align 4
  %285 = and i32 %284, -5
  store i32 %285, ptr %12, align 4
  %286 = tail call fastcc i32 @smsc75xx_write_reg_nopm(ptr noundef %17, i32 noundef 320, i32 noundef %285)
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %283
  %289 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %289, ptr noundef nonnull @.str.5) #13
  br label %391

290:                                              ; preds = %283, %270
  %291 = call fastcc i32 @smsc75xx_read_reg_nopm(ptr noundef %17, i32 noundef 320, ptr noundef nonnull %12)
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %294, ptr noundef nonnull @.str.4) #13
  br label %391

295:                                              ; preds = %290
  %296 = load i32, ptr %12, align 4
  %297 = and i32 %296, -12
  store i32 %297, ptr %12, align 4
  %298 = call fastcc i32 @smsc75xx_write_reg_nopm(ptr noundef %17, i32 noundef 320, i32 noundef %297)
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %300, label %302

300:                                              ; preds = %295
  %301 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %301, ptr noundef nonnull @.str.5) #13
  br label %391

302:                                              ; preds = %295
  %303 = load i32, ptr %118, align 4
  %304 = and i32 %303, 1
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %322, label %306

306:                                              ; preds = %302
  %307 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %307, ptr noundef nonnull @.str.17) #13
  %308 = call fastcc i32 @smsc75xx_read_reg_nopm(ptr noundef %17, i32 noundef 20, ptr noundef nonnull %12)
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %306
  %311 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %311, ptr noundef nonnull @.str.6) #13
  br label %391

312:                                              ; preds = %306
  %313 = load i32, ptr %12, align 4
  %314 = and i32 %313, -8
  %315 = or i32 %314, 5
  store i32 %315, ptr %12, align 4
  %316 = call fastcc i32 @smsc75xx_write_reg_nopm(ptr noundef %17, i32 noundef 20, i32 noundef %315)
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %320, label %318

318:                                              ; preds = %312
  %319 = load i32, ptr %118, align 4
  br label %322

320:                                              ; preds = %312
  %321 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %321, ptr noundef nonnull @.str.7) #13
  br label %391

322:                                              ; preds = %318, %302
  %323 = phi i32 [ %319, %318 ], [ %303, %302 ]
  %324 = and i32 %323, 32
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %341, label %326

326:                                              ; preds = %322
  %327 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %327, ptr noundef nonnull @.str.18) #13
  %328 = call fastcc i32 @smsc75xx_read_reg_nopm(ptr noundef %17, i32 noundef 320, ptr noundef nonnull %12)
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %326
  %331 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %331, ptr noundef nonnull @.str.4) #13
  br label %391

332:                                              ; preds = %326
  %333 = load i32, ptr %12, align 4
  %334 = or i32 %333, 34
  store i32 %334, ptr %12, align 4
  %335 = call fastcc i32 @smsc75xx_write_reg_nopm(ptr noundef %17, i32 noundef 320, i32 noundef %334)
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %339, label %337

337:                                              ; preds = %332
  %338 = load i32, ptr %118, align 4
  br label %341

339:                                              ; preds = %332
  %340 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %340, ptr noundef nonnull @.str.5) #13
  br label %391

341:                                              ; preds = %337, %322
  %342 = phi i32 [ %338, %337 ], [ %323, %322 ]
  %343 = and i32 %342, 8
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %360, label %345

345:                                              ; preds = %341
  %346 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %346, ptr noundef nonnull @.str.19) #13
  %347 = call fastcc i32 @smsc75xx_read_reg_nopm(ptr noundef %17, i32 noundef 320, ptr noundef nonnull %12)
  %348 = icmp slt i32 %347, 0
  br i1 %348, label %349, label %351

349:                                              ; preds = %345
  %350 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %350, ptr noundef nonnull @.str.4) #13
  br label %391

351:                                              ; preds = %345
  %352 = load i32, ptr %12, align 4
  %353 = or i32 %352, 17
  store i32 %353, ptr %12, align 4
  %354 = call fastcc i32 @smsc75xx_write_reg_nopm(ptr noundef %17, i32 noundef 320, i32 noundef %353)
  %355 = icmp slt i32 %354, 0
  br i1 %355, label %358, label %356

356:                                              ; preds = %351
  %357 = load i32, ptr %118, align 4
  br label %360

358:                                              ; preds = %351
  %359 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %359, ptr noundef nonnull @.str.5) #13
  br label %391

360:                                              ; preds = %356, %341
  %361 = phi i32 [ %357, %356 ], [ %342, %341 ]
  %362 = and i32 %361, 2
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %377, label %364

364:                                              ; preds = %360
  %365 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %365, ptr noundef nonnull @.str.20) #13
  %366 = call fastcc i32 @smsc75xx_read_reg_nopm(ptr noundef %17, i32 noundef 320, ptr noundef nonnull %12)
  %367 = icmp slt i32 %366, 0
  br i1 %367, label %368, label %370

368:                                              ; preds = %364
  %369 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %369, ptr noundef nonnull @.str.4) #13
  br label %391

370:                                              ; preds = %364
  %371 = load i32, ptr %12, align 4
  %372 = or i32 %371, 72
  store i32 %372, ptr %12, align 4
  %373 = call fastcc i32 @smsc75xx_write_reg_nopm(ptr noundef %17, i32 noundef 320, i32 noundef %372)
  %374 = icmp slt i32 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %370
  %376 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %376, ptr noundef nonnull @.str.5) #13
  br label %391

377:                                              ; preds = %370, %360
  %378 = call fastcc i32 @smsc75xx_read_reg_nopm(ptr noundef %17, i32 noundef 260, ptr noundef nonnull %12)
  %379 = icmp slt i32 %378, 0
  br i1 %379, label %380, label %382

380:                                              ; preds = %377
  %381 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %381, ptr noundef nonnull @.str.21, i32 noundef %378) #13
  br label %391

382:                                              ; preds = %377
  %383 = load i32, ptr %12, align 4
  %384 = or i32 %383, 1
  store i32 %384, ptr %12, align 4
  %385 = call fastcc i32 @smsc75xx_write_reg_nopm(ptr noundef %17, i32 noundef 260, i32 noundef %384)
  %386 = icmp slt i32 %385, 0
  %387 = load ptr, ptr %35, align 4
  br i1 %386, label %388, label %389

388:                                              ; preds = %382
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %387, ptr noundef nonnull @.str.22, i32 noundef %385) #13
  br label %391

389:                                              ; preds = %382
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %387, ptr noundef nonnull @.str.23) #13
  %390 = call fastcc i32 @smsc75xx_enter_suspend0(ptr noundef %17)
  br label %391

391:                                              ; preds = %389, %388, %380, %375, %368, %358, %349, %339, %330, %320, %310, %300, %293, %288, %281, %275, %268, %264, %256, %250, %232, %193, %178, %176, %165, %159, %156, %148, %142, %134, %110, %103, %94, %87, %84, %74, %69, %68, %60
  %392 = phi i32 [ %163, %165 ], [ %291, %293 ], [ %298, %300 ], [ %308, %310 ], [ %316, %320 ], [ %328, %330 ], [ %335, %339 ], [ %347, %349 ], [ %354, %358 ], [ %366, %368 ], [ %373, %375 ], [ %378, %380 ], [ %385, %388 ], [ %390, %389 ], [ %279, %281 ], [ %286, %288 ], [ %132, %134 ], [ %140, %142 ], [ %146, %148 ], [ %154, %156 ], [ %160, %159 ], [ %174, %176 ], [ %182, %178 ], [ %72, %74 ], [ %65, %68 ], [ %70, %69 ], [ %61, %60 ], [ %82, %84 ], [ %92, %94 ], [ %101, %103 ], [ %108, %110 ], [ -16, %87 ], [ %248, %250 ], [ %230, %232 ], [ %273, %275 ], [ %266, %268 ], [ %261, %264 ], [ %254, %256 ], [ %195, %193 ]
  %393 = icmp eq i32 %392, 0
  %394 = and i32 %15, 1024
  %395 = icmp eq i32 %394, 0
  %396 = select i1 %393, i1 true, i1 %395
  br i1 %396, label %399, label %397

397:                                              ; preds = %391
  %398 = call i32 @usbnet_resume(ptr noundef %0) #12
  br label %399

399:                                              ; preds = %397, %391, %113, %23
  %400 = phi i32 [ %21, %23 ], [ %392, %397 ], [ %392, %391 ], [ 0, %113 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  ret i32 %400
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc75xx_resume(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.usbnet, ptr %10, i32 0, i32 21
  %12 = load i32, ptr %11, align 4
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.smsc75xx_priv, ptr %13, i32 0, i32 7
  %15 = load i8, ptr %14, align 4
  store i8 0, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %56, label %19

19:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !annotation !8
  %20 = icmp eq ptr %10, null
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

22:                                               ; preds = %19
  %23 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %10, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 320, ptr noundef nonnull %8, i16 noundef zeroext 4) #12, !callees !11
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29, !prof !9

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.usbnet, ptr %10, i32 0, i32 19
  %27 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %27, ptr noundef nonnull @.str.26, i32 noundef 320, i32 noundef %23) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  %28 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %28, ptr noundef nonnull @.str.4) #13
  br label %107

29:                                               ; preds = %22
  %30 = load i32, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  %31 = and i32 %30, -16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 %31, ptr %7, align 4
  %32 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %10, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 320, ptr noundef nonnull %7, i16 noundef zeroext 4) #12, !callees !12
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38, !prof !9

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.usbnet, ptr %10, i32 0, i32 19
  %36 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %36, ptr noundef nonnull @.str.27, i32 noundef 320, i32 noundef %32) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %37 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %37, ptr noundef nonnull @.str.5) #13
  br label %107

38:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !8
  %39 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %10, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %6, i16 noundef zeroext 4) #12, !callees !11
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45, !prof !9

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.usbnet, ptr %10, i32 0, i32 19
  %43 = load ptr, ptr %42, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %43, ptr noundef nonnull @.str.26, i32 noundef 20, i32 noundef %39) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %44 = load ptr, ptr %42, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %44, ptr noundef nonnull @.str.6) #13
  br label %107

45:                                               ; preds = %38
  %46 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %47 = and i32 %46, -12
  %48 = or i32 %47, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 %48, ptr %5, align 4
  %49 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %10, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %5, i16 noundef zeroext 4) #12, !callees !12
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %52, label %51, !prof !9

51:                                               ; preds = %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %56

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.usbnet, ptr %10, i32 0, i32 19
  %54 = load ptr, ptr %53, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %54, ptr noundef nonnull @.str.27, i32 noundef 20, i32 noundef %49) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %55 = load ptr, ptr %53, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %55, ptr noundef nonnull @.str.7) #13
  br label %107

56:                                               ; preds = %51, %1
  %57 = and i32 %16, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %79, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.usbnet, ptr %10, i32 0, i32 19
  %61 = load ptr, ptr %60, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %61, ptr noundef nonnull @.str.39) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  %62 = icmp eq ptr %10, null
  br i1 %62, label %63, label %64, !prof !9

63:                                               ; preds = %59
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

64:                                               ; preds = %59
  %65 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %10, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %4, i16 noundef zeroext 4) #12, !callees !11
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70, !prof !9

67:                                               ; preds = %64
  %68 = load ptr, ptr %60, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %68, ptr noundef nonnull @.str.26, i32 noundef 20, i32 noundef %65) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %69 = load ptr, ptr %60, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %69, ptr noundef nonnull @.str.6) #13
  br label %107

70:                                               ; preds = %64
  %71 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %72 = or i32 %71, 1024
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 %72, ptr %3, align 4
  %73 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %10, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %3, i16 noundef zeroext 4) #12, !callees !12
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %76, label %75, !prof !9

75:                                               ; preds = %70
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %79

76:                                               ; preds = %70
  %77 = load ptr, ptr %60, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %77, ptr noundef nonnull @.str.27, i32 noundef 20, i32 noundef %73) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %78 = load ptr, ptr %60, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %78, ptr noundef nonnull @.str.7) #13
  br label %107

79:                                               ; preds = %75, %56
  %80 = icmp eq ptr %10, null
  br label %81

81:                                               ; preds = %95, %79
  %82 = phi i32 [ 0, %79 ], [ %96, %95 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !8
  br i1 %80, label %83, label %84, !prof !9

83:                                               ; preds = %81
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

84:                                               ; preds = %81
  %85 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %10, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %2, i16 noundef zeroext 4) #12, !callees !11
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %91, !prof !9

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.usbnet, ptr %10, i32 0, i32 19
  %89 = load ptr, ptr %88, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %89, ptr noundef nonnull @.str.26, i32 noundef 20, i32 noundef %85) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %90 = load ptr, ptr %88, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %90, ptr noundef nonnull @.str.41, i32 noundef %85) #13
  br label %101

91:                                               ; preds = %84
  %92 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %93 = and i32 %92, 128
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  call void @msleep(i32 noundef 10) #12
  %96 = add nuw nsw i32 %82, 1
  %97 = icmp eq i32 %96, 100
  br i1 %97, label %98, label %81

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.usbnet, ptr %10, i32 0, i32 19
  %100 = load ptr, ptr %99, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %100, ptr noundef nonnull @.str.42) #13
  br label %101

101:                                              ; preds = %98, %87
  %102 = phi i32 [ %85, %87 ], [ -5, %98 ]
  %103 = getelementptr inbounds %struct.usbnet, ptr %10, i32 0, i32 19
  %104 = load ptr, ptr %103, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %104, ptr noundef nonnull @.str.40) #13
  br label %107

105:                                              ; preds = %91
  %106 = call i32 @usbnet_resume(ptr noundef %0) #12
  br label %107

107:                                              ; preds = %105, %101, %76, %67, %52, %41, %34, %25
  %108 = phi i32 [ %23, %25 ], [ %32, %34 ], [ %39, %41 ], [ %49, %52 ], [ %65, %67 ], [ %73, %76 ], [ %102, %101 ], [ %106, %105 ]
  ret i32 %108
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_read_reg_nopm(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

7:                                                ; preds = %3
  %8 = trunc i32 %1 to i16
  %9 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %8, ptr noundef nonnull %4, i16 noundef zeroext 4) #12, !callees !11
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14, !prof !9

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %13, ptr noundef nonnull @.str.26, i32 noundef %1, i32 noundef %9) #13
  br label %16

14:                                               ; preds = %7
  %15 = load i32, ptr %4, align 4
  store i32 %15, ptr %2, align 4
  br label %16

16:                                               ; preds = %14, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_write_reg_nopm(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

7:                                                ; preds = %3
  store i32 %2, ptr %4, align 4
  %8 = trunc i32 %1 to i16
  %9 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %8, ptr noundef nonnull %4, i16 noundef zeroext 4) #12, !callees !12
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14, !prof !9

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %13, ptr noundef nonnull @.str.27, i32 noundef %1, i32 noundef %9) #13
  br label %14

14:                                               ; preds = %11, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_enter_suspend2(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

9:                                                ; preds = %1
  %10 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %3, i16 noundef zeroext 4) #12, !callees !11
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16, !prof !9

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %14 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.26, i32 noundef 20, i32 noundef %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %15 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %15, ptr noundef nonnull @.str.6) #13
  br label %30

16:                                               ; preds = %9
  %17 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %18 = and i32 %17, -116
  %19 = or i32 %18, 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 %19, ptr %2, align 4
  %20 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %2, i16 noundef zeroext 4) #12, !callees !12
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26, !prof !9

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %24 = load ptr, ptr %23, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %24, ptr noundef nonnull @.str.27, i32 noundef 20, i32 noundef %20) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %25 = load ptr, ptr %23, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.7) #13
  br label %30

26:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %27 = getelementptr inbounds %struct.smsc75xx_priv, ptr %6, i32 0, i32 7
  %28 = load i8, ptr %27, align 4
  %29 = or i8 %28, 4
  store i8 %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %26, %22, %12
  %31 = phi i32 [ %10, %12 ], [ %20, %22 ], [ 0, %26 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_enable_phy_wakeup_interrupts(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25
  %4 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = tail call fastcc i32 @smsc75xx_mdio_read_nopm(ptr noundef %5, i32 noundef %6, i32 noundef 29)
  %8 = icmp slt i32 %7, 0
  %9 = load ptr, ptr %4, align 4
  br i1 %8, label %10, label %11

10:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.28) #13
  br label %22

11:                                               ; preds = %2
  %12 = load i32, ptr %3, align 4
  %13 = tail call fastcc i32 @smsc75xx_mdio_read_nopm(ptr noundef %9, i32 noundef %12, i32 noundef 30)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.29) #13
  br label %22

17:                                               ; preds = %11
  %18 = zext i16 %1 to i32
  %19 = or i32 %13, %18
  %20 = load ptr, ptr %4, align 4
  %21 = load i32, ptr %3, align 4
  tail call fastcc void @smsc75xx_mdio_write_nopm(ptr noundef %20, i32 noundef %21, i32 noundef 30, i32 noundef %19)
  br label %22

22:                                               ; preds = %17, %15, %10
  %23 = phi i32 [ %7, %10 ], [ %13, %15 ], [ 0, %17 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_mdio_read_nopm(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr i8, ptr %0, i32 1408
  %9 = getelementptr i8, ptr %0, i32 1440
  tail call void @mutex_lock(ptr noundef %9) #12
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = icmp eq ptr %8, null
  %12 = add i32 %10, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !8
  br i1 %11, label %16, label %13, !prof !9

13:                                               ; preds = %3
  %14 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %8, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %7, i16 noundef zeroext 4) #12, !callees !11
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %25, !prof !9

16:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

17:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !8
  %18 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %8, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %7, i16 noundef zeroext 4) #12, !callees !11
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25, !prof !9

20:                                               ; preds = %17, %13
  %21 = phi i32 [ %14, %13 ], [ %18, %17 ]
  %22 = getelementptr i8, ptr %0, i32 1512
  %23 = load ptr, ptr %22, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %23, ptr noundef nonnull @.str.26, i32 noundef 288, i32 noundef %21) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %24 = load ptr, ptr %22, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %24, ptr noundef nonnull @.str.34) #13
  br label %33

25:                                               ; preds = %17, %13
  %26 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load volatile i32, ptr @jiffies, align 64
  %31 = sub i32 %12, %30
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %17, label %33

33:                                               ; preds = %29, %20
  %34 = phi i32 [ %21, %20 ], [ -5, %29 ]
  %35 = getelementptr i8, ptr %0, i32 1512
  %36 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %36, ptr noundef nonnull @.str.30) #13
  br label %91

37:                                               ; preds = %25
  %38 = getelementptr i8, ptr %0, i32 1560
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, %1
  %41 = getelementptr i8, ptr %0, i32 1564
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, %2
  %44 = shl i32 %40, 11
  %45 = and i32 %44, 63488
  %46 = shl i32 %43, 6
  %47 = and i32 %46, 1984
  %48 = or i32 %45, %47
  %49 = or i32 %48, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 %49, ptr %6, align 4
  %50 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %8, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %6, i16 noundef zeroext 4) #12, !callees !12
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56, !prof !9

52:                                               ; preds = %37
  %53 = getelementptr i8, ptr %0, i32 1512
  %54 = load ptr, ptr %53, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %54, ptr noundef nonnull @.str.27, i32 noundef 288, i32 noundef %50) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %55 = load ptr, ptr %53, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %55, ptr noundef nonnull @.str.31) #13
  br label %91

56:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %57 = load volatile i32, ptr @jiffies, align 64
  %58 = add i32 %57, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4
  %59 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %8, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %5, i16 noundef zeroext 4) #12, !callees !11
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %64, label %69, !prof !9

61:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4
  %62 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %8, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %5, i16 noundef zeroext 4) #12, !callees !11
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69, !prof !9

64:                                               ; preds = %61, %56
  %65 = phi i32 [ %59, %56 ], [ %62, %61 ]
  %66 = getelementptr i8, ptr %0, i32 1512
  %67 = load ptr, ptr %66, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %67, ptr noundef nonnull @.str.26, i32 noundef 288, i32 noundef %65) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %68 = load ptr, ptr %66, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %68, ptr noundef nonnull @.str.34) #13
  br label %77

69:                                               ; preds = %61, %56
  %70 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %69
  %74 = load volatile i32, ptr @jiffies, align 64
  %75 = sub i32 %58, %74
  %76 = icmp sgt i32 %75, -1
  br i1 %76, label %61, label %77

77:                                               ; preds = %73, %64
  %78 = phi i32 [ %65, %64 ], [ -5, %73 ]
  %79 = getelementptr i8, ptr %0, i32 1512
  %80 = load ptr, ptr %79, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %80, ptr noundef nonnull @.str.32, i32 noundef %43) #13
  br label %91

81:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  %82 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %8, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 292, ptr noundef nonnull %4, i16 noundef zeroext 4) #12, !callees !11
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %88, !prof !9

84:                                               ; preds = %81
  %85 = getelementptr i8, ptr %0, i32 1512
  %86 = load ptr, ptr %85, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %86, ptr noundef nonnull @.str.26, i32 noundef 292, i32 noundef %82) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %87 = load ptr, ptr %85, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %87, ptr noundef nonnull @.str.33) #13
  br label %91

88:                                               ; preds = %81
  %89 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %90 = and i32 %89, 65535
  br label %91

91:                                               ; preds = %88, %84, %77, %52, %33
  %92 = phi i32 [ %34, %33 ], [ %50, %52 ], [ %78, %77 ], [ %82, %84 ], [ %90, %88 ]
  call void @mutex_unlock(ptr noundef %9) #12
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @smsc75xx_mdio_write_nopm(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr i8, ptr %0, i32 1408
  %10 = getelementptr i8, ptr %0, i32 1440
  tail call void @mutex_lock(ptr noundef %10) #12
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = icmp eq ptr %9, null
  %13 = add i32 %11, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !annotation !8
  br i1 %12, label %17, label %14, !prof !9

14:                                               ; preds = %4
  %15 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %9, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %8, i16 noundef zeroext 4) #12, !callees !11
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %26, !prof !9

17:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

18:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !annotation !8
  %19 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %9, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %8, i16 noundef zeroext 4) #12, !callees !11
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26, !prof !9

21:                                               ; preds = %18, %14
  %22 = phi i32 [ %15, %14 ], [ %19, %18 ]
  %23 = getelementptr i8, ptr %0, i32 1512
  %24 = load ptr, ptr %23, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %24, ptr noundef nonnull @.str.26, i32 noundef 288, i32 noundef %22) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  %25 = load ptr, ptr %23, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.34) #13
  br label %34

26:                                               ; preds = %18, %14
  %27 = load i32, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = load volatile i32, ptr @jiffies, align 64
  %32 = sub i32 %13, %31
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %18, label %34

34:                                               ; preds = %30, %21
  %35 = getelementptr i8, ptr %0, i32 1512
  %36 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %36, ptr noundef nonnull @.str.35) #13
  br label %87

37:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 %3, ptr %7, align 4
  %38 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %9, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 292, ptr noundef nonnull %7, i16 noundef zeroext 4) #12, !callees !12
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44, !prof !9

40:                                               ; preds = %37
  %41 = getelementptr i8, ptr %0, i32 1512
  %42 = load ptr, ptr %41, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %42, ptr noundef nonnull @.str.27, i32 noundef 292, i32 noundef %38) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %43 = load ptr, ptr %41, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %43, ptr noundef nonnull @.str.36) #13
  br label %87

44:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %45 = getelementptr i8, ptr %0, i32 1560
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, %1
  %48 = getelementptr i8, ptr %0, i32 1564
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, %2
  %51 = shl i32 %47, 11
  %52 = and i32 %51, 63488
  %53 = shl i32 %50, 6
  %54 = and i32 %53, 1984
  %55 = or i32 %52, %54
  %56 = or i32 %55, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 %56, ptr %6, align 4
  %57 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %9, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %6, i16 noundef zeroext 4) #12, !callees !12
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %63, !prof !9

59:                                               ; preds = %44
  %60 = getelementptr i8, ptr %0, i32 1512
  %61 = load ptr, ptr %60, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %61, ptr noundef nonnull @.str.27, i32 noundef 288, i32 noundef %57) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %62 = load ptr, ptr %60, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %62, ptr noundef nonnull @.str.31) #13
  br label %87

63:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %64 = load volatile i32, ptr @jiffies, align 64
  %65 = add i32 %64, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4
  %66 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %9, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %5, i16 noundef zeroext 4) #12, !callees !11
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %71, label %76, !prof !9

68:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4
  %69 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %9, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %5, i16 noundef zeroext 4) #12, !callees !11
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %76, !prof !9

71:                                               ; preds = %68, %63
  %72 = phi i32 [ %66, %63 ], [ %69, %68 ]
  %73 = getelementptr i8, ptr %0, i32 1512
  %74 = load ptr, ptr %73, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %74, ptr noundef nonnull @.str.26, i32 noundef 288, i32 noundef %72) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %75 = load ptr, ptr %73, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %75, ptr noundef nonnull @.str.34) #13
  br label %84

76:                                               ; preds = %68, %63
  %77 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %76
  %81 = load volatile i32, ptr @jiffies, align 64
  %82 = sub i32 %65, %81
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %68, label %84

84:                                               ; preds = %80, %71
  %85 = getelementptr i8, ptr %0, i32 1512
  %86 = load ptr, ptr %85, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %86, ptr noundef nonnull @.str.37, i32 noundef %50) #13
  br label %87

87:                                               ; preds = %84, %76, %59, %40, %34
  call void @mutex_unlock(ptr noundef %10) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_enter_suspend1(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21
  %6 = load i32, ptr %5, align 4
  %7 = inttoptr i32 %6 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

10:                                               ; preds = %1
  %11 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %4, i16 noundef zeroext 4) #12, !callees !11
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17, !prof !9

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %15, ptr noundef nonnull @.str.26, i32 noundef 20, i32 noundef %11) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %16 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.6) #13
  br label %39

17:                                               ; preds = %10
  %18 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %19 = and i32 %18, -116
  %20 = or i32 %19, 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 %20, ptr %3, align 4
  %21 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %3, i16 noundef zeroext 4) #12, !callees !12
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27, !prof !9

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %25 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.27, i32 noundef 20, i32 noundef %21) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %26 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %26, ptr noundef nonnull @.str.7) #13
  br label %39

27:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %28 = or i32 %19, 37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 %28, ptr %2, align 4
  %29 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %2, i16 noundef zeroext 4) #12, !callees !12
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35, !prof !9

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %33 = load ptr, ptr %32, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %33, ptr noundef nonnull @.str.27, i32 noundef 20, i32 noundef %29) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %34 = load ptr, ptr %32, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %34, ptr noundef nonnull @.str.7) #13
  br label %39

35:                                               ; preds = %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %36 = getelementptr inbounds %struct.smsc75xx_priv, ptr %7, i32 0, i32 7
  %37 = load i8, ptr %36, align 4
  %38 = or i8 %37, 2
  store i8 %38, ptr %36, align 4
  br label %39

39:                                               ; preds = %35, %31, %23, %13
  %40 = phi i32 [ %11, %13 ], [ %21, %23 ], [ %29, %31 ], [ 0, %35 ]
  ret i32 %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_write_wuff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = shl i32 %1, 2
  %11 = add i32 %10, 324
  %12 = shl i32 %1, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  %13 = icmp eq ptr %0, null
  br i1 %13, label %14, label %15, !prof !9

14:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

15:                                               ; preds = %4
  store i32 %2, ptr %9, align 4
  %16 = trunc i32 %11 to i16
  %17 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %16, ptr noundef nonnull %9, i16 noundef zeroext 4) #12, !callees !12
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23, !prof !9

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %21 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %21, ptr noundef nonnull @.str.27, i32 noundef %11, i32 noundef %17) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  %22 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull @.str.11) #13
  br label %60

23:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  %24 = add i32 %12, 368
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 %3, ptr %8, align 4
  %25 = trunc i32 %24 to i16
  %26 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %25, ptr noundef nonnull %8, i16 noundef zeroext 4) #12, !callees !12
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32, !prof !9

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %30 = load ptr, ptr %29, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %30, ptr noundef nonnull @.str.27, i32 noundef %24, i32 noundef %26) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  %31 = load ptr, ptr %29, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %31, ptr noundef nonnull @.str.38) #13
  br label %60

32:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  %33 = add i32 %12, 372
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4
  %34 = trunc i32 %33 to i16
  %35 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %34, ptr noundef nonnull %7, i16 noundef zeroext 4) #12, !callees !12
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41, !prof !9

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %39 = load ptr, ptr %38, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %39, ptr noundef nonnull @.str.27, i32 noundef %33, i32 noundef %35) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %40 = load ptr, ptr %38, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %40, ptr noundef nonnull @.str.38) #13
  br label %60

41:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %42 = add i32 %12, 376
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4
  %43 = trunc i32 %42 to i16
  %44 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %43, ptr noundef nonnull %6, i16 noundef zeroext 4) #12, !callees !12
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50, !prof !9

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %48 = load ptr, ptr %47, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %48, ptr noundef nonnull @.str.27, i32 noundef %42, i32 noundef %44) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %49 = load ptr, ptr %47, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %49, ptr noundef nonnull @.str.38) #13
  br label %60

50:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %51 = add i32 %12, 380
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4
  %52 = trunc i32 %51 to i16
  %53 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %52, ptr noundef nonnull %5, i16 noundef zeroext 4) #12, !callees !12
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %56, label %55, !prof !9

55:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %60

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %58 = load ptr, ptr %57, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %58, ptr noundef nonnull @.str.27, i32 noundef %51, i32 noundef %53) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %59 = load ptr, ptr %57, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %59, ptr noundef nonnull @.str.38) #13
  br label %60

60:                                               ; preds = %56, %55, %46, %37, %28, %19
  %61 = phi i32 [ %17, %19 ], [ %26, %28 ], [ %35, %37 ], [ %44, %46 ], [ %53, %56 ], [ 0, %55 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_enter_suspend0(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

9:                                                ; preds = %1
  %10 = call i32 @usbnet_read_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %3, i16 noundef zeroext 4) #12, !callees !11
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16, !prof !9

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %14 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.26, i32 noundef 20, i32 noundef %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %15 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %15, ptr noundef nonnull @.str.6) #13
  br label %30

16:                                               ; preds = %9
  %17 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %18 = and i32 %17, -124
  %19 = or i32 %18, 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 %19, ptr %2, align 4
  %20 = call i32 @usbnet_write_cmd_nopm(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %2, i16 noundef zeroext 4) #12, !callees !12
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26, !prof !9

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %24 = load ptr, ptr %23, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %24, ptr noundef nonnull @.str.27, i32 noundef 20, i32 noundef %20) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %25 = load ptr, ptr %23, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.7) #13
  br label %30

26:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %27 = getelementptr inbounds %struct.smsc75xx_priv, ptr %6, i32 0, i32 7
  %28 = load i8, ptr %27, align 4
  %29 = or i8 %28, 1
  store i8 %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %26, %22, %12
  %31 = phi i32 [ %10, %12 ], [ %20, %22 ], [ 0, %26 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd_nopm(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd_nopm(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc16(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc75xx_bind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [6 x i8], align 1
  %4 = alloca [6 x i8], align 1
  %5 = alloca i32, align 4
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #13
  %7 = tail call i32 @usbnet_get_endpoints(ptr noundef %0, ptr noundef %1) #12
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str.45, i32 noundef %7) #13
  br label %129

12:                                               ; preds = %2
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 120) #15
  %15 = ptrtoint ptr %14 to i32
  %16 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21
  store i32 %15, ptr %16, align 4
  %17 = icmp eq ptr %14, null
  br i1 %17, label %129, label %18

18:                                               ; preds = %12
  store ptr %0, ptr %14, align 8
  %19 = getelementptr inbounds %struct.smsc75xx_priv, ptr %14, i32 0, i32 5
  store i32 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.smsc75xx_priv, ptr %14, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %20, ptr noundef nonnull @.str.46, ptr noundef nonnull @smsc75xx_bind.__key) #12
  %21 = getelementptr inbounds %struct.smsc75xx_priv, ptr %14, i32 0, i32 6
  store i32 -32, ptr %21, align 4
  %22 = getelementptr inbounds %struct.smsc75xx_priv, ptr %14, i32 0, i32 6, i32 1
  store volatile ptr %22, ptr %22, align 8
  %23 = getelementptr inbounds %struct.smsc75xx_priv, ptr %14, i32 0, i32 6, i32 1, i32 1
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.smsc75xx_priv, ptr %14, i32 0, i32 6, i32 2
  store ptr @smsc75xx_deferred_multicast_write, ptr %24, align 8
  %25 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 23
  %28 = load i64, ptr %27, align 16
  %29 = or i64 %28, 18
  store i64 %29, ptr %27, align 16
  %30 = load ptr, ptr %25, align 4
  %31 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 23
  %32 = load i64, ptr %31, align 16
  %33 = or i64 %32, 1099511627776
  store i64 %33, ptr %31, align 16
  %34 = load ptr, ptr %25, align 4
  %35 = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 24
  store i64 1099511627794, ptr %35, align 8
  %36 = icmp eq ptr %0, null
  br label %37

37:                                               ; preds = %50, %18
  %38 = phi i32 [ 0, %18 ], [ %51, %50 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !8
  br i1 %36, label %39, label %40, !prof !9

39:                                               ; preds = %37
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

40:                                               ; preds = %37
  %41 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %5, i16 noundef zeroext 4) #12, !callees !11
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46, !prof !9

43:                                               ; preds = %40
  %44 = load ptr, ptr %25, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %44, ptr noundef nonnull @.str.26, i32 noundef 20, i32 noundef %41) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %45 = load ptr, ptr %25, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %45, ptr noundef nonnull @.str.41, i32 noundef %41) #13
  br label %55

46:                                               ; preds = %40
  %47 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %48 = and i32 %47, 128
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  call void @msleep(i32 noundef 10) #12
  %51 = add nuw nsw i32 %38, 1
  %52 = icmp eq i32 %51, 100
  br i1 %52, label %53, label %37

53:                                               ; preds = %50
  %54 = load ptr, ptr %25, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %54, ptr noundef nonnull @.str.42) #13
  br label %55

55:                                               ; preds = %53, %43
  %56 = phi i32 [ %41, %43 ], [ -5, %53 ]
  %57 = load ptr, ptr %25, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %57, ptr noundef nonnull @.str.47) #13
  br label %127

58:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false) #12, !annotation !8
  %59 = load ptr, ptr %0, align 4
  %60 = getelementptr inbounds %struct.usb_device, ptr %59, i32 0, i32 15
  %61 = load ptr, ptr %25, align 4
  %62 = call i32 @platform_get_ethdev_address(ptr noundef %60, ptr noundef %61) #12
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = load ptr, ptr %25, align 4
  %66 = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 72
  %67 = load ptr, ptr %66, align 32
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = getelementptr i8, ptr %67, i32 4
  %73 = load i16, ptr %72, align 2
  %74 = zext i16 %73 to i32
  %75 = or i32 %68, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %71, %64, %58
  %78 = call fastcc i32 @smsc75xx_read_eeprom(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 6, ptr noundef nonnull %4) #12
  %79 = icmp eq i32 %78, 0
  %80 = load ptr, ptr %25, align 4
  br i1 %79, label %81, label %94

81:                                               ; preds = %77
  call void @dev_addr_mod(ptr noundef %80, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 6) #12
  %82 = load ptr, ptr %25, align 4
  %83 = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 72
  %84 = load ptr, ptr %83, align 32
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = getelementptr i8, ptr %84, i32 4
  %90 = load i16, ptr %89, align 2
  %91 = zext i16 %90 to i32
  %92 = or i32 %85, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %88, %81, %77
  %95 = phi ptr [ %82, %81 ], [ %82, %88 ], [ %80, %77 ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #12, !annotation !8
  call void @get_random_bytes(ptr noundef nonnull %3, i32 noundef 6) #12
  %96 = load i8, ptr %3, align 1
  %97 = and i8 %96, -4
  %98 = or i8 %97, 2
  store i8 %98, ptr %3, align 1
  call void @dev_addr_mod(ptr noundef %95, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 6) #12
  %99 = getelementptr inbounds %struct.net_device, ptr %95, i32 0, i32 50
  store i8 1, ptr %99, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  br label %100

100:                                              ; preds = %94, %88, %71
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  %101 = call i32 @smsc75xx_reset(ptr noundef nonnull %0)
  %102 = icmp slt i32 %101, 0
  %103 = load ptr, ptr %25, align 4
  br i1 %102, label %104, label %106

104:                                              ; preds = %100
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %103, ptr noundef nonnull @.str.48, i32 noundef %101) #13
  %105 = call zeroext i1 @cancel_work_sync(ptr noundef %21) #12
  br label %127

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.net_device, ptr %103, i32 0, i32 16
  store ptr @smsc75xx_netdev_ops, ptr %107, align 8
  %108 = load ptr, ptr %25, align 4
  %109 = getelementptr inbounds %struct.net_device, ptr %108, i32 0, i32 42
  store ptr @smsc75xx_ethtool_ops, ptr %109, align 8
  %110 = load ptr, ptr %25, align 4
  %111 = getelementptr inbounds %struct.net_device, ptr %110, i32 0, i32 14
  %112 = load i32, ptr %111, align 8
  %113 = or i32 %112, 4096
  store i32 %113, ptr %111, align 8
  %114 = load ptr, ptr %25, align 4
  %115 = getelementptr inbounds %struct.net_device, ptr %114, i32 0, i32 19
  %116 = load i16, ptr %115, align 2
  %117 = add i16 %116, 8
  store i16 %117, ptr %115, align 2
  %118 = load ptr, ptr %25, align 4
  %119 = getelementptr inbounds %struct.net_device, ptr %118, i32 0, i32 20
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr inbounds %struct.net_device, ptr %118, i32 0, i32 19
  %122 = load i16, ptr %121, align 2
  %123 = zext i16 %122 to i32
  %124 = add i32 %120, %123
  %125 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 23
  store i32 %124, ptr %125, align 4
  %126 = getelementptr inbounds %struct.net_device, ptr %118, i32 0, i32 31
  store i32 9000, ptr %126, align 4
  br label %129

127:                                              ; preds = %104, %55
  %128 = phi i32 [ %56, %55 ], [ %101, %104 ]
  call void @kfree(ptr noundef nonnull %14) #12
  store i32 0, ptr %16, align 4
  br label %129

129:                                              ; preds = %127, %106, %12, %9
  %130 = phi i32 [ %7, %9 ], [ %128, %127 ], [ 0, %106 ], [ -12, %12 ]
  ret i32 %130
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smsc75xx_unbind(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = inttoptr i32 %4 to ptr
  %8 = getelementptr inbounds %struct.smsc75xx_priv, ptr %7, i32 0, i32 6
  %9 = tail call zeroext i1 @cancel_work_sync(ptr noundef %8) #12
  tail call void @kfree(ptr noundef nonnull %7) #12
  store i32 0, ptr %3, align 4
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc75xx_reset(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21
  %51 = load i32, ptr %50, align 4
  %52 = inttoptr i32 %51 to ptr
  %53 = icmp eq ptr %0, null
  br label %54

54:                                               ; preds = %68, %1
  %55 = phi i32 [ 0, %1 ], [ %69, %68 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %49) #12
  store i32 0, ptr %49, align 4, !annotation !8
  br i1 %53, label %56, label %57, !prof !9

56:                                               ; preds = %54
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

57:                                               ; preds = %54
  %58 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %49, i16 noundef zeroext 4) #12, !callees !11
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64, !prof !9

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %62 = load ptr, ptr %61, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %62, ptr noundef nonnull @.str.26, i32 noundef 20, i32 noundef %58) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %49) #12
  %63 = load ptr, ptr %61, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %63, ptr noundef nonnull @.str.41, i32 noundef %58) #13
  br label %74

64:                                               ; preds = %57
  %65 = load i32, ptr %49, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %49) #12
  %66 = and i32 %65, 128
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  call void @msleep(i32 noundef 10) #12
  %69 = add nuw nsw i32 %55, 1
  %70 = icmp eq i32 %69, 100
  br i1 %70, label %71, label %54

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %73 = load ptr, ptr %72, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %73, ptr noundef nonnull @.str.42) #13
  br label %74

74:                                               ; preds = %71, %60
  %75 = phi i32 [ %58, %60 ], [ -5, %71 ]
  %76 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %77 = load ptr, ptr %76, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %77, ptr noundef nonnull @.str.68) #13
  br label %581

78:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %48) #12
  store i32 0, ptr %48, align 4, !annotation !8
  %79 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %48, i16 noundef zeroext 4) #12, !callees !11
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %85, !prof !9

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %83 = load ptr, ptr %82, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %83, ptr noundef nonnull @.str.26, i32 noundef 16, i32 noundef %79) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %48) #12
  %84 = load ptr, ptr %82, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %84, ptr noundef nonnull @.str.69, i32 noundef %79) #13
  br label %581

85:                                               ; preds = %78
  %86 = load i32, ptr %48, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %48) #12
  %87 = or i32 %86, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %47) #12
  store i32 %87, ptr %47, align 4
  %88 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %47, i16 noundef zeroext 4) #12, !callees !12
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %91, label %90, !prof !9

90:                                               ; preds = %85
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %47) #12
  br label %95

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %93 = load ptr, ptr %92, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %93, ptr noundef nonnull @.str.27, i32 noundef 16, i32 noundef %88) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %47) #12
  %94 = load ptr, ptr %92, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %94, ptr noundef nonnull @.str.70, i32 noundef %88) #13
  br label %581

95:                                               ; preds = %103, %90
  %96 = phi i32 [ %105, %103 ], [ 0, %90 ]
  call void @msleep(i32 noundef 10) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %46) #12
  store i32 0, ptr %46, align 4, !annotation !8
  %97 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %46, i16 noundef zeroext 4) #12, !callees !11
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %103, !prof !9

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %101 = load ptr, ptr %100, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %101, ptr noundef nonnull @.str.26, i32 noundef 16, i32 noundef %97) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %46) #12
  %102 = load ptr, ptr %100, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %102, ptr noundef nonnull @.str.69, i32 noundef %97) #13
  br label %581

103:                                              ; preds = %95
  %104 = load i32, ptr %46, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %46) #12
  %105 = add nuw nsw i32 %96, 1
  %106 = and i32 %104, 2
  %107 = icmp ne i32 %106, 0
  %108 = icmp ult i32 %96, 99
  %109 = select i1 %107, i1 %108, i1 false
  br i1 %109, label %95, label %110

110:                                              ; preds = %103
  %111 = icmp ugt i32 %96, 98
  br i1 %111, label %112, label %115

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %114 = load ptr, ptr %113, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %114, ptr noundef nonnull @.str.71) #13
  br label %581

115:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %45) #12
  store i32 0, ptr %45, align 4, !annotation !8
  %116 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %45, i16 noundef zeroext 4) #12, !callees !11
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %122, !prof !9

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %120 = load ptr, ptr %119, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %120, ptr noundef nonnull @.str.26, i32 noundef 20, i32 noundef %116) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %45) #12
  %121 = load ptr, ptr %119, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %121, ptr noundef nonnull @.str.41, i32 noundef %116) #13
  br label %581

122:                                              ; preds = %115
  %123 = load i32, ptr %45, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %45) #12
  %124 = or i32 %123, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %44) #12
  store i32 %124, ptr %44, align 4
  %125 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %44, i16 noundef zeroext 4) #12, !callees !12
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %128, label %127, !prof !9

127:                                              ; preds = %122
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %44) #12
  br label %132

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %130 = load ptr, ptr %129, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %130, ptr noundef nonnull @.str.27, i32 noundef 20, i32 noundef %125) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %44) #12
  %131 = load ptr, ptr %129, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %131, ptr noundef nonnull @.str.72, i32 noundef %125) #13
  br label %581

132:                                              ; preds = %140, %127
  %133 = phi i32 [ %142, %140 ], [ 0, %127 ]
  call void @msleep(i32 noundef 10) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %43) #12
  store i32 0, ptr %43, align 4, !annotation !8
  %134 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %43, i16 noundef zeroext 4) #12, !callees !11
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %140, !prof !9

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %138 = load ptr, ptr %137, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %138, ptr noundef nonnull @.str.26, i32 noundef 20, i32 noundef %134) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %43) #12
  %139 = load ptr, ptr %137, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %139, ptr noundef nonnull @.str.41, i32 noundef %134) #13
  br label %581

140:                                              ; preds = %132
  %141 = load i32, ptr %43, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %43) #12
  %142 = add nuw nsw i32 %133, 1
  %143 = and i32 %141, 16
  %144 = icmp ne i32 %143, 0
  %145 = icmp ult i32 %133, 99
  %146 = select i1 %144, i1 %145, i1 false
  br i1 %146, label %132, label %147

147:                                              ; preds = %140
  %148 = icmp ugt i32 %133, 98
  %149 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %150 = load ptr, ptr %149, align 4
  br i1 %148, label %151, label %152

151:                                              ; preds = %147
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %150, ptr noundef nonnull @.str.73) #13
  br label %581

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.net_device, ptr %150, i32 0, i32 72
  %154 = load ptr, ptr %153, align 32
  %155 = load i8, ptr %154, align 1
  %156 = zext i8 %155 to i32
  %157 = getelementptr i8, ptr %154, i32 1
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i32
  %160 = shl nuw nsw i32 %159, 8
  %161 = or i32 %160, %156
  %162 = getelementptr i8, ptr %154, i32 2
  %163 = load i8, ptr %162, align 1
  %164 = zext i8 %163 to i32
  %165 = shl nuw nsw i32 %164, 16
  %166 = or i32 %161, %165
  %167 = getelementptr i8, ptr %154, i32 3
  %168 = load i8, ptr %167, align 1
  %169 = zext i8 %168 to i32
  %170 = shl nuw i32 %169, 24
  %171 = or i32 %166, %170
  %172 = getelementptr i8, ptr %154, i32 4
  %173 = load i8, ptr %172, align 1
  %174 = zext i8 %173 to i32
  %175 = getelementptr i8, ptr %154, i32 5
  %176 = load i8, ptr %175, align 1
  %177 = zext i8 %176 to i32
  %178 = shl nuw nsw i32 %177, 8
  %179 = or i32 %178, %174
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %42) #12
  store i32 %179, ptr %42, align 4
  %180 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 280, ptr noundef nonnull %42, i16 noundef zeroext 4) #12, !callees !12
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %185, !prof !9

182:                                              ; preds = %152
  %183 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %183, ptr noundef nonnull @.str.27, i32 noundef 280, i32 noundef %180) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %42) #12
  %184 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %184, ptr noundef nonnull @.str.102, i32 noundef %180) #13
  br label %204

185:                                              ; preds = %152
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %42) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %41) #12
  store i32 %171, ptr %41, align 4
  %186 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 284, ptr noundef nonnull %41, i16 noundef zeroext 4) #12, !callees !12
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %191, !prof !9

188:                                              ; preds = %185
  %189 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %189, ptr noundef nonnull @.str.27, i32 noundef 284, i32 noundef %186) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %41) #12
  %190 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %190, ptr noundef nonnull @.str.103, i32 noundef %186) #13
  br label %204

191:                                              ; preds = %185
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %41) #12
  %192 = or i32 %179, -2147483648
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %40) #12
  store i32 %192, ptr %40, align 4
  %193 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 768, ptr noundef nonnull %40, i16 noundef zeroext 4) #12, !callees !12
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %198, !prof !9

195:                                              ; preds = %191
  %196 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %196, ptr noundef nonnull @.str.27, i32 noundef 768, i32 noundef %193) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %40) #12
  %197 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %197, ptr noundef nonnull @.str.104, i32 noundef %193) #13
  br label %204

198:                                              ; preds = %191
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %40) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %39) #12
  store i32 %171, ptr %39, align 4
  %199 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 772, ptr noundef nonnull %39, i16 noundef zeroext 4) #12, !callees !12
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %207, !prof !9

201:                                              ; preds = %198
  %202 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %202, ptr noundef nonnull @.str.27, i32 noundef 772, i32 noundef %199) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %39) #12
  %203 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %203, ptr noundef nonnull @.str.105, i32 noundef %199) #13
  br label %204

204:                                              ; preds = %201, %195, %188, %182
  %205 = phi i32 [ %199, %201 ], [ %193, %195 ], [ %186, %188 ], [ %180, %182 ]
  %206 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %206, ptr noundef nonnull @.str.74) #13
  br label %581

207:                                              ; preds = %198
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %39) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %38) #12
  store i32 0, ptr %38, align 4, !annotation !8
  %208 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %38, i16 noundef zeroext 4) #12, !callees !11
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %213, !prof !9

210:                                              ; preds = %207
  %211 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %211, ptr noundef nonnull @.str.26, i32 noundef 16, i32 noundef %208) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %38) #12
  %212 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %212, ptr noundef nonnull @.str.69, i32 noundef %208) #13
  br label %581

213:                                              ; preds = %207
  %214 = load i32, ptr %38, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %38) #12
  %215 = or i32 %214, 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %37) #12
  store i32 %215, ptr %37, align 4
  %216 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %37, i16 noundef zeroext 4) #12, !callees !12
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %221, !prof !9

218:                                              ; preds = %213
  %219 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %219, ptr noundef nonnull @.str.27, i32 noundef 16, i32 noundef %216) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %37) #12
  %220 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %220, ptr noundef nonnull @.str.70, i32 noundef %216) #13
  br label %581

221:                                              ; preds = %213
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %37) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %36) #12
  store i32 0, ptr %36, align 4, !annotation !8
  %222 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %36, i16 noundef zeroext 4) #12, !callees !11
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %227, !prof !9

224:                                              ; preds = %221
  %225 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %225, ptr noundef nonnull @.str.26, i32 noundef 16, i32 noundef %222) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %36) #12
  %226 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %226, ptr noundef nonnull @.str.69, i32 noundef %222) #13
  br label %581

227:                                              ; preds = %221
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %36) #12
  %228 = load i8, ptr @turbo_mode, align 1, !range !15
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 24
  store i32 9000, ptr %231, align 4
  br label %240

232:                                              ; preds = %227
  %233 = load ptr, ptr %0, align 4
  %234 = getelementptr inbounds %struct.usb_device, ptr %233, i32 0, i32 4
  %235 = load i32, ptr %234, align 4
  %236 = icmp eq i32 %235, 3
  %237 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 24
  br i1 %236, label %238, label %239

238:                                              ; preds = %232
  store i32 18944, ptr %237, align 4
  br label %240

239:                                              ; preds = %232
  store i32 8256, ptr %237, align 4
  br label %240

240:                                              ; preds = %239, %238, %230
  %241 = phi i32 [ 0, %230 ], [ 37, %238 ], [ 129, %239 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %35) #12
  store i32 %241, ptr %35, align 4
  %242 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 52, ptr noundef nonnull %35, i16 noundef zeroext 4) #12, !callees !12
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %247, !prof !9

244:                                              ; preds = %240
  %245 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %245, ptr noundef nonnull @.str.27, i32 noundef 52, i32 noundef %242) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %35) #12
  %246 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %246, ptr noundef nonnull @.str.75, i32 noundef %242) #13
  br label %581

247:                                              ; preds = %240
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %35) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %34) #12
  store i32 0, ptr %34, align 4, !annotation !8
  %248 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 52, ptr noundef nonnull %34, i16 noundef zeroext 4) #12, !callees !11
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %253, !prof !9

250:                                              ; preds = %247
  %251 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %251, ptr noundef nonnull @.str.26, i32 noundef 52, i32 noundef %248) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #12
  %252 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %252, ptr noundef nonnull @.str.76, i32 noundef %248) #13
  br label %581

253:                                              ; preds = %247
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %33) #12
  store i32 8192, ptr %33, align 4
  %254 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 60, ptr noundef nonnull %33, i16 noundef zeroext 4) #12, !callees !12
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %259, !prof !9

256:                                              ; preds = %253
  %257 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %257, ptr noundef nonnull @.str.27, i32 noundef 60, i32 noundef %254) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %33) #12
  %258 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %258, ptr noundef nonnull @.str.77, i32 noundef %254) #13
  br label %581

259:                                              ; preds = %253
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %33) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %32) #12
  store i32 0, ptr %32, align 4, !annotation !8
  %260 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 60, ptr noundef nonnull %32, i16 noundef zeroext 4) #12, !callees !11
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %265, !prof !9

262:                                              ; preds = %259
  %263 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %263, ptr noundef nonnull @.str.26, i32 noundef 60, i32 noundef %260) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %32) #12
  %264 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %264, ptr noundef nonnull @.str.78, i32 noundef %260) #13
  br label %581

265:                                              ; preds = %259
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %32) #12
  %266 = load i8, ptr @turbo_mode, align 1, !range !15
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %289, label %268

268:                                              ; preds = %265
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %31) #12
  store i32 0, ptr %31, align 4, !annotation !8
  %269 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %31, i16 noundef zeroext 4) #12, !callees !11
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %274, !prof !9

271:                                              ; preds = %268
  %272 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %272, ptr noundef nonnull @.str.26, i32 noundef 16, i32 noundef %269) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %31) #12
  %273 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %273, ptr noundef nonnull @.str.69, i32 noundef %269) #13
  br label %581

274:                                              ; preds = %268
  %275 = load i32, ptr %31, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %31) #12
  %276 = or i32 %275, 20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %30) #12
  store i32 %276, ptr %30, align 4
  %277 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %30, i16 noundef zeroext 4) #12, !callees !12
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %279, label %282, !prof !9

279:                                              ; preds = %274
  %280 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %280, ptr noundef nonnull @.str.27, i32 noundef 16, i32 noundef %277) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %30) #12
  %281 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %281, ptr noundef nonnull @.str.70, i32 noundef %277) #13
  br label %581

282:                                              ; preds = %274
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %30) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %29) #12
  store i32 0, ptr %29, align 4, !annotation !8
  %283 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %29, i16 noundef zeroext 4) #12, !callees !11
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %286, label %285, !prof !9

285:                                              ; preds = %282
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %29) #12
  br label %289

286:                                              ; preds = %282
  %287 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %287, ptr noundef nonnull @.str.26, i32 noundef 16, i32 noundef %283) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %29) #12
  %288 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %288, ptr noundef nonnull @.str.69, i32 noundef %283) #13
  br label %581

289:                                              ; preds = %285, %265
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #12
  store i32 39, ptr %28, align 4
  %290 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 152, ptr noundef nonnull %28, i16 noundef zeroext 4) #12, !callees !12
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %292, label %295, !prof !9

292:                                              ; preds = %289
  %293 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %293, ptr noundef nonnull @.str.27, i32 noundef 152, i32 noundef %290) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #12
  %294 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %294, ptr noundef nonnull @.str.79, i32 noundef %290) #13
  br label %581

295:                                              ; preds = %289
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27) #12
  store i32 23, ptr %27, align 4
  %296 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 156, ptr noundef nonnull %27, i16 noundef zeroext 4) #12, !callees !12
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %298, label %301, !prof !9

298:                                              ; preds = %295
  %299 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %299, ptr noundef nonnull @.str.27, i32 noundef 156, i32 noundef %296) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #12
  %300 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %300, ptr noundef nonnull @.str.80, i32 noundef %296) #13
  br label %581

301:                                              ; preds = %295
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #12
  store i32 -1, ptr %26, align 4
  %302 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 12, ptr noundef nonnull %26, i16 noundef zeroext 4) #12, !callees !12
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %307, !prof !9

304:                                              ; preds = %301
  %305 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %305, ptr noundef nonnull @.str.27, i32 noundef 12, i32 noundef %302) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #12
  %306 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %306, ptr noundef nonnull @.str.81, i32 noundef %302) #13
  br label %581

307:                                              ; preds = %301
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #12
  store i32 0, ptr %25, align 4, !annotation !8
  %308 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %25, i16 noundef zeroext 4) #12, !callees !11
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %310, label %313, !prof !9

310:                                              ; preds = %307
  %311 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %311, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef %308) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #12
  %312 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %312, ptr noundef nonnull @.str.82, i32 noundef %308) #13
  br label %581

313:                                              ; preds = %307
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #12
  store i32 0, ptr %24, align 4, !annotation !8
  %314 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 64, ptr noundef nonnull %24, i16 noundef zeroext 4) #12, !callees !11
  %315 = icmp slt i32 %314, 0
  br i1 %315, label %316, label %319, !prof !9

316:                                              ; preds = %313
  %317 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %317, ptr noundef nonnull @.str.26, i32 noundef 64, i32 noundef %314) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #12
  %318 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %318, ptr noundef nonnull @.str.83, i32 noundef %314) #13
  br label %581

319:                                              ; preds = %313
  %320 = load i32, ptr %24, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #12
  %321 = and i32 %320, 512
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %339

323:                                              ; preds = %319
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #12
  store i32 0, ptr %23, align 4, !annotation !8
  %324 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 24, ptr noundef nonnull %23, i16 noundef zeroext 4) #12, !callees !11
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %326, label %329, !prof !9

326:                                              ; preds = %323
  %327 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %327, ptr noundef nonnull @.str.26, i32 noundef 24, i32 noundef %324) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #12
  %328 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %328, ptr noundef nonnull @.str.84, i32 noundef %324) #13
  br label %581

329:                                              ; preds = %323
  %330 = load i32, ptr %23, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #12
  %331 = and i32 %330, 1073680383
  %332 = or i32 %331, -2147422208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #12
  store i32 %332, ptr %22, align 4
  %333 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 24, ptr noundef nonnull %22, i16 noundef zeroext 4) #12, !callees !12
  %334 = icmp slt i32 %333, 0
  br i1 %334, label %336, label %335, !prof !9

335:                                              ; preds = %329
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #12
  br label %339

336:                                              ; preds = %329
  %337 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %337, ptr noundef nonnull @.str.27, i32 noundef 24, i32 noundef %333) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #12
  %338 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %338, ptr noundef nonnull @.str.85, i32 noundef %333) #13
  br label %581

339:                                              ; preds = %335, %319
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #12
  store i32 0, ptr %21, align 4
  %340 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 268, ptr noundef nonnull %21, i16 noundef zeroext 4) #12, !callees !12
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %342, label %345, !prof !9

342:                                              ; preds = %339
  %343 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %343, ptr noundef nonnull @.str.27, i32 noundef 268, i32 noundef %340) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #12
  %344 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %344, ptr noundef nonnull @.str.86, i32 noundef %340) #13
  br label %581

345:                                              ; preds = %339
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #12
  store i32 0, ptr %20, align 4
  %346 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 160, ptr noundef nonnull %20, i16 noundef zeroext 4) #12, !callees !12
  %347 = icmp slt i32 %346, 0
  br i1 %347, label %348, label %351, !prof !9

348:                                              ; preds = %345
  %349 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %349, ptr noundef nonnull @.str.27, i32 noundef 160, i32 noundef %346) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #12
  %350 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %350, ptr noundef nonnull @.str.87, i32 noundef %346) #13
  br label %581

351:                                              ; preds = %345
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #12
  %352 = getelementptr inbounds %struct.smsc75xx_priv, ptr %52, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #12
  store i32 0, ptr %19, align 4, !annotation !8
  %353 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 96, ptr noundef nonnull %19, i16 noundef zeroext 4) #12, !callees !11
  %354 = icmp slt i32 %353, 0
  br i1 %354, label %355, label %358, !prof !9

355:                                              ; preds = %351
  %356 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %356, ptr noundef nonnull @.str.26, i32 noundef 96, i32 noundef %353) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #12
  %357 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %357, ptr noundef nonnull @.str.88, i32 noundef %353) #13
  br label %581

358:                                              ; preds = %351
  %359 = load i32, ptr %19, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #12
  %360 = or i32 %359, 1026
  store i32 %360, ptr %352, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #12
  store i32 %360, ptr %18, align 4
  %361 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 96, ptr noundef nonnull %18, i16 noundef zeroext 4) #12, !callees !12
  %362 = icmp slt i32 %361, 0
  br i1 %362, label %363, label %366, !prof !9

363:                                              ; preds = %358
  %364 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %364, ptr noundef nonnull @.str.27, i32 noundef 96, i32 noundef %361) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #12
  %365 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %365, ptr noundef nonnull @.str.89, i32 noundef %361) #13
  br label %581

366:                                              ; preds = %358
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #12
  store i32 0, ptr %17, align 4, !annotation !8
  %367 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 96, ptr noundef nonnull %17, i16 noundef zeroext 4) #12, !callees !11
  %368 = icmp slt i32 %367, 0
  br i1 %368, label %369, label %372, !prof !9

369:                                              ; preds = %366
  %370 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %370, ptr noundef nonnull @.str.26, i32 noundef 96, i32 noundef %367) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #12
  %371 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %371, ptr noundef nonnull @.str.88, i32 noundef %367) #13
  br label %581

372:                                              ; preds = %366
  %373 = load i32, ptr %17, align 4
  store i32 %373, ptr %352, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #12
  %374 = load ptr, ptr %149, align 4
  %375 = getelementptr inbounds %struct.net_device, ptr %374, i32 0, i32 23
  %376 = load i64, ptr %375, align 16
  %377 = call i32 @smsc75xx_set_features(ptr noundef %374, i64 noundef %376)
  %378 = load ptr, ptr %149, align 4
  call void @smsc75xx_set_multicast(ptr noundef %378)
  %379 = load ptr, ptr %149, align 4
  %380 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25
  %381 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25, i32 5
  store ptr %379, ptr %381, align 4
  %382 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25, i32 6
  store ptr @smsc75xx_mdio_read, ptr %382, align 4
  %383 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25, i32 7
  store ptr @smsc75xx_mdio_write, ptr %383, align 4
  %384 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25, i32 2
  store i32 31, ptr %384, align 4
  %385 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25, i32 3
  store i32 31, ptr %385, align 4
  %386 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25, i32 4
  %387 = load i8, ptr %386, align 4
  %388 = or i8 %387, 4
  store i8 %388, ptr %386, align 4
  store i32 1, ptr %380, align 4
  call void @smsc75xx_mdio_write(ptr noundef %379, i32 noundef 1, i32 noundef 0, i32 noundef 32768) #12
  br label %389

389:                                              ; preds = %397, %372
  %390 = phi i32 [ 0, %372 ], [ %398, %397 ]
  call void @msleep(i32 noundef 10) #12
  %391 = load ptr, ptr %149, align 4
  %392 = load i32, ptr %380, align 4
  %393 = call i32 @smsc75xx_mdio_read(ptr noundef %391, i32 noundef %392, i32 noundef 0) #12
  %394 = icmp slt i32 %393, 0
  br i1 %394, label %395, label %397

395:                                              ; preds = %389
  %396 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %396, ptr noundef nonnull @.str.106) #13
  br label %480

397:                                              ; preds = %389
  %398 = add nuw nsw i32 %390, 1
  %399 = and i32 %393, 32768
  %400 = icmp ne i32 %399, 0
  %401 = icmp ult i32 %390, 99
  %402 = select i1 %400, i1 %401, i1 false
  br i1 %402, label %389, label %403

403:                                              ; preds = %397
  %404 = icmp ugt i32 %390, 98
  %405 = load ptr, ptr %149, align 4
  br i1 %404, label %406, label %407

406:                                              ; preds = %403
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %405, ptr noundef nonnull @.str.107) #13
  br label %480

407:                                              ; preds = %403
  %408 = load i32, ptr %380, align 4
  call void @smsc75xx_mdio_write(ptr noundef %405, i32 noundef %408, i32 noundef 0, i32 noundef 16448) #12
  br label %409

409:                                              ; preds = %426, %407
  %410 = phi i32 [ 0, %407 ], [ %428, %426 ]
  %411 = load ptr, ptr %149, align 4
  %412 = load i32, ptr %380, align 4
  %413 = call fastcc i32 @smsc75xx_mdio_read_nopm(ptr noundef %411, i32 noundef %412, i32 noundef 1) #12
  %414 = icmp slt i32 %413, 0
  %415 = load ptr, ptr %149, align 4
  br i1 %414, label %416, label %417

416:                                              ; preds = %409
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %415, ptr noundef nonnull @.str.24) #13
  br label %426

417:                                              ; preds = %409
  %418 = load i32, ptr %380, align 4
  %419 = call fastcc i32 @smsc75xx_mdio_read_nopm(ptr noundef %415, i32 noundef %418, i32 noundef 1) #12
  %420 = icmp slt i32 %419, 0
  br i1 %420, label %421, label %423

421:                                              ; preds = %417
  %422 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %422, ptr noundef nonnull @.str.24) #13
  br label %426

423:                                              ; preds = %417
  %424 = lshr i32 %419, 2
  %425 = and i32 %424, 1
  br label %426

426:                                              ; preds = %423, %421, %416
  %427 = phi i32 [ 1, %416 ], [ 1, %421 ], [ %425, %423 ]
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #12
  %428 = add nuw nsw i32 %410, 1
  %429 = icmp eq i32 %427, 0
  %430 = icmp ult i32 %410, 999
  %431 = select i1 %429, i1 %430, i1 false
  br i1 %431, label %409, label %432

432:                                              ; preds = %426
  %433 = icmp ugt i32 %410, 998
  br i1 %433, label %434, label %436

434:                                              ; preds = %432
  %435 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %435, ptr noundef nonnull @.str.108) #13
  br label %469

436:                                              ; preds = %432
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #12
  store i32 0, ptr %16, align 4, !annotation !8
  %437 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %16, i16 noundef zeroext 4) #12, !callees !11
  %438 = icmp slt i32 %437, 0
  br i1 %438, label %439, label %442, !prof !9

439:                                              ; preds = %436
  %440 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %440, ptr noundef nonnull @.str.26, i32 noundef 20, i32 noundef %437) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #12
  %441 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %441, ptr noundef nonnull @.str.41, i32 noundef %437) #13
  br label %469

442:                                              ; preds = %436
  %443 = load i32, ptr %16, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #12
  %444 = or i32 %443, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #12
  store i32 %444, ptr %15, align 4
  %445 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %15, i16 noundef zeroext 4) #12, !callees !12
  %446 = icmp slt i32 %445, 0
  br i1 %446, label %448, label %447, !prof !9

447:                                              ; preds = %442
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #12
  br label %451

448:                                              ; preds = %442
  %449 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %449, ptr noundef nonnull @.str.27, i32 noundef 20, i32 noundef %445) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #12
  %450 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %450, ptr noundef nonnull @.str.72, i32 noundef %445) #13
  br label %469

451:                                              ; preds = %458, %447
  %452 = phi i32 [ %460, %458 ], [ 0, %447 ]
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #12
  store i32 0, ptr %14, align 4, !annotation !8
  %453 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %14, i16 noundef zeroext 4) #12, !callees !11
  %454 = icmp slt i32 %453, 0
  br i1 %454, label %455, label %458, !prof !9

455:                                              ; preds = %451
  %456 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %456, ptr noundef nonnull @.str.26, i32 noundef 20, i32 noundef %453) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #12
  %457 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %457, ptr noundef nonnull @.str.41, i32 noundef %453) #13
  br label %469

458:                                              ; preds = %451
  %459 = load i32, ptr %14, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #12
  %460 = add nuw nsw i32 %452, 1
  %461 = and i32 %459, 16
  %462 = icmp ne i32 %461, 0
  %463 = icmp ult i32 %452, 99
  %464 = select i1 %462, i1 %463, i1 false
  br i1 %464, label %451, label %465

465:                                              ; preds = %458
  %466 = icmp ugt i32 %452, 98
  br i1 %466, label %467, label %469

467:                                              ; preds = %465
  %468 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %468, ptr noundef nonnull @.str.73) #13
  br label %469

469:                                              ; preds = %467, %465, %455, %448, %439, %434
  %470 = load ptr, ptr %149, align 4
  %471 = load i32, ptr %380, align 4
  call void @smsc75xx_mdio_write(ptr noundef %470, i32 noundef %471, i32 noundef 4, i32 noundef 3553) #12
  %472 = load ptr, ptr %149, align 4
  %473 = load i32, ptr %380, align 4
  call void @smsc75xx_mdio_write(ptr noundef %472, i32 noundef %473, i32 noundef 9, i32 noundef 512) #12
  %474 = load ptr, ptr %149, align 4
  %475 = load i32, ptr %380, align 4
  %476 = call i32 @smsc75xx_mdio_read(ptr noundef %474, i32 noundef %475, i32 noundef 29) #12
  %477 = icmp slt i32 %476, 0
  %478 = load ptr, ptr %149, align 4
  br i1 %477, label %479, label %483

479:                                              ; preds = %469
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %478, ptr noundef nonnull @.str.28) #13
  br label %480

480:                                              ; preds = %479, %406, %395
  %481 = phi i32 [ %476, %479 ], [ -5, %406 ], [ %393, %395 ]
  %482 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %482, ptr noundef nonnull @.str.90, i32 noundef %481) #13
  br label %581

483:                                              ; preds = %469
  %484 = load i32, ptr %380, align 4
  call void @smsc75xx_mdio_write(ptr noundef %478, i32 noundef %484, i32 noundef 29, i32 noundef 65535) #12
  %485 = load ptr, ptr %149, align 4
  %486 = load i32, ptr %380, align 4
  call void @smsc75xx_mdio_write(ptr noundef %485, i32 noundef %486, i32 noundef 30, i32 noundef 80) #12
  %487 = call i32 @mii_nway_restart(ptr noundef %380) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #12
  store i32 0, ptr %13, align 4, !annotation !8
  %488 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 56, ptr noundef nonnull %13, i16 noundef zeroext 4) #12, !callees !11
  %489 = icmp slt i32 %488, 0
  br i1 %489, label %490, label %493, !prof !9

490:                                              ; preds = %483
  %491 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %491, ptr noundef nonnull @.str.26, i32 noundef 56, i32 noundef %488) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #12
  %492 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %492, ptr noundef nonnull @.str.91, i32 noundef %488) #13
  br label %581

493:                                              ; preds = %483
  %494 = load i32, ptr %13, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #12
  %495 = or i32 %494, 131072
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #12
  store i32 %495, ptr %12, align 4
  %496 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 56, ptr noundef nonnull %12, i16 noundef zeroext 4) #12, !callees !12
  %497 = icmp slt i32 %496, 0
  br i1 %497, label %498, label %501, !prof !9

498:                                              ; preds = %493
  %499 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %499, ptr noundef nonnull @.str.27, i32 noundef 56, i32 noundef %496) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  %500 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %500, ptr noundef nonnull @.str.92, i32 noundef %496) #13
  br label %581

501:                                              ; preds = %493
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #12
  store i32 0, ptr %11, align 4, !annotation !8
  %502 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 256, ptr noundef nonnull %11, i16 noundef zeroext 4) #12, !callees !11
  %503 = icmp slt i32 %502, 0
  br i1 %503, label %504, label %507, !prof !9

504:                                              ; preds = %501
  %505 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %505, ptr noundef nonnull @.str.26, i32 noundef 256, i32 noundef %502) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  %506 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %506, ptr noundef nonnull @.str.93, i32 noundef %502) #13
  br label %581

507:                                              ; preds = %501
  %508 = load i32, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  %509 = or i32 %508, 6144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  store i32 %509, ptr %10, align 4
  %510 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 256, ptr noundef nonnull %10, i16 noundef zeroext 4) #12, !callees !12
  %511 = icmp slt i32 %510, 0
  br i1 %511, label %512, label %515, !prof !9

512:                                              ; preds = %507
  %513 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %513, ptr noundef nonnull @.str.27, i32 noundef 256, i32 noundef %510) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  %514 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %514, ptr noundef nonnull @.str.94, i32 noundef %510) #13
  br label %581

515:                                              ; preds = %507
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  store i32 0, ptr %9, align 4, !annotation !8
  %516 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 264, ptr noundef nonnull %9, i16 noundef zeroext 4) #12, !callees !11
  %517 = icmp slt i32 %516, 0
  br i1 %517, label %518, label %521, !prof !9

518:                                              ; preds = %515
  %519 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %519, ptr noundef nonnull @.str.26, i32 noundef 264, i32 noundef %516) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  %520 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %520, ptr noundef nonnull @.str.95, i32 noundef %516) #13
  br label %581

521:                                              ; preds = %515
  %522 = load i32, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  %523 = or i32 %522, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 %523, ptr %8, align 4
  %524 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 264, ptr noundef nonnull %8, i16 noundef zeroext 4) #12, !callees !12
  %525 = icmp slt i32 %524, 0
  br i1 %525, label %526, label %529, !prof !9

526:                                              ; preds = %521
  %527 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %527, ptr noundef nonnull @.str.27, i32 noundef 264, i32 noundef %524) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  %528 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %528, ptr noundef nonnull @.str.96, i32 noundef %524) #13
  br label %581

529:                                              ; preds = %521
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !8
  %530 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 148, ptr noundef nonnull %7, i16 noundef zeroext 4) #12, !callees !11
  %531 = icmp slt i32 %530, 0
  br i1 %531, label %532, label %535, !prof !9

532:                                              ; preds = %529
  %533 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %533, ptr noundef nonnull @.str.26, i32 noundef 148, i32 noundef %530) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %534 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %534, ptr noundef nonnull @.str.97, i32 noundef %530) #13
  br label %581

535:                                              ; preds = %529
  %536 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %537 = or i32 %536, -2147483648
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 %537, ptr %6, align 4
  %538 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 148, ptr noundef nonnull %6, i16 noundef zeroext 4) #12, !callees !12
  %539 = icmp slt i32 %538, 0
  br i1 %539, label %540, label %543, !prof !9

540:                                              ; preds = %535
  %541 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %541, ptr noundef nonnull @.str.27, i32 noundef 148, i32 noundef %538) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %542 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %542, ptr noundef nonnull @.str.98, i32 noundef %538) #13
  br label %581

543:                                              ; preds = %535
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %544 = load ptr, ptr %149, align 4
  %545 = getelementptr inbounds %struct.net_device, ptr %544, i32 0, i32 20
  %546 = load i32, ptr %545, align 4
  %547 = add i32 %546, 14
  %548 = call fastcc i32 @smsc75xx_set_rx_max_frame_length(ptr noundef %0, i32 noundef %547)
  %549 = icmp slt i32 %548, 0
  br i1 %549, label %550, label %552

550:                                              ; preds = %543
  %551 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %551, ptr noundef nonnull @.str.99) #13
  br label %581

552:                                              ; preds = %543
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !8
  %553 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 260, ptr noundef nonnull %5, i16 noundef zeroext 4) #12, !callees !11
  %554 = icmp slt i32 %553, 0
  br i1 %554, label %555, label %558, !prof !9

555:                                              ; preds = %552
  %556 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %556, ptr noundef nonnull @.str.26, i32 noundef 260, i32 noundef %553) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %557 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %557, ptr noundef nonnull @.str.21, i32 noundef %553) #13
  br label %581

558:                                              ; preds = %552
  %559 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %560 = or i32 %559, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 %560, ptr %4, align 4
  %561 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 260, ptr noundef nonnull %4, i16 noundef zeroext 4) #12, !callees !12
  %562 = icmp slt i32 %561, 0
  br i1 %562, label %563, label %566, !prof !9

563:                                              ; preds = %558
  %564 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %564, ptr noundef nonnull @.str.27, i32 noundef 260, i32 noundef %561) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %565 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %565, ptr noundef nonnull @.str.22, i32 noundef %561) #13
  br label %581

566:                                              ; preds = %558
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %567 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 144, ptr noundef nonnull %3, i16 noundef zeroext 4) #12, !callees !11
  %568 = icmp slt i32 %567, 0
  br i1 %568, label %569, label %572, !prof !9

569:                                              ; preds = %566
  %570 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %570, ptr noundef nonnull @.str.26, i32 noundef 144, i32 noundef %567) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %571 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %571, ptr noundef nonnull @.str.100, i32 noundef %567) #13
  br label %581

572:                                              ; preds = %566
  %573 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %574 = or i32 %573, -2147483648
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 %574, ptr %2, align 4
  %575 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 144, ptr noundef nonnull %2, i16 noundef zeroext 4) #12, !callees !12
  %576 = icmp slt i32 %575, 0
  br i1 %576, label %578, label %577, !prof !9

577:                                              ; preds = %572
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  br label %581

578:                                              ; preds = %572
  %579 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %579, ptr noundef nonnull @.str.27, i32 noundef 144, i32 noundef %575) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %580 = load ptr, ptr %149, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %580, ptr noundef nonnull @.str.101, i32 noundef %575) #13
  br label %581

581:                                              ; preds = %578, %577, %569, %563, %555, %550, %540, %532, %526, %518, %512, %504, %498, %490, %480, %369, %363, %355, %348, %342, %336, %326, %316, %310, %304, %298, %292, %286, %279, %271, %262, %256, %250, %244, %224, %218, %210, %204, %151, %136, %128, %118, %112, %99, %91, %81, %74
  %582 = phi i32 [ %75, %74 ], [ %79, %81 ], [ %88, %91 ], [ %97, %99 ], [ -5, %112 ], [ %116, %118 ], [ %125, %128 ], [ %134, %136 ], [ -5, %151 ], [ %205, %204 ], [ %208, %210 ], [ %216, %218 ], [ %222, %224 ], [ %242, %244 ], [ %248, %250 ], [ %254, %256 ], [ %260, %262 ], [ %269, %271 ], [ %277, %279 ], [ %283, %286 ], [ %290, %292 ], [ %296, %298 ], [ %302, %304 ], [ %308, %310 ], [ %314, %316 ], [ %340, %342 ], [ %346, %348 ], [ %353, %355 ], [ %361, %363 ], [ %367, %369 ], [ %481, %480 ], [ %488, %490 ], [ %496, %498 ], [ %502, %504 ], [ %510, %512 ], [ %516, %518 ], [ %524, %526 ], [ %530, %532 ], [ %538, %540 ], [ %548, %550 ], [ %553, %555 ], [ %561, %563 ], [ %567, %569 ], [ %575, %578 ], [ %324, %326 ], [ %333, %336 ], [ 0, %577 ]
  ret i32 %582
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @smsc75xx_manage_power(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 6
  %6 = trunc i32 %1 to i8
  %7 = load i8, ptr %5, align 8
  %8 = shl i8 %6, 3
  %9 = and i8 %8, 8
  %10 = and i8 %7, -9
  %11 = or i8 %10, %9
  store i8 %11, ptr %5, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smsc75xx_status(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %8, ptr noundef nonnull @.str.109, i32 noundef %4) #13
  br label %19

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %11, align 1
  %13 = and i32 %12, 131072
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call void @usbnet_defer_kevent(ptr noundef %0, i32 noundef 4) #12
  br label %19

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.110, i32 noundef %12) #13
  br label %19

19:                                               ; preds = %16, %15, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc75xx_link_reset(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ethtool_cmd, align 4
  %6 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 25
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #12
  %7 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %7, i8 0, i32 40, i1 false)
  store i32 1, ptr %5, align 4
  %8 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %6, align 4
  tail call void @smsc75xx_mdio_write(ptr noundef %9, i32 noundef %10, i32 noundef 29, i32 noundef 65535)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %11 = icmp eq ptr %0, null
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

13:                                               ; preds = %1
  store i32 -1, ptr %4, align 4
  %14 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 12, ptr noundef nonnull %4, i16 noundef zeroext 4) #12, !callees !12
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19, !prof !9

16:                                               ; preds = %13
  %17 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %17, ptr noundef nonnull @.str.27, i32 noundef 12, i32 noundef %14) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %18 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.111) #13
  br label %67

19:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %20 = call i32 @mii_check_media(ptr noundef %6, i32 noundef 1, i32 noundef 1) #12
  call void @mii_ethtool_gset(ptr noundef %6, ptr noundef nonnull %5) #12
  %21 = load ptr, ptr %8, align 4
  %22 = load i32, ptr %6, align 4
  %23 = call i32 @smsc75xx_mdio_read(ptr noundef %21, i32 noundef %22, i32 noundef 4)
  %24 = load ptr, ptr %8, align 4
  %25 = load i32, ptr %6, align 4
  %26 = call i32 @smsc75xx_mdio_read(ptr noundef %24, i32 noundef %25, i32 noundef 5)
  %27 = getelementptr inbounds %struct.ethtool_cmd, ptr %5, i32 0, i32 4
  %28 = load i8, ptr %27, align 2
  %29 = icmp eq i8 %28, 1
  br i1 %29, label %30, label %52

30:                                               ; preds = %19
  %31 = and i32 %26, %23
  %32 = and i32 %31, 1024
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = and i32 %31, 2048
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = and i32 %23, 1024
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = lshr i32 %26, 10
  %42 = and i32 %41, 1
  br label %43

43:                                               ; preds = %40, %37, %34, %30
  %44 = phi i32 [ 0, %34 ], [ 3, %30 ], [ 2, %37 ], [ %42, %40 ]
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 0, i32 2080
  %48 = select i1 %46, i32 0, i32 1073807359
  %49 = shl nuw nsw i32 %44, 28
  %50 = and i32 %49, 536870912
  %51 = or i32 %48, %50
  br label %52

52:                                               ; preds = %43, %19
  %53 = phi i32 [ %47, %43 ], [ 0, %19 ]
  %54 = phi i32 [ %51, %43 ], [ 0, %19 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 %54, ptr %3, align 4
  %55 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 268, ptr noundef nonnull %3, i16 noundef zeroext 4) #12, !callees !12
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60, !prof !9

57:                                               ; preds = %52
  %58 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %58, ptr noundef nonnull @.str.27, i32 noundef 268, i32 noundef %55) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %59 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %59, ptr noundef nonnull @.str.112) #13
  br label %67

60:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 %53, ptr %2, align 4
  %61 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 160, ptr noundef nonnull %2, i16 noundef zeroext 4) #12, !callees !12
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %64, label %63, !prof !9

63:                                               ; preds = %60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  br label %67

64:                                               ; preds = %60
  %65 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %65, ptr noundef nonnull @.str.27, i32 noundef 160, i32 noundef %61) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %66 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %66, ptr noundef nonnull @.str.113) #13
  br label %67

67:                                               ; preds = %64, %63, %57, %16
  %68 = phi i32 [ %14, %16 ], [ %55, %57 ], [ %61, %64 ], [ 0, %63 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #12
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc75xx_rx_fixup(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 19
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = icmp ult i32 %4, %9
  br i1 %10, label %129, label %11

11:                                               ; preds = %2
  %12 = icmp eq i32 %4, 0
  br i1 %12, label %129, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  br label %15

15:                                               ; preds = %125, %13
  %16 = load ptr, ptr %14, align 4
  %17 = load i32, ptr %16, align 1
  %18 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 4) #12
  %19 = load ptr, ptr %14, align 4
  %20 = load i32, ptr %19, align 1
  %21 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 6) #12
  %22 = load ptr, ptr %14, align 4
  %23 = and i32 %17, 16383
  %24 = add nsw i32 %23, -2
  %25 = sub i32 0, %17
  %26 = and i32 %25, 3
  %27 = and i32 %17, 4194304
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %53, label %29, !prof !16

29:                                               ; preds = %15
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 36, i32 4
  %32 = load i32, ptr %31, align 8
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 8
  %34 = load ptr, ptr %5, align 4
  %35 = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 36, i32 6
  %36 = load i32, ptr %35, align 8
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 8
  %38 = and i32 %17, 65536
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %29
  %41 = load ptr, ptr %5, align 4
  %42 = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 36, i32 12
  %43 = load i32, ptr %42, align 8
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 8
  br label %121

45:                                               ; preds = %29
  %46 = and i32 %17, 1572864
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %121, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %5, align 4
  %50 = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 36, i32 13
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 4
  br label %121

53:                                               ; preds = %15
  %54 = icmp ugt i32 %24, 9026
  br i1 %54, label %129, label %55, !prof !9

55:                                               ; preds = %53
  %56 = load i32, ptr %3, align 8
  %57 = icmp eq i32 %56, %24
  br i1 %57, label %58, label %85

58:                                               ; preds = %55
  %59 = load ptr, ptr %5, align 4
  %60 = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 23
  %61 = load i64, ptr %60, align 16
  %62 = and i64 %61, 1099511627776
  %63 = icmp ne i64 %62, 0
  %64 = and i32 %17, 16384
  %65 = icmp eq i32 %64, 0
  %66 = and i1 %65, %63
  br i1 %66, label %71, label %67, !prof !17

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %69 = load i16, ptr %68, align 8
  %70 = and i16 %69, -97
  store i16 %70, ptr %68, align 8
  br label %81

71:                                               ; preds = %58
  %72 = lshr i32 %20, 16
  %73 = trunc i32 %72 to i16
  %74 = tail call i16 @llvm.bswap.i16(i16 %73) #12
  %75 = zext i16 %74 to i32
  %76 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %78 = load i16, ptr %77, align 8
  %79 = and i16 %78, -97
  %80 = or i16 %79, 64
  store i16 %80, ptr %77, align 8
  br label %81

81:                                               ; preds = %71, %67
  %82 = add nsw i32 %23, -6
  tail call void @skb_trim(ptr noundef %1, i32 noundef %82) #12
  %83 = add nuw nsw i32 %23, 174
  %84 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  store i32 %83, ptr %84, align 8
  br label %129

85:                                               ; preds = %55
  %86 = tail call ptr @skb_clone(ptr noundef %1, i32 noundef 2592) #12
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %90, !prof !9

88:                                               ; preds = %85
  %89 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %89, ptr noundef nonnull @.str.114) #13
  br label %129

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 5
  store i32 %24, ptr %91, align 8
  %92 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 17
  store ptr %22, ptr %92, align 4
  %93 = getelementptr i8, ptr %22, i32 %24
  %94 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 14
  store ptr %93, ptr %94, align 8
  %95 = load ptr, ptr %5, align 4
  %96 = getelementptr inbounds %struct.net_device, ptr %95, i32 0, i32 23
  %97 = load i64, ptr %96, align 16
  %98 = and i64 %97, 1099511627776
  %99 = icmp ne i64 %98, 0
  %100 = and i32 %17, 16384
  %101 = icmp eq i32 %100, 0
  %102 = and i1 %101, %99
  br i1 %102, label %107, label %103, !prof !17

103:                                              ; preds = %90
  %104 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 13
  %105 = load i16, ptr %104, align 8
  %106 = and i16 %105, -97
  store i16 %106, ptr %104, align 8
  br label %117

107:                                              ; preds = %90
  %108 = lshr i32 %20, 16
  %109 = trunc i32 %108 to i16
  %110 = tail call i16 @llvm.bswap.i16(i16 %109) #12
  %111 = zext i16 %110 to i32
  %112 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 13, i32 0, i32 4
  store i32 %111, ptr %112, align 4
  %113 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 13
  %114 = load i16, ptr %113, align 8
  %115 = and i16 %114, -97
  %116 = or i16 %115, 64
  store i16 %116, ptr %113, align 8
  br label %117

117:                                              ; preds = %107, %103
  %118 = add nsw i32 %23, -6
  tail call void @skb_trim(ptr noundef nonnull %86, i32 noundef %118) #12
  %119 = add nuw nsw i32 %23, 174
  %120 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 18
  store i32 %119, ptr %120, align 8
  tail call void @usbnet_skb_return(ptr noundef %0, ptr noundef nonnull %86) #12
  br label %121

121:                                              ; preds = %117, %48, %45, %40
  %122 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef %24) #12
  %123 = load i32, ptr %3, align 8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef %26) #12
  %127 = load i32, ptr %3, align 8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %15

129:                                              ; preds = %125, %121, %88, %81, %53, %11, %2
  %130 = phi i32 [ 0, %2 ], [ 0, %88 ], [ 1, %81 ], [ 1, %11 ], [ 1, %121 ], [ 1, %125 ], [ 0, %53 ]
  ret i32 %130
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @smsc75xx_tx_fixup(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 65535
  %14 = ashr i32 %12, 16
  %15 = sub nsw i32 %13, %14
  %16 = icmp ne i32 %15, 1
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %8, %3
  %19 = phi i32 [ %17, %8 ], [ 0, %3 ]
  %20 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %23 = load ptr, ptr %22, align 8
  %24 = ptrtoint ptr %21 to i32
  %25 = ptrtoint ptr %23 to i32
  %26 = sub i32 %24, %25
  %27 = tail call i32 @llvm.usub.sat.i32(i32 8, i32 %26) #12
  %28 = or i32 %27, %19
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %18
  %31 = add nuw nsw i32 %27, 63
  %32 = and i32 %31, 64
  %33 = tail call i32 @pskb_expand_head(ptr noundef %1, i32 noundef %32, i32 noundef 0, i32 noundef 2592) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #12
  br label %62

36:                                               ; preds = %30, %18
  %37 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 1048575
  %40 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %41 = load i16, ptr %40, align 8
  %42 = and i16 %41, 96
  %43 = icmp eq i16 %42, 96
  %44 = select i1 %43, i32 104857600, i32 4194304
  %45 = or i32 %44, %39
  %46 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.skb_shared_info, ptr %47, i32 0, i32 4
  %49 = load i16, ptr %48, align 4
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %36
  %52 = tail call i16 @llvm.umax.i16(i16 %49, i16 8)
  %53 = zext i16 %52 to i32
  %54 = shl nuw i32 %53, 16
  %55 = and i32 %54, 1073676288
  %56 = or i32 %45, 134217728
  br label %57

57:                                               ; preds = %51, %36
  %58 = phi i32 [ %55, %51 ], [ 0, %36 ]
  %59 = phi i32 [ %56, %51 ], [ %45, %36 ]
  %60 = tail call ptr @skb_push(ptr noundef %1, i32 noundef 8) #12
  store i32 %59, ptr %60, align 1
  %61 = getelementptr i8, ptr %60, i32 4
  store i32 %58, ptr %61, align 1
  br label %62

62:                                               ; preds = %57, %35
  %63 = phi ptr [ null, %35 ], [ %1, %57 ]
  ret ptr %63
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smsc75xx_deferred_multicast_write(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr i8, ptr %0, i32 -100
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 -88
  %13 = getelementptr inbounds %struct.usbnet, ptr %11, i32 0, i32 21
  %14 = load i32, ptr %13, align 4
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.smsc75xx_priv, ptr %15, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %16) #12
  %17 = icmp eq ptr %11, null
  br label %18

18:                                               ; preds = %30, %1
  %19 = phi i32 [ 0, %1 ], [ %32, %30 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  store i32 0, ptr %9, align 4, !annotation !8
  br i1 %17, label %20, label %21, !prof !9

20:                                               ; preds = %18
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

21:                                               ; preds = %18
  %22 = call i32 @usbnet_read_cmd(ptr noundef nonnull %11, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 36, ptr noundef nonnull %9, i16 noundef zeroext 4) #12, !callees !11
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27, !prof !9

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.usbnet, ptr %11, i32 0, i32 19
  %26 = load ptr, ptr %25, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %26, ptr noundef nonnull @.str.26, i32 noundef 36, i32 noundef %22) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  br label %36

27:                                               ; preds = %21
  %28 = load i32, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 8589920) #12
  %32 = add nuw nsw i32 %19, 1
  %33 = icmp eq i32 %32, 100
  br i1 %33, label %34, label %18

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.usbnet, ptr %11, i32 0, i32 19
  br label %36

36:                                               ; preds = %34, %24
  %37 = phi ptr [ %25, %24 ], [ %35, %34 ]
  %38 = phi ptr [ @.str.51, %24 ], [ @.str.57, %34 ]
  %39 = load ptr, ptr %37, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %39, ptr noundef nonnull %38) #13
  %40 = getelementptr inbounds %struct.usbnet, ptr %11, i32 0, i32 19
  br label %104

41:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !annotation !8
  %42 = call i32 @usbnet_read_cmd(ptr noundef nonnull %11, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 36, ptr noundef nonnull %8, i16 noundef zeroext 4) #12, !callees !11
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47, !prof !9

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.usbnet, ptr %11, i32 0, i32 19
  %46 = load ptr, ptr %45, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %46, ptr noundef nonnull @.str.26, i32 noundef 36, i32 noundef %42) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  br label %104

47:                                               ; preds = %41
  %48 = load i32, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  %49 = and i32 %48, -16
  %50 = or i32 %49, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 %50, ptr %7, align 4
  %51 = call i32 @usbnet_write_cmd(ptr noundef nonnull %11, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 36, ptr noundef nonnull %7, i16 noundef zeroext 4) #12, !callees !12
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %54, label %53, !prof !9

53:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  br label %57

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.usbnet, ptr %11, i32 0, i32 19
  %56 = load ptr, ptr %55, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %56, ptr noundef nonnull @.str.27, i32 noundef 36, i32 noundef %51) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  br label %104

57:                                               ; preds = %101, %53
  %58 = phi i32 [ 0, %53 ], [ %102, %101 ]
  %59 = add nuw nsw i32 %58, 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 %59, ptr %6, align 4
  %60 = call i32 @usbnet_write_cmd(ptr noundef nonnull %11, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 44, ptr noundef nonnull %6, i16 noundef zeroext 4) #12, !callees !12
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65, !prof !9

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.usbnet, ptr %11, i32 0, i32 19
  %64 = load ptr, ptr %63, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %64, ptr noundef nonnull @.str.27, i32 noundef 44, i32 noundef %60) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  br label %104

65:                                               ; preds = %57
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %66 = getelementptr i32, ptr %12, i32 %58
  %67 = load i32, ptr %66, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 %67, ptr %5, align 4
  %68 = call i32 @usbnet_write_cmd(ptr noundef nonnull %11, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 48, ptr noundef nonnull %5, i16 noundef zeroext 4) #12, !callees !12
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73, !prof !9

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.usbnet, ptr %11, i32 0, i32 19
  %72 = load ptr, ptr %71, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %72, ptr noundef nonnull @.str.27, i32 noundef 48, i32 noundef %68) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %104

73:                                               ; preds = %65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 1, ptr %4, align 4
  %74 = call i32 @usbnet_write_cmd(ptr noundef nonnull %11, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 40, ptr noundef nonnull %4, i16 noundef zeroext 4) #12, !callees !12
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79, !prof !9

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.usbnet, ptr %11, i32 0, i32 19
  %78 = load ptr, ptr %77, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %78, ptr noundef nonnull @.str.27, i32 noundef 40, i32 noundef %74) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %104

79:                                               ; preds = %73
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %80

80:                                               ; preds = %90, %79
  %81 = phi i32 [ 0, %79 ], [ %92, %90 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %82 = call i32 @usbnet_read_cmd(ptr noundef nonnull %11, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 36, ptr noundef nonnull %3, i16 noundef zeroext 4) #12, !callees !11
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87, !prof !9

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.usbnet, ptr %11, i32 0, i32 19
  %86 = load ptr, ptr %85, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %86, ptr noundef nonnull @.str.26, i32 noundef 36, i32 noundef %82) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %96

87:                                               ; preds = %80
  %88 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %89 = icmp sgt i32 %88, -1
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %91(i32 noundef 8589920) #12
  %92 = add nuw nsw i32 %81, 1
  %93 = icmp eq i32 %92, 100
  br i1 %93, label %94, label %80

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.usbnet, ptr %11, i32 0, i32 19
  br label %96

96:                                               ; preds = %94, %84
  %97 = phi ptr [ %85, %84 ], [ %95, %94 ]
  %98 = phi ptr [ @.str.51, %84 ], [ @.str.57, %94 ]
  %99 = load ptr, ptr %97, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %99, ptr noundef nonnull %98) #13
  %100 = getelementptr inbounds %struct.usbnet, ptr %11, i32 0, i32 19
  br label %104

101:                                              ; preds = %87
  %102 = add nuw nsw i32 %58, 1
  %103 = icmp eq i32 %102, 16
  br i1 %103, label %108, label %57

104:                                              ; preds = %96, %76, %70, %62, %54, %44, %36
  %105 = phi ptr [ %100, %96 ], [ %77, %76 ], [ %71, %70 ], [ %63, %62 ], [ %55, %54 ], [ %45, %44 ], [ %40, %36 ]
  %106 = phi ptr [ @.str.56, %96 ], [ @.str.55, %76 ], [ @.str.54, %70 ], [ @.str.53, %62 ], [ @.str.52, %54 ], [ @.str.51, %44 ], [ @.str.50, %36 ]
  %107 = load ptr, ptr %105, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %107, ptr noundef nonnull %106) #13
  br label %108

108:                                              ; preds = %104, %101
  call void @mutex_unlock(ptr noundef %16) #12
  %109 = getelementptr i8, ptr %0, i32 -96
  %110 = load i32, ptr %109, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 %110, ptr %2, align 4
  %111 = call i32 @usbnet_write_cmd(ptr noundef nonnull %11, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 96, ptr noundef nonnull %2, i16 noundef zeroext 4) #12, !callees !12
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %114, label %113, !prof !9

113:                                              ; preds = %108
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  br label %118

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.usbnet, ptr %11, i32 0, i32 19
  %116 = load ptr, ptr %115, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %116, ptr noundef nonnull @.str.27, i32 noundef 96, i32 noundef %111) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %117 = load ptr, ptr %115, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %117, ptr noundef nonnull @.str.49) #13
  br label %118

118:                                              ; preds = %114, %113
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_read_eeprom(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3) unnamed_addr #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 349, 0\0A.popsection", ""() #12, !srcloc !18
  unreachable

10:                                               ; preds = %4
  %11 = icmp eq ptr %3, null
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 350, 0\0A.popsection", ""() #12, !srcloc !19
  unreachable

13:                                               ; preds = %10
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = add i32 %14, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4
  %16 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 64, ptr noundef nonnull %7, i16 noundef zeroext 4) #12, !callees !11
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %21, label %25, !prof !9

18:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4
  %19 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 64, ptr noundef nonnull %7, i16 noundef zeroext 4) #12, !callees !11
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25, !prof !9

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %16, %13 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %24 = load ptr, ptr %23, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %24, ptr noundef nonnull @.str.26, i32 noundef 64, i32 noundef %22) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  br label %63

25:                                               ; preds = %18, %13
  %26 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = icmp eq i32 %2, 0
  br i1 %29, label %68, label %37

30:                                               ; preds = %25
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 8589920) #12
  %32 = load volatile i32, ptr @jiffies, align 64
  %33 = sub i32 %15, %32
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %18, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  br label %63

37:                                               ; preds = %56, %28
  %38 = phi i32 [ %61, %56 ], [ 0, %28 ]
  %39 = phi i32 [ %60, %56 ], [ %1, %28 ]
  %40 = and i32 %39, 511
  %41 = or i32 %40, -2147483648
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 %41, ptr %6, align 4
  %42 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 64, ptr noundef nonnull %6, i16 noundef zeroext 4) #12, !callees !12
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47, !prof !9

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %46 = load ptr, ptr %45, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %46, ptr noundef nonnull @.str.27, i32 noundef 64, i32 noundef %42) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  br label %63

47:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %48 = call fastcc i32 @smsc75xx_wait_eeprom(ptr noundef nonnull %0)
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %68, label %50

50:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !8
  %51 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 68, ptr noundef nonnull %5, i16 noundef zeroext 4) #12, !callees !11
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56, !prof !9

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %55 = load ptr, ptr %54, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %55, ptr noundef nonnull @.str.26, i32 noundef 68, i32 noundef %51) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %63

56:                                               ; preds = %50
  %57 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %58 = trunc i32 %57 to i8
  %59 = getelementptr i8, ptr %3, i32 %38
  store i8 %58, ptr %59, align 1
  %60 = add i32 %39, 1
  %61 = add nuw i32 %38, 1
  %62 = icmp eq i32 %61, %2
  br i1 %62, label %68, label %37

63:                                               ; preds = %53, %44, %35, %21
  %64 = phi ptr [ %54, %53 ], [ %45, %44 ], [ %36, %35 ], [ %23, %21 ]
  %65 = phi ptr [ @.str.59, %53 ], [ @.str.58, %44 ], [ @.str.61, %35 ], [ @.str.60, %21 ]
  %66 = phi i32 [ %51, %53 ], [ %42, %44 ], [ -5, %35 ], [ %22, %21 ]
  %67 = load ptr, ptr %64, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %67, ptr noundef nonnull %65) #13
  br label %68

68:                                               ; preds = %63, %56, %47, %28
  %69 = phi i32 [ 0, %28 ], [ %66, %63 ], [ %48, %47 ], [ 0, %56 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_wait_eeprom(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = icmp eq ptr %0, null
  %5 = add i32 %3, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !8
  br i1 %4, label %9, label %6, !prof !9

6:                                                ; preds = %1
  %7 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 64, ptr noundef nonnull %2, i16 noundef zeroext 4) #12, !callees !11
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %17, !prof !9

9:                                                ; preds = %1
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

10:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !8
  %11 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 64, ptr noundef nonnull %2, i16 noundef zeroext 4) #12, !callees !11
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17, !prof !9

13:                                               ; preds = %10, %6
  %14 = phi i32 [ %7, %6 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %16 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.26, i32 noundef 64, i32 noundef %14) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  br label %27

17:                                               ; preds = %10, %6
  %18 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %19 = and i32 %18, -2147482624
  switch i32 %19, label %25 [
    i32 -2147483648, label %20
    i32 0, label %32
  ]

20:                                               ; preds = %17
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 8589920) #12
  %22 = load volatile i32, ptr @jiffies, align 64
  %23 = sub i32 %5, %22
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %10, label %25

25:                                               ; preds = %20, %17
  %26 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  br label %27

27:                                               ; preds = %25, %13
  %28 = phi ptr [ %26, %25 ], [ %15, %13 ]
  %29 = phi ptr [ @.str.62, %25 ], [ @.str.60, %13 ]
  %30 = phi i32 [ -5, %25 ], [ %14, %13 ]
  %31 = load ptr, ptr %28, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %31, ptr noundef nonnull %29) #13
  br label %32

32:                                               ; preds = %27, %17
  %33 = phi i32 [ %30, %27 ], [ %19, %17 ]
  ret i32 %33
}

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
define internal void @smsc75xx_set_multicast(ptr noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1520
  %3 = load i32, ptr %2, align 4
  %4 = inttoptr i32 %3 to ptr
  %5 = getelementptr inbounds %struct.smsc75xx_priv, ptr %4, i32 0, i32 5
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #12
  %7 = getelementptr inbounds %struct.smsc75xx_priv, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, -1803
  %10 = or i32 %9, 1024
  store i32 %10, ptr %7, align 4
  %11 = getelementptr i8, ptr %4, i32 12
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(64) %11, i8 0, i32 64, i1 false)
  %12 = getelementptr i8, ptr %0, i32 1512
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 14
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %1
  %19 = and i32 %15, 512
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 61, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %21
  %26 = or i32 %9, 1034
  store i32 %26, ptr %7, align 4
  %27 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 61
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %47, label %30

30:                                               ; preds = %30, %25
  %31 = phi ptr [ %42, %30 ], [ %28, %25 ]
  %32 = getelementptr inbounds %struct.netdev_hw_addr, ptr %31, i32 0, i32 2
  %33 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %32, i32 noundef 6) #16
  %34 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %33) #14, !srcloc !14
  %35 = lshr i32 %34, 23
  %36 = and i32 %35, 31
  %37 = shl nuw i32 1, %36
  %38 = lshr i32 %34, 28
  %39 = getelementptr %struct.smsc75xx_priv, ptr %4, i32 0, i32 3, i32 %38
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %37, %40
  store i32 %41, ptr %39, align 4
  %42 = load ptr, ptr %31, align 4
  %43 = icmp eq ptr %42, %27
  br i1 %43, label %47, label %30

44:                                               ; preds = %21, %18, %1
  %45 = phi i32 [ 1792, %1 ], [ 1538, %18 ], [ 1026, %21 ]
  %46 = or i32 %9, %45
  store i32 %46, ptr %7, align 4
  br label %47

47:                                               ; preds = %44, %30, %25
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #12
  %48 = getelementptr inbounds %struct.smsc75xx_priv, ptr %4, i32 0, i32 6
  %49 = load ptr, ptr @system_wq, align 4
  %50 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %49, ptr noundef %48) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc75xx_ioctl(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 1552
  %10 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %11 = tail call i32 @generic_mii_ioctl(ptr noundef %9, ptr noundef %10, i32 noundef %2, ptr noundef null) #12
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ %11, %8 ], [ -22, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc75xx_change_mtu(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = add i32 %1, 14
  %5 = tail call fastcc i32 @smsc75xx_set_rx_max_frame_length(ptr noundef %3, i32 noundef %4)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 1512
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.63) #13
  br label %12

10:                                               ; preds = %2
  %11 = tail call i32 @usbnet_change_mtu(ptr noundef %0, i32 noundef %1) #12
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i32 [ %5, %7 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_tx_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc75xx_set_features(ptr noundef %0, i64 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 1520
  %6 = load i32, ptr %5, align 4
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.smsc75xx_priv, ptr %7, i32 0, i32 5
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #12
  %10 = and i64 %1, 1099511627776
  %11 = icmp eq i64 %10, 0
  %12 = getelementptr inbounds %struct.smsc75xx_priv, ptr %7, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, -6145
  %15 = select i1 %11, i32 0, i32 6144
  %16 = or i32 %14, %15
  store i32 %16, ptr %12, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #12
  %17 = getelementptr inbounds %struct.smsc75xx_priv, ptr %7, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %19 = icmp eq ptr %4, null
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

21:                                               ; preds = %2
  store i32 %18, ptr %3, align 4
  %22 = call i32 @usbnet_write_cmd(ptr noundef nonnull %4, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 96, ptr noundef nonnull %3, i16 noundef zeroext 4) #12, !callees !12
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %25, label %24, !prof !9

24:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %29

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %0, i32 1512
  %27 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %27, ptr noundef nonnull @.str.27, i32 noundef 96, i32 noundef %22) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %28 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %28, ptr noundef nonnull @.str.64) #13
  br label %29

29:                                               ; preds = %25, %24
  %30 = phi i32 [ %22, %25 ], [ 0, %24 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smsc75xx_set_rx_max_frame_length(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

9:                                                ; preds = %2
  %10 = call i32 @usbnet_read_cmd(ptr noundef nonnull %0, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 260, ptr noundef nonnull %6, i16 noundef zeroext 4) #12, !callees !11
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16, !prof !9

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %14 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.26, i32 noundef 260, i32 noundef %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %15 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %15, ptr noundef nonnull @.str.21, i32 noundef %10) #13
  br label %52

16:                                               ; preds = %9
  %17 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = and i32 %17, -2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 %21, ptr %5, align 4
  %22 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 260, ptr noundef nonnull %5, i16 noundef zeroext 4) #12, !callees !12
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %25, label %24, !prof !9

24:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %29

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %27 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %27, ptr noundef nonnull @.str.27, i32 noundef 260, i32 noundef %22) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %28 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %28, ptr noundef nonnull @.str.22, i32 noundef %22) #13
  br label %52

29:                                               ; preds = %24, %16
  %30 = phi i32 [ %17, %16 ], [ %21, %24 ]
  %31 = and i32 %30, -1073676289
  %32 = shl i32 %1, 16
  %33 = add i32 %32, 262144
  %34 = and i32 %33, 1073676288
  %35 = or i32 %31, %34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 %35, ptr %4, align 4
  %36 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 260, ptr noundef nonnull %4, i16 noundef zeroext 4) #12, !callees !12
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42, !prof !9

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %40 = load ptr, ptr %39, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %40, ptr noundef nonnull @.str.27, i32 noundef 260, i32 noundef %36) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %41 = load ptr, ptr %39, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %41, ptr noundef nonnull @.str.22, i32 noundef %36) #13
  br label %52

42:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br i1 %19, label %52, label %43

43:                                               ; preds = %42
  %44 = or i32 %35, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 %44, ptr %3, align 4
  %45 = call i32 @usbnet_write_cmd(ptr noundef nonnull %0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 260, ptr noundef nonnull %3, i16 noundef zeroext 4) #12, !callees !12
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %48, label %47, !prof !9

47:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %52

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %50 = load ptr, ptr %49, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %50, ptr noundef nonnull @.str.27, i32 noundef 260, i32 noundef %45) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %51 = load ptr, ptr %49, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %51, ptr noundef nonnull @.str.22, i32 noundef %45) #13
  br label %52

52:                                               ; preds = %48, %47, %42, %38, %25, %12
  %53 = phi i32 [ %10, %12 ], [ %22, %25 ], [ %36, %38 ], [ %45, %48 ], [ 0, %47 ], [ 0, %42 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_change_mtu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_get_drvinfo(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @smsc75xx_ethtool_get_wol(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr i8, ptr %0, i32 1520
  %4 = load i32, ptr %3, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  store i32 63, ptr %6, align 4
  %7 = getelementptr inbounds %struct.smsc75xx_priv, ptr %5, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  store i32 %8, ptr %9, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc75xx_ethtool_set_wol(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 64
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 1408
  %8 = getelementptr i8, ptr %0, i32 1520
  %9 = load i32, ptr %8, align 4
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.smsc75xx_priv, ptr %10, i32 0, i32 2
  store i32 %4, ptr %11, align 4
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  %14 = icmp ne i32 %4, 0
  %15 = tail call i32 @device_set_wakeup_enable(ptr noundef %13, i1 noundef zeroext %14) #12
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = getelementptr i8, ptr %0, i32 1512
  %19 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %19, ptr noundef nonnull @.str.65, i32 noundef %15) #13
  br label %20

20:                                               ; preds = %17, %6, %2
  %21 = phi i32 [ -22, %2 ], [ %15, %17 ], [ %15, %6 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_msglevel(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_set_msglevel(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_link(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @smsc75xx_ethtool_get_eeprom_len(ptr nocapture noundef readnone %0) #10 {
  ret i32 512
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc75xx_ethtool_get_eeprom(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 1
  store i32 29952, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = tail call fastcc i32 @smsc75xx_read_eeprom(ptr noundef %4, i32 noundef %7, i32 noundef %9, ptr noundef %2)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc75xx_ethtool_set_eeprom(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr i8, ptr %0, i32 1408
  %9 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 29952
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %0, i32 1512
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.66, i32 noundef %10) #13
  br label %89

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ethtool_eeprom, ptr %1, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq ptr %8, null
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 387, 0\0A.popsection", ""() #12, !srcloc !20
  unreachable

22:                                               ; preds = %15
  %23 = icmp eq ptr %2, null
  br i1 %23, label %24, label %25, !prof !9

24:                                               ; preds = %22
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 388, 0\0A.popsection", ""() #12, !srcloc !21
  unreachable

25:                                               ; preds = %22
  %26 = load volatile i32, ptr @jiffies, align 64
  %27 = add i32 %26, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4
  %28 = call i32 @usbnet_read_cmd(ptr noundef nonnull %8, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 64, ptr noundef nonnull %7, i16 noundef zeroext 4) #12, !callees !11
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %33, label %37, !prof !9

30:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4
  %31 = call i32 @usbnet_read_cmd(ptr noundef nonnull %8, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 64, ptr noundef nonnull %7, i16 noundef zeroext 4) #12, !callees !11
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37, !prof !9

33:                                               ; preds = %30, %25
  %34 = phi i32 [ %28, %25 ], [ %31, %30 ]
  %35 = getelementptr i8, ptr %0, i32 1512
  %36 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %36, ptr noundef nonnull @.str.26, i32 noundef 64, i32 noundef %34) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  br label %84

37:                                               ; preds = %30, %25
  %38 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %41(i32 noundef 8589920) #12
  %42 = load volatile i32, ptr @jiffies, align 64
  %43 = sub i32 %27, %42
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %30, label %45

45:                                               ; preds = %40
  %46 = getelementptr i8, ptr %0, i32 1512
  br label %84

47:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 -1610612736, ptr %6, align 4
  %48 = call i32 @usbnet_write_cmd(ptr noundef nonnull %8, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 64, ptr noundef nonnull %6, i16 noundef zeroext 4) #12, !callees !12
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53, !prof !9

50:                                               ; preds = %47
  %51 = getelementptr i8, ptr %0, i32 1512
  %52 = load ptr, ptr %51, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %52, ptr noundef nonnull @.str.27, i32 noundef 64, i32 noundef %48) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  br label %84

53:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %54 = call fastcc i32 @smsc75xx_wait_eeprom(ptr noundef nonnull %8) #12
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %89, label %56

56:                                               ; preds = %53
  %57 = icmp eq i32 %19, 0
  br i1 %57, label %89, label %58

58:                                               ; preds = %80, %56
  %59 = phi i32 [ %82, %80 ], [ 0, %56 ]
  %60 = phi i32 [ %81, %80 ], [ %17, %56 ]
  %61 = getelementptr i8, ptr %2, i32 %59
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 %63, ptr %5, align 4
  %64 = call i32 @usbnet_write_cmd(ptr noundef nonnull %8, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 68, ptr noundef nonnull %5, i16 noundef zeroext 4) #12, !callees !12
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69, !prof !9

66:                                               ; preds = %58
  %67 = getelementptr i8, ptr %0, i32 1512
  %68 = load ptr, ptr %67, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %68, ptr noundef nonnull @.str.27, i32 noundef 68, i32 noundef %64) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %84

69:                                               ; preds = %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %70 = and i32 %60, 511
  %71 = or i32 %70, -1342177280
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 %71, ptr %4, align 4
  %72 = call i32 @usbnet_write_cmd(ptr noundef nonnull %8, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 64, ptr noundef nonnull %4, i16 noundef zeroext 4) #12, !callees !12
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77, !prof !9

74:                                               ; preds = %69
  %75 = getelementptr i8, ptr %0, i32 1512
  %76 = load ptr, ptr %75, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %76, ptr noundef nonnull @.str.27, i32 noundef 64, i32 noundef %72) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %84

77:                                               ; preds = %69
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %78 = call fastcc i32 @smsc75xx_wait_eeprom(ptr noundef nonnull %8) #12
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %77
  %81 = add i32 %60, 1
  %82 = add nuw i32 %59, 1
  %83 = icmp eq i32 %82, %19
  br i1 %83, label %89, label %58

84:                                               ; preds = %74, %66, %50, %45, %33
  %85 = phi ptr [ %75, %74 ], [ %67, %66 ], [ %51, %50 ], [ %46, %45 ], [ %35, %33 ]
  %86 = phi ptr [ @.str.58, %74 ], [ @.str.67, %66 ], [ @.str.58, %50 ], [ @.str.61, %45 ], [ @.str.60, %33 ]
  %87 = phi i32 [ %72, %74 ], [ %64, %66 ], [ %48, %50 ], [ -5, %45 ], [ %34, %33 ]
  %88 = load ptr, ptr %85, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %88, ptr noundef nonnull %86) #13
  br label %89

89:                                               ; preds = %84, %80, %77, %56, %53, %12
  %90 = phi i32 [ -22, %12 ], [ %54, %53 ], [ 0, %56 ], [ %87, %84 ], [ 0, %80 ], [ %78, %77 ]
  ret i32 %90
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_link_ksettings_mii(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_set_link_ksettings_mii(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc75xx_mdio_read(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr i8, ptr %0, i32 1408
  %9 = getelementptr i8, ptr %0, i32 1440
  tail call void @mutex_lock(ptr noundef %9) #12
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = icmp eq ptr %8, null
  %12 = add i32 %10, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !8
  br i1 %11, label %16, label %13, !prof !9

13:                                               ; preds = %3
  %14 = call i32 @usbnet_read_cmd(ptr noundef nonnull %8, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %7, i16 noundef zeroext 4) #12, !callees !11
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %25, !prof !9

16:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

17:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !8
  %18 = call i32 @usbnet_read_cmd(ptr noundef nonnull %8, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %7, i16 noundef zeroext 4) #12, !callees !11
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25, !prof !9

20:                                               ; preds = %17, %13
  %21 = phi i32 [ %14, %13 ], [ %18, %17 ]
  %22 = getelementptr i8, ptr %0, i32 1512
  %23 = load ptr, ptr %22, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %23, ptr noundef nonnull @.str.26, i32 noundef 288, i32 noundef %21) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %24 = load ptr, ptr %22, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %24, ptr noundef nonnull @.str.34) #13
  br label %33

25:                                               ; preds = %17, %13
  %26 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load volatile i32, ptr @jiffies, align 64
  %31 = sub i32 %12, %30
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %17, label %33

33:                                               ; preds = %29, %20
  %34 = phi i32 [ %21, %20 ], [ -5, %29 ]
  %35 = getelementptr i8, ptr %0, i32 1512
  %36 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %36, ptr noundef nonnull @.str.30) #13
  br label %91

37:                                               ; preds = %25
  %38 = getelementptr i8, ptr %0, i32 1560
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, %1
  %41 = getelementptr i8, ptr %0, i32 1564
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, %2
  %44 = shl i32 %40, 11
  %45 = and i32 %44, 63488
  %46 = shl i32 %43, 6
  %47 = and i32 %46, 1984
  %48 = or i32 %45, %47
  %49 = or i32 %48, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 %49, ptr %6, align 4
  %50 = call i32 @usbnet_write_cmd(ptr noundef nonnull %8, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %6, i16 noundef zeroext 4) #12, !callees !12
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56, !prof !9

52:                                               ; preds = %37
  %53 = getelementptr i8, ptr %0, i32 1512
  %54 = load ptr, ptr %53, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %54, ptr noundef nonnull @.str.27, i32 noundef 288, i32 noundef %50) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %55 = load ptr, ptr %53, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %55, ptr noundef nonnull @.str.31) #13
  br label %91

56:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %57 = load volatile i32, ptr @jiffies, align 64
  %58 = add i32 %57, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4
  %59 = call i32 @usbnet_read_cmd(ptr noundef nonnull %8, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %5, i16 noundef zeroext 4) #12, !callees !11
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %64, label %69, !prof !9

61:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4
  %62 = call i32 @usbnet_read_cmd(ptr noundef nonnull %8, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %5, i16 noundef zeroext 4) #12, !callees !11
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69, !prof !9

64:                                               ; preds = %61, %56
  %65 = phi i32 [ %59, %56 ], [ %62, %61 ]
  %66 = getelementptr i8, ptr %0, i32 1512
  %67 = load ptr, ptr %66, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %67, ptr noundef nonnull @.str.26, i32 noundef 288, i32 noundef %65) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %68 = load ptr, ptr %66, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %68, ptr noundef nonnull @.str.34) #13
  br label %77

69:                                               ; preds = %61, %56
  %70 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %69
  %74 = load volatile i32, ptr @jiffies, align 64
  %75 = sub i32 %58, %74
  %76 = icmp sgt i32 %75, -1
  br i1 %76, label %61, label %77

77:                                               ; preds = %73, %64
  %78 = phi i32 [ %65, %64 ], [ -5, %73 ]
  %79 = getelementptr i8, ptr %0, i32 1512
  %80 = load ptr, ptr %79, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %80, ptr noundef nonnull @.str.32, i32 noundef %43) #13
  br label %91

81:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  %82 = call i32 @usbnet_read_cmd(ptr noundef nonnull %8, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 292, ptr noundef nonnull %4, i16 noundef zeroext 4) #12, !callees !11
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %88, !prof !9

84:                                               ; preds = %81
  %85 = getelementptr i8, ptr %0, i32 1512
  %86 = load ptr, ptr %85, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %86, ptr noundef nonnull @.str.26, i32 noundef 292, i32 noundef %82) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %87 = load ptr, ptr %85, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %87, ptr noundef nonnull @.str.33) #13
  br label %91

88:                                               ; preds = %81
  %89 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %90 = and i32 %89, 65535
  br label %91

91:                                               ; preds = %88, %84, %77, %52, %33
  %92 = phi i32 [ %34, %33 ], [ %50, %52 ], [ %78, %77 ], [ %82, %84 ], [ %90, %88 ]
  call void @mutex_unlock(ptr noundef %9) #12
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smsc75xx_mdio_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr i8, ptr %0, i32 1408
  %10 = getelementptr i8, ptr %0, i32 1440
  tail call void @mutex_lock(ptr noundef %10) #12
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = icmp eq ptr %9, null
  %13 = add i32 %11, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !annotation !8
  br i1 %12, label %17, label %14, !prof !9

14:                                               ; preds = %4
  %15 = call i32 @usbnet_read_cmd(ptr noundef nonnull %9, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %8, i16 noundef zeroext 4) #12, !callees !11
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %26, !prof !9

17:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/usb/smsc75xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

18:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !annotation !8
  %19 = call i32 @usbnet_read_cmd(ptr noundef nonnull %9, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %8, i16 noundef zeroext 4) #12, !callees !11
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26, !prof !9

21:                                               ; preds = %18, %14
  %22 = phi i32 [ %15, %14 ], [ %19, %18 ]
  %23 = getelementptr i8, ptr %0, i32 1512
  %24 = load ptr, ptr %23, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %24, ptr noundef nonnull @.str.26, i32 noundef 288, i32 noundef %22) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  %25 = load ptr, ptr %23, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.34) #13
  br label %34

26:                                               ; preds = %18, %14
  %27 = load i32, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = load volatile i32, ptr @jiffies, align 64
  %32 = sub i32 %13, %31
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %18, label %34

34:                                               ; preds = %30, %21
  %35 = getelementptr i8, ptr %0, i32 1512
  %36 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %36, ptr noundef nonnull @.str.35) #13
  br label %87

37:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 %3, ptr %7, align 4
  %38 = call i32 @usbnet_write_cmd(ptr noundef nonnull %9, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 292, ptr noundef nonnull %7, i16 noundef zeroext 4) #12, !callees !12
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44, !prof !9

40:                                               ; preds = %37
  %41 = getelementptr i8, ptr %0, i32 1512
  %42 = load ptr, ptr %41, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %42, ptr noundef nonnull @.str.27, i32 noundef 292, i32 noundef %38) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %43 = load ptr, ptr %41, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %43, ptr noundef nonnull @.str.36) #13
  br label %87

44:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %45 = getelementptr i8, ptr %0, i32 1560
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, %1
  %48 = getelementptr i8, ptr %0, i32 1564
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, %2
  %51 = shl i32 %47, 11
  %52 = and i32 %51, 63488
  %53 = shl i32 %50, 6
  %54 = and i32 %53, 1984
  %55 = or i32 %52, %54
  %56 = or i32 %55, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 %56, ptr %6, align 4
  %57 = call i32 @usbnet_write_cmd(ptr noundef nonnull %9, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %6, i16 noundef zeroext 4) #12, !callees !12
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %63, !prof !9

59:                                               ; preds = %44
  %60 = getelementptr i8, ptr %0, i32 1512
  %61 = load ptr, ptr %60, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %61, ptr noundef nonnull @.str.27, i32 noundef 288, i32 noundef %57) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %62 = load ptr, ptr %60, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %62, ptr noundef nonnull @.str.31) #13
  br label %87

63:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %64 = load volatile i32, ptr @jiffies, align 64
  %65 = add i32 %64, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4
  %66 = call i32 @usbnet_read_cmd(ptr noundef nonnull %9, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %5, i16 noundef zeroext 4) #12, !callees !11
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %71, label %76, !prof !9

68:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4
  %69 = call i32 @usbnet_read_cmd(ptr noundef nonnull %9, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 288, ptr noundef nonnull %5, i16 noundef zeroext 4) #12, !callees !11
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %76, !prof !9

71:                                               ; preds = %68, %63
  %72 = phi i32 [ %66, %63 ], [ %69, %68 ]
  %73 = getelementptr i8, ptr %0, i32 1512
  %74 = load ptr, ptr %73, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %74, ptr noundef nonnull @.str.26, i32 noundef 288, i32 noundef %72) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %75 = load ptr, ptr %73, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %75, ptr noundef nonnull @.str.34) #13
  br label %84

76:                                               ; preds = %68, %63
  %77 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %76
  %81 = load volatile i32, ptr @jiffies, align 64
  %82 = sub i32 %65, %81
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %68, label %84

84:                                               ; preds = %80, %71
  %85 = getelementptr i8, ptr %0, i32 1512
  %86 = load ptr, ptr %85, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %86, ptr noundef nonnull @.str.37, i32 noundef %50) #13
  br label %87

87:                                               ; preds = %84, %76, %59, %40, %34
  call void @mutex_unlock(ptr noundef %10) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_defer_kevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_check_media(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_gset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_skb_return(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readonly willreturn }

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
!10 = !{i64 2155423398, i64 2155423888, i64 2155423435, i64 2155423491, i64 2155423525, i64 2155423549, i64 2155423590, i64 2155423611, i64 2155423639, i64 2155423673}
!11 = !{ptr @usbnet_read_cmd, ptr @usbnet_read_cmd_nopm}
!12 = !{ptr @usbnet_write_cmd, ptr @usbnet_write_cmd_nopm}
!13 = !{i64 2155424568, i64 2155425059, i64 2155424605, i64 2155424661, i64 2155424695, i64 2155424719, i64 2155424760, i64 2155424781, i64 2155424809, i64 2155424843}
!14 = !{i64 7138267}
!15 = !{i8 0, i8 2}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{!"branch_weights", i32 2000, i32 2002}
!18 = !{i64 2155428405, i64 2155428896, i64 2155428442, i64 2155428498, i64 2155428532, i64 2155428556, i64 2155428597, i64 2155428618, i64 2155428646, i64 2155428680}
!19 = !{i64 2155429428, i64 2155429919, i64 2155429465, i64 2155429521, i64 2155429555, i64 2155429579, i64 2155429620, i64 2155429641, i64 2155429669, i64 2155429703}
!20 = !{i64 2155430506, i64 2155430997, i64 2155430543, i64 2155430599, i64 2155430633, i64 2155430657, i64 2155430698, i64 2155430719, i64 2155430747, i64 2155430781}
!21 = !{i64 2155431529, i64 2155432020, i64 2155431566, i64 2155431622, i64 2155431656, i64 2155431680, i64 2155431721, i64 2155431742, i64 2155431770, i64 2155431804}
